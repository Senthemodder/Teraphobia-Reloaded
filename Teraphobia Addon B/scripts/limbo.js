import { system, world } from "@minecraft/server";
export { runLimboSystems }

/**
 * LimboEffects encapsulates the logic for handling limbo‐related conditions.
 *
 * This class replaces a long series of mcfunction commands with native methods:
 * - It checks players’ scoreboard values (via dynamic properties or a native Scoreboard API)
 * - It verifies block conditions using dimension.getBlock
 * - It adds or removes tags on players or item entities accordingly
 * - For unsupported features (fog changes, function calls) it falls back to runCommand
 *
 * All methods are static and use contemporary JavaScript style with JSDoc.
 */
class LimboEffects {
  /**
   * Updates portal-related tags for players with tera_ov score ≥ 4.
   * If the block at the player’s location is a limbo portal (tera:limbo_portal),
   * adds the "limbo_go" tag and calls the limbo teleport function.
   * Also removes the "tera_en_lb_music_stop" tag.
   *
   * @returns {void}
   */
  static updatePlayerPortalEffects() {
    const players = world.getPlayers();
    for (const player of players) {
      // Assuming the player's scoreboard value is stored as a dynamic property.
      const teraOv = player.getDynamicProperty("tera_ov") ?? 0;
      if (teraOv < 4) continue;
      
      // Check if the block at the player's location is the limbo portal.
      const dimension = player.dimension || world.getDimension("overworld");
      const blockHere = dimension.getBlock(player.location);
      if (blockHere && blockHere.type.id === "tera:limbo_portal") {
        player.addTag("limbo_go");
        // Instead of a function call, fallback to runCommand to execute function limbo_tp.
        dimension.runCommand(`function limbo_tp`);
      }
      player.removeTag("tera_en_lb_music_stop");
    }
  }

  /**
   * For players with tera_en == 1, if they have the "limbo_go" tag but not "limbo",
   * adds the "limbo" tag.
   *
   * @returns {void}
   */
  static updateLimboTagFromEnScore() {
    const players = world.getPlayers();
    for (const player of players) {
      const teraEn = player.getDynamicProperty("tera_en") ?? 0;
      if (teraEn !== 1) continue;
      if (player.hasTag("limbo_go") && !player.hasTag("limbo")) {
        player.addTag("limbo");
      }
    }
  }

  /**
   * Updates dimension-related tags for players with tera_en == 1.
   * If at the player's location (positioned as themselves) the block at Y=252 is bedrock,
   * then adds the "limbo_comp" tag and removes "soul_dim_comp" and "underworld_comp".
   *
   * @returns {void}
   */
  static updateDimensionComponentTags() {
    const players = world.getPlayers();
    for (const player of players) {
      const teraEn = player.getDynamicProperty("tera_en") ?? 0;
      if (teraEn !== 1) continue;
      
      const dimension = player.dimension || world.getDimension("overworld");
      // Construct a location with y fixed to 252, keeping x and z from player's location.
      const loc252 = { x: player.location.x, y: 252, z: player.location.z };
      const blockAt252 = dimension.getBlock(loc252);
      if (blockAt252 && blockAt252.type.id === "minecraft:bedrock") {
        // For players whose tera_en is 1, add or remove tags accordingly.
        player.addTag("limbo_comp");
        player.removeTag("soul_dim_comp");
        player.removeTag("underworld_comp");
      }
    }
  }

  /**
   * For players with tera_en == 1 and who have both "limbo_go" and "limbo_comp" tags,
   * removes the "limbo_go" tag.
   *
   * @returns {void}
   */
  static updateLimboGoRemoval() {
    const players = world.getPlayers();
    for (const player of players) {
      const teraEn = player.getDynamicProperty("tera_en") ?? 0;
      if (teraEn !== 1) continue;
      if (player.hasTag("limbo_go") && player.hasTag("limbo_comp")) {
        player.removeTag("limbo_go");
      }
    }
  }

  /**
   * Updates music stop effects for players.
   * For players with tera_en == 1 and with the "limbo" tag,
   * adds the "tera_en_lb_music_stop" tag, and stops "music.game.end" using our patched stopSound.
   *
   * @returns {void}
   */
  static updateMusicStopEffects() {
    const players = world.getPlayers();
    for (const player of players) {
      const teraEn = player.getDynamicProperty("tera_en") ?? 0;
      if (teraEn !== 1) continue;
      if (player.hasTag("limbo")) {
        player.addTag("tera_en_lb_music_stop");
      }
    }
    // For all players with the tag, stop the sound.
    const dimension = world.getDimension("overworld");
    for (const player of players) {
      if (player.hasTag("tera_en_lb_music_stop")) {
        // Using our patched stopSound method on the player's own dimension.
        (player.dimension || world.getDimension("overworld")).stopSound("music.game.end", player.location);
      }
    }
  }

  /**
   * Removes fog effects and cleans up tags for players.
   * For players without the "limbo_comp" tag, removes the "limbo_fog" effect via a fallback runCommand.
   * For players with tera_ov ≥ 4, removes the tags "lb_color", "limbo_comp", and "limbo".
   *
   * @returns {void}
   */
  static updateFogAndCleanupTags() {
    const players = world.getPlayers();
    const dimension = world.getDimension("overworld");
    for (const player of players) {
      if (!player.hasTag("limbo_comp")) {
        dimension.runCommand(`fog remove "limbo_fog"`);
      }
      const teraOv = player.getDynamicProperty("tera_ov") ?? 0;
      if (teraOv >= 4) {
        player.removeTag("lb_color");
        player.removeTag("limbo_comp");
        player.removeTag("limbo");
      }
    }
  }

  /**
   * Processes item entities with name "Solos".
   * For each such item, if it is positioned with a block of bedrock at y=-64 and its nearby
   * relative positions match "tera:limbo_stone", fills a region with "tera:limbo_portal".
   * Then, for items with tag "limbor", calls a small impact function (via runCommand)
   * and then kills the entity.
   *
   * @returns {void}
   */
  static updateSolosItems() {
    // Retrieve item entities filtered by type and name.
    const items = world.getEntities().filter(
      (e) => e.type === "item" && e.name === "Solos"
    );
    for (const item of items) {
      const dimension = item.dimension || world.getDimension("overworld");
      // Check block at position offset -64 from item's location.
      const bedrockBlock = dimension.getBlock({
        x: item.location.x,
        y: item.location.y - 64,
        z: item.location.z,
      });
      if (!(bedrockBlock && bedrockBlock.type.id === "minecraft:bedrock")) continue;
      
      // Check a series of relative positions for "tera:limbo_stone".
      // For brevity, we define the relative offsets in an array.
      const offsets = [
        { x: 2, y: 0, z: 0 },
        { x: 2, y: 1, z: 0 },
        { x: 2, y: -1, z: 0 },
        { x: -2, y: 0, z: 0 },
        { x: -2, y: 1, z: 0 },
        { x: -2, y: -1, z: 0 },
        { x: 0, y: 0, z: 2 },
        { x: 1, y: 0, z: 2 },
        { x: -1, y: 0, z: 2 },
        { x: 0, y: 0, z: -2 },
        { x: -1, y: 0, z: -2 },
        { x: 1, y: 0, z: -2 },
      ];
      
      let allMatch = true;
      for (const off of offsets) {
        const checkLoc = {
          x: item.location.x + off.x,
          y: item.location.y + off.y,
          z: item.location.z + off.z,
        };
        const block = dimension.getBlock(checkLoc);
        if (!(block && block.type.id === "tera:limbo_stone")) {
          allMatch = false;
          break;
        }
      }
      
      if (allMatch) {
        // All conditions met: fill a region with the limbo portal.
        dimension.runCommand(
          `fill ${item.location.x - 1} ${item.location.y} ${item.location.z - 1} ${item.location.x + 1} ${item.location.y} ${item.location.z + 1} tera:limbo_portal`
        );
      }
    }
    
    // For items with tag "limbor", run small impact and kill them.
    const limborItems = world.getEntities().filter(
      (e) => e.type === "item" && e.hasTag("limbor")
    );
    for (const item of limborItems) {
      (item.dimension || world.getDimension("overworld")).runCommand(
        `function small_impact`
      );
      item.kill();
    }
  }

  /**
   * Processes item entities with name "Rise from Limbo".
   * Similar to updateSolosItems, but fills the region with "end_portal" and uses tag "limbore".
   *
   * @returns {void}
   */
  static updateRiseFromLimboItems() {
    const items = world.getEntities().filter(
      (e) => e.type === "item" && e.name === "Rise from Limbo"
    );
    for (const item of items) {
      const dimension = item.dimension || world.getDimension("overworld");
      // Check if block at y=252 is bedrock.
      const bedrock252 = dimension.getBlock({
        x: item.location.x,
        y: 252,
        z: item.location.z,
      });
      if (!(bedrock252 && bedrock252.type.id === "minecraft:bedrock")) continue;
      
      // Check relative positions for "tera:limbo_stone" (using same offsets as before).
      const offsets = [
        { x: 2, y: 0, z: 0 },
        { x: 2, y: 1, z: 0 },
        { x: 2, y: -1, z: 0 },
        { x: -2, y: 0, z: 0 },
        { x: -2, y: 1, z: 0 },
        { x: -2, y: -1, z: 0 },
        { x: 0, y: 0, z: 2 },
        { x: 1, y: 0, z: 2 },
        { x: -1, y: 0, z: 2 },
        { x: 0, y: 0, z: -2 },
        { x: -1, y: 0, z: -2 },
        { x: 1, y: 0, z: -2 },
      ];
      let allMatch = true;
      for (const off of offsets) {
        const checkLoc = {
          x: item.location.x + off.x,
          y: item.location.y + off.y,
          z: item.location.z + off.z,
        };
        const block = dimension.getBlock(checkLoc);
        if (!(block && block.type.id === "tera:limbo_stone")) {
          allMatch = false;
          break;
        }
      }
      
      if (allMatch) {
        dimension.runCommand(
          `fill ${item.location.x - 1} ${item.location.y} ${item.location.z - 1} ${item.location.x + 1} ${item.location.y} ${item.location.z + 1} end_portal`
        );
      }
    }
    
    const limboreItems = world.getEntities().filter(
      (e) => e.type === "item" && e.hasTag("limbore")
    );
    for (const item of limboreItems) {
      (item.dimension || world.getDimension("overworld")).runCommand(`function small_impact`);
      item.kill();
    }
  }

  /**
   * Applies fog effects for players with the "limbo_comp" tag.
   * For such players with tera_en == 1, pushes fog "limbo_fog" using runCommand fallback.
   *
   * @returns {void}
   */
  static updateFogForLimboPlayers() {
    const players = world.getPlayers();
    const dimension = world.getDimension("overworld");
    for (const player of players) {
      if (player.hasTag("limbo_comp")) {
        const teraEn = player.getDynamicProperty("tera_en") ?? 0;
        if (teraEn === 1) {
          dimension.runCommand(
            `fog push "tera:fog_limbo" "limbo_fog"`
          );
        }
      }
    }
  }
  
  /**
   * Processes additional cleanup for players and item entities.
   * (This method combines several tag removals and fog removals.)
   *
   * @returns {void}
   */
  static additionalCleanup() {
    const players = world.getPlayers();
    const dimension = world.getDimension("overworld");
    for (const player of players) {
      // Remove fog for players without limbo_comp.
      if (!player.hasTag("limbo_comp")) {
        dimension.runCommand(`fog remove "limbo_fog"`);
      }
      // Additional tag removals for players with tera_ov ≥ 4.
      const teraOv = player.getDynamicProperty("tera_ov") ?? 0;
      if (teraOv >= 4) {
        player.removeTag("lb_color");
        player.removeTag("limbo_comp");
        player.removeTag("limbo");
      }
    }
  }
}


/**
 * Runs all LimboEffects update methods gradually over successive ticks using system.runJob.
 *
 * This function collects the various update methods from the LimboEffects class
 * (which encapsulate your original mcfunction logic) into an array, then uses system.runJob
 * to iterate through them—yielding after each call—to optimize performance.
 *
 * @returns {void}
 */
export function runLimboSystems() {
  // Array of update functions from LimboEffects.
  const updates = [
    LimboEffects.updatePlayerPortalEffects,
    LimboEffects.updateLimboTagFromEnScore,
    LimboEffects.updateDimensionComponentTags,
    LimboEffects.updateLimboGoRemoval,
    LimboEffects.updateMusicStopEffects,
    LimboEffects.updateFogAndCleanupTags,
    LimboEffects.updateSolosItems,
    LimboEffects.updateRiseFromLimboItems,
    LimboEffects.updateFogForLimboPlayers,
    LimboEffects.additionalCleanup
  ];

  // Use system.runJob to process each update method over successive ticks.
  system.runJob(function* () {
    for (let i = 0; i < updates.length; i++) {
      // Call the update function.
      updates[i]();
      // Yield to allow the remainder of the tick to process.
      yield;
    }
  });
}

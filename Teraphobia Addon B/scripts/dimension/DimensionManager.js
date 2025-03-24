import {
  world,
  system,
  ItemStack
} from "@minecraft/server";

export class TeraManager {
  constructor() {
    // Initialize dynamic properties for all players on join.
    world.afterEvents.playerJoin.subscribe(event => {
      this.initializePlayer(event.player);
    });
    world.getPlayers().forEach(player => this.initializePlayer(player));

    // Run the update loop every tick.
    system.runInterval(() => this.update(), 1);
  }

  initializePlayer(player) {
    // Emulate scoreboard objectives as dynamic properties.
    const objectives = [
      "tera_death", "tera_sneak", "tera_forw", "tera_back",
      "tera_left", "tera_righ", "tera_up", "tera_down", "rpr_pal_ent"
    ];
    objectives.forEach(obj => {
      if (player.getDynamicProperty(obj) === undefined) {
        player.setDynamicProperty(obj, 0);
      }
    });
  }

  update() {
    // Run all our update methods.
    this.giveTeraGuide();
    this.giveOrClearDodgeItem();
    this.updateArrowTags();
    this.teleportBasedOnScore();
    this.updateReaperSummon(); 
    this.updateBossEffects();
    this.clearAreaAroundBosses();
    this.killBossNearbyEntities();
    this.spawnSmokeForSkInv();
    this.adjustRprPalEntScore();
    this.setGamerulesForPlayers();
    this.fixItemsInLava();
    this.updateFog();
    this.updateShulkLive();
    this.updateReaperVictim();
    this.updateSoulStorm();
  }

  // ─────────────────────────────────────────────
  // Player Methods

  giveTeraGuide() {
    // Give the guide item to players without the tag "tg_given2".
    world.getPlayers().forEach(player => {
      if (!player.hasTag("tg_given2")) {
        const inv = player.getComponent("minecraft:inventory")?.container;
        if (inv) {
          const guide = new ItemStack("tera:teronic_guide", 1, 0);
          inv.addItem(guide);
        }
        player.addTag("tg_given2");
      }
    });
  }

  giveOrClearDodgeItem() {
    // Give dodge item to players without "td_given"; if tagged "gindable", clear dodge items.
    world.getPlayers().forEach(player => {
      const inv = player.getComponent("minecraft:inventory")?.container;
      if (!player.hasTag("td_given")) {
        if (inv) {
          const dodge = new ItemStack("tera:tera_dodge_off", 1, 0);
          dodge.setData({
            "minecraft:item_lock": { mode: "lock_in_inventory" },
            "minecraft:keep_on_death": {}
          });
          inv.addItem(dodge);
        }
        player.addTag("td_given");
      } else if (player.hasTag("gindable") && inv) {
        inv.clearItem("tera:tera_dodge_off");
        inv.clearItem("tera:tera_dodge_on");
      }
    });
  }

  updateArrowTags() {
    // Update arrow tags based on the player's offhand item.
    const arrowTypes = ["earth", "ice", "lightning", "diamond", "iron", "fire"];
    world.getPlayers().forEach(player => {
      const offhand = player.getItemInSlot("slot.weapon.offhand");
      arrowTypes.forEach(type => {
        const itemName = `tera:${type}_arrow`;
        const tagName = `tera_${type}_arrow`;
        if (offhand && offhand.id === itemName) {
          player.addTag(tagName);
        } else {
          player.removeTag(tagName);
        }
      });
    });
  }

  teleportBasedOnScore() {
    // Adjust player's rpr_pal_ent score and teleport them based on its value.
    world.getPlayers().forEach(player => {
      let score = player.getDynamicProperty("rpr_pal_ent") || 0;
      if (score >= 1) {
        player.setDynamicProperty("rpr_pal_ent", score - 1);
      }
      let target = null;
      if (score >= 900 && score <= 1200) {
        target = { pos: { x: 75087, y: 210, z: 75333 }, facing: { x: 0, y: -2, z: 0 } };
      } else if (score >= 600 && score <= 899) {
        target = { pos: { x: 75090, y: 220, z: 75287 }, facing: { x: 0, y: -2, z: 0 } };
      } else if (score >= 300 && score <= 499) {
        target = { pos: { x: 75037, y: 220, z: 75331 }, facing: { x: 0, y: -2, z: 0 } };
      } else if (score >= 5 && score <= 299) {
        target = { pos: { x: 75032, y: 202, z: 75277 }, facing: { x: 0, y: -2, z: 0 } };
      } else if (score >= 1 && score <= 4) {
        target = { pos: { x: 75063, y: 175, z: 75366 }, facing: { x: 75063, y: 177, z: 75362 } };
      }
      if (target) {
        player.teleport(target.pos, { facingLocation: target.facing });
        // Display an actionbar message.
        player.nameTag = "The Reaper's Palace forms before you...";
        if (score >= 3) {
          player.addEffect(MinecraftEffectTypes.Resistance, 5, { amplifier: 255 });
          player.addEffect(MinecraftEffectTypes.Invisibility, 5, { amplifier: 255 });
        } else {
          player.removeEffect(MinecraftEffectTypes.Resistance);
          player.removeEffect(MinecraftEffectTypes.Invisibility);
        }
      }
    });
  }

  // ─────────────────────────────────────────────
  // Dynamic Reaper Summon Logic

  updateReaperSummon() {
    // This method dynamically "summons" the reaper when a player's rpr_pal_ent score is in the 900–1200 range.
    // It spawns a reaper entity near the player if they haven't already triggered a summon.
    const dim = world.getDimension("overworld");
    world.getPlayers().forEach(player => {
      const score = player.getDynamicProperty("rpr_pal_ent") || 0;
      // When score is between 900 and 1200, summon the reaper if not already summoned.
      if (score >= 900 && score <= 1200 && !player.hasTag("reaper_summoned")) {
        // For example, spawn the reaper 2 blocks to the east of the player.
        const spawnLoc = {
          x: player.location.x + 2,
          y: player.location.y,
          z: player.location.z
        };
        dim.spawnEntity("tera:reaper", spawnLoc);
        player.addTag("reaper_summoned");
        // Optionally, send a title message.
        player.nameTag = "The Reaper has been summoned!";
      }
      // If the score is outside the range, clear the flag.
      if (score < 900 || score > 1200) {
        player.removeTag("reaper_summoned");
      }
    });
  }

  // ─────────────────────────────────────────────
  // Environment & Entity Methods

  updateBossEffects() {
    const dim = world.getDimension("overworld");
    dim.getEntities().forEach(entity => {
      const tags = entity.getTags();
      if (tags.includes("tera_bosses")) {
        ["slowness", "blindness", "fatal_poison", "levitation"].forEach(eff => {
          entity.removeEffect(eff);
        });
      }
      if (tags.includes("reaper")) {
        entity.removeEffect("wither");
      }
    });
  }

  clearAreaAroundBosses() {
    const dim = world.getDimension("the_end");
    const bosses = dim.getEntities({ tags: ["tera_bosses"] });
    bosses.forEach(boss => {
      const { x, y, z } = boss.location;
      dim.fillBlocks(
        { x: x + 3, y: y + 9, z: z + 3 },
        { x: x - 3, y: y,    z: z - 3 },
        "air",
        { replace: "tera:limbo_stone" }
      );
      dim.fillBlocks(
        { x: x + 3, y: y + 9, z: z + 3 },
        { x: x - 3, y: y,    z: z - 3 },
        "air",
        { replace: "dirt" }
      );
      dim.fillBlocks(
        { x: x + 7, y: y + 9, z: z + 7 },
        { x: x - 7, y: y,    z: z - 7 },
        "air",
        { replace: "fire" }
      );
    });
  }

  killBossNearbyEntities() {
    const dim = world.getDimension("overworld");
    const killTypes = ["boat", "chest_boat", "minecart", "snowball", "snow_golem", "iron_golem", "warden", "snowgolem", "irongolem"];
    dim.getEntities({ tags: ["tera_bosses"] }).forEach(boss => {
      dim.getEntities({ location: boss.location, distance: 8 }).forEach(entity => {
        if (killTypes.includes(entity.type)) {
          entity.kill();
        }
      });
    });
  }

  spawnSmokeForSkInv() {
    const dim = world.getDimension("overworld");
    dim.getEntities({ tags: ["sk_inv"] }).forEach(entity => {
      const loc = entity.location;
      dim.spawnParticle("tera:smoke_potion", { x: loc.x, y: loc.y + 3, z: loc.z });
    });
  }

  adjustRprPalEntScore() {
    world.getPlayers().forEach(player => {
      let score = player.getDynamicProperty("rpr_pal_ent") || 0;
      if (score >= 1) {
        player.setDynamicProperty("rpr_pal_ent", score - 1);
      }
    });
  }

  setGamerulesForPlayers() {
    // Assuming actual gamerule changes are handled elsewhere.
    world.getPlayers().forEach(player => {
      if (!player.hasTag("scf_rule")) {
        player.addTag("scf_rule");
      }
    });
  }

  fixItemsInLava() {
    const dim = world.getDimension("overworld");
    dim.getEntities({ type: "item" }).forEach(item => {
      const pos = item.location;
      const block = dim.getBlock({
        x: Math.floor(pos.x),
        y: Math.floor(pos.y),
        z: Math.floor(pos.z)
      });
      if (block && (block.id === "minecraft:lava" || block.id === "minecraft:flowing_lava")) {
        item.teleport({ x: pos.x, y: pos.y + 1, z: pos.z });
      }
    });
  }

  updateFog() {
    const fogTypes = [
      { tag: "fog_tera_mist", fogId: "tera:fog_tera_mist" },
      { tag: "fog_dead_lands", fogId: "tera:fog_dead_lands" },
      { tag: "fog_warping_ways", fogId: "tera:fog_warping_ways" },
      { tag: "fog_soul_plains", fogId: "tera:fog_soul_plains" },
      { tag: "fog_flesh_masses", fogId: "tera:fog_flesh_masses" },
      { tag: "fog_dying_cove", fogId: "tera:fog_dying_cove" },
      { tag: "fog_stone_marks", fogId: "tera:fog_stone_marks" }
    ];
    world.getPlayers().forEach(player => {
      fogTypes.forEach(fog => player.removeTag(fog.tag));
    });
    const dim = world.getDimension("overworld");
    dim.getEntities({ type: "tera:tera_fog" }).forEach(fogEntity => {
      dim.getPlayersNear(fogEntity.location, 85).forEach(player => {
        player.addTag("fog_tera_mist");
      });
    });
    world.getPlayers().forEach(player => {
      fogTypes.forEach(fog => {
        if (player.hasTag(fog.tag)) {
          player.pushFog(fog.fogId, fog.tag);
        } else {
          player.popFog(fog.tag);
        }
      });
    });
  }

  updateShulkLive() {
    const dim = world.getDimension("overworld");
    dim.getEntities({ type: "shulker" }).forEach(entity => {
      let live = entity.getDynamicProperty("shulk_live") || 0;
      live++;
      entity.setDynamicProperty("shulk_live", live);
      if (live >= 2 && !entity.hasTag("shulk_live")) {
        entity.addTag("shulk_live");
        entity.kill();
      }
    });
    dim.getEntities({ type: "item", name: "Shulker Shell" }).forEach(entity => {
      let live = entity.getDynamicProperty("shulk_live") || 0;
      live++;
      entity.setDynamicProperty("shulk_live", live);
      if (live >= 2 && !entity.hasTag("shulk_live")) {
        entity.addTag("shulk_live");
        entity.kill();
      }
    });
  }

  updateReaperVictim() {
    const dim = world.getDimension("overworld");
    world.getPlayers().forEach(player => {
      if (player.hasTag("reaper_victim")) {
        ["strength", "resistance", "speed", "jump_boost", "instant_health", "regeneration", "absorption"].forEach(effect => {
          player.removeEffect(effect);
        });
      }
    });
    ["tera:reaper_rest", "tera:reaper", "tera:reaper_checkpoint", "tera:reaper_minion"].forEach(type => {
      dim.getEntities({ type: type }).forEach(entity => entity.addTag("r_mad"));
    });
    dim.getEntities({ tags: ["r_mad"] }).forEach(entity => {
      dim.getPlayersNear(entity.location, 5).forEach(player => {
        if (!player.hasTag("reaper_victim")) {
          player.addTag("reaper_victim");
        }
      });
    });
    const checkpoints = dim.getEntities({ type: "tera:reaper_checkpoint" });
    const reapers = dim.getEntities({ type: "tera:reaper" });
    if (checkpoints.length && reapers.length) {
      checkpoints[0].teleport(reapers[0].location);
    }
    world.getPlayers().forEach(player => {
      if (player.hasTag("reaper_victim")) {
        const inv = player.getComponent("minecraft:inventory")?.container;
        if (inv) {
          inv.clearItem("tera:reaper_spawn_egg");
        }
        dim.getEntities({ location: player.location, distance: 5 }).forEach(entity => {
          if (entity.type !== "player" && !entity.hasTag("r_mad")) {
            entity.kill();
          }
        });
      }
    });
  }

  updateSoulStorm() {
    const dim = world.getDimension("overworld");
    dim.getEntities({ type: "tera:soul_storm_small" }).forEach(entity => {
      let timer = entity.getDynamicProperty("1ss_rub_tim") || 55;
      timer = timer > 0 ? timer - 1 : 55;
      entity.setDynamicProperty("1ss_rub_tim", timer);
      if (timer === 1) {
        dim.spawnEntity("tera:soul_storm_rubble", {
          x: entity.location.x,
          y: entity.location.y + 12,
          z: entity.location.z
        });
      }
    });
    dim.getEntities({ type: "tera:soul_storm" }).forEach(entity => {
      let rubTimer = entity.getDynamicProperty("ss_rub_tim") || 35;
      rubTimer = rubTimer > 0 ? rubTimer - 1 : 35;
      entity.setDynamicProperty("ss_rub_tim", rubTimer);
      if (rubTimer === 1) {
        dim.spawnEntity("tera:soul_storm_rubble", {
          x: entity.location.x,
          y: entity.location.y + 12,
          z: entity.location.z
        });
      }
      let fasTimer = entity.getDynamicProperty("ss_fas_tim") || 3600;
      fasTimer = fasTimer > 2 ? fasTimer - 1 : 3600;
      entity.setDynamicProperty("ss_fas_tim", fasTimer);
      if (fasTimer === 1800) {
        entity.triggerEvent("mass1");
      }
      if (fasTimer === 3) {
        entity.triggerEvent("mass2");
      }
      if (!entity.hasTag("sstorm_upw")) {
        entity.addTag("sstorm_upw");
        entity.setDynamicProperty("sstorm_upw", 0);
      }
      let upwTimer = entity.getDynamicProperty("sstorm_upw") || 0;
      if (upwTimer <= 7) {
        upwTimer++;
        entity.setDynamicProperty("sstorm_upw", upwTimer);
      }
      if (upwTimer >= 4) {
        entity.teleport({
          x: entity.location.x,
          y: entity.location.y + 0.5,
          z: entity.location.z
        });
      }
      const loc = entity.location;
      const block1 = dim.getBlock({ x: Math.floor(loc.x), y: Math.floor(loc.y) - 32, z: Math.floor(loc.z) });
      const block2 = dim.getBlock({ x: Math.floor(loc.x), y: Math.floor(loc.y) - 18, z: Math.floor(loc.z) });
      const block3 = dim.getBlock({ x: Math.floor(loc.x), y: Math.floor(loc.y) - 9, z: Math.floor(loc.z) });
      if (block1 && block2 && block3 &&
          block1.id === "minecraft:air" &&
          block2.id === "minecraft:air" &&
          block3.id === "minecraft:air") {
        entity.setDynamicProperty("sstorm_upw", 1);
      }
    });
  }

  triggerSoulStorm() {
    this.updateSoulStorm();
  }
}

export default TeraManager;

import { world } from "@minecraft/server";

/**
 * SoulTaintedBeaconEffects handles the effects triggered when a player holds a
 * "tera:soul_tainted_beacon" in their main hand and their dynamic properties "tera_sneak"
 * and "tera_death" match the required conditions (1 and 0, respectively).
 *
 * Effects include:
 * - Applying 2 void damage to the player.
 * - Triggering a slight camera shake for nearby players.
 * - Playing the "mob.tera_beam" sound.
 * - Damaging nearby mobs and players (those not holding the beacon) along the player's
 *   forward ray.
 */
export class SoulTaintedBeaconEffects {
  /**
   * Triggers the soul tainted beacon effects.
   *
   * This method checks each player, and if they are holding the required item in their
   * main hand and have the proper dynamic properties, it will:
   * - Apply 2 void damage using the native applyDamage method.
   * - Trigger a camera shake effect via a runCommand fallback.
   * - Play the "mob.tera_beam" sound.
   * - Raycast in front of the player and apply 1 damage to any nearby mobs or to players
   *   that do not hold the beacon.
   *
   * @returns {void}
   */
  static trigger() {
    const players = world.getPlayers();
    for (const player of players) {
      // Retrieve the player's main-hand item using the official component method.
      const equippable = player.getComponent("equippable");
      if (!equippable) continue;
      const tool = equippable.getEquipment("Mainhand");
      if (!tool || tool.id !== "tera:soul_tainted_beacon") continue;
      
      // Check the required dynamic properties.
      const sneak = player.getDynamicProperty("tera_sneak") ?? 0;
      const death = player.getDynamicProperty("tera_death") ?? 0;
      if (sneak !== 1 || death !== 0) continue;
      
      // Get the player's current dimension.
      const dimension = player.dimension || world.getDimension("overworld");
      
      // Apply 2 void damage to the player 
      player.applyDamage(2, "void");
      
      // Trigger a slight camera shake via fallback.
      dimension.runCommand(
        `execute as "${player.nameTag}" run camerashake add @a[r=50] 0.2 0.1 positional`
      );
      
      // Play the "mob.tera_beam" sound at the player's location.
      dimension.playSound("mob.tera_beam", player.location);
      
      // Use raycasting to damage entities along the player's forward direction.
      // Assume that player.getViewDirection() returns a normalized {x, y, z} vector.
      const origin = player.location;
      const direction = player.getViewDirection ? player.getViewDirection() : { x: 0, y: 0, z: 1 };
      const maxDistance = 41; // Maximum ray distance
      
      // Retrieve entities along the ray.
      const rayEntities = dimension.getEntitiesFromRay({
        origin: origin,
        direction: direction,
        maxDistance: maxDistance
      });
      
      // For each entity hit by the ray:
      for (const entity of rayEntities) {
        // If the entity is a mob, apply 1 damage using applyDamage.
        if (entity.family === "mob") {
          entity.applyDamage(1, "override", player);
        }
        // If the entity is a player, apply 1 damage only if they are not holding the beacon.
        else if (entity.family === "player") {
          const eq = entity.getComponent("equippable");
          const mainItem = eq ? eq.getEquipment("Mainhand") : null;
          if (!mainItem || mainItem.id !== "tera:soul_tainted_beacon") {
            entity.applyDamage(1, "override", player);
          }
        }
      }
    }
  }
}

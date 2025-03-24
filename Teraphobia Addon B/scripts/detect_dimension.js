import { world } from "@minecraft/server";

/**
 * Utility class for updating Tera scoreboards using native Bedrock methods.
 *
 * The logic implemented is as follows:
 * - **tera_ov**: Starts at -1. If the block at the player's feet is bedrock, set to 0;
 *   if the block 64 below is bedrock, set to 5.
 * - **tera_ne**: Set to 1 if the block at the player's feet is bedrock, otherwise 0.
 *   If the block 64 below is bedrock, force to 0.
 * - **tera_en**: If tera_ne is 0 and tera_ov is 3 or less, set to 1; then if either
 *   block check is true, force tera_en to 0.
 * - Finally, if tera_en is 1, force both tera_ov and tera_ne to 0.
 *
 * This class uses native dynamic scoreboard methods to update objectives.
 */
export class TeraScoreboardUpdater {
  /**
   * Ensures a scoreboard objective exists. If it does not, the objective is created.
   *
   * @param {string} objectiveId - The unique ID for the scoreboard objective.
   * @param {string} displayName - The display name for the objective.
   * @returns {ScoreboardObjective} The existing or newly created scoreboard objective.
   */
  static getOrCreateObjective(objectiveId, displayName) {
    let objective = world.scoreboard.getObjective(objectiveId);
    if (!objective) {
      objective = world.scoreboard.addObjective(objectiveId, displayName);
    }
    return objective;
  }

  /**
   * Updates the Tera scoreboards for all players in the overworld based on the current
   * block conditions at their feet and 64 blocks below.
   *
   * The scoreboard objectives used are:
   * - `tera_ov`
   * - `tera_ne`
   * - `tera_en`
   *
   * Each player's dynamic scoreboard identity is updated with the corresponding value.
   *
   * @returns {void}
   */
  static updateScoreboards() {
    // Get the overworld dimension for block lookups.
    const dimension = world.getDimension("overworld");
    const players = world.getPlayers();

    // Ensure that scoreboard objectives exist.
    const objectiveOV = this.getOrCreateObjective("tera_ov", "Tera OV");
    const objectiveNE = this.getOrCreateObjective("tera_ne", "Tera NE");
    const objectiveEN = this.getOrCreateObjective("tera_en", "Tera EN");

    // Process each player.
    for (const player of players) {
      const pos = player.location; // Player's current position.
      
      // Check the block at the player's feet and 64 blocks below.
      const blockAtFeet = dimension.getBlock({ x: pos.x, y: pos.y, z: pos.z });
      const blockAtMinus64 = dimension.getBlock({ x: pos.x, y: pos.y - 64, z: pos.z });
      
      // Calculate tera_ov: start at -1, override based on block conditions.
      let ov = -1;
      if (blockAtFeet && blockAtFeet.type.id === "minecraft:bedrock") {
        ov = 0;
      }
      if (blockAtMinus64 && blockAtMinus64.type.id === "minecraft:bedrock") {
        ov = 5;
      }
      
      // Calculate tera_ne: set to 1 if the block at feet is bedrock, else 0.
      let ne = 0;
      if (blockAtFeet && blockAtFeet.type.id === "minecraft:bedrock") {
        ne = 1;
      }
      if (blockAtMinus64 && blockAtMinus64.type.id === "minecraft:bedrock") {
        ne = 0;
      }
      
      // Calculate tera_en: if tera_ne is 0 and tera_ov is 3 or less, set to 1.
      let en = 0;
      if (ne === 0 && ov <= 3) {
        en = 1;
      }
      // If either block condition is met, force tera_en to 0.
      if (
        (blockAtFeet && blockAtFeet.type.id === "minecraft:bedrock") ||
        (blockAtMinus64 && blockAtMinus64.type.id === "minecraft:bedrock")
      ) {
        en = 0;
      }
      
      // If tera_en is 1, force both tera_ov and tera_ne to 0.
      if (en === 1) {
        ov = 0;
        ne = 0;
      }
      
      // Update scoreboard values using the native Scoreboard class.
      const identity = player.scoreboardIdentity;
      if (identity) {
        objectiveOV.setScore(identity, ov);
        objectiveNE.setScore(identity, ne);
        objectiveEN.setScore(identity, en);
      }
    }
  }
}

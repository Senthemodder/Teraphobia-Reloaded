import { world, Player, Scoreboard } from "@minecraft/server";


/**
 * MusicManager provides static methods for updating various music-related scoreboard groups
 * using native Bedrock scripting methods. It manages objectives, tags, and sound playback using
 * contemporary methods (e.g. native Scoreboard class, playSound, and our patched stopSound).
 */
export class MusicManager {
  /**
   * Retrieves an existing scoreboard objective or creates a new one.
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
   * Common updater for a music group.
   * For each player, this method:
   * - Decreases the group's score by 1 if it's ≥1.
   * - Removes the "played" tag if the score is ≤2.
   * - For players with the specified component tag:
   *   - If they do not have the "played" tag and score is 0, plays the music sound,
   *     then stops it (via our patched stopSound), plays it again, increments their score by the given value, and adds the "played" tag.
   *   - Otherwise, if they already have the "played" tag and a game-end sound is specified, stops that sound.
   * - For players not in the group, resets the score to 0.
   * - For players with a low score (≤4), ensures the music sound is stopped.
   *
   * @param {Object} options - Options for updating the music group.
   * @param {string} options.objectiveId - Scoreboard objective ID.
   * @param {string} options.displayName - Display name for the objective.
   * @param {string} options.compTag - Tag indicating group membership.
   * @param {string} options.playdTag - Tag marking that the sound has been played.
   * @param {string} options.musicSound - The sound name to play.
   * @param {string} [options.gameEndSound] - Optional game-end sound name to stop.
   * @param {number} options.increment - The score increment value when triggering the sound.
   * @returns {void}
   */
  static updateGroup(options) {
    const {
      objectiveId,
      displayName,
      compTag,
      playdTag,
      musicSound,
      gameEndSound,
      increment,
    } = options;

    const dimension = world.getDimension("overworld");
    const objective = this.getOrCreateObjective(objectiveId, displayName);
    const players = world.getPlayers();

    for (const player of players) {
      const identity = player.scoreboardIdentity;
      if (!identity) continue;
      // Get current score; default to 0 if undefined.
      let score = objective.getScore(identity) ?? 0;

      // Decrease score by 1 if it's at least 1.
      if (score >= 1) {
        score -= 1;
        objective.setScore(identity, score);
      }

      // Remove the "played" tag if score is ≤2.
      if (score <= 2) {
        player.removeTag(playdTag);
      }

      if (player.hasTag(compTag)) {
        if (!player.hasTag(playdTag) && score === 0) {
          // Play the music sound at the player's location.
          dimension.playSound(musicSound, player.location);
          // Use our monkey-patched stopSound method to stop the sound.
          dimension.stopSound(musicSound, player.location);
          // Play the sound again.
          dimension.playSound(musicSound, player.location);
          // Increase score by the specified increment.
          score += increment;
          objective.setScore(identity, score);
          // Add the "played" tag.
          player.addTag(playdTag);
        } else if (player.hasTag(playdTag) && gameEndSound) {
          // If already played, stop the game-end sound.
          dimension.stopSound(gameEndSound, player.location);
        }
      } else {
        // For players not in the specified component group, reset score.
        objective.setScore(identity, 0);
      }

      // If score is low (≤4), ensure the music sound is stopped.
      if (score <= 4) {
        dimension.stopSound(musicSound, player.location);
      }
    }
  }

  /**
   * Updates the Soul Dimension group.
   *
   * @returns {void}
   */
  static updateSoulDimension() {
    this.updateGroup({
      objectiveId: "soul_dim_m",
      displayName: "Soul Dimension Music",
      compTag: "soul_dim_comp",
      playdTag: "soul_dim_playd",
      musicSound: "music.soul_dimension",
      gameEndSound: "music.game.end",
      increment: 4420,
    });
  }

  /**
   * Updates the Underworld group.
   *
   * @returns {void}
   */
  static updateUnderworld() {
    this.updateGroup({
      objectiveId: "underworld_m",
      displayName: "Underworld Music",
      compTag: "underworld_comp",
      playdTag: "underworld_playd",
      musicSound: "music.underworld",
      increment: 4420,
    });
  }

  /**
   * Updates the Limbo group.
   *
   * @returns {void}
   */
  static updateLimbo() {
    this.updateGroup({
      objectiveId: "limbo_m",
      displayName: "Limbo Music",
      compTag: "limbo_comp",
      playdTag: "limbo_playd",
      musicSound: "music.limbo",
      increment: 4420,
    });
  }

  /**
   * Updates the Fallen Perishment group.
   *
   * @returns {void}
   */
  static updateFallPerishment() {
    this.updateGroup({
      objectiveId: "fall_per_m",
      displayName: "Fallen Perishment",
      compTag: "fall_per_comp",
      playdTag: "fall_per_playd",
      musicSound: "music.fallen_perishment",
      gameEndSound: "music.game.end",
      increment: 1860,
    });
  }

  /**
   * Updates the Withering group.
   *
   * @returns {void}
   */
  static updateWithering() {
    this.updateGroup({
      objectiveId: "witherin_m",
      displayName: "Withering Music",
      compTag: "witherin_comp",
      playdTag: "witherin_playd",
      musicSound: "music.withering",
      gameEndSound: "music.soul_dimension",
      increment: 2000,
    });
  }

  /**
   * Updates the Idol Abandoned group.
   *
   * @returns {void}
   */
  static updateIdolAbandoned() {
    this.updateGroup({
      objectiveId: "idol_aba_m",
      displayName: "Idol Abandoned Music",
      compTag: "idol_aba_comp",
      playdTag: "idol_aba_playd",
      musicSound: "music.idol_abandoned",
      gameEndSound: "music.game.end",
      increment: 7160,
    });
  }

  /**
   * Updates the Soul Storm group.
   *
   * @returns {void}
   */
  static updateSoulStorm() {
    this.updateGroup({
      objectiveId: "soulstor_m",
      displayName: "Soul Storm Music",
      compTag: "soulstor_comp",
      playdTag: "soulstor_playd",
      musicSound: "music.soul_storm",
      increment: 4880,
    });

    // Additional stopsound actions for multiple channels.
    const dimension = world.getDimension("overworld");
    for (const player of world.getPlayers()) {
      const identity = player.scoreboardIdentity;
      if (!identity) continue;
      const objective = world.scoreboard.getObjective("soulstor_m");
      const score = objective ? (objective.getScore(identity) ?? 0) : 0;
      if (score <= 4) {
        dimension.stopSound("music.underworld", player.location);
        dimension.stopSound("music.soul_dimension", player.location);
        dimension.stopSound("music.limbo", player.location);
        dimension.stopSound("music.withering", player.location);
        dimension.stopSound("music.fallen_perishment", player.location);
        // Optionally, invoke additional termination functions here.
      }
    }
  }

  /**
   * Updates the Small Soul Storm group.
   *
   * @returns {void}
   */
  static updateSmallSoulStorm() {
    this.updateGroup({
      objectiveId: "ssolstor_m",
      displayName: "Small Soul Storm Music",
      compTag: "ssolstor_comp",
      playdTag: "ssolstor_playd",
      musicSound: "music.soul_storm_small",
      increment: 2320,
    });

    const dimension = world.getDimension("overworld");
    for (const player of world.getPlayers()) {
      const identity = player.scoreboardIdentity;
      if (!identity) continue;
      const objective = world.scoreboard.getObjective("ssolstor_m");
      const score = objective ? (objective.getScore(identity) ?? 0) : 0;
      if (score <= 4) {
        dimension.stopSound("music.underworld", player.location);
        dimension.stopSound("music.soul_dimension", player.location);
        dimension.stopSound("music.limbo", player.location);
        dimension.stopSound("music.withering", player.location);
        dimension.stopSound("music.fallen_perishment", player.location);
      }
    }
  }
}

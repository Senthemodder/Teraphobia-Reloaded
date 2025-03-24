import { Dimension, system, world  } from "@minecraft/server";

{
  const Dimension = world.getDimension("overworld");
  const dimensionProto = Object.getPrototypeOf(Dimension);
  if (!dimensionProto.stopSound) {
    /**
     * Stops a sound at a specified location.
     *
     * @param {string} soundName - The name of the sound to stop.
     * @param {{ x: number, y: number, z: number }} location - The location at which to stop the sound.
     * @returns {} callback
     */
    dimensionProto.stopSound = function (soundName, location) {
      return this.runCommand(
        `execute positioned ${location.x} ${location.y} ${location.z} run stopsound @a ${soundName}`
      );
    };
  }
}



// Method for pushing fog settings
Player.prototype.pushFog = function (configs = fogConfigs) {
  configs.forEach(config => {
    system.runCommand(`fog @a push "${config.source}" "${config.target}"`);
  });
};

// Method for popping fog settings
Player.prototype.popFog = function (configs = fogConfigs) {
  configs.forEach(config => {
    system.runCommand(`fog @a pop "${config.target}"`);
  });
};
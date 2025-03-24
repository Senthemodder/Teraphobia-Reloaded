import { world } from "@minecraft/server";

export function triggerEffects() {
  const overworld = world.getDimension("overworld");

  // Execute the custom camera shake command.
  overworld.runCommand("camerashake add @a[r=50] 1 1.4 positional");

  // Play the ambient lightning impact sound at location (0, 0, 0).
  overworld.playSound("ambient.weather.lightning.impact", { x: 0, y: 0, z: 0 });

  // Spawn the tera:big_impact particle at location (0, 0.5, 0).
  overworld.spawnParticle("tera:big_impact", { x: 0, y: 0.5, z: 0 });
}

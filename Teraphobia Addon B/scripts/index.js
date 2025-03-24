import { EntityHealthComponent, world, system, BlockPermutation } from "@minecraft/server";

  system.runInterval(() => {
    const tera_sneak = world.scoreboard.getObjective("tera_sneak");
    const tera_death = world.scoreboard.getObjective("tera_death");
    const tera_forw = world.scoreboard.getObjective("tera_forw");
    const tera_back = world.scoreboard.getObjective("tera_back");
    const tera_left = world.scoreboard.getObjective("tera_left");
    const tera_righ = world.scoreboard.getObjective("tera_righ");
    const tera_up = world.scoreboard.getObjective("tera_up");
    const tera_down = world.scoreboard.getObjective("tera_down");
    world.getAllPlayers().forEach(player => {
        if (player.isSneaking) {
            tera_sneak.setScore(player, 1)
          }
          if (!player.isSneaking) {
            tera_sneak.setScore(player, 0)
        }
        if ((player.getComponent(EntityHealthComponent.componentId)).currentValue == 0) {
          tera_death.setScore(player, 1)
          } else {
            tera_death.setScore(player, 0)
          }
          if (player.hasTag("st_beacon")) {
            player.runCommandAsync(`function soul_tainted_beacon_beam`);
          }
          if (player.hasTag("gindable")) {
            player.runCommandAsync(`function teraphobia_myc_addon`);
          }
          if (player.hasTag("reaper_victim")) {
            player.runCommandAsync(`gamemode s`);
          }
    })
    for (const player of world.getAllPlayers()) {
      let { forward, right, backward, left, up, down } = adjustVelocityWithViewDirection(player)
      const inventory = player.getComponent("minecraft:inventory").container;
      const itemStack = inventory.getItem(player.selectedSlotIndex);
        if (itemStack && itemStack.getTags().includes("tera:tera_cooldown") && player.hasTag("tera_cooldown")) {
        const cooldown = itemStack.getComponent("cooldown")
        cooldown?.startCooldown(player)
        player.removeTag(`tera_cooldown`);
      }
      if (itemStack && itemStack.getTags().includes("tera:tera_stb")) {
        player.runCommandAsync(`function soul_tainted_beacon`);
      }

      if (forward > 0.01) {
        tera_forw.setScore(player, 1);
      } else if (forward < 0.02) {
        tera_forw.setScore(player, 0);
      }
      if (backward > 0.01) {
        tera_back.setScore(player, 1);
      } else if (backward < 0.02) {
        tera_back.setScore(player, 0);
      }
      if (left > 0.01) {
        tera_left.setScore(player, 1);
      } else if (left < 0.02) {
        tera_left.setScore(player, 0);
      }
      if (right > 0.01) {
        tera_righ.setScore(player, 1);
      } else if (right < 0.02) {
        tera_righ.setScore(player, 0);
      }
      if (up > 0.01) {
        tera_up.setScore(player, 1);
      } else if (up < 0.02) {
        tera_up.setScore(player, 0);
      }
      if (down > 0.01) {
        tera_down.setScore(player, 1);
      } else if (down < 0.02) {
        tera_down.setScore(player, 0);
      }
  }
  });

world.afterEvents.itemCompleteUse.subscribe(event => {
    const {itemStack: item, source} = event;
    if (item.typeId == "minecraft:milk_bucket") {
      source.runCommandAsync(`function tera_potion_rid`);
    }
  });



function adjustVelocityWithViewDirection(player) {
  let velocity = player.getVelocity();
  let viewDirection = player.getViewDirection();

  let viewDirMagnitude = Math.sqrt(viewDirection.x ** 2 + viewDirection.z ** 2);
  let normalizedViewDir = { x: viewDirection.x / viewDirMagnitude, z: viewDirection.z / viewDirMagnitude };

  let forwardVelocity = (velocity.x * normalizedViewDir.x + velocity.z * normalizedViewDir.z);
  let rightVelocity = (velocity.z * normalizedViewDir.x - velocity.x * normalizedViewDir.z);

  let backwardVelocity = -forwardVelocity;
  let leftVelocity = -rightVelocity;

  let downVelocity, upVelocity;

  if (velocity.y > 0) {
      upVelocity = velocity.y
      downVelocity = -upVelocity
  } else {
      downVelocity = -velocity.y
      upVelocity = -downVelocity
  }

  forwardVelocity = Math.round(forwardVelocity * 100) / 100;
  rightVelocity = Math.round(rightVelocity * 100) / 100;
  backwardVelocity = Math.round(backwardVelocity * 100) / 100;
  leftVelocity = Math.round(leftVelocity * 100) / 100;
  upVelocity = Math.round(upVelocity * 100) / 100;
  downVelocity = Math.round(downVelocity * 100) / 100;
  return {
      forward: forwardVelocity,
      right: rightVelocity,
      backward: backwardVelocity,
      left: leftVelocity,
      up: upVelocity,
      down: downVelocity
  }
}


world.afterEvents.playerPlaceBlock.subscribe((event) => {
  const { block, dimension } = event,
      blockHead = event.block

      const head = 'tera:odd_wither_skull',
      center = "minecraft:soul_sand",
      east = "minecraft:soul_sand",
      west = "minecraft:soul_sand",
      bottom = "minecraft:soul_sand",
      north = "minecraft:soul_sand",
      south = "minecraft:soul_sand",
      easttop = "tera:odd_wither_skull",
      westtop = "tera:odd_wither_skull",
      northtop = "tera:odd_wither_skull",
      southtop = "tera:odd_wither_skull";

  if (blockHead.typeId === head) {
      const blockCenter = block.below(),
          blockWest = blockCenter.west(),
          blockEast = blockCenter.east(),
          blockBelow = blockCenter.below(),
          blockNorth = blockCenter.north(),
          blockSouth = blockCenter.south(),
          blockNorthTop = blockHead.north(),
          blockSouthTop = blockHead.south(),
          blockWestTop = blockHead.west(),
          blockEastTop = blockHead.east();

      if (blockCenter.typeId == center && blockBelow.typeId == bottom) {
          const East2West = blockEast.typeId === east && blockWest.typeId === west && blockEastTop.typeId === easttop && blockWestTop.typeId === westtop,
              North2South = blockNorth.typeId === north && blockSouth.typeId === south && blockNorthTop.typeId === northtop && blockSouthTop.typeId === southtop;

          if (East2West || North2South) {
              const air = BlockPermutation.resolve('minecraft:air');
              blockHead.setPermutation(air);
              blockCenter.setPermutation(air)
              blockBelow.setPermutation(air);

              if (East2West) {
                  blockEastTop.setPermutation(air);
                  blockWestTop.setPermutation(air);
                  blockEast.setPermutation(air);
                  blockWest.setPermutation(air);
              } else {
                  blockNorthTop.setPermutation(air);
                  blockSouthTop.setPermutation(air);
                  blockNorth.setPermutation(air);
                  blockSouth.setPermutation(air);
              };
              dimension.spawnEntity("tera:giant_wither", blockBelow.location);
          };
      };
  };
});

world.afterEvents.playerPlaceBlock.subscribe((event) => {
  const { block, dimension } = event,
      blockHead = event.block

      const head = 'tera:soul_wither_skull',
      center = "tera:soul_bedrock",
      east = "minecraft:soul_sand",
      west = "minecraft:soul_sand",
      bottom = "minecraft:soul_sand",
      north = "minecraft:soul_sand",
      south = "minecraft:soul_sand",
      easttop = "tera:soul_wither_skull",
      westtop = "tera:soul_wither_skull",
      northtop = "tera:soul_wither_skull",
      southtop = "tera:soul_wither_skull";

  if (blockHead.typeId === head) {
      const blockCenter = block.below(),
          blockWest = blockCenter.west(),
          blockEast = blockCenter.east(),
          blockBelow = blockCenter.below(),
          blockNorth = blockCenter.north(),
          blockSouth = blockCenter.south(),
          blockNorthTop = blockHead.north(),
          blockSouthTop = blockHead.south(),
          blockWestTop = blockHead.west(),
          blockEastTop = blockHead.east();

      if (blockCenter.typeId == center && blockBelow.typeId == bottom) {
          const East2West = blockEast.typeId === east && blockWest.typeId === west && blockEastTop.typeId === easttop && blockWestTop.typeId === westtop,
              North2South = blockNorth.typeId === north && blockSouth.typeId === south && blockNorthTop.typeId === northtop && blockSouthTop.typeId === southtop;

          if (East2West || North2South) {
              const air = BlockPermutation.resolve('minecraft:air');
              blockHead.setPermutation(air);
              blockCenter.setPermutation(air)
              blockBelow.setPermutation(air);

              if (East2West) {
                  blockEastTop.setPermutation(air);
                  blockWestTop.setPermutation(air);
                  blockEast.setPermutation(air);
                  blockWest.setPermutation(air);
              } else {
                  blockNorthTop.setPermutation(air);
                  blockSouthTop.setPermutation(air);
                  blockNorth.setPermutation(air);
                  blockSouth.setPermutation(air);
              };
              dimension.spawnEntity("tera:soul_storm_small", blockBelow.location);
          };
      };
  };
});

world.afterEvents.playerPlaceBlock.subscribe((event) => {
    const { block, dimension } = event,
        blockHead = event.block

        const head = 'tera:soul_wither_skull',
        center = "minecraft:soul_sand",
        east = "minecraft:soul_sand",
        west = "minecraft:soul_sand",
        bottom = "minecraft:soul_sand",
        north = "minecraft:soul_sand",
        south = "minecraft:soul_sand",
        easttop = "tera:soul_wither_skull",
        westtop = "tera:soul_wither_skull",
        northtop = "tera:soul_wither_skull",
        southtop = "tera:soul_wither_skull";

    if (blockHead.typeId === head) {
        const blockCenter = block.below(),
            blockWest = blockCenter.west(),
            blockEast = blockCenter.east(),
            blockBelow = blockCenter.below(),
            blockNorth = blockCenter.north(),
            blockSouth = blockCenter.south(),
            blockNorthTop = blockHead.north(),
            blockSouthTop = blockHead.south(),
            blockWestTop = blockHead.west(),
            blockEastTop = blockHead.east();

        if (blockCenter.typeId == center && blockBelow.typeId == bottom) {
            const East2West = blockEast.typeId === east && blockWest.typeId === west && blockEastTop.typeId === easttop && blockWestTop.typeId === westtop,
                North2South = blockNorth.typeId === north && blockSouth.typeId === south && blockNorthTop.typeId === northtop && blockSouthTop.typeId === southtop;

            if (East2West || North2South) {
                const air = BlockPermutation.resolve('minecraft:air');
                blockHead.setPermutation(air);
                blockCenter.setPermutation(air)
                blockBelow.setPermutation(air);

                if (East2West) {
                    blockEastTop.setPermutation(air);
                    blockWestTop.setPermutation(air);
                    blockEast.setPermutation(air);
                    blockWest.setPermutation(air);
                } else {
                    blockNorthTop.setPermutation(air);
                    blockSouthTop.setPermutation(air);
                    blockNorth.setPermutation(air);
                    blockSouth.setPermutation(air);
                };
                dimension.spawnEntity("tera:soul_wither", blockBelow.location);
            };
        };
    };
});


world.afterEvents.playerPlaceBlock.subscribe((event) => {
  const { block, dimension } = event,
      blockHead = event.block

      const head = 'tera:soul_wither_skull',
      center = "minecraft:magma",
      east = "minecraft:magma",
      west = "minecraft:magma",
      bottom = "minecraft:magma",
      north = "minecraft:magma",
      south = "minecraft:magma",
      easttop = "tera:soul_wither_skull",
      westtop = "tera:soul_wither_skull",
      northtop = "tera:soul_wither_skull",
      southtop = "tera:soul_wither_skull";

  if (blockHead.typeId === head) {
      const blockCenter = block.below(),
          blockWest = blockCenter.west(),
          blockEast = blockCenter.east(),
          blockBelow = blockCenter.below(),
          blockNorth = blockCenter.north(),
          blockSouth = blockCenter.south(),
          blockNorthTop = blockHead.north(),
          blockSouthTop = blockHead.south(),
          blockWestTop = blockHead.west(),
          blockEastTop = blockHead.east();

      if (blockCenter.typeId == center && blockBelow.typeId == bottom) {
          const East2West = blockEast.typeId === east && blockWest.typeId === west && blockEastTop.typeId === easttop && blockWestTop.typeId === westtop,
              North2South = blockNorth.typeId === north && blockSouth.typeId === south && blockNorthTop.typeId === northtop && blockSouthTop.typeId === southtop;

          if (East2West || North2South) {
              const air = BlockPermutation.resolve('minecraft:air');
              blockHead.setPermutation(air);
              blockCenter.setPermutation(air)
              blockBelow.setPermutation(air);

              if (East2West) {
                  blockEastTop.setPermutation(air);
                  blockWestTop.setPermutation(air);
                  blockEast.setPermutation(air);
                  blockWest.setPermutation(air);
              } else {
                  blockNorthTop.setPermutation(air);
                  blockSouthTop.setPermutation(air);
                  blockNorth.setPermutation(air);
                  blockSouth.setPermutation(air);
              };
              dimension.spawnEntity("tera:fiery_ghast", blockBelow.location);
          };
      };
  };
});
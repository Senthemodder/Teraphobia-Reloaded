import { Entity, Player, Scoreboard, system } from '@minecraft/server';

class TeraManager {
  // Static constants for scoreboard objectives and arrow types.
  static OBJECTIVES = [
    'tera_death', 'tera_sneak', 'tera_forw', 'tera_back',
    'tera_left', 'tera_righ', 'tera_up', 'tera_down',
    'rpr_pal_ent', 'shulk_live'
  ];

  static ARROW_TYPES = ['earth', 'ice', 'lightning', 'diamond', 'iron', 'fire'];

  constructor() {
    // Register all scoreboard objectives.
    TeraManager.OBJECTIVES.forEach(obj => Scoreboard.addObjective(obj, 'dummy'));
  }

  // ─────────────────────────────────────────────
  // Player-specific Commands
  // ─────────────────────────────────────────────

  // Give the teronic guide to a player if not already given.
  giveGuide(player: Player) {
    if (!player.hasTag('tg_given2')) {
      player.giveItem('tera:teronic_guide', 1, 0);
      player.addTag('tg_given2');
    }
  }

  // Give dodge item if not already given; if player has tag "gindable", clear dodge items.
  giveOrClearDodgeItem(player: Player) {
    if (!player.hasTag('td_given')) {
      player.giveItem('tera:tera_dodge_off', 1, 0, {
        'minecraft:item_lock': { mode: 'lock_in_inventory' },
        'minecraft:keep_on_death': {}
      });
      player.addTag('td_given');
    } else if (player.hasTag('gindable')) {
      // Clear dodge items for players with the gindable tag.
      player.clearItem('tera:tera_dodge_off');
      player.clearItem('tera:tera_dodge_on');
    }
  }

  // Update offhand arrow tags based on whether the player holds an arrow.
  updateArrowTags(player: Player) {
    TeraManager.ARROW_TYPES.forEach(type => {
      const itemName = `tera:${type}_arrow`;
      if (player.hasItemInSlot('slot.weapon.offhand', itemName)) {
        player.addTag(`tera_${type}_arrow`);
      } else {
        player.removeTag(`tera_${type}_arrow`);
      }
    });
  }

  // Teleport player based on their "rpr_pal_ent" score and send title/effects.
  teleportBasedOnScore(player: Player) {
    const score = Scoreboard.getScore(player, 'rpr_pal_ent') || 0;
    // Define teleport targets by score ranges.
    const targets = [
      { min: 900, max: 1200, pos: { x: 75087, y: 210, z: 75333 }, facing: { x: 0, y: -2, z: 0 } },
      { min: 600, max: 899, pos: { x: 75090, y: 220, z: 75287 }, facing: { x: 0, y: -2, z: 0 } },
      { min: 300, max: 499, pos: { x: 75037, y: 220, z: 75331 }, facing: { x: 0, y: -2, z: 0 } },
      { min: 5,   max: 299, pos: { x: 75032, y: 202, z: 75277 }, facing: { x: 0, y: -2, z: 0 } },
      { min: 1,   max: 4,   pos: { x: 75063, y: 175, z: 75366 }, facing: { x: 75063, y: 177, z: 75362 } }
    ];
    const target = targets.find(t => score >= t.min && score <= t.max);
    if (target) {
      player.teleport(target.pos, target.facing);
      player.sendTitle("The Reaper's Palace forms before you...", "actionbar");
      // Original commands add effects for scores 3 and above; otherwise remove.
      if (score >= 3) {
        player.addEffect('resistance', 5, 255, true);
        player.addEffect('invisibility', 5, 255, true);
      } else {
        player.removeEffect('resistance');
        player.removeEffect('invisibility');
      }
    }
  }

  // ─────────────────────────────────────────────
  // Entity and World Commands
  // ─────────────────────────────────────────────

  // Clear unwanted effects on bosses (tera_bosses) and reaper entities.
  clearBossEffects() {
    // For entities in the "tera_bosses" family.
    Entity.getEntitiesByFamily('tera_bosses').forEach(boss => {
      ['slowness', 'blindness', 'fatal_poison', 'levitation'].forEach(effect => {
        boss.removeEffect(effect);
      });
    });
    // For entities in the "reaper" family.
    Entity.getEntitiesByFamily('reaper').forEach(entity => {
      entity.removeEffect('wither');
    });
  }

  // Clear areas around tera_bosses by running several fill commands.
  clearAreaAroundBosses() {
    const fillCommands = [
      { range: "~3 ~9 ~3 ~-3 ~ ~-3", replace: "tera:limbo_stone" },
      { range: "~3 ~9 ~3 ~-3 ~ ~-3", replace: "dirt" },
      { range: "~7 ~9 ~7 ~-7 ~ ~-7", replace: "fire" },
      { range: "~7 ~9 ~7 ~-7 ~ ~-7", replace: "ice" },
      { range: "~7 ~9 ~7 ~-7 ~ ~-7", replace: "blue_ice" },
      { range: "~7 ~9 ~7 ~-7 ~ ~-7", replace: "packed_ice" },
      { range: "~7 ~9 ~7 ~-7 ~ ~-7", replace: "powder_snow" },
      { range: "~7 ~9 ~7 ~-7 ~ ~-7", replace: "water" },
      { range: "~7 ~9 ~7 ~-7 ~ ~-7", replace: "flowing_water" },
      { range: "~7 ~9 ~7 ~-7 ~ ~-7", replace: "lava" },
      { range: "~7 ~9 ~7 ~-7 ~ ~-7", replace: "flowing_lava" },
      { range: "~7 ~9 ~7 ~-7 ~ ~-7", replace: "magma" }
    ];
    const fillCommandsDeepslate = [
      { range: "~7 ~-1 ~7 ~-7 ~-1 ~-7", replace: "fire", target: "deepslate" },
      { range: "~7 ~-1 ~7 ~-7 ~-1 ~-7", replace: "ice", target: "deepslate" },
      { range: "~7 ~-1 ~7 ~-7 ~-1 ~-7", replace: "blue_ice", target: "deepslate" },
      { range: "~7 ~-1 ~7 ~-7 ~-1 ~-7", replace: "packed_ice", target: "deepslate" },
      { range: "~7 ~-1 ~7 ~-7 ~-1 ~-7", replace: "powder_snow", target: "deepslate" },
      { range: "~7 ~-1 ~7 ~-7 ~-1 ~-7", replace: "water", target: "deepslate" },
      { range: "~7 ~-1 ~7 ~-7 ~-1 ~-7", replace: "flowing_water", target: "deepslate" },
      { range: "~7 ~-1 ~7 ~-7 ~-1 ~-7", replace: "lava", target: "deepslate" },
      { range: "~7 ~-1 ~7 ~-7 ~-1 ~-7", replace: "flowing_lava", target: "deepslate" },
      { range: "~7 ~-1 ~7 ~-7 ~-1 ~-7", replace: "magma", target: "deepslate" }
    ];

    // For each boss, run all fill commands.
    Entity.getEntitiesByFamily('tera_bosses').forEach(boss => {
      fillCommands.forEach(cmd => {
        const command = `execute as @e[uuid=${boss.id}] at @s run fill ${cmd.range} air [] replace ${cmd.replace}`;
        system.runCommand(command);
      });
      fillCommandsDeepslate.forEach(cmd => {
        const command = `execute as @e[uuid=${boss.id}] at @s run fill ${cmd.range} ${cmd.target} [] replace ${cmd.replace}`;
        system.runCommand(command);
      });
    });
  }

  // Kill nearby unwanted entities around each tera_boss.
  killBossNearbyEntities() {
    const killTargets = [
      "boat", "chest_boat", "minecart", "snowball",
      "snow_golem", "iron_golem", "warden", "snowgolem", "irongolem"
    ];
    Entity.getEntitiesByFamily('tera_bosses').forEach(boss => {
      killTargets.forEach(target => {
        const command = `execute as @e[uuid=${boss.id}] at @s run kill @e[r=8,type=${target}]`;
        system.runCommand(command);
      });
    });
  }

  // Spawn the smoke potion particle for entities with tag "sk_inv".
  spawnSmokeForSkInv() {
    system.runCommand('execute as @e[tag=sk_inv] run execute at @s positioned as @s run particle tera:smoke_potion ~~3~');
  }

  // ─────────────────────────────────────────────
  // Scoreboard and Gamerule Adjustments
  // ─────────────────────────────────────────────

  // Adjust the rpr_pal_ent scoreboard (adding 0 then subtracting 1 for scores ≥1).
  adjustRprPalEntScore() {
    system.runCommand('scoreboard players add @a rpr_pal_ent 0');
    system.runCommand('scoreboard players remove @a[scores={rpr_pal_ent=1..}] rpr_pal_ent 1');
  }

  // Set gamerules for players who do not have the "scf_rule" tag.
  setGamerulesForPlayers() {
    system.runCommand('execute as @a[tag=!scf_rule] run gamerule sendcommandfeedback false');
    system.runCommand('execute as @a[tag=!scf_rule] run gamerule commandblockoutput false');
    system.runCommand('tag @a[tag=!scf_rule] add scf_rule');
  }

  // ─────────────────────────────────────────────
  // Item and Fog Handling
  // ─────────────────────────────────────────────

  // Teleport items in lava upward.
  fixItemsInLava() {
    system.runCommand('execute as @e[type=item] run execute at @s if block ~~~ lava [] run tp @s ~ ~1 ~');
    system.runCommand('execute as @e[type=item] run execute at @s if block ~~~ flowing_lava [] run tp @s ~ ~1 ~');
  }

  // Update fog for various areas using push/pop commands.
  updateFog() {
    const fogTypes = [
      { tag: 'fog_tera_mist', push: 'tera:fog_tera_mist' },
      { tag: 'fog_dead_lands', push: 'tera:fog_dead_lands' },
      { tag: 'fog_warping_ways', push: 'tera:fog_warping_ways' },
      { tag: 'fog_soul_plains', push: 'tera:fog_soul_plains' },
      { tag: 'fog_flesh_masses', push: 'tera:fog_flesh_masses' },
      { tag: 'fog_dying_cove', push: 'tera:fog_dying_cove' },
      { tag: 'fog_stone_marks', push: 'tera:fog_stone_marks' }
    ];
    // First remove fog tags from all players.
    fogTypes.forEach(fog => {
      system.runCommand(`tag @a remove ${fog.tag}`);
    });
    // Add fog tags based on block detection (example for tera mist).
    system.runCommand('execute as @e[type=tera:tera_fog] run execute at @s positioned as @s run tag @a[r=85] add fog_tera_mist');
    // For each fog type, push if tagged; otherwise pop.
    fogTypes.forEach(fog => {
      system.runCommand(`fog @a[tag=${fog.tag}] push "${fog.push}" "${fog.tag}"`);
      system.runCommand(`fog @a[tag=!${fog.tag}] pop "${fog.tag}"`);
    });
  }

  // ─────────────────────────────────────────────
  // Shulker and Reaper Handling
  // ─────────────────────────────────────────────

  // Update the shulk_live scoreboard for shulkers and shulker shells.
  updateShulkLive() {
    system.runCommand('scoreboard players add @e[type=shulker] shulk_live 0');
    system.runCommand('scoreboard players add @e[type=item,name="Shulker Shell"] shulk_live 0');
    system.runCommand('scoreboard players add @e[type=shulker,scores={shulk_live=..5}] shulk_live 1');
    system.runCommand('scoreboard players add @e[type=item,name="Shulker Shell",scores={shulk_live=..5}] shulk_live 1');

    system.runCommand('execute as @e[type=shulker] run execute at @s positioned as @s run execute at @s[x=-50000,z=-50000,dx=100000,dz=100000] positioned as @s run tag @s[tag=!shulk_live] add shulk_live');
    system.runCommand('execute as @e[type=shulker] run execute at @s[scores={shulk_live=2..}] positioned as @s run kill @s[tag=!shulk_live]');
    system.runCommand('execute as @e[type=item,name="Shulker Shell"] run execute at @s positioned as @s run execute at @s[x=-50000,z=-50000,dx=100000,dz=100000] positioned as @s run tag @s[tag=!shulk_live] add shulk_live');
    system.runCommand('execute as @e[type=item,name="Shulker Shell"] run execute at @s[scores={shulk_live=2..}] positioned as @s run kill @s[tag=!shulk_live]');
  }

  // Process reaper victim related effects and entity tagging.
  updateReaperVictim() {
    // Clear various effects from players with the reaper_victim tag.
    const effectsToClear = ['strength', 'resistance', 'speed', 'jump_boost', 'instant_health', 'regeneration', 'absorption'];
    effectsToClear.forEach(effect => {
      system.runCommand(`effect @a[tag=reaper_victim] ${effect} 0 0`);
    });
    // Tag reaper-related entities with r_mad.
    ['tera:reaper_rest', 'tera:reaper', 'tera:reaper_checkpoint', 'tera:reaper_minion'].forEach(type => {
      system.runCommand(`execute as @a[tag=reaper_victim] run execute at @s positioned as @s run tag @e[type=${type}] add r_mad`);
    });
    // Make sure players gain the reaper_victim tag if any nearby entity is r_mad.
    system.runCommand('execute as @e[tag=r_mad] run execute at @s positioned as @s run tag @a add reaper_victim');
    // Teleport the checkpoint to the reaper.
    system.runCommand('tp @e[type=tera:reaper_checkpoint,c=1] @e[type=tera:reaper,c=1]');
    // Clear reaper spawn eggs from reaper victims.
    system.runCommand('clear @a[tag=reaper_victim] tera:reaper_spawn_egg');
    // Kill all entities (except players) that do not have the r_mad tag.
    system.runCommand('execute as @a[tag=reaper_victim] run execute at @s positioned as @s run kill @e[tag=!r_mad,type=!player]');
  }

  // Trigger the soul storm functions for relevant entities.
  triggerSoulStorm() {
    system.runCommand('execute as @e[type=tera:soul_storm_small] run execute at @s positioned as @s run function soul_storm');
    system.runCommand('execute as @e[type=tera:soul_storm] run execute at @s positioned as @s run function soul_storm');
  }
}

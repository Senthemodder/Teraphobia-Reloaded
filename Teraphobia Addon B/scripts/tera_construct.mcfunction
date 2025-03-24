scoreboard objectives add soul_kn_load dummy
scoreboard players add @a soul_kn_load 0
execute as @a run execute at @s positioned as @s run execute as @s positioned 75000 182 -24800 run execute as @a run execute at @s positioned as @s run execute as @s[scores={soul_kn_load=..21},r=55] run execute as @s positioned as @s if block ~ 103 ~ bedrock [] run scoreboard players add @s soul_kn_load 1
execute as @a[scores={soul_kn_load=10..20},tag=!soul_kn_load] run execute at @s positioned as @s run execute as @s[scores={soul_kn_load=10..20},tag=!soul_kn_load] run tag @s add soul_kn_load

execute as @a[c=1,tag=!soul_kn_loaddone,tag=soul_kn_load,scores={soul_kn_load=10}] run execute at @s positioned as @s run execute as @s[c=1,tag=!soul_kn_loaddone,tag=soul_kn_load,scores={soul_kn_load=10}] run execute as @s positioned as @s if block ~ 103 ~ bedrock [] run structure load soul_knight_loader 75000 182 -24800
execute as @a[c=1,tag=!soul_kn_loaddone,tag=soul_kn_load,scores={soul_kn_load=10}] run execute at @s positioned as @s run execute as @s[c=1,tag=!soul_kn_loaddone,tag=soul_kn_load,scores={soul_kn_load=10}] run execute as @s positioned as @s if block ~ 103 ~ bedrock [] run tag @s[tag=!soul_kn_loaddone] add soul_kn_loaddone

execute as @a[tag=soul_kn_loaddone] run execute at @s positioned as @s run execute as @s[tag=soul_kn_loaddone] run tag @a[tag=!soul_kn_loaddone] add soul_kn_loaddone



scoreboard objectives add joseph_load dummy
scoreboard players add @a joseph_load 0
execute as @a run execute at @s positioned as @s run execute as @s positioned 0 62 500 run execute as @a run execute at @s positioned as @s run execute as @s[scores={joseph_load=..21},r=55] run execute as @s positioned as @s if block ~ -64 ~ bedrock [] run scoreboard players add @s joseph_load 1
execute as @a[scores={joseph_load=10..20},tag=!joseph_load] run execute at @s positioned as @s run execute as @s[scores={joseph_load=10..20},tag=!joseph_load] run tag @s add joseph_load

execute as @a[c=1,tag=!joseph_loaddone,tag=joseph_load,scores={joseph_load=10..}] run execute at @s positioned as @s run execute as @s[c=1,tag=!joseph_loaddone,tag=joseph_load,scores={joseph_load=10..}] run execute as @s positioned as @s if block ~ -64 ~ bedrock [] run structure load joseph_loader 0 62 500
execute as @a[c=1,tag=!joseph_loaddone,tag=joseph_load,scores={joseph_load=10..}] run execute at @s positioned as @s run execute as @s[c=1,tag=!joseph_loaddone,tag=joseph_load,scores={joseph_load=10..}] run execute as @s positioned as @s if block ~ -64 ~ bedrock [] run tag @s[tag=!joseph_loaddone] add joseph_loaddone

execute as @a[tag=joseph_loaddone] run execute at @s positioned as @s run execute as @s[tag=joseph_loaddone] run tag @a[tag=!joseph_loaddone] add joseph_loaddone



scoreboard objectives add rpr_pal_load dummy
scoreboard players add @a rpr_pal_load 0
execute as @a run execute at @s positioned as @s run execute as @s positioned 75000 173 75245 run execute as @a run execute at @s positioned as @s run execute as @s[scores={rpr_pal_load=..21},r=55] run execute as @s positioned as @s if block ~ 107 ~ tera:soul_stone [] run scoreboard players add @s rpr_pal_load 1
execute as @a[scores={rpr_pal_load=10..20},tag=!rpr_pal_load] run execute at @s positioned as @s run execute as @s[scores={rpr_pal_load=10..20},tag=!rpr_pal_load] run tag @s add rpr_pal_load

execute as @a[c=1,tag=!rpr_pal_loaddone,tag=rpr_pal_load,scores={rpr_pal_load=10..}] run execute at @s positioned as @s run execute as @s[c=1,tag=!rpr_pal_loaddone,tag=rpr_pal_load,scores={rpr_pal_load=10..}] run execute as @s positioned as @s if block ~ 107 ~ tera:soul_stone [] run structure load load_reaper_palace 75000 173 75245
execute as @a[c=1,tag=!rpr_pal_loaddone,tag=rpr_pal_load,scores={rpr_pal_load=10..}] run execute at @s positioned as @s run execute as @s[c=1,tag=!rpr_pal_loaddone,tag=rpr_pal_load,scores={rpr_pal_load=10..}] run execute as @s positioned as @s if block ~ 107 ~ tera:soul_stone [] run tag @s[tag=!rpr_pal_loaddone] add rpr_pal_loaddone

execute as @a[tag=rpr_pal_loaddone] run execute at @s positioned as @s run execute as @s[tag=rpr_pal_loaddone] run tag @a[tag=!rpr_pal_loaddone] add rpr_pal_loaddone



scoreboard objectives add rpr_ent_load dummy
scoreboard players add @a rpr_ent_load 0
execute as @a run execute at @s positioned as @s run execute as @s positioned 104030 215 104030 run execute as @a run execute at @s positioned as @s run execute as @s[scores={rpr_ent_load=..21},r=55] run execute as @s positioned as @s if block ~ 210 ~ tera:soul_bedrock [] run scoreboard players add @s rpr_ent_load 1
execute as @a[scores={rpr_ent_load=10..20},tag=!rpr_ent_load] run execute at @s positioned as @s run execute as @s[scores={rpr_ent_load=10..20},tag=!rpr_ent_load] run tag @s add rpr_ent_load

execute as @a[c=1,tag=!rpr_ent_loaddone,tag=rpr_ent_load,scores={rpr_ent_load=10..}] run execute at @s positioned as @s run execute as @s[c=1,tag=!rpr_ent_loaddone,tag=rpr_ent_load,scores={rpr_ent_load=10..}] run execute as @s positioned as @s if block ~ 210 ~ tera:soul_bedrock [] run structure load reaper_entity 104030 215 104030
execute as @a[c=1,tag=!rpr_ent_loaddone,tag=rpr_ent_load,scores={rpr_ent_load=10..}] run execute at @s positioned as @s run execute as @s[c=1,tag=!rpr_ent_loaddone,tag=rpr_ent_load,scores={rpr_ent_load=10..}] run execute as @s positioned as @s if block ~ 210 ~ tera:soul_bedrock [] run tag @s[tag=!rpr_ent_loaddone] add rpr_ent_loaddone

execute as @a[tag=rpr_ent_loaddone] run execute at @s positioned as @s run execute as @s[tag=rpr_ent_loaddone] run tag @a[tag=!rpr_ent_loaddone] add rpr_ent_loaddone
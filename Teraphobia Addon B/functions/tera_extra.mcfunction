scoreboard objectives add tera_death dummy

scoreboard objectives add tera_sneak dummy


scoreboard objectives add tera_forw dummy

scoreboard objectives add tera_back dummy

scoreboard objectives add tera_left dummy

scoreboard objectives add tera_righ dummy

scoreboard objectives add tera_up dummy

scoreboard objectives add tera_down dummy

give @a[tag=!tg_given2] tera:teronic_guide 1 0
tag @a[tag=!tg_given2] add tg_given2

give @a[tag=!td_given] tera:tera_dodge_off 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
tag @a[tag=!td_given] add td_given
clear @a[tag=gindable] tera:tera_dodge_off 0 
clear @a[tag=gindable] tera:tera_dodge_on 0 


tag @a[hasitem={item=tera:earth_arrow,location=slot.weapon.offhand}] add tera_earth_arrow
tag @a[hasitem={item=tera:ice_arrow,location=slot.weapon.offhand}] add tera_ice_arrow
tag @a[hasitem={item=tera:lightning_arrow,location=slot.weapon.offhand}] add tera_lightning_arrow
tag @a[hasitem={item=tera:diamond_arrow,location=slot.weapon.offhand}] add tera_diamond_arrow
tag @a[hasitem={item=tera:iron_arrow,location=slot.weapon.offhand}] add tera_iron_arrow
tag @a[hasitem={item=tera:fire_arrow,location=slot.weapon.offhand}] add tera_fire_arrow

tag @a[hasitem={item=tera:earth_arrow,location=slot.weapon.offhand,quantity=0}] remove tera_earth_arrow
tag @a[hasitem={item=tera:ice_arrow,location=slot.weapon.offhand,quantity=0}] remove tera_ice_arrow
tag @a[hasitem={item=tera:lightning_arrow,location=slot.weapon.offhand,quantity=0}] remove tera_lightning_arrow
tag @a[hasitem={item=tera:diamond_arrow,location=slot.weapon.offhand,quantity=0}] remove tera_diamond_arrow
tag @a[hasitem={item=tera:iron_arrow,location=slot.weapon.offhand,quantity=0}] remove tera_iron_arrow
tag @a[hasitem={item=tera:fire_arrow,location=slot.weapon.offhand,quantity=0}] remove tera_fire_arrow


effect @e[family=tera_bosses] slowness 0 0
effect @e[family=tera_bosses] blindness 0 0
effect @e[family=tera_bosses] fatal_poison 0 0
effect @e[family=tera_bosses] levitation 0 0
effect @e[family=reaper] wither 0 0
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~3 ~9 ~3 ~-3 ~ ~-3 air [] replace tera:limbo_stone
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~3 ~9 ~3 ~-3 ~ ~-3 air [] replace dirt
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~9 ~7 ~-7 ~ ~-7 air [] replace fire
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~9 ~7 ~-7 ~ ~-7 air [] replace ice
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~9 ~7 ~-7 ~ ~-7 air [] replace blue_ice
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~9 ~7 ~-7 ~ ~-7 air [] replace packed_ice
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~9 ~7 ~-7 ~ ~-7 air [] replace powder_snow
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~9 ~7 ~-7 ~ ~-7 air [] replace water
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~9 ~7 ~-7 ~ ~-7 air [] replace flowing_water
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~9 ~7 ~-7 ~ ~-7 air [] replace lava
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~9 ~7 ~-7 ~ ~-7 air [] replace flowing_lava
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~9 ~7 ~-7 ~ ~-7 air [] replace magma
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~-1 ~7 ~-7 ~-1 ~-7 deepslate [] replace fire
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~-1 ~7 ~-7 ~-1 ~-7 deepslate [] replace ice
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~-1 ~7 ~-7 ~-1 ~-7 deepslate [] replace blue_ice
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~-1 ~7 ~-7 ~-1 ~-7 deepslate [] replace packed_ice
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~-1 ~7 ~-7 ~-1 ~-7 deepslate [] replace powder_snow
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~-1 ~7 ~-7 ~-1 ~-7 deepslate [] replace water
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~-1 ~7 ~-7 ~-1 ~-7 deepslate [] replace flowing_water
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~-1 ~7 ~-7 ~-1 ~-7 deepslate [] replace lava
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~-1 ~7 ~-7 ~-1 ~-7 deepslate [] replace flowing_lava
execute as @e[family=tera_bosses] run execute at @s positioned as @s run fill ~7 ~-1 ~7 ~-7 ~-1 ~-7 deepslate [] replace magma
execute as @e[family=tera_bosses] run execute at @s positioned as @s run kill @e[r=8,type=boat]
execute as @e[family=tera_bosses] run execute at @s positioned as @s run kill @e[r=8,type=chest_boat]
execute as @e[family=tera_bosses] run execute at @s positioned as @s run kill @e[r=8,type=minecart]
execute as @e[family=tera_bosses] run execute at @s positioned as @s run kill @e[r=8,type=snowball]
execute as @e[family=tera_bosses] run execute at @s positioned as @s run kill @e[r=8,type=snow_golem]
execute as @e[family=tera_bosses] run execute at @s positioned as @s run kill @e[r=8,type=iron_golem]
execute as @e[family=tera_bosses] run execute at @s positioned as @s run kill @e[r=8,type=warden]
execute as @e[family=tera_bosses] run execute at @s positioned as @s run kill @e[r=8,family=snow_golem]
execute as @e[family=tera_bosses] run execute at @s positioned as @s run kill @e[r=8,family=iron_golem]
execute as @e[family=tera_bosses] run execute at @s positioned as @s run kill @e[r=8,family=warden]
execute as @e[family=tera_bosses] run execute at @s positioned as @s run kill @e[r=8,family=snowgolem]
execute as @e[family=tera_bosses] run execute at @s positioned as @s run kill @e[r=8,family=irongolem]



execute as @e[tag=sk_inv] run execute at @s positioned as @s run particle tera:smoke_potion ~~3~

scoreboard objectives add rpr_pal_ent dummy
scoreboard players add @a rpr_pal_ent 0
scoreboard players remove @a[scores={rpr_pal_ent=1..}] rpr_pal_ent 1
execute as @a[scores={rpr_pal_ent=900..1200}] run execute at @s positioned as @s run tp @s 75087 210 75333 facing ~ ~-2 ~
execute as @a[scores={rpr_pal_ent=600..899}] run execute at @s positioned as @s run tp @s 75090 220 75287 facing ~ ~-2 ~
execute as @a[scores={rpr_pal_ent=300..499}] run execute at @s positioned as @s run tp @s 75037 220 75331 facing ~ ~-2 ~
execute as @a[scores={rpr_pal_ent=5..299}] run execute at @s positioned as @s run tp @s 75032 202 75277 facing ~ ~-2 ~
execute as @a[scores={rpr_pal_ent=1..4}] run execute at @s positioned as @s run tp @s 75063 175 75366 facing 75063 177 75362
title @a[scores={rpr_pal_ent=1..1200}] actionbar The Reaper's Palace forms before you...
effect @a[scores={rpr_pal_ent=3..1200}] resistance 5 255 true
effect @a[scores={rpr_pal_ent=3..1200}] invisibility 5 255 true
effect @a[scores={rpr_pal_ent=1..2}] resistance 0 0
effect @a[scores={rpr_pal_ent=1..2}] invisibility 0 0
execute as @a[tag=!scf_rule] at @s run gamerule sendcommandfeedback false
execute as @a[tag=!scf_rule] at @s run gamerule commandblockoutput false
tag @a[tag=!scf_rule] add scf_rule




execute as @e[type=item] run execute at @s positioned as @s run execute as @s positioned as @s if block ~~~ lava [] run tp @s ~~1~
execute as @e[type=item] run execute at @s positioned as @s run execute as @s positioned as @s if block ~~~ flowing_lava [] run tp @s ~~1~



tag @a remove fog_tera_mist
execute as @e[type=tera:tera_fog] run execute at @s positioned as @s run tag @a[r=85] add fog_tera_mist
fog @a[tag=fog_tera_mist] push "tera:fog_tera_mist" "fog_tera_mist"
fog @a[tag=!fog_tera_mist] pop "fog_tera_mist"



tag @a remove fog_dead_lands
execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 0 ~ tera:fog_dead_lands [] run tag @s add fog_dead_lands
fog @a[tag=fog_dead_lands] push "tera:fog_dead_lands" "fog_dead_lands"
fog @a[tag=!fog_dead_lands] pop "fog_dead_lands"

tag @a remove fog_warping_ways
execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 0 ~ tera:fog_warping_ways [] run tag @s add fog_warping_ways
fog @a[tag=fog_warping_ways] push "tera:fog_warping_ways" "fog_warping_ways"
fog @a[tag=!fog_warping_ways] pop "fog_warping_ways"

tag @a remove fog_soul_plains
execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 0 ~ tera:fog_soul_plains [] run tag @s add fog_soul_plains
fog @a[tag=fog_soul_plains] push "tera:fog_soul_plains" "fog_soul_plains"
fog @a[tag=!fog_soul_plains] pop "fog_soul_plains"

tag @a remove fog_flesh_masses
execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 0 ~ tera:fog_flesh_masses [] run tag @s add fog_flesh_masses
fog @a[tag=fog_flesh_masses] push "tera:fog_flesh_masses" "fog_flesh_masses"
fog @a[tag=!fog_flesh_masses] pop "fog_flesh_masses"

tag @a remove fog_dying_cove
execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 0 ~ tera:fog_dying_cove [] run tag @s add fog_dying_cove
fog @a[tag=fog_dying_cove] push "tera:fog_dying_cove" "fog_dying_cove"
fog @a[tag=!fog_dying_cove] pop "fog_dying_cove"

tag @a remove fog_stone_marks
execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 0 ~ tera:fog_stone_marks [] run tag @s add fog_stone_marks
fog @a[tag=fog_stone_marks] push "tera:fog_stone_marks" "fog_stone_marks"
fog @a[tag=!fog_stone_marks] pop "fog_stone_marks"

scoreboard objectives add shulk_live dummy
scoreboard players add @e[type=shulker] shulk_live 0
scoreboard players add @e[type=item,name="Shulker Shell"] shulk_live 0
scoreboard players add @e[type=shulker,scores={shulk_live=..5}] shulk_live 1
scoreboard players add @e[type=item,name="Shulker Shell",scores={shulk_live=..5}] shulk_live 1

execute as @e[type=shulker] run execute at @s positioned as @s run execute at @s[x=-50000,z=-50000,dx=100000,dz=100000] positioned as @s run tag @s[tag=!shulk_live] add shulk_live
execute as @e[type=shulker] run execute at @s[scores={shulk_live=2..}] positioned as @s run kill @s[tag=!shulk_live]

execute as @e[type=item,name="Shulker Shell"] run execute at @s positioned as @s run execute at @s[x=-50000,z=-50000,dx=100000,dz=100000] positioned as @s run tag @s[tag=!shulk_live] add shulk_live
execute as @e[type=item,name="Shulker Shell"] run execute at @s[scores={shulk_live=2..}] positioned as @s run kill @s[tag=!shulk_live]

effect @a[tag=reaper_victim] strength 0 0
effect @a[tag=reaper_victim] resistance 0 0
effect @a[tag=reaper_victim] speed 0 0
effect @a[tag=reaper_victim] jump_boost 0 0
effect @a[tag=reaper_victim] instant_health 0 0
effect @a[tag=reaper_victim] regeneration 0 0
effect @a[tag=reaper_victim] absorption 0 0
execute as @a[tag=reaper_victim] run execute at @s positioned as @s run tag @e[type=tera:reaper_rest] add r_mad
execute as @a[tag=reaper_victim] run execute at @s positioned as @s run tag @e[type=tera:reaper] add r_mad
execute as @a[tag=reaper_victim] run execute at @s positioned as @s run tag @e[type=tera:reaper_checkpoint] add r_mad
execute as @a[tag=reaper_victim] run execute at @s positioned as @s run tag @e[type=tera:reaper_minion] add r_mad
execute as @e[tag=r_mad] run execute at @s positioned as @s run tag @a add reaper_victim
execute as @a[tag=reaper_victim] run execute at @s[tag=reaper_victim_d] positioned as @s run tp @s[scores={tera_death=0,tera_ov=4..}] @e[type=tera:reaper_checkpoint,c=1]
execute as @a[tag=reaper_victim] run execute at @s[tag=!reaper_victim_d] positioned as @s if block ~ ~-1 ~ tera:soul_bedrock [] run summon tera:reaper_checkpoint ~~~
execute as @a[tag=reaper_victim] run execute at @s[tag=!reaper_victim_d] positioned as @s if block ~ ~-1 ~ tera:soul_bedrock [] run tag @s add reaper_victim_d

tp @e[type=tera:reaper_checkpoint,c=1] @e[type=tera:reaper,c=1]

clear @a[tag=reaper_victim] tera:reaper_spawn_egg 

execute as @a[tag=reaper_victim] run execute at @s positioned as @s run kill @e[tag=!r_mad,type=!player]


execute as @e[type=tera:soul_storm_small] run execute at @s positioned as @s run function soul_storm
execute as @e[type=tera:soul_storm] run execute at @s positioned as @s run function soul_storm
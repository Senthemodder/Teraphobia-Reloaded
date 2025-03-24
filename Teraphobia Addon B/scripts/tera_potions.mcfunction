execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove soulpotion
scoreboard objectives add soulpotion dummy
scoreboard players add @a[tag=soulpotion] soulpotion 1
execute as @a[tag=soulpotion] positioned as @s run execute as @s[scores={soulpotion=1200..}] run tag @s remove soulpotion
execute as @a[tag=!soulpotion] positioned as @s run scoreboard players set @s soulpotion 0
execute as @a[tag=soulpotion] positioned as @s run particle tera:soul_potion ~~~
execute as @a[tag=soulpotion] positioned as @s run effect @s resistance 1 3 true
execute as @a[tag=soulpotion] positioned as @s run effect @s strength 1 3 true
execute as @a[tag=soulpotion] positioned as @s run effect @s blindness 1 2 true
execute as @a[tag=soulpotion] positioned as @s run effect @s wither 0 0
execute as @a[tag=soulpotion] positioned as @s run effect @s poison 0 0

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove smokepotion
scoreboard objectives add smokepotion dummy
scoreboard players add @a[tag=smokepotion] smokepotion 1
execute as @a[tag=smokepotion] positioned as @s run execute as @s[scores={smokepotion=1200..}] run tag @s remove smokepotion
execute as @a[tag=!smokepotion] positioned as @s run scoreboard players set @s smokepotion 0
execute as @a[tag=smokepotion] positioned as @s run particle tera:smoke_potion ~~~
execute as @a[tag=smokepotion] positioned as @s run effect @s speed 1 5 true
execute as @a[tag=smokepotion] positioned as @s run effect @s weakness 1 2 true
execute as @a[tag=smokepotion] positioned as @s run effect @e[tag=!smokepotion,r=6] blindness 3 1
execute as @a[tag=smokepotion] positioned as @s run effect @e[tag=!smokepotion,r=6] weakness 3 2
execute as @a[tag=smokepotion] positioned as @s run effect @e[tag=!smokepotion,r=6] slowness 3 2

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove skypotion
scoreboard objectives add skypotion dummy
scoreboard players add @a[tag=skypotion] skypotion 1
execute as @a[tag=skypotion] positioned as @s run execute as @s[scores={skypotion=1200..}] run tag @s remove skypotion
execute as @a[tag=!skypotion] positioned as @s run scoreboard players set @s skypotion 0
execute as @a[tag=skypotion] positioned as @s run particle tera:sky_potion ~~~
execute as @a[tag=skypotion] positioned as @s run effect @s speed 1 7 true
execute as @a[tag=skypotion] positioned as @s run effect @s[rx=-65,rxm=-90] levitation 1 25 true
execute as @a[tag=skypotion] positioned as @s run effect @s[rx=-35,rxm=-65] levitation 1 9 true
execute as @a[tag=skypotion] positioned as @s run effect @s[rx=-25,rxm=-35] levitation 1 5 true
execute as @a[tag=skypotion] positioned as @s run effect @s[rx=-15,rxm=-25] levitation 1 1 true
execute as @a[tag=skypotion] positioned as @s run effect @s[rx=5,rxm=-15] levitation 1 0 true
execute as @a[tag=skypotion] positioned as @s run effect @s[rx=90,rxm=-5] slow_falling 1 0 true

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove underworldpotion
scoreboard objectives add underworldpotion dummy
scoreboard players add @a[tag=underworldpotion] underworldpotion 1
execute as @a[tag=underworldpotion] positioned as @s run execute as @s[scores={underworldpotion=1200..}] run tag @s remove underworldpotion
execute as @a[tag=!underworldpotion] positioned as @s run scoreboard players set @s underworldpotion 0
execute as @a[tag=underworldpotion] positioned as @s run particle tera:underworld_potion ~~~
execute as @a[tag=underworldpotion] positioned as @s run effect @e[r=6,tag=!underworldpotion] wither 3 5

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove hellpotion
scoreboard objectives add hellpotion dummy
scoreboard players add @a[tag=hellpotion] hellpotion 1
execute as @a[tag=hellpotion] positioned as @s run execute as @s[scores={hellpotion=1200..}] run tag @s remove hellpotion
execute as @a[tag=!hellpotion] positioned as @s run scoreboard players set @s hellpotion 0
execute as @a[tag=hellpotion] positioned as @s run particle tera:hell_potion ~~~
execute as @a[tag=hellpotion] positioned as @s run effect @s fire_resistance 1 1 true
execute as @a[tag=hellpotion] positioned as @s run effect @e[r=7,tag=!hellpotion] wither 3 2
execute as @a[tag=hellpotion] positioned as @s run execute as @e[r=7,tag=!hellpotion] positioned as @s run execute at @s positioned as @s run fill ~~~ ~~~ fire [] replace air

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove ghastpotion
scoreboard objectives add ghastpotion dummy
scoreboard players add @a[tag=ghastpotion] ghastpotion 1
execute as @a[tag=ghastpotion] positioned as @s run execute as @s[scores={ghastpotion=1200..}] run tag @s remove ghastpotion
execute as @a[tag=!ghastpotion] positioned as @s run scoreboard players set @s ghastpotion 0
execute as @a[tag=ghastpotion] positioned as @s run particle tera:ghast_potion ~~~
execute as @a[tag=ghastpotion] positioned as @s run execute as @s positioned as @s if block ~~-1~ air [] run effect @s regeneration 1 2 true
execute as @a[tag=ghastpotion] positioned as @s run effect @s slow_falling 1 1 true
execute as @a[tag=ghastpotion] positioned as @s run effect @s fire_resistance 1 1 true

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove minerpotion
scoreboard objectives add minerpotion dummy
scoreboard players add @a[tag=minerpotion] minerpotion 1
execute as @a[tag=minerpotion] positioned as @s run execute as @s[scores={minerpotion=1200..}] run tag @s remove minerpotion
execute as @a[tag=!minerpotion] positioned as @s run scoreboard players set @s minerpotion 0
execute as @a[tag=minerpotion] positioned as @s run execute as @s positioned as @s run particle tera:miner_potion ~~~
execute as @a[tag=minerpotion] positioned as @s run effect @s haste 1 2 true
execute as @a[tag=minerpotion] positioned as @s run execute as @s positioned as @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 air [] replace stone
execute as @a[tag=minerpotion] positioned as @s run execute as @s positioned as @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 air [] replace cobblestone
execute as @a[tag=minerpotion] positioned as @s run execute as @s positioned as @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 air [] replace deepslate
execute as @a[tag=minerpotion] positioned as @s run execute as @s positioned as @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 air [] replace cobbled_deepslate
execute as @a[tag=minerpotion] positioned as @s run execute as @s positioned as @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 air [] replace netherrack
execute as @a[tag=minerpotion] positioned as @s run execute as @s positioned as @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 air [] replace obsidian
execute as @a[tag=minerpotion] positioned as @s run execute as @s positioned as @s run fill ~1 ~2 ~1 ~-1 ~ ~-1 air [] replace crying_obsidian

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove beaconpotion
scoreboard objectives add beaconpotion dummy
scoreboard players add @a[tag=beaconpotion] beaconpotion 1
execute as @a[tag=beaconpotion] positioned as @s run execute as @s[scores={beaconpotion=1200..}] run tag @s remove beaconpotion
execute as @a[tag=!beaconpotion] positioned as @s run scoreboard players set @s beaconpotion 0
execute as @a[tag=beaconpotion] positioned as @s run particle tera:beacon_potion ~~~
execute as @a[tag=beaconpotion] positioned as @s run effect @a[r=30,tag=!beaconpotion] strength 1 0
execute as @a[tag=beaconpotion] positioned as @s run effect @a[r=30,tag=!beaconpotion] speed 1 1
execute as @a[tag=beaconpotion] positioned as @s run effect @a[r=30,tag=!beaconpotion] haste 1 1
execute as @a[tag=beaconpotion] positioned as @s run particle tera:beacon_light ~~2~

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove sunpotion
scoreboard objectives add sunpotion dummy
scoreboard players add @a[tag=sunpotion] sunpotion 1
execute as @a[tag=sunpotion] positioned as @s run execute as @s[scores={sunpotion=1200..}] run tag @s remove sunpotion
execute as @a[tag=!sunpotion] positioned as @s run scoreboard players set @s sunpotion 0
execute as @a[tag=sunpotion] positioned as @s run particle tera:sun_potion ~~~
execute as @a[tag=sunpotion] positioned as @s run effect @s fire_resistance 1 1 true
execute as @a[tag=sunpotion] positioned as @s run execute as @e[r=12,tag=!sunpotion] positioned as @s run execute at @s positioned as @s run fill ~~~ ~~~ fire [] replace air
execute as @a[tag=sunpotion] positioned as @s run execute as @e[r=12,tag=!sunpotion] positioned as @s run effect @s wither 1 0 true
execute as @a[tag=sunpotion] positioned as @s run execute as @e[r=12,tag=!sunpotion] positioned as @s run execute at @s positioned as @s run fill ~~-1~ ~~-1~ flowing_lava [] replace air

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove lightpotion
scoreboard objectives add lightpotion dummy
scoreboard players add @a[tag=lightpotion] lightpotion 1
execute as @a[tag=lightpotion] positioned as @s run execute as @s[scores={lightpotion=1200..}] run tag @s remove lightpotion
execute as @a[tag=!lightpotion] positioned as @s run scoreboard players set @s lightpotion 0
execute as @a[tag=lightpotion] positioned as @s run particle tera:light_potion ~~~
execute as @a[scores={tera_sneak=1}] positioned as @s[tag=lightpotion] positioned as @s run playsound mob.tera_beam @a[r=35] ~~~
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^2 run particle tera:light_blind ~~~
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^3 run particle tera:light_blind ~~~
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^4 run particle tera:light_blind ~~~
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^5 run particle tera:light_blind ~~~
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^6 run particle tera:light_blind ~~~
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^7 run particle tera:light_blind ~~~
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^8 run particle tera:light_blind ~~~
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^9 run particle tera:light_blind ~~~
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^10 run particle tera:light_blind ~~~
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^2 run effect @e[tag=!lightpotion,r=2] wither 1 2
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^3 run effect @e[tag=!lightpotion,r=2] wither 1 2
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^4 run effect @e[tag=!lightpotion,r=2] wither 1 2
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^5 run effect @e[tag=!lightpotion,r=2] wither 1 2
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^6 run effect @e[tag=!lightpotion,r=2] wither 1 2
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^7 run effect @e[tag=!lightpotion,r=2] wither 1 2
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^8 run effect @e[tag=!lightpotion,r=2] wither 1 2
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^9 run effect @e[tag=!lightpotion,r=2] wither 1 2
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^10 run effect @e[tag=!lightpotion,r=2] wither 1 2
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^2 run effect @e[tag=!lightpotion,r=2] blindness 1 1
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^3 run effect @e[tag=!lightpotion,r=2] blindness 1 1
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^4 run effect @e[tag=!lightpotion,r=2] blindness 1 1
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^5 run effect @e[tag=!lightpotion,r=2] blindness 1 1
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^6 run effect @e[tag=!lightpotion,r=2] blindness 1 1
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^7 run effect @e[tag=!lightpotion,r=2] blindness 1 1
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^8 run effect @e[tag=!lightpotion,r=2] blindness 1 1
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^9 run effect @e[tag=!lightpotion,r=2] blindness 1 1
execute as @a[tag=lightpotion] positioned as @s run execute at @s[scores={tera_sneak=1}] positioned ^^1^10 run effect @e[tag=!lightpotion,r=2] blindness 1 1

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove tornadopotion
scoreboard objectives add tornadopotion dummy
scoreboard players add @a[tag=tornadopotion] tornadopotion 1
execute as @a[tag=tornadopotion] positioned as @s run execute as @s[scores={tornadopotion=1200..}] run tag @s remove tornadopotion
execute as @a[tag=!tornadopotion] positioned as @s run scoreboard players set @s tornadopotion 0
execute as @a[tag=tornadopotion] positioned as @s run particle tera:tornado_potion ~~~
execute as @a[tag=tornadopotion] positioned as @s run execute as @s[scores={tornadopotion=16..}] run summon tera:tornado_exp ~~~

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove undyingpotion
scoreboard objectives add undyingpotion dummy
scoreboard players add @a[tag=undyingpotion] undyingpotion 1
execute as @a[tag=undyingpotion] positioned as @s run execute as @s[scores={undyingpotion=1200..}] run tag @s remove undyingpotion
execute as @a[tag=!undyingpotion] positioned as @s run scoreboard players set @s undyingpotion 0
execute as @a[tag=undyingpotion] positioned as @s run particle tera:undying_potion ~~~
execute as @a[tag=undyingpotion] positioned as @s run effect @s regeneration 1 255 true
execute as @a[tag=undyingpotion] positioned as @s run effect @s resistance 1 255 true
execute as @a[tag=undyingpotion] positioned as @s run effect @s slowness 1 1 true
execute as @a[tag=undyingpotion] positioned as @s run effect @s weakness 1 255 true
execute as @a[tag=undyingpotion] positioned as @s run effect @s mining_fatigue 1 10 true
execute as @a[tag=undyingpotion] positioned as @s run effect @s absorption 1 5 true

scoreboard objectives add chorus2 dummy
scoreboard players add @a[tag=chorus2] chorus2 1
execute as @a[tag=!chorus2] run scoreboard players set @s chorus2 0

scoreboard objectives add chorus dummy
scoreboard players add @a[tag=chorus] chorus 1
execute as @a[tag=!chorus] run scoreboard players set @s chorus 0

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove choruspotion
scoreboard objectives add choruspotion dummy
scoreboard players add @a[tag=choruspotion] choruspotion 1
execute as @a[tag=choruspotion] positioned as @s run execute as @s[scores={choruspotion=1200..}] run tag @s remove choruspotion
execute as @a[tag=choruspotion] positioned as @s run execute as @s[scores={choruspotion=1200..}] run tag @s remove chorus2
execute as @a[tag=choruspotion] positioned as @s run execute as @s[scores={choruspotion=1200..}] run tag @s remove chorus
execute as @a[tag=!choruspotion] positioned as @s run scoreboard players set @s choruspotion 0
execute as @a[tag=choruspotion] positioned as @s run particle tera:chorus_potion ~~~
execute as @a[tag=choruspotion,tag=!chorus2,tag=chorus] run execute as @s[scores={chorus=40..}] run spreadplayers ~ ~ 0 10 @e[r=10]
execute as @a[tag=choruspotion,tag=!chorus2,tag=chorus] run execute as @s[scores={chorus=40..}] run playsound mob.shulker.teleport @a[r=30]
execute as @a[tag=choruspotion,tag=!chorus2,tag=chorus] run execute as @s[scores={chorus=40..}] run tag @s add chorus2
execute as @a[tag=choruspotion,tag=!chorus2,tag=chorus] run execute as @s[scores={chorus=40..}] run tag @s remove chorus
execute as @a[tag=choruspotion,tag=chorus2] run execute as @s[scores={chorus2=40..}] run spreadplayers ~ ~ 0 10 @e[r=10]
execute as @a[tag=choruspotion,tag=chorus2] run execute as @s[scores={chorus2=40..}] run playsound mob.shulker.teleport @a[r=30]
execute as @a[tag=choruspotion,tag=chorus2] run execute as @s[scores={chorus2=40..}] run tag @s add chorus
execute as @a[tag=choruspotion,tag=chorus2] run execute as @s[scores={chorus2=40..}] run tag @s remove chorus2
execute as @a[tag=!choruspotion] positioned as @s run tag @s remove chorus2
execute as @a[tag=!choruspotion] positioned as @s run tag @s remove chorus

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove nopoisonpotion
scoreboard objectives add nopoisonpotion dummy
scoreboard players add @a[tag=nopoisonpotion] nopoisonpotion 1
execute as @a[tag=nopoisonpotion] positioned as @s run execute as @s[scores={nopoisonpotion=1200..}] run tag @s remove nopoisonpotion
execute as @a[tag=!nopoisonpotion] positioned as @s run scoreboard players set @s nopoisonpotion 0
execute as @a[tag=nopoisonpotion] positioned as @s run particle tera:nopoison_potion ~~~
execute as @a[tag=nopoisonpotion] positioned as @s run effect @s poison 0 0
execute as @a[tag=nopoisonpotion] positioned as @s run effect @s fatal_poison 0 0

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove frostpotion
scoreboard objectives add frostpotion dummy
scoreboard players add @a[tag=frostpotion] frostpotion 1
execute as @a[tag=frostpotion] positioned as @s run execute as @s[scores={frostpotion=1200..}] run tag @s remove frostpotion
execute as @a[tag=!frostpotion] positioned as @s run scoreboard players set @s frostpotion 0
execute as @a[tag=frostpotion] positioned as @s run particle tera:frost_potion ~~~
execute as @a[tag=frostpotion] positioned as @s run effect @e[tag=!frostpotion,r=10] slowness 1 1
execute as @a[tag=frostpotion] positioned as @s run execute at @s positioned as @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 frosted_ice [] replace water
execute as @a[tag=frostpotion] positioned as @s run execute at @s positioned as @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 frosted_ice [] replace flowing_water
execute as @a[tag=frostpotion] positioned as @s run execute as @s positioned as @s if block ~~-1~ frosted_ice [] run effect @s speed 1 2 true

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove soulvisionpotion
scoreboard objectives add soulvisionpotion dummy
scoreboard players add @a[tag=soulvisionpotion] soulvisionpotion 1
execute as @a[tag=soulvisionpotion] positioned as @s run execute as @s[scores={soulvisionpotion=1200..}] run tag @s remove soulvisionpotion
execute as @a[tag=!soulvisionpotion] positioned as @s run scoreboard players set @s soulvisionpotion 0
execute as @a[tag=!soulvisionpotion] positioned as @s run fog @s remove soulvision
execute as @a[tag=soulvisionpotion] positioned as @s run fog @s push "tera:fog_soul_dim" "soulvision"
execute as @a[tag=soulvisionpotion] positioned as @s run particle tera:soulvision_potion ~~~
execute as @a[tag=soulvisionpotion] positioned as @s run execute as @s positioned as @s if block ~~-1~ tera:soul_stone [] run effect @s strength 1 0 true
execute as @a[tag=soulvisionpotion] positioned as @s run execute as @s positioned as @s if block ~~-1~ tera:soul_stone [] run effect @s speed 1 1 true
execute as @a[tag=soulvisionpotion] positioned as @s run execute as @s positioned as @s if block ~~-1~ tera:soul_grass [] run effect @s strength 1 0 true
execute as @a[tag=soulvisionpotion] positioned as @s run execute as @s positioned as @s if block ~~-1~ tera:soul_grass [] run effect @s speed 1 1 true
execute as @a[tag=soulvisionpotion] positioned as @s run execute as @s positioned as @s if block ~~-1~ soul_sand [] run effect @s strength 1 0 true
execute as @a[tag=soulvisionpotion] positioned as @s run execute as @s positioned as @s if block ~~-1~ soul_sand [] run effect @s speed 1 1 true
execute as @a[tag=soulvisionpotion] positioned as @s run execute as @s positioned as @s if block ~~-1~ soul_soil [] run effect @s strength 1 0 true
execute as @a[tag=soulvisionpotion] positioned as @s run execute as @s positioned as @s if block ~~-1~ soul_soil [] run effect @s speed 1 1 true
execute as @a[tag=soulvisionpotion] positioned as @s run execute as @e[family=soulvision,r=10] run effect @a[r=11,tag=soulvisionpotion] strength 1 0 true
execute as @a[tag=soulvisionpotion] positioned as @s run execute as @e[family=soulvision,r=10] run effect @a[r=11,tag=soulvisionpotion] speed 1 1 true

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove voidpotion
scoreboard objectives add voidpotion dummy
scoreboard players add @a[tag=voidpotion] voidpotion 1
execute as @a[tag=voidpotion] positioned as @s run execute as @s[scores={voidpotion=1200..}] run tag @s remove voidpotion
execute as @a[tag=!voidpotion] positioned as @s run scoreboard players set @s voidpotion 0
execute as @a[tag=voidpotion] positioned as @s run particle tera:void_potion ~~~
execute as @a[tag=voidpotion] positioned as @s run spreadplayers ~ ~ 0 10 @e[r=10,type=!item,type=!painting,type=!armor_stand,tag=!voidpotion]

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove limbopotion
scoreboard objectives add limbopotion dummy
scoreboard players add @a[tag=limbopotion] limbopotion 1
execute as @a[tag=limbopotion] positioned as @s run execute as @s[scores={limbopotion=1200..}] run tag @s remove limbopotion
execute as @a[tag=!limbopotion] positioned as @s run scoreboard players set @s limbopotion 0
execute as @a[tag=limbopotion] positioned as @s run particle tera:limbo_potion ~~~
execute as @a[tag=limbopotion] positioned as @s run execute at @s[rx=-65,rxm=-90] positioned as @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 tera:limbo_stone [] replace air
execute as @a[tag=limbopotion] positioned as @s run execute at @s[rx=-35,rxm=-65] positioned as @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 tera:limbo_stone [] replace air
execute as @a[tag=limbopotion] positioned as @s run execute at @s[rx=-25,rxm=-35] positioned as @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 tera:limbo_stone [] replace air
execute as @a[tag=limbopotion] positioned as @s run execute at @s[rx=-15,rxm=-25] positioned as @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 tera:limbo_stone [] replace air
execute as @a[tag=limbopotion] positioned as @s run execute at @s[rx=90,rxm=-5] positioned as @s run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 air [] replace tera:limbo_stone

execute as @a[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove drunkpotion
scoreboard objectives add drunkpotion dummy
scoreboard players add @a[tag=drunkpotion] drunkpotion 1
execute as @a[tag=drunkpotion] positioned as @s run execute as @s[scores={drunkpotion=1200..}] run tag @s remove drunkpotion
execute as @a[tag=!drunkpotion] positioned as @s run scoreboard players set @s drunkpotion 0
execute as @a[tag=drunkpotion] positioned as @s run particle tera:drunk_potion ~~~
execute as @a[tag=drunkpotion] positioned as @s run effect @s nausea 13 1 true
execute as @a[tag=drunkpotion] positioned as @s run effect @s slowness 1 1 true
execute as @a[tag=drunkpotion] positioned as @s run effect @s mining_fatigue 1 1 true
execute as @a[tag=drunkpotion] positioned as @s run effect @s strength 1 2 true
execute as @a[tag=drunkpotion] positioned as @s run effect @s resistance 1 1 true

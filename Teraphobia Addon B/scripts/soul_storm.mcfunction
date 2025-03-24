scoreboard objectives add 1ss_rub_tim dummy
scoreboard players add @e[type=tera:soul_storm_small] 1ss_rub_tim 0
scoreboard players remove @e[type=tera:soul_storm_small,scores={1ss_rub_tim=1..}] 1ss_rub_tim 1
scoreboard players set @e[type=tera:soul_storm_small,scores={1ss_rub_tim=0}] 1ss_rub_tim 55
execute as @e[type=tera:soul_storm_small] run execute at @s[scores={1ss_rub_tim=1}] positioned as @s run summon tera:soul_storm_rubble ~ ~12 ~ ~~ spread



scoreboard objectives add ss_rub_tim dummy
scoreboard players add @e[type=tera:soul_storm] ss_rub_tim 0
scoreboard players remove @e[type=tera:soul_storm,scores={ss_rub_tim=1..}] ss_rub_tim 1
scoreboard players set @e[type=tera:soul_storm,scores={ss_rub_tim=0}] ss_rub_tim 35
execute as @e[type=tera:soul_storm] run execute at @s[scores={ss_rub_tim=1}] positioned as @s run summon tera:soul_storm_rubble ~ ~12 ~ ~~ spread

scoreboard objectives add ss_fas_tim dummy
scoreboard players add @e[type=tera:soul_storm] ss_fas_tim 0
scoreboard players remove @e[type=tera:soul_storm,scores={ss_fas_tim=2..}] ss_fas_tim 1
scoreboard players set @e[type=tera:soul_storm,scores={ss_fas_tim=0}] ss_fas_tim 3600
execute as @e[type=tera:soul_storm] run execute at @s[scores={ss_fas_tim=1800}] positioned as @s run event entity @s mass1
execute as @e[type=tera:soul_storm] run execute at @s[scores={ss_fas_tim=3}] positioned as @s run event entity @s mass2

tag @e[type=tera:soul_storm,tag=!sstorm_upw] add sstorm_upw
scoreboard objectives add sstorm_upw dummy
scoreboard players add @e[tag=sstorm_upw] sstorm_upw 0
execute as @e[tag=sstorm_upw] run scoreboard players add @s[scores={sstorm_upw=..7}] sstorm_upw 1
execute as @e[tag=sstorm_upw] run execute as @s[scores={sstorm_upw=4..}] run execute at @s positioned as @s run tp @s ~ ~0.5 ~
execute as @e[tag=sstorm_upw] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ ~-32 ~ air [] run execute as @s positioned as @s if block ~ ~-18 ~ air [] run execute as @s positioned as @s if block ~ ~-9 ~ air [] run scoreboard players set @s sstorm_upw 1

execute as @e[family=ss_pawn] run execute at @s positioned as @s run kill @e[r=5,tag=ss_p_target3,type=!player]
execute as @e[family=ss_pawn] run execute at @s positioned as @s run kill @e[r=5,tag=ss_p_target2,type=!player]
execute as @e[family=ss_pawn] run execute at @s positioned as @s run kill @e[r=5,tag=ss_p_target,type=!player]
execute as @e[type=tera:soul_storm] run execute at @s positioned as @s run execute as @e[type=item,r=90] run execute at @s positioned as @s run tp @s ^ ^0.2 ^0.7 facing @e[type=tera:soul_storm]
execute as @e[type=tera:soul_storm] run execute at @s positioned as @s run kill @e[type=item,r=5] 
execute as @e[type=tera:soul_storm] run execute at @s positioned as @s run execute as @e[type=tera:soul_storm_rubble] run execute at @s positioned as @s run tp @s ^ ^0.1 ^0.3 facing @e[type=tera:soul_storm]
execute as @e[type=tera:soul_storm] run execute at @s positioned as @s run event entity @e[type=tera:soul_storm_rubble,r=7] gone
execute as @e[family=ss_pawn] run execute at @s positioned as @s run kill @e[r=7,type=item]


execute as @e[type=tera:soul_storm_small] run execute at @s positioned as @s run execute as @e[type=item,r=90] run execute at @s positioned as @s run tp @s ^ ^0.1 ^0.7 facing @e[type=tera:soul_storm_small]
execute as @e[type=tera:soul_storm_small] run execute at @s positioned as @s run kill @e[type=item,r=5] 
execute as @e[type=tera:soul_storm_small] run execute at @s[tag=ss_lasor] positioned as @s run execute as @e[type=tera:soul_storm_rubble] run execute at @s positioned as @s run tp @s ^ ^0.1 ^0.3 facing @e[type=tera:soul_storm_small]
execute as @e[type=tera:soul_storm_small] run execute at @s positioned as @s run event entity @e[type=tera:soul_storm_rubble,r=7] gone
execute as @e[type=tera:soul_storm_small] run execute at @s positioned as @s run kill @e[r=7,tag=1ss_p_target,type=!player]

execute as @e[tag=sstorm_upw] run execute at @s positioned as @s run tp @s ^ ^ ^0.7 facing @p[rm=50]
event entity @e[family=ss_pawn] target_tag
event entity @e[type=tera:soul_storm_small] target_tag

scoreboard objectives add ss_p_tar3 dummy
scoreboard players remove @e[scores={ss_p_tar3=1..}] ss_p_tar3 1
tag @e[scores={ss_p_tar3=5..}] add ss_p_target3
tag @e[scores={ss_p_tar3=..4}] remove ss_p_target3

scoreboard objectives add ss_p_tar2 dummy
scoreboard players remove @e[scores={ss_p_tar2=1..}] ss_p_tar2 1
tag @e[scores={ss_p_tar2=5..}] add ss_p_target2
tag @e[scores={ss_p_tar2=..4}] remove ss_p_target2

scoreboard objectives add ss_p_tar dummy
scoreboard players remove @e[scores={ss_p_tar=1..}] ss_p_tar 1
tag @e[scores={ss_p_tar=5..}] add ss_p_target
tag @e[scores={ss_p_tar=..4}] remove ss_p_target

scoreboard objectives add 1ss_p_tar dummy
scoreboard players remove @e[scores={1ss_p_tar=1..}] 1ss_p_tar 1
tag @e[scores={1ss_p_tar=5..}] add 1ss_p_target
tag @e[scores={1ss_p_tar=..4}] remove 1ss_p_target

execute as @e[tag=ss_p_target] run execute at @s positioned as @s run tp @s[type=!player,family=!soul_storm] ^ ^0.1 ^0.4 facing @e[type=tera:soul_storm_pawn]
execute as @e[tag=ss_p_target2] run execute at @s[tag=!ss_p_target] positioned as @s run tp @s[type=!player,family=!soul_storm] ^ ^0.1 ^0.4 facing @e[type=tera:soul_storm_pawn2]
execute as @e[tag=ss_p_target3] run execute at @s[tag=!ss_p_target2] positioned as @s[tag=!ss_p_target] run tp @s[type=!player,family=!soul_storm] ^ ^0.1 ^0.4 facing @e[type=tera:soul_storm_pawn3]


execute as @e[type=tera:soul_storm] run execute at @s positioned as @s run tp @e[type=tera:soul_storm_part] ^38 ^ ^
execute as @e[type=tera:soul_storm] run execute at @s positioned as @s run tp @e[type=tera:soul_storm_part2] ^-38 ^ ^


execute as @e[type=tera:soul_storm] run execute at @s positioned as @s run tp @e[type=tera:soul_storm_dark] ~ ~-3 ~

execute as @e[tag=1ss_p_target] run execute at @s positioned as @s run tp @s[type=!player,family=!soul_storm] ^ ^0.05 ^0.4 facing @e[type=tera:soul_storm_small]



tag @e[type=tera:soul_storm,tag=!bss_yeah] add bss_yeah
tag @e[type=tera:soul_storm_small,tag=!bss_yeah] add bss_yeah
execute as @e[tag=bss_yeah] run execute at @s positioned as @s run execute as @s[scores={bss_opt=500}] run execute at @s positioned as @s run execute as @e[r=1000,family=!soul_storm] run execute at @s positioned as @s run execute as @s[family=!ezekiel] run execute at @s[family=!tera_bosses] positioned as @s run kill @s[family=mob,name=!"bss_MINION"]
execute as @e[tag=bss_yeah] run execute at @s positioned as @s run execute as @s[scores={bss_opt=500}] run execute at @s positioned as @s run kill @e[r=1000,type=xp_orb]
execute as @e[tag=bss_yeah] run execute at @s positioned as @s run execute as @s[scores={bss_opt=500}] run execute at @s positioned as @s run kill @e[r=1000,type=item]
execute as @e[tag=bss_yeah] run execute at @s positioned as @s run execute as @s[scores={bss_opt=500}] run execute at @s positioned as @s run kill @e[r=1000,type=wither_skull]
execute as @e[tag=bss_yeah] run execute at @s positioned as @s run execute as @s[scores={bss_opt=500}] run execute at @s positioned as @s run kill @e[r=1000,type=wither_skull_dangerous]
execute as @e[tag=bss_yeah] run execute at @s positioned as @s run execute as @s[scores={bss_opt=500}] run execute at @s positioned as @s run event entity @e[type=tera:giant_skull] gone
execute as @e[tag=bss_yeah] run execute at @s positioned as @s run execute as @s[scores={bss_opt=500}] run execute at @s positioned as @s run event entity @e[type=tera:soul_skull] gone
execute as @e[tag=bss_yeah] run execute at @s positioned as @s run execute as @s[scores={bss_opt=500}] run execute at @s positioned as @s run event entity @e[type=tera:soul_storm_rubble] gone

scoreboard objectives add bss_opt dummy
scoreboard players add @e[tag=bss_yeah] bss_opt 0
scoreboard players add @e[tag=bss_yeah] bss_opt 1
scoreboard players set @e[tag=bss_yeah,scores={bss_opt=501..}] bss_opt 0
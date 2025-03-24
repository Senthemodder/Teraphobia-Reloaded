event entity @e[type=tera:red_dragon] target_tag

scoreboard objectives add red_dr_tar dummy
scoreboard players add @e red_dr_tar 0
scoreboard players remove @e[scores={red_dr_tar=1..}] red_dr_tar 1
tag @e[scores={red_dr_tar=5..}] add red_dr_target
tag @e[scores={red_dr_tar=..4}] remove red_dr_target


execute as @e[tag=red_dr_land] run execute at @s positioned as @s run tp @s ^ ^-0.5 ^2 facing @e[tag=red_dr_target,c=1]


scoreboard objectives add red_dr_up dummy
scoreboard players add @e[type=tera:red_dragon] red_dr_up 0
execute as @e[type=tera:red_dragon] run scoreboard players add @s[scores={red_dr_up=..7}] red_dr_up 1
execute as @e[type=tera:red_dragon] run execute as @s[scores={red_dr_up=4..}] run event entity @s[tag=red_dr_land] landed
execute as @e[type=tera:red_dragon] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ ~-3 ~ air [] run execute as @s positioned as @s if block ~ ~-2 ~ air [] run execute as @s positioned as @s if block ~ ~-1 ~ air [] run scoreboard players set @s red_dr_up 1


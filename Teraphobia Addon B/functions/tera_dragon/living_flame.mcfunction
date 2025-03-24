event entity @e[type=tera:living_flame] target_tag

scoreboard objectives add liv_fla_tar dummy
scoreboard players add @e liv_fla_tar 0
scoreboard players remove @e[scores={liv_fla_tar=1..}] liv_fla_tar 1
tag @e[scores={liv_fla_tar=5..}] add liv_fla_target
tag @e[scores={liv_fla_tar=..4}] remove liv_fla_target


execute as @e[tag=liv_fla_land] run execute at @s positioned as @s run tp @s ^ ^-0.6 ^2 facing @e[tag=liv_fla_target,c=1]


scoreboard objectives add liv_fla_up dummy
scoreboard players add @e[type=tera:living_flame] liv_fla_up 0
execute as @e[type=tera:living_flame] run scoreboard players add @s[scores={liv_fla_up=..7}] liv_fla_up 1
execute as @e[type=tera:living_flame] run execute as @s[scores={liv_fla_up=4..}] run event entity @s[tag=liv_fla_land] landed
execute as @e[type=tera:living_flame] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ ~-4 ~ air [] run execute as @s positioned as @s if block ~ ~-3 ~ air [] run execute as @s positioned as @s if block ~ ~-2 ~ air [] run execute as @s positioned as @s if block ~ ~-1 ~ air [] run scoreboard players set @s liv_fla_up 1


scoreboard objectives add liv_fla_upw dummy
scoreboard players add @e[tag=liv_fla_upw] liv_fla_upw 0
execute as @e[tag=liv_fla_upw] run scoreboard players add @s[scores={liv_fla_upw=..7}] liv_fla_upw 1
execute as @e[tag=liv_fla_upw] run execute as @s[scores={liv_fla_upw=4..}] run execute at @s positioned as @s run tp @s ~ ~0.5 ~
execute as @e[tag=liv_fla_upw] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ ~-13 ~ air [] run execute as @s positioned as @s if block ~ ~-7 ~ air [] run execute as @s positioned as @s if block ~ ~-1 ~ air [] run scoreboard players set @s liv_fla_upw 1


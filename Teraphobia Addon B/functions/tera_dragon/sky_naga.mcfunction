event entity @e[type=tera:sky_naga] target_tag

scoreboard objectives add sky_na_tar dummy
scoreboard players add @e sky_na_tar 0
scoreboard players remove @e[scores={sky_na_tar=1..}] sky_na_tar 1
tag @e[scores={sky_na_tar=5..}] add sky_na_target
tag @e[scores={sky_na_tar=..4}] remove sky_na_target


execute as @e[tag=sky_na_land] run execute at @s positioned as @s run tp @s ^ ^-0.5 ^2 facing @e[tag=sky_na_target,c=1]


scoreboard objectives add sky_na_up dummy
scoreboard players add @e[type=tera:sky_naga] sky_na_up 0
execute as @e[type=tera:sky_naga] run scoreboard players add @s[scores={sky_na_up=..7}] sky_na_up 1
execute as @e[type=tera:sky_naga] run execute as @s[scores={sky_na_up=4..}] run event entity @s[tag=sky_na_land] landed
execute as @e[type=tera:sky_naga] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ ~-3 ~ air [] run execute as @s positioned as @s if block ~ ~-2 ~ air [] run execute as @s positioned as @s if block ~ ~-1 ~ air [] run scoreboard players set @s sky_na_up 1


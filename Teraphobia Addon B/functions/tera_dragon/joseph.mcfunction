event entity @e[type=tera:joseph] target_tag

scoreboard objectives add jose_tar dummy
scoreboard players add @e jose_tar 0
scoreboard players remove @e[scores={jose_tar=1..}] jose_tar 1
tag @e[scores={jose_tar=5..}] add jose_target
tag @e[scores={jose_tar=..4}] remove jose_target


execute as @e[tag=jose_land] run execute at @s positioned as @s run tp @s ^ ^-0.5 ^2 facing @e[tag=jose_target,c=1]


scoreboard objectives add jose_up dummy
scoreboard players add @e[type=tera:joseph] jose_up 0
execute as @e[type=tera:joseph] run scoreboard players add @s[scores={jose_up=..7}] jose_up 1
execute as @e[type=tera:joseph] run execute as @s[scores={jose_up=4..}] run event entity @s[tag=jose_land] landed
execute as @e[type=tera:joseph] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ ~-3 ~ air [] run execute as @s positioned as @s if block ~ ~-2 ~ air [] run execute as @s positioned as @s if block ~ ~-1 ~ air [] run scoreboard players set @s jose_up 1


scoreboard objectives add jose_upw dummy
scoreboard players add @e[tag=jose_upw] jose_upw 0
execute as @e[tag=jose_upw] run scoreboard players add @s[scores={jose_upw=..7}] jose_upw 1
execute as @e[tag=jose_upw] run execute as @s[scores={jose_upw=4..}] run execute at @s positioned as @s run tp @s ~ ~0.5 ~
execute as @e[tag=jose_upw] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ ~-13 ~ air [] run execute as @s positioned as @s if block ~ ~-7 ~ air [] run execute as @s positioned as @s if block ~ ~-1 ~ air [] run scoreboard players set @s jose_upw 1


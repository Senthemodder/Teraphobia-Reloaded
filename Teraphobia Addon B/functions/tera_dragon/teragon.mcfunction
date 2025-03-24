event entity @e[type=tera:teragon] target_tag

scoreboard objectives add terag_tar dummy
scoreboard players add @e terag_tar 0
scoreboard players remove @e[scores={terag_tar=1..}] terag_tar 1
tag @e[scores={terag_tar=5..}] add terag_target
tag @e[scores={terag_tar=..4}] remove terag_target


execute as @e[tag=terag_land] run execute at @s positioned as @s run tp @s ^ ^-0.5 ^2 facing @e[tag=terag_target,c=1]


scoreboard objectives add terag_up dummy
scoreboard players add @e[type=tera:teragon] terag_up 0
execute as @e[type=tera:teragon] run scoreboard players add @s[scores={terag_up=..7}] terag_up 1
execute as @e[type=tera:teragon] run execute as @s[scores={terag_up=4..}] run event entity @s[tag=terag_land] landed
execute as @e[type=tera:teragon] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ ~-3 ~ air [] run execute as @s positioned as @s if block ~ ~-2 ~ air [] run execute as @s positioned as @s if block ~ ~-1 ~ air [] run scoreboard players set @s terag_up 1


scoreboard objectives add terag_upw dummy
scoreboard players add @e[tag=terag_upw] terag_upw 0
execute as @e[tag=terag_upw] run scoreboard players add @s[scores={terag_upw=..7}] terag_upw 1
execute as @e[tag=terag_upw] run execute as @s[scores={terag_upw=4..}] run execute at @s positioned as @s run tp @s ~ ~0.5 ~
execute as @e[tag=terag_upw] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ ~-13 ~ air [] run execute as @s positioned as @s if block ~ ~-7 ~ air [] run execute as @s positioned as @s if block ~ ~-1 ~ air [] run scoreboard players set @s terag_upw 1


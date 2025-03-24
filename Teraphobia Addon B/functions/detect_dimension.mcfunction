scoreboard objectives add tera_ov dummy
scoreboard players add @a tera_ov 0
scoreboard players remove @a[scores={tera_ov=0..}] tera_ov 1
execute as @a positioned as @s if block ~ 0 ~ bedrock [] run scoreboard players set @s tera_ov 0
execute as @a positioned as @s if block ~ -64 ~ bedrock [] run scoreboard players set @s tera_ov 5
execute as @a[scores={tera_en=1}] run scoreboard players set @s tera_ov 0

scoreboard objectives add tera_ne dummy
scoreboard players add @a tera_ne 0
execute as @a positioned as @s if block ~ 0 ~ bedrock [] run scoreboard players set @s tera_ne 1
execute as @a positioned as @s if block ~ -64 ~ bedrock [] run scoreboard players set @s tera_ne 0
execute as @a[scores={tera_en=1}] run scoreboard players set @s tera_ne 0

scoreboard objectives add tera_en dummy
scoreboard players add @a tera_en 0
execute as @a[scores={tera_ne=0,tera_ov=..3}] run scoreboard players set @s tera_en 1
execute as @a positioned as @s if block ~ 0 ~ bedrock [] run scoreboard players set @s tera_en 0
execute as @a positioned as @s if block ~ -64 ~ bedrock [] run scoreboard players set @s tera_en 0

execute as @a[scores={tera_ov=4..}] run execute as @s positioned as @s if block ~ ~ ~ tera:soul_dim_portal [] run tag @s add soul_dim_go
execute as @a[scores={tera_ov=4..}] run execute as @s positioned as @s if block ~ ~ ~ tera:soul_dim_portal [] run function soul_dimension_tp
execute as @a[scores={tera_ov=4..}] run tag @s remove tera_en_sd_music_stop

execute as @a[scores={tera_en=1}] run execute at @s[tag=soul_dim_go] run execute as @s[tag=!soul_dim] run tag @s add soul_dim

execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 107 ~ tera:soul_stone [] run tag @s[scores={tera_en=1}] add soul_dim_comp
execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 107 ~ tera:soul_stone [] run tag @s[scores={tera_en=1}] remove underworld_comp
execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 107 ~ tera:soul_stone [] run tag @s[scores={tera_en=1}] remove limbo_comp

execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 1 ~ tera:soul_bedrock [] run tag @s[scores={tera_en=1}] add soul_dim_comp
execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 1 ~ tera:soul_bedrock [] run tag @s[scores={tera_en=1}] remove underworld_comp
execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 1 ~ tera:soul_bedrock [] run tag @s[scores={tera_en=1}] remove limbo_comp

execute as @a[scores={tera_en=1}] run execute at @s[tag=soul_dim_go] run execute as @s[tag=soul_dim_comp] run tag @s remove soul_dim_go


execute as @a[scores={tera_en=1}] run execute at @s[tag=soul_dim] run tag @s add tera_en_sd_music_stop
execute as @a[tag=tera_en_sd_music_stop] run stopsound @s music.game.end





execute as @a[tag=!soul_dim_comp] run fog @s remove "soul_dim_fog"
execute as @a[scores={tera_ov=4..}] run tag @s remove sd_color
execute as @a[scores={tera_ov=4..}] run tag @s remove soul_dim_comp
execute as @a[scores={tera_ov=4..}] run tag @s remove soul_dim

execute as @e[type=item,name="Soul"] positioned as @s if block ~ -64 ~ bedrock [] run execute as @s positioned as @s if block ~2~~ tera:soul_stone [] run execute as @s positioned as @s if block ~2~~1 tera:soul_stone [] run execute as @s positioned as @s if block ~2~~-1 tera:soul_stone [] run execute as @s positioned as @s if block ~-2~~ tera:soul_stone [] run execute as @s positioned as @s if block ~-2~~1 tera:soul_stone [] run execute as @s positioned as @s if block ~-2~~-1 tera:soul_stone [] run execute as @s positioned as @s if block ~ ~ ~2 tera:soul_stone [] run execute as @s positioned as @s if block ~1~~2 tera:soul_stone [] run execute as @s positioned as @s if block ~-1~~2 tera:soul_stone [] run execute as @s positioned as @s if block ~ ~ ~-2 tera:soul_stone [] run execute as @s positioned as @s if block ~-1~~-2 tera:soul_stone [] run execute as @s positioned as @s if block ~1~~-2 tera:soul_stone [] run tag @s add soul_dimr
execute as @e[type=item,name="Soul"] positioned as @s if block ~ -64 ~ bedrock [] run execute as @s positioned as @s if block ~2~~ tera:soul_stone [] run execute as @s positioned as @s if block ~2~~1 tera:soul_stone [] run execute as @s positioned as @s if block ~2~~-1 tera:soul_stone [] run execute as @s positioned as @s if block ~-2~~ tera:soul_stone [] run execute as @s positioned as @s if block ~-2~~1 tera:soul_stone [] run execute as @s positioned as @s if block ~-2~~-1 tera:soul_stone [] run execute as @s positioned as @s if block ~ ~ ~2 tera:soul_stone [] run execute as @s positioned as @s if block ~1~~2 tera:soul_stone [] run execute as @s positioned as @s if block ~-1~~2 tera:soul_stone [] run execute as @s positioned as @s if block ~ ~ ~-2 tera:soul_stone [] run execute as @s positioned as @s if block ~-1~~-2 tera:soul_stone [] run execute as @s positioned as @s if block ~1~~-2 tera:soul_stone [] run fill ~-1 ~ ~-1 ~1 ~ ~1 tera:soul_dim_portal
execute as @e[type=item,tag=soul_dimr] run execute at @s positioned as @s run function small_impact
execute as @e[type=item,tag=soul_dimr] run kill @e[type=item,tag=soul_dimr]

execute as @e[type=item,name="Exit the Reaper's Dwelling"] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ 107 ~ tera:soul_stone [] run execute as @s positioned as @s if block ~2~~ tera:soul_stone [] run execute as @s positioned as @s if block ~2~~1 tera:soul_stone [] run execute as @s positioned as @s if block ~2~~-1 tera:soul_stone [] run execute as @s positioned as @s if block ~-2~~ tera:soul_stone [] run execute as @s positioned as @s if block ~-2~~1 tera:soul_stone [] run execute as @s positioned as @s if block ~-2~~-1 tera:soul_stone [] run execute as @s positioned as @s if block ~ ~ ~2 tera:soul_stone [] run execute as @s positioned as @s if block ~1~~2 tera:soul_stone [] run execute as @s positioned as @s if block ~-1~~2 tera:soul_stone [] run execute as @s positioned as @s if block ~ ~ ~-2 tera:soul_stone [] run execute as @s positioned as @s if block ~-1~~-2 tera:soul_stone [] run execute as @s positioned as @s if block ~1~~-2 tera:soul_stone [] run tag @s add soul_dimre
execute as @e[type=item,name="Exit the Reaper's Dwelling"] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ 107 ~ tera:soul_stone [] run execute as @s positioned as @s if block ~2~~ tera:soul_stone [] run execute as @s positioned as @s if block ~2~~1 tera:soul_stone [] run execute as @s positioned as @s if block ~2~~-1 tera:soul_stone [] run execute as @s positioned as @s if block ~-2~~ tera:soul_stone [] run execute as @s positioned as @s if block ~-2~~1 tera:soul_stone [] run execute as @s positioned as @s if block ~-2~~-1 tera:soul_stone [] run execute as @s positioned as @s if block ~ ~ ~2 tera:soul_stone [] run execute as @s positioned as @s if block ~1~~2 tera:soul_stone [] run execute as @s positioned as @s if block ~-1~~2 tera:soul_stone [] run execute as @s positioned as @s if block ~ ~ ~-2 tera:soul_stone [] run execute as @s positioned as @s if block ~-1~~-2 tera:soul_stone [] run execute as @s positioned as @s if block ~1~~-2 tera:soul_stone [] run fill ~-1 ~ ~-1 ~1 ~ ~1 end_portal
execute as @e[type=item,tag=soul_dimre] run execute at @s positioned as @s run function small_impact
execute as @e[type=item,tag=soul_dimre] run kill @e[type=item,tag=soul_dimre]

execute as @a[tag=soul_dim_comp] positioned as @s run fog @s[scores={tera_en=1}] push "tera:fog_soul_dim" "soul_dim_fog"

execute as @a[tag=soul_dim_comp] run execute as @s[scores={tera_en=1}] run tag @s add sd_color
#scoreboard objectives add sd_color dummy
#scoreboard players set @a[tag=!sd_color] sd_color 0
#scoreboard players add @a[tag=sd_color] sd_color 1
#execute as @a[scores={sd_color=300..}] run scoreboard players set @s[tag=sd_color] sd_color 0
#execute as @a[scores={sd_color=1}] run fog @s[tag=sd_color] remove "soul_dim_fog3"
#execute as @a[scores={sd_color=2}] run fog @s[tag=sd_color] push "tera:fog_soul_dim" "soul_dim_fog1"
#execute as @a[scores={sd_color=100}] run fog @s[tag=sd_color] remove "soul_dim_fog1"
#execute as @a[scores={sd_color=101}] run fog @s[tag=sd_color] push "tera:fog_soul_dim" "soul_dim_fog2"
#execute as @a[scores={sd_color=200}] run fog @s[tag=sd_color] remove "soul_dim_fog2"
#execute as @a[scores={sd_color=201}] run fog @s[tag=sd_color] push "tera:fog_soul_dim" "soul_dim_fog3"





scoreboard objectives add soul_dim_s dummy
scoreboard players add @a soul_dim_s 0
scoreboard players remove @a[scores={soul_dim_s=1..}] soul_dim_s 1
execute as @a[tag=soul_dim_comp] run execute as @s[scores={tera_en=1}] run scoreboard players add @s[scores={soul_dim_s=..6}] soul_dim_s 2
execute as @a[tag=soul_dim_comp] run execute as @s[scores={tera_en=1}] run execute as @s[scores={soul_dim_s=4..6}] run tag @s add soul_dim_s

execute as @a[tag=soul_dim_comp] run execute as @s[scores={tera_en=1}] run execute as @s[tag=soul_dim_s] run tag @s[tag=!soul_dim_s2] add d_sd_music1
execute as @a[tag=soul_dim_comp] run execute as @s[scores={tera_en=1}] run execute as @s[tag=soul_dim_s] run tag @s[tag=!soul_dim_s2] add soul_dim_s2

execute as @a[tag=soul_dim_comp] run execute as @s[scores={tera_en=1}] run execute as @s[scores={soul_dim_s=4..6}] run tag @s add soul_dim_s2
execute as @a[scores={soul_dim_s=..3}] run tag @s remove soul_dim_s
execute as @a[scores={soul_dim_s=..3}] run tag @s remove soul_dim_s2
execute as @a[scores={soul_dim_s=..3}] run tag @s remove d_sd_music1
execute as @a[scores={soul_dim_s=..3}] run tag @s remove d_sd_music2

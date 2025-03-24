execute as @a[scores={tera_ov=4..}] run execute as @s positioned as @s if block ~ ~ ~ tera:underworld_portal [] run tag @s add underworld_go
execute as @a[scores={tera_ov=4..}] run execute as @s positioned as @s if block ~ ~ ~ tera:underworld_portal [] run function underworld_tp
execute as @a[scores={tera_ov=4..}] run tag @s remove tera_en_uw_music_stop

execute as @a[scores={tera_en=1}] run execute at @s[tag=underworld_go] run execute as @s[tag=!underworld] run tag @s add underworld

execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 252 ~ tera:underworld_stone [] run tag @s[scores={tera_en=1}] add underworld_comp
execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 252 ~ tera:underworld_stone [] run tag @s[scores={tera_en=1}] remove soul_dim_comp
execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 252 ~ tera:underworld_stone [] run tag @s[scores={tera_en=1}] remove limbo_comp

execute as @a[scores={tera_en=1}] run execute at @s[tag=underworld_go] run execute as @s[tag=underworld_comp] run tag @s remove underworld_go


execute as @a[scores={tera_en=1}] run execute at @s[tag=underworld] run tag @s add tera_en_uw_music_stop
execute as @a[tag=tera_en_uw_music_stop] run stopsound @s music.game.end





execute as @a[tag=!underworld_comp] run fog @s remove "underworld_fog"
execute as @a[scores={tera_ov=4..}] run tag @s remove uw_color
execute as @a[scores={tera_ov=4..}] run tag @s remove underworld_comp
execute as @a[scores={tera_ov=4..}] run tag @s remove underworld

execute as @e[type=item,name="Yagazin"] positioned as @s if block ~ -64 ~ bedrock [] run execute as @s positioned as @s if block ~2~~ tera:underworld_stone [] run execute as @s positioned as @s if block ~2~~1 tera:underworld_stone [] run execute as @s positioned as @s if block ~2~~-1 tera:underworld_stone [] run execute as @s positioned as @s if block ~-2~~ tera:underworld_stone [] run execute as @s positioned as @s if block ~-2~~1 tera:underworld_stone [] run execute as @s positioned as @s if block ~-2~~-1 tera:underworld_stone [] run execute as @s positioned as @s if block ~ ~ ~2 tera:underworld_stone [] run execute as @s positioned as @s if block ~1~~2 tera:underworld_stone [] run execute as @s positioned as @s if block ~-1~~2 tera:underworld_stone [] run execute as @s positioned as @s if block ~ ~ ~-2 tera:underworld_stone [] run execute as @s positioned as @s if block ~-1~~-2 tera:underworld_stone [] run execute as @s positioned as @s if block ~1~~-2 tera:underworld_stone [] run tag @s add underworldr
execute as @e[type=item,name="Yagazin"] positioned as @s if block ~ -64 ~ bedrock [] run execute as @s positioned as @s if block ~2~~ tera:underworld_stone [] run execute as @s positioned as @s if block ~2~~1 tera:underworld_stone [] run execute as @s positioned as @s if block ~2~~-1 tera:underworld_stone [] run execute as @s positioned as @s if block ~-2~~ tera:underworld_stone [] run execute as @s positioned as @s if block ~-2~~1 tera:underworld_stone [] run execute as @s positioned as @s if block ~-2~~-1 tera:underworld_stone [] run execute as @s positioned as @s if block ~ ~ ~2 tera:underworld_stone [] run execute as @s positioned as @s if block ~1~~2 tera:underworld_stone [] run execute as @s positioned as @s if block ~-1~~2 tera:underworld_stone [] run execute as @s positioned as @s if block ~ ~ ~-2 tera:underworld_stone [] run execute as @s positioned as @s if block ~-1~~-2 tera:underworld_stone [] run execute as @s positioned as @s if block ~1~~-2 tera:underworld_stone [] run fill ~-1 ~ ~-1 ~1 ~ ~1 tera:underworld_portal
execute as @e[type=item,tag=underworldr] run execute at @s positioned as @s run function small_impact
execute as @e[type=item,tag=underworldr] run kill @e[type=item,tag=underworldr]

execute as @e[type=item,name="Leave the Tail of Abraham"] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ 252 ~ tera:underworld_stone [] run execute as @s positioned as @s if block ~2~~ tera:underworld_stone [] run execute as @s positioned as @s if block ~2~~1 tera:underworld_stone [] run execute as @s positioned as @s if block ~2~~-1 tera:underworld_stone [] run execute as @s positioned as @s if block ~-2~~ tera:underworld_stone [] run execute as @s positioned as @s if block ~-2~~1 tera:underworld_stone [] run execute as @s positioned as @s if block ~-2~~-1 tera:underworld_stone [] run execute as @s positioned as @s if block ~ ~ ~2 tera:underworld_stone [] run execute as @s positioned as @s if block ~1~~2 tera:underworld_stone [] run execute as @s positioned as @s if block ~-1~~2 tera:underworld_stone [] run execute as @s positioned as @s if block ~ ~ ~-2 tera:underworld_stone [] run execute as @s positioned as @s if block ~-1~~-2 tera:underworld_stone [] run execute as @s positioned as @s if block ~1~~-2 tera:underworld_stone [] run tag @s add underworldre
execute as @e[type=item,name="Leave the Tail of Abraham"] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ 252 ~ tera:underworld_stone [] run execute as @s positioned as @s if block ~2~~ tera:underworld_stone [] run execute as @s positioned as @s if block ~2~~1 tera:underworld_stone [] run execute as @s positioned as @s if block ~2~~-1 tera:underworld_stone [] run execute as @s positioned as @s if block ~-2~~ tera:underworld_stone [] run execute as @s positioned as @s if block ~-2~~1 tera:underworld_stone [] run execute as @s positioned as @s if block ~-2~~-1 tera:underworld_stone [] run execute as @s positioned as @s if block ~ ~ ~2 tera:underworld_stone [] run execute as @s positioned as @s if block ~1~~2 tera:underworld_stone [] run execute as @s positioned as @s if block ~-1~~2 tera:underworld_stone [] run execute as @s positioned as @s if block ~ ~ ~-2 tera:underworld_stone [] run execute as @s positioned as @s if block ~-1~~-2 tera:underworld_stone [] run execute as @s positioned as @s if block ~1~~-2 tera:underworld_stone [] run fill ~-1 ~ ~-1 ~1 ~ ~1 end_portal
execute as @e[type=item,tag=underworldre] run execute at @s positioned as @s run function small_impact
execute as @e[type=item,tag=underworldre] run kill @e[type=item,tag=underworldre]

execute as @a[tag=underworld_comp] positioned as @s run fog @s[scores={tera_en=1}] push "tera:fog_underworld" "underworld_fog"

execute as @a[tag=underworld_comp] run execute as @s[scores={tera_en=1}] run tag @s add uw_color
#scoreboard objectives add uw_color dummy
#scoreboard players set @a[tag=!uw_color] uw_color 0
#scoreboard players add @a[tag=uw_color] uw_color 1
#execute as @a[scores={uw_color=300..}] run scoreboard players set @s[tag=uw_color] uw_color 0
#execute as @a[scores={uw_color=1}] run fog @s[tag=uw_color] remove "underworld_fog3"
#execute as @a[scores={uw_color=2}] run fog @s[tag=uw_color] push "tera:fog_underworld" "underworld_fog1"
#execute as @a[scores={uw_color=100}] run fog @s[tag=uw_color] remove "underworld_fog1"
#execute as @a[scores={uw_color=101}] run fog @s[tag=uw_color] push "tera:fog_underworld" "underworld_fog2"
#execute as @a[scores={uw_color=200}] run fog @s[tag=uw_color] remove "underworld_fog2"
#execute as @a[scores={uw_color=201}] run fog @s[tag=uw_color] push "tera:fog_underworld" "underworld_fog3"





scoreboard objectives add underworld_s dummy
scoreboard players add @a underworld_s 0
scoreboard players remove @a[scores={underworld_s=1..}] underworld_s 1
execute as @a[tag=underworld_comp] run execute as @s[scores={tera_en=1}] run scoreboard players add @s[scores={underworld_s=..6}] underworld_s 2
execute as @a[tag=underworld_comp] run execute as @s[scores={tera_en=1}] run execute as @s[scores={underworld_s=4..6}] run tag @s add underworld_s

execute as @a[tag=underworld_comp] run execute as @s[scores={tera_en=1}] run execute as @s[tag=underworld_s] run tag @s[tag=!underworld_s2] add d_uw_music1
execute as @a[tag=underworld_comp] run execute as @s[scores={tera_en=1}] run execute as @s[tag=underworld_s] run tag @s[tag=!underworld_s2] add underworld_s2

execute as @a[tag=underworld_comp] run execute as @s[scores={tera_en=1}] run execute as @s[scores={underworld_s=4..6}] run tag @s add underworld_s2
execute as @a[scores={underworld_s=..3}] run tag @s remove underworld_s
execute as @a[scores={underworld_s=..3}] run tag @s remove underworld_s2
execute as @a[scores={underworld_s=..3}] run tag @s remove d_uw_music1
execute as @a[scores={underworld_s=..3}] run tag @s remove d_uw_music2

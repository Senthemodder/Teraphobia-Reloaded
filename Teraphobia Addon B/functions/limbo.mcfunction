
execute as @a[scores={tera_ov=4..}] run execute as @s positioned as @s if block ~ ~ ~ tera:limbo_portal [] run tag @s add limbo_go
execute as @a[scores={tera_ov=4..}] run execute as @s positioned as @s if block ~ ~ ~ tera:limbo_portal [] run function limbo_tp
execute as @a[scores={tera_ov=4..}] run tag @s remove tera_en_lb_music_stop

execute as @a[scores={tera_en=1}] run execute at @s[tag=limbo_go] run execute as @s[tag=!limbo] run tag @s add limbo

execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 252 ~ bedrock [] run tag @s[scores={tera_en=1}] add limbo_comp
execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 252 ~ bedrock [] run tag @s[scores={tera_en=1}] remove soul_dim_comp
execute as @a[scores={tera_en=1}] run execute at @s positioned as @s if block ~ 252 ~ bedrock [] run tag @s[scores={tera_en=1}] remove underworld_comp

execute as @a[scores={tera_en=1}] run execute at @s[tag=limbo_go] run execute as @s[tag=limbo_comp] run tag @s remove limbo_go


execute as @a[scores={tera_en=1}] run execute at @s[tag=limbo] run tag @s add tera_en_lb_music_stop
execute as @a[tag=tera_en_lb_music_stop] run stopsound @s music.game.end





execute as @a[tag=!limbo_comp] run fog @s remove "limbo_fog"
execute as @a[scores={tera_ov=4..}] run tag @s remove lb_color
execute as @a[scores={tera_ov=4..}] run tag @s remove limbo_comp
execute as @a[scores={tera_ov=4..}] run tag @s remove limbo

execute as @e[type=item,name="Solos"] positioned as @s if block ~ -64 ~ bedrock [] run execute as @s positioned as @s if block ~2~~ tera:limbo_stone [] run execute as @s positioned as @s if block ~2~~1 tera:limbo_stone [] run execute as @s positioned as @s if block ~2~~-1 tera:limbo_stone [] run execute as @s positioned as @s if block ~-2~~ tera:limbo_stone [] run execute as @s positioned as @s if block ~-2~~1 tera:limbo_stone [] run execute as @s positioned as @s if block ~-2~~-1 tera:limbo_stone [] run execute as @s positioned as @s if block ~ ~ ~2 tera:limbo_stone [] run execute as @s positioned as @s if block ~1~~2 tera:limbo_stone [] run execute as @s positioned as @s if block ~-1~~2 tera:limbo_stone [] run execute as @s positioned as @s if block ~ ~ ~-2 tera:limbo_stone [] run execute as @s positioned as @s if block ~-1~~-2 tera:limbo_stone [] run execute as @s positioned as @s if block ~1~~-2 tera:limbo_stone [] run tag @s add limbor
execute as @e[type=item,name="Solos"] positioned as @s if block ~ -64 ~ bedrock [] run execute as @s positioned as @s if block ~2~~ tera:limbo_stone [] run execute as @s positioned as @s if block ~2~~1 tera:limbo_stone [] run execute as @s positioned as @s if block ~2~~-1 tera:limbo_stone [] run execute as @s positioned as @s if block ~-2~~ tera:limbo_stone [] run execute as @s positioned as @s if block ~-2~~1 tera:limbo_stone [] run execute as @s positioned as @s if block ~-2~~-1 tera:limbo_stone [] run execute as @s positioned as @s if block ~ ~ ~2 tera:limbo_stone [] run execute as @s positioned as @s if block ~1~~2 tera:limbo_stone [] run execute as @s positioned as @s if block ~-1~~2 tera:limbo_stone [] run execute as @s positioned as @s if block ~ ~ ~-2 tera:limbo_stone [] run execute as @s positioned as @s if block ~-1~~-2 tera:limbo_stone [] run execute as @s positioned as @s if block ~1~~-2 tera:limbo_stone [] run fill ~-1 ~ ~-1 ~1 ~ ~1 tera:limbo_portal
execute as @e[type=item,tag=limbor] run execute at @s positioned as @s run function small_impact
execute as @e[type=item,tag=limbor] run kill @e[type=item,tag=limbor]


execute as @e[type=item,name="Rise from Limbo"] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ 252 ~ bedrock [] run execute as @s positioned as @s if block ~2~~ tera:limbo_stone [] run execute as @s positioned as @s if block ~2~~1 tera:limbo_stone [] run execute as @s positioned as @s if block ~2~~-1 tera:limbo_stone [] run execute as @s positioned as @s if block ~-2~~ tera:limbo_stone [] run execute as @s positioned as @s if block ~-2~~1 tera:limbo_stone [] run execute as @s positioned as @s if block ~-2~~-1 tera:limbo_stone [] run execute as @s positioned as @s if block ~ ~ ~2 tera:limbo_stone [] run execute as @s positioned as @s if block ~1~~2 tera:limbo_stone [] run execute as @s positioned as @s if block ~-1~~2 tera:limbo_stone [] run execute as @s positioned as @s if block ~ ~ ~-2 tera:limbo_stone [] run execute as @s positioned as @s if block ~-1~~-2 tera:limbo_stone [] run execute as @s positioned as @s if block ~1~~-2 tera:limbo_stone [] run tag @s add limbore
execute as @e[type=item,name="Rise from Limbo"] run execute at @s positioned as @s run execute as @s positioned as @s if block ~ 252 ~ bedrock [] run execute as @s positioned as @s if block ~2~~ tera:limbo_stone [] run execute as @s positioned as @s if block ~2~~1 tera:limbo_stone [] run execute as @s positioned as @s if block ~2~~-1 tera:limbo_stone [] run execute as @s positioned as @s if block ~-2~~ tera:limbo_stone [] run execute as @s positioned as @s if block ~-2~~1 tera:limbo_stone [] run execute as @s positioned as @s if block ~-2~~-1 tera:limbo_stone [] run execute as @s positioned as @s if block ~ ~ ~2 tera:limbo_stone [] run execute as @s positioned as @s if block ~1~~2 tera:limbo_stone [] run execute as @s positioned as @s if block ~-1~~2 tera:limbo_stone [] run execute as @s positioned as @s if block ~ ~ ~-2 tera:limbo_stone [] run execute as @s positioned as @s if block ~-1~~-2 tera:limbo_stone [] run execute as @s positioned as @s if block ~1~~-2 tera:limbo_stone [] run fill ~-1 ~ ~-1 ~1 ~ ~1 end_portal
execute as @e[type=item,tag=limbore] run execute at @s positioned as @s run function small_impact
execute as @e[type=item,tag=limbore] run kill @e[type=item,tag=limbore]

execute as @a[tag=limbo_comp] positioned as @s run fog @s[scores={tera_en=1}] push "tera:fog_limbo" "limbo_fog"

execute as @a[tag=limbo_comp] run execute as @s[scores={tera_en=1}] run tag @s add lb_color
#scoreboard objectives add lb_color dummy
#scoreboard players set @a[tag=!lb_color] lb_color 0
#scoreboard players add @a[tag=lb_color] lb_color 1
#execute as @a[scores={lb_color=300..}] run scoreboard players set @s[tag=lb_color] lb_color 0
#execute as @a[scores={lb_color=1}] run fog @s[tag=lb_color] remove "limbo_fog3"
#execute as @a[scores={lb_color=2}] run fog @s[tag=lb_color] push "tera:fog_limbo" "limbo_fog1"
#execute as @a[scores={lb_color=100}] run fog @s[tag=lb_color] remove "limbo_fog1"
#execute as @a[scores={lb_color=101}] run fog @s[tag=lb_color] push "tera:fog_limbo" "limbo_fog2"
#execute as @a[scores={lb_color=200}] run fog @s[tag=lb_color] remove "limbo_fog2"
#execute as @a[scores={lb_color=201}] run fog @s[tag=lb_color] push "tera:fog_limbo" "limbo_fog3"





scoreboard objectives add limbo_s dummy
scoreboard players add @a limbo_s 0
scoreboard players remove @a[scores={limbo_s=1..}] limbo_s 1
execute as @a[tag=limbo_comp] run execute as @s[scores={tera_en=1}] run scoreboard players add @s[scores={limbo_s=..6}] limbo_s 2
execute as @a[tag=limbo_comp] run execute as @s[scores={tera_en=1}] run execute as @s[scores={limbo_s=4..6}] run tag @s add limbo_s

execute as @a[tag=limbo_comp] run execute as @s[scores={tera_en=1}] run execute as @s[tag=limbo_s] run tag @s[tag=!limbo_s2] add d_lb_music1
execute as @a[tag=limbo_comp] run execute as @s[scores={tera_en=1}] run execute as @s[tag=limbo_s] run tag @s[tag=!limbo_s2] add limbo_s2

execute as @a[tag=limbo_comp] run execute as @s[scores={tera_en=1}] run execute as @s[scores={limbo_s=4..6}] run tag @s add limbo_s2
execute as @a[scores={limbo_s=..3}] run tag @s remove limbo_s
execute as @a[scores={limbo_s=..3}] run tag @s remove limbo_s2
execute as @a[scores={limbo_s=..3}] run tag @s remove d_lb_music1
execute as @a[scores={limbo_s=..3}] run tag @s remove d_lb_music2

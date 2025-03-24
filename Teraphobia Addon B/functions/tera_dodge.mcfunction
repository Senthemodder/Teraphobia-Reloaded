
scoreboard objectives add tera_dodge_cd dummy
scoreboard players add @a tera_dodge_cd 0
scoreboard players remove @a[tag=!tera_sneakd,scores={tera_dodge_cd=1..}] tera_dodge_cd 1
tag @a[scores={tera_dodge_cd=23..26}] remove tera_dodging

execute as @a[scores={tera_sneak=1,tera_death=0}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run playsound mob.breeze.shoot @a[r=25] ~~~
execute as @a[scores={tera_sneak=1,tera_death=0}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run effect @s resistance 1 255
execute as @a[scores={tera_sneak=1,tera_death=0}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=19}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run effect @s resistance 0 0
execute as @a[scores={tera_sneak=1,tera_death=0}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run tag @s add tera_dodging
execute as @a[scores={tera_sneak=1,tera_death=0}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run execute as @s[scores={tera_forw=0,tera_back=0,tera_left=0,tera_righ=0}] run playanimation @s animation.tera_player.roll_forward
execute as @a[scores={tera_sneak=1,tera_death=0}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run execute as @s[scores={tera_forw=1}] run playanimation @s animation.tera_player.roll_forward
execute as @a[scores={tera_sneak=1,tera_death=0}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run execute as @s[scores={tera_back=1}] run playanimation @s animation.tera_player.roll_back
execute as @a[scores={tera_sneak=1,tera_death=0}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run execute as @s[scores={tera_left=1}] run playanimation @s animation.tera_player.roll_left
execute as @a[scores={tera_sneak=1,tera_death=0}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run execute as @s[scores={tera_righ=1}] run playanimation @s animation.tera_player.roll_right
execute as @a[scores={tera_sneak=1,tera_death=0}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run execute as @s[scores={tera_forw=0,tera_back=0,tera_left=0,tera_righ=0}] run summon tera:tera_player_dodge ^ ^1 ^-1
execute as @a[scores={tera_sneak=1,tera_death=0}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run execute as @s[scores={tera_forw=1}] run summon tera:tera_player_dodge ^ ^1 ^-1
execute as @a[scores={tera_sneak=1,tera_death=0}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run execute as @s[scores={tera_back=1}] run summon tera:tera_player_dodge ^ ^1 ^1
execute as @a[scores={tera_sneak=1,tera_death=0}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run execute as @s[scores={tera_left=1}] run summon tera:tera_player_dodge ^-1 ^1 ^
execute as @a[scores={tera_sneak=1,tera_death=0}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run execute as @s[scores={tera_righ=1}] run summon tera:tera_player_dodge ^1 ^1 ^
execute as @a[scores={tera_sneak=1}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=!tera_sneakd] run execute as @s[tag=!gindable] run tag @s add tera_sneakd
execute as @a[scores={tera_sneak=1}] run execute at @s[tag=tera_dodge] positioned as @s[scores={tera_dodge_cd=0}] run execute as @s[tag=tera_sneakd] run execute as @s[tag=!gindable] run scoreboard players set @s tera_dodge_cd 30

execute as @a[scores={tera_sneak=0}] run execute at @s[tag=tera_sneakd] positioned as @s run tag @s remove tera_sneakd

title @a[tag=!gindable,scores={tera_dodge_cd=25..}] actionbar §c......
title @a[tag=!gindable,scores={tera_dodge_cd=20..24}] actionbar §c.....
title @a[tag=!gindable,scores={tera_dodge_cd=15..19}] actionbar §c....
title @a[tag=!gindable,scores={tera_dodge_cd=10..14}] actionbar §c...
title @a[tag=!gindable,scores={tera_dodge_cd=5..9}] actionbar §c..
title @a[tag=!gindable,scores={tera_dodge_cd=2..4}] actionbar §c.
title @a[tag=!gindable,scores={tera_dodge_cd=1}] actionbar §a.
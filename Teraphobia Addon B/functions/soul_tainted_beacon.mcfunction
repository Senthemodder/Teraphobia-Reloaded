execute as @s[hasitem={item=tera:soul_tainted_beacon,location=slot.weapon.mainhand}] run execute at @s[scores={tera_sneak=1,tera_death=0}] positioned as @s run tag @s add st_beacon
execute as @s[hasitem={item=tera:soul_tainted_beacon,location=slot.weapon.mainhand,quantity=0}] run execute at @s positioned as @s run tag @s remove st_beacon
execute as @s[scores={tera_death=1}] run execute at @s positioned as @s run tag @s remove st_beacon
execute as @s[scores={tera_sneak=0}] run execute at @s positioned as @s run tag @s remove st_beacon
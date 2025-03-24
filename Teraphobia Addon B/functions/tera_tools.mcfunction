execute as @a[hasitem={item=tera:reaper_scythe,location=slot.weapon.mainhand}] run execute at @s[tag=!reaper_scythe] positioned as @s run tag @s add reaper_scythe
execute as @a[hasitem={item=tera:reaper_scythe,location=slot.weapon.mainhand}] run execute at @s[tag=reaper_scythe] positioned as @s run tag @s add frostpotion
execute as @a[hasitem={item=tera:reaper_scythe,location=slot.weapon.mainhand}] run execute at @s[tag=reaper_scythe] positioned as @s run tag @s[scores={tera_sneak=1}] add smokepotion
execute as @a[hasitem={item=tera:reaper_scythe,location=slot.weapon.mainhand}] run execute at @s[tag=reaper_scythe] positioned as @s run tag @s[scores={tera_sneak=0}] remove smokepotion
execute as @a[hasitem={item=tera:reaper_scythe,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=reaper_scythe] positioned as @s run tag @s remove frostpotion
execute as @a[hasitem={item=tera:reaper_scythe,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=reaper_scythe] positioned as @s run tag @s remove smokepotion
execute as @a[hasitem={item=tera:reaper_scythe,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=reaper_scythe] positioned as @s run tag @s remove reaper_scythe


execute as @a[hasitem={item=tera:joseph_blade,location=slot.weapon.mainhand}] run execute at @s[tag=!joseph_blade] positioned as @s run tag @s add joseph_blade
execute as @a[hasitem={item=tera:joseph_blade,location=slot.weapon.mainhand}] run execute at @s[tag=joseph_blade] positioned as @s run tag @s add skypotion
execute as @a[hasitem={item=tera:joseph_blade,location=slot.weapon.mainhand}] run execute at @s[tag=joseph_blade] positioned as @s run tag @s[scores={tera_sneak=1}] add tornadopotion
execute as @a[hasitem={item=tera:joseph_blade,location=slot.weapon.mainhand}] run execute at @s[tag=joseph_blade] positioned as @s run tag @s[scores={tera_sneak=0}] remove tornadopotion
execute as @a[hasitem={item=tera:joseph_blade,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=joseph_blade] positioned as @s run tag @s remove skypotion
execute as @a[hasitem={item=tera:joseph_blade,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=joseph_blade] positioned as @s run tag @s remove tornadopotion
execute as @a[hasitem={item=tera:joseph_blade,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=joseph_blade] positioned as @s run tag @s remove joseph_blade


execute as @a[hasitem={item=tera:soul_hammer,location=slot.weapon.mainhand}] run execute at @s[tag=!soul_hammer] positioned as @s run tag @s add soul_hammer
execute as @a[hasitem={item=tera:soul_hammer,location=slot.weapon.mainhand}] run execute at @s[tag=soul_hammer] positioned as @s run tag @s add soulvisionpotion
execute as @a[hasitem={item=tera:soul_hammer,location=slot.weapon.mainhand}] run execute at @s[tag=soul_hammer] positioned as @s run effect @s[scores={tera_down=1}] strength 1 2
execute as @a[hasitem={item=tera:soul_hammer,location=slot.weapon.mainhand}] run execute at @s[tag=soul_hammer] positioned as @s[tag=soul_hammer_ab] run tag @s[scores={tera_down=1}] remove soul_hammer_ab
execute as @a[hasitem={item=tera:soul_hammer,location=slot.weapon.mainhand}] run execute at @s[tag=soul_hammer] positioned as @s[tag=!soul_hammer_ab] run effect @s[scores={tera_down=0}] strength 0 0
execute as @a[hasitem={item=tera:soul_hammer,location=slot.weapon.mainhand}] run execute at @s[tag=soul_hammer] positioned as @s[tag=!soul_hammer_ab] run tag @s[scores={tera_down=0}] add soul_hammer_ab
execute as @a[hasitem={item=tera:soul_hammer,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=soul_hammer] positioned as @s run tag @s remove soul_hammer_ab
execute as @a[hasitem={item=tera:soul_hammer,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=soul_hammer] positioned as @s run tag @s remove soulvisionpotion
execute as @a[hasitem={item=tera:soul_hammer,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=soul_hammer] positioned as @s run tag @s remove soul_hammer


execute as @a[hasitem={item=tera:fire_akin_axe,location=slot.weapon.mainhand}] run execute at @s[tag=!fire_akin_axe] positioned as @s run tag @s add fire_akin_axe
execute as @a[hasitem={item=tera:fire_akin_axe,location=slot.weapon.mainhand}] run execute at @s[tag=fire_akin_axe] positioned as @s run tag @s add hellpotion
execute as @a[hasitem={item=tera:fire_akin_axe,location=slot.weapon.mainhand}] run execute at @s[tag=fire_akin_axe] positioned as @s run tag @s[scores={tera_sneak=1}] add ghastpotion
execute as @a[hasitem={item=tera:fire_akin_axe,location=slot.weapon.mainhand}] run execute at @s[tag=fire_akin_axe] positioned as @s run tag @s[scores={tera_sneak=0}] remove ghastpotion
execute as @a[hasitem={item=tera:fire_akin_axe,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=fire_akin_axe] positioned as @s run tag @s remove hellpotion
execute as @a[hasitem={item=tera:fire_akin_axe,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=fire_akin_axe] positioned as @s run tag @s remove ghastpotion
execute as @a[hasitem={item=tera:fire_akin_axe,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=fire_akin_axe] positioned as @s run tag @s remove fire_akin_axe


execute as @a[hasitem={item=tera:soul_knight_sword,location=slot.weapon.mainhand}] run execute at @s[tag=!soul_knight_sword] positioned as @s run tag @s add soul_knight_sword
execute as @a[hasitem={item=tera:soul_knight_sword,location=slot.weapon.mainhand}] run execute at @s[tag=soul_knight_sword] positioned as @s run tag @s add soulvisionpotion
execute as @a[hasitem={item=tera:soul_knight_sword,location=slot.weapon.mainhand}] run execute at @s[tag=soul_knight_sword] positioned as @s run tag @s add lightpotion
execute as @a[hasitem={item=tera:soul_knight_sword,location=slot.weapon.mainhand}] run execute at @s[tag=soul_knight_sword] positioned as @s run tag @s add limbopotion
execute as @a[hasitem={item=tera:soul_knight_sword,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=soul_knight_sword] positioned as @s run tag @s remove soulvisionpotion
execute as @a[hasitem={item=tera:soul_knight_sword,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=soul_knight_sword] positioned as @s run tag @s remove lightpotion
execute as @a[hasitem={item=tera:soul_knight_sword,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=soul_knight_sword] positioned as @s run tag @s remove limbopotion
execute as @a[hasitem={item=tera:soul_knight_sword,location=slot.weapon.mainhand,quantity=0}] run execute at @s[tag=soul_knight_sword] positioned as @s run tag @s remove soul_knight_sword


#Silver Armor
execute as @a[hasitem=[{item=tera:silver_helmet,location=slot.armor.head},{item=tera:silver_chestplate,location=slot.armor.chest},{item=tera:silver_leggings,location=slot.armor.legs},{item=tera:silver_boots,location=slot.armor.feet}]] run execute at @s[tag=!silver_armor_full] positioned as @s run tag @s add silver_armor_full
execute as @a[hasitem={item=tera:silver_helmet,location=slot.armor.head,quantity=0}] run execute at @s[tag=silver_armor_full] positioned as @s run tag @s remove silver_armor_full
execute as @a[hasitem={item=tera:silver_chestplate,location=slot.armor.chest,quantity=0}] run execute at @s[tag=silver_armor_full] positioned as @s run tag @s remove silver_armor_full
execute as @a[hasitem={item=tera:silver_leggings,location=slot.armor.legs,quantity=0}] run execute at @s[tag=silver_armor_full] positioned as @s run tag @s remove silver_armor_full
execute as @a[hasitem={item=tera:silver_boots,location=slot.armor.feet,quantity=0}] run execute at @s[tag=silver_armor_full] positioned as @s run tag @s remove silver_armor_full

execute as @a[tag=silver_armor_full] run execute at @s[tag=!silver_armor] positioned as @s run tag @s add silver_armor
execute as @a[tag=silver_armor_full] run execute at @s[tag=silver_armor] positioned as @s run effect @s nausea 0 0
execute as @a[tag=silver_armor_full] run execute at @s[tag=silver_armor] positioned as @s run effect @s poison 0 0
execute as @a[tag=silver_armor_full] run execute at @s[tag=silver_armor] positioned as @s run effect @s fatal_poison 0 0
execute as @a[tag=silver_armor_full] run execute at @s[tag=silver_armor] positioned as @s run effect @s slowness 0 0
execute as @a[tag=!silver_armor_full] run execute at @s[tag=silver_armor] positioned as @s run tag @s remove silver_armor


#opal Armor
execute as @a[hasitem=[{item=tera:opal_helmet,location=slot.armor.head},{item=tera:opal_chestplate,location=slot.armor.chest},{item=tera:opal_leggings,location=slot.armor.legs},{item=tera:opal_boots,location=slot.armor.feet}]] run execute at @s[tag=!opal_armor_full] positioned as @s run tag @s add opal_armor_full
execute as @a[hasitem={item=tera:opal_helmet,location=slot.armor.head,quantity=0}] run execute at @s[tag=opal_armor_full] positioned as @s run tag @s remove opal_armor_full
execute as @a[hasitem={item=tera:opal_chestplate,location=slot.armor.chest,quantity=0}] run execute at @s[tag=opal_armor_full] positioned as @s run tag @s remove opal_armor_full
execute as @a[hasitem={item=tera:opal_leggings,location=slot.armor.legs,quantity=0}] run execute at @s[tag=opal_armor_full] positioned as @s run tag @s remove opal_armor_full
execute as @a[hasitem={item=tera:opal_boots,location=slot.armor.feet,quantity=0}] run execute at @s[tag=opal_armor_full] positioned as @s run tag @s remove opal_armor_full

execute as @a[tag=opal_armor_full] run execute at @s[tag=!opal_armor] positioned as @s run tag @s add opal_armor
execute as @a[tag=opal_armor_full] run execute at @s[tag=opal_armor] positioned as @s run effect @s fire_resistance 1 0 true
execute as @a[tag=opal_armor_full] run execute at @s[tag=opal_armor] positioned as @s run effect @s wither 0 0
execute as @a[tag=!opal_armor_full] run execute at @s[tag=opal_armor] positioned as @s run tag @s remove opal_armor


#nythium Armor
execute as @a[hasitem=[{item=tera:nythium_helmet,location=slot.armor.head},{item=tera:nythium_chestplate,location=slot.armor.chest},{item=tera:nythium_leggings,location=slot.armor.legs},{item=tera:nythium_boots,location=slot.armor.feet}]] run execute at @s[tag=!nythium_armor_full] positioned as @s run tag @s add nythium_armor_full
execute as @a[hasitem={item=tera:nythium_helmet,location=slot.armor.head,quantity=0}] run execute at @s[tag=nythium_armor_full] positioned as @s run tag @s remove nythium_armor_full
execute as @a[hasitem={item=tera:nythium_chestplate,location=slot.armor.chest,quantity=0}] run execute at @s[tag=nythium_armor_full] positioned as @s run tag @s remove nythium_armor_full
execute as @a[hasitem={item=tera:nythium_leggings,location=slot.armor.legs,quantity=0}] run execute at @s[tag=nythium_armor_full] positioned as @s run tag @s remove nythium_armor_full
execute as @a[hasitem={item=tera:nythium_boots,location=slot.armor.feet,quantity=0}] run execute at @s[tag=nythium_armor_full] positioned as @s run tag @s remove nythium_armor_full

execute as @a[tag=nythium_armor_full] run execute at @s[tag=!nythium_armor] positioned as @s run tag @s add nythium_armor
execute as @a[tag=nythium_armor_full] run execute at @s[tag=nythium_armor] positioned as @s run effect @s poison 0 0
execute as @a[tag=nythium_armor_full] run execute at @s[tag=nythium_armor] positioned as @s run effect @e[r=7,tag=!nythium_armor] poison 1 1
execute as @a[tag=!nythium_armor_full] run execute at @s[tag=nythium_armor] positioned as @s run tag @s remove nythium_armor


#yagazin Armor
execute as @a[hasitem=[{item=tera:yagazin_helmet,location=slot.armor.head},{item=tera:yagazin_chestplate,location=slot.armor.chest},{item=tera:yagazin_leggings,location=slot.armor.legs},{item=tera:yagazin_boots,location=slot.armor.feet}]] run execute at @s[tag=!yagazin_armor_full] positioned as @s run tag @s add yagazin_armor_full
execute as @a[hasitem={item=tera:yagazin_helmet,location=slot.armor.head,quantity=0}] run execute at @s[tag=yagazin_armor_full] positioned as @s run tag @s remove yagazin_armor_full
execute as @a[hasitem={item=tera:yagazin_chestplate,location=slot.armor.chest,quantity=0}] run execute at @s[tag=yagazin_armor_full] positioned as @s run tag @s remove yagazin_armor_full
execute as @a[hasitem={item=tera:yagazin_leggings,location=slot.armor.legs,quantity=0}] run execute at @s[tag=yagazin_armor_full] positioned as @s run tag @s remove yagazin_armor_full
execute as @a[hasitem={item=tera:yagazin_boots,location=slot.armor.feet,quantity=0}] run execute at @s[tag=yagazin_armor_full] positioned as @s run tag @s remove yagazin_armor_full

execute as @a[tag=yagazin_armor_full] run execute at @s[tag=!yagazin_armor] positioned as @s run tag @s add yagazin_armor
execute as @a[tag=yagazin_armor_full] run execute at @s[tag=yagazin_armor] positioned as @s run effect @s fire_resistance 1 0 true
execute as @a[tag=yagazin_armor_full] run execute at @s[tag=yagazin_armor] positioned as @s run execute as @s if block ~ ~ ~ fire [] run effect @s regeneration 1 1
execute as @a[tag=yagazin_armor_full] run execute at @s[tag=yagazin_armor] positioned as @s run execute as @s if block ~ ~ ~ lava [] run effect @s regeneration 1 1
execute as @a[tag=yagazin_armor_full] run execute at @s[tag=yagazin_armor] positioned as @s run execute as @s if block ~ ~ ~ flowing_lava [] run effect @s regeneration 1 1
execute as @a[tag=!yagazin_armor_full] run execute at @s[tag=yagazin_armor] positioned as @s run tag @s remove yagazin_armor


#soul Armor
execute as @a[hasitem=[{item=tera:soul_helmet,location=slot.armor.head},{item=tera:soul_chestplate,location=slot.armor.chest},{item=tera:soul_leggings,location=slot.armor.legs},{item=tera:soul_boots,location=slot.armor.feet}]] run execute at @s[tag=!soul_armor_full] positioned as @s run tag @s add soul_armor_full
execute as @a[hasitem={item=tera:soul_helmet,location=slot.armor.head,quantity=0}] run execute at @s[tag=soul_armor_full] positioned as @s run tag @s remove soul_armor_full
execute as @a[hasitem={item=tera:soul_chestplate,location=slot.armor.chest,quantity=0}] run execute at @s[tag=soul_armor_full] positioned as @s run tag @s remove soul_armor_full
execute as @a[hasitem={item=tera:soul_leggings,location=slot.armor.legs,quantity=0}] run execute at @s[tag=soul_armor_full] positioned as @s run tag @s remove soul_armor_full
execute as @a[hasitem={item=tera:soul_boots,location=slot.armor.feet,quantity=0}] run execute at @s[tag=soul_armor_full] positioned as @s run tag @s remove soul_armor_full

execute as @a[tag=soul_armor_full] run execute at @s[tag=!soul_armor] positioned as @s run tag @s add soul_armor
execute as @a[tag=soul_armor_full] run execute at @s[tag=soul_armor] positioned as @s run effect @s night_vision 15 0 true
execute as @a[tag=soul_armor_full] run execute at @s[tag=soul_armor] positioned as @s run tag @s add soulvisionpotion
execute as @a[tag=!soul_armor_full] run execute at @s[tag=soul_armor] positioned as @s run effect @s night_vision 0 0
execute as @a[tag=!soul_armor_full] run execute at @s[tag=soul_armor] positioned as @s run tag @s remove soulvisionpotion
execute as @a[tag=!soul_armor_full] run execute at @s[tag=soul_armor] positioned as @s run tag @s remove soul_armor


#eresite Armor
execute as @a[hasitem=[{item=tera:eresite_helmet,location=slot.armor.head},{item=tera:eresite_chestplate,location=slot.armor.chest},{item=tera:eresite_leggings,location=slot.armor.legs},{item=tera:eresite_boots,location=slot.armor.feet}]] run execute at @s[tag=!eresite_armor_full] positioned as @s run tag @s add eresite_armor_full
execute as @a[hasitem={item=tera:eresite_helmet,location=slot.armor.head,quantity=0}] run execute at @s[tag=eresite_armor_full] positioned as @s run tag @s remove eresite_armor_full
execute as @a[hasitem={item=tera:eresite_chestplate,location=slot.armor.chest,quantity=0}] run execute at @s[tag=eresite_armor_full] positioned as @s run tag @s remove eresite_armor_full
execute as @a[hasitem={item=tera:eresite_leggings,location=slot.armor.legs,quantity=0}] run execute at @s[tag=eresite_armor_full] positioned as @s run tag @s remove eresite_armor_full
execute as @a[hasitem={item=tera:eresite_boots,location=slot.armor.feet,quantity=0}] run execute at @s[tag=eresite_armor_full] positioned as @s run tag @s remove eresite_armor_full

execute as @a[tag=eresite_armor_full] run execute at @s[tag=!eresite_armor] positioned as @s run tag @s add eresite_armor
execute as @a[tag=eresite_armor_full] run execute at @s[tag=eresite_armor] positioned as @s run tag @s add skypotion
execute as @a[tag=!eresite_armor_full] run execute at @s[tag=eresite_armor] positioned as @s run tag @s remove skypotion
execute as @a[tag=!eresite_armor_full] run execute at @s[tag=eresite_armor] positioned as @s run tag @s remove eresite_armor


#deth Armor
execute as @a[hasitem=[{item=tera:deth_helmet,location=slot.armor.head},{item=tera:deth_chestplate,location=slot.armor.chest},{item=tera:deth_leggings,location=slot.armor.legs},{item=tera:deth_boots,location=slot.armor.feet}]] run execute at @s[tag=!deth_armor_full] positioned as @s run tag @s add deth_armor_full
execute as @a[hasitem={item=tera:deth_helmet,location=slot.armor.head,quantity=0}] run execute at @s[tag=deth_armor_full] positioned as @s run tag @s remove deth_armor_full
execute as @a[hasitem={item=tera:deth_chestplate,location=slot.armor.chest,quantity=0}] run execute at @s[tag=deth_armor_full] positioned as @s run tag @s remove deth_armor_full
execute as @a[hasitem={item=tera:deth_leggings,location=slot.armor.legs,quantity=0}] run execute at @s[tag=deth_armor_full] positioned as @s run tag @s remove deth_armor_full
execute as @a[hasitem={item=tera:deth_boots,location=slot.armor.feet,quantity=0}] run execute at @s[tag=deth_armor_full] positioned as @s run tag @s remove deth_armor_full

execute as @a[tag=deth_armor_full] run execute at @s[tag=!deth_armor] positioned as @s run tag @s add deth_armor
execute as @a[tag=deth_armor_full] run execute at @s[tag=deth_armor] positioned as @s run effect @s wither 0 0
execute as @a[tag=deth_armor_full] run execute at @s[tag=deth_armor] positioned as @s run tag @s add sunpotion
execute as @a[tag=!deth_armor_full] run execute at @s[tag=deth_armor] positioned as @s run tag @s remove sunpotion
execute as @a[tag=!deth_armor_full] run execute at @s[tag=deth_armor] positioned as @s run tag @s remove deth_armor


#agarnite Armor
execute as @a[hasitem=[{item=tera:agarnite_helmet,location=slot.armor.head},{item=tera:agarnite_chestplate,location=slot.armor.chest},{item=tera:agarnite_leggings,location=slot.armor.legs},{item=tera:agarnite_boots,location=slot.armor.feet}]] run execute at @s[tag=!agarnite_armor_full] positioned as @s run tag @s add agarnite_armor_full
execute as @a[hasitem={item=tera:agarnite_helmet,location=slot.armor.head,quantity=0}] run execute at @s[tag=agarnite_armor_full] positioned as @s run tag @s remove agarnite_armor_full
execute as @a[hasitem={item=tera:agarnite_chestplate,location=slot.armor.chest,quantity=0}] run execute at @s[tag=agarnite_armor_full] positioned as @s run tag @s remove agarnite_armor_full
execute as @a[hasitem={item=tera:agarnite_leggings,location=slot.armor.legs,quantity=0}] run execute at @s[tag=agarnite_armor_full] positioned as @s run tag @s remove agarnite_armor_full
execute as @a[hasitem={item=tera:agarnite_boots,location=slot.armor.feet,quantity=0}] run execute at @s[tag=agarnite_armor_full] positioned as @s run tag @s remove agarnite_armor_full

execute as @a[tag=agarnite_armor_full] run execute at @s[tag=!agarnite_armor] positioned as @s run tag @s add agarnite_armor
execute as @a[tag=agarnite_armor_full] run execute at @s[tag=agarnite_armor] positioned as @s run effect @s wither 0 0
execute as @a[tag=agarnite_armor_full] run execute at @s[tag=agarnite_armor] positioned as @s run effect @s nausea 0 0
execute as @a[tag=agarnite_armor_full] run execute at @s[tag=agarnite_armor] positioned as @s run effect @s slowness 0 0
execute as @a[tag=agarnite_armor_full] run execute at @s[tag=agarnite_armor] positioned as @s run effect @s poison 0 0
execute as @a[tag=agarnite_armor_full] run execute at @s[tag=agarnite_armor] positioned as @s run effect @s fatal_poison 0 0
execute as @a[tag=agarnite_armor_full] run execute at @s[tag=agarnite_armor] positioned as @s run effect @s speed 1 1 true
execute as @a[tag=agarnite_armor_full] run execute at @s[tag=agarnite_armor] positioned as @s run effect @s jump_boost 1 2 true
execute as @a[tag=!agarnite_armor_full] run execute at @s[tag=agarnite_armor] positioned as @s run tag @s remove agarnite_armor


#sidron Armor
execute as @a[hasitem=[{item=tera:sidron_helmet,location=slot.armor.head},{item=tera:sidron_chestplate,location=slot.armor.chest},{item=tera:sidron_leggings,location=slot.armor.legs},{item=tera:sidron_boots,location=slot.armor.feet}]] run execute at @s[tag=!sidron_armor_full] positioned as @s run tag @s add sidron_armor_full
execute as @a[hasitem={item=tera:sidron_helmet,location=slot.armor.head,quantity=0}] run execute at @s[tag=sidron_armor_full] positioned as @s run tag @s remove sidron_armor_full
execute as @a[hasitem={item=tera:sidron_chestplate,location=slot.armor.chest,quantity=0}] run execute at @s[tag=sidron_armor_full] positioned as @s run tag @s remove sidron_armor_full
execute as @a[hasitem={item=tera:sidron_leggings,location=slot.armor.legs,quantity=0}] run execute at @s[tag=sidron_armor_full] positioned as @s run tag @s remove sidron_armor_full
execute as @a[hasitem={item=tera:sidron_boots,location=slot.armor.feet,quantity=0}] run execute at @s[tag=sidron_armor_full] positioned as @s run tag @s remove sidron_armor_full

execute as @a[tag=sidron_armor_full] run execute at @s[tag=!sidron_armor] positioned as @s run tag @s add sidron_armor
execute as @a[hasitem={item=tera:sidron_helmet,location=slot.weapon.mainhand}] run execute at @s positioned as @s run enchant @s thorns 1
execute as @a[hasitem={item=tera:sidron_chestplate,location=slot.weapon.mainhand}] run execute at @s positioned as @s run enchant @s thorns 1
execute as @a[hasitem={item=tera:sidron_leggings,location=slot.weapon.mainhand}] run execute at @s positioned as @s run enchant @s thorns 1
execute as @a[hasitem={item=tera:sidron_boots,location=slot.weapon.mainhand}] run execute at @s positioned as @s run enchant @s thorns 1
execute as @a[tag=sidron_armor_full] run execute at @s[tag=sidron_armor] positioned as @s run tag @s add frostpotion
execute as @a[tag=!sidron_armor_full] run execute at @s[tag=sidron_armor] positioned as @s run tag @s remove frostpotion
execute as @a[tag=!sidron_armor_full] run execute at @s[tag=sidron_armor] positioned as @s run tag @s remove sidron_armor


#solos Armor
execute as @a[hasitem=[{item=tera:solos_helmet,location=slot.armor.head},{item=tera:solos_chestplate,location=slot.armor.chest},{item=tera:solos_leggings,location=slot.armor.legs},{item=tera:solos_boots,location=slot.armor.feet}]] run execute at @s[tag=!solos_armor_full] positioned as @s run tag @s add solos_armor_full
execute as @a[hasitem={item=tera:solos_helmet,location=slot.armor.head,quantity=0}] run execute at @s[tag=solos_armor_full] positioned as @s run tag @s remove solos_armor_full
execute as @a[hasitem={item=tera:solos_chestplate,location=slot.armor.chest,quantity=0}] run execute at @s[tag=solos_armor_full] positioned as @s run tag @s remove solos_armor_full
execute as @a[hasitem={item=tera:solos_leggings,location=slot.armor.legs,quantity=0}] run execute at @s[tag=solos_armor_full] positioned as @s run tag @s remove solos_armor_full
execute as @a[hasitem={item=tera:solos_boots,location=slot.armor.feet,quantity=0}] run execute at @s[tag=solos_armor_full] positioned as @s run tag @s remove solos_armor_full

execute as @a[tag=solos_armor_full] run execute at @s[tag=!solos_armor] positioned as @s run tag @s add solos_armor
execute as @a[tag=solos_armor_full] run execute at @s[tag=solos_armor] positioned as @s run effect @s slowness 0 0
execute as @a[tag=solos_armor_full] run execute at @s[tag=solos_armor] positioned as @s run effect @s wither 0 0
execute as @a[tag=solos_armor_full] run execute at @s[tag=solos_armor] positioned as @s run effect @s poison 0 0
execute as @a[tag=solos_armor_full] run execute at @s[tag=solos_armor] positioned as @s run effect @s fatal_poison 0 0
execute as @a[tag=solos_armor_full] run execute at @s[tag=solos_armor] positioned as @s run tag @s[scores={tera_sneak=1}] add smokepotion
execute as @a[tag=solos_armor_full] run execute at @s[tag=solos_armor] positioned as @s run tag @s[scores={tera_sneak=0}] remove smokepotion
execute as @a[tag=!solos_armor_full] run execute at @s[tag=solos_armor] positioned as @s run tag @s remove smokepotion
execute as @a[tag=!solos_armor_full] run execute at @s[tag=solos_armor] positioned as @s run tag @s remove solos_armor


#damnashin Armor
execute as @a[hasitem=[{item=tera:damnashin_helmet,location=slot.armor.head},{item=tera:damnashin_chestplate,location=slot.armor.chest},{item=tera:damnashin_leggings,location=slot.armor.legs},{item=tera:damnashin_boots,location=slot.armor.feet}]] run execute at @s[tag=!damnashin_armor_full] positioned as @s run tag @s add damnashin_armor_full
execute as @a[hasitem={item=tera:damnashin_helmet,location=slot.armor.head,quantity=0}] run execute at @s[tag=damnashin_armor_full] positioned as @s run tag @s remove damnashin_armor_full
execute as @a[hasitem={item=tera:damnashin_chestplate,location=slot.armor.chest,quantity=0}] run execute at @s[tag=damnashin_armor_full] positioned as @s run tag @s remove damnashin_armor_full
execute as @a[hasitem={item=tera:damnashin_leggings,location=slot.armor.legs,quantity=0}] run execute at @s[tag=damnashin_armor_full] positioned as @s run tag @s remove damnashin_armor_full
execute as @a[hasitem={item=tera:damnashin_boots,location=slot.armor.feet,quantity=0}] run execute at @s[tag=damnashin_armor_full] positioned as @s run tag @s remove damnashin_armor_full

execute as @a[tag=damnashin_armor_full] run execute at @s[tag=!damnashin_armor] positioned as @s run tag @s add damnashin_armor
execute as @a[tag=damnashin_armor_full] run execute at @s[tag=damnashin_armor] positioned as @s run effect @s fire_resistance 1 0 true
execute as @a[tag=damnashin_armor_full] run execute at @s[tag=damnashin_armor] positioned as @s run execute as @s if block ~ ~ ~ fire [] run effect @s regeneration 1 1
execute as @a[tag=damnashin_armor_full] run execute at @s[tag=damnashin_armor] positioned as @s run execute as @s if block ~ ~ ~ lava [] run effect @s regeneration 1 1
execute as @a[tag=damnashin_armor_full] run execute at @s[tag=damnashin_armor] positioned as @s run execute as @s if block ~ ~ ~ flowing_lava [] run effect @s regeneration 1 1
execute as @a[tag=damnashin_armor_full] run execute at @s[tag=damnashin_armor] positioned as @s run tag @s add sunpotion
execute as @a[tag=damnashin_armor_full] run execute at @s[tag=damnashin_armor] positioned as @s run tag @s add hellpotion
execute as @a[tag=!damnashin_armor_full] run execute at @s[tag=damnashin_armor] positioned as @s run tag @s remove sunpotion
execute as @a[tag=!damnashin_armor_full] run execute at @s[tag=damnashin_armor] positioned as @s run tag @s remove hellpotion
execute as @a[tag=!damnashin_armor_full] run execute at @s[tag=damnashin_armor] positioned as @s run tag @s remove damnashin_armor


#godsteel Armor
execute as @a[hasitem=[{item=tera:godsteel_helmet,location=slot.armor.head},{item=tera:godsteel_chestplate,location=slot.armor.chest},{item=tera:godsteel_leggings,location=slot.armor.legs},{item=tera:godsteel_boots,location=slot.armor.feet}]] run execute at @s[tag=!godsteel_armor_full] positioned as @s run tag @s add godsteel_armor_full
execute as @a[hasitem={item=tera:godsteel_helmet,location=slot.armor.head,quantity=0}] run execute at @s[tag=godsteel_armor_full] positioned as @s run tag @s remove godsteel_armor_full
execute as @a[hasitem={item=tera:godsteel_chestplate,location=slot.armor.chest,quantity=0}] run execute at @s[tag=godsteel_armor_full] positioned as @s run tag @s remove godsteel_armor_full
execute as @a[hasitem={item=tera:godsteel_leggings,location=slot.armor.legs,quantity=0}] run execute at @s[tag=godsteel_armor_full] positioned as @s run tag @s remove godsteel_armor_full
execute as @a[hasitem={item=tera:godsteel_boots,location=slot.armor.feet,quantity=0}] run execute at @s[tag=godsteel_armor_full] positioned as @s run tag @s remove godsteel_armor_full

execute as @a[tag=godsteel_armor_full] run execute at @s[tag=!godsteel_armor] positioned as @s run tag @s add godsteel_armor
execute as @a[tag=godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run effect @s saturation 1 1 true
execute as @a[tag=godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run effect @s regeneration 1 1 true
execute as @a[tag=godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run effect @s darkness 0 0
execute as @a[tag=godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run effect @s blindness 0 0
execute as @a[tag=godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run effect @s fatal_poison 0 0
execute as @a[tag=godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run effect @s hunger 0 0
execute as @a[tag=godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run effect @s mining_fatigue 0 0
execute as @a[tag=godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run effect @s nausea 0 0
execute as @a[tag=godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run effect @s poison 0 0
execute as @a[tag=godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run effect @s slowness 0 0
execute as @a[tag=godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run effect @s weakness 0 0
execute as @a[tag=godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run effect @s wither 0 0
execute as @a[tag=godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run tag @s add soulvisionpotion
execute as @a[tag=!godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run tag @s remove soulvisionpotion
execute as @a[tag=!godsteel_armor_full] run execute at @s[tag=godsteel_armor] positioned as @s run tag @s remove godsteel_armor
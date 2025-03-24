
scoreboard objectives add soul_dim_m dummy
scoreboard players add @a soul_dim_m 0
scoreboard players remove @a[scores={soul_dim_m=1..}] soul_dim_m 1
tag @a[scores={soul_dim_m=..2}] remove soul_dim_playd
execute as @a[tag=soul_dim_comp] run execute at @s positioned as @s run execute as @s[tag=!soul_dim_playd] positioned as @s run playsound music.soul_dimension @s[scores={soul_dim_m=0}]
execute as @a[tag=soul_dim_comp] run execute at @s positioned as @s run execute as @s[tag=!soul_dim_playd] positioned as @s run stopsound @s[scores={soul_dim_m=0}] music.soul_dimension
execute as @a[tag=soul_dim_comp] run execute at @s positioned as @s run execute as @s[tag=!soul_dim_playd] positioned as @s run playsound music.soul_dimension @s[scores={soul_dim_m=0}]
execute as @a[tag=soul_dim_comp] run execute at @s positioned as @s run execute as @s[tag=!soul_dim_playd] positioned as @s run scoreboard players add @s[scores={soul_dim_m=0}] soul_dim_m 4420
execute as @a[tag=soul_dim_comp] run execute at @s positioned as @s run execute as @s[tag=!soul_dim_playd] positioned as @s run tag @s add soul_dim_playd
execute as @a[tag=soul_dim_comp] run execute at @s positioned as @s run execute as @s[tag=soul_dim_playd] positioned as @s run stopsound @s music.game.end
execute as @a run execute at @s positioned as @s run execute as @s positioned as @s run stopsound @s[scores={soul_dim_m=..4}] music.soul_dimension
execute as @a[tag=!soul_dim_comp] run execute at @s positioned as @s run execute as @s positioned as @s run scoreboard players set @s soul_dim_m 0

scoreboard objectives add underworld_m dummy
scoreboard players add @a underworld_m 0
scoreboard players remove @a[scores={underworld_m=1..}] underworld_m 1
tag @a[scores={underworld_m=..2}] remove underworld_playd
execute as @a[tag=underworld_comp] run execute at @s positioned as @s run execute as @s[tag=!underworld_playd] positioned as @s run playsound music.underworld @s[scores={underworld_m=0}]
execute as @a[tag=underworld_comp] run execute at @s positioned as @s run execute as @s[tag=!underworld_playd] positioned as @s run stopsound @s[scores={underworld_m=0}] music.underworld
execute as @a[tag=underworld_comp] run execute at @s positioned as @s run execute as @s[tag=!underworld_playd] positioned as @s run playsound music.underworld @s[scores={underworld_m=0}]
execute as @a[tag=underworld_comp] run execute at @s positioned as @s run execute as @s[tag=!underworld_playd] positioned as @s run scoreboard players add @s[scores={underworld_m=0}] underworld_m 4420
execute as @a[tag=underworld_comp] run execute at @s positioned as @s run execute as @s[tag=!underworld_playd] positioned as @s run tag @s add underworld_playd
execute as @a[tag=underworld_comp] run execute at @s positioned as @s run execute as @s[tag=underworld_playd] positioned as @s run stopsound @s music.game.end
execute as @a run execute at @s positioned as @s run execute as @s positioned as @s run stopsound @s[scores={underworld_m=..4}] music.underworld
execute as @a[tag=!underworld_comp] run execute at @s positioned as @s run execute as @s positioned as @s run scoreboard players set @s underworld_m 0

scoreboard objectives add limbo_m dummy
scoreboard players add @a limbo_m 0
scoreboard players remove @a[scores={limbo_m=1..}] limbo_m 1
tag @a[scores={limbo_m=..2}] remove limbo_playd
execute as @a[tag=limbo_comp] run execute at @s positioned as @s run execute as @s[tag=!limbo_playd] positioned as @s run playsound music.limbo @s[scores={limbo_m=0}]
execute as @a[tag=limbo_comp] run execute at @s positioned as @s run execute as @s[tag=!limbo_playd] positioned as @s run stopsound @s[scores={limbo_m=0}] music.limbo
execute as @a[tag=limbo_comp] run execute at @s positioned as @s run execute as @s[tag=!limbo_playd] positioned as @s run playsound music.limbo @s[scores={limbo_m=0}]
execute as @a[tag=limbo_comp] run execute at @s positioned as @s run execute as @s[tag=!limbo_playd] positioned as @s run scoreboard players add @s[scores={limbo_m=0}] limbo_m 4420
execute as @a[tag=limbo_comp] run execute at @s positioned as @s run execute as @s[tag=!limbo_playd] positioned as @s run tag @s add limbo_playd
execute as @a[tag=limbo_comp] run execute at @s positioned as @s run execute as @s[tag=limbo_playd] positioned as @s run stopsound @s music.game.end
execute as @a run execute at @s positioned as @s run execute as @s positioned as @s run stopsound @s[scores={limbo_m=..4}] music.limbo
execute as @a[tag=!limbo_comp] run execute at @s positioned as @s run execute as @s positioned as @s run scoreboard players set @s limbo_m 0


execute as @e[type=tera:soul_knight] run execute at @s positioned as @s run execute as @a[r=80] run execute at @s[m=!c] positioned as @s run scoreboard players set @s fall_per_comp 3
scoreboard objectives add fall_per_comp dummy
scoreboard players add @a fall_per_comp 0
scoreboard players remove @a[scores={fall_per_comp=1..}] fall_per_comp 1
tag @a[scores={fall_per_comp=0}] remove fall_per_comp
tag @a[scores={fall_per_comp=1..}] add fall_per_comp
scoreboard objectives add fall_per_m dummy
scoreboard players add @a fall_per_m 0
scoreboard players remove @a[scores={fall_per_m=1..}] fall_per_m 1
tag @a[scores={fall_per_m=..2}] remove fall_per_playd
execute as @a[tag=fall_per_comp] run execute at @s positioned as @s run execute as @s[tag=!fall_per_playd] positioned as @s run playsound music.fallen_perishment @s[scores={fall_per_m=0}]
execute as @a[tag=fall_per_comp] run execute at @s positioned as @s run execute as @s[tag=!fall_per_playd] positioned as @s run stopsound @s[scores={fall_per_m=0}] music.fallen_perishment
execute as @a[tag=fall_per_comp] run execute at @s positioned as @s run execute as @s[tag=!fall_per_playd] positioned as @s run playsound music.fallen_perishment @s[scores={fall_per_m=0}]
execute as @a[tag=fall_per_comp] run execute at @s positioned as @s run execute as @s[tag=!fall_per_playd] positioned as @s run scoreboard players add @s[scores={fall_per_m=0}] fall_per_m 1860
execute as @a[tag=fall_per_comp] run execute at @s positioned as @s run execute as @s[tag=!fall_per_playd] positioned as @s run tag @s add fall_per_playd
execute as @a[tag=fall_per_comp] run execute at @s positioned as @s run execute as @s[tag=fall_per_playd] positioned as @s run stopsound @s music.game.end
execute as @a[tag=fall_per_comp] run execute at @s positioned as @s run execute as @s[tag=fall_per_playd] positioned as @s run stopsound @s music.limbo
execute as @a run execute at @s positioned as @s run execute as @s positioned as @s run stopsound @s[scores={fall_per_m=..4}] music.fallen_perishment
execute as @a[tag=!fall_per_comp] run execute at @s positioned as @s run execute as @s positioned as @s run scoreboard players set @s fall_per_m 0
stopsound @a[tag=!fall_per_comp] music.fallen_perishment


execute as @e[type=tera:reaper] run execute at @s[tag=!r_phase2] positioned as @s run execute as @a[r=80] run execute at @s[m=!c] positioned as @s run scoreboard players set @s witherin_comp 3
scoreboard objectives add witherin_comp dummy
scoreboard players add @a witherin_comp 0
scoreboard players remove @a[scores={witherin_comp=1..}] witherin_comp 1
tag @a[scores={witherin_comp=0}] remove witherin_comp
tag @a[scores={witherin_comp=1..}] add witherin_comp
scoreboard objectives add witherin_m dummy
scoreboard players add @a witherin_m 0
scoreboard players remove @a[scores={witherin_m=1..}] witherin_m 1
tag @a[scores={witherin_m=..2}] remove witherin_playd
execute as @a[tag=witherin_comp] run execute at @s positioned as @s run execute as @s[tag=!witherin_playd] positioned as @s run playsound music.withering @s[scores={witherin_m=0}]
execute as @a[tag=witherin_comp] run execute at @s positioned as @s run execute as @s[tag=!witherin_playd] positioned as @s run stopsound @s[scores={witherin_m=0}] music.withering
execute as @a[tag=witherin_comp] run execute at @s positioned as @s run execute as @s[tag=!witherin_playd] positioned as @s run playsound music.withering @s[scores={witherin_m=0}]
execute as @a[tag=witherin_comp] run execute at @s positioned as @s run execute as @s[tag=!witherin_playd] positioned as @s run scoreboard players add @s[scores={witherin_m=0}] witherin_m 2000
execute as @a[tag=witherin_comp] run execute at @s positioned as @s run execute as @s[tag=!witherin_playd] positioned as @s run tag @s add witherin_playd
execute as @a[tag=witherin_comp] run execute at @s positioned as @s run execute as @s[tag=witherin_playd] positioned as @s run stopsound @s music.game.end
execute as @a[tag=witherin_comp] run execute at @s positioned as @s run execute as @s[tag=witherin_playd] positioned as @s run stopsound @s music.soul_dimension
execute as @a run execute at @s positioned as @s run execute as @s positioned as @s run stopsound @s[scores={witherin_m=..4}] music.withering
execute as @a[tag=!witherin_comp] run execute at @s positioned as @s run execute as @s positioned as @s run scoreboard players set @s witherin_m 0
stopsound @a[tag=!witherin_comp] music.withering


execute as @e[type=tera:reaper] run execute at @s[tag=r_phase2_m] positioned as @s run execute as @a[r=80] run execute at @s[m=!c] positioned as @s run scoreboard players set @s idol_aba_comp 3
scoreboard objectives add idol_aba_comp dummy
scoreboard players add @a idol_aba_comp 0
scoreboard players remove @a[scores={idol_aba_comp=1..}] idol_aba_comp 1
tag @a[scores={idol_aba_comp=0}] remove idol_aba_comp
tag @a[scores={idol_aba_comp=1..}] add idol_aba_comp
scoreboard objectives add idol_aba_m dummy
scoreboard players add @a idol_aba_m 0
scoreboard players remove @a[scores={idol_aba_m=1..}] idol_aba_m 1
tag @a[scores={idol_aba_m=..2}] remove idol_aba_playd
execute as @a[tag=idol_aba_comp] run execute at @s positioned as @s run execute as @s[tag=!idol_aba_playd] positioned as @s run playsound music.idol_abandoned @s[scores={idol_aba_m=0}]
execute as @a[tag=idol_aba_comp] run execute at @s positioned as @s run execute as @s[tag=!idol_aba_playd] positioned as @s run stopsound @s[scores={idol_aba_m=0}] music.idol_abandoned
execute as @a[tag=idol_aba_comp] run execute at @s positioned as @s run execute as @s[tag=!idol_aba_playd] positioned as @s run playsound music.idol_abandoned @s[scores={idol_aba_m=0}]
execute as @a[tag=idol_aba_comp] run execute at @s positioned as @s run execute as @s[tag=!idol_aba_playd] positioned as @s run scoreboard players add @s[scores={idol_aba_m=0}] idol_aba_m 7160
execute as @a[tag=idol_aba_comp] run execute at @s positioned as @s run execute as @s[tag=!idol_aba_playd] positioned as @s run tag @s add idol_aba_playd
execute as @a[tag=idol_aba_comp] run execute at @s positioned as @s run execute as @s[tag=idol_aba_playd] positioned as @s run stopsound @s music.game.end
execute as @a[tag=idol_aba_comp] run execute at @s positioned as @s run execute as @s[tag=idol_aba_playd] positioned as @s run stopsound @s music.soul_dimension
execute as @a run execute at @s positioned as @s run execute as @s positioned as @s run stopsound @s[scores={idol_aba_m=..4}] music.idol_abandoned
execute as @a[tag=!idol_aba_comp] run execute at @s positioned as @s run execute as @s positioned as @s run scoreboard players set @s idol_aba_m 0
stopsound @a[tag=!idol_aba_comp] music.idol_abandoned


execute as @e[type=tera:soul_storm] run execute at @s positioned as @s run execute as @a[r=99] run execute at @s positioned as @s run scoreboard players set @s soulstor_comp 3
scoreboard objectives add soulstor_comp dummy
scoreboard players add @a soulstor_comp 0
scoreboard players remove @a[scores={soulstor_comp=1..}] soulstor_comp 1
tag @a[scores={soulstor_comp=0}] remove soulstor_comp
tag @a[scores={soulstor_comp=1..}] add soulstor_comp
scoreboard objectives add soulstor_m dummy
scoreboard players add @a soulstor_m 0
scoreboard players remove @a[scores={soulstor_m=1..}] soulstor_m 1
tag @a[scores={soulstor_m=..2}] remove soulstor_playd
execute as @a[tag=soulstor_comp] run execute at @s positioned as @s run execute as @s[tag=!soulstor_playd] positioned as @s run playsound music.soul_storm @s[scores={soulstor_m=0}]
execute as @a[tag=soulstor_comp] run execute at @s positioned as @s run execute as @s[tag=!soulstor_playd] positioned as @s run stopsound @s[scores={soulstor_m=0}] music.soul_storm
execute as @a[tag=soulstor_comp] run execute at @s positioned as @s run execute as @s[tag=!soulstor_playd] positioned as @s run playsound music.soul_storm @s[scores={soulstor_m=0}]
execute as @a[tag=soulstor_comp] run execute at @s positioned as @s run execute as @s[tag=!soulstor_playd] positioned as @s run scoreboard players add @s[scores={soulstor_m=0}] soulstor_m 4880
execute as @a[tag=soulstor_comp] run execute at @s positioned as @s run execute as @s[tag=!soulstor_playd] positioned as @s run tag @s add soulstor_playd
execute as @a[tag=soulstor_comp] run execute at @s positioned as @s run execute as @s[tag=soulstor_playd] positioned as @s run stopsound @s music.underworld
execute as @a[tag=soulstor_comp] run execute at @s positioned as @s run execute as @s[tag=soulstor_playd] positioned as @s run stopsound @s music.soul_dimension
execute as @a[tag=soulstor_comp] run execute at @s positioned as @s run execute as @s[tag=soulstor_playd] positioned as @s run stopsound @s music.limbo
execute as @a[tag=soulstor_comp] run execute at @s positioned as @s run execute as @s[tag=soulstor_playd] positioned as @s run stopsound @s music.withering
execute as @a[tag=soulstor_comp] run execute at @s positioned as @s run execute as @s[tag=soulstor_playd] positioned as @s run stopsound @s music.fallen_perishment
execute as @a[tag=soulstor_comp] run execute at @s positioned as @s run execute as @s[tag=soulstor_playd] positioned as @s run function quit_musical
execute as @a run execute at @s positioned as @s run execute as @s positioned as @s run stopsound @s[scores={soulstor_m=..4}] music.soul_storm
execute as @a[tag=!soulstor_comp] run execute at @s positioned as @s run execute as @s positioned as @s run scoreboard players set @s soulstor_m 0
stopsound @a[tag=!soulstor_comp] music.soul_storm





execute as @e[type=tera:soul_storm_small] run execute at @s positioned as @s run execute as @a[r=75] run execute at @s positioned as @s run scoreboard players set @s ssolstor_comp 3
scoreboard objectives add ssolstor_comp dummy
scoreboard players add @a ssolstor_comp 0
scoreboard players remove @a[scores={ssolstor_comp=1..}] ssolstor_comp 1
tag @a[scores={ssolstor_comp=0}] remove ssolstor_comp
tag @a[scores={ssolstor_comp=1..}] add ssolstor_comp
scoreboard objectives add ssolstor_m dummy
scoreboard players add @a ssolstor_m 0
scoreboard players remove @a[scores={ssolstor_m=1..}] ssolstor_m 1
tag @a[scores={ssolstor_m=..2}] remove ssolstor_playd
execute as @a[tag=ssolstor_comp] run execute at @s positioned as @s run execute as @s[tag=!ssolstor_playd] positioned as @s run playsound music.soul_storm_small @s[scores={ssolstor_m=0}]
execute as @a[tag=ssolstor_comp] run execute at @s positioned as @s run execute as @s[tag=!ssolstor_playd] positioned as @s run stopsound @s[scores={ssolstor_m=0}] music.soul_storm_small
execute as @a[tag=ssolstor_comp] run execute at @s positioned as @s run execute as @s[tag=!ssolstor_playd] positioned as @s run playsound music.soul_storm_small @s[scores={ssolstor_m=0}]
execute as @a[tag=ssolstor_comp] run execute at @s positioned as @s run execute as @s[tag=!ssolstor_playd] positioned as @s run scoreboard players add @s[scores={ssolstor_m=0}] ssolstor_m 2320
execute as @a[tag=ssolstor_comp] run execute at @s positioned as @s run execute as @s[tag=!ssolstor_playd] positioned as @s run tag @s add ssolstor_playd
execute as @a[tag=ssolstor_comp] run execute at @s positioned as @s run execute as @s[tag=ssolstor_playd] positioned as @s run stopsound @s music.underworld
execute as @a[tag=ssolstor_comp] run execute at @s positioned as @s run execute as @s[tag=ssolstor_playd] positioned as @s run stopsound @s music.soul_dimension
execute as @a[tag=ssolstor_comp] run execute at @s positioned as @s run execute as @s[tag=ssolstor_playd] positioned as @s run stopsound @s music.limbo
execute as @a[tag=ssolstor_comp] run execute at @s positioned as @s run execute as @s[tag=ssolstor_playd] positioned as @s run stopsound @s music.withering
execute as @a[tag=ssolstor_comp] run execute at @s positioned as @s run execute as @s[tag=ssolstor_playd] positioned as @s run stopsound @s music.fallen_perishment
execute as @a[tag=ssolstor_comp] run execute at @s positioned as @s run execute as @s[tag=ssolstor_playd] positioned as @s run function quit_musical
execute as @a run execute at @s positioned as @s run execute as @s positioned as @s run stopsound @s[scores={ssolstor_m=..4}] music.soul_storm_small
execute as @a[tag=!ssolstor_comp] run execute at @s positioned as @s run execute as @s positioned as @s run scoreboard players set @s ssolstor_m 0
stopsound @a[tag=!ssolstor_comp] music.soul_storm_small

scoreboard players remove @a Range 1
particle minecraft:wax_off ~ ~ ~ 0.0 0.0 0.0 0 1 force

execute as @e[type=!player, dx=0] positioned ~-0.99 ~-.99 ~-0.99 if entity @s[dx=0] run scoreboard players set @a Range 0

execute if block ~ ~ ~ air positioned ^ ^ ^.3 unless entity @a[scores={Range=..0}] run function ray_cast:laser/ray-cast
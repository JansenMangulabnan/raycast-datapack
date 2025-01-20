particle minecraft:wax_off ~ ~1.7 ~ 0.0 0.0 0.0 0. 1 force

execute unless block ~ ~1.7 ~ void_air positioned ^ ^ ^.3 unless entity @e[dx=0, type=!player] run function ray_cast:laser/ray-cast
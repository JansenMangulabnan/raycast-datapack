execute if entity @e[distance=..2] run function ray_cast:sonic/hit_entity
execute positioned ^ ^ ^.3 unless block ~ ~ ~ air run function ray_cast:sonic/hit_block

execute unless block ~ ~ ~ void_air positioned ^ ^ ^.3 run function ray_cast:sonic/collision_check


# check block before entity
# execute if block ~ ~ ~ air positioned ^ ^ ^.3 unless entity @e[type=!player, type=!item, type=!item_frame, dx=0] run function laser:collision_check

# check entity before block
# execute unless entity @e[type=!player, type=!item, type=!item_frame, dx=0] positioned ^ ^ ^.1 if block ~ ~ ~ air run function laser:collision_check
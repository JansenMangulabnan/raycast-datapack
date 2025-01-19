particle sonic_boom ~ ~1.62 ~ 0.0 0.0 0.0 0 1 force @a

# execute unless entity @e[type=!player, type=!item, type=!item_frame] positioned ^ ^ ^1.5 if block ~ ~ ~ air run function laser:laser
execute if block ~ ~1.62 ~ air positioned ^ ^ ^2 run function laser:laser


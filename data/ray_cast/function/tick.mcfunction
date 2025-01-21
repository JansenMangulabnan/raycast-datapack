# raycast 1 detection
scoreboard players set @a[scores={Range=..0}] Range 10
execute at @a[scores={UseCarrot=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['1']}}}}] as @a at @a anchored eyes run function ray_cast:laser/ray-cast
scoreboard players set @a[scores={UseCarrot=1..}] UseCarrot 0

# sonic boom detector
execute as @a[scores={Sonic=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] as @s at @s anchored eyes run function ray_cast:sonic/collision_check
execute as @a[scores={Sonic=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] as @s at @s run function ray_cast:sonic/laser
execute as @a[scores={Sonic=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] as @a at @s run function ray_cast:sonic/sound
scoreboard players set @a[scores={Sonic=1..}] Sonic 0
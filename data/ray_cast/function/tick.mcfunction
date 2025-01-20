execute at @a[scores={UseCarrot=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['1']}}}}] run function ray_cast:laser/ray-cast
scoreboard players reset @a[scores={UseCarrot=1..}] UseCarrot

# sonic boom detector
execute as @a[scores={Sonic=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] as @s[scores={Sonic=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] at @s[scores={Sonic=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] anchored eyes run function ray_cast:sonic/collision_check
execute as @a[scores={Sonic=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] as @s[scores={Sonic=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] at @s[scores={Sonic=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] run function ray_cast:sonic/laser
execute as @a[scores={Sonic=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] as @a[scores={Sonic=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] at @s[scores={Sonic=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] run function ray_cast:sonic/sound

scoreboard players set @a[scores={Sonic=1..}] Sonic 0
execute at @a[scores={UseCarrot=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['1']}}}}] run function laser:ray-cast
scoreboard players reset @a[scores={UseCarrot=1..}] UseCarrot

execute as @a[tag=warden, scores={RayCast=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] as @s at @s anchored eyes run function laser:collision_check
execute as @a[tag=warden, scores={RayCast=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] as @s at @s run function laser:laser
execute as @a[tag=warden, scores={RayCast=1..}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", count:1, components:{"minecraft:custom_model_data":{strings:['2']}}}}] as @a at @s run function laser:sound
scoreboard players reset @a[scores={RayCast=1..}] RayCast
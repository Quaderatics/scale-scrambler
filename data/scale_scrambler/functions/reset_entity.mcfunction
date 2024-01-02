# execute this function as the entity to be scaled

attribute @s minecraft:generic.scale modifier remove 5-c-a-1-e
attribute @s minecraft:generic.movement_speed modifier remove 5-c-a-1-e
attribute @s minecraft:generic.step_height modifier remove 5-c-a-1-e
attribute @s minecraft:generic.block_interaction_range modifier remove 5-c-a-1-e
attribute @s minecraft:generic.entity_interaction_range modifier remove 5-c-a-1-e
effect clear @s minecraft:jump_boost
effect clear @s minecraft:haste
tag @s remove scale_chosen
tag @s remove scale_scaled

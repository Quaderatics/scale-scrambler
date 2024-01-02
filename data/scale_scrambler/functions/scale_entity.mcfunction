# execute this function as the entity to be scaled. target scale is determined
# by the `scale_next` scoreboard objective.

execute as @s run function scale_scrambler:reset_entity

scoreboard players operation @s scale_index = @s scale_next

# 0.5x
execute if score @s scale_index matches 0 as @s run \
  function scale_scrambler:set_attributes {scale:-0.5,range:0}
execute if entity @s[type=minecraft:player] \
  if score @s scale_index matches 0 as @s run \
  effect give @s minecraft:jump_boost infinite 254 true
execute if entity @s[type=!minecraft:player] \
  if score @s scale_index matches 0 as @s run \
  effect give @s minecraft:weakness infinite 0 true

# 0.75x
execute if score @s scale_index matches 1 as @s run \
  function scale_scrambler:set_attributes {scale:-0.25,range:0}
execute if entity @s[type=!minecraft:player] \
  if score @s scale_index matches 1 as @s run \
  effect give @s minecraft:weakness infinite 0 true

# 2x
execute if score @s scale_index matches 3 as @s run \
  function scale_scrambler:set_attributes {scale:1,range:1}
execute if entity @s[type=minecraft:player] \
  if score @s scale_index matches 3 as @s run \
  effect give @s minecraft:jump_boost infinite 1 true
execute if entity @s[type=minecraft:player] \
  if score @s scale_index matches 3 as @s run \
  effect give @s minecraft:haste infinite 19 true

# 3x
execute if score @s scale_index matches 4 as @s run \
  function scale_scrambler:set_attributes {scale:2,range:2}
execute if entity @s[type=minecraft:player] \
  if score @s scale_index matches 4 as @s run \
  effect give @s minecraft:jump_boost infinite 2 true
execute if entity @s[type=minecraft:player] \
  if score @s scale_index matches 4 as @s run \
  effect give @s minecraft:haste infinite 44 true

# 4x
execute if score @s scale_index matches 5 as @s run \
  function scale_scrambler:set_attributes {scale:3,range:3}
execute if entity @s[type=minecraft:player] \
  if score @s scale_index matches 5 as @s run \
  effect give @s minecraft:jump_boost infinite 3 true
execute if entity @s[type=minecraft:player] \
  if score @s scale_index matches 5 as @s run \
  effect give @s minecraft:haste infinite 79 true

tag @s add scale_scaled
tag @s remove scale_chosen

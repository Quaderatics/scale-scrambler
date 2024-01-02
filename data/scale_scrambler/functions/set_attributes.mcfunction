# execute this function as the entity to be scaled. assumes scale has been
# reset. for non-player entities, only the scale and step height attributes are
# modified. subtract 1 to account for the multiply operation (e.g. if scaling to
# 3x, use value 2).
#
# parameters:
# - scale: scale, movement speed, and step height modifier value
# - range: block and entity interaction range modifier value

$attribute @s minecraft:generic.scale modifier add \
  5-c-a-1-e scrambled $(scale) multiply
$attribute @s minecraft:generic.step_height modifier add \
  5-c-a-1-e scrambled $(scale) multiply

execute if entity @s[type=!minecraft:player] run return 0

$attribute @s minecraft:generic.movement_speed modifier add \
  5-c-a-1-e scrambled $(scale) multiply
$attribute @s minecraft:generic.block_interaction_range modifier add \
  5-c-a-1-e scrambled $(range) multiply
$attribute @s minecraft:generic.entity_interaction_range modifier add \
  5-c-a-1-e scrambled $(range) multiply

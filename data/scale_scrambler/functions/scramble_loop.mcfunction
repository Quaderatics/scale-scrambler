# inner loop of the `scramble` function

execute store result score @s scale_next run function rng:randint3

# if (greater than 5) or (equal to current scale) then repeat
execute unless score @s scale_next matches 0..5 \
  run scoreboard players operation @s scale_next = @s scale_index
execute if score @s scale_next = @s scale_index as @s \
  run function scale_scrambler:scramble_loop

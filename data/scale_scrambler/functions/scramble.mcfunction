# randomly sets `scale_next` on the executor. new value will be different from
# current value of `scale_index`.

execute as @s run function scale_scrambler:scramble_loop
tag @s add scale_chosen
tag @s remove scale_scaled
execute as @s run function scale_scrambler:alert_next_scale

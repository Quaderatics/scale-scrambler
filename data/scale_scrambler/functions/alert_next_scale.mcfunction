execute if score @s scale_next matches 0 as @s run function scale_scrambler:alert_next_scale_macro {multiplier:"0.5x"}
execute if score @s scale_next matches 1 as @s run function scale_scrambler:alert_next_scale_macro {multiplier:"0.75x"}
execute if score @s scale_next matches 2 as @s run function scale_scrambler:alert_next_scale_macro {multiplier:"1x"}
execute if score @s scale_next matches 3 as @s run function scale_scrambler:alert_next_scale_macro {multiplier:"2x"}
execute if score @s scale_next matches 4 as @s run function scale_scrambler:alert_next_scale_macro {multiplier:"3x"}
execute if score @s scale_next matches 5 as @s run function scale_scrambler:alert_next_scale_macro {multiplier:"4x"}

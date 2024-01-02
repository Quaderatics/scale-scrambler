# returns a random number in the range [0, 7] (3 bits)

scoreboard players set #rng_randint3 rng_val 0
execute if predicate rng:coin_flip run scoreboard players add #rng_randint3 rng_val 4
execute if predicate rng:coin_flip run scoreboard players add #rng_randint3 rng_val 2
execute if predicate rng:coin_flip run scoreboard players add #rng_randint3 rng_val 1
return run scoreboard players get #rng_randint3 rng_val

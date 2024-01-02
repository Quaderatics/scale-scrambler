# Scale Scrambler

A data pack for Minecraft Java Edition that randomizes the scale of players and mobs.

Supported versions: Snapshot 23w51b

## Usage

Install the data pack by downloading the `.zip` file in this repository and [adding it to your Minecraft world](https://minecraft.wiki/w/Data_pack#Usage). No configuration needed!

With the pack loaded, each player in the world has their scale randomized at 5-minute intervals. Possible scales range from 0.5x to 4x. Players are notified of their next scale factor in chat 30 seconds before the change occurs, so you have time to prepare. All mobs except for bosses (Ender Dragon and Wither) are also given a random scale when they spawn.

Some other attributes (movement speed, step height, and block/entity interaction range) are modified along with scale, and players also receive Jump Boost and Haste effects accordingly. I tried to make these aspects balanced among the different scale values; for example, at scales smaller than 1x, your speed, step height, and jump height are reduced, but your mining speed and reach are the normal values.

## Documentation

Resources:

- `minecraft` namespace
  - Adds functions to the `load` and `tick` tags
- `rng` namespace
  - Utility for generating random numbers
- `scale_scrambler` namespace
  - Main functionality of the data pack
  - `#scalable_mob` entity tag indicates which types of non-player entities can be scaled

Scoreboard:

- `scale_index` objective: Stores current scale
  - Mapping: 0, 1, 2, 3, 4, 5 => 0.5x, 0.75x, 1x, 2x, 3x, 4x
- `scale_next` objective: Stores next value of `scale_index`
- `scale_timer` objective: Timer counting down to next scale change
- `temp` objective: Temporary values
- `scale_chosen` tag: Marks players whose next scale has been chosen
- `scale_scaled` tag: Marks entities who have been scaled to their chosen scale

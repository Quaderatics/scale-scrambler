# sets action bar message of every player to show time left until next scale
# randomization. execute this function every tick.

scoreboard players operation #scale_timer_seconds scale_timer = #scale_timer_global scale_timer
scoreboard players operation #scale_timer_seconds scale_timer /= #const_tps scale_timer
scoreboard players operation #scale_timer_disp_sec scale_timer = #scale_timer_seconds scale_timer
scoreboard players add #scale_timer_disp_sec scale_timer 1
scoreboard players operation #scale_timer_minutes scale_timer = #scale_timer_disp_sec scale_timer
scoreboard players operation #scale_timer_minutes scale_timer /= #const_spm scale_timer
scoreboard players operation #scale_timer_disp_sec scale_timer %= #const_spm scale_timer

execute if score #scale_timer_disp_sec scale_timer matches 0..9 \
  run title @a actionbar ["Time until next scale scramble: ",{"color":"green","score":{"name":"#scale_timer_minutes","objective":"scale_timer"},"extra":[":0",{"score":{"name":"#scale_timer_disp_sec","objective":"scale_timer"}}]}]
execute if score #scale_timer_disp_sec scale_timer matches 0..9 \
  run return 0

title @a actionbar ["Time until next scale scramble: ",{"color":"green","score":{"name":"#scale_timer_minutes","objective":"scale_timer"},"extra":[":",{"score":{"name":"#scale_timer_disp_sec","objective":"scale_timer"}}]}]

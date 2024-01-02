scoreboard players remove #scale_timer_global scale_timer 1
function scale_scrambler:show_timer

execute if score #scale_timer_global scale_timer <= #scale_timer_alert_point scale_timer \
  as @a[tag=!scale_chosen] \
  run function scale_scrambler:scramble
execute if score #scale_timer_global scale_timer matches ..0 \
  as @a[tag=!scale_scaled] \
  run function scale_scrambler:scale_entity

execute as @e[type=#scale_scrambler:scalable_mob,tag=!scale_scaled] \
  run function scale_scrambler:scramble
execute as @e[type=#scale_scrambler:scalable_mob,tag=!scale_scaled] \
  run function scale_scrambler:scale_entity

execute if score #scale_timer_global scale_timer matches ..0 \
  run scoreboard players operation #scale_timer_global scale_timer = #scale_timer_max scale_timer

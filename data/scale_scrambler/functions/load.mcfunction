# scale_index: 0, 1, 2, 3, 4, 5 => scale 0.5, 0.75, 1, 2, 3, 4
# use the `scale_scaled` tag to mark entities who have been scaled
scoreboard objectives add scale_index dummy

# scale_next: next value of `scale_index` for players
# use the `scale_chosen` tag to mark players whose next scale has been chosen
scoreboard objectives add scale_next dummy

# scale_timer: time left until next player scale randomization (global)
# decrement each tick, execute `scale_entity` when <= 0
scoreboard objectives add scale_timer dummy

# alert at 30s
scoreboard players set #scale_timer_alert_point scale_timer 600
# randomize player scale every 5min
scoreboard players set #scale_timer_max scale_timer 6000

scoreboard players set #scale_timer_minutes scale_timer 0
scoreboard players set #scale_timer_seconds scale_timer 0
scoreboard players set #scale_timer_disp_sec scale_timer 0
scoreboard players set #const_tps scale_timer 20
scoreboard players set #const_spm scale_timer 60

scoreboard objectives add temp dummy

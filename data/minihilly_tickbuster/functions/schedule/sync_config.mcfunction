#> minihilly_tickbuster:schedule/sync_config
#@internal
# @context any

# cap target, unless overclocking is enabled
scoreboard players operation $mspt_target minihilly_tickbuster.math = $mspt_target minihilly_tickbuster.config
execute if score $mspt_target minihilly_tickbuster.math matches 51.. unless score $overclock minihilly_tickbuster.config matches 1.. run scoreboard players set $mspt_target tkb.math 50

#>
#@internal
#define score_holder $worldborder_target

# adjust target blocks
scoreboard players set $worldborder_target minihilly_tickbuster.math 59998968
scoreboard players operation $worldborder_target minihilly_tickbuster.math += $mspt_target minihilly_tickbuster.math

#> minihilly_tickbuster:install/create_fakeplayer_scoreboard
#       initializes fakeplayer values for minihilly_tickbuster
#@internal

scoreboard players add $installed minihilly_tickbuster.setup 1

# default oc (0), default target (20)
execute unless score $overclock minihilly_tickbuster.config matches -2147483648..2147483647 run scoreboard players set $overclock minihilly_tickbuster.config 0

#>
#   target mspt (milliseconds per tick)
#@internal
#define score_holder $mspt_target
execute unless score $mspt_target minihilly_tickbuster.config matches -2147483648..2147483647 run scoreboard players set $mspt_target minihilly_tickbuster.config 20
#> minihilly_tickbuster:install/create_scoreboard


#>
#@internal
#define objective minihilly_tickbuster.config
scoreboard objectives add minihilly_tickbuster.config dummy

#>
#@internal
#define objective minihilly_tickbuster.math
scoreboard objectives add minihilly_tickbuster.math dummy

#>
#   temporary value holder, used mostly for calculations within a single tick
#@internal
#define objective minihilly_tickbuster.temp
scoreboard objectives add minihilly_tickbuster.temp dummy
#>
#   value constants on fakeplayers, e.g. #1000 has a constant value of 1000
#@internal
#define objective minihilly_tickbuster.const
scoreboard objectives add minihilly_tickbuster.const dummy
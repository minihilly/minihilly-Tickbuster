#> minihilly_tickbuster:install
#       load function for minihilly_tickbuster datapack, ran on load.json
#@public

#>  
#   Stores a lot of fakeplayer values, check the fakeplayer info for more
#@internal
#define objective minihilly_tickbuster.setup
scoreboard objectives add minihilly_tickbuster.setup dummy {"text":"minihilly Tickbuster Setup","color":"red"}

#>
#   Used as a bool to check if a scoreboard objective exists or not
#@internal
#define score_holder $installed

#   check if datapack needs installing
execute unless score $installed minihilly_tickbuster.setup matches -2147483648.. run function minihilly_tickbuster:install/initialize
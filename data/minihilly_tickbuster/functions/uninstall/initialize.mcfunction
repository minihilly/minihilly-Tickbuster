#> minihilly_tickbuster:uninstall/initialize
# initializer for uninstalling this datapack
#@internal

#region msg
say UNINSTALL TICKBUSTER minihilly_tickbuster:uninstall/uninstall_init
#endregion

#region main
#   remove fakeplayer values
function minihilly_tickbuster:uninstall/remove_fakeplayer_scoreboard
#   remove entity values
    # none
#   remove scoreboard objectives
function minihilly_tickbuster:uninstall/remove_scoreboard
#endregion

# disable datapack
datapack disable "file/minihilly Tickbuster"
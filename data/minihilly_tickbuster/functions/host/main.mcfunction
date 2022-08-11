#> minihilly_tickbuster:host/main
# Main entry point into post-game simulation operations. At this point we have
# allowed the majority of the game simulation to run its course.
#
# @context host player

# Revoke the entire advancement again. Technically this isn't necessary, but if
# we don't do this here then it leads to a bunch of clent issues and log spam.
# See issue #1 on this bug tracker for details:
# https://github.com/Arcensoth/tickbuster-datapack/issues/1
advancement revoke @a only minihilly_tickbuster:internal/host

# Remove the host tag.
tag @s remove minihilly_tickbuster.host

# Run pre-loop handles.
function #minihilly_tickbuster:pre_loop

#>
#   scoreboard container for /worldborder get
#@internal
#define score_holder $worldborder_get

# Get an initial measurement.
execute store result score $worldborder_get minihilly_tickbuster.math run worldborder get

# Start the subtick loop... if we have any time to begin with.
execute if score $worldborder_get minihilly_tickbuster.math < $worldborder_target minihilly_tickbuster.math run function minihilly_tickbuster:host/subtick/loop

# Reset requests for next tick.
scoreboard players set $request minihilly_tickbuster.math 0

# Run post-loop handles.
function #minihilly_tickbuster:post_loop

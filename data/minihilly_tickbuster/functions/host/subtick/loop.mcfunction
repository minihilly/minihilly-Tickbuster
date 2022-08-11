#> minihilly_tickbuster:host/subtick/loop
#
# The heart of the sub-tick loop. This function runs recursively, calling itself
# along with all of the tagged functions.
#
# This processes continues indefinitely until either:
# 1. the configured sub-tick target time is reached; or
# 2. all of the votes have been depleted and the loop is broken.
#
# @context host player

# Run loop handles.
function #minihilly_tickbuster:loop

# Calculate how many milliseconds have passed within the current tick, by counting the number of blocks the worldborder has moved.
execute store result score $worldborder_get minihilly_tickbuster.math run worldborder get

# If we've still got time, keep looping.
execute if score $worldborder_get minihilly_tickbuster.math < $worldborder_target minihilly_tickbuster.math run function tickbuster:host/subtick/loop

# Otherwise, break out and let the tick run off.

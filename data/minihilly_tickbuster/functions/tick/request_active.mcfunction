#> minihilly_tickbuster:tick/request_active

# Locate a host for this tick.
function minihilly_tickbuster:host/locate

#>
#flags target as 'host' of the subtick scheduler (required for enter_block advancement trigger)
#@internal
#define tag minihilly_tickbuster.host

# If we found one, continue.
execute if entity @a[tag=minihilly_tickbuster.host] run function minihilly_tickbuster:host/found

# Otherwise, we have a problem.
execute unless entity @a[tag=minihilly_tickbuster.host] run function minihilly_tickbuster:host/missing

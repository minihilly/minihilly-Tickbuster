#> minihilly_tickbuster:host/locate
# Choose a suitable host player for this tick.
#
# NOTE Not all players are eligible to host.
# This is because only players who are not spectating and are within the build
# limit will activate the `enter_block` trigger.
#@context tick

# Remove the host tag in case anybody already has it.
tag @a[tag=minihilly_tickbuster.host] remove minihilly_tickbuster.host

# Only non-spectators are eligible to host.
execute as @a[gamemode=!spectator] at @s run tag @s add minihilly_tickbuster.eligible_host

# Assign host to a single eligible player.
tag @a[tag=minihilly_tickbuster.eligible_host, limit=1] add minihilly_tickbuster.host

# Remove the eligibility tag.
tag @a[tag=minihilly_tickbuster.eligible_host] remove minihilly_tickbuster.eligible_host

#> minihilly_tickbuster:host/missing
# @context tick

# Warn admins using the action bar.
title @a[tag=minihilly_tickbuster.admin] actionbar [{"text": "", "color": "red"}, {"text": "[mSubtick]", "color": "aqua"}, " Failed to find an eligible host player to start the sub-tick loop."]

# Reset requests for next tick.
scoreboard players set $request minihilly_tickbuster.math 0

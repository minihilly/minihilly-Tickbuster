#> minihilly_tickbuster:tick

# Call for requests.
function #minihilly_tickbuster:request

#   number of requests for the subtick function scheduling (and, therefore, enter_block trigger needs to be active)
#@internal
#define score_holder $request

# Don't do anything unless there are requests
execute if score $request minihilly_tickbuster.math matches 1.. run function minihilly_tickbuster:tick/request_active
# wipe out some blocks below and in front of the player
execute as @a[scores={y_pos=12..}] at @s run function gentleman-programmer:clear_row

# decrement the y position counter
# NOTE: this should probably reset y_pos to the player's current y-position.
# This might be needed in case the player hits a cavern and falls at which point
# the loop counter will no longer match the actual player's y-position, causing
# them to dig too deeply.
execute as @a[scores={y_pos=12..}] run scoreboard players remove @s y_pos 1

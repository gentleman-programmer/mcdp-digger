# wipe out some blocks below and in front of the player
execute as @a[scores={y_pos=12..}] at @s run function gentleman-programmer:clear_row

# decrement the y position counter
# NOTE: this should probably reset y_pos to the player's current y-position.
# This might be needed in case the player hits a cavern and falls at which point
# the loop counter will no longer match the actual player's y-position, causing
# them to dig too deeply.
execute as @a[scores={y_pos=12..}] run scoreboard players remove @s y_pos 1

# do something when the player right-clicks a carrot on a stick
execute as @a[scores={used_stick=1..}] at @s run tp ^ ^1 ^5
scoreboard players set @a[scores={used_stick=1..}] used_stick 0

# do something when the player right clicks a snowball
execute as @a[scores={used_snoball=1..}] at @s run function gentleman-programmer:raycast
scoreboard players set @a[scores={used_snoball=1..}] used_snoball 0

# do something when the player throws an egg
#execute as @e[type=minecraft:item,nbt={Item:{id: "minecraft:egg"}, OnGround: 1b}] at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1}

# look for diamonds
execute as @a at @s run function gentleman-programmer:probe_diamonds

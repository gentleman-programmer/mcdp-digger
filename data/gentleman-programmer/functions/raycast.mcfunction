# setblock ^ ^1 ^1 minecraft:stone
execute if block ~ ~ ~ air positioned ^ ^ ^1 run function gentleman-programmer:raycast
execute unless block ~ ~ ~ air run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:6}
#trident
execute as @e[type=minecraft:drowned,nbt={HandItems:[{id:"minecraft:diamond_sword"}]}] run data modify entity @s HandItems[0].id set value "minecraft:trident"
#lighting
execute as @e[type=lightning_bolt] positioned as @s run function flatunobtainables:lighting_strike
#husk
execute as @e[type=drowned] positioned as @s if block ~ ~-1 ~ sponge run summon husk ~ ~ ~
execute as @e[type=drowned] positioned as @s if block ~ ~-1 ~ sponge run tag @s add husk_conversion
execute as @e[tag=husk_conversion] positioned as @s run setblock ~ ~-1 ~ wet_sponge
execute as @e[tag=husk_conversion] run tp @s ~ -500 ~
#fishing guardian
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{"fishingSpawnType":"guardian"}}}] positioned as @s run summon item ~ ~ ~ {Tags:[fishingMomentumAdd],Age:5900,PickupDelay:32767,Item:{id:"minecraft:stone",Count:1b},Passengers:[{id:"minecraft:guardian"}]}
data modify entity @e[type=item,limit=1,sort=nearest,tag=fishingMomentumAdd] Motion set from entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{"fishingSpawnType":"guardian"}}}] Motion
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{"fishingSpawnType":"guardian"}}}]
#fishing squid
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{"fishingSpawnType":"squid"}}}] positioned as @s run summon item ~ ~ ~ {Tags:[fishingMomentumAdd],Age:5900,PickupDelay:32767,Item:{id:"minecraft:stone",Count:1b},Passengers:[{id:"minecraft:squid"}]}
data modify entity @e[type=item,limit=1,sort=nearest,tag=fishingMomentumAdd] Motion set from entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{"fishingSpawnType":"squid"}}}] Motion
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{"fishingSpawnType":"squid"}}}]
#fishing dolphin
execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{"fishingSpawnType":"dolphin"}}}] positioned as @s run summon item ~ ~ ~ {Tags:[fishingMomentumAdd],Age:5900,PickupDelay:32767,Item:{id:"minecraft:stone",Count:1b},Passengers:[{id:"minecraft:dolphin"}]}
data modify entity @e[type=item,limit=1,sort=nearest,tag=fishingMomentumAdd] Motion set from entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{"fishingSpawnType":"dolphin"}}}] Motion
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{"fishingSpawnType":"dolphin"}}}]
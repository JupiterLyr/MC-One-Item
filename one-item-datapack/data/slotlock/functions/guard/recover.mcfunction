# The caller has copied one illegal inventory item to storage.
# Remove the player-only slot field before turning the data into an item entity.
data remove storage slotlock:recovery item.Slot
execute at @s run summon item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Age:-32768s,PickupDelay:10s,Tags:["slotlock_recovery"]}
execute at @s run data modify entity @e[type=item,tag=slotlock_recovery,distance=..2,sort=nearest,limit=1] Item set from storage slotlock:recovery item
execute at @s run tag @e[type=item,tag=slotlock_recovery,distance=..2,sort=nearest,limit=1] remove slotlock_recovery
data remove storage slotlock:recovery item

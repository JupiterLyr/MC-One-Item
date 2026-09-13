# Repair only players whose inventory changed since the last audit.
execute as @a[scores={slotlock_dirty=1..}] run function slotlock:guard/audit_player

# Remove marked barriers that were dropped.
execute as @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{slotlock_blocked:1b}}}] run kill @s

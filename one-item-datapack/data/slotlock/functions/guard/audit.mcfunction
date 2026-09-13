# Repair only players whose inventory changed since the last audit.
execute as @a[scores={slotlock_dirty=1..}] run function slotlock:guard/audit_player

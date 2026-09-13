scoreboard objectives add slotlock_internal dummy
scoreboard objectives add slotlock_dirty dummy
scoreboard objectives add slotlock_drop_watch dummy
scoreboard players set #audit_timer slotlock_internal 0
scoreboard players set @a slotlock_dirty 1
scoreboard players set @a slotlock_drop_watch 0
advancement revoke @a only slotlock:inventory_changed
execute as @a run function slotlock:info

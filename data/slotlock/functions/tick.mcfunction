# Show the introduction once for each player recognized by the pack.
execute as @a[tag=!slotlock_info_v1] run function slotlock:info

scoreboard players add #audit_timer slotlock_internal 1
execute if score #audit_timer slotlock_internal matches 20.. run function slotlock:guard/audit
execute if score #audit_timer slotlock_internal matches 20.. run scoreboard players set #audit_timer slotlock_internal 0

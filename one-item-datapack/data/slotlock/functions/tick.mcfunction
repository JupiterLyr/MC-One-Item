# Show the introduction once for each player recognized by the pack.
execute as @a[tag=!slotlock_info_v1] run function slotlock:info

# Watch nearby dropped marked knowledge books briefly after inventory activity.
execute as @a[scores={slotlock_drop_watch=1..}] at @s run kill @e[type=item,distance=..8,nbt={Item:{id:"minecraft:knowledge_book",tag:{slotlock_blocked:1b}}}]
scoreboard players remove @a[scores={slotlock_drop_watch=1..}] slotlock_drop_watch 1

scoreboard players add #audit_timer slotlock_internal 1
execute if score #audit_timer slotlock_internal matches 20.. run function slotlock:guard/audit
execute if score #audit_timer slotlock_internal matches 20.. run scoreboard players set #audit_timer slotlock_internal 0

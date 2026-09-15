# Remove marked knowledge books from the slots that are intentionally left usable.
execute if data entity @s Inventory[{Slot:4b,id:"minecraft:knowledge_book",tag:{slotlock_blocked:1b}}] run item replace entity @s hotbar.4 with air
execute if data entity @s Inventory[{Slot:100b,id:"minecraft:knowledge_book",tag:{slotlock_blocked:1b}}] run item replace entity @s armor.feet with air
execute if data entity @s Inventory[{Slot:101b,id:"minecraft:knowledge_book",tag:{slotlock_blocked:1b}}] run item replace entity @s armor.legs with air
execute if data entity @s Inventory[{Slot:102b,id:"minecraft:knowledge_book",tag:{slotlock_blocked:1b}}] run item replace entity @s armor.chest with air
execute if data entity @s Inventory[{Slot:103b,id:"minecraft:knowledge_book",tag:{slotlock_blocked:1b}}] run item replace entity @s armor.head with air
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:knowledge_book",tag:{slotlock_blocked:1b}}] run item replace entity @s weapon.offhand with air

# Save and drop an illegal item before restoring the knowledge book.
# Empty slots skip recovery and are filled directly.


# Main inventory slots 0-8.
execute unless data entity @s Inventory[{Slot:9b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_0
execute unless data entity @s Inventory[{Slot:10b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_1
execute unless data entity @s Inventory[{Slot:11b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_2
execute unless data entity @s Inventory[{Slot:12b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_3
execute unless data entity @s Inventory[{Slot:13b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_4
execute unless data entity @s Inventory[{Slot:14b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_5
execute unless data entity @s Inventory[{Slot:15b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_6
execute unless data entity @s Inventory[{Slot:16b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_7
execute unless data entity @s Inventory[{Slot:17b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_8

# Main inventory slots 9-17.
execute unless data entity @s Inventory[{Slot:18b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_9
execute unless data entity @s Inventory[{Slot:19b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_10
execute unless data entity @s Inventory[{Slot:20b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_11
execute unless data entity @s Inventory[{Slot:21b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_12
execute unless data entity @s Inventory[{Slot:22b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_13
execute unless data entity @s Inventory[{Slot:23b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_14
execute unless data entity @s Inventory[{Slot:24b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_15
execute unless data entity @s Inventory[{Slot:25b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_16
execute unless data entity @s Inventory[{Slot:26b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_17

# Main inventory slots 18-26.
execute unless data entity @s Inventory[{Slot:27b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_18
execute unless data entity @s Inventory[{Slot:28b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_19
execute unless data entity @s Inventory[{Slot:29b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_20
execute unless data entity @s Inventory[{Slot:30b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_21
execute unless data entity @s Inventory[{Slot:31b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_22
execute unless data entity @s Inventory[{Slot:32b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_23
execute unless data entity @s Inventory[{Slot:33b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_24
execute unless data entity @s Inventory[{Slot:34b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_25
execute unless data entity @s Inventory[{Slot:35b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/main_26

# Fill the protected hotbar slots. hotbar.4 is intentionally preserved.
execute unless data entity @s Inventory[{Slot:0b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/hotbar_0
execute unless data entity @s Inventory[{Slot:1b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/hotbar_1
execute unless data entity @s Inventory[{Slot:2b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/hotbar_2
execute unless data entity @s Inventory[{Slot:3b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/hotbar_3
execute unless data entity @s Inventory[{Slot:5b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/hotbar_5
execute unless data entity @s Inventory[{Slot:6b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/hotbar_6
execute unless data entity @s Inventory[{Slot:7b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/hotbar_7
execute unless data entity @s Inventory[{Slot:8b,id:"minecraft:knowledge_book",Count:1b,tag:{slotlock_blocked:1b}}] run function slotlock:guard/repair/hotbar_8

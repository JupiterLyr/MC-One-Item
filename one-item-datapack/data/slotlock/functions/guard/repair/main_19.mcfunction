execute if data entity @s Inventory[{Slot:28b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:28b}]
execute if data entity @s Inventory[{Slot:28b}] run function slotlock:guard/recover
item replace entity @s inventory.19 with minecraft:knowledge_book{CustomModelData:1,slotlock_blocked:1b,slotlock_slot:28,display:{Name:'{"text":" ","italic":false}'}}

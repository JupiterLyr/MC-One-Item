execute if data entity @s Inventory[{Slot:33b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:33b}]
execute if data entity @s Inventory[{Slot:33b}] run function slotlock:guard/recover
item replace entity @s inventory.24 with minecraft:knowledge_book{CustomModelData:1,slotlock_blocked:1b,slotlock_slot:33,display:{Name:'{"text":" ","italic":false}'}}

execute if data entity @s Inventory[{Slot:8b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:8b}]
execute if data entity @s Inventory[{Slot:8b}] run function slotlock:guard/recover
item replace entity @s hotbar.8 with minecraft:knowledge_book{CustomModelData:1,slotlock_blocked:1b,slotlock_slot:8,display:{Name:'{"text":" ","italic":false}'}}

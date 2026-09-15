execute if data entity @s Inventory[{Slot:7b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:7b}]
execute if data entity @s Inventory[{Slot:7b}] run function slotlock:guard/recover
item replace entity @s hotbar.7 with minecraft:knowledge_book{CustomModelData:1,slotlock_blocked:1b,slotlock_slot:7,display:{Name:'{"text":" ","italic":false}'}}

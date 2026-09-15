execute if data entity @s Inventory[{Slot:1b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:1b}]
execute if data entity @s Inventory[{Slot:1b}] run function slotlock:guard/recover
item replace entity @s hotbar.1 with minecraft:knowledge_book{CustomModelData:1,slotlock_blocked:1b,slotlock_slot:1,display:{Name:'{"text":" ","italic":false}'}}

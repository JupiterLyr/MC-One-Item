execute if data entity @s Inventory[{Slot:13b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:13b}]
execute if data entity @s Inventory[{Slot:13b}] run function slotlock:guard/recover
item replace entity @s inventory.4 with minecraft:knowledge_book{CustomModelData:1,slotlock_blocked:1b,slotlock_slot:13,display:{Name:'{"text":" ","italic":false}'}}

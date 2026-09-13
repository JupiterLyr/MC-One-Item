execute if data entity @s Inventory[{Slot:2b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:2b}]
execute if data entity @s Inventory[{Slot:2b}] run function slotlock:guard/recover
item replace entity @s hotbar.2 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b,display:{Name:'{"text":" ","italic":false}'}}

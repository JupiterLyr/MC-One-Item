execute if data entity @s Inventory[{Slot:22b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:22b}]
execute if data entity @s Inventory[{Slot:22b}] run function slotlock:guard/recover
item replace entity @s inventory.13 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b,display:{Name:'{"text":" ","italic":false}'}}

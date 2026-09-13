execute if data entity @s Inventory[{Slot:19b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:19b}]
execute if data entity @s Inventory[{Slot:19b}] run function slotlock:guard/recover
item replace entity @s inventory.10 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b,display:{Name:'{"text":" ","italic":false}'}}

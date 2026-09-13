execute if data entity @s Inventory[{Slot:6b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:6b}]
execute if data entity @s Inventory[{Slot:6b}] run function slotlock:guard/recover
item replace entity @s hotbar.6 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b,display:{Name:'{"text":" ","italic":false}'}}

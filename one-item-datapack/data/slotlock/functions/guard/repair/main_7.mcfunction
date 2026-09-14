execute if data entity @s Inventory[{Slot:16b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:16b}]
execute if data entity @s Inventory[{Slot:16b}] run function slotlock:guard/recover
item replace entity @s inventory.7 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b,CanPlaceOn:[],slotlock_slot:16,display:{Name:'{"text":" ","italic":false}'}}

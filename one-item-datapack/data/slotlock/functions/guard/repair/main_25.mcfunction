execute if data entity @s Inventory[{Slot:34b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:34b}]
execute if data entity @s Inventory[{Slot:34b}] run function slotlock:guard/recover
item replace entity @s inventory.25 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b,CanPlaceOn:[],slotlock_slot:34,display:{Name:'{"text":" ","italic":false}'}}

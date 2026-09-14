execute if data entity @s Inventory[{Slot:23b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:23b}]
execute if data entity @s Inventory[{Slot:23b}] run function slotlock:guard/recover
item replace entity @s inventory.14 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b,CanPlaceOn:[],slotlock_slot:23,display:{Name:'{"text":" ","italic":false}'}}

execute if data entity @s Inventory[{Slot:33b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:33b}]
execute if data entity @s Inventory[{Slot:33b}] run function slotlock:guard/recover
item replace entity @s inventory.24 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b,CanPlaceOn:[],slotlock_slot:33,display:{Name:'{"text":" ","italic":false}'}}

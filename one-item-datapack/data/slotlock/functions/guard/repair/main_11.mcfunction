execute if data entity @s Inventory[{Slot:20b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:20b}]
execute if data entity @s Inventory[{Slot:20b}] run function slotlock:guard/recover
item replace entity @s inventory.11 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b,CanPlaceOn:[],slotlock_slot:20,display:{Name:'{"text":" ","italic":false}'}}

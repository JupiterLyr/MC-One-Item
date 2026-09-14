execute if data entity @s Inventory[{Slot:24b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:24b}]
execute if data entity @s Inventory[{Slot:24b}] run function slotlock:guard/recover
item replace entity @s inventory.15 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b,CanPlaceOn:[],slotlock_slot:24,display:{Name:'{"text":" ","italic":false}'}}

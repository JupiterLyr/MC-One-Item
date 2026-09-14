execute if data entity @s Inventory[{Slot:25b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:25b}]
execute if data entity @s Inventory[{Slot:25b}] run function slotlock:guard/recover
item replace entity @s inventory.16 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b,CanPlaceOn:[],slotlock_slot:25,display:{Name:'{"text":" ","italic":false}'}}

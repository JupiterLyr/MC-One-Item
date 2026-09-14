execute if data entity @s Inventory[{Slot:3b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:3b}]
execute if data entity @s Inventory[{Slot:3b}] run function slotlock:guard/recover
item replace entity @s hotbar.3 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b,CanPlaceOn:[],slotlock_slot:3,display:{Name:'{"text":" ","italic":false}'}}

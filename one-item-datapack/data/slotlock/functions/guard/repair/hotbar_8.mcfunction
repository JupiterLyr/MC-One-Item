execute if data entity @s Inventory[{Slot:8b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:8b}]
execute if data entity @s Inventory[{Slot:8b}] run function slotlock:guard/recover
item replace entity @s hotbar.8 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b,CanPlaceOn:[],slotlock_slot:8,display:{Name:'{"text":" ","italic":false}'}}

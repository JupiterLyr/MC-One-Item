execute if data entity @s Inventory[{Slot:29b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:29b}]
execute if data entity @s Inventory[{Slot:29b}] run function slotlock:guard/recover
item replace entity @s inventory.20 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b,CanPlaceOn:[],slotlock_slot:29,display:{Name:'{"text":" ","italic":false}'}}

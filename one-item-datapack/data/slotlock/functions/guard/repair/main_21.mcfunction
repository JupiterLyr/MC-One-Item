execute if data entity @s Inventory[{Slot:30b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:30b}]
execute if data entity @s Inventory[{Slot:30b}] run function slotlock:guard/recover
item replace entity @s inventory.21 with minecraft:nether_star{CustomModelData:1,slotlock_blocked:1b,slotlock_slot:30,display:{Name:'{"text":" ","italic":false}'}}

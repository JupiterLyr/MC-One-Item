execute if data entity @s Inventory[{Slot:10b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:10b}]
execute if data entity @s Inventory[{Slot:10b}] run function slotlock:guard/recover
item replace entity @s inventory.1 with minecraft:nether_star{CustomModelData:1,slotlock_blocked:1b,slotlock_slot:10,display:{Name:'{"text":" ","italic":false}'}}

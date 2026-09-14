execute if data entity @s Inventory[{Slot:11b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:11b}]
execute if data entity @s Inventory[{Slot:11b}] run function slotlock:guard/recover
item replace entity @s inventory.2 with minecraft:nether_star{CustomModelData:1,slotlock_blocked:1b,slotlock_slot:11,display:{Name:'{"text":" ","italic":false}'}}

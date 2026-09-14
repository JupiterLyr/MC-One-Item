execute if data entity @s Inventory[{Slot:32b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:32b}]
execute if data entity @s Inventory[{Slot:32b}] run function slotlock:guard/recover
item replace entity @s inventory.23 with minecraft:nether_star{CustomModelData:1,slotlock_blocked:1b,slotlock_slot:32,display:{Name:'{"text":" ","italic":false}'}}

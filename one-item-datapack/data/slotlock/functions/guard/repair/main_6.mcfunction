execute if data entity @s Inventory[{Slot:15b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:15b}]
execute if data entity @s Inventory[{Slot:15b}] run function slotlock:guard/recover
item replace entity @s inventory.6 with minecraft:nether_star{CustomModelData:1,slotlock_blocked:1b,slotlock_slot:15,display:{Name:'{"text":" ","italic":false}'}}

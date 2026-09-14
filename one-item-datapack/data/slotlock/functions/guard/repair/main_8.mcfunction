execute if data entity @s Inventory[{Slot:17b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:17b}]
execute if data entity @s Inventory[{Slot:17b}] run function slotlock:guard/recover
item replace entity @s inventory.8 with minecraft:nether_star{CustomModelData:1,slotlock_blocked:1b,slotlock_slot:17,display:{Name:'{"text":" ","italic":false}'}}

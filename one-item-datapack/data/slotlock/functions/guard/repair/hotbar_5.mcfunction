execute if data entity @s Inventory[{Slot:5b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:5b}]
execute if data entity @s Inventory[{Slot:5b}] run function slotlock:guard/recover
item replace entity @s hotbar.5 with minecraft:nether_star{CustomModelData:1,slotlock_blocked:1b,slotlock_slot:5,display:{Name:'{"text":" ","italic":false}'}}

execute if data entity @s Inventory[{Slot:35b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:35b}]
execute if data entity @s Inventory[{Slot:35b}] run function slotlock:guard/recover
item replace entity @s inventory.26 with minecraft:nether_star{CustomModelData:1,slotlock_blocked:1b,slotlock_slot:35,display:{Name:'{"text":" ","italic":false}'}}

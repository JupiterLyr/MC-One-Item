# Remove marked barriers from the slots that are intentionally left usable.
execute if data entity @s Inventory[{Slot:4b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s hotbar.4 with air
execute if data entity @s Inventory[{Slot:100b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s armor.feet with air
execute if data entity @s Inventory[{Slot:101b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s armor.legs with air
execute if data entity @s Inventory[{Slot:102b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s armor.chest with air
execute if data entity @s Inventory[{Slot:103b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s armor.head with air
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s weapon.offhand with air

# Save and drop an illegal item before restoring the barrier.
# Empty slots skip recovery and are filled directly.

# Main inventory slots 0-8.
execute unless data entity @s Inventory[{Slot:9b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:9b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:9b}]
execute unless data entity @s Inventory[{Slot:9b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:9b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:9b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.0 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:10b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:10b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:10b}]
execute unless data entity @s Inventory[{Slot:10b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:10b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:10b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.1 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:11b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:11b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:11b}]
execute unless data entity @s Inventory[{Slot:11b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:11b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:11b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.2 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:12b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:12b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:12b}]
execute unless data entity @s Inventory[{Slot:12b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:12b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:12b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.3 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:13b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:13b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:13b}]
execute unless data entity @s Inventory[{Slot:13b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:13b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:13b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.4 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:14b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:14b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:14b}]
execute unless data entity @s Inventory[{Slot:14b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:14b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:14b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.5 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:15b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:15b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:15b}]
execute unless data entity @s Inventory[{Slot:15b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:15b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:15b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.6 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:16b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:16b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:16b}]
execute unless data entity @s Inventory[{Slot:16b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:16b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:16b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.7 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:17b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:17b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:17b}]
execute unless data entity @s Inventory[{Slot:17b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:17b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:17b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.8 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}

# Main inventory slots 9-17.
execute unless data entity @s Inventory[{Slot:18b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:18b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:18b}]
execute unless data entity @s Inventory[{Slot:18b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:18b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:18b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.9 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:19b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:19b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:19b}]
execute unless data entity @s Inventory[{Slot:19b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:19b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:19b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.10 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:20b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:20b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:20b}]
execute unless data entity @s Inventory[{Slot:20b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:20b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:20b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.11 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:21b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:21b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:21b}]
execute unless data entity @s Inventory[{Slot:21b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:21b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:21b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.12 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:22b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:22b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:22b}]
execute unless data entity @s Inventory[{Slot:22b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:22b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:22b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.13 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:23b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:23b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:23b}]
execute unless data entity @s Inventory[{Slot:23b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:23b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:23b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.14 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:24b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:24b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:24b}]
execute unless data entity @s Inventory[{Slot:24b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:24b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:24b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.15 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:25b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:25b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:25b}]
execute unless data entity @s Inventory[{Slot:25b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:25b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:25b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.16 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:26b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:26b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:26b}]
execute unless data entity @s Inventory[{Slot:26b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:26b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:26b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.17 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}

# Main inventory slots 18-26.
execute unless data entity @s Inventory[{Slot:27b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:27b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:27b}]
execute unless data entity @s Inventory[{Slot:27b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:27b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:27b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.18 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:28b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:28b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:28b}]
execute unless data entity @s Inventory[{Slot:28b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:28b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:28b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.19 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:29b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:29b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:29b}]
execute unless data entity @s Inventory[{Slot:29b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:29b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:29b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.20 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:30b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:30b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:30b}]
execute unless data entity @s Inventory[{Slot:30b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:30b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:30b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.21 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:31b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:31b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:31b}]
execute unless data entity @s Inventory[{Slot:31b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:31b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:31b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.22 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:32b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:32b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:32b}]
execute unless data entity @s Inventory[{Slot:32b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:32b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:32b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.23 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:33b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:33b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:33b}]
execute unless data entity @s Inventory[{Slot:33b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:33b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:33b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.24 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:34b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:34b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:34b}]
execute unless data entity @s Inventory[{Slot:34b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:34b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:34b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.25 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:35b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:35b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:35b}]
execute unless data entity @s Inventory[{Slot:35b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:35b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:35b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s inventory.26 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}

# Fill the protected hotbar slots. hotbar.4 is intentionally preserved.
execute unless data entity @s Inventory[{Slot:0b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:0b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:0b}]
execute unless data entity @s Inventory[{Slot:0b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:0b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:0b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s hotbar.0 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:1b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:1b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:1b}]
execute unless data entity @s Inventory[{Slot:1b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:1b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:1b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s hotbar.1 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:2b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:2b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:2b}]
execute unless data entity @s Inventory[{Slot:2b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:2b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:2b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s hotbar.2 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:3b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:3b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:3b}]
execute unless data entity @s Inventory[{Slot:3b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:3b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:3b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s hotbar.3 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:5b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:5b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:5b}]
execute unless data entity @s Inventory[{Slot:5b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:5b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:5b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s hotbar.5 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:6b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:6b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:6b}]
execute unless data entity @s Inventory[{Slot:6b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:6b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:6b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s hotbar.6 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:7b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:7b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:7b}]
execute unless data entity @s Inventory[{Slot:7b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:7b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:7b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s hotbar.7 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}
execute unless data entity @s Inventory[{Slot:8b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:8b}] run data modify storage slotlock:recovery item set from entity @s Inventory[{Slot:8b}]
execute unless data entity @s Inventory[{Slot:8b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] if data entity @s Inventory[{Slot:8b}] run function slotlock:guard/recover
execute unless data entity @s Inventory[{Slot:8b,id:"minecraft:barrier",tag:{slotlock_blocked:1b}}] run item replace entity @s hotbar.8 with minecraft:barrier{CustomModelData:1,slotlock_blocked:1b}

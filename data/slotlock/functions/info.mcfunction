tellraw @s [{"text":"[One-Item] ","color":"green","bold":true},{"text":"数据包已加载。","color":"white"}]
tellraw @s {"text":"作者：JupiterLyr","color":"green"}
tellraw @s {"text":"Java 版 1.18.x ~ 1.20.4 均兼容，但仍推荐您使用 1.19.x","color":"gray"}
tellraw @s {"text":"在这个世界里，每个人都只有一双手，没有背包，只能穿戴盔甲、使用主副手、2×2 合成。","color":"yellow"}
tellraw @s {"text":"如果你不慎将物品放到了被屏蔽的物品栏，将会为你重新生成到脚下；库存变化会按每 20 tick 的批次检查。","color":"yellow"}
scoreboard players set @s slotlock_dirty 1
tag @s add slotlock_info_v1

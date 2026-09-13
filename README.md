# One-Item

一款 Minecraft Java 版数据包和材质包的组合，用带有自定义 NBT 标记的屏障填充玩家背包中的受保护槽位，并将这些屏障显示为自定义图片。内部命名空间：`slotlock`。

## 兼容版本

- 目标兼容范围：Java 版 `1.18.x` 至 `1.20.4`
- 推荐版本：Java 版 `1.19.x`
- 当前命令实现使用 `1.19.x` 支持的 `/item replace` 和旧版物品 NBT 语法，**不包含** Java 版 `1.20.5+` 的物品组件语法

> 数据包和材质包分别拥有自己的 `pack.mcmeta`，因为两者的 `pack_format` 不同。当前数据包以 `10` 作为 1.19.x 基线，材质包以 `13` 作为 1.19.4 基线。
> 在其他可兼容版本中，如果游戏提示版本不匹配，可以强制装载；若希望去除警告，需要调整对应子目录中的 `pack.mcmeta`，函数和模型文件不需要改动。

## 槽位规则

保留以下槽位正常使用：
- 快捷栏第 5 格，即 `hotbar.4`
- 盔甲栏
- 副手
- 2×2 合成区域
其余槽位均会被禁用。

## 性能策略

- 数据包每 20 tick 运行一次轻量审计；只有检测到库存发生变化的玩家才会执行 35 个受保护槽位的检查。每个正常槽位只检查一次标记屏障状态，异常时才进入物品恢复分支。
- 如果普通物品被交换进被锁定槽位，会先保存完整物品数据并将物品掉落到玩家脚下，再恢复屏障。标记屏障只会在库存活动后的短时间内于玩家附近清理，不再持续扫描整个维度的掉落物。
- 回收物品会暂时设置拾取延迟；如果玩家再次把它拾回受保护槽位，它会在下一次审计时再次被安全掉落，不会被直接删除。
- 数据包使用 `inventory_changed` 进度触发器标记发生库存变化的玩家，并开启短暂的附近掉落物监视，再以 20 tick 为批次执行槽位检查。没有库存变化的在线玩家不会重复执行槽位检查。1.19.x 没有可供数据包直接使用的“打开玩家背包”事件，因此这里以库存活动作为监视窗口的信号。
- 命令、创造模式以及其他服务器管理权限不在本数据包的限制范围内。

## 安装

本项目采用数据包和材质包分离结构：

```text
MC-OneItem/
├─ one-item-datapack/
│  ├─ pack.mcmeta
│  └─ data/
└─ one-item-resourcepack/
   ├─ pack.mcmeta
   └─ assets/
```

数据包和材质包需要分别安装，不能把项目根目录直接放入游戏目录。

### 具体步骤

1. 安装数据包

- 单人游戏放入：

```text
.minecraft\saves\<世界名称>\datapacks\
```

- 专用服务器放入：

```text
<服务器目录>\<level-name>\datapacks\
```

将 `one-item-datapack` 文件夹放入对应世界的 `datapacks` 目录。也可以将该文件夹内的 `pack.mcmeta` 和 `data` 压缩成 ZIP；ZIP 第一层必须直接包含这两个项目。

2. 安装材质包

将 `one-item-resourcepack` 文件夹放入：

```text
.minecraft\resourcepacks\
```

进入游戏后，在“选项 → 资源包”中启用 One-Item Resource Pack。也可以将 `one-item-resourcepack` 压缩成 ZIP，ZIP 第一层必须直接包含 `pack.mcmeta` 和 `assets`。

3. 进入世界并加载数据包，执行：

```mcfunction
/reload
```

4. 可以使用以下命令确认数据包已启用：

```mcfunction
/datapack list enabled
```

### 附加说明

- 数据包会在玩家首次被识别时在聊天框显示作者、兼容版本、规则和注意事项，重新进入同一世界时如需再次查看，可以执行 `/reload`，或重新安装到新的世界存档中。

## 材质包界面和占位图

材质包以 Java 版 1.19.4 的原版 GUI 纹理为底图，并做了以下修改：

- `assets/minecraft/textures/gui/container/inventory.png`：主背包 27 个槽位的边框和快捷栏第 5 格以外的边框改为 `#C6C6C6`；快捷栏第 5 格、装备栏、副手和合成区保留原版显示。
- `assets/minecraft/textures/gui/widgets.png`：HUD 快捷栏底板改为透明，保留原版选中框贴图；默认选中第 5 格时，游戏界面只显示中间格。
- 当前数据包没有强制锁定 `SelectedItemSlot`。如果玩家用数字键或滚轮选中其他快捷栏位置，选中框会跟随到对应位置，但其他快捷栏底板仍保持透明。
- 数据包生成的标记屏障带有 `CustomModelData:1`，材质包通过 `assets/minecraft/models/item/barrier.json` 的模型覆盖，将它替换为：

```text
one-item-resourcepack/assets/slotlock/textures/item/blocked_barrier.png
```

- 建议保持 PNG 为 `16×16`，并保留文件名和路径不变。材质包不会改变槽位的实际点击区域，只改变标记屏障的显示效果。

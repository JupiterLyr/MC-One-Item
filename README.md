<div id="cn-s"></div>

# One-Item —— 单格物品栏（双手生存）

语言：<u>简体中文</u> | [English](#en)

一款 Minecraft Java 版数据包和材质包的组合，用带有自定义 NBT 标记的知识之书填充玩家背包中的受保护槽位，并显示为透明色。内部命名空间：`slotlock`。

## 兼容版本

- 目标兼容范围：Java 版 `1.18.x` 至 `1.20.4`
- 推荐版本：Java 版 `1.19.x`
- 当前命令实现使用 `1.19.x` 支持的 `/item replace` 和旧版物品 NBT 语法，版本 `1.17.x` 部分表现可能稍差，**不兼容** Java 版 `1.20.5+` 和 `1.16.x` 及以下版本

| Minecraft 版本 | 资源包\* | 数据包\* | 发布版本 |
| :---: | :---: | :---: | :---: |
| 1.18、1.18.1 | 8 | 8 | v1.18.1 |
| 1.18.2 | 8 | 9 | v1.18.2 |
| 1.19.0 ~ 1.19.2 | 9 | 10 | v1.19.2 |
| 1.19.3 | 12 | 12 | v1.19.3 |
| 1.19.4 | 13 | 13 | v1.19.4 |
| 1.20、1.20.1 | 15 | 15 | v1.20.1 |
| 1.20.2 | 18 | 18 | v1.20.2 |
| 1.20.3、1.20.4 | 22 | 26 | v1.20.4 |

\*: 特指 `pack.mcmeta` 中的 `pack_format`

> 数据包和材质包的 `pack_format` 均为 `10`，将 `1.19.x` 作为基线版本。
> 在其他可兼容版本中，如果游戏提示版本不匹配，可以强制装载；若希望去除警告，需要手动调整对应子目录中的 `pack.mcmeta`，函数和模型文件不需要改动。

## 游戏内规则

背包槽位彻底禁用，快捷物品栏禁用 8 个，只保留以下槽位正常使用：
- 快捷物品栏第 5 格，即中央快捷栏 `hotbar.4`
- 盔甲栏
- 副手
- 2×2 合成区域

**注意**：命令、创造模式以及其他服务器管理权限不在本数据包的限制范围内。

## 包体安装与使用教程

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

数据包和材质包需要**分别安装**，不能把项目根目录直接放入游戏目录。

### 安装数据包

- 单人游戏放入：

```text
.minecraft\saves\<世界名称>\datapacks\
```

- 专用服务器放入：

```text
<服务器目录>\<level-name>\datapacks\
```

将 `one-item-datapack` 文件夹放入对应世界的 `datapacks` 目录。也可以将该文件夹内的 `pack.mcmeta` 和 `data` 压缩成 ZIP，再把 ZIP 放入 `datapacks` 目录；但必须保证 ZIP 的第一层是直接包含`pack.mcmeta` 和 `data`的。

注：如果开启了版本隔离，目录应处于对应版本之下！

### 安装材质包

找到如下位置：

```text
.minecraft\resourcepacks\
```

将 `one-item-resourcepack` 文件夹放入上述目录。同理，也可以将 `one-item-resourcepack` 压缩成 ZIP 再放入上述目录；ZIP 第一层也必须直接包含 `pack.mcmeta` 和 `assets`。

注：如果开启了版本隔离，目录应处于对应版本之下！

### 启用

在“选项 → 资源包”中启用 One-Item Resource Pack，进入世界并执行 `/reload` 加载数据包。

可以使用以下命令确认数据包是否已启用：

```mcfunction
/datapack list enabled
```

## 注意事项

- 数据包会在玩家首次被识别时在聊天框显示作者、兼容版本、规则和注意事项。如需再次查看，可以执行 `/reload`，或重新安装到新的世界存档中。
- 游戏时**尽可能避免错误地丢出占位物品，也尽可能避免将物品放置到被禁用的位置**。尽管已经做足了预防措施，也无法保证 100% 不出错。

---

<div id="en"></div>

# One-Item — Single Item Column (Two-handed Survival)

Language: [简体中文](#cn-s) | <u>English</u>

A combination of a data pack and a texture pack for Minecraft Java Edition that fills the protected slots in the player's inventory with Books of Knowledge containing custom NBT tags, which appear transparent. Internal namespace: `slotlock`.

## Compatibility

- Target compatibility range: from Java Edition `1.18.x` to `1.20.4`
- Recommended Version: Java Edition `1.19.x`
- The current command implementation uses the `/item replace` command and legacy item NBT syntax supported by `1.19.x`. Performance may be slightly suboptimal on `1.17.x`; **incompatible** with Java Edition `1.20.5+` and `1.16.x` and earlier versions

| Minecraft Version | Resource Pack \* | Data Pack \* | Release Version |
| :---: | :---: | :---: | :---: |
| 1.18、1.18.1 | 8 | 8 | v1.18.1 |
| 1.18.2 | 8 | 9 | v1.18.2 |
| 1.19.0 ~ 1.19.2 | 9 | 10 | v1.19.2 |
| 1.19.3 | 12 | 12 | v1.19.3 |
| 1.19.4 | 13 | 13 | v1.19.4 |
| 1.20、1.20.1 | 15 | 15 | v1.20.1 |
| 1.20.2 | 18 | 18 | v1.20.2 |
| 1.20.3、1.20.4 | 22 | 26 | v1.20.4 |

\*: Especially the `pack_format` in `pack.mcmeta`.

> The `pack_format` for both data packs and texture packs is set to `10`, with `1.19.x` as the baseline version.
> In other compatible versions, if the game prompts a version mismatch, you can force the pack to load; to remove the warning, you’ll need to manually adjust the `pack.mcmeta` file in the corresponding subdirectory. Function and model files do not need to be modified.

## In-Game Rules

Backpack slots are completely disabled, and 8 hotbar slots are disabled. Only the following slots remain active:
- Hotbar slot 5, i.e., the central hotbar `hotbar.4`
- Armor slot
- Off-hand slot
- 2×2 crafting area

**Note**: Commands, Creative Mode, and other server administrative privileges are not subject to the restrictions of this data pack.

## Installation and Usage Guide

This project uses a structure where the data pack and resource pack are separated:

```text
MC-OneItem/
├─ one-item-datapack/
│  ├─ pack.mcmeta
│  └─ data/
└─ one-item-resourcepack/
   ├─ pack.mcmeta
   └─ assets/
```

The data pack and resource pack must be **installed separately**. Do not place the project’s root directory directly into the game directory.

### Installation of Data Packs

- For single-player world, place it in:

```text
.minecraft\saves\<world-name>\datapacks\
```

- For dedicated servers, place it in:

```text
<server-directory>\<level-name>\datapacks\
```

Place the `one-item-datapack` folder into the `datapacks` directory of the corresponding world. Alternatively, you can compress the `pack.mcmeta` and `data` files within this folder into a ZIP file and place it into the `datapacks` directory; ensure that the ZIP file’s top-level contains only `pack.mcmeta` and `data`.

Note: If version isolation is enabled, the directory must be located under the corresponding version!

### Installation of the Resource Pack

Locate the following directory:

```text
.minecraft\resourcepacks\
```

Place the `one-item-resourcepack` folder into the directory above. Alternatively, you can compress `one-item-resourcepack` into a ZIP file and place it in the directory above; the top-level ZIP file must directly contain `pack.mcmeta` and `assets`.

Note: If version isolation is enabled, the directory must be located under the corresponding version!

### Activate

Enable the One-Item Resource Pack in “Options → Resource Packs,” then enter the world and run `/reload` to load the resource pack.

You can use the following command to confirm whether the resource pack is enabled:

```mcfunction
/datapack list enabled
```

## Notes

- When a player is detected for the first time, the author, compatible versions, rules, and notes will be displayed in the chat window. To view this information again, execute `/reload` or reinstall the resource pack into a new world save.
- While playing, **try to avoid accidentally dropping placeholder items as much as possible, and avoid placing items in restricted locations**. Although every precaution has been taken, we cannot guarantee 100% error-free operation.

---

## Python Script

Running the Python script will automatically package it into multiple versions in bulk, which will then be saved in the Release folder.

---

*Updated by* **JupiterLyr** *at* 2026.09.15

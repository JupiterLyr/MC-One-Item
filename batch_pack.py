#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import json
import os
import shutil
import sys
import time
import tempfile
import zipfile
from pathlib import Path
from typing import Tuple, List

# ---------------- 配置 ----------------

ROOT = Path(__file__).resolve().parent
OUTPUT = ROOT / "Release"
PLACEHOLDER = "{version}"

# 输出文件名模板，{version} 会被替换为版本号
OUTPUT_NAME_TEMPLATE = {
    "resource": "[v{version}]one-item-resourcepack.zip",
    "data":     "[v{version}]one-item-datapacks.zip",
}

# (版本号, 资源包 pack_format, 数据包 pack_format)
VERSIONS: List[Tuple[str, int, int]] = [
    ("1.18.1",  8,  8),
    ("1.18.2",  8,  9),
    ("1.19.2",  9, 10),
    ("1.19.3", 12, 12),
    ("1.19.4", 13, 13),
    ("1.20.1", 15, 15),
    ("1.20.2", 18, 18),
    ("1.20.4", 22, 26),
]

# --------------------------------------

def replace_placeholder(node, version: str):
    """递归替换文本组件中的占位符"""
    if isinstance(node, str):
        return node.replace(PLACEHOLDER, version)
    if isinstance(node, dict):
        return {k: replace_placeholder(v, version) for k, v in node.items()}
    if isinstance(node, list):
        return [replace_placeholder(x, version) for x in node]
    return node


def build_pack(src: Path, kind: str, version: str, pack_format: int) -> None:
    meta_src = src / "pack.mcmeta"
    if not meta_src.is_file():
        print(f"跳过 {src}：没有 pack.mcmeta", file=sys.stderr)
        return

    out_dir = OUTPUT / kind
    out_dir.mkdir(parents=True, exist_ok=True)

    # 按模板生成文件名，例如 [v1.19.2]one-item-datapacks.zip
    zip_name = OUTPUT_NAME_TEMPLATE[kind].format(version=version)
    zip_path = out_dir / zip_name

    with tempfile.TemporaryDirectory(prefix="mcpack_") as tmp:
        tmp_path = Path(tmp)
        shutil.copytree(src, tmp_path, dirs_exist_ok=True)

        meta_path = tmp_path / "pack.mcmeta"
        with meta_path.open("r", encoding="utf-8") as f:
            data = json.load(f)

        data.setdefault("pack", {})
        data["pack"]["pack_format"] = pack_format
        desc = data["pack"].get("description", "")
        data["pack"]["description"] = replace_placeholder(desc, version)

        with meta_path.open("w", encoding="utf-8") as f:
            json.dump(data, f, ensure_ascii=False, indent=2)

        with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as z:
            for root, _dirs, files in os.walk(tmp_path):
                for name in files:
                    full = Path(root) / name
                    rel = full.relative_to(tmp_path)
                    z.write(full, rel.as_posix())

    print(f"已生成: {zip_path}")


def main() -> None:
    # 直接指定两个包目录，不再遍历子目录
    packs = [
        ("data",     ROOT / "one-item-datapack"),
        ("resource", ROOT / "one-item-resourcepack"),
    ]

    for kind, src in packs:
        if not src.is_dir():
            print(f"未找到: {src}")
            continue
        if not (src / "pack.mcmeta").is_file():
            print(f"跳过 {src}：没有 pack.mcmeta")
            continue

        for version, res_fmt, data_fmt in VERSIONS:
            fmt = res_fmt if kind == "resource" else data_fmt
            build_pack(src, kind, version, fmt)

    print(f"全部完成。输出目录: {OUTPUT}")


if __name__ == "__main__":
    main()
    print("脚本将在 5 秒后退出...")
    time.sleep(5)

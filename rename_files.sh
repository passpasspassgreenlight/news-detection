#!/bin/bash

# 切换到 wiki_zh 目录
#cd wiki_zh
cd wiki_zh_text2

# 遍历所有子目录
for dir in */ ; do
    # 去掉目录名的最后一个斜杠
    dir=${dir%*/}
    # 遍历目录中的所有 txt 文件
    for file in "${dir}"/*.txt ; do
        # 获取文件的基本名（不包括扩展名）
        base_name=$(basename "${file}" .txt)
        # 重命名文件
        mv "${file}" "${dir}/${base_name}_${dir}.txt"
    done
done
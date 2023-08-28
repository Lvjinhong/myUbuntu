#!/bin/bash

# 输出文件名前缀
OUTPUT_PREFIX="main"

# 源代码文件
SOURCE_FILE="pivot.c"

# 编译器选项
COMPILER_OPTIONS="-O3 -qopenmp"

# OpenMP环境变量的不同设置
OMP_PROC_BIND_VALUES=("TRUE" "FALSE")
OMP_NESTED_VALUES=("TRUE" "FALSE")
OMP_NUM_THREADS_VALUES=(1 2 4 8 16)

# 遍历所有环境变量的组合
for OMP_PROC_BIND in "${OMP_PROC_BIND_VALUES[@]}"; do
    for OMP_NESTED in "${OMP_NESTED_VALUES[@]}"; do
        for OMP_NUM_THREADS in "${OMP_NUM_THREADS_VALUES[@]}"; do
            # 设置环境变量
            export OMP_PROC_BIND
            export OMP_NESTED
            export OMP_NUM_THREADS

            # 编译程序
            OUTPUT_FILE="${OUTPUT_PREFIX}_${OMP_PROC_BIND}_${OMP_NESTED}_${OMP_NUM_THREADS}"
            icpx -o $OUTPUT_FILE $SOURCE_FILE $COMPILER_OPTIONS

            # 运行程序并输出结果
            echo "Running with OMP_PROC_BIND=$OMP_PROC_BIND, OMP_NESTED=$OMP_NESTED, OMP_NUM_THREADS=$OMP_NUM_THREADS"
            ./$OUTPUT_FILE
            echo "-----------------------------------------"
        done
    done
done


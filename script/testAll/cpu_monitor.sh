#!/bin/bash

# 初始化变量
total_freq=0
core_count=0

# 读取每个核心的频率
while read -r line; do
	# 检查行是否包含频率信息
	if [[ "$line" =~ "cpu MHz" ]]; then
		# 提取频率值并累加
		freq=$(echo "$line" | awk '{print $4}')
		total_freq=$(echo "$total_freq + $freq" | bc)
		((core_count++))
	fi
done </proc/cpuinfo

# 计算平均频率
if [ $core_count -gt 0 ]; then
	avg_freq=$(echo "scale=2; $total_freq / $core_count" | bc)
	echo "Average CPU frequency: $avg_freq MHz"
else
	echo "No CPU frequency information found."
fi

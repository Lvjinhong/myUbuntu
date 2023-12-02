#!/bin/bash

# 设置要监控的 CPU 核心数，根据您的系统调整这个值
NUM_CORES=28

# 使用 watch 命令实时显示每个核心的频率
#

watch -n 1 "for i in \$(seq 0 $((NUM_CORES - 1))); do echo \$(echo \"scale=3; \$(cat /sys/devices/system/cpu/cpu\$i/cpufreq/scaling_cur_freq) / 1000000\" | bc) GHz; done"



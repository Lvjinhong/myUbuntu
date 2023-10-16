#!/usr/bin/bash
function mkdGo(){
    local arr=("$@")
    for element in "${arr[@]}"; do
        echo "$element"
    done
}

function mkdGo0Data(){
    local arr=("$@")
    for element in "${arr[@]}"; do
        echo "./0Data/$element"
    done
}

function mkdGo0AIpython(){
    local arr=("$@")
    for element in "${arr[@]}"; do
        echo "./0Data/0AI_python/$element"
    done
}

array=(0BaiduSync/ 0Data/ 0Github_Fork/ 1Chat/ )
#0Data 里面应该存在的 
arrData=(01计算机基础/ 0AI_Python/ 0C_C++/ 0WebProject/ 1FPGA/ 1HPC/ 1Linux_Shell/ 1matlab/ 9论文PPT等非code/ video/ 读研/  桌面/)
#0Data/0AIpython 里的
arrAI=(01数学建模资料/ 0project/ NovelAI/ Script_planet/ TX2/ 书籍/)
mkdGo ${array[@]}
echo ""
mkdGo0Data ${arrData[@]}
echo ""
mkdGo0AIpython ${arrAI[@]}


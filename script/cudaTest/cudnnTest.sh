function lib_installed()
{
    local lib_path=$1
    local lib_name=$2
    /sbin/ldconfig -N -v $lib_path 2>/dev/null | grep $lib_name;
}

function check() {
    local cuda_path=$1
    local lib_name=$2
    lib_installed $cuda_path $lib_name && echo "$lib_name is installed in $cuda_path" || echo "ERROR: $lib_name is NOT installed in $cuda_path";
}

# 使用示例
# 检测 /usr/local/cuda-12.1 路径下的 libcudnn
check "/usr/local/$CUDA_V/lib64" "libcudnn"


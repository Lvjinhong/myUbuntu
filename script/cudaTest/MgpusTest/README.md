calc_peak_gflops 用于测试GPU的峰值运算性能,使用nvcc进行编译
test_Mgpus.py 是一个简单的pytorch分布式脚本,用来测试多机互联是否正常
还有 一些测试 比如 IbTest，Nccl，P2P通信测试
在这里 /HPC/IBtest，
p2p：git@github.com:NVIDIA/cuda-samples.git   Samples/5_Domain_Specific/p2pBandwidthLatencyTest
nccl:git@github.com:NVIDIA/nccl-tests.git

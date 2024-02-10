/opt/nvidia/hpc_sdk/Linux_x86_64/23.11/comm_libs/12.3/openmpi4/latest/bin/mpirun -np 6 -host ib1:2,ib2:2,ib3:2 \
-x LD_LIBRARY_PATH=/opt/nvidia/hpc_sdk/Linux_x86_64/23.11/comm_libs/12.3/openmpi4/latest/lib:/opt/nvidia/hpc_sdk/Linux_x86_64/23.11/comm_libs/nccl/lib:$LD_LIBRARY_PATH \
./build/all_reduce_perf -b 8 -e 300M -f 2 -g 1

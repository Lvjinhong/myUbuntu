# export NCCL_SOCKET_IFNAME=ens33

# export NCCL_IB_DISABLE=1

export NCCL_DEBUG=INFO
export NCCL_DEBUG_SUBSYS=ALL
export TORCH_DISTRIBUTED_DEBUG=INFO

torchrun \
    --nnodes=1:3\
    --nproc_per_node=2\
    --rdzv_id=1\
    --rdzv_backend=c10d\
    --rdzv_endpoint="inspur1:8880"\
    test_Mgpus.py 
    # > log.txt 2>&1 



# torchrun \
#     --nnodes=1\
#     --nproc_per_node=2\
#     test_Mgpus.py

torchrun \
    --nnodes=1:3\
    --nproc_per_node=2\
    --rdzv_id=1\
    --rdzv_backend=c10d\
    --rdzv_endpoint="inspur1:8880"\
    test_Mgpus.py



# torchrun \
#     --nnodes=1\
#     --nproc_per_node=2\
#     test_Mgpus.py
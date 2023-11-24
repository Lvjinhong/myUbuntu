# filename: ddp_example.py

import os
import torch
import torch.distributed as dist
import torch.nn as nn
import torch.optim as optim
from torch.nn.parallel import DistributedDataParallel as DDP

class SimpleNet(nn.Module):
    def __init__(self):
        super(SimpleNet, self).__init__()
        self.fc = nn.Linear(10, 10)

    def forward(self, x):
        return self.fc(x)

def main():
    # 设置分布式环境
    local_rank = int(os.environ["LOCAL_RANK"])
    world_size = int(os.environ["WORLD_SIZE"])
    print("load local_rank: ", local_rank)
    dist.init_process_group("nccl")

    # 创建模型
    model = SimpleNet().cuda(local_rank)
    ddp_model = DDP(model, device_ids=[local_rank])

    # 创建优化器
    optimizer = optim.SGD(ddp_model.parameters(), lr=0.001)

    # 训练步骤
    for _ in range(100):
        optimizer.zero_grad()
        outputs = ddp_model(torch.randn(20, 10).cuda(local_rank))
        labels = torch.randn(20, 10).cuda(local_rank)
        loss_fn = nn.MSELoss()
        loss = loss_fn(outputs, labels)
        loss.backward()
        optimizer.step()
        print(111)

    # 清理
    dist.destroy_process_group()

if __name__ == "__main__":
    main()

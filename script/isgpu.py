import torch

if torch.cuda.is_available():
    print('GPU is available')
else:
    print('GPU is not available')

import torch
import torch.nn as nn
import torch.optim as optim

# 检查是否有可用的GPU
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')

# 定义一个简单的神经网络模型
class SimpleNet(nn.Module):
    def __init__(self):
        super(SimpleNet, self).__init__()
        self.fc = nn.Linear(10, 1)

    def forward(self, x):
        return self.fc(x)

# 创建模型并移动到GPU
model = SimpleNet().to(device)

# 创建优化器
optimizer = optim.SGD(model.parameters(), lr=0.01)

# 创建一些假数据
data = torch.randn(100, 10).to(device)
target = torch.randn(100, 1).to(device)

# 训练模型
for _ in range(100):
    # 前向传播
    output = model(data)

    # 计算损失
    loss = nn.MSELoss()(output, target)

    # 反向传播和优化
    optimizer.zero_grad()
    loss.backward()
    optimizer.step()

    print(f"Loss: {loss.item()}")


import torch

def test_pytorch_cuda():
    # 检查 CUDA 是否可用
    if torch.cuda.is_available():
        print("CUDA is available. Testing a simple computation...")

        # 创建一个简单的张量并设置 requires_grad=True
        x = torch.tensor([1.0, 2.0, 3.0], device="cuda", requires_grad=True)

        # 简单的前向计算
        y = x * x

        # 反向传播
        z = y.mean()
        z.backward()

        print("Computation successful!")
        print(f"y: {y}")
        print(f"x.grad: {x.grad}")
    else:
        print("CUDA is not available.")

if __name__ == "__main__":
    test_pytorch_cuda()

import torch
print("构建pytorch基于的CUDA版本：",torch.version.cuda)

import torch
print("pytorch NCCL版本：", torch.cuda.nccl.version())


print(f'\nAvailable cuda = {torch.cuda.is_available()}')

print(f'\nGPUs availables = {torch.cuda.device_count()}')

print(f'\nCurrent device = {torch.cuda.current_device()}')

print(f'\nCurrent Device location = {torch.cuda.device(0)}')

print(f'\nName of the device = {torch.cuda.get_device_name(0)}')

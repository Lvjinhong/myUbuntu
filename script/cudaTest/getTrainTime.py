#以10^9为单位 即G 或者 b 

b=10**9
GPUinfo={
    "A100":312*10**3*b, 
    "V100":113*10**3*b
}
#利用率
gpu_utilization=[0.3,0.55]
# Define the symbols
print("以b or GB为单位")
tokens = float(input("请输入tokens: "))
params = float(input("请输入params: "))
gpu_count = int(input("请输入gpu数量: "))
# gpu_tflops = input("请输入gpu(A100 or V100 默认PCIE): ")
def calculate_training_time(tokens, params, gpu_count, gpu_tflops, gpu_utilization, GPUinfo):
    training_time = 8 * tokens*b * params*b / (gpu_count * GPUinfo[gpu_tflops] * gpu_utilization)
    training_time = training_time / 3600
    training_time = round(training_time, 2)
    return training_time


gpu_tflops = "A100"
training_time_Min = calculate_training_time(tokens, params, gpu_count, gpu_tflops, gpu_utilization[1], GPUinfo)
training_time_Max = calculate_training_time(tokens, params, gpu_count, gpu_tflops, gpu_utilization[0], GPUinfo)

print("估算用时(h):\t" + str(training_time_Min) +"~~"+ str(training_time_Max))



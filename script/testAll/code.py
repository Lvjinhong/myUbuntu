# import time

# def fibonacci(n):
#     if n <= 1:
#         return n
#     else:
#         return fibonacci(n-1) + fibonacci(n-2)

# start_time = time.time()

# n = 40 # 这是一个相对较大的数字，应该会花费一些时间来计算
# print(f"Fibonacci({n}) = {fibonacci(n)}")

# end_time = time.time()
# print(f"Execution time: {end_time - start_time} seconds")


import time
 
start_time = time.time()
 
total = 0
for i in range(1, 10000):
    for j in range(1, 10000):
        total += i + j
 
print(f"The result is {total}")
 
end_time = time.time()
print(f"It took {end_time-start_time:.2f} seconds to compute")
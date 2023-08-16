#include<bits/stdc++.h>
#include <sys/time.h>
using namespace std;


long long fibonacci(long long n) {
    // 初始化一个长度为2的数组
    long long fib[2] = {0, 1};

    // 计算斐波那契数列
    for (long long i = 2; i <= n; i++) {
        // 使用模运算符来交替在数组的两个位置上存储数据
        fib[i % 2] = fib[0] + fib[1];
    }

    // 返回结果
    return fib[n % 2];
}
 long long fibonacci2(long long n) {
    // 初始化一个长度为n+1的数组
    long long *fib = new long long[n+1];
    fib[0] = 0;
    fib[1] = 1;

    // 计算斐波那契数列
    for (long long i = 2; i <= n; i++) {
        fib[i] = fib[i-1] + fib[i-2];
   }

    // 保存结果
    long long result = fib[n];

    // 删除数组
    delete [] fib;

    // 返回结果
    return result;
}


int  main(){

    //fibonacci(100);
    struct timeval start, end;
    gettimeofday(&start, NULL);

    long long result = fibonacci(1000);

    gettimeofday(&end, NULL);
    long seconds = (end.tv_sec - start.tv_sec);
    long micros = ((seconds * 1000000) + end.tv_usec) - (start.tv_usec);

    std::cout << "The result is: " << result << std::endl;
    std::cout << "Time elapsed is: " << micros << " microseconds" << std::endl;

    gettimeofday(&start, NULL);

   result = fibonacci2(1000);

    gettimeofday(&end, NULL);
   seconds = (end.tv_sec - start.tv_sec);
     micros = ((seconds * 1000000) + end.tv_usec) - (start.tv_usec);

    std::cout << "The result1 is: " << result << std::endl;
    std::cout << "Time elapsed1 is: " << micros << " microseconds" << std::endl;

  return 0;
}

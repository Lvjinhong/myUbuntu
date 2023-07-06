#include <bits/stdc++.h>
#include <mpi.h>
using namespace std;

int main(int *argc, char *argv[])
{
    // 初始化 MPI
    MPI_Init(&argc, &argv);

    int rank, size;

    // 获取当前进程的排名（编号）和总进程数
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);

    // 发送和接收消息的缓冲区
    int message = 0;
    int receivedMessage = 0;

    if (rank == 0)
    {
        // 主进程发送消息给其他进程
        message = 123;
        for (int dest = 1; dest < size; dest++)
        {
            MPI_Send(&message, 1, MPI_INT, dest, 0, MPI_COMM_WORLD);
        }
    }
    else
    {
        // 其他进程接收来自主进程的消息
        MPI_Recv(&receivedMessage, 1, MPI_INT, 0, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);
        std::cout << "Process " << rank << " received message: " << receivedMessage << std::endl;
    }

    // 终止 MPI
    MPI_Finalize();

    return 0;
}
#include <mpi.h>
#include <stdio.h>

int main(int argc, char **argv)
{
    // 初始化 MPI 环境
    MPI_Init(&argc, &argv);

    // 获取当前进程的排名
    int world_rank;
    MPI_Comm_rank(MPI_COMM_WORLD, &world_rank);

    // 获取总进程数
    int world_size;
    MPI_Comm_size(MPI_COMM_WORLD, &world_size);

    // 所有进程的排名之和
    int sum;
    MPI_Reduce(&world_rank, &sum, 1, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);

    // 0号进程打印总和
    if (world_rank == 0)
    {
        printf("Sum of ranks: %d\n", sum);
    }

    // 结束 MPI 环境
    MPI_Finalize();
    return 0;
}

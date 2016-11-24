#include <stdio.h>

void pimp_my_loop(int level)
{
    for (int i = 0; i < 25; ++i)
    {
        for (int j = 0; j < 100; ++j)
            printf("Hello %d,%d,%d\n", level, i, j);
    }
}

int main()
{
    for (int i = 0; i < 10; ++i)
    {
        pimp_my_loop(i);
    }
}

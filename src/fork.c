/*
 * Ahmed AlJehairan
 * Github: aj326
 * Description:
 */
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
int main(int argc, char const *argv[])
{
    static int i;
    pid_t p = fork();
    if (!p) fork();
    else
    {
        fork();
        i++;
        fork();
    }
    printf("%d fork\n", i++);
    return 0;
}

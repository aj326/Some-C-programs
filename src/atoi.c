#include <stdio.h>
#include <stdlib.h>

/* atoi: convert s to integer */
int my_atoi(char *s)
{
    int n;
    // printf("%c\n", *s++);
    // printf("%c\n", *s++);
    // printf("%c\n", *s++);
    // printf("%c\n", *s++);
    n = 0;
    while (*s >= '0' && *s <= '9')
    {
        n = 10 * n + (*s++ - '0');
    }
    return n;
}
int main()
{
    char s[] = "1234";
    printf("%d\n", my_atoi(s));
    return 0;
}
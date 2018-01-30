/*
 * Ahmed AlJehairan
 * Github: aj326
 * Description: strncat implementation
 */
#include <stdio.h>

char *strncat(char *dest, const char *src, size_t n)
{
    size_t i;
    char *start = dest;
    char *revert = src;
    while (*dest++);
    dest--;
    for (i = 0; src && i < n; ++i, *dest++ = *src++)
    src = revert;
    return start;
}

int main(int argc, char const *argv[])
{
    const char *src = "abc";
    char dest[256] = {0};
    dest[0] = '1';
    dest[1] = '2';
    dest[2] = '3';
    strncat(dest, src, 2);
    printf("%s\n", dest);

    return 0;
}

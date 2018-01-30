/*
 * Ahmed AlJehairan
 * Github: aj326
 * Description: strncmp
 */
#include <stdio.h>
int strncmp(const char *s, const char *s2, size_t n)
{
    size_t i = 0;
    int r;
    while (i++ < n && !(r = *s++ - *s2++));
    return r;
}

int main(int argc, char const *argv[])
{
    const char *s2 = "abcd";
    const char *s = "abce";


    printf("%c %c\n", strncmp(s, s2, 2) ? 'f' : 'p', strncmp(s, s2, 4) > 0 ? 'p' : 'f');


    return 0;
}

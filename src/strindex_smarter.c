#include <stdio.h>

/* strindex: return index of t in s, -1 if none */
int strindex(char s[], char t[])
{
    int i;
    char *pt, *ps;
    ps = s;
    pt = t;
    for (i = 0; *s; s++, ++i)
    {
        for (; *t && (*t != *s); t++);
        // printf("i = %d after for loop; s = %c, *t = %c\n", i, *s,*t);
        if (*t == '\0')
        {
            // printf("ts:%d\n",ts);                // ts-;
            // printf("t ended: %c\n",*t);
            t = pt;
            // printf("FIXING POINTER t ended: %c\n",*t);
        }
        else if (*t == *s)
        {
            // printf("found match, i: %d\n",i);
            t = pt; s = ps;
            return i;
        }

    }
    s = ps;
    return -1;

}
int main()
{
    char s1[] = "abcd";
    char s2[] = "bc";
    char s3[] = "fe";
    char s4[] = "vvvvvvvvvvvvvvvvvvvvvvvvvvabaa";
    char s5[] = "vadkgjdglhfdagihoighaoighadsoifhoighoighoidsaghoidsaghoidsaghoidsahgoidsahgoidsahgoidsahgihgoidsahgoidsahgoidsahgoisahgoireaaoivdanibvnignhaoidjgiadgoidsavinvidnhiaohgaoievdnvoidanvionroihieojfoiddsanjv";

    printf("strindex(%s,%s) = %d\n", s1, s2, strindex(s1, s2));
    printf("strindex(%s,%s) = %d\n", s1, s3, strindex(s1, s3));
    printf("strindex(%s,%s) = %d\n", s1, s4, strindex(s1, s4));
    printf("strindex(%s,%s) = %d\n", s1, s5, strindex(s1, s5));
    printf("s1:%s, s2:%s,s3:%s,s4:%s\n", s1, s2, s3, s4);

    return 0;

    return 0;
}
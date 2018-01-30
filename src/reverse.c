#include <stdio.h>
#include <stdlib.h>
// #include <string.h>
void my_reverse(char *s)
{
    register int len = -1;
    while (*s)
    {
        s++;
        len++;
    }
    s--;
    // printf("%d\n", len);
    // printf("after grabbing lengths %c\n", *(s));
    s-=len;
    // printf("%c\n", *(s+len));
    const int half = len >> 1;
    register int loc = 0;
    // printf("%d\n", half);
    while ( len != half)
    {
            // printf("len = %d\n", len);
        if (*(s+loc) != *(s + len))
        {
            *(s+loc) ^= *(s + len);
            *(s + len) ^= *(s+loc);
            *(s+loc) ^= *(s + len);
            // printf("*(s+loc) = %c *(s + len) = %c\n", *(s+loc), *(s+len));
            // printf("%s\n", s);
        }
        loc++; len--;

    }
//    s-=len+half;

}

int main()
{
    // char *ps = s;
    char s[] = "abcd";
    // char n= !(*(s-1)) ? 'n' :'f';
    printf("%s ==> ", s);
    my_reverse(s);
    printf("%s\n", s);
    return 0;
}
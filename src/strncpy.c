/*
 * Ahmed AlJehairan
 * Github: aj326
 * Description: implementation of strncpy(dest,src,size)
 */
 #include <stdio.h>
char * strncpy (char *dest, const char *src, size_t n)
{
size_t i;
char *start = dest;
char *revert = src;
for(i=0;src && i<n;++i, *dest++ = *src++);
    *dest='\0';
src = revert;
    return start;
}
int main(int argc, char const *argv[])
{
    const char* src = "abc";
    char dest[256];
    strncpy(dest,src,1);
    printf("%s\n", dest);

    return 0;
}

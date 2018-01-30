#include <stdio.h>
#include <stdlib.h>
#define MAXLINE 1000 /* maximum input line length */

/* getline: get line into s, return length */
int my_getline(char *s)
{
    int i;
    char c;
    for (i = 0; (*s++ = (c = getchar()) ) && c != '\n'; i++)
    if (c == '\n'){
        *s++ = c;
        i++;
    }
    *s = '\0';
    return i;
}
int main()
{
  	// char *s1 = "some really long string.\n";

  	int r;
  	char s[MAXLINE];
  	char *p = s;
  	r = my_getline(p);
  	printf("%s %d\n",s, r);
    return 0;
}
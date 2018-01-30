#include <stdio.h>
#include <stdlib.h>
//my_strcat(s,t) copies the string t to the end of s.
// static char ans[];
char * my_strcat(char *s, char *t){
	int size = 4+(sizeof(s)/sizeof(*s))+(sizeof(t)/sizeof(*t));
	char *r=s; 
	while(*r++ = *s++)
	printf("r points to %p %c; s points to %p %c\n",r,*r,s,*s );
printf("r points to %p %c; t points to %p %c\n",r,*r,t,*t );
	*r='';
	while(*r++ = *t++)
	printf("r points to %p %c; t points to %p %c\n",r,*r,t,*t );
    
	return r;
}


int main(){
	char s[] = "hello, ";
	char  t[] = "world\n";
	char *ans = my_strcat(s,t);
	printf("%s\n", ans);
}
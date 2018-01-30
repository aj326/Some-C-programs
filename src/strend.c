#include <stdio.h>
#include <stdlib.h>
int strend (char *s, char *t){
	int sc, tc;
	sc = tc =0; 
	while(*s++) sc++;
	while(*t++) tc++;
	if(tc>sc) return 0;
	s-=tc;
	t-=tc;
	// printf("*s after math %c\n", *s);
	// printf("*t after math %c\n", *t);	
	// printf("sc %d, tc %d\n",sc,tc );
	do {
		if (*s != *t) return 0; 
	// printf("sc %d, tc %d\n",sc,tc );
	// // printf("'n' + 3 in do %c\n", 'n');
	// printf("*s in do %c\n", *s);
	// printf("*s+2 in do %c\n", *(s+2));
	// printf("*t in do %c\n", *t);
	// printf("*t+2 in do %c\n", *(t+2));
}	
	while((--tc > 0) && (*s++ == *t++));
	
	return 1;
}

int main(){
  char *s1 = "some really long string.";
  char *s2 = "ng.";
  char *s3 = "ng";

  if(strend(s1, s2))
  {
    printf("The string (%s) has (%s) at the end.\n", s1, s2);
  }
  else
  {
    printf("The string (%s) doesn't have (%s) at the end.\n", s1, s2);
  }
  if(strend(s1, s3))
  {
    printf("The string (%s) has (%s) at the end.\n", s1, s3);
  }
  else
  {
    printf("The string (%s) doesn't have (%s) at the end.\n", s1, s3);
  }

  return 0;
}
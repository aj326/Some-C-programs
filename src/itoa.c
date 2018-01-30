#include <stdio.h>
#include <stdlib.h>
int get_str_size(int num, int power){
	if(num < 10) return power+1;
	return get_str_size((num/10) , ++power);
}
void my_itoa(char *s, int num){
	// int size = get_str_size(num,0);
	// char s[size];
	for(;*s;*s--=num%10+'0',num/=10)
	*s = '\0';
	// printf("%c\n", *s);

}

int main(){
	printf("num: %d; power %d\n", 1234, get_str_size(1234,0) );
	int num = 1234;
	const int size = get_str_size(num,0);
	char s[size];

	my_itoa(s+size, num);
	printf("%s\n", s);
	// char s[get_str_size(num,0)] = {0};
	return 0;
}
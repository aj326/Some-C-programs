/*
 * Ahmed AlJehairan
 * Github: aj326
 * Description: storing addresses in an array
 */
 #include <stdio.h>
#include <string.h>
 int main(int argc, char const *argv[])
 {
 char x,y,z;
 x='8';
 y='t';
 z='z';
 char * p =(char*) &x;
 printf("%p\n", &x);
 printf("%x\n", p);
 p =(char*) &y;
 printf("%p\n", &y);
 printf("%x\n", p);
 p =(char*) &z;
 printf("%p\n", &z);
 printf("%x\n", p);
 return 0;
 }

 
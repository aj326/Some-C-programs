#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
typedef struct node
{
int val;
struct node * left;
struct node * right;
} *TREE;
int nums[1024];
int i = 0;
TREE talloc();
TREE construct(TREE, int );
TREE printLTR(TREE);
static FILE *fp;


/*
 * Ahmed AlJehairan
 * Github: aj326
 * Description: Doubly Linked List
 */
 //MAKE GENREIC
 //Document!
 //Error check
#include <stdio.h>
#include <stdlib.h>
 #include <string.h>




typedef  struct  Node {
    struct Node *up;
    struct Node *down;
    void * data;
} List;

List *nalloc(void * data);
List *insert(List * root , List * previous,void * data);
List * traverse(List * node, int steps, char dir);

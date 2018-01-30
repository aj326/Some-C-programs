/*
 * Ahmed AlJehairan
 * Github: aj326
 * Description: tail implementation
 */
#include <stdio.h>
#include "DLL.h"
#define MAX_BYTES 512

int main(int argc, char const *argv[])
{
    FILE *file = fopen(argv[1], "r");
    char *line = (char *) malloc (1023 + 1);
    char c;
    int i;
    char first = 1;
    List *tail;
    while ((c = fgetc(file)) != EOF)
    {
        i=0;
        printf("befre l++\n");
        *line++ = c;
        printf("after l++\n");
        for (c = fgetc(file); c != '\n'; ++i)
            *line++ = c;
            printf("reached here\n");
        if (first)
            tail = nalloc(line - i);

        else
        {
            tail = insert(tail, tail, line - i);
        }
        line = calloc(1, 1024);
        first = 0;
        printf("%s\n", (char *) tail->data);
    }




    // if (!strcmp(argv[2], "-n"))
    //     traverse(tail, atoi(argv[3]), 1);
    // else
    //     traverse(tail, 10, 1);


    return 0;
}

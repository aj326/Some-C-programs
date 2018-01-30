/*
 * Ahmed AlJehairan
 * Github: aj326
 * Description: DLL
 */
#include "DLL.h"

int size;

List *nalloc(void *data) {
    List *root = (List *) calloc(++size, sizeof(List));
    root->up = root->down = root;
    root->data = data;
    return root;
};

List *insert(List *root, List *previous, void *data)
{
    List *current = nalloc(data);
    if (size == 2)
    {
        root->up = root->down = current;
        current->up = current->down = root;
    }
    else
    {
        root->down = current;

        current->down = previous;
        current->up = root;

        previous->up = current;
    }
    return current;
}

List * traverse(List *node, int steps, char dir)
{
    int i;
    if (steps == -1) steps = size;
    for (i = 0; i < steps; ++i)
    {
        printf("%s\n", (char *) node->data);
        node = (dir > 0? node->down : node->up);
    }
    return node;
}


#include "BST.h"

TREE talloc()           /* allocate a new tree record */
{
    TREE tree;
    tree = (TREE) calloc(1, sizeof(struct node));
    if ( tree != NULL ) return (tree);
    else
    {
        printf("talloc failed.");
        return NULL;
    }
}

TREE construct(TREE root, int length)
{
    if (length <= 0) return root;
    int culprit;
    printf("ROOT VAL: %d\t length %d\n", root->val, length);
    fscanf(fp, "%d", &culprit);
    TREE child = talloc();
    child->val = culprit;
    printf("before if culprit < root->val");
    if (culprit < root->val)
    {
     printf("passed if culprit < root->val");
        if (!root->left)
        {
            printf("passed if (!root->left)");
            root->left = child;
            printf("making left child with parent of %d with %d\n", root->val, child->val);
            construct(root, length - 1);

        }
        else
        {
            printf("failed if (!root->left)");
            printf("recursing root l\n");
            construct(root->left, length - 1);
        }
    }
    else
    {
        if (!root->right)
        {
            root->right = child;
            printf("making right child with parent of %d with %d\n", root->val, child->val);
            construct(root, length - 1);
        }
        else
        {
            printf("recursing root r\n");
            construct(root->right, length - 1);
        }
    }
    printf("before return, ROOT:%d",root->val);
return root;
}
TREE printLTR(TREE root)
{
    if (root != NULL)
    {
        printf("%d\n", root->val);
        if (root->left != NULL) printf("%d\n", root->left->val);
        if (root->right != NULL) printf("%d\n", root->right->val);
    }
    return root;
}


int main(int argc, char const *argv[])
{
    int length;
    printf("before root\n");
    fp = fopen("BST.in", "r");
    fscanf(fp, "%d", &length);

    TREE root = talloc();
    fscanf(fp, "%d", &root->val);
    construct(root, length);
    printf("after root\n");
    printLTR(root);
    return 0;
}

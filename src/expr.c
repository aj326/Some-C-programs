/*
 * Ahmed AlJehairan
 * Github: aj326
 * Description: Reverse Polish Calc. Usage ./expr n1 n2 op
 */
#include <stdio.h>
#include <stdlib.h>
#define DEBUG 1

//Will implement error checking later:
/*
Errors to check for:
   arg starts with letter
   first arg not a number
   check at least two arg for binary ops
*/

int main(int argc, char *argv[])
{
    char *p;
    *p = 0;
    char **s = argv;
    int len = argc;
    if (argc < 3)
    {
        printf("At least 2 arguments\n");
        return 1;
    }
    if (--argc)   argv++;

    int val;
    while (argc--)
    {
        switch (**argv)
        {

        case '+': ;
            val = atoi(*(argv - 2)) + atoi(*(argv - 1)); snprintf (*argv, sizeof(int), "%d", val); if (DEBUG) printf("after arith *argv %s \n", *argv); break;
        case '=': ; val = atoi(*(argv - 2)) == atoi(*(argv - 1)); snprintf (*argv, sizeof(int), "%d", val); if (DEBUG) printf("after arith *argv %s \n", *argv); break;
        case '-': ; val = atoi(*(argv - 2)) - atoi(*(argv - 1)); snprintf (*argv, sizeof(int), "%d", val); if (DEBUG) printf("after arith *argv %s \n", *argv); break;
        case '*': ; val = atoi(*(argv - 2)) * atoi(*(argv - 1)); snprintf (*argv, sizeof(int), "%d", val); if (DEBUG) printf("after arith *argv %s \n", *argv); break;
        case '/': ; val = atoi(*(argv - 2)) / atoi(*(argv - 1)); snprintf (*argv, sizeof(int), "%d", val); if (DEBUG) printf("after arith *argv %s \n", *argv); break;
        case '%': ; val = atoi(*(argv - 2)) % atoi(*(argv - 1)); snprintf (*argv, sizeof(int), "%d", val); if (DEBUG) printf("after arith *argv %s \n", *argv); break;
        }
        if (DEBUG)
        {
            int i;
            for (i = 0; i < len; ++i)
            {
                printf("%s\t", s[i]);
            }
            printf("\n");
        }
        argv++;
    }
    printf("%s\n", *--argv);
    return 0;
}

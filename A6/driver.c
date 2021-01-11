/* Saba Ramadan
 * Assignmemnt 6
 */

#include "stack.h"
#include <stdio.h>

int main()
{
    char input;
    int value = 0;
    int quit = 0;
    int type = 0;
 
    printf("Welcome to the stack program.\n");

    while (quit != 1)
    {
        printf("\nEnter option: ");
        scanf(" %c", &input);
        if (input == 'x')
        {
           printf("Goodbye!\n");
           quit = 1;
        }
        else if (input == 'u')
        {
           printf("What number? ");
           scanf("%d", &value);
           if (push(value) == 1)
           {
              printf("Overflow!!!\n");
           }
           printf("Stack: ");
           printStack(type);
           printf("\n");
        }
        else if (input == 'o')
        {
           if (pop(&value) == 1)
           {
              printf("Underflow!!!\n");
           }
           else
           {
              printf("Popped ");
              printf("%d\n", value);
           }   
           printf("Stack: ");
           printStack(type);
           printf("\n");
        }
        else if (input == 'h' || input == 'c' || input == 'd')
        {
           printf("Stack: ");
           if (input == 'd')
           {
              printStack(0);
              type = 0;
           }
           else if (input == 'h')
           {
              printStack(1);
              type = 1;
           }
           else if (input == 'c')
           {
              printStack(2);
              type = 2;
           }
           printf("\n");
        }
    }
    return 0;
} 

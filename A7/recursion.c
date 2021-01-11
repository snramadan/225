//Saba Ramadan
//Assignment 7

#include <stdio.h>

/**
 * This function counts backward from x to 1 by one.
 * For example, calling this function with a value of 5 should
 * result in the following output:
 * 5, 4, 3, 2, 1
 **/
void countBackwardFrom(int x)
{
    if (x == 1)
    {
       printf("%d\n", x);
    }
    else 
    {
      printf("%d, ", x); 
      countBackwardFrom(x-1);
    }  
}

/**
 * This function counts from one to x by one.
 * For example, calling this method with a value of 5 should 
 * result in the following output:
 * 1, 2, 3, 4, 5
 */
void countForwardTo(int x)
{
   if (x == 1)
   {
      printf("%d", x);
   }
   else
   {
      countForwardTo(x-1);
      printf(", %d", x); 
   }
}

int main()
{
   int temp;

   printf("Input int: ");
   scanf("%d", &temp);
   countBackwardFrom(temp);
   countForwardTo(temp);
   printf("\n");
   return 0;  
}

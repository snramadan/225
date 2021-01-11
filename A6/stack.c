/* Saba Ramadan 
 * Assignment 6
 */

#include "stack.h"
#include <stdio.h>

int arr[arrsize];
int size = 0;

int push(int value)
{
   if(size >= 10)
   {
     return 1;
   }
   else
   {
     arr[size] = value;
     size = size + 1;
     return 0;
   }
}

int pop(int *value)
{
   if(size <= 0)
   {
     return 1;
   }
   else
   {
     size = size - 1;
     *value = arr[size];
     return 0;
   }
}

void printStack(int value)
{
   int temp;
   for (temp = 0; temp < size; temp++)
   {
      if (value == 0)
      {
         printf("%d ", arr[temp]);
      }
      else if (value == 1)
      {
         printf("%x ", arr[temp]);
      }
      else if (value == 2)
      {
         printf("%c ", arr[temp]);
      }
   }
}

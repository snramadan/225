/* 
 * Saba Ramadan
 * Assignment 8
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "myGrep.h"

FILE *f;
char S[M];
char C[M];
char L[M];
char *x;
int l = 0;
int c = 0;
int wc = 0;
int n = 0;
int temp = 0;
W *h = NULL;
W *t = NULL;

int main(int argc, char *argv[])
{
   if (argc != 3)
   {
      printf("myGrep: improper number of arguments\nUsage: %s <filename> <word>\n", argv[0]);
      return -1;
   }  

   else 
   {
      f = fopen(argv[1], "r");
      if (f == NULL)
      {
         printf("Unable to open file: %s\n", argv[1]);
         return -1;
      }

      while(fgets(S, M, f) != NULL)
      {
          n = 0;
          l++;
          if (strlen(S) >= c)
          {
             c = strlen(S);
             strcpy(L, S);
          }
          strcpy(C, S);
          x = strtok(C, " \n");
          while(x != NULL)
          {
             temp = strcmp(x, argv[2]);
             if (temp == 0)
             {
                if (h == NULL)
                {
                   h = (W*)malloc(sizeof(W));
                   t = h;
                   (*t).wn = n;
                   (*t).ln = l - 1;
                   strcpy((*t).line, S);
                   wc++;
                }
                else
                {
                   (*t).next = (W*)malloc(sizeof(W));
                   t = (*t).next;
                   (*t).wn = n;
                   (*t).ln = l - 1;
                   strcpy((*t).line, S);
                   wc++;
                }
             } 
             x = strtok(NULL, " \n");
             n++;
          }
      }

      printf("%s %s %s\n", argv[0], argv[1], argv[2]);
      printf("longest line: %snum chars: %d\nnum lines: %d\ntotal occurrences of word: %d\n", L, c, l, wc);

      t = h;
      while(t)
      {
          h = (*t).next;
          printf("line %d; word %d; %s", (*t).ln, (*t).wn, (*t).line);
          t = h;
      }

      free(h);
      free(t);
   }
   return 0;
}

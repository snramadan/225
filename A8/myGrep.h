/* 
 * Saba Ramadan
 * Assignment 8
 */

#define M 100

typedef struct word W;

struct word
{
  int ln;
  int wn;
  char line[M];
  W *next;
};

int main(int argc, char *argv[]);

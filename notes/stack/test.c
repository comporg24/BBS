#include <stdio.h>

void function(int a, int b, int c)
{
  char buf[10];
  char buf2[6];
  int *ret;
  ret = ret + 4;
  (*ret) += 7;
}

void main()
{
   int x;
   x = 0;
   function(1,2,3);
   x = 1;
   printf ("%d\n", x);
}

#include <stdio.h>

void function(int a, int b, int c)
{
  char buf[10];
  char buf2[5];  
int *ret;
  //ret = buf + 18 + 8 ;
  ret = ret + 8;
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

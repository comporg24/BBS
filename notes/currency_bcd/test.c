#include <stdio.h>

int main()
{
  double total = 0.2;
  
  for (int i = 0; i < 100; i++)
  {
    total += 0.2;
  }

  printf("total=%f\n", total);
  return 0;
  
}

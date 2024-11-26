#include <stdio.h>

int main()
{
  double total = 0.2;

  for (int i = 0; i < 100; i++)
  {
    total += 0.2;
  }

  printf("total in decimal=%f\n", total); // Rounded decimal output
  printf("total with high precision=%.17g\n", total); // %.17g: Prints up to 17 significant digits, which is sufficient for a double in C to show the exact decimal value that corresponds to the binary representation.
  printf("total in hexadecimal=%a\n", total); // Unrounded hexadecimal output
  return 0;
}


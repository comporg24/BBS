#include <stdio.h>

int main (int argc, char *argv[], char *envp[]) // posix and windows
{
  int count;

  printf ("This program was called with \"%s\".\n",argv[0]);

  if (argc > 1)
    {
      for (count = 1; count < argc; count++)
	{
	  printf("argv[%d] = %s\n", count, argv[count]);
	}
    }
  else
    {
      printf("The command had no other arguments.\n");
    }

   int i=0;
   while (envp[i] != 0)
   {
   printf("envp[%d]=%s\n", i, envp[i]);
   i++;
   }
  return 0;
}

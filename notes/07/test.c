/* voc 2.1.0 [2020/10/25] for gcc LP64 on gentoo xtpam */

#define SHORTINT INT8
#define INTEGER  INT16
#define LONGINT  INT32
#define SET      UINT32

#include "SYSTEM.h"
#include "In.h"


static CHAR test_str[10];





export int main(int argc, char **argv)
{
	__INIT(argc, argv);
	__MODULE_IMPORT(In);
	__REGMAIN("test", 0);
/* BEGIN */
	In_String((void*)test_str, 10);
	__FINI;
}

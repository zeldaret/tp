#include "MSL_C/MSL_Common/Src/mbstring.h"
#include "MSL_C/MSL_Common/Src/string.h"
#include "dol2asm.h"

/* ############################################################################################## */
/* 80456668-80456670 004C68 0004+04 1/1 0/0 0/0 .sdata2          @74 */
SECTION_SDATA2 static unsigned long lit_74 = 0x0000C0E0;

/* 80365F74-8036608C 3608B4 0118+00 0/0 1/1 0/0 .text            wcstombs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm size_t wcstombs(char* dst, const wchar_t* src, size_t n) {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/mbstring/wcstombs.s"
}
#pragma pop

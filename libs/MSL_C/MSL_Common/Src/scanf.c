#include "MSL_C/MSL_Common/Src/scanf.h"

/* 8036878C-8036881C 3630CC 0090+00 0/0 2/2 0/0 .text            __StringRead */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int __StringRead(char* str, int ch, int behavior) {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/scanf/__StringRead.s"
}
#pragma pop

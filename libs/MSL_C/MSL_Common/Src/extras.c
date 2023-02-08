#include "MSL_C/MSL_Common/Src/extras.h"
#include "MSL_C/MSL_Common/Src/ctype.h"
#include "MSL_C/MSL_Common/Src/file_io.h"

/* 8036CA74-8036CA94 3673B4 0020+00 0/0 1/1 0/0 .text            strnicmp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int strnicmp(const char* str1, const char* str2, int n) {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/extras/strnicmp.s"
}
#pragma pop

/* 8036CA94-8036CB20 3673D4 008C+00 0/0 1/1 0/0 .text            stricmp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int stricmp(const char* str1, const char* str2) {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/extras/stricmp.s"
}
#pragma pop

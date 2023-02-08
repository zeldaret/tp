#include "MSL_C/MSL_Common/Src/char_io.h"
#include "MSL_C/MSL_Common/Src/FILE_POS.h"
#include "MSL_C/MSL_Common/Src/buffer_io.h"
#include "MSL_C/MSL_Common/Src/misc_io.h"
#include "MSL_C/MSL_Common/Src/wchar_io.h"

void __end_critical_region();
void __begin_critical_region();

/* 803651D8-803652AC 35FB18 00D4+00 0/0 1/1 0/0 .text            fputs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int fputs(const char* str, FILE* stream) {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/char_io/fputs.s"
}
#pragma pop

/* 803652AC-80365464 35FBEC 01B8+00 1/1 0/0 0/0 .text            __put_char */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int __put_char(int c, FILE* stream) {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/char_io/__put_char.s"
}
#pragma pop

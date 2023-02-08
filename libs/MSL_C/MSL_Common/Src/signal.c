#include "MSL_C/MSL_Common/Src/signal.h"
#include "MSL_C/MSL_Common/Src/abort_exit.h"

void __end_critical_region();
void __begin_critical_region();

/* ############################################################################################## */
/* 8044D878-8044D890 07A598 0018+00 1/1 0/0 0/0 .bss             signal_funcs */
static unsigned char signal_funcs[24];

/* 8036881C-803688DC 36315C 00C0+00 0/0 1/1 0/0 .text            raise */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int raise(int sig) {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/signal/raise.s"
}
#pragma pop

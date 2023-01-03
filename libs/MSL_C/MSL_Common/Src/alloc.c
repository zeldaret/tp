#include "MSL_C/MSL_Common/Src/alloc.h"
#include "MSL_C/MSL_Common/Src/string.h"

static void deallocate_from_fixed_pools();
static void deallocate_from_var_pools();

//
// External References:
//

void __sys_free();
void __end_critical_region();
void __begin_critical_region();
extern unsigned char data_804519A0[8];

//
// Declarations:
//

/* ############################################################################################## */
/* 8044D540-8044D578 07A260 0038+00 1/1 0/0 0/0 .bss             protopool$192 */
static unsigned char protopool[56];

/* 80362B58-80362BC8 35D498 0070+00 0/0 2/2 0/0 .text            free */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void free(FILE* file) {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/alloc/free.s"
}
#pragma pop

/* 80362BC8-80362C20 35D508 0058+00 1/1 0/0 0/0 .text            __pool_free */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __pool_free() {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/alloc/__pool_free.s"
}
#pragma pop

/* ############################################################################################## */
/* 803A2220-803A2238 02E880 0018+00 1/1 0/0 0/0 .rodata          fix_pool_sizes */
static unsigned char const fix_pool_sizes[24] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x44,
};

/* 80362C20-80362D78 35D560 0158+00 1/1 0/0 0/0 .text            deallocate_from_fixed_pools */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void deallocate_from_fixed_pools() {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/alloc/deallocate_from_fixed_pools.s"
}
#pragma pop

/* 80362D78-8036300C 35D6B8 0294+00 2/2 0/0 0/0 .text            deallocate_from_var_pools */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void deallocate_from_var_pools() {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/alloc/deallocate_from_var_pools.s"
}
#pragma pop

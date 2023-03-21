#include "MSL_C/MSL_Common/Src/alloc.h"
#include "MSL_C/MSL_Common/Src/string.h"

static void deallocate_from_fixed_pools(int**,unsigned int**, unsigned int);
static void deallocate_from_var_pools(int**,unsigned int**);

//
// External References:
//

void __sys_free();
void __end_critical_region(int);
void __begin_critical_region(int);
extern unsigned char data_804519A0[8];

//
// Declarations:
//

/* ############################################################################################## */
/* 8044D540-8044D578 07A260 0038+00 1/1 0/0 0/0 .bss             protopool$192 */
static unsigned char protopool[56];

/* 80362B58-80362BC8 35D498 0070+00 0/0 2/2 0/0 .text            free */
#ifdef NONMATCHING
// matches but causes reordering
void free(FILE* file) {
    __begin_critical_region(1);
    
    if (data_804519A0[0] == 0) {
        memset(protopool,0,0x34);
        data_804519A0[0] = 1;
    }

    __pool_free((int**)protopool, (unsigned int**)file);
    __end_critical_region(1);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void free(FILE* file) {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/alloc/free.s"
}
#pragma pop
#endif

/* 80362BC8-80362C20 35D508 0058+00 1/1 0/0 0/0 .text            __pool_free */
#ifdef NONMATCHING
// matches but causes reordering
void __pool_free(int **param_1, unsigned int **param_2) {
    unsigned int var;

    if (param_2) {
        if (((unsigned int)param_2[-1] & 1) == 0) {
            var = param_2[-1][2];
        } else {
            var = (unsigned int)param_2[-2] & 0xfffffff8;
            var -= 8;
        }

        if (var <= 0x44) {
            deallocate_from_fixed_pools(param_1,param_2, var);
        } else {
            deallocate_from_var_pools(param_1,param_2);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __pool_free(int **param_1, unsigned int **param_2) {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/alloc/__pool_free.s"
}
#pragma pop
#endif

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
static asm void deallocate_from_fixed_pools(int** param_1,unsigned int** param_2, unsigned int param_3) {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/alloc/deallocate_from_fixed_pools.s"
}
#pragma pop

/* 80362D78-8036300C 35D6B8 0294+00 2/2 0/0 0/0 .text            deallocate_from_var_pools */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void deallocate_from_var_pools(int** param_1,unsigned int** param_2) {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/alloc/deallocate_from_var_pools.s"
}
#pragma pop

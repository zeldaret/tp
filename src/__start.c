#include "dol2asm.h"
#include "dolphin/types.h"
#include "init.h"

//
// Forward References:
//

SECTION_INIT void __check_pad3();
SECTION_INIT void __set_debug_bba();
SECTION_INIT u8 __get_debug_bba();
SECTION_INIT void __start();

//
// External References:
//

void main();
void OSInit();
void OSResetSystem(s32, s32, s32);
void __init_user();
void DBInit();
void exit();
void InitMetroTRK();
void InitMetroTRK_BBA();
extern u8 data_804516D0;
void __init_data();
void __init_hardware();
void __init_registers();

//
// Declarations:
//

/* ############################################################################################## */
/* 80003100-80003140 000000 0040+00 1/1 0/0 0/0 .init            __check_pad3 */
SECTION_INIT void __check_pad3(void) {
    if ((*(u16*)0x800030E4 & 0xEEF) == 0xEEF) {
        OSResetSystem(0, 0, 0);
    }
}

/* 80003140-8000314C 000040 000C+00 1/1 0/0 0/0 .init            __set_debug_bba */
void __set_debug_bba(void) {
    data_804516D0 = 1;
}

/* 8000314C-80003154 -00001 0008+00 0/0 0/0 0/0 .init            __get_debug_bba */
SECTION_INIT u8 __get_debug_bba(void) {
    return data_804516D0;
}

/* 80003154-800032B0 000054 015C+00 0/0 1/0 0/0 .init            __start */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
SECTION_INIT asm void __start() {
    nofralloc
#include "asm/init/__start.s"
}
#pragma pop

/**
 * targsupp.c
 * Description:
 */

#include "TRK_MINNOW_DOLPHIN/ppc/Export/targsupp.h"

/* 803711D0-803711D8 -00001 0008+00 0/0 0/0 0/0 .text            TRKAccessFile */
#pragma push
#pragma function_align 16
asm u32 TRKAccessFile(u32, u32, u32*, u8*) {
    // clang-format off
	nofralloc
	twi 31, r0, 0x0
	blr
    // clang-format on
}
#pragma pop

/* 803711D8-803711E0 -00001 0008+00 0/0 0/0 0/0 .text            TRKOpenFile */
asm u32 TRKOpenFile(u32, u32, u32*, u8*) {
    // clang-format off
	nofralloc
	twi 31, r0, 0x0
	blr
    // clang-format on
}

/* 803711E0-803711E8 -00001 0008+00 0/0 0/0 0/0 .text            TRKCloseFile */
asm u32 TRKCloseFile(u32, u32) {
    // clang-format off
	nofralloc
	twi 31, r0, 0x0
	blr
    // clang-format on
}

/* 803711E8-803711F0 -00001 0008+00 0/0 0/0 0/0 .text            TRKPositionFile */
asm u32 TRKPositionFile(u32, u32, u32*, u8*) {
    // clang-format off
	nofralloc
	twi 31, r0, 0x0
	blr
    // clang-format on
}

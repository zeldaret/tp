/**
 * targsupp.c
 * Description:
 */

#include "TRK_MINNOW_DOLPHIN/ppc/Export/targsupp.h"

/* 803711D0-803711D8 -00001 0008+00 0/0 0/0 0/0 .text            TRKAccessFile */
#pragma push
#pragma function_align 16
asm void TRKAccessFile() {
    // clang-format off
	nofralloc
	twi 31, r0, 0x0
	blr
    // clang-format on
}
#pragma pop

/* 803711D8-803711E0 -00001 0008+00 0/0 0/0 0/0 .text            TRKOpenFile */
asm void TRKOpenFile() {
    // clang-format off
	nofralloc
	twi 31, r0, 0x0
	blr
    // clang-format on
}

/* 803711E0-803711E8 -00001 0008+00 0/0 0/0 0/0 .text            TRKCloseFile */
asm void TRKCloseFile() {
    // clang-format off
	nofralloc
	twi 31, r0, 0x0
	blr
    // clang-format on
}

/* 803711E8-803711F0 -00001 0008+00 0/0 0/0 0/0 .text            TRKPositionFile */
asm void TRKPositionFile() {
    // clang-format off
	nofralloc
	twi 31, r0, 0x0
	blr
    // clang-format on
}

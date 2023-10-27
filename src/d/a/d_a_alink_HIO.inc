/**
 * d_a_alink_HIO.inc
 * Player HostIO interface handling
 */

/* 80140B88-80140B98 13B4C8 0010+00 1/1 0/0 0/0 .text            __ct__12daAlinkHIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daAlinkHIO_c::daAlinkHIO_c() {
    nofralloc
#include "asm/d/a/d_a_alink/__ct__12daAlinkHIO_cFv.s"
}
#pragma pop

/* 80140B98-80140BD4 13B4D8 003C+00 1/1 0/0 0/0 .text            __dt__17daAlinkHIO_wolf_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daAlinkHIO_wolf_c::~daAlinkHIO_wolf_c() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__17daAlinkHIO_wolf_cFv.s"
}
#pragma pop

/* 80140BD4-80140C10 13B514 003C+00 1/1 0/0 0/0 .text            __dt__16daAlinkHIO_cut_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daAlinkHIO_cut_c::~daAlinkHIO_cut_c() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__16daAlinkHIO_cut_cFv.s"
}
#pragma pop

/* 80140C10-80140C80 13B550 0070+00 1/0 0/0 0/0 .text            __dt__12daAlinkHIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daAlinkHIO_c::~daAlinkHIO_c() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__12daAlinkHIO_cFv.s"
}
#pragma pop
#include "d/d_save/d_save_HIO/d_save_HIO.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "global.h"

#ifdef NONMATCHING
dSvBit_childSwPerfectionHIO_c::dSvBit_childSwPerfectionHIO_c() {
    this->__vt = (dSvBit_childSwPerfectionHIO_c_vtable*)0x803C3384;
    for (int i = 0; i < 0x80; i++) {
    }
}
#else
asm dSvBit_childSwPerfectionHIO_c::dSvBit_childSwPerfectionHIO_c() {
    nofralloc
#include "d/d_save/d_save_HIO/asm/func_8025BB78.s"
}
#endif

asm void dSvBit_childSwPerfectionHIO_c::init(void) {
    nofralloc
#include "d/d_save/d_save_HIO/asm/func_8025BBAC.s"
}
#ifndef D_EYE_HL_H_
#define D_EYE_HL_H_

#include "JSystem/J3DGraphBase/J3DDrawBuffer/J3DDrawBuffer.h"
#include "global.h"

class dEyeHL_mng_c {
private:
    /* 0x00 */ void* vtable;
    /* 0x04 */ ResTIMG* field_0x04;
    /* 0x08 */ u16 field_0x08;
    /* 0x0A */ u8 field_0x0a[2];
    /* 0x0C */ dEyeHL_mng_c* field_0x0c;
    /* 0x10 */ dEyeHL_mng_c* field_0x10;
};

class dEyeHL_c : dEyeHL_mng_c {};

#endif

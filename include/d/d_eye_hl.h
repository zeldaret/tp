#ifndef D_D_EYE_HL_H
#define D_D_EYE_HL_H

#include "JSystem/J3DGraphAnimator/J3DModelData.h"
#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "dolphin/types.h"

class dEyeHL_c;

class dEyeHL_mng_c {
public:
    /* 8009CA48 */ void update();
    /* 8009CB14 */ void entry(dEyeHL_c*);
    /* 8009CB34 */ void remove(dEyeHL_c*);

    static u8 m_obj[4 + 4 /* padding */];

private:
    /* 0x00 */ void* vtable;
    /* 0x04 */ ResTIMG* field_0x04;
    /* 0x08 */ u16 field_0x08;
    /* 0x0A */ u8 field_0x0a[2];
    /* 0x0C */ dEyeHL_mng_c* field_0x0c;
    /* 0x10 */ dEyeHL_mng_c* field_0x10;
};

class dEyeHL_c : public dEyeHL_mng_c {
public:
    /* 8009C964 */ void entry(J3DModelData*, char const*);
    /* 8009CA28 */ void remove();
    /* 80140C80 */ ~dEyeHL_c();
};

#endif /* D_D_EYE_HL_H */

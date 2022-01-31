#ifndef D_D_EYE_HL_H
#define D_D_EYE_HL_H

#include "JSystem/J3DGraphAnimator/J3DModelData.h"
#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "dolphin/types.h"

class dEyeHL_c;

class dEyeHL_mng_c {
public:
    /* 8009CA48 */ static void update();
    /* 8009CB14 */ static void entry(dEyeHL_c*);
    /* 8009CB34 */ static void remove(dEyeHL_c*);

    static dEyeHL_mng_c* m_obj;

    /* 0x00 */ u8 field_0x0[4];
    /* 0x04 */ ResTIMG* m_timg;
    /* 0x08 */ s16 m_lodBias;
    /* 0x0A */ u8 field_0x0a[2];
    /* 0x0C */ dEyeHL_mng_c* m_pre;
    /* 0x10 */ dEyeHL_mng_c* m_next;
};

class dEyeHL_c : public dEyeHL_mng_c {
public:
    /* 8009C964 */ void entry(J3DModelData*, char const*);
    /* 8009CA28 */ void remove();
    /* 80140C80 */ ~dEyeHL_c();
};

#endif /* D_D_EYE_HL_H */

#ifndef D_CC_D_CC_MASS_S_H
#define D_CC_D_CC_MASS_S_H

#include "SSystem/SComponent/c_cc_d.h"
#include "dolphin/types.h"

class dCcMassS_Obj {
public:
    dCcMassS_Obj();
    ~dCcMassS_Obj();

private:
    u8 field_0x0[12];
    cCcD_DivideInfo cccd_divideinfo;
    void* vtable;
};  // Size = 0x20

STATIC_ASSERT(0x20 == sizeof(dCcMassS_Obj));

class dCcMassS_Mng {
public:
    dCcMassS_Mng(void);
    ~dCcMassS_Mng();

public:
    /* 0x0000 */ cCcD_DivideArea mDivideArea;
    /* 0x0040 */ s32 mMassObjCount;
    /* 0x0044 */ dCcMassS_Obj mMassObjs[10];
    /* 0x0184 */ s32 mMassAreaCount;
    /* 0x0188 */ dCcMassS_Obj mMassAreas[2];
    /* 0x01C8 */ cCcD_CylAttr mCylAttr;
    /* 0x0200 */ u8 field_0x200[2];
    /* 0x0202 */ u8 field_0x202;
    /* 0x0203 */ u8 field_0x203;
    /* 0x0204 */ cXyz mCamTopPos;
    /* 0x0210 */ f32 mCamTopDist;
    /* 0x0214 */ cXyz mCamBottomPos;
    /* 0x0220 */ f32 mCamBottomDist;
    /* 0x0224 */ cCcD_CpsAttr cccd_cpsattr;
    /* 0x0264 */ cCcD_DivideInfo cccd_divideinfo;
    /* 0x0274 */ void* vtable;
};

STATIC_ASSERT(sizeof(dCcMassS_Mng) == 0x278);

#endif /* D_CC_D_CC_MASS_S_H */

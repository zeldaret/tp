#ifndef MSG_SCRN_D_MSG_SCRN_LIGHT_H
#define MSG_SCRN_D_MSG_SCRN_LIGHT_H

#include "dolphin/types.h"
#include "JSystem/JUtility/TColor.h"

class J2DScreen;
class J2DAnmTransform;
class J2DAnmColor;
class CPaneMgr;

struct dMsgScrnLight_c {
    /* 80245934 */ dMsgScrnLight_c(u8, u8);
    /* 80245B00 */ virtual ~dMsgScrnLight_c();
    /* 80245C04 */ void draw(f32*, f32, f32, f32, f32, f32, u8);
    /* 80245F90 */ void draw(f32*, f32, f32, f32, f32, f32, f32, JUtility::TColor,
                             JUtility::TColor);
    /* 802460DC */ void drawCommon(f32, f32, f32, f32, f32);

    /* 0x04 */ J2DScreen* mpScreen;
    /* 0x08 */ J2DAnmTransform* field_0x8;
    /* 0x0C */ J2DAnmColor* field_0xc;
    /* 0x10 */ CPaneMgr* mpParent_c;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ u8 field_0x20;
    /* 0x21 */ u8 field_0x21;
    /* 0x22 */ u8 field_0x22;
};

struct dMsgScrnLight_HIO_c {
    /* 8024575C */ dMsgScrnLight_HIO_c();
    /* 802457C4 */ void updateColor(u8);
    /* 80246348 */ virtual ~dMsgScrnLight_HIO_c() {}

    /* 0x04 */ s8 field_0x4;
    /* 0x05 */ u8 field_0x5;
    /* 0x06 */ u8 field_0x6[9];
    /* 0x0F */ u8 field_0xf[9];
    /* 0x18 */ u8 field_0x18[9];
    /* 0x21 */ u8 field_0x21[9];
    /* 0x2A */ u8 field_0x2a[9];
    /* 0x33 */ u8 field_0x33[9];
    /* 0x3C */ u8 field_0x3c[9];
    /* 0x45 */ u8 field_0x45[9];
};

#endif /* MSG_SCRN_D_MSG_SCRN_LIGHT_H */

#ifndef F_AP_F_AP_GAME_H
#define F_AP_F_AP_GAME_H

#include "JSystem/JUtility/TColor.h"
#include "dolphin/types.h"

void fapGm_After();

class fapGm_HIO_c {
public:
    /* 80018944 */ fapGm_HIO_c();
    /* 80018AE0 */ virtual ~fapGm_HIO_c();

    /* 0x04 */ s8 field_0x04;
    /* 0x05 */ u8 field_0x03[3];
    /* 0x08 */ JUtility::TColor mColor;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ bool mUsingHostIO;
    /* 0x15 */ bool mDisplayMeter;
    /* 0x16 */ u8 mDisplayPrint;
    /* 0x17 */ bool mDisplay2D;
    /* 0x18 */ bool mDisplayParticle;
    /* 0x19 */ bool mDisplayProcessID;
    /* 0x1A */ bool mMemBlockOff;
    /* 0x1C */ s16 mRegister0;
    /* 0x1E */ s16 mRegister1;
    /* 0x20 */ s16 mRegister2;
    /* 0x22 */ s16 mRegister3;
    /* 0x24 */ JUtility::TColor mLetterTopColor;
    /* 0x28 */ JUtility::TColor mLetterBottomColor;
    /* 0x2C */ JUtility::TColor mLetterTopShadowColor;
    /* 0x30 */ JUtility::TColor mLetterBottomShadowColor;
    /* 0x34 */ u16 mLetterPositionX;
    /* 0x36 */ u16 mLetterPositionY;
    /* 0x38 */ u16 mLineSpacing;
    /* 0x3A */ u16 mLetterSpacing;
    /* 0x3C */ u16 mLetterFontSize;
    /* 0x3E */ u8 mBackgroundAlpha;
};  // Size: 0x40

extern fapGm_HIO_c g_HIO;

inline bool fapGmHIO_isMenu() {
    return g_HIO.mDisplayPrint & 2;
}
inline bool fapGmHIO_isPrint() {
    return g_HIO.mDisplayPrint & 1;
}
inline bool fapGmHIO_getMeter() {
    return g_HIO.mDisplayMeter;
}

#endif /* F_AP_F_AP_GAME_H */

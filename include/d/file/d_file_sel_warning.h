#ifndef D_FILE_D_FILE_SEL_WARNING_H
#define D_FILE_D_FILE_SEL_WARNING_H

#include "JSystem/JUtility/TColor.h"

class JKRArchive;

class dFile_warning_c {
public:
    /* 80191BAC */ dFile_warning_c(JKRArchive*, u8);
    /* 80191CF4 */ void screenSet();
    /* 80191F18 */ void _move();
    /* 80191F90 */ void modeWait();
    /* 80191F94 */ void modeMove();
    /* 80191FD4 */ void baseMoveAnm();
    /* 801920B8 */ void openInit();
    /* 8019210C */ void closeInit();
    /* 80192160 */ void init();
    /* 80192190 */ void _draw();
    /* 801921CC */ void drawSelf();
    /* 801921F8 */ void setText(u32);
    /* 80192240 */ void setFontColor(JUtility::TColor, JUtility::TColor);

    /* 80191C18 */ virtual ~dFile_warning_c();

    u8 getStatus() { return mStatus; }

    u8 field_0x4[0x3D - 0x4];
    /* 0x3D */ u8 mStatus;
};

#endif /* D_FILE_D_FILE_SEL_WARNING_H */

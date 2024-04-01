#ifndef D_FILE_D_FILE_SEL_WARNING_H
#define D_FILE_D_FILE_SEL_WARNING_H

#include "d/d_drawlist.h"

class JKRArchive;
class CPaneMgr;
class J2DScreen;
class JUTFont;
class J2DTextBox;
class dMsgString_c;

class dDlst_FileWarn_c : public dDlst_base_c {
public:
    /* 80192354 */ virtual void draw();
    /* 801923CC */ virtual ~dDlst_FileWarn_c() {}

    /* 0x04 */ J2DScreen* Scr;
    /* 0x08 */ JUTFont* mFont;
    /* 0x0C */ dMsgString_c* mMsgString;
};

class dFile_warning_c {
public:
    /* 80191BAC */ dFile_warning_c(JKRArchive*, u8);
    /* 80191CF4 */ void screenSet();
    /* 80191F18 */ void _move();
    /* 80191F90 */ void modeWait();
    /* 80191F94 */ void modeMove();
    /* 80191FD4 */ bool baseMoveAnm();
    /* 801920B8 */ void openInit();
    /* 8019210C */ void closeInit();
    /* 80192160 */ void init();
    /* 80192190 */ void _draw();
    /* 801921CC */ void drawSelf();
    /* 801921F8 */ void setText(u32);
    /* 80192240 */ void setFontColor(JUtility::TColor, JUtility::TColor);

    /* 80191C18 */ virtual ~dFile_warning_c();

    // fake? needed to get vtable size correct
    #ifdef DFILE_WARNING_C_DUMMY_VIRTUAL
    virtual void dummy() = 0;
    virtual void dummy2() = 0;
    #endif

    u8 getStatus() { return mStatus; }
    void draw() { _draw(); }

    /* 0x04 */ JKRArchive* mpArchive;
    /* 0x08 */ dDlst_FileWarn_c mFileWarn;
    /* 0x18 */ u8 field_0x18;
    /* 0x1C */ CPaneMgr* mpRootPane;
    /* 0x20 */ J2DTextBox* field_0x20;
    /* 0x24 */ J2DAnmTransform* field_0x24;
    /* 0x28 */ int field_0x28;
    /* 0x2C */ int field_0x2c;
    /* 0x30 */ u8 field_0x30[4];
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 mPosY;
    /* 0x3C */ u8 field_0x3c;
    /* 0x3D */ u8 mStatus;
    /* 0x3E */ u8 field_0x3e;
};

#endif /* D_FILE_D_FILE_SEL_WARNING_H */

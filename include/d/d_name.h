#ifndef D_D_NAME_H
#define D_D_NAME_H

#include "d/com/d_com_inf_game.h"
#include "dolphin/types.h"

class JUTFont;

class dNm_HIO_c {
public:
    /* 8024E3E0 */ dNm_HIO_c();
    /* 802511A4 */ virtual ~dNm_HIO_c();

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 mMenuScale;
    /* 0x0C */ f32 mSelCharScale;
    /* 0x10 */ u8 field_0x10;
};

class dDlst_NameIN_c : public dDlst_base_c {
public:
    dDlst_NameIN_c() {}

    /* 80251094 */ virtual void draw();
    /* 8025115C */ virtual ~dDlst_NameIN_c();

    /* 0x04 */ J2DScreen* NameInScr;
    /* 0x08 */ JUTFont* font;
    /* 0x0C */ J2DPane* field_0xc;
    /* 0x10 */ J2DPane* field_0x10;
};

class ChrInfo_c {
public:
    /* 0x0 */ u8 mColumn;
    /* 0x1 */ u8 mRow;
    /* 0x2 */ u8 mMojiSet;
    /* 0x3 */ u8 field_0x3;
    /* 0x4 */ int mCharacter;
};  // Size: 0x8

class dName_c {
public:
    enum {
        PROC_MOJI_SELECT,
        PROC_MOJI_SEL_ANM,
        PROC_MOJI_SEL_ANM2,
        PROC_MOJI_SEL_ANM3,
        PROC_MENU_SELECT,
        PROC_MENU_SEL_ANM,
        PROC_MENU_SEL_ANM2,
        PROC_MENU_SEL_ANM3,
        PROC_WAIT
    };

    enum {
        MOJI_HIRA,
        MOJI_KATA,
        MOJI_EIGO,
    };

    enum {
        MENU_HIRA,
        MENU_KATA,
        MENU_EIGO,
        MENU_END,
    };

    /* 8024E408 */ dName_c(J2DPane*);
    /* 8024E62C */ void _create();
    /* 8024E6D4 */ void init();
    /* 8024E7A4 */ void initial();
    /* 8024E7EC */ void showIcon();
    /* 8024E9A0 */ void _move();
    /* 8024EC10 */ int nameCheck();
    /* 8024EC4C */ void playNameSet(int);
    /* 8024EC84 */ void cursorAnm();
    /* 8024ED48 */ void Wait();
    /* 8024ED4C */ void MojiSelect();
    /* 8024F034 */ void MojiSelectAnmInit();
    /* 8024F0E0 */ void MojiSelectAnm();
    /* 8024F164 */ void MojiSelectAnm2();
    /* 8024F1E8 */ void MojiSelectAnm3();
    /* 8024F1EC */ int mojiChange(u8);
    /* 8024F55C */ void selectMojiSet();
    /* 8024F59C */ int getMoji();
    /* 8024F634 */ void setMoji(int);
    /* 8024F88C */ void setNameText();
    /* 8024F914 */ void nameCursorMove();
    /* 8024F994 */ void selectCursorMove();
    /* 8024FAF4 */ void menuCursorPosSet();
    /* 8024FB08 */ void MenuSelect();
    /* 8024FDA0 */ void MenuSelectAnmInit();
    /* 8024FDF4 */ void MenuSelectAnm();
    /* 8024FEB4 */ void MenuSelectAnm2();
    /* 8024FFA0 */ void MenuSelectAnm3();
    /* 8024FFA4 */ void menuAbtnSelect();
    /* 80250074 */ void backSpace();
    /* 802501B0 */ void mojiListChange();
    /* 80250284 */ void menuCursorMove();
    /* 80250380 */ void menuCursorMove2();
    /* 802504A0 */ void selectCursorPosSet(int);
    /* 80250560 */ void _draw();
    /* 802505CC */ void screenSet();
    /* 80250CEC */ void displayInit();
    /* 80250E54 */ void NameStrSet();
    /* 80251048 */ s32 getMenuPosIdx(u8);

    /* 8024E468 */ virtual ~dName_c();

private:
    /* 0x004 */ STControl* stick;
    /* 0x008 */ JKRArchive* archive;
    /* 0x00C */ dDlst_NameIN_c nameIn;
    /* 0x020 */ dSelect_cursor_c* mSelIcon;
    /* 0x024 */ J2DAnmColorKey* mCursorColorKey;
    /* 0x028 */ int mCurColAnmF;
    /* 0x02C */ J2DAnmTextureSRTKey* mCursorTexKey;
    /* 0x030 */ int mCurTexAnmF;
    /* 0x034 */ CPaneMgrAlpha* mNameCursor[8];
    /* 0x054 */ char* mNameText[8];
    /* 0x074 */ CPaneMgr* mMojiIcon[65];
    /* 0x178 */ char* mMojiText[65];
    /* 0x27C */ J2DPane* mMojiPane;
    /* 0x280 */ J2DPane* mMenuPane;
    /* 0x284 */ CPaneMgr* mMenuIcon[4];
    /* 0x294 */ J2DTextBox* mMenuText[4];
    /* 0x2A4 */ u8 mCursorDelay;
    /* 0x2A5 */ u8 mCharColumn;
    /* 0x2A6 */ u8 mPrevColumn;
    /* 0x2A7 */ u8 mCharRow;
    /* 0x2A8 */ u8 mPrevRow;
    /* 0x2A9 */ u8 mMojiSet;
    /* 0x2AA */ u8 mPrevMojiSet;
    /* 0x2AB */ u8 mSelProc;
    /* 0x2AC */ u8 field_0x2ac;
    /* 0x2AD */ u8 field_0x2ad;
    /* 0x2AE */ u8 field_0x2ae;
    /* 0x2AF */ u8 mSelMenu;
    /* 0x2B0 */ u8 mPrevSelMenu;
    /* 0x2B1 */ u8 mCurPos;
    /* 0x2B2 */ u8 mLastCurPos;
    /* 0x2B3 */ u8 field_0x2b3;
    /* 0x2B4 */ u8 mIsInputEnd;
    /* 0x2B5 */ char mInputStr[23];
    /* 0x2CC */ ChrInfo_c mChrInfo[8];
    /* 0x30C */ u8 field_0x30c[4][4];  // ?
    /* 0x31C */ char mNextNameStr[28];
};  // Size: 0x338

#endif /* D_D_NAME_H */

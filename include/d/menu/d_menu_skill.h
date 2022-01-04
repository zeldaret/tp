#ifndef D_MENU_D_MENU_SKILL_H
#define D_MENU_D_MENU_SKILL_H

#include "JSystem/J2DGraph/J2DPicture.h"
#include "d/d_lib.h"
#include "d/d_select_cursor.h"
#include "dolphin/types.h"

class mDoDvdThd_mountArchive_c;
class dMsgString_c;

class dMenu_Skill_c : public dDlst_base_c {
public:
    /* 801F7224 */ dMenu_Skill_c(JKRExpHeap*, STControl*, CSTControl*);
    /* 801F763C */ void _create();
    /* 801F7718 */ void _move();
    /* 801F77B0 */ void _draw();
    /* 801F7950 */ bool isSync();
    /* 801F7978 */ void skill_init_calc();
    /* 801F79EC */ void init();
    /* 801F7A40 */ void _open();
    /* 801F7C1C */ void _close();
    /* 801F7D58 */ void wait_init();
    /* 801F7D94 */ void wait_move();
    /* 801F7F24 */ void read_open_init();
    /* 801F7FF8 */ void read_open_move();
    /* 801F8114 */ void read_move_init();
    /* 801F8150 */ void read_move_move();
    /* 801F8218 */ void read_close_init();
    /* 801F826C */ void read_close_move();
    /* 801F8388 */ void screenSetMenu();
    /* 801F8A18 */ void screenSetLetter();
    /* 801F8D20 */ void screenSetDoIcon();
    /* 801F8E9C */ void setCursorPos();
    /* 801F8F28 */ void changeActiveColor();
    /* 801F9144 */ void setPageText();
    /* 801F9260 */ void setAButtonString(u16);
    /* 801F9310 */ void setBButtonString(u16);
    /* 801F93C0 */ void setNameString(u16);
    /* 801F9470 */ void getSkillNum();
    /* 801F9500 */ void setHIO(bool);

    /* 801F9A08 */ virtual void draw();
    /* 801F7348 */ virtual ~dMenu_Skill_c();

    u8 getStatus() { return mStatus; }

private:
    /* 0x004 */ JKRExpHeap* field_0x4;
    /* 0x008 */ JKRArchive* field_0x8;
    /* 0x00C */ STControl* field_0xc;
    /* 0x010 */ CSTControl* field_0x10;
    /* 0x014 */ mDoDvdThd_mountArchive_c* field_0x14;
    /* 0x018 */ J2DScreen* mpMenuScreen;
    /* 0x01C */ J2DScreen* mpLetterScreen;
    /* 0x020 */ J2DScreen* mpIconScreen;
    /* 0x024 */ J2DPane* field_0x24[4];
    /* 0x034 */ J2DPane* field_0x34[4];
    /* 0x044 */ J2DPane* field_0x44[4];
    /* 0x054 */ J2DPane* field_0x54[4];
    /* 0x064 */ J2DPane* field_0x64[4];
    /* 0x074 */ J2DPane* field_0x74[4];
    /* 0x084 */ J2DPane* field_0x84[4];
    /* 0x094 */ J2DPane* field_0x94[4];
    /* 0x0A4 */ u8 field_0xa4[0xC];
    /* 0x0B0 */ J2DTextBox* field_0xb0[4];
    /* 0x0C0 */ J2DTextBox* field_0xc0[4];
    /* 0x0D0 */ J2DTextBox* field_0xd0[4];
    /* 0x0E0 */ J2DTextBox* field_0xe0[4];
    /* 0x0F0 */ J2DTextBox* field_0xf0[4];
    /* 0x100 */ J2DTextBox* field_0x100[4];
    /* 0x110 */ J2DTextBox* field_0x110[4];
    /* 0x120 */ J2DTextBox* mAButtonString[5];
    /* 0x134 */ J2DTextBox* mBButtonString[5];
    /* 0x148 */ J2DTextBox* mNameString[4];
    /* 0x158 */ J2DPicture* mpBlackTex;
    /* 0x15C */ CPaneMgr* mpParent;
    /* 0x160 */ CPaneMgr* mpLetterParent[7];
    /* 0x17C */ CPaneMgr* mpTextParent;
    /* 0x180 */ CPaneMgr* mpTextPane;
    /* 0x184 */ CPaneMgr* mpExpName;
    /* 0x188 */ CPaneMgr* field_0x188[2];
    /* 0x190 */ CPaneMgr* field_0x190[2];
    /* 0x198 */ dSelect_cursor_c* mpDrawCursor;
    /* 0x19C */ dMsgString_c* mpString;
    /* 0x1A0 */ JUtility::TColor field_0x1a0[5];
    /* 0x1B4 */ JUtility::TColor field_0x1b4[5];
    /* 0x1C8 */ JUtility::TColor field_0x1c8[5];
    /* 0x1DC */ JUtility::TColor field_0x1dc[5];
    /* 0x1F0 */ f32 field_0x1f0;
    /* 0x1F4 */ f32 field_0x1f4;
    /* 0x1F8 */ f32 field_0x1f8;
    /* 0x1FC */ int field_0x1fc;
    /* 0x200 */ u16 field_0x200;
    /* 0x202 */ u16 field_0x202;
    /* 0x204 */ u8 mStatus;
    /* 0x205 */ u8 field_0x205;
    /* 0x206 */ u8 field_0x206;
    /* 0x207 */ u8 field_0x207;
    /* 0x208 */ u8 field_0x208;
    /* 0x209 */ u8 field_0x209;
    /* 0x20A */ u8 field_0x20a;
    /* 0x20B */ u8 field_0x20b;
};  // Size: 0x20C

#endif /* D_MENU_D_MENU_SKILL_H */

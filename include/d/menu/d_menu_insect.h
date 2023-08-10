#ifndef D_MENU_D_MENU_INSECT_H
#define D_MENU_D_MENU_INSECT_H

#include "d/d_drawlist.h"
#include "dolphin/types.h"

class CPaneMgr;
struct CSTControl;
class J2DTextBox;
struct STControl;
class dMsgScrn3Select_c;
class dMsgString_c;
class dSelect_cursor_c;
class mDoDvdThd_mountArchive_c;
class JKRArchive;

class dMenu_Insect_c : public dDlst_base_c {
public:
    /* 801D8114 */ dMenu_Insect_c(JKRExpHeap*, STControl*, CSTControl*, u8);
    /* 801D8658 */ void _create();
    /* 801D86C8 */ void _move();
    /* 801D8760 */ void _draw();
    /* 801D88EC */ bool isSync();
    /* 801D8914 */ void init();
    /* 801D894C */ int _open();
    /* 801D8B2C */ int _close();
    /* 801D8C68 */ void wait_init();
    /* 801D8CCC */ void wait_move();
    /* 801D8E00 */ void explain_open_init();
    /* 801D91E4 */ void explain_open_move();
    /* 801D9264 */ void explain_move_init();
    /* 801D9268 */ void explain_move_move();
    /* 801D9290 */ void select_move_init();
    /* 801D92DC */ void select_move_move();
    /* 801D9504 */ void explain_close_init();
    /* 801D95AC */ void explain_close_move();
    /* 801D9644 */ void screenSetBase();
    /* 801D98F0 */ void screenSetExplain();
    /* 801D9BD0 */ void screenSetDoIcon();
    /* 801D9D4C */ static u8 getGetInsectNum();
    /* 801D9DCC */ u8 getInsectItemID(int, int);
    /* 801D9DE4 */ bool isGetInsect(int, int);
    /* 801D9E20 */ bool isGiveInsect(int, int);
    /* 801D9ED4 */ static bool isGiveInsect(u8);
    /* 801D9E7C */ static bool isCatchInsect(u8);
    /* 801D9F3C */ static u8 isCatchNotGiveInsect(u8);
    /* 801D9F8C */ void cursorMove();
    /* 801DA1EC */ void setCursorPos();
    /* 801DA2FC */ u8 dpdMove();
    /* 801DA304 */ void setAButtonString(u16);
    /* 801DA3B4 */ void setBButtonString(u16);
    /* 801DA464 */ void setHIO(bool);

    /* 801DA630 */ virtual void draw();
    /* 801D82F4 */ virtual ~dMenu_Insect_c();

    u8 getStatus() { return mStatus; }

private:
    /* 0x04 */ JKRExpHeap* mpHeap;
    /* 0x08 */ JKRArchive* mpArchive;
    /* 0x0C */ STControl* mpStick;
    /* 0x10 */ CSTControl* mpCStick;
    /* 0x14 */ mDoDvdThd_mountArchive_c* mpMount;
    /* 0x18 */ dSelect_cursor_c* mpDrawCursor;
    /* 0x1C */ dMsgScrn3Select_c* mpSelect_c;
    /* 0x20 */ J2DScreen* mpScreen;
    /* 0x24 */ J2DScreen* mpExpScreen;
    /* 0x28 */ J2DScreen* mpIconScreen;
    /* 0x2C */ J2DTextBox* mpAButtonString[5];
    /* 0x40 */ J2DTextBox* mpBButtonString[5];
    /* 0x54 */ J2DTextBox* field_0x54;
    /* 0x58 */ J2DTextBox* field_0x58;
    /* 0x5C */ J2DTextBox* field_0x5c;
    /* 0x60 */ J2DPicture* mpBlackTex;
    /* 0x64 */ CPaneMgr* mpParent;
    /* 0x68 */ CPaneMgr* mpExpParent;
    /* 0x6C */ CPaneMgr* mpINSParent[24];
    /* 0xCC */ CPaneMgr* mpInfoText;
    /* 0xD0 */ CPaneMgr* mpExpSubWin[2];
    /* 0xD8 */ CPaneMgr* mpButtonAB[2];
    /* 0xE0 */ CPaneMgr* mpButtonText[2];
    /* 0xE8 */ dMsgString_c* mpString;
    /* 0xEC */ void* mpExpItemTex;
    /* 0xF0 */ s16 field_0xf0;
    /* 0xF2 */ u8 mStatus;
    /* 0xF3 */ u8 field_0xf3;
    /* 0xF4 */ u8 field_0xf4;
    /* 0xF5 */ u8 field_0xf5;
    /* 0xF6 */ u8 field_0xf6;
    /* 0xF7 */ u8 field_0xf7;
    /* 0xF8 */ u8 field_0xf8;
    /* 0xF9 */ u8 field_0xf9;
    /* 0xFA */ u8 field_0xfa;
    /* 0xFB */ u8 field_0xfb;
    /* 0xFC */ u8 field_0xfc;
};

#endif /* D_MENU_D_MENU_INSECT_H */

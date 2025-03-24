#ifndef D_MENU_D_MENU_LETTER_H
#define D_MENU_D_MENU_LETTER_H

#include "d/d_drawlist.h"

class CPaneMgr;
struct CSTControl;
class J2DTextBox;
class STControl;
class mDoDvdThd_mountArchive_c;
class dMsgString_c;
class dMsgScrnArrow_c;
class dSelect_cursor_c;

class dMenu_Letter_c : public dDlst_base_c {
public:
    /* 801DCDC0 */ dMenu_Letter_c(JKRExpHeap*, STControl*, CSTControl*);
    /* 801DD36C */ void _create();
    /* 801DD474 */ void _move();
    /* 801DD50C */ void _draw();
    /* 801DD934 */ bool isSync();
    /* 801DD95C */ void letter_init_calc();
    /* 801DDA20 */ void init();
    /* 801DDA74 */ int _open();
    /* 801DDC98 */ int _close();
    /* 801DDE18 */ void wait_init();
    /* 801DDE54 */ void wait_move();
    /* 801DE164 */ void slide_right_init();
    /* 801DE1E8 */ void slide_right_move();
    /* 801DE24C */ void slide_left_init();
    /* 801DE2D0 */ void slide_left_move();
    /* 801DE334 */ void read_open_init();
    /* 801DE564 */ void read_open_move();
    /* 801DE70C */ void read_move_init();
    /* 801DE824 */ void read_move_move();
    /* 801DEA48 */ void read_next_fadeout_init();
    /* 801DEA94 */ void read_next_fadeout_move();
    /* 801DEBD8 */ void read_next_fadein_init();
    /* 801DED04 */ void read_next_fadein_move();
    /* 801DEE20 */ void read_close_init();
    /* 801DEE6C */ void read_close_move();
    /* 801DF010 */ void screenSetMenu();
    /* 801DFA58 */ void screenSetBase();
    /* 801E0330 */ void screenSetShadow();
    /* 801E03D8 */ void screenSetLetter();
    /* 801E09A8 */ void screenSetDoIcon();
    /* 801E0B24 */ void setCursorPos();
    /* 801E0BB0 */ void changeActiveColor();
    /* 801E0E34 */ void changePageLight();
    /* 801E0E84 */ void setPageText();
    /* 801E1038 */ void setDMYPageText();
    /* 801E11EC */ void copyDMYMenu();
    /* 801E1518 */ void setAButtonString(u16);
    /* 801E15C8 */ void setBButtonString(u16);
    /* 801E1678 */ u8 getLetterNum();
    /* 801E1748 */ void setHIO(bool);

    /* 801E1D5C */ virtual void draw();
    /* 801DCF34 */ virtual ~dMenu_Letter_c();

    u8 getStatus() { return mStatus; }

private:
    /* 0x004 */ JKRExpHeap* mpHeap;
    /* 0x008 */ JKRArchive* mpArchive;
    /* 0x00C */ STControl* mpStick;
    /* 0x010 */ CSTControl* mpCStick;
    /* 0x014 */ mDoDvdThd_mountArchive_c* mpMount;
    /* 0x018 */ J2DScreen* mpMenuScreen;
    /* 0x01C */ J2DScreen* mpMenuDMYScreen;
    /* 0x020 */ J2DScreen* mpBaseScreen;
    /* 0x024 */ J2DScreen* mpSdwScreen;
    /* 0x028 */ J2DScreen* mpLetterScreen[2];
    /* 0x030 */ J2DScreen* mpIconScreen;
    /* 0x034 */ J2DPane* field_0x34[6][5];
    /* 0x0AC */ J2DTextBox* field_0xac[6][5];
    /* 0x124 */ J2DTextBox* field_0x124[6][4];
    /* 0x184 */ J2DTextBox* field_0x184[6][4];
    /* 0x1E4 */ J2DTextBox* field_0x1e4[2];
    /* 0x1EC */ J2DTextBox* field_0x1ec;
    /* 0x1F0 */ J2DTextBox* field_0x1f0[9];
    /* 0x214 */ J2DPicture* mpPageLight[9];
    /* 0x238 */ J2DTextBox* field_0x238[9];
    /* 0x25C */ J2DTextBox* field_0x25c[12];
    /* 0x28C */ J2DTextBox* mpAButtonString[5];
    /* 0x2A0 */ J2DTextBox* mpBButtonString[5];
    /* 0x2B4 */ J2DPicture* mpBlackTex;
    /* 0x2B8 */ CPaneMgr* mpParent[3];
    /* 0x2C4 */ CPaneMgr* mpDMYParent;
    /* 0x2C8 */ CPaneMgr* mpLetterParent[6];
    /* 0x2E0 */ CPaneMgr* mpTextParent[2];
    /* 0x2E8 */ CPaneMgr* mpLineParent;
    /* 0x2EC */ CPaneMgr* field_0x2ec[2];
    /* 0x2F4 */ CPaneMgr* field_0x2f4[2];
    /* 0x2FC */ CPaneMgr* mpButtonAB[2];
    /* 0x304 */ CPaneMgr* mpButtonText[2];
    /* 0x30C */ dSelect_cursor_c* mpDrawCursor;
    /* 0x310 */ dMsgString_c* mpString;
    /* 0x314 */ dMsgScrnArrow_c* mpArrow;
    /* 0x318 */ JUtility::TColor field_0x318[4];
    /* 0x328 */ JUtility::TColor field_0x328[4];
    /* 0x338 */ JUtility::TColor field_0x338[4];
    /* 0x348 */ JUtility::TColor field_0x348[4];
    /* 0x358 */ f32 field_0x358;
    /* 0x35C */ f32 field_0x35c;
    /* 0x360 */ f32 field_0x360;
    /* 0x364 */ f32 field_0x364;
    /* 0x368 */ s16 field_0x368;
    /* 0x36A */ s16 field_0x36a;
    /* 0x36C */ u8 mStatus;
    /* 0x36D */ u8 mProcess;
    /* 0x36E */ u8 mIndex;
    /* 0x36F */ u8 field_0x36f;
    /* 0x370 */ u8 field_0x370;
    /* 0x371 */ u8 field_0x371;
    /* 0x372 */ u8 field_0x372;
    /* 0x373 */ u8 field_0x373;
    /* 0x374 */ u8 field_0x374;
    /* 0x375 */ u8 m_letter_num;
    /* 0x376 */ u8 field_0x376[9][6];
    /* 0x3AC */ u8 field_0x3ac[54];
    /* 0x3E2 */ u8 field_0x3e2;
    /* 0x3E3 */ u8 field_0x3e3;
    /* 0x3E4 */ u8 field_0x3e4;
};

#endif /* D_MENU_D_MENU_LETTER_H */

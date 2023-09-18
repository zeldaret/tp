#ifndef MSG_SCRN_D_MSG_SCRN_3SELECT_H
#define MSG_SCRN_D_MSG_SCRN_3SELECT_H

#include "d/d_drawlist.h"

class J2DScreen;
class J2DAnmTransform;
class J2DAnmColor;
class J2DAnmTextureSRTKey;
class dSelect_cursor_c;
class CPaneMgr;
class J2DTextBox;

class dMsgScrn3Select_c {
public:
    /* 802390B4 */ dMsgScrn3Select_c();
    /* 802398CC */ virtual ~dMsgScrn3Select_c();
    /* 80239C64 */ bool isSelect();
    /* 80239C78 */ void setString(char*, char*, char*);
    /* 80239D08 */ void setRubyString(char*, char*, char*);
    /* 80239D98 */ void translate(f32, f32);
    /* 80239DD4 */ void draw(f32, f32);
    /* 8023A094 */ void selAnimeInit(u8, u8, u8, f32, u8);
    /* 8023A398 */ void selAnimeMove(u8, u8, bool);
    /* 8023A680 */ bool selAnimeEnd();
    /* 8023A934 */ f32 getTextBoxWidth();
    /* 8023A94C */ f32 getFontSize();
    /* 8023A95C */ void getRubyFontSize();
    /* 8023A97C */ f32 getCharSpace();
    /* 8023A98C */ void getRubyCharSpace();
    /* 8023A9AC */ void getTextBoxGlobalPosX(int);
    /* 8023A9D8 */ void getTextBoxGlobalPosY(int);
    /* 8023AA04 */ void open1Proc();
    /* 8023AAF4 */ void open2Proc();
    /* 8023AC14 */ void waitProc();
    /* 8023AC44 */ void selectProc();
    /* 8023AE68 */ void changeProc();
    /* 8023B148 */ void closeProc();
    /* 8023B228 */ void selectScale();
    /* 8023B4AC */ void selectTrans();
    /* 8023B870 */ void selectAnimeTransform(int);

    void setOffsetX(f32 i_offsetX) { mOffsetX = i_offsetX; }

private:
    /* 0x004 */ J2DScreen* mpScreen;
    /* 0x008 */ J2DAnmTransform* mpAnmBck;
    /* 0x00C */ J2DAnmColor* mpAnmBpk;
    /* 0x010 */ J2DAnmTextureSRTKey* mpAnmBtk;
    /* 0x014 */ dSelect_cursor_c* mpSelectCursor;
    /* 0x018 */ CPaneMgr* mpParent;
    /* 0x01C */ CPaneMgr* mpTouchArea[3];
    /* 0x028 */ J2DTextBox* mpTmrSel_c[3];
    /* 0x034 */ CPaneMgr* mpSel_c[3];
    /* 0x040 */ CPaneMgr* mpSelCld_c[3];
    /* 0x04C */ CPaneMgr* mpSelCldr_c[3];
    /* 0x058 */ CPaneMgr* mpSelCldm_c[3];
    /* 0x064 */ CPaneMgr* mpSelCldw_c[5][3];
    /* 0x0A0 */ CPaneMgr* mpSelPo_c[3];
    /* 0x0AC */ CPaneMgr* mpKahen_c[3];
    /* 0x0B8 */ CPaneMgr* mpCursor_c[3];
    /* 0x0C4 */ JUtility::TColor field_0xc4;
    /* 0x0C8 */ JUtility::TColor field_0xc8;
    /* 0x0CC */ u8 field_0xcc[0xF0 - 0xCC];
    /* 0x0F0 */ f32 field_0xf0;
    /* 0x0F4 */ f32 field_0xf4;
    /* 0x0F8 */ f32 field_0xf8;
    /* 0x0FC */ f32 mOffsetX;
    /* 0x100 */ f32 field_0x100;
    /* 0x104 */ f32 field_0x104;
    /* 0x108 */ u8 field_0x108;
    /* 0x109 */ u8 field_0x109[0x10A - 0x109];
    /* 0x10A */ s16 field_0x10a;
    /* 0x10C */ s16 field_0x10c;
    /* 0x10E */ u8 field_0x10e;
    /* 0x10F */ u8 field_0x10f;
    /* 0x110 */ u8 field_0x110;
    /* 0x111 */ u8 field_0x111;
    /* 0x112 */ u8 field_0x112;
    /* 0x113 */ u8 field_0x113;
    /* 0x114 */ u8 field_0x114;
    /* 0x115 */ u8 field_0x115;
    /* 0x116 */ u8 field_0x116;
    /* 0x117 */ u8 field_0x117;
};  // Size: 0x118

#endif /* MSG_SCRN_D_MSG_SCRN_3SELECT_H */

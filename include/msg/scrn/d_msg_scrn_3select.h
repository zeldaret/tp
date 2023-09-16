#ifndef MSG_SCRN_D_MSG_SCRN_3SELECT_H
#define MSG_SCRN_D_MSG_SCRN_3SELECT_H

#include "dolphin/types.h"

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

    u8 field_0x0[0x114];
};

#endif /* MSG_SCRN_D_MSG_SCRN_3SELECT_H */

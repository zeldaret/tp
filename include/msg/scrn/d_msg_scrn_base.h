#ifndef MSG_SCRN_D_MSG_SCRN_BASE_H
#define MSG_SCRN_D_MSG_SCRN_BASE_H

#include "d/msg/d_msg_out_font.h"
#include "d/com/d_com_inf_game.h"

struct CharInfo_c;

class dMsgScrnBase_c : public dDlst_base_c {
public:
    /* 8023C0DC */ dMsgScrnBase_c();
    /* 8023C16C */ void init();
    /* 8023C32C */ void drawOutFont(f32, f32, f32);
    /* 8023C360 */ void setString(char*, char*);
    /* 8023C3EC */ void setRubyString(char*);
    /* 8023C574 */ bool isTalkNow();

    /* 8023C274 */ virtual void draw();
    /* 8023C124 */ virtual ~dMsgScrnBase_c();
    /* 80238C3C */ virtual void exec();
    /* 8023C234 */ virtual void multiDraw();
    /* 8023C300 */ virtual void drawSelf();
    /* 80238C44 */ virtual void setSelectString(char*, char*, char*);
    /* 80238C40 */ virtual void setSelectRubyString(char*, char*, char*);
    /* 80238C58 */ virtual void arwAnimeInit();
    /* 80238C54 */ virtual void arwAnimeMove();
    /* 80238C74 */ virtual void dotAnimeInit();
    /* 80238C70 */ virtual void dotAnimeMove();
    /* 80238C60 */ virtual bool isSelect();
    /* 80238C50 */ virtual void selectAnimeInit(u8, u8, f32, u8);
    /* 80238C48 */ virtual bool selectAnimeMove(u8, u8, bool);
    /* 80238C68 */ virtual bool selectAnimeEnd();
    /* 8023C458 */ virtual void fukiScale(f32);
    /* 8023C480 */ virtual void fukiTrans(f32, f32);
    /* 8023C4A4 */ virtual void fukiAlpha(f32);
    /* 8023C4F4 */ virtual void fontAlpha(f32);
    /* 80238C5C */ virtual void fukiPosCalc(u8);

    /* 0x04 */ J2DScreen* mpScreen;
    /* 0x08 */ CPaneMgr* mpPmp_c;
    /* 0x0C */ CPaneMgr* mpTm_c[7];
    /* 0x28 */ CPaneMgr* mpTmr_c[7];
    /* 0x44 */ COutFont_c* mpOutFont;
    /* 0x48 */ dDlst_base_c* field_0x48;
    /* 0x4C */ u32 field_0x4c;
    /* 0x50 */ CharInfo_c* mCharInfoPtr;
    /* 0x54 */ u32 field_0x54;
    /* 0x58 */ J2DTextBox::TFontSize mFontSize;
    /* 0x60 */ f32 mRubySize;
    /* 0x64 */ f32 mTextBoxPosX;
    /* 0x68 */ f32 mTextBoxPosY;
    /* 0x6C */ f32 mTextBoxScaleX;
    /* 0x70 */ f32 mTextBoxScaleY;
    /* 0x74 */ f32 mTBoxWidth;
    /* 0x78 */ f32 mTBoxHeight;
    /* 0x7C */ f32 mLineSpace;
    /* 0x80 */ f32 mCharSpace;
    /* 0x84 */ f32 mRubyCharSpace;
    /* 0x88 */ f32 mSelFontSize;
    /* 0x8C */ f32 mSelRubySize;
    /* 0x90 */ f32 mSelTextBoxPosX[3];
    /* 0x9C */ f32 mSelTextBoxPosY[3];
    /* 0xA8 */ f32 mSelTBoxWidth;
    /* 0xAC */ f32 mSelCharSpace;
    /* 0xB0 */ f32 mSelRubyCharSpace;
    /* 0xB4 */ f32 mTextBoxPosOffsetY;
    /* 0xB8 */ f32 field_0xb8;
    /* 0xBC */ f32 mCharAlphaRate;
    /* 0xC0 */ u16 mMsgID;
};

#endif /* MSG_SCRN_D_MSG_SCRN_BASE_H */

#ifndef D_MSG_D_MSG_OUT_FONT_H
#define D_MSG_D_MSG_OUT_FONT_H

#include "dolphin/types.h"

class J2DPicture;
class J2DTextBox;

class COutFontSet_c {
public:
    /* 80225BB8 */ COutFontSet_c();
    /* 80225C3C */ void initialize();
    /* 80225C70 */ void drawFont(J2DTextBox*, u8, f32, f32, f32, f32, u32, u8);

    /* 80225BF4 */ virtual ~COutFontSet_c();

    u8 getType() { return mType; }
    u32 getColor() { return mColor; }
    f32 getPosX() { return mPosX; }
    f32 getPosY() { return mPosY; }
    f32 getSizeX() { return mSizeX; }
    f32 getSizeY() { return mSizeY; }
    J2DTextBox* getTextBoxPtr() { return mpTextBoxPtr; }
    void setTextBoxPtr(J2DTextBox* p_textBox) { mpTextBoxPtr = p_textBox; }
    void resetType() { mType = 0x47; }

private:
    /* 0x04 */ J2DTextBox* mpTextBoxPtr;
    /* 0x08 */ f32 mPosX;
    /* 0x0C */ f32 mPosY;
    /* 0x10 */ f32 mSizeX;
    /* 0x14 */ f32 mSizeY;
    /* 0x18 */ u32 mColor;
    /* 0x1C */ u8 mAlpha;
    /* 0x1D */ u8 mType;
};

class COutFont_c {
public:
    /* 80225C94 */ COutFont_c(u8);
    /* 80226CF8 */ void initialize();
    /* 80228490 */ void setBlendAnime(J2DPicture*, s16);
    /* 80228530 */ const char* getBtiName(int);

    /* 80225D60 */ virtual ~COutFont_c();
    /* 80225E7C */ virtual void setPane(J2DPicture*);
    /* 80225EA8 */ virtual void createPane();
    /* 80226DB0 */ virtual void draw(J2DTextBox*, f32, f32, f32);
    /* 80228448 */ virtual void reset(J2DTextBox*);
    /* 80226D4C */ virtual void drawFont(J2DTextBox*, u8, f32, f32, f32, f32, u32, u8);
    /* 80226DA8 */ virtual void setAlphaRatio(f32);

private:
    /* 0x004 */ COutFontSet_c* mpOfs[35];
    /* 0x090 */ J2DPicture* mpPane[70];
    /* 0x1A8 */ f32 mAlphaRatio;
    /* 0x1AC */ f32 field_0x1ac;
    /* 0x1B0 */ f32 field_0x1b0;
    /* 0x1B4 */ s16 field_0x1b4[70];
    /* 0x240 */ bool field_0x240;
    /* 0x241 */ u8 mRupeeColor;
    /* 0x242 */ u8 field_0x242;
};

#endif /* D_MSG_D_MSG_OUT_FONT_H */

#ifndef D_D_SELECT_CURSOR_H
#define D_D_SELECT_CURSOR_H

#include "d/d_drawlist.h"
#include "d/d_select_icon.h"
#include "dolphin/types.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J2DGraph/J2DPane.h"

class dSelect_cursorHIO_c {
public:
    /* 801941E4 */ dSelect_cursorHIO_c();

    /* 80195978 */ virtual ~dSelect_cursorHIO_c();

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 mXAxisExpansion;
    /* 0x10 */ f32 mYAxisExpansion;
    /* 0x14 */ f32 mOscillation;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 mRatioX;
    /* 0x20 */ f32 mRatioY;
    /* 0x24 */ bool mDebugON;
};

class dSelect_cursor_c : public dDlst_base_c {
public:
    /* 80194220 */ dSelect_cursor_c(u8, f32, JKRArchive*);
    /* 80194CC0 */ void update();
    /* 801950F4 */ void setPos(f32, f32, J2DPane*, bool);
    /* 801951B0 */ void setParam(f32, f32, f32, f32, f32);
    /* 801951C8 */ void setScale(f32);
    /* 801952A0 */ void setAlphaRate(f32);
    /* 80195330 */ int addAlpha();
    /* 801953CC */ int decAlpha();
    /* 80195460 */ void setBpkAnimation(J2DAnmColor*);
    /* 801955F0 */ void setBtk0Animation(J2DAnmTextureSRTKey*);
    /* 80195724 */ void setCursorAnimation();
    /* 801958E0 */ void setBckAnimation(J2DAnmTransformKey*);
    /* 80195940 */ void moveCenter(J2DPane*, f32, f32);

    /* 80194C30 */ virtual void draw();
    /* 801949EC */ virtual ~dSelect_cursor_c();

    void setPos(f32 x, f32 y) {
        mPositionX = x;
        mPositionY = y;
    }

    void onUpdateFlag() {
        mUpdateFlag = true;
    }

    void resetUpdateFlag() {
        mUpdateFlag = false;
    }

    bool getUpdateFlag() {
        return mUpdateFlag;
    }

private:
    /* 0x04 */ J2DScreen* mpScreen;
    /* 0x08 */ J2DPane* mpPane;
    /* 0x0C */ dSelect_icon_c* mpSelectIcon;
    /* 0x10 */ CPaneMgr* mpPaneMgr;
    /* 0x14 */ u8 field_0x14[40];
    /* 0x3C */ dSelect_cursorHIO_c* mpCursorHIO;
    /* 0x40 */ u8 field_0x40[16];
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 mPositionX;
    /* 0x5C */ f32 mPositionY;
    /* 0x60 */ f32 mParam1;
    /* 0x64 */ f32 mParam2;
    /* 0x68 */ f32 mParam3;
    /* 0x6C */ f32 mParam4;
    /* 0x70 */ f32 mParam5;
    /* 0x74 */ u8 field_0x74[32];
    /* 0x94 */ f32 field_0x94[4];
    /* 0xA4 */ f32 field_0xa4[4];
    /* 0xB4 */ u8 field_0xb4;
    /* 0xB5 */ s8 mNameIdx;
    /* 0xB6 */ u8 field_0xb6;
    /* 0xB7 */ bool mUpdateFlag;
};

#endif /* D_D_SELECT_CURSOR_H */

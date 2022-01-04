#ifndef D_D_SELECT_CURSOR_H
#define D_D_SELECT_CURSOR_H

#include "dolphin/types.h"
#include "d/d_select_icon.h"
#include "d/d_drawlist.h"

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
    /* 80195330 */ void addAlpha();
    /* 801953CC */ void decAlpha();
    /* 80195460 */ void setBpkAnimation(J2DAnmColor*);
    /* 801955F0 */ void setBtk0Animation(J2DAnmTextureSRTKey*);
    /* 80195724 */ void setCursorAnimation();
    /* 801958E0 */ void setBckAnimation(J2DAnmTransformKey*);
    /* 80195940 */ void moveCenter(J2DPane*, f32, f32);

    /* 80194C30 */ virtual void draw();
    /* 801949EC */ virtual ~dSelect_cursor_c();

private:
};

#endif /* D_D_SELECT_CURSOR_H */

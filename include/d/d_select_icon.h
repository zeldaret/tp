#ifndef D_D_SELECT_ICON_H
#define D_D_SELECT_ICON_H

#include "JSystem/J2DGraph/J2DScreen.h"
#include "d/pane/d_pane_class.h"
#include "dolphin/types.h"

class dSi_HIO_c {
public:
    virtual ~dSi_HIO_c();
    dSi_HIO_c();

    u8 field_0x4[4];
};

class dSelect_icon_c {
public:
    /* 80195A3C */ void animation();
    /* 80195B40 */ void setAlpha(u8);
    /* 80195B70 */ void setPos(J2DPane*, f32, f32);

    /* 0x00 */ u8 field_0x0[8];
    /* 0x08 */ J2DScreen* field_0x8;
    /* 0x0C */ CPaneMgrAlpha* field_0xc;
    /* 0x10 */ CPaneMgr* field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ J2DAnmBase* field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ J2DAnmBase* field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
};

#endif /* D_D_SELECT_ICON_H */

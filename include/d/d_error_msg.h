#ifndef D_D_ERROR_MSG_H
#define D_D_ERROR_MSG_H

#include "d/com/d_com_inf_game.h"

struct dShutdownErrorMsg_c {
    /* 8009D790 */ static bool execute();
};

struct dDvdErrorMsg_c {
    /* 8009D194 */ void draw(s32);
    /* 8009D354 */ static u8 execute();
};

struct J2DOrthoGraph {
    /* 802E96D0 */ J2DOrthoGraph(f32, f32, f32, f32, f32, f32);
    /* 802E97B4 */ void setPort();
    /* 802E980C */ void setOrtho(JGeometry::TBox2<f32> const&, f32, f32);
};

#endif /* D_D_ERROR_MSG_H */

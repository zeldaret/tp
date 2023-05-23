#ifndef MSG_SCRN_D_MSG_SCRN_ARROW_H
#define MSG_SCRN_D_MSG_SCRN_ARROW_H

#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J2DGraph/J2DAnmLoader.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "d/com/d_com_inf_game.h"
#include "d/pane/d_pane_class.h"
#include "dolphin/types.h"

class dMsgScrnArrow_c {
public:
    /* 8023B9B4 */ dMsgScrnArrow_c();
    /* 8023BC78 */ virtual ~dMsgScrnArrow_c();
    /* 8023BDC0 */ void draw();
    /* 8023BDF8 */ void setPos(f32, f32);
    /* 8023BE34 */ void arwAnimeInit();
    /* 8023BE90 */ void arwAnimeMove();
    /* 8023BFC4 */ void dotAnimeInit();
    /* 8023C010 */ void dotAnimeMove();

    /* 0x04 */ J2DScreen* mScreen;
    /* 0x08 */ J2DAnmTransform* mAnmBck;
    /* 0x0C */ J2DAnmColor* mAnmBpk;
    /* 0x10 */ CPaneMgr* mPaneMgr0;
    /* 0x14 */ CPaneMgr* mPaneMgr1;
    /* 0x18 */ CPaneMgr* mPaneMgr2;
    /* 0x1C */ f32 mBckFrame;
    /* 0x20 */ f32 mBpkFrame;
};

#endif /* MSG_SCRN_D_MSG_SCRN_ARROW_H */

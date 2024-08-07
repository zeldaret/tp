#ifndef MSG_SCRN_D_MSG_SCRN_ITEM_H
#define MSG_SCRN_D_MSG_SCRN_ITEM_H

#include "dolphin/types.h"
#include "d/msg/d_msg_scrn_base.h"

struct dMsgScrnItem_c : public dMsgScrnBase_c {
    /* 8023E79C */ dMsgScrnItem_c(u8, u8, JKRExpHeap*);
    /* 8023F51C */ ~dMsgScrnItem_c();
    /* 8023F888 */ void exec();
    /* 8023FB24 */ void drawSelf();
    /* 8023FF30 */ void arwAnimeInit();
    /* 8023FF54 */ void arwAnimeMove();
    /* 8023FF78 */ void dotAnimeInit();
    /* 8023FF9C */ void dotAnimeMove();
    /* 8023FFC0 */ void setSelectString(char*, char*, char*);
    /* 8023FFE4 */ void setSelectRubyString(char*, char*, char*);
    /* 80240008 */ bool isSelect();
    /* 8024002C */ void selectAnimeInit(u8, u8, f32, u8);
    /* 8024005C */ bool selectAnimeMove(u8, u8, bool);
    /* 80240080 */ bool selectAnimeEnd();
    /* 802400A4 */ void fukiScale(f32);
    /* 802400A8 */ void fukiTrans(f32, f32);
    /* 802400CC */ void fukiAlpha(f32);
    /* 80240174 */ void fukiPosCalc(u8);
    /* 8024074C */ void setBtk0Animation(J2DAnmTextureSRTKey*);
    /* 802407E8 */ void setBpk0Animation(J2DAnmColor*);
    /* 80240844 */ void setBpk1Animation(J2DAnmColor*);
    /* 802408A4 */ void isOugiID();

    u8 field_0xc4[0x1a0 - 0xc4];
};

#endif /* MSG_SCRN_D_MSG_SCRN_ITEM_H */

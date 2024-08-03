#ifndef MSG_SCRN_D_MSG_SCRN_TALK_H
#define MSG_SCRN_D_MSG_SCRN_TALK_H

#include "dolphin/types.h"
#include "d/msg/d_msg_scrn_base.h"

struct dMsgScrnTalk_c : public dMsgScrnBase_c {
    /* 80246FF0 */ dMsgScrnTalk_c(u8, u8, JKRExpHeap*);
    /* 80247A90 */ ~dMsgScrnTalk_c();
    /* 80247D34 */ void exec();
    /* 80247E4C */ void drawSelf();
    /* 802480F0 */ void arwAnimeInit();
    /* 80248114 */ void arwAnimeMove();
    /* 80248138 */ void dotAnimeInit();
    /* 8024815C */ void dotAnimeMove();
    /* 80248180 */ void setSelectString(char*, char*, char*);
    /* 802481AC */ void setSelectRubyString(char*, char*, char*);
    /* 802481D8 */ bool isSelect();
    /* 8024820C */ void selectAnimeInit(u8, u8, f32, u8);
    /* 80248244 */ bool selectAnimeMove(u8, u8, bool);
    /* 80248278 */ bool selectAnimeEnd();
    /* 802482AC */ void fukiScale(f32);
    /* 802482B0 */ void fukiTrans(f32, f32);
    /* 802482B4 */ void fukiAlpha(f32);
    /* 8024835C */ void fukiPosCalc(u8);

    u8 field_0xc4[0x48c - 0xc4];
};

#endif /* MSG_SCRN_D_MSG_SCRN_TALK_H */

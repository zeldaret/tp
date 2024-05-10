#ifndef MSG_SCRN_D_MSG_SCRN_JIMAKU_H
#define MSG_SCRN_D_MSG_SCRN_JIMAKU_H

#include "d/msg/d_msg_scrn_base.h"
#include "JSystem/JKernel/JKRExpHeap.h"

class dMsgScrnLight_c;

class dMsgScrnJimaku_c : public dMsgScrnBase_c {
public:
    /* 80244558 */ dMsgScrnJimaku_c(u8, JKRExpHeap*);
    /* 80244A74 */ virtual ~dMsgScrnJimaku_c();
    /* 80244C2C */ virtual void exec();
    /* 80244D34 */ virtual void drawSelf();
    /* 80244E2C */ virtual void fukiScale(f32);
    /* 80244D8C */ virtual void fukiAlpha(f32);
    /* 80244E30 */ virtual void fukiTrans(f32, f32);
    /* 80244E34 */ virtual void fontAlpha(f32);

    /* 0xC4 */ dMsgScrnLight_c* mpLight_c;
    /* 0xC8 */ JKRExpHeap* heap;
    /* 0xCC */ f32 field_0xcc;
};

#endif /* MSG_SCRN_D_MSG_SCRN_JIMAKU_H */

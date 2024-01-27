#ifndef MSG_SCRN_D_MSG_SCRN_KANBAN_H
#define MSG_SCRN_D_MSG_SCRN_KANBAN_H

#include "dolphin/types.h"
#include "msg/scrn/d_msg_scrn_base.h"

class JKRExpHeap;
class J2DAnmTransform;
class J2DAnmTextureSRTKey;
class CPaneMgr;

struct dMsgScrnKanban_c : public dMsgScrnBase_c {
    /* 80244E38 */ dMsgScrnKanban_c(JKRExpHeap*);
    /* 8024534C */ ~dMsgScrnKanban_c();
    /* 80245528 */ void exec();
    /* 80245618 */ void draw();
    /* 802456A0 */ void fukiAlpha(f32);
    /* 80245754 */ void fukiScale(f32);
    /* 80245758 */ void fukiTrans(f32, f32);

    /* 0xC4 */ CPaneMgr* mpBack_c;
    /* 0xC8 */ CPaneMgr* mpSpot_c;
    /* 0xCC */ J2DAnmTransform* field_0xcc;
    /* 0xD0 */ J2DAnmTextureSRTKey* field_0xd0;
    /* 0xD4 */ JKRExpHeap* field_0xd4;
    /* 0xD8 */ f32 field_0xd8;
};

#endif /* MSG_SCRN_D_MSG_SCRN_KANBAN_H */

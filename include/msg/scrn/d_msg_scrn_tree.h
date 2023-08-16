#ifndef MSG_SCRN_D_MSG_SCRN_TREE_H
#define MSG_SCRN_D_MSG_SCRN_TREE_H

#include "msg/scrn/d_msg_scrn_base.h"

struct JUTFont;
struct JKRExpHeap;

struct dMsgScrnTree_c : public dMsgScrnBase_c {
    /* 80248954 */ dMsgScrnTree_c(JUTFont*, JKRExpHeap*);
    /* 80248F14 */ virtual ~dMsgScrnTree_c();
    /* 80249118 */ void exec();
    /* 80249270 */ void draw();
    /* 802492F8 */ void fukiAlpha(f32);
    /* 802493AC */ void fukiScale(f32);
    /* 802493B0 */ void fukiTrans(f32, f32);

    /* 0xC4 */ CPaneMgr* field_0xc4;
    /* 0xC8 */ CPaneMgr* field_0xc8;
    /* 0xCC */ J2DAnmTransform* field_0xcc;
    /* 0xD0 */ J2DAnmTextureSRTKey* field_0xd0;
    /* 0xD4 */ J2DAnmTextureSRTKey* field_0xd4;
    /* 0xD8 */ JKRExpHeap* field_0xd8;
    /* 0xDC */ f32 field_0xdc;
    /* 0xDC */ f32 field_0xe0;

};

#endif /* MSG_SCRN_D_MSG_SCRN_TREE_H */

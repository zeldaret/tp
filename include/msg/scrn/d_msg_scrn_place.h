#ifndef MSG_SCRN_D_MSG_SCRN_PLACE_H
#define MSG_SCRN_D_MSG_SCRN_PLACE_H

#include "msg/scrn/d_msg_scrn_base.h"

class dMsgScrnPlace_c : public dMsgScrnBase_c {
public:
    /* 802463CC */ dMsgScrnPlace_c();

    /* 802467C4 */ virtual ~dMsgScrnPlace_c();
    /* 80246924 */ virtual void exec();
    /* 80246A44 */ virtual void drawSelf();
    /* 80246A9C */ virtual void fukiAlpha(f32);
    /* 80246B28 */ virtual void fukiScale(f32);
    /* 80246B2C */ virtual void fukiTrans(f32, f32);
    /* 80246B30 */ virtual void fontAlpha(f32);

    /* 0xC4 */ CPaneMgr* mpBaseParent;
    /* 0xC8 */ CPaneMgr* mpFontParent;
    /* 0xCC */ f32 mScaleX;
    /* 0xD0 */ f32 mScaleY;
};

#endif /* MSG_SCRN_D_MSG_SCRN_PLACE_H */

#ifndef MSG_SCRN_D_MSG_SCRN_BOSS_H
#define MSG_SCRN_D_MSG_SCRN_BOSS_H

#include "d/d_msg_scrn_base.h"

class dMsgScrnBoss_c : public dMsgScrnBase_c {
public:
    /* 8023C5C8 */ dMsgScrnBoss_c();

    /* 8023C928 */ virtual ~dMsgScrnBoss_c();
    /* 8023CA88 */ virtual void exec();
    /* 8023CB98 */ virtual void drawSelf();
    /* 8023CC7C */ virtual void fukiScale(f32);
    /* 8023CC80 */ virtual void fukiTrans(f32, f32);
    /* 8023CC84 */ virtual void fontAlpha(f32);
    /* 8023CBF0 */ virtual void fukiAlpha(f32);

private:
    /* 0xC4 */ CPaneMgr* mpBaseParent;
    /* 0xC8 */ CPaneMgr* mpFontParent;
};

#endif /* MSG_SCRN_D_MSG_SCRN_BOSS_H */

#ifndef MSG_SCRN_D_MSG_SCRN_STAFF_H
#define MSG_SCRN_D_MSG_SCRN_STAFF_H

#include "msg/scrn/d_msg_scrn_base.h"

class dMsgScrnStaff_c : public dMsgScrnBase_c {
public:
    /* 80246B34 */ dMsgScrnStaff_c(u8);

    /* 80246DD8 */ virtual ~dMsgScrnStaff_c();
    /* 80246EE8 */ virtual void exec();
    /* 80246F68 */ virtual void drawSelf();
    /* 80246FC0 */ virtual void fukiAlpha(f32);
    /* 80246FE4 */ virtual void fukiScale(f32);
    /* 80246FE8 */ virtual void fukiTrans(f32, f32);
    /* 80246FEC */ virtual void fontAlpha(f32);

    /* 0XC4 */ u8 field_0xc4[0xD0 - 0xC8];
    /* 0xCC */ f32 field_0xcc;
    /* 0xD0 */ f32 field_0xd0;
};

#endif /* MSG_SCRN_D_MSG_SCRN_STAFF_H */

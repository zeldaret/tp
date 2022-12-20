#ifndef D_A_MG_ROD_H
#define D_A_MG_ROD_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/msg/d_msg_flow.h"
#include "f_op/f_op_actor.h"

struct mg_rod_s {
    /* 0x0 */ cXyz field_0x0[16];
};

struct mg_line_s {
    /* 0x0 */ cXyz field_0x0[100];
};

struct mg_hook_s {
    /* 0x00 */ cXyz field_0x0[2];
    /* 0x18 */ u8 field_0x18[0x20 - 0x18];
};

class dmg_rod_class : public fopAc_ac_c {
public:
    /* 804BAC0C */ dmg_rod_class();

    f32 getRodStickX() { return mRodStickX; }
    f32 getRodStickY() { return mRodStickY; }
    bool checkRodEquipPermission() { return field_0x1514 == 0; }

private:
    /* 0x0568 */ u8 field_0x568[0x5A4 - 0x568];
    /* 0x05A4 */ mg_rod_s field_0x5a4;
    /* 0x0664 */ u8 field_0x664[0x6AC - 0x664];
    /* 0x06AC */ cXyz field_0x6ac;
    /* 0x06B8 */ cXyz field_0x6b8;
    /* 0x06C4 */ u8 field_0x6c4[0x6C8 - 0x6C4];
    /* 0x06C8 */ cXyz field_0x6c8;
    /* 0x06D4 */ cXyz field_0x6d4;
    /* 0x06E0 */ u8 field_0x6e0[0x6EC - 0x6E0];
    /* 0x06EC */ cXyz field_0x6ec;
    /* 0x06F8 */ u8 field_0x6f8[0x71C - 0x6F8];
    /* 0x071C */ csXyz field_0x71c[6];
    /* 0x0740 */ u8 field_0x740[0x744 - 0x740];
    /* 0x0744 */ cXyz field_0x744;
    /* 0x0750 */ cXyz field_0x750;
    /* 0x075C */ u8 field_0x75c[0x764 - 0x75C];
    /* 0x0764 */ cXyz field_0x764;
    /* 0x0770 */ mg_line_s field_0x770;
    /* 0x0C20 */ u8 field_0xc20[0xFAC - 0xC20];
    /* 0x0FAC */ mg_hook_s field_0xfac[2];
    /* 0x0FEC */ u8 field_0xfec[0x1060 - 0xFEC];
    /* 0x1060 */ cXyz field_0x1060;
    /* 0x106C */ cXyz field_0x106c;
    /* 0x1078 */ cXyz field_0x1078;
    /* 0x1084 */ csXyz field_0x1084;
    /* 0x108A */ u8 field_0x108a[0x10B4 - 0x108A];
    /* 0x10B4 */ Z2Creature field_0x10b4;
    /* 0x1144 */ u8 field_0x1144[0x1190 - 0x1144];
    /* 0x1190 */ dBgS_AcchCir field_0x1190;
    /* 0x11D0 */ dBgS_ObjAcch field_0x11d0;
    /* 0x13A8 */ u8 field_0x13a8[0x1474 - 0x13A8];
    /* 0x1474 */ dMsgFlow_c mMsgFlow;
    /* 0x14C0 */ u8 field_0x14c0[0x14C8 - 0x14C0];
    /* 0x14C8 */ f32 mRodStickX;
    /* 0x14CC */ f32 mRodStickY;
    /* 0x14D0 */ u8 field_0x14d0[0x1514 - 0x14D0];
    /* 0x1514 */ u8 field_0x1514;
    /* 0x1515 */ u8 field_0x1515[0x1518 - 0x1515];
    /* 0x1518 */ dCcD_Stts field_0x1518;
    /* 0x1554 */ dCcD_Sph field_0x1554;
};

#endif /* D_A_MG_ROD_H */

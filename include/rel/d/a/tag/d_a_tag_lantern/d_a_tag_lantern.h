#ifndef D_A_TAG_LANTERN_H
#define D_A_TAG_LANTERN_H

#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"
#include "d/msg/d_msg_flow.h"

class daTag_Lantern_c : public fopAc_ac_c {
public:
    /* 8048ED28 */ int create();
    /* 8048EDA8 */ int Delete();
    /* 8048EDDC */ int Execute();
    /* 8048EF6C */ int Draw();
    /* 8048EF74 */ void initialize();

    /* 0x568 */ dMsgFlow_c field_0x568;
    /* 0x5B4 */ cBgS_GndChk field_0x5b4;
    /* 0x5F0 */ u32 field_0x5f0;
    /* 0x5F4 */ f32 field_0x5f4;
    /* 0x5F8 */ s32 field_0x5f8;
    /* 0x5FC */ u32 field_0x5fc;
    /* 0x600 */ s32 field_0x600;
    /* 0x604 */ u8 field_0x604;
    
    /* 8048ECAC */ virtual ~daTag_Lantern_c();
}; // Size: 0x60C

class daTag_Lantern_Param_c {
public:
    /* 8048F0EC */ inline virtual ~daTag_Lantern_Param_c() {}
};

#endif /* D_A_TAG_LANTERN_H */

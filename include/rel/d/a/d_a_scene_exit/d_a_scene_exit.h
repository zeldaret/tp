#ifndef D_A_SCENE_EXIT_H
#define D_A_SCENE_EXIT_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daScex_c : public fopAc_ac_c {
public:
    daScex_c() {}
    /* 80485838 */ int checkWork();
    /* 80485A50 */ int execute();

    u8 getArg1() { return (fopAcM_GetParam(this) >> 8) & 0xFF; }
    u8 getArg0() { return fopAcM_GetParam(this); }
    u32 getSwNo() { return fopAcM_GetParam(this) >> 0x18; }
    u16 getOffEventBit() { return orig.angle.z & 0xFFF; }
    u16 getOnEventBit() { return orig.angle.x & 0xFFF; }
    void setSceneChangeOK() { mSceneChangeOK = true; }

    /* 0x568 */ Mtx mMatrix;
    /* 0x598 */ u8 field_0x598;
    /* 0x599 */ bool mSceneChangeOK;
};

#endif /* D_A_SCENE_EXIT_H */

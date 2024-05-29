#ifndef D_A_OBJ_KAGO_H
#define D_A_OBJ_KAGO_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObj_Kago_c
 * @brief Basket
 *
 * @details
 *
 */
class daObj_Kago_c : public fopAc_ac_c {
public:
    /* 80C31AEC */ ~daObj_Kago_c();
    /* 80C31D5C */ void create();
    /* 80C323D0 */ void CreateHeap();
    /* 80C324B0 */ void Delete();
    /* 80C324E4 */ void Execute();
    /* 80C332D0 */ void Draw();
    /* 80C333F0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80C33410 */ void isDelete();
    /* 80C334B4 */ void setEnvTevColor();
    /* 80C33510 */ void setRoomNo();
    /* 80C33554 */ void reset();
    /* 80C3359C */ void setMtx();
    /* 80C33620 */ void getWallAngle(s16, s16*);
    /* 80C337B0 */ void setGoalPosAndAngle();
    /* 80C338D0 */ void setSmokePrtcl();
    /* 80C33958 */ void setWaterPrtcl();
    /* 80C33A58 */ void setHamonPrtcl();
private:
    /* 0x568 */ u8 field_0x568[0xba8 - 0x568];
};
STATIC_ASSERT(sizeof(daObj_Kago_c) == 0xba8);

class daObj_Kago_Param_c {
public:
    /* 80C33C14 */ ~daObj_Kago_Param_c();

    static u8 const m[44];
};


#endif /* D_A_OBJ_KAGO_H */

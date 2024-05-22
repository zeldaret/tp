#ifndef D_A_OBJ_GADGET_H
#define D_A_OBJ_GADGET_H

#include "f_op/f_op_actor_mng.h"

class daObj_Gadget_c : public fopAc_ac_c {
public:
    /* 80BF2D2C */ ~daObj_Gadget_c();
    /* 80BF2F28 */ void create();
    /* 80BF3478 */ void CreateHeap();
    /* 80BF3504 */ void Delete();
    /* 80BF3538 */ void Execute();
    /* 80BF3FAC */ void Draw();
    /* 80BF4130 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80BF4150 */ void setEnvTevColor();
    /* 80BF41AC */ void setRoomNo();
    /* 80BF41F0 */ void reset();
    /* 80BF424C */ void setMtx();
    /* 80BF4354 */ void calcRollAngle(s16, int);
    /* 80BF43F4 */ void getWallAngle(s16, s16*);
    /* 80BF4584 */ void setSmokePrtcl();
    /* 80BF4600 */ void setWaterPrtcl();
    /* 80BF4728 */ void setHamonPrtcl();

private:
    /* 0x568 */ u8 field_0x568[0xa4c - 0x568];
};
STATIC_ASSERT(sizeof(daObj_Gadget_c) == 0xa4c);

class daObj_Gadget_Param_c {
public:
    /* 80BF48D8 */ ~daObj_Gadget_Param_c();

    static u8 const m[44];
};


#endif /* D_A_OBJ_GADGET_H */

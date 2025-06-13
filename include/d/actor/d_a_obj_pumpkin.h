#ifndef D_A_OBJ_PUMPKIN_H
#define D_A_OBJ_PUMPKIN_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObj_Pumpkin_c
 * @brief Ordon Village Pumpkin
 *
 * @details
 *
 */
class daObj_Pumpkin_c : public fopAc_ac_c {
public:
    /* 80CB578C */ ~daObj_Pumpkin_c();
    /* 80CB5A04 */ void create();
    /* 80CB5F88 */ void CreateHeap();
    /* 80CB6018 */ void Delete();
    /* 80CB604C */ void Execute();
    /* 80CB7638 */ void Draw();
    /* 80CB7824 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80CB7844 */ void isDelete();
    /* 80CB78C8 */ void setEnvTevColor();
    /* 80CB7924 */ void setRoomNo();
    /* 80CB7968 */ void reset();
    /* 80CB79DC */ void setMtx();
    /* 80CB7AE4 */ void calcRollAngle(s16, int);
    /* 80CB7B84 */ void getWallAngle(s16, s16*);
    /* 80CB7D14 */ void setSmokePrtcl();
    /* 80CB7D98 */ void setWaterPrtcl();
    /* 80CB7E98 */ void setHamonPrtcl();
    /* 80CB7EF4 */ void crash();

    void setMtx(MtxP mtx) {
        cXyz newPos;
        field_0xbb3 = 1;
        mDoMtx_stack_c::copy(mtx);
        mDoMtx_stack_c::multVecZero(&newPos);
        current.pos = newPos;
        old.pos = current.pos;
        mpModel->setBaseTRMtx(mtx);
    }

private:
    /* 0x568 */ u8 field_0x568[0x574 - 0x568];
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ u8 field_0x578[0xbb3 - 0x578];
    /* 0xB7C */ u8 field_0xbb3;
    /* 0xB7E */ u8 field_0xbb4[0xbbc - 0xbb4];
};

STATIC_ASSERT(sizeof(daObj_Pumpkin_c) == 0xbbc);

class daObj_Pumpkin_Param_c {
public:
    /* 80CB8304 */ ~daObj_Pumpkin_Param_c();

    static u8 const m[52];
};


#endif /* D_A_OBJ_PUMPKIN_H */

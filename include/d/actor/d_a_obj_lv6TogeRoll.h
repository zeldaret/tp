#ifndef D_A_OBJ_LV6TOGEROLL_H
#define D_A_OBJ_LV6TOGEROLL_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daTogeRoll_c
 * @brief Temple of Time Spike Roller
 *
 * @details
 *
 */
class daTogeRoll_c : public fopAc_ac_c {
public:
    /* 80C77CC8 */ void setBaseMtx();
    /* 80C77D50 */ void CreateHeap();
    /* 80C77DBC */ void create();
    /* 80C78294 */ void Execute(f32 (**)[3][4]);
    /* 80C78638 */ void moveTogeRoll();
    /* 80C78A8C */ void init_modeBound();
    /* 80C78B7C */ void modeBound();
    /* 80C78BD8 */ void modeBound2();
    /* 80C78C34 */ void init_modeBoundWait();
    /* 80C78C50 */ void modeBoundWait();
    /* 80C78CA8 */ void init_modeAcc();
    /* 80C78CB4 */ void modeAcc();
    /* 80C78DA0 */ void init_modeMove();
    /* 80C78DAC */ void modeMove();
    /* 80C790C4 */ void init_modeBrk();
    /* 80C790D0 */ void modeBrk();
    /* 80C792CC */ void init_modeWaitInit();
    /* 80C792E4 */ void modeWaitInit();
    /* 80C79318 */ void init_modeWait();
    /* 80C79324 */ void modeWait();
    /* 80C79344 */ void init_modeBreak();
    /* 80C793C8 */ void modeBreak();
    /* 80C795E8 */ void setNextPoint();
    /* 80C79714 */ void Draw();
    /* 80C797B8 */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 const mCcDObjInfo2[48];
    static u8 const mSpeed[64];
    static u8 mCcDSph[64];
    static u8 mCcDCps[76];

private:
    /* 0x568 */ u8 field_0x568[0x117c - 0x568];
};

STATIC_ASSERT(sizeof(daTogeRoll_c) == 0x117c);

class daTogeRoll_HIO_c {
public:
    /* 80C77C2C */ daTogeRoll_HIO_c();
    /* 80C798D0 */ ~daTogeRoll_HIO_c();
};


#endif /* D_A_OBJ_LV6TOGEROLL_H */

#ifndef D_A_OBJ_LV8LIFT_H
#define D_A_OBJ_LV8LIFT_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daL8Lift_c : public fopAc_ac_c {
public:
    /* 80C887D8 */ void setBaseMtx();
    /* 80C88860 */ void CreateHeap();
    /* 80C88928 */ void create();
    /* 80C88D6C */ void lightSet();
    /* 80C88DBC */ void rideCallBack(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80C88DD4 */ void Execute(f32 (**)[3][4]);
    /* 80C88E34 */ void moveLift();
    /* 80C890B8 */ void modeAcc();
    /* 80C89198 */ void init_modeMove();
    /* 80C891A4 */ void modeMove();
    /* 80C894BC */ void init_modeBrk();
    /* 80C894C8 */ void modeBrk();
    /* 80C896C8 */ void init_modeWaitInit();
    /* 80C896D4 */ void modeWaitInit();
    /* 80C89708 */ void init_modeWait();
    /* 80C89714 */ void modeWait();
    /* 80C89720 */ void init_modeMoveWait();
    /* 80C8972C */ void modeMoveWait();
    /* 80C89770 */ void init_modeOnAnm();
    /* 80C89820 */ void modeOnAnm();
    /* 80C89874 */ void init_modeStop();
    /* 80C898DC */ void modeStop();
    /* 80C899D0 */ void init_modeInitSet();
    /* 80C89A04 */ void modeInitSet();
    /* 80C89A24 */ void init_modeInitSet2();
    /* 80C89A58 */ void modeInitSet2();
    /* 80C89A78 */ void liftReset();
    /* 80C89ADC */ void setNextPoint();
    /* 80C89C10 */ void Draw();
    /* 80C89DC8 */ void Delete();

    static u8 const mSpeed[64];

private:
    /* 0x568 */ u8 field_0x568[0x830 - 0x568];
};
STATIC_ASSERT(sizeof(daL8Lift_c) == 0x830);

class daL8Lift_HIO_c {
public:
    /* 80C8872C */ daL8Lift_HIO_c();
    /* 80C89EA4 */ ~daL8Lift_HIO_c();
};


#endif /* D_A_OBJ_LV8LIFT_H */

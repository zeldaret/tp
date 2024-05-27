#ifndef D_A_OBJ_LV8OPTILIFT_H
#define D_A_OBJ_LV8OPTILIFT_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daOptiLift_c
 * @brief Palace of Twilight Optilift
 *
 * @details
 *
 */
class daOptiLift_c : public fopAc_ac_c {
public:
    /* 80C8A3B0 */ void setBaseMtx();
    /* 80C8A438 */ void CreateHeap();
    /* 80C8A500 */ void create();
    /* 80C8A780 */ void lightSet();
    /* 80C8A7D0 */ void rideCallBack(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80C8A7E8 */ void Execute(f32 (**)[3][4]);
    /* 80C8A848 */ void moveLift();
    /* 80C8AAC4 */ void init_modeAcc();
    /* 80C8AAD0 */ void modeAcc();
    /* 80C8ABB0 */ void init_modeMove();
    /* 80C8ABBC */ void modeMove();
    /* 80C8AED4 */ void init_modeBrk();
    /* 80C8AEE0 */ void modeBrk();
    /* 80C8B100 */ void init_modeMoveInit();
    /* 80C8B1B0 */ void modeMoveInit();
    /* 80C8B1F0 */ void init_modeMoveWait();
    /* 80C8B230 */ void modeMoveWait();
    /* 80C8B288 */ void init_modeWait();
    /* 80C8B294 */ void modeWait();
    /* 80C8B298 */ void init_modeStop();
    /* 80C8B318 */ void modeStop();
    /* 80C8B428 */ void init_modeInitSet();
    /* 80C8B464 */ void modeInitSet();
    /* 80C8B484 */ void init_modeInitSet2();
    /* 80C8B4B8 */ void modeInitSet2();
    /* 80C8B4D8 */ void liftReset();
    /* 80C8B53C */ void setNextPoint();
    /* 80C8B66C */ void Draw();
    /* 80C8B824 */ void Delete();

    static u8 const mSpeed[64];

private:
    /* 0x568 */ u8 field_0x568[0x618 - 0x568];
};
STATIC_ASSERT(sizeof(daOptiLift_c) == 0x618);

class daOptiLift_HIO_c {
public:
    /* 80C8A30C */ daOptiLift_HIO_c();
    /* 80C8B900 */ ~daOptiLift_HIO_c();
};


#endif /* D_A_OBJ_LV8OPTILIFT_H */

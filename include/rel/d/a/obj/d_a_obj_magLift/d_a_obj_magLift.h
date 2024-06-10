#ifndef D_A_OBJ_MAGLIFT_H
#define D_A_OBJ_MAGLIFT_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daMagLift_c
 * @brief Magnetic Lift
 *
 * @details
 *
 */
class daMagLift_c : public fopAc_ac_c {
public:
    /* 80C8DAA0 */ void setBaseMtx();
    /* 80C8DB28 */ void CreateHeap();
    /* 80C8DB94 */ void create();
    /* 80C8DD38 */ void Execute(f32 (**)[3][4]);
    /* 80C8DD88 */ void moveLift();
    /* 80C8DE98 */ void modeAcc();
    /* 80C8DF20 */ void init_modeMove();
    /* 80C8DF2C */ void modeMove();
    /* 80C8E1EC */ void init_modeBrk();
    /* 80C8E1F8 */ void modeBrk();
    /* 80C8E260 */ void init_modeWaitInit();
    /* 80C8E26C */ void modeWaitInit();
    /* 80C8E2A0 */ void init_modeWait();
    /* 80C8E2AC */ void modeWait();
    /* 80C8E2B8 */ void init_modeMoveWait();
    /* 80C8E2C4 */ void modeMoveWait();
    /* 80C8E318 */ void modeDead();
    /* 80C8E31C */ void setNextPoint();
    /* 80C8E450 */ void Draw();
    /* 80C8E4F4 */ void Delete();

    static u8 const mSpeed[64];

private:
    /* 0x568 */ u8 field_0x568[0x5d4 - 0x568];
};

STATIC_ASSERT(sizeof(daMagLift_c) == 0x5d4);

class daMagLift_HIO_c {
public:
    /* 80C8DA2C */ daMagLift_HIO_c();
    /* 80C8E5B0 */ ~daMagLift_HIO_c();
};


#endif /* D_A_OBJ_MAGLIFT_H */

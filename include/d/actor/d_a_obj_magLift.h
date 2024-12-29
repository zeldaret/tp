#ifndef D_A_OBJ_MAGLIFT_H
#define D_A_OBJ_MAGLIFT_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_com_inf_game.h"

/**
 * @ingroup actors-objects
 * @class daMagLift_c
 * @brief Magnetic Lift
 *
 * @details
 *
 */
class daMagLift_c : public dBgS_MoveBgActor {
public:
    enum Mode_e {
        MODE_ACC_e,
        MODE_MOVE_e,
        MODE_BRK_e,
        MODE_WAIT_e,
        MODE_WAIT_INIT_e,
        MODE_DEAD_e,
        MODE_MOVE_WAIT_e
    };

    /* 80C8DAA0 */ void setBaseMtx();
    /* 80C8DB28 */ int CreateHeap();
    /* 80C8DB94 */ int create();
    /* 80C8DD38 */ int Execute(Mtx**);
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
    /* 80C8E450 */ int Draw();
    /* 80C8E4F4 */ int Delete();

    int getMoveSpeed() { return fopAcM_GetParamBit(this, 0x8, 4); }

    static f32 const mSpeed[16];

private:
    /* 0x5a0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5a8 */ J3DModel* mpModel;
    /* 0x5ac */ u8 field_0x5ac [0x5ae - 0x5ac];
    /* 0x5ae */ u8 field_0x5ae;
    /* 0x5af */ s8 field_0x5af;
    /* 0x5b0 */ s16 mPoint;
    // two bytes of padding.
    /* 0x5b4 */ cXyz field_0x5b4;
    /* 0x5c0 */ cXyz field_0x5c0;
    /* 0x5cc */ float mMoveSpeed;
    /* 0x5d0 */ u8 mMode;
    /* 0x5d1 */ u8 is_switch;
    // The rest is word padding.
};

STATIC_ASSERT(sizeof(daMagLift_c) == 0x5d4);

class daMagLift_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C8DA2C */ daMagLift_HIO_c();
    /* 80C8E5B0 */ virtual ~daMagLift_HIO_c() {}

    /* 0x4 */ u8 field_0x4;
    /* 0x5 */ u8 field_0x5;
};


#endif /* D_A_OBJ_MAGLIFT_H */

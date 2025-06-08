#ifndef D_A_OBJ_LV4GATE_H
#define D_A_OBJ_LV4GATE_H

#include "d/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"
#include "m_Do/m_Do_hostIO.h"

/**
 * @ingroup actors-objects
 * @class daLv4Gate_c
 * @brief Arbiter's Grounds Gate
 *
 * @details
 *
 */
class daLv4Gate_c : public dBgS_MoveBgActor {
public:
    enum Mode_e {
        MODE_WAIT_e,
        MODE_MOVE_e,
        MODE_MOVE_END_e,
    };

    /* 80C5EBE4 */ void setBaseMtx();
    /* 80C5ECEC */ int create();
    /* 80C5EEA4 */ void moveGate();
    /* 80C5EF48 */ void init_modeWait();
    /* 80C5EF54 */ void modeWait();
    /* 80C5EFB0 */ void init_modeMove();
    /* 80C5EFBC */ void modeMove();
    /* 80C5F0C4 */ void init_modeMoveEnd();
    /* 80C5F1E4 */ void modeMoveEnd();

    /* 80C5EC80 */ virtual int CreateHeap();
    /* 80C5EE54 */ virtual int Execute(Mtx**);
    /* 80C5F1E8 */ virtual int Draw();
    /* 80C5F28C */ virtual int Delete();

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mMode;
    /* 0x5AD */ u8 mGateOpened;
    /* 0x5AE */ u8 mInitMove;
    /* 0x5AF */ u8 mMoveType;
    /* 0x5B0 */ f32 mMoveTarget;
    /* 0x5B4 */ f32 mMoveValue;
};

class daLv4Gate_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C5EB6C */ daLv4Gate_HIO_c();
    /* 80C5F348 */ virtual ~daLv4Gate_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x4 */ f32 mMoveSpeed;
    /* 0x8 */ u8 mShockStrength;
};

#endif /* D_A_OBJ_LV4GATE_H */

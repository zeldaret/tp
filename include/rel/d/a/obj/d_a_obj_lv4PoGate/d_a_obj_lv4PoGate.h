#ifndef D_A_OBJ_LV4POGATE_H
#define D_A_OBJ_LV4POGATE_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"
#include "m_Do/m_Do_hostIO.h"

class daLv4PoGate_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C5FBEC */ daLv4PoGate_HIO_c();
    /* 80C60758 */ virtual ~daLv4PoGate_HIO_c() {};

    /* 0x04 */ f32 mOpenSpeed;
    /* 0x08 */ f32 mCloseStep1Speed;
    /* 0x0C */ f32 mCloseStep2Speed;
    /* 0x10 */ f32 mCloseStep1Amount;
    /* 0x14 */ f32 mCloseStep2Amount;
    /* 0x18 */ u8 mCloseStep1Wait;
    /* 0x19 */ u8 mCloseStep2Wait;
    /* 0x1C */ f32 mCloseStep3Speed;
    /* 0x20 */ f32 mCloseStep3Max;
    /* 0x24 */ u8 mShockStrength;
};

class daLv4PoGate_c : public dBgS_MoveBgActor {
public:
    enum Mode_e {
        MODE_WAIT_e,
        MODE_MOVE_OPEN_e,
        MODE_MOVE_CLOSE_e,
        MODE_MOVE_CLOSE_WAIT_e,
        MODE_MOVE_CLOSE2_e,
        MODE_MOVE_CLOSE2_WAIT_e,
        MODE_MOVE_CLOSE3_e,
    };

    /* 80C5FCA4 */ void setBaseMtx();
    /* 80C5FDAC */ int create();
    /* 80C5FF2C */ void moveGate();
    /* 80C60090 */ void init_modeWait();
    /* 80C6009C */ void modeWait();
    /* 80C600A0 */ void init_modeMoveOpen();
    /* 80C60150 */ void modeMoveOpen();
    /* 80C60200 */ void init_modeMoveClose();
    /* 80C602B0 */ void modeMoveClose();
    /* 80C6031C */ void init_modeMoveCloseWait();
    /* 80C60338 */ void modeMoveCloseWait();
    /* 80C60370 */ void init_modeMoveClose2();
    /* 80C6037C */ void modeMoveClose2();
    /* 80C603E0 */ void init_modeMoveClose2Wait();
    /* 80C603FC */ void modeMoveClose2Wait();
    /* 80C60434 */ void init_modeMoveClose3();
    /* 80C60450 */ void modeMoveClose3();
    /* 80C604D8 */ void setSe();
    /* 80C60534 */ void setEffect(int);

    /* 80C5FD40 */ virtual int CreateHeap();
    /* 80C5FEDC */ virtual int Execute(f32 (**)[3][4]);
    /* 80C605F8 */ virtual int Draw();
    /* 80C6069C */ virtual int Delete();

    int getSw() { return fopAcM_GetParamBit(this, 0, 8); }

    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mMode;
    /* 0x5AD */ u8 mSw;
    /* 0x5AE */ u8 mInitMove;
    /* 0x5B0 */ f32 mMoveTarget;
    /* 0x5B4 */ f32 mMoveValue;
    /* 0x5B8 */ u8 mCloseWaitTime;
};

#endif /* D_A_OBJ_LV4POGATE_H */

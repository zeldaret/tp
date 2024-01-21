#ifndef D_A_OBJ_BSGATE_H
#define D_A_OBJ_BSGATE_H

#include "SSystem/SComponent/c_phase.h"
#include "m_Do/m_Do_hostIO.h"
#include "d/bg/d_bg_s_movebg_actor.h"

class daBsGate_c : public dBgS_MoveBgActor {
public:
    /* 80BC2910 */ void setBaseMtx();
    /* 80BC29AC */ int CreateHeap();
    /* 80BC2A18 */ cPhs__Step create();
    /* 80BC2B6C */ int Execute(Mtx**);
    /* 80BC2BBC */ void moveGate();
    /* 80BC2CC4 */ void init_modeWait();
    /* 80BC2CD0 */ void modeWait();
    /* 80BC2CD4 */ void init_modeOpen();
    /* 80BC2CE0 */ void modeOpen();
    /* 80BC2E34 */ void init_modeClose();
    /* 80BC2E40 */ void modeClose();
    /* 80BC2F94 */ int Draw();
    /* 80BC3038 */ int Delete();

    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mMode;
    /* 0x5AD */ u8 field_0x5ad;
    /* 0x5AE */ u8 mOpen;
    /* 0x5AF */ u8 mSide;
    /* 0x5B0 */ f32 mTargetDist;
    /* 0x5B4 */ f32 mOpenDist;
};

STATIC_ASSERT(sizeof(daBsGate_c) == 0x5B8);

class daBsGate_HIO_c : public mDoHIO_entry_c {
public:
    /* 80BC288C */ daBsGate_HIO_c();
    /* 80BC30F4 */ ~daBsGate_HIO_c() {}

    /* 0x4 */ f32 mOpenSpeed;
    /* 0x8 */ f32 mCloseSpeed;
    /* 0xC */ u8 mShockStrength;
};

STATIC_ASSERT(sizeof(daBsGate_HIO_c) == 0x10);

#endif /* D_A_OBJ_BSGATE_H */

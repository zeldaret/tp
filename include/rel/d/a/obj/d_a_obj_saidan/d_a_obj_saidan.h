#ifndef D_A_OBJ_SAIDAN_H
#define D_A_OBJ_SAIDAN_H

#include "SSystem/SComponent/c_phase.h"
#include "d/bg/d_bg_s_movebg_actor.h"
#include "m_Do/m_Do_hostIO.h"

/**
 * @ingroup actors-objects
 * @class daSaidan_c
 * @brief Altar
 *
 * @details
 *
 */
class daSaidan_c : public dBgS_MoveBgActor {
public:
    enum Mode_e {
        /* 0 */ MODE_WAIT_e,
        /* 1 */ MODE_MOVE_e,
        /* 2 */ MODE_MOVE_END_e,
    };

    /* 80CC3E28 */ void setBaseMtx();
    /* 80CC3EB0 */ virtual int CreateHeap();
    /* 80CC3F1C */ cPhs__Step create();
    /* 80CC4054 */ virtual int Execute(Mtx**);
    /* 80CC40A4 */ void moveProc();
    /* 80CC4148 */ void init_modeWait();
    /* 80CC4154 */ void modeWait();
    /* 80CC41B0 */ void init_modeMove();
    /* 80CC41BC */ void modeMove();
    /* 80CC4290 */ void init_modeMoveEnd();
    /* 80CC4314 */ void modeMoveEnd();
    /* 80CC4318 */ virtual int Draw();
    /* 80CC43BC */ virtual int Delete();

private:
    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mMode;
    /* 0x5AD */ u8 mIsSwitch;
    /* 0x5B0 */ f32 mOriginalPosX;
};

STATIC_ASSERT(sizeof(daSaidan_c) == 0x5B4);

struct daSaidan_HIO_c : public mDoHIO_entry_c {
    /* 80CC3DAC */ daSaidan_HIO_c();
    /* 80CC4478 */ virtual ~daSaidan_HIO_c() {}

    /* 0x00 vtable */
    /* 0x04 */ f32 mMaxStep;
    /* 0x08 */ f32 mTargetPosX;
};

#endif /* D_A_OBJ_SAIDAN_H */

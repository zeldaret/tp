#ifndef D_A_OBJ_HSTARGET_H
#define D_A_OBJ_HSTARGET_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"
#include "m_Do/m_Do_hostIO.h"
/**
 * @ingroup actors-objects
 * @class daHsTarget_c
 * @brief Clawshot Target
 *
 * @details
 *
 */
class daHsTarget_c : public dBgS_MoveBgActor {
public:
    /* 80C1F490 */ void setBaseMtx();
    /* 80C1F518 */ int CreateHeap();
    /* 80C1F598 */ int create();
    /* 80C1F6B0 */ int Execute(f32 (**)[3][4]);
    /* 80C1F6C4 */ int Draw();
    /* 80C1F728 */ int Delete();

    u8 getModelType() { return fopAcM_GetParamBit(this, 0, 4); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ u8 mIndex;
};

STATIC_ASSERT(sizeof(daHsTarget_c) == 0x5B0);

class daHsTarget_HIO_c : mDoHIO_entry_c {
public:
    /* 80C1F42C */ daHsTarget_HIO_c();
    /* 80C1F7F4 */ virtual ~daHsTarget_HIO_c() {}
};

#endif /* D_A_OBJ_HSTARGET_H */

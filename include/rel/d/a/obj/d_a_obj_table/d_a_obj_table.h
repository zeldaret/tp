#ifndef D_A_OBJ_TABLE_H
#define D_A_OBJ_TABLE_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/msg/d_msg_flow.h"
#include "f_op/f_op_actor_mng.h"

class daObjTable_c : public dBgS_MoveBgActor {
public:
    /* 80D06560 */ int CreateHeap();
    /* 80D065D0 */ int Create();
    /* 80D0695C */ int Execute(Mtx**);
    /* 80D06AD8 */ int Draw();
    /* 80D06BC8 */ int Delete();

    inline void initBaseMtx();
    inline void setBaseMtx();

    s16 getMessageNo() { return (s16)fopAcM_GetParamBit(this, 0, 16); }

    /* 0x5A0 */ J3DModel* mpModel;
    /* 0x5A4 */ request_of_phase_process_class mPhaseReq;
    /* 0x5AC */ dMsgFlow_c mMsgFlow;
    /* 0x5F8 */ u32 mShadowKey;
    /* 0x5FC */ s16 mEventID;
};  // Size: 0x600

STATIC_ASSERT(sizeof(daObjTable_c) == 0x600);

#endif /* D_A_OBJ_TABLE_H */

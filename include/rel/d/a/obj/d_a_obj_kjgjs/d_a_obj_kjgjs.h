#ifndef D_A_OBJ_KJGJS_H
#define D_A_OBJ_KJGJS_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class daObjKJgjs_c : public dBgS_MoveBgActor {
public:
    /* 80C46098 */ int create1st();
    /* 80C4616C */ void setMtx();
    /* 80C461E4 */ int CreateHeap();
    /* 80C46264 */ int Create();
    /* 80C46310 */ int Execute(f32 (**)[3][4]);
    /* 80C46320 */ int Draw();
    /* 80C463C4 */ int Delete();
    /* 80C464CC */ virtual ~daObjKJgjs_c();

    u32 getType() { return fopAcM_GetParamBit(this, 0, 4); }

    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ Mtx mMtx[2];
    /* 0x608 */ J3DModel* mpModel;
    /* 0x60C */ s32 field_0x60c;
};     // Size: 0x610

#endif /* D_A_OBJ_KJGJS_H */

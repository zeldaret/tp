#ifndef D_A_OBJ_KKANBAN_H
#define D_A_OBJ_KKANBAN_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class daObjKKanban_c : public dBgS_MoveBgActor {
public:
    /* 80C46768 */ void initBaseMtx();
    /* 80C467A4 */ void setBaseMtx();
    /* 80C46808 */ int Create();
    /* 80C46928 */ void setTG();
    /* 80C469F4 */ int CreateHeap();
    /* 80C46A64 */ int create1st();
    /* 80C46AE4 */ int Execute(Mtx**);
    /* 80C46C1C */ int Draw();
    /* 80C46CC0 */ int Delete();

    Mtx& getMoveBgMtx() { return mBgMtx; }

    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ dCcD_Stts mStts;
    /* 0x5E8 */ dCcD_Tri mTri;
    /* 0x744 */ u16 mJointIdx;
    /* 0x746 */ s16 mRotX;
    /* 0x748 */ s16 mRotZ;
    /* 0x74A */ s16 field_0x74a;
    /* 0x74C */ f32 field_0x74c;
    /* 0x750 */ s32 field_0x750;
};  // Size: 0x758

#endif /* D_A_OBJ_KKANBAN_H */

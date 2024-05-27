#ifndef D_A_OBJ_CHEST_H
#define D_A_OBJ_CHEST_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/cc/d_cc_d.h"
#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjChest_c
 * @brief Cabinet
 *
 * @details
 *
 */
class daObjChest_c : public dBgS_MoveBgActor {
public:
    enum daObjChest_Action {
        /* 0 */ ACTION_WAIT,
        /* 1 */ ACTION_MOVE,
        /* 2 */ ACTION_END,
    };

    /* 80BC8EF8 */ void initBaseMtx();
    /* 80BC8F34 */ void setBaseMtx();
    /* 80BC9088 */ int Create();
    /* 80BC9240 */ int CreateHeap();
    /* 80BC92B0 */ int create();
    /* 80BC970C */ int Execute(Mtx**);
    /* 80BC9764 */ void action();
    /* 80BC9808 */ void actionWait();
    /* 80BC9BF0 */ void actionMove();
    /* 80BC9DFC */ void actionEnd();
    /* 80BC9E00 */ int Draw();
    /* 80BC9EA4 */ int Delete();

    void setAction(u8 i_action) { mAction = i_action; }
    u8 getSwNo() { return fopAcM_GetParamBit(this, 0, 8); }
    u32 getArg0() { return fopAcM_GetParamBit(this, 8, 4); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ J3DModel* mpModel;
    /* 0x5AC */ dBgS_ObjAcch mObjAcch;
    /* 0x784 */ dBgS_AcchCir mAcchCir;
    /* 0x7C4 */ dCcD_Stts mStts;
    /* 0x800 */ dCcD_Cyl mCyl[2];
    /* 0xA78 */ cXyz mFallingChestPos;
    /* 0xA84 */ csXyz mFallingChestRot;
    /* 0xA8A */ csXyz mExtraRot;
    /* 0xA90 */ u8 mAction;
    /* 0xA91 */ u8 mMoveStartTimer;
    /* 0xA92 */ u16 mRandomMoveStartTimer;
    /* 0xA94 */ s32 mLifeCycleLength;  // this only gets incremented in the execute function
    /* 0xA98 */ s16 mModifyRotX;
    /* 0xA9A */ s16 mRandomRotX;
    /* 0xA9C */ f32 field_0xa9c;
    /* 0xAA0 */ f32 mScaleY;
};
STATIC_ASSERT(sizeof(daObjChest_c) == 0xAA4);

#endif /* D_A_OBJ_CHEST_H */

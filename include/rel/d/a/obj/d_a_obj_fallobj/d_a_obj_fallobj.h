#ifndef D_A_OBJ_FALLOBJ_H
#define D_A_OBJ_FALLOBJ_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjFallObj_c
 * @brief Fall Object?
 *
 * @details
 *
 */
class daObjFallObj_c : public dBgS_MoveBgActor {
public:
public:
    /* 80BE39B8 */ void initBaseMtx();
    /* 80BE3A24 */ void setBaseMtx();
    /* 80BE3A88 */ int Create();
    /* 80BE3BA8 */ void getFallTime();
    /* 80BE3BD4 */ void getFallHeight();
    /* 80BE3C28 */ int CreateHeap();
    /* 80BE3C98 */ int create1st();
    /* 80BE3D24 */ int Execute(Mtx**);
    /* 80BE4138 */ void action();
    /* 80BE4228 */ void action_wait(bool);
    /* 80BE42C0 */ void action_fallStart();
    /* 80BE43E4 */ void action_countdown();
    /* 80BE45F4 */ void action_fall();
    /* 80BE466C */ void action_end();
    /* 80BE4670 */ void action_follow_fall();
    /* 80BE4700 */ void checkHang();
    /* 80BE47A0 */ void checkHang2();
    /* 80BE48A4 */ int Draw();
    /* 80BE4948 */ int Delete();

    u32 getTime() { return fopAcM_GetParamBit(this, 8, 8); }
    u32 getPos() { return fopAcM_GetParamBit(this, 0x14, 8); }
    BOOL checkFallStart() { return fopAcM_SearchByID(parentActorID)->speed.y != 0.0f; }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhaseReq;
    /* 0x5A8 */ Mtx mMtx;
    /* 0x5D8 */ u8 field_0x5d8;
    /* 0x5D9 */ u8 field_0x5d9;
    /* 0x5DA */ s16 field_0x5da;
    /* 0x5DC */ s16 field_0x5dc;
    /* 0x5DE */ s16 field_0x5de;
    /* 0x5E0 */ s32 field_0x5e0;
    /* 0x5E4 */ u8 field_0x5e4;
    /* 0x5E5 */ u8 field_0x5e5;
    /* 0x5E8 */ J3DModel* mpModel;
    /* 0x5EC */ s32 field_0x5ec;
    /* 0x5F0 */ u8 field_0x5f0;
    /* 0x5F1 */ u8 field_0x5f1;
    /* 0x5F4 */ Z2SoundObjSimple mSoundObj;
};
STATIC_ASSERT(sizeof(daObjFallObj_c) == 0x614);


#endif /* D_A_OBJ_FALLOBJ_H */

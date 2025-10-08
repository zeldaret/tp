#ifndef D_A_OBJ_THASHI_H
#define D_A_OBJ_THASHI_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_uty.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
/**
 * @ingroup actors-objects
 * @class daObjTHASHI_c
 * @brief T Pillar
 *
 * @details
 *
 */
class daObjTHASHI_c : public dBgS_MoveBgActor {
public:
    /* 80D0C238 */ void initCcCylinder();
    /* 80D0C354 */ void setBaseMtx();
    /* 80D0C654 */ int CreateHeap();
    /* 80D0C8B4 */ int create();
    /* 80D0CE70 */ int Create();
    /* 80D0CEB4 */ int Execute(Mtx**);
    /* 80D0CEE0 */ int Draw();
    /* 80D0D140 */ int Delete();

private:

    dBgW* unk5A0;
    u32 unk5A4;
    u32 unk5A8;
    cXyz unk5AC;
    csXyz mRot;
    cXyz mTrans;
    u32 unk4CC;
    cXyz unk5D0;
    cXyz unk5DC[5];
    u32 unk618;
    u32 unk61C;
    u32 unk620;
    cXyz unk624;
    csXyz unk630;
    s16 unk636;
    cXyz mCollectiveTrans[50];
    cXyz unk890[50];
    cXyz mCollectiveScale[50];
    u32 unkD40;
    u32 unkD44;
    csXyz mCollectiveRot[50];
    csXyz unkE74[50];
    u8 unk5A0_pad[0x100];
    f32 unk10A0;
    u32 unk10A4;
    u32 unk10A8;
    Z2SoundObjSimple unk10AC;
    u8 unk10CC_pad[0x8];
    J3DModel *mThashi00Model;
    J3DModel *mThashi01Model;
    J3DModel *mThashi03Models[50];
    J3DModel *mThashi02Model;
    request_of_phase_process_class unk11A8;
    dBgS_AcchCir unk11B0;
    dBgS_ObjAcch unk11F0;
    dCcD_Stts unk13C8;
    dCcD_Stts unk1404;
    dCcD_Sph unk1440[5];
    dCcD_Cyl unk1A58;
    dCcU_AtInfo unk1B94;
    u32 unk1BB8;
};

STATIC_ASSERT(sizeof(daObjTHASHI_c) == 0x1bbc);


#endif /* D_A_OBJ_THASHI_H */

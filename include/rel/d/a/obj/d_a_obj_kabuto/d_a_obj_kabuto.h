#ifndef D_A_OBJ_KABUTO_H
#define D_A_OBJ_KABUTO_H

#include "SSystem/SComponent/c_phase.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/a/d_a_player.h"
#include "d/d_insect.h"

struct daObjKABUTO_c : public dInsect_c {
    enum Action {
        /* 0 */ ACT_WAIT,
        /* 1 */ ACT_MOVE,
        /* 2 */ ACT_WALK,
    };

    /* 80C2AEA4 */ void InitCcSph();
    /* 80C2AF10 */ void SetCcSph();
    /* 80C2AF88 */ int CreateHeap();
    /* 80C2B36C */ void ShopWaitAction();
    /* 80C2B4D4 */ void WaitAction();
    /* 80C2B618 */ BOOL WallCheck();
    /* 80C2B88C */ void SpeedSet();
    /* 80C2B998 */ void WallWalk();
    /* 80C2BDE8 */ void WalkAction();
    /* 80C2BFE8 */ void MoveAction();
    /* 80C2C7C8 */ void Z_BufferChk();
    /* 80C2C944 */ void Action();
    /* 80C2CA08 */ void ShopAction();
    /* 80C2CAC4 */ void Insect_Release();
    /* 80C2CADC */ void ParticleSet();
    /* 80C2CC18 */ int Execute();
    /* 80C2D21C */ void ObjHit();
    /* 80C2D3A4 */ int Delete();
    /* 80C2D40C */ void setBaseMtx();
    /* 80C2D578 */ bool CreateChk();
    /* 80C2D724 */ cPhs__Step create();
    inline int Draw();

    /* 0x590 */ dCcD_Stts mCcStts;
    /* 0x5CC */ dCcD_Sph mCcSph;
    /* 0x704 */ daPy_boomerangMove_c mBoomerangMove;
    /* 0x710 */ u8 mAction;
    /* 0x711 */ u8 mMode;
    /* 0x712 */ s16 mTimers[3];
    /* 0x718 */ f32 mTargetSpeedXZ;
    /* 0x71C */ f32 mTargetSpeedY;
    /* 0x720 */ s16 mTargetAngleY;
    /* 0x722 */ u8 field_0x722[8];
    /* 0x72A */ csXyz mWallAngle;
    /* 0x730 */ u8 field_0x730[2];
    /* 0x732 */ s16 mDownAngleY;
    /* 0x734 */ u8 field_0x734;
    /* 0x735 */ bool field_0x735;
    /* 0x736 */ u8 mLocation;
    /* 0x737 */ bool mBoomerangHit;
    /* 0x738 */ dBgS_AcchCir mAcchCir;
    /* 0x778 */ f32 mScreenZ;
    /* 0x77C */ u32 mBufferZ;
    /* 0x780 */ f32 mParticleScale;
    /* 0x784 */ f32 mParticleTargetScale;
    /* 0x788 */ u8 field_0x788[4];
    /* 0x78C */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x790 */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x794 */ u8 field_0x794[4];
    /* 0x798 */ dBgS_ObjAcch mAcch;
    /* 0x970 */ Z2Creature mCreatureSound;
    /* 0xA00 */ u8 field_0xa00[4];
    /* 0xA04 */ mDoExt_McaMorfSO* mpMorf;
    /* 0xA08 */ request_of_phase_process_class mPhaseReq;
    /* 0xA10 */ bool mHIOInit;
 };

STATIC_ASSERT(sizeof(daObjKABUTO_c) == 0xA14);

struct daObj_KabHIO_c {
    /* 80C2AE6C */ daObj_KabHIO_c();
    /* 80C2E068 */ virtual ~daObj_KabHIO_c() {}

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
};

STATIC_ASSERT(sizeof(daObj_KabHIO_c) == 0x14);

#endif /* D_A_OBJ_KABUTO_H */

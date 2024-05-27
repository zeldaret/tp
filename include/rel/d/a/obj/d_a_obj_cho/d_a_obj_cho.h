#ifndef D_A_OBJ_CHO_H
#define D_A_OBJ_CHO_H

#include "SSystem/SComponent/c_phase.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/a/d_a_player.h"
#include "d/d_insect.h"

/**
 * @ingroup actors-objects
 * @class daObjCHO_c
 * @brief Insect - Butterfly
 *
 * @details
 *
 */
class daObjCHO_c : public dInsect_c {
public:
    enum Action {
        /* 0 */ ACT_WAIT,
        /* 1 */ ACT_MOVE,
    };

    /* 80BCA334 */ void InitCcSph();
    /* 80BCA3A0 */ void SetCcSph();
    /* 80BCA418 */ int CreateHeap();
    /* 80BCA78C */ void SpeedSet();
    /* 80BCA88C */ void WallCheck();
    /* 80BCA924 */ void SearchLink();
    /* 80BCAB50 */ void WaitAction();
    /* 80BCAEDC */ void MoveAction();
    /* 80BCB210 */ void Action();
    /* 80BCB268 */ void ShopAction();
    /* 80BCB2AC */ void checkGroundPos();
    /* 80BCB310 */ void Insect_Release();
    /* 80BCB320 */ void Z_BufferChk();
    /* 80BCB49C */ void ParticleSet();
    /* 80BCB5C0 */ void BoomChk();
    /* 80BCB87C */ int Execute();
    /* 80BCBB40 */ void ObjHit();
    /* 80BCBCA8 */ int Delete();
    /* 80BCBD10 */ void setBaseMtx();
    /* 80BCBE70 */ bool CreateChk();
    /* 80BCC01C */ cPhs__Step create();
    inline int Draw();

private:
    /* 0x590 */ dBgS_AcchCir mAcchCir;
    /* 0x5D0 */ dBgS_ObjAcch mAcch;
    /* 0x7A8 */ dCcD_Stts mCcStts;
    /* 0x7E4 */ dCcD_Sph mCcSph;
    /* 0x91C */ daPy_boomerangMove_c mBoomerangMove;
    /* 0x928 */ dBgS_GndChk mGndChk;
    /* 0x97C */ f32 mGroundPos;
    /* 0x980 */ u8 mAction;
    /* 0x981 */ u8 mMode;
    /* 0x982 */ s16 mTimers[3];
    /* 0x988 */ f32 mTargetSpeedXZ;
    /* 0x98C */ f32 mTargetSpeedY;
    /* 0x990 */ s16 mTargetAngleY;
    /* 0x994 */ f32 mParticleScale;
    /* 0x998 */ f32 mScreenZ;
    /* 0x99C */ u32 mBufferZ;
    /* 0x9A0 */ u8 field_0x9a0[0xC];
    /* 0x9AC */ bool field_0x9ac;
    /* 0x9B0 */ f32 mPlaySpeed;
    /* 0x9B4 */ cXyz mTargetPos;
    /* 0x9C0 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x9C4 */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x9C8 */ u8 mLocation;
    /* 0x9C9 */ bool mBoomerangHit;
    /* 0x9CC */ Z2Creature mCreatureSound;
    /* 0xA5C */ u8 field_0xa5c[4];
    /* 0xA60 */ mDoExt_McaMorfSO* mpMorf;
    /* 0xA64 */ request_of_phase_process_class mPhaseReq;
    /* 0xA6C */ bool mHIOInit;
};

STATIC_ASSERT(sizeof(daObjCHO_c) == 0xA70);

class daObj_ChoHIO_c {
public:
    /* 80BCA30C */ daObj_ChoHIO_c();
    /* 80BCC4D0 */ virtual ~daObj_ChoHIO_c() {}

    /* 0x4 */ s8 field_0x4;
    /* 0x8 */ f32 mScaleFemale;
    /* 0xC */ f32 mScaleMale;
};

STATIC_ASSERT(sizeof(daObj_ChoHIO_c) == 0x10);

#endif /* D_A_OBJ_CHO_H */

#ifndef D_A_OBJ_ARI_H
#define D_A_OBJ_ARI_H

#include "SSystem/SComponent/c_phase.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/a/d_a_player.h"
#include "d/d_insect.h"

/**
 * @ingroup actors-objects
 * @class daObjARI_c
 * @brief Insect - Ant
 *
 * @details
 *
 */
/**
 * @ingroup actors-objects
 * @class daObjARI_c
 * @brief
 *
 * @details
 *
 */
class daObjARI_c : public dInsect_c {
public:
    /* 80BA26BC */ void InitCcSph();
    /* 80BA2728 */ void SetCcSph();
    /* 80BA2780 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80BA28C0 */ int CreateHeap();
    /* 80BA2CA4 */ void WallWalk();
    /* 80BA3270 */ void MoveAction();
    /* 80BA337C */ void Action();
    /* 80BA33F8 */ void Insect_Release();
    /* 80BA3408 */ void checkGround();
    /* 80BA3638 */ void B_MoveAction();
    /* 80BA36CC */ void FallAction();
    /* 80BA3700 */ void ParticleSet();
    /* 80BA3824 */ void BoomChk();
    /* 80BA3B38 */ void ObjHit();
    /* 80BA3C38 */ int Execute();
    /* 80BA44F0 */ void Z_BufferChk();
    /* 80BA466C */ int Delete();
    /* 80BA46D4 */ void setBaseMtx();
    /*  inline  */ inline int Draw();
    /* 80BA483C */ bool CreateChk();
    /* 80BA49E8 */ cPhs__Step create();

private:
    /* 0x590 */ dBgS_GndChk mGndChk;
    /* 0x5E4 */ u8 field_0x5e4[4];
    /* 0x5E8 */ u8 mAction;
    /* 0x5E9 */ u8 mMode;
    /* 0x5EA */ s16 mTimer;
    /* 0x5EC */ f32 field_0x5ec;
    /* 0x5F0 */ u8 field_0x5f0[4];
    /* 0x5F4 */ s16 mTargetAngleY;
    /* 0x5F6 */ u8 field_0x5f6[6];
    /* 0x5FC */ bool field_0x5fc;
    /* 0x5FE */ csXyz mWallAlignAngle;
    /* 0x604 */ csXyz mWallAngle;
    /* 0x60A */ u8 field_0x60a[2];
    /* 0x60C */ s16 mLegAngleY;
    /* 0x60E */ s16 mDownAngleY;
    /* 0x610 */ u8 field_0x610[4];
    /* 0x614 */ cXyz mTargetPos;
    /* 0x620 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x624 */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x628 */ f32 mScreenZ;
    /* 0x62C */ u32 mBufferZ;
    /* 0x630 */ u8 mSex;  // used instead of the variable from dInsect_c
    /* 0x631 */ u8 mLocation;
    /* 0x634 */ f32 mParticleScale;
    /* 0x638 */ f32 mParticleTargetScale;
    /* 0x63C */ dCcD_Stts mCcStts;
    /* 0x678 */ dCcD_Sph mCcSph;
    /* 0x7B0 */ daPy_boomerangMove_c mBoomerangMove;
    /* 0x7BC */ bool mBoomerangHit;
    /* 0x7C0 */ Z2Creature mCreatureSound;
    /* 0x850 */ dBgS_AcchCir mAcchCir;
    /* 0x890 */ dBgS_ObjAcch mAcch;
    /* 0xA68 */ mDoExt_McaMorfSO* mpMorf;
    /* 0xA6C */ request_of_phase_process_class mPhase;
    /* 0xA74 */ bool mHIOInit;
};

STATIC_ASSERT(sizeof(daObjARI_c) == 0xA78);

class daObj_AriHIO_c {
public:
    /* 80BA268C */ daObj_AriHIO_c();
    /* 80BA5360 */ virtual ~daObj_AriHIO_c() {}

    /* 0x4 */ s8 field_0x4;
    /* 0x8 */ f32 mScaleFemale;
    /* 0xC */ f32 mScaleMale;
};

STATIC_ASSERT(sizeof(daObj_AriHIO_c) == 0x10);

#endif /* D_A_OBJ_ARI_H */

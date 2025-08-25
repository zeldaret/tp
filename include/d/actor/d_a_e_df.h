#ifndef D_A_E_DF_H
#define D_A_E_DF_H

#include "JSystem/JHostIO/JORReflexible.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-enemies
 * @class daE_DF_c
 * @brief Deku Flower
 *
 * @details
 *
 */
class daE_DF_c : public fopEn_enemy_c {
public:
    enum {
        /* 0x0 */ EAT_TYPE_OBJ,
        /* 0x1 */ EAT_TYPE_LINK,
        /* 0x2 */ EAT_TYPE_BOMB,
    };

    enum {
        /* 0x0 */ ACT_WAIT,
        /* 0x1 */ ACT_EAT,
        /* 0x2 */ ACT_DAMAGE,
        /* 0x3 */ ACT_MISS,
        /* 0x4 */ ANIM_BOUND,
        /* 0x5 */ ANIM_BURST,
        /* 0x6 */ ANIM_DIE,
        /* 0x7 */ ANIM_EAT,
        /* 0x8 */ ANIM_EAT_WAIT,
        /* 0x9 */ ANIM_SPITOUT,
        /* 0xA */ ANIM_WAIT,
    };

    /* 806A7710 */ int CreateHeap();
    /* 806A7828 */ void initCcCylinder();
    /* 806A78A0 */ void setCcCylinder();
    /* 806A78D4 */ void SetAnm(int, int, f32, f32);
    /* 806A7980 */ void CameraSet(f32);
    /* 806A7B40 */ bool DemoStart();
    /* 806A7C3C */ void SetReleaseCam();
    /* 806A7CE0 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 806A8030 */ void Link_Eat_Pos();
    /* 806A8098 */ void Set_Angle(cXyz*);
    /* 806A816C */ void Obj_Damage();
    /* 806A8244 */ void DamageAction();
    /* 806A8368 */ void BombEatAction();
    /* 806A8790 */ void Spid_Out();
    /* 806A8938 */ void LinkEatAction();
    /* 806A8C80 */ bool Mogu_Mogu();
    /* 806A8D98 */ void ObjEatAction();
    /* 806A8ED4 */ void EatAction();
    /* 806A8F2C */ void SearchAction();
    /* 806A91B4 */ void WaitAction();
    /* 806A9254 */ void MissAction();
    /* 806A9304 */ void Action();
    /* 806A9384 */ int Execute();
    /* 806A949C */ void Yazirushi();
    /* 806A94E0 */ int Draw();
    /* 806A9550 */ int Delete();
    /* 806A95B8 */ void setBaseMtx();
    /* 806A9678 */ int Create();

    /* 0x5AC */ u8 mAction;
    /* 0x5AD */ u8 mEatObjType;
    /* 0x5AE */ u8 mEatStep;
    /* 0x5B0 */ csXyz mChaseAngle;
    /* 0x5B8 */ s32 mCarryType;
    /* 0x5BC */ u8 mMoguCount;
    /* 0x5BE */ s16 mTimer;
    /* 0x5C0 */ s32 mAnim;
    /* 0x5C4 */ s16 mTargetAngle;
    /* 0x5C6 */ s16 mInvincibilityTimer;
    /* 0x5C8 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0x5CC */ request_of_phase_process_class mPhaseReq;
    /* 0x5D4 */ u8 field_0x5d4[0x5D8 - 0x5D4];
    /* 0x5D8 */ Z2CreatureEnemy mCreatureSound;
    /* 0x67C */ dCcD_Stts mStts;
    /* 0x6B8 */ dCcD_Cyl mCyl;
    /* 0x7F4 */ dCcU_AtInfo mAtInfo;
    /* 0x818 */ u8 mHIOInit;
    /* 0x819 */ u8 mArg0;
    /* 0x81C */ cXyz mCenterPos;
    /* 0x828 */ cXyz mEyePos;
    /* 0x834 */ f32 mFovY;
};

STATIC_ASSERT(sizeof(daE_DF_c) == 0x838);

#endif /* D_A_E_DF_H */

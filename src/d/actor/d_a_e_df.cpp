/**
* @file d_a_e_df.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_df.h"
#include "d/actor/d_a_obj_carry.h"
#include "f_op/f_op_actor_enemy.h"

class daE_DF_HIO_c : public JORReflexible {
public:
    /* 806A76EC */ daE_DF_HIO_c();
    /* 806A9A84 */ virtual ~daE_DF_HIO_c() {};

    void genMessage(JORMContext*);

    /* 0x4 */ s8 mNo;
    /* 0x8 */ f32 field_0x8;
};

STATIC_ASSERT(sizeof(daE_DF_HIO_c) == 0xC);

#ifdef DEBUG
inline void daE_DF_HIO_c::genMessage(JORMContext* i_ctx) {
    i_ctx->genLabel("デクレシア", 0x80000001, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    i_ctx->genSlider("速度", &field_0x8, 0.0f, 100.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
}
#endif

/* 806A76EC-806A7710 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__12daE_DF_HIO_cFv */
daE_DF_HIO_c::daE_DF_HIO_c() {
    mNo = -1;
    field_0x8 = 0.0f;
}

/* 806A7710-806A7808 000110 00F8+00 1/1 0/0 0/0 .text            CreateHeap__8daE_DF_cFv */
int daE_DF_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("E_DF", 0xD);
    JUT_ASSERT(161, modelData != 0);

    mpMorfSO = new mDoExt_McaMorfSO(modelData, NULL, NULL,
                                    (J3DAnmTransform*)dComIfG_getObjectRes("E_DF", 10), 2, 1.0f, 0,
                                    -1, &mCreatureSound, 0x80000, 0x11000084);
    if (mpMorfSO == NULL || mpMorfSO->getModel() == NULL) {
        return 0;
    }

    return 1;
}

/* 806A7808-806A7828 000208 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    daE_DF_c* actor = static_cast<daE_DF_c*>(i_this);
    actor->CreateHeap();
}

/* 806A7828-806A78A0 000228 0078+00 1/1 0/0 0/0 .text            initCcCylinder__8daE_DF_cFv */
void daE_DF_c::initCcCylinder() {
    const static dCcD_SrcCyl ccCylSrc = {
        {
            {0x0, {{0x0, 0x0, 0xd}, {0xd8fbfdff, 0x3}, 0x75}},  // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                 // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x1},                 // mGObjTg
            {0x0},                                              // mGObjCo
        },                                                      // mObjInf
        {
            {0.0f, 0.0f, 0.0f},  // mCenter
            150.0f,              // mRadius
            158.0f               // mHeight
        }  // mCyl
    };

    mStts.Init(0xff, 0xff, this);
    mCyl.Set(ccCylSrc);
    mCyl.SetStts(&mStts);
    mCyl.SetC(current.pos);
    mCyl.OnTgNoHitMark();
    mCyl.OnTgIronBallRebound();
}

/* 806A78A0-806A78D4 0002A0 0034+00 1/1 0/0 0/0 .text            setCcCylinder__8daE_DF_cFv */
void daE_DF_c::setCcCylinder() {
    dComIfG_Ccsp()->Set(&mCyl);
}

/* 806A78D4-806A7980 0002D4 00AC+00 6/6 0/0 0/0 .text            SetAnm__8daE_DF_cFiiff */
void daE_DF_c::SetAnm(int i_index, int i_attr, f32 i_morf, f32 i_rate) {
    mpMorfSO->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_DF", i_index), i_attr, i_morf,
                     i_rate, 0.0f, -1.0f);
    mAnim = i_index;
}

/* 806A7980-806A7B40 000380 01C0+00 2/2 0/0 0/0 .text            CameraSet__8daE_DF_cFf */
void daE_DF_c::CameraSet(f32 i_posz) {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz center = current.pos;
    center.y += 100.0f;

    cXyz end;
    cXyz start = current.pos;
    start.y += 600.0f;

    cXyz vec(0.0f, 0.0f, i_posz);

    dBgS_LinChk line_chk;
    u16 angle = 0;
    for (s16 i = 0; i < 4; i++) {
        cLib_offsetPos(&end, &start, angle, &vec);
        line_chk.Set(&start, &end, NULL);

        if (dComIfG_Bgsp().LineCross(&line_chk) == 0) {
            cLib_offsetPos(&end, &center, angle, &vec);
            end.y += 400.0f;
            camera->mCamera.Set(center, end, mFovY, 0);

            mEyePos = end;
            mCenterPos = center;
            break;
        }

        angle += 0x10000 - 0x8000;
    }
}

/* 806A7B40-806A7C3C 000540 00FC+00 2/2 0/0 0/0 .text            DemoStart__8daE_DF_cFv */
bool daE_DF_c::DemoStart() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    dCamera_c* body = dCam_getBody();

    if (eventInfo.checkCommandDemoAccrpt() == 0) {
        fopAcM_orderPotentialEvent(this, 2, 0xffef, 0);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
        return false;
    }

    camera->mCamera.Stop();
    mFovY = body->Fovy();
    mCenterPos = body->Center();
    mEyePos = body->Eye();

    camera->mCamera.SetTrimSize(3);
    return true;
}

/* 806A7C3C-806A7CE0 00063C 00A4+00 2/2 0/0 0/0 .text            SetReleaseCam__8daE_DF_cFv */
void daE_DF_c::SetReleaseCam() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera->mCamera.Reset(mCenterPos, mEyePos);
    camera->mCamera.Start();
    camera->mCamera.SetTrimSize(0);
    dComIfGp_event_reset();
}

/* 806A7CE0-806A7E30 0006E0 0150+00 1/1 0/0 0/0 .text ctrlJoint__8daE_DF_cFP8J3DJointP8J3DModel */
int daE_DF_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    J3DJoint* joint = i_joint;
    int jnt_no = joint->getJntNo();
    mDoMtx_stack_c::copy(i_model->getAnmMtx(jnt_no));

    switch (jnt_no) {
    case 0:
        mDoMtx_stack_c::YrotM(mChaseAngle.x * 0.8f);
        mDoMtx_stack_c::ZrotM(mChaseAngle.z * 0.8f);
        break;
    case 1:
        mDoMtx_stack_c::YrotM(mChaseAngle.x);
        mDoMtx_stack_c::ZrotM(mChaseAngle.z);
        break;
    }

    i_model->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 806AA0D0-806AA0D4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 l_initHIO;

/* 806AA0E0-806AA0EC 000018 000C+00 2/2 0/0 0/0 .bss             l_HIO */
static daE_DF_HIO_c l_HIO;

/* 806A7E30-806A7E7C 000830 004C+00 1/1 0/0 0/0 .text            JointCallBack__FP8J3DJointi */
static int JointCallBack(J3DJoint* i_joint, int i_inactive) {
    if (i_inactive == 0) {
        J3DModel* model = j3dSys.getModel();
        daE_DF_c* actor = (daE_DF_c*)model->getUserArea();
        if (actor != NULL) {
            actor->ctrlJoint(i_joint, model);
        }
    }
    return 1;
}

/* 806A7E7C-806A8030 00087C 01B4+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* param_1, void* param_2) {
    cXyz* pos_1 = &fopAcM_GetPosition((fopAc_ac_c*)param_1);
    cXyz* pos_2 = &fopAcM_GetPosition((fopAc_ac_c*)param_2);
    cXyz* speed = &fopAcM_GetSpeed((fopAc_ac_c*)param_1);

    void* actor_2 = param_2;

    if (fopAcM_IsActor(param_1) && pos_2->absXZ(*pos_1) <= 300.0f + yREG_F(1) &&
        speed->y < -10.0f && pos_1->y - pos_2->y > 170.0f + yREG_F(2) &&
        pos_1->y - pos_2->y < 320.0f + yREG_F(3))
    {
        return param_1;
    }

    return NULL;
}

/* 806A8030-806A8098 000A30 0068+00 1/1 0/0 0/0 .text            Link_Eat_Pos__8daE_DF_cFv */
void daE_DF_c::Link_Eat_Pos() {
    cXyz pos(current.pos.x, current.pos.y + 400.0f + nREG_F(5), current.pos.z);
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 angle = 0;
    player->setPlayerPosAndAngle(&pos, angle, 0);
}

/* 806A8098-806A816C 000A98 00D4+00 1/1 0/0 0/0 .text            Set_Angle__8daE_DF_cFP4cXyz */
void daE_DF_c::Set_Angle(cXyz* i_angle) {
    s16 sVar1 = (s16)cLib_targetAngleY(&current.pos, i_angle);
    s16 sVar2 = (0x4000 - cLib_targetAngleX(&current.pos, i_angle));

    sVar1 -= shape_angle.y;

    mChaseAngle.x = -sVar2 * cM_ssin(sVar1);
    mChaseAngle.z = sVar2 * cM_scos(sVar1);
}

/* 806A816C-806A8244 000B6C 00D8+00 1/1 0/0 0/0 .text            Obj_Damage__8daE_DF_cFv */
void daE_DF_c::Obj_Damage() {
    cCcD_ObjHitInf* hit_obj;

    if (mInvincibilityTimer == 0) {
        mStts.Move();
        if (mCyl.ChkTgHit()) {
            mAtInfo.mpCollider = mCyl.GetTgHitObj();
            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                mInvincibilityTimer = 20;
            } else {
                mInvincibilityTimer = 10;
            }

            if (mAtInfo.mAttackPower <= 1) {
                mInvincibilityTimer = 10 + KREG_S(8);
            }

            dCcD_GObjInf* coll = (dCcD_GObjInf*)mAtInfo.mpCollider;
            mCreatureSound.startCollisionSE(coll->getHitSeID(coll->GetAtSe(), 0), 0x2d);

            hit_obj = mCyl.GetTgHitObj();
            if (!hit_obj->ChkAtType(AT_TYPE_ARROW) && !hit_obj->ChkAtType(AT_TYPE_NORMAL_SWORD) &&
                !hit_obj->ChkAtType(AT_TYPE_SHIELD_ATTACK))
            {
                hit_obj->ChkAtType(AT_TYPE_HOOKSHOT);
            }

            mAction = ACT_DAMAGE;
            mEatObjType = EAT_TYPE_OBJ;
            mEatStep = 0;
        }
    }
}

/* 806A8244-806A8368 000C44 0124+00 1/1 0/0 0/0 .text            DamageAction__8daE_DF_cFv */
void daE_DF_c::DamageAction() {
    switch (mEatObjType) {
    case EAT_TYPE_OBJ:
        SetAnm(ANIM_BOUND, 0, 5.0f, 1.0f);
        mCreatureSound.startCreatureSound(Z2SE_EN_DF_BOUND, 0, -1);
        mEatObjType++;  // EAT_TYPE_LINK
        break;

    case EAT_TYPE_LINK:
        if (mpMorfSO->isStop()) {
            SetAnm(ANIM_WAIT, 2, 1.0f, 1.0f);
            mCreatureSound.startCreatureSound(Z2SE_EN_DF_WAIT, 0, -1);
            mAction = ACT_WAIT;
            mEatObjType = EAT_TYPE_LINK;
            mEatStep = 0;
        }
        break;
    }
}

/* 806A8368-806A8790 000D68 0428+00 1/1 0/0 0/0 .text            BombEatAction__8daE_DF_cFv */
void daE_DF_c::BombEatAction() {
    switch (mEatStep) {
    case 0:
        mCarryType = 100;
        if (DemoStart()) {
            CameraSet(400.0f);
            SetAnm(ANIM_EAT, 0, 5.0f, 1.0f);
            mCreatureSound.startCreatureSound(Z2SE_EN_DF_EAT, 0, -1);
            mEatStep++;
        }
        break;

    case 1:
        if (mpMorfSO->isStop()) {
            mEatStep++;
            SetAnm(ANIM_EAT_WAIT, 2, 5.0f, 1.0f);
        }

        break;

    case 2:
        if (Mogu_Mogu()) {
            SetAnm(ANIM_BURST, 0, 5.0f, 1.0f);
            mCreatureSound.startCreatureSound(Z2SE_EN_DF_BURST, 0, -1);
            dComIfGp_particle_set(0x83b9, &current.pos, &tevStr, &shape_angle, 0);
            dComIfGp_particle_set(0x83ba, &current.pos, &tevStr, &shape_angle, 0);
            dComIfGp_particle_set(0x83bb, &current.pos, &tevStr, &shape_angle, 0);
            dComIfGp_particle_set(0x83bc, &current.pos, &tevStr, &shape_angle, 0);
            mEatStep++;
        }
        break;

    case 3:
        if (mpMorfSO->isStop() && mAnim == ANIM_BURST) {
            SetAnm(ANIM_DIE, 0, 5.0f, 1.0f);
            mCreatureSound.startCreatureSound(Z2SE_EN_DF_DIE, 0, -1);

        } else if (mpMorfSO->isStop() && mAnim == ANIM_DIE) {
            if (mArg0 != 0xff && dComIfGs_isSwitch(mArg0, fopAcM_GetRoomNo(this)) == 0) {
                dComIfGs_onSwitch(mArg0, fopAcM_GetRoomNo(this));
            }

            fopAcM_createDisappear(this, &current.pos, 10, 0, 0x30);
            mTimer = 10;
            attention_info.flags = 0;
            mEatStep++;
        }
        break;

    case 4:
        if (mTimer == 0) {
            SetReleaseCam();
            fopAcM_delete(this);
        }
        break;
    }

    cLib_chaseAngleS(&mChaseAngle.x, 0, 0x100);
    cLib_chaseAngleS(&mChaseAngle.z, 0, 0x100);
}

/* 806A8790-806A8938 001190 01A8+00 1/1 0/0 0/0 .text            Spid_Out__8daE_DF_cFv */
void daE_DF_c::Spid_Out() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (mpMorfSO->checkFrame(24.0f)) {
        fopAcM_SetSpeed(player, 0, 0, 0);
        SetReleaseCam();
        Link_Eat_Pos();

    } else if (mpMorfSO->checkFrame(25.0f)) {
        fopAcM_SetSpeed(player, 0, 0, 0);
        player->setThrowDamage(cLib_targetAngleY(&current.pos, &mEyePos), 25.0f, 60.0f, 2, 0, 0);
        mTimer = 40;

    } else if (mpMorfSO->checkFrame(2.0f + nREG_F(2))) {
        dComIfGp_getVibration().StartQuake(3, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

    } else if (mpMorfSO->checkFrame(15.0f + nREG_F(3))) {
        dComIfGp_getVibration().StopQuake(0x1f);

    } else if (mpMorfSO->isStop()) {
        mAction = ACT_WAIT;
        mEatObjType = EAT_TYPE_OBJ;
        mEatStep = 0;
    }
}

/* 806A8938-806A8C80 001338 0348+00 1/1 0/0 0/0 .text            LinkEatAction__8daE_DF_cFv */
void daE_DF_c::LinkEatAction() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz pos(current.pos.x, (current.pos.y - 4000.0f) + nREG_F(5), current.pos.z);
    s16 angle = 0;

    switch (mEatStep) {
    case 0:
        mCarryType = 100;
        player->setPlayerPosAndAngle(&pos, angle, 0);
        if (DemoStart()) {
            SetAnm(ANIM_EAT, 0, 5.0f, 1.0f);
            mCreatureSound.startCreatureSound(Z2SE_EN_DF_EAT, 0, -1);
            mEatStep++;
            CameraSet(400.0f);
            player->changeOriginalDemo();
            player->changeDemoMode(4, 7, 0, 0);
        }
        break;

    case 1:
        player->setPlayerPosAndAngle(&pos, angle, 0);
        player->changeDemoMode(4, 7, 0, 0);
        if (mpMorfSO->isStop()) {
            mEatStep++;
            SetAnm(ANIM_EAT_WAIT, 2, 5.0f, 1.0f);
        }
        break;

    case 2:
        if (Mogu_Mogu()) {
            mEatStep++;
            SetAnm(ANIM_SPITOUT, 0, 5.0f, 1.0f);
            mCreatureSound.startCreatureSound(Z2SE_EN_DF_SPITOUT, 0, -1);
            dComIfGp_particle_set(0x83bd, &current.pos, &tevStr, &shape_angle, 0);
            dComIfGp_particle_set(0x83be, &current.pos, &tevStr, &shape_angle, 0);
        }

        if (mpMorfSO->checkFrame(10.0f + nREG_F(1))) {
            dComIfGp_getVibration().StartShock(2, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        }
        break;

    case 3:
        Spid_Out();
        break;
    }

    cLib_chaseAngleS(&mChaseAngle.x, 0, 0x100);
    cLib_chaseAngleS(&mChaseAngle.z, 0, 0x100);
}

/* 806A8C80-806A8D98 001680 0118+00 3/3 0/0 0/0 .text            Mogu_Mogu__8daE_DF_cFv */
bool daE_DF_c::Mogu_Mogu() {
    if (mMoguCount > 4) {
        mMoguCount = 0;
        return true;
    }

    if (mpMorfSO->isLoop()) {
        mMoguCount++;

        if (mCarryType == daObjCarry_c::TYPE_TSUBO || mCarryType == daObjCarry_c::TYPE_OOTSUBO ||
            mCarryType == daObjCarry_c::TYPE_TSUBO_2 || mCarryType == daObjCarry_c::TYPE_AOTSUBO ||
            mCarryType == daObjCarry_c::TYPE_TSUBO_S || mCarryType == daObjCarry_c::TYPE_TSUBO_B)
        {
            mCreatureSound.startCreatureSound(Z2SE_EN_DF_EAT_POT, 0, -1);
        } else if (mCarryType == daObjCarry_c::TYPE_BOKKURI) {
            mCreatureSound.startCreatureSound(Z2SE_EN_DF_EAT_BOKKURI, 0, -1);
        } else {
            mCreatureSound.startCreatureSound(Z2SE_EN_DF_EAT_WAIT, 0, -1);
        }
        return false;
    }

    return false;
}

/* 806A8D98-806A8ED4 001798 013C+00 1/1 0/0 0/0 .text            ObjEatAction__8daE_DF_cFv */
void daE_DF_c::ObjEatAction() {
    switch (mEatStep) {
    case 0:
        SetAnm(ANIM_EAT, 0, 5.0f, 1.0f);
        mCreatureSound.startCreatureSound(Z2SE_EN_DF_EAT, 0, -1);
        mEatStep++;
        break;

    case 1:
        if (mpMorfSO->isStop()) {
            mEatStep++;
            SetAnm(ANIM_EAT_WAIT, 2, 5.0f, 1.0f);
        }
        break;

    case 2:
        if (Mogu_Mogu()) {
            mAction = ACT_WAIT;
            mEatObjType = EAT_TYPE_OBJ;
            mEatStep = 0;
        }
        break;
    }

    cLib_chaseAngleS(&mChaseAngle.x, 0, 0x100);
    cLib_chaseAngleS(&mChaseAngle.z, 0, 0x100);
}

/* 806A8ED4-806A8F2C 0018D4 0058+00 1/1 0/0 0/0 .text            EatAction__8daE_DF_cFv */
void daE_DF_c::EatAction() {
    switch (mEatObjType) {
    case EAT_TYPE_OBJ:
        ObjEatAction();
        break;
    case EAT_TYPE_LINK:
        LinkEatAction();
        break;
    case EAT_TYPE_BOMB:
        BombEatAction();
        break;
    }
}

/* 806A8F2C-806A91B4 00192C 0288+00 1/1 0/0 0/0 .text            SearchAction__8daE_DF_cFv */
void daE_DF_c::SearchAction() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz* player_pos = &fopAcM_GetPosition(player);
    cXyz* speed = fopAcM_GetSpeed_p(player);

    if (dComIfGp_checkPlayerStatus0(0, 0x100) && player_pos->abs(current.pos) < 400.0f &&
        player_pos->y > current.pos.y + 200.0f)
    {
        mEatObjType = EAT_TYPE_LINK;
        Set_Angle(player_pos);
        mTargetAngle = cLib_targetAngleY(&current.pos, player_pos);
        mAction = ACT_EAT;
    }

    daObjCarry_c* obj_carry = (daObjCarry_c*)fpcM_Search(s_obj_sub, this);
    if (obj_carry != NULL) {
        if (fopAcM_GetName(obj_carry) == PROC_Obj_Carry) {
            mEatObjType = EAT_TYPE_OBJ;
            mCarryType = obj_carry->getType();
            fopAcM_delete(obj_carry);
            cXyz* obj_pos = &fopAcM_GetPosition(obj_carry);
            Set_Angle(obj_pos);
            mAction = ACT_EAT;

        } else if (fopAcM_GetName(obj_carry) == PROC_ALINK && mTimer == 0) {
            mEatObjType = EAT_TYPE_LINK;
            Set_Angle(player_pos);
            mTargetAngle = cLib_targetAngleY(&current.pos, player_pos);
            mAction = ACT_EAT;
            dComIfGp_getVibration().StartShock(5, 0x1f, cXyz(0.0f, 1.0f, 0.0f));

        } else if (fopAcM_GetName(obj_carry) == PROC_NBOMB) {
            cXyz* obj_pos = &fopAcM_GetPosition(obj_carry);
            Set_Angle(obj_pos);
            mEatObjType = EAT_TYPE_BOMB;
            fopAcM_delete(obj_carry);
            mAction = ACT_EAT;
        }
    }
}

/* 806A91B4-806A9254 001BB4 00A0+00 1/1 0/0 0/0 .text            WaitAction__8daE_DF_cFv */
void daE_DF_c::WaitAction() {
    switch (mEatObjType) {
    case EAT_TYPE_OBJ:
        SetAnm(ANIM_WAIT, 2, 5.0f, 1.0f);
        mCreatureSound.startCreatureSound(Z2SE_EN_DF_WAIT, 0, -1);
        mEatObjType++;  // EAT_TYPE_LINK
        break;
    case EAT_TYPE_LINK:
        SearchAction();
        break;
    }
}

/* 806A9254-806A9304 001C54 00B0+00 1/1 0/0 0/0 .text            MissAction__8daE_DF_cFv */
void daE_DF_c::MissAction() {
    switch (mEatObjType) {
    case EAT_TYPE_OBJ:
        SetAnm(ANIM_EAT, 0, 5.0f, 1.0f);
        mEatObjType++;  // EAT_TYPE_LINK
        break;

    case EAT_TYPE_LINK:
        if (mpMorfSO->isStop()) {
            mAction = ACT_WAIT;
            mEatObjType = EAT_TYPE_OBJ;
            mEatStep = 0;
        }
        break;
    }
}

/* 806A9304-806A9384 001D04 0080+00 1/1 0/0 0/0 .text            Action__8daE_DF_cFv */
void daE_DF_c::Action() {
    switch (mAction) {
    case ACT_WAIT:
        WaitAction();
        Obj_Damage();
        break;
    case ACT_EAT:
        EatAction();
        break;
    case ACT_DAMAGE:
        DamageAction();
        Obj_Damage();
        break;
    case ACT_MISS:
        MissAction();
        break;
    }
}

/* 806A9384-806A949C 001D84 0118+00 1/1 0/0 0/0 .text            Execute__8daE_DF_cFv */
int daE_DF_c::Execute() {
    mTimer--;
    if (mTimer <= 0) {
        mTimer = 0;
    }
    Yazirushi();
    Action();

    cXyz eff_size(1.5f, 1.5f, 1.5f);
    setMidnaBindEffect(this, &mCreatureSound, &current.pos, &eff_size);

    if (mAnim == ANIM_WAIT && mpMorfSO->checkFrame(38.0f)) {
        mCreatureSound.startCreatureSound(Z2SE_EN_DF_WAIT, 0, -1);
    }

    if (mInvincibilityTimer != 0) {
        mInvincibilityTimer--;
    }

    mpMorfSO->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    setBaseMtx();
    setCcCylinder();
    return 1;
}

/* 806A949C-806A94E0 001E9C 0044+00 1/1 0/0 0/0 .text            Yazirushi__8daE_DF_cFv */
void daE_DF_c::Yazirushi() {
    eyePos.y = current.pos.y;
    eyePos.y += 80.0f;
    attention_info.position.y = eyePos.y;
    attention_info.position.y += 80.0f;
    attention_info.position.x = current.pos.x;
    attention_info.position.z = current.pos.z;
}

/* 806A94E0-806A9550 001EE0 0070+00 1/1 0/0 0/0 .text            Draw__8daE_DF_cFv */
int daE_DF_c::Draw() {
    J3DModel* model = mpMorfSO->getModel();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    mpMorfSO->entryDL();
    return 1;
}

/* 806A9550-806A95B8 001F50 0068+00 1/1 0/0 0/0 .text            Delete__8daE_DF_cFv */
int daE_DF_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, "E_DF");
    if (mHIOInit) {
        l_initHIO = FALSE;
        mDoHIO_DELETE_CHILD(l_HIO.mNo);
    }
    if (heap != NULL) {
        mpMorfSO->stopZelAnime();
    }
    return 1;
}

/* 806A95B8-806A9610 001FB8 0058+00 1/1 0/0 0/0 .text            setBaseMtx__8daE_DF_cFv */
void daE_DF_c::setBaseMtx() {
    J3DModel* this_00;

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mpMorfSO->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    mpMorfSO->modelCalc();
}

/* 806A9610-806A9630 002010 0020+00 1/0 0/0 0/0 .text            daE_DF_Draw__FP8daE_DF_c */
static int daE_DF_Draw(daE_DF_c* i_this) {
    return i_this->Draw();
}

/* 806A9630-806A9650 002030 0020+00 2/1 0/0 0/0 .text            daE_DF_Execute__FP8daE_DF_c */
static int daE_DF_Execute(daE_DF_c* i_this) {
    return i_this->Execute();
}

/* 806A9650-806A9658 002050 0008+00 1/0 0/0 0/0 .text            daE_DF_IsDelete__FP8daE_DF_c */
static int daE_DF_IsDelete(daE_DF_c* i_this) {
    return 1;
}

/* 806A9658-806A9678 002058 0020+00 1/0 0/0 0/0 .text            daE_DF_Delete__FP8daE_DF_c */
static int daE_DF_Delete(daE_DF_c* i_this) {
    fpc_ProcID proc_id = fopAcM_GetID(i_this);
    return i_this->Delete();
}

/* 806A9678-806A9930 002078 02B8+00 1/1 0/0 0/0 .text            Create__8daE_DF_cFv */
int daE_DF_c::Create() {
    fopAcM_SetupActor(this, daE_DF_c);

    cPhs__Step rv = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, "E_DF");
    if (rv == cPhs_COMPLEATE_e) {
        OS_REPORT("E_DF PARAM %x\n", fopAcM_GetParam(this));
        mArg0 = (u8)fopAcM_GetParam(this);

        if (mArg0 != 0xff && dComIfGs_isSwitch(mArg0, fopAcM_GetRoomNo(this))) {
            OS_REPORT("E_WS やられ後なので再セットしません");
            return cPhs_ERROR_e;
        }

        if (fopAcM_entrySolidHeap(this, useHeapInit, 0x1a40) == NULL) {
            return cPhs_ERROR_e;
        }

        if (!l_initHIO) {
            l_initHIO = TRUE;
            mHIOInit = TRUE;
            l_HIO.mNo = mDoHIO_CREATE_CHILD("デクレシア", &l_HIO);
        }
        attention_info.flags = 4;

        fopAcM_SetMtx(this, mpMorfSO->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(this, 200.0f, 200.0f, 200.0f);

        mCreatureSound.init(&current.pos, &eyePos, 3, 1);
        mCreatureSound.setEnemyName("E_DF");

        mAtInfo.mpSound = &mCreatureSound;
        mAtInfo.mPowerType = 1;

        cXyz gnd_check_pos;
        gnd_check_pos = current.pos;
        gnd_check_pos.y += 100.0f;
        if (fopAcM_gc_c::gndCheck(&gnd_check_pos)) {
            current.pos.y = fopAcM_gc_c::getGroundY();
        }

        initCcCylinder();
        J3DModel* model = mpMorfSO->getModel();
        model->setUserArea((u32)this);

        for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
            if (i != 0) {
                model->getModelData()->getJointNodePointer(i)->setCallBack(JointCallBack);
            }
        }

        fopAcM_OffStatus(this, 0x4000);
        daE_DF_Execute(this);
    }

    return rv;
}

/* 806A9A1C-806A9A3C 00241C 0020+00 1/0 0/0 0/0 .text            daE_DF_Create__FP10fopAc_ac_c
 */
static int daE_DF_Create(fopAc_ac_c* i_this) {
    daE_DF_c* a_this = (daE_DF_c*)i_this;
    fpc_ProcID proc_id = fopAcM_GetID(i_this);
    return a_this->Create();
}

/* 806AA03C-806AA05C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_DF_Method */
static actor_method_class l_daE_DF_Method = {
    (process_method_func)daE_DF_Create,  (process_method_func)daE_DF_Delete,
    (process_method_func)daE_DF_Execute, (process_method_func)daE_DF_IsDelete,
    (process_method_func)daE_DF_Draw,
};

/* 806AA05C-806AA08C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_DF */
extern actor_process_profile_definition g_profile_E_DF = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_E_DF,               // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daE_DF_c),        // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    130,                     // mPriority
    &l_daE_DF_Method,        // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

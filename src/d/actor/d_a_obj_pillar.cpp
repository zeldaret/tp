/**
 * @file d_a_obj_pillar.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_pillar.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_obj_carry.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_bg_w.h"

#define ACTION_WAIT 0
#define ACTION_SWON 1
#define ACTION_END  2

#define SHAKE_MODE_WAIT        0
#define SHAKE_MODE_START       100
#define SHAKE_MODE_RESET_ANGLE 101
#define SHAKE_MODE_QUAKE       102
#define SHAKE_MODE_END         103

/* 80CB09D4-80CB09DC 000000 0008+00 7/7 0/0 0/0 .rodata          l_bmd */
static const int l_bmd[] = {5, 5};

/* 80CB09DC-80CB09E4 000008 0008+00 1/1 0/0 0/0 .rodata          l_dzb */
static const int l_dzb[] = {8, 8};

/* 80CB09E4-80CB09EC 000010 0008+00 1/1 0/0 0/0 .rodata          l_shadowBmd */
static const int l_shadowBmd[] = {4, 4};

/* 80CB09EC-80CB09F4 000018 0008+00 1/1 0/0 0/0 .rodata          l_heap_size */
static const u32 l_heap_size[] = {0x1830, 0xC00};

/* 80CB09F4-80CB0A38 000020 0044+00 1/1 0/0 0/0 .rodata          l_cyl_src */
const static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x400000, 0x11}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x8}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        75.0f, // mRadius
        500.0f // mHeight
    } // mCyl
};

#define SHAKE_DATA_CRASH_FIRST 0
#define SHAKE_DATA_STRONG      1
#define SHAKE_DATA_WEAK        2
#define SHAKE_DATA_CRASH       3

/* 80CB0A38-80CB0A68 000064 0030+00 2/4 0/0 0/0 .rodata          l_shake_data */
static const daPillar_c::sdata_t l_shake_data[] = {
    /* CRASH FIRST */ {5, 0, 800, 20, 7000, 400, 65},
    /* STRONG      */ {255, 0, 600, 20, 6000, 300, 40},
    /* WEAK        */ {255, 0, 400, 20, 5000, 200, 30},
    /* CRASH       */ {5, 0, 800, 120, 7000, 30, 15},
};

/* 80CB0B08-80CB0B10 -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[] = {
    "K_mbhasi0",
    "K_mbhasi1",
};

/* 80CAF32C-80CAF3B0 0000EC 0084+00 1/1 0/0 0/0 .text            __ct__14daPillar_HIO_cFv */
daPillar_HIO_c::daPillar_HIO_c() {
    mShakeData = l_shake_data[SHAKE_DATA_CRASH_FIRST];
    field_0x1c = 0.0f;
    field_0x20 = -0.7f;
    field_0x24 = 0;
    field_0x25 = 0;
    field_0x26 = 0;
    mIsAdjust = false;
}

/* 80CAF3F8-80CAF4B4 0001B8 00BC+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* i_bgw, fopAc_ac_c* i_this, fopAc_ac_c* i_rideActor) {
    daPy_py_c* player = dComIfGp_getLinkPlayer();
    if (((daPillar_c*)i_this)->mIsRollAttack && fopAcM_GetName(i_rideActor) == PROC_Obj_Carry) {
        s16 var_r28 = cM_rndF(1300.0f) + 8192.0f;
        if (cM_rndFX(1.0f) < 0.0f) {
            var_r28 = -var_r28;
        }

        i_rideActor->current.angle.y = player->current.angle.y + 0x7FFF + var_r28;
        i_rideActor->speedF = 30.0f;
        i_rideActor->speed.y = 1.0f;
        ((daObjCarry_c*)i_rideActor)->setDrop();
    }
}

/* 80CAF4B4-80CAF5EC 000274 0138+00 2/2 0/0 0/0 .text            setBaseMtx__10daPillar_cFv */
void daPillar_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, mRotY, shape_angle.z);
    mDoMtx_stack_c::YrotM(-mRotY);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);

    if (mpShadowModel != NULL) {
        mDoMtx_stack_c::transS(current.pos.x, current.pos.y + 1.0f, current.pos.z);
        mDoMtx_stack_c::YrotM(shape_angle.y + shape_angle.x * cM_ssin(mRotY));
        mpShadowModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
}

/* 80CAF5EC-80CAF7A8 0003AC 01BC+00 1/0 0/0 0/0 .text            Create__10daPillar_cFv */
int daPillar_c::Create() {
    setBaseMtx();

    if (mpShadowModel != NULL) {
        fopAcM_SetMtx(this, mpShadowModel->getBaseTRMtx());
    } else {
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    }

    mColliderStts.Init(0xFF, 0xFF, this);
    mCylCollider.Set(l_cyl_src);
    mCylCollider.SetStts(&mColliderStts);

    J3DJoint* pjoint = mpModel->getModelData()->getJointNodePointer(0);
    cXyz cull_min(*pjoint->getMin());
    cXyz cull_max(*pjoint->getMax());

    if (mpShadowModel != NULL) {
        J3DJoint* pshadow_joint = mpShadowModel->getModelData()->getJointNodePointer(0);

        if (cull_min.x > pshadow_joint->getMin()->x) {
            cull_min.x = pshadow_joint->getMin()->x;
        }

        if (cull_min.y > pshadow_joint->getMin()->y) {
            cull_min.y = pshadow_joint->getMin()->y;
        }

        if (cull_min.z > pshadow_joint->getMin()->z) {
            cull_min.z = pshadow_joint->getMin()->z;
        }

        if (cull_max.x < pshadow_joint->getMax()->x) {
            cull_max.x = pshadow_joint->getMax()->x;
        }

        if (cull_max.y < pshadow_joint->getMax()->y) {
            cull_max.y = pshadow_joint->getMax()->y;
        }

        if (cull_max.z < pshadow_joint->getMax()->z) {
            cull_max.z = pshadow_joint->getMax()->z;
        }
    }

    J3DTransformInfo* pjoint_transform = &pjoint->getTransformInfo();
    cull_min.y += pjoint_transform->mTranslate.y;
    cull_max.y += pjoint_transform->mTranslate.y;
    fopAcM_setCullSizeBox(this, cull_min.x, cull_min.y, cull_min.z, cull_max.x, cull_max.y, cull_max.z);

    u16 timer = getTimer();
    if (timer == 0 || timer == 255) {
        mTimer = 4;
    } else {
        mTimer = timer;
    }

    mShake = SHAKE_NONE;
    mpBgW->SetRideCallback(rideCallBack);
    return 1;
}

/* 80CAF7A8-80CAF8A4 000568 00FC+00 1/0 0/0 0/0 .text            CreateHeap__10daPillar_cFv */
int daPillar_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[mMdlType], l_bmd[mMdlType]);
    JUT_ASSERT(0, modelData != 0);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    if (checkShadow() == 0xFF) {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[mMdlType], l_shadowBmd[mMdlType]);
        JUT_ASSERT(0, modelData != 0);
        mpShadowModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (mpShadowModel == NULL) {
            return 0;
        }
    }

    return 1;
}

/* 80CAF8A4-80CAFA58 000664 01B4+00 1/1 0/0 0/0 .text            create1st__10daPillar_cFv */
int daPillar_c::create1st() {
    fopAcM_SetupActor(this, daPillar_c);

    if (!mIsPrmInit) {
        mIsPrmInit = true;
        field_0x73c = home.angle.x;
        field_0x73e = home.angle.z;
        mMdlType = field_0x73e & 0xF;

        home.angle.z = 0;
        home.angle.x = 0;
        current.angle.z = 0;
        current.angle.x = 0;
        shape_angle.z = 0;
        shape_angle.x = 0;
    }

    int phase_state = dComIfG_resLoad(&mPhase, l_arcName[mMdlType]);
    if (phase_state == cPhs_COMPLEATE_e) {
        phase_state = MoveBGCreate(l_arcName[mMdlType], l_dzb[mMdlType], dBgS_MoveBGProc_Typical, l_heap_size[mMdlType], NULL);
        if (phase_state == cPhs_ERROR_e) {
            return phase_state;
        }
    }

    return phase_state;
}

/* 80CAFB44-80CAFC08 000904 00C4+00 2/2 0/0 0/0 .text            checkAttacked__10daPillar_cFv */
bool daPillar_c::checkAttacked() {
    u8 swbit = getSwbit();
    if (swbit != 0xFF) {
        if (getType() == 0xFF) {
            return fopAcM_isSwitch(this, swbit);
        }

        if (getType() == 0) {
            bool var_r27 = false;
            for (int i = 0; i < 4; i++) {
                if (fopAcM_isSwitch(this, swbit + i)) {
                    var_r27 = true;
                }
            }

            return var_r27;
        }
    }

    return false;
}

/* 80CAFC08-80CAFD64 0009C8 015C+00 1/1 0/0 0/0 .text            on_switch__10daPillar_cFv */
void daPillar_c::on_switch() {
    u8 swbit = getSwbit();
    if (swbit != 0xFF) {
        if (getType() == 0xFF) {
            fopAcM_onSwitch(this, swbit);
        } else if (getType() == 0) {
            bool var_r27 = false;
            for (int i = 0; i < 4; i++) {
                if (fopAcM_isSwitch(this, swbit + i)) {
                    var_r27 = true;
                }
            }

            if (!var_r27) {
                f32 var_f31 = cM_sht2d(field_0x734);
                if (var_f31 < 0.0f) {
                    var_f31 = 359.9f + var_f31;
                }

                u16 var_r23 = (u16)(var_f31 / 24.0f + 1.0f);
                u16 var_r26 = 1;
                for (int i = 0; i < 4; i++) {
                    if (var_r23 & var_r26) {
                        fopAcM_onSwitch(this, swbit + i);
                    }

                    var_r26 = (var_r26 << 1);
                }
            }
        }
    }
}

/* 80CAFD64-80CAFF60 000B24 01FC+00 1/1 0/0 0/0 .text            checkShake__10daPillar_cFv */
int daPillar_c::checkShake() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 player_dist = player->current.pos.abs(current.pos);
    f32 attack_range = 150.0f;

    if (daPy_py_c::checkNowWolf()) {
        attack_range = 220.0f;
    }

    if (player_dist < attack_range && (player->checkFrontRollCrash() || player->checkWolfAttackReverse())) {
        if (strcmp(dComIfGp_getStartStageName(), "D_MN05") == 0 && fopAcM_GetRoomNo(this) == 2) {
            return SHAKE_CRASH_LV1;
        } else {
            return SHAKE_CRASH;
        }
    } else {
        if (mShake != SHAKE_NONE) {
            return mShake;
        }

        if (mCylCollider.ChkTgHit()) {
            cCcD_Obj* hitobj = mCylCollider.GetTgHitObj();
            if (hitobj != NULL && hitobj->ChkAtType(AT_TYPE_IRON_BALL)) {
                return SHAKE_IRONBALL;
            }
        }
    }

    return SHAKE_NONE;
}

/* 80CAFF60-80CB01E0 000D20 0280+00 1/1 0/0 0/0 .text            setShake_rcrash__10daPillar_cFv */
void daPillar_c::setShake_rcrash() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getLinkPlayer();
    u8 swbit = getSwbit();

    if (strcmp(dComIfGp_getStartStageName(), "D_MN05") == 0 && fopAcM_GetRoomNo(this) == 2 && fopAcM_isSwitch(this, swbit)) {
        mShakeData = l_shake_data[SHAKE_DATA_CRASH];
        mQuakeTimer = 0;
        mShakeMode = SHAKE_MODE_START;
        fopAcM_seStart(this, Z2SE_OBJ_COLUMN_SHAKE_HARD, 0);
    } else {
        mShakeData = l_shake_data[SHAKE_DATA_CRASH_FIRST];

        if (strcmp(dComIfGp_getStartStageName(), "D_MN05") == 0 && fopAcM_GetRoomNo(this) == 2) {
            fopAcM_seStart(this, Z2SE_OBJ_COLUMN_SHAKE_FIRST, 0);
        } else {
            fopAcM_seStart(this, Z2SE_OBJ_MK_COLUMN_SHAKE, 0);
        }
    }

    shape_angle.x = mShakeData.mInitAngleX;
    dComIfGp_getVibration().StartShock(mShakeData.mPower, 15, cXyz(0.0f, 1.0f, 0.0f));
    mIsRollAttack = true;

    if (!checkAttacked()) {
        field_0x734 = player->shape_angle.y;
    }
}

/* 80CB01E0-80CB022C 000FA0 004C+00 1/1 0/0 0/0 .text            setShake_strong__10daPillar_cFv */
void daPillar_c::setShake_strong() {
    mShakeData = l_shake_data[SHAKE_DATA_STRONG];
    shape_angle.x = mShakeData.mInitAngleX;
}

/* 80CB022C-80CB0278 000FEC 004C+00 1/1 0/0 0/0 .text            setShake_weak__10daPillar_cFv */
void daPillar_c::setShake_weak() {
    mShakeData = l_shake_data[SHAKE_DATA_WEAK];
    shape_angle.x = mShakeData.mInitAngleX;
}

/* 80CB0C2C-80CB0C54 000014 0028+00 2/2 0/0 0/0 .bss             l_HIO */
static daPillar_HIO_c l_HIO;

/* 80CB0278-80CB031C 001038 00A4+00 1/1 0/0 0/0 .text            switch_proc_call__10daPillar_cFv */
void daPillar_c::switch_proc_call() {
    typedef void (daPillar_c::*actionFunc)();
    static actionFunc l_func[] = {
        &daPillar_c::actionSwOnWait,
        &daPillar_c::actionSwOn,
        &daPillar_c::actionEnd,
    };

    (this->*l_func[mAction])();
}

/* 80CB031C-80CB0378 0010DC 005C+00 1/0 0/0 0/0 .text            actionSwOnWait__10daPillar_cFv */
void daPillar_c::actionSwOnWait() {
    if (mIsRollAttack) {
        if (checkAttacked()) {
            OS_REPORT("toACTION_END\n");
            setAction(ACTION_END);
        } else {
            OS_REPORT("toSWON\n");
            setAction(ACTION_SWON);
            actionSwOn();
        }
    }
}

/* 80CB0378-80CB03CC 001138 0054+00 2/1 0/0 0/0 .text            actionSwOn__10daPillar_cFv */
void daPillar_c::actionSwOn() {
    OS_REPORT("swon:mTimer<%d>\n", mTimer);
    if (mTimer > 0) {
        mTimer--;
    } else if (mTimer == 0) {
        on_switch();
        setAction(ACTION_END);
    }
}

/* 80CB03CC-80CB03D0 00118C 0004+00 1/0 0/0 0/0 .text            actionEnd__10daPillar_cFv */
void daPillar_c::actionEnd() {}

/* 80CB03D0-80CB0658 001190 0288+00 1/0 0/0 0/0 .text            Execute__10daPillar_cFPPA3_A4_f */
int daPillar_c::Execute(Mtx** param_0) {
    fopAcM_rollPlayerCrash(this, l_HIO.field_0x1c + 85.0f, 0xD, 200.0f, -100.0f, TRUE, l_HIO.field_0x20);
    mIsRollAttack = false;

    switch (checkShake()) {
    case SHAKE_CRASH:
    case SHAKE_CRASH_LV1:
    case SHAKE_IRONBALL:
        setShake_rcrash();
        break;
    case SHAKE_STRONG:
        setShake_strong();
        break;
    case SHAKE_WEAK:
        setShake_weak();
        break;
    }

    mShake = SHAKE_NONE;

    switch (mShakeMode) {
    case SHAKE_MODE_WAIT:
        cLib_addCalcAngleS(&shape_angle.x, 0, mShakeData.mTime, mShakeData.mMaxChangeX, mShakeData.mMinChangeX);
        break;
    case SHAKE_MODE_START:
        // "Shake!!!!\n"
        OS_REPORT("揺れ！！！！\n");
        dComIfGp_getVibration().StartQuake(4, 1, cXyz(0.0f, 1.0f, 0.0f));
        mShakeMode = SHAKE_MODE_RESET_ANGLE;
        break;
    case SHAKE_MODE_RESET_ANGLE:
        cLib_addCalcAngleS(&shape_angle.x, 0, 40, 20, 5);
        if (shape_angle.x < 260) {
            dComIfGp_getVibration().StopQuake(31);
            dComIfGp_getVibration().StartQuake(2, 1, cXyz(0.0f, 1.0f, 0.0f));
            mShakeMode = SHAKE_MODE_QUAKE;
        }
    case SHAKE_MODE_QUAKE:
        mQuakeTimer++;
        if (mQuakeTimer > 110) {
            dComIfGp_getVibration().StopQuake(31);
            mShakeMode = SHAKE_MODE_END;
        }
        break;
    case SHAKE_MODE_END:
        if(cLib_addCalcAngleS(&shape_angle.x, 0, 60, 10, 3) == 0) {
            mShakeMode = SHAKE_MODE_WAIT;
        }
        break;
    default:
        JUT_ASSERT(0, 0);
    }

    if (shape_angle.x != 0) {
        mRotY += (s16)(mShakeData.mSpeedY + (0x300 / shape_angle.x));
    }

    *param_0 = &mBgMtx;
    setBaseMtx();
    switch_proc_call();

    mCylCollider.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCylCollider);
    return 1;
}

/* 80CB0658-80CB0740 001418 00E8+00 1/0 0/0 0/0 .text            Draw__10daPillar_cFv */
int daPillar_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    if (mpShadowModel != NULL) {
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mpShadowModel, &tevStr);
        mDoExt_modelUpdateDL(mpShadowModel);
    }

    return 1;
}

/* 80CB0740-80CB0780 001500 0040+00 1/0 0/0 0/0 .text            Delete__10daPillar_cFv */
int daPillar_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName[mMdlType]);
    return 1;
}

/* 80CB0780-80CB0874 001540 00F4+00 1/0 0/0 0/0 .text            daPillar_create1st__FP10daPillar_c
 */
static int daPillar_create1st(daPillar_c* i_this) {
    fopAcM_SetupActor(i_this, daPillar_c);
    return i_this->create1st();
}

/* 80CB0874-80CB0894 001634 0020+00 1/0 0/0 0/0 .text daPillar_MoveBGDelete__FP10daPillar_c */
static int daPillar_MoveBGDelete(daPillar_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80CB0894-80CB08B4 001654 0020+00 1/0 0/0 0/0 .text daPillar_MoveBGExecute__FP10daPillar_c */
static int daPillar_MoveBGExecute(daPillar_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CB08B4-80CB08E0 001674 002C+00 1/0 0/0 0/0 .text            daPillar_MoveBGDraw__FP10daPillar_c
 */
static int daPillar_MoveBGDraw(daPillar_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80CB0B58-80CB0B78 -00001 0020+00 1/0 0/0 0/0 .data            daPillar_METHODS */
static actor_method_class daPillar_METHODS = {
    (process_method_func)daPillar_create1st,
    (process_method_func)daPillar_MoveBGDelete,
    (process_method_func)daPillar_MoveBGExecute,
    NULL,
    (process_method_func)daPillar_MoveBGDraw,
};

/* 80CB0B78-80CB0BA8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Pillar */
extern actor_process_profile_definition g_profile_Obj_Pillar = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Pillar,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daPillar_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  432,                    // mPriority
  &daPillar_METHODS,      // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

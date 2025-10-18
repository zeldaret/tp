/**
 * @file d_a_obj_swpush5.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_swpush5.h"
#include "d/actor/d_a_player.h"
#include "d/d_s_play.h"
#include "Z2AudioLib/Z2Instances.h"

/* 8059C6A4-8059C6AC 000000 0008+00 7/7 0/0 0/0 .rodata          l_dzbIdx */
static const int l_dzbIdx[] = {7, 8};

/* 8059B4EC-8059B754 0000EC 0268+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* i_bgw, fopAc_ac_c* i_bgActor, fopAc_ac_c* i_rideActor) {
    daObjSw5_c* i_this = (daObjSw5_c*)i_bgActor;
    daPy_py_c* player_p = daPy_getPlayerActorClass();

    if (i_this->checkPushable() && fopAcM_CheckStatus(i_rideActor, fopAcM_STATUS_UNK_0x400) && fopAcM_GetName(i_rideActor) == PROC_ALINK) {
        static cXyz l_push_check_pos[4] = {
            cXyz(-50.0f, 0.0f, -50.0f),
            cXyz(50.0f, 0.0f, -50.0f),
            cXyz(50.0f, 0.0f, 50.0f),
            cXyz(-50.0f, 0.0f, 50.0f),
        };

        cXyz local_rideActor_pos = i_rideActor->current.pos - i_bgActor->current.pos;
        mDoMtx_stack_c::YrotS(-i_bgActor->current.angle.y);
        mDoMtx_stack_c::multVec(&local_rideActor_pos, &local_rideActor_pos);

        if (l_push_check_pos[0].x <= local_rideActor_pos.x && l_push_check_pos[2].x >= local_rideActor_pos.x &&
            l_push_check_pos[0].z <= local_rideActor_pos.z && l_push_check_pos[2].z >= local_rideActor_pos.z)
        {
            i_this->mUnkRideTimer = 6;
            if (player_p->checkBootsOrArmorHeavy()) {
                i_this->mIsPlayerRideHvy = TRUE;
            } else {
                i_this->mIsPlayerRideHvy = FALSE;
            }

            if (fopAcM_CheckCarryType(i_rideActor, fopAcM_CARRY_TYPE_1)) {
                i_this->field_0x5ae = 2;
            } else {
                i_this->field_0x5ae = 1;
            }
        }
    }
}

/* 8059B754-8059B804 000354 00B0+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        int jnt_no = i_joint->getJntNo();
        J3DModel* model_p = j3dSys.getModel();
        daObjSw5_c* i_this = (daObjSw5_c*)model_p->getUserArea();

        cMtx_copy(model_p->getAnmMtx(jnt_no), mDoMtx_stack_c::get());

        if (jnt_no == 1) {
            mDoMtx_stack_c::transM(i_this->mTopPos, 0.0f, 0.0f);
        }

        model_p->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
        mDoMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    }

    return 1;
}

/* 8059B804-8059B88C 000404 0088+00 1/1 0/0 0/0 .text            initBaseMtx__10daObjSw5_cFv */
void daObjSw5_c::initBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mMtx);
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 8059B88C-8059B920 00048C 0094+00 2/2 0/0 0/0 .text            setBaseMtx__10daObjSw5_cFv */
void daObjSw5_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());

    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + mTopPos, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 8059B920-8059BA1C 000520 00FC+00 1/0 0/0 0/0 .text            Create__10daObjSw5_cFv */
int daObjSw5_c::Create() {
    if (dComIfG_Bgsp().Regist(mpBgW2, this)) {
        return 0;
    }

    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());

    mpBgW->SetRideCallback(rideCallBack);

    J3DJoint* sw_jnt = mpModel->getModelData()->getJointNodePointer(1);
    JUT_ASSERT(276, sw_jnt != NULL);

    sw_jnt->setCallBack(nodeCallBack);
    mpModel->setUserArea((uintptr_t)this);

    if (fopAcM_isSwitch(this, getSwNo())) {
        mTopPos = -25.0f;
        modeWaitUpperInit();
    }

    mpBgW2->Move();
    mpBgW2->SetLock();
    return 1;
}

/* 8059C6FC-8059C700 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "D_Hfsw00";

/* 8059BA1C-8059BB1C 00061C 0100+00 1/0 0/0 0/0 .text            CreateHeap__10daObjSw5_cFv */
int daObjSw5_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    JUT_ASSERT(308, modelData != NULL);

    mpModel = mDoExt_J3DModel__create(modelData, J3DMdlFlag_DifferedDLBuffer, BMD_DEFAULT_DIFF_FLAGS);
    if (mpModel == NULL) {
        return 0;
    }

    mpBgW2 = new dBgW();
    if (mpBgW2 == NULL || mpBgW2->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, l_dzbIdx[0]), 1, &mMtx)) {
        mpBgW2 = NULL;
        return 0;
    }

    return 1;
}

/* 8059BB1C-8059BBD4 00071C 00B8+00 1/1 0/0 0/0 .text            create__10daObjSw5_cFv */
int daObjSw5_c::create() {
    fopAcM_ct(this, daObjSw5_c);

    int phase_state = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        phase_state = MoveBGCreate(l_arcName, l_dzbIdx[1], NULL, 0x1060, NULL);
        if (phase_state == cPhs_ERROR_e) {
            return phase_state;
        }
    }

    return phase_state;
}

/* 8059BBD4-8059BC70 0007D4 009C+00 1/0 0/0 0/0 .text            Execute__10daObjSw5_cFPPA3_A4_f */
int daObjSw5_c::Execute(Mtx** param_0) {
    setting_ride_flag();
    mCounter++;

    event_proc_call();
    mode_proc_call();
    calc_top_pos();

    mpBgW2->Move();

    *param_0 = &mBgMtx;
    setBaseMtx();

    field_0x5af = field_0x5ae;
    field_0x5ad = mUnkRideTimer;
    field_0x5ae = 0;
    mIsPlayerRideHvyPrev = mIsPlayerRideHvy;
    mIsPlayerRideHvy = FALSE;
    return 1;
}

/* 8059BC70-8059BD24 000870 00B4+00 1/1 0/0 0/0 .text            setting_ride_flag__10daObjSw5_cFv
 */
void daObjSw5_c::setting_ride_flag() {
    if (mUnkRideTimer != 0) {
        mUnkRideTimer--;
    }

    if (field_0x5ae != 0) {
        if (field_0x5b1 != 0) {
            field_0x5b0 = 8;
        } else {
            field_0x5b0++;
            if (field_0x5b0 > 8) {
                field_0x5b1 = 1;
            }
        }

        if (mIsPlayerRideHvyPrev != mIsPlayerRideHvy) {
            field_0x5b1 = 0;
            field_0x5b0 = 0;
        }
    } else if (field_0x5b1 != 0) {
        field_0x5b0--;
        if (field_0x5b0 == 0) {
            field_0x5b1 = 0;
        }
    } else {
        field_0x5b0 = 0;
    }
}

/* 8059BD24-8059BD2C 000924 0008+00 1/1 0/0 0/0 .text            checkPushable__10daObjSw5_cFv */
// getSwNo2 always returns 0xFF, so this function always returns true
BOOL daObjSw5_c::checkPushable() {
    u8 swbit2 = getSwNo2();
    if (swbit2 == 0xFF) {
        return true;
    }

    if (swbit2 != 0xFF && fopAcM_isSwitch(this, swbit2)) {
        return true;
    }

    return false;
}

/* 8059BD2C-8059BE18 00092C 00EC+00 1/1 0/0 0/0 .text            event_proc_call__10daObjSw5_cFv */
void daObjSw5_c::event_proc_call() {
    static void (daObjSw5_c::*l_func[])() = {
        &daObjSw5_c::actionPauseNone,
        &daObjSw5_c::actionPauseOrder,
        &daObjSw5_c::actionPause,
        &daObjSw5_c::actionWait,
        &daObjSw5_c::actionOrder,
        &daObjSw5_c::actionEvent,
    };

    (this->*l_func[mAction])();
}

/* 8059BE18-8059BE24 000A18 000C+00 2/2 0/0 0/0 .text            actionPauseNoneInit__10daObjSw5_cFv
 */
void daObjSw5_c::actionPauseNoneInit() {
    mAction = 0;
}

/* 8059BE24-8059BE28 000A24 0004+00 1/0 0/0 0/0 .text            actionPauseNone__10daObjSw5_cFv */
void daObjSw5_c::actionPauseNone() {}

/* 8059BE28-8059BE80 000A28 0058+00 1/1 0/0 0/0 .text actionPauseOrderInit__10daObjSw5_cFv */
void daObjSw5_c::actionPauseOrderInit() {
    if (mAction != 1) {
        mAction = 1;
        fopAcM_orderPotentialEvent(this, 2, 0, 0);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
    }
}

/* 8059BE80-8059BEB4 000A80 0034+00 1/0 0/0 0/0 .text            actionPauseOrder__10daObjSw5_cFv */
void daObjSw5_c::actionPauseOrder() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        actionPauseInit();
    } else {
        actionPauseNoneInit();
    }
}

/* 8059BEB4-8059BEE0 000AB4 002C+00 1/1 0/0 0/0 .text            actionPauseInit__10daObjSw5_cFv */
void daObjSw5_c::actionPauseInit() {
    daPy_getPlayerActorClass()->onWolfEyeKeep();
    mPauseTimer = 10;
    mAction = 2;
}

/* 8059BEE0-8059BF48 000AE0 0068+00 1/0 0/0 0/0 .text            actionPause__10daObjSw5_cFv */
void daObjSw5_c::actionPause() {
    daPy_getPlayerActorClass()->onWolfEyeKeep();

    mPauseTimer--;
    if (mPauseTimer == 0) {
        dComIfGp_event_reset();
        actionPauseNoneInit();
    }
}

/* 8059BF48-8059BF4C 000B48 0004+00 1/0 0/0 0/0 .text            actionWait__10daObjSw5_cFv */
void daObjSw5_c::actionWait() {}

/* 8059BF4C-8059BF50 000B4C 0004+00 1/0 0/0 0/0 .text            actionOrder__10daObjSw5_cFv */
void daObjSw5_c::actionOrder() {}

/* 8059BF50-8059BF54 000B50 0004+00 1/0 0/0 0/0 .text            actionEvent__10daObjSw5_cFv */
void daObjSw5_c::actionEvent() {}

/* 8059BF54-8059BFE4 000B54 0090+00 1/1 0/0 0/0 .text            calc_top_pos__10daObjSw5_cFv */
void daObjSw5_c::calc_top_pos() {
    speed.y -= (field_0x5f8 - field_0x5fc) * (0.9f + KREG_F(1));
    speed.y -= speed.y * (0.5f + KREG_F(0));
    field_0x5f8 += speed.y;

    mTopPos = -25.0f * (1.0f - field_0x5f8);
    mTopPos = cLib_minMaxLimit<f32>(mTopPos, -25.0f, 0.0f);
}

/* 8059BFE4-8059C0A0 000BE4 00BC+00 1/1 0/0 0/0 .text            mode_proc_call__10daObjSw5_cFv */
void daObjSw5_c::mode_proc_call() {
    static void (daObjSw5_c::*l_mode_func[])() = {
        &daObjSw5_c::modeWaitLower,
        &daObjSw5_c::modeLower,
        &daObjSw5_c::modeWaitUpper,
        &daObjSw5_c::modeUpper,
    };

    (this->*l_mode_func[mMode])();
}

/* 8059C0A0-8059C0C8 000CA0 0028+00 1/1 0/0 0/0 .text            modeWaitLowerInit__10daObjSw5_cFv
 */
void daObjSw5_c::modeWaitLowerInit() {
    speed.y = 0.0f;
    field_0x5f8 = 1.0f;
    field_0x5fc = 1.0f;
    mMode = 0;
}

/* 8059C0C8-8059C23C 000CC8 0174+00 1/0 0/0 0/0 .text            modeWaitLower__10daObjSw5_cFv */
void daObjSw5_c::modeWaitLower() {
    bool var_r30 = false;
    bool do_pause = false;
    daPy_py_c* player = daPy_getPlayerActorClass();
    
    if (field_0x5b1 != 0) {
        var_r30 = true;
    }

    if (field_0x5ae != 0 && field_0x5af == 0) {
        do_pause = true;
    }

    if (var_r30) {
        if (mIsPlayerRideHvy) {
            mPauseTimer += 30;
            modeLowerInit();
        } else {
            if (field_0x5fc == 1.0f) {
                fopAcM_seStart(this, Z2SE_OBJ_HEAVY_FUMISW_RIDE, 0);
            }
            field_0x5fc = 0.8f;
        }
    } else {
        if (field_0x5fc != 1.0f) {
            fopAcM_seStart(this, Z2SE_OBJ_HEAVY_FUMISW_DROP, 0);
        }
        field_0x5fc = 1.0f;
    }

    if (do_pause) {
        actionPauseOrderInit();
    }
}

/* 8059C23C-8059C2D0 000E3C 0094+00 1/1 0/0 0/0 .text            modeLowerInit__10daObjSw5_cFv */
void daObjSw5_c::modeLowerInit() {
    fopAcM_seStart(this, Z2SE_OBJ_HEAVY_FUMISW_ON, 0);
    field_0x5fc = 0.0f;
    mMode = 1;
}

/* 8059C2D0-8059C364 000ED0 0094+00 1/0 0/0 0/0 .text            modeLower__10daObjSw5_cFv */
void daObjSw5_c::modeLower() {
    daPy_getPlayerActorClass();
    if (-25.0f == mTopPos) {
        dComIfGp_getVibration().StartShock(VIBMODE_S_POWER4, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
        modeWaitUpperInit();

        fopAcM_onSwitch(this, getSwNo());
        OS_REPORT("ヘビー踏みスイッチ：スイッチＯＮしました<%d>\n", getSwNo());
    }
}

/* 8059C364-8059C370 000F64 000C+00 2/2 0/0 0/0 .text            modeWaitUpperInit__10daObjSw5_cFv
 */
void daObjSw5_c::modeWaitUpperInit() {
    mMode = 2;
}

/* 8059C370-8059C3C4 000F70 0054+00 1/0 0/0 0/0 .text            modeWaitUpper__10daObjSw5_cFv */
void daObjSw5_c::modeWaitUpper() {
    if (!fopAcM_isSwitch(this, getSwNo())) {
        modeUpperInit();
    }
}

/* 8059C3C4-8059C454 000FC4 0090+00 1/1 0/0 0/0 .text            modeUpperInit__10daObjSw5_cFv */
void daObjSw5_c::modeUpperInit() {
    fopAcM_seStart(this, Z2SE_OBJ_HEAVY_FUMISW_OFF, 0);
    field_0x5fc = 1.0f;
    mMode = 3;
}

/* 8059C454-8059C4BC 001054 0068+00 1/0 0/0 0/0 .text            modeUpper__10daObjSw5_cFv */
void daObjSw5_c::modeUpper() {
    if (mTopPos == 0.0f) {
        modeWaitLowerInit();

        fopAcM_offSwitch(this, getSwNo());
        OS_REPORT("ヘビー踏みスイッチ：スイッチＯＦＦしました<%d>\n", getSwNo());

        field_0x5b1 = 0;
        field_0x5b0 = 0;
    }
}

/* 8059C4BC-8059C560 0010BC 00A4+00 1/0 0/0 0/0 .text            Draw__10daObjSw5_cFv */
int daObjSw5_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 8059C560-8059C5CC 001160 006C+00 1/0 0/0 0/0 .text            Delete__10daObjSw5_cFv */
int daObjSw5_c::Delete() {
    if (mpBgW2 != NULL && mpBgW2->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW2);
    }

    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 8059C5CC-8059C5F8 0011CC 002C+00 1/0 0/0 0/0 .text            daObjSw5_Draw__FP10daObjSw5_c */
static int daObjSw5_Draw(daObjSw5_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 8059C5F8-8059C618 0011F8 0020+00 1/0 0/0 0/0 .text            daObjSw5_Execute__FP10daObjSw5_c */
static int daObjSw5_Execute(daObjSw5_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 8059C618-8059C638 001218 0020+00 1/0 0/0 0/0 .text            daObjSw5_Delete__FP10daObjSw5_c */
static int daObjSw5_Delete(daObjSw5_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 8059C638-8059C658 001238 0020+00 1/0 0/0 0/0 .text            daObjSw5_Create__FP10fopAc_ac_c */
static int daObjSw5_Create(fopAc_ac_c* i_this) {
    return ((daObjSw5_c*)i_this)->create();
}

/* 8059C7F0-8059C810 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSw5_Method */
static actor_method_class l_daObjSw5_Method = {
    (process_method_func)daObjSw5_Create,
    (process_method_func)daObjSw5_Delete,
    (process_method_func)daObjSw5_Execute,
    0,
    (process_method_func)daObjSw5_Draw,
};

/* 8059C810-8059C840 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Swpush5 */
extern actor_process_profile_definition g_profile_Obj_Swpush5 = {
  fpcLy_CURRENT_e,        // mLayerID
  2,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Swpush5,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjSw5_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  13,                     // mPriority
  &l_daObjSw5_Method,     // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

AUDIO_INSTANCES

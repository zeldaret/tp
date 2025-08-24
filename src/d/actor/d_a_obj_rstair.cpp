/**
 * @file d_a_obj_rstair.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_rstair.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "m_Do/m_Do_graphic.h"

/* 80CC1558-80CC1614 000078 00BC+00 1/1 0/0 0/0 .text            initBaseMtx__15daObjRotStair_cFv */
void daObjRotStair_c::initBaseMtx() {
    mWaterModels[0]->setBaseScale(scale);
    mWaterModels[1]->setBaseScale(scale);
    mModel->setBaseScale(scale);
    setBaseMtx();
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mWaterModels[0]->setBaseTRMtx(mDoMtx_stack_c::get());
    mWaterModels[1]->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CC1614-80CC16B0 000134 009C+00 2/2 0/0 0/0 .text            setBaseMtx__15daObjRotStair_cFv */
void daObjRotStair_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::YrotM(mAdditionalRotY);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mWaterModels[0]->setBaseTRMtx(mDoMtx_stack_c::get());
    mWaterModels[1]->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CC2700-80CC2708 000000 0008+00 3/3 0/0 0/0 .rodata          l_wtr_bmd */
static u32 const l_wtr_bmd[2] = {
    6, 7,
};

/* 80CC2708-80CC2710 000008 0008+00 0/1 0/0 0/0 .rodata          l_wtr_btk */
static u32 const l_wtr_btk[2] = {
    10, 11
};

/* 80CC2710-80CC2720 000010 0010+00 2/2 0/0 0/0 .rodata          l_target_angleY */
static s16 const l_target_angleY[8] = {
    0x7FFF, 0x4000, 0x0000, -0x4000, 0x0000, -0x4000, 0x7FFF, 0x4000,
};

/* 80CC16B0-80CC17F0 0001D0 0140+00 1/0 0/0 0/0 .text            Create__15daObjRotStair_cFv */
int daObjRotStair_c::Create() {
    for (int i = 0; i < 4; i = i + 1) {
        mIsSw[i] = fopAcM_isSwitch(this, i + getSwNo());
    }
    field_0x5e3 = -1;
    int angleIndex = -1;
    for (int i = 0; i < 4; i++) {
        if (fopAcM_isSwitch(this, i + getSwNo())) {
            OS_REPORT("回転階段：方向<%d>\n", i);
            angleIndex = i;
            field_0x5e3 = i;
            break;
        }
    }
    if (angleIndex >= 0) {
        shape_angle.y = l_target_angleY[angleIndex];
    }
    init_modeWait();
    initBaseMtx();
    fopAcM_SetMtx(this, mModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mModel->getModelData());
    mMapToolId = getEventID();
    mEventId = dComIfGp_getEventManager().getEventIdx(this, mMapToolId);
    mWaterBgw->Move();
    setAction(ACTION_WAIT);
    return 1;
}

/* 80CC275C-80CC2760 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "K_spkai00";

/* 80CC2760-80CC276C 000024 000C+00 0/0 0/0 0/0 .data            l_water_check_offset */
static Vec l_water_check_offset = {
    0.0f, 2000.0f, -2000.0f,
};

/* 80CC17F0-80CC19E0 000310 01F0+00 1/0 0/0 0/0 .text            CreateHeap__15daObjRotStair_cFv */
int daObjRotStair_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*) dComIfG_getObjectRes(l_arcName, 5);
    JUT_ASSERT(215, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mModel == NULL) {
        return 0;
    }
    for (int i = 0; i < 2; i++) {
        modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, l_wtr_bmd[i]);
        JUT_ASSERT(232, modelData != 0);
        mWaterModels[i] = mDoExt_J3DModel__create(modelData, 0x80000, 0x19000284);
        if (mWaterModels[i] == NULL) {
            return 0;
        }
        J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, l_wtr_btk[i]);
        JUT_ASSERT(245, pbtk != 0);
        mBtks[i] = new mDoExt_btkAnm();
        if (mBtks[i] == NULL || mBtks[i]->init(modelData, pbtk, 1, 2, 1.0f, 0, -1) == 0) {
            return 0;
        }
    }
    mWaterBgw = new dBgW();
    if (mWaterBgw == NULL || mWaterBgw->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, 0xf), 1, &mBgMtx) != 0) {
        mWaterBgw = NULL;
        return 0;
    }
    return 1;
}

/* 80CC1A28-80CC1AF0 000548 00C8+00 1/1 0/0 0/0 .text            create1st__15daObjRotStair_cFv */
int daObjRotStair_c::create1st() {
    if (mInit == 0) {
        field_0x5c8 = home.angle.x;
        mSwNo = home.angle.z;
        shape_angle.x = 0;
        current.angle.x = 0;
        home.angle.x = 0;
        shape_angle.z = 0;
        current.angle.z = 0;
        home.angle.z = 0;
        mInit = 1;
    }
    int rv = dComIfG_resLoad(&mPhase, l_arcName);
    if (rv == cPhs_COMPLEATE_e) {
        rv = MoveBGCreate(l_arcName, 0xe,
                             dBgS_MoveBGProc_TypicalRotY, 0xd1c0, NULL);
        if (rv == cPhs_ERROR_e) {
            return rv;
        }
        OS_REPORT("RSTAIR PARAM : %x \n", fopAcM_GetParam(this));
    }
    return rv;
}

/* 80CC1AF0-80CC1BA4 000610 00B4+00 1/0 0/0 0/0 .text Execute__15daObjRotStair_cFPPA3_A4_f */
int daObjRotStair_c::Execute(Mtx** ppMtx) {
    move_proc_call();
    event_proc_call();
    *ppMtx = &mBgMtx;
    setBaseMtx();
    if (mWaterModelOn) {
        mWaterBgw->Move();
    }
    for (int i = 0; i < 4; i = i + 1) {
        mIsSw[i] = fopAcM_isSwitch(this, i + getSwNo());
    }
    mBtks[0]->play();
    mBtks[1]->play();
    return 1;
}

/* 80CC1BA4-80CC1C30 0006C4 008C+00 1/1 0/0 0/0 .text            move_proc_call__15daObjRotStair_cFv
 */
void daObjRotStair_c::move_proc_call() {
    static daObjRotStair_c::modeFunc l_func[2] = {
        &daObjRotStair_c::modeWait,
        &daObjRotStair_c::modeRotate,
    };
    (this->*(l_func[mMode]))();
}

/* 80CC1C30-80CC1CF0 000750 00C0+00 2/2 0/0 0/0 .text            init_modeWait__15daObjRotStair_cFv
 */
void daObjRotStair_c::init_modeWait() {
    s8 dVar3 = field_0x5e3;
    if (dVar3 >= 4) {
        dVar3 -= 4;
    }
    if ((dVar3 == 3 && fopAcM_isSwitch(this, getSwNo3())) || (dVar3 == 1 && fopAcM_isSwitch(this, getSwNo2())))
    {
        onWaterModel();
    } else {
        offWaterModel();
    }
    mMode = MODE_WAIT;
}

/* 80CC1CF0-80CC1DF8 000810 0108+00 1/0 0/0 0/0 .text            modeWait__15daObjRotStair_cFv */
void daObjRotStair_c::modeWait() {
    s8 dVar3 = field_0x5e3;
    if (dVar3 >= 4) {
        dVar3 -= 4;
    }
    if ((dVar3 == 3 && fopAcM_isSwitch(this, getSwNo3())) || (dVar3 == 1 && fopAcM_isSwitch(this, getSwNo2())))
    {
        onWaterModel();
    } else {
        offWaterModel();
    }

    int changeSw = checkChangeSw();
    if (changeSw >= 0) {
        field_0x5e2 = true;
        field_0x5e3 = changeSw;
        mTargetAngle = l_target_angleY[field_0x5e3];
        offSwitch(field_0x5e3);
        init_modeRotate();
    }
}

/* 80CC1DF8-80CC1EC8 000918 00D0+00 1/1 0/0 0/0 .text init_modeRotate__15daObjRotStair_cFv */
void daObjRotStair_c::init_modeRotate() {
    s8 dVar3 = field_0x5e3;
    if (dVar3 >= 4) {
        dVar3 -= 4;
    }
    if ((dVar3 == 3 && fopAcM_isSwitch(this, getSwNo3())) || (dVar3 == 1 && fopAcM_isSwitch(this, getSwNo2())))
    {
        onWaterModel();
    } else {
        offWaterModel();
    }

    mAngleStep = 0;
    mStepTarget = 300;
    mMode = MODE_ROTATE;
}

/* 80CC1EC8-80CC2024 0009E8 015C+00 1/0 0/0 0/0 .text            modeRotate__15daObjRotStair_cFv */
void daObjRotStair_c::modeRotate() {
    if (abs(mTargetAngle - shape_angle.y) < mAngleStep) {
        dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        fopAcM_seStart(this, Z2SE_OBJ_ROLLSTAIR_STOP, 0);
        shape_angle.y = mTargetAngle;
        mAngleStep = 0;
        init_modeWait();
    } else {
        shape_angle.y += mAngleStep;
    }
    cLib_addCalcAngleS(&mAngleStep, mStepTarget, 0x14, 0x32, 10);
    fopAcM_seStartLevel(this, Z2SE_OBJ_ROLLSTAIR_ROLL, 0);
}

/* 80CC2024-80CC20E0 000B44 00BC+00 1/1 0/0 0/0 .text event_proc_call__15daObjRotStair_cFv */
void daObjRotStair_c::event_proc_call() {
    static daObjRotStair_c::actionFunc l_func[4] = {
        &daObjRotStair_c::actionWait,
        &daObjRotStair_c::actionOrderEvent,
        &daObjRotStair_c::actionEvent,
        &daObjRotStair_c::actionDead,
    };

    (this->*(l_func[mAction]))();
}

/* 80CC20E0-80CC2158 000C00 0078+00 1/0 0/0 0/0 .text            actionWait__15daObjRotStair_cFv */
void daObjRotStair_c::actionWait() {
    if (mMapToolId != 0xff && field_0x5e2) {
        field_0x5e2 = false;
        setAction(ACTION_ORDER_EVENT);
        fopAcM_orderOtherEventId(this, mEventId, mMapToolId, 0xffff, 0, 1);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
    }
}

/* 80CC2158-80CC21C0 000C78 0068+00 1/0 0/0 0/0 .text actionOrderEvent__15daObjRotStair_cFv */
void daObjRotStair_c::actionOrderEvent() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(ACTION_EVENT);
    } else {
        fopAcM_orderOtherEventId(this, mEventId, mMapToolId, 0xffff, 0, 1);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
    }
}

/* 80CC21C0-80CC221C 000CE0 005C+00 1/0 0/0 0/0 .text            actionEvent__15daObjRotStair_cFv */
void daObjRotStair_c::actionEvent() {
    if (dComIfGp_evmng_endCheck(mEventId)) {
        setAction(ACTION_DEAD);
        dComIfGp_event_reset();
    }
}

/* 80CC221C-80CC2220 000D3C 0004+00 1/0 0/0 0/0 .text            actionDead__15daObjRotStair_cFv */
void daObjRotStair_c::actionDead() {
}

/* 80CC2220-80CC22A0 000D40 0080+00 1/1 0/0 0/0 .text            checkChangeSw__15daObjRotStair_cFv
 */
int daObjRotStair_c::checkChangeSw() {
    for (int i = 0; i < 4; i++) {
        if (mIsSw[i] != fopAcM_isSwitch(this, i + getSwNo())) {
            return i;
        }
    }
    return -1;
}

/* 80CC22A0-80CC2310 000DC0 0070+00 1/1 0/0 0/0 .text            offSwitch__15daObjRotStair_cFi */
void daObjRotStair_c::offSwitch(int idx) {
    for (int i = 0; i < 4; i++) {
        int swNo = getSwNo() + i;
        if (idx != i) {
            fopAcM_offSwitch(this, swNo);
        }
    }
}

/* 80CC2310-80CC2364 000E30 0054+00 3/3 0/0 0/0 .text            onWaterModel__15daObjRotStair_cFv
 */
void daObjRotStair_c::onWaterModel() {
    if (!mWaterModelOn) {
        dComIfG_Bgsp().Regist(mWaterBgw, this);
        mWaterModelOn = true;
    }
}

/* 80CC2364-80CC23C4 000E84 0060+00 3/3 0/0 0/0 .text            offWaterModel__15daObjRotStair_cFv
 */
void daObjRotStair_c::offWaterModel() {
    if (mWaterModelOn) {
        if (mWaterBgw->ChkUsed()) {
            dComIfG_Bgsp().Release(mWaterBgw);
        }
        mWaterModelOn = false;
    }
}

/* 80CC23C4-80CC25C0 000EE4 01FC+00 1/0 0/0 0/0 .text            Draw__15daObjRotStair_cFv */
int daObjRotStair_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    if (mWaterModelOn) {
        g_env_light.setLightTevColorType_MAJI(mWaterModels[0], &tevStr);
        g_env_light.setLightTevColorType_MAJI(mWaterModels[1], &tevStr);
        mBtks[0]->entry(mWaterModels[0]->getModelData());
        mBtks[1]->entry(mWaterModels[1]->getModelData());
        dComIfGd_setXluListDarkBG();
        mDoExt_modelUpdateDL(mWaterModels[0]);
        dComIfGd_setList();
        J3DModelData* modelData = mWaterModels[1]->getModelData();
        J3DMaterial* material = modelData->getMaterialNodePointer(0);
        dComIfGd_setListInvisisble();
        if (material->getTexGenBlock()->getTexMtx(0) != 0) {
            J3DTexMtxInfo* texMtxInfo = &material->getTexGenBlock()->getTexMtx(0)->getTexMtxInfo();
            if (texMtxInfo != NULL) {
                Mtx lightMtx;
                C_MTXLightPerspective(lightMtx, dComIfGd_getView()->fovy,
                                      dComIfGd_getView()->aspect, 1.0f, 1.0f, -0.01f, 0);
                mDoGph_gInf_c::setWideZoomLightProjection(lightMtx);
                texMtxInfo->setEffectMtx(lightMtx);
                modelData->simpleCalcMaterial(0, (MtxP)j3dDefaultMtx);
            }
        }
        mDoExt_modelUpdateDL(mWaterModels[1]);
    }
    dComIfGd_setList();
    return 1;
}

/* 80CC25C0-80CC262C 0010E0 006C+00 1/0 0/0 0/0 .text            Delete__15daObjRotStair_cFv */
int daObjRotStair_c::Delete() {
    if (mWaterBgw != NULL && mWaterBgw->ChkUsed()) {
        dComIfG_Bgsp().Release(mWaterBgw);
    }
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80CC262C-80CC268C 00114C 0060+00 1/0 0/0 0/0 .text daObjRotStair_create1st__FP15daObjRotStair_c
 */
static int daObjRotStair_create1st(daObjRotStair_c* i_this) {
    fopAcM_SetupActor(i_this, daObjRotStair_c);
    return i_this->create1st();
}

/* 80CC268C-80CC26AC 0011AC 0020+00 1/0 0/0 0/0 .text
 * daObjRotStair_MoveBGDelete__FP15daObjRotStair_c              */
static int daObjRotStair_MoveBGDelete(daObjRotStair_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80CC26AC-80CC26CC 0011CC 0020+00 1/0 0/0 0/0 .text
 * daObjRotStair_MoveBGExecute__FP15daObjRotStair_c             */
static int daObjRotStair_MoveBGExecute(daObjRotStair_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CC26CC-80CC26F8 0011EC 002C+00 1/0 0/0 0/0 .text
 * daObjRotStair_MoveBGDraw__FP15daObjRotStair_c                */
static int daObjRotStair_MoveBGDraw(daObjRotStair_c* i_this) {
    return i_this->Draw();
}


/* 80CC27FC-80CC281C -00001 0020+00 1/0 0/0 0/0 .data            daObjRotStair_METHODS */
static actor_method_class daObjRotStair_METHODS = {
    (process_method_func)daObjRotStair_create1st,
    (process_method_func)daObjRotStair_MoveBGDelete,
    (process_method_func)daObjRotStair_MoveBGExecute,
    NULL,
    (process_method_func)daObjRotStair_MoveBGDraw,
};

/* 80CC281C-80CC284C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_RotStair */
extern actor_process_profile_definition g_profile_Obj_RotStair = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_RotStair,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjRotStair_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  613,                     // mPriority
  &daObjRotStair_METHODS,  // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80CC2730-80CC2730 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/**
 * d_a_obj_stopper2.cpp
 *
 */

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_stopper2.h"

/* 80CEFF24-80CEFF28 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Stop00";

/* 80CEFF28-80CEFF38 -00001 0010+00 1/1 0/0 0/0 .data            l_evName */
static char* l_evName[4] = {
    "STOP_OPEN",
    "STOP_CLOSE",
    "STOP_OPEN2",
    "STOP_CLOSE2",
};

/* 80CEFF38-80CEFF3C -00001 0004+00 1/1 0/0 0/0 .data            l_staffName */
static char* l_staffName = "dstop";

/* 80CEF338-80CEF358 000078 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return ((daObjStopper2_c*)i_this)->CreateHeap();
}

/* 80CEF358-80CEF368 000098 0010+00 1/1 0/0 0/0 .text            getStopName__Fv */
static const char* getStopName() {
    return "door-stop.bmd";
}

/* 80CEF368-80CEF38C 0000A8 0024+00 1/1 0/0 0/0 .text getStopModelData__15daObjStopper2_cFv */
J3DModelData* daObjStopper2_c::getStopModelData() {
    return (J3DModelData*)dComIfG_getStageRes(getStopName());
}

/* 80CEF38C-80CEF3C8 0000CC 003C+00 1/1 0/0 0/0 .text            initBaseMtx__15daObjStopper2_cFv */
void daObjStopper2_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80CEF3C8-80CEF434 000108 006C+00 2/2 0/0 0/0 .text            setBaseMtx__15daObjStopper2_cFv */
void daObjStopper2_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + mOffsetY, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CEF434-80CEF44C 000174 0018+00 2/2 0/0 0/0 .text            getMaxOffsetY__15daObjStopper2_cFv
 */
f32 daObjStopper2_c::getMaxOffsetY() {
    J3DJoint* root_jnt = mpModel->getModelData()->getJointNodePointer(0);
    JUT_ASSERT(154, root_jnt != NULL);
    return root_jnt->getMax()->y;
}

/* 80CEF44C-80CEF57C 00018C 0130+00 1/1 0/0 0/0 .text            Create__15daObjStopper2_cFv */
int daObjStopper2_c::Create() {
    if (!fopAcM_isSwitch(this, getSwbit())) {
        mOffsetY = 0.0f;
        field_0x588 = 1;
    } else {
        mOffsetY = getMaxOffsetY();
        field_0x588 = 0;
    }

    attention_info.position.y += 150.0f;
    eyePos.y += 150.0f;

    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());

    mTool = getEvId();
    eventInfo.setArchiveName(l_arcName);

    for (int i = 0; i < 4; i++) {
        mEventIdx[i] = dComIfGp_getEventManager().getEventIdx(this, l_evName[i], 0xFF);
        OS_REPORT("閉じデモ用柵：evid<%d>tool<%d>\n", mEventIdx[0], mTool);
    }

    return 1;
}

/* 80CEF57C-80CEF5C8 0002BC 004C+00 1/1 0/0 0/0 .text            CreateHeap__15daObjStopper2_cFv */
int daObjStopper2_c::CreateHeap() {
    J3DModelData* modelData = getStopModelData();
    JUT_ASSERT(206, modelData != NULL);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80CEF5C8-80CEF66C 000308 00A4+00 1/1 0/0 0/0 .text            create__15daObjStopper2_cFv */
int daObjStopper2_c::create() {
    fopAcM_ct(this, daObjStopper2_c);

    #if DEBUG
    if (getSwbit() == 0xFF) {
        OS_REPORT_ERROR("ドア柵：スイッチ指定がありません！\n");
        return cPhs_ERROR_e;
    }
    #endif

    int phase_state = dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (phase_state != cPhs_COMPLEATE_e) {
        return phase_state;
    }

    if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x4000)) {
        return cPhs_ERROR_e;
    }

    if (!Create()) {
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

/* 80CEF66C-80CEF6A4 0003AC 0038+00 1/1 0/0 0/0 .text            execute__15daObjStopper2_cFv */
int daObjStopper2_c::execute() {
    event_proc_call();
    setBaseMtx();
    return 1;
}

/* 80CEF6A4-80CEF760 0003E4 00BC+00 1/1 0/0 0/0 .text event_proc_call__15daObjStopper2_cFv */
void daObjStopper2_c::event_proc_call() {
    static void (daObjStopper2_c::*l_func[])() = {
        &daObjStopper2_c::actionWait,
        &daObjStopper2_c::actionOrderEvent,
        &daObjStopper2_c::actionEvent,
        &daObjStopper2_c::actionDead,
    };
    
    (this->*l_func[mAction])();
}

/* 80CEF760-80CEF98C 0004A0 022C+00 1/0 0/0 0/0 .text            actionWait__15daObjStopper2_cFv */
void daObjStopper2_c::actionWait() {
    BOOL is_switch = fopAcM_isSwitch(this, getSwbit());

    if (mOffsetY == 0.0f) {
        field_0x584 = 0;
    } else {
        field_0x584 = 1;
    }

    if (mTool != 0xFF && mOffsetY != 0.0f) {
        field_0x584 += 2;
    }

    if ((field_0x584 == 1 && !is_switch) || (field_0x584 == 3 && !is_switch)) {
        setAction(1);

        if (mTool != 0xFF) {
            dStage_MapEvent_dt_c* maptooldata = dEvt_control_c::searchMapEventData(mTool);
            JUT_ASSERT(325, maptooldata != NULL);

            switch (maptooldata->type) {
            case dStage_MapEvent_dt_TYPE_ZEV:
                mEventIdx[field_0x584] = dComIfGp_getEventManager().getEventIdx(this, mTool);
                fopAcM_orderMapToolEvent(this, mTool, 0xFF, 0xFFFF, 1, 0);
                eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                break;
            case dStage_MapEvent_dt_TYPE_MAPTOOLCAMERA:
            case dStage_MapEvent_dt_TYPE_STB:
                fopAcM_orderOtherEventId(this, mEventIdx[field_0x584], mTool, 0xFFFF, 0, 1);
                eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                break;
            default:
                JUT_ASSERT(346, 0);
                break;
            }
        } else {
            fopAcM_orderOtherEventId(this, mEventIdx[field_0x584], mTool, 0xFFFF, 0, 1);
            eventInfo.onCondition(dEvtCnd_CANDEMO_e);
        }
    } else if ((field_0x584 == 0 && is_switch) || (field_0x584 == 2 && is_switch)) {
        setAction(1);
        fopAcM_orderOtherEventId(this, mEventIdx[field_0x584], 0xFF, 0xFFFF, 0, 1);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
    }
}

/* 80CEF98C-80CEFA60 0006CC 00D4+00 1/0 0/0 0/0 .text actionOrderEvent__15daObjStopper2_cFv */
void daObjStopper2_c::actionOrderEvent() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(2);
        mStaffId = dComIfGp_evmng_getMyStaffId(l_staffName, NULL, 0);
        field_0x588 = 1;
        demoProc();
    } else {
        if (mEventIdx[field_0x584] == -1) {
            fopAcM_orderMapToolEvent(this, mTool, 0xFF, 0xFFFF, 1, 0);
        } else {
            fopAcM_orderOtherEventId(this, mEventIdx[field_0x584], mTool, 0xFFFF, 0, 1);
        }

        eventInfo.onCondition(2);
    }
}

/* 80CEFA60-80CEFAD4 0007A0 0074+00 1/0 0/0 0/0 .text            actionEvent__15daObjStopper2_cFv */
void daObjStopper2_c::actionEvent() {
    if (dComIfGp_evmng_endCheck(mEventIdx[field_0x584])) {
        setAction(0);
        dComIfGp_event_reset();
    } else {
        demoProc();
    }
}

/* 80CEFAD4-80CEFAD8 000814 0004+00 1/0 0/0 0/0 .text            actionDead__15daObjStopper2_cFv */
void daObjStopper2_c::actionDead() {}

/* 80CEFAD8-80CEFD40 000818 0268+00 2/2 0/0 0/0 .text            demoProc__15daObjStopper2_cFv */
int daObjStopper2_c::demoProc() {
    static char* action_table[3] = {
        "WAIT",
        "STOP_OPEN",
        "STOP_CLOSE",
    };

    daPy_py_c* player = daPy_getPlayerActorClass();
    int act_idx = dComIfGp_evmng_getMyActIdx(mStaffId, action_table, ARRAY_SIZE(action_table), 0, 0);
    int* idata;

    if (dComIfGp_evmng_getIsAddvance(mStaffId)) {
        switch (act_idx) {
        case 0:
            idata = dComIfGp_evmng_getMyIntegerP(mStaffId, "Timer");
            if (idata == NULL) {
                mTimer = 1;
            } else {
                mTimer = *idata;
            }
            break;
        case 1:
            mOffsetY = 0.0f;
            speedF = 0.0f;
            fopAcM_seStart(this, Z2SE_OBJ_DOOR_STEEL_BAR, 0);
            OS_REPORT("閉じデモドア柵：シャッターオープンＳＥ\n");
            break;
        case 2:
            mOffsetY = getMaxOffsetY();
            speedF = 0.0f;
            fopAcM_seStart(this, Z2SE_OBJ_DOOR_STEEL_BAR_CL, 0);
            OS_REPORT("閉じデモドア柵：シャッタークローズＳＥ\n");
            break;
        }
    }

    switch (act_idx) {
    case 0:
        if (cLib_calcTimer<u8>(&mTimer) == 0) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        break;
    case 1:
        cLib_chaseF(&speedF, 30.0f, 4.0f);
        if (cLib_chaseF(&mOffsetY, getMaxOffsetY(), speedF)) {
            field_0x588 = 0;
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        break;
    case 2:
        cLib_chaseF(&speedF, 60.0f, 6.0f);
        if (cLib_chaseF(&mOffsetY, 0.0f, speedF)) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        break;
    default:
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    }

    return 0;
}

/* 80CEFD40-80CEFDB8 000A80 0078+00 1/1 0/0 0/0 .text            draw__15daObjStopper2_cFv */
int daObjStopper2_c::draw() {
    if (field_0x588 == 0) {
        return 1;
    }

    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80CEFDB8-80CEFDEC 000AF8 0034+00 1/1 0/0 0/0 .text            _delete__15daObjStopper2_cFv */
int daObjStopper2_c::_delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 80CEFDEC-80CEFE0C 000B2C 0020+00 1/0 0/0 0/0 .text daObjStopper2_Draw__FP15daObjStopper2_c */
static int daObjStopper2_Draw(daObjStopper2_c* i_this) {
    return i_this->draw();
}

/* 80CEFE0C-80CEFE2C 000B4C 0020+00 1/0 0/0 0/0 .text daObjStopper2_Execute__FP15daObjStopper2_c
 */
static int daObjStopper2_Execute(daObjStopper2_c* i_this) {
    return i_this->execute();
}

/* 80CEFE2C-80CEFE4C 000B6C 0020+00 1/0 0/0 0/0 .text daObjStopper2_Delete__FP15daObjStopper2_c */
static int daObjStopper2_Delete(daObjStopper2_c* i_this) {
    return i_this->_delete();
}

/* 80CEFE4C-80CEFE6C 000B8C 0020+00 1/0 0/0 0/0 .text daObjStopper2_Create__FP15daObjStopper2_c */
static int daObjStopper2_Create(daObjStopper2_c* i_this) {
    return i_this->create();
}

/* 80CEFFA8-80CEFFC8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjStopper2_Method */
static actor_method_class l_daObjStopper2_Method = {
    (process_method_func)daObjStopper2_Create,
    (process_method_func)daObjStopper2_Delete,
    (process_method_func)daObjStopper2_Execute,
    NULL,
    (process_method_func)daObjStopper2_Draw,
};

/* 80CEFFC8-80CEFFF8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Stopper2 */
extern actor_process_profile_definition g_profile_Obj_Stopper2 = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_Stopper2,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjStopper2_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  564,                     // mPriority
  &l_daObjStopper2_Method, // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

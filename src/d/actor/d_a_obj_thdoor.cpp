/**
 * @file d_a_obj_thdoor.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_thdoor.h"
#include "d/d_bg_w.h"
#include "d/d_cc_d.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"

#ifdef DEBUG

daObjThDoor_HIO_c::daObjThDoor_HIO_c() {
}

void daObjThDoor_HIO_c::genMessage(JORMContext* ctx) {
    // Telma's door
    ctx->genLabel("テルマの家のドア", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
}

static daObjThDoor_HIO_c l_HIO;
#endif

/* 80D0D4F8-80D0D59C 000078 00A4+00 1/1 0/0 0/0 .text            checkPlayerPos__FP13daObjThDoor_c
 */
static BOOL checkPlayerPos(daObjThDoor_c* i_this) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz acStack_28 = player->current.pos - i_this->current.pos;
    mDoMtx_stack_c::YrotS(-i_this->current.angle.y);
    mDoMtx_stack_c::multVec(&acStack_28, &acStack_28);

    BOOL rv = TRUE;
    if (acStack_28.z > 0.0f) {
        rv = FALSE;
    }

    return rv;
}

/* 80D0D59C-80D0D618 00011C 007C+00 1/1 0/0 0/0 .text
 * doorCoHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void doorCoHitCallBack(fopAc_ac_c* param_1, dCcD_GObjInf* param_2, fopAc_ac_c* param_3,
                              dCcD_GObjInf* param_4) {
    daPy_py_c* player = dComIfGp_getLinkPlayer();
    if (param_1 != NULL && param_3 != NULL && param_3 == player && player->speedF > 3.0f) {
        if (checkPlayerPos((daObjThDoor_c*)param_1)) {
            ((daObjThDoor_c*)param_1)->field_0x60a = 250;
        } else {
            ((daObjThDoor_c*)param_1)->field_0x60a = -250;
        }
    }
}

/* 80D0D618-80D0D654 000198 003C+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjThDoor_cFv */
void daObjThDoor_c::initBaseMtx() {
    mModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80D0D654-80D0D6B8 0001D4 0064+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjThDoor_cFv */
void daObjThDoor_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80D0E678-80D0E67C -00001 0004+00 3/4 0/0 0/0 .data            l_arcName */
static char* l_arcName = "V_CTDoor";

/* 80D0E67C-80D0E680 -00001 0004+00 0/1 0/0 0/0 .data            l_evName */
static char* l_evName = "CHASE_AWAY_WOLF";

/* 80D0E680-80D0E684 -00001 0004+00 1/1 0/0 0/0 .data            l_staffName */
static char* l_staffName = "thdoor";

/* 80D0E684-80D0E6C8 00002C 0044+00 0/1 0/0 0/0 .data            l_cyl_src */
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x10}, 0x19}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        37.5f, // mRadius
        250.0f // mHeight
    } // mCyl
};

/* 80D0D6B8-80D0D7F8 000238 0140+00 1/0 0/0 0/0 .text            Create__13daObjThDoor_cFv */
int daObjThDoor_c::Create() {
    if (fopAcM_isSwitch(this, getSwbit())) {
        field_0x608 = 0;
        setAction(ACTION_DEAD);
    } else {
        field_0x608 = 5500;
        current.angle.y = home.angle.y - field_0x608;
        old.angle.y = current.angle.y;
        setAction(ACTION_WAIT);
    }

    initBaseMtx();
    fopAcM_SetMtx(this, mModel->getBaseTRMtx());
    mStts.Init(0xff, 0xff, this);

    for (int i = 0; i < 2; i = i + 1) {
        mCyls[i].Set(l_cyl_src);
        mCyls[i].SetStts(&mStts);
        mCyls[i].SetCoHitCallback(doorCoHitCallBack);
    }
    fopAcM_setCullSizeBox2(this, mModel->getModelData());
    mMapToolId = 0xff;
    eventInfo.setArchiveName(l_arcName);
    mEventIdx = dComIfGp_getEventManager().getEventIdx(this, l_evName, 0xff);

    // Telma's house door
    OS_REPORT("テルマの家のドア：evid<%d>tool<%d>\n", mEventIdx, mMapToolId);
    return 1;
}

/* 80D0D7F8-80D0D868 000378 0070+00 1/0 0/0 0/0 .text            CreateHeap__13daObjThDoor_cFv */
int daObjThDoor_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 5);
    JUT_ASSERT(319, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mModel != NULL ? 1 : 0;
}

/* 80D0D868-80D0D8E8 0003E8 0080+00 1/1 0/0 0/0 .text            create1st__13daObjThDoor_cFv */
int daObjThDoor_c::create1st() {
    int rv = dComIfG_resLoad(&mPhase, l_arcName);
    if (rv == cPhs_COMPLEATE_e) {
        rv = MoveBGCreate(l_arcName, 8, NULL, 0xc20, NULL);
        if (rv == 5) {
            return rv;
        }

        #ifdef DEBUG
        // Telma's door
        OS_REPORT("テルマの家のドア：sw<%d>msg<%d>\n", getSwbit(), getMsg());

        // Telma's door
        l_HIO.entryHIO("テルマの家のドア");
        #endif
    }

    return rv;
}

/* 80D0D8E8-80D0D9B4 000468 00CC+00 1/0 0/0 0/0 .text            Execute__13daObjThDoor_cFPPA3_A4_f
 */
int daObjThDoor_c::Execute(Mtx** i_mtx) {
    event_proc_call();
    current.angle.y = home.angle.y - field_0x608;
    if (field_0x5b5 == 0 && old.angle.y != current.angle.y) {
        fopAcM_seStartLevel(this, Z2SE_OBJ_THE_DOOR_MV, 0);
    }
    *i_mtx = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80D0D9B4-80D0DAC8 000534 0114+00 1/1 0/0 0/0 .text            set_cyl__13daObjThDoor_cFv */
void daObjThDoor_c::set_cyl() {
    cXyz acStack_28[2] = {cXyz(37.5f, 0.0f, 0.0f), cXyz(112.5f, 0.0f, 0.0f)};
    cXyz cStack_38;
    for (int i = 0; i < 2; i++) {
        cStack_38 = acStack_28[i];
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(shape_angle.y - field_0x608);
        mDoMtx_stack_c::multVec(&cStack_38, &cStack_38);
        mCyls[i].SetC(cStack_38);
        dComIfG_Ccsp()->Set(&mCyls[i]);
    }
}

/* 80D0DAC8-80D0DB90 000648 00C8+00 1/1 0/0 0/0 .text            action__13daObjThDoor_cFv */
void daObjThDoor_c::action() {
    s16 sVar1 = field_0x608;
    set_cyl();
    cLib_addCalcAngleS(&field_0x60a, 0, 0x1e, 0x60, 0x10);
    field_0x608 = field_0x608 + field_0x60a;
    if (field_0x608 > 0x4000) {
        field_0x608 = 0x4000;
        if (sVar1 == 0x4000) {
            field_0x60a = 0;
        } else {
            field_0x60a = -field_0x60a;
        }
    } else {
        if (field_0x608 < 5500) {
            field_0x608 = 5500;
            if (sVar1 == 5500) {
                field_0x60a = 0;
            } else {
                field_0x60a = -field_0x60a;
            }
        }
    }
}

/* 80D0DB90-80D0DC4C 000710 00BC+00 1/1 0/0 0/0 .text            event_proc_call__13daObjThDoor_cFv
 */
void daObjThDoor_c::event_proc_call() {
    static daObjThDoor_c::actionFunc l_func[4] = {
        &daObjThDoor_c::actionWait,
        &daObjThDoor_c::actionOrderEvent,
        &daObjThDoor_c::actionEvent,
        &daObjThDoor_c::actionDead,
    };

    (this->*l_func[mAction])();
}

/* 80D0DC4C-80D0DCC8 0007CC 007C+00 1/0 0/0 0/0 .text            actionWait__13daObjThDoor_cFv */
void daObjThDoor_c::actionWait() {
    action();
    if (checkDemo() && checkArea()) {
        setAction(ACTION_ORDER_EVENT);
        fopAcM_orderOtherEventId(this, mEventIdx, mMapToolId, 0xffff, 0, 1);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
    }
}

/* 80D0DCC8-80D0DD90 000848 00C8+00 1/0 0/0 0/0 .text            actionOrderEvent__13daObjThDoor_cFv
 */
void daObjThDoor_c::actionOrderEvent() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(ACTION_EVENT);
        mStaffId = dComIfGp_evmng_getMyStaffId(l_staffName, 0, 0);
        demoProc();
        if (mpBgW != NULL && mpBgW->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgW);
        }
    } else {
        fopAcM_orderOtherEventId(this, mEventIdx, mMapToolId, 0xffff, 0, 1);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
    }
}

/* 80D0DD90-80D0DE30 000910 00A0+00 1/0 0/0 0/0 .text            actionEvent__13daObjThDoor_cFv */
void daObjThDoor_c::actionEvent() {
    if (dComIfGp_evmng_endCheck(mEventIdx)) {
        setAction(ACTION_DEAD);
        dComIfGp_event_reset();
        fopAcM_onSwitch(this, getSwbit());

        // Telma's house door: SW<%d> turned on
        OS_REPORT("テルマの家のドア：ＳＷ<%d>オンしました\n", getSwbit());
        if (mpBgW != NULL) {
            dComIfG_Bgsp().Regist(mpBgW, this);
        }
    } else {
        demoProc();
    }
}

/* 80D0DE30-80D0DE34 0009B0 0004+00 1/0 0/0 0/0 .text            actionDead__13daObjThDoor_cFv */
void daObjThDoor_c::actionDead() {}


/* 80D0DE34-80D0E06C 0009B4 0238+00 2/2 0/0 0/0 .text            demoProc__13daObjThDoor_cFv */
int daObjThDoor_c::demoProc() {
    static char* action_table[3] = {
        "WAIT",
        "MSG",
        "CLOSE",
    };

    daPy_py_c* player = daPy_getPlayerActorClass();
    int actIdx = dComIfGp_evmng_getMyActIdx(mStaffId, action_table, 3, 0, 0);
    if (dComIfGp_evmng_getIsAddvance(mStaffId)) {
        switch (actIdx) {
        case 0: {
            int* pTimer = dComIfGp_evmng_getMyIntegerP(mStaffId, "Timer");
            if (pTimer == NULL) {
                field_0x5b4 = 1;
            } else {
                field_0x5b4 = *pTimer;
            }
            break;
        }
        case 1:
            mMsgFlow.init(this, getMsg(), 0, NULL);
            break;
        case 2:
            field_0x5b8 = 0;
            fopAcM_seStart(this, Z2SE_OBJ_THE_DOOR_CL, 0);
            field_0x5b5 = 1;
            break;
        }
    }

    switch (actIdx) {
    case 0:
        if (cLib_calcTimer(&field_0x5b4)) {
            break;
        }
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    case 1:
        if (mMsgFlow.doFlow(this, NULL, 0)) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        break;
    case 2:
        cLib_chaseS(&field_0x5b8, 0x6a4, 400);
        if (cLib_chaseS(&field_0x608, 0, field_0x5b8) == 0) {
            break;
        }
        dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    default:
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    }

    return 0;
}

/* 80D0E06C-80D0E150 000BEC 00E4+00 1/1 0/0 0/0 .text            checkArea__13daObjThDoor_cFv */
BOOL daObjThDoor_c::checkArea() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz local_28(player->current.pos);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::inverse();
    mDoMtx_stack_c::multVec(&local_28, &local_28);
    if (local_28.z > -50.0f || local_28.z < -300.0f) {
        return 0;
    } 
    
    if (local_28.x < -100.0f || local_28.x > 100.0f) {
        return 0;
    } 

    return 1;
}

/* 80D0E150-80D0E1F4 000CD0 00A4+00 1/0 0/0 0/0 .text            Draw__13daObjThDoor_cFv */
int daObjThDoor_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();
    return 1;
}

/* 80D0E1F4-80D0E228 000D74 0034+00 1/0 0/0 0/0 .text            Delete__13daObjThDoor_cFv */
int daObjThDoor_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);

    #ifdef DEBUG
    l_HIO.removeHIO();
    #endif

    return 1;
}

/* 80D0E228-80D0E2E4 000DA8 00BC+00 1/0 0/0 0/0 .text daObjThDoor_create1st__FP13daObjThDoor_c */
static int daObjThDoor_create1st(daObjThDoor_c* i_this) {
    fopAcM_SetupActor(i_this, daObjThDoor_c);
    return i_this->create1st();
}

/* 80D0E520-80D0E540 0010A0 0020+00 1/0 0/0 0/0 .text daObjThDoor_MoveBGDelete__FP13daObjThDoor_c
 */
static int daObjThDoor_MoveBGDelete(daObjThDoor_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80D0E540-80D0E560 0010C0 0020+00 1/0 0/0 0/0 .text daObjThDoor_MoveBGExecute__FP13daObjThDoor_c
 */
static int daObjThDoor_MoveBGExecute(daObjThDoor_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D0E560-80D0E58C 0010E0 002C+00 1/0 0/0 0/0 .text daObjThDoor_MoveBGDraw__FP13daObjThDoor_c */
static int daObjThDoor_MoveBGDraw(daObjThDoor_c* i_this) {
    return i_this->MoveBGDraw();
}

/* ############################################################################################## */
/* 80D0E734-80D0E754 -00001 0020+00 1/0 0/0 0/0 .data            daObjThDoor_METHODS */
static actor_method_class daObjThDoor_METHODS = {
    (process_method_func)daObjThDoor_create1st,
    (process_method_func)daObjThDoor_MoveBGDelete,
    (process_method_func)daObjThDoor_MoveBGExecute,
    NULL,
    (process_method_func)daObjThDoor_MoveBGDraw,
};

/* 80D0E754-80D0E784 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_TDoor */
extern actor_process_profile_definition g_profile_Obj_TDoor = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_TDoor,         // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjThDoor_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  560,                    // mPriority
  &daObjThDoor_METHODS,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D0E620-80D0E620 000028 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

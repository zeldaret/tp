/**
 * @file d_a_obj_avalanche.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_avalanche.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "SSystem/SComponent/c_math.h"

/* 80BA6ED8-80BA6F14 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__16daObjAvalanche_cFv
 */
void daObjAvalanche_c::initBaseMtx() {
    mModel->setBaseScale(scale);
    setBaseMtx();
}

/* ############################################################################################## */
/* 80BA7CFC-80BA7D04 000000 0008+00 1/1 0/0 0/0 .rodata          l_dzb */
static u32 const l_dzb[2] = {
    13, 12,
};

/* 80BA7D04-80BA7D1C 000008 0018+00 1/1 0/0 0/0 .rodata          l_check_pos */
static Vec const l_check_pos[2] = {
    {-300.0f, 0.0f, 0.0f},
    {300.0f, 0.0f, 300.0f},
};

/* 80BA6F14-80BA6FC8 0000B4 00B4+00 3/3 0/0 0/0 .text            setBaseMtx__16daObjAvalanche_cFv */
void daObjAvalanche_c::setBaseMtx() {
    mDoMtx_stack_c::transS(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::YrotM(0);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    mDoMtx_stack_c::transS(0.0f, field_0x5e4, 0.0f);
    mDoMtx_stack_c::YrotM(0);
    MTXCopy(mDoMtx_stack_c::get(), mMtx2);
}

/* 80BA7D90-80BA7D94 -00001 0004+00 3/4 0/0 0/0 .data            l_arcName */
static char* l_arcName = "V_Yuki";

/* 80BA7D94-80BA7D98 -00001 0004+00 0/1 0/0 0/0 .data            l_evName */
static char* l_evName = "SNOW_COLLAPSE";

/* 80BA7D98-80BA7D9C -00001 0004+00 1/1 0/0 0/0 .data            l_staffName */
static char* l_staffName = "Obj_ava";

/* 80BA7D9C-80BA7DB4 00002C 0018+00 0/1 0/0 0/0 .data            l_cull_box */
static f32 l_cull_box[6] = {
    -500.0f, -500.0f, -700.0f,
    500.0f, 1000.0f, 700.0f,
};

/* 80BA6FC8-80BA7178 000168 01B0+00 1/0 0/0 0/0 .text            Create__16daObjAvalanche_cFv */
int daObjAvalanche_c::Create() {
    if (fopAcM_isSwitch(this, getSwbit())) {
        field_0x5e4 = 0.0f;
        if (mpBgW != NULL && mpBgW->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgW);
        }
        if (mpBgW2 != NULL) {
            dComIfG_Bgsp().Regist(mpBgW2, this);
        }
        mBckAnm->setFrame(mBckAnm->getEndFrame());
        setAction(ACTION_DEAD);
    } else {
        field_0x5e4 = -400.0f;
        if (mpBgW2 != NULL) {
            dComIfG_Bgsp().Regist(mpBgW2, this);
        }
        mBckAnm->setFrame(0.0f);
        setAction(ACTION_WAIT);
    }
    initBaseMtx();
    fopAcM_SetMtx(this, mModel->getBaseTRMtx());
    fopAcM_setCullSizeBox(this, l_cull_box[0], l_cull_box[1], l_cull_box[2], l_cull_box[3],
                          l_cull_box[4], l_cull_box[5]);
    if (mpBgW2 != 0) {
        mpBgW2->Move();
    }
    mMapToolId = getEvId();
    eventInfo.setArchiveName(l_arcName);
    mEventIdx = dComIfGp_getEventManager().getEventIdx(this, l_evName, 0xff);
    return 1;
}

/* 80BA7178-80BA7328 000318 01B0+00 1/0 0/0 0/0 .text            CreateHeap__16daObjAvalanche_cFv */
int daObjAvalanche_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 9);
    JUT_ASSERT(233, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (mModel == NULL) {
        return 0;
    }
    J3DAnmTransform* anm =
        (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 6);
    JUT_ASSERT(247, anm != 0);
    mBckAnm = new mDoExt_bckAnm();
    if (mBckAnm == NULL || !mBckAnm->init(anm, 1, 0, 1.0, 0, -1, false)) {
        return 0;
    }
    mBckAnm->setPlaySpeed(0.0f);
    mpBgW2 = new dBgW();
    if (mpBgW2 != NULL && !mpBgW2->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, l_dzb[1]), 1, &mMtx2)) {
        mpBgW2->SetCrrFunc(dBgS_MoveBGProc_Trans);
    } else {
        mpBgW2 = NULL;
        return 0;
    }
    return 1;
}

/* 80BA7370-80BA73F4 000510 0084+00 1/1 0/0 0/0 .text            create1st__16daObjAvalanche_cFv */
int daObjAvalanche_c::create1st() {
    int rv = dComIfG_resLoad(&mPhase, l_arcName);
    if (rv == cPhs_COMPLEATE_e) {
        rv = MoveBGCreate(l_arcName, 13, dBgS_MoveBGProc_Trans, 0x2920, NULL);
        if (rv == cPhs_ERROR_e) {
            return rv;
        }
    }
    return rv;
}

/* 80BA73F4-80BA7440 000594 004C+00 1/0 0/0 0/0 .text Execute__16daObjAvalanche_cFPPA3_A4_f */
int daObjAvalanche_c::Execute(Mtx** param_1) {
    event_proc_call();
    *param_1 = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80BA7440-80BA75A4 0005E0 0164+00 1/1 0/0 0/0 .text            checkCollapse__16daObjAvalanche_cFv
 */
int daObjAvalanche_c::checkCollapse() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    if (!daPy_py_c::checkNowWolf()) {
        return 0;
    }
    if (!player->checkWolfAttackReverse() && !player->checkFrontRollCrash()) {
        return 0;
    }
    cXyz local_1c;
    cXyz local_28;
    local_28 = l_check_pos[0];
    local_1c = l_check_pos[1];
    cXyz playerDist = player->current.pos - current.pos;
    mDoMtx_stack_c::YrotM(-shape_angle.y);
    mDoMtx_stack_c::multVec(&playerDist, &playerDist);
    if (player->current.pos.y > current.pos.y && player->current.pos.y < current.pos.y + 300.0f &&
        playerDist.x > local_28.x && playerDist.x < local_1c.x && playerDist.z > local_28.z &&
        playerDist.z < local_1c.z)
    {
        return 1;
    } else {
        return 0;
    }
}

/* 80BA75A4-80BA7618 000744 0074+00 1/1 0/0 0/0 .text            move__16daObjAvalanche_cFv */
int daObjAvalanche_c::move() {
    int rv = 0;
    if (cLib_chaseF(&field_0x5e4, 0.0f, 40.0f)) {
        rv = 1;
    }
    setBaseMtx();
    if (mpBgW2 != NULL) {
        mpBgW2->Move();
    }
    return rv;
}

/* 80BA7618-80BA76D4 0007B8 00BC+00 1/1 0/0 0/0 .text event_proc_call__16daObjAvalanche_cFv */
void daObjAvalanche_c::event_proc_call() {
    typedef void (daObjAvalanche_c::*actionFunc)();
    static actionFunc l_func[4] = {
        &daObjAvalanche_c::actionWait,
        &daObjAvalanche_c::actionOrderEvent,
        &daObjAvalanche_c::actionEvent,
        &daObjAvalanche_c::actionDead,
    };
    (this->*l_func[mAction])();
}

/* 80BA76D4-80BA773C 000874 0068+00 1/0 0/0 0/0 .text            actionWait__16daObjAvalanche_cFv */
void daObjAvalanche_c::actionWait() {
    if (checkCollapse()) {
        setAction(ACTION_ORDER_EVENT);
        fopAcM_orderOtherEventId(this, mEventIdx, mMapToolId, 0xffff, 0, 1);
        eventInfo.onCondition(2);
    }
}

/* 80BA773C-80BA7804 0008DC 00C8+00 1/0 0/0 0/0 .text actionOrderEvent__16daObjAvalanche_cFv */
void daObjAvalanche_c::actionOrderEvent() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(ACTION_EVENT);
        mStaffId = dComIfGp_evmng_getMyStaffId(l_staffName, 0, 0);
        if (mpBgW != NULL && mpBgW->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgW);
        }
        demoProc();
    } else {
        fopAcM_orderOtherEventId(this, mEventIdx, mMapToolId, 0xffff, 0, 1);
        eventInfo.onCondition(2);
    }
}

/* 80BA7804-80BA7888 0009A4 0084+00 1/0 0/0 0/0 .text            actionEvent__16daObjAvalanche_cFv
 */
void daObjAvalanche_c::actionEvent() {
    if (dComIfGp_evmng_endCheck(mEventIdx)) {
        setAction(ACTION_DEAD);
        dComIfGp_event_reset();
        fopAcM_onSwitch(this, getSwbit());
    } else {
        demoProc();
    }
}

/* 80BA7888-80BA788C 000A28 0004+00 1/0 0/0 0/0 .text            actionDead__16daObjAvalanche_cFv */
void daObjAvalanche_c::actionDead() {
}

/* 80BA7E14-80BA7E1C -00001 0008+00 1/1 0/0 0/0 .data            action_table$3910 */
static char* action_table[2] = {
    "WAIT",
    "COLLAPSE",
};

/* 80BA788C-80BA7A50 000A2C 01C4+00 2/2 0/0 0/0 .text            demoProc__16daObjAvalanche_cFv */
int daObjAvalanche_c::demoProc() {
    daPy_getPlayerActorClass();
    int actIdx = dComIfGp_evmng_getMyActIdx(mStaffId, action_table, 2, 0, 0);
    if (dComIfGp_evmng_getIsAddvance(mStaffId)) {
        switch (actIdx) {
        case 0:
            int* puVar3 = dComIfGp_evmng_getMyIntegerP(mStaffId, "Timer");
            if (puVar3 == NULL) {
                mTimer = 1;
            } else {
                mTimer = *puVar3;
            }
            break;
        case 1:
            mBckAnm->setPlaySpeed(1.0f);
            eyePos = current.pos;
            fopAcM_seStart(this, Z2SE_OBJ_SNOW_SLIDE, 0);
            setEffect();
            break;
        }
    }
    switch (actIdx) {
    case 0:
        if (cLib_calcTimer(&mTimer) == 0) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        break;
    case 1:
        if (mBckAnm->play() && move()) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        break;
    default:
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    }
    return 0;
}

/* 80BA7A50-80BA7AE8 000BF0 0098+00 1/1 0/0 0/0 .text            setEffect__16daObjAvalanche_cFv */
void daObjAvalanche_c::setEffect() {
    cXyz acStack_18(0.0f, 0.0f, 0.0f);
    csXyz cStack_20(0, 0, 0);
    dComIfGp_particle_set(0x8c51, &acStack_18, &cStack_20, NULL, 0xff, NULL, 0xffffffff, NULL, NULL,
                          NULL);
}

/* 80BA7AE8-80BA7BA0 000C88 00B8+00 1/0 0/0 0/0 .text            Draw__16daObjAvalanche_cFv */
int daObjAvalanche_c::Draw() {
    g_env_light.settingTevStruct(32, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListBG();
    mBckAnm->entry(mModel->getModelData());
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();
    return 1;
}

/* 80BA7BA0-80BA7C0C 000D40 006C+00 1/0 0/0 0/0 .text            Delete__16daObjAvalanche_cFv */
int daObjAvalanche_c::Delete() {
    if (mpBgW2 != NULL && mpBgW2->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW2);
    }
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80BA7C0C-80BA7C6C 000DAC 0060+00 1/0 0/0 0/0 .text
 * daObjAvalanche_create1st__FP16daObjAvalanche_c               */
static int daObjAvalanche_create1st(daObjAvalanche_c* i_this) {
    fopAcM_SetupActor(i_this, daObjAvalanche_c);
    return i_this->create1st();
}

/* 80BA7C6C-80BA7C8C 000E0C 0020+00 1/0 0/0 0/0 .text
 * daObjAvalanche_MoveBGDelete__FP16daObjAvalanche_c            */
static int daObjAvalanche_MoveBGDelete(daObjAvalanche_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80BA7C8C-80BA7CAC 000E2C 0020+00 1/0 0/0 0/0 .text
 * daObjAvalanche_MoveBGExecute__FP16daObjAvalanche_c           */
static int daObjAvalanche_MoveBGExecute(daObjAvalanche_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BA7CAC-80BA7CD8 000E4C 002C+00 1/0 0/0 0/0 .text
 * daObjAvalanche_MoveBGDraw__FP16daObjAvalanche_c              */
static int daObjAvalanche_MoveBGDraw(daObjAvalanche_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BA7E1C-80BA7E3C -00001 0020+00 1/0 0/0 0/0 .data            daObjAvalanche_METHODS */
static actor_method_class daObjAvalanche_METHODS = {
    (process_method_func)daObjAvalanche_create1st,  (process_method_func)daObjAvalanche_MoveBGDelete,
    (process_method_func)daObjAvalanche_MoveBGExecute, (process_method_func)NULL,
    (process_method_func)daObjAvalanche_MoveBGDraw,
};

/* 80BA7E3C-80BA7E6C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Avalanche */
extern actor_process_profile_definition g_profile_Obj_Avalanche = {
    fpcLy_CURRENT_e,          // mLayerID
    3,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_Obj_Avalanche,       // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjAvalanche_c), // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    655,                      // mPriority
    &daObjAvalanche_METHODS,  // sub_method
    0x40000,                  // mStatus
    fopAc_ACTOR_e,            // mActorType
    fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80BA7D3C-80BA7D3C 000040 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

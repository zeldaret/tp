/**
 * @file d_a_swhit0.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_swhit0.h"
#include "d/d_com_inf_game.h"

#define COLOR_YELLOW 0
#define COLOR_BLUE   1
#define COLOR_RED    2
#define COLOR_GREEN  3

/* 804873BC-804873C0 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "S_swHit00";

/* 80485FF8-80486004 000078 000C+00 9/9 0/0 0/0 .text            getSwNo__10daSwhit0_cFv */
int daSwhit0_c::getSwNo() {
    return fopAcM_GetParam(this) & 0xFF;
}

/* 80486004-80486010 000084 000C+00 1/1 0/0 0/0 .text            getSwNo2__10daSwhit0_cFv */
int daSwhit0_c::getSwNo2() {
    return home.angle.z & 0xFF;
}

/* 80486010-8048602C 000090 001C+00 3/3 0/0 0/0 .text            getEvNo__10daSwhit0_cFv */
u8 daSwhit0_c::getEvNo() {
    u8 evNo = (fopAcM_GetParam(this) >> 8) & 0xFF;
    if (evNo == 0xFE) {
        evNo = 0xFF;
    }

    return evNo;
}

/* 8048602C-80486048 0000AC 001C+00 1/1 0/0 0/0 .text            getTimer__10daSwhit0_cFv */
u8 daSwhit0_c::getTimer() {
    u8 timer = (fopAcM_GetParam(this) >> 16) & 0xFF;
    if (timer == 0xFF) {
        timer = 0;
    }

    return timer;
}

/* 80486048-80486064 0000C8 001C+00 4/4 0/0 0/0 .text            getType__10daSwhit0_cFv */
u8 daSwhit0_c::getType() {
    u8 type = (fopAcM_GetParam(this) >> 30);
    if (type >= 4) {
        type = 0;
    }

    return type;
}

/* 80486064-804860EC 0000E4 0088+00 1/1 0/0 0/0 .text            makeEventId__10daSwhit0_cFv */
void daSwhit0_c::makeEventId() {
    u8 prm = (fopAcM_GetParam(this) >> 8) & 0xFF;
    if (prm == 0xFE) {
        mEventId = dComIfGp_evmng_getEventIdx("DEFAULT_SWITCH", getEvNo());
    } else {
        mEventId = dComIfGp_getEventManager().getEventIdx(this, getEvNo());
    }
}

/* 804860EC-80486214 00016C 0128+00 1/1 0/0 0/0 .text            CreateHeap__10daSwhit0_cFv */
int daSwhit0_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 8);
    JUT_ASSERT(193, modelData != 0);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000202);
    if (mpModel == NULL) {
        return 0;
    }

    if (!mBck.init((J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 5), TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1, false)) {
        return 0;
    }

    if (!mBrk.init(modelData, (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 11), FALSE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1)) {
        return 0;
    }

    return 1;
}

/* 804873C0-80487400 000004 0040+00 1/1 0/0 0/0 .data            l_sph_src */
static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fafdff, 0x51}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x5, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80486214-80486390 000294 017C+00 1/1 0/0 0/0 .text            CreateInit__10daSwhit0_cFv */
int daSwhit0_c::CreateInit() {
    shape_angle.z = 0;
    current.angle.z = 0;

    mColliderStts.Init(0xFF, 0xFF, this);

    attention_info.position.x += (cM_ssin(home.angle.x) * 95.0f) * cM_ssin(home.angle.y);
    attention_info.position.y += cM_scos(home.angle.x) * 95.0f;
    attention_info.position.z += (cM_ssin(home.angle.x) * 95.0f) * cM_scos(home.angle.y);
    eyePos = attention_info.position;

    cXyz sp28;
    mSph.Set(l_sph_src);
    mSph.SetStts(&mColliderStts);
    mSph.SetC(attention_info.position);

    if (fopAcM_isSwitch(this, getSwNo())) {
        setActio(ACTION_ON_WAIT_e);
        onFlag(1);
    } else {
        setActio(ACTION_OFF_WAIT_e);
        offFlag(1);
    }

    makeEventId();
    return 1;
}

/* 80486390-804863B0 000410 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return ((daSwhit0_c*)i_this)->CreateHeap();
}

/* 804863B0-804865B4 000430 0204+00 1/1 0/0 0/0 .text            create__10daSwhit0_cFv */
int daSwhit0_c::create() {
    fopAcM_SetupActor(this, daSwhit0_c);

    if (subtype != 0) {
        setDrawMtx();
        cMtx_copy(mDoMtx_stack_c::get(), field_0x5a8);
        fopAcM_SetMtx(this, field_0x5a8);
        CreateInit();
        return cPhs_COMPLEATE_e;
    }

    int phase_state = dComIfG_resLoad(this, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, 0xB30)) {
            return cPhs_ERROR_e;
        }

        mpModel->setBaseScale(scale);
        setDrawMtx();
        mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        CreateInit();
    }

    return phase_state;
}

/* 8048668C-80486704 00070C 0078+00 2/2 0/0 0/0 .text            checkHit__10daSwhit0_cFv */
bool daSwhit0_c::checkHit() {
    if (dComIfGp_event_runCheck()) {
        return false;
    }

    if (cLib_calcTimer<u8>(&mHitWaitTimer) == 0 && mSph.ChkTgHit()) {
        mHitWaitTimer = 8;
        return true;
    }

    return false;
}

/* 80486704-80486788 000784 0084+00 1/1 0/0 0/0 .text            setCombackTimer__10daSwhit0_cFv */
void daSwhit0_c::setCombackTimer() {
    if (getType() == 0 || getType() == 3) {
        mCombackTimer = 0;
    } else if (getTimer() != 0) {
        mCombackTimer = getTimer() * 15;
    } else {
        mCombackTimer = 0;
    }
}

/* 80486788-80486800 000808 0078+00 1/1 0/0 0/0 .text            endCombackTimer__10daSwhit0_cFv */
int daSwhit0_c::endCombackTimer() {
    if (mCombackTimer > 0) {
        if (!fopAcM_isSwitch(this, getSwNo2()) && --mCombackTimer == 0) {
            return 1;
        }
    }

    return 0;
}

/* 80486800-80486858 000880 0058+00 4/4 0/0 0/0 .text            onSwitch__10daSwhit0_cFv */
void daSwhit0_c::onSwitch() {
    fopAcM_onSwitch(this, getSwNo());
    onFlag(1);
    setCombackTimer();
}

/* 80486858-804868A8 0008D8 0050+00 4/4 0/0 0/0 .text            offSwitch__10daSwhit0_cFv */
void daSwhit0_c::offSwitch() {
    fopAcM_offSwitch(this, getSwNo());
    offFlag(1);
}

/* 804868A8-804869C4 000928 011C+00 2/2 0/0 0/0 .text            DemoProc__10daSwhit0_cFv */
int daSwhit0_c::DemoProc() {
    static char* action_table[2] = {
        "WAIT",
        "CHANGE",
    };

    if (dComIfGp_evmng_getIsAddvance(mStaffId)) {
        int act_idx = dComIfGp_evmng_getMyActIdx(mStaffId, action_table, 2, 0, 0);
        switch (act_idx) {
        case 1:
            if (fopAcM_isSwitch(this, getSwNo())) {
                offSwitch();
            } else {
                onSwitch();
            }

            fopAcM_seStart(this, Z2SE_OBJ_SHOCK_SW_ON, 0);
            break;
        }
    }

    dComIfGp_evmng_cutEnd(mStaffId);
    return 1;
}

/* 804869C4-80486ABC 000A44 00F8+00 2/2 0/0 0/0 .text            orderEvent__10daSwhit0_cFv */
void daSwhit0_c::orderEvent() {
    if (strcmp(dComIfGp_getStartStageName(), "D_MN06") == 0 && dComIfGp_getStartStageRoomNo() == 4 && fopAcM_isSwitch(this, 50) && fopAcM_isSwitch(this, 51)) {
        fopAcM_orderOtherEventId(this, mEventId, getEvNo(), 0xFFFF, 0, 1);
    } else {
        fopAcM_orderMapToolAutoNextEvent(this, getEvNo(), mEventId, 0xFFFF, 1, 0);
    }

    eventInfo.onCondition(2);
}

/* 80486ABC-80486BC4 000B3C 0108+00 1/1 0/0 0/0 .text            actionOffWait__10daSwhit0_cFv */
int daSwhit0_c::actionOffWait() {
    if (checkHit()) {
        fopAcM_seStart(this, JA_SE_OBJ_HIT_SHOCK_SWITCH, 0);

        if (getType() != 3) {
            if (mEventId == -1) {
                setActio(ACTION_SW_WAIT_e);
                mSwWaitTimer = 0;
            } else {
                setActio(ACTION_TO_ON_READY_e);
                mReadyTimer = 5;
            }
        }
    } else {
        if (fopAcM_isSwitch(this, getSwNo())) {
            setActio(ACTION_ON_WAIT_e);
            onSwitch();
        }
    }

    return 1;
}

/* 80486BC4-80486C28 000C44 0064+00 1/1 0/0 0/0 .text            actionToOnReady__10daSwhit0_cFv */
int daSwhit0_c::actionToOnReady() {
    if (dComIfGp_event_runCheck()) {
        return 1;
    }

    if (mReadyTimer != 0) {
        mReadyTimer--;
    } else {
        mAction++;
        setActio(mAction);
        orderEvent();
    }

    return 1;
}

/* 80486C28-80486CE4 000CA8 00BC+00 1/1 0/0 0/0 .text            actionToOnOrder__10daSwhit0_cFv */
int daSwhit0_c::actionToOnOrder() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        if (dComIfGp_evmng_isMapToolCamera(getEvNo())) {
            mReadyTimer = 6;
            mAction += 2;
            setActio(mAction);
        } else {
            mAction++;
            setActio(mAction);
            mStaffId = dComIfGp_evmng_getMyStaffId("SWITCH", NULL, 0);
            DemoProc();
        }
    } else {
        orderEvent();
    }

    return 1;
}

/* 80486CE4-80486D88 000D64 00A4+00 1/1 0/0 0/0 .text            actionToOnDemo__10daSwhit0_cFv */
int daSwhit0_c::actionToOnDemo() {
    if (dComIfGp_evmng_endCheck(mEventId)) {
        if (fopAcM_isSwitch(this, getSwNo())) {
            setActio(ACTION_ON_WAIT_e);
        } else {
            setActio(ACTION_OFF_WAIT_e);
        }

        dComIfGp_event_reset();
        return 1;
    }

    DemoProc();
    return 1;
}

/* 80486D88-80486EC4 000E08 013C+00 1/1 0/0 0/0 .text            actionToOnDemo2__10daSwhit0_cFv */
int daSwhit0_c::actionToOnDemo2() {
    if (mReadyTimer != 0) {
        mReadyTimer--;
        if (mReadyTimer == 0) {
            if (fopAcM_isSwitch(this, getSwNo())) {
                offSwitch();
            } else {
                onSwitch();
            }
    
            fopAcM_seStart(this, Z2SE_OBJ_SHOCK_SW_ON, 0);
        }
    }

    if (dComIfGp_evmng_endCheck(mEventId)) {
        if (mAction == 5) {
            setActio(ACTION_ON_WAIT_e);
            onSwitch();
        } else {
            setActio(ACTION_OFF_WAIT_e);
            offSwitch();
        }

        dComIfGp_event_reset();
        return 1;
    }

    return 1;
}

/* 80486EC4-80486FC0 000F44 00FC+00 1/1 0/0 0/0 .text            actionSwWait__10daSwhit0_cFv */
int daSwhit0_c::actionSwWait() {
    if (dComIfGp_event_runCheck()) {
        return 0;
    }

    if (++mSwWaitTimer > 30) {
        if (!fopAcM_isSwitch(this, getSwNo())) {
            setActio(ACTION_ON_WAIT_e);
            onSwitch();
        } else {
            setActio(ACTION_OFF_WAIT_e);
            offSwitch();
        }

        fopAcM_seStart(this, Z2SE_OBJ_SHOCK_SW_ON, 0);
    }

    return 1;
}

/* 80486FC0-804870E0 001040 0120+00 1/1 0/0 0/0 .text            actionOnWait__10daSwhit0_cFv */
int daSwhit0_c::actionOnWait() {
    if (!fopAcM_isSwitch(this, getSwNo()) || endCombackTimer()) {
        offSwitch();
        setActio(ACTION_OFF_WAIT_e);
        return 1;
    }

    if (checkHit()) {
        fopAcM_seStart(this, JA_SE_OBJ_HIT_SHOCK_SWITCH, 0);

        if (getType() != 0) {
            if (mEventId == -1) {
                setActio(ACTION_SW_WAIT_e);
                mSwWaitTimer = 0;
            } else {
                setActio(ACTION_TOOL_TO_ON_READY_e);
                mReadyTimer = 5;
            }
            return 1;
        }
    }

    return 1;
}

/* 804870E0-80487138 001160 0058+00 1/1 0/0 0/0 .text            setDrawMtx__10daSwhit0_cFv */
void daSwhit0_c::setDrawMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::XYZrotM(current.angle.x, current.angle.y, current.angle.z);
}

int daSwhit0_c::draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType(mpModel, &tevStr);

    // each set of 2 colors represents an on/off state color
    static u8 l_color[] = {
        COLOR_BLUE, COLOR_YELLOW,
        COLOR_RED, COLOR_GREEN,
        COLOR_GREEN, COLOR_RED,
        COLOR_YELLOW, COLOR_BLUE,
    };

    u8* color_p = l_color;
    if (checkFlag(1)) {
        color_p++;
    }

    mBrk.setFrame(color_p[getType() * 2]);
    
    J3DModelData* modelData = mpModel->getModelData();
    mBck.entry(modelData);
    mBrk.entry(modelData);
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80487138-80487228 0011B8 00F0+00 1/0 0/0 0/0 .text            daSwhit0_Draw__FP10daSwhit0_c */
static int daSwhit0_Draw(daSwhit0_c* i_this) {
    if (i_this->subtype != 0) {
        return 1;
    }

    return i_this->draw();
}

int daSwhit0_c::execute() {
    switch (mAction) {
    case ACTION_SW_WAIT_e:
        actionSwWait();
        break;
    case ACTION_OFF_WAIT_e:
        actionOffWait();
        break;
    case ACTION_TO_ON_READY_e:
    case ACTION_TOOL_TO_ON_READY_e:
        actionToOnReady();
        break;
    case ACTION_TO_ON_ORDER_e:
    case ACTION_TOOL_TO_ON_ORDER_e:
        actionToOnOrder();
        break;
    case ACTION_TO_ON_DEMO_e:
    case ACTION_TOOL_TO_ON_DEMO_e:
        actionToOnDemo();
        break;
    case ACTION_TO_ON_DEMO2_e:
    case ACTION_TOOL_TO_ON_DEMO2_e:
        actionToOnDemo2();
        break;
    case ACTION_ON_WAIT_e:
        actionOnWait();
        break;
    }

    return 1;
}

/* 80487228-804872E4 0012A8 00BC+00 2/0 0/0 0/0 .text            daSwhit0_Execute__FP10daSwhit0_c */
static int daSwhit0_Execute(daSwhit0_c* i_this) {
    i_this->mBck.play();
    i_this->execute();
    dComIfG_Ccsp()->Set(&i_this->mSph);
    return 1;
}

/* 804872E4-8048732C 001364 0048+00 1/0 0/0 0/0 .text            daSwhit0_Delete__FP10daSwhit0_c */
static int daSwhit0_Delete(daSwhit0_c* i_this) {
    if (i_this->subtype == 0) {
        dComIfG_resDelete(i_this, l_arcName);
    }

    return 1;
}

/* 8048732C-8048734C 0013AC 0020+00 1/0 0/0 0/0 .text            daSwhit0_Create__FP10fopAc_ac_c */
static int daSwhit0_Create(fopAc_ac_c* i_this) {
    return ((daSwhit0_c*)i_this)->create();
}

/* 8048743C-8048745C -00001 0020+00 1/0 0/0 0/0 .data            l_daSwhit0_Method */
static actor_method_class l_daSwhit0_Method = {
    (process_method_func)daSwhit0_Create,
    (process_method_func)daSwhit0_Delete,
    (process_method_func)daSwhit0_Execute,
    (process_method_func)NULL,
    (process_method_func)daSwhit0_Draw,
};

/* 8048745C-8048748C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_SWHIT0 */
extern actor_process_profile_definition g_profile_SWHIT0 = {
  fpcLy_CURRENT_e,       // mLayerID
  8,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_SWHIT0,           // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(daSwhit0_c),    // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  276,                   // mPriority
  &l_daSwhit0_Method,    // sub_method
  0x00044100,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

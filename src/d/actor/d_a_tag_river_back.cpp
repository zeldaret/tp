/**
 * d_a_tag_river_back.cpp
 * Tag - River Back
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_river_back.h"
#include "d/d_procname.h"

//
// Forward References:
//

//
// External References:
//

//
// Declarations:
//

/* 80D5F9A0-80D5F9A4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "RvBack";

/* 80D5F9A4-80D5F9A8 -00001 0004+00 1/1 0/0 0/0 .data            l_evName */
static char* l_evName = "RIVER_BACK";

/* 80D5F2F8-80D5F360 000078 0068+00 1/1 0/0 0/0 .text            Create__16daTagRiverBack_cFv */
int daTagRiverBack_c::Create() {
    mMapToolID = -1;
    eventInfo.setArchiveName(l_arcName);
    mEventID = dComIfGp_getEventManager().getEventIdx(this, l_evName, -1);
    return 1;
}

/* 80D5F360-80D5F3F0 0000E0 0090+00 1/1 0/0 0/0 .text            create__16daTagRiverBack_cFv */
int daTagRiverBack_c::create() {
    fopAcM_SetupActor(this, daTagRiverBack_c);
    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        int result = Create();
        if (!result) {
            return cPhs_ERROR_e;
        }
    }
    return phase;
}

/* 80D5F3F0-80D5F48C 000170 009C+00 1/1 0/0 0/0 .text            execute__16daTagRiverBack_cFv */
int daTagRiverBack_c::execute() {
    u8 swBit = getSwBit();
    if (swBit != 0xFF && fopAcM_isSwitch(this, swBit) != 0) {
        return 1;
    }

    u8 swBit2 = getSwBit2();
    if (swBit2 != 0xFF && fopAcM_isSwitch(this, swBit2) == 0) {
        return 1;
    }

    event_proc_call();

    return 1;
}

/* ############################################################################################## */
/* 80D5F9A8-80D5F9AC -00001 0004+00 1/1 0/0 0/0 .data            l_staffName */
static char* l_staffName = "rvback";

/* 80D5F48C-80D5F548 00020C 00BC+00 1/1 0/0 0/0 .text event_proc_call__16daTagRiverBack_cFv */
void daTagRiverBack_c::event_proc_call() {
    typedef void (daTagRiverBack_c::*actionFunc)();
    /* 80D5F9DC-80D5FA0C 00005C 0030+00 0/1 0/0 0/0 .data            l_func$3711 */
    static actionFunc l_func[] = {&daTagRiverBack_c::actionWait,
                                  &daTagRiverBack_c::actionOrderEvent,
                                  &daTagRiverBack_c::actionEvent, &daTagRiverBack_c::actionDead};

    (this->*l_func[mAction])();
}

/* 80D5F548-80D5F5BC 0002C8 0074+00 1/0 0/0 0/0 .text            actionWait__16daTagRiverBack_cFv */
void daTagRiverBack_c::actionWait() {
    if (dComIfGp_checkPlayerStatus0(0, 0x100000) != 0) {
        mCount = 0;
        setAction(ACTION_ORDER_EVENT_e);
        fopAcM_orderOtherEventId(this, mEventID, mMapToolID, 0xFFFF, 0, 1);
        eventInfo.onCondition(2);
    }
}

/* 80D5F5BC-80D5F66C 00033C 00B0+00 1/0 0/0 0/0 .text actionOrderEvent__16daTagRiverBack_cFv */
void daTagRiverBack_c::actionOrderEvent() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(ACTION_EVENT_e);
        mStaffID = dComIfGp_evmng_getMyStaffId(l_staffName, NULL, 0);
        player->mNoResetFlg0 |= 0x10000;
        demoProc();
    } else {
        fopAcM_orderOtherEventId(this, mEventID, mMapToolID, 0xFFFF, 0, 1);
        eventInfo.onCondition(2);
    }
}

/* 80D5F66C-80D5F70C 0003EC 00A0+00 1/0 0/0 0/0 .text            actionEvent__16daTagRiverBack_cFv
 */
void daTagRiverBack_c::actionEvent() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    mCount += 1;
    if (dComIfGp_evmng_endCheck(mEventID)) {
        setAction(ACTION_DEAD_e);
        dComIfGp_event_reset();
    } else {
        demoProc();
        if (mCount == 30) {
            player->voiceStart(Z2SE_WL_V_FALL_TO_RESTART);
        }
    }
}

/* 80D5F70C-80D5F710 00048C 0004+00 1/0 0/0 0/0 .text            actionDead__16daTagRiverBack_cFv */
void daTagRiverBack_c::actionDead() {}

/* 80D5FA0C-80D5FA14 -00001 0008+00 1/1 0/0 0/0 .data            action_table$3769 */
static char* action_table[] = {"WAIT", "SCENE_CHG"};

/* 80D5F710-80D5F88C 000490 017C+00 2/2 0/0 0/0 .text            demoProc__16daTagRiverBack_cFv */
int daTagRiverBack_c::demoProc() {
    int act_id = dComIfGp_evmng_getMyActIdx(mStaffID, action_table, ARRAY_SIZE(action_table), 0, 0);

    if (dComIfGp_evmng_getIsAddvance(mStaffID)) {
        switch (act_id) {
        case WAIT_e:
            int* timer_p = dComIfGp_evmng_getMyIntegerP(mStaffID, "Timer");
            if (timer_p == NULL) {
                mTimer = 1;
            } else {
                mTimer = *timer_p;
            }
            break;
        case SCENE_CHG_e:
            mDoAud_seStart(Z2SE_FORCE_BACK, 0, 0, 0);
        }
    }
    switch (act_id) {
    case WAIT_e:
        if ((cLib_calcTimer(&mTimer) & 0xFF) == 0) {
            dComIfGp_evmng_cutEnd(mStaffID);
        }
        break;
    case SCENE_CHG_e:
        dStage_changeScene(fopAcM_GetParamBit(this, 0, 8) & 0xFF, 0.0f, 0, fopAcM_GetRoomNo(this),
                           0, -1);
        break;
    default:
        dComIfGp_evmng_cutEnd(mStaffID);
    }

    return 0;
}

/* 80D5F88C-80D5F8C0 00060C 0034+00 1/1 0/0 0/0 .text            _delete__16daTagRiverBack_cFv */
int daTagRiverBack_c::_delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80D5F8C0-80D5F8E0 000640 0020+00 1/0 0/0 0/0 .text daTagRiverBack_Execute__FP16daTagRiverBack_c
 */
static int daTagRiverBack_Execute(daTagRiverBack_c* i_this) {
    return i_this->execute();
}

/* 80D5F8E0-80D5F900 000660 0020+00 1/0 0/0 0/0 .text daTagRiverBack_Delete__FP16daTagRiverBack_c
 */
static int daTagRiverBack_Delete(daTagRiverBack_c* i_this) {
    return i_this->_delete();
}

/* 80D5F900-80D5F920 000680 0020+00 1/0 0/0 0/0 .text daTagRiverBack_Create__FP16daTagRiverBack_c
 */
static int daTagRiverBack_Create(daTagRiverBack_c* i_this) {
    return i_this->create();
}

/* ############################################################################################## */
/* 80D5FA14-80D5FA34 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagRiverBack_Method */
static actor_method_class l_daTagRiverBack_Method = {(process_method_func)daTagRiverBack_Create,
                                                     (process_method_func)daTagRiverBack_Delete,
                                                     (process_method_func)daTagRiverBack_Execute};

/* 80D5FA34-80D5FA64 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_RiverBack */
extern actor_process_profile_definition g_profile_Tag_RiverBack = {
    fpcLy_CURRENT_e,           // mLayerID
    7,                         // mListID
    fpcPi_CURRENT_e,           // mListPrio
    PROC_Tag_RiverBack,        // mProcName
    &g_fpcLf_Method.base,     // sub_method
    sizeof(daTagRiverBack_c),  // mSize
    0,                         // mSizeOther
    0,                         // mParameters
    &g_fopAc_Method.base,      // sub_method
    556,                       // mPriority
    &l_daTagRiverBack_Method,  // sub_method
    0x40000,                   // mStatus
    fopAc_ACTOR_e,             // mActorType
    fopAc_CULLBOX_CUSTOM_e,    // cullType
};

/* 80D5F950-80D5F950 00000C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

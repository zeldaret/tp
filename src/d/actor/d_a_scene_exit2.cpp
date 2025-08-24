/**
 * d_a_scene_exit2.cpp
 * Grotto Scene Exit trigger
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_scene_exit2.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 8059E158-8059E178 000078 0020+00 1/1 0/0 0/0 .text            initBaseMtx__10daScExit_cFv */
void daScExit_c::initBaseMtx() {
    setBaseMtx();
}

/* 8059E178-8059E1B0 000098 0038+00 1/1 0/0 0/0 .text            setBaseMtx__10daScExit_cFv */
void daScExit_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
}

/* 8059E858-8059E85C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "SceneExit";

/* 8059E85C-8059E860 -00001 0004+00 1/1 0/0 0/0 .data            l_evName */
static char* l_evName = "SCENE_EXIT";

/* 8059E1B0-8059E230 0000D0 0080+00 1/1 0/0 0/0 .text            Create__10daScExit_cFv */
int daScExit_c::Create() {
    mRadius = scale.x * 100.0f;
    initBaseMtx();

    mToolID = 0xFF;
    eventInfo.setArchiveName(l_arcName);
    mEventID = dComIfGp_getEventManager().getEventIdx(this, l_evName, 0xFF);
    return 1;
}

/* 8059E230-8059E2C0 000150 0090+00 1/1 0/0 0/0 .text            create__10daScExit_cFv */
int daScExit_c::create() {
    fopAcM_SetupActor(this, daScExit_c);

    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }

    return phase;
}

/* 8059E2C0-8059E2E4 0001E0 0024+00 1/1 0/0 0/0 .text            execute__10daScExit_cFv */
int daScExit_c::execute() {
    event_proc_call();
    return 1;
}

/* 8059E2E4-8059E3A0 000204 00BC+00 1/1 0/0 0/0 .text            event_proc_call__10daScExit_cFv */
void daScExit_c::event_proc_call() {
    typedef void (daScExit_c::*actionFunc)();
    static actionFunc l_func[] = {&daScExit_c::actionWait, &daScExit_c::actionOrderEvent,
                                  &daScExit_c::actionEvent, &daScExit_c::actionDead};

    (this->*l_func[mAction])();
}

/* 8059E3A0-8059E408 0002C0 0068+00 1/0 0/0 0/0 .text            actionWait__10daScExit_cFv */
void daScExit_c::actionWait() {
    if (checkArea()) {
        setAction(ACTION_ORDER_EVENT_e);
        fopAcM_orderOtherEventId(this, mEventID, mToolID, 0xFFFF, 0, 1);
        eventInfo.onCondition(2);
    }
}

/* 8059E408-8059E488 000328 0080+00 1/0 0/0 0/0 .text            actionOrderEvent__10daScExit_cFv */
void daScExit_c::actionOrderEvent() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(ACTION_EVENT_e);
        demoProc();
        dComIfGp_setPlayerStatus1(0, 0x4000000);
    } else {
        fopAcM_orderOtherEventId(this, mEventID, mToolID, 0xFFFF, 0, 1);
        eventInfo.onCondition(2);
    }
}

/* 8059E488-8059E504 0003A8 007C+00 1/0 0/0 0/0 .text            actionEvent__10daScExit_cFv */
void daScExit_c::actionEvent() {
    if (dComIfGp_evmng_endCheck(mEventID)) {
        setAction(ACTION_DEAD_e);
        dComIfGp_event_reset();
    } else {
        demoProc();
        dComIfGp_setPlayerStatus1(0, 0x4000000);
    }
}

/* 8059E504-8059E508 000424 0004+00 1/0 0/0 0/0 .text            actionDead__10daScExit_cFv */
void daScExit_c::actionDead() {}

/* 8059E508-8059E6CC 000428 01C4+00 2/2 0/0 0/0 .text            demoProc__10daScExit_cFv */
int daScExit_c::demoProc() {
    static char* action_table[3] = {"WAIT", "START", "SCENE_CHG"};

    u8 scene_id = getSceneID();
    int act_id = dComIfGp_evmng_getMyActIdx(mStaffID, action_table, 3, 0, 0);

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
        case START_e:
            fopAcM_seStart(this, Z2SE_SY_WARP_FADE, 0);
            attention_info.position.y = current.pos.y + 800.0f;
            eyePos.y = attention_info.position.y;
            break;
        case SCENE_CHG_e:
            break;
        }
    }

    switch (act_id) {
    case WAIT_e:
        if (cLib_calcTimer(&mTimer) == 0) {
            dComIfGp_evmng_cutEnd(mStaffID);
        }
        break;
    case START_e:
        dComIfGp_evmng_cutEnd(mStaffID);
        break;
    case SCENE_CHG_e:
        dStage_changeScene(scene_id, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
        break;
    default:
        dComIfGp_evmng_cutEnd(mStaffID);
        break;
    }

    return 0;
}

/* 8059E6CC-8059E714 0005EC 0048+00 1/1 0/0 0/0 .text            checkArea__10daScExit_cFv */
BOOL daScExit_c::checkArea() {
    return fopAcM_searchPlayerDistanceXZ(this) < mRadius;
}

/* 8059E714-8059E71C 000634 0008+00 1/1 0/0 0/0 .text            draw__10daScExit_cFv */
int daScExit_c::draw() {
    return 1;
}

/* 8059E71C-8059E750 00063C 0034+00 1/1 0/0 0/0 .text            _delete__10daScExit_cFv */
int daScExit_c::_delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 8059E750-8059E770 000670 0020+00 1/0 0/0 0/0 .text            daScExit_Draw__FP10daScExit_c */
static int daScExit_Draw(daScExit_c* i_this) {
    return i_this->draw();
}

/* 8059E770-8059E790 000690 0020+00 1/0 0/0 0/0 .text            daScExit_Execute__FP10daScExit_c */
static int daScExit_Execute(daScExit_c* i_this) {
    return i_this->execute();
}

/* 8059E790-8059E7B0 0006B0 0020+00 1/0 0/0 0/0 .text            daScExit_Delete__FP10daScExit_c */
static int daScExit_Delete(daScExit_c* i_this) {
    return i_this->_delete();
}

/* 8059E7B0-8059E7D0 0006D0 0020+00 1/0 0/0 0/0 .text            daScExit_Create__FP10daScExit_c */
static int daScExit_Create(daScExit_c* i_this) {
    return i_this->create();
}

/* 8059E8CC-8059E8EC -00001 0020+00 1/0 0/0 0/0 .data            l_daScExit_Method */
static actor_method_class l_daScExit_Method = {
    (process_method_func)daScExit_Create,  (process_method_func)daScExit_Delete,
    (process_method_func)daScExit_Execute, (process_method_func)NULL,
    (process_method_func)daScExit_Draw,
};

/* 8059E8EC-8059E91C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_SCENE_EXIT2 */
extern actor_process_profile_definition g_profile_SCENE_EXIT2 = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_SCENE_EXIT2,
    &g_fpcLf_Method.base,
    sizeof(daScExit_c),
    0,
    0,
    &g_fopAc_Method.base,
    583,
    &l_daScExit_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

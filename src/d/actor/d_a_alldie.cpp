/**
 * d_a_alldie.cpp
 * Activates a switch when all enemies are defeated 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_alldie.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/* 804D5818-804D5824 000078 000C+00 2/2 0/0 0/0 .text            getEventNo__10daAlldie_cFv */
u8 daAlldie_c::getEventNo() {
    return fopAcM_GetParam(this) >> 0x18;
}

/* 804D5824-804D5830 000084 000C+00 2/2 0/0 0/0 .text            getSwbit__10daAlldie_cFv */
u8 daAlldie_c::getSwbit() {
    return fopAcM_GetParam(this) >> 0x8;
}

/* 804D5830-804D5838 000090 0008+00 1/1 0/0 0/0 .text            actionWait__10daAlldie_cFv */
int daAlldie_c::actionWait() {
    return 1;
}

/* 804D5838-804D5888 000098 0050+00 1/1 0/0 0/0 .text            actionCheck__10daAlldie_cFv */
int daAlldie_c::actionCheck() {
    if (fopAcM_myRoomSearchEnemy(fopAcM_GetRoomNo(this)) == NULL) {
        mAction = ACT_TIMER;
        mTimer = 65;
    }

    return 1;
}

/* 804D5888-804D5938 0000E8 00B0+00 1/1 0/0 0/0 .text            actionTimer__10daAlldie_cFv */
int daAlldie_c::actionTimer() {
    if (fopAcM_myRoomSearchEnemy(fopAcM_GetRoomNo(this)) != NULL) {
        mAction = ACT_CHECK;
    } else {
        if (mTimer > 0) {
            mTimer--;
        } else {
            if (mEventIdx == -1) {
                mAction = ACT_WAIT;
            } else {
                mAction = ACT_ORDER;
            }

            dComIfGs_onSwitch(getSwbit(), fopAcM_GetRoomNo(this));
        }
    }

    return 1;
}

/* 804D5938-804D59A0 000198 0068+00 1/1 0/0 0/0 .text            actionOrder__10daAlldie_cFv */
int daAlldie_c::actionOrder() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        mAction = ACT_EVENT;
    } else {
        fopAcM_orderOtherEventId(this, mEventIdx, getEventNo(), -1, 0, 1);
    }

    return 1;
}

/* 804D59A0-804D5A44 000200 00A4+00 2/2 0/0 0/0 .text            actionEvent__10daAlldie_cFv */
int daAlldie_c::actionEvent() {
    if (dComIfGp_evmng_endCheck(mEventIdx)) {
        dComIfGp_getEvent().reset();

        if (mNextEventIdx != -1) {
            mAction = ACT_NEXT;
            fopAcM_orderOtherEventId(this, mNextEventIdx, mMapToolID, -1, 0, 1);
        } else {
            mAction = ACT_WAIT;
            mMapToolID = -1;
        }
    }

    return 1;
}

/* 804D5A44-804D5B10 0002A4 00CC+00 1/1 0/0 0/0 .text            actionNext__10daAlldie_cFv */
int daAlldie_c::actionNext() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        mEventIdx = mNextEventIdx;
        s8 roomNo = fopAcM_GetRoomNo(this);

        mNextEventIdx = -1;
        dStage_MapEvent_dt_c* map_evt = dEvt_control_c::searchMapEventData(mMapToolID, roomNo);

        if (map_evt != NULL) {
            mMapToolID = map_evt->field_0x5;
            mNextEventIdx = dComIfGp_getEventManager().getEventIdx(this, mMapToolID);
        } else {
            mMapToolID = -1;
        }

        mAction = ACT_EVENT;
        actionEvent();
    } else {
        fopAcM_orderOtherEventId(this, mNextEventIdx, mMapToolID, -1, 0, 1);
    }

    return 1;
}

/* 804D5B10-804D5B8C 000370 007C+00 1/1 0/0 0/0 .text            execute__10daAlldie_cFv */
int daAlldie_c::execute() {
    switch (mAction) {
    case ACT_CHECK:
        actionCheck();
        break;
    case ACT_TIMER:
        actionTimer();
        break;
    case ACT_ORDER:
        actionOrder();
        break;
    case ACT_EVENT:
        actionEvent();
        break;
    case ACT_NEXT:
        actionNext();
        break;
    default:
        actionWait();
        break;
    }

    return 1;
}

/* 804D5B8C-804D5B94 0003EC 0008+00 1/0 0/0 0/0 .text            daAlldie_Draw__FP10daAlldie_c */
static int daAlldie_Draw(daAlldie_c*) {
    return 1;
}

/* 804D5B94-804D5BB8 0003F4 0024+00 1/0 0/0 0/0 .text            daAlldie_Execute__FP10daAlldie_c */
static int daAlldie_Execute(daAlldie_c* i_this) {
    i_this->execute();
    return 1;
}

/* 804D5BB8-804D5BC0 000418 0008+00 1/0 0/0 0/0 .text            daAlldie_IsDelete__FP10daAlldie_c
 */
static int daAlldie_IsDelete(daAlldie_c*) {
    return 1;
}

/* 804D5BC0-804D5BF0 000420 0030+00 1/0 0/0 0/0 .text            daAlldie_Delete__FP10daAlldie_c */
static int daAlldie_Delete(daAlldie_c* i_this) {
    i_this->~daAlldie_c();
    return 1;
}

/* 804D5BF0-804D5D1C 000450 012C+00 1/0 0/0 0/0 .text            daAlldie_Create__FP10fopAc_ac_c */
int daAlldie_c::create() {
    fopAcM_SetupActor(this, daAlldie_c);

    s8 roomNo = fopAcM_GetRoomNo(this);

    if (!dComIfGs_isSwitch(getSwbit(), fopAcM_GetRoomNo(this))) {
        mAction = ACT_CHECK;
    } else {
        mAction = ACT_WAIT;
    }

    shape_angle.z = 0;
    shape_angle.x = 0;
    current.angle.z = 0;
    current.angle.x = 0;

    mEventIdx = dComIfGp_getEventManager().getEventIdx(this, getEventNo());
    mMapToolID = -1;
    mNextEventIdx = -1;

    dStage_MapEvent_dt_c* map_evt = dEvt_control_c::searchMapEventData(getEventNo(), roomNo);
    if (map_evt != NULL) {
        mMapToolID = map_evt->field_0x5;
        mNextEventIdx = dComIfGp_getEventManager().getEventIdx(this, mMapToolID);
    }

    eventInfo.setEventId(mEventIdx);
    eventInfo.setMapToolId(getEventNo());

    return cPhs_COMPLEATE_e;
}

static int daAlldie_Create(fopAc_ac_c* i_this) {
    return static_cast<daAlldie_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 804D5D24-804D5D44 -00001 0020+00 1/0 0/0 0/0 .data            l_daAlldie_Method */
static actor_method_class l_daAlldie_Method = {
    (process_method_func)daAlldie_Create,
    (process_method_func)daAlldie_Delete,
    (process_method_func)daAlldie_Execute,
    (process_method_func)daAlldie_IsDelete,
    (process_method_func)daAlldie_Draw,
};

/* 804D5D44-804D5D74 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_ALLDIE */
extern actor_process_profile_definition g_profile_ALLDIE = {
    fpcLy_CURRENT_e,
    2,
    fpcPi_CURRENT_e,
    PROC_ALLDIE,
    &g_fpcLf_Method.base,
    sizeof(daAlldie_c),
    0,
    0,
    &g_fopAc_Method.base,
    278,
    &l_daAlldie_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_6_e,
};

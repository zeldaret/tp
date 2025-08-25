/**
 * d_a_andsw2.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_andsw2.h"
#include "d/d_com_inf_game.h"
#include "d/d_lib.h"
#include "d/d_procname.h"

/* 804D5DF8-804D5E04 000078 000C+00 2/2 0/0 0/0 .text            getEventNo__10daAndsw2_cFv */
u8 daAndsw2_c::getEventNo() {
    return home.angle.x & 0xFF;
}

/* 804D5E04-804D5E10 000084 000C+00 6/6 0/0 0/0 .text            getSwbit__10daAndsw2_cFv */
u8 daAndsw2_c::getSwbit() {
    return fopAcM_GetParam(this) >> 0x10;
}

/* 804D5E10-804D5E1C 000090 000C+00 1/1 0/0 0/0 .text            getSwbit2__10daAndsw2_cFv */
u8 daAndsw2_c::getSwbit2() {
    return fopAcM_GetParam(this) >> 0x18;
}

/* 804D5E1C-804D5E28 00009C 000C+00 6/6 0/0 0/0 .text            getType__10daAndsw2_cFv */
u8 daAndsw2_c::getType() {
    return fopAcM_GetParam(this) >> 0x8;
}

/* 804D5E28-804D5E34 0000A8 000C+00 1/1 0/0 0/0 .text            getTimer__10daAndsw2_cFv */
u8 daAndsw2_c::getTimer() {
    return home.angle.z & 0xFF;
}

/* 804D5E34-804D5E40 0000B4 000C+00 3/3 0/0 0/0 .text            getNum__10daAndsw2_cFv */
u8 daAndsw2_c::getNum() {
    return fopAcM_GetParam(this) & 0xFF;
}

/* 804D5E40-804D5EB0 0000C0 0070+00 3/3 0/0 0/0 .text            getTopSw__10daAndsw2_cFv */
u8 daAndsw2_c::getTopSw() {
    if (getSwbit2() != 0xFF) {
        return getSwbit2();
    } else if (getSwbit() != 0xFF) {
        return getSwbit() + 1;
    } else {
        return 0xFF;
    }
}

/* 804D5EB0-804D5EBC 000130 000C+00 1/1 0/0 0/0 .text            getSwAns__10daAndsw2_cFv */
u8 daAndsw2_c::getSwAns() {
    return (home.angle.x >> 8) & 0xFF;
}

/* 804D5EBC-804D5F64 00013C 00A8+00 4/4 0/0 0/0 .text            chkAllSw2__10daAndsw2_cFv */
BOOL daAndsw2_c::chkAllSw2() {
    int top_sw = getTopSw();
    int num = getNum();

    if (num == 0xFF || num == 0 || top_sw == 0xFF) {
        return false;
    }

    for (int i = 0; i < num; i++) {
        if (!dComIfGs_isSwitch(top_sw + i, fopAcM_GetRoomNo(this))) {
            return false;
        }
    }

    return true;
}

/* 804D5F64-804D6024 0001E4 00C0+00 4/4 0/0 0/0 .text            chkSwStatus__10daAndsw2_cFv */
bool daAndsw2_c::chkSwStatus() {
    int top_sw = getTopSw();
    int num = getNum();
    u8 status = 0;

    if (num == 0xFF || num == 0 || top_sw == 0xFF) {
        return false;
    }

    for (int i = 0; i < num; i++) {
        status |= dComIfGs_isSwitch(top_sw + i, fopAcM_GetRoomNo(this)) << i;
    }

    if (status == getSwAns()) {
        return true;
    }

    return false;
}

/* 804D6024-804D60CC 0002A4 00A8+00 1/1 0/0 0/0 .text            chkSwStatus2__10daAndsw2_cFv */
bool daAndsw2_c::chkSwStatus2() {
    int top_sw = getTopSw();
    int num = getNum();

    if (num == 0xFF || num == 0 || top_sw == 0xFF) {
        return false;
    }

    for (int i = 0; i < num; i++) {
        if (dComIfGs_isSwitch(top_sw + i, fopAcM_GetRoomNo(this))) {
            return true;
        }
    }

    return false;
}

/* 804D60CC-804D6120 00034C 0054+00 1/1 0/0 0/0 .text            __dt__10daAndsw2_cFv */
daAndsw2_c::~daAndsw2_c() {}

/* 804D6120-804D63A4 0003A0 0284+00 2/1 0/0 0/0 .text            create__10daAndsw2_cFv */
int daAndsw2_c::create() {
    int sw = getSwbit();
    fopAcM_SetupActor(this, daAndsw2_c);

    switch (getType()) {
    case 0:
        if (sw == 0xFF || dComIfGs_isSwitch(sw, fopAcM_GetRoomNo(this))) {
            setActio(ACT_WAIT_e);
        } else {
            setActio(ACT_ON_ALL_e);
        }

        mEventIdx = dComIfGp_getEventManager().getEventIdx(this, getEventNo());
        break;
    case 1:
    case 6:
        if (sw == 0xFF) {
            setActio(ACT_WAIT_e);
        } else if (dComIfGs_isSwitch(sw, fopAcM_GetRoomNo(this))) {
            setActio(ACT_OFF_e);
        } else {
            setActio(ACT_ON_ALL_e);
        }

        mEventIdx = dComIfGp_getEventManager().getEventIdx(this, getEventNo());
        break;
    case 2:
        if (sw == 0xFF || dComIfGs_isSwitch(sw, fopAcM_GetRoomNo(this))) {
            setActio(ACT_WAIT_e);
        } else {
            setActio(ACT_ON_ALL_e);
        }

        mEventIdx = dComIfGp_getEventManager().getEventIdx(this, getEventNo());
        break;
    case 3:
        if (sw == 0xFF || dComIfGs_isSwitch(sw, fopAcM_GetRoomNo(this))) {
            setActio(ACT_OFF_e);
        } else {
            setActio(ACT_ON_ALL_e);
        }

        mEventIdx = dComIfGp_getEventManager().getEventIdx(this, getEventNo());
        break;
    case 4:
        setActio(ACT_ON_ALL_e);
        break;
    case 5:
        setActio(ACT_ON_ALL_e);
        mEventIdx = dComIfGp_getEventManager().getEventIdx(this, getEventNo());
        break;
    default:
        setActio(ACT_WAIT_e);
        break;
    }

    shape_angle.z = 0;
    shape_angle.x = 0;
    current.angle.z = 0;
    current.angle.x = 0;

    return cPhs_COMPLEATE_e;
}

/* 804D63A4-804D6580 000624 01DC+00 1/0 0/0 0/0 .text daAndsw2_actionOnAll__FP10daAndsw2_c */
static int daAndsw2_actionOnAll(daAndsw2_c* i_this) {
    u8 var_r29 = false;

    switch (i_this->getType()) {
    case 0:
    case 1:
    case 5:
    case 6:
        BOOL temp_r0 = i_this->chkAllSw2() != 0;
        var_r29 = temp_r0;
        break;
    case 2:
    case 3:
        BOOL temp_r0_2 = i_this->chkSwStatus() != 0;
        var_r29 = temp_r0_2;
        break;
    case 4:
        if (!dComIfGs_isSwitch(i_this->getSwbit(), fopAcM_GetRoomNo(i_this))) {
            BOOL temp_r0 = i_this->chkSwStatus2() != 0;
            var_r29 = temp_r0;
        }
        break;
    }

    if (var_r29) {
        if (i_this->getTimer() != 0xFF) {
            i_this->mTimer = i_this->getTimer() * 15;
            i_this->setActio(daAndsw2_c::ACT_TIMER_e);
        } else if (i_this->mEventIdx != -1 && i_this->getType() != 4) {
            i_this->setActio(daAndsw2_c::ACT_ORDER_e);
        } else {
            dComIfGs_onSwitch(i_this->getSwbit(), fopAcM_GetRoomNo(i_this));

            if (i_this->getType() == 1 || i_this->getType() == 3 || i_this->getType() == 6) {
                i_this->setActio(daAndsw2_c::ACT_OFF_e);
            } else if (i_this->getType() != 4) {
                i_this->setActio(daAndsw2_c::ACT_WAIT_e);
            }
        }
    }

    return 1;
}

/* 804D6580-804D6704 000800 0184+00 1/0 0/0 0/0 .text daAndsw2_actionTimer__FP10daAndsw2_c */
static int daAndsw2_actionTimer(daAndsw2_c* i_this) {
    if ((i_this->getType() == 1 && !i_this->chkAllSw2()) ||
        (i_this->getType() == 3 && !i_this->chkSwStatus()) ||
        (i_this->getType() == 5 && !i_this->chkAllSw2()) ||
        (i_this->getType() == 6 && !i_this->chkAllSw2()))
    {
        i_this->setActio(daAndsw2_c::ACT_ON_ALL_e);
    } else if (i_this->mTimer > 0) {
        i_this->mTimer--;
    } else if (i_this->mEventIdx != -1) {
        i_this->setActio(daAndsw2_c::ACT_ORDER_e);
    } else {
        dComIfGs_onSwitch(i_this->getSwbit(), fopAcM_GetRoomNo(i_this));
        if (i_this->getType() == 1 || i_this->getType() == 5) {
            i_this->setActio(daAndsw2_c::ACT_WAIT_e);
        } else if (i_this->getType() == 3 || i_this->getType() == 6) {
            i_this->setActio(daAndsw2_c::ACT_OFF_e);
        }
    }

    return 1;
}

/* 804D6704-804D68A4 000984 01A0+00 1/0 0/0 0/0 .text daAndsw2_actionOrder__FP10daAndsw2_c */
static int daAndsw2_actionOrder(daAndsw2_c* i_this) {
    if (i_this->eventInfo.checkCommandDemoAccrpt()) {
        i_this->setActio(daAndsw2_c::ACT_EVENT_e);
        dComIfGs_onSwitch(i_this->getSwbit(), fopAcM_GetRoomNo(i_this));
    } else if ((i_this->getType() == 1 && !i_this->chkAllSw2()) ||
               (i_this->getType() == 3 && !i_this->chkSwStatus()) ||
               (i_this->getType() == 5 && !i_this->chkAllSw2()) ||
               (i_this->getType() == 6 && !i_this->chkAllSw2()))
    {
        i_this->setActio(daAndsw2_c::ACT_ON_ALL_e);
    } else {
        if (i_this->getType() == 5) {
            u8 switch_no = dLib_getEventSwitchNo(i_this->getEventNo());
            if (fopAcM_isSwitch(i_this, switch_no)) {
                dComIfGs_onSwitch(i_this->getSwbit(), fopAcM_GetRoomNo(i_this));
                i_this->setActio(daAndsw2_c::ACT_OFF_e);
            }
        }

        fopAcM_orderOtherEventId(i_this, i_this->mEventIdx, i_this->getEventNo(), 0xFFFF, 0, 1);
    }

    return 1;
}

/* 804D68A4-804D6960 000B24 00BC+00 1/0 0/0 0/0 .text daAndsw2_actionEvent__FP10daAndsw2_c */
static int daAndsw2_actionEvent(daAndsw2_c* i_this) {
    if (dComIfGp_evmng_endCheck(i_this->mEventIdx)) {
        if (i_this->getType() == 1 || i_this->getType() == 3 || i_this->getType() == 5 ||
            i_this->getType() == 6)
        {
            i_this->setActio(daAndsw2_c::ACT_OFF_e);
        } else {
            i_this->setActio(daAndsw2_c::ACT_WAIT_e);
        }

        dComIfGp_event_reset();
    }

    return 1;
}

/* 804D6960-804D6A34 000BE0 00D4+00 1/0 0/0 0/0 .text            daAndsw2_actionOff__FP10daAndsw2_c
 */
static int daAndsw2_actionOff(daAndsw2_c* i_this) {
    u8 var_r29 = false;

    switch (i_this->getType()) {
    case 0:
    case 1:
    case 5:
    case 6:
        BOOL temp_r0 = i_this->chkAllSw2() != 0;
        var_r29 = temp_r0;
        break;
    case 2:
    case 3:
        BOOL temp_r0_2 = i_this->chkSwStatus() != 0;
        var_r29 = temp_r0_2;
        break;
    case 4:
        break;
    }

    if (!var_r29) {
        i_this->setActio(daAndsw2_c::ACT_ON_ALL_e);
        dComIfGs_offSwitch(i_this->getSwbit(), fopAcM_GetRoomNo(i_this));
    }

    return 1;
}

/* 804D6A34-804D6A3C 000CB4 0008+00 1/0 0/0 0/0 .text            daAndsw2_actionWait__FP10daAndsw2_c
 */
static int daAndsw2_actionWait(daAndsw2_c* i_this) {
    return 1;
}

int daAndsw2_c::execute() {
    typedef int (*actionFunc)(daAndsw2_c*);
    static actionFunc l_action[] = {
        &daAndsw2_actionOnAll, &daAndsw2_actionTimer, &daAndsw2_actionOrder,
        &daAndsw2_actionEvent, &daAndsw2_actionOff,   &daAndsw2_actionWait,
    };

    (*l_action[mAction])(this);
    return 1;
}

/* 804D6A3C-804D6A78 000CBC 003C+00 1/0 0/0 0/0 .text            daAndsw2_Execute__FP10daAndsw2_c */
static int daAndsw2_Execute(daAndsw2_c* i_this) {
    return i_this->execute();
}

/* 804D6A78-804D6AA0 000CF8 0028+00 1/0 0/0 0/0 .text            daAndsw2_Delete__FP10daAndsw2_c */
static int daAndsw2_Delete(daAndsw2_c* i_this) {
    i_this->~daAndsw2_c();
    return 1;
}

/* 804D6AA0-804D6AC0 000D20 0020+00 1/0 0/0 0/0 .text            daAndsw2_Create__FP10fopAc_ac_c */
static int daAndsw2_Create(fopAc_ac_c* i_this) {
    return static_cast<daAndsw2_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 804D6AFC-804D6B1C -00001 0020+00 1/0 0/0 0/0 .data            l_daAndsw2_Method */
static actor_method_class l_daAndsw2_Method = {
    (process_method_func)daAndsw2_Create,
    (process_method_func)daAndsw2_Delete,
    (process_method_func)daAndsw2_Execute,
};

/* 804D6B1C-804D6B4C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_ANDSW2 */
extern actor_process_profile_definition g_profile_ANDSW2 = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_ANDSW2,            // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daAndsw2_c),     // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    303,                    // mPriority
    &l_daAndsw2_Method,     // sub_method
    0x44000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_6_e,      // cullType
};

/**
 * d_a_tag_evtmsg.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_evtmsg.h"
#include "d/actor/d_a_npc.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 8048D838-8048D844 -00001 000C+00 0/1 0/0 0/0 .data            mEvtCutNameList__14daTag_EvtMsg_c
 */
char* daTag_EvtMsg_c::mEvtCutNameList[] = {"", "TALK", "WAIT"};

/* 8048D85C-8048D880 000044 0024+00 0/2 0/0 0/0 .data            mEvtCutList__14daTag_EvtMsg_c */
EvtCutFunc daTag_EvtMsg_c::mEvtCutList[] = {
    NULL,
    &daTag_EvtMsg_c::ECut_talk,
    &daTag_EvtMsg_c::ECut_wait,
};

/* 8048D880-8048D884 -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
static char* l_myName = "EvtMsg";

/* 8048CF38-8048D014 000078 00DC+00 1/1 0/0 0/0 .text            create__14daTag_EvtMsg_cFv */
int daTag_EvtMsg_c::create() {
    fopAcM_SetupActor(this, daTag_EvtMsg_c);

    scale.x *= 100.0f;
    scale.y *= 100.0f;
    scale.z = scale.x;

    if (home.angle.z != 0xFFFF) {
        mFlowID = home.angle.z;
    } else {
        mFlowID = -1;
    }

    mEventID = -1;
    field_0x572 = 0;

    return isDelete() == TRUE ? cPhs_ERROR_e : cPhs_COMPLEATE_e;
}

/* 8048D014-8048D01C 000154 0008+00 1/1 0/0 0/0 .text            Delete__14daTag_EvtMsg_cFv */
int daTag_EvtMsg_c::Delete() {
    return 1;
}

/* 8048D01C-8048D31C 00015C 0300+00 1/1 0/0 0/0 .text            Execute__14daTag_EvtMsg_cFv */
int daTag_EvtMsg_c::Execute() {
    dEvent_manager_c& evt_mng = dComIfGp_getEventManager();

    if (home.roomNo == dComIfGp_roomControl_getStayNo()) {
        if (dComIfGp_event_runCheck() != 0) {
            int staff_id;
            BOOL reset = false;
            if (eventInfo.checkCommandTalk()) {
                if (field_0x572 != 0) {
                    mMsgFlow.init(this, mFlowID, 0, NULL);
                }

                if (mMsgFlow.doFlow(this, NULL, 0)) {
                    reset = true;
                }
            } else if (eventInfo.checkCommandDemoAccrpt() && mEventID != -1 &&
                       evt_mng.endCheck(mEventID))
            {
                mEventID = -1;
                reset = true;
            } else {
                staff_id = evt_mng.getMyStaffId(l_myName, this, -1);
                if (staff_id != -1) {
                    int evtCutNo = evt_mng.getMyActIdx(staff_id, mEvtCutNameList, 3, 0, 0);
                    if ((this->*mEvtCutList[evtCutNo])(staff_id) != 0) {
                        evt_mng.cutEnd(staff_id);
                    }
                }
            }

            if (reset) {
                if (getOffSwBit() != 0xFF) {
                    dComIfGs_onSwitch(getOffSwBit(), fopAcM_GetRoomNo(this));
                }

                dComIfGp_event_reset();
            }
        } else if (isDelete()) {
            fopAcM_delete(this);
        } else if (mFlowID != -1) {
            if (chkPointInArea(daPy_getPlayerActorClass()->current.pos)) {
                if (getProcType() == 0) {
                    s16 var_r0 = (s16)(fopAcM_searchPlayerAngleY(this) + 0x7FFF);
                    var_r0 = var_r0 - daPy_getPlayerActorClass()->current.angle.y;

                    if (var_r0 < 0) {
                        var_r0 = -var_r0;
                    }

                    if (var_r0 <= 0x1000) {
                        mEventID = evt_mng.getEventIdx(this, "DEFAULT_EVT_TALK", 0xFF);
                        fopAcM_orderOtherEventId(this, mEventID, 0xFF, 0xFFFF, 0, 1);
                    }
                } else {
                    eventInfo.onCondition(dEvtCnd_CANTALK_e);
                    fopAcM_orderSpeakEvent(this, 0, 0);
                }
            }
        }
        attention_info.flags = 0;
        attention_info.position = current.pos;
        eyePos = attention_info.position;
        return 1;
    }

    return 0;
}

/* 8048D31C-8048D324 00045C 0008+00 1/1 0/0 0/0 .text            Draw__14daTag_EvtMsg_cFv */
int daTag_EvtMsg_c::Draw() {
    return 1;
}

/* 8048D324-8048D340 000464 001C+00 1/1 0/0 0/0 .text            getOnEvtBit__14daTag_EvtMsg_cFv */
u32 daTag_EvtMsg_c::getOnEvtBit() {
    u32 bit = fopAcM_GetParam(this) & 0xFFF;
    if (bit != 0xFFF) {
        return bit;
    }

    return -1;
}

/* 8048D340-8048D35C 000480 001C+00 1/1 0/0 0/0 .text            getOffEvtBit__14daTag_EvtMsg_cFv */
u32 daTag_EvtMsg_c::getOffEvtBit() {
    u32 bit = (fopAcM_GetParam(this) >> 0xC) & 0xFFF;
    if (bit != 0xFFF) {
        return bit;
    }

    return -1;
}

/* 8048D35C-8048D368 00049C 000C+00 1/1 0/0 0/0 .text            getOnSwBit__14daTag_EvtMsg_cFv */
u8 daTag_EvtMsg_c::getOnSwBit() {
    return home.angle.x & 0xFF;
}

/* 8048D368-8048D374 0004A8 000C+00 2/2 0/0 0/0 .text            getOffSwBit__14daTag_EvtMsg_cFv */
u8 daTag_EvtMsg_c::getOffSwBit() {
    return (home.angle.x >> 8) & 0xFF;
}

/* 8048D374-8048D384 0004B4 0010+00 1/1 0/0 0/0 .text            getProcType__14daTag_EvtMsg_cFv */
u8 daTag_EvtMsg_c::getProcType() {
    return fopAcM_GetParam(this) & 0x2000000;
}

/* 8048D384-8048D428 0004C4 00A4+00 2/2 0/0 0/0 .text            isDelete__14daTag_EvtMsg_cFv */
BOOL daTag_EvtMsg_c::isDelete() {
    BOOL ret = false;

    if (getOffEvtBit() != -1) {
        if (daNpcF_chkEvtBit(getOffEvtBit())) {
            ret = true;
        }
    }

    if (getOffSwBit() != 0xFF) {
        if (dComIfGs_isSwitch(getOffSwBit(), fopAcM_GetRoomNo(this))) {
            ret = true;
        }
    }

    return ret;
}

/* 8048D428-8048D54C 000568 0124+00 1/1 0/0 0/0 .text chkPointInArea__14daTag_EvtMsg_cF4cXyz */
BOOL daTag_EvtMsg_c::chkPointInArea(cXyz param_0) {
    if (getOnEvtBit() == -1 || (getOnEvtBit() != -1 && !daNpcF_chkEvtBit(getOnEvtBit())) ||
        getOnSwBit() == 0xFF ||
        (getOnSwBit() != 0xFF && !dComIfGs_isSwitch(getOnSwBit(), fopAcM_GetRoomNo(this))))
    {
        return daNpcF_chkPointInArea(param_0, current.pos, scale, shape_angle.y);
    }

    return 0;
}

/* 8048D54C-8048D5CC 00068C 0080+00 1/0 0/0 0/0 .text            ECut_talk__14daTag_EvtMsg_cFi */
BOOL daTag_EvtMsg_c::ECut_talk(int i_staffID) {
    if (dComIfGp_getEventManager().getIsAddvance(i_staffID)) {
        mMsgFlow.init(this, mFlowID, 0, NULL);
    }

    if (mMsgFlow.doFlow(this, NULL, 0)) {
        return true;
    }

    return false;
}

/* 8048D5CC-8048D668 00070C 009C+00 1/0 0/0 0/0 .text            ECut_wait__14daTag_EvtMsg_cFi */
BOOL daTag_EvtMsg_c::ECut_wait(int i_staffID) {
    dEvent_manager_c& evt_mng = dComIfGp_getEventManager();
    int timer = 0;

    int* data_p = dComIfGp_evmng_getMyIntegerP(i_staffID, "timer");
    if (data_p != NULL) {
        timer = *data_p;
    }

    if (evt_mng.getIsAddvance(i_staffID)) {
        mTimer = timer;
    }

    if (cLib_calcTimer(&mTimer) == 0) {
        return 1;
    }

    return 0;
}

/* 8048D668-8048D688 0007A8 0020+00 1/0 0/0 0/0 .text            daTag_EvtMsg_Create__FPv */
static int daTag_EvtMsg_Create(void* i_this) {
    return static_cast<daTag_EvtMsg_c*>(i_this)->create();
}

/* 8048D688-8048D6A8 0007C8 0020+00 1/0 0/0 0/0 .text            daTag_EvtMsg_Delete__FPv */
static int daTag_EvtMsg_Delete(void* i_this) {
    return static_cast<daTag_EvtMsg_c*>(i_this)->Delete();
}

/* 8048D6A8-8048D6C8 0007E8 0020+00 1/0 0/0 0/0 .text            daTag_EvtMsg_Execute__FPv */
static int daTag_EvtMsg_Execute(void* i_this) {
    return static_cast<daTag_EvtMsg_c*>(i_this)->Execute();
}

/* 8048D6C8-8048D6E8 000808 0020+00 1/0 0/0 0/0 .text            daTag_EvtMsg_Draw__FPv */
static int daTag_EvtMsg_Draw(void* i_this) {
    return static_cast<daTag_EvtMsg_c*>(i_this)->Draw();
}

/* 8048D6E8-8048D6F0 000828 0008+00 1/0 0/0 0/0 .text            daTag_EvtMsg_IsDelete__FPv */
static int daTag_EvtMsg_IsDelete(void* i_this) {
    return 1;
}

/* 8048D6F0-8048D760 000830 0070+00 1/0 0/0 0/0 .text            __dt__14daTag_EvtMsg_cFv */
daTag_EvtMsg_c::~daTag_EvtMsg_c() {}

/* 8048D884-8048D8A4 -00001 0020+00 1/0 0/0 0/0 .data            daTag_EvtMsg_MethodTable */
static actor_method_class daTag_EvtMsg_MethodTable = {
    (process_method_func)daTag_EvtMsg_Create,  (process_method_func)daTag_EvtMsg_Delete,
    (process_method_func)daTag_EvtMsg_Execute, (process_method_func)daTag_EvtMsg_IsDelete,
    (process_method_func)daTag_EvtMsg_Draw,
};

/* 8048D8A4-8048D8D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_EVTMSG */
extern actor_process_profile_definition g_profile_TAG_EVTMSG = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_TAG_MSG,
    &g_fpcLf_Method.base,
    sizeof(daTag_EvtMsg_c),
    0,
    0,
    &g_fopAc_Method.base,
    285,
    &daTag_EvtMsg_MethodTable,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

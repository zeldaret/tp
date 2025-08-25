/**
 * d_a_tag_msg.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_msg.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"

/* 8048F7D8-8048F7F8 000078 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__FP10fopAc_ac_c
 */
static int createHeapCallBack(fopAc_ac_c* i_this) {
    return ((daTag_Msg_c*)i_this)->createHeap();
}

/* 804901C4-804901C8 -00001 0004+00 1/1 0/0 0/0 .data            l_resName */
static char* l_resName = "TagMsg";

/* 804901C8-804901D0 -00001 0008+00 1/1 0/0 0/0 .data            l_evtNameTBL */
static char* l_evtNameTBL[2] = {
    NULL,
    "SPEAK",
};

/* 8048F7F8-8048F878 000098 0080+00 1/0 0/0 0/0 .text            __dt__11daTag_Msg_cFv */
daTag_Msg_c::~daTag_Msg_c() {
    dComIfG_resDelete(&mPhase, getResName());
}

/* 8048F878-8048F954 000118 00DC+00 1/1 0/0 0/0 .text            create__11daTag_Msg_cFv */
int daTag_Msg_c::create() {
    fopAcM_SetupActor(this, daTag_Msg_c);

    int phase_state = dComIfG_resLoad(&mPhase, getResName());
    if (phase_state == cPhs_COMPLEATE_e) {
        attention_info.flags = 0x20000008;
        getParam();

        eventInfo.setArchiveName(getResName());
        mEventIdx = -1;

        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x10)) {
            return cPhs_ERROR_e;
        }
    }

    return phase_state;
}

/* 8048F954-8048F9B4 0001F4 0060+00 1/1 0/0 0/0 .text            createHeap__11daTag_Msg_cFv */
int daTag_Msg_c::createHeap() {
    mParam = new daTag_Msg_Param_c();
    if (mParam == NULL) {
        return 0;
    }

    return 1;
}

/* 8048F9B4-8048F9E8 000254 0034+00 1/1 0/0 0/0 .text            destroy__11daTag_Msg_cFv */
int daTag_Msg_c::destroy() {
    this->~daTag_Msg_c();
    return 1;
}

/* 80490178-8049017C 000000 0001+03 1/1 0/0 0/0 .rodata          m__17daTag_Msg_Param_c */
const daTag_Msg_HIO_Param_c daTag_Msg_Param_c::m = {0};

/* 8048F9E8-8048FC68 000288 0280+00 1/1 0/0 0/0 .text            execute__11daTag_Msg_cFv */
int daTag_Msg_c::execute() {
    bool set_event = true;

    fopAcM_SetRoomNo(this, dComIfGp_roomControl_getStayNo());
    eyePos.set(current.pos.x, current.pos.y + 150.0f, current.pos.z);
    attention_info.position = eyePos;

    dComIfG_play_c& play = g_dComIfG_gameInfo.play;  // FAKE, event inlines need to be fixed
    if (play.getEvent().runCheck()) {
        set_event = false;

        if (eventInfo.checkCommandTalk()) {
            if (cut_speak(-1, field_0x5e4)) {
                if (field_0x5dc == 1 && mOffSwitch != 0xFF) {
                    dComIfGs_onSwitch(mOffSwitch, fopAcM_GetRoomNo(this));
                }

                play.getEvent().reset();
                set_event = true;
            }

            field_0x5e4 = 0;
        } else if (mEventIdx != -1) {
            if (dComIfGp_getEventManager().endCheck(mEventIdx)) {
                mOrderEvtNum = 0;
                mEventIdx = -1;

                if (field_0x5dc == 0 && mOffSwitch != 0xFF) {
                    dComIfGs_onSwitch(mOffSwitch, fopAcM_GetRoomNo(this));
                }

                play.getEvent().reset();
                set_event = true;
            } else {
                int staff_id = dComIfGp_evmng_getMyStaffId(mStaffName, NULL, 0);
                int act_idx = dComIfGp_getEventManager().getMyActIdx(staff_id, mEvtCutTBL, 2, 0, 0);
                int is_advance = dComIfGp_getEventManager().getIsAddvance(staff_id);

                BOOL var_r27 = false;
                switch (act_idx) {
                case 0:
                    var_r27 = cut_speak(staff_id, is_advance);
                    break;
                }

                if (var_r27) {
                    dComIfGp_getEventManager().cutEnd(staff_id);
                }
            }
        }
    }

    if (set_event && rangeCheck() && otherCheck()) {
        if (field_0x5dd) {
            mOrderEvtNum = 1;
            JUT_ASSERT(0, 0 != l_evtNameTBL[mOrderEvtNum]);

            mEventIdx =
                dComIfGp_getEventManager().getEventIdx(this, l_evtNameTBL[mOrderEvtNum], 0xFF);
            fopAcM_orderOtherEventId(this, mEventIdx, 0xFF, 0xFFFF, 0, 1);
        } else {
            eventInfo.onCondition(1);
            field_0x5e4 = 1;
        }
    }

    return 1;
}

/* 8048FC68-8048FC70 000508 0008+00 1/1 0/0 0/0 .text            draw__11daTag_Msg_cFv */
int daTag_Msg_c::draw() {
    return 1;
}

/* 8048FC70-8048FE18 000510 01A8+00 1/1 0/0 0/0 .text            rangeCheck__11daTag_Msg_cFv */
BOOL daTag_Msg_c::rangeCheck() {
    cXyz player_dist = daPy_getPlayerActorClass()->current.pos - current.pos;
    return player_dist.absXZ() < scale.x && (-scale.y < player_dist.y && player_dist.y < scale.y);
}

/* 8048FE18-8048FF8C 0006B8 0174+00 1/1 0/0 0/0 .text            otherCheck__11daTag_Msg_cFv */
BOOL daTag_Msg_c::otherCheck() {
    if (field_0x5dc) {
        if (mOnSaveLabel == 0xFFF ||
            dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[mOnSaveLabel]))
        {
            if (mOffSaveLabel != 0xFFF &&
                dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[mOffSaveLabel]))
            {
                return false;
            }
        } else {
            return false;
        }
    } else if (mOnSwitch == 0xFF || dComIfGs_isSwitch(mOnSwitch, fopAcM_GetRoomNo(this))) {
        if (mOffSwitch != 0xFF && dComIfGs_isSwitch(mOffSwitch, fopAcM_GetRoomNo(this))) {
            return false;
        }
    } else {
        return false;
    }

    if (field_0x5dd) {
        return 1;
    }

    s16 var_r28 = fopAcM_searchActorAngleY(this, daPy_getPlayerActorClass()) + 0x7FFF;
    s16 angle_to_player = var_r28 - daPy_getPlayerActorClass()->current.angle.y;
    if (angle_to_player < 0) {
        angle_to_player = -angle_to_player;
    }

    return angle_to_player <= 0x1000;
}

/* 8048FF8C-8048FF9C 00082C 0010+00 2/2 0/0 0/0 .text            getResName__11daTag_Msg_cFv */
char* daTag_Msg_c::getResName() {
    return l_resName;
}

/* 8048FF9C-8049004C 00083C 00B0+00 1/1 0/0 0/0 .text            getParam__11daTag_Msg_cFv */
void daTag_Msg_c::getParam() {
    mOnSwitch = home.angle.x & 0xFF;
    mOffSwitch = (home.angle.x >> 8) & 0xFF;
    mOnSaveLabel = fopAcM_GetParam(this) & 0xFFF;
    mOffSaveLabel = (fopAcM_GetParam(this) >> 0xC) & 0xFFF;
    field_0x5dc = (fopAcM_GetParam(this) & 0x1000000) != 0;
    field_0x5dd = (fopAcM_GetParam(this) & 0x2000000) != 0;

    if ((home.angle.z & 0xFFFF) != 0) {
        mFlowID = home.angle.z & 0xFFFF;
    } else {
        mFlowID = -1;
    }

    scale.x *= 100.0f;
    scale.y *= 100.0f;
    strcpy(mStaffName, "Tag_ms");
}

/* 804901D0-804901D8 -00001 0008+00 1/1 0/0 0/0 .data            mEvtCutTBL__11daTag_Msg_c */
SECTION_DATA char* daTag_Msg_c::mEvtCutTBL[2] = {
    "SPEAK",
    "PAUSE",
};

/* 8049004C-804900A0 0008EC 0054+00 1/1 0/0 0/0 .text            cut_speak__11daTag_Msg_cFii */
BOOL daTag_Msg_c::cut_speak(int i_staffId, BOOL i_isAdvance) {
    if (i_isAdvance) {
        mMsgFlow.init(this, mFlowID, 0, NULL);
        return false;
    } else {
        return mMsgFlow.doFlow(this, NULL, 0);
    }
}

/* 804900A0-804900C0 000940 0020+00 1/0 0/0 0/0 .text            daTag_Msg_Create__FPv */
static int daTag_Msg_Create(void* i_this) {
    return ((daTag_Msg_c*)i_this)->create();
}

/* 804900C0-804900E0 000960 0020+00 1/0 0/0 0/0 .text            daTag_Msg_Delete__FPv */
static int daTag_Msg_Delete(void* i_this) {
    return ((daTag_Msg_c*)i_this)->destroy();
}

/* 804900E0-80490100 000980 0020+00 1/0 0/0 0/0 .text            daTag_Msg_Execute__FPv */
static int daTag_Msg_Execute(void* i_this) {
    return ((daTag_Msg_c*)i_this)->execute();
}

/* 80490100-80490120 0009A0 0020+00 1/0 0/0 0/0 .text            daTag_Msg_Draw__FPv */
static int daTag_Msg_Draw(void* i_this) {
    return ((daTag_Msg_c*)i_this)->draw();
}

/* 80490120-80490128 0009C0 0008+00 1/0 0/0 0/0 .text            daTag_Msg_IsDelete__FPv */
static int daTag_Msg_IsDelete(void* i_this) {
    return 1;
}

void dummyString() {
    DEAD_STRING("Timer");
}

/* 804901D8-804901F8 -00001 0020+00 1/0 0/0 0/0 .data            daTag_Msg_MethodTable */
static actor_method_class daTag_Msg_MethodTable = {
    (process_method_func)daTag_Msg_Create,  (process_method_func)daTag_Msg_Delete,
    (process_method_func)daTag_Msg_Execute, (process_method_func)daTag_Msg_IsDelete,
    (process_method_func)daTag_Msg_Draw,
};

/* 804901F8-80490228 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_MSG */
extern actor_process_profile_definition g_profile_TAG_MSG = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_TAG_MSG,            // mProcName
    &g_fpcLf_Method.base,   // sub_method
    sizeof(daTag_Msg_c),     // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    285,                     // mPriority
    &daTag_Msg_MethodTable,  // sub_method
    0x00044000,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

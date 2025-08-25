/**
 * d_a_tag_ss_drink.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_ss_drink.h"
#include "d/actor/d_a_player.h"
#include "d/d_procname.h"
#include "d/d_msg_object.h"
#include "d/actor/d_a_myna.h"

/* 80D62DB8-80D62E5C 000078 00A4+00 1/1 0/0 0/0 .text            create__15daTag_SSDrink_cFv */
int daTag_SSDrink_c::create() {
    fopAcM_SetupActor(this, daTag_SSDrink_c);
    field_0x5D2 = getTypeFromParam();
    setFlowNodeNumber(getFlowNodeNum());
    setValueNumber(getValue());
    field_0x5D4 = 0;
    initialize();
    return 4;
}

/* 80D62E5C-80D62E64 00011C 0008+00 1/1 0/0 0/0 .text            Delete__15daTag_SSDrink_cFv */
int daTag_SSDrink_c::Delete() {
    return 1;
}

/* 80D62E64-80D62ED0 000124 006C+00 2/2 0/0 0/0 .text            Execute__15daTag_SSDrink_cFv */
int daTag_SSDrink_c::Execute() {
    if (chkEvent()) {
        if (mProcessFunc) {
            (this->*mProcessFunc)(0);
        }
        orderEvent();
    }
    setAttnPos();
    return 1;
}

/* 80D62ED0-80D62ED8 000190 0008+00 1/1 0/0 0/0 .text            Draw__15daTag_SSDrink_cFv */
int daTag_SSDrink_c::Draw() {
    return 1;
}

/* 80D62ED8-80D62F80 000198 00A8+00 2/1 0/0 0/0 .text getTypeFromParam__15daTag_SSDrink_cFv */
int daTag_SSDrink_c::getTypeFromParam() {
    switch (fopAcM_GetParamBit(this, 0, 4)) {
    case 0:
        field_0x5D3 = 0x69;
        return 0;
    case 1:
        field_0x5D3 = 0x62;
        return 1;
    case 2:
        field_0x5D3 = 0x63;
        return 2;
    case 3:
        field_0x5D3 = 0x64;
        return 3;
    case 4:
        field_0x5D3 = 0x68;
        return 4;
    case 5:
        field_0x5D3 = 0x67;
        return 5;
    case 6:
        field_0x5D3 = 0x6A;
        return 6;
    default:
        field_0x5D3 = 0x60;
        return 7;
    }
}

/* 80D62F80-80D62F8C 000240 000C+00 2/2 0/0 0/0 .text getSwitchFromParam__15daTag_SSDrink_cFv */
u8 daTag_SSDrink_c::getSwitchFromParam() {
    return fopAcM_GetParamBit(this, 4, 8);
}

/* 80D62F8C-80D62FC8 00024C 003C+00 3/3 0/0 0/0 .text            getFlowNodeNum__15daTag_SSDrink_cFv
 */
u16 daTag_SSDrink_c::getFlowNodeNum() {
    u16 num = home.angle.x;
    bool bVar1 = false;
    if (num == 0xFFFF || num == 0) {
        bVar1 = true;
    }

    u16 num2;
    if (!bVar1) {
        num2 = num;
    } else {
        num2 = 0xFFFF;
    }

    return num2 & 0xFFFF;
}

/* 80D62FC8-80D62FD4 000288 000C+00 1/1 0/0 0/0 .text            getValue__15daTag_SSDrink_cFv */
u16 daTag_SSDrink_c::getValue() {
    return fopAcM_GetParamBit(this, 12, 16);
}

/* 80D62FD4-80D63044 000294 0070+00 1/1 0/0 0/0 .text            restart__15daTag_SSDrink_cFv */
void daTag_SSDrink_c::restart() {
    current.angle.set(0, home.angle.y, 0);
    shape_angle = current.angle;
    setProcess(&daTag_SSDrink_c::wait);
}

/* 80D63044-80D630BC 000304 0078+00 1/1 0/0 0/0 .text            initialize__15daTag_SSDrink_cFv */
void daTag_SSDrink_c::initialize() {
    fopAcM_setCullSizeBox(this, -30.0f, -15.0f, -30.0f, 30.0f, 45.0f, 30.0f);
    attention_info.flags = 0;
    attention_info.distances[fopAc_attn_CARRY_e] = 6;
    fopAcM_OnCarryType(this, fopAcM_CARRY_SIDE);
    restart();
    Execute();
}

/* 80D630BC-80D630E8 00037C 002C+00 2/2 0/0 0/0 .text
 * checkProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i */
int daTag_SSDrink_c::checkProcess(ProcessFunc i_processFunc) {
    return mProcessFunc == i_processFunc;
}

/* 80D630E8-80D631D4 0003A8 00EC+00 3/3 0/0 0/0 .text
 * setProcess__15daTag_SSDrink_cFM15daTag_SSDrink_cFPCvPvPv_i   */
int daTag_SSDrink_c::setProcess(ProcessFunc i_processFunc) {
    int retVal = 0;

    if (checkProcess(i_processFunc)) {
        return 0;
    } else {
        mEventType = 2;
        if (mProcessFunc) {
            retVal = (this->*mProcessFunc)(0);
        }
        mEventType = 0;
        mProcessFunc = i_processFunc;
        if (mProcessFunc) {
            retVal = (this->*mProcessFunc)(0);
        }
        mEventType = 1;
    }

    return retVal;
}

/* 80D631D4-80D63208 000494 0034+00 1/1 0/0 0/0 .text            setAttnPos__15daTag_SSDrink_cFv */
void daTag_SSDrink_c::setAttnPos() {
    attention_info.position = current.pos;
    eyePos = current.pos;
}

/* 80D63208-80D63384 0004C8 017C+00 1/1 0/0 0/0 .text            chkEvent__15daTag_SSDrink_cFv */
int daTag_SSDrink_c::chkEvent() {
    int retVal = 1;
    if (!dComIfGp_getEvent().isOrderOK()) {
        retVal = 0;
        if (eventInfo.checkCommandTalk()) {
            if (!checkProcess(&daTag_SSDrink_c::talk) == 0) {
                retVal = (this->*mProcessFunc)(0);
            } else {
                if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd() != 0) {
                    setProcess(&daTag_SSDrink_c::talk);
                }
            }
            return retVal;
        } else if (eventInfo.checkCommandCatch()) {
            if (field_0x5D4 == 0) {
                if (getParentPtr() != NULL) {
                    ((daMyna_c*)getParentPtr())->onEventFlag(0);
                }
                dMsgObject_addTotalPrice(getValueNumber());
                field_0x5D4 = 1;
            }
            return retVal;
        }
    }
    return retVal;
}

/* 80D63384-80D63490 000644 010C+00 1/1 0/0 0/0 .text            orderEvent__15daTag_SSDrink_cFv */
int daTag_SSDrink_c::orderEvent() {
    if (!dComIfGp_getLinkPlayer()->checkWolf() && fopAcM_isSwitch(this, getSwitchFromParam()) &&
        field_0x5D3 != 0x60 && getFlowNodeNum() != 0xFFFF)
    {
        attention_info.flags = 0x40000008;
    } else {
        attention_info.flags = 0;
    }

    if (attention_info.flags == 0x40000008) {
        if (fopAcM_searchPlayerDistanceXZ(this) <= 160.0f && fopAcM_seenPlayerAngleY() <= 0x2000) {
            attention_info.distances[fopAc_attn_TALK_e] = 0x9D;
            attention_info.distances[fopAc_attn_SPEAK_e] = 0x9D;
            eventInfo.onCondition(1);
        }
    }

    return 1;
}

/* 80D63490-80D635C8 000750 0138+00 2/0 0/0 0/0 .text            wait__15daTag_SSDrink_cFPv */
int daTag_SSDrink_c::wait(void* param_0) {
    switch (mEventType) {
    case 1:
        if (!eventInfo.checkCommandCatch()) {
            if (fopAcM_isSwitch(this, getSwitchFromParam())) {
                if (fopAcM_searchPlayerDistanceXZ(this) <= 160.0f &&
                    fopAcM_seenPlayerAngleY() <= 0x2000)
                {
                    fopAc_ac_c* player = dComIfGp_getPlayer(0);
                    cXyz local_28 = attention_info.position - player->attention_info.position;
                    dComIfGp_att_CatchRequest(this, field_0x5D3, 200.0f, local_28.y + 100.0f,
                                              local_28.y - 100.0f, 0x4000, 1);
                    eventInfo.onCondition(dEvtCnd_40_e);
                }
                if (field_0x5D4 != 0) {
                    field_0x5D4 = 0;
                }
            }
        }
    case 0:
    case 2:
    default:
        return 1;
    }
}

/* 80D635C8-80D6369C 000888 00D4+00 2/0 0/0 0/0 .text            talk__15daTag_SSDrink_cFPv */
int daTag_SSDrink_c::talk(void* param_0) {
    int retVal = 0;
    switch (mEventType) {
    case 0:
        field_0x578.init(this, getFlowNodeNum(), 0, NULL);
        break;
    case 1:
        if (field_0x578.doFlow(this, NULL, 0) != 0) {
            dComIfGp_event_reset();
            setProcess(&daTag_SSDrink_c::wait);
            retVal = 1;
        }
        break;
    case 2:
    default:
        break;
    }
    return retVal;
}

/* 80D6369C-80D636BC 00095C 0020+00 1/0 0/0 0/0 .text            daTag_SSDrink_Create__FPv */
static int daTag_SSDrink_Create(void* i_this) {
    return static_cast<daTag_SSDrink_c*>(i_this)->create();
}

/* 80D636BC-80D636DC 00097C 0020+00 1/0 0/0 0/0 .text            daTag_SSDrink_Delete__FPv */
static int daTag_SSDrink_Delete(void* i_this) {
    return static_cast<daTag_SSDrink_c*>(i_this)->Delete();
}

/* 80D636DC-80D636FC 00099C 0020+00 1/0 0/0 0/0 .text            daTag_SSDrink_Execute__FPv */
static int daTag_SSDrink_Execute(void* i_this) {
    return static_cast<daTag_SSDrink_c*>(i_this)->Execute();
}

/* 80D636FC-80D6371C 0009BC 0020+00 1/0 0/0 0/0 .text            daTag_SSDrink_Draw__FPv */
static int daTag_SSDrink_Draw(void* i_this) {
    return static_cast<daTag_SSDrink_c*>(i_this)->Draw();
}

/* 80D6371C-80D63724 0009DC 0008+00 1/0 0/0 0/0 .text            daTag_SSDrink_IsDelete__FPv */
static int daTag_SSDrink_IsDelete(void* i_this) {
    return 1;
}

/* 80D63724-80D63794 0009E4 0070+00 1/0 0/0 0/0 .text            __dt__15daTag_SSDrink_cFv */
daTag_SSDrink_c::~daTag_SSDrink_c() {}

/* 80D63794-80D63798 000A54 0004+00 1/0 0/0 0/0 .text            setSoldOut__14daObj_SSBase_cFv
 */
void daObj_SSBase_c::setSoldOut() {
    /* empty function */
}

/* ############################################################################################## */
/* 80D63808-80D63828 -00001 0020+00 1/0 0/0 0/0 .data            daTag_SSDrink_MethodTable */
static actor_method_class daTag_SSDrink_MethodTable = {
    (process_method_func)daTag_SSDrink_Create,  (process_method_func)daTag_SSDrink_Delete,
    (process_method_func)daTag_SSDrink_Execute, (process_method_func)daTag_SSDrink_IsDelete,
    (process_method_func)daTag_SSDrink_Draw,
};

/* 80D63828-80D63858 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_SSDRINK */
extern actor_process_profile_definition g_profile_TAG_SSDRINK = {
    fpcLy_CURRENT_e,
    7,
    fpcLy_CURRENT_e,
    PROC_TAG_SSDRINK,
    &g_fpcLf_Method.base,
    sizeof(daTag_SSDrink_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x46,
    &daTag_SSDrink_MethodTable,
    0x64100,
    5,
    fopAc_CULLBOX_CUSTOM_e,
};

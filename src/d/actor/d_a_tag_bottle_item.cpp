/**
 * d_a_tag_bottle_item.cpp
 * 
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_bottle_item.h"
#include "d/d_item.h"
#include "d/actor/d_a_player.h"
#include "d/d_procname.h"

/* 80D55FD8-80D5605C 000078 0084+00 1/1 0/0 0/0 .text            create__18daTag_BottleItem_cFv */
s32 daTag_BottleItem_c::create() {
    s32 ret;

    fopAcM_SetupActor(this, daTag_BottleItem_c);
    setTypeFromParam();

    if (!isBottleItem(mBottleItemType)) {
        ret = cPhs_ERROR_e;
    } else {
        initialize();
        ret = cPhs_COMPLEATE_e;
    }

    return ret;
}


/* 80D5605C-80D56064 0000FC 0008+00 1/1 0/0 0/0 .text            Delete__18daTag_BottleItem_cFv */
s32 daTag_BottleItem_c::Delete() {
    return 1;
}

/* 80D56064-80D560D0 000104 006C+00 2/2 0/0 0/0 .text            Execute__18daTag_BottleItem_cFv */
s32 daTag_BottleItem_c::Execute() {
    if (chkEvent()) {
        if (mProcessFunc) {
            (this->*mProcessFunc)(0);
        }
        orderEvent();
    }

    setAttnPos();
    return 1;
}

/* 80D560D0-80D560D8 000170 0008+00 1/1 0/0 0/0 .text            Draw__18daTag_BottleItem_cFv */
s32 daTag_BottleItem_c::Draw() {
    return 1;
}

/* 80D560D8-80D56100 000178 0028+00 1/1 0/0 0/0 .text setTypeFromParam__18daTag_BottleItem_cFv */
void daTag_BottleItem_c::setTypeFromParam() {
    mBottleItemType = fopAcM_GetParam(this);
    makeSoup();
}

/* 80D56100-80D56170 0001A0 0070+00 1/1 0/0 0/0 .text            restart__18daTag_BottleItem_cFv */
void daTag_BottleItem_c::restart() {
    current.angle.set(0,home.angle.y,0);
    shape_angle = current.angle;
    setProcess(&daTag_BottleItem_c::wait);
}

/* 80D56170-80D561E8 000210 0078+00 1/1 0/0 0/0 .text            initialize__18daTag_BottleItem_cFv
 */
void daTag_BottleItem_c::initialize() {
    fopAcM_setCullSizeBox(this,-30.0f,-15.0f,-30.0f,30.0f,45.0f,30.0f);
    attention_info.flags = 0;
    attention_info.distances[fopAc_attn_CARRY_e] = 6;
    fopAcM_OnCarryType(this,fopAcM_CARRY_SIDE);
    restart();
    Execute();
}

/* 80D561E8-80D56214 000288 002C+00 1/1 0/0 0/0 .text
 * checkProcess__18daTag_BottleItem_cFM18daTag_BottleItem_cFPCvPvPv_i */
int daTag_BottleItem_c::checkProcess(ProcessFunc i_processFunc) {
    return mProcessFunc == i_processFunc;
}

/* 80D56214-80D56300 0002B4 00EC+00 1/1 0/0 0/0 .text
 * setProcess__18daTag_BottleItem_cFM18daTag_BottleItem_cFPCvPvPv_i */
int daTag_BottleItem_c::setProcess(ProcessFunc i_processFunc) {
    int uVar3 = 0;

    if (checkProcess(i_processFunc)) {
        return 0;
    } else {
        mEventType = 2;

        if (mProcessFunc) {
            uVar3 = (this->*mProcessFunc)(0);
        }

        mEventType = 0;
        mProcessFunc = i_processFunc;

        if (mProcessFunc) {
            uVar3 = (this->*mProcessFunc)(0);
        }
        mEventType = 1;
    }
    return uVar3;
}

/* 80D56300-80D56334 0003A0 0034+00 1/1 0/0 0/0 .text            setAttnPos__18daTag_BottleItem_cFv
 */
void daTag_BottleItem_c::setAttnPos() {
    attention_info.position = current.pos;
    eyePos = current.pos;
}

/* 80D56334-80D56384 0003D4 0050+00 1/1 0/0 0/0 .text            chkEvent__18daTag_BottleItem_cFv */
s32 daTag_BottleItem_c::chkEvent() {
    s32 uVar2 = 1;
  
    if (!dComIfGp_getEvent().isOrderOK()) {
        uVar2 = 0;
        
        if (eventInfo.checkCommandCatch()) {
            return uVar2;
        }
    }
    return uVar2;
}

/* 80D56384-80D56418 000424 0094+00 1/1 0/0 0/0 .text            orderEvent__18daTag_BottleItem_cFv
 */
s32 daTag_BottleItem_c::orderEvent() {
    makeSoup();

    if (!daPy_py_c::checkNowWolf() && mBottleItemType != fpcNm_ITEM_EMPTY_BOTTLE) {
        attention_info.flags = 0x20000008;
    } else {
        attention_info.flags = 0;
    }

    if (attention_info.flags == 0x20000008) {
        attention_info.distances[fopAc_attn_TALK_e] = fpcNm_ITEM_EMPTY_BOTTLE;
        attention_info.distances[fopAc_attn_SPEAK_e] = fpcNm_ITEM_EMPTY_BOTTLE;
        eventInfo.onCondition(dEvtCnd_CANTALK_e);
    }

    return 1;
}

/* 80D56418-80D564A0 0004B8 0088+00 2/2 0/0 0/0 .text            makeSoup__18daTag_BottleItem_cFv */
void daTag_BottleItem_c::makeSoup() {
    if (mBottleItemType == fpcNm_ITEM_LV1_SOUP
           /* dSv_event_flag_c::F_0003 - Snowpeak Ruins - Handed over tomato puree and left room */
        && dComIfGs_isEventBit(2)) {
        mBottleItemType = fpcNm_ITEM_LV2_SOUP;
    }

    if (mBottleItemType == fpcNm_ITEM_LV2_SOUP
           /* dSv_event_flag_c::F_0004 - Snowpeak Ruins - Handed over secret ingredient and left room */
        && dComIfGs_isEventBit(1)) {
        mBottleItemType = fpcNm_ITEM_LV3_SOUP;
    }
}

/* 80D564A0-80D56568 000540 00C8+00 1/0 0/0 0/0 .text            wait__18daTag_BottleItem_cFPv */
int daTag_BottleItem_c::wait(void* param_0) {
    switch(mEventType) {
    case 1:
        if (eventInfo.checkCommandCatch() == 0){
            fopAc_ac_c* player = dComIfGp_getPlayer(0);
            cXyz pos = attention_info.position - player->attention_info.position;
        
            dComIfGp_att_CatchRequest(this,mBottleItemType,140.0f,pos.y+100.0f,pos.y-100.0f,0x2000,1);
            eventInfo.onCondition(dEvtCnd_40_e);
        }
    case 2:
    case 0:
    default:
        break;
    }
    return 1;
}

/* 80D56568-80D56588 000608 0020+00 1/0 0/0 0/0 .text            daTag_BottleItem_Create__FPv */
static s32 daTag_BottleItem_Create(void* i_this) {
    return static_cast<daTag_BottleItem_c*>(i_this)->create();
}

/* 80D56588-80D565A8 000628 0020+00 1/0 0/0 0/0 .text            daTag_BottleItem_Delete__FPv */
static s32 daTag_BottleItem_Delete(void* i_this) {
    return static_cast<daTag_BottleItem_c*>(i_this)->Delete();
}

/* 80D565A8-80D565C8 000648 0020+00 1/0 0/0 0/0 .text            daTag_BottleItem_Execute__FPv */
static s32 daTag_BottleItem_Execute(void* i_this) {
    return static_cast<daTag_BottleItem_c*>(i_this)->Execute();
}

/* 80D565C8-80D565E8 000668 0020+00 1/0 0/0 0/0 .text            daTag_BottleItem_Draw__FPv */
static s32 daTag_BottleItem_Draw(void* i_this) {
    return static_cast<daTag_BottleItem_c*>(i_this)->Draw();
}

/* 80D565E8-80D565F0 000688 0008+00 1/0 0/0 0/0 .text            daTag_BottleItem_IsDelete__FPv */
static s32 daTag_BottleItem_IsDelete(void* i_this) {
    return 1;
}

/* 80D565F0-80D56650 000690 0060+00 1/0 0/0 0/0 .text            __dt__18daTag_BottleItem_cFv */
daTag_BottleItem_c::~daTag_BottleItem_c() {}

static actor_method_class daTag_BottleItem_MethodTable = {
    (process_method_func)daTag_BottleItem_Create,
    (process_method_func)daTag_BottleItem_Delete,
    (process_method_func)daTag_BottleItem_Execute,
    (process_method_func)daTag_BottleItem_IsDelete,
    (process_method_func)daTag_BottleItem_Draw
};

/* 80D5669C-80D566CC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_BTLITM */
extern actor_process_profile_definition g_profile_TAG_BTLITM = {
    fpcLy_CURRENT_e,                // mLayerID
    7,                              // mListID
    fpcPi_CURRENT_e,                // mListPri
    PROC_TAG_SSDRINK,               // mProcName
    &g_fpcLf_Method.base,          // sub_method
    sizeof(daTag_BottleItem_c),     // mSize
    0,                              // mSizeOther
    0,                              // mParameters
    &g_fopAc_Method.base,           // sub_method
    70,                             // mPriority
    &daTag_BottleItem_MethodTable,  // sub_method
    0x64100,                        // mStatus
    5,                              // mActorType
    fopAc_CULLBOX_CUSTOM_e,         // cullType
};

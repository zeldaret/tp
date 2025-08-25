/**
 * d_a_tag_lantern.cpp
 * Tag - Lantern
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_lantern.h"
#include "d/d_procname.h"

/* 8048ECAC-8048ED28 0000EC 007C+00 1/0 0/0 0/0 .text            __dt__15daTag_Lantern_cFv */
daTag_Lantern_c::~daTag_Lantern_c() {}

/* 8048ED28-8048EDA8 000168 0080+00 1/1 0/0 0/0 .text            create__15daTag_Lantern_cFv */
int daTag_Lantern_c::create() {
    fopAcM_SetupActor(this, daTag_Lantern_c);
    initialize();
    return cPhs_COMPLEATE_e;
}

/* 8048EDA8-8048EDDC 0001E8 0034+00 1/1 0/0 0/0 .text            Delete__15daTag_Lantern_cFv */
int daTag_Lantern_c::Delete() {
    this->~daTag_Lantern_c();
    return 1;
}

/* 8048EDDC-8048EF6C 00021C 0190+00 2/2 0/0 0/0 .text            Execute__15daTag_Lantern_cFv */
int daTag_Lantern_c::Execute() {
    dComIfG_play_c& play = g_dComIfG_gameInfo.getPlay();  // fake match

    if (dComIfGp_event_runCheck()) {
        if (eventInfo.checkCommandTalk()) {
            if (!field_0x604) {
                mMsgFlow.init(this, mFlowIndex, 0, NULL);
                field_0x604++;
            } else if (field_0x604 == 1 && mMsgFlow.doFlow(this, NULL, 0)) {
                play.getEvent().reset();
                field_0x604 = 0;
                field_0x5f8 = 0;
            }
        }
    } else if (field_0x5f8) {
        eventInfo.onCondition(dEvtCnd_CANTALK_e);
        fopAcM_orderSpeakEvent(this, 0, 0);
    }

    mGndChk.SetPos(&current.pos);
    mGroundCross = dComIfG_Bgsp().GroundCross(&mGndChk);

    s32 room_no;
    if (mGroundCross != -1000000000.0f) {
        room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
        tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    } else {
        room_no = dComIfGp_roomControl_getStayNo();
    }

    tevStr.room_no = room_no;
    fopAcM_SetRoomNo(this, tevStr.room_no);
    attention_info.flags = 0;
    attention_info.position = current.pos;
    eyePos = attention_info.position;
    return 1;
}

/* 8048EF6C-8048EF74 0003AC 0008+00 1/1 0/0 0/0 .text            Draw__15daTag_Lantern_cFv */
int daTag_Lantern_c::Draw() {
    return 1;
}

/* 8048EF74-8048F024 0003B4 00B0+00 1/1 0/0 0/0 .text            initialize__15daTag_Lantern_cFv */
void daTag_Lantern_c::initialize() {
    fopAcM_setCullSizeBox(this, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);

    if (home.angle.z != 0xFFFF) {
        mFlowIndex = home.angle.z;
    } else {
        mFlowIndex = -1;
    }

    home.angle.z = 0;
    field_0x5fc = fopAcM_GetParam(this) & 0xFFF;

    scale.x *= 100.0f;
    scale.y *= 100.0f;
    scale.z *= 100.0f;

    Execute();
}

/* 8048F024-8048F044 000464 0020+00 1/0 0/0 0/0 .text            daTag_Lantern_Create__FPv */
static int daTag_Lantern_Create(void* i_this) {
    return static_cast<daTag_Lantern_c*>(i_this)->create();
}

/* 8048F044-8048F064 000484 0020+00 1/0 0/0 0/0 .text            daTag_Lantern_Delete__FPv */
static int daTag_Lantern_Delete(void* i_this) {
    return static_cast<daTag_Lantern_c*>(i_this)->Delete();
}

/* 8048F064-8048F084 0004A4 0020+00 1/0 0/0 0/0 .text            daTag_Lantern_Execute__FPv */
static int daTag_Lantern_Execute(void* i_this) {
    return static_cast<daTag_Lantern_c*>(i_this)->Execute();
}

/* 8048F084-8048F0A4 0004C4 0020+00 1/0 0/0 0/0 .text            daTag_Lantern_Draw__FPv */
static int daTag_Lantern_Draw(void* i_this) {
    return static_cast<daTag_Lantern_c*>(i_this)->Draw();
}

/* 8048F0A4-8048F0AC 0004E4 0008+00 1/0 0/0 0/0 .text            daTag_Lantern_IsDelete__FPv */
static int daTag_Lantern_IsDelete(void* i_this) {
    return 1;
}

/* 8048F1D4-8048F1D8 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daTag_Lantern_Param_c l_HIO;

/* 8048F154-8048F174 -00001 0020+00 1/0 0/0 0/0 .data            daTag_Lantern_MethodTable */
static actor_method_class daTag_Lantern_MethodTable = {
    (process_method_func)daTag_Lantern_Create,  (process_method_func)daTag_Lantern_Delete,
    (process_method_func)daTag_Lantern_Execute, (process_method_func)daTag_Lantern_IsDelete,
    (process_method_func)daTag_Lantern_Draw,
};

/* 8048F174-8048F1A4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_LANTERN */
extern actor_process_profile_definition g_profile_TAG_LANTERN = {
    fpcLy_CURRENT_e,             // mLayerID
    7,                           // mListID
    fpcPi_CURRENT_e,             // mListPrio
    PROC_TAG_LANTERN,            // mProcName
    &g_fpcLf_Method.base,       // sub_method
    sizeof(daTag_Lantern_c),     // mSize
    0,                           // mSizeOther
    0,                           // mParameters
    &g_fopAc_Method.base,        // sub_method
    286,                         // mPriority
    &daTag_Lantern_MethodTable,  // sub_method
    0x40000,                     // mStatus
    fopAc_ACTOR_e,               // mActorType
    fopAc_CULLBOX_CUSTOM_e,      // cullType
};

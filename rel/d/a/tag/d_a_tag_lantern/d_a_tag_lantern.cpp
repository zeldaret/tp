/**
 * d_a_tag_lantern.cpp
 * Tag - Lantern
 */

#include "rel/d/a/tag/d_a_tag_lantern/d_a_tag_lantern.h"
#include "JSystem/JKernel/JKRHeap.h"

/* 8048ECAC-8048ED28 0000EC 007C+00 1/0 0/0 0/0 .text            __dt__15daTag_Lantern_cFv */
daTag_Lantern_c::~daTag_Lantern_c() {}

/* 8048ED28-8048EDA8 000168 0080+00 1/1 0/0 0/0 .text            create__15daTag_Lantern_cFv */
int daTag_Lantern_c::create() {
    if (!fopAcM_CheckCondition(this, 8)) {
        new (this) daTag_Lantern_c();
        fopAcM_OnCondition(this, 8);
    }
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
    s32 sVar;
    dComIfG_play_c& play = g_dComIfG_gameInfo.getPlay(); // fake match
    if (i_dComIfGp_event_runCheck()) {
        if (mEvtInfo.mCommand == 1) {
            if (!field_0x604) {
                field_0x568.init(this, field_0x600, NULL, NULL);
                field_0x604 += 1;
            } else if (field_0x604 == 1 && field_0x568.doFlow(this, NULL, NULL)) {
                play.getEvent().reset();
                field_0x604 = 0;
                field_0x5f8 = 0;
            }
        }
    } else {
        if (field_0x5f8) {
            mEvtInfo.mCondition |= 1;
            fopAcM_orderSpeakEvent(this, 0, 0);
        }
    }
    field_0x5b4.SetPos(&current.pos);
    field_0x5f4 = dComIfG_Bgsp().GroundCross(&field_0x5b4);

    if (field_0x5f4 != -1000000000.0f) {
        sVar = dComIfG_Bgsp().GetRoomId(field_0x5b4);
        mTevStr.mEnvrIdxOverride = dComIfG_Bgsp().GetPolyColor(field_0x5b4);
    } else {
        sVar = dComIfGp_roomControl_getStayNo();
    }
    mTevStr.mRoomNo = sVar;
    fopAcM_SetRoomNo(this, mTevStr.mRoomNo);
    mAttentionInfo.mFlags = 0;
    mAttentionInfo.mPosition = current.pos;
    mEyePos = mAttentionInfo.mPosition;
    return 1;
}

/* 8048EF6C-8048EF74 0003AC 0008+00 1/1 0/0 0/0 .text            Draw__15daTag_Lantern_cFv */
int daTag_Lantern_c::Draw() {
    return 1;
}

/* 8048EF74-8048F024 0003B4 00B0+00 1/1 0/0 0/0 .text            initialize__15daTag_Lantern_cFv */
void daTag_Lantern_c::initialize() {
    fopAcM_setCullSizeBox(this, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
    if (orig.angle.z != 0xffff) {
        field_0x600 = orig.angle.z;
    } else {
        field_0x600 = -1;
    }
    orig.angle.z = 0;
    field_0x5fc = fopAcM_GetParam(this) & 0xfff;
    mScale.x *= 100.0f;
    mScale.y *= 100.0f;
    mScale.z *= 100.0f;
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

/* 8048F1C8-8048F1D4 000008 000C+00 1/1 0/0 0/0 .bss             @3622 */
static u8 lit_3622[12];

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
    -3,                          // mLayerID
    7,                           // mListID
    -3,                          // mListPrio
    PROC_TAG_LANTERN,            // mProcName
    &g_fpcLf_Method.mBase,       // mSubMtd
    sizeof(daTag_Lantern_c),     // mSize
    0,                           // mSizeOther
    0,                           // mParameters
    &g_fopAc_Method.base,        // mSubMtd
    0x011E,                      // mPriority
    &daTag_Lantern_MethodTable,  // mSubMtd
    0x00040000,                  // mStatus
    0,                           // mActorType
    14,                          // mCullType
};
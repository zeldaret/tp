/**
 * d_a_kytag07.cpp
 * Environment Tag 7
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_kytag07.h"
#include "d/d_stage.h"
#include "f_op/f_op_overlap_mng.h"

/* 8085A278-8085A280 000078 0008+00 1/0 0/0 0/0 .text            daKytag07_Draw__FP13kytag07_class
 */
static int daKytag07_Draw(kytag07_class* i_this) {
    return 1;
}

/* 8085A280-8085A334 000080 00B4+00 1/0 0/0 0/0 .text daKytag07_Execute__FP13kytag07_class */
static int daKytag07_Execute(kytag07_class* i_this) {
    if (i_this->field_0x58c != 99) {
        cLib_addCalc(&i_this->mLightInfluence.mPow, i_this->field_0x588, 0.1f, 1000.0f, 0.001f);
    } else {
        if (i_this->home.roomNo != dStage_roomControl_c::getStayNo()) {
            cLib_addCalc(&i_this->mLightInfluence.mPow, 0.0f, 0.25f, 10000.0f, 1.0f);
        }

        if (i_this->mLightInfluence.mPow <= 0.01f) {
            fopAcM_delete(i_this);
        }
    }

    return 1;
}

/* 8085A334-8085A388 000134 0054+00 1/0 0/0 0/0 .text daKytag07_IsDelete__FP13kytag07_class */
static int daKytag07_IsDelete(kytag07_class* i_this) {
    i_this->field_0x58c = 99;

    if (i_this->mLightInfluence.mPow <= 0.01f) {
        return 1;
    } else {
        return fopOvlpM_IsDoingReq() == 1 ? 1 : 0;
    }
}

/* 8085A388-8085A3B0 000188 0028+00 1/0 0/0 0/0 .text            daKytag07_Delete__FP13kytag07_class
 */
static int daKytag07_Delete(kytag07_class* i_this) {
    dKy_plight_cut(&i_this->mLightInfluence);
    return 1;
}

/* 8085A3B0-8085A47C 0001B0 00CC+00 1/0 0/0 0/0 .text            daKytag07_Create__FP10fopAc_ac_c */
static int daKytag07_Create(fopAc_ac_c* i_this) {
    kytag07_class* a_this = (kytag07_class*)i_this;

    fopAcM_SetupActor(a_this, kytag07_class);

    a_this->mLightInfluence.mPosition = i_this->current.pos;
    a_this->mLightInfluence.mColor.r = fopAcM_GetParam(i_this) & 0xFF;
    a_this->mLightInfluence.mColor.g = fopAcM_GetParam(i_this) >> 8 & 0xFF;
    a_this->mLightInfluence.mColor.b = fopAcM_GetParam(i_this) >> 16 & 0xFF;
    a_this->mLightInfluence.mPow = 1e-10;
    a_this->mLightInfluence.mFluctuation = 1.0f;
    a_this->field_0x588 = 1000.0f * i_this->scale.x;
    a_this->field_0x58c = 0;

    dKy_plight_priority_set(&a_this->mLightInfluence);
    return cPhs_COMPLEATE_e;
}

/* 8085A4A8-8085A4C8 -00001 0020+00 1/0 0/0 0/0 .data            l_daKytag07_Method */
static actor_method_class l_daKytag07_Method = {
    (process_method_func)daKytag07_Create, (process_method_func)daKytag07_Delete,
    (process_method_func)daKytag07_Execute, (process_method_func)daKytag07_IsDelete,
    (process_method_func)daKytag07_Draw};

/* 8085A4C8-8085A4F8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KYTAG07 */
extern actor_process_profile_definition g_profile_KYTAG07 = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_KYTAG07,           // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(kytag07_class),  // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    101,                    // mPriority
    &l_daKytag07_Method,    // sub_method
    0x44000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_0_e,      // cullType
};

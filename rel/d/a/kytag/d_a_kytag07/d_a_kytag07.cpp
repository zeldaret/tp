/**
 * d_a_kytag07.cpp
 * Environment Tag 7
 */

#include "rel/d/a/kytag/d_a_kytag07/d_a_kytag07.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/d_stage.h"
#include "d/d_procname.h"
#include "f_op/f_op_overlap_mng.h"

/* 8085A278-8085A280 000078 0008+00 1/0 0/0 0/0 .text            daKytag07_Draw__FP13kytag07_class
 */
static int daKytag07_Draw(kytag07_class* param_0) {
    return 1;
}

/* 8085A280-8085A334 000080 00B4+00 1/0 0/0 0/0 .text daKytag07_Execute__FP13kytag07_class */
static int daKytag07_Execute(kytag07_class* i_this) {
    if (i_this->field_0x58c != 99) {
        cLib_addCalc(&i_this->mLightInfluence.mPow,i_this->field_0x588,0.1f,1000.0f,0.001f);
    } else {
        if (i_this->orig.roomNo != dStage_roomControl_c::getStayNo()) {
            cLib_addCalc(&i_this->mLightInfluence.mPow,0.0f,0.25f,10000.0f,1.0f);
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
    kytag07_class* kytag07 = (kytag07_class*)i_this;
    
    fopAcM_SetupActor(kytag07, kytag07_class);

    kytag07->mLightInfluence.mPosition = kytag07->current.pos;
    kytag07->mLightInfluence.mColor.r = fopAcM_GetParam(i_this) & 0xFF;
    kytag07->mLightInfluence.mColor.g = fopAcM_GetParam(i_this) >> 8 & 0xFF;
    kytag07->mLightInfluence.mColor.b = fopAcM_GetParam(i_this) >> 16 & 0xFF;
    kytag07->mLightInfluence.mPow = 1e-10;
    kytag07->mLightInfluence.mFluctuation = 1.0f;
    kytag07->field_0x588 = 1000.0f * kytag07->mScale.x;
    kytag07->field_0x58c = 0;


    dKy_plight_priority_set(&kytag07->mLightInfluence);
    return cPhs_COMPLEATE_e;
}

/* ############################################################################################## */
/* 8085A4A8-8085A4C8 -00001 0020+00 1/0 0/0 0/0 .data            l_daKytag07_Method */
static actor_method_class l_daKytag07_Method = {
    (process_method_func)daKytag07_Create,
    (process_method_func)daKytag07_Delete,
    (process_method_func)daKytag07_Execute,
    (process_method_func)daKytag07_IsDelete,
    (process_method_func)daKytag07_Draw
};

/* 8085A4C8-8085A4F8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KYTAG07 */
extern actor_process_profile_definition g_profile_KYTAG07 = {
    -3,                      // mLayerID  
    7,                       // mListID
    -3,                      // mListPrio 
    PROC_KYTAG07,            // mProcName     
    &g_fpcLf_Method.mBase,   // mSubMtd                    
    sizeof(kytag07_class),   // mSize                     
    0,                       // mSizeOther
    0,                       // mParameters       
    &g_fopAc_Method.base,    // mSubMtd                   
    0x0065,                  // mPriority     
    &l_daKytag07_Method,     // mSubMtd                  
    0x00044000,              // mStatus          
    0,                       // mActorType
    0,                       // mCullType
};

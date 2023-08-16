/**
 * d_a_hitobj.cpp
 * 
 */

#include "rel/d/a/d_a_hitobj/d_a_hitobj.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/d_procname.h"
#include "f_op/f_op_kankyo_mng.h"

/* 8046B358-8046B360 000078 0008+00 1/0 0/0 0/0 .text            daHitobj_Draw__FP12hitobj_class */
static int daHitobj_Draw(hitobj_class* i_this) {
    return 1;
}

/* 8046B360-8046B3C8 000080 0068+00 1/0 0/0 0/0 .text            daHitobj_Execute__FP12hitobj_class
 */
static int daHitobj_Execute(hitobj_class* i_this) {
    if (i_this->field_0x572 != 0) {
        i_this->field_0x572--;
        i_this->field_0x5b0.SetC(i_this->current.pos);
        dComIfG_Ccsp()->Set(&i_this->field_0x5b0);
    } else {
        fopKyM_Delete(i_this);
    }

    return 1;
}

/* 8046B3C8-8046B3D0 0000E8 0008+00 1/0 0/0 0/0 .text            daHitobj_IsDelete__FP12hitobj_class
 */
static int daHitobj_IsDelete(hitobj_class* i_this) {
    return 1;
}

/* 8046B3D0-8046B400 0000F0 0030+00 1/0 0/0 0/0 .text            daHitobj_Delete__FP12hitobj_class
 */
static int daHitobj_Delete(hitobj_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase,"Hitobj");
    return 1;
}

/* ############################################################################################## */
/* 8046B5DC-8046B61C 000000 0040+00 1/1 0/0 0/0 .data            cc_sph_src$3657 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0, {{0, 0, 0x13}, {0, 3}, 0}},
        {dCcD_SE_NONE, 0, 0, 0, {0}},
        {dCcD_SE_NONE, 0, 0, 0, {0}},
        {0},
    },
    {
        {
            {0.0f, 0.0f, 0.0f},
            100.0f,
        },
    }
};

/* 8046B400-8046B53C 000120 013C+00 1/0 0/0 0/0 .text            daHitobj_Create__FP10fopAc_ac_c */
static int daHitobj_Create(fopAc_ac_c* i_this) {
    hitobj_class* hitobj = (hitobj_class*)i_this;
    fopAcM_SetupActor(i_this, hitobj_class);

    int ret = dComIfG_resLoad(&hitobj->mPhase,"Hitobj");

    if (ret == cPhs_COMPLEATE_e) {
        hitobj->field_0x570 = fopAcM_GetParam(hitobj);
        hitobj->field_0x574.Init(0xff,0xff,hitobj);
        hitobj->field_0x5b0.Set(cc_sph_src);
        hitobj->field_0x5b0.SetStts(&hitobj->field_0x574);
        hitobj->field_0x572 = 3;
    }

    return ret;
}

/* 8046B61C-8046B63C -00001 0020+00 1/0 0/0 0/0 .data            l_daHitobj_Method */
static actor_method_class l_daHitobj_Method = {
    (process_method_func)daHitobj_Create,
    (process_method_func)daHitobj_Delete,
    (process_method_func)daHitobj_Execute,
    (process_method_func)daHitobj_IsDelete,
    (process_method_func)daHitobj_Draw
};

/* 8046B63C-8046B66C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_HITOBJ */
extern actor_process_profile_definition g_profile_HITOBJ = {
    -3,                     // mLayerID   
    7,                      // mListID  
    -3,                     // mListPrio   
    PROC_HITOBJ,            // mProcName            
    &g_fpcLf_Method.mBase,  // mSubMtd                      
    sizeof(hitobj_class),   // mSize                      
    0,                      // mSizeOther  
    0,                      // mParameters         
    &g_fopAc_Method.base,   // mSubMtd                     
    0x02B2,                 // mPriority       
    &l_daHitobj_Method,     // mSubMtd                   
    0x00040000,             // mStatus            
    0,                      // mActorType  
    0,                      // mCullType  
};

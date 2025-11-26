/**
 * d_a_hitobj.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_hitobj.h"
#include "f_op/f_op_kankyo_mng.h"

/* 8046B358-8046B360 000078 0008+00 1/0 0/0 0/0 .text            daHitobj_Draw__FP12hitobj_class */
static int daHitobj_Draw(hitobj_class* i_this) {
    return 1;
}

/* 8046B360-8046B3C8 000080 0068+00 1/0 0/0 0/0 .text            daHitobj_Execute__FP12hitobj_class */
static int daHitobj_Execute(hitobj_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    
    if (i_this->mTimer != 0) {
        i_this->mTimer--;
        i_this->mSph.SetC(actor->current.pos);
        dComIfG_Ccsp()->Set(&i_this->mSph);
    } else {
        fopKyM_Delete(i_this);
    }

    return 1;
}

/* 8046B3C8-8046B3D0 0000E8 0008+00 1/0 0/0 0/0 .text            daHitobj_IsDelete__FP12hitobj_class */
static int daHitobj_IsDelete(hitobj_class* i_this) {
    return 1;
}

#if DEBUG
static char* dat_114287 = "Delete -> Hitobj(id=%d)\n";
#endif

/* 8046B3D0-8046B400 0000F0 0030+00 1/0 0/0 0/0 .text            daHitobj_Delete__FP12hitobj_class */
static int daHitobj_Delete(hitobj_class* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    dComIfG_resDelete(&i_this->mPhase,"Hitobj");
    return 1;
}

/* 8046B400-8046B53C 000120 013C+00 1/0 0/0 0/0 .text            daHitobj_Create__FP10fopAc_ac_c */
static int daHitobj_Create(fopAc_ac_c* a_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    fpc_ProcID id = fopAcM_GetID(a_this);
    fopAcM_ct(a_this, hitobj_class);
    hitobj_class* i_this = (hitobj_class*)a_this;

    int ret = dComIfG_resLoad(&i_this->mPhase,"Hitobj");

    if (ret == cPhs_COMPLEATE_e) {
        i_this->arg0 = fopAcM_GetParam(a_this);
        i_this->mStts.Init(0xFF, 0xFF, a_this);

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

        i_this->mSph.Set(cc_sph_src);
        i_this->mSph.SetStts(&i_this->mStts);
        i_this->mTimer = 3;
    }

    return ret;
}

#if DEBUG
static char* dat_114317 = "Create -> Hitobj(id=%d)\n";
#endif

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
    fpcLy_CURRENT_e,        // mLayerID   
    7,                      // mListID  
    fpcPi_CURRENT_e,        // mListPrio   
    PROC_HITOBJ,            // mProcName            
    &g_fpcLf_Method.base,  // sub_method                      
    sizeof(hitobj_class),   // mSize                      
    0,                      // mSizeOther  
    0,                      // mParameters         
    &g_fopAc_Method.base,   // sub_method                     
    690,                    // mPriority       
    &l_daHitobj_Method,     // sub_method                   
    0x40000,                // mStatus            
    fopAc_ACTOR_e,          // mActorType  
    fopAc_CULLBOX_0_e,      // cullType     
};

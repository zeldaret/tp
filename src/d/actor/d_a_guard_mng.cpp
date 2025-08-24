/**
 * d_a_guard_mng.cpp
 * Guard
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_guard_mng.h"
#include "f_pc/f_pc_executor.h"

/* 80837B18-80837B9C 000078 0084+00 1/1 0/0 0/0 .text            s_sub__FPvPv */
static void* s_sub(void* i_actorP, void* i_this) {
    if (fopAcM_IsActor(i_actorP)) {
        if (fopAcM_GetName(i_actorP) == PROC_NPC_CD3 || fopAcM_GetName(i_actorP) == PROC_NPC_PASSER || fopAcM_GetName(i_actorP) == PROC_NPC_FGUARD) {
            static_cast<daGuardMng_c*>(i_this)->countMerchantNum();
        } else {
            if (fopAcM_GetName(i_actorP) == PROC_TAG_GUARD) {
                static_cast<daGuardMng_c*>(i_this)->checkAppearTag((daTagGuard_c *)i_actorP);
            }
        }
    }
    
    return 0;
}

/* 80837B9C-80837BEC 0000FC 0050+00 1/1 0/0 0/0 .text            checkMerchantNum__12daGuardMng_cFv
 */
u8 daGuardMng_c::checkMerchantNum() {
    field_0x56c = 1000000000.0f;
    mMerchantNum = 0;
    fpcM_Search(s_sub,this);
    return mMerchantNum;
}

/* 80837BEC-80837C6C 00014C 0080+00 1/1 0/0 0/0 .text
 * checkAppearTag__12daGuardMng_cFP12daTagGuard_c               */
void daGuardMng_c::checkAppearTag(daTagGuard_c* i_this) {
    cXyz pos;
    if ((u8)i_this->getAppearPoint(&pos) != 0) {
        pos -= *fopAcM_GetPosition_p(dComIfGp_getPlayer(0));
        f32 pos_abs = pos.abs2();

        if (field_0x56c > pos_abs) {
            mpTagGuard = i_this;
            field_0x56c = pos_abs;
        }
    }
}

/* 80837C6C-80837D44 0001CC 00D8+00 1/0 0/0 0/0 .text daGuardMng_Execute__FP12daGuardMng_c */
static int daGuardMng_Execute(daGuardMng_c* i_this) {
    return i_this->execute();
}

/* 80837D44-80837D4C 0002A4 0008+00 1/0 0/0 0/0 .text daGuardMng_IsDelete__FP12daGuardMng_c */
static int daGuardMng_IsDelete(daGuardMng_c* param_0) {
    return 1;
}

/* 80837D4C-80837D7C 0002AC 0030+00 1/0 0/0 0/0 .text            daGuardMng_Delete__FP12daGuardMng_c
 */
static int daGuardMng_Delete(daGuardMng_c* i_this) {
    i_this->~daGuardMng_c();
    return 1;
}

/* 80837D7C-80837DDC 0002DC 0060+00 1/0 0/0 0/0 .text            daGuardMng_Create__FP10fopAc_ac_c
 */
static int daGuardMng_Create(fopAc_ac_c* i_this) {
    return static_cast<daGuardMng_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80837DF0-80837E10 -00001 0020+00 1/0 0/0 0/0 .data            l_daGuardMng_Method */
static actor_method_class l_daGuardMng_Method = {
    (process_method_func)daGuardMng_Create,
    (process_method_func)daGuardMng_Delete,
    (process_method_func)daGuardMng_Execute,
    (process_method_func)daGuardMng_IsDelete
};

/* 80837E10-80837E40 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_GUARD_MNG */
extern actor_process_profile_definition g_profile_GUARD_MNG = {
    fpcLy_CURRENT_e,        // mLayerID      
    7,                      // mListID    
    fpcPi_CURRENT_e,        // mListPrio     
    PROC_GUARD_MNG,         // mProcName                 
    &g_fpcLf_Method.base,  // sub_method                        
    sizeof(daGuardMng_c),   // mSize                        
    0,                      // mSizeOther    
    0,                      // mParameters           
    &g_fopAc_Method.base,   // sub_method                       
    407,                    // mPriority          
    &l_daGuardMng_Method,   // sub_method                       
    0x40100,                // mStatus              
    fopAc_ACTOR_e,          // mActorType    
    fopAc_CULLBOX_0_e,      // cullType   
};

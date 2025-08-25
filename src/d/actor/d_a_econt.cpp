/**
 * d_a_econt.cpp
 * Encounter
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_econt.h"
#include "d/d_timer.h"
#include "d/d_meter2_info.h"
#include "f_pc/f_pc_executor.h"

u8 data_805197E0[4];

/* 80519518-80519520 000078 0008+00 1/0 0/0 0/0 .text            daEcont_Draw__FP11econt_class */
static int daEcont_Draw(econt_class* i_this) {
    return 1;
}

/* 80519520-80519578 000080 0058+00 1/1 0/0 0/0 .text            s_rd_sub__FPvPv */
static void* s_rd_sub(void* i_this, void* param_1) {
    if (fopAcM_IsActor(i_this) && fopAcM_GetName(i_this) == PROC_E_RD) {
        data_805197E0[0]++;
    }
    return 0;
}

/* 80519578-80519664 0000D8 00EC+00 1/1 0/0 0/0 .text            rider_game__FP11econt_class */
static void rider_game(econt_class* i_this) {
    if (dComIfGs_isSwitch(0x2e,fopAcM_GetRoomNo(i_this)) && dComIfGp_event_runCheck() == 0) {
        data_805197E0[0] = 0;
        fpcM_Search(s_rd_sub,i_this);

        if (i_this->field_0x5b4 == 0) {
            if (i_this->field_0x5b8[0] == 0) {
                i_this->field_0x5b4 = 1;
                dMeter2Info_setMaxCount(data_805197E0[0]);
                dComIfG_TimerStart(8,0);
            } 
        } else if (data_805197E0[0] == 0) {
            fopAcM_delete(i_this);
            return;
        }

        dMeter2Info_setNowCount(data_805197E0[0]);
    }
}

/* 80519664-805196B4 0001C4 0050+00 1/0 0/0 0/0 .text            daEcont_Execute__FP11econt_class */
static int daEcont_Execute(econt_class* i_this) {
    for (int i = 0; i < 3; i++) {
        if (i_this->field_0x5b8[i] != 0) {
            i_this->field_0x5b8[i] -= 1;
        }
    }
    rider_game(i_this);
    return 1;
}

/* 805196B4-805196BC 000214 0008+00 1/0 0/0 0/0 .text            daEcont_IsDelete__FP11econt_class
 */
static int daEcont_IsDelete(econt_class* i_this) {
    return 1;
}

/* 805196BC-805196E4 00021C 0028+00 1/0 0/0 0/0 .text            daEcont_Delete__FP11econt_class */
static int daEcont_Delete(econt_class* i_this) {
    dComIfG_TimerDeleteRequest(8);
    return 1;
}

/* 805196E4-80519774 000244 0090+00 1/0 0/0 0/0 .text            daEcont_Create__FP10fopAc_ac_c */
static int daEcont_Create(fopAc_ac_c* i_this) {
    econt_class* encounter = (econt_class*)i_this;
    fopAcM_SetupActor(i_this, econt_class);
    dTimer_createTimer(8,0x989298,2,0,210.0f,410.0f,32.0f,419.0f);
    encounter->field_0x5b8[0] = 0x14;
    return cPhs_COMPLEATE_e;
    
}

/* ############################################################################################## */
/* 8051978C-805197AC -00001 0020+00 1/0 0/0 0/0 .data            l_daEcont_Method */
static actor_method_class l_daEcont_Method = {
    (process_method_func)daEcont_Create,
    (process_method_func)daEcont_Delete,
    (process_method_func)daEcont_Execute,
    (process_method_func)daEcont_IsDelete,
    (process_method_func)daEcont_Draw
};

/* 805197AC-805197DC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_ECONT */
extern actor_process_profile_definition g_profile_ECONT = {
    fpcLy_CURRENT_e,        // mLayerID   
    8,                      // mListID 
    fpcPi_CURRENT_e,        // mListPrio  
    PROC_ECONT,             // mProcName          
    &g_fpcLf_Method.base,  // sub_method                     
    sizeof(econt_class),    // mSize                    
    0,                      // mSizeOther 
    0,                      // mParameters        
    &g_fopAc_Method.base,   // sub_method                    
    155,                    // mPriority      
    &l_daEcont_Method,      // sub_method                 
    0x44000,                // mStatus           
    fopAc_ACTOR_e,          // mActorType 
    fopAc_CULLBOX_0_e,      // cullType
};

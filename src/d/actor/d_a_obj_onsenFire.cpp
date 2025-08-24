/**
 * d_a_obj_onsenFire.cpp
 * Object - Hotspring Fire
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_onsenFire.h"
#include "d/d_procname.h"

/* 80CA8278-80CA82F4 000078 007C+00 1/1 0/0 0/0 .text            create__16daObjOnsenFire_cFv */
int daObjOnsenFire_c::create() {
    fopAcM_SetupActor(this, daObjOnsenFire_c);
         /* dSv_event_flag_c::F_0377 - Castle Town - Goron spring water shop open! */
    if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[377])) {
        return cPhs_ERROR_e;
    }
    return cPhs_COMPLEATE_e;
}

/* 80CA82F4-80CA83FC 0000F4 0108+00 1/1 0/0 0/0 .text            execute__16daObjOnsenFire_cFv */
int daObjOnsenFire_c::execute() {
    dComIfGp_particle_setSimple(0x100,&current.pos,0xff,g_whiteColor,g_whiteColor,0,0.0f);
    dComIfGp_particle_setSimple(0x101,&current.pos,0xff,g_whiteColor,g_whiteColor,0,0.0f);
    dComIfGp_particle_setSimple(0x103,&current.pos,0xff,g_whiteColor,g_whiteColor,0,0.0f);
    Z2AudioMgr::getInterface()->seStartLevel(Z2SE_OBJ_ONSEN_WARM_FIRE,&current.pos,0,0,1.0f,1.0f,-1.0f,-1.0f,0);
    return 1;
}

/* 80CA83FC-80CA841C 0001FC 0020+00 1/0 0/0 0/0 .text daObjOnsenFire_Create__FP10fopAc_ac_c */
static int daObjOnsenFire_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjOnsenFire_c*>(i_this)->create();
}

/* 80CA841C-80CA843C 00021C 0020+00 1/0 0/0 0/0 .text daObjOnsenFire_Execute__FP16daObjOnsenFire_c
 */
static int daObjOnsenFire_Execute(daObjOnsenFire_c* i_this) {
    return i_this->execute();
}

/* 80CA843C-80CA846C 00023C 0030+00 1/0 0/0 0/0 .text daObjOnsenFire_Delete__FP16daObjOnsenFire_c
 */
static int daObjOnsenFire_Delete(daObjOnsenFire_c* i_this) {
    i_this->~daObjOnsenFire_c();
    return 1;
}

/* ############################################################################################## */
/* 80CA8480-80CA84A0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjOnsenFire_Method */
static actor_method_class l_daObjOnsenFire_Method = {
    (process_method_func)daObjOnsenFire_Create,
    (process_method_func)daObjOnsenFire_Delete,
    (process_method_func)daObjOnsenFire_Execute
};

/* 80CA84A0-80CA84D0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_ONSEN_FIRE */
extern actor_process_profile_definition g_profile_OBJ_ONSEN_FIRE = {
    fpcLy_CURRENT_e,           // mLayerID         
    3,                         // mListID       
    fpcPi_CURRENT_e,           // mListPrio        
    PROC_OBJ_ONSEN_FIRE,       // mProcName                           
    &g_fpcLf_Method.base,     // sub_method                           
    sizeof(daObjOnsenFire_c),  // mSize                               
    0,                         // mSizeOther       
    0,                         // mParameters              
    &g_fopAc_Method.base,      // sub_method                          
    612,                       // mPriority                 
    &l_daObjOnsenFire_Method,  // sub_method                              
    0x44000,                   // mStatus                 
    fopAc_ACTOR_e,             // mActorType       
    fopAc_CULLBOX_CUSTOM_e,    // cullType        
};

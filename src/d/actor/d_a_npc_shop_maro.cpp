/**
 * @file d_a_npc_shop_maro.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_shop_maro.h"

/* 80AEBE58-80AEBE78 000078 0020+00 1/0 0/0 0/0 .text            daNpc_shopMaro_Create__FPv */
static int daNpc_shopMaro_Create(void* i_this) {
    return static_cast<daNpc_shopMaro_c*>(i_this)->create();
}

/* 80AEBE78-80AEBE9C 000098 0024+00 1/0 0/0 0/0 .text            daNpc_shopMaro_Delete__FPv */
static int daNpc_shopMaro_Delete(void* i_this) {
    static_cast<daNpc_shopMaro_c*>(i_this)->deleteObject();
    return 1;
}

/* 80AEBE9C-80AEBEA4 0000BC 0008+00 1/0 0/0 0/0 .text            daNpc_shopMaro_Execute__FPv */
static bool daNpc_shopMaro_Execute(void* i_this) {
    return false;
}

/* 80AEBEA4-80AEBEAC 0000C4 0008+00 1/0 0/0 0/0 .text            daNpc_shopMaro_Draw__FPv */
static bool daNpc_shopMaro_Draw(void* i_this) {
    return false;
}

/* 80AEBEAC-80AEBEB4 0000CC 0008+00 1/0 0/0 0/0 .text            daNpc_shopMaro_IsDelete__FPv */
static bool daNpc_shopMaro_IsDelete(void* i_this) {
    return true;
}

/* 80AEBEB4-80AEBF04 0000D4 0050+00 1/1 0/0 0/0 .text            create__16daNpc_shopMaro_cFv */
int daNpc_shopMaro_c::create() {
    fopAcM_SetupActor(this, daNpc_shopMaro_c);
    return cPhs_ERROR_e;
}

/* ############################################################################################## */
/* 80AEC938-80AEC958 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_shopMaro_MethodTable */
static actor_method_class daNpc_shopMaro_MethodTable = {
    (process_method_func)daNpc_shopMaro_Create,
    (process_method_func)daNpc_shopMaro_Delete,
    (process_method_func)daNpc_shopMaro_Execute,
    (process_method_func)daNpc_shopMaro_IsDelete,
    (process_method_func)daNpc_shopMaro_Draw,
};

/* 80AEC958-80AEC988 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SMARO */
extern actor_process_profile_definition g_profile_NPC_SMARO = {
    fpcLy_CURRENT_e,             // mLayerID
    7,                           // mListID
    fpcPi_CURRENT_e,             // mListPrio
    PROC_NPC_SMARO,              // mProcName
    &g_fpcLf_Method.base,       // sub_method
    sizeof(daNpc_shopMaro_c),    // mSize
    0,                           // mSizeOther
    0,                           // mParameters
    &g_fopAc_Method.base,        // sub_method
    365,                         // mPriority
    &daNpc_shopMaro_MethodTable, // sub_method
    0x00040000,                  // mStatus
    fopAc_ACTOR_e,               // mActorType
    fopAc_CULLBOX_0_e,           // cullType
  };

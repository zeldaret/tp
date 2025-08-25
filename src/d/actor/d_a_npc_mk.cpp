/**
 * @file d_a_npc_mk.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_mk.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static bool daNpc_Mk_Create__FPv();
extern "C" static bool daNpc_Mk_Delete__FPv();
extern "C" static bool daNpc_Mk_Execute__FPv();
extern "C" static bool daNpc_Mk_Draw__FPv();
extern "C" static bool daNpc_Mk_IsDelete__FPv();

//
// External References:
//


//
// Declarations:
//

/* 80A73DD8-80A73DE0 000078 0008+00 1/0 0/0 0/0 .text            daNpc_Mk_Create__FPv */
static bool daNpc_Mk_Create(void* param_0) {
    return true;
}

/* 80A73DE0-80A73DE8 000080 0008+00 1/0 0/0 0/0 .text            daNpc_Mk_Delete__FPv */
static bool daNpc_Mk_Delete(void* param_0) {
    return true;
}

/* 80A73DE8-80A73DF0 000088 0008+00 1/0 0/0 0/0 .text            daNpc_Mk_Execute__FPv */
static bool daNpc_Mk_Execute(void* param_0) {
    return true;
}

/* 80A73DF0-80A73DF8 000090 0008+00 1/0 0/0 0/0 .text            daNpc_Mk_Draw__FPv */
static bool daNpc_Mk_Draw(void* param_0) {
    return true;
}

/* 80A73DF8-80A73E00 000098 0008+00 1/0 0/0 0/0 .text            daNpc_Mk_IsDelete__FPv */
static bool daNpc_Mk_IsDelete(void* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80A73E08-80A73E28 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Mk_MethodTable */
static actor_method_class daNpc_Mk_MethodTable = {
    (process_method_func)daNpc_Mk_Create__FPv,
    (process_method_func)daNpc_Mk_Delete__FPv,
    (process_method_func)daNpc_Mk_Execute__FPv,
    (process_method_func)daNpc_Mk_IsDelete__FPv,
    (process_method_func)daNpc_Mk_Draw__FPv,
};

/* 80A73E28-80A73E58 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_MK */
extern actor_process_profile_definition g_profile_NPC_MK = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_NPC_MK,           // mProcName
  &g_fpcLf_Method.base, // sub_method
  0x00000001,            // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  427,                   // mPriority
  &daNpc_Mk_MethodTable, // sub_method
  0x020C4407,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

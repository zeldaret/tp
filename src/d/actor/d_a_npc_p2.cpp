/**
 * @file d_a_npc_p2.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_p2.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static bool daNpc_P2Create__FPv();
extern "C" static bool daNpc_P2Delete__FPv();
extern "C" static bool daNpc_P2Execute__FPv();
extern "C" static bool daNpc_P2Draw__FPv();
extern "C" static bool daNpc_P2IsDelete__FPv();

//
// External References:
//


//
// Declarations:
//

/* 80A92BF8-80A92C00 000078 0008+00 1/0 0/0 0/0 .text            daNpc_P2Create__FPv */
static bool daNpc_P2Create(void* param_0) {
    return true;
}

/* 80A92C00-80A92C08 000080 0008+00 1/0 0/0 0/0 .text            daNpc_P2Delete__FPv */
static bool daNpc_P2Delete(void* param_0) {
    return true;
}

/* 80A92C08-80A92C10 000088 0008+00 1/0 0/0 0/0 .text            daNpc_P2Execute__FPv */
static bool daNpc_P2Execute(void* param_0) {
    return true;
}

/* 80A92C10-80A92C18 000090 0008+00 1/0 0/0 0/0 .text            daNpc_P2Draw__FPv */
static bool daNpc_P2Draw(void* param_0) {
    return true;
}

/* 80A92C18-80A92C20 000098 0008+00 1/0 0/0 0/0 .text            daNpc_P2IsDelete__FPv */
static bool daNpc_P2IsDelete(void* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80A92C28-80A92C48 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_P2MethodTable */
static actor_method_class daNpc_P2MethodTable = {
    (process_method_func)daNpc_P2Create__FPv,
    (process_method_func)daNpc_P2Delete__FPv,
    (process_method_func)daNpc_P2Execute__FPv,
    (process_method_func)daNpc_P2IsDelete__FPv,
    (process_method_func)daNpc_P2Draw__FPv,
};

/* 80A92C48-80A92C78 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_P2 */
extern actor_process_profile_definition g_profile_NPC_P2 = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_NPC_P2,           // mProcName
  &g_fpcLf_Method.base, // sub_method
  0x00000001,            // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  428,                   // mPriority
  &daNpc_P2MethodTable,  // sub_method
  0x020C4407,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/**
 * @file d_a_npc_kdk.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_kdk.h"
#include "dol2asm.h"

/* ############################################################################################## */
/* 80A2A8E0-80A2A910 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KDK */
extern actor_process_profile_definition g_profile_NPC_KDK = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_KDK,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcKdk_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  320,                    // mPriority
  NULL,                   // sub_method
  0x00044107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

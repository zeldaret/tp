/**
 * @file d_a_npc_henna0.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_henna0.h"
#include "dol2asm.h"
//
// Declarations:
//

/* ############################################################################################## */
/* 80A013E0-80A01410 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_HENNA0 */
extern actor_process_profile_definition g_profile_NPC_HENNA0 = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_HENNA0,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(d_a_npc_henna0), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  343,                    // mPriority
  NULL,                   // sub_method
  0x00044100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

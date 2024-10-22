/**
 * @file d_a_path_line.cpp
 * 
*/

#include "d/actor/d_a_path_line.h"
#include "f_op/f_op_actor_mng.h"
#include "dol2asm.h"

/* ############################################################################################## */
/* 80485780-804857B4 -00001 0034+00 0/0 0/0 1/0 .data            g_profile_PATH_LINE */
extern actor_process_profile_definition2 g_profile_PATH_LINE = {
  fpcLy_CURRENT_e,       // mLayerID
  9,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_PATH_LINE,        // mProcName
  &g_fpcLf_Method.mBase, // sub_method
  0x00000574,            // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  758,                   // mPriority
  NULL,                  // sub_method
  0x00060000,            // mStatus
  fopAc_UNK_GROUP_5_e,   // mActorType
  fopAc_CULLBOX_0_e,     // cullType
  0                      // field_0x30
};
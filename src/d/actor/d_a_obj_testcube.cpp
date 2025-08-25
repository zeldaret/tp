/**
 * @file d_a_obj_testcube.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_testcube.h"
#include "dol2asm.h"

/* ############################################################################################## */
/* 80D0BB60-80D0BB90 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_TestCube */
extern actor_process_profile_definition g_profile_Obj_TestCube = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_TestCube,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  0x000005A0,             // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  442,                    // mPriority
  NULL,                   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

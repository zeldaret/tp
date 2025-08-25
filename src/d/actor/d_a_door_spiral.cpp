//
// Door Spiral
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_door_spiral.h"
#include "f_op/f_op_actor.h"

extern actor_process_profile_definition g_profile_SPIRAL_DOOR = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_SPIRAL_DOOR,       // mProcName
    &g_fpcLf_Method.base,  // sub_method
    0x6b0,                  // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    301,                    // mPriority
    NULL,     // sub_method
    0x44000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_6_e,      // cullType
};

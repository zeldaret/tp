/**
 * @file d_a_tag_myna2.cpp
 * @brief Tag - Creates Plumm's actor.
 */

#include "rel/d/a/tag/d_a_tag_myna2/d_a_tag_myna2.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/d_procname.h"

// clib_calcTimer 
extern "C" void func_80D5CA18(s16*);

/* 80D5C698-80D5C708 000078 0070+00 1/1 0/0 0/0 .text            create__12daTagMyna2_cFv */
s32 daTagMyna2_c::create() {
    fopAcM_SetupActor(this, daTagMyna2_c);
    mSwitchNo = getSwBit();
    mMode = getMode();
    mTimer = 5;
    return cPhs_COMPLEATE_e;
}

/* 80D5C708-80D5C9A8 0000E8 02A0+00 1/1 0/0 0/0 .text            execute__12daTagMyna2_cFv */
s32 daTagMyna2_c::execute() {
    if (!i_dComIfGp_event_runCheck()) {
        if (!dComIfGs_isSwitch(mSwitchNo,fopAcM_GetRoomNo(this))) {
            if ((dComIfGp_getPlayer(0)->current.pos - current.pos).absXZ() < getExtent()) {
                s16 angle_y = (s16)fopAcM_searchPlayerAngleY(this);
                csXyz actor_angle(0x1e,angle_y,0);
                cXyz actor_pos = current.pos;
                actor_pos.y += 1000.0f;

                if (fopAcM_gc_c::gndCheck(&actor_pos) != 0) {
                    actor_pos.y = fopAcM_gc_c::getGroundY();
                } else {
                    actor_pos = current.pos;
                }

                if (mTimer == 0) {
                    s32 actor_create = fopAcM_create(PROC_MYNA2, (mSwitchNo << 8 | 0xffff0001), &actor_pos, fopAcM_GetRoomNo(this), &actor_angle, 0, 0xffffffff);

                    if (actor_create != 0xFFFFFFFF) {
                        dComIfGs_onSwitch(mSwitchNo,fopAcM_GetRoomNo(this));
                    }
                }
            }
        }
    }
  
    if (i_dComIfGp_event_runCheck()) {
        mTimer = 5;
    } else {
        // func_80D5CA18 is clib_calcTimer. 
        // It should be compiler generated, but it causes matching issues currently.
        func_80D5CA18(&mTimer);
    }

    return 1;
}

/* 80D5C9A8-80D5C9C8 000388 0020+00 1/0 0/0 0/0 .text            daTagMyna2_Create__FP10fopAc_ac_c
 */
static s32 daTagMyna2_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagMyna2_c*>(i_this)->create();
}

/* 80D5C9C8-80D5C9E8 0003A8 0020+00 1/0 0/0 0/0 .text daTagMyna2_Execute__FP12daTagMyna2_c */
static s32 daTagMyna2_Execute(daTagMyna2_c* i_this) {
    return i_this->execute();
}

/* 80D5C9E8-80D5CA18 0003C8 0030+00 1/0 0/0 0/0 .text            daTagMyna2_Delete__FP12daTagMyna2_c
 */
static s32 daTagMyna2_Delete(daTagMyna2_c* i_this) {
    i_this->~daTagMyna2_c();
    return 1;
}

/* 80D5CA18-80D5CA34 0003F8 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<s>__FPs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80D5CA18(s16* param_0) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_myna2/d_a_tag_myna2/func_80D5CA18.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D5CA64-80D5CA84 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagMyna2_Method */
static actor_method_class l_daTagMyna2_Method = {
    (process_method_func)daTagMyna2_Create,
    (process_method_func)daTagMyna2_Delete,
    (process_method_func)daTagMyna2_Execute,
};

/* 80D5CA84-80D5CAB4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_MYNA2 */
extern actor_process_profile_definition g_profile_TAG_MYNA2 = {
    -3,                     // mLayerID
    7,                      // mListID
    -3,                     // mListPrio
    PROC_TAG_MYNA2,         // mProcName
    &g_fpcLf_Method.mBase,  // mSubMtd
    sizeof(daTagMyna2_c),   // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // mSubMtd
    0x0000018A,             // mPriority
    &l_daTagMyna2_Method,   // mSubMtd
    0x00044000,             // mStatus
    0,                      // mActorType
    0xE                     // mCullType
};

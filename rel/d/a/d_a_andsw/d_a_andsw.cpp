/**
 * d_a_andsw.cpp
 * AND - Switch
 */

#include "rel/d/a/d_a_andsw/d_a_andsw.h"
#include "d/d_procname.h"

/* 80457978-804579B8 000078 0040+00 1/1 0/0 0/0 .text            Create__9daAndsw_cFv */
int daAndsw_c::Create() {
    mSwNo = getSwNo();
    mSwNo2 = getSwNo2();
    u16 timer = getTimer();

    timer != 0xFF ? mTimer = getTimer() * 15 : mTimer = 0;

    return 1;
}

/* 804579B8-80457A20 0000B8 0068+00 1/1 0/0 0/0 .text            create__9daAndsw_cFv */
int daAndsw_c::create() {
    if (!fopAcM_CheckCondition(this, 8)) {
        new (this) daAndsw_c();
        fopAcM_OnCondition(this, 8);
    }
    if (!Create()) {
        return cPhs_ERROR_e;
    }
    return cPhs_COMPLEATE_e;
}

/* 80457A20-80457ABC 000120 009C+00 1/1 0/0 0/0 .text            execute__9daAndsw_cFv */
int daAndsw_c::execute() {
    if (i_fopAcM_isSwitch(this,mSwNo2)) {
        if (0 < mTimer) {
            mTimer--;
        }

        if (mTimer == 0) {
            i_fopAcM_offSwitch(this,mSwNo);
        
            if (getType() == 1) {
                fopAcM_delete(this);
            }
        }
    }

    return 1;
}

/* 80457ABC-80457AC4 0001BC 0008+00 1/1 0/0 0/0 .text            _delete__9daAndsw_cFv */
int daAndsw_c::_delete() {
    return 1;
}

/* 80457AC4-80457AE4 0001C4 0020+00 1/0 0/0 0/0 .text            daAndsw_Execute__FP9daAndsw_c */
static int daAndsw_Execute(daAndsw_c* i_this) {
    return i_this->execute();
}

/* 80457AE4-80457B04 0001E4 0020+00 1/0 0/0 0/0 .text            daAndsw_Delete__FP9daAndsw_c */
static int daAndsw_Delete(daAndsw_c* i_this) {
    return i_this->_delete();
}

/* 80457B04-80457B24 000204 0020+00 1/0 0/0 0/0 .text            daAndsw_Create__FP10fopAc_ac_c */
static int daAndsw_Create(fopAc_ac_c* i_this) {
    return static_cast<daAndsw_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80457B2C-80457B4C -00001 0020+00 1/0 0/0 0/0 .data            l_daAndsw_Method */
static actor_method_class l_daAndsw_Method = {
    (process_method_func)daAndsw_Create,
    (process_method_func)daAndsw_Delete,
    (process_method_func)daAndsw_Execute
};

/* 80457B4C-80457B7C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_ANDSW */
extern actor_process_profile_definition g_profile_ANDSW = {
    -3,                     // mLayerID
    7,                      // mListID
    -3,                     // mListPrio
    PROC_ANDSW,             // mProcName
    0,                      // padding
    &g_fpcLf_Method.mBase,  // mSubMtd
    sizeof(daAndsw_c),      // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // mSubMtd
    0x012E,                 // mPriority
    0,                      // padding
    0,                      // padding
    &l_daAndsw_Method,      // mSubMtd
    0x00040000,             // mStatus
    0,                      // mActorType
    0x0E,                   // mCullType
    0,                      // padding
    0                       // padding
};

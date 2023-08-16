/**
 * d_a_swTime.cpp
 * Switch Time
 */

#include "rel/d/a/d_a_swTime/d_a_swTime.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/d_procname.h"


/* 80D4F638-80D4F660 000078 0028+00 1/1 0/0 0/0 .text            Create__10daSwTime_cFv */
int daSwTime_c::Create() {
    mTime = getTime();
    mSwbit = getSwbit();
    mSwbit2 = getSwbit2();
    return 1;
}

/* 80D4F660-80D4F6C8 0000A0 0068+00 1/1 0/0 0/0 .text            create__10daSwTime_cFv */
int daSwTime_c::create() {
    fopAcM_SetupActor(this, daSwTime_c);
    if (!Create()) {
        return cPhs_ERROR_e;
    }
    return cPhs_COMPLEATE_e;
}

/* 80D4F6C8-80D4F758 000108 0090+00 1/1 0/0 0/0 .text            execute__10daSwTime_cFv */
int daSwTime_c::execute() {
    if (mSwbit2 != 0xFF && !i_fopAcM_isSwitch(this,mSwbit2)) {
        return 1;
    }

    if (dKy_getdaytime_hour() == mTime && dKy_getdaytime_minute() == 0) {
        i_fopAcM_onSwitch(this,mSwbit);
    }

    return 1;
}

/* 80D4F758-80D4F760 000198 0008+00 1/1 0/0 0/0 .text            _delete__10daSwTime_cFv */
int daSwTime_c::_delete() {
    return 1;
}

/* 80D4F760-80D4F780 0001A0 0020+00 1/0 0/0 0/0 .text            daSwTime_Execute__FP10daSwTime_c */
static int daSwTime_Execute(daSwTime_c* i_this) {
    return i_this->execute();
}

/* 80D4F780-80D4F7A0 0001C0 0020+00 1/0 0/0 0/0 .text            daSwTime_Delete__FP10daSwTime_c */
static int daSwTime_Delete(daSwTime_c* i_this) {
    return i_this->_delete();
}

/* 80D4F7A0-80D4F7C0 0001E0 0020+00 1/0 0/0 0/0 .text            daSwTime_Create__FP10daSwTime_c */
static int daSwTime_Create(daSwTime_c* i_this) {
    return i_this->create();
}

/* ############################################################################################## */
/* 80D4F7C8-80D4F7E8 -00001 0020+00 1/0 0/0 0/0 .data            l_daSwTime_Method */
static actor_method_class l_daSwTime_Method = {
    (process_method_func)daSwTime_Create,
    (process_method_func)daSwTime_Delete,
    (process_method_func)daSwTime_Execute
};

/* 80D4F7E8-80D4F818 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_SwTime */
extern actor_process_profile_definition g_profile_SwTime = {
    -3,                     // mLayerID
    7,                      // mListID
    -3,                     // mListPrio
    PROC_SwTime,            // mProcName
    &g_fpcLf_Method.mBase,  // mSubMtd
    sizeof(daSwTime_c),     // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // mSubMtd
    0x0240,                 // mPriority
    &l_daSwTime_Method,     // mSubMtd
    0x00040100,             // mStatus
    0,                      // mActorType
    0x0E,                   // mCullType
};

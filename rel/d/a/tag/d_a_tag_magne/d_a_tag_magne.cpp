/**
 * d_a_tag_magne.cpp
 *
 */

#include "rel/d/a/tag/d_a_tag_magne/d_a_tag_magne.h"
#include "d/d_procname.h"

/* 805A5498-805A54DC 000078 0044+00 1/1 0/0 0/0 .text            Create__12daTagMagne_cFv */
int daTagMagne_c::Create() {
    if (mTagMagne != NULL) {
        return 0;
    }

    mTagMagne = this;
    mSwNo1 = getSwNo1();
    mSwNo2 = getSwNo2();
    mSwNo3 = getSwNo3();

    return 1;
}

/* 805A54DC-805A5578 0000BC 009C+00 1/1 0/0 0/0 .text            create__12daTagMagne_cFv */
int daTagMagne_c::create() {
    if (!fopAcM_CheckCondition(this, 8)) {
        new (this) daTagMagne_c();
        fopAcM_OnCondition(this, 8);
    }

    if (mTagMagne != NULL && mTagMagne->current.mRoomNo != current.mRoomNo) {
        return cPhs_ZERO_e;
    }

    if (!Create()) {
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

/* 805A5578-805A558C 000158 0014+00 1/1 0/0 0/0 .text            _delete__12daTagMagne_cFv */
int daTagMagne_c::_delete() {
    mTagMagne = NULL;
    return 1;
}

/* 805A558C-805A55AC 00016C 0020+00 1/0 0/0 0/0 .text            daTagMagne_Delete__FP12daTagMagne_c
 */
static void daTagMagne_Delete(daTagMagne_c* i_this) {
    i_this->_delete();
}

/* 805A55AC-805A55CC 00018C 0020+00 1/0 0/0 0/0 .text            daTagMagne_Create__FP10fopAc_ac_c
 */
static void daTagMagne_Create(fopAc_ac_c* i_this) {
    ((daTagMagne_c*)i_this)->create();
}

/* ############################################################################################## */
/* 805A55D4-805A55F4 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagMagne_Method */
static actor_method_class l_daTagMagne_Method = {
    (process_method_func)daTagMagne_Create,
    (process_method_func)daTagMagne_Delete,
    (process_method_func)NULL,
    (process_method_func)NULL,
    (process_method_func)NULL,
};

/* 805A55F4-805A5624 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Magne */
extern actor_process_profile_definition g_profile_Tag_Magne = {
    -3,
    7,
    0xFFFD,
    PROC_Tag_Magne,
    0,
    &g_fpcLf_Method.mBase,
    sizeof(daTagMagne_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x024E,
    0,
    0,
    &l_daTagMagne_Method,
    0x00040000,
    0,
    14,
    0,
    0,
};

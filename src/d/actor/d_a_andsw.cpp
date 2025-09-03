/**
 * d_a_andsw.cpp
 * AND - Switch
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_andsw.h"
#include "d/d_procname.h"

#ifdef DEBUG
daAndsw_HIO_c l_HIO;

daAndsw_HIO_c::daAndsw_HIO_c() {
    field_0x6 = 0;
}

void daAndsw_HIO_c::genMessage(JORMContext* ctx) {
    ctx->genLabel("ＳＷ監視", 0, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genCheckBox("ＳＷ状態出力", &field_0x6, 0x01, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
}
#endif

/* 80457978-804579B8 000078 0040+00 1/1 0/0 0/0 .text            Create__9daAndsw_cFv */
int daAndsw_c::Create() {
    mSwNo = getSwNo();
    mSwNo2 = getSwNo2();

    if (getTimer() != 0xFF) {
        mTimer = getTimer() * 15;
    } else {
        mTimer = 0;
    }

    OS_REPORT("ANDSW PARAM 0x%x\n", fopAcM_GetParam(this));

    return 1;
}

/* 804579B8-80457A20 0000B8 0068+00 1/1 0/0 0/0 .text            create__9daAndsw_cFv */
int daAndsw_c::create() {
    fopAcM_SetupActor(this, daAndsw_c);
    if (!Create()) {
        return cPhs_ERROR_e;
    }

#ifdef DEBUG
    l_HIO.entryHIO("ＳＷ監視");
#endif

    return cPhs_COMPLEATE_e;
}

/* 80457A20-80457ABC 000120 009C+00 1/1 0/0 0/0 .text            execute__9daAndsw_cFv */
int daAndsw_c::execute() {
    if (fopAcM_isSwitch(this,mSwNo2)) {
        if (0 < mTimer) {
            mTimer--;
        }

        if (mTimer == 0) {
            fopAcM_offSwitch(this,mSwNo);

#ifdef DEBUG
            if (l_HIO.field_0x6 != 0) {
                OS_REPORT("-- ＳＷ監視状態出力 --\n");
                OS_REPORT("sw<%d>ＯＦＦしました\n", mSwNo);
            }
#endif
        
            if (getType() == 1) {
                fopAcM_delete(this);
                OS_REPORT("ＳＷ監視：ＳＷＯＦＦしたので処理終わりますSW<%d>\n", mSwNo);
            }
        }
    }
#ifdef DEBUG
    else if (l_HIO.field_0x6 != 0) {
        OS_REPORT("sw2<%d>を待っています\n", mSwNo2);
        l_HIO.field_0x6 = 0;
    }
#endif

    return 1;
}

/* 80457ABC-80457AC4 0001BC 0008+00 1/1 0/0 0/0 .text            _delete__9daAndsw_cFv */
int daAndsw_c::_delete() {
#ifdef DEBUG
    l_HIO.removeHIO();
#endif
    return 1;
}

/* 80457AC4-80457AE4 0001C4 0020+00 1/0 0/0 0/0 .text            daAndsw_Execute__FP9daAndsw_c */
static int daAndsw_Execute(daAndsw_c* i_this) {
    return i_this->execute();
}

/* 80457AE4-80457B04 0001E4 0020+00 1/0 0/0 0/0 .text            daAndsw_Delete__FP9daAndsw_c */
static int daAndsw_Delete(daAndsw_c* i_this) {
    fopAcM_RegisterDeleteID(i_this, "Andsw");
    return i_this->_delete();
}

/* 80457B04-80457B24 000204 0020+00 1/0 0/0 0/0 .text            daAndsw_Create__FP10fopAc_ac_c */
static int daAndsw_Create(fopAc_ac_c* i_this) {
    fopAcM_RegisterCreateID(daAndsw_c, i_this, "Andsw");
    return a_this->create();
}

/* ############################################################################################## */
/* 80457B2C-80457B4C -00001 0020+00 1/0 0/0 0/0 .data            l_daAndsw_Method */
static actor_method_class l_daAndsw_Method = {
    (process_method_func)daAndsw_Create,
    (process_method_func)daAndsw_Delete,
    (process_method_func)daAndsw_Execute,
    (process_method_func)NULL,
    (process_method_func)NULL,
};

/* 80457B4C-80457B7C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_ANDSW */
extern actor_process_profile_definition g_profile_ANDSW = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_ANDSW,             // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daAndsw_c),      // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    302,                    // mPriority
    &l_daAndsw_Method,      // sub_method
    0x40000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};

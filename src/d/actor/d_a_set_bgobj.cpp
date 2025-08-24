/**
 * d_a_set_bgobj.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_set_bgobj.h"
#include "stdio.h"
#include "f_op/f_op_actor_mng.h"

/* 80485F00-80485F0C 000000 0009+03 1/1 0/0 0/0 .rodata          l_specName */
static const char l_specName[] = "spec.dat";

/* 80485D78-80485DFC 000078 0084+00 1/1 0/0 0/0 .text            CreateInit__12daSetBgObj_cFv */
int daSetBgObj_c::CreateInit() {
    static s16 l_bg_profName[5] = {
        PROC_BG_OBJ, PROC_BG_OBJ, PROC_BG_OBJ, PROC_Obj_Flag2, PROC_Obj_Flag3,
    };

    u16* spec_data_p = (u16*)dComIfG_getObjectRes(mArcName, l_specName);
    fopAcM_create(l_bg_profName[*spec_data_p], fopAcM_GetParam(this), &current.pos,
                  fopAcM_GetRoomNo(this), &current.angle, &scale, -1);

    return 1;
}

/* 80485DFC-80485E88 0000FC 008C+00 1/1 0/0 0/0 .text            create__12daSetBgObj_cFv */
int daSetBgObj_c::create() {
    fopAcM_SetupActor(this, daSetBgObj_c);

    sprintf(mArcName, "%s", getArcName(this));

    int phase = dComIfG_resLoad(&mPhase, mArcName);
    if (phase == cPhs_COMPLEATE_e) {
        CreateInit();
        phase = cPhs_ERROR_e;
    }

    return phase;
}

/* 80485E88-80485EB8 000188 0030+00 1/1 0/0 0/0 .text            Delete__12daSetBgObj_cFv */
int daSetBgObj_c::Delete() {
    dComIfG_resDelete(&mPhase, mArcName);
    return 1;
}

/* 80485EB8-80485ED8 0001B8 0020+00 1/0 0/0 0/0 .text            daSetBgObj_Delete__FP12daSetBgObj_c
 */
static int daSetBgObj_Delete(daSetBgObj_c* i_this) {
    return i_this->Delete();
}

/* 80485ED8-80485EF8 0001D8 0020+00 1/0 0/0 0/0 .text            daSetBgObj_Create__FP10fopAc_ac_c
 */
static int daSetBgObj_Create(fopAc_ac_c* i_this) {
    return static_cast<daSetBgObj_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80485F1C-80485F3C -00001 0020+00 1/0 0/0 0/0 .data            l_daSetBgObj_Method */
static actor_method_class l_daSetBgObj_Method = {
    (process_method_func)daSetBgObj_Create,
    (process_method_func)daSetBgObj_Delete,
};

/* 80485F3C-80485F6C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_SET_BG_OBJ */
extern actor_process_profile_definition g_profile_SET_BG_OBJ = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_SET_BG_OBJ,
    &g_fpcLf_Method.base,
    sizeof(daSetBgObj_c),
    0,
    0,
    &g_fopAc_Method.base,
    754,
    &l_daSetBgObj_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

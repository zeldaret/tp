/**
 * d_a_tag_telop.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_telop.h"
#include "f_op/f_op_actor_mng.h"
#include "f_op/f_op_msg_mng.h"

/* 80490A58-80490AF8 000078 00A0+00 1/1 0/0 0/0 .text            create__13daTag_Telop_cFv */
int daTag_Telop_c::create() {
    fopAcM_SetupActor(this, daTag_Telop_c);

    mMessageNo = getMessageNo();

    if (dComIfGs_isTmpBit(0x1301)) {
        mMessageStatus = 99;
    } else if (mMessageNo != 0xFFFF) {
        mMessageStatus = 0;
    } else {
        mMessageStatus = 99;
    }

    return cPhs_COMPLEATE_e;
}

/* 80490AF8-80490B5C 000118 0064+00 1/1 0/0 0/0 .text            execute__13daTag_Telop_cFv */
void daTag_Telop_c::execute() {
    switch (mMessageStatus) {
    case 0:
        fopMsgM_messageSetDemo(mMessageNo);
        mMessageStatus = 99;
        break;
    case 99:
        fopAcM_delete(this);
        mMessageStatus = -1;
        break;
    }
}

/* 80490B5C-80490B64 00017C 0008+00 1/0 0/0 0/0 .text            daTag_Telop_Draw__FP13daTag_Telop_c
 */
static int daTag_Telop_Draw(daTag_Telop_c* i_this) {
    return 1;
}

/* 80490B64-80490B88 000184 0024+00 1/0 0/0 0/0 .text daTag_Telop_Execute__FP13daTag_Telop_c */
static int daTag_Telop_Execute(daTag_Telop_c* i_this) {
    i_this->execute();
    return 1;
}

/* 80490B88-80490B90 0001A8 0008+00 1/0 0/0 0/0 .text daTag_Telop_IsDelete__FP13daTag_Telop_c */
static int daTag_Telop_IsDelete(daTag_Telop_c* i_this) {
    return 1;
}

/* 80490B90-80490BC0 0001B0 0030+00 1/0 0/0 0/0 .text daTag_Telop_Delete__FP13daTag_Telop_c */
static int daTag_Telop_Delete(daTag_Telop_c* i_this) {
    i_this->~daTag_Telop_c();
    return 1;
}

/* 80490BC0-80490BE0 0001E0 0020+00 1/0 0/0 0/0 .text            daTag_Telop_Create__FP10fopAc_ac_c
 */
static int daTag_Telop_Create(fopAc_ac_c* i_this) {
    return static_cast<daTag_Telop_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80490BE8-80490C08 -00001 0020+00 1/0 0/0 0/0 .data            l_daTag_Telop_Method */
static actor_method_class l_daTag_Telop_Method = {
    (process_method_func)daTag_Telop_Create,  (process_method_func)daTag_Telop_Delete,
    (process_method_func)daTag_Telop_Execute, (process_method_func)daTag_Telop_IsDelete,
    (process_method_func)daTag_Telop_Draw,
};

/* 80490C08-80490C38 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_TELOP */
extern actor_process_profile_definition g_profile_TAG_TELOP = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_TAG_TELOP,
    &g_fpcLf_Method.base,
    sizeof(daTag_Telop_c),
    0,
    0,
    &g_fopAc_Method.base,
    282,
    &l_daTag_Telop_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_6_e,
};

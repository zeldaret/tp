/**
 * d_a_tag_setBall.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_setBall.h"
#include "d/d_procname.h"

/* 80D601F8-80D60218 000078 0020+00 1/1 0/0 0/0 .text            initBaseMtx__14daTagSetBall_cFv */
void daTagSetBall_c::initBaseMtx() {
    setBaseMtx();
}

/* 80D60218-80D6021C 000098 0004+00 1/1 0/0 0/0 .text            setBaseMtx__14daTagSetBall_cFv */
void daTagSetBall_c::setBaseMtx() {}

/* 80D6021C-80D6024C 00009C 0030+00 1/1 0/0 0/0 .text            Create__14daTagSetBall_cFv */
int daTagSetBall_c::Create() {
    mType = getType_private();
    initBaseMtx();
    return 1;
}

/* 80D6024C-80D602B4 0000CC 0068+00 1/1 0/0 0/0 .text            create__14daTagSetBall_cFv */
int daTagSetBall_c::create() {
    fopAcM_SetupActor(this, daTagSetBall_c);

    if (!Create()) {
        return cPhs_ERROR_e;
    } else {
        return cPhs_COMPLEATE_e;
    }
}

/* 80D602B4-80D602BC 000134 0008+00 1/1 0/0 0/0 .text            execute__14daTagSetBall_cFv */
int daTagSetBall_c::execute() {
    return 1;
}

/* 80D602BC-80D602C4 00013C 0008+00 1/1 0/0 0/0 .text            _delete__14daTagSetBall_cFv */
int daTagSetBall_c::_delete() {
    return 1;
}

/* 80D602C4-80D602E4 000144 0020+00 1/0 0/0 0/0 .text daTagSetBall_Execute__FP14daTagSetBall_c */
static int daTagSetBall_Execute(daTagSetBall_c* i_this) {
    return i_this->execute();
}

/* 80D602E4-80D60304 000164 0020+00 1/0 0/0 0/0 .text daTagSetBall_Delete__FP14daTagSetBall_c */
static int daTagSetBall_Delete(daTagSetBall_c* i_this) {
    return i_this->_delete();
}

/* 80D60304-80D60324 000184 0020+00 1/0 0/0 0/0 .text daTagSetBall_Create__FP14daTagSetBall_c */
static int daTagSetBall_Create(daTagSetBall_c* i_this) {
    return i_this->create();
}

/* ############################################################################################## */
/* 80D6032C-80D6034C -00001 0020+00 1/0 0/0 0/0 .data            l_daTagSetBall_Method */
static actor_method_class l_daTagSetBall_Method = {
    (process_method_func)daTagSetBall_Create,
    (process_method_func)daTagSetBall_Delete,
    (process_method_func)daTagSetBall_Execute,
    (process_method_func)NULL,
    (process_method_func)NULL,
};

/* 80D6034C-80D6037C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_SetBall */
extern actor_process_profile_definition g_profile_Tag_SetBall = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Tag_SetBall,
    &g_fpcLf_Method.base,
    sizeof(daTagSetBall_c),
    0,
    0,
    &g_fopAc_Method.base,
    575,
    &l_daTagSetBall_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

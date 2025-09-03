/**
 * d_a_skip2D.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_skip_2D.h"
#include "d/d_meter_button.h"
#include "f_op/f_op_actor_mng.h"

/* 80D4D478-80D4D498 000078 0020+00 1/1 0/0 0/0 .text            daSkip2D_createHeap__FP10fopAc_ac_c
 */
static int daSkip2D_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daSkip2D_c*>(i_this)->createHeap();
}

/* 80D4D498-80D4D4F4 000098 005C+00 1/1 0/0 0/0 .text            createHeap__10daSkip2D_cFv */
int daSkip2D_c::createHeap() {
    mpButton = new dMeterButton_c();

    if (mpButton == NULL) {
        return 0;
    }

    return 1;
}

/* 80D4D4F4-80D4D588 0000F4 0094+00 1/1 0/0 0/0 .text            create__10daSkip2D_cFv */
int daSkip2D_c::create() {
    fopAcM_SetupActor(this, daSkip2D_c);

    if (!fopAcM_entrySolidHeap(this, daSkip2D_createHeap, 0)) {
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

/* 80D4D588-80D4D590 000188 0008+00 1/1 0/0 0/0 .text            destroy__10daSkip2D_cFv */
int daSkip2D_c::destroy() {
    return 1;
}

/* 80D4D590-80D4D5D0 000190 0040+00 1/1 0/0 0/0 .text            draw__10daSkip2D_cFv */
int daSkip2D_c::draw() {
    dComIfGd_set2DOpaTop((dDlst_base_c*)&mpButton);  // ???
    return 1;
}

/* 80D4D5D0-80D4D5D8 0001D0 0008+00 1/1 0/0 0/0 .text            execute__10daSkip2D_cFv */
int daSkip2D_c::execute() {
    return 1;
}

/* 80D4D5D8-80D4D5EC 0001D8 0014+00 1/1 0/0 0/0 .text            initiate__10daSkip2D_cFv */
void daSkip2D_c::initiate() {
    field_0x56c = 0;
    mpButton = NULL;
    field_0x574 = 0;
}

/* 80D4D5EC-80D4D60C 0001EC 0020+00 1/0 0/0 0/0 .text            daSkip2D_Create__FPv */
static int daSkip2D_Create(void* i_this) {
    return static_cast<daSkip2D_c*>(i_this)->create();
}

/* 80D4D60C-80D4D62C 00020C 0020+00 1/0 0/0 0/0 .text            daSkip2D_Delete__FPv */
static int daSkip2D_Delete(void* i_this) {
    return static_cast<daSkip2D_c*>(i_this)->destroy();
}

/* 80D4D62C-80D4D64C 00022C 0020+00 1/0 0/0 0/0 .text            daSkip2D_Execute__FPv */
static int daSkip2D_Execute(void* i_this) {
    return static_cast<daSkip2D_c*>(i_this)->execute();
}

/* 80D4D64C-80D4D66C 00024C 0020+00 1/0 0/0 0/0 .text            daSkip2D_Draw__FPv */
static int daSkip2D_Draw(void* i_this) {
    return static_cast<daSkip2D_c*>(i_this)->draw();
}

/* 80D4D66C-80D4D674 00026C 0008+00 1/0 0/0 0/0 .text            daSkip2D_IsDelete__FPv */
static int daSkip2D_IsDelete(void*) {
    return 1;
}

/* ############################################################################################## */
/* 80D4D6DC-80D4D6FC -00001 0020+00 1/0 0/0 0/0 .data            daSkip2D_MethodTable */
static actor_method_class daSkip2D_MethodTable = {
    (process_method_func)daSkip2D_Create,  (process_method_func)daSkip2D_Delete,
    (process_method_func)daSkip2D_Execute, (process_method_func)daSkip2D_IsDelete,
    (process_method_func)daSkip2D_Draw,
};

/* 80D4D6FC-80D4D72C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_SKIP2D */
extern actor_process_profile_definition g_profile_SKIP2D = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_SKIP2D,
    &g_fpcLf_Method.base,
    sizeof(daSkip2D_c),
    0,
    0,
    &g_fopAc_Method.base,
    772,
    &daSkip2D_MethodTable,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_0_e,
};

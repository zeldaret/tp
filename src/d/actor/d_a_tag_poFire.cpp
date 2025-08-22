/**
 * d_a_tag_poFire.cpp
 * Tag - Poe Fire
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_poFire.h"
#include "d/d_procname.h"

/* 80D5DACC-80D5DAF0 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__17daTagPoFire_HIO_cFv */
daTagPoFire_HIO_c::daTagPoFire_HIO_c() {
    unk_0x4 = 0x14;
}

/* 80D5DB38-80D5DB90 000158 0058+00 1/1 0/0 0/0 .text            setBaseMtx__13daTagPoFire_cFv */
void daTagPoFire_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
}

/* 80D5DB90-80D5DBF0 0001B0 0060+00 1/1 0/0 0/0 .text            create__13daTagPoFire_cFv */
int daTagPoFire_c::create() {
    fopAcM_SetupActor(this, daTagPoFire_c);
    field_0x569 = 0;
    setBaseMtx();
    return cPhs_COMPLEATE_e;
}

/* 80D5DBF0-80D5DC20 000210 0030+00 1/1 0/0 0/0 .text            Execute__13daTagPoFire_cFv */
int daTagPoFire_c::Execute() {
    if (field_0x569) {
        fopAcM_delete(this);
    }
    return 1;
}

/* 80D5DC20-80D5DC28 000240 0008+00 1/1 0/0 0/0 .text            Draw__13daTagPoFire_cFv */
int daTagPoFire_c::Draw() {
    return 1;
}

/* 80D5DC28-80D5DC30 000248 0008+00 1/1 0/0 0/0 .text            Delete__13daTagPoFire_cFv */
int daTagPoFire_c::Delete() {
    return 1;
}

/* 80D5DC30-80D5DC50 000250 0020+00 1/0 0/0 0/0 .text            daTagPoFire_Draw__FP13daTagPoFire_c
 */
static int daTagPoFire_Draw(daTagPoFire_c* i_this) {
    return i_this->Draw();
}

/* 80D5DC50-80D5DC70 000270 0020+00 1/0 0/0 0/0 .text daTagPoFire_Execute__FP13daTagPoFire_c */
static int daTagPoFire_Execute(daTagPoFire_c* i_this) {
    return i_this->Execute();
}

/* 80D5DC70-80D5DC90 000290 0020+00 1/0 0/0 0/0 .text daTagPoFire_Delete__FP13daTagPoFire_c */
static int daTagPoFire_Delete(daTagPoFire_c* i_this) {
    return i_this->Delete();
}

/* 80D5DC90-80D5DCB0 0002B0 0020+00 1/0 0/0 0/0 .text            daTagPoFire_Create__FP10fopAc_ac_c
 */
static int daTagPoFire_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagPoFire_c*>(i_this)->create();
}

/* 80D5DCB0-80D5DD0C 0002D0 005C+00 2/1 0/0 0/0 .text            __dt__17daTagPoFire_HIO_cFv */
daTagPoFire_HIO_c::~daTagPoFire_HIO_c() {}

/* 80D5DDD0-80D5DDDC 000008 000C+00 1/1 0/0 0/0 .bss             @3617 */
static u8 lit_3617[12];

/* 80D5DDDC-80D5DDE4 000014 0008+00 1/1 0/0 0/0 .bss             l_HIO */
static daTagPoFire_HIO_c l_HIO;

/* 80D5DD5C-80D5DD7C -00001 0020+00 1/0 0/0 0/0 .data            l_daTagPoFire_Method */
static actor_method_class l_daTagPoFire_Method = {
    (process_method_func)daTagPoFire_Create,  (process_method_func)daTagPoFire_Delete,
    (process_method_func)daTagPoFire_Execute, (process_method_func)NULL,
    (process_method_func)daTagPoFire_Draw,
};

/* 80D5DD7C-80D5DDAC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_poFire */
extern actor_process_profile_definition g_profile_Tag_poFire = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_Tag_poFire,        // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daTagPoFire_c),  // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    649,                    // mPriority
    &l_daTagPoFire_Method,  // sub_method
    0x44000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};

/**
 * d_a_tag_stream.cpp
 *
 */

#include "rel/d/a/tag/d_a_tag_stream/d_a_tag_stream.h"
#include "SSystem/SComponent/c_math.h"

/* 80D638F8-80D63A78 000078 0180+00 1/1 0/0 0/0 .text            create__13daTagStream_cFv */
int daTagStream_c::create() {
    if (!fopAcM_CheckCondition(this, 8)) {
        new (this) daTagStream_c();
        fopAcM_OnCondition(this, 8);
    }

    mPriority = fopAcM_GetParam(this) >> 8;
    field_0x56a = fopAcM_GetParam(this);
    field_0x56b = fopAcM_GetParam(this) >> 16;

    fopAcM_GetParam(this) >> 24 != 0 ? mParameters = 0 : mParameters = 1;

    mScale.x *= 100.0f;
    mScale.y *= 100.0f;
    mScale.z *= 100.0f;

    if (m_top) {
        daTagStream_c* top = m_top;
        daTagStream_c* top_loop = m_top;

        for (; top; top = top->field_0x574) {
            if (top->getPriority() > this->getPriority()) {
                break;
            }
            top_loop = top;
        }

        if (top_loop == top) {
            field_0x574 = m_top;
            m_top->field_0x570 = this;
            m_top = this;
        } else {
            top_loop->field_0x574 = this;
            field_0x570 = top_loop;

            if (top) {
                top->field_0x570 = this;
                field_0x574 = top;
            }
        }
    } else {
        m_top = this;
    }
    
    f32 float1 =  cM_scos(shape_angle.y) * cM_scos(shape_angle.x);
    f32 float2 = -cM_ssin(shape_angle.x);
    f32 float3 = cM_ssin(shape_angle.y) * cM_scos(shape_angle.x);

    speed.set(float3,float2,float1);

    return cPhs_COMPLEATE_e;
}

/* 80D63A78-80D63A98 0001F8 0020+00 1/0 0/0 0/0 .text            daTagStream_Create__FP10fopAc_ac_c
 */
static int daTagStream_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagStream_c*>(i_this)->create();
}

/* 80D63A98-80D63B30 000218 0098+00 1/1 0/0 0/0 .text            __dt__13daTagStream_cFv */
daTagStream_c::~daTagStream_c() {
    if (field_0x570) {
        field_0x570->field_0x574 = field_0x574;
    }

    if (field_0x574) {
        field_0x574->field_0x570 = field_0x570;
    }

    if (m_top == this) {
        m_top = field_0x574;
    }
};

/* 80D63B30-80D63B58 0002B0 0028+00 1/0 0/0 0/0 .text daTagStream_Delete__FP13daTagStream_c */
static int daTagStream_Delete(daTagStream_c* i_this) {
    i_this->~daTagStream_c();
    return 1;
}

/* 80D63B58-80D63BC0 0002D8 0068+00 1/1 0/0 0/0 .text            execute__13daTagStream_cFv */
int daTagStream_c::execute() {
    if (field_0x56b == 0xFF || i_fopAcM_isSwitch(this,field_0x56b)) {
        field_0x569 = 1;
    } else {
        field_0x569 = 0;
    }

    return 1;
}

/* 80D63BC0-80D63BE0 000340 0020+00 1/0 0/0 0/0 .text daTagStream_Execute__FP13daTagStream_c */
static int daTagStream_Execute(daTagStream_c* i_this) {
    return i_this->execute();
}

/* 80D63BE0-80D63BE8 000360 0008+00 1/0 0/0 0/0 .text            daTagStream_Draw__FP13daTagStream_c
 */
static bool daTagStream_Draw(daTagStream_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80D63BF4-80D63C14 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagStream_Method */
static actor_method_class l_daTagStream_Method = {
    (process_method_func)daTagStream_Create,
    (process_method_func)daTagStream_Delete,
    (process_method_func)daTagStream_Execute,
    0, // ?
    (process_method_func)daTagStream_Draw
};

/* 80D63C14-80D63C44 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Stream */
extern actor_process_profile_definition g_profile_Tag_Stream = {
    -3,                     // mLayerID
    7,                      // mListID
    -3,                     // mListPrio
    PROC_Tag_Stream,        // mProcName
    &g_fpcLf_Method.mBase,  // mSubMtd
    sizeof(daTagStream_c),  // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // mSubMtd
    0x0103,                 // mPriority
    &l_daTagStream_Method,  // mSubMtd
    0x00044000,             // mStatus
    3,                      // mActorType
    0x0E,                   // mCullType
};

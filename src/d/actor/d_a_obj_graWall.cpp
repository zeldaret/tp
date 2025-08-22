/**
 * d_a_obj_graWall.cpp
 * Object - Goron Adult Wall (Deleted)
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_graWall.h"
#include "d/d_procname.h"

/* 80C10BF8-80C10D48 000078 0150+00 1/1 0/0 0/0 .text            Create__14daObjGraWall_cFv */
int daObjGraWall_c::Create() {
    fopAcM_SetupActor(this, daObjGraWall_c);
    field_0x6e0 = fopAcM_GetParam(this);

    if (field_0x6e0 != 0xff) {
        if (dComIfGs_isSwitch(field_0x6e0, fopAcM_GetRoomNo(this)) != 0) {
            return cPhs_ERROR_e;
        }
    } else {
            /* dSv_event_flag_c::M_029 - Death Mountain (room) - Win wrestle match against Gor Coron */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[62])) {
            return cPhs_ERROR_e;
        }
    }
    col_init();

    return cPhs_COMPLEATE_e;
}

/* 80C10DD8-80C10E78 000258 00A0+00 1/1 0/0 0/0 .text            Execute__14daObjGraWall_cFv */
int daObjGraWall_c::Execute() {
    if (field_0x6e0 != 0xff) {
        if (dComIfGs_isSwitch(field_0x6e0, fopAcM_GetRoomNo(this)) != 0) {
            fopAcM_delete(this);
            return 1;
        }
    } else {
            /* dSv_event_flag_c::M_029 - Death Mountain (room) - Win wrestle match against Gor Coron */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[62])) {
            fopAcM_delete(this);
            return 1;
        }
    }
    col_set();
    return 1;
}

/* 80C10E78-80C10E80 0002F8 0008+00 1/1 0/0 0/0 .text            Delete__14daObjGraWall_cFv */
int daObjGraWall_c::Delete() {
    return 1;
}

/* ############################################################################################## */
/* 80C10FB0-80C10FB8 000000 0008+00 1/1 0/0 0/0 .rodata          l_DATA */
static const f32 l_DATA[2] = {180.0f, 280.0f};

/* 80C10FB8-80C10FFC 000008 0044+00 1/1 0/0 0/0 .rodata          l_cyl_src */
const static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x19}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x8},          // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},          // mGObjTg
        {0x0},                                       // mGObjCo
    },                                               // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        0.0f,                // mRadius
        0.0f                 // mHeight
    }                        // mCyl
};

/* 80C10E80-80C10ED4 000300 0054+00 1/1 0/0 0/0 .text            col_init__14daObjGraWall_cFv */
void daObjGraWall_c::col_init() {
    mStts.Init(0xff, 0xff, this);
    mCyl.Set(l_cyl_src);
    mCyl.SetStts(&mStts);
}

/* 80C10ED4-80C10F40 000354 006C+00 1/1 0/0 0/0 .text            col_set__14daObjGraWall_cFv */
void daObjGraWall_c::col_set() {
    mCyl.SetC(current.pos);
    mCyl.SetH(l_DATA[1]);
    mCyl.SetR(l_DATA[0]);
    dComIfG_Ccsp()->Set(&mCyl);
}

/* 80C10F40-80C10F60 0003C0 0020+00 1/0 0/0 0/0 .text daObjGraWall_Execute__FP14daObjGraWall_c */
static int daObjGraWall_Execute(daObjGraWall_c* i_this) {
    return i_this->Execute();
}

/* 80C10F60-80C10F68 0003E0 0008+00 1/0 0/0 0/0 .text daObjGraWall_IsDelete__FP14daObjGraWall_c */
static int daObjGraWall_IsDelete(daObjGraWall_c* i_this) {
    return 1;
}

/* 80C10F68-80C10F88 0003E8 0020+00 1/0 0/0 0/0 .text daObjGraWall_Delete__FP14daObjGraWall_c */
static int daObjGraWall_Delete(daObjGraWall_c* i_this) {
    return i_this->Delete();
}

/* 80C10F88-80C10FA8 000408 0020+00 1/0 0/0 0/0 .text            daObjGraWall_create__FP10fopAc_ac_c
 */
static int daObjGraWall_create(fopAc_ac_c* i_this) {
    return static_cast<daObjGraWall_c*>(i_this)->Create();
}

/* ############################################################################################## */
/* 80C10FFC-80C1101C -00001 0020+00 1/0 0/0 0/0 .data            l_daObjGraWall_Method */
static actor_method_class l_daObjGraWall_Method = {
    (process_method_func)daObjGraWall_create,
    (process_method_func)daObjGraWall_Delete,
    (process_method_func)daObjGraWall_Execute,
    (process_method_func)daObjGraWall_IsDelete,
    (process_method_func)NULL,
};

/* 80C1101C-80C1104C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_GRA_WALL */
extern actor_process_profile_definition g_profile_GRA_WALL = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_GRA_WALL,
    &g_fpcLf_Method.base,
    sizeof(daObjGraWall_c),
    0,
    0,
    &g_fopAc_Method.base,
    611,
    &l_daObjGraWall_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

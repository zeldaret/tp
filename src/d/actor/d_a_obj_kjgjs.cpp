/**
 * d_a_obj_kjgjs.cpp
 * Object - Kjgjs
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_kjgjs.h"
#include "d/d_bg_w.h"
#include "d/d_procname.h"

static const u32 l_dzbidx[2] = {8, 9};
static const char* l_arcName = "K_jgjs";

/* 80C46098-80C4616C 000078 00D4+00 1/1 0/0 0/0 .text            create1st__12daObjKJgjs_cFv */
int daObjKJgjs_c::create1st() {
    int phase = dComIfG_resLoad(this, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        setMtx();
        field_0x60c = getType();
        if (field_0x60c < 0) {
            field_0x60c = 0;
        } else if (field_0x60c > 2) {
            field_0x60c = 1;
        }
        phase = MoveBGCreate(l_arcName, l_dzbidx[field_0x60c], dBgS_MoveBGProc_TypicalRotY, 0x47f0,
                             &mMtx[0]);

        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }
    return phase;
}

/* 80C4616C-80C461E4 00014C 0078+00 1/1 0/0 0/0 .text            setMtx__12daObjKJgjs_cFv */
void daObjKJgjs_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::XYZrotM(current.angle.x, current.angle.y, current.angle.z);
    MTXCopy(mDoMtx_stack_c::now, mMtx[1]);
    MTXCopy(mDoMtx_stack_c::now, mMtx[0]);
}

/* 80C4654C-80C46554 000008 0008+00 1/1 0/0 0/0 .rodata          l_bmdidx */
static const u32 l_bmdidx[2] = {4, 5};

/* 80C461E4-80C46264 0001C4 0080+00 1/0 0/0 0/0 .text            CreateHeap__12daObjKJgjs_cFv */
int daObjKJgjs_c::CreateHeap() {
    mpModel = mDoExt_J3DModel__create(
        (J3DModelData*)dComIfG_getObjectRes(l_arcName, l_bmdidx[field_0x60c]), 0x80000, 0x11000084);
    return mpModel != NULL ? 1 : 0;
}

static const Vec l_cull_box[4] = {
    {-1260.0f, -3050.0f, -1260.0f},
    {1260.0f, 2800.0f, 1260.0f},
    {-76.37f, -10.83f, -78.51},
    {75.52f, 10.95f, 78.06f},
};

/* 80C46264-80C46310 000244 00AC+00 1/0 0/0 0/0 .text            Create__12daObjKJgjs_cFv */
int daObjKJgjs_c::Create() {
    fopAcM_SetMtx(this, mMtx[1]);
    MTXCopy(mMtx[1], mpModel->mBaseTransformMtx);
    mpBgW->OffRoofRegist();
    if (!field_0x60c) {
        fopAcM_setCullSizeBox(this, l_cull_box[0].x, l_cull_box[0].y, l_cull_box[0].z,
                              l_cull_box[1].x, l_cull_box[1].y, l_cull_box[1].z);
    } else {
        fopAcM_setCullSizeBox(this, l_cull_box[2].x, l_cull_box[2].y, l_cull_box[2].z,
                              l_cull_box[3].x, l_cull_box[3].y, l_cull_box[3].z);
    }
    return 1;
}

/* 80C46310-80C46320 0002F0 0010+00 1/0 0/0 0/0 .text            Execute__12daObjKJgjs_cFPPA3_A4_f */
int daObjKJgjs_c::Execute(f32 (**i_mtx)[3][4]) {
    *i_mtx = mMtx;
    return 1;
}

/* 80C46320-80C463C4 000300 00A4+00 1/0 0/0 0/0 .text            Draw__12daObjKJgjs_cFv */
int daObjKJgjs_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C463C4-80C46400 0003A4 003C+00 1/0 0/0 0/0 .text            Delete__12daObjKJgjs_cFv */
int daObjKJgjs_c::Delete() {
    dComIfG_resDelete(this, l_arcName);
    return 1;
}

/* 80C46400-80C46460 0003E0 0060+00 1/0 0/0 0/0 .text daObjKJgjs_create1st__FP12daObjKJgjs_c */
static int daObjKJgjs_create1st(daObjKJgjs_c* i_this) {
    fopAcM_SetupActor(i_this, daObjKJgjs_c);
    return i_this->create1st();
}

/* 80C46460-80C46480 000440 0020+00 1/0 0/0 0/0 .text daObjKJgjs_MoveBGDelete__FP12daObjKJgjs_c */
static int daObjKJgjs_MoveBGDelete(daObjKJgjs_c* i_this) {
    return static_cast<dBgS_MoveBgActor*>(i_this)->MoveBGDelete();
}

/* 80C46480-80C464A0 000460 0020+00 1/0 0/0 0/0 .text daObjKJgjs_MoveBGExecute__FP12daObjKJgjs_c*/
static int daObjKJgjs_MoveBGExecute(daObjKJgjs_c* i_this) {
    return static_cast<dBgS_MoveBgActor*>(i_this)->MoveBGExecute();
}

/* 80C464A0-80C464CC 000480 002C+00 1/0 0/0 0/0 .text daObjKJgjs_MoveBGDraw__FP12daObjKJgjs_c */
static int daObjKJgjs_MoveBGDraw(daObjKJgjs_c* i_this) {
    return static_cast<dBgS_MoveBgActor*>(i_this)->MoveBGDraw();
}

/* 80C464CC-80C4653C 0004AC 0070+00 1/0 0/0 0/0 .text            __dt__12daObjKJgjs_cFv */
daObjKJgjs_c::~daObjKJgjs_c() {}

/* 80C46590-80C465B0 -00001 0020+00 1/0 0/0 0/0 .data            daObjKJgjs_METHODS */
static actor_method_class daObjKJgjs_METHODS = {
    (process_method_func)daObjKJgjs_create1st,     (process_method_func)daObjKJgjs_MoveBGDelete,
    (process_method_func)daObjKJgjs_MoveBGExecute, (process_method_func)NULL,
    (process_method_func)daObjKJgjs_MoveBGDraw,
};

/* 80C465B0-80C465E0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_KJgjs */
extern actor_process_profile_definition g_profile_Obj_KJgjs = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_KJgjs,
    &g_fpcLf_Method.base,
    sizeof(daObjKJgjs_c),
    0,
    0,
    &g_fopAc_Method.base,
    677,
    &daObjKJgjs_METHODS,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

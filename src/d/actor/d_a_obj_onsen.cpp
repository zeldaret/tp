/**
 * d_a_obj_onsen.cpp
 * Object - Hot Spring
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_onsen.h"
#include "d/d_procname.h"

/* 80CA7B58-80CA7BB0 000078 0058+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjOnsen_cFv */
void daObjOnsen_c::initBaseMtx() {
    mpModel[0]->setBaseScale(scale);
    mpModel[1]->setBaseScale(scale);
    setBaseMtx();
}

/* 80CA7BB0-80CA7C28 0000D0 0078+00 1/1 0/0 0/0 .text            setBaseMtx__12daObjOnsen_cFv */
void daObjOnsen_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    MTXCopy(mDoMtx_stack_c::now, mpModel[0]->mBaseTransformMtx);
    MTXCopy(mDoMtx_stack_c::now, mpModel[1]->mBaseTransformMtx);
    MTXCopy(mDoMtx_stack_c::now, mBgMtx);
}

/* 80CA7C28-80CA7C74 000148 004C+00 1/0 0/0 0/0 .text            Create__12daObjOnsen_cFv */
int daObjOnsen_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel[0]->mBaseTransformMtx);
    fopAcM_setCullSizeBox2(this, mpModel[0]->getModelData());
    return 1;
}

/* 80CA811C-80CA8124 000000 0008+00 1/1 0/0 0/0 .rodata          l_bmd */
static const u32 l_bmd[2] = {5, 5};

/* 80CA8124-80CA812C 000008 0008+00 0/1 0/0 0/0 .rodata          l_btk */
static const u32 l_btk[2] = {9, 9};

/* 80CA812C-80CA8134 000010 0008+00 0/1 0/0 0/0 .rodata          l_bmd2 */
static const u32 l_bmd2[2] = {6, 6};

/* 80CA8134-80CA813C 000018 0008+00 1/1 0/0 0/0 .rodata          l_dzb */
static const u32 l_dzb[2] = {12, 12};

/* 80CA813C-80CA8144 000020 0008+00 1/1 0/0 0/0 .rodata          l_heap_size */
static const u32 l_heap_size[2] = {10240, 6880};

/* 80CA815C-80CA8164 -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[2] = {
    "H_Onsen",
    "H_KaOnsen",
};

/* 80CA7C74-80CA7DFC 000194 0188+00 1/0 0/0 0/0 .text            CreateHeap__12daObjOnsen_cFv */
int daObjOnsen_c::CreateHeap() {
    J3DModelData* modelData2 = (J3DModelData*)dComIfG_getObjectRes(l_arcName[mType], l_bmd[mType]);
    mpModel[0] = mDoExt_J3DModel__create(modelData2, 0x80000, 0x11000084);
    if (!mpModel[0]) {
        return 0;
    }

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[mType], l_bmd2[mType]);
    mpModel[1] = mDoExt_J3DModel__create(modelData, 0x80000, 0x19000284);
    if (!mpModel[1]) {
        return 0;
    }

    J3DAnmTextureSRTKey* srtKey =
        (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName[mType], l_btk[mType]);
    mpBtk = new mDoExt_btkAnm();
    if (!mpBtk || !mpBtk->init(modelData, srtKey, 1, 2, 1.0f, 0, -1)) {
        return 0;
    }

    return 1;
}

/* 80CA7E44-80CA7EEC 000364 00A8+00 1/1 0/0 0/0 .text            create1st__12daObjOnsen_cFv */
int daObjOnsen_c::create1st() {
    mType = getType();
    int phase = dComIfG_resLoad(&mPhaseReq, l_arcName[mType]);
    if (phase == cPhs_COMPLEATE_e) {
        phase = MoveBGCreate(l_arcName[mType], l_dzb[mType], NULL, l_heap_size[mType], NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }
    return phase;
}

/* 80CA7EEC-80CA7F1C 00040C 0030+00 1/0 0/0 0/0 .text            Execute__12daObjOnsen_cFPPA3_A4_f
 */
int daObjOnsen_c::Execute(Mtx** i_mtx) {
    *i_mtx = &mBgMtx;
    mpBtk->play();
    return 1;
}

/* 80CA7F1C-80CA8008 00043C 00EC+00 1/0 0/0 0/0 .text            Draw__12daObjOnsen_cFv */
int daObjOnsen_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel[0], &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel[1], &tevStr);
    dKy_bg_MAxx_proc(mpModel[0]);
    mDoExt_modelUpdateDL(mpModel[0]);
    mpBtk->entry(mpModel[1]->getModelData());
    dComIfGd_setListInvisisble();
    dKy_bg_MAxx_proc(mpModel[1]);
    mDoExt_modelUpdateDL(mpModel[1]);
    dComIfGd_setList();
    return 1;
}

/* 80CA8008-80CA8048 000528 0040+00 1/0 0/0 0/0 .text            Delete__12daObjOnsen_cFv */
int daObjOnsen_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName[mType]);
    return 1;
}

/* 80CA8048-80CA80A8 000568 0060+00 1/0 0/0 0/0 .text daObjOnsen_create1st__FP12daObjOnsen_c */
static int daObjOnsen_create1st(daObjOnsen_c* i_this) {
    fopAcM_SetupActor(i_this, daObjOnsen_c);
    return i_this->create1st();
}

/* 80CA80A8-80CA80C8 0005C8 0020+00 1/0 0/0 0/0 .text daObjOnsen_MoveBGDelete__FP12daObjOnsen_c */
static int daObjOnsen_MoveBGDelete(daObjOnsen_c* i_this) {
    return static_cast<dBgS_MoveBgActor*>(i_this)->MoveBGDelete();
}

/* 80CA80C8-80CA80E8 0005E8 0020+00 1/0 0/0 0/0 .text daObjOnsen_MoveBGExecute__FP12daObjOnsen_c
 */
static int daObjOnsen_MoveBGExecute(daObjOnsen_c* i_this) {
    return static_cast<dBgS_MoveBgActor*>(i_this)->MoveBGExecute();
}

/* 80CA80E8-80CA8114 000608 002C+00 1/0 0/0 0/0 .text daObjOnsen_MoveBGDraw__FP12daObjOnsen_c */
static int daObjOnsen_MoveBGDraw(daObjOnsen_c* i_this) {
    return static_cast<dBgS_MoveBgActor*>(i_this)->MoveBGDraw();
}

/* 80CA8164-80CA8184 -00001 0020+00 1/0 0/0 0/0 .data            daObjOnsen_METHODS */
static actor_method_class daObjOnsen_METHODS = {
    (process_method_func)daObjOnsen_create1st,     (process_method_func)daObjOnsen_MoveBGDelete,
    (process_method_func)daObjOnsen_MoveBGExecute, (process_method_func)NULL,
    (process_method_func)daObjOnsen_MoveBGDraw,
};

/* 80CA8184-80CA81B4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Onsen */
extern actor_process_profile_definition g_profile_Obj_Onsen = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Onsen,
    &g_fpcLf_Method.base,
    sizeof(daObjOnsen_c),
    0,
    0,
    &g_fopAc_Method.base,
    602,
    &daObjOnsen_METHODS,
    0x44100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

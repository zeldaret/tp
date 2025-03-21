/**
 * @file d_a_vrbox2.cpp
 * 
*/

#include "d/actor/d_a_vrbox2.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"
#include "d/d_kankyo_rain.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "SSystem/SComponent/c_math.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void texScrollCheck__FRf();
extern "C" static void daVrbox2_Draw__FP12vrbox2_class();
extern "C" static void daVrbox2_color_set__FP12vrbox2_class();
extern "C" static void daVrbox2_Execute__FP12vrbox2_class();
extern "C" static bool daVrbox2_IsDelete__FP12vrbox2_class();
extern "C" static bool daVrbox2_Delete__FP12vrbox2_class();
extern "C" static void daVrbox2_solidHeapCB__FP10fopAc_ac_c();
extern "C" static void daVrbox2_Create__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" extern char const* const d_a_vrbox2__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void getStatusRoomDt__20dStage_roomControl_cFi();
extern "C" void dComIfG_getStageRes__FPCc();
extern "C" void dKyw_get_wind_vec__Fv();
extern "C" void dKyw_get_wind_pow__Fv();
extern "C" void dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz();
extern "C" void dKy_get_parcent__Ffff();
extern "C" void dKy_GxFog_set__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM3d_VectorProduct2d__Fffffff();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void _savegpr_17();
extern "C" void _savegpr_25();
extern "C" void _restgpr_17();
extern "C" void _restgpr_25();
extern "C" u8 now__14mDoMtx_stack_c[48];

//
// Declarations:
//

static int daVrbox2_color_set(vrbox2_class* param_0);

/* ############################################################################################## */
/* 80499A6C-80499A70 000000 0004+00 4/4 0/0 0/0 .rodata          @3627 */
SECTION_RODATA static f32 const lit_3627 = 1.0f;
COMPILER_STRIP_GATE(0x80499A6C, &lit_3627);

/* 80499A70-80499A74 000004 0004+00 1/3 0/0 0/0 .rodata          @3628 */
SECTION_RODATA static u8 const lit_3628[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80499A70, &lit_3628);

/* 80498A78-80498ACC 000078 0054+00 1/1 0/0 0/0 .text            texScrollCheck__FRf */
static void texScrollCheck(f32& param_0) {
    while (param_0 < 0.0f)
        param_0 += 1.0f;

    while (param_0 > 1.0f)
        param_0 -= 1.0f;
}


/* ############################################################################################## */
/* 80499A74-80499A78 000008 0004+00 0/1 0/0 0/0 .rodata          @3835 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3835 = 9.0f / 100.0f;
COMPILER_STRIP_GATE(0x80499A74, &lit_3835);
#pragma pop

/* 80499A78-80499A7C 00000C 0004+00 0/1 0/0 0/0 .rodata          @3836 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3836 = 8000.0f;
COMPILER_STRIP_GATE(0x80499A78, &lit_3836);
#pragma pop

/* 80499A7C-80499A80 000010 0004+00 1/3 0/0 0/0 .rodata          @3837 */
SECTION_RODATA static f32 const lit_3837 = 255.0f;
COMPILER_STRIP_GATE(0x80499A7C, &lit_3837);

/* 80499A80-80499A84 000014 0004+00 0/1 0/0 0/0 .rodata          @3838 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3838 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80499A80, &lit_3838);
#pragma pop

/* 80499A84-80499A88 000018 0004+00 0/1 0/0 0/0 .rodata          @3839 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3839 = 270.0f;
COMPILER_STRIP_GATE(0x80499A84, &lit_3839);
#pragma pop

/* 80499A88-80499A8C 00001C 0004+00 0/1 0/0 0/0 .rodata          @3840 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3840 = 240.0f;
COMPILER_STRIP_GATE(0x80499A88, &lit_3840);
#pragma pop

/* 80499A8C-80499A90 000020 0004+00 0/2 0/0 0/0 .rodata          @3841 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3841 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80499A8C, &lit_3841);
#pragma pop

/* 80499A90-80499A94 000024 0004+00 0/1 0/0 0/0 .rodata          @3842 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3842 = 300.0f;
COMPILER_STRIP_GATE(0x80499A90, &lit_3842);
#pragma pop

/* 80499A94-80499A98 000028 0004+00 0/1 0/0 0/0 .rodata          @3843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3843 = 17.0f / 20.0f;
COMPILER_STRIP_GATE(0x80499A94, &lit_3843);
#pragma pop

/* 80499A98-80499A9C 00002C 0004+00 0/1 0/0 0/0 .rodata          @3844 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3844 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80499A98, &lit_3844);
#pragma pop

/* 80499A9C-80499AA0 000030 0004+00 0/1 0/0 0/0 .rodata          @3845 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3845 = 483.0f;
COMPILER_STRIP_GATE(0x80499A9C, &lit_3845);
#pragma pop

/* 80499AA0-80499AA4 000034 0004+00 0/1 0/0 0/0 .rodata          @3846 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3846 = 100.0f;
COMPILER_STRIP_GATE(0x80499AA0, &lit_3846);
#pragma pop

/* 80499AC4-80499AC4 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80499AC4 = "F_SP102";
SECTION_DEAD static char const* const stringBase_80499ACC = "F_SP127";
#pragma pop

/* 80499B78-80499B7C 000000 0002+02 1/1 0/0 0/0 .bss             mangZ$3688 */
static s16 mangZ;

/* 80498ACC-804990DC 0000CC 0610+00 1/0 0/0 0/0 .text            daVrbox2_Draw__FP12vrbox2_class */
// NONMATCHING - reg alloc
static int daVrbox2_Draw(vrbox2_class* i_this) {
    cXyz sp14;
    cXyz sp8;

    camera_class* camera_p = dComIfGp_getCamera(0);
    dKankyo_sunlenz_Packet* lenz_p = g_env_light.mpSunLenzPacket;
    J3DModel* kumo_model_p = i_this->mpKumoModel;
    J3DModel* sun_model_p = i_this->model2;
    J3DModel* sun2_model_p = i_this->model2_und;
    J3DModel* kasumim_model_p = i_this->mpKasumimModel;
    dKankyo_sun_Packet* sun_p = g_env_light.mpSunPacket;

    f32 var_f31 = 0.0f;
    dStage_FileList_dt_c* filelist_p = NULL;
    dKy_GxFog_set();

    // these casts look like fake matches, but this ptr is used as both J3DModel and J3DModelData?
    for (int i = ((J3DModelData*)kumo_model_p)->getMaterialNum() - 1; i >= 0; i--) {
        J3DMaterial* material_p = ((J3DModelData*)kumo_model_p)->getMaterialNodePointer(i);

        J3DFogInfo* fogInfo_p;
        if (material_p != NULL) {
            fogInfo_p = material_p->getFog()->getFogInfo();
        }

        fogInfo_p->mType = 2;
    }

    // these casts look like fake matches, but this ptr is used as both J3DModel and J3DModelData?
    for (int i = ((J3DModelData*)sun_model_p)->getMaterialNum() - 1; i >= 0; i--) {
        J3DMaterial* material_p = ((J3DModelData*)sun_model_p)->getMaterialNodePointer(i);

        J3DFogInfo* fogInfo_p;
        if (material_p != NULL) {
            fogInfo_p = material_p->getFog()->getFogInfo();
        }

        fogInfo_p->mType = 2;
    }

    // these casts look like fake matches, but this ptr is used as both J3DModel and J3DModelData?
    for (int i = ((J3DModelData*)kasumim_model_p)->getMaterialNum() - 1; i >= 0; i--) {
        J3DMaterial* material_p = ((J3DModelData*)kasumim_model_p)->getMaterialNodePointer(i);

        J3DFogInfo* fogInfo_p;
        if (material_p != NULL) {
            fogInfo_p = material_p->getFog()->getFogInfo();
        }

        fogInfo_p->mType = 2;
    }

    if ((g_env_light.vrbox_kasumi_outer_col.r + g_env_light.vrbox_kasumi_outer_col.g +
         g_env_light.vrbox_kasumi_outer_col.b + g_env_light.vrbox_sky_col.r + g_env_light.vrbox_sky_col.g +
         g_env_light.vrbox_sky_col.b + g_env_light.vrbox_kumo_top_col.r + g_env_light.vrbox_kumo_top_col.g +
         g_env_light.vrbox_kumo_top_col.b) == 0)
    {
        return 1;
    }

    i_this->mSunBtk.entry(i_this->model2->getModelData());
    daVrbox2_color_set(i_this);

    if (dComIfGp_roomControl_getStayNo() >= 0) {
        s32 stayNo = dComIfGp_roomControl_getStayNo();
        filelist_p = dComIfGp_roomControl_getStatusRoomDt(stayNo)->getFileListInfo();
    }

    if (filelist_p != NULL) {
        var_f31 = dStage_FileList_dt_SeaLevel(filelist_p);
    }

    if (dComIfGd_getView() != NULL) {
        var_f31 = (dComIfGd_getInvViewMtx()[1][3] - var_f31) * 0.09f;
    } else {
        var_f31 = 0.0f;
    }

    dComIfGd_setListSky();
    mDoMtx_stack_c::transS(dComIfGd_getInvViewMtx()[0][3], dComIfGd_getInvViewMtx()[1][3] - var_f31,
                           dComIfGd_getInvViewMtx()[2][3]);
    kasumim_model_p->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoExt_modelUpdateDL(kasumim_model_p);

    mDoMtx_stack_c::transS(dComIfGd_getInvViewMtx()[0][3], dComIfGd_getInvViewMtx()[1][3] - var_f31,
                           dComIfGd_getInvViewMtx()[2][3]);
    kumo_model_p->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoExt_modelUpdateDL(kumo_model_p);

    if (dStage_stagInfo_GetArg0(dComIfGp_getStage()->getStagInfo()) != 0 && sun_model_p != NULL &&
        sun_p != NULL && sun_p->mSunAlpha > 0.0f)
    {
        sp14 = sun_p->mPos[0];

        if (strcmp(dComIfGp_getStartStageName(), "F_SP102") == 0) {
            dKyr_get_vectle_calc(&camera_p->lookat.eye, &g_env_light.sun_pos, &sp8);
            sp14.x = camera_p->lookat.eye.x + (8000.0f * sp8.x);
            sp14.y = camera_p->lookat.eye.y + (8000.0f * sp8.y);
            sp14.z = camera_p->lookat.eye.z + (8000.0f * sp8.z);
        }

        s16 temp_r19 = cLib_targetAngleX(&camera_p->lookat.eye, &sp14);
        s16 temp_r18 = cLib_targetAngleY(&camera_p->lookat.eye, &sp14);
        mDoMtx_stack_c::transS(sp14.x, sp14.y, sp14.z);
        mDoMtx_stack_c::YrotM((s16)temp_r18);
        mDoMtx_stack_c::XrotM(0x7FFF - temp_r19);

        f32 scale;
        if (g_env_light.daytime < 255.0f) {
            f32 temp_f4 = 1.0f - lenz_p->mDistFalloff;
            scale = 1.0f;

            if (sun_p->mVisibility > 0.0f) {
                scale = 1.0f + (sun_p->mVisibility * (0.4f * (temp_f4 * temp_f4)));
            }
        } else {
            f32 var_f1;
            if (g_env_light.daytime < 270.0f) {
                var_f1 = dKy_get_parcent(270.0f, 240.0f, g_env_light.daytime);
            } else {
                var_f1 = 1.0f;
            }

            scale = 1.0f + (0.2f * var_f1);
        }

        mDoMtx_stack_c::scaleM(scale, scale, scale);
        sun_model_p->setBaseTRMtx(mDoMtx_stack_c::get());
        mDoExt_modelUpdateDL(sun_model_p);

        if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0) {
            sp14 = sun_p->mPos[0];
            sp14.y = 300.0f - (sp14.y * 0.85f);

            s16 temp_r19_2 = cLib_targetAngleX(&camera_p->lookat.eye, &sp14);
            s16 temp_r18_2 = cLib_targetAngleY(&camera_p->lookat.eye, &sp14);
            mDoMtx_stack_c::transS(sp14.x, sp14.y, sp14.z);
            mDoMtx_stack_c::YrotM((s16)temp_r18_2);
            mDoMtx_stack_c::XrotM(0x7FFF - temp_r19_2);
            mDoMtx_stack_c::ZrotM(mangZ);

            mDoMtx_stack_c::scaleM(scale, scale + 0.15f, scale);
            mDoMtx_stack_c::ZrotM(-mangZ);
            sun2_model_p->setBaseTRMtx(mDoMtx_stack_c::get());
            mDoExt_modelUpdateDL(sun2_model_p);
            mangZ += (s16)(483.0f + cM_rndF(100.0f));
        }
    }

    dComIfGd_setList();

    if (sun_model_p != NULL) {
        i_this->mSunBtk.remove(i_this->model2->getModelData());
    }

    return 1;
}

/* ############################################################################################## */
/* 80499AA4-80499AA8 000038 0004+00 0/1 0/0 0/0 .rodata          @4069 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4069 = 0x3A03126F;
COMPILER_STRIP_GATE(0x80499AA4, &lit_4069);
#pragma pop

/* 80499AA8-80499AAC 00003C 0004+00 0/1 0/0 0/0 .rodata          @4070 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4070 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80499AA8, &lit_4070);
#pragma pop

/* 80499AAC-80499AB0 000040 0004+00 0/1 0/0 0/0 .rodata          @4071 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4071 = 1.75f;
COMPILER_STRIP_GATE(0x80499AAC, &lit_4071);
#pragma pop

/* 80499AB0-80499AB4 000044 0004+00 0/1 0/0 0/0 .rodata          @4072 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4072 = 22.0f / 5.0f;
COMPILER_STRIP_GATE(0x80499AB0, &lit_4072);
#pragma pop

/* 80499AB4-80499AB8 000048 0004+00 0/1 0/0 0/0 .rodata          @4073 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4073 = 11.0f / 5.0f;
COMPILER_STRIP_GATE(0x80499AB4, &lit_4073);
#pragma pop

/* 80499AB8-80499ABC 00004C 0004+00 0/1 0/0 0/0 .rodata          @4074 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4074 = 97.5f;
COMPILER_STRIP_GATE(0x80499AB8, &lit_4074);
#pragma pop

/* 80499ABC-80499AC0 000050 0004+00 0/1 0/0 0/0 .rodata          @4075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4075 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80499ABC, &lit_4075);
#pragma pop

/* 80499AC0-80499AC4 000054 0004+00 0/1 0/0 0/0 .rodata          @4076 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4076 = 0x38D1B717;
COMPILER_STRIP_GATE(0x80499AC0, &lit_4076);
#pragma pop

/* 80499AC4-80499AC4 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80499AD4 = "R_SP30";
#pragma pop

/* 804990DC-804997E8 0006DC 070C+00 1/1 0/0 0/0 .text daVrbox2_color_set__FP12vrbox2_class */
// NONMATCHING - some regalloc at the end
static int daVrbox2_color_set(vrbox2_class* i_this) {
    dKankyo_sun_Packet* sun_p = g_env_light.mpSunPacket;

    if ((g_env_light.vrbox_kasumi_outer_col.r + g_env_light.vrbox_kasumi_outer_col.g +
         g_env_light.vrbox_kasumi_outer_col.b + g_env_light.vrbox_sky_col.r + g_env_light.vrbox_sky_col.g +
         g_env_light.vrbox_sky_col.b + g_env_light.vrbox_kumo_top_col.r + g_env_light.vrbox_kumo_top_col.g +
         g_env_light.vrbox_kumo_top_col.b) == 0)
    {
        return 1;
    }

    camera_class* camera_p = dComIfGp_getCamera(0);

    cXyz cam_eye;
    cXyz cam_center;
    cXyz camFwdXZ;
    cXyz wind_vec;

    cXyz* windVec_p = dKyw_get_wind_vec();
    f32 wind_pow = dKyw_get_wind_pow();

    wind_vec = *windVec_p;

    dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo());

    cam_eye = camera_p->lookat.eye;
    cam_center = camera_p->lookat.center;
    cam_eye.y = 0.0f;
    cam_center.y = 0.0f;

    dKyr_get_vectle_calc(&cam_eye, &cam_center, &camFwdXZ);
    f32 temp_f30 =
        cM3d_VectorProduct2d(0.0f, 0.0f, -wind_vec.x, -wind_vec.z, camFwdXZ.x, camFwdXZ.z) *
        0.0005f;
    f32 var_f29 = temp_f30 * wind_pow;

    if (strcmp(dComIfGp_getStartStageName(), "R_SP30") == 0) {
        dKyw_get_wind_vec();
        var_f29 = temp_f30 * (wind_pow + 0.3f);
    }

    J3DModelData* modelData = i_this->mpKumoModel->getModelData();
    J3DMaterial* material_0 = modelData->getMaterialNodePointer(0);
    if (material_0 != NULL) {
        material_0->setCullMode(0);

        if (material_0->getTexMtx(0) != NULL) {
            J3DTexMtxInfo& mtx_info = material_0->getTexMtx(0)->getTexMtxInfo();
            mtx_info.mSRT.mTranslationX += var_f29;
            texScrollCheck(mtx_info.mSRT.mTranslationX);
        }

        if (material_0->getTexMtx(1) != NULL) {
            J3DTexMtxInfo& mtx_info = material_0->getTexMtx(1)->getTexMtxInfo();
            mtx_info.mSRT.mTranslationX += var_f29 * 1.75f;
            texScrollCheck(mtx_info.mSRT.mTranslationX);
        }
    }

    J3DMaterial* material_1 = modelData->getMaterialNodePointer(1);
    if (material_1 != NULL) {
        if (material_1->getTexMtx(0) != NULL) {
            J3DTexMtxInfo& mtx_info = material_1->getTexMtx(0)->getTexMtxInfo();
            mtx_info.mSRT.mTranslationX += var_f29 * 4.4f;
            texScrollCheck(mtx_info.mSRT.mTranslationX);
        }

        if (material_1->getTexMtx(1) != NULL) {
            J3DTexMtxInfo& mtx_info = material_1->getTexMtx(1)->getTexMtxInfo();
            mtx_info.mSRT.mTranslationX += var_f29 * 2.2f;
            texScrollCheck(mtx_info.mSRT.mTranslationX);
        }
    }

    modelData = i_this->mpKumoModel->getModelData();
    J3DGXColor k_color;
    J3DGXColorS10 color;

    J3DMaterial* kumo_material0 = modelData->getMaterialNodePointer(0);
    if (kumo_material0 != NULL) {
        kumo_material0->setCullMode(0);
        kumo_material0->change();

        k_color.r = g_env_light.vrbox_kumo_bottom_col.r;
        k_color.g = g_env_light.vrbox_kumo_bottom_col.g;
        k_color.b = g_env_light.vrbox_kumo_bottom_col.b;
        k_color.a = g_env_light.vrbox_kumo_top_col.a;
        kumo_material0->setTevKColor(0, &k_color);

        color.r = g_env_light.vrbox_kumo_shadow_col.r;
        color.g = g_env_light.vrbox_kumo_shadow_col.g;
        color.b = g_env_light.vrbox_kumo_shadow_col.b;
        color.a = (u8)g_env_light.vrbox_kumo_top_col.a;
        kumo_material0->setTevColor(0, &color);
    }

    J3DMaterial* kumo_material1 = modelData->getMaterialNodePointer(1);
    if (kumo_material1 != NULL) {
        kumo_material1->setCullMode(0);
        kumo_material1->change();

        k_color.r = g_env_light.vrbox_kumo_bottom_col.r;
        k_color.g = g_env_light.vrbox_kumo_bottom_col.g;
        k_color.b = g_env_light.vrbox_kumo_bottom_col.b;
        k_color.a = g_env_light.vrbox_kumo_top_col.a;
        kumo_material1->setTevKColor(0, &k_color);

        color.r = g_env_light.vrbox_kumo_shadow_col.r;
        color.g = g_env_light.vrbox_kumo_shadow_col.g;
        color.b = g_env_light.vrbox_kumo_shadow_col.b;
        color.a = g_env_light.vrbox_kumo_top_col.a;
        kumo_material1->setTevColor(0, &color);
    }

    modelData = i_this->mpKasumimModel->getModelData();
    J3DMaterial* kasumim_material0 = modelData->getMaterialNodePointer(0);
    if (kasumim_material0 != NULL) {
        kasumim_material0->setCullMode(0);
        kasumim_material0->change();

        color.r = g_env_light.vrbox_kasumi_outer_col.r;
        color.g = g_env_light.vrbox_kasumi_outer_col.g;
        color.b = g_env_light.vrbox_kasumi_outer_col.b;
        color.a = g_env_light.vrbox_kasumi_outer_col.a;
        kasumim_material0->setTevColor(0, &color);
    }

    if (sun_p != NULL) {
        J3DModelData* modelData = i_this->model2->getModelData();
        for (int i = 0; i < 3; i++) {
            J3DMaterial* material_p = modelData->getMaterialNodePointer(i);

            if (material_p != NULL) {
                material_p->setCullMode(0);
                material_p->change();

                color.r = sun_p->mColor.r;
                color.g = sun_p->mColor.g;
                color.b = sun_p->mColor.b;

                k_color.r = sun_p->field_0x74.r;
                k_color.g = sun_p->field_0x74.g;
                k_color.b = sun_p->field_0x74.b;
                k_color.a = sun_p->field_0x74.a;

                if (i == 1) {
                    if (g_env_light.daytime > 255.0f || g_env_light.daytime < 97.5f) {
                        cLib_addCalc(&sun_p->field_0x64, 1.0f, 0.2f, 0.1f, 0.0001f);
                    } else {
                        cLib_addCalc(&sun_p->field_0x64, 0.0f, 0.2f, 0.1f, 0.0001f);
                    }

                    int alpha = sun_p->field_0x64 * 255.0f * sun_p->mSunAlpha;
                    color.a = alpha;
                    k_color.a = alpha;
                } else if (i == 2) {
                    int alpha = sun_p->mSunAlpha * 255.0f * (1.0f - sun_p->field_0x64);
                    color.a = alpha;
                    k_color.a = alpha;
                } else {
                    int alpha = sun_p->mSunAlpha * 255.0f;
                    color.a = alpha;
                    k_color.a = alpha;
                }

                material_p->setTevColor(0, &color);
                material_p->setTevKColor(0, &k_color);
            }
        }
    }

    return 1;
}

/* 804997E8-8049982C 000DE8 0044+00 1/0 0/0 0/0 .text            daVrbox2_Execute__FP12vrbox2_class
 */
static int daVrbox2_Execute(vrbox2_class* i_this) {
    if (g_env_light.daytime > FLOAT_LABEL(lit_3837)) {
        i_this->mSunBtk.play();
    }

    return 1;
}

/* 8049982C-80499834 000E2C 0008+00 1/0 0/0 0/0 .text            daVrbox2_IsDelete__FP12vrbox2_class
 */
static int daVrbox2_IsDelete(vrbox2_class* i_this) {
    return 1;
}

/* 80499834-8049983C 000E34 0008+00 1/0 0/0 0/0 .text            daVrbox2_Delete__FP12vrbox2_class
 */
static int daVrbox2_Delete(vrbox2_class* i_this) {
    return 1;
}

/* 8049983C-80499978 000E3C 013C+00 1/1 0/0 0/0 .text daVrbox2_solidHeapCB__FP10fopAc_ac_c */
static int daVrbox2_solidHeapCB(fopAc_ac_c* i_this) {
    vrbox2_class* a_this = (vrbox2_class*)i_this;

    a_this->mpKumoModel = mDoExt_J3DModel__create(
        (J3DModelData*)dComIfG_getStageRes("vrbox_kumo.bmd"), 0x80000, 0x11020202);

    J3DModelData* sun_modelData = (J3DModelData*)dComIfG_getStageRes("vrbox_sun.bmd");
    if (sun_modelData != NULL) {
        a_this->model2 = mDoExt_J3DModel__create(sun_modelData, 0x80000, 0x11020202);
        a_this->model2_und = mDoExt_J3DModel__create(sun_modelData, 0x80000, 0x11020202);

        J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getStageRes("vrbox_sun.btk");
        if (!a_this->mSunBtk.init(sun_modelData, pbtk, TRUE, J3DFrameCtrl::EMode_LOOP, FLOAT_LABEL(lit_3627), 0, -1)) {
            return 0;
        }
    }

    J3DModelData* kasumi_modelData = (J3DModelData*)dComIfG_getStageRes("vrbox_kasumiM.bmd");
    if (kasumi_modelData != NULL) {
        a_this->mpKasumimModel = mDoExt_J3DModel__create(kasumi_modelData, 0x80000, 0x11020202);
    }

    return a_this->mpKumoModel != NULL && a_this->model2 != NULL && a_this->model2_und != NULL;
}

/* 80499978-80499A1C 000F78 00A4+00 1/0 0/0 0/0 .text            daVrbox2_Create__FP10fopAc_ac_c */
static int daVrbox2_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, vrbox2_class);
    vrbox2_class* a_this = (vrbox2_class*)i_this;

    int phase = cPhs_COMPLEATE_e;
    if (!fopAcM_entrySolidHeap(a_this, daVrbox2_solidHeapCB, 0x80004340)) {
        phase = cPhs_ERROR_e;
    }

    return phase;
}

/* ############################################################################################## */
/* 80499B18-80499B38 -00001 0020+00 1/0 0/0 0/0 .data            l_daVrbox2_Method */
static actor_method_class l_daVrbox2_Method = {
    (process_method_func)daVrbox2_Create,  (process_method_func)daVrbox2_Delete,
    (process_method_func)daVrbox2_Execute, (process_method_func)daVrbox2_IsDelete,
    (process_method_func)daVrbox2_Draw,
};

/* 80499B38-80499B68 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_VRBOX2 */
extern actor_process_profile_definition g_profile_VRBOX2 = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_VRBOX2,
    &g_fpcLf_Method.base,
    sizeof(vrbox2_class),
    0,
    0,
    &g_fopAc_Method.base,
    4,
    &l_daVrbox2_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_0_e,
};

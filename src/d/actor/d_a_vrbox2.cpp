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
// Declarations:
//

static int daVrbox2_color_set(vrbox2_class* param_0);

/* 80498A78-80498ACC 000078 0054+00 1/1 0/0 0/0 .text            texScrollCheck__FRf */
static void texScrollCheck(f32& param_0) {
    while (param_0 < 0.0f)
        param_0 += 1.0f;

    while (param_0 > 1.0f)
        param_0 -= 1.0f;
}

/* 80498ACC-804990DC 0000CC 0610+00 1/0 0/0 0/0 .text            daVrbox2_Draw__FP12vrbox2_class */
// NONMATCHING - reg alloc
static int daVrbox2_Draw(vrbox2_class* i_this) {
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
    J3DModelData* sp38 = (J3DModelData*)kumo_model_p;
    J3DModelData* sp34 = (J3DModelData*)sun_model_p;
    J3DModelData* sp30 = (J3DModelData*)kasumim_model_p;
    for (int i = sp38->getMaterialNum() - 1; i >= 0; i--) {
        J3DMaterial* material_p = sp38->getMaterialNodePointer(i);

        J3DFogInfo* fogInfo_p;
        if (material_p != NULL) {
            fogInfo_p = material_p->getFog()->getFogInfo();
        }

        fogInfo_p->mType = 2;
    }

    for (int i = sp34->getMaterialNum() - 1; i >= 0; i--) {
        J3DMaterial* material_p = sp34->getMaterialNodePointer(i);

        J3DFogInfo* fogInfo_p;
        if (material_p != NULL) {
            fogInfo_p = material_p->getFog()->getFogInfo();
        }

        fogInfo_p->mType = 2;
    }

    for (int i = sp30->getMaterialNum() - 1; i >= 0; i--) {
        J3DMaterial* material_p = sp30->getMaterialNodePointer(i);

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
        filelist_p = dComIfGp_roomControl_getStatusRoomDt(dComIfGp_roomControl_getStayNo())->getFileListInfo();
    }

    if (filelist_p != NULL) {
        var_f31 = dStage_FileList_dt_SeaLevel(filelist_p);
    }

#ifdef DEBUG
    if (g_kankyoHIO.field_0xB4 != 0) {
        var_f31 = g_kankyoHIO.field_0xB8;
    } else {
        g_kankyoHIO.field_0xB8 = var_f31;
    }
#endif

    f32 f29;
    if (dComIfGd_getView() != NULL) {
        f29 = (dComIfGd_getInvViewMtx()[1][3] - var_f31) * 0.09f;
    } else {
        f29 = 0.0f;
    }

    dComIfGd_setListSky();
    mDoMtx_stack_c::transS(dComIfGd_getInvViewMtx()[0][3], dComIfGd_getInvViewMtx()[1][3] - f29,
                           dComIfGd_getInvViewMtx()[2][3]);
    kasumim_model_p->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoExt_modelUpdateDL(kasumim_model_p);

    mDoMtx_stack_c::transS(dComIfGd_getInvViewMtx()[0][3], dComIfGd_getInvViewMtx()[1][3] - f29,
                           dComIfGd_getInvViewMtx()[2][3]);
    kumo_model_p->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoExt_modelUpdateDL(kumo_model_p);

    if (dStage_stagInfo_GetArg0(dComIfGp_getStage()->getStagInfo()) != 0 && sun_model_p != NULL &&
        sun_p != NULL && sun_p->mSunAlpha > 0.0f)
    {
        cXyz sp14;
        sp14 = sun_p->mPos[0];

#ifndef DEBUG
        cXyz sp8;
        if (strcmp(dComIfGp_getStartStageName(), "F_SP102") == 0) {
            dKyr_get_vectle_calc(&camera_p->lookat.eye, &g_env_light.sun_pos, &sp8);
            sp14.x = camera_p->lookat.eye.x + (8000.0f * sp8.x);
            sp14.y = camera_p->lookat.eye.y + (8000.0f * sp8.y);
            sp14.z = camera_p->lookat.eye.z + (8000.0f * sp8.z);
        }
#endif

        s16 temp_r19 = cLib_targetAngleX(&camera_p->lookat.eye, &sp14);
        s16 temp_r18 = cLib_targetAngleY(&camera_p->lookat.eye, &sp14);
        mDoMtx_stack_c::transS(sp14.x, sp14.y, sp14.z);
        mDoMtx_stack_c::YrotM((s16)temp_r18);
        mDoMtx_stack_c::XrotM(0x7FFF + -temp_r19);

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
            /* 80499B78-80499B7C 000000 0002+02 1/1 0/0 0/0 .bss             mangZ$3688 */
            static s16 mangZ;

            sp14 = sun_p->mPos[0];
            sp14.y = 300.0f + -(sp14.y * 0.85f);

            temp_r19 = cLib_targetAngleX(&camera_p->lookat.eye, &sp14);
            temp_r18 = cLib_targetAngleY(&camera_p->lookat.eye, &sp14);
            mDoMtx_stack_c::transS(sp14.x, sp14.y, sp14.z);
            mDoMtx_stack_c::YrotM((s16)temp_r18);
            mDoMtx_stack_c::XrotM(0x7FFF + -temp_r19);
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

/* 804990DC-804997E8 0006DC 070C+00 1/1 0/0 0/0 .text daVrbox2_color_set__FP12vrbox2_class */
static int daVrbox2_color_set(vrbox2_class* i_this) {
    fopAc_ac_c* actor = i_this;

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

    u32 sp10 = dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo());

    cam_eye = camera_p->lookat.eye;
    cam_center = camera_p->lookat.center;
    cam_eye.y = 0.0f;
    cam_center.y = 0.0f;

    dKyr_get_vectle_calc(&cam_eye, &cam_center, &camFwdXZ);
    f32 temp_f30 =
        cM3d_VectorProduct2d(0.0f, 0.0f, -wind_vec.x, -wind_vec.z, camFwdXZ.x, camFwdXZ.z);
    f32 var_f29 = temp_f30 * 0.0005f * wind_pow;

    if (strcmp(dComIfGp_getStartStageName(), "R_SP30") == 0) {
        cXyz* sp0C = dKyw_get_wind_vec();
        var_f29 = temp_f30 * 0.0005f * (wind_pow + 0.3f);
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
    GXColor k_color;
    GXColorS10 color;

    J3DMaterial* kumo_material0 = modelData->getMaterialNodePointer(0);
    if (kumo_material0 != NULL) {
        kumo_material0->setCullMode(0);
        kumo_material0->change();

        k_color.r = g_env_light.vrbox_kumo_bottom_col.r;
        k_color.g = g_env_light.vrbox_kumo_bottom_col.g;
        k_color.b = g_env_light.vrbox_kumo_bottom_col.b;
        k_color.a = g_env_light.vrbox_kumo_top_col.a;
        kumo_material0->setTevKColor(0, (J3DGXColor*)&k_color);

        color.r = g_env_light.vrbox_kumo_shadow_col.r;
        color.g = g_env_light.vrbox_kumo_shadow_col.g;
        color.b = g_env_light.vrbox_kumo_shadow_col.b;
        color.a = (u8)g_env_light.vrbox_kumo_top_col.a;
        kumo_material0->setTevColor(0, (J3DGXColorS10*)&color);
    }

    J3DMaterial* kumo_material1 = modelData->getMaterialNodePointer(1);
    if (kumo_material1 != NULL) {
        kumo_material1->setCullMode(0);
        kumo_material1->change();

        k_color.r = g_env_light.vrbox_kumo_bottom_col.r;
        k_color.g = g_env_light.vrbox_kumo_bottom_col.g;
        k_color.b = g_env_light.vrbox_kumo_bottom_col.b;
        k_color.a = g_env_light.vrbox_kumo_top_col.a;
        kumo_material1->setTevKColor(0, (J3DGXColor*)&k_color);

        color.r = g_env_light.vrbox_kumo_shadow_col.r;
        color.g = g_env_light.vrbox_kumo_shadow_col.g;
        color.b = g_env_light.vrbox_kumo_shadow_col.b;
        color.a = g_env_light.vrbox_kumo_top_col.a;
        kumo_material1->setTevColor(0, (J3DGXColorS10*)&color);
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
        kasumim_material0->setTevColor(0, (J3DGXColorS10*)&color);
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

                k_color = sun_p->field_0x74;

                if (i == 1) {
                    if (g_env_light.daytime > 255.0f || g_env_light.daytime < 97.5f) {
                        cLib_addCalc(&sun_p->field_0x64, 1.0f, 0.2f, 0.1f, 0.0001f);
                    } else {
                        cLib_addCalc(&sun_p->field_0x64, 0.0f, 0.2f, 0.1f, 0.0001f);
                    }

                    color.a = sun_p->field_0x64 * 255.0f * sun_p->mSunAlpha;
                    k_color.a = color.a;
                } else if (i == 2) {
                    color.a = sun_p->mSunAlpha * 255.0f * (1.0f - sun_p->field_0x64);
                    k_color.a = color.a;
                } else {
                    color.a = sun_p->mSunAlpha * 255.0f;
                    k_color.a = color.a;
                }

                material_p->setTevColor(0, (J3DGXColorS10*)&color);
                material_p->setTevKColor(0, (J3DGXColor*)&k_color);
            }
        }
    }

    return 1;
}

/* 804997E8-8049982C 000DE8 0044+00 1/0 0/0 0/0 .text            daVrbox2_Execute__FP12vrbox2_class
 */
static int daVrbox2_Execute(vrbox2_class* i_this) {
    i_this = i_this; // ?? fakematch? only needed for debug

    if (g_env_light.daytime > 255.0f) {
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
    fopAcM_RegisterDeleteID(i_this, "Vrbox2");
    return 1;
}

/* 8049983C-80499978 000E3C 013C+00 1/1 0/0 0/0 .text daVrbox2_solidHeapCB__FP10fopAc_ac_c */
static int daVrbox2_solidHeapCB(fopAc_ac_c* i_this) {
    vrbox2_class* a_this = (vrbox2_class*)i_this;

    J3DModelData* modelData = (J3DModelData*)dComIfG_getStageRes("vrbox_kumo.bmd");
    JUT_ASSERT(785, modelData != 0);

    a_this->mpKumoModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11020202);

    J3DModelData* kasumi_modelData;
    J3DModelData* sun_modelData;
    sun_modelData = (J3DModelData*)dComIfG_getStageRes("vrbox_sun.bmd");
    if (sun_modelData != NULL) {
        a_this->model2 = mDoExt_J3DModel__create(sun_modelData, 0x80000, 0x11020202);
        JUT_ASSERT(809, a_this->model2 != 0);
        a_this->model2_und = mDoExt_J3DModel__create(sun_modelData, 0x80000, 0x11020202);
        JUT_ASSERT(820, a_this->model2_und != 0);

        J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getStageRes("vrbox_sun.btk");
        JUT_ASSERT(825, pbtk != 0);
        if (!a_this->mSunBtk.init(sun_modelData, pbtk, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1)) {
            return 0;
        }
    }

    kasumi_modelData = (J3DModelData*)dComIfG_getStageRes("vrbox_kasumiM.bmd");
    if (kasumi_modelData != NULL) {
        a_this->mpKasumimModel = mDoExt_J3DModel__create(kasumi_modelData, 0x80000, 0x11020202);
    }

    return a_this->mpKumoModel != NULL && a_this->model2 != NULL && a_this->model2_und != NULL;
}

/* 80499978-80499A1C 000F78 00A4+00 1/0 0/0 0/0 .text            daVrbox2_Create__FP10fopAc_ac_c */
static int daVrbox2_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, vrbox2_class);

    int phase = cPhs_COMPLEATE_e;
    if (!fopAcM_entrySolidHeap(i_this, daVrbox2_solidHeapCB, 0x80004340)) {
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

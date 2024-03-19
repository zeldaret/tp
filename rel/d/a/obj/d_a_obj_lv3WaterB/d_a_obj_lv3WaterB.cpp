/**
 * d_a_obj_lv3WaterB.cpp
 * Morpheel Arena Water
 */

#include "rel/d/a/obj/d_a_obj_lv3WaterB/d_a_obj_lv3WaterB.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "d/bg/d_bg_w.h"
#include "d/com/d_com_inf_game.h"

/* 80C5B578-80C5B71C 000078 01A4+00 1/0 0/0 0/0 .text
 * daObj_Lv3waterB_Draw__FP19obj_lv3WaterB_class                */
static int daObj_Lv3waterB_Draw(obj_lv3WaterB_class* i_this) {
    g_env_light.settingTevStruct(0x10, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(i_this->mpBWaterModel, &i_this->tevStr);

    i_this->mpBWaterBtk->entry(i_this->mpBWaterModel->getModelData());

    dComIfGd_setListInvisisble();
    J3DMaterial* material_p = i_this->mpBWaterModel->getModelData()->getMaterialNodePointer(0);
    if (material_p->getTexGenBlock()->getTexMtx(0) != NULL) {
        J3DTexMtxInfo* tex_mtx_info = &material_p->getTexGenBlock()->getTexMtx(0)->getTexMtxInfo();
        if (tex_mtx_info != NULL) {
            Mtx m;
            C_MTXLightPerspective(m, dComIfGd_getView()->mFovy, dComIfGd_getView()->mAspect, 1.0f,
                                  1.0f, -0.015f, 0.0f);
            tex_mtx_info->setEffectMtx(m);
            i_this->mpBWaterModel->getModelData()->simpleCalcMaterial(0, (MtxP)j3dDefaultMtx);
        }
    }

    mDoExt_modelUpdateDL(i_this->mpBWaterModel);

    if (i_this->mpOctHibiModel != NULL) {
        g_env_light.setLightTevColorType_MAJI(i_this->mpOctHibiModel, &i_this->tevStr);

        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(i_this->mpOctHibiModel);
        dComIfGd_setList();
    }

    return 1;
}

/* 80C5B71C-80C5B89C 00021C 0180+00 1/1 0/0 0/0 .text            action__FP19obj_lv3WaterB_class */
static void action(obj_lv3WaterB_class* i_this) {
    switch (i_this->mAction) {
    case 0:
        break;
    case 1:
        dComIfG_Bgsp().Release(i_this->mpOctHibiBgW);
        i_this->mpOctHibiModel = NULL;
        i_this->mAction = 0;
        break;
    case 2:
        dKy_custom_colset(4, 4, 0.0f);

        if (i_this->field_0x586 == 0) {
            i_this->current.pos.y = (i_this->home.pos.y - 14450.0f) + 160.0f + 4000.0f;
            i_this->field_0x586 = 1;
        }

        cLib_addCalc2(&i_this->current.pos.y, (i_this->home.pos.y - 14450.0f) + 160.0f, 0.05f,
                      10.0f);
        break;
    }

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    i_this->mpBWaterModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), i_this->mpBWaterMtx);

    i_this->mpBWaterBgW->Move();
    i_this->mpBWaterBtk->play();

    if (i_this->mpOctHibiModel != NULL) {
        mDoMtx_stack_c::transS(0.0f, 0.0f, 0.0f);
        i_this->mpOctHibiModel->setBaseTRMtx(mDoMtx_stack_c::get());
        MTXCopy(mDoMtx_stack_c::get(), i_this->mpOctHibiMtx);

        i_this->mpOctHibiBgW->Move();
    }
}

/* 80C5B89C-80C5B8C0 00039C 0024+00 2/1 0/0 0/0 .text
 * daObj_Lv3waterB_Execute__FP19obj_lv3WaterB_class             */
static int daObj_Lv3waterB_Execute(obj_lv3WaterB_class* i_this) {
    action(i_this);
    return 1;
}

/* 80C5B8C0-80C5B8C8 0003C0 0008+00 1/0 0/0 0/0 .text
 * daObj_Lv3waterB_IsDelete__FP19obj_lv3WaterB_class            */
static int daObj_Lv3waterB_IsDelete(obj_lv3WaterB_class* i_this) {
    return 1;
}

/* 80C5B8C8-80C5B94C 0003C8 0084+00 1/0 0/0 0/0 .text
 * daObj_Lv3waterB_Delete__FP19obj_lv3WaterB_class              */
static int daObj_Lv3waterB_Delete(obj_lv3WaterB_class* i_this) {
    fopAcM_GetID(i_this);
    dComIfG_resDelete(&i_this->mBWaterPhase, "L3_bwater");
    dComIfG_resDelete(&i_this->mOcthibiPhase, "S_octhibi");

    dComIfG_Bgsp().Release(i_this->mpBWaterBgW);

    if (i_this->mpOctHibiBgW != NULL) {
        dComIfG_Bgsp().Release(i_this->mpOctHibiBgW);
    }

    return 1;
}

/* 80C5B94C-80C5BB8C 00044C 0240+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    obj_lv3WaterB_class* a_this = static_cast<obj_lv3WaterB_class*>(i_this);

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L3_bwater", 5);
    JUT_ASSERT(modelData != 0);

    a_this->mpBWaterModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (a_this->mpBWaterModel == NULL) {
        return 0;
    }

    a_this->mpBWaterBtk = new mDoExt_btkAnm();
    if (a_this->mpBWaterBtk == NULL) {
        return 0;
    }

    J3DAnmTextureSRTKey* btk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("L3_bwater", 8);
    if (!a_this->mpBWaterBtk->init(a_this->mpBWaterModel->getModelData(), btk, TRUE,
                                   J3DFrameCtrl::LOOP_REPEAT_e, 1.0f, 0, -1))
    {
        return 0;
    }

    a_this->mpBWaterBgW = new dBgW();
    if (a_this->mpBWaterBgW == NULL) {
        return 0;
    }

    cBgD_t* dzb = (cBgD_t*)dComIfG_getObjectRes("L3_bwater", 11);
    if (a_this->mpBWaterBgW->Set(dzb, dBgW::MOVE_BG_e, &a_this->mpBWaterMtx) == true) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("S_octhibi", 4);
    JUT_ASSERT(modelData != 0);

    a_this->mpOctHibiModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (a_this->mpOctHibiModel == NULL) {
        return 0;
    }

    a_this->mpOctHibiBgW = new dBgW();
    if (a_this->mpOctHibiBgW == NULL) {
        return 0;
    }

    dzb = (cBgD_t*)dComIfG_getObjectRes("S_octhibi", 7);
    if (a_this->mpOctHibiBgW->Set(dzb, dBgW::MOVE_BG_e, &a_this->mpOctHibiMtx) == true) {
        return 0;
    }

    return 1;
}

/* 80C5BBD4-80C5BD48 0006D4 0174+00 1/0 0/0 0/0 .text daObj_Lv3waterB_Create__FP10fopAc_ac_c */
static int daObj_Lv3waterB_Create(fopAc_ac_c* i_this) {
    obj_lv3WaterB_class* a_this = static_cast<obj_lv3WaterB_class*>(i_this);
    fopAcM_SetupActor(a_this, obj_lv3WaterB_class);

    int phase_state = dComIfG_resLoad(&a_this->mBWaterPhase, "L3_bwater");
    int octhibi_phase_state = dComIfG_resLoad(&a_this->mOcthibiPhase, "S_octhibi");
    if (phase_state == cPhs_COMPLEATE_e && octhibi_phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("OBJ_LV3WATERB PARAM %x\n", fopAcM_GetParam(a_this));
        OS_REPORT("OBJ_LV3WATERB//////////////OBJ_LV3WATERB SET 1 !!\n");

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0x4B000)) {
            OS_REPORT("//////////////OBJ_LV3WATERB SET NON !!\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("//////////////OBJ_LV3WATERB SET 2 !!\n");

        if (dComIfG_Bgsp().Regist(a_this->mpBWaterBgW, a_this)) {
            return cPhs_ERROR_e;
        }

        if (dComIfG_Bgsp().Regist(a_this->mpOctHibiBgW, a_this)) {
            return cPhs_ERROR_e;
        }

        if (dComIfGs_isStageBossEnemy()) {
            a_this->current.pos.y = (a_this->home.pos.y - 14450.0f) + 160.0f;
            a_this->mAction = 2;
            a_this->field_0x586 = 1;
            a_this->mpOctHibiModel = NULL;
        }

        daObj_Lv3waterB_Execute(a_this);
        return phase_state;
    } else if (phase_state == cPhs_COMPLEATE_e) {
        return octhibi_phase_state;
    }

    return phase_state;
}

/* 80C5BD84-80C5BDA4 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Lv3waterB_Method */
static actor_method_class l_daObj_Lv3waterB_Method = {
    (process_method_func)daObj_Lv3waterB_Create,  (process_method_func)daObj_Lv3waterB_Delete,
    (process_method_func)daObj_Lv3waterB_Execute, (process_method_func)daObj_Lv3waterB_IsDelete,
    (process_method_func)daObj_Lv3waterB_Draw,
};

/* 80C5BDA4-80C5BDD4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_LV3WATERB */
extern actor_process_profile_definition g_profile_OBJ_LV3WATERB = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_OBJ_LV3WATERB,
    &g_fpcLf_Method.mBase,
    sizeof(obj_lv3WaterB_class),
    0,
    0,
    &g_fopAc_Method.base,
    618,
    &l_daObj_Lv3waterB_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

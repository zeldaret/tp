/**
 * d_a_obj_ystone.cpp
 * Object - Dungeon Prize
 */

#include "rel/d/a/obj/d_a_obj_ystone/d_a_obj_ystone.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80D3ECBC-80D3ECD8 -00001 001C+00 4/4 0/0 0/0 .data            l_arcName */
static char const* l_arcName[7] = {
    "N_gD_mskF",
    "N_gD_mskB",
    "N_gD_mskT",
    "MirrorB",
    "MirrorB",
    "MirrorB",
    "MirrorB",
};

/* 80D3ECD8-80D3ECFC -00001 0024+00 1/1 0/0 0/0 .data            l_stageName$3775 */
static char const* l_stageName[9] = {
    "D_MN05A",
    "D_MN04A",
    "D_MN01A",
    "D_MN10A",
    "D_MN11A",
    "D_MN06A",
    "D_MN07A",
    "D_MN01A",
    "D_MN01A",
};

/* 80D3EC0C-80D3EC28 000000 001C+00 2/2 0/0 0/0 .rodata          l_bmdIndex */
static int const l_bmdIndex[7] = {4, 4, 4, 9, 9, 10, 11};

/* 80D3EC28-80D3EC34 00001C 000C+00 0/1 0/0 0/0 .rodata          l_brkIndex */
static int const l_brkIndex[3] = {7, 7, 7};

/* 80D3EC34-80D3EC50 000028 001C+00 0/1 0/0 0/0 .rodata          l_btkIndex */
static int const l_btkIndex[7] = {14, 14, 14, 14, 14, 15, 16};

/* 80D3E018-80D3E090 000078 0078+00 1/1 0/0 0/0 .text            getNowLevel__Fv */
static int getNowLevel() {
    for (int i = 0; i < 9; i++) {
        if (!strcmp(dComIfGp_getStartStageName(), l_stageName[i])) {
            return i + 1;
        }
    }
    return -1;
}

/* 80D3E090-80D3E180 0000F0 00F0+00 1/0 0/0 0/0 .text daObj_Ystone_Draw__FP16obj_ystone_class */
static int daObj_Ystone_Draw(obj_ystone_class* i_this) {
    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->mTevStr);
    if (i_this->mLevel < 3) {
        if (!i_this->field_0x59b) {
            g_env_light.setLightTevColorType_MAJI(i_this->mpModel->mModelData, &i_this->mTevStr);
            i_this->mpBrkAnm->entry(i_this->mpModel->getModelData());
            mDoExt_modelUpdateDL(i_this->mpModel);
        }
    } else {
        J3DModel* model = i_this->mpMorf->getModel();
        g_env_light.setLightTevColorType_MAJI(model->mModelData, &i_this->mTevStr);
        if (i_this->field_0x59a) {
            i_this->mpBtkAnm->entry(model->getModelData());
        }
        fopAcM_setEffectMtx(i_this, model->getModelData());
        i_this->mpMorf->entryDL();
    }
    return 1;
}

/* 80D3E180-80D3E25C 0001E0 00DC+00 1/1 0/0 0/0 .text setModelBaseMtx__FP16obj_ystone_class */
static void setModelBaseMtx(obj_ystone_class* i_this) {
    J3DModel* model;
    if (i_this->mLevel < 3) {
        model = i_this->mpModel;
    } else {
        model = i_this->mpMorf->getModel();
    }
    if (i_this->field_0x598 == 0) {
        mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
        mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
        mDoMtx_stack_c::scaleM(i_this->mScaleF, i_this->mScaleF, i_this->mScaleF);
        model->i_setBaseTRMtx(mDoMtx_stack_c::get());
    } else {
        i_this->field_0x598 = 0;
        mDoMtx_stack_c::copy(model->getBaseTRMtx());
        mDoMtx_stack_c::multVecZero(&i_this->current.pos);
    }
}

static u16 mirror_effect_id[10] = {
    0x89A0, 0x89A1, 0x89A2, 0x89A5, 0x89A6, 0x89A7, 0x89A8, 0x89A9, 0x89AA, 0x89AB
};

/* 80D3E25C-80D3E6EC 0002BC 0490+00 2/1 0/0 0/0 .text            action__FP16obj_ystone_class */
static void action(obj_ystone_class* i_this) {
    if (i_this->mLevel < 3) {
        switch (i_this->mShadowMode) {
        case 0:
            i_this->shape_angle.y += 0x100;
            break;
        }

        setModelBaseMtx(i_this);
        i_this->mParticleKey =
            dComIfGp_particle_set(i_this->mParticleKey, 0x8403, &i_this->current.pos,
                                  &i_this->mTevStr, &i_this->shape_angle, NULL, 0xff,
                                  NULL, -1, NULL, NULL, NULL);
        i_this->mpBrkAnm->play();
    } else {
        if (i_this->mTimer != 0) {
            i_this->mTimer--;
        }

        J3DAnmTransform* anm;
        J3DAnmTextureSRTKey* btk_anm;
        switch (i_this->mMirrorMode) {
        case 0:
            g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->mTevStr);
            static u16 mirror_effect_id[10] = {
                0x89A0, 0x89A1, 0x89A2, 0x89A5, 0x89A6, 0x89A7, 0x89A8, 0x89A9, 0x89AA, 0x89AB
            };
            for (int i = 0; i < 10; i++) {
                dComIfGp_particle_set(mirror_effect_id[i], &i_this->current.pos, &i_this->mTevStr,
                                      &i_this->shape_angle, NULL);
            }
            i_this->mMirrorMode = 1;
            i_this->mTimer = 120;
            anm = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName[i_this->mLevel], 5);
            i_this->mpMorf->setAnm(anm, 0, 0.0f, 0.0f, 0.0f, -1.0f);
            i_this->mpMorf->setFrame(1.0f);
            break;

        case 1:
            if (i_this->mTimer == 0) {
                i_this->mMirrorMode = 2;
                i_this->mpMorf->setPlaySpeed(1.0f);
                i_this->mpMorf->setFrame(0.0f);
            }
            // no break

        case 2:
            i_this->mParticleKey =
                dComIfGp_particle_set(i_this->mParticleKey, 0x89a3, &i_this->current.pos,
                                    &i_this->mTevStr, &i_this->shape_angle, NULL, 0xff,
                                    NULL, -1, NULL, NULL, NULL);
            i_this->shape_angle.y += 0x100;
            break;

        case 3:
            i_this->mMirrorMode = 4;
            anm = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName[i_this->mLevel], 6);
            i_this->mpMorf->setAnm(anm, 0, 0.0f, 1.0f, 0.0f, -1.0f);
            i_this->field_0x59a = true;
            btk_anm = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName[i_this->mLevel],
                                                                 l_btkIndex[i_this->mLevel]);
            i_this->mpBtkAnm->init(i_this->mpMorf->getModel()->getModelData(),
                                   btk_anm, 1, 0, 1.0f, 0, -1);
            // no break

        case 4: {
            i_this->shape_angle.y += 0x100;
            mDoMtx_stack_c::copy(i_this->mpMorf->getModel()->i_getAnmMtx(0));
            cXyz particle_pos;
            mDoMtx_stack_c::multVecZero(&particle_pos);
            i_this->mParticleKey =
                dComIfGp_particle_set(i_this->mParticleKey, 0x89a4, &particle_pos, &i_this->mTevStr,
                                      &i_this->shape_angle, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
            break;
        }

        case 5:
            i_this->mMirrorMode = 6;
            anm = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName[i_this->mLevel], 6);
            i_this->mpMorf->setAnm(anm, 0, 0.0f, 0.0f, 0.0f, -1.0f);
            break;
        
        case 6:
            break;
        }

        if (i_this->field_0x59a) {
            i_this->mpBtkAnm->play();
        }
        i_this->mpMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));
        setModelBaseMtx(i_this);
        i_this->mpMorf->modelCalc();
    }
}

/* 80D3E6EC-80D3E770 00074C 0084+00 2/1 0/0 0/0 .text daObj_Ystone_Execute__FP16obj_ystone_class
 */
static int daObj_Ystone_Execute(obj_ystone_class* i_this) {
    if (i_this->mLevel < 3 && i_this->field_0x59b) {
        return 1;
    } else {
        action(i_this);
        i_this->mEyePos = i_this->current.pos;
        i_this->mAttentionInfo.mPosition = i_this->current.pos;
        return 1;
    }
}

/* 80D3E770-80D3E778 0007D0 0008+00 1/0 0/0 0/0 .text daObj_Ystone_IsDelete__FP16obj_ystone_class
 */
static int daObj_Ystone_IsDelete(obj_ystone_class* i_this) {
    return 1;
}

/* 80D3E778-80D3E7B8 0007D8 0040+00 1/0 0/0 0/0 .text daObj_Ystone_Delete__FP16obj_ystone_class */
static int daObj_Ystone_Delete(obj_ystone_class* i_this) {
    dComIfG_resDelete(&i_this->mPhaseReq, l_arcName[i_this->mLevel]);
    return 1;
}

/* 80D3E7B8-80D3EA38 000818 0280+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    obj_ystone_class* _this = static_cast<obj_ystone_class*>(i_this);
    void* model_data =
        dComIfG_getObjectRes(l_arcName[_this->mLevel], l_bmdIndex[_this->mLevel]);

    if (_this->mLevel < 3) {
        _this->mpModel = mDoExt_J3DModel__create((J3DModelData*)model_data, 0x80000, 0x11000084);
        if (_this->mpModel == NULL) {
            return 0;
        }

        J3DAnmTevRegKey* brk_anm =
            (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName[_this->mLevel],
                                                   l_brkIndex[_this->mLevel]);
        _this->mpBrkAnm = new mDoExt_brkAnm();
        if (_this->mpBrkAnm == NULL ||
            !_this->mpBrkAnm->init((J3DModelData*)model_data, brk_anm, 1, 2, 1.0f, 0, -1))
        {
            return 0;
        }
    } else {
        _this->mpMorf = new mDoExt_McaMorfSO((J3DModelData*)model_data, NULL, NULL,
            (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName[_this->mLevel], 5),
            0, 1.0f, 0, -1, NULL, 0, 0x11000284);
        if (_this->mpMorf == NULL || _this->mpMorf->getModel() == NULL) {
            return 0;
        }

        _this->mpBtkAnm = new mDoExt_btkAnm();
        if (_this->mpBtkAnm == NULL) {
            return 0;
        }
        J3DAnmTextureSRTKey* btk_anm =
            (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName[_this->mLevel],
                                                       l_btkIndex[_this->mLevel]);
        if (!_this->mpBtkAnm->init((J3DModelData*)model_data, btk_anm, 0, 2, 1.0f, 0, -1)) {
            return 0;
        }
    }
    return 1;
}

/* 80D3EA80-80D3EC04 000AE0 0184+00 1/0 0/0 0/0 .text            daObj_Ystone_Create__FP10fopAc_ac_c
 */
static cPhs__Step daObj_Ystone_Create(fopAc_ac_c* i_this) {
    obj_ystone_class* _this = static_cast<obj_ystone_class*>(i_this);
    fopAcM_SetupActor(_this, obj_ystone_class);
    _this->mLevel = getNowLevel() - 1;
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&_this->mPhaseReq, l_arcName[_this->mLevel]);

    if (step == cPhs_COMPLEATE_e) {
        if (_this->mLevel < 3) {
            if (!fopAcM_entrySolidHeap(_this, useHeapInit, 0x1000)) {
                return cPhs_ERROR_e;
            }
        } else {
            if (!fopAcM_entrySolidHeap(_this, useHeapInit, 0x33a0)) {
                return cPhs_ERROR_e;
            }
        }

        if (_this->mLevel < 3) {
            fopAcM_SetMtx(_this, _this->mpModel->getBaseTRMtx());
            if (_this->mLevel < 3) {
                _this->field_0x59b = true;
            }
            mDoMtx_stack_c::scaleS(0.0f, 0.0f, 0.0f);
            _this->mpModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
        } else {
            fopAcM_SetMtx(_this, _this->mpMorf->getModel()->getBaseTRMtx());
            _this->mMirrorMode = fopAcM_GetParam(_this) & 0xff;
            if (_this->mMirrorMode >= 7) {
                _this->mMirrorMode = 0;
            }
        }

        _this->mScaleF = 1.0f;
        daObj_Ystone_Execute(_this);
    }
    return step;
}


/* 80D3ED2C-80D3ED4C -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Ystone_Method */
static actor_method_class l_daObj_Ystone_Method = {
    (process_method_func)daObj_Ystone_Create,
    (process_method_func)daObj_Ystone_Delete,
    (process_method_func)daObj_Ystone_Execute,
    (process_method_func)daObj_Ystone_IsDelete,
    (process_method_func)daObj_Ystone_Draw,
};

/* 80D3ED4C-80D3ED7C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_YSTONE */
extern actor_process_profile_definition g_profile_OBJ_YSTONE = {
    fpcLy_CURRENT_e,
    8,
    fpcPi_CURRENT_e,
    PROC_OBJ_YSTONE,
    &g_fpcLf_Method.mBase,
    sizeof(obj_ystone_class),
    0,
    0,
    &g_fopAc_Method.base,
    0x259,
    &l_daObj_Ystone_Method,
    0x44100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_0_e,
};

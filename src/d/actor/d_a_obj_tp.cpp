/**
 * @file d_a_obj_tp.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_tp.h"
#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "JSystem/J3DGraphAnimator/J3DModelData.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "d/d_path.h"
#include "f_op/f_op_actor.h"
#include "f_op/f_op_actor_mng.h"
#include "m_Do/m_Do_graphic.h"

/* 80D1D578-80D1D764 000078 01EC+00 1/0 0/0 0/0 .text            daObj_Tp_Draw__FP12obj_tp_class */
static int daObj_Tp_Draw(obj_tp_class* i_this) {
    g_env_light.settingTevStruct(0x10, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(i_this->mMorf->getModel(), &i_this->tevStr);
    dComIfGd_setListDark();
    J3DModelData* modelData = i_this->mMorf->getModel()->getModelData();
    i_this->mBrk->entry(modelData);
    i_this->mMorf->entryDL();
    dComIfGd_setList();
    if (i_this->field_0x5a8 != 0) {
        dComIfGd_setListFilter();
        for (int i = 1; i >= 0; i--) {
            J3DModelData* modelData = i_this->mModels[i]->getModelData();
            if (i == 0) {
                J3DMaterial* material = (J3DMaterial*)modelData->getMaterialNodePointer(0);
                if (material->getTexGenBlock()->getTexMtx(0) != 0) {
                    J3DTexMtxInfo* texMtxInfo =
                        &material->getTexGenBlock()->getTexMtx(0)->getTexMtxInfo();
                    if (texMtxInfo != NULL) {
                        Mtx lightProjMtx;
                        C_MTXLightPerspective(lightProjMtx, dComIfGd_getView()->fovy,
                                              dComIfGd_getView()->aspect, 1.0f, 1.0f, -0.01f, 0);
                        mDoGph_gInf_c::setWideZoomLightProjection(lightProjMtx);
                        texMtxInfo->setEffectMtx(lightProjMtx);
                        modelData->simpleCalcMaterial(0, (MtxP)j3dDefaultMtx);
                    }
                }
            }
            g_env_light.setLightTevColorType_MAJI(i_this->mModels[i], &i_this->tevStr);
            i_this->mBtks[i]->entry(modelData);
            i_this->mBrks[i]->entry(modelData);
            mDoExt_modelUpdateDL(i_this->mModels[i]);
        }
        dComIfGd_setList();
    }
    return 1;
}

/* 80D1D764-80D1D850 000264 00EC+00 1/1 0/0 0/0 .text            anm_init__FP12obj_tp_classifUcf */
static void anm_init(obj_tp_class* i_this, int param_2, f32 param_3, u8 param_4, f32 param_5) {
    if (i_this->field_0x594 != 0) {
        if (param_2 == 7) {
            param_2 = 10;
        } else if (param_2 == 9) {
            param_2 = 12;
        } else if (param_2 == 8) {
            param_2 = 11;
        }
    }
    J3DAnmTransform* anmTransform = (J3DAnmTransform*)dComIfG_getObjectRes("Obj_tp", param_2);
    i_this->mMorf->setAnm(anmTransform, (int)param_4, param_3, param_5, 0.0f, -1.0f, NULL);
    i_this->field_0x574 = param_2;
}

/* 80D1D850-80D1D8C8 000350 0078+00 1/1 0/0 0/0 .text            s_tp_sub__FPvPv */
static void* s_tp_sub(void* param_1, void* param_2) {
    if ((fopAcM_IsActor(param_1) && fopAcM_GetName(param_1) == PROC_OBJ_TP) &&
        ((fopAc_ac_c*)param_1)->parentActorID == ((fopAc_ac_c*)param_2)->parentActorID &&
        ((obj_tp_class*)param_2)->field_0x5a0 == ((obj_tp_class*)param_1)->field_0x59c)
    {
        return param_1;
    }
    return NULL;
}

/* 80D1D8C8-80D1E460 0003C8 0B98+00 3/1 0/0 0/0 .text            daObj_Tp_Execute__FP12obj_tp_class
 */
static int daObj_Tp_Execute(obj_tp_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    if (i_this->field_0x5a4 != 0) {
        fopAcM_delete(i_this);
        return 1;
    }
    J3DModel* model = i_this->mMorf->getModel();
    cXyz local_50;
    cXyz local_5c;
    i_this->field_0x5cc++;
    for (int i = 0; i < 2; i++) {
        if (i_this->field_0x5b8[i] != 0) {
            i_this->field_0x5b8[i]--;
        }
    }
    if (i_this->field_0x5bc != 0) {
        i_this->field_0x5bc--;
    }
    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mMorf->play(NULL, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)), 0);
    i_this->mMorf->modelCalc();
    u8 local_97 = 0;
    bool bVar5 = false;
    switch (i_this->field_0x5a6) {
    case 0:
        anm_init(i_this, 7, 0.0f, 0, 0.0f);
        i_this->field_0x5a6++;
        i_this->mBrk->setFrame(0.0f);
        if (i_this->mModels[0] != NULL) {
            i_this->mBrks[0]->setFrame(0.0f);
            i_this->mBrks[1]->setFrame(0.0f);
            i_this->mBrks[0]->setPlaySpeed(1.0f);
            i_this->mBrks[1]->setPlaySpeed(1.0f);
        }
        break;
    case 1:
        if (i_this->field_0x597 != 0xff) {
            if (dComIfGs_isSwitch(i_this->field_0x597, fopAcM_GetRoomNo(i_this))) {
                break;
            }
        }
        if (dComIfGs_isSwitch(i_this->field_0x596, fopAcM_GetRoomNo(i_this))) {
            i_this->field_0x5b8[0] = cM_rndF(10.0f);
            i_this->field_0x5b8[1] = 35;
            i_this->field_0x5a6 = 2;
        }
        break;
    case 2:
        bVar5 = true;
        if (i_this->field_0x5b8[0] == 0) {
            anm_init(i_this, 9, 0.0f, 0, 1.0f);
            i_this->mMorf->setFrame(9.0f);
            i_this->field_0x5a6 = 4;
        }
        break;
    case 3:
        bVar5 = true;
        if (i_this->mMorf->isStop()) {
            anm_init(i_this, 9, 0.0f, 0, 1.0f);
            i_this->field_0x5a6++;
        }
        break;
    case 4:
        bVar5 = true;
        if (i_this->mMorf->checkFrame(17.0f)) {
            mDoAud_seStart(Z2SE_OBJ_BARRIER_STN_STICK, &i_this->current.pos, 0, 0);
            dComIfGp_getVibration().StartShock(5, 15, cXyz(0.0f, 1.0f, 0.0f));
        }
        if (i_this->field_0x5b8[1] == 0 && i_this->mMorf->isStop()) {
            i_this->field_0x5a6++;
            mDoAud_seStart(Z2SE_OBJ_BARRIER_STN_TURN_ON, &i_this->current.pos, 0, 0);
        }
        break;
    case 5:
        bVar5 = true;
        local_97 = 1;
        if (i_this->mBrk->getFrame() < 38.0f) {
            i_this->mBrk->play();
        }
        if ((i_this->field_0x597 != 0xff && dComIfGs_isSwitch(i_this->field_0x597, fopAcM_GetRoomNo(i_this)))
             || !dComIfGs_isSwitch(i_this->field_0x596, fopAcM_GetRoomNo(i_this))) {
            i_this->field_0x5a6++;
            if (i_this->field_0x5a8 != 0) {
                i_this->mBrks[0]->setFrame(36.0f);
                i_this->mBrks[0]->setPlaySpeed(-2.0f);
            } else {
                i_this->field_0x5b8[0] = 0x12;
            }
        }
        break;
    case 6:
        local_97 = 2;
        bVar5 = true;
        if (i_this->field_0x5a8 != 0) {
            if (i_this->mBrks[0]->getFrame() <= 1.0f) {
                i_this->field_0x5a8 = 0;
                local_97 = 0;
                i_this->field_0x5a6++;
                anm_init(i_this, 8, 0.0f, 0, 1.0f);
                dComIfGp_particle_set(0x8392, &i_this->current.pos, 0, 0);
                mDoAud_seStart(Z2SE_OBJ_BARRIER_STN_DISAPPEAR, &i_this->current.pos, 0, 0);
            }
        } else {
            if (i_this->field_0x5b8[0] == 0) {
                i_this->field_0x5a6++;
                anm_init(i_this, 8, 0.0f, 0, 1.0f);
                dComIfGp_particle_set(0x8392, &i_this->current.pos, 0, 0);
                mDoAud_seStart(Z2SE_OBJ_BARRIER_STN_DISAPPEAR, &i_this->current.pos, 0, 0);
            }
        }
        break;
    case 7:
        if (i_this->mMorf->isStop()) {
            i_this->field_0x5a6 = 0;
        }
    }
    fopAc_ac_c* tpActor = (fopAc_ac_c*)fpcM_Search(s_tp_sub, i_this);
    if (tpActor != NULL) {
        i_this->field_0x5ac = tpActor->current.pos;
    }
    local_50 = i_this->field_0x5ac - i_this->current.pos;
    f32 dVar14 = local_50.abs() * 0.01f;
    s16 yRotation = cM_atan2s(local_50.x, local_50.z);
    s16 xRotation = -cM_atan2s(local_50.y, JMAFastSqrt(local_50.x * local_50.x + local_50.z * local_50.z));
    if (local_97 != 0 && i_this->mModels[0] != NULL) {
        switch(i_this->field_0x5a8) {
        case 0:
            i_this->field_0x5a8++;
        case 1:
            mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y,
                                i_this->current.pos.z);
            mDoMtx_stack_c::YrotM(yRotation);
            mDoMtx_stack_c::XrotM(xRotation);
            mDoMtx_stack_c::scaleM(1.0f, 1.0f, dVar14);
            mDoMtx_stack_c::YrotM(-0x4000);
            mDoMtx_stack_c::transM(50.0f, 150.0f, 0.0f);
            i_this->mModels[0]->setBaseTRMtx(mDoMtx_stack_c::get());
            i_this->mModels[1]->setBaseTRMtx(mDoMtx_stack_c::get());
            i_this->mBtks[0]->play();
            i_this->mBtks[1]->play();
            if (i_this->mBrks[0]->getFrame() < 38.0f) {
                i_this->mBrks[0]->play();
            }
            local_50 = i_this->field_0x5c0 - player->current.pos;
            cMtx_YrotS((MtxP)calc_mtx, -yRotation);
            MtxPosition(&local_50, &local_5c);
            if (local_97 == 1 && fabsf(local_5c.x) < 300.0f) {
                if (i_this->mBrks[1]->getFrame() >= 19.0f) {
                    i_this->mBrks[1]->setFrame(19.0f - (i_this->mBrks[1]->getFrame() - 19.0f));
                }
                if (i_this->mBrks[1]->getFrame() < 19.0f) {
                    i_this->mBrks[1]->play();
                }
                mDoAud_seStartLevel(Z2SE_OBJ_BARRIER_EMERGENCE, &i_this->field_0x5c0, 0, 0);
            } else {
                if (i_this->mBrks[1]->getFrame() < 38.0f) {
                    i_this->mBrks[1]->play();
                    mDoAud_seStartLevel(Z2SE_OBJ_BARRIER_EMERGENCE, &i_this->field_0x5c0, 0, 0);
                }
                if (local_97 == 2 && i_this->mBrks[1]->getFrame() < 38.0f) {
                    i_this->mBrks[1]->play();
                }
            }
            break;
        }
    }
    if (bVar5 && i_this->mModels[0] != NULL) {
        mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y,
                               i_this->current.pos.z);
        mDoMtx_stack_c::YrotM(yRotation);
        mDoMtx_stack_c::XrotM(xRotation);
        mDoMtx_stack_c::scaleM(1.0f, 1.0f, dVar14);
        mDoMtx_stack_c::YrotM(-0x4000);
        mDoMtx_stack_c::transM(50.0f, 150.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&i_this->field_0x5c0);
        MTXCopy(mDoMtx_stack_c::get(), i_this->field_0x5d4);
        i_this->mBgw->Move();
    } else if (i_this->mBgw != NULL) {
        mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y + 3000.0f,
                               i_this->current.pos.z);
        MTXCopy(mDoMtx_stack_c::get(), i_this->field_0x5d4);
        i_this->mBgw->Move();
    }
    local_5c = i_this->current.pos;
    if (!bVar5) {
        local_5c.y += 5000.0f;
    }
    i_this->mCyl.cM3dGCyl::SetC(local_5c);
    dComIfG_Ccsp()->Set(&i_this->mCyl);
    return 1;
}

/* 80D1E460-80D1E468 000F60 0008+00 1/0 0/0 0/0 .text            daObj_Tp_IsDelete__FP12obj_tp_class
 */
static int daObj_Tp_IsDelete(obj_tp_class* param_0) {
    return 1;
}

/* 80D1E468-80D1E4C0 000F68 0058+00 1/0 0/0 0/0 .text            daObj_Tp_Delete__FP12obj_tp_class
 */
static int daObj_Tp_Delete(obj_tp_class* i_this) {
    fopAcM_GetID(i_this);
    dComIfG_resDelete(&i_this->mPhase, "Obj_tp");
    if (i_this->mBgw != NULL) {
        dComIfG_Bgsp().Release(i_this->mBgw);
    }
    return 1;
}

/* ############################################################################################## */
/* 80D1EEE0-80D1EEE8 000040 0008+00 0/1 0/0 0/0 .data            bmd$4283 */
static int bmd[2] = {
    0x11, 0x12,
};

/* 80D1EEE8-80D1EEF0 000048 0008+00 0/1 0/0 0/0 .data            brk$4284 */
static int brk[2] = {
    0x17, 0x18,
};

/* 80D1EEF0-80D1EEF8 000050 0008+00 0/1 0/0 0/0 .data            eff_bmd$4296 */
static int eff_bmd[2] = {
    0x0F, 0x10,
};

/* 80D1EEF8-80D1EF00 000058 0008+00 0/1 0/0 0/0 .data            eff_btk$4297 */
static int eff_btk[2] = {
    0x1B, 0x1C,
};

/* 80D1EF00-80D1EF08 000060 0008+00 0/1 0/0 0/0 .data            eff_brk$4298 */
static int eff_brk[2] = {
    0x15, 0x16,
};

/* 80D1EF08-80D1EF4C 000068 0044+00 1/1 0/0 0/0 .data            cc_cyl_src$4468 */
static dCcD_SrcCyl cc_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fafdbf, 0x11}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        50.0f, // mRadius
        360.0f // mHeight
    } // mCyl
};

/* 80D1E4C0-80D1E908 000FC0 0448+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    obj_tp_class* tp = static_cast<obj_tp_class*>(i_this);
    tp->mMorf =
        new mDoExt_McaMorf((J3DModelData*)dComIfG_getObjectRes("Obj_tp", bmd[tp->field_0x594]),
                           NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("Obj_tp", 7), 0, 1.0f,
                           0, -1, 1, NULL, 0x80000, 0x11000084);
    if (tp->mMorf == NULL || tp->mMorf->getModel() == NULL) {
        return 0;
    }
    tp->mBrk = new mDoExt_brkAnm();
    if (tp->mBrk == NULL) {
        return 0;
    }
    J3DAnmTevRegKey* regKey = (J3DAnmTevRegKey*)dComIfG_getObjectRes("Obj_tp", brk[tp->field_0x594]);
    J3DModelData* modelData = tp->mMorf->getModel()->getModelData();
    if (!tp->mBrk->init(
            modelData,
            regKey, 1, 2, 1.0f, 0,
            -1))
    {
        return 0;
    }
    if (tp->field_0x5a0 != 0xf) {
        for (int i = 0; i < 2; i++) {
            J3DModelData* modelData = ( J3DModelData*)dComIfG_getObjectRes("Obj_tp", eff_bmd[i]);
            JUT_ASSERT(809, modelData != 0);
            tp->mModels[i] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
            if (tp->mModels[i] == NULL) {
                return 0;
            }
            tp->mBtks[i] = new mDoExt_btkAnm();
            if (tp->mBtks[i] == NULL) {
                return 0;
            };
            J3DAnmTextureSRTKey* key = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("Obj_tp", eff_btk[i]);
            modelData = tp->mModels[i]->getModelData();
            if (!tp->mBtks[i]->init(
                    modelData,
                    key, 1, 2, 1.0f, 0,
                    -1))
            {
                return 0;
            }
            tp->mBrks[i] = new mDoExt_brkAnm();
            if (tp->mBrks[i] == NULL) {
                return 0;
            }
            regKey = (J3DAnmTevRegKey*)dComIfG_getObjectRes("Obj_tp", eff_brk[i]);
            modelData = tp->mModels[i]->getModelData();
            if (!tp->mBrks[i]->init(modelData,
                                    regKey, 1,
                                    2, 1.0f, 0, -1))
            {
                return 0;
            }
        }
        tp->mBgw = new dBgW();
        if (tp->mBgw == NULL) {
            return 0;
        }
        if (tp->field_0x598 == 0) {
            cBgD_t* bgd = (cBgD_t*)dComIfG_getObjectRes("Obj_tp", 0x1f);
            if (tp->mBgw->Set(bgd, 1, &tp->field_0x5d4) ==
                1)
            {
                return 0;
            }
        } else {
            cBgD_t* bgd = (cBgD_t*)dComIfG_getObjectRes("Obj_tp", 0x20);
            if (tp->mBgw->Set(bgd, 1, &tp->field_0x5d4) ==
                1)
            {
                return 0;
            }
        }
        tp->mBgw->SetCrrFunc(dBgS_MoveBGProc_Typical);
    }
    return 1;
}

/* 80D1E950-80D1ECF0 001450 03A0+00 1/0 0/0 0/0 .text            daObj_Tp_Create__FP10fopAc_ac_c */
static int daObj_Tp_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, obj_tp_class);
    obj_tp_class* tp = (obj_tp_class*)i_this;
    int rv = dComIfG_resLoad(&tp->mPhase, "Obj_tp");
    if (rv == cPhs_COMPLEATE_e) {
        OS_REPORT("OBJ_TP bitSW2 %x\n", fopAcM_GetParam(tp));
        tp->field_0x594 = fopAcM_GetParam(tp) & 0xf;
        tp->field_0x5a0 = (fopAcM_GetParam(tp) & 0xf0) >> 4;
        tp->field_0x59c = (fopAcM_GetParam(tp) & 0xff00) >> 8;
        tp->field_0x595 = (fopAcM_GetParam(tp) & 0xff0000) >> 16;
        tp->field_0x596 = fopAcM_GetParam(tp) >> 24;
        u8 bitSW2 = (tp->current.angle.z & 0xff);
        if (bitSW2 != 0) {
            OS_REPORT("OBJ_TP bitSW2 %x\n", bitSW2);
            tp->field_0x597 = bitSW2;
        } else {
            tp->field_0x597 = 0xff;
        }
        OS_REPORT("OBJ_TP angle z %x \n", tp->current.angle.z);
        tp->field_0x598 = (tp->current.angle.z >> 8) & 0xff;
        if (tp->field_0x598 == 0xff) {
            tp->field_0x598 = 0;
        }
        OS_REPORT("OBJ_TP arg2 %x %x \n", tp->field_0x598, tp->current.angle.z);
        if (tp->field_0x595 != 0xff) {
            dPath* path = dPath_GetRoomPath(tp->field_0x595, fopAcM_GetRoomNo(tp));
            if (path == NULL) {
                return cPhs_ERROR_e;
            } 
            dPnt* pPoint = path->m_points;
            cXyz cStack_28;
            csXyz cStack_30(0, 0, 0);
            for (int i = 0; i < path->m_num; i++, pPoint++) {
                int local_40 = (pPoint->mArg0 & 0xf);
                int parameters = local_40 | ((fopAcM_GetParam(tp) & 0xff000000) | 0xff0000 | (i << 8));
                cStack_28 = pPoint->m_position;
                cStack_30.y = pPoint->mArg1 * 364;
                cStack_30.z = tp->field_0x597 | (tp->field_0x598 << 8);
                if (i == path->m_num - 1) {
                    if (!dPath_ChkClose(path)) {
                        parameters |= 0xf0;
                    }
                } else {
                    parameters |= (i + 1) << 4;
                }
                fopAcM_createChild(PROC_OBJ_TP, fopAcM_GetID(tp), parameters, &cStack_28,
                                   fopAcM_GetRoomNo(tp), &cStack_30, 0, -1, 0);
            }
            tp->field_0x5a4 = 1;
            return cPhs_ERROR_e;
        }
        OS_REPORT("OBJ_TP ANGY %x\n", (int)*(short*)(tp + 0x4ea));
        OS_REPORT("OBJ_TP//////////////OBJ_TP SET 1 !!\n");
        if (!fopAcM_entrySolidHeap(tp, useHeapInit, tp->field_0x5a0 != 15 ? 0x24b0 : 0xfc0)) {
            OS_REPORT("//////////////OBJ_TP SET NON !!\n");
            return cPhs_ERROR_e;
        }
        OS_REPORT("//////////////OBJ_TP SET 2 !!\n");
        if (tp->mBgw != NULL) {
            if (dComIfG_Bgsp().Regist(tp->mBgw, tp) != 0) {
                return cPhs_ERROR_e;
            }
        }
        tp->current.angle.z = 0;
        fopAcM_SetMtx(tp, tp->mMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(tp, -300.0f, -20000.0f,
                                        -300.0f);
        fopAcM_SetMax(tp, 300.0f, 20000.0f,
                                        300.0f);
        tp->field_0x5cc = cM_rndF(65536.0f);
        tp->mStts.Init(0xff, 0, tp);
        tp->mCyl.Set(cc_cyl_src);
        tp->mCyl.SetStts(&tp->mStts);
        daObj_Tp_Execute(tp);
    }
    return rv;
}

/* 80D1EF4C-80D1EF6C -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Tp_Method */
static actor_method_class l_daObj_Tp_Method = {
    (process_method_func)daObj_Tp_Create,
    (process_method_func)daObj_Tp_Delete,
    (process_method_func)daObj_Tp_Execute,
    (process_method_func)daObj_Tp_IsDelete,
    (process_method_func)daObj_Tp_Draw,
};

/* 80D1EF6C-80D1EF9C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_TP */
extern actor_process_profile_definition g_profile_OBJ_TP = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_TP,            // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(obj_tp_class),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  59,                     // mPriority
  &l_daObj_Tp_Method,     // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D1EE98-80D1EE98 00006C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

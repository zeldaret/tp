/**
 * @file d_a_e_dk.cpp
 * 
*/

#include "d/actor/d_a_e_dk.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"
#include "dol2asm.h"

#include <cmath.h>

#define ACTION_MODE_WAIT 0
#define ACTION_MODE_CHASE 1
#define ACTION_MODE_ATTACK 2
#define ACTION_MODE_HURT 3
#define ACTION_MODE_DIE 4

//
// Declarations:
//

UNK_REL_DATA;

static dCcD_SrcSph cc_dk_src = {
    { // mObjInf
        { 0x0, { { 0, 0, { 0 } }, { (s32)0xd8fbbddf, { 3 } }, { { 0x75 } } } }, // mObj
        { 0x09, 0, 0, 0, { 0 } }, // mGObjAt
        { 0x00, 0x00, 0x00, 0x00, { 5 } }, // mGObjTg
        { { 0 } }, // mGObjCo
    },
    { { { 0.0f, 0.0f, 0.0f }, 40.0f, } } // mSphAttr
};

static dCcD_SrcSph cc_dk_at_src = {
    { // mObjInf
        { 0x0, { { 0x400, 2, { 0xc } }, { 0, { 0 } }, { { 0 } } } }, // mObj
        { 0x09, 0, 0, 0, { 0 } }, // mGObjAt
        { 0x00, 0x00, 0x00, 0x00, { 2 } }, // mGObjTg
        { { 0 } }, // mGObjCo
    },
    { { { 0.0f, 0.0f, 0.0f }, 40.0f, } } // mSphAttr
};

static dCcD_SrcSph cc_dk_core_src = {
    { // mObjInf
        { 0x0, { { 0, 0, { 0 } }, { 0x4020, { 3 } }, { { 0 } } } }, // mObj
        { 0x09, 0, 0, 0, { 0 } }, // mGObjAt
        { 0x00, 0x00, 0x00, 0x00, { 2 } }, // mGObjTg
        { { 0 } }, // mGObjCo
    },
    { { { 0.0f, 0.0f, 0.0f }, 40.0f, } } // mSphAttr
};

/* 806AA1EC-806AA228 0000EC 003C+00 1/1 0/0 0/0 .text            __ct__12daE_DK_HIO_cFv */
daE_DK_HIO_c::daE_DK_HIO_c() {
    field_0x4 = -1;
    model_size = 2.0f;
    player_detection_range = 700.0f;
    field_0x10 = 1000.0f;
    first_attack_range = 1000.0f;
}

static u32 const dk_brk_name[2] = { 0x17, 0x16 };
static u32 const dk_btk_name[2] = { 0x1B, 0x1A };

/* 806AA228-806AA5A8 000128 0380+00 1/1 0/0 0/0 .text            draw__8daE_DK_cFv */
int daE_DK_c::draw() {
    J3DModel* model = mpMorfSO->getModel();
    J3DModel* modelCore = mpCoreMorfSO->getModel();

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    g_env_light.setLightTevColorType_MAJI(modelCore, &tevStr);

    J3DModelData* modelData = model->getModelData();
    for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
        J3DMaterial* matNodePtr = modelData->getMaterialNodePointer(i);
        if (i == 0) {
            J3DBlend* blend = matNodePtr->getBlend();
            if (this->field_0x692 != 0xff) {
                blend->setType(1);
                blend->setSrcFactor(4);
                blend->setDstFactor(5);
                matNodePtr->getZMode()->setUpdateEnable(0);
                matNodePtr->setZCompLoc(0);
            } else {
                blend->setType(0);
                blend->setSrcFactor(1);
                blend->setDstFactor(0);
                matNodePtr->getZMode()->setUpdateEnable(1);
                matNodePtr->setZCompLoc(1);
            }
            matNodePtr->getTevKColor(3)->a = (u8)field_0x692;
        } else {
            matNodePtr->getTevKColor(3)->a = (u8)field_0x691;
        }
    }

    mpBrkAnm[field_0x6a0]->entry(model->getModelData());
    mpBtkAnm[field_0x6a0]->entry(model->getModelData());

    mpMorfSO->entryDL();

    if (field_0x6a1 == 0) {
        mpCoreMorfSO->entryDL();
    }

    if (field_0x6a1 != 0) {
        return 1;
    }

    cXyz shadowPos;
    shadowPos.set(current.pos.x, current.pos.y + 100.0f, current.pos.z);

    mShadowKey2 = dComIfGd_setShadow(mShadowKey2, 1, modelCore, &shadowPos, 700.0f + nREG_F(19),
        0.0f, current.pos.y, this->mObjAcch.GetGroundH(), mObjAcch.m_gnd,
        &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());

    if (field_0x6a2 == 0) {
        mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &shadowPos, 700.0f + nREG_F(19),
            0.0f, current.pos.y, this->mObjAcch.GetGroundH(), mObjAcch.m_gnd,
            &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    } else {
        shadowPos.set(field_0x670.x, field_0x670.y + 100.0f, field_0x670.z);

        mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &shadowPos, 700.0f + nREG_F(19),
            0.0f, field_0x670.y, this->mObjAcch.GetGroundH(), mObjAcch.m_gnd,
            &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }

    return 1;
}

/* 806AA5A8-806AA5C8 0004A8 0020+00 1/0 0/0 0/0 .text            daE_DK_Draw__FP8daE_DK_c */
static int daE_DK_Draw(daE_DK_c* i_this) {
    return i_this->draw();
}

/* 806AA5C8-806AA68C 0004C8 00C4+00 5/5 0/0 0/0 .text            setBck__8daE_DK_cFiUcff */
void daE_DK_c::setBck(int i_resIndex, u8 i_attr, f32 i_morf, f32 i_rate) {
    field_0x6a0 = 0;
    if (i_resIndex == 7 || i_resIndex == 6) {
        field_0x6a0 = 1;
    }

    mpMorfSO->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_DK", i_resIndex),
        i_attr, i_morf, i_rate, 0.0f, -1.0f);
}

/* 806AA68C-806AA730 00058C 00A4+00 5/5 0/0 0/0 .text            setBckCore__8daE_DK_cFiUcff */
void daE_DK_c::setBckCore(int i_resIndex, u8 i_attr, f32 i_morf, f32 i_rate) {
    mpCoreMorfSO->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_DK", i_resIndex),
        i_attr, i_morf, i_rate, 0.0f, -1.0f);
}

/* 806AA730-806AA73C 000630 000C+00 6/6 0/0 0/0 .text            setActionMode__8daE_DK_cFii */
void daE_DK_c::setActionMode(int i_actionMode, int i_moveMode) {
    mActionMode = i_actionMode;
    mMoveMode = i_moveMode;
}

/* 806AA73C-806AA8B0 00063C 0174+00 1/1 0/0 0/0 .text            damage_check__8daE_DK_cFv */
void daE_DK_c::damage_check() {
    if (field_0x694 == 0 && field_0x6a2 == 0) {
        mStts.Move();
        if (mSphere.ChkTgHit() != 0) {
            field_0x694 = 10;

            mAtInfo.mpCollider = mSphere.GetTgHitObj();

            fopAc_ac_c* colliderActor = dCc_GetAc(mAtInfo.mpCollider->GetAc());
            f32 xDiff = current.pos.x - colliderActor->current.pos.x;
            f32 zDiff = current.pos.z - colliderActor->current.pos.z;

            mAtInfo.mHitDirection.y = cM_atan2s(-xDiff, -zDiff);
            if (field_0x6a3 == 0) {
                if (mAtInfo.mpCollider->ChkAtType(0x10) != 0) {
                    setActionMode(3, 1);
                } else {
                    setActionMode(3, 0);
                }
            }

            mSphere.ClrTgHit();
        }
        if (mCoreSphere.ChkTgHit() != 0) {
            mAtInfo.mpCollider = mCoreSphere.GetTgHitObj();

            cc_at_check(this, &mAtInfo);

            field_0x694 = 10;

            if (mAtInfo.mpCollider->ChkAtType(0x20) != 0) {
                setActionMode(4, 1);
            } else {
                if (field_0x6a3 == 0) {
                    setActionMode(4, 0);
                }
            }

            mCoreSphere.ClrTgHit();
        }
    }
}

/* 806AD7F8-806AD7FC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_806AD7F8;

/* 806AD808-806AD820 000018 0018+00 9/9 0/0 0/0 .bss             l_HIO */
static daE_DK_HIO_c l_HIO;

/* 806AA8B0-806AAB18 0007B0 0268+00 2/2 0/0 0/0 .text            checkPlayerSearch__8daE_DK_cFv */
bool daE_DK_c::checkPlayerSearch() {
    if (current.pos.abs(home.pos) > field_0x6a8) {
        return 0;
    }

    if (daPy_getPlayerActorClass()->current.pos.abs(home.pos) > l_HIO.player_detection_range) {
        return 0;
    }

    if (fopAcM_otherBgCheck(this, daPy_getPlayerActorClass()) != 0) {
        return 0;
    }

    return 1;
}

/* 806AAB18-806AAC24 000A18 010C+00 2/2 0/0 0/0 .text            checkPlayerAttack__8daE_DK_cFf */
int daE_DK_c::checkPlayerAttack(f32 param_0) {
    if (field_0x69c == 0) {
        f32 dist = fopAcM_searchPlayerDistance(this);
        if (field_0x690 == 0 && dist < l_HIO.first_attack_range) {
            if (dist > 8.0f) {
                setActionMode(2, 0);
                field_0x690 = 2;
                return 1;
            } else if (dist < l_HIO.first_attack_range - 100.0f) {
                field_0x690 = 1;
            }
        }

        if (param_0 > 30.0f && param_0 < 60.0f && dist < 400.0f) {
            setActionMode(2, 0);
            return 1;
        }
    }

    return 0;
}

/* 806AAC24-806AAD68 000B24 0144+00 1/1 0/0 0/0 .text            checkWaterHeight__8daE_DK_cFv */
void daE_DK_c::checkWaterHeight() {
    dBgS_ObjGndChk_Spl gndChk;
    Vec gndChkPos;
    if (mActionMode != ACTION_MODE_DIE) {
        gndChkPos = current.pos;
        gndChkPos.y += 1000.0f;
        gndChk.SetPos(&gndChkPos);
        field_0x6b8 = dComIfG_Bgsp().GroundCross(&gndChk);
        if (field_0x6b8 != -1000000000.0f && current.pos.y + 350.0f > field_0x6b8) {
            current.pos.y = field_0x6b8 - 350.0f;
        }
    } else {
        gndChkPos = field_0x670;
        gndChkPos.y += 1000.0f;
        gndChk.SetPos(&gndChkPos);
        field_0x6b8 = dComIfG_Bgsp().GroundCross(&gndChk);
        if (field_0x6b8 != -1000000000.0f && field_0x670.y + 350.0f > field_0x6b8) {
            field_0x670.y = field_0x6b8 - 350.0f;
        }
    }
}

/* 806AAD68-806AAE10 000C68 00A8+00 1/1 0/0 0/0 .text
 * SphBgcCallBack__8daE_DK_cFP11dBgS_SphChkP10cBgD_Vtx_tiiiP8cM3dGPlaPv */
void daE_DK_c::SphBgcCallBack(dBgS_SphChk* param_0, cBgD_Vtx_t* param_1, int param_2,
    int param_3, int param_4, cM3dGPla* param_5, void* param_6) {
    fopAc_ac_c* actor = (fopAc_ac_c*)param_6;
    f32 speedY = actor->speed.y;
    if (!speedY) {
        return;
    }

    s32 isOutsideRange = FALSE;
    f32 unkFloat1 = (param_1[param_2].y + param_1[param_3].y + param_1[param_4].y) / 3.0f;
    if (actor->speed.y < 0.0f) {
        if (actor->current.pos.y + 150.0f + nREG_F(18) > unkFloat1) {
            isOutsideRange = TRUE;
        }
    } else {
        if (actor->current.pos.y + 150.0f + nREG_F(18) < unkFloat1) {
            isOutsideRange = TRUE;
        }
    }

    if (isOutsideRange) {
        actor->speed.y = 0.0f;
        actor->current.pos.y = actor->old.pos.y;
    }
}

/* 806AAE10-806AB054 000D10 0244+00 1/1 0/0 0/0 .text            setElectricEffect__8daE_DK_cFv */
void daE_DK_c::setElectricEffect() {
    static u16 elect_effect_name[6] = {
        0x84BE, 0x84BF, 0x84C0, 0x84C1, 0x84C2, 0x84C3,
    };

    cXyz emitterPos(current.pos);
    emitterPos.y += 100.0f;
    cXyz emitterScale(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    csXyz emitterRot;

    JPABaseEmitter* emitter;

    u8 alpha = 0xff;
    if (dKy_camera_water_in_status_check() == 0) {
        alpha = 0x55;
    }

    for (s32 i = 0; i < 6; i++) {
        emitterRot.set(0, 0, 0);
        mElectricEffects[i] = dComIfGp_particle_set(mElectricEffects[i], elect_effect_name[i],
            &emitterPos, &tevStr, &emitterRot, &emitterScale, alpha, 0, -1, 0, 0, 0);
        if (i == 1 || i == 2 || i == 3) {
            emitter = dComIfGp_particle_getEmitter(mElectricEffects[i]);
            if (emitter != NULL) {
                emitterRot.x = cM_rndFX(32768.0f);
                emitterRot.y = cM_rndFX(32768.0f);
                emitterRot.z = cM_rndFX(32768.0f);
                emitter->setLocalRotation(*(JGeometry::TVec3<s16>*)&emitterRot);
            }
        }
    }

    mCreatureSound.startCreatureSoundLevel(Z2SE_EN_DK_ATTACK, 0, -1);
}

/* 806AB054-806AB158 000F54 0104+00 1/1 0/0 0/0 .text            setCoreDeadEffect__8daE_DK_cFv */
void daE_DK_c::setCoreDeadEffect() {
    cXyz emitterPos;
    cXyz emitterScale(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    csXyz emitterRot(0, 0, 0);

    u8 alpha = 0xff;
    if (dKy_camera_water_in_status_check() == 0) {
        alpha = 0x55;
    }

    J3DModel* model = mpCoreMorfSO->getModel();
    mDoMtx_stack_c::copy(model->getAnmMtx(1));
    mDoMtx_stack_c::multVecZero(&emitterPos);
    dComIfGp_particle_set(0x860c, &emitterPos, &tevStr, &emitterRot, &emitterScale, alpha, NULL,
                          -1, NULL, NULL, NULL);
}

/* 806AB158-806AB29C 001058 0144+00 1/1 0/0 0/0 .text            setBodyDeadEffect__8daE_DK_cFv */
void daE_DK_c::setBodyDeadEffect() {
    static u16 dead_effect_name[2] = {
        0x860D,
        0x860E,
    };

    cXyz emitterPos;
    cXyz emitterScale(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);
    csXyz emitterRot(0, 0, 0);

    u8 alpha = 0xff;
    if (dKy_camera_water_in_status_check() == 0) {
        alpha = 0x55;
    }

    for (s32 i = 0; i < 2; i++) {
        mDeadEffects[i] = dComIfGp_particle_set(mDeadEffects[i], dead_effect_name[i], &emitterPos, &tevStr,
                                            &emitterRot, &emitterScale, alpha, 0, -1, 0, 0, 0);

        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mDeadEffects[i]);
        if (emitter != NULL) {
            emitter->setGlobalSRTMatrix(mpMorfSO->getModel()->getAnmMtx(1));
        }
    }
}

/* 806AB29C-806AB684 00119C 03E8+00 1/1 0/0 0/0 .text            executeWait__8daE_DK_cFv */
void daE_DK_c::executeWait() {
    cXyz dirFromHome;
    switch (mMoveMode) {
    case 0: {
        setBck(0xf, 2, 3.0f, 1.0f);
        setBckCore(0xc, 2, 3.0f, 1.0f);
        mMoveMode = 1;
        break;
    }
    case 1: {
        if (mpMorfSO->checkFrame(0.0f) != 0 || mpMorfSO->checkFrame(80.0f) != 0) {
            mCreatureSound.startCreatureSound(Z2SE_EN_DK_WAIT, 0, -1);
        }
        f32 fVar4 = mpMorfSO->getFrame();
        if (mpMorfSO->checkFrame(70.0f) != 0 || mpMorfSO->checkFrame(150.0f) != 0) {
            dirFromHome = current.pos - home.pos;
            if (std::abs(dirFromHome.y) < 100.0f) {
                field_0x6ac = 5.0f;
            } else {
                if (dirFromHome.y > 0.0f) {
                    field_0x6ac = 4.0f;
                } else {
                    field_0x6ac = 6.0f;
                }
            }
            if (dirFromHome.absXZ() < 200.0f) {
                field_0x6b0 = 0;
            } else {
                field_0x6b0 = 3.0f + nREG_F(3);
            }

            current.angle.y = cLib_targetAngleY(&current.pos, &home.pos);
        }
        if (fVar4 >= 80.0f) {
            fVar4 -= 80.0f;
        }

        if (70.0f <= fVar4 || fVar4 <= 9.0f) {
            cLib_chaseF(&speed.y, field_0x6ac, 1.0f);
        } else if (fVar4 < 30.0f) {
            cLib_chaseF(&speed.y, 0.0f, 0.2f);
        } else if (fVar4 < 60.0f) {
            cLib_chaseF(&speed.y, -5.0f, 0.3f);
        } else {
            cLib_chaseF(&speed.y, 0.0f, 0.2f);
        }

        if (fVar4 < 60.0f || fVar4 >= 70.0f) {
            cLib_chaseF(&speedF, field_0x6b0, 0.2f);
        } else {
            cLib_chaseF(&speedF, 0.0f, 0.2f);
        }

        cLib_addCalcAngleS(&shape_angle.y, current.angle.y, 0x10, 0x100, 0x10);

        if (checkPlayerSearch()) {
            setActionMode(1, 0);
        } else {
            checkPlayerAttack(fVar4);
        }
    }
    }
}

/* 806AB684-806ABA78 001584 03F4+00 1/1 0/0 0/0 .text            executeChase__8daE_DK_cFv */
void daE_DK_c::executeChase() {
    cXyz dirFromHome;
    switch (mMoveMode) {
    case 0: {
        setBck(0xf, 2, 3.0f, 1.0f);
        setBckCore(0xc, 2, 3.0f, 1.0f);
        mMoveMode = 1;
        break;
    }
    case 1: {
        if (mpMorfSO->checkFrame(0.0f) != 0 || mpMorfSO->checkFrame(80.0f) != 0) {
            mCreatureSound.startCreatureSound(Z2SE_EN_DK_WAIT, 0, -1);
        }
        f32 fVar4 = mpMorfSO->getFrame();
        if (mpMorfSO->checkFrame(70.0f) != 0 || mpMorfSO->checkFrame(150.0f) != 0) {
            dirFromHome = current.pos - daPy_getPlayerActorClass()->current.pos;
            if (std::abs(dirFromHome.y) < 50.0f) {
                field_0x6ac = 5.0f;
            } else {
                if (dirFromHome.y > 0.0f) {
                    field_0x6ac = 4.0f;
                } else {
                    field_0x6ac = 6.0f;
                }
            }
            if (dirFromHome.absXZ() < 200.0f) {
                field_0x6b0 = 0;
            } else {
                field_0x6b0 = 3.0f + nREG_F(3);
            }

            current.angle.y = fopAcM_searchActorAngleY(this, daPy_getPlayerActorClass());
        }
        if (fVar4 >= 80.0f) {
            fVar4 -= 80.0f;
        }

        if (70.0f <= fVar4 || fVar4 <= 9.0f) {
            cLib_chaseF(&speed.y, field_0x6ac, 1.0f);
        } else if (fVar4 < 30.0f) {
            cLib_chaseF(&speed.y, 0.0f, 0.2f);
        } else if (fVar4 < 60.0f) {
            cLib_chaseF(&speed.y, -5.0f, 0.3f);
        } else {
            cLib_chaseF(&speed.y, 0.0f, 0.2f);
        }

        if (fVar4 < 60.0f || fVar4 >= 70.0f) {
            cLib_chaseF(&speedF, field_0x6b0, 0.2f);
        } else {
            cLib_chaseF(&speedF, 0.0f, 0.2f);
        }

        cLib_addCalcAngleS(&shape_angle.y, current.angle.y, 0x10, 0x100, 0x10);

        if (!checkPlayerSearch()) {
            setActionMode(0, 0);
        } else {
            checkPlayerAttack(fVar4);
        }
    }
    }
}

/* 806ABA78-806ABCC8 001978 0250+00 1/1 0/0 0/0 .text            executeAttack__8daE_DK_cFv */
void daE_DK_c::executeAttack() {
    switch (mMoveMode) {
    case 0: {
        setBck(7, 2, 6.0f, 2.0f);
        setBckCore(9, 2, 3.0f, 2.0f);
        field_0x698 = 45 + nREG_S(9);
        mMoveMode = 1;
        break;
    }
    case 1: {
        if (mpMorfSO->checkFrame(14.0f) != 0) {
            mCreatureSound.startCreatureSound(Z2SE_EN_DK_CHARGE, 0, -1);
        }
        cLib_chaseF(&speed.y, -3.0f, 0.2f);
        cLib_chaseF(&speedF, 0.0f, 0.2f);
        if (field_0x698 == 0) {
            setBck(6, 2, 3.0f, 1.0f);
            setBckCore(8, 2, 3.0f, 1.0f);
            field_0x698 = 100;
            mMoveMode = 2;
        }
        break;
    }
    case 2:
    case 3: {
        cLib_chaseF(&speed.y, 0.0, 0.2f);
        cLib_chaseF(&speedF, 0.0, 0.2f);
        mAtSphere.OnAtSetBit();
        mAtSphere.SetTgSpl(1);
        mAtSphere.SetAtMtrl(5);
        mSphere.SetTgSpl(1);
        mCoreSphere.SetTgSpl(1);
        setElectricEffect();
        field_0x6a3 = 1;
        fopAcM_OffStatus(this, 0x80000);
        if (mMoveMode == 2) {
            if (field_0x698 == 0) {
                field_0x69c = 150;
                setActionMode(1, 0);
            }
            if (daPy_getPlayerActorClass()->checkElecDamage() != 0) {
                mMoveMode = 3;
            }
        } else {
            if (daPy_getPlayerActorClass()->checkElecDamage() == 0) {
                field_0x69c = 150;
                setActionMode(1, 0);
            }
        }
        break;
    }
    }
}

/* 806ABCC8-806ABE3C 001BC8 0174+00 1/1 0/0 0/0 .text            executeDamage__8daE_DK_cFv */
void daE_DK_c::executeDamage() {
    switch (mMoveMode) {
    case 0:
    case 1: {
        if (mMoveMode == 0) {
            speedF = 8.0f + nREG_F(5);
        } else {
            speedF = 8.0f + nREG_F(5);
        }

        shape_angle.x = 0xf000;

        setBck(13, 0, 3.0f, 1.0f);
        setBckCore(11, 0, 3.0f, 1.0f);

        shape_angle.y = mAtInfo.mHitDirection.y;
        current.angle.y = mAtInfo.mHitDirection.y + 0x8000;

        mMoveMode = 2;

        mCreatureSound.startCreatureSound(Z2SE_EN_DK_GUARD, 0, -1);

        break;
    }
    case 2: {
        cLib_addCalcAngleS(&shape_angle.x, 0, 0x10, 0x100, 0x10);

        cLib_chaseF(&speed.y, 0.0, 0.2f);
        cLib_chaseF(&speedF, 0.0, 0.2f);

        if (mpMorfSO->isStop() != 0) {
            shape_angle.x = 0;
            setActionMode(1, 0);
        }

        break;
    }
    }
}

/* 806ABE3C-806ABF6C 001D3C 0130+00 1/1 0/0 0/0 .text            BodyDeathMove__8daE_DK_cFv */
void daE_DK_c::BodyDeathMove() {
    cLib_chaseF(&field_0x6ac, -2.0f, 0.2f);
    cLib_chaseF(&field_0x6b0, 0.0f, 0.2f);

    field_0x670.x += field_0x6b0 * cM_ssin(field_0x68c);
    field_0x670.y += field_0x6ac;
    field_0x670.z += field_0x6b0 * cM_scos(field_0x68c);

    dBgS_GndChk gndChk;

    cXyz gndChkPos(field_0x670);
    gndChkPos.y += 100.0f;
    gndChk.SetPos(&gndChkPos);

    f32 crossY = dComIfG_Bgsp().GroundCross(&gndChk);
    if (field_0x670.y + 50.0f < crossY) {
        field_0x6ac = 0;
        field_0x670.y = crossY - 50.0f;
    }
}

/* 806ABF6C-806AC390 001E6C 0424+00 1/1 0/0 0/0 .text            executeDeath__8daE_DK_cFv */
void daE_DK_c::executeDeath() {
    cXyz itemPos;
    switch (mMoveMode) {
    case 0: {
        setCoreDeadEffect();
    }
    case 1: {
        setBodyDeadEffect();

        setBck(14, 0, 3.0f, 0.0f);
        setBckCore(10, 0, 3.0f, 0.0f);

        field_0x6a2 = 1;

        field_0x670 = current.pos;

        field_0x6b4 = 100.0f;

        mSphere.OffCoSetBit();
        mSphere.OffTgSetBit();
        mCoreSphere.OffTgSetBit();
        fopAcM_OffStatus(this, 0x100);

        field_0x68e = 0;

        attention_info.flags = 0x0;

        mCreatureSound.startCreatureSound(Z2SE_EN_DK_PULLOUT, 0, -1);

        if (mMoveMode == 0) {
            field_0x68c = mAtInfo.mHitDirection.y + 0x8000;

            field_0x6b0 = 3.0f;
            field_0x6ac = 5.0f;
        } else {
            field_0x68c = mAtInfo.mHitDirection.y + 0x8000;

            field_0x6b0 = 5.0f;
            field_0x6ac = 7.0f;

            current.angle.y = mAtInfo.mHitDirection.y + 0x8000;

            speedF = 10.0f;
            speed.y = 5.0f;

            field_0x68e = 0x1000;
        }
        mMoveMode = 2;
        mCreatureSound.startCreatureSound(Z2SE_EN_DK_BUBBLE, 0, -1);

        break;
    }
    case 2: {
        setBodyDeadEffect();

        shape_angle.y += field_0x68e;
        shape_angle.x += field_0x68e;

        if (mObjAcch.ChkGroundHit()) {
            cLib_chaseAngleS(&field_0x68e, 0, 0x40);
        } else {
            cLib_chaseAngleS(&field_0x68e, 0x100, 0x40);
        }

        BodyDeathMove();

        if (fopAcM_checkStatus(this, 0x100000) == 0) {
            mMoveMode = 3;

            mpMorfSO->setPlaySpeed(1.0f);
            mpCoreMorfSO->setPlaySpeed(1.0f);

            current.pos.y += 125.0f;

            field_0x6b4 = -25.0f + nREG_F(7);

            field_0x68e = 0x800;
            field_0x69c = 30;
            field_0x698 = 100;
        }

        break;
    }
    case 3: {
        setBodyDeadEffect();

        if (field_0x69c != 0) {
            shape_angle.y += field_0x68e;
            shape_angle.x += field_0x68e;

            if (mObjAcch.ChkGroundHit()) {
                cLib_chaseAngleS(&field_0x68e, 0, 0x40);
            } else {
                cLib_chaseAngleS(&field_0x68e, 0x100, 0x40);
            }

            cLib_chaseF(&speed.y, -2.0f + nREG_F(8), 0.2f);
            cLib_chaseF(&speedF, 0.0f, 0.2f);

            if (field_0x69c == 1) {
                itemPos.set(current.pos.x, current.pos.y + 90.0f, current.pos.z);

                fopAcM_createItem(&itemPos, 0, -1, -1, 0, NULL, 0);
                fopAcM_createDisappear(this, &itemPos, 5, 0, 0x16);

                field_0x6a1 = 1;
            }
        }
        BodyDeathMove();
        if (mpMorfSO->isStop() == 0) {
            cLib_chaseUC(&field_0x691, 120.0f - mpMorfSO->getFrame(), 2);
            cLib_chaseUC(&field_0x692, field_0x691, 3);
        } else {
            cLib_chaseUC(&field_0x691, 0, 2);
            cLib_chaseUC(&field_0x692, field_0x691, 3);

            if (field_0x691 == 0) {
                fopAcM_delete(this);
            }
        }

        break;
    }
    }
}

/* 806AC390-806AC5BC 002290 022C+00 1/1 0/0 0/0 .text            action__8daE_DK_cFv */
void daE_DK_c::action() {
    checkWaterHeight();

    mAtSphere.OffAtSetBit();

    damage_check();

    fopAcM_OnStatus(this, 0x80000);

    if (fopAcM_searchPlayerDistance(this) > l_HIO.first_attack_range) {
        field_0x690 = 0x0;
    }

    mAtSphere.SetTgSpl(0);
    mAtSphere.SetAtMtrl(0);
    mSphere.SetTgSpl(0);
    mCoreSphere.SetTgSpl(0);

    field_0x6a3 = 0;

    s32 isFocusedOnPlayer = FALSE;

    switch (mActionMode) {
    case ACTION_MODE_WAIT:
        executeWait();
        break;
    case ACTION_MODE_CHASE:
        isFocusedOnPlayer = TRUE;
        executeChase();
        break;
    case ACTION_MODE_ATTACK:
        isFocusedOnPlayer = TRUE;
        executeAttack();
        break;
    case ACTION_MODE_HURT:
        isFocusedOnPlayer = TRUE;
        executeDamage();
        break;
    case ACTION_MODE_DIE:
        executeDeath();
        break;
    }

    mCreatureSound.setLinkSearch(isFocusedOnPlayer);

    fopAcM_posMoveF(this, mStts.GetCCMoveP());

    mObjAcch.CrrPos(dComIfG_Bgsp());

    if (!mObjAcch.ChkWallHit() && speed.y) {
        cXyz collCenter(current.pos);
        collCenter.y += 150.0f + nREG_F(18);
        mSphereChk.SetC(collCenter);
        mSphereChk.SetR(150.0f + nREG_F(19));
        mSphereChk.SetCallback((SphChk_Callback)SphBgcCallBack);
        dComIfG_Bgsp().SphChk(&mSphereChk, this);
    }

    mpBrkAnm[field_0x6a0]->play();
    mpBtkAnm[field_0x6a0]->play();

    mpMorfSO->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mpCoreMorfSO->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 806AC5BC-806AC754 0024BC 0198+00 1/1 0/0 0/0 .text            mtx_set__8daE_DK_cFv */
void daE_DK_c::mtx_set() {
    if (field_0x6a2 == 0) {
        mDoMtx_stack_c::transS(current.pos.x, current.pos.y + 100.0f, current.pos.z);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
    } else {
        mDoMtx_stack_c::transS(field_0x670.x, field_0x670.y + 100.0f, field_0x670.z);
    }
    mDoMtx_stack_c::scaleM(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);

    J3DModel* model = mpMorfSO->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    mpMorfSO->modelCalc();

    if (!field_0x6a2) {
        mDoMtx_stack_c::copy(model->getAnmMtx(14));
        mDoMtx_stack_c::transS(mDoMtx_stack_c::get()[0][3], mDoMtx_stack_c::get()[1][3],
                               mDoMtx_stack_c::get()[2][3]);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
        mDoMtx_stack_c::transM(0.0f, -50.0f + nREG_F(17), 0.0f);
    } else {
        mDoMtx_stack_c::transS(current.pos.x, current.pos.y + field_0x6b4, current.pos.z);
        mDoMtx_stack_c::transM(0.0f, 90.0f, 0.0f);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
        mDoMtx_stack_c::transM(0.0f, -90.0f, 0.0f);
    }
    mDoMtx_stack_c::scaleM(l_HIO.model_size, l_HIO.model_size, l_HIO.model_size);

    mpCoreMorfSO->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    mpCoreMorfSO->modelCalc();
}

/* 806AC754-806AC968 002654 0214+00 1/1 0/0 0/0 .text            cc_set__8daE_DK_cFv */
void daE_DK_c::cc_set() {
    cXyz sphCenter;

    mDoMtx_stack_c::copy(mpMorfSO->getModel()->getAnmMtx(14));
    mDoMtx_stack_c::transS(mDoMtx_stack_c::get()[0][3], mDoMtx_stack_c::get()[1][3],
                           mDoMtx_stack_c::get()[2][3]);

    mDoMtx_stack_c::multVecZero(&eyePos);
    eyePos.y += 60.0f + nREG_F(14);

    attention_info.position = eyePos;
    attention_info.position.y += 100.0f + nREG_F(15);

    if (field_0x6a2 == 0) {
        mDoMtx_stack_c::copy(mpMorfSO->getModel()->getAnmMtx(0));
        mDoMtx_stack_c::transM(nREG_F(10), 40.0f + nREG_F(0xb), nREG_F(0xc));
        mDoMtx_stack_c::multVecZero(&sphCenter);
        mSphere.SetC(sphCenter);
        mSphere.SetR(90.0f + nREG_F(13));
        dComIfG_Ccsp()->Set(&mSphere);

        mDoMtx_stack_c::copy(mpMorfSO->getModel()->getAnmMtx(0));
        mDoMtx_stack_c::transM(0.0f, 20.0f + nREG_F(16), 0.0f);
        mDoMtx_stack_c::multVecZero(&sphCenter);
        mAtSphere.SetC(sphCenter);
        mAtSphere.SetR(160.0f + nREG_F(14));
        dComIfG_Ccsp()->Set(&mAtSphere);

        mDoMtx_stack_c::copy(mpMorfSO->getModel()->getAnmMtx(0));
        mDoMtx_stack_c::transM(0.0f, 50.0f + nREG_F(16), 0.0f);
        mDoMtx_stack_c::multVecZero(&sphCenter);
        mCoreSphere.SetC(sphCenter);
        mCoreSphere.SetR(70.0f + nREG_F(15));
        dComIfG_Ccsp()->Set(&mCoreSphere);
    }
}

/* 806AC968-806AC9E8 002868 0080+00 1/1 0/0 0/0 .text            execute__8daE_DK_cFv */
int daE_DK_c::execute() {
    if (field_0x698 != 0) {
        field_0x698--;
    }
    if (field_0x69c != 0) {
        field_0x69c--;
    }
    if (field_0x694) {
        field_0x694--;
    }

    action();
    mtx_set();
    cc_set();

    return 1;
}

/* 806AC9E8-806ACA08 0028E8 0020+00 2/1 0/0 0/0 .text            daE_DK_Execute__FP8daE_DK_c */
static int daE_DK_Execute(daE_DK_c* i_this) {
    return i_this->execute();
}

/* 806ACA08-806ACA10 002908 0008+00 1/0 0/0 0/0 .text            daE_DK_IsDelete__FP8daE_DK_c */
static int daE_DK_IsDelete(daE_DK_c* i_this) {
    return 1;
}

/* 806ACA10-806ACA84 002910 0074+00 1/1 0/0 0/0 .text            _delete__8daE_DK_cFv */
int daE_DK_c::_delete() {
    dComIfG_resDelete(&mPhaseReq, "E_DK");

    if (mHIOInit != 0) {
        data_806AD7F8 = 0;
        mDoHIO_DELETE_CHILD(data_806AD7F8);
    }

    if (heap != NULL) {
        mCreatureSound.deleteObject();
    }

    return 1;
}

/* 806ACA84-806ACAA4 002984 0020+00 1/0 0/0 0/0 .text            daE_DK_Delete__FP8daE_DK_c */
static int daE_DK_Delete(daE_DK_c* i_this) {
    fpc_ProcID unusedId = fopAcM_GetID(i_this); // debug match
    return i_this->_delete();
}

/* 806ACAA4-806ACDAC 0029A4 0308+00 1/1 0/0 0/0 .text            CreateHeap__8daE_DK_cFv */
int daE_DK_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("E_DK", 0x12);
    JUT_ASSERT(1488, modelData != NULL);
    mpMorfSO = new mDoExt_McaMorfSO(modelData, NULL, NULL,
                                    (J3DAnmTransform*)dComIfG_getObjectRes("E_DK", 0xf), 0, 1.0f, 0,
                                    -1, &mCreatureSound, 0x80000, 0x31000284);

    if (mpMorfSO == NULL || mpMorfSO->getModel() == NULL) {
        return 0;
    }

    for (s32 i = 0; i < 2; i++) {
        mpBrkAnm[i] = new mDoExt_brkAnm();
        if (mpBrkAnm[i] == 0) {
            return 0;
        }

        J3DAnmTevRegKey* tevKey = (J3DAnmTevRegKey*)dComIfG_getObjectRes("E_DK", dk_brk_name[i]);
        if (mpBrkAnm[i]->init(mpMorfSO->getModel()->getModelData(), tevKey,
            1, 2, 1.0f, 0, -1) == 0)
        {
            return 0;
        }

        mpBtkAnm[i] = new mDoExt_btkAnm();
        if (mpBtkAnm[i] == 0) {
            return 0;
        }

        J3DAnmTextureSRTKey* texKey =
            (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("E_DK", dk_btk_name[i]);
        if (mpBtkAnm[i]->init(mpMorfSO->getModel()->getModelData(), texKey,
            1, 2, 1.0f, 0, -1) == 0) {
            return 0;
        }
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("E_DK", 0x13);
    JUT_ASSERT(1537, modelData != NULL);
    mpCoreMorfSO = new mDoExt_McaMorfSO(modelData, NULL, NULL,
                                        (J3DAnmTransform*)dComIfG_getObjectRes("E_DK", 0xc), 0,
                                        1.0f, 0, -1, &mCreatureSound, 0x80000, 0x11000084);

    if (mpCoreMorfSO == NULL || mpCoreMorfSO->getModel() == NULL) {
        return 0;
    } else {
        return 1;
    }
}

/* 806ACDF4-806ACE14 002CF4 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    daE_DK_c* dk = (daE_DK_c*)i_this;
    return dk->CreateHeap();
}

/* 806ACE14-806AD0AC 002D14 0298+00 1/1 0/0 0/0 .text            create__8daE_DK_cFv */
int daE_DK_c::create() {
    fopAcM_SetupActor(this, daE_DK_c);

    s32 loadRes = dComIfG_resLoad(&mPhaseReq, "E_DK");
    if (loadRes == cPhs_COMPLEATE_e) {
        OS_REPORT("E_DK PARAM %x\n", fopAcM_GetParam(this));
        field_0x6a4 = fopAcM_GetParam(this);

        if (field_0x6a4 != 0xff) {
            if (dComIfGs_isSwitch(field_0x6a4, fopAcM_GetRoomNo(this)) != 0) {
                OS_REPORT("E_DK やられ後なので再セットしません\n");
                return cPhs_ERROR_e;
            }
        }

        u8 param_1 = fopAcM_GetParam(this) >> 8 & 0xff;
        if (param_1 == 0xff) {
            field_0x6a8 = 1000.0f;
        } else {
            field_0x6a8 = param_1 * 100.0f;
            if (field_0x6a8 < 500.0f) {
                field_0x6a8 = 500.0f;
            }
        }

        if (fopAcM_entrySolidHeap(this, useHeapInit, 0x2520) == 0) {
            return cPhs_ERROR_e;
        }

        if (data_806AD7F8 == 0) {
            data_806AD7F8 = 1;
            this->mHIOInit = 1;
            l_HIO.field_0x4 = mDoHIO_CREATE_CHILD("", &l_HIO);
        }

        attention_info.flags = 4;

        fopAcM_SetMtx(this, mpMorfSO->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -200.0, -200.0, -200.0);
        fopAcM_SetMax(this, 200.0, 200.0, 200.0);

        mObjAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                     fopAcM_GetSpeed_p(this), NULL, NULL);

        mAcchCir.SetWall(150.0f + nREG_F(0x12), 150.0f + nREG_F(0x13));

        field_0x560 = health = 100;

        mStts.Init(100, 0, this);
        mSphere.Set(cc_dk_src);
        mSphere.SetStts(&mStts);

        mAtSphere.Set(cc_dk_at_src);
        mAtSphere.SetStts(&mStts);

        mCoreSphere.Set(cc_dk_core_src);
        mCoreSphere.SetStts(&mStts);

        mCreatureSound.init(&current.pos, &eyePos, 3, 1);
        mCreatureSound.setEnemyName("E_dk");

        mAtInfo.mpSound = &mCreatureSound;

        mAtInfo.mPowerType = 0x1;

        field_0x691 = 0x96;
        field_0x692 = 0xff;

        onWolfNoLock();

        daE_DK_Execute(this);
    }
    return loadRes;
}

/* 806AD0AC-806AD25C 002FAC 01B0+00 1/1 0/0 0/0 .text            __ct__8daE_DK_cFv */
daE_DK_c::daE_DK_c() {
}

/* 806AD428-806AD448 003328 0020+00 1/0 0/0 0/0 .text            daE_DK_Create__FP8daE_DK_c */
static int daE_DK_Create(daE_DK_c* i_this) {
    return i_this->create();
}

/* 806AD724-806AD744 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_DK_Method */
static actor_method_class l_daE_DK_Method = {
    (process_method_func)daE_DK_Create,
    (process_method_func)daE_DK_Delete,
    (process_method_func)daE_DK_Execute,
    (process_method_func)daE_DK_IsDelete,
    (process_method_func)daE_DK_Draw,
};

/* 806AD744-806AD774 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_DK */
extern actor_process_profile_definition g_profile_E_DK = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_E_DK,              // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daE_DK_c),       // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    755,                    // mPriority
    &l_daE_DK_Method,       // sub_method
    0x000C0100,             // mStatus
    fopAc_ENEMY_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};

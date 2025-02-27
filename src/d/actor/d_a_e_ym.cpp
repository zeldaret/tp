/**
 * d_a_e_ym.cpp
 * Enemy - Shadow Insect / 闇虫 (Yami Mushi)
 */

#include "d/actor/d_a_e_ym.h"
#include "c/c_damagereaction.h"
#include "d/actor/d_a_player.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_tag_firewall.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"


//
// Declarations:
//

/* ############################################################################################## */
/* 80815B3C-80815B7C 000038 0040+00 1/1 0/0 0/0 .data            cc_sph_src__6E_YM_n */
dCcD_SrcSph E_YM_n::cc_sph_src = {
    {
        {0, {{0x400, 1, 13}, {0xD8FBFDFF, 3}, 0x75}},
        {dCcD_SE_METAL, 0, 0, 0, {0}},
        {dCcD_SE_NONE, 0, 0, 0, {2}},
        {0},
    },
    {
        {
            {0.0f, 0.0f, 0.0f},
            40.0f,
        },
    }
};

/* 80815B7C-80815B84 000078 0008+00 0/0 0/0 0/0 .data            w_eff_id$5427 */
static u16 w_eff_id[] = {0x01B8, 0x01B9, 0x01BA, 0x01BB}; // unused

/* 8080812C-80808184 0000EC 0058+00 1/1 0/0 0/0 .text            __ct__12daE_YM_HIO_cFv */
daE_YM_HIO_c::daE_YM_HIO_c() {
    field_0x4 = -1;
    mFlyMoveSpeed = 20.0f;
    mFlyAttackSpeed = 30.0f;
    mModelSize = 0.6f;
    mElectricInvincibilityTimeExtension = 3.0f;
    mMoveSpeed = 13.0f;
    mSurpriseDistance = 400.0f;
    mMoveRange = 300.0f;
}


/* 80808184-808081E0 000144 005C+00 3/3 0/0 0/0 .text            checkBck__8daE_YM_cFPCci */
u8 daE_YM_c::checkBck(char const* i_arcName, int i_resNo) {
    return mpMorf->getAnm() == (J3DAnmTransform*)dComIfG_getObjectRes(i_arcName, i_resNo);
}

/* 808081E0-80808328 0001A0 0148+00 18/18 0/0 0/0 .text            bckSet__8daE_YM_cFiUcff */
void daE_YM_c::bckSet(int i_resID, u8 i_attribute, f32 i_morf, f32 i_speed) {
    int tm_res_id;

    if (mFlyType == true) {
        switch (i_resID) {
        case 6:
            tm_res_id = 8;
            break;
        case 15:
            tm_res_id = 9;
            break;
        case 16:
            i_speed = 2.0f;
            tm_res_id = 10;
            break;
        case 14:
            tm_res_id = 10;
            break;
        default:
            tm_res_id = 9;
        }

        mpMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_TM", tm_res_id), i_attribute,
                            i_morf, i_speed, 0.0f, -1.0f);
    } else {
        mpMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_YM", i_resID), i_attribute,
                            i_morf, i_speed, 0.0f, -1.0f);
    }
}

/* 80808328-808083CC 0002E8 00A4+00 4/4 0/0 0/0 .text            bckSetFly__8daE_YM_cFiUcff */
void daE_YM_c::bckSetFly(int i_resID, u8 i_attribute, f32 i_morf, f32 i_speed) {
    mpMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_TM", i_resID), i_attribute,
                        i_morf, i_speed, 0.0f, -1.0f);
}

/* 808083CC-80808678 00038C 02AC+00 1/1 0/0 0/0 .text            draw__8daE_YM_cFv */
int daE_YM_c::draw() {
    if (field_0x71d) {
        return 1;
    }

    if (daPy_py_c::checkNowWolfEyeUp()) {
        cLib_addCalc2(&field_0x6d4, 255.0f, 1.0f, 30.0f);
    } else if (mAction == ACT_DOWN) {
        cLib_addCalc2(&field_0x6d4, 255.0f, 1.0f, 30.0f);
    } else {
        cLib_addCalc2(&field_0x6d4, 0.0f, 1.0f, 30.0f);
    }

    bool bvar = true;

    if (field_0x710 != 0) {
        if (!field_0x6d4) {
            return 1;
        }

        if (mIsHide && mAction != ACT_RAIL && mAction != ACT_BACK_RAIL) {
            bvar = false;
        }
    } else {
        field_0x710 = 1;
    }

    if (mFlyType == true) {
        J3DShape* shape_p =
            mpMorf->getModel()->getModelData()->getMaterialNodePointer(1)->getShape();

        if (shape_p != NULL) {
            if (field_0x6cc) {
                shape_p->show();
            } else {
                shape_p->hide();
            }
        }
    }

    J3DModel* model_p = mpMorf->getModel();
    g_env_light.settingTevStruct(6, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model_p, &tevStr);

    J3DModelData* modelData_p = model_p->getModelData();
    for (u16 i = 0; i < modelData_p->getMaterialNum(); i++) {
        modelData_p->getMaterialNodePointer(i)->getTevKColor(3)->a = field_0x6d4;
    }

    if (bvar) {
        if (field_0x6dc != -70.0f) {
            mpBrk->entry(model_p->getModelData());
            dComIfGd_setListDark();
            mpMorf->entryDL();
            dComIfGd_setList();
        }

        cXyz sp40;
        sp40.set(current.pos.x, current.pos.y + 100.0f, current.pos.z);

        field_0x69c = dComIfGd_setShadow(field_0x69c, 1, model_p, &sp40, 400.0f, 0.0f,
                                         current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd,
                                         &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }

    return 1;
}

/* 80808678-80808698 000638 0020+00 1/0 0/0 0/0 .text            daE_YM_Draw__FP8daE_YM_c */
static int daE_YM_Draw(daE_YM_c* i_this) {
    return i_this->draw();
}

/* ############################################################################################## */
/* 80815D28-80815D2C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 lbl_253_bss_8;

/* 80815D38-80815D5C 000018 0024+00 18/18 0/0 0/0 .bss             l_HIO */
static daE_YM_HIO_c l_HIO;

/* 80815D5C-80815D60 00003C 0004+00 3/3 0/0 0/0 .bss             m_near_obj */
static fopAc_ac_c* m_near_obj;

/* 80815D60-80815D64 000040 0004+00 3/3 0/0 0/0 .bss             m_obj_dist */
static f32 m_obj_dist;

/* 80808698-80808768 000658 00D0+00 2/2 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* param_0, void* param_1) {
    fopAc_ac_c* e_ym;
    fopAc_ac_c* near_obj;

    near_obj = (fopAc_ac_c*)param_0;
    e_ym = (fopAc_ac_c*)param_1;

    if (fopAcM_IsActor(near_obj) && fopAcM_GetName(near_obj) == PROC_Obj_Carry) {
        if (!fpcM_IsCreating(fopAcM_GetID(near_obj))) {
            f32 obj_dist = fopAcM_searchActorDistanceXZ(near_obj, e_ym);

            if (obj_dist < 100.0f && obj_dist < m_obj_dist &&
                fabsf(fopAcM_searchActorDistanceY(near_obj, e_ym)) < 30.0f)
            {
                m_near_obj = near_obj;
                m_obj_dist = obj_dist;
            }
        }
    }

    return 0;
}

/* 80808768-80808884 000728 011C+00 1/1 0/0 0/0 .text            setDigEffect__8daE_YM_cFv */
void daE_YM_c::setDigEffect() {
    cXyz sp1C(field_0x68c, field_0x68c, field_0x68c);
    cXyz sp28(current.pos);
    sp28.y += field_0x6dc;

    field_0xad8 = dComIfGp_particle_set(field_0xad8, 0x83A8, &sp28, &shape_angle, &sp1C);
    field_0xadc = dComIfGp_particle_set(field_0xadc, 0x83A9, &sp28, &shape_angle, &sp1C);
}

/* 80808884-808089DC 000844 0158+00 8/8 0/0 0/0 .text            setElecEffect1__8daE_YM_cFv */
void daE_YM_c::setElecEffect1() {
    f32 fVar3 = (field_0x68c * 10.0f) / 6.0f;
    cXyz cStack_2c(fVar3, fVar3, fVar3);
    MtxP iVar5;
    if (mFlyType == true) {
        iVar5 = mpMorf->getModel()->getAnmMtx(8);
    } else {
        iVar5 = mpMorf->getModel()->getAnmMtx(0);
    }

    cXyz cStack_38(iVar5[0][3], iVar5[1][3], iVar5[2][3]);
    field_0xad8 = dComIfGp_particle_set(field_0xad8, 0x8393, &cStack_38, &tevStr, &shape_angle, &cStack_2c,
                                        0xff, 0, -1, 0, 0, 0);
    field_0xadc = dComIfGp_particle_set(field_0xadc, 0x8394, &cStack_38, &tevStr, &shape_angle, &cStack_2c,
                                        0xff, 0, -1, 0, 0, 0);
}


/* 808089DC-80808B3C 00099C 0160+00 9/9 0/0 0/0 .text            setElecEffect2__8daE_YM_cFv */
void daE_YM_c::setElecEffect2() {
    f32 fVar3 = (field_0x68c * 10.0f) / 6.0f;
    cXyz cStack_2c(fVar3, fVar3, fVar3);
    MtxP iVar5;
    if (mFlyType == true) {
        iVar5 = mpMorf->getModel()->getAnmMtx(8);
    } else {
        iVar5 = mpMorf->getModel()->getAnmMtx(0);
    }
    cXyz cStack_38(iVar5[0][3], iVar5[1][3], iVar5[2][3]);
    setElecEffect1();
    field_0xae0 = dComIfGp_particle_set(field_0xae0, 0x8395, &cStack_38, &tevStr, 
                                        &shape_angle, &cStack_2c,
                                        0xff, 0, -1, 0, 0, 0);
    field_0xae4 = dComIfGp_particle_set(field_0xae4, 0x8396, &cStack_38, &tevStr,
                                        &shape_angle, &cStack_2c,
                                        0xff, 0, -1, 0, 0, 0);
}


/* 80808B3C-80808E34 000AFC 02F8+00 1/1 0/0 0/0 .text            setFireEffect__8daE_YM_cFv */
void daE_YM_c::setFireEffect() {
    cXyz my_vec_0(1.0f, 1.0f, 1.0f);
    mParticleKeys[0] = dComIfGp_particle_set(mParticleKeys[0], 0x3ad, &current.pos, NULL,
                                             NULL, &my_vec_0, 0xff, NULL, -1,
                                             NULL, NULL, NULL);
    mParticleKeys[1] = dComIfGp_particle_set(mParticleKeys[1], 0x3af, &current.pos, NULL,
                                             NULL, &my_vec_0, 0xff, NULL, -1,
                                             NULL, NULL, NULL);
    mParticleKeys[2] = dComIfGp_particle_set(mParticleKeys[2], 0x3ae, &current.pos, NULL,
                                             NULL, &my_vec_0, 0xff, NULL, -1,
                                             NULL, NULL, NULL);
    if (field_0x6d0 != NULL) {
        for (int idx = 0x2c; idx >= 0; --idx) {
            field_0x6d0[idx+1] = field_0x6d0[idx];
        }
        field_0x6d0[0] = speed;
        for (int idx = 0; idx < 3; ++idx) {
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKeys[idx]);
            if (emitter != NULL) {
                if (speed.abs() > 1.0f) {
                    emitter->setParticleCallBackPtr((JPAParticleCallBack*)&JPTracePCB4);
                    emitter->setUserWork((u32)field_0x6d0);
                } else {
                    emitter->setParticleCallBackPtr(NULL);
                }
            }
        }
    }
}

/* 80808E34-80809000 000DF4 01CC+00 3/3 0/0 0/0 .text            checkWallCrash__8daE_YM_cFv */
bool daE_YM_c::checkWallCrash() {
    if (mType == 1 && (daPy_getPlayerActorClass()->checkFrontRollCrash() ||
                       daPy_getPlayerActorClass()->checkWolfAttackReverse()))
    {
        cXyz tmp = daPy_getPlayerActorClass()->current.pos - mPrevPos;
        if (tmp.absXZ() < 600.0f) {
            if (mTagPosP != NULL) {
                setActionMode(ACT_FLY);
            } else {
                setActionMode(ACT_FALL);
            }

            return true;
        }
    }

    return false;
}

/* 80809000-80809228 000FC0 0228+00 3/3 0/0 0/0 .text            checkWolfBark__8daE_YM_cFv */
u8 daE_YM_c::checkWolfBark() {
    if (mType == 2) {
        return 0;
    } else if (daPy_getPlayerActorClass()->checkWolfBark() && mDistToPlayer < 900.0f) {
        if (mType == 0) {
            s16 dist_ang = cLib_distanceAngleS(mAngleToPlayer, shape_angle.y);
            cXyz my_vec_0 = current.pos - mPrevPos;
            if (my_vec_0.abs() < l_HIO.mMoveRange && dist_ang < 0x4000 && cM_rndF(10.0f) > 1.0f) {
                setActionMode(6);
            } else {
                if (mTagPosP != NULL) {
                    setActionMode(0xb);
                } else {
                    setActionMode(5);
                }
            }
        } else if (mType == 1) {
            return 0;
        }
        return 1;
    } else {
        return 0;
    }
}

/* 80809228-8080963C 0011E8 0414+00 1/1 0/0 0/0 .text            checkSurpriseLock__8daE_YM_cFv */
u8 daE_YM_c::checkSurpriseLock() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (mType == 2) {
        return 0;
    }
    int action = mAction;
    if (action != ACT_WAIT && action != ACT_MOVE && action != ACT_SURPRISE && action != ACT_ATTACK && action != ACT_ATTACK_WALL) {
        return 0;
    }
    if (field_0x6f6 != 0) {
        return 0;
    }
    int val = field_0x6fc;
    if (val != 0) {
        return 0;
    }
    if (action != 8) {
        bool truth = dComIfGp_getAttention().LockonTruth();
        if (truth) {
            fopAc_ac_c* tgt = dComIfGp_getAttention().LockonTarget(0);
            if (tgt == this && mType == 0) {
                cXyz my_vec_0 = current.pos - mPrevPos;
                cXyz my_vec_1 = player->current.pos - mPrevPos;
                if (mType == 4) {
                    return checkRailSurprise();
                }
                switch (field_0x6a1) {
                    case 0:
                        if (my_vec_0.abs() > l_HIO.mMoveRange || my_vec_1.abs() > (l_HIO.mMoveRange + 150.0f)) {
                            if (mAction != 5) {
                                if (mTagPosP != NULL) {
                                    setActionMode(0xb);
                                } else {
                                    setActionMode(5);
                                }
                                return 1;
                            }
                            return 0;
                        } else {
                            setActionMode(8);
                            return 1;
                        }
                    case 1:
                        if (mAction != ACT_SURPRISE) {
                            if (mTagPosP != NULL) {
                                setActionMode(0xb);
                            } else {
                                setActionMode(5);
                            }
                        }
                        return 1;
                    default:
                        break;
                }
            }
        }
    }
    return 0;
}

/* 8080963C-808096EC 0015FC 00B0+00 2/2 0/0 0/0 .text            checkRailSurprise__8daE_YM_cFv */
u8 daE_YM_c::checkRailSurprise() {
    if (dComIfGp_checkPlayerStatus0(0, 0x8000000)) {
        if (mDistToPlayer > 200.0f || (s16)cLib_distanceAngleS(mAngleToPlayer, shape_angle.y) > 0x2000) {
            field_0x70a = 0x1e;
        }
    }
    if (field_0x70a != 0) {
        return 0;
    }
    if (field_0x704 == 0) {
        setActionMode(0xe);
    } else {
        setActionMode(5);
    }
    return 1;
}

/* 808096EC-80809D6C 0016AC 0680+00 3/3 0/0 0/0 .text            checkSurpriseNear__8daE_YM_cFv */
u8 daE_YM_c::checkSurpriseNear() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz my_vec_0;
    if (mType == 1) {
        if (field_0x6fa) {
            return 0;
        }
        if (player->checkClimbMove()) {
            f32 my_val = field_0x6e0 - 50.0f;
            if (my_val < 50.0f) {
                my_val = 50.0f;
            }
            cXyz my_vec_1 = player->current.pos;
            my_vec_1.y += 100.0f;
            my_vec_0 = mPrevPos - current.pos;
            if (my_vec_0.abs() < my_val) {
                my_vec_0 = my_vec_1 - current.pos;
                if (my_vec_0.abs() < 350.0f) {
                    dBgS_GndChk gnd_chk;
                    gnd_chk.SetPos(&my_vec_1);
                    if ((player->current.pos.y - dComIfG_Bgsp().GroundCross(&gnd_chk)) > 50.0f) {
                        field_0x6a5 = 0;
                        setActionMode(9);
                        return 1;
                    }
                }
            } else {
                my_vec_0 = mPrevPos - my_vec_1;
                if (my_vec_0.abs() < 100.0f) {
                    field_0x6a5 = 1;
                    setActionMode(9);
                    return 1;
                }
            }
        }
    } else if (mType == 0 || mType == 4) {
        if (mAcch.ChkGroundHit() == 0) {
            return 0;
        }
        f32 my_val;
        if (mType == 4) {
            my_val = l_HIO.mSurpriseDistance + 200.0f;
        } else {
            if (field_0x6a9 != 0) {
                my_val = l_HIO.mSurpriseDistance;
            } else {
                my_val = l_HIO.mSurpriseDistance + 200.0f;
            }
        }
        if (mDistToPlayer < my_val) {
            if (mSphCc.ChkCoHit()) {
                cCcD_Obj* hit_obj = mSphCc.GetCoHitObj();
                fopAc_ac_c* my_ac = dCc_GetAc(hit_obj->GetAc());
                if (fopAcM_GetName(my_ac) == PROC_ALINK) {
                    if (mType == 4) {
                        return checkRailSurprise();
                    }
                    if (mTagPosP != NULL) {
                        setActionMode(0xb);
                    } else {
                        setActionMode(5);
                    }
                    return 1;
                }
            }
            if (mAction == ACT_ATTACK) {
                return 0;
            }
            if (player->getSpeedF() >= 16.0f) {
                field_0x6f6 = 0;
            } else {
                if (field_0x6f8) {
                    return 0;
                }
                if (mDistToPlayer > l_HIO.mSurpriseDistance - 100.0f) {
                    field_0x6f8 = 0x3c;
                    return 0;
                }
            }
            if (field_0x6f6 == 0) {
                if (mType == 4) {
                    return checkRailSurprise();
                }
                if (mTagPosP != NULL) {
                    setActionMode(0xb);
                } else {
                    setActionMode(5);
                }
                return 1;
            }
        } else {
            field_0x6f8 = 0;
        }
    }
    return 0;
}

/* 80809D6C-80809D84 001D2C 0018+00 6/6 0/0 0/0 .text            setNormalCc__8daE_YM_cFv */
void daE_YM_c::setNormalCc() {
    mSphCc.SetCoSPrm(0x75);
    mSphCc.SetTgType(0xD8FBFDFF);
}

/* 80809D84-80809DA8 001D44 0024+00 7/7 0/0 0/0 .text            setAppear__8daE_YM_cFv */
void daE_YM_c::setAppear() {
    mIsHide = false;

    if (field_0x6a6 != 4) {
        mType = 0;
    }

    field_0x714 = 4;
}

/* 80809DA8-80809EF0 001D68 0148+00 8/8 0/0 0/0 .text            setMoveSound__8daE_YM_cFi */
void daE_YM_c::setMoveSound(int param_0) {
    if (mFlyType == 1) {
        if (checkBck("E_TM", 10) == 0) {
            return;
        }
    } else if (checkBck("E_YM", 16) == 0) {
        return;
    }
    mpMorf->setPlaySpeed(fabsf(speedF) * 0.15f);
    if (mpMorf->checkFrame(1.0f) || mpMorf->checkFrame(5.0f) || mpMorf->checkFrame(9.0f)) {
        if (param_0) {
            mSound.startCreatureSound(0x70198, 0, -1);
        } else {
            mSound.startCreatureSound(0x700e6, 0, -1);
        }
    }
}

/* 80809EF0-80809F9C 001EB0 00AC+00 3/3 0/0 0/0 .text            setTurnSound__8daE_YM_cFv */
void daE_YM_c::setTurnSound() {
    if (mpMorf->checkFrame(1.0f) || mpMorf->checkFrame(5.0f) || mpMorf->checkFrame(9.0f)) {
        mSound.startCreatureSound(0x700e6, 0, -1);
    }
}

/* 80809F9C-80809FC4 001F5C 0028+00 26/26 0/0 0/0 .text            setActionMode__8daE_YM_cFi */
void daE_YM_c::setActionMode(int i_action) {
    mLastAction = mAction;
    mAction = i_action;
    mMode = 0;
    field_0x6f2 = 0;
    field_0x6f0 = 0;
    current.angle.y = shape_angle.y;
}

/* 80809FC4-8080A57C 001F84 05B8+00 1/1 0/0 0/0 .text            executeWait__8daE_YM_cFv */
void daE_YM_c::executeWait() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz my_vec_0;
    if (mType != 2) {
        mSound.startCreatureSoundLevel(0x700ea, 0, -1);
    }
    if (mType != 1) {
        cLib_chaseF(&speed.y, -60.0f, 5.0f);
    }
    if (field_0x6a1 == 1 && mMode != 0 && field_0x6f2 == 0) {
        field_0x6c9 = 0;
        field_0x708 = 0;
    }
    switch (mMode) {
        case 0x64:
            field_0x6f0 = 0x1e;
            mMode = 0x65;
        case 0x65: {
            current.pos = home.pos;
            setHideType();
            mPrevPos = current.pos;
            if (field_0x6a6 == 1 || field_0x6f0 == 0) {
                field_0x6f0 = 0;
                mMode = 0;
            }
            break;
        }
        case 0:
            field_0x6f2 = 0x1e;
            checkWall();
            bckSet(0xf, 2, 5.0f, 1.0f);
            if (mType == 2) {
                mMode = 2;
                field_0x6dc = -70.0f;
                field_0x714 = 0;
                field_0x6f0 = 5;
                field_0x6a5 = 0;
            } else if (mType == 1) {
                if (field_0x6a3 != 0xff) {
                    if (dComIfGs_isSwitch(field_0x6a3, fopAcM_GetRoomNo(this)) == 0) {
                        mMode = 4;
                        break;
                    }
                }
                setNormalCc();
                mMode = 1;
                if (mDistToPlayer < 400.0f) {
                    field_0x6f0 = cM_rndFX(10.0f) + 30.0f;
                } else {
                    field_0x6f0 = cM_rndFX(30.0f) + 100.0f;
                }
            } else {
                setNormalCc();
                mMode = 1;
                field_0x6f0 = cM_rndFX(30.0f) + 100.0f;
            }
            break;
        case 1:
            if (checkSurpriseNear()) {
                return;
            }
            if (checkWolfBark()) {
                return;
            }
            if (checkWallCrash()) {
                return;
            }
            if (field_0x6f0 == 0) {
                setActionMode(1);
                return;
            }
            break;
        case 2:
            checkFrinedSamePos();
            switch (field_0x6a6) {
                case 1:
                    field_0x718 = 1;
                    if (field_0x6d4) {
                        field_0x714 = 4;
                    } else {
                        field_0x714 = 0;
                    }
                    m_near_obj = NULL;
                    m_obj_dist = 100.0f;
                    fpcM_Search(s_obj_sub, this);
                    if (m_near_obj == NULL) {
                        setActionMode(2);
                        field_0x718 = 0;
                    }
                    break;
                case 2:
                    break;
                default:
                    if (player->checkWolfDig()) {
                        my_vec_0 = player->getLeftHandPos() - current.pos;
                        if (my_vec_0.abs() < 200.0f) {
                            field_0x6f0 = 0x14;
                            mMode = 3;
                            field_0x6a6 = 0;
                            fopAcM_OnStatus(this, 0x4000);
                        }
                    }
            }
            break;
        case 3:
            if (field_0x6f0 == 0) {
                setActionMode(2);
            }
            break;
        case 4:
            if (field_0x6d4) {
                field_0x714 = 4;
            } else {
                field_0x714 = 0;
            }
            if (dComIfGs_isSwitch(field_0x6a3, fopAcM_GetRoomNo(this)) && mType == 1) {
                field_0x714 = 4;
                if (mTagPosP != NULL) {
                    setActionMode(0xb);
                } else {
                    setActionMode(7);
                }
            }
            break;
        default:
            break;
    }
    current.angle.y = shape_angle.y;
}

/* 8080A57C-8080ACB4 00253C 0738+00 1/1 0/0 0/0 .text            executeMove__8daE_YM_cFv */
void daE_YM_c::executeMove() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    (void) player; // acquired, but not used.
    cXyz my_vec_0;
    cXyz my_vec_1;
    f32 my_val = field_0x6e0 - 50.0f;
    if (my_val < 50.0f) {
        my_val = 50.0f;
    }
    if (checkSurpriseNear() == 0 && checkWolfBark() == 0 && checkWallCrash() == 0 && setAttackMotion() == 0) {
        if (mType != 1) {
            cLib_chaseF(&speed.y, -60.0f, 5.0f);
        }
        switch (mMode) {
            case 0:
                bckSet(0xe, 2, 10.0f, 1.5f);
                checkWall();
                if (mType == 1) {
                    mAcch.SetGroundUpY(fabsf(cM_ssin(field_0x668.x) * 30.0f));
                }
                field_0x6e4 = cM_rndFX(32768.0f);
                if ((s16)cLib_distanceAngleS(field_0x6e4, shape_angle.y) < 0x2000) {
                    field_0x6e4 = shape_angle.y + 0x4000;
                }
                my_vec_0 = mPrevPos - current.pos;
                field_0x6a5 = 0;
                if (my_vec_0.abs() > my_val) {
                    if (mType == 1) {
                        mDoMtx_stack_c::ZrotS(-field_0x668.z);
                        mDoMtx_stack_c::XrotM(-field_0x668.x);
                        mDoMtx_stack_c::multVec(&my_vec_0, &my_vec_1);
                    } else {
                        my_vec_1 = my_vec_0;
                    }
                    field_0x6e4 = cM_atan2s(my_vec_1.x, my_vec_1.z);
                    field_0x6a5 = 1;
                }
                mMode = 1;
                break;
            case 1: {
                setTurnSound();
                s16 my_step = 0x200;
                if (mType == 1 && mDistToPlayer < 400.0f) {
                    my_step = 0x300;
                }
                if (cLib_chaseAngleS(&shape_angle.y, field_0x6e4, my_step)) {
                    if ((!field_0x6e0 && field_0x6a5 == 0) || checkBeforeBg(field_0x6e4)) {
                        setActionMode(0);
                    } else {
                        bckSet(0xf, 2, 5.0f, 1.0f);
                        field_0x6f0 = cM_rndF(10.0f) + 5.0f;
                        mMode = 2;
                    }
                }
                break;
            }
            case 2:
                mSound.startCreatureSoundLevel(0x700ea, 0, -1);
                if (field_0x6f0 == 0 && mpMorf->checkFrame(1.0f)) {
                    bckSet(0x10, 2, 5.0f, 1.0f);
                    mMode = 3;
                    speedF = 10.0f;
                    if (field_0x6a5 == 0 && speedF > field_0x6e0) {
                        speedF = field_0x6e0;
                    }
                    field_0x6f0 = cM_rndF(40.0f) + 10.0f;
                }
                break;
            case 3: {
                setMoveSound(0);
                bool my_bool = false;
                my_vec_0 = current.pos - mPrevPos;
                if (field_0x6a5 == 0) {
                    if (my_vec_0.abs() > field_0x6e0) {
                        my_bool = true;
                    }
                } else {
                    if (my_vec_0.abs() < my_val) {
                        field_0x6a5 = 0;
                    }
                }
                if (my_bool || field_0x6f0 == 0 || checkBeforeBg(field_0x6e4)) {
                    speedF = 0.0f;
                    setActionMode(0);
                    return;
                }
                break;
            }
            default:
                break;
        }
        current.angle.y = shape_angle.y;
    }
}

/* 8080ACB4-8080B444 002C74 0790+00 1/1 0/0 0/0 .text            executeEscape__8daE_YM_cFv */
void daE_YM_c::executeEscape() {
    cLib_chaseF(&speed.y, -60.0f, 5.0f);
    daPy_py_c* player = daPy_getPlayerActorClass();
    (void) player; // acquired, but not used.
    cXyz my_vec_0;
    if (field_0x6dc < 0.0f) {
        field_0x6dc += 8.0f;
        if (field_0x6dc > 0.0f) {
            field_0x6dc = 0.0f;
        }
    }
    if (dComIfGp_event_runCheck() == 0) {
        fopAcM_OffStatus(this, 0x4000);
    }
    switch (mMode) {
        case 0:
            if (mType == 2) {
                setAppear();
            }
            if (mLastAction != 4) {
                s16 adj_angle = mAngleToPlayer + 0x8000;
                if (mFriendFlag & 0x1) {
                    shape_angle.y = adj_angle;
                } else if (mFriendFlag & 0x2) {
                    if (field_0x6a6 == 0) {
                        shape_angle.y = adj_angle + 0x2800;
                    } else {
                        shape_angle.y = adj_angle + 0x1800;
                    }
                } else if (mFriendFlag & 0x4) {
                    if (field_0x6a6 == 0) {
                        shape_angle.y = adj_angle - 0x2800;
                    } else {
                        shape_angle.y = adj_angle - 0x1800;
                    }
                } else {
                    shape_angle.y = adj_angle + cM_rndFX(8192.0f);
                }
                if (field_0x6a6 == 0 || field_0x6a6 == 4) {
                    field_0x6f0 = 0x28;
                    mMode = 3;
                    speedF = 5.0f;
                    speed.y = cM_rndF(5.0f) + 30.0f;
                    field_0x6a5 = 0;
                } else {
                    speedF = 10.0f;
                    speed.y = cM_rndF(5.0f) + 45.0f;
                    field_0x6f0 = 0x28;
                    mMode = 1;
                }
                field_0x6dc = 0.0f;
                bckSet(0xb, 0, 5.0f, 1.0f);
                mSound.startCreatureSound(0x700f0, 0, -1);
            } else {
                field_0x6f2 = 10;
                mMode = 2;
            }
            field_0x6a9 = 1;
            field_0x6e4 = shape_angle.y;
            field_0x6e6 = 0x5dc;
            field_0x6e8 = 0;
            break;
        case 1:
            setElecEffect1();
            mSound.startCreatureSoundLevel(0x70195, 0, -1);
            if (mAcch.ChkGroundHit()) {
                mSound.startCreatureSound(0x7011e, 0, -1);
                bckSet(0xc, 0, 0.0f, 1.0f);
                speedF = 0.0f;
                speed.y = 0.0f;
                mMode = 2;
                field_0x6f2 = 10;
                if (field_0x6f0 >= 2) {
                    field_0x6f0 = 1;
                }
                field_0x70e = 0x5a;
            }
            break;
        case 2:
            if (field_0x70e) {
                setElecEffect1();
                mSound.startCreatureSoundLevel(0x70195, 0, -1);
            }
            mSound.startCreatureSoundLevel(0x700ea, 0, -1);
            if (field_0x6f2 == 0) {
                speedF = 10.0f;
                mMode = 4;
                field_0x6e6 = 0x5dc;
                bckSet(0x10, 2, 5.0f, 1.0f);
            }
            break;
        case 3:
            setElecEffect1();
            mSound.startCreatureSoundLevel(0x70195, 0, -1);
            if (field_0x6a5 == 0) {
                cLib_addCalcAngleS(&shape_angle.y, field_0x6e4 + field_0x6e8, 8, 0x1000, 0x100);
                if (mAcch.ChkGroundHit()) {
                    mSound.startCreatureSound(0x7011e, 0, -1);
                    field_0x6a5 = 1;
                    speedF = 0.0f;
                    bckSet(0xc, 0, 0.0f, 1.0f);
                }
            } else {
                if (mpMorf->isStop()) {
                    mMode = 4;
                    bckSet(0x10, 2, 5.0f, 1.0f);
                }
            }
            break;
        case 4:
            if (field_0x70e) {
                setElecEffect2();
                mSound.startCreatureSoundLevel(0x70196, 0, -1);
                field_0x700 = l_HIO.mElectricInvincibilityTimeExtension;
                mSphCc.OnAtSetBit();
            }
            cLib_chaseF(&speedF, 20.0f, 1.0f);
            setMoveSound(0);
            if (mAcch.ChkWallHit()) {
                field_0x6e4 += 0x800;
            }
            if (field_0x6e8 >= 0) {
                field_0x6e6 -= 200;
            } else {
                field_0x6e6 += 200;
            }
            field_0x6e8 += field_0x6e6;
            cLib_addCalcAngleS(&shape_angle.y, field_0x6e4 + field_0x6e8, 8, 0x1000, 0x100);
            my_vec_0 = current.pos - mPrevPos;
            if (my_vec_0.absXZ() > 500.0f) {
                speedF = 0.0f;
                mPrevPos = current.pos;
                field_0x6dc = 0.0f;
                setActionMode(0);
                setNormalCc();
            }
            break;
        default:
            break;
    }
    if (field_0x6f0 == 1) {
        mSphCc.SetCoSPrm(0x75);
    }
    current.angle.y = shape_angle.y;
}

/* 8080B444-8080BB34 003404 06F0+00 2/2 0/0 0/0 .text            executeDown__8daE_YM_cFv */
void daE_YM_c::executeDown() {
    field_0x6f4 = 10;
    field_0x6dc = 0.0f;
    maxFallSpeed = -60.0f;
    Vec wtr_pos = current.pos;
    wtr_pos.y += 500.0f;
    dBgS_ObjGndChk_Wtr gnd_chk_wtr;
    gnd_chk_wtr.SetPos(&wtr_pos);
    f32 gnd_cross = dComIfG_Bgsp().GroundCross(&gnd_chk_wtr);
    if (current.pos.y > gnd_cross) {
        gravity = -5.0f;
    } else {
        gravity = 0.0f;
    }
#if VERSION == VERSION_SHIELD_DEBUG
    OSReport("YM executeDown %d %f %f \n", gnd_cross, current.pos.z, mMode);
#endif
    field_0x6cf = 0;
    switch (mMode) {
        case 0:
            if (mFlyType == 1) {
                bckSet(6, 0, 5.0f, 0.0f);
            } else {
                bckSet(0x10, 2, 5.0f, 1.0f);
            }
            mMode = 1;
            field_0x668.set(0, 0, 0);
            speedF = cM_rndF(5.0f) + 15.0f;
            speed.y = cM_rndF(5.0f) + 40.0f;
            shape_angle.y = mAtInfo.mHitDirection + 0x8000;
            shape_angle.x = 0;
            mAcch.ClrGroundHit();
            mAcchCir.SetWall(40.0f, 60.0f);
            if (mType == 1) {
                cXyz my_vec_0 = daPy_getPlayerActorClass()->current.pos;
                my_vec_0.y += 50.0f;
                cXyz my_vec_1(speedF * cM_ssin(shape_angle.y), speed.y, speedF * cM_scos(shape_angle.y));
                my_vec_1 += current.pos;
                dBgS_LinChk lin_chk;
                lin_chk.Set(&my_vec_0, &my_vec_1, NULL);
                if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                    cM3dGPla plane;
                    dComIfG_Bgsp().GetTriPla(lin_chk, &plane);
                    current.pos = *lin_chk.GetCross() + (plane.mNormal * 60.0f);
                    speedF = 0.0f;
                }
            }
            setAppear();
            field_0x714 = 0;
            if (0 == strcmp("R_SP108", dComIfGp_getStartStageName())) {
                if (dComIfGp_getStartStageRoomNo() == 0 && dComIfG_play_c::getLayerNo(0) == 0xe && mSwitchBit != 0xff) {
                    if (dComIfGs_isSwitch(mSwitchBit, fopAcM_GetRoomNo(this)) == 0) {
                        dComIfGs_onSwitch(mSwitchBit, fopAcM_GetRoomNo(this));
                    }
                }
            }
            break;
        case 1:
        case 2:
            if (mMode == 1) {
                if (speed.y < 0.0f) {
                    mAcch.SetGroundUpY(30.0f);
                }
                cLib_addCalcAngleS(&shape_angle.x, 0x7800, 8, 0x1000, 0x10);
            } else {
                cLib_addCalcAngleS(&shape_angle.x, -0x8000, 8, 0x1000, 0x10);
            }
            if (mAcch.ChkGroundHit()) {
                if (mFlyType != 1) {
                    bckSet(6, 0, 0.0f, 1.0f);
                }
                if (mMode == 1) {
                    mSound.startCreatureSound(0x7011e, 0, -1);
                    mMode = 2;
                    speedF = cM_rndF(5.0f) + 5.0f;
                    speed.y = 15.0f;
                } else {
                    mSound.startCreatureSound(0x700e8, 0, -1);
                    mMode = 3;
                    speedF = 0.0f;
                    shape_angle.x = -0x8000;
                    field_0x6f0 = 0;
                }
                break;
            }
            if (current.pos.y < gnd_cross) {
                mSound.startCreatureSound(0x60032, 0, -1);
                mSound.startCreatureSound(0x700e8, 0, -1);
                bckSet(6, 0, 0.0f, 1.0f);
                speedF = 0.0f;
                gravity = 0.0f;
                speed.y = 0.0f;
                current.pos.y = gnd_cross;
                shape_angle.x = -0x8000;
                field_0x6f0 = 0;
                mMode = 3;
                break;
            }
            if (speed.y < 0.0f && fabsf(gnd_cross - current.pos.y) > 1000.f) {
                dBgS_GndChk gnd_chk;
                gnd_chk.SetPos(&current.pos);
                gnd_cross = dComIfG_Bgsp().GroundCross(&gnd_chk);
                if (gnd_cross == -1000000000.0f || fabsf(gnd_cross - current.pos.y) > 1000.0f
                    || dComIfG_Bgsp().GetGroundCode(gnd_chk) == 4 || dComIfG_Bgsp().GetGroundCode(gnd_chk) == 10
                    || dComIfG_Bgsp().GetGroundCode(gnd_chk) == 5) {
                    bckSet(6, 0, 0.0f, 1.0f);
                    mMode = 3;
                    speedF = 0.0f;
                    shape_angle.x = -0x8000;
                    field_0x6f0 = 0;
                }
            }
            break;
        case 3:
            if (mpMorf->isStop()) {
                if (mSwitchBit != 0xff && dComIfGs_isSwitch(mSwitchBit, fopAcM_GetRoomNo(this)) == 0) {
                    dComIfGs_onSwitch(mSwitchBit, fopAcM_GetRoomNo(this));
                }
                fopAcM_delete(this);
                fopAcM_createDisappear(this, &current.pos, 10, 1, 0xff);
            }
            break;
        default:
            break;
    }
    current.angle.y = shape_angle.y;
}

/* 8080BB7C-8080BCFC 003B3C 0180+00 1/1 0/0 0/0 .text            damage_check__8daE_YM_cFv */
void daE_YM_c::damage_check() {
    if (field_0x6f4 != 0 || mAction == ACT_RIVER || mAction == ACT_DOWN) {
        return;
    }
    mStts.Move();
    if (mSphCc.ChkTgHit()) {
        mAtInfo.mpCollider = mSphCc.GetTgHitObj();
        if (field_0x700 == 0 || !mAtInfo.mpCollider->ChkAtType(0xD8000000)) {
            cc_at_check(this, &mAtInfo);
            if (mAtInfo.mpCollider->ChkAtType(0xD8000000)) {
                field_0x6f4 = 20;
            } else {
                field_0x6f4 = 10;
            }
            if (mAtInfo.mAttackPower <= 1) {
                field_0x6f4 = 10;
            }
            if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
                if (mIsHide) {
                    setActionMode(ACT_WIND);
                }
            } else if (mType != 2) {
                mSound.startCreatureSound(Z2SE_EN_YM_DEATH, 0, -1);
                if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_10000000)) {
                    dComIfGp_setHitMark(3, this, &eyePos, NULL, NULL, 0);
                }
                setActionMode(ACT_DOWN);
                executeDown();
            }
        }
    }
}

/* 8080BCFC-8080C05C 003CBC 0360+00 1/1 0/0 0/0 .text            executeWind__8daE_YM_cFv */
void daE_YM_c::executeWind() {
    cLib_chaseF(&speed.y, -60.0f, 5.0f);
    switch (mMode) {
        case 0:
            setAppear();
            setNormalCc();
            field_0x6f0 = cM_rndFX(5.0f) + 20.0f;
            field_0x6f2 = 0x28;
            mMode = 1;
            field_0x6dc = 0.0f;
        case 1:
            if (speed.y < 0.0f) {
                mAcch.SetGroundUpY(50.0f);
            }
            cLib_chaseAngleS(&shape_angle.z, -0x8000, 0x400);
            if (field_0x6f0) {
                cLib_chaseAngleS(&field_0x6e6, 4000, 200);
                speed.y = 25.0f;
            } else {
                if (mAcch.ChkGroundHit()) {
                    mMode = 2;
                    speedF = 0.0f;
                    speed.y = 15.0f;
                }
            }
            break;
        case 2:
            if (mAcch.ChkGroundHit()) {
                speed.y = 0.0f;
                speedF = 0.0f;
                if (cLib_chaseAngleS(&field_0x6e6, 0, 200)) {
                    mMode = 3;
                    field_0x6f0 = 0x32;
                    field_0x6f2 = (u8)(cM_rndF(5.0f) + 5.0f);
                    field_0x6e8 = shape_angle.y;
                    field_0x6a5 = 0;
                }
            }
            break;
        case 3:
            if (field_0x6f0 < 0xf) {
                shape_angle.z = cM_rndF(4096.0f) + 32768.0f;
                shape_angle.y = field_0x6e8 + cM_rndF(2048.0f);
            } else {
                if (field_0x6f2 == 0) {
                    field_0x6f2 = (u8)(cM_rndF(5.0f) + 5.0f);
                    field_0x6a5 = field_0x6a5 + 1 & 1;
                }
                if (field_0x6a5 == 0) {
                    shape_angle.z = cM_rndF(2048.0f) + 32768.0f;
                    shape_angle.y = field_0x6e8 + cM_rndF(2048.0f);
                }
            }
            if (field_0x6f0 == 0) {
                speedF = cM_rndF(5.0f) + 5.0f;
                speed.y = 15.0f;
                mMode = 4;
                mAcch.SetGroundUpY(0.0f);
                current.angle.y = shape_angle.y - 0x4000;
            }
            break;
        case 4:
            if (cLib_chaseAngleS(&shape_angle.z, 0, 0x1000) && mAcch.ChkGroundHit()) {
                speed.y = 0.0f;
                speedF = 0.0f;
                setActionMode(2);
            }
            break;
        default:
            break;
    }
    shape_angle.y += field_0x6e6;
}

/* 8080C05C-8080C1FC 00401C 01A0+00 1/1 0/0 0/0 .text            getSurpriseType__8daE_YM_cFv */
int daE_YM_c::getSurpriseType() {
    cXyz my_vec_0 = mPrevPos - current.pos;
    int ret;
    if (my_vec_0.abs() > l_HIO.mMoveRange) {
        ret = 2;
    } else {
        s16 dist_ang = cLib_distanceAngleS(mAngleToPlayer, shape_angle.y);
        ret = 1;
        if (dist_ang < 0x3000 && cM_rndF(10.0f) > 8.0f) {
            ret = 0;
        }
    }
    return ret;
}

/* 8080C1FC-8080C24C 0041BC 0050+00 2/2 0/0 0/0 .text            setSurpriseAway__8daE_YM_cFv */
void daE_YM_c::setSurpriseAway() {
    field_0x6f0 = 0x1e;
    mMode = 1;
    bckSet(0x10, 2, 3.0f, speedF / 12.0f);
}

/* 8080C24C-8080C374 00420C 0128+00 1/1 0/0 0/0 .text            setGoHomeType__8daE_YM_cFv */
void daE_YM_c::setGoHomeType() {
    s16 tgt_ang = cLib_targetAngleY(&current.pos, &mPrevPos);
    f32 rand_val = cM_rnd();
    field_0x6a8 = 1;
    if (field_0x6a8 == 0 && rand_val < 0.1f && mAcch.ChkGroundHit() && mAcch.ChkWallHit() == 0) {
        field_0x6a8 = 1;
        field_0x6a5 = 2;
        shape_angle.y = tgt_ang + cM_rndFX(4000.0f);
        mMode = 3;
    } else {
        if ((s16)(mAngleToPlayer - tgt_ang) < 0) {
            field_0x6a5 = 2;
        } else {
            field_0x6a5 = 3;
        }
        if (field_0x6cb) {
            speedF = 25.0f;
        } else {
            speedF = l_HIO.mMoveSpeed;
        }
        setSurpriseAway();
    }
}

/* 8080C374-8080CEE0 004334 0B6C+00 2/1 0/0 0/0 .text            executeSurprise__8daE_YM_cFv */
void daE_YM_c::executeSurprise() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (mType != 1) {
        cLib_chaseF(&speed.y, -90.0f, 15.0f);
    }
    cXyz my_vec_0 = mPrevPos - current.pos;
    if (daPy_getPlayerActorClass()->checkWolfLock(this) && mAcch.ChkGroundHit()) {
        cLib_chaseF(&speedF, 0.0f, 5.0f);
        cLib_chaseAngleS(&shape_angle.y,mAngleToPlayer, 0x400);
        return;
    }
    switch (mMode) {
        case 0:
            if (field_0x6a1 == 1 && field_0x708 == 0 && field_0x6c9 == 0) {
                field_0x708 = 0x78;
            }
            if (getSurpriseType() == 2 && field_0x6a9) {
                setGoHomeType();
            } else {
                field_0x6a5 = 0;
                field_0x6e4 = mAngleToPlayer + 0x8000;
                s16 sh_ang = player->shape_angle.y;
                s16 dist_ang = cLib_distanceAngleS(field_0x6e4, player->shape_angle.y);
                if (sh_ang + dist_ang == field_0x6e4) {
                    field_0x6a5 = 0;
                } else {
                    field_0x6a5 = 1;
                }
                if (field_0x6cb) {
                    speedF = 25.0f;
                    if (field_0x6a9 == 0) {
                        speedF = 28.0f;
                        field_0x6a9 = 1;
                    }
                } else {
                    speedF = 17.0f;
                    if (field_0x6a9 == 0) {
                        speedF = 20.0f;
                        field_0x6a9 = 1;
                    }
                }
                setSurpriseAway();
            }
            break;
        case 1:
            if (mAcch.ChkWallHit() && field_0x6a5 < 2) {
                setGoHomeType();
                return;
            }
            setMoveSound(0);
            if (field_0x6a5 == 0) {
                field_0x6e4 = mAngleToPlayer - 0x6000;
            } else if (field_0x6a5 == 1) {
                field_0x6e4 = mAngleToPlayer + 0x6000;
            } else {
                s16 sh_val = -0x2000;
                if (field_0x6a5 == 2) {
                    sh_val = 0x2000;
                }
                if (current.pos.absXZ(mPrevPos) < 100.0f) {
                    field_0x6e4 = sh_val + cLib_targetAngleY(&current.pos, &home.pos);
                } else {
                    s16 next_0x6e4 = sh_val + cLib_targetAngleY(&current.pos, &mPrevPos);
                    if (mAcch.ChkWallHit()) {
                        s16 wall_angle = mAcchCir.GetWallAngleY();
                        if (abs((s16)(next_0x6e4 - wall_angle)) > 0x6000) {
                            if ((s16)(cLib_targetAngleY(&current.pos, &mPrevPos) - wall_angle) > 0) {
                                next_0x6e4 = wall_angle + 0x4000;
                            } else {
                                next_0x6e4 = wall_angle - 0x4000;
                            }
                        }
                    }
                    field_0x6e4 = next_0x6e4;
                }
            }
            if (field_0x6a5 <= 1 && my_vec_0.abs() >= l_HIO.mMoveRange + 200.0f) {
                field_0x6f0 = 0;
            }
            cLib_addCalcAngleS(&shape_angle.y, field_0x6e4, 8, 0x1000, 0x100);
            if (field_0x6f0 == 0) {
                if (!field_0x6d4 && cM_rnd() < 0.3f) {
                    if (field_0x6a1 == 1) {
                        setActionMode(0xf);
                        return;
                    }
                    if (field_0x6a1) {
                        return;
                    }
                    if (daPy_getPlayerActorClass()->current.pos.abs(mPrevPos) <= l_HIO.mMoveRange + 200.0f) {
                        setActionMode(8);
                    }
                    return;
                }
                if (field_0x6c9 && mDistToPlayer < 300.0f) {
                    setActionMode(0xf);
                } else {
                    setActionMode(0);
                    speedF = 0.0f;
                    field_0x6f6 = 5;
                }
            }
            break;
        case 2:
            field_0x6a5 = getSurpriseType();
            if (mAcch.ChkWallHit()) {
                field_0x6a5 = 2;
            }
            if (field_0x6a5 == 0) {
                shape_angle.y = mAngleToPlayer + cM_rndFX(4000.0f);
            } else if (field_0x6a5 == 1) {
                shape_angle.y = mAngleToPlayer + 0x8000 + cM_rndFX(4000.0f);
            } else {
                shape_angle.y = cLib_targetAngleY(&current.pos, &mPrevPos) + cM_rndFX(4000.0f);
            }
        case 3:
            mMode = 5;
            speedF = 0.0f;
            bckSet(10, 0, 10.0f, 2.0f);
            break;
        case 5:
            if (mpMorf->isStop()) {
                bckSet(0xb, 0, 5.0f, 1.0f);
                mSound.startCreatureSound(0x700f0, 0, -1);
                mMode = 6;
                switch (field_0x6a5 & 3) {
                    case 0:
                        speedF = (mDistToPlayer + 650.0f) / 12.0f;
                        speed.y = 90.0f;
                        break;
                    case 1:
                        speedF = (650.0f - mDistToPlayer) / 10.0f;
                        speed.y = 75.0f;
                        break;
                    case 2:
                        speedF = my_vec_0.abs() / 10.0f;
                        speed.y = 75.0f;
                        break;
                    default:
                        break;
                }
                if (speedF < 35.0f) {
                    speedF = 35.0f;
                } else if (speedF >= 50.0f) {
                    speedF = 50.0f;
                }
                if (speed.y < 60.0f) {
                    speed.y = 60.0f;
                } else if (speed.y >= 90.0f) {
                    speed.y = 90.0f;
                }
            }
            break;
        case 6:
            if (mAcch.ChkGroundHit()) {
                mSound.startCreatureSound(0x7011e, 0, -1);
                bckSet(0xc, 0, 0.0f, 1.0f);
                mMode = 7;
                speedF = 0.0f;
            }
            break;
        case 7:
            if (mpMorf->isStop() && field_0x6f0 == 0) {
                setActionMode(0);
                field_0x6f6 = 0xf;
                field_0x6a7 = 0;
            }
            break;
        default:
            break;
    }
    current.angle.y = shape_angle.y;
}

/* 8080CEE0-8080CFC8 004EA0 00E8+00 1/1 0/0 0/0 .text            executeBack__8daE_YM_cFv */
void daE_YM_c::executeBack() {
    if (mType != 1) {
        cLib_chaseF(&speed.y, -60.0f, 5.0f);
    }
    switch (mMode) {
        case 0:
            field_0x6f0 = 0x32;
            bckSet(0x10, 2, 5.0f, 1.0f);
            mMode = 1;
            speedF = -5.0f;
            break;
        case 1:
            cLib_chaseAngleS(&shape_angle.y, mAngleToPlayer, 0x400);
            current.angle.y = shape_angle.y;
            setMoveSound(0);
            if (field_0x6f0 == 0) {
                speedF = 0.0f;
                setActionMode(0);
            }
            break;
        default:
            break;
    }
}

/* 8080CFC8-8080D2C8 004F88 0300+00 1/1 0/0 0/0 .text            executeFall__8daE_YM_cFv */
void daE_YM_c::executeFall() {
    cLib_chaseF(&speed.y, -90.0f, 10.0f);
    switch (mMode) {
        case 0:
            mSound.startCreatureSound(0x70117, 0, -1);
            field_0x6f0 = 0xc;
            mMode = 1;
        case 1:
            if (field_0x6f0 == 0) {
                mType = 0;
                bckSet(0xb, 0, 10.0f, 2.0f);
                mSound.startCreatureSound(0x700f0, 0, -1);
                speedF = 30.0f;
                speed.y = 50.0f;
                mMode = 2;
                mAcchCir.SetWall(40.0f, 60.0f);
                mAcch.SetGroundUpY(0.0f);
                shape_angle.x = field_0x668.x;
                shape_angle.y = field_0x668.z;
                current.angle.y = shape_angle.y + 0x8000;
                if ((s16)cLib_distanceAngleS(current.angle.y, mAngleToPlayer) < 0x1000) {
                    if ((s16)cLib_distanceAngleS(current.angle.y, mAngleToPlayer + 0x1000) < 0x1000) {
                        current.angle.y = shape_angle.y - 0x7000;
                    } else {
                        current.angle.y = shape_angle.y + 0x7000;
                    }
                }
                field_0x668.z = 0;
                field_0x668.x = 0;
                setElecEffect1();
                mSound.startCreatureSoundLevel(0x70195, 0, -1);
            }
            break;
        case 2:
            field_0x6fe = 0x1e;
            cLib_chaseAngleS(&shape_angle.y, current.angle.y, 0x1000);
            cLib_chaseAngleS(&shape_angle.x, 0, 0x800);
            setElecEffect2();
            mSound.startCreatureSoundLevel(0x70196, 0, -1);
            field_0x700 = l_HIO.mElectricInvincibilityTimeExtension;
            mSphCc.OnAtSetBit();
            if (mAcch.ChkGroundHit() == 0) {
                break;
            }
            mSound.startCreatureSound(0x7011e, 0, -1);
            speedF = 0.0f;
            setActionMode(0);
            bckSet(0xf, 2, 2.0f, 1.0f);
            shape_angle.y = current.angle.y;
            shape_angle.x = 0;
            mPrevPos = current.pos;
            break;
        default:
            break;
    }
}

/* 8080D2C8-8080D990 005288 06C8+00 1/1 0/0 0/0 .text            executeAttack__8daE_YM_cFv */
void daE_YM_c::executeAttack() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz my_vec_0 = player->current.pos - mPrevPos;
    if (mType != 1) {
        cLib_chaseF(&speed.y, -100.0f, 4.0f);
    }
    if (my_vec_0.abs() <= l_HIO.mMoveRange + 200.0f) {
        field_0x688 = mDistToPlayer;
        field_0x6e4 = mAngleToPlayer;
    }
    switch (mMode) {
        case 0:
            bckSet(0xe, 2, 10.0f, 1.5f);
            speedF = 0.0f;
            field_0x6f0 = 0x50;
            mMode = 1;
            field_0x6a5 = 0;
            break;
        case 1:
            if (field_0x6d4 && (dComIfGp_getAttention().LockonTruth() == 0 || dComIfGp_getAttention().LockonTarget(0) != this)) {
                if (checkSurpriseNear()) {
                    return;
                }
            }
            setTurnSound();
            if (cLib_distanceAngleS(shape_angle.y, field_0x6e4) < 0x200) {
                if (checkBck("E_YM", 0xf) == 0) {
                    bckSet(0xf, 2, 5.0f, 1.0f);
                }
                field_0x6a5 += 1;
            } else {
                if (checkBck("E_YM", 0xe) == 0) {
                    bckSet(0xe, 2, 10.0f, 1.5f);
                }
                cLib_chaseAngleS(&shape_angle.y, field_0x6e4, 0x200);
                field_0x6a5 = 0;
            }
            if (field_0x6f0 == 0 || field_0x6a5 >= 0x1e || my_vec_0.abs() > l_HIO.mMoveRange + 200.0f) {
                bckSet(0xd, 0, 10.0f, 2.0f);
                mMode = 2;
            }
            break;
        case 2:
            setElecEffect1();
            mSound.startCreatureSoundLevel(0x70195, 0, -1);
            if (mpMorf->isStop()) {
                bckSet(10, 0, 10.0f, 2.0f);
                mMode = 3;
            }
            break;
        case 3:
            setElecEffect2();
            mSound.startCreatureSoundLevel(0x70196, 0, -1);
            if (mpMorf->isStop()) {
                bckSet(0xb, 0, 5.0f, 1.0f);
                mSound.startCreatureSound(0x700f0, 0, -1);
                speed.y = 35.0f;
                speedF = (field_0x688 * 4.0f) / 90.0f;
                mMode = 4;
            }
            break;
        case 4:
            setElecEffect2();
            mSound.startCreatureSoundLevel(0x70196, 0, -1);
            field_0x700 = l_HIO.mElectricInvincibilityTimeExtension;
            mSphCc.OnAtSetBit();
            if (mAcch.ChkGroundHit()) {
                mSound.startCreatureSound(0x7011e, 0, -1);
                bckSet(0xc, 0, 0.0f, 1.0f);
                speedF = 0.0f;
                mMode = 5;
            }
            break;
        case 5:
            if (mpMorf->isStop()) {
                setActionMode(0);
                field_0x6f6 = 0xf;
                field_0x6fc = 0x32;
            }
            break;
        default:
            break;
    }
    current.angle.y = shape_angle.y;
}

/* 8080D990-8080DB58 005950 01C8+00 1/1 0/0 0/0 .text            checkAttackEnd__8daE_YM_cFv */
u8 daE_YM_c::checkAttackEnd() {
    if (daPy_getPlayerActorClass()->checkClimbMove() == 0) {
        setActionMode(1);
        speedF = 0.0f;
        return 1;
    } else {
        cXyz my_vec_0 = mPrevPos - current.pos;
        if (my_vec_0.abs() > l_HIO.mMoveRange + 50.0f) {
            setActionMode(0);
            speedF = 0.0f;
            return 1;
        } else {
            return 0;
        }
    }
}

/* 8080DB58-8080DC5C 005B18 0104+00 2/2 0/0 0/0 .text            setAttackMotion__8daE_YM_cFv */
u8 daE_YM_c::setAttackMotion() {
    if (mType != 1) {
        return 0;
    }
    if (mSphCc.ChkAtHit()) {
        fopAc_ac_c* hit_actor = dCc_GetAc(mSphCc.GetAtHitObj()->GetAc());
        if (fopAcM_GetName(hit_actor) == PROC_ALINK) {
            if (mAction != 9) {
                setActionMode(9);
            } else if (mMode == 4) {
                return 0;
            }
            speedF = 0.0f;
            mMode = 4;
            bckSet(5, 0, 3.0f, 1.0f);
            mSound.startCreatureSound(0x7011b, 0, -1);
            return 1;
        }
    }
    return 0;
}

/* 8080DC5C-8080E26C 005C1C 0610+00 1/1 0/0 0/0 .text            executeAttackWall__8daE_YM_cFv */
void daE_YM_c::executeAttackWall() {
    field_0x6fa = 0x1e;
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz my_vec_0;
    cXyz my_vec_1;
    cXyz my_vec_2;
    if (checkWolfBark() == 0 && checkWallCrash() == 0 && setAttackMotion() == 0) {
        switch (mMode) {
            case 0:
                checkWall();
                if (field_0x6a5 == 0) {
                    my_vec_2 = player->current.pos;
                    my_vec_2.y += 100.0f;
                    my_vec_0 = my_vec_2 - current.pos;
                } else {
                    my_vec_0 = mPrevPos - current.pos;
                }
                mDoMtx_stack_c::ZrotS(-field_0x668.z);
                mDoMtx_stack_c::XrotM(-field_0x668.x);
                mDoMtx_stack_c::multVec(&my_vec_0, &my_vec_1);
                field_0x6e4 = cM_atan2s(my_vec_1.x, my_vec_1.z);
                if (checkBeforeBg(field_0x6e4)) {
                    setActionMode(1);
                    speedF = 0.0f;
                    return;
                }
                bckSet(0xe, 2, 10.0f, 1.5f);
                speedF = 0.0f;
                mMode = 1;
                break;
            case 1:
                if (checkAttackEnd()) {
                    return;
                }
                setTurnSound();
                if (cLib_chaseAngleS(&shape_angle.y, field_0x6e4, 0x400)) {
                    bckSet(0xf, 2, 5.0f, 1.0f);
                    mMode = 2;
                }
                break;
            case 2:
                if (checkAttackEnd()) {
                    return;
                }
                mSound.startCreatureSoundLevel(0x700ea, 0, -1);
                if (field_0x6f0 == 0) {
                    bckSet(0x10, 2, 5.0f, 1.0f);
                    mMode = 3;
                    speedF = 20.0f;
                    field_0x6f0 = cM_rndF(20.0f) + 30.0f;
                    mSound.startCreatureSound(0x7011d, 0, -1);
                }
                break;
            case 3: {
                setMoveSound(0);
                bool do_stuff = false;
                if (field_0x6f0 == 0 || checkBeforeBg(field_0x6e4)) {
                    do_stuff = true;
                } else {
                    my_vec_0 = mPrevPos - current.pos;
                    if (field_0x6a5 == 0) {
                        if (my_vec_0.abs() > l_HIO.mMoveRange + 100.0f) {
                            do_stuff = true;
                        }
                    } else if (my_vec_0.abs() < 30.0f) {
                        do_stuff = true;
                    }
                }
                if (do_stuff) {
                    speedF = 0.0f;
                    mMode = 4;
                    bckSet(5, 0, 3.0f, 1.0f);
                    mSound.startCreatureSound(0x7011b, 0, -1);
                }
                break;
            }
            case 4:
                if (mpMorf->isStop()) {
                    setActionMode(0);
                    return;
                }
                break;
            default:
                break;
        }
        current.angle.y = shape_angle.y;
    }
}

/* 8080E26C-8080E49C 00622C 0230+00 1/1 0/0 0/0 .text            executeDefense__8daE_YM_cFv */
void daE_YM_c::executeDefense() {
    switch (mMode) {
        case 0:
            mSound.startCreatureSound(0x7011c, 0, -1);
            if (mType != 1) {
                bckSet(7, 2, 3.0f, 1.0f);
                mMode = 1;
                shape_angle.y = mAngleToPlayer;
                current.angle.y = mAngleToPlayer + 0x8000;
                if (mAcch.ChkGroundHit()) {
                    speedF = 15.0f;
                    field_0x6a5 = 1;
                } else {
                    speedF = 15.0f;
                    speed.y = 25.0f;
                    field_0x6a5 = 0;
                }
            } else {
                bckSet(7, 0, 3.0f, 1.0f);
                mMode = 2;
                speed.y = 0.0f;
                speedF = 0.0f;
            }
            break;
        case 1:
            cLib_chaseF(&speed.y, -60.0f, 5.0f);
            if (mAcch.ChkGroundHit()) {
                if (field_0x6a5 == 0) {
                    mSound.startCreatureSound(0x7011e, 0, -1);
                    field_0x6a5 = 1;
                }
                if (speedF >= 3.0f) {
                    fopAcM_effSmokeSet2(&field_0xad0, &field_0xad4, &current.pos, NULL, 1.5f, &tevStr);
                }
                speed.y = 0.0f;
                if (cLib_chaseF(&speedF, 0.0f, 1.0f)) {
                    setActionMode(0);
                }
            }
            break;
        case 2:
            if (mpMorf->isStop()) {
                setActionMode(0);
            }
            break;
        default:
            break;
    }
}

/* 8080E49C-8080E630 00645C 0194+00 1/1 0/0 0/0 .text            checkFlyTerritory__8daE_YM_cFv */
u8 daE_YM_c::checkFlyTerritory() {
    if (mPrevPos.absXZ(current.pos) > 300.0f) {
        return 0;
    } else {
        if (fabsf(mPrevPos.y - current.pos.y) > 150.0f) {
            return 0;
        }
        return 1;
    }
}

/* 8080E630-8080E6A0 0065F0 0070+00 1/1 0/0 0/0 .text            initFly__8daE_YM_cFv */
void daE_YM_c::initFly() {
    attention_info.distances[fopAc_attn_BATTLE_e] = 46;
    gravity = 0.0f;
    field_0x6e4 = 0;
    if (mTagPosP != NULL) {
        mPrevPos = mTagPos;
    } else {
        mPrevPos = home.pos;
    }
    mType = 3;
    shape_angle.x = 0;
}

/* 8080E6A0-8080F8C8 006660 1228+00 2/1 0/0 0/0 .text            executeFly__8daE_YM_cFv */
void daE_YM_c::executeFly() {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz player_pos(player->current.pos);
    cXyz my_vec_1 = current.pos - player_pos;
    cXyz my_vec_2 = current.pos - mPrevPos;
    cXyz my_vec_3 = player_pos - mPrevPos;
    mSound.startCreatureSoundLevel(0x70199, 0, -1);
    switch (mMode) {
        case 0:
            field_0x6f2 = 100;
            bckSetFly(0xd, 0, 0.0f, 1.0f);
            field_0x6a5 = 0;
            mMode = 1;
        case 1:
            if (mType == 1) {
                setElecEffect1();
            }
            if (mpMorf->checkFrame(6.0f)) {
                field_0x6cc = 1;
            }
            if (mpMorf->checkFrame(14.0f)) {
                if (mType != 1) {
                    mMode = 7;
                    field_0x6f0 = 0x1e;
                    initFly();
                } else {
                    field_0x70e = 0x28;
                    mMode = 10;
                    field_0x6f0 = 0x5a;
                    speed.y = -10.0f;
                    initFly();
                    current.angle.y = cLib_targetAngleY(&current.pos, &mPrevPos);
                }
            }
            break;
        case 2:
            field_0x6f2 = 100;
            bckSetFly(0xe, 2, 5.0f, 1.0f);
            initFly();
            field_0x6a5 = 0;
            mMode = 3;
            break;
        case 3: {
            mAcch.SetGroundUpY(70.0f);
            if (field_0x6a5) {
                if (field_0x70c == 0 && cM_rnd() < 0.4f) {
                    field_0x70c = 0x5a;
                    field_0x67c = mPrevPos;
                    if (my_vec_3.absXZ() >= 400.0f) {
                        if (checkFlyTerritory()) {
                            field_0x67c.x += cM_rndFX(300.0f);
                            field_0x67c.z += cM_rndFX(300.0f);
                        }
                    } else {
                        s16 tgt_ang_y;
                        if (checkFlyTerritory()) {
                            tgt_ang_y = cLib_targetAngleY(&current.pos, &player_pos) + 0x8000;
                        } else {
                            tgt_ang_y = cLib_targetAngleY(&current.pos, &mPrevPos);
                        }
                        field_0x67c.x += cM_ssin(tgt_ang_y) * 300.0f;
                        field_0x67c.z += cM_scos(tgt_ang_y) * 300.0f;
                    }
                    field_0x67c.y = player_pos.y + cM_rndF(50.0f);
                    if (fabsf(field_0x67c.y - mPrevPos.y) > 300.0f) {
                        field_0x67c.y = mPrevPos.y + cM_rndF(75.0f);
                    }
                    current.angle.y = cLib_targetAngleY(&current.pos, &field_0x67c);
                    current.angle.x = cLib_targetAngleX(&current.pos, &field_0x67c);
                    speedF = l_HIO.mFlyMoveSpeed * cM_scos(current.angle.x);
                    speed.y = l_HIO.mFlyMoveSpeed * cM_ssin(current.angle.x);
                    field_0x6f0 = 0x14;
                    mMode = 6;
                    break;
                }
            } else {
                field_0x6a5 += 1;
            }
            if (my_vec_3.absXZ() >= 400.0f) {
                field_0x67c = mPrevPos;
                if (checkFlyTerritory()) {
                    field_0x67c.x += cM_rndFX(300.0f);
                    if (mPrevPos.y < current.pos.y) {
                        field_0x67c.y -= cM_rndF(75.0f);
                    } else {
                        field_0x67c.y += cM_rndF(75.0f);
                    }
                    field_0x67c.z += cM_rndFX(300.0f);
                }
                current.angle.y = cLib_targetAngleY(&current.pos, &field_0x67c);
                current.angle.x = cLib_targetAngleX(&current.pos, &field_0x67c);
            } else {
                if (checkFlyTerritory()) {
                    current.angle.y = cLib_targetAngleY(&current.pos, &player_pos) + 0x8000;
                    current.angle.x = cM_rndF(4096.0f);
                } else {
                    current.angle.y = cLib_targetAngleY(&current.pos, &mPrevPos);
                    current.angle.x = cLib_targetAngleX(&current.pos, &mPrevPos);
                    if ((s16)(cLib_targetAngleY(&current.pos, &player_pos) - current.angle.y) < 0) {
                        current.angle.y += 0x3000;
                    } else {
                        current.angle.y -= 0x3000;
                    }
                }
            }
            speed.y = l_HIO.mFlyMoveSpeed * cM_ssin(current.angle.x);
            field_0x6f0 = 0x14;
            mMode = 4;
        }
        case 4:
        case 6: {
            cLib_chaseF(&speedF, l_HIO.mFlyMoveSpeed * fabsf(cM_scos(current.angle.x)), 1.0f);
            if (mpMorf->isStop() && checkBck("E_TM", 0xd)) {
                bckSetFly(0xc, 2, 0.0f, 1.0f);
            }
            cLib_chaseAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &player_pos), 0x400);
            s16 ang_diff = current.angle.y - shape_angle.y;
            cLib_chaseAngleS(&shape_angle.z, cM_ssin(ang_diff) * -3072.0f * fabsf(cM_scos(current.angle.x)), 0x100);
            if (fabsf(cM_scos(current.angle.x)) >= fabsf(cM_ssin(current.angle.x))) {
                cLib_chaseAngleS(&shape_angle.x, cM_scos(ang_diff) * 5120.0f * fabsf(cM_scos(current.angle.x)), 0x400);
            } else {
                cLib_chaseAngleS(&shape_angle.x, fabsf(cM_ssin(current.angle.x)) * 5120.0f, 0x400);
            }
            int do_stuff = false;
            if (mMode == 4) {
                if (field_0x6f0 == 0) {
                    do_stuff = true;
                }
            } else if (fabsf(field_0x67c.y - current.pos.y) < 100.0f || mAcch.ChkGroundHit()) {
                do_stuff = true;
                speed.y = 0.0f;
            }
            if (do_stuff) {
                mMode = 5;
                field_0x6f0 = 0x1e;
                bckSetFly(0xe, 2, 5.0f, 1.0f);
            }
            break;
        }
        case 7: {
            if (mpMorf->isStop() && checkBck("E_TM", 0xd)) {
                bckSetFly(0xc, 2, 0.0f, 1.0f);
            }
            cLib_chaseF(&speedF, 20.0f, 3.0f);
            cLib_chaseF(&speed.y, 15.0f, 3.0f);
            cLib_addCalcAngleS(&shape_angle.y, mAngleToPlayer + 0x8000, 8, 0x1000, 0x100);
            current.angle.y = shape_angle.y;
            if (field_0x6f0 == 0) {
                mMode = 5;
                field_0x6f0 = 0x1e;
                speed.y = 0.0f;
                speedF = 0.0f;
                bckSetFly(0xe, 2, 5.0f, 1.0f);
            }
            break;
        }
        case 5: {
            cLib_chaseAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &player_pos), 0x800);
            cLib_chaseAngleS(&shape_angle.x, 0, 0x400);
            cLib_chaseAngleS(&shape_angle.z, 0, 0x400);
            cLib_chaseF(&speedF, 0.0f, 1.0f);
            cLib_chaseF(&speed.y, 0.0f, 3.0f);
            if (field_0x6f0 == 0 || my_vec_1.absXZ() < 50.0f
                || (daPy_getPlayerActorClass()->checkWolfBark() && my_vec_1.absXZ() < 100.0f)) {
                speed.y = 0.0f;
                speedF = 0.0f;
                mMode = 3;
                return;
            }
            if (field_0x6f2 == 0 && my_vec_1.absXZ() < 500.0f
                && my_vec_3.absXZ() < l_HIO.mMoveRange + 150.0f && fabsf(my_vec_2.y) < 150.0f) {
                speed.y = 0.0f;
                speedF = 0.0f;
                setActionMode(0xc);
                return;
            }
            break;
        }
        case 10: {
            if (field_0x70e) {
                setElecEffect2();
                mSound.startCreatureSoundLevel(0x70196, 0, -1);
                field_0x700 = l_HIO.mElectricInvincibilityTimeExtension;
                mSphCc.OnAtSetBit();
            }
            if (field_0x70e) {
                if (mpMorf->isStop() && checkBck("E_TM", 0xd)) {
                    bckSetFly(0xc, 2, 0.0f, 1.0f);
                }
                if (player_pos.y + 100.0f > current.pos.y) {
                    speed.y -= 1.0f;
                    if (speed.y < -15.0f) {
                        speed.y = -15.0f;
                    }
                } else {
                    cLib_chaseF(&speed.y, 0.0f, 1.0f);
                }
                cLib_chaseF(&speedF, 30.0f - fabsf(speed.y), 1.0f);
            } else {
                s16 tgt_ang = cLib_targetAngleY(&current.pos, &mPrevPos);
                if ((s16)(cLib_targetAngleY(&current.pos, &player_pos) - tgt_ang) < 0) {
                    tgt_ang += 0x3000;
                } else {
                    tgt_ang -= 0x3000;
                }
                cLib_chaseAngleS(&current.angle.y, tgt_ang, 0x400);
                current.angle.x = cLib_targetAngleX(&current.pos, &mPrevPos);
                speed.y = l_HIO.mFlyMoveSpeed * cM_ssin(current.angle.x);
                cLib_chaseF(&speedF, l_HIO.mFlyMoveSpeed * cM_scos(current.angle.x), 1.0f);
            }
            cLib_chaseAngleS(&shape_angle.y, current.angle.y, 0x400);
            if (field_0x6f0 == 0) {
                mMode = 3;
            }
        }
    }
    field_0x6e4 += 0x800;
    current.pos.y += cM_ssin(field_0x6e4) * 3.0f;
}

/* 8080F8C8-8080F92C 007888 0064+00 1/1 0/0 0/0 .text            setInclination__8daE_YM_cFv */
void daE_YM_c::setInclination() {
    s16 tan = cM_atan2s(speedF, speed.y) - 0x4000;
    if (tan < -6000) {
        tan = -6000;
    }
    if (tan > 6000) {
        tan = 6000;
    }
    cLib_chaseAngleS(&shape_angle.x, tan, 0x0180);
}

/* 8080F92C-80810084 0078EC 0758+00 1/1 0/0 0/0 .text            executeFlyAttack__8daE_YM_cFv */
void daE_YM_c::executeFlyAttack() {
    cXyz my_vec_0;
    mSound.startCreatureSoundLevel(0x70199, 0, -1);
    switch (mMode) {
        case 0:
            field_0x6e4 = 0;
            bckSetFly(5, 0, 0.0f, 1.0f);
            mMode = 1;
            field_0x67c = dComIfGp_getPlayer(0)->current.pos;
            field_0x67c.y += 50.0f;
            break;
        case 1:
            setElecEffect1();
            mSound.startCreatureSoundLevel(0x70195, 0, -1);
            cLib_chaseAngleS(&shape_angle.x, 0, 0x400);
            cLib_chaseAngleS(&shape_angle.z, 0, 0x400);
            if (mpMorf->isStop()) {
                bckSetFly(6, 2, 0.0f, 1.0f);
                mMode = 2;
                field_0x6f0 = 300;
            }
            break;
        case 2: {
            setElecEffect2();
            mSound.startCreatureSoundLevel(0x70196, 0, -1);
            mSound.startCreatureSoundLevel(0x7019a, 0, -1);
            field_0x700 = l_HIO.mElectricInvincibilityTimeExtension;
            mSphCc.OnAtSetBit();
            my_vec_0 = field_0x67c - current.pos;
            cLib_chaseAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &field_0x67c), 0x800);
            current.angle.y = shape_angle.y;
            int tan_val = cM_atan2s(my_vec_0.absXZ(), my_vec_0.y);
            cLib_chaseF(&speed.y, l_HIO.mFlyAttackSpeed * cM_scos(tan_val), 5.0f);
            cLib_chaseF(&speedF, l_HIO.mFlyAttackSpeed * cM_ssin(tan_val), 3.0f);
            if (mSphCc.ChkAtHit()) {
                fopAc_ac_c* hit_actor = dCc_GetAc(mSphCc.GetAtHitObj()->GetAc());
                if (fopAcM_GetName(hit_actor) == PROC_ALINK) {
                    bckSetFly(7, 0, 0.0f, 1.0f);
                    speed.y = 0.0f;
                    speedF = 0.0f;
                    mMode = 4;
                    current.angle.y = cLib_targetAngleY(&current.pos, &mPrevPos);
                    shape_angle.x = 0;
                    return;
                }
            }
            if (my_vec_0.abs() < 100.0f || field_0x6f0 == 0) {
                mMode = 5;
                field_0x700 = l_HIO.mElectricInvincibilityTimeExtension;
                bckSetFly(0xe, 2, 5.0f, 1.0f);
                field_0x6f0 = 0x1e;
            }
            setInclination();
            break;
        }
        case 4:
        case 5: {
            field_0x6e4 += 0x800;
            current.pos.y += cM_ssin(field_0x6e4) * 3.0f;
            cLib_chaseF(&speed.y, 0.0f, 3.0f);
            cLib_chaseF(&speedF, 0.0f, 3.0f);
            int do_stuff = 0;
            if (mMode == 4) {
                if (mpMorf->isStop()) {
                    do_stuff = true;
                }
            } else if (field_0x6f0 == 0) {
                do_stuff = true;
            }
            if (do_stuff) {
                mMode = 3;
                bckSetFly(0xe, 2, 5.0f, 1.0f);
                speedF = 0.0f;
                speed.y = 0.0f;
                field_0x6f0 = cM_rndF(10.0f) + 30.0f;
            }
            setInclination();
            break;
        }
        case 3: {
            s16 mang = mAngleToPlayer;
            cLib_addCalcAngleS(&current.angle.y, mang + 0x8000, 4, 0x1000, 0x100);
            cLib_chaseAngleS(&shape_angle.y, mang, 0x400);
            cLib_chaseF(&speed.y, 10.0f, 3.0f);
            cLib_chaseF(&speedF, 10.0f, 3.0f);
            if (field_0x6f0 == 0) {
                setActionMode(0xb);
                mMode = 2;
            }
            s16 tan = cM_atan2s(speedF, speed.y) - 0x4000;
            if (tan < -6000) {
                tan = -6000;
            }
            if (tan > 6000) {
                tan = 6000;
            }
            cLib_chaseAngleS(&shape_angle.x, tan, 0x180);
            setInclination();
            break;
        }
        default:
            break;
    }
}

/* 80810084-8081013C 008044 00B8+00 1/1 0/0 0/0 .text            setNextPathPoint__8daE_YM_cFv */
void daE_YM_c::setNextPathPoint() {
    cXyz my_vec_0;
    ++mCurrentPntNo;
    if (mCurrentPntNo >= mpPath->m_num) {
        mCurrentPntNo = 0;
    }
    my_vec_0 = dPath_GetPnt(mpPath, mCurrentPntNo)->m_position;
    shape_angle.y = current.angle.y = cLib_targetAngleY(&current.pos, &my_vec_0);
    mMode = 2;
    bckSet(0x10, 2, 5.0f, 1.0f);
}

/* 8081013C-8081030C 0080FC 01D0+00 1/1 0/0 0/0 .text            checkRailDig__8daE_YM_cFv */
u8 daE_YM_c::checkRailDig() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz my_vec_0;
    if (player->checkWolfDig()) {
        my_vec_0 = player->getLeftHandPos() - current.pos;
        if (my_vec_0.abs() < 200.0f) {
            field_0x714 &= 0xffffff7f;
            field_0x6f0 = 0x14;
            mMode = 3;
            mAcchCir.SetWall(40.0f, 60.0f);
            fopAcM_OnStatus(this, 0x4000);
            return 1;
        }
    }
    return 0;
}

/* 8081030C-80810690 0082CC 0384+00 1/1 0/0 0/0 .text            executeRail__8daE_YM_cFv */
void daE_YM_c::executeRail() {
    daPy_py_c* player = daPy_getPlayerActorClass();;
    cXyz my_vec_0;
    switch (mMode) {
        case 0:
            mIsHide = 1;
            field_0x6a6 = 4;
            field_0x714 |= 4;
            field_0x6dc = -70.0f;
            old.pos = dPath_GetPnt(mpPath, mCurrentPntNo)->m_position;
            current.pos = old.pos;
            field_0x6f0 = 0x3c;
            field_0x714 |= 0x80;
            mSphCc.SetCoSPrm(0x145);
            mSphCc.SetTgType(0x10000);
            setNextPathPoint();
        case 1:
            if (checkRailDig() == 0) {
                mSound.startCreatureSoundLevel(0x700ea, 0, -1);
                if (player->checkWolfDig() == 0 && field_0x6f0 == 0) {
                    setNextPathPoint();
                }
            }
            break;
        case 2:
            if (checkRailDig() == 0) {
                speedF = 9.0f;
                setMoveSound(1);
                my_vec_0 = dPath_GetPnt(mpPath, mCurrentPntNo)->m_position;
                if (cLib_chasePos(&current.pos, my_vec_0, speedF) || current.pos.absXZ(my_vec_0) < 10.0f) {
                    mMode = 1;
                    field_0x6f0 = 0x3c;
                    bckSet(0xf, 2, 5.0f, 1.0f);
                }
                speedF = 0.0f;
            }
            break;
        case 3:
            if (field_0x6f0 == 0) {
                setAppear();
                mPrevPos = current.pos;
                setActionMode(2);
                field_0x704 = 0x1c2;
                field_0x70e = 0x5a;
                if (mTagPosP != NULL) {
                    mType = 0;
                }
            }
            break;
        default:
            break;
    }
}

/* 80815BD0-80815BDC 0000CC 000C+00 1/1 0/0 0/0 .data            YM_DIG_POS_Y$7355 */
static f32 YM_DIG_POS_Y[] = {-15.0f, -30.0f, -70.0f};

/* 80810690-80810DF8 008650 0768+00 1/1 0/0 0/0 .text            executeBackRail__8daE_YM_cFv */
void daE_YM_c::executeBackRail() {
    cXyz my_vec_0 = dPath_GetPnt(mpPath, mCurrentPntNo)->m_position;
    switch (mMode) {
        case 0:
            if (current.pos.abs(my_vec_0) < 150.0f) {
                if ((s16)cLib_distanceAngleS(shape_angle.y, cLib_targetAngleY(&current.pos, &my_vec_0)) >= 0x2000) {
                    ++mCurrentPntNo;
                    if (mCurrentPntNo >= mpPath->m_num) {
                        mCurrentPntNo = 0;
                    }
                    my_vec_0 = dPath_GetPnt(mpPath, mCurrentPntNo)->m_position;
                }
            }
            bckSet(8, 2, 5.0f, 1.0f);
            mIsHide = 1;
            field_0x6a5 = 0;
            field_0x6f0 = 7;
            mMode = 1;
            mAcchCir.SetWall(40.0f, 60.0f);
        case 1:
            setDigEffect();
            mSound.startCreatureSoundLevel(0x70197, 0, -1);
            cLib_chaseF(&field_0x6dc, YM_DIG_POS_Y[field_0x6a5], 3.0f);
            cLib_addCalcAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &my_vec_0), 8, 0x2000, 0x100);
            current.angle.y = shape_angle.y;
            cLib_chaseF(&speedF, 5.0f, 1.0f);
            if (field_0x6f0 == 0) {
                field_0x6f0 = 10;
                mMode = 2;
                speedF = 0.0f;
            }
            break;
        case 2:
            setDigEffect();
            mSound.startCreatureSoundLevel(0x70197, 0, -1);
            if (field_0x6f0 == 0) {
                ++field_0x6a5;
                if (field_0x6a5 >= 3) {
                    mMode = 3;
                    field_0x6a5 = 0;
                    mSphCc.SetCoSPrm(0x145);
                    mSphCc.SetTgType(0x10000);
                    field_0x714 &= 0xfffffffb;
                    bckSet(0x10, 2, 3.0f, 0.0f);
                } else {
                    if (field_0x6a5 == 2) {
                        field_0x6f0 = 0xf;
                        mSphCc.SetCoSPrm(0x145);
                        mSphCc.SetTgType(0x10000);
                        field_0x714 &= 0xfffffffb;
                    } else {
                        field_0x6f0 = 7;
                    }
                    mMode = 1;
                }
            }
            break;
        case 3:
            cLib_chaseF(&field_0x6dc, -70.0f, 2.0f);
            setMoveSound(1);
            if (current.pos.absXZ(my_vec_0) < 100.0f) {
                cLib_chaseAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &my_vec_0), 0x1000);
            } else {
                cLib_addCalcAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &my_vec_0), 8, 0x2000, 0x100);
            }
            current.angle.y = shape_angle.y;
            cLib_chaseF(&speedF, 20.0f, 1.0f);
            if (mAcch.ChkWallHit()) {
                field_0x6a5 += 2;
                if (field_0x6a5 >= 0x14 && checkBeforeGround()) {
                    field_0x6a5 = 0;
                }
            } else if (field_0x6a5) {
                --field_0x6a5;
            }
            if (current.pos.absXZ(my_vec_0) < 30.0f && field_0x6dc == -70.0f) {
                speedF = 0.0f;
                mMode = 4;
                field_0x6f0 = 100;
                bckSet(0xf, 2, 5.0f, 1.0f);
            }
            break;
        case 4:
            if (field_0x6f0 == 0) {
                field_0x714 |= 4;
                setActionMode(0xd);
            }
            break;
        default:
            break;
    }
}

/* 80810DF8-80810E64 008DB8 006C+00 1/1 0/0 0/0 .text            checkElectricStart__8daE_YM_cFv */
void daE_YM_c::checkElectricStart() {
    if (field_0x6a1 == 1) {
        if (mAction != ACT_WAIT && mAction != ACT_SURPRISE) {
            field_0x6c9 = 0;
            field_0x708 = 0;
        } else if (field_0x708 != 0) {
            field_0x708--;

            if (field_0x708 == 0) {
                field_0x6c9 = 1;
            }
        }
    } else {
        field_0x6c9 = 0;
        field_0x708 = 0;
    }
}

/* 80810E64-8081105C 008E24 01F8+00 1/1 0/0 0/0 .text            executeElectric__8daE_YM_cFv */
void daE_YM_c::executeElectric() {
    switch (mMode) {
        case 0:
            field_0x6c9 = 0;
            bckSet(9, 0, 3.0f, 1.0f);
            speedF = 0.0f;
            mMode = 1;
            break;
        case 1:
            if (mpMorf->getFrame() < 36.0f) {
                setElecEffect1();
                mSound.startCreatureSoundLevel(0x70195, 0, -1);
            } else {
                setElecEffect2();
                mSound.startCreatureSoundLevel(0x70196, 0, -1);
            }
            if (mpMorf->checkFrame(40.0f)) {
                mMode = 2;
            }
            break;
        case 2:
            setElecEffect2();
            mSound.startCreatureSoundLevel(0x70196, 0, -1);
            field_0x700 = l_HIO.mElectricInvincibilityTimeExtension;
            mSphCc.OnAtSetBit();
            if (mpMorf->isStop()) {
                mMode = 3;
                field_0x6f0 = 0x1e;
                bckSet(0xf, 2, 5.0f, 1.0f);
            }
            break;
        case 3:
            if (field_0x6f0 == 0) {
                setActionMode(0);
            }
        default:
            break;
    }
}

/* 8081105C-80811740 00901C 06E4+00 1/1 0/0 0/0 .text            executeSwitch__8daE_YM_cFv */
void daE_YM_c::executeSwitch() {
    cXyz my_vec_0;
    switch (mMode) {
        case 0:
            mSphCc.SetCoSPrm(0x145);
            mSphCc.SetTgType(0);
            field_0x6dc = -70.0f;
            mIsHide = 1;
            if (mpPath != NULL) {
                if (mpPath->field_0x4 == 1) {
                    field_0x714 = 4;
                } else {
                    field_0x714 = 0;
                    field_0x6cf = 0;
                }
            } else {
                field_0x714 = 0;
            }
            if (dComIfGs_isSwitch(field_0x6a3, fopAcM_GetRoomNo(this))) {
                if (mpPath == NULL) {
                    mPrevPos = current.pos;
                    mMode = 1;
                    field_0x6f0 = 10;
                    field_0x6e4 = shape_angle.y;
                    field_0x6e6 = 0x5dc;
                    field_0x6e8 = 0;
                } else {
                    dStage_dPnt_c* pnt = dPath_GetPnt(mpPath, mCurrentPntNo);
                    mCurrentPntNo = 0;
                    ++mCurrentPntNo;
                    old.pos = pnt->m_position;
                    current.pos = old.pos;
                    mMode = 2;
                }
                if (field_0x6cb) {
                    speedF = 25.0f;
                } else {
                    speedF = 17.0f;
                }
                setAppear();
                setNormalCc();
                field_0x70e = 0x5a;
                bckSet(0x10, 2, 5.0f, 1.0f);
            }
            break;
        case 1:
            cLib_chaseF(&field_0x6dc, 0.0f, 15.0f);
            setMoveSound(0);
            if (mAcch.ChkWallHit()) {
                field_0x6e4 += 0x800;
            }
            if (field_0x6e8 >= 0) {
                field_0x6e6 -= 200;
            } else {
                field_0x6e6 += 200;
            }
            field_0x6e8 += field_0x6e6;
            cLib_addCalcAngleS(&shape_angle.y, field_0x6e4 + field_0x6e8, 4, 0x1000, 0x100);
            if (current.pos.absXZ(mPrevPos) > 500.0f) {
                speedF = 0.0f;
                mPrevPos = current.pos;
                field_0x6dc = 0.0f;
                setActionMode(0);
            }
            break;
        case 2:
            mAcchCir.SetWall(0.0f, 0.0f);
            if (field_0x70e) {
                setElecEffect2();
                mSound.startCreatureSoundLevel(0x70196, 0, -1);
                field_0x700 = l_HIO.mElectricInvincibilityTimeExtension;
                mSphCc.OnAtSetBit();
            }
            cLib_chaseF(&field_0x6dc, 0.0f, 3.0f);
            setMoveSound(0);
            my_vec_0 = dPath_GetPnt(mpPath, mCurrentPntNo)->m_position;
            cLib_addCalcAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &my_vec_0),
                               4, 0x2000, 0x100);
            if (current.pos.absXZ(my_vec_0) < 50.0f) {
                ++mCurrentPntNo;
                if (mCurrentPntNo >= mpPath->m_num) {
                    if (mpPath->field_0x4 == 2) {
                        field_0x71d = 1;
                        field_0x714 = 0;
                    } else {
                        speedF = 0.0f;
                        mPrevPos = current.pos;
                        field_0x6dc = 0.0f;
                        mAcchCir.SetWall(40.0f, 60.0f);
                        setActionMode(0);
                    }
                }
            }
            break;
        case 10:
            setAppear();
            setNormalCc();
            old.pos = dPath_GetPnt(mpPath, mpPath->m_num-1)->m_position;
            current.pos = old.pos;
            mPrevPos = current.pos;
            field_0x6dc = 0.0f;
            speedF = 0.0f;
            mAcchCir.SetWall(40.0f, 60.0f);
            setActionMode(0);
            break;
        default:
            break;
    }
    current.angle.y = shape_angle.y;
}

/* 80811740-80811838 009700 00F8+00 1/1 0/0 0/0 .text            initFireFly__8daE_YM_cFi */
void daE_YM_c::initFireFly(int param_0) {
    field_0x6e6 = cM_rndFX(512.0f);
    if (param_0 && mAcch.ChkWallHit()) {
        s16 wall_ang = mAcchCir.GetWallAngleY();
        s16 res = (wall_ang << 1) - (current.angle.y + 0x8000);
        current.angle.y = res + cM_rndFX(4096.0);
        speed.y += cM_rndFX(15.0f);
        field_0x70e = cM_rndFX(5.0f) + 10.0f;
    }
    field_0x6f0 = 10;
}

/* 80811838-808120B0 0097F8 0878+00 1/1 0/0 0/0 .text            executeFire__8daE_YM_cFv */
void daE_YM_c::executeFire() {
    if (current.pos.y >= 550.0f) {
        current.pos.y = 550.0f;
        mAcch.SetRoofHit();
    }
    switch (mMode) {
        case 0:
            if (field_0x6f0) {
                setElecEffect2();
                mSound.startCreatureSoundLevel(0x70196, 0, -1);
            } else if (daPy_getPlayerActorClass()->checkFrontRollCrash() || daPy_getPlayerActorClass()->checkWolfAttackReverse()) {
                cXyz pos_diff = daPy_getPlayerActorClass()->current.pos - current.pos;
                if (pos_diff.abs() < 250.0f) {
                    field_0x6f0 = 10;
                }
            }
            if (field_0x6d4) {
                field_0x714 = 4;
            } else {
                field_0x714 = 0;
            }
            mSphCc.SetCoSPrm(0x145);
            mSphCc.SetTgType(0);
            field_0x6dc = -70.0f;
            mIsHide = 1;
            field_0x71c = 1;
            current.pos = home.pos;
            if (field_0x6a3 == 0xff || dComIfGs_isSwitch(field_0x6a3, fopAcM_GetRoomNo(this))) {
                field_0x71c = 0;
                mPrevPos = current.pos;
                field_0x6e4 = 0;
                setAppear();
                setNormalCc();
                mSphCc.SetTgType(0);
                field_0x6dc = 0.0f;
                mMode = 1;
                bckSetFly(0xd, 0, 5.0f, 1.0f);
                field_0x6a5 = 0;
            }
            break;
        case 1:
            if (mpMorf->checkFrame(6.0f)) {
                field_0x6cc = 1;
            }
            if (mpMorf->checkFrame(14.0f)) {
                attention_info.distances[2] = 0x2e;
                gravity = 0.0f;
                fopAcM_SearchByName(0x1f7, &field_0x660);
                if (field_0x660 != NULL) {
                    for (int idx = 0; idx < 20; ++idx) {
                        if (((daTag_FWall_c*)field_0x660)->getTagNo(idx) == getTagNo()) {
                            field_0x67c = ((daTag_FWall_c*)field_0x660)->getPos(idx);
                            break;
                        }
                    }
                    mMode = 2;
                } else {
                    initFireFly(0);
                    mMode = 3;
                }
            }
        case 2:
            if (fopAcM_CheckCondition(this, 4) == 0) {
                setFireEffect();
                setElecEffect2();
            }
            mSound.startCreatureSoundLevel(0x70196, 0, -1);
            field_0x700 = l_HIO.mElectricInvincibilityTimeExtension;
            mSphCc.OnAtSetBit();
            current.angle.y = cLib_targetAngleY(&current.pos, &field_0x67c);
            current.angle.x = cLib_targetAngleX(&current.pos, &field_0x67c);
            speedF = cM_scos(current.angle.x) * 40.0f;
            speed.y = cM_ssin(current.angle.x) * 40.0f;
            if (field_0x67c.abs(current.pos) < 200.0f && mAcch.ChkWallHit()) {
                mMode = 3;
                initFireFly(1);
                for (int idx = 0; idx < 20; ++idx) {
                    if (((daTag_FWall_c*)field_0x660)->getTagNo(idx) == getTagNo()) {
                        ((daTag_FWall_c*)field_0x660)->setFire(idx);
                    }
                }
            }
            shape_angle.y = current.angle.y;
            break;
        case 3:
            if (dComIfGp_event_runCheck() == 0) {
                mSphCc.OnCoSetBit();
            } else {
                mSphCc.OffCoSetBit();
            }
            if (field_0x6a5 == 0 && mpMorf->isStop()) {
                bckSetFly(0xc, 2, 0.0f, 1.0f);
                ++field_0x6a5;
            }
            if (fopAcM_CheckCondition(this, 4) == 0) {
                setFireEffect();
            }
            if (field_0x70e) {
                if (fopAcM_CheckCondition(this, 4) == 0) {
                    setElecEffect2();
                }
                mSound.startCreatureSoundLevel(0x70196, 0, -1);
                field_0x700 = l_HIO.mElectricInvincibilityTimeExtension;
                mSphCc.OnAtSetBit();
            }
            if (current.pos.y > 400.0f) {
                speed.y -= 1.0f;
                if (speed.y < -15.0f) {
                    speed.y = -15.0f;
                }
            } else if (current.pos.y < 200.0f) {
                if (speed.y < 0.0f) {
                    speed.y = 0.0f;
                }
            } else {
                speed.y += 1.0f;
                if (speed.y > 15.0f) {
                    speed.y = 15.0f;
                }
            }
            speedF = 40.0f - fabsf(speed.y);
            current.angle.y += field_0x6e6;
            if (mAcch.ChkWallHit()) {
                initFireFly(1);
            } else if (field_0x6f0 == 0) {
                initFireFly(0);
            }
            shape_angle.y = current.angle.y;
            break;
        default:
            break;
    }
    field_0x6e4 += 0x2000;
    current.pos.y += cM_ssin(field_0x6e4) * 3.0f;
    if (mMode) {
        mSound.startCreatureSoundLevel(0x70199, 0, -1);
    }
}

/* ############################################################################################## */
/* 80815AC4-80815AC8 000130 0004+00 0/2 0/0 0/0 .rodata          @8040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8040 = 2000.0f;
COMPILER_STRIP_GATE(0x80815AC4, &lit_8040);
#pragma pop

/* 808120B0-808123C4 00A070 0314+00 1/1 0/0 0/0 .text            setRiverAttention__8daE_YM_cFv */
void daE_YM_c::setRiverAttention() {
    // NONMATCHING
}

/* 808123C4-808123D0 00A384 000C+00 0/0 0/0 1/1 .text            setLockByCargo__8daE_YM_cFv */
void daE_YM_c::setLockByCargo() {
    field_0x6f2 = 90;
}

/* ############################################################################################## */
/* 80815AC8-80815ACC 000134 0004+00 0/1 0/0 0/0 .rodata          @8350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8350 = 1500.0f;
COMPILER_STRIP_GATE(0x80815AC8, &lit_8350);
#pragma pop

/* 80815ACC-80815AD0 000138 0004+00 0/1 0/0 0/0 .rodata          @8351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8351 = 12.0f / 5.0f;
COMPILER_STRIP_GATE(0x80815ACC, &lit_8351);
#pragma pop

/* 808123D0-80812F0C 00A390 0B3C+00 1/1 0/0 0/0 .text            executeRiver__8daE_YM_cFv */
void daE_YM_c::executeRiver() {
    // NONMATCHING
}

/* 80812F0C-80812FCC 00AECC 00C0+00 1/1 0/0 0/0 .text            s_ym_sub__FPvPv */
static void* s_ym_sub(void* param_0, void* param_1) {
    daE_YM_c* actor_a = (daE_YM_c*)param_0;
    daE_YM_c* actor_b = (daE_YM_c*)param_1;

    if (fopAcM_IsActor(actor_a) && fopAcM_GetName(actor_a) == PROC_E_YM) {
        if (!fpcM_IsCreating(fopAcM_GetID(actor_a)) && actor_a != actor_b &&
            actor_a->current.pos == actor_b->current.pos)
        {
            if (actor_b->getFriendFlag() & 1) {
                actor_a->setFriendFlag(0x84);
            } else {
                actor_a->setFriendFlag(0x82);
            }

            actor_b->setFriendFlag(0x81);
        }
    }

    return 0;
}

/* 80812FCC-8081300C 00AF8C 0040+00 1/1 0/0 0/0 .text            checkFrinedSamePos__8daE_YM_cFv */
void daE_YM_c::checkFrinedSamePos() {
    if (mFriendFlag == 0) {
        setFriendFlag(0x80);
        fpcM_Search(s_ym_sub, this);
    }
}

extern "C" void action__8daE_YM_cFv();
/* 80815BDC-80815C28 -00001 004C+00 1/1 0/0 0/0 .data            @8522 */
SECTION_DATA static void* lit_8522[19] = {
    (void*)(((char*)action__8daE_YM_cFv) + 0x124), (void*)(((char*)action__8daE_YM_cFv) + 0x130),
    (void*)(((char*)action__8daE_YM_cFv) + 0x13C), (void*)(((char*)action__8daE_YM_cFv) + 0x148),
    (void*)(((char*)action__8daE_YM_cFv) + 0x154), (void*)(((char*)action__8daE_YM_cFv) + 0x160),
    (void*)(((char*)action__8daE_YM_cFv) + 0x16C), (void*)(((char*)action__8daE_YM_cFv) + 0x178),
    (void*)(((char*)action__8daE_YM_cFv) + 0x184), (void*)(((char*)action__8daE_YM_cFv) + 0x194),
    (void*)(((char*)action__8daE_YM_cFv) + 0x1A4), (void*)(((char*)action__8daE_YM_cFv) + 0x1B0),
    (void*)(((char*)action__8daE_YM_cFv) + 0x1BC), (void*)(((char*)action__8daE_YM_cFv) + 0x1CC),
    (void*)(((char*)action__8daE_YM_cFv) + 0x1D8), (void*)(((char*)action__8daE_YM_cFv) + 0x1E4),
    (void*)(((char*)action__8daE_YM_cFv) + 0x1F4), (void*)(((char*)action__8daE_YM_cFv) + 0x200),
    (void*)(((char*)action__8daE_YM_cFv) + 0x20C),
};

/* 8081300C-80813528 00AFCC 051C+00 2/1 0/0 0/0 .text            action__8daE_YM_cFv */
void daE_YM_c::action() {
    // NONMATCHING
}

/* 80813528-808135B0 00B4E8 0088+00 1/1 0/0 0/0 .text            mtx_set__8daE_YM_cFv */
void daE_YM_c::mtx_set() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + field_0x6dc, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(field_0x668);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(field_0x68c, field_0x68c, field_0x68c);

    mpMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    mpMorf->modelCalc();
}

/* ############################################################################################## */
/* 80815AD0-80815AD4 00013C 0004+00 0/1 0/0 0/0 .rodata          @8621 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8621 = -30.0f;
COMPILER_STRIP_GATE(0x80815AD0, &lit_8621);
#pragma pop

/* 80815AD4-80815AD8 000140 0004+00 0/1 0/0 0/0 .rodata          @8622 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8622 = -20.0f;
COMPILER_STRIP_GATE(0x80815AD4, &lit_8622);
#pragma pop

/* 808135B0-808138AC 00B570 02FC+00 1/1 0/0 0/0 .text            cc_set__8daE_YM_cFv */
void daE_YM_c::cc_set() {
    // NONMATCHING
}

/* 808138AC-80813A10 00B86C 0164+00 1/1 0/0 0/0 .text            execute__8daE_YM_cFv */
int daE_YM_c::execute() {
    if (field_0x71d) {
        return 1;
    }

    if (field_0x6f0 != 0) {
        field_0x6f0--;
    }

    if (field_0x6f2 != 0) {
        field_0x6f2--;
    }

    if (field_0x6f4 != 0) {
        field_0x6f4--;
    }

    if (field_0x6f6 != 0) {
        field_0x6f6--;
    }

    if (field_0x6f8 != 0) {
        field_0x6f8--;
    }

    if (field_0x6fc != 0) {
        field_0x6fc--;
    }

    if (field_0x6fe != 0) {
        field_0x6fe--;
    }

    if (field_0x700 != 0) {
        field_0x700--;
    }

    if (field_0x6fa != 0) {
        field_0x6fa--;
    }

    if (field_0x704 != 0) {
        field_0x704--;
    }

    if (field_0x70a != 0) {
        field_0x70a--;
    }

    if (field_0x70c != 0) {
        field_0x70c--;
    }

    if (field_0x70e != 0) {
        field_0x70e--;
    }

    checkElectricStart();
    action();
    mtx_set();
    cc_set();
    return 1;
}

/* 80813A10-80813A30 00B9D0 0020+00 2/1 0/0 0/0 .text            daE_YM_Execute__FP8daE_YM_c */
static int daE_YM_Execute(daE_YM_c* i_this) {
    return i_this->execute();
}

/* 80813A30-80813A38 00B9F0 0008+00 1/0 0/0 0/0 .text            daE_YM_IsDelete__FP8daE_YM_c */
static int daE_YM_IsDelete(daE_YM_c* i_this) {
    return 1;
}

/* 80813A38-80813AD0 00B9F8 0098+00 1/1 0/0 0/0 .text            _delete__8daE_YM_cFv */
int daE_YM_c::_delete() {
    if (mFlyType == true) {
        dComIfG_resDelete(&mPhase, "E_TM");
    } else {
        dComIfG_resDelete(&mPhase, "E_YM");
    }

    if (field_0xaf4) {
        lbl_253_bss_8 = 0;
    }

    if (heap != NULL) {
        mSound.deleteObject();
    }

    return 1;
}

/* 80813AD0-80813AF0 00BA90 0020+00 1/0 0/0 0/0 .text            daE_YM_Delete__FP8daE_YM_c */
static int daE_YM_Delete(daE_YM_c* i_this) {
    return i_this->_delete();
}

/* 80813AF0-80813E38 00BAB0 0348+00 1/1 0/0 0/0 .text            CreateHeap__8daE_YM_cFv */
int daE_YM_c::CreateHeap() {
    if (mFlyType == 1) {
        J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes("E_TM", 0x11);
        JUT_ASSERT(model_data != NULL, 0x1094);
        mpMorf = new mDoExt_McaMorfSO(model_data, NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_TM", 10),
                                      0, 1.0f, 0, -1, &mSound, 0x80000,0x11000084);
        if (mpMorf == NULL || mpMorf->getModel() == NULL) {
            return 0;
        }
        mpBrk = new mDoExt_brkAnm();
        if (mpBrk == NULL) {
            return 0;
        }
        if (!mpBrk->init(mpMorf->getModel()->getModelData(),
                         (J3DAnmTevRegKey*)dComIfG_getObjectRes("E_TM", 0x14),
                         TRUE, 2, 1.0f, 0, -1)) {
            return 0;
        }
    } else {
        J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes("E_YM", 0x13);
        JUT_ASSERT(model_data != NULL, 0x1094);
        mpMorf = new mDoExt_McaMorfSO(model_data, NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_YM", 0x10),
                                      0, 1.0f, 0, -1, &mSound, 0x80000,0x11000084);
        if (mpMorf == NULL || mpMorf->getModel() == NULL) {
            return 0;
        }
        mpBrk = new mDoExt_brkAnm();
        if (mpBrk == NULL) {
            return 0;
        }
        if (!mpBrk->init(mpMorf->getModel()->getModelData(),
                         (J3DAnmTevRegKey*)dComIfG_getObjectRes("E_YM", 0x16),
                         TRUE, 2, 1.0f, 0, -1)) {
            return 0;
        }
    }
    if (mType == 6) {
        field_0x6d0 = new cXyz[0x2d];
    }
    return 1;
}

/* 80813E84-80813EA4 00BE44 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return static_cast<daE_YM_c*>(i_this)->CreateHeap();
}

/* ############################################################################################## */
/* 80815AD8-80815ADC 000144 0004+00 0/2 0/0 0/0 .rodata          @8964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8964 = -200.0f;
COMPILER_STRIP_GATE(0x80815AD8, &lit_8964);
#pragma pop

/* 80815ADC-80815AE0 000148 0004+00 0/1 0/0 0/0 .rodata          @8965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8965 = 80.0f;
COMPILER_STRIP_GATE(0x80815ADC, &lit_8965);
#pragma pop

/* 80813EA4-808143A0 00BE64 04FC+00 2/2 0/0 0/0 .text            checkBeforeBg__8daE_YM_cFs */
u8 daE_YM_c::checkBeforeBg(s16 param_0) {
    // NONMATCHING
}

/* 808143A0-808144D8 00C360 0138+00 1/1 0/0 0/0 .text            checkBeforeGround__8daE_YM_cFv */
u8 daE_YM_c::checkBeforeGround() {
    // NONMATCHING
}

/* 808144D8-80814758 00C498 0280+00 1/1 0/0 0/0 .text            checkInitialWall__8daE_YM_cFv */
void daE_YM_c::checkInitialWall() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80815AE0-80815AE4 00014C 0004+00 0/1 0/0 0/0 .rodata          @9187 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9187 = -50.0f;
COMPILER_STRIP_GATE(0x80815AE0, &lit_9187);
#pragma pop

/* 80814758-80814AF0 00C718 0398+00 3/3 0/0 0/0 .text            checkWall__8daE_YM_cFv */
void daE_YM_c::checkWall() {
    // NONMATCHING
}

/* 80814AF0-80814BA4 00CAB0 00B4+00 1/1 0/0 0/0 .text            setHideType__8daE_YM_cFv */
void daE_YM_c::setHideType() {
    mIsHide = true;
    mSphCc.SetCoSPrm(0x145);
    mSphCc.SetTgType(0x10000);

    m_near_obj = NULL;
    m_obj_dist = 100.0f;

    fpcM_Search(s_obj_sub, this);

    if (m_near_obj != NULL) {
        cXyz obj_pos(m_near_obj->current.pos);

        current.pos.x = obj_pos.x;
        current.pos.z = obj_pos.z;
        field_0x6a6 = 1;
    } else {
        field_0x6a6 = 3;
    }
}

/* 80815AEC-80815AEC 000158 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80815AFE = "E_ym";
#pragma pop

/* 80814BA4-80815224 00CB64 0680+00 2/1 0/0 0/0 .text            create__8daE_YM_cFv */
int daE_YM_c::create() {
    // NONMATCHING - regalloc
    fopAcM_SetupActor(this, daE_YM_c);

    mType = fopAcM_GetParam(this);
    if (mType == 0xFF) {
        mType = 0;
    }

    mSwitchBit = fopAcM_GetParam(this) >> 0x18;

    u8 prm2 = fopAcM_GetParam(this) >> 0x10;
    if (prm2 == 0xFF) {
        prm2 = 0;
    }

    field_0x6e0 = prm2 * 100.0f;

    u8 prm1 = fopAcM_GetParam(this) >> 0x8;
    u8 tmp0 = (current.angle.z >> 8) & 0xff;
    mTagNo = current.angle.z;
    field_0x6a1 = 1;
    if ((current.angle.x & 3) != 0) {
        field_0x6a1 = 0;
    }

    if ((current.angle.x & 12) != 0) {
        field_0x6cb = 1;
    }

    field_0x6a3 = (current.angle.x >> 8) & 0xff;

    if (mSwitchBit != 0xFF && dComIfGs_isSwitch(mSwitchBit, fopAcM_GetRoomNo(this))) {
        return cPhs_ERROR_e;
    }

    if ((mTagNo != 0 && mTagNo != 0xFF) || (mType == 6 || mType == 3 || mType == 7)) {
        mFlyType = true;
    } else {
        mFlyType = false;
    }

    int phase;
    if (mFlyType == true) {
        phase = dComIfG_resLoad(&mPhase, "E_TM");
    } else {
        phase = dComIfG_resLoad(&mPhase, "E_YM");
    }

    if (phase == cPhs_COMPLEATE_e) {
        current.angle.z = 0;
        current.angle.x = 0;
        shape_angle.z = 0;
        shape_angle.x = 0;

        if (!fopAcM_entrySolidHeap(this, (heapCallbackFunc)useHeapInit, 0x28B0)) {
            return cPhs_ERROR_e;
        }

        if (!lbl_253_bss_8) {
            field_0xaf4 = 1;
            lbl_253_bss_8 = 1;
            l_HIO.field_0x4 = -1;
        }

        field_0x714 = 4;
        attention_info.distances[fopAc_attn_BATTLE_e] = 58;
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -200.0f, -100.0f, -200.0f);
        fopAcM_SetMax(this, 200.0f, 100.0f, 200.0f);

        mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, NULL, NULL);
        mAcch.OnLineCheck();
        mAcchCir.SetWall(30.0f, 60.0f);

        health = 10;
        field_0x560 = 10;

        mStts.Init(100, 0, this);
        mSphCc.Set(E_YM_n::cc_sph_src);
        mSphCc.SetStts(&mStts);

        mSound.init(&current.pos, &eyePos, 3, 1);
        mSound.setEnemyName("E_ym");
        mAtInfo.mpSound = &mSound;
        mAtInfo.mPowerType = 1;
        field_0x68c = 0.6f;

        switch (mType) {
        case 0:
            mPrevPos = current.pos;
            setActionMode(ACT_WAIT);
            break;
        case 1:
            checkInitialWall();
            mPrevPos = current.pos;
            setActionMode(ACT_WAIT);
            break;
        case 2:
            setActionMode(ACT_WAIT);
            mMode = 100;
            break;
        case 3:
            setActionMode(ACT_FLY);
            mMode = 2;
            break;
        case 4:
            if (tmp0 != 0xFF) {
                mpPath = dPath_GetRoomPath(tmp0, fopAcM_GetRoomNo(this));

                if (mpPath != NULL) {
                    attention_info.distances[fopAc_attn_ETC_e] = 31;
                    field_0x6a6 = 4;
                    mPrevPos = current.pos;
                    setActionMode(ACT_WAIT);
                    break;
                }
            }

            mType = 0;
            mPrevPos = current.pos;
            setActionMode(ACT_WAIT);
            break;
        case 5:
            if (field_0x6a3 == 0xFF) {
                mType = 0;
                mPrevPos = current.pos;
                setActionMode(ACT_WAIT);
            } else {
                if (tmp0 != 0xFF) {
                    mpPath = dPath_GetRoomPath(tmp0, fopAcM_GetRoomNo(this));
                }

                setActionMode(ACT_SWITCH);
                if (dComIfGs_isSwitch(field_0x6a3, fopAcM_GetRoomNo(this))) {
                    mMode = 10;
                }
            }
            break;
        case 6:
            setActionMode(ACT_FIRE);
            break;
        case 7:
            if (tmp0 != 0xFF) {
                mpPath = dPath_GetRoomPath(tmp0, fopAcM_GetRoomNo(this));
            }

            if (prm1 != 0xFF) {
                field_0x6b0 = dPath_GetRoomPath(prm1, fopAcM_GetRoomNo(this));
            }

            if (mpPath != NULL || field_0x6b0 != NULL) {
                field_0x68c = 1.5f;
                setActionMode(ACT_RIVER);
                break;
            }

            return cPhs_ERROR_e;
        }

        field_0x6cc = 1;
        if (mFlyType == true && mType != 3) {
            field_0x6cc = 0;
        }

        daE_YM_Execute(this);
    }

    return phase;
}

/* 808153F0-80815410 00D3B0 0020+00 1/0 0/0 0/0 .text            daE_YM_Create__FP8daE_YM_c */
static int daE_YM_Create(daE_YM_c* i_this) {
    return i_this->create();
}

/* 80815C48-80815C68 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_YM_Method */
static actor_method_class l_daE_YM_Method = {
    (process_method_func)daE_YM_Create,
    (process_method_func)daE_YM_Delete,
    (process_method_func)daE_YM_Execute,
    (process_method_func)daE_YM_IsDelete,
    (process_method_func)daE_YM_Draw,
};

/* 80815C68-80815C98 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_YM */
extern actor_process_profile_definition g_profile_E_YM = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_YM,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_YM_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  194,                    // mPriority
  &l_daE_YM_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

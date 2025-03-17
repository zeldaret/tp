/**
 * @file d_a_e_pz.cpp
 * 
*/

#include "d/actor/d_a_e_pz.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "d/d_debug_viewer.h"
#include "d/d_s_play.h"
#include "c/c_damagereaction.h"
#include "Z2AudioLib/Z2Instances.h"

UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"

namespace {
/* 807617F4-80761838 000038 0044+00 0/1 0/0 0/0 .data            cc_pz_src__22@unnamed@d_a_e_pz_cpp@
 */
static dCcD_SrcCyl cc_pz_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xD8080002, 0x43}, 0x75}}, // mObj
        {dCcD_SE_13, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x402}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        50.0f, // mRadius
        300.0f // mHeight
    } // mCyl
};

/* 80761838-80761878 00007C 0040+00 0/1 0/0 0/0 .data cc_pz_at_src__22@unnamed@d_a_e_pz_cpp@ */
static dCcD_SrcSph cc_pz_at_src = {
    {
        {0x0, {{0x400, 0x2, 0xD}, {0xD8FBFDFF, 0x43}, 0x0}}, // mObj
        {dCcD_SE_13, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80761878-807618BC 0000BC 0044+00 0/1 0/0 0/0 .data cc_pz_wp_src__22@unnamed@d_a_e_pz_cpp@ */
static dCcD_SrcCyl cc_pz_wp_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x416080, 0x3}, 0x0}}, // mObj
        {dCcD_SE_13, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x20A6}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        50.0f, // mRadius
        300.0f // mHeight
    } // mCyl
};
}

/* 8075856C-807585BC 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__12daE_PZ_HIO_cFv */
daE_PZ_HIO_c::daE_PZ_HIO_c() {
    no = -1;
    body_model_size = 1.0f;
    portal_model_size = 10.0f;
    bullet_speed = 35.0f;
    weapon_hit_warp_speed = 3.0f;
    after_attack_wait_time = 60;
    blur_start_timing = 40;
}

/* 807585BC-807587E0 00013C 0224+00 1/1 0/0 0/0 .text            draw__8daE_PZ_cFv */
int daE_PZ_c::draw() {
    if (field_0x840 != 0) {
        return 1;
    }

    if (arg0 == 10) {
#ifdef DEBUG
        if (WREG_S(0) != 0) {
            GXColor color;
            color.r = 0xFF;
            color.g = 0x82;
            color.b = 0x82;
            color.a = 0xFA;
            dDbVw_drawCircleXlu(home.pos, 100.0f, color, TRUE, 12);
        }
#endif
        return 1;
    }

    if (arg0 == 30 || arg0 == 40) {
        return 1;
    }

    if (arg0 >= 20 && arg0 <= 23) {
        if (field_0x842 != 0) {
            dComIfGd_setListDark();
            mpPortalBtk->entry(mpPortalModel->getModelData());
            mpPortalBrk[field_0x5d8]->entry(mpPortalModel->getModelData());
            mDoExt_modelUpdateDL(mpPortalModel);
            dComIfGd_setList();
        } else {
            mpBallBrk->entry(mpBallModelMorf->getModel()->getModelData());
            mpBallModelMorf->entryDL();
        }
        return 1;
    }

    if (attention_info.distances[fopAc_attn_BATTLE_e] == 0) {
        return 1;
    }

    J3DModel* model_p = mpModelMorf->getModel();

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model_p, &tevStr);

    fopAcM_setEffectMtx(this, model_p->getModelData());
    mpPzBrk->entry(model_p->getModelData());
    mpPzBtk->entry(model_p->getModelData());
    mpModelMorf->entryDL();

    cXyz spC;
    spC.set(current.pos.x, 10.0f + current.pos.y, current.pos.z);
    mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model_p, &spC, 800.0f + BREG_F(18), BREG_F(19), current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 807587E0-80758800 000360 0020+00 1/0 0/0 0/0 .text            daE_PZ_Draw__FP8daE_PZ_c */
static int daE_PZ_Draw(daE_PZ_c* i_this) {
    return i_this->draw();
}

/* 80758800-807588AC 000380 00AC+00 6/6 0/0 0/0 .text            setBck__8daE_PZ_cFiUcff */
void daE_PZ_c::setBck(int i_anm, u8 i_mode, f32 i_morf, f32 i_speed) {
    mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_PZ", i_anm), i_mode, i_morf, i_speed, 0.0f, -1.0f);
    mAnm = i_anm;
}

/* 807588AC-807588B8 00042C 000C+00 7/7 0/0 0/0 .text            setActionMode__8daE_PZ_cFii */
void daE_PZ_c::setActionMode(int i_action, int i_mode) {
    mActionMode = i_action;
    mMoveMode = i_mode;
}

/* 807588B8-80758A94 000438 01DC+00 4/4 0/0 0/0 .text            mEntrySUB__8daE_PZ_cFb */
void daE_PZ_c::mEntrySUB(bool param_0) {
    cXyz eff_pos;
    eff_pos.set(current.pos);
    eff_pos.y += field_0x7c0;

    if (!param_0) {
        if ((arg0 == 0 || arg0 == 1) && field_0x844 == 0) {
            dComIfGp_particle_set(0x88A1, &eff_pos, &shape_angle, NULL);
            field_0x5dc.startCreatureSound(Z2SE_EN_PZ_DISAPPEAR, 0, -1);
            field_0x844 = 1;
        }

        attention_info.distances[fopAc_attn_BATTLE_e] = 0;
        fopAcM_OffStatus(this, 0);
        attention_info.flags &= ~4;
    } else {
        if ((arg0 == 0 || arg0 == 1) && field_0x844 != 0) {
            dComIfGp_particle_set(0x8897, &eff_pos, &shape_angle, NULL);
            field_0x5dc.startCreatureSound(Z2SE_EN_PZ_EMERGE, 0, -1);
            field_0x844 = 0;
        }
    
        attention_info.distances[fopAc_attn_BATTLE_e] = 3;
        fopAcM_OnStatus(this, 0);
        attention_info.flags |= 4;
    }
}

UNK_REL_BSS;

/* 80761DFD 0003+00 l_initHIO None */
static u8 l_initHIO;

/* 80761E0C 001C+01 data_80761E0C l_HIO */
static daE_PZ_HIO_c l_HIO;

/* 80761E29 0003+00 data_80761E29 None */
static u8 data_80761E28;
static u8 data_80761E29;

/* 80758A94-80758BA0 000614 010C+00 3/3 0/0 0/0 .text            mPzScaleSet__8daE_PZ_cFb */
bool daE_PZ_c::mPzScaleSet(bool param_0) {
    if (!param_0) {
        cLib_addCalc2(&mPzScale.x, l_HIO.body_model_size, 0.7f, 1.0f);
        cLib_addCalc2(&mPzScale.y, l_HIO.body_model_size, 0.8f, 2.0f);
        cLib_addCalc2(&mPzScale.z, l_HIO.body_model_size, 0.7f, 1.0f);

        if (fabsf(mPzScale.y - l_HIO.body_model_size) > 0.1f) {
            return false;
        }
    } else {
        cLib_addCalc0(&mPzScale.x, 0.7f, 1.0f);
        cLib_addCalc2(&mPzScale.y, field_0x7cc, 0.8f, 2.0f);
        cLib_addCalc0(&mPzScale.z, 0.7f, 1.0f);

        if (fabsf(mPzScale.y - field_0x7cc) > 0.1f) {
            return false;
        }
    }

    return true;
}

/* 80758BA0-80758D44 000720 01A4+00 1/1 0/0 0/0 .text            mEnemyScaleSet__8daE_PZ_cFv */
void daE_PZ_c::mEnemyScaleSet() {
    if ((field_0x84c >= 7 || health <= 1) && (field_0x7d8 == 2 || health <= 1)) {
        for (int i = 0; i < 25; i++) {
            fopAc_ac_c* spC;
            if (field_0x7dc[i] != 0 && fopAcM_SearchByID(field_0x7dc[i], &spC) && spC != NULL) {
                fopAcM_OnStatus(spC, 0x4000);

                if (field_0x7d8 == 2 && field_0x843 == 0) {
                    Z2GetAudioMgr()->seStart(Z2SE_EN_PZ_DKBB_VANISH, &spC->current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                }

                cLib_addCalc0(&spC->scale.x, 0.7f, 1.0f);
                cLib_addCalc2(&spC->scale.y, 5.0f, 0.8f, 2.0f);
                cLib_addCalc0(&spC->scale.z, 0.7f, 1.0f);
                if (spC->scale.x > 0.2f && field_0x84c < 10) {
                    continue;
                }

                daPy_getPlayerActorClass()->offDkCaught2();
                fopAcM_delete(spC);
            }

            field_0x7dc[i] = 0;
        }

        field_0x843 = 1;
    }
}

/* 80758D44-80758DA4 0008C4 0060+00 2/1 0/0 0/0 .text            getCutType__8daE_PZ_cFv */
u8 daE_PZ_c::getCutType() {
    switch(daPy_getPlayerActorClass()->getCutType()) {
    case daPy_py_c::CUT_TYPE_TURN_RIGHT:
    case daPy_py_c::CUT_TYPE_LARGE_TURN_RIGHT:
        return 5;
    case daPy_py_c::CUT_TYPE_TURN_LEFT:
    case daPy_py_c::CUT_TYPE_LARGE_TURN_LEFT:
        return 6;
    case daPy_py_c::CUT_TYPE_HEAD_JUMP:
    case daPy_py_c::CUT_TYPE_JUMP:
    case daPy_py_c::CUT_TYPE_LARGE_JUMP:
    case daPy_py_c::CUT_TYPE_LARGE_JUMP_FINISH:
    case daPy_py_c::CUT_TYPE_MORTAL_DRAW_A:
    case daPy_py_c::CUT_TYPE_TWIRL:
    case daPy_py_c::CUT_TYPE_MORTAL_DRAW_B:
    case daPy_py_c::CUT_TYPE_FINISH_STAB:
        return 4;
    case daPy_py_c::CUT_TYPE_NM_VERTICAL:
    case daPy_py_c::CUT_TYPE_NM_STAB:
    case daPy_py_c::CUT_TYPE_NM_RIGHT:
    case daPy_py_c::CUT_TYPE_FINISH_VERTICAL:
    case daPy_py_c::CUT_TYPE_DASH_UNK_26:
        return 1;
    case daPy_py_c::CUT_TYPE_NM_LEFT:
    case daPy_py_c::CUT_TYPE_FINISH_LEFT:
    case daPy_py_c::CUT_TYPE_COMBO_STAB:
    case daPy_py_c::CUT_TYPE_HORSE_UNK_22:
    case daPy_py_c::CUT_TYPE_HORSE_UNK_23:
    case daPy_py_c::CUT_TYPE_DASH_UNK_25:
        return 2;
    default:
        return 3;
    }
}

/* 80758DA4-80758E04 000924 0060+00 1/1 0/0 0/0 .text            mSetFirePos__8daE_PZ_cFv */
void daE_PZ_c::mSetFirePos() {
    fopAc_ac_c* parent;
    if (fopAcM_SearchByID(parentActorID, &parent) && parent != NULL) {
        parent->current.pos.set(field_0x7a8);
    }
}

/* 80758E04-8075923C 000984 0438+00 1/1 0/0 0/0 .text            damage_check__8daE_PZ_cFv */
void daE_PZ_c::damage_check() {
    if (field_0x7d1 != 0 || mAnm == 0x13 || mPzScale.y != l_HIO.body_model_size || health <= 1) {
        mBombArrowHit = false;
        return;
    }

    daPy_getPlayerActorClass()->onBossRoomWait();

    cXyz bind_eff_pos;
    mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(1));
    mDoMtx_stack_c::multVecZero(&bind_eff_pos);
    scale.set(l_HIO.body_model_size, l_HIO.body_model_size, l_HIO.body_model_size);
    setMidnaBindEffect(this, &field_0x5dc, &bind_eff_pos, &scale);

    if (mWarpCylCollider.ChkTgHit() || mBombArrowHit) {
        mWarpCylCollider.ClrTgHit();
        field_0x7d1 = 10;
        field_0x7d3 = 0;
        setBck(0x13, 0, 0.0f, l_HIO.weapon_hit_warp_speed);
        mBombArrowHit = false;
        mColliderStts.Move();
        setActionMode(ACTION_WAIT_e, 11);
        return;
    }

    if (mCylCollider.ChkTgHit()) {
        mAtInfo.mpCollider = mCylCollider.GetTgHitObj();
        if (mActionMode != ACTION_DAMAGE_e) {
            field_0x790.set(current.pos);
        }

        cc_at_check(this, &mAtInfo);
        field_0x7d1 = 10;

        if (health > 1) {
            if (mCylCollider.GetTgHitObj()->ChkAtType(AT_TYPE_ARROW) || mCylCollider.GetTgHitObj()->ChkAtType(AT_TYPE_BOMB) || mCylCollider.GetTgHitObj()->ChkAtType(AT_TYPE_BOOMERANG) || mCylCollider.GetTgHitObj()->ChkAtType(AT_TYPE_HOOKSHOT)) {
                field_0x848 = 0;
                field_0x7d1 = 35;
                field_0x847 = 4;
                setActionMode(ACTION_DAMAGE_e, 0);
            } else {
                field_0x847++;
                if (getCutType() == 4 || mCylCollider.GetTgHitObj()->ChkAtType(AT_TYPE_WOLF_CUT_TURN) || mCylCollider.GetTgHitObj()->ChkAtType(AT_TYPE_MIDNA_LOCK)) {
                    field_0x7d1 = 4;
                    field_0x847 = 4;
                    field_0x848 = 0;
                } else if (field_0x848 == 0) {
                    field_0x848 = getCutType();
                    if (field_0x848 == 3) {
                        field_0x848 = ((int)cM_rndF(2.0f) & 1) + 2;
                    }

                    if (field_0x848 == 5 || field_0x848 == 6) {
                        field_0x7d1 = 4;
                        field_0x847 = 4;
                        field_0x848 = ((int)cM_rndF(2.0f) & 1) + 2;
                    }

                    if (field_0x848 == 1) {
                        field_0x848 = 2;
                    } else {
                        field_0x848 = 3;
                    }
                } else {
                    field_0x848 ^= 1;
                }

                setActionMode(ACTION_DAMAGE_e, field_0x848);
            }
        } else {
            health = 0;

            for (int i = 0; i < 25; i++) {
                fopAc_ac_c* sp8;
                if (field_0x7dc[i] != 0 && fopAcM_SearchByID(field_0x7dc[i], &sp8) && sp8 != NULL) {
                    fopAcM_OnStatus(sp8, 0x4000);
                }
            }

            Z2GetAudioMgr()->subBgmStop();

            if (arg0 == 0) {
                setActionMode(ACTION_DEAD_e, 0);
            } else {
                setActionMode(ACTION_DEAD_e, 10);
            }
        }
    }


    mCylCollider.ClrTgHit();
    mColliderStts.Move();
}

/* 8075923C-807592F4 000DBC 00B8+00 1/1 0/0 0/0 .text            s_PointSearch__FPvPv */
static void* s_PointSearch(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_PZ && ((daE_PZ_c*)i_actor)->arg0 == 10) {
        ((daE_PZ_c*)i_data)->mPointPos[((daE_PZ_c*)i_data)->mPointNum].set(((daE_PZ_c*)i_actor)->current.pos);
        ((daE_PZ_c*)i_data)->field_0x780[((daE_PZ_c*)i_data)->mPointNum] = (fopAcM_GetParam(i_actor) & 0xFF00) >> 8;

        ((daE_PZ_c*)i_data)->mPointNum++;
        if (((daE_PZ_c*)i_data)->mPointNum >= 10) {
            ((daE_PZ_c*)i_data)->mPointNum = 0;
        }
    }

    return NULL;
}

/* 807592F4-807593CC 000E74 00D8+00 1/1 0/0 0/0 .text            executeSearchPoint__8daE_PZ_cFv */
void daE_PZ_c::executeSearchPoint() {
    if (field_0x7d3 == 0) {
        Z2GetAudioMgr()->subBgmStart(Z2BGM_P_ZANT);
        mPointNum = 0;
        fpcM_Search(s_PointSearch, this);

        mCurrentPoint = cM_rndF(mPointNum);
        if (mCurrentPoint >= mPointNum) {
            mCurrentPoint = mPointNum - 1;
        } else if (mCurrentPoint == 0) {
            mCurrentPoint = 1;
        }

        setActionMode(ACTION_WAIT_e, 0);
    }
}

/* 807593CC-8075B7CC 000F4C 2400+00 2/1 0/0 0/0 .text            executeOpeningDemo__8daE_PZ_cFv */
// NONMATCHING - fopAcM_GetID not getting inlined, equivalent
void daE_PZ_c::executeOpeningDemo() {
    static cXyz mPzCenterInit_dt[] = {
        cXyz(-50.0f, 10.0f, -3150.0f),
        cXyz(-50.0f, 100.0f, -3140.0f),
        cXyz(105.0f, 70.0f, -2950.0f),
        cXyz(-65.0f, 270.0f, -3200.0f),
        cXyz(-95.0f, 180.0f, -3100.0f),
        cXyz(-20.0f, 30.0f, -1590.0f),
        cXyz(-110.0f, 170.0f, -940.0f),
        cXyz(-60.0f, 560.0f, -1420.0f),
        cXyz(-157.0f, 128.0f, -3260.0f),
        cXyz(0.0f, 0.0f, 0.0f),
        cXyz(0.0f, 150.0f, -3050.0f),
        cXyz(105.0f, 70.0f, -2950.0f),
        cXyz(0.0f, 125.0f, -2710.0f),
        cXyz(0.0f, 380.0f, -2515.0f),
        cXyz(0.0f, 300.0f, -2960.0f),
        cXyz(-15.0f, 200.0f, -3160.0f),
        cXyz(-10.0f, 120.0f, -3010.0f),
        cXyz(0.0f, 150.0f, -1120.0f),
    };

    static cXyz mPzEyeInit_dt[] = {
        cXyz(-210.0f, 40.0f, -2790.0f),
        cXyz(-210.0f, 40.0f, -2790.0f),
        cXyz(185.0f, 100.0f, -3330.0f),
        cXyz(310.0f, 85.0f, -2745.0f),
        cXyz(110.0f, 705.0f, -3650.0f),
        cXyz(0.0f, 220.0f, -1930.0f),
        cXyz(-130.0f, -10.0f, -600.0f),
        cXyz(-85.0f, 320.0f, -1120.0f),
        cXyz(295.0f, 85.0f, -2790.0f),
        cXyz(0.0f, 0.0f, 0.0f),
        cXyz(0.0f, 210.0f, -2670.0f),
        cXyz(185.0f, 100.0f, -3330.0f),
        cXyz(-5.0f, 170.0f, -2325.0f),
        cXyz(0.0f, 145.0f, -2200.0f),
        cXyz(75.0f, 85.0f, -3270.0f),
        cXyz(-205.0f, 5.0f, -3430.0f),
        cXyz(20.0f, 130.0f, -2630.0f),
        cXyz(15.0f, 285.0f, -760.0f),
    };

    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera_class* camera0 = dComIfGp_getCamera(0);
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    cXyz sp120;
    cXyz sp114;
    cXyz sp108;
    cXyz spFC;

    fopAc_ac_c* parent;
    int sp28 = 22;

    switch (mMoveMode) {
    case 0:
    case 100:
        if (player->current.pos.z > -1500.0f) {
            break;
        }
        mMoveMode++;
    case 1:
    case 101:
        if (!eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xFFFF, 0);
            eventInfo.i_onCondition(2);
            mDemoCameraEye = camera0->lookat.eye;
            mDemoCameraCenter = camera0->lookat.center;
            break;
        }

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        daPy_getPlayerActorClass()->changeOriginalDemo();
        daPy_getPlayerActorClass()->changeDemoMode(4, 2, 0, 0);

        if (mMoveMode == 1) {
            sp120.set(0.0f, player->current.pos.y, -2800.0f);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp120, -0x8000, 0);
            Z2GetAudioMgr()->bgmStreamPrepare(0x2000041);
            mDemoCameraCenter.set(mPzCenterInit_dt[0]);
            mDemoCameraEye.set(mPzEyeInit_dt[0]);
        } else {
            sp120.set(0.0f, player->current.pos.y, -2500.0f);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp120, -0x8000, 0);
            Z2GetAudioMgr()->bgmStreamPrepare(0x2000042);
            mDemoCameraCenter.set(mPzCenterInit_dt[10]);
            mDemoCameraEye.set(mPzEyeInit_dt[10]);
        }

        Z2GetAudioMgr()->bgmStreamPlay();
        field_0x7d0 = 2;
        setBck(8, 0, 3.0f, -1.0f);
        mpModelMorf->setFrame(0.0f);
        dComIfGp_getEvent().startCheckSkipEdge(this);
        dComIfGs_onSaveDunSwitch(41);
        mMoveMode++;
        break;
    case 2:
        if (field_0x7d0 != 0) {
            sp120.set(0.0f, player->current.pos.y, -2500.0f);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp120, -0x8000, 0);
            daPy_getPlayerActorClass()->changeDemoMode(2, 0, 0, 0);
            break;
        }

        current.pos.set(-100.0f, 0.0f, -3300.0f);
        current.angle.y = fopAcM_searchPlayerAngleY(this);
        field_0x7d0 = 150;
        mMoveMode++;
    case 3:
        sp120.set(0.0f, player->current.pos.y, -3000.0f);
        player->changeDemoPos0(&sp120);

        sp120.set(mPzCenterInit_dt[1]);
        cLib_addCalcPos(&mDemoCameraCenter, sp120, 0.7f, 2.0f, 0.5f);
        sp114.set(mPzEyeInit_dt[1]);
        cLib_addCalcPos(&mDemoCameraEye, sp114, 0.7f, 2.0f, 0.5f);

        sp108 = mDemoCameraCenter - sp120;
        spFC = mDemoCameraEye - sp114;
        if (field_0x7d0 != 0 || sp108.abs() > 2.0f || spFC.abs() > 2.0f) {
            break;
        }

        field_0x7d0 = 100;
        mMoveMode++;
    case 4:
        fopAcM_onSwitch(this, 25);
        field_0x7d0 = 80;
        mMoveMode++;
        break;
    case 5:
        if (field_0x7d0 != 0) {
            if (field_0x7d0 == 60) {
                daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 0, 0);
            }
            break;
        }

        field_0x7d0 = 60;
        mMoveMode++;
        break;
    case 6:
        fopAcM_onSwitch(this, 26);
        if (field_0x7d0 != 0) {
            mDemoCameraCenter.set(mPzCenterInit_dt[2]);
            mDemoCameraEye.set(mPzEyeInit_dt[2]);

            if (field_0x7d0 == 30) {
                daPy_getPlayerActorClass()->changeDemoMode(0x19, 0, 0, 0);
            }
            break;
        }

        mDemoCameraCenter.set(mPzCenterInit_dt[8]);
        mDemoCameraEye.set(mPzEyeInit_dt[8]);
        field_0x7d0 = 10;
        mMoveMode = 10;
        break;
    case 10:
        if (field_0x7d0 != 0) {
            fopAcM_OffStatus(this, 0);
            break;
        }

        field_0x844 = 1;
        mEntrySUB(true);
        setBck(8, 0, 0.0f, 1.0f);
        mPzScale.set(0.0f, field_0x7cc, 0.0f);
        field_0x7d0 = 8;
        mMoveMode++;
        break;
    case 11:
        mPzScaleSet(0);
        current.angle.y = fopAcM_searchPlayerAngleY(this);

        if (field_0x7d0 == 1) {
            if (!daPy_py_c::i_checkNowWolf()) {
                daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 2, 0);
            } else {
                daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 0, 0);
            }
        }

        if (mpModelMorf->isStop() && mAnm != 0x15) {
            setBck(0x15, 2, 3.0f, 1.0f);
            field_0x7d0 = 40;
            mMoveMode++;
        }
        break;
    case 12:
    case 120:
        if (field_0x7d0 == 0) {
            setBck(0xB, 0, 3.0f, 1.0f);
            field_0x5dc.startCreatureVoice(Z2SE_EN_PZ_V_ATK_RDY, -1);
            mMoveMode++;
        }
        break;
    case 13:
        if ((int)mpModelMorf->getFrame() > 27) {
            cLib_addCalcPos(&mDemoCameraCenter, mPzCenterInit_dt[3], 0.5f, 5.0f, 0.5f);
            cLib_addCalcPos(&mDemoCameraEye, mPzEyeInit_dt[3], 0.5f, 5.0f, 0.5f);
        }

        if (mAnm == 0xB && !mpModelMorf->isStop()) {
            field_0x7d0 = 30;
            break;
        }
    case 121:
        cLib_addCalcPos(&mDemoCameraCenter, mPzCenterInit_dt[3], 0.5f, 10.0f, 0.5f);
        mSetFirePos();

        if (mAnm != 0xD) {
            setBck(0xD, 2, 3.0f, 1.0f);
            parentActorID = fopAcM_createChild(PROC_E_PZ, fopAcM_GetID(this), sp28 + arg0, &field_0x7a8, fopAcM_GetRoomNo(this), &shape_angle, NULL, -1, NULL);
        }

        field_0x7d8 = 0;
        data_80761E29 = 0;

        if (field_0x7d0 == 0) {
            field_0x7d0 = 120;
            if (mMoveMode == 13) {
                mMoveMode++;
            } else {
                setBck(0xC, 0, 10.0f, 1.0f);
                mMoveMode = 123;
            }
        }
        break;
    case 14:
    case 122:
        cLib_addCalcPos(&mDemoCameraCenter, mPzCenterInit_dt[3], 0.5f, 10.0f, 0.5f);
        mSetFirePos();
        cLib_addCalcPos(&mDemoCameraEye, mPzEyeInit_dt[4], 0.1f + NREG_F(0), 10.0f + NREG_F(1), 1.0f + NREG_F(2));

        if (field_0x7d0 == 0) {
            daPy_getPlayerActorClass()->changeDemoMode(0x10, 0, 0, 0);
            setBck(0xC, 0, 10.0f, 1.0f);
            mMoveMode++;
        }
        break;
    case 15:
    case 123:
        if ((mAnm == 0xC && (int)mpModelMorf->getFrame() == 34) || (mAnm == 9 && (int)mpModelMorf->getFrame() == 20)) {
            field_0x5dc.startCreatureVoice(Z2SE_EN_PZ_V_ATK_TRW_1ST, -1);
        }

        if (fopAcM_SearchByID(parentActorID, &parent) && parent != NULL) {
            if ((int)mpModelMorf->getFrame() < 36) {
                parent->current.pos.set(field_0x7a8);
                break;
            }

            if ((int)mpModelMorf->getFrame() == 36) {
                ((daE_PZ_c*)parent)->mMoveMode = 20;
                dComIfGp_particle_set(0x889D, &parent->current.pos, &shape_angle, NULL);

                if (!daPy_py_c::i_checkNowWolf()) {
                    daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 2, 0);
                } else {
                    daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 0, 0);
                }
                mMoveMode++;
            }
            break;
        }

        mMoveMode++;
        break;
    case 16:
    case 124:
        if (mpModelMorf->isStop()) {
            break;
        }

        setBck(0x15, 2, 3.0f, 1.0f);
        daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 0, 0);

        if (fopAcM_SearchByID(parentActorID, &parent) && parent != NULL) {
            ((daE_PZ_c*)parent)->mMoveMode = 21;
        }

        field_0x7d0 = XREG_S(0) + 120;
        mMoveMode++;
    case 17:
    case 125:
        field_0x841 = 1;

        eyePos.y += 1000.0f;
        attention_info.position = eyePos;
        attention_info.position.y += 140.0f;

        sp120.set(0.0f, player->current.pos.y, -1300.0f);
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp120, -0x8000, 0);

        mDemoCameraCenter.set(mPzCenterInit_dt[6]);
        mDemoCameraEye.set(mPzEyeInit_dt[6]);

        if (field_0x7d0 == 0) {
            field_0x7d0 = 40;
            if (mMoveMode == 17) {
                mMoveMode = 30;
            } else {
                mMoveMode = 130;
            }

            dComIfGp_getEvent().reset(this);
            fopAcM_orderPotentialEvent(this, 2, 0xFFFF, 3);
        }
        break;
    case 130:
        field_0x7d8 = 2;
        data_80761E29 = 2;
        data_80761E28 = 0;
    case 30:
        if (!eventInfo.i_checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xFFFF, 3);
            break;
        }

        daPy_getPlayerActorClass()->changeOriginalDemo();
        sp120.set(0.0f, player->current.pos.y, -1300.0f);
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp120, -0x8000, 0);

        if (!daPy_py_c::i_checkNowWolf()) {
            daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 2, 0);
        } else {
            daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 0, 0);
        }

        sp120.set(mPzCenterInit_dt[7]);
        sp108 = mDemoCameraCenter - sp120;
        cLib_addCalcPos(&mDemoCameraCenter, sp120, 0.7f, sp108.abs() / 20.0f, 1.0f);

        sp114.set(mPzEyeInit_dt[7]);
        spFC = mDemoCameraEye - sp114;
        cLib_addCalcPos(&mDemoCameraEye, sp114, 0.7f, spFC.abs() / 20.0f, 1.0f);

        if (field_0x7d0 == 0) {
            if (fopAcM_SearchByID(parentActorID, &parent) && parent != NULL) {
                ((daE_PZ_c*)parent)->mMoveMode = 30;
            }

            field_0x7d7 = 0;
            if (mMoveMode == 30) {
                field_0x7d0 = 80;
            } else {
                field_0x7d0 = 60;
            }
            mMoveMode++;
        }
        break;
    case 31:
    case 131:
        if (mMoveMode == 31) {
            if (!daPy_py_c::i_checkNowWolf()) {
                sp120.set(-70.0f, 250.0f + XREG_F(1), -950.0f + XREG_F(2));
            } else {
                sp120.set(-70.0f, 200.0f + XREG_F(3), -700.0f + XREG_F(4));
            }
        } else {
            sp120.set(0.0f, 0.0f, -1500.0f);
        }
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp120, -0x8000, 0);

        for (int i = 0; i < 25; i++) {
            if (field_0x7dc[i] != 0 && fopAcM_SearchByID(field_0x7dc[i], &parent) && parent != NULL) {
                fopAcM_OnStatus(parent, 0x4000);
            }
        }

        if (field_0x7d0 == 0) {
            field_0x7d7 = 0;
            field_0x7d0 = 30;
            if (mMoveMode == 31) {
                field_0x7d0 = 50;
            }
            mMoveMode++;
        }
        break;
    case 132:
        field_0x844 = 0;
        mEntrySUB(false);
        mPzScale.zero();
        field_0x7d7 = 1;
        mMoveMode = 32;
        break;
    case 32:
        if (field_0x7d0 != 0) {
            if (field_0x7d7 == 0) {
                if (field_0x7d0 >= 30) {
                    if (arg0 == 0) {
                        if (!daPy_py_c::i_checkNowWolf()) {
                            sp120.set(0.0f, 0.0f, -800.0f);
                        } else {
                            sp120.set(0.0f, 0.0f, -700.0f);
                        }
                    } else {
                        sp120.set(0.0f, 0.0f, -1500.0f);
                    }
    
                    daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp120, -0x8000, 0);
                } else {
                    mDemoCameraCenter.set(mPzCenterInit_dt[6]);
                    mDemoCameraEye.set(mPzEyeInit_dt[6]);
                    camera->mCamera.Set(mDemoCameraCenter, mDemoCameraEye);
                }            
            }
            break;
        }

        for (int i = 0; i < 25; i++) {
            if (field_0x7dc[i] != 0 && fopAcM_SearchByID(field_0x7dc[i], &parent) && parent != NULL) {
                fopAcM_OnStatus(parent, 0x4000);
            }
        }

        if (field_0x7d7 != 0) {
            if (field_0x7d7 == 1) {
                data_80761E28 = 1;

                mDemoCameraCenter.set(mPzCenterInit_dt[17]);
                mDemoCameraEye.set(mPzEyeInit_dt[17]);
                camera->mCamera.Set(mDemoCameraCenter, mDemoCameraEye);
                field_0x7d7++;
                break;
            }

            field_0x7d7++;
            if (field_0x7d7 == 80) {
                field_0x7d7 = 0;
            }

            break;
        }

        for (int i = 0; i < 25; i++) {
            if (field_0x7dc[i] != 0 && fopAcM_SearchByID(field_0x7dc[i], &parent) && parent != NULL) {
                fopAcM_OffStatus(parent, 0x4000);
            }
        }

        if (mMoveMode == 32 && arg0 == 0) {
            sp120.set(0.0f, 0.0f, -300.0f);
        } else {
            sp120.set(0.0f, 0.0f, -1500.0f);
        }
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp120, -0x8000, 0);

        if (mMoveMode == 32 && arg0 == 0) {
            sp120.set(0.0f, 0.0f, -100.0f);
        } else {
            sp120.set(0.0f, 0.0f, -1200.0f);
        }

        camera->mCamera.Reset(sp120, sp120);
        camera->mCamera.Start();
        camera->mCamera.SetTrimSize(0);
        dComIfGp_event_reset();

        if (fopAcM_SearchByID(parentActorID, &parent) && parent != NULL) {
            ((daE_PZ_c*)parent)->mMoveMode = 32;
        }

        field_0x7d7 = 0;
        field_0x7bc = 40.0f;

        if (arg0 == 0) {
            field_0x844 = 0;
            mEntrySUB(false);
        }

        field_0x841 = 0;
        setActionMode(ACTION_SEARCH_POINT_e, 0);
        return;
    case 102:
        if (field_0x7d0 != 0) {
            sp120.set(0.0f, player->current.pos.y, -2600.0f);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp120, -0x8000, 0);
            daPy_getPlayerActorClass()->changeDemoMode(1, 1, 0, 0);
            break;
        }
        field_0x7d0 = 60;
        mMoveMode++;
    case 103:
        daPy_getPlayerActorClass()->changeDemoMode(2, 0, 0, 0);
        sp120.set(0.0f, player->current.pos.y, -3000.0f);
        player->changeDemoPos0(&sp120);

        if (field_0x7d0 != 0) {
            break;
        }

        field_0x7d0 = 60;
        mMoveMode++;
    case 104:
        fopAcM_onSwitch(this, 28);

        mDemoCameraCenter.set(mPzCenterInit_dt[11]);
        mDemoCameraEye.set(mPzEyeInit_dt[11]);

        if (field_0x7d0 != 0) {
            if (field_0x7d0 != 40) {
                break;
            }
            daPy_getPlayerActorClass()->changeDemoMode(0x19, 0, 0, 0);
            break;
        }

        mDemoCameraCenter.set(mPzCenterInit_dt[10]);
        mDemoCameraEye.set(mPzEyeInit_dt[10]);
        daPy_getPlayerActorClass()->changeDemoMode(0x14, 0, 0, 0);

        field_0x7d0 = 40;
        mMoveMode++;
    case 105:
        if (field_0x7d0 != 0) {
            break;
        }
        field_0x7d0 = 20;
        mMoveMode++;
    case 106:
        sp120.set(mPzCenterInit_dt[12]);
        sp108 = mDemoCameraCenter - sp120;
        cLib_addCalcPos(&mDemoCameraCenter, sp120, 0.7f, sp108.abs() / 10.0f, 1.0f);

        sp114.set(mPzEyeInit_dt[12]);
        spFC = mDemoCameraEye - sp114;
        cLib_addCalcPos(&mDemoCameraEye, sp114, 0.7f, spFC.abs() / 10.0f, 1.0f);

        if (field_0x7d0 != 0 || sp108.abs() > 2.0f || spFC.abs() > 2.0f) {
            break;
        }

        current.pos.set(0.0f, -60.0f, -2600.0f);
        current.angle.y = fopAcM_searchPlayerAngleY(this);
        mPzScale.set(l_HIO.body_model_size, l_HIO.body_model_size, l_HIO.body_model_size);

        field_0x844 = 1;
        mEntrySUB(true);
        setBck(0x15, 2, 3.0f, 1.0f);
        mpModelMorf->setFrame(0.0f);
        mPzScale.set(0.0f, field_0x7cc, 0.0f);

        sp108.set(current.pos);
        sp108.y += field_0x7c0;
        dComIfGp_particle_set(0x8897, &sp108, &shape_angle, NULL);

        field_0x7d0 = 10;
        mMoveMode++;
    case 107:
        mPzScaleSet(0);
        if (field_0x7d0 != 0) {
            break;
        }
        field_0x7d0 = 10;
        mMoveMode++;
    case 108:
        if (field_0x7d0 != 0) {
            break;
        }
        field_0x7d0 = 120;
        mMoveMode++;
    case 109:
        if (mAnm == 0xB && mpModelMorf->isStop()) {
            setBck(0xD, 2, 3.0f, 1.0f);
            parentActorID = fopAcM_createChild(PROC_E_PZ, fopAcM_GetID(this), sp28 + arg0, &field_0x7a8, fopAcM_GetRoomNo(this), &shape_angle, NULL, -1, NULL);

            field_0x7d8 = 2;
            data_80761E29 = 2;
        }

        if (mAnm != 0xB && mAnm != 0xD) {
            setBck(0xB, 0, 3.0f, 1.0f);
            field_0x5dc.startCreatureVoice(Z2SE_EN_PZ_V_ATK_RDY, -1);
        }

        sp120.set(0.0f, 0.0f, -2600.0f);
        cLib_addCalcPos(&current.pos, sp120, 0.7f, 3.0f, 1.0f);

        sp120.set(mPzCenterInit_dt[13]);
        cLib_addCalcPos(&mDemoCameraCenter, sp120, 0.7f, 6.0f, 2.0f);

        sp114.set(mPzEyeInit_dt[13]);
        cLib_addCalcPos(&mDemoCameraEye, sp114, 0.7f, 6.0f, 2.0f);

        sp108 = mDemoCameraCenter - sp120;
        spFC = mDemoCameraEye - sp114;
        mSetFirePos();

        if (field_0x7d0 != 0 || sp108.abs() > 2.0f) {
            break;
        }
    
        if (spFC.abs() > 2.0f || field_0x7d8 != 2) {
            break;
        }

        if (!daPy_py_c::i_checkNowWolf()) {
            current.pos.set(0.0f, 0.0f, -2850.0f);
        } else {
            current.pos.set(0.0f, 0.0f, -3000.0f);
        }

        mSetFirePos();
        daPy_getPlayerActorClass()->changeDemoMode(1, 1, 0, 0);

        field_0x7d0 = 40;
        mMoveMode++;
        break;
    case 110:
        mSetFirePos();

        if (!daPy_py_c::i_checkNowWolf()) {
            mDemoCameraCenter.set(mPzCenterInit_dt[14]);
            mDemoCameraEye.set(mPzEyeInit_dt[14]);
        } else {
            mDemoCameraCenter.set(mPzCenterInit_dt[15]);
            mDemoCameraEye.set(mPzEyeInit_dt[15]);
        }

        if (field_0x7d0 == 0) {
            daPy_getPlayerActorClass()->changeDemoMode(5, 0, 0, 0);
            daPy_getPlayerActorClass()->changeDemoMoveAngle(0);

            field_0x7d7 = 0;
            field_0x7d0 = 7;
            mMoveMode++;
        }
        break;
    case 111:
        if (field_0x7d0 != 0) {
            if (field_0x7d0 == 1) {
                if (!daPy_py_c::i_checkNowWolf()) {
                    daPy_getPlayerActorClass()->changeDemoMode(0xC, 1, 1, 0);
                } else {
                    daPy_getPlayerActorClass()->changeDemoMode(0x2B, 0, 0, 0);
                    field_0x7d7 = 10;
                }
            }

            mSetFirePos();
            break;
        }

        if (field_0x7d7 < 10 && !daPy_py_c::i_checkNowWolf()) {
            field_0x7d7++;
            if (field_0x7d7 == 10) {
                daPy_getPlayerActorClass()->changeDemoMode(0x24, 0x16, 0, 0);
            }

            mSetFirePos();
            break;
        }
    
        field_0x7d7++;
        if (field_0x7d7 < 20) {
            mSetFirePos();
            break;
        }
    
        mDemoCameraCenter.set(mPzCenterInit_dt[16]);
        mDemoCameraEye.set(mPzEyeInit_dt[16]);

        if (mPzScaleSet(1)) {
            current.pos.set(-100.0f, 0.0f, -3300.0f);
            current.angle.y = fopAcM_searchPlayerAngleY(this);
            sp120.set(0.0f, player->current.pos.y, -3000.0f);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp120, 0, 0);
            field_0x844 = 0;
            mEntrySUB(false);
            current.angle.y = fopAcM_searchPlayerAngleY(this);

            field_0x7d0 = 10;
            mMoveMode++;
        }
        break;
    case 112:
        if (field_0x7d0 != 0) {
            break;
        }

        field_0x844 = 1;
        mEntrySUB(true);
        setBck(8, 0, 0.0f, 1.0f);
        mPzScale.set(0.0f, field_0x7cc, 0.0f);
        field_0x7d0 = 40;
        mMoveMode++;
    case 113:
        if (mpModelMorf->isStop() && mAnm != 0x15) {
            setBck(0x15, 2, 3.0f, 1.0f);
        }

        mPzScaleSet(0);

        if (field_0x7d0 != 0) {
            if (field_0x7d0 == 20) {
                daPy_getPlayerActorClass()->changeDemoMode(0x19, 0, 0, 0);
            }
            break;
        }
    
        daPy_getPlayerActorClass()->changeDemoMode(5, 0, 0, 0);
        daPy_getPlayerActorClass()->changeDemoMoveAngle(-0x8000);

        field_0x7d0 = 10;
        mMoveMode++;
        break;
    case 114:
        if (field_0x7d0 == 0) {
            if (!daPy_py_c::i_checkNowWolf()) {
                daPy_getPlayerActorClass()->changeDemoMode(0x22, 1, 0, 0);
            } else {
                daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 0, 0);
            }
    
            mDemoCameraCenter.set(mPzCenterInit_dt[3]);
            mDemoCameraEye.set(mPzEyeInit_dt[4]);

            parentActorID = fopAcM_createChild(PROC_E_PZ, fopAcM_GetID(this), sp28 + arg0, &field_0x7a8, fopAcM_GetRoomNo(this), &shape_angle, NULL, -1, NULL);

            setBck(0xC, 0, 10.0f, 1.0f);
            daPy_getPlayerActorClass()->changeDemoMode(0x10, 0, 0, 0);
            mMoveMode = 123;
        }
    }

    if (mMoveMode >= 2 && mMoveMode != 100 && mMoveMode != 101 && mMoveMode != 32) {
        camera->mCamera.Set(mDemoCameraCenter, mDemoCameraEye);
    }

    if (((mMoveMode >= 2 && mMoveMode <= 17) || (mMoveMode >= 102 && mMoveMode <= 125)) && dComIfGp_getEvent().checkSkipEdge()) {
        cDmr_SkipInfo = 1;
        dStage_changeScene(1, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
        Z2GetAudioMgr()->bgmStreamStop(0x1E);
    }
}

/* 8075B7E0-8075B970 003360 0190+00 1/1 0/0 0/0 .text            mPointerSet__8daE_PZ_cFv */
void daE_PZ_c::mPointerSet() {
    u8 var_r30 = cM_rndF(mPointNum);

    for (int i = 0; mCurrentPoint == var_r30 && i < 100; i++) {
        var_r30 = cM_rndF(mPointNum);
    }

    if (mCurrentPoint == var_r30) {
        var_r30 = 0;
    }

    mCurrentPoint = var_r30;

    if (field_0x846 == 0) {
        if ((arg0 == 0 && field_0x780[mCurrentPoint] == 0) || (arg0 != 0 && field_0x780[mCurrentPoint] == 9)) {
            var_r30 = cM_rndF(mPointNum);
            if (mCurrentPoint != var_r30) {
                mCurrentPoint = var_r30;
            } else {
                mCurrentPoint++;
            }
        }
        field_0x846 = 1;
    }

    if (mCurrentPoint >= mPointNum) {
        mCurrentPoint = mPointNum - 1;
    }
}

/* 8075B970-8075C6AC 0034F0 0D3C+00 2/1 0/0 0/0 .text            executeWait__8daE_PZ_cFv */
void daE_PZ_c::executeWait() {
    daPy_py_c* sp18 = (daPy_py_c*)dComIfGp_getPlayer(0);
    fopAc_ac_c* sp14 = NULL;

    cXyz sp88;
    cXyz sp7C;
    cXyz sp70;
    cXyz sp64;

    int var_r29;
    int var_r28;

    if (field_0x7d3 == 0) {
        switch (mMoveMode) {
        case 0:
            field_0x847 = 0;
            field_0x848 = 0;
            mPointerSet();
            current.pos.set(mPointPos[mCurrentPoint]);
            mEntrySUB(true);
            setBck(8, 0, 3.0f, -1.0f);
            mPzScale.set(0.0f, field_0x7cc, 0.0f);
            mpModelMorf->setFrame(0.0f);
            mMoveMode++;
            break;
        case 21:
            current.angle.y = fopAcM_searchPlayerAngleY(this);
            mEntrySUB(true);
        case 1:
            mCylCollider.OnTgSetBit();
            if (mPzScaleSet(0)) {
                var_r29 = 0;
                var_r28 = 0;

                for (int i = var_r28; var_r29 < 25; var_r29++) {
                    if (field_0x7dc[var_r29] == 0) {
                        var_r28++;
                    } else if (!fopAcM_SearchByID(field_0x7dc[var_r29], &sp14) || sp14 == NULL) {
                        field_0x7dc[var_r29] = 0;
                        var_r28++;
                    }
                }

                if (var_r28 == var_r29) {
                    field_0x84c = 0;
                    field_0x843 = 0;
                } else {
                    field_0x84c++;
                    if (field_0x84c > 10) {
                        field_0x84c = 10;
                    }
                }

                mCylCollider.OnCoSetBit();
                setBck(8, 0, 0.0f, 1.0f);
                mPzScale.set(l_HIO.body_model_size, l_HIO.body_model_size, l_HIO.body_model_size);
                mMoveMode++;
            }
            break;
        case 2:
            if (sp18->checkWolfLock(this)) {
                field_0x7d3 = l_HIO.after_attack_wait_time;
                setBck(0x15, 2, 3.0f, 1.0f);
                mMoveMode = 10;
                break;
            }
        case 22:
            if (mpModelMorf->isStop()) {
                if (mMoveMode == 22) {
                    mMoveMode = 30;
                    break;
                }

                if (field_0x84c == 0 && (parentActorID == 0 || !fopAcM_SearchByID(parentActorID, &sp14) || sp14 == NULL)) {
                    parentActorID = 0;
                    setActionMode(ACTION_ATTACK_e, 0);
                    break;
                }

                field_0x7d3 = l_HIO.after_attack_wait_time;
                setBck(0x15, 2, 3.0f, 1.0f);
                mMoveMode = 10;
            }
            break;
        case 10:
        case 30:
            mCylCollider.OffTgSetBit();
            mCylCollider.OffCoSetBit();
            setBck(0x13, 0, 3.0f, 1.0f);
            mMoveMode++;
            break;
        case 11:
        case 31:
            if (!mpModelMorf->isStop()) {
                break;
            }

            mMoveMode++;
        case 12:
        case 32:
            if (mPzScaleSet(1)) {
                field_0x7d3 = 10;
                mEntrySUB(false);
                mPzScale.set(0.0f, 0.0f, 0.0f);

                if (field_0x847 == 0 && mMoveMode == 12) {
                    setActionMode(ACTION_WAIT_e, 0);
                    break;
                }

                if (mMoveMode == 12) {
                    mMoveMode = 20;
                    break;
                }

                field_0x78c++;
                mPointerSet();

                if (field_0x78c < mPointNum - 1) {
                    current.pos.set(field_0x708[mCurrentPoint]);
                    setBck(8, 0, 3.0f, -1.0f);
                    mPzScale.set(0.0f, field_0x7cc, 0.0f);
                    mpModelMorf->setFrame(0.0f);
                    mMoveMode = 21;
                    break;
                }

                current.pos.set(field_0x708[mCurrentPoint]);
                mEntrySUB(true);
                setBck(8, 0, 3.0f, -1.0f);

                mPzScale.set(0.0f, field_0x7cc, 0.0f);
                field_0x78c = 0;
                field_0x847 = 0;
                mpModelMorf->setFrame(0.0f);
                mMoveMode = 1;
            }
            break;
        case 20:
            sp70.set(field_0x708[mCurrentPoint]);

            for (var_r29 = 0; var_r29 < mPointNum; var_r29++) {
                field_0x708[var_r29].set(mPointPos[var_r29]);
            }

            var_r29 = 0;
            var_r28 = 1;
            int spC = var_r28;

            while (var_r29 < mPointNum - 1) {
                sp88 = field_0x708[var_r29] - sp18->current.pos;
                sp7C = field_0x708[var_r28] - sp18->current.pos;

                if (sp88.abs() > sp7C.abs()) {
                    sp7C.set(field_0x708[var_r29]);
                    field_0x708[var_r29].set(field_0x708[var_r28]);
                    field_0x708[var_r28].set(sp7C);
                }

                var_r28++;
                if (var_r28 >= mPointNum) {
                    var_r29++;
                    var_r28 = var_r29 + 1;
                }
            }

            attention_info.distances[fopAc_attn_BATTLE_e] = 3;
            mPointerSet();
            field_0x78c = 0;
 
            sp88 = field_0x708[mCurrentPoint] - current.pos;
            sp88.y = 0.0f;

            sp7C = sp70 - current.pos;
            sp7C.y = 0.0f;

            sp64 = field_0x708[mCurrentPoint] - field_0x790;
            sp64.y = 0.0f;

            if (!sp88.abs() || !sp7C.abs() || !sp64.abs()) {
                mCurrentPoint++;
                if (mCurrentPoint >= mPointNum) {
                    setActionMode(ACTION_WAIT_e, 0);
                    break;
                }
            }

            current.pos.set(field_0x708[mCurrentPoint]);
            setBck(8, 0, 3.0f, -1.0f);
            mPzScale.set(0.0f, field_0x7cc, 0.0f);
            mpModelMorf->setFrame(0.0f);
            mMoveMode++;
        }

        s16 sp8 = fopAcM_searchPlayerAngleY(this);
        if (field_0x84c == 0) {
            sp88.set(0.0f, 0.0f, -1500.0f);
            sp7C = sp88 - current.pos;
            sp8 = (s16)sp7C.atan2sX_Z();
        }

        cLib_addCalcAngleS2(&current.angle.y, (s16)sp8, 4, 0x800);
    }
}

/* 8075C6AC-8075CB80 00422C 04D4+00 1/1 0/0 0/0 .text            executeAttack__8daE_PZ_cFv */
void daE_PZ_c::executeAttack() {
    int sp20 = 20;

    switch (mMoveMode) {
    case 0:
        if ((cM_rnd() < 0.4f && arg0 != 0) || BREG_S(2) != 0) {
            setBck(0xA, 0, 3.0f, 1.0f);
        } else {
            setBck(0xB, 0, 3.0f, 1.0f);
            field_0x5dc.startCreatureVoice(Z2SE_EN_PZ_V_ATK_RDY, -1);
        }
        mMoveMode++;
        break;
    case 1:
        if (mpModelMorf->isStop()) {
            parentActorID = fopAcM_createChild(PROC_E_PZ, fopAcM_GetID(this), sp20 + arg0, &field_0x7a8, fopAcM_GetRoomNo(this), &shape_angle, NULL, -1, NULL);

            if (mAnm == 0xB) {
                setBck(0xC, 0, 3.0f, 1.0f);

                u8 sp10;
                int var_r27 = 0;
                sp10 = field_0x7d8;

                while (sp10 == field_0x7d8 && var_r27 < 100) {
                    u8 var_r28;
                    if (arg0 == 1) {
                        var_r28 = 1.0f + cM_rndF(3.0f);
                        if (var_r28 >= 4) {
                            var_r28 = 1;
                        }
                    } else {
                        var_r28 = cM_rndF(3.0f);
                        if (var_r28 >= 3) {
                            sp10 = 2;
                        }
                    }

                    var_r27++;
                    if (data_80761E29 != var_r28) {
                        field_0x7d8 = var_r28;
                        var_r27 = 100;
                    }
                }
            } else {
                field_0x7d8 = 5;
                setBck(9, 0, 3.0f, 1.0f);
            }

            if (BREG_S(1) != 0) {
                field_0x7d8 = BREG_S(1) - 1;
            }
            if (field_0x7d8 > 5) {
                field_0x7d8 = 5;
            }
            mMoveMode++;
        }
        break;
    case 2:
        if ((mAnm == 0xC && (int)mpModelMorf->getFrame() == 34) || (mAnm == 9 && (int)mpModelMorf->getFrame() == 20)) {
            field_0x5dc.startCreatureVoice(Z2SE_EN_PZ_V_ATK_TRW, -1);
        }

        fopAc_ac_c* sp24;
        if (fopAcM_SearchByID(parentActorID, &sp24) && sp24 != NULL) {
            if ((int)mpModelMorf->getFrame() == 36 || (field_0x7d8 == 5 && (int)mpModelMorf->getFrame() == 23)) {
                ((daE_PZ_c*)sp24)->mMoveMode = 1;

                if (field_0x7d8 != 5) {
                    dComIfGp_particle_set(0x889D, &sp24->current.pos, &shape_angle, NULL);
                }
            } else {
                if ((int)mpModelMorf->getFrame() < 36 && (field_0x7d8 != 5)) {
                    sp24->current.pos.set(field_0x7a8);
                }
            }
        }
        if (mpModelMorf->isStop()) {
            setBck(0x15, 2, 3.0f, 1.0f);
            field_0x7d3 = 0;
            setActionMode(ACTION_WAIT_e, 10);
        }
        break;
    }

    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp40;
    cXyz sp34;

    if (mAnm == 0xB || mAnm == 0xC) {
        sp40.set(0.0f, 0.0f, -1500.0f);
    } else {
        sp40.set(player->current.pos);
    }

    sp34 = sp40 - current.pos;
    cLib_addCalcAngleS2(&current.angle.y, (s16)sp34.atan2sX_Z(), 4, 0x800);
}

/* 8075CB80-8075CE68 004700 02E8+00 1/1 0/0 0/0 .text            executeDamage__8daE_PZ_cFv */
void daE_PZ_c::executeDamage() {
    switch (mMoveMode) {
    case 0:
        setBck(0xE, 0, 3.0f, 1.0f);
        mPzScale.set(l_HIO.body_model_size, l_HIO.body_model_size, l_HIO.body_model_size);
        field_0x5dc.startCreatureVoice(Z2SE_EN_PZ_V_DMG, -1);
        mMoveMode = 1;
        return;
    case 2:
        if (field_0x847 == 4) {
            setBck(0xE, 0, 3.0f, 1.0f);
        } else {
            setBck(0xF, 0, 3.0f, 1.0f);
        }

        field_0x5dc.startCreatureVoice(Z2SE_EN_PZ_V_DMG, -1);
        mPzScale.set(l_HIO.body_model_size, l_HIO.body_model_size, l_HIO.body_model_size);
        mMoveMode = 1;
        return;
    case 3:
        if (field_0x847 == 4) {
            setBck(0xE, 0, 3.0f, 1.0f);
        } else {
            setBck(0x10, 0, 3.0f, 1.0f);
        }
    
        mPzScale.set(l_HIO.body_model_size, l_HIO.body_model_size, l_HIO.body_model_size);
        field_0x5dc.startCreatureVoice(Z2SE_EN_PZ_V_DMG, -1);
        mMoveMode = 1;
        return;
    case 1:
        if (field_0x847 >= 4) {
            speedF = -40.0f;
            mCylCollider.OffTgSetBit();
            mCylCollider.OffCoSetBit();
            field_0x7d0 = 14;
            field_0x847 = 0;
            mMoveMode = 4;
        } else if (mpModelMorf->isStop()) {
            field_0x847 = 0;
            setActionMode(ACTION_WAIT_e, 10);
        }
        break;
    case 4:
        cLib_addCalc0(&speedF, 0.8f, 5.0f);

        if (field_0x7d0 == 0 && mPzScaleSet(1)) {
            field_0x7d3 = 10;
            speedF = 0.0f;
            current.pos.set(field_0x790);
            mEntrySUB(false);
            mPzScale.zero();
            setActionMode(ACTION_WAIT_e, 20);
        }
        break;
    }
}

/* 8075CE68-8075D94C 0049E8 0AE4+00 2/1 0/0 0/0 .text            executeDead__8daE_PZ_cFv */
void daE_PZ_c::executeDead() {
    camera_class* sp1C = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera_class* sp18 = dComIfGp_getCamera(0);
    fopAc_ac_c* sp14 = dComIfGp_getPlayer(0);
    cXyz sp68;
    cXyz sp5C;

    static cXyz mPzDeadDemo_mCenter_dt[] = {
        cXyz(0.0f, 150.0f, 0.0f),
        cXyz(0.0f, 200.0f, 0.0f),
        cXyz(30.0f, 215.0f, -600.0f),
    };

    static cXyz mPzDeadDemo_mEye_dt[] = {
        cXyz(-100.0f, 100.0f, 200.0f),
        cXyz(0.0f, 100.0f, 200.0f),
        cXyz(220.0f, 880.0f, 400.0f),
    };

    mPzScale.set(l_HIO.body_model_size, l_HIO.body_model_size, l_HIO.body_model_size);

    switch (mMoveMode) {
    case 0:
    case 10:
        field_0x7d0 = 0;
        if (!eventInfo.i_checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xFFFF, 0);
            eventInfo.i_onCondition(2);
            mDemoCameraEye = sp18->lookat.eye;
            mDemoCameraCenter = sp18->lookat.center;

            speedF = 0.0f;
            mCylCollider.ClrTgHit();
            mCylCollider.ClrCoHit();

            field_0x84c = 7;
            field_0x843 = 0;
            fopAcM_OffStatus(this, 0);
            fopAcM_SetGroup(this, 0);
            attention_info.flags &= ~4;
            break;
        }

        sp1C->mCamera.Stop();
        sp1C->mCamera.SetTrimSize(3);

        current.pos.set(0.0f, 0.0f, -1300.0f);
        sp68.set(0.0f, 0.0f, 300.0f);
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp68, -0x7C00, 0);
        daPy_getPlayerActorClass()->changeOriginalDemo();
        daPy_getPlayerActorClass()->changeDemoMode(4, 2, 0, 0);

        sp68.set(0.0f, 0.0f, -1200.0f);
        sp5C = sp68 - current.pos;
        shape_angle.y = current.angle.y = sp5C.atan2sX_Z();

        field_0x7d0 = 2;
        setBck(0x12, 0, 3.0f, 1.0f);
        field_0x5dc.startCreatureVoice(Z2SE_EN_PZ_V_DEAD, -1);

        if (mMoveMode == 0) {
            field_0x7c4 = mPzDeadDemo_mEye_dt[0].x;
        } else {
            field_0x7c4 = mPzDeadDemo_mEye_dt[1].y;
        }

        cDmr_SkipInfo = 0;
        mMoveMode++;
        break;
    case 1:
        if ((int)mpModelMorf->getFrame() == 135) {
            dCam_getBody()->StartBlure(0x46, this, 0.8f, 1.2f);
        }

        if ((int)mpModelMorf->getFrame() < 170) {
            cMtx_YrotS(*calc_mtx, shape_angle.y);
            sp68.x = field_0x7c4;
            sp68.y = mPzDeadDemo_mEye_dt[0].y;
            sp68.z = mPzDeadDemo_mEye_dt[0].z;
            MtxPosition(&sp68, &sp5C);
            sp5C += current.pos;
            mDemoCameraEye.set(sp5C);

            sp68.set(current.pos);
            sp68 += mPzDeadDemo_mCenter_dt[0];
            mDemoCameraCenter.set(sp68);

            cLib_addCalc2(&field_0x7c4, 100.0f, 0.8f, 1.2f);
        } else {
            cMtx_YrotS(*calc_mtx, shape_angle.y);
            sp68.x = 100.0f;
            sp68.y = mPzDeadDemo_mEye_dt[0].y;
            sp68.z = mPzDeadDemo_mEye_dt[0].z + field_0x7c4;
            MtxPosition(&sp68, &sp5C);
            sp5C += current.pos;
            mDemoCameraEye.set(sp5C);

            cLib_addCalc2(&field_0x7c4, 500.0f, 0.8f, 50.0f);
        }

        if (!mpModelMorf->isStop()) {
            break;
        }
    case 2:
        for (int i = 0; i < 3; i++) {
            static u16 eff_delete_id[] = {0x889E, 0x889F, 0x88A0};
            dComIfGp_particle_set(eff_delete_id[i], &current.pos, NULL, NULL);
        }

        Z2GetAudioMgr()->seStart(Z2SE_EN_PZ_FOG, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

        sp68.set(current.pos);
        sp68.y = mAcch.GetGroundH();
        fopAcM_create(PROC_KYTAG12, 1, &sp68, fopAcM_GetRoomNo(this), NULL, NULL, -1);

        field_0x7c4 = 0.0f;
        field_0x7d0 = 140;
        field_0x840 = 1;
        mMoveMode = 3;
    case 3:
        cLib_addCalcPos(&mDemoCameraCenter, mPzDeadDemo_mCenter_dt[2], 0.7f, 10.0f, 5.0f);
        cLib_addCalcPos(&mDemoCameraEye, mPzDeadDemo_mEye_dt[2], 0.7f, 10.0f, 5.0f);

        if (field_0x7d0 == 0) {
            if (arg0 == 0) {
                fopAcM_offSwitch(this, 0x19);
                fopAcM_offSwitch(this, 0x1A);
                fopAcM_onSwitch(this, 0x64);

                if (bitSw != 0xFF) {
                    fopAcM_onSwitch(this, bitSw);
                }
            } else {
                fopAcM_offSwitch(this, 0x1B);
                fopAcM_offSwitch(this, 0x1C);
                fopAcM_onSwitch(this, 0x65);

                if (bitSw != 0xFF) {
                    fopAcM_onSwitch(this, bitSw);
                }
            }

            sp68.set(sp14->current.pos);
            sp68.y += 100.0f;

            sp1C->mCamera.Reset(sp68, sp68);
            sp1C->mCamera.Start();
            sp1C->mCamera.SetTrimSize(0);

            dComIfGp_event_reset();
            fopAcM_delete(this);
        }
        break;
    case 11:
        if ((int)mpModelMorf->getFrame() == 135) {
            dCam_getBody()->StartBlure(0x46, this, 0.8f, 1.2f);
        }

        if ((int)mpModelMorf->getFrame() < 170) {
            cMtx_YrotS(*calc_mtx, shape_angle.y);
            sp68.x = mPzDeadDemo_mEye_dt[1].x;
            sp68.y = field_0x7c4;
            sp68.z = mPzDeadDemo_mEye_dt[1].z;
            MtxPosition(&sp68, &sp5C);
            sp5C += current.pos;
            mDemoCameraEye.set(sp5C);

            sp68.set(current.pos);
            sp68 += mPzDeadDemo_mCenter_dt[1];
            mDemoCameraCenter.set(sp68);

            if ((int)mpModelMorf->getFrame() >= 125) {
                cLib_addCalc2(&field_0x7c4, 1000.0f, 0.8f, 2.2f);
            }
        } else {
            cMtx_YrotS(*calc_mtx, shape_angle.y);
            sp68.x = 100.0f;
            sp68.y = mPzDeadDemo_mEye_dt[0].y;
            sp68.z = mPzDeadDemo_mEye_dt[0].z + field_0x7c4;
            MtxPosition(&sp68, &sp5C);
            sp5C += current.pos;
            mDemoCameraEye.set(sp5C);

            cLib_addCalc2(&field_0x7c4, 500.0f, 0.8f, 50.0f);
        }

        if (mpModelMorf->isStop()) {
            mMoveMode = 2;
        }
    }

    if (mMoveMode >= 1 && mMoveMode != 10) {
        sp1C->mCamera.Set(mDemoCameraCenter, mDemoCameraEye);
    }
}

/* 80761C28-80761C2C 00046C 0004+00 0/0 0/0 0/0 .data            eff_seed_id */
static u16 eff_seed_id[] = {0x88A3, 0x88A4};

/* 80761C2C-80761C34 000470 0006+02 0/1 0/0 0/0 .data            eff_summonBall_id */
static u16 eff_summonBall_id[] = {0x8898, 0x8899, 0x889A};

/* 80761C34-80761C38 000478 0004+00 0/1 0/0 0/0 .data            eff_summonBall2_id */
static u16 eff_summonBall2_id[] = {0x8913, 0x8914};

/* 80761C38-80761C3C 00047C 0004+00 0/0 0/0 0/0 .data            eff_summonShoot2_id */
static u16 eff_summonShoot2_id[] = {0x8911, 0x8912};

static const struct {
    s16 name;
    u32 parameters;
    int unk_0x8;
} BIRTH_DT[] = {
    {PROC_E_YK, 0xFFFFFF01, 20},
    {PROC_E_YG, 0xFFFFFF00, 20},
    {PROC_E_PZ, 0xFFFF001E, 12},
    {PROC_E_S1, 0xFFFFEF00, 8},
    {PROC_E_YH, 0xFF1FFF00, 12},
    {PROC_E_PZ, 0xFFFFFF28, 3},
};

/* 80761748-80761760 00024C 0018+00 0/0 0/0 0/0 .rodata          mDBaBa_birthAngle_dt */
static const s16 mDBaBa_birthAngle_dt[] = {
    0x0000, 0x2AAA, 0x5554, 0x7FFE, 0xAAA8, 0xD552,
    0x1000, 0x3AAA, 0x6554, 0x8FFE, 0xBAA8, 0xE552,
};

/* 80761760-80761790 000264 0030+00 0/0 0/0 0/0 .rodata          mDBaBa_birthHani_dt */
static const f32 mDBaBa_birthHani_dt[] = {
    600.0f,
    600.0f,
    600.0f,
    600.0f,
    600.0f,
    600.0f,
    1800.0f,
    1800.0f,
    1800.0f,
    1800.0f,
    1800.0f,
    1800.0f,
};

/* 8075D94C-8075F0BC 0054CC 1770+00 2/1 0/0 0/0 .text            executeSummonsBullet__8daE_PZ_cFv
 */
void daE_PZ_c::executeSummonsBullet() {
    fopAc_ac_c* sp90 = dComIfGp_getPlayer(0);
    fopAc_ac_c* sp8C;
    fopAc_ac_c* sp88;

    cXyz spD8(l_HIO.portal_model_size, l_HIO.portal_model_size, l_HIO.portal_model_size);
    cXyz spCC;
    cXyz spC0;
    csXyz sp94;

    u32 sp84 = 0;
    s16 sp12 = 0;

    if (!fopAcM_SearchByID(parentActorID, &sp8C) || (sp8C != NULL && sp8C->health <= 1)) {
        field_0x7d0 = 0;
        mMoveMode = 4;
    }

    switch (mMoveMode) {
    case 0:
        if (field_0x7d0 == 0) {
            mpBallModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_PZ", 7), 0, 1.0f, 1.0f, 0.0f, -1.0f);
            
            for (int i = 0; i < 2; i++) {
                dComIfGp_particle_set(eff_summonBall_id[i], &current.pos, NULL, NULL);
            }

            Z2GetAudioMgr()->seStart(Z2SE_EN_PZ_BALL_EMERGE, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

            if (fopAcM_SearchByID(parentActorID, &sp8C) && sp8C != NULL && ((daE_PZ_c*)sp8C)->field_0x7d8 == 2) {
                field_0x7a8.set(0.0f, 0.0f, -1500.0f);
            } else {
                cMtx_YrotS(*calc_mtx, home.angle.y);
                spCC.x = 0.0f;
                spCC.y = 0.0f;
                spCC.z = 300.0f;
                MtxPosition(&spCC, &spC0);
                spC0 += current.pos;
                field_0x7a8.set(spC0);
            }
        }

        field_0x7d0 = 200;
        field_0xa68[0] = dComIfGp_particle_set(field_0xa68[0], eff_summonBall_id[2], &current.pos, NULL, NULL);
        
        for (int i = 0; i < 2; i++) {
            field_0xab4[i] = dComIfGp_particle_set(field_0xab4[i], eff_summonBall2_id[i], &current.pos, NULL, NULL);
        }

        Z2GetAudioMgr()->seStartLevel(Z2SE_EN_PZ_BALL, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

        if (fopAcM_SearchByID(parentActorID, &sp8C) && sp8C != NULL && ((daE_PZ_c*)sp8C)->mAnm != 0xC && ((daE_PZ_c*)sp8C)->mAnm != 0xA && ((daE_PZ_c*)sp8C)->mAnm != 9 && ((daE_PZ_c*)sp8C)->mAnm != 0xD) {
            field_0x7d0 = 0;
            mMoveMode = 4;
        }
        break;
    case 1:
        if (fopAcM_SearchByID(parentActorID, &sp8C) && sp8C != NULL && ((daE_PZ_c*)sp8C)->field_0x7d8 == 5) {
            for (int i = 0; i < 2; i++) {
                JPABaseEmitter* sp80 = dComIfGp_particle_getEmitter(field_0xab4[i]);
                if (sp80 != NULL) {
                    sp80->stopDrawParticle();
                }
            }

            for (int i = 0; i < 2; i++) {
                dComIfGp_particle_set(eff_summonShoot2_id[i], &current.pos, NULL, NULL);
            }

            sp94 = shape_angle;
            sp12 = -0x1000;

            for (int i = 0; i < 5; i++) {
                sp94.x = -fopAcM_searchPlayerAngleX(this);
                sp94.y = sp12 + fopAcM_searchPlayerAngleY(this);
                fopAcM_create(BIRTH_DT[((daE_PZ_c*)sp8C)->field_0x7d8].name, BIRTH_DT[((daE_PZ_c*)sp8C)->field_0x7d8].parameters, &current.pos, fopAcM_GetRoomNo(this), &sp94, NULL, -1);
                sp12 += 0x800;
            }

            fopAcM_delete(this);
            break;
        }

        spCC.set(field_0x7a8);
        spCC.y += 1000.0f;
        cLib_addCalcPos(&current.pos, spCC, 0.8f, 100.0f, 40.0f);

        if (field_0xa68[1] == 0) {
            for (int i = 0; i < 2; i++) {
                dComIfGp_particle_set(eff_summonShoot2_id[i], &current.pos, NULL, NULL);
            }

            for (int i = 0; i < 2; i++) {
                JPABaseEmitter* sp80 = dComIfGp_particle_getEmitter(field_0xab4[i]);
                if (sp80 != NULL) {
                    sp80->stopDrawParticle();
                }
            }
        }

        field_0xa68[1] = dComIfGp_particle_set(field_0xa68[1], 0x889C, &current.pos, NULL, NULL);
        Z2GetAudioMgr()->seStartLevel(Z2SE_EN_PZ_BALL, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        spC0 = spCC - current.pos;

        if (mAcch.ChkWallHit() || mAcch.ChkGroundHit() || spC0.abs() < 10.0f || field_0x7d0 == 0) {
            field_0x7d0 = 10;
            field_0x7c8 = 0.0f;
            field_0x7d7 = 0;

            dComIfGp_particle_set(0x889B, &current.pos, &shape_angle, &spD8);
            Z2GetAudioMgr()->seStart(Z2SE_EN_PZ_BALL_BURST, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            mMoveMode++;
        }
        break;
    case 2:
    case 30:
        if (field_0x842 == 0) {
            field_0x7c8 = l_HIO.portal_model_size;
            field_0x842 = 1;

            dComIfGp_particle_set(0x84A4, &current.pos, &shape_angle, &spD8);
            Z2GetAudioMgr()->seStart(Z2SE_EN_PZ_PT_EMERGE, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            field_0x7d0 = 40;
        }

        Z2GetAudioMgr()->seStartLevel(Z2SE_EN_PZ_PT, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

        if (field_0x7d0 == 0) {
            sp94.x = 0;
            sp94.y = fopAcM_searchPlayerAngleY(this);
            sp94.z = 0;

            sp12 = (field_0x7d7 << 13);
            if (fopAcM_SearchByID(parentActorID, &sp8C) && sp8C != NULL) {
                if (((daE_PZ_c*)sp8C)->field_0x7d8 == 2) {
                    sp12 = mDBaBa_birthAngle_dt[field_0x7d7];
                }

                cMtx_YrotS(*calc_mtx, sp12);
                spCC.x = 0.0f;
                spCC.y = -50.0f;
                spCC.z = 200.0f;
                if (((daE_PZ_c*)sp8C)->field_0x7d8 == 2) {
                    spCC.y = 200.0f;
                    spCC.z = 10.0f + cM_rndF(800.0f);
                }
                MtxPosition(&spCC, &spC0);
                spC0 += current.pos;

                if (((daE_PZ_c*)sp8C)->field_0x7d8 == 2) {
                    spC0.z += 100.0f;
                }

                if (((daE_PZ_c*)sp8C)->field_0x7dc[field_0x7d7] == 0) {
                    sp84 = BIRTH_DT[((daE_PZ_c*)sp8C)->field_0x7d8].parameters;
                    data_80761E29 = ((daE_PZ_c*)sp8C)->field_0x7d8;

                    if (((daE_PZ_c*)sp8C)->field_0x7d8 == 2) {
                        sp84 |= field_0x7d7 << 8;
                    }
                    if (((daE_PZ_c*)sp8C)->field_0x7d8 == 3) {
                        sp94.z = 0xC8;
                    }

                    ((daE_PZ_c*)sp8C)->field_0x7dc[field_0x7d7] = fopAcM_createChild(BIRTH_DT[((daE_PZ_c*)sp8C)->field_0x7d8].name, fopAcM_GetID(this), sp84, &spC0, fopAcM_GetRoomNo(this), &sp94, NULL, -1, NULL);
                    if (((daE_PZ_c*)sp8C)->field_0x7dc[field_0x7d7] != 0) {
                        field_0x7d7++;
                        field_0x7d0 = 2;
                    }
                }

                if (field_0x7d7 < BIRTH_DT[((daE_PZ_c*)sp8C)->field_0x7d8].unk_0x8) {
                    break;
                }
            }

            field_0x7d0 = 100;
            mMoveMode++;
        }
        break;
    case 22:
    case 31:
        Z2GetAudioMgr()->seStartLevel(Z2SE_EN_PZ_PT, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        break;
    case 3:
    case 32:
        if (field_0x7d0 != 0) {
            Z2GetAudioMgr()->seStartLevel(Z2SE_EN_PZ_PT, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            break;
        }

        field_0x5d8 = 1;
        Z2GetAudioMgr()->seStart(Z2SE_EN_PZ_PT_DISAPPEAR, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        field_0x7d0 = 50;
        mMoveMode++;
        break;
    case 4:
        mpBallBrk->play();

        if (field_0x7d0 == 0) {
            fopAcM_delete(this);
        }
        break;
    case 33:
        if (field_0x7d0 == 0) {
            cLib_addCalc0(&field_0x7c8, 0.7f, 0.5f);
            if (field_0x7c8 < 0.2f) {
                fopAcM_delete(this);
            }
        }
        break;
    case 10:
        if (arg1 == 0xFF) {
            fopAcM_delete(this);
            break;
        }

        if (fopAcM_SearchByID(parentActorID, &sp8C) && sp8C != NULL && fopAcM_SearchByID(sp8C->parentActorID, &sp88) && sp88 != NULL && ((daE_PZ_c*)sp88)->field_0x841 != 0) {
            field_0x7d0 = 20;
        }
        mMoveMode++;
    case 11:
        if (field_0x7d7 == 0) {
            field_0xa68[0] = dComIfGp_particle_set(field_0xa68[0], 0x88A2, &current.pos, NULL, NULL);
        }

        sp12 = mDBaBa_birthAngle_dt[arg1];
        cMtx_YrotS(*calc_mtx, sp12);
        spCC.x = 0.0f;
        spCC.y = -100.0f;
        spCC.z = mDBaBa_birthHani_dt[arg1];
        MtxPosition(&spCC, &spC0);
        spC0.z += -1500.0f;

        if (field_0x7d7 == 0) {
            if (field_0x7d0 != 0) {
                cLib_addCalc2(&current.pos.y, spC0.y, 0.7f, 50.0f);
                break;
            }
            cLib_addCalcPos(&current.pos, spC0, 0.7f, 100.0f, 50.0f);
        }

        spCC = current.pos - spC0;

        if (field_0x7d7 != 0 || mAcch.ChkGroundHit() || spCC.abs() < 2.0f) {
            field_0x7d7++;
            if (fopAcM_SearchByID(parentActorID, &sp8C) && sp8C != NULL && fopAcM_SearchByID(sp8C->parentActorID, &sp88) && sp88 != NULL) {
                if (((daE_PZ_c*)sp88)->field_0x841 != 0) {
                    field_0x7d7 = 1;

                    if (data_80761E28 == 0) {
                        break;
                    }

                    for (int i = 0; i < 2; i++) {
                        spCC.set(current.pos);
                        spCC.y = mAcch.GetGroundH();
                        dComIfGp_particle_set(eff_seed_id[i], &spCC, NULL, NULL);
                    }

                    Z2GetAudioMgr()->seStart(Z2SE_EN_PZ_DKBB_SEED, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                } else if (field_0x7d7 < 0x1E) {
                    if (field_0x7d7 != 1) {
                        break;
                    }

                    spCC.set(current.pos);
                    spCC.y = mAcch.GetGroundH();

                    for (int i = 0; i < 2; i++) {
                        dComIfGp_particle_set(eff_seed_id[i], &spCC, NULL, NULL);
                    }

                    Z2GetAudioMgr()->seStart(Z2SE_EN_PZ_DKBB_SEED, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                    break;
                }

                spC0.set(current.pos);
                spC0.y = mAcch.GetGroundH();

                s16 sp10 = BIRTH_DT[4].name;
                u32 sp58 = BIRTH_DT[4].parameters;
                if (sp88 != NULL) {
                    ((daE_PZ_c*)sp88)->field_0x7dc[arg1] = fopAcM_createChild(sp10, fopAcM_GetID(this), sp58, &spC0, fopAcM_GetRoomNo(this), &current.angle, NULL, -1, NULL);
                }
            }
            fopAcM_delete(this);
        }
        break;
    case 20:
        field_0x7a8.set(0.0f, 0.0f, -2000.0f);

        spCC.set(sp90->current.pos);
        spCC.y += 300.0f;

        if (field_0x7d7 < 8) {
            field_0x7d7++;
            cLib_addCalcPos(&current.pos, spCC, 0.8f, 100.0f, 40.0f);
        }

        if (field_0xa68[1] == 0) {
            for (int i = 0; i < 2; i++) {
                JPABaseEmitter* sp80 = dComIfGp_particle_getEmitter(field_0xab4[i]);
                if (sp80 != NULL) {
                    sp80->stopDrawParticle();
                }
            }

            for (int i = 0; i < 2; i++) {
                dComIfGp_particle_set(eff_summonShoot2_id[i], &current.pos, NULL, NULL);
            }
        }

        field_0xa68[1] = dComIfGp_particle_set(field_0xa68[1], 0x889C, &current.pos, NULL, NULL);
        Z2GetAudioMgr()->seStartLevel(Z2SE_EN_PZ_BALL, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        break;
    case 21:
        spCC.set(field_0x7a8);
        spCC.y += 1000.0f;
        cLib_addCalcPos(&current.pos, spCC, 0.8f, 100.0f, 40.0f);

        field_0xa68[1] = dComIfGp_particle_set(field_0xa68[1], 0x889C, &current.pos, NULL, NULL);
        Z2GetAudioMgr()->seStartLevel(Z2SE_EN_PZ_BALL, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

        spC0 = spCC - current.pos;
        if (!(spC0.abs() > 10.0f)) {
            dComIfGp_particle_set(0x889B, &current.pos, &shape_angle, &spD8);
            Z2GetAudioMgr()->seStart(Z2SE_EN_PZ_BALL_BURST, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

            field_0x7c8 = l_HIO.portal_model_size;
            field_0x842 = 1;

            dComIfGp_particle_set(0x84A4, &current.pos, &shape_angle, &spD8);
            Z2GetAudioMgr()->seStart(Z2SE_EN_PZ_PT_EMERGE, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

            field_0x7d7 = 0;
            field_0x7d0 = 30;
            mMoveMode++;
        }
    }
}

/* 8075F0BC-8075F3A8 006C3C 02EC+00 1/1 0/0 0/0 .text            executeBullet__8daE_PZ_cFv */
void daE_PZ_c::executeBullet() {
    cXyz mae;
    cXyz ato;

    switch (mMoveMode) {
    case 0:
        speedF = l_HIO.bullet_speed;

        cMtx_YrotS(*calc_mtx, current.angle.y);
        cMtx_XrotM(*calc_mtx, current.angle.x);
        mae.x = 0.0f;
        mae.y = 0.0f;
        mae.z = speedF;
        MtxPosition(&mae, &ato);
        speed.y = ato.y;

        field_0x5dc.startCreatureSound(Z2SE_EN_PZ_FIRE_OUT, 0, -1);
        field_0x7d0 = 100;
        mMoveMode++;
        /* fallthrough */
    case 1:
        Z2GetAudioMgr()->seStartLevel(Z2SE_EN_PZ_FIRE, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        break;
    }

    for (int i = 0; i < 3; i++) {
        static u16 eff_bullet_id[] = {0x8866, 0x8867, 0x8868};
        field_0xa68[i] = dComIfGp_particle_set(field_0xa68[i], eff_bullet_id[i], &current.pos, NULL, NULL);

        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0xa68[i]);
        if (emitter != NULL) {
            emitter->setGlobalTranslation(current.pos);
        }
    }

    if (mAcch.ChkWallHit() || mAcch.ChkGroundHit() || field_0x7d0 == 0 || mBulletAtCollider.ChkAtHit() || mBulletAtCollider.ChkTgHit() || mBulletAtCollider.ChkAtShieldHit()) {
        for (int i = 0; i < 4; i++) {
            static u16 eff_bullet_delete_id[] = {0x8862, 0x8863, 0x8864, 0x8865};
            dComIfGp_particle_set(eff_bullet_delete_id[i], &current.pos, NULL, NULL);
        }

        Z2GetAudioMgr()->seStart(Z2SE_EN_PZ_FIRE_BURST, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        fopAcM_delete(this);
    }
}

/* 8075F3A8-8075F510 006F28 0168+00 1/1 0/0 0/0 .text            action__8daE_PZ_cFv */
void daE_PZ_c::action() {
    field_0x7cc = l_HIO.body_model_size * (3.0f + BREG_F(1));
    damage_check();

    switch (mActionMode) {
    case ACTION_SEARCH_POINT_e:
        executeSearchPoint();
        break;
    case ACTION_OPENING_DEMO_e:
        executeOpeningDemo();
        break;
    case ACTION_WAIT_e:
        executeWait();
        break;
    case ACTION_ATTACK_e:
        executeAttack();
        break;
    case ACTION_DAMAGE_e:
        executeDamage();
        break;
    case ACTION_DEAD_e:
        executeDead();
        break;
    }

    if (NREG_S(1) != 0) {
        OS_REPORT("mActionMode %d\n", mActionMode);
        OS_REPORT("mMoveMode %d\n", mMoveMode);
    }

    mEnemyScaleSet();

    if (arg0 >= 10 || attention_info.distances[fopAc_attn_BATTLE_e] != 0) {
        if (mActionMode != ACTION_DEAD_e) {
            shape_angle.y = current.angle.y;
        }

        fopAcM_posMoveF(this, mColliderStts.GetCCMoveP());

        if (mActionMode != ACTION_OPENING_DEMO_e || mMoveMode < 100) {
            mAcch.SetGroundUpY(field_0x7bc);
            mAcch.CrrPos(dComIfG_Bgsp());
        }

        mpPzBrk->play();
        mpPzBtk->play();
        mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }
}

/* 8075F510-8075F578 007090 0068+00 1/1 0/0 0/0 .text            action_fire__8daE_PZ_cFv */
void daE_PZ_c::action_fire() {
    if (mActionMode == 6) {
        executeSummonsBullet();
    } else {
        executeBullet();
    }

    shape_angle.y = current.angle.y;
    fopAcM_posMoveF(this, mColliderStts.GetCCMoveP());
    mAcch.CrrPos(dComIfG_Bgsp());
}

/* 8075F578-8075F734 0070F8 01BC+00 1/1 0/0 0/0 .text            fire_mtx_set__8daE_PZ_cFv */
void daE_PZ_c::fire_mtx_set() {
    if (arg0 >= 20 && arg0 <= 23) {
        mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
        mDoMtx_stack_c::scaleM(field_0x7c8, field_0x7c8, field_0x7c8);

        cXyz sp8(10.0f + BREG_F(8), 10.0f + BREG_F(8), 10.0f + BREG_F(8));

        if (field_0x842 != 0) {
            for (int i = 0; i < 2; i++) {
                static u16 eff_darkHoll_id[] = {0x84A6, 0x84A7};
                field_0xa74[i] = dComIfGp_particle_set(field_0xa74[i], eff_darkHoll_id[i], &current.pos, &shape_angle, &sp8);
            }
            
            mpPortalModel->setBaseTRMtx(mDoMtx_stack_c::get());
            mpPortalBtk->play();
            mpPortalBrk[field_0x5d8]->play();
        } else {
            mpBallModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            mpBallModelMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
            mpBallModelMorf->modelCalc();
        }
    }

    if (mActionMode == 7) {
        mBulletAtCollider.SetC(current.pos);
        mBulletAtCollider.SetR(30.0f);
        dComIfG_Ccsp()->Set(&mBulletAtCollider);
    }
}

/* 8075F734-8075F7E8 0072B4 00B4+00 1/1 0/0 0/0 .text            mtx_set__8daE_PZ_cFv */
void daE_PZ_c::mtx_set() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::transM(0.0f, field_0x7c0, 0.0f);

    if (l_HIO.body_model_size != 1.0f) {
        mPzScale.set(l_HIO.body_model_size, l_HIO.body_model_size, l_HIO.body_model_size);
    }

    mDoMtx_stack_c::scaleM(mPzScale.x, mPzScale.y, mPzScale.z);
    mpModelMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModelMorf->modelCalc();
}

/* 8075F7E8-8075F964 007368 017C+00 1/1 0/0 0/0 .text            cc_set__8daE_PZ_cFv */
void daE_PZ_c::cc_set() {
    cXyz mae;
    cXyz ato;

    J3DModel* model_p = mpModelMorf->getModel();
    mDoMtx_stack_c::copy(model_p->getAnmMtx(0));

    mae.set(300.0f + JREG_F(0), 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&mae, &field_0x7a8);

    if (field_0x841 == 0) {
        mDoMtx_stack_c::multVecZero(&eyePos);
        attention_info.position = eyePos;
        attention_info.position.y += 140.0f + BREG_F(7);
    }

    mDoMtx_stack_c::copy(model_p->getAnmMtx(0));
    mae.set(-120.0f + BREG_F(9), 10.0f + BREG_F(10), BREG_F(11));
    mDoMtx_stack_c::multVec(&mae, &ato);

    mCylCollider.SetC(ato);
    mCylCollider.SetH(250.0f + BREG_F(12));
    mCylCollider.SetR(50.0f + BREG_F(13));
    dComIfG_Ccsp()->Set(&mCylCollider);

    mWarpCylCollider.SetC(ato);
    mWarpCylCollider.SetH(250.0f + BREG_F(14));
    mWarpCylCollider.SetR(50.0f + BREG_F(15));
    dComIfG_Ccsp()->Set(&mWarpCylCollider);
}

/* 8075F964-8075FA60 0074E4 00FC+00 1/1 0/0 0/0 .text            execute__8daE_PZ_cFv */
int daE_PZ_c::execute() {
    if (arg0 == 10) {
        return 1;
    }

    if (field_0x7d0 != 0) {
        field_0x7d0--;
    }

    if (field_0x7d1 != 0) {
        field_0x7d1--;
    }

    if (field_0x7d2 != 0) {
        field_0x7d2--;
    }

    if (field_0x7d3 != 0) {
        field_0x7d3--;
    }

    if (arg0 != 20 && arg0 != 21 && arg0 != 30 && arg0 != 40) {
        action();
    } else {
        action_fire();
        fire_mtx_set();
        return 1;
    }

    if (attention_info.distances[fopAc_attn_BATTLE_e] == 0) {
        return 1;
    }

    mtx_set();
    cc_set();
    return 1;
}

/* 8075FA60-8075FA80 0075E0 0020+00 2/1 0/0 0/0 .text            daE_PZ_Execute__FP8daE_PZ_c */
static int daE_PZ_Execute(daE_PZ_c* i_this) {
    return i_this->execute();
}

/* 8075FA80-8075FA88 007600 0008+00 1/0 0/0 0/0 .text            daE_PZ_IsDelete__FP8daE_PZ_c */
static int daE_PZ_IsDelete(daE_PZ_c* i_this) {
    return 1;
}

/* 8075FA88-8075FB2C 007608 00A4+00 1/1 0/0 0/0 .text            _delete__8daE_PZ_cFv */
int daE_PZ_c::_delete() {
    dComIfG_resDelete(&mPhase, "E_PZ");
    if (arg0 == 10) {
        return 1;
    }

    if (mInitHIO != 0) {
        l_initHIO = 0;
        mDoHIO_DELETE_CHILD(l_HIO.no);
    }

    if (arg0 == 30 || arg0 == 40) {
        return 1;
    }

    if (heap != NULL) {
        field_0x5dc.deleteObject();
    }

    return 1;
}

/* 8075FB2C-8075FB4C 0076AC 0020+00 1/0 0/0 0/0 .text            daE_PZ_Delete__FP8daE_PZ_c */
static int daE_PZ_Delete(daE_PZ_c* i_this) {
    return i_this->_delete();
}

/* 8075FB4C-807600A4 0076CC 0558+00 1/1 0/0 0/0 .text            CreateHeap__8daE_PZ_cFv */
int daE_PZ_c::CreateHeap() {
    if (arg0 >= 20 && arg0 <= 23) {
        J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("E_PZ", 0x18);
        JUT_ASSERT(3876, modelData != 0);
        mpPortalModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
        if (mpPortalModel == NULL) {
            return 0;
        }

        mpPortalBtk = new mDoExt_btkAnm();
        if (mpPortalBtk == NULL) {
            return 0;
        }

        if (!mpPortalBtk->init(mpPortalModel->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("E_PZ", 0x25), 1, 2, 1.0f, 0, -1)) {
            return 0;
        }

        for (int i = 0; i < 2; i++) {
            mpPortalBrk[i] = new mDoExt_brkAnm();
            if (mpPortalBrk[i] == NULL) {
                return 0;
            }

            static int mPzDarkHoll_dt[] = {0x1F, 0x20};
            if (!mpPortalBrk[i]->init(mpPortalModel->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes("E_PZ", mPzDarkHoll_dt[i]), 1, 0, 1.0f, 0, -1)) {
                return 0;
            }
        }

        modelData = (J3DModelData*)dComIfG_getObjectRes("E_PZ", 0x19);
        JUT_ASSERT(3920, modelData != 0);
        mpBallModelMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_PZ", 7), 2, 1.0f, 0, -1, NULL, 0, 0x11000084);
        if (mpBallModelMorf == NULL) {
            return 0;
        }

        for (int i = 0; i < 2; i++) {
            mpBallBrk = new mDoExt_brkAnm();
            if (mpBallBrk == NULL) {
                return 0;
            }

            if (!mpBallBrk->init(mpBallModelMorf->getModel()->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes("E_PZ", 0x21), 1, 0, 1.0f, 0, -1)) {
                return 0;
            }
        }

        return 1;
    }

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("E_PZ", 0x1C);
    JUT_ASSERT(3959, modelData != 0);
    mpModelMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_PZ", 8), 2, 1.0f, 0, -1, &field_0x5dc, 0, 0x11000284);
    if (mpModelMorf == NULL || mpModelMorf->getModel() == NULL) {
        return 0;
    }

    mpPzBrk = new mDoExt_brkAnm();
    if (mpPzBrk == NULL) {
        return 0;
    }

    if (!mpPzBrk->init(mpModelMorf->getModel()->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes("E_PZ", 0x22), 1, 2, 1.0f, 0, -1)) {
        return 0;
    }

    mpPzBtk = new mDoExt_btkAnm();
    if (mpPzBtk == NULL) {
        return 0;
    }

    if (!mpPzBtk->init(mpModelMorf->getModel()->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("E_PZ", 0x26), 1, 2, 1.0f, 0, -1)) {
        return 0;
    }

    return 1;
}

/* 807600EC-8076010C 007C6C 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return ((daE_PZ_c*)i_this)->CreateHeap();
}

/* 8076010C-807607EC 007C8C 06E0+00 1/1 0/0 0/0 .text            create__8daE_PZ_cFv */
int daE_PZ_c::create() {
    fopAcM_SetupActor(this, daE_PZ_c);

    int phase_state = dComIfG_resLoad(&mPhase, "E_PZ");
    if (phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("E_PZ PARAM %x\n", fopAcM_GetParam(this));
    
        arg0 = fopAcM_GetParam(this);
        arg1 = (fopAcM_GetParam(this) & 0xFF00) >> 8;
        bitSw = (fopAcM_GetParam(this) & 0xFF0000) >> 0x10;

        if (arg0 == 0xFF) {
            arg0 = 0;
        }

        if (BREG_S(0) != 0) {
            arg0 = BREG_S(0) - 1;
        }

        if (arg0 != 0 && arg0 != 1) {
            bitSw = 0xFF;
        }

        OS_REPORT("arg0 %d\n", arg0);
        OS_REPORT("arg1 %d\n", arg1);
        OS_REPORT("bitSw %d\n\n", bitSw);

        field_0x7cc = 3.0f * l_HIO.body_model_size;

        if (arg0 == 10) {
            mEntrySUB(false);
            fopAcM_SetGroup(this, 0);

            OS_REPORT("current.pos.x %f\n", current.pos.x);
            OS_REPORT("current.pos.z %f\n\n", current.pos.z);

            fopAcM_SetMin(this, -4000.0f, -4000.0f, -4000.0f);
            fopAcM_SetMax(this, 4000.0f, 4000.0f, 4000.0f);
        } else {
            if ((arg0 == 0 || arg0 == 1) && bitSw != 0xFF && fopAcM_isSwitch( this, bitSw)) {
                cXyz pos(0.0f, 0.0f, -1300.0f);
                fopAcM_create(PROC_KYTAG12, 1, &pos, fopAcM_GetRoomNo(this), NULL, NULL, -1);
                return cPhs_ERROR_e;
            }
    
            if (arg0 != 40 && arg0 != 30) {
                u32 heap_size = 0x3FF0;
                if (arg0 >= 20 && arg0 <= 23) {
                    heap_size = 0x2920;
                }

                if (!fopAcM_entrySolidHeap(this, useHeapInit, heap_size)) {
                    return cPhs_ERROR_e;
                }
            }

            if (!l_initHIO) {
                l_initHIO = true;
                mInitHIO = true;
                l_HIO.no = mDoHIO_CREATE_CHILD("ファントムザント", &l_HIO);
            }

            attention_info.flags = 4;

            mColliderStts.Init(0xFE, 0, this);

            if ((arg0 < 20 || arg0 > 23) && arg0 != 30 && arg0 != 40) {
                fopAcM_SetMtx(this, mpModelMorf->getModel()->getBaseTRMtx());

                mCylCollider.Set(cc_pz_src);
                mCylCollider.SetStts(&mColliderStts);

                mWarpCylCollider.Set(cc_pz_wp_src);
                mWarpCylCollider.SetStts(&mColliderStts);

                field_0x5dc.init(&current.pos, &eyePos, 3, 1);
                mAtInfo.mpSound = &field_0x5dc;
                mAtInfo.mPowerType = 12;

                gravity = -3.0f;
                mEntrySUB(false);
                fopAcM_SetMin(this, -400.0f, -400.0f, -400.0f);
                fopAcM_SetMax(this, 400.0f, 400.0f, 400.0f);
            } else {
                mEntrySUB(false);
                fopAcM_SetGroup(this, 0);
                fopAcM_SetMin(this, -10000.0f, -10000.0f, -10000.0f);
                fopAcM_SetMax(this, 10000.0f, 10000.0f, 10000.0f);
            }

            mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
            mAcchCir.SetWall(10.0f, 60.0f);

            health = 540;
            field_0x560 = 540;

            field_0x7bc = 40.0f;
            if (BREG_S(4) != 0) {
                health = 2;
            }

            mPzScale.set(0.0f, field_0x7cc, 0.0f);
            shape_angle.x = shape_angle.z = 0;
        
            if ((arg0 < 20 || arg0 > 23) && arg0 != 30 && arg0 != 40) {
                field_0x7d3 = 3;

                if (arg0 == 0) {
                    if (fopAcM_isSwitch(this, 28)) {
                        cDmr_SkipInfo = 0;
                        fopAcM_onSwitch(this, 27);
                        fopAcM_offSwitch(this, 28);
                    }
                } else if (fopAcM_isSwitch(this, 25)) {
                    cDmr_SkipInfo = 0;
                    fopAcM_offSwitch(this, 25);
                    fopAcM_offSwitch(this, 26);
                }

                if (BREG_S(9) != 0 || cDmr_SkipInfo != 0) {
                    if (arg0 == 0) {
                        fopAcM_onSwitch(this, 25);
                        fopAcM_onSwitch(this, 26);
                    } else {
                        fopAcM_onSwitch(this, 27);
                        fopAcM_onSwitch(this, 28);
                    }

                    cDmr_SkipInfo = 0;
                    setActionMode(ACTION_SEARCH_POINT_e, 0);
                } else {
                    mCylCollider.OffTgSetBit();
                    mCylCollider.OffCoSetBit();

                    attention_info.distances[fopAc_attn_BATTLE_e] = 0;
                    fopAcM_OffStatus(this, 0);
                    attention_info.flags &= ~4;

                    if (arg0 == 0) {
                        field_0x7bc = 20.0f;
                        fopAcM_offSwitch(this, 25);
                        fopAcM_offSwitch(this, 26);
                        setActionMode(ACTION_OPENING_DEMO_e, 0);
                    } else {
                        fopAcM_onSwitch(this, 27);
                        fopAcM_offSwitch(this, 28);
                        gravity = 0.0f;
                        setActionMode(ACTION_OPENING_DEMO_e, 100);
                    }
                }
            } else if (arg0 != 30 && arg0 != 40) {
                if (arg0 == 22 || arg0 == 23) {
                    arg0 -= 2;
                    fopAcM_OnStatus(this, 0x4000);
                }
                field_0x7c8 = 1.0f;
                setActionMode(6, 0);
            } else if (arg0 == 30) {
                field_0x7c8 = 1.0f;
                setActionMode(6, 10);
            } else {
                mBulletAtCollider.Set(cc_pz_at_src);
                mBulletAtCollider.SetStts(&mColliderStts);
                mAcchCir.SetWall(20.0f, 20.0f);

                field_0x7c8 = field_0x7cc;
                setActionMode(7, 0);
            }
        }
        
        daE_PZ_Execute(this);
    }

    return phase_state;
}

/* 807607EC-807609E0 00836C 01F4+00 1/1 0/0 0/0 .text            __ct__8daE_PZ_cFv */
daE_PZ_c::daE_PZ_c() {}

/* 80760BF8-80760C18 008778 0020+00 1/0 0/0 0/0 .text            daE_PZ_Create__FP8daE_PZ_c */
static int daE_PZ_Create(daE_PZ_c* i_this) {
    return i_this->create();
}

/* 80761CE0-80761D00 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_PZ_Method */
static actor_method_class l_daE_PZ_Method = {
    (process_method_func)daE_PZ_Create,
    (process_method_func)daE_PZ_Delete,
    (process_method_func)daE_PZ_Execute,
    (process_method_func)daE_PZ_IsDelete,
    (process_method_func)daE_PZ_Draw,
};

/* 80761D00-80761D30 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_PZ */
extern actor_process_profile_definition g_profile_E_PZ = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_PZ,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_PZ_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  175,                    // mPriority
  &l_daE_PZ_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

AUDIO_INSTANCES;

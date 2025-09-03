/**
 * @file d_a_e_ww.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_ww.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/d_debug_viewer.h"
#include "d/d_cc_uty.h"
#include <cmath.h>


/* ############################################################################################## */

namespace {
    /* 807EF904-807EF944 000038 0040+00 1/1 0/0 0/0 .data            cc_ww_src__22@unnamed@d_a_e_ww_cpp@
     */
    dCcD_SrcSph cc_ww_src = {
        {
            {0x0, {{0x400, 0x1, 0xC}, {0x0, 0x0}, 0x75}}, // mObj
            {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
        } // mSphAttr
    };
    
    /* 807EF944-807EF984 000078 0040+00 1/1 0/0 0/0 .data cc_ww_tg_src__22@unnamed@d_a_e_ww_cpp@ */
    dCcD_SrcSph cc_ww_tg_src = {
        {
            {0x0, {{0x0, 0x1, 0x0}, {0xD8FBFDFF, 0x43}, 0x0}}, // mObj
            {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
        } // mSphAttr
    };
} // namespace

/* ############################################################################################## */
/* 807EFB80-807EFB84 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
// static u8 lit_1109[1 + 3 /* padding */];

// /* 807EFB84-807EFB88 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
// #pragma push
// #pragma force_active on
// static u8 lit_1107[1 + 3 /* padding */];
// #pragma pop

// /* 807EFB88-807EFB8C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
// #pragma push
// #pragma force_active on
// static u8 lit_1105[1 + 3 /* padding */];
// #pragma pop

// /* 807EFB8C-807EFB90 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
// #pragma push
// #pragma force_active on
// static u8 lit_1104[1 + 3 /* padding */];
// #pragma pop

// /* 807EFB90-807EFB94 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
// #pragma push
// #pragma force_active on
// static u8 lit_1099[1 + 3 /* padding */];
// #pragma pop

// /* 807EFB94-807EFB98 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
// #pragma push
// #pragma force_active on
// static u8 lit_1097[1 + 3 /* padding */];
// #pragma pop

// /* 807EFB98-807EFB9C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
// #pragma push
// #pragma force_active on
// static u8 lit_1095[1 + 3 /* padding */];
// #pragma pop

// /* 807EFB9C-807EFBA0 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
// #pragma push
// #pragma force_active on
// static u8 lit_1094[1 + 3 /* padding */];
// #pragma pop

// /* 807EFBA0-807EFBA4 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
// #pragma push
// #pragma force_active on
// static u8 lit_1057[1 + 3 /* padding */];
// #pragma pop

// /* 807EFBA4-807EFBA8 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
// #pragma push
// #pragma force_active on
// static u8 lit_1055[1 + 3 /* padding */];
// #pragma pop

// /* 807EFBA8-807EFBAC 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
// #pragma push
// #pragma force_active on
// static u8 lit_1053[1 + 3 /* padding */];
// #pragma pop

// /* 807EFBAC-807EFBB0 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
// #pragma push
// #pragma force_active on
// static u8 lit_1052[1 + 3 /* padding */];
// #pragma pop

// /* 807EFBB0-807EFBB4 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
// #pragma push
// #pragma force_active on
// static u8 lit_1014[1 + 3 /* padding */];
// #pragma pop

// /* 807EFBB4-807EFBB8 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
// #pragma push
// #pragma force_active on
// static u8 lit_1012[1 + 3 /* padding */];
// #pragma pop

// /* 807EFBB8-807EFBBC 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
// #pragma push
// #pragma force_active on
// static u8 lit_1010[1 + 3 /* padding */];
// #pragma pop

// /* 807EFBBC-807EFBC0 -00001 0004+00 2/2 0/0 0/0 .bss             None */
// /* 807EFBBC 0001+00 data_807EFBBC @1009 */
// /* 807EFBBD 0003+00 data_807EFBBD None */
// static u8 struct_807EFBBC[4];

/* 807EFBC0-807EFBCC 000048 000C+00 0/1 0/0 0/0 .bss             @3921 */
#pragma push
#pragma force_active on
static u8 lit_3921[12];
#pragma pop

/* 807EFBCC-807EFBF4 000054 0028+00 7/8 0/0 0/0 .bss             l_HIO */
static daE_WW_HIO_c l_HIO;

/* 807EFBF4-807EFBF8 00007C 0004+00 2/2 0/0 0/0 .bss             None */
static u8 l_HIOInit;
static u8 lbl_237_bss_30; // What name for this variable ?

/* 807E76EC-807E7748 0000EC 005C+00 1/1 0/0 0/0 .text            __ct__12daE_WW_HIO_cFv */
daE_WW_HIO_c::daE_WW_HIO_c() {
    field_0x04 = -1;
    mModelSize = 1.0f;
    mAttackInterval = 150.0f;
    mRunAnm = 1.2f;
    mWalkAnm = 0.5f;
    mRunSpeed = 40.0f;
    mWolfEscapeSpeed = 25.0f;
    mLinkEscapeSpeed = 40.0f;
    mMoveRangeDebugDisp = 0;
}

#ifdef DEBUG
void daE_WW_HIO_c::genMessage(JORMContext* mctx) {
    mctx->genLabel("ホワイトウルフォス", 0x80000001, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("モデルサイズ", &mModelSize, 0.0f, 10.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("攻撃間隔", &mAttackInterval, 0.0f, 2000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("走りアニメーション", &mRunAnm, 0.0f, 10.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("歩きアニメーション", &mWalkAnm, 0.0f, 10.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("走る速度", &mRunSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("狼から逃亡速度", &mWolfEscapeSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("リンクから逃亡速度", &mLinkEscapeSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genCheckBox("移動範囲デバック表示", &mMoveRangeDebugDisp, 1, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
}
#endif

/* 807E7748-807E7800 000148 00B8+00 1/1 0/0 0/0 .text ctrlJoint__8daE_WW_cFP8J3DJointP8J3DModel */
int daE_WW_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    J3DJoint* _joint = i_joint;

    int jnt_no = _joint->getJntNo();;
    mDoMtx_stack_c::copy(i_model->getAnmMtx(jnt_no));

    switch (jnt_no) {
    case 3:
    case 4:
        mDoMtx_stack_c::YrotM(field_0x67C);
        mDoMtx_stack_c::ZrotM(field_0x67E);
    }

    i_model->setAnmMtx(jnt_no, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);

    return 1;
}

/* 807E7800-807E784C 000200 004C+00 1/1 0/0 0/0 .text JointCallBack__8daE_WW_cFP8J3DJointi */
int daE_WW_c::JointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model_p = j3dSys.getModel();
        daE_WW_c* i_this = reinterpret_cast<daE_WW_c*>(model_p->getUserArea());
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, model_p);
        }
    }
    return 1;
}

/* 807E784C-807E79D4 00024C 0188+00 1/1 0/0 0/0 .text            setHeadAngle__8daE_WW_cFv */
void daE_WW_c::setHeadAngle() {
    cXyz player_eye_pos = daPy_getPlayerActorClass()->eyePos;
    cXyz temp_r1; // Zero position ? effpos effective pos ?
    if (mActionID != ACTION_EXECUTE_MASTER) {
        if (field_0x75A != 0) {
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
            mDoMtx_stack_c::multVecZero(&temp_r1);
            s16 var_r29 = cLib_targetAngleY(&temp_r1, &player_eye_pos) - shape_angle.y;
            if (var_r29 > 0x4000) {
                var_r29 = 0x4000;
            }
            if (var_r29 < -0x4000) {
                var_r29 = -0x4000;
            }
            cLib_addCalcAngleS(&field_0x67C, (int)var_r29/2, 4, 0x400, 0x100);
            s16 var_r28 = cLib_targetAngleX(&temp_r1, &player_eye_pos) - shape_angle.x;
            if (var_r28 > 0x3000) {
                var_r28 = 0x3000;
            }
            if (var_r28 < -0x3000) {
                var_r28 = -0x3000;
            }
            cLib_addCalcAngleS(&field_0x67A, (int)var_r28/2, 4, 0x400, 0x100);
            return;
        }
        cLib_addCalcAngleS(&field_0x67C, 0, 4, 0x400, 0x100);
        cLib_addCalcAngleS(&field_0x67A, 0, 4, 0x400, 0x100);
    }
}

/* ############################################################################################## */

/* 807E79D4-807E7ABC 0003D4 00E8+00 1/1 0/0 0/0 .text            draw__8daE_WW_cFv */
int daE_WW_c::draw() {
    if (mActionID == ACTION_EXECUTE_MASTER) {
        if (l_HIO.mMoveRangeDebugDisp != 0) {
            cXyz curr_pos = current.pos;
            curr_pos.y += 100.0f;
            GXColor circle1Color = { 200, 0, 0, 255 };
            dDbVw_drawCircleOpa(curr_pos, field_0x6A8, circle1Color, 1, 0xC);
            curr_pos.y = current.pos.y - field_0x6AC;
            GXColor circle2Color = { 0, 0, 200, 255 };
            dDbVw_drawCircleOpa(curr_pos, field_0x6A8, circle2Color, 1, 0xC);
            curr_pos.y = current.pos.y + field_0x6AC;
            GXColor circle3Color = { 0, 0, 200, 255 };
            dDbVw_drawCircleOpa(curr_pos, field_0x6A8, circle3Color, 1, 0xC);
        }
        return 1;
    }
    J3DModel* model_p = mpMorf->getModel();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model_p, &tevStr);
    mpMorf->entryDL();
    cXyz sp14;
    sp14.set(current.pos.x, 100.0f + current.pos.y, current.pos.z);
    field_0x6D0 = dComIfGd_setShadow(field_0x6D0, 1, model_p, &sp14, 700.0f + nREG_F(19), 0.0f, current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 807E7ABC-807E7ADC 0004BC 0020+00 1/0 0/0 0/0 .text            daE_WW_Draw__FP8daE_WW_c */
static int daE_WW_Draw(daE_WW_c* i_this) {
    return static_cast<daE_WW_c*>(i_this)->draw();
}

/* ############################################################################################## */

/* 807E7ADC-807E7B80 0004DC 00A4+00 6/6 0/0 0/0 .text            setBck__8daE_WW_cFiUcff */
void daE_WW_c::setBck(int i_index, u8 i_attr, f32 i_morf, f32 i_rate) {
    mpMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_WW", i_index), i_attr, i_morf, i_rate, 0.0f, -1.0f);
}

/* 807E7B80-807E7BDC 000580 005C+00 1/1 0/0 0/0 .text            checkBck__8daE_WW_cFi */
bool daE_WW_c::checkBck(int i_index) {
    if (mpMorf->getAnm() == (J3DAnmTransform*)dComIfG_getObjectRes("E_WW", i_index)) {
        return 1;
    }
    return 0;
}

/* ############################################################################################## */

/* 807E7BDC-807E7C20 0005DC 0044+00 11/11 0/0 0/0 .text            setActionMode__8daE_WW_cFii */
void daE_WW_c::setActionMode(int i_action_id, int i_attack_action_id) {
    gravity = -5.0f;
    mActionID = i_action_id;
    mAttackActionID = i_attack_action_id;
    field_0x756 = 0;
    mAcch.ClrGrndNone();
    mAcch.OnLineCheck();
    mAcch.OffLineCheckNone();
}

/* ############################################################################################## */

/* 807E7C20-807E7E74 000620 0254+00 1/1 0/0 0/0 .text            damage_check__8daE_WW_cFv */
void daE_WW_c::damage_check() {
    if (field_0x724 == 0) {
        mCcStts.Move();
        if (mSph1[1].ChkAtShieldHit() != 0) {
            mSph1[1].OffAtShieldHit();
            if (daPy_getPlayerActorClass()->checkPlayerGuard()) {
                setActionMode(ACTION_EXECUTE_DAMAGE, 0);
                return;
            }
        }
        cCcD_Obj* var_r29 = NULL; // ObjHit ? Where damage is applied ?
        if (mSph2[0].ChkTgHit() != 0) {
            var_r29 = mSph2[0].GetTgHitObj();
        }
        if (mSph2[1].ChkTgHit() != 0) {
            var_r29 = mSph2[1].GetTgHitObj();
        }
        if (var_r29 != NULL) {
            mpHitObj = var_r29;
            if (mpHitObj->ChkAtType(AT_TYPE_IRON_BALL) != 0) {
                if (fopAcM_GetName(dCc_GetAc(mpHitObj->GetAc())) == PROC_Obj_Carry) {
                    health += (s16) 150;
                } else if (dComIfGp_checkPlayerStatus0(0, 0x400) != 0) {
                    health += (s16) 180;
                } else {
                    health = 0;
                }
            }
            cc_at_check(this, (dCcU_AtInfo*) &mpHitObj);
            if (mpHitObj->GetAtAtp() >= 1) {
                cXyz temp_r1; // Change !
                mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
                mDoMtx_stack_c::transM(-10.0f, -20.0f, 0.0f);
                mDoMtx_stack_c::multVecZero(&temp_r1);
                if (field_0xEB3 == 0) {
                    dComIfGp_setHitMark(1, this, &temp_r1, NULL, NULL, 0);
                } else {
                    dComIfGp_setHitMark(3, this, &temp_r1, NULL, NULL, 0);
                }
            }
            if (mpHitObj->ChkAtType(AT_TYPE_UNK) != 0) {
                field_0x724 = 20;
            } else {
                field_0x724 = 10;
            }
            if (field_0xEB0 <= 1) {
                field_0x724 = (u8)(KREG_S(8) + 10);
            }
            setActionMode(ACTION_EXECUTE_DAMAGE, 0);
        }
    }
}

/* ############################################################################################## */

/* 807E7E74-807E7FCC 000874 0158+00 1/1 0/0 0/0 .text            setRandamNumber__8daE_WW_cFv */
void daE_WW_c::setRandamNumber() {
    // Probably need further cleanup even if matching

    int var_r27 = 0;
    int var_r26 = field_0x6B6;
    if (field_0x6B6 < 5) {
        var_r26 = 5;
    }
    for (int i=0; i<var_r26; i++){
        int var_r29 = cM_rndF(var_r26 - 0.1f);
        if ((var_r27 & (1 << var_r29)) != 0) {
            var_r29 = cM_rndF(var_r26 - 0.1f);
            if ((var_r27 & (1 << var_r29)) != 0) {
                for (int j=0; j<var_r26; j++){
                    if ((var_r27 & (1 << j)) == 0) {
                        var_r29 = j;
                        break;
                    }
                }
            }
        }
        var_r27 |= 1 << var_r29;
        field_0x6FC[i] = var_r29;
        field_0x6D4[i] = 8.0f + cM_rndFX(3.0f);
    }
}

/* 807E7FCC-807E804C 0009CC 0080+00 2/2 0/0 0/0 .text            getNearPlayerAngle__8daE_WW_cFv */
s16 daE_WW_c::getNearPlayerAngle() {
    s16 player_angle = fopAcM_searchPlayerAngleY(this);
    s16 angle_y = player_angle - shape_angle.y;
    if (abs(angle_y) >= 0x1800) {
        if (angle_y < 0) {
            return player_angle + 0x1800;
        }
        return player_angle - 0x1800;
    }
    return shape_angle.y;
}

/* ############################################################################################## */

/* 807E804C-807E830C 000A4C 02C0+00 1/1 0/0 0/0 .text            setGroundAngle__8daE_WW_cFv */
void daE_WW_c::setGroundAngle() {
    // Change name for vectors
    Vec gnd_pos;

    if (field_0x75B != 0 && !mAcch.ChkGroundHit()) {
        cLib_addCalcAngleS(&field_0x674.x, 0, 4, 0x1000, 0x200);
        cLib_addCalcAngleS(&field_0x674.z, 0, 4, 0x1000, 0x200);
        cLib_addCalcAngleS(&field_0x6CE, 0, 4, 0x1000, 0x200);
        return;
    }

    cXyz sp14 = current.pos;
    sp14.y = mAcch.GetGroundH();
    dBgS_GndChk gnd_chk;
    
    if (field_0x75C == 0) {
        gnd_pos.x = sp14.x + 100.0f * cM_ssin(shape_angle.y);
        gnd_pos.y = 150.0f + sp14.y;
        gnd_pos.z = sp14.z + 100.0f * cM_scos(shape_angle.y);
        gnd_chk.SetPos(&gnd_pos);
        gnd_pos.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
        if (-1e9f == gnd_pos.y) {
            gnd_pos.y = (f32) sp14.y;
        }
        if (std::abs(gnd_pos.y - sp14.y) > 150.0f) {
            if (gnd_pos.y > sp14.y) {
                gnd_pos.y = sp14.y + 150.0f;
            } else {
                gnd_pos.y = sp14.y - 150.0f;
            }
        }
        field_0x6CE = -cLib_targetAngleX(&sp14, (cXyz*)&gnd_pos);
        field_0x674.x = 0;
        field_0x674.z = 0;
    } else {
        gnd_pos.x = sp14.x;
        gnd_pos.y = 150.0f + sp14.y;
        gnd_pos.z = 100.0f + sp14.z;
        gnd_chk.SetPos(&gnd_pos);
        gnd_pos.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
        if (-1e9f != gnd_pos.y) {
            field_0x674.x = -cM_atan2s(gnd_pos.y - sp14.y, gnd_pos.z - sp14.z);
        }
        gnd_pos.x = sp14.x + 50.0f;
        gnd_pos.y = sp14.y + 150.0f;
        gnd_pos.z = sp14.z;
        gnd_chk.SetPos(&gnd_pos);
        gnd_pos.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
        if (-1e9f != gnd_pos.y) {
            field_0x674.z = (s16)cM_atan2s(gnd_pos.y - sp14.y, gnd_pos.x - sp14.x);
        }
        field_0x6CE = 0;
    }
}

/* 807E830C-807E8518 000D0C 020C+00 3/3 0/0 0/0 .text            checkCreateBg__8daE_WW_cF4cXyz */
f32 daE_WW_c::checkCreateBg(cXyz i_vector) {
    cXyz sp14 = i_vector; // gnd_check_pos ?
    sp14.y += field_0x6AC;
    dBgS_GndChk gnd_chk;
    gnd_chk.SetPos(&sp14);
    f32 temp_f1 = dComIfG_Bgsp().GroundCross(&gnd_chk);
    if (temp_f1 != -1e9f) {
        if (std::abs(temp_f1 - current.pos.y) > field_0x6AC) {
            return -1e9f;
        }
        if (dComIfG_Bgsp().GetSpecialCode(gnd_chk) == 5 || dComIfG_Bgsp().GetPolyAtt0(gnd_chk) == 0xD) {
            cXyz temp_r1 = daPy_getPlayerActorClass()->current.pos;
            temp_r1.y += 100.0f;
            sp14 = i_vector;
            sp14.y = 100.0f + temp_f1;
            dBgS_LinChk lin_chk;
            lin_chk.Set(&temp_r1, &sp14, NULL);
            if (dComIfG_Bgsp().LineCross(&lin_chk) != 0) {
                cM3dGPla plane;
                dComIfG_Bgsp().GetTriPla(lin_chk, &plane);
                return -1e9f;
            }
            return temp_f1;
        }
    }
    return -1e9f;
}

/* 807E8560-807E8624 000F60 00C4+00 3/3 0/0 0/0 .text            checkAttackWall__8daE_WW_cFv */
int daE_WW_c::checkAttackWall() {
    // Change to BOOL ?
    cXyz curr_pos = current.pos;
    curr_pos.y += 100.0f;
    cXyz player_eye_pos = daPy_getPlayerActorClass()->eyePos;
    dBgS_LinChk line_chk;
    line_chk.Set(&curr_pos, &player_eye_pos, NULL);
    if (dComIfG_Bgsp().LineCross(&line_chk)) {
        return 0;
    }
    return 1;
}

/* 807E8624-807E8700 001024 00DC+00 1/1 0/0 0/0 .text            setBlurEffect__8daE_WW_cFv */
void daE_WW_c::setBlurEffect() {
    mParticleKey = dComIfGp_particle_set(mParticleKey, 0x8602, &current.pos, &tevStr);
    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKey);
    if (emitter != NULL) {
        emitter->setGlobalSRTMatrix(mpMorf->getModel()->getAnmMtx(2));
    }
}

/* 807E8700-807E8A08 001100 0308+00 2/2 0/0 0/0 .text            setAppearEffect__8daE_WW_cFv */
void daE_WW_c::setAppearEffect() {
    dBgS_ObjGndChk_All gnd_chk;
    cXyz gnd_pos;
    gnd_pos.set(100.0f * cM_ssin(shape_angle.y), 100.0f, 100.0f * cM_scos(shape_angle.y));
    gnd_pos += current.pos;
    gnd_chk.SetPos(&gnd_pos);
    gnd_pos.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
    if (gnd_pos.y != -1e9f) {
        csXyz sp10(0, 0, 0);
        cM3dGPla plane;
        dComIfG_Bgsp().GetTriPla(gnd_chk, &plane);
        cXyz* normal = plane.GetNP();
        sp10.y = (s16) cM_atan2s(normal->x, normal->z);
        sp10.x = (s16) cM_atan2s(normal->absXZ(), normal->y);
        dComIfGp_particle_setPolyColor(0x8A56, gnd_chk, &gnd_pos, &tevStr, &sp10, NULL, 0, NULL, -1, NULL);
        dComIfGp_particle_setPolyColor(0x8A57, gnd_chk, &gnd_pos, &tevStr, &sp10, NULL, 0, NULL, -1, NULL);
    }
}

/* 807E8A80-807E8B2C 001480 00AC+00 1/1 0/0 0/0 .text            s_child_ww__FPvPv */
static void* s_child_ww(void* i_actor, void* i_data) {
    if (i_actor != i_data && fopAcM_IsActor(i_actor)
    && fopAcM_GetName(i_actor) == PROC_E_WW && !fpcM_IsCreating(fopAcM_GetID(i_actor))) {
        if (fopAcM_GetLinkId((fopAc_ac_c*)i_actor) == fopAcM_GetID(i_data)) {
            lbl_237_bss_30++;
        }
    }
    return NULL;
}

/* ############################################################################################## */

/* 807E8B2C-807E8C54 00152C 0128+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* i_proc, void* i_data) {
    if (fopAcM_IsActor(i_proc) && !fpcM_IsCreating(fopAcM_GetID(i_proc)) && fopAcM_checkCarryNow((fopAc_ac_c *) i_proc) == 0) {
        f32 dist = fopAcM_searchActorDistance((fopAc_ac_c *) i_proc, (fopAc_ac_c *) i_data);
        if (dist < 100.0f && fopAcM_GetSpeedF((fopAc_ac_c *) i_proc) == 0.0f && fopAcM_GetSpeed((fopAc_ac_c *) i_proc).y == 0.0f) {
            if (fopAcM_GetName(i_proc) == PROC_Obj_Carry) {
                return i_proc;
            }
            if (fopAcM_GetName(i_proc) == PROC_NBOMB) {
                return i_proc;
            }
        }

        if (dist < 500.0f && (fopAcM_GetName(i_proc) == PROC_BOOMERANG || fopAcM_GetName(i_proc) == PROC_NBOMB)) {
            return i_proc;
        }
        if (dist < 700.0f && fopAcM_GetName(i_proc) == PROC_ARROW && fopAcM_GetSpeedF((fopAc_ac_c *) i_proc) != 0.0f) {
            return i_proc;
        }
    }

    return NULL;
}

/* 807E8C54-807E8E6C 001654 0218+00 4/4 0/0 0/0 .text            checkSideStep__8daE_WW_cFv */
int daE_WW_c::checkSideStep() {
    // Change to bool ? or BOOL ?
    cXyz* temp_r3;

    if (dComIfGp_checkPlayerStatus0(0, 0x4000) != 0) {
        temp_r3 = daPy_getPlayerActorClass()->getHookshotTopPos();
        if (temp_r3 != NULL && temp_r3->absXZ(current.pos) < 500.0f) {
            if ((s16)(cLib_targetAngleY(&current.pos, temp_r3) - shape_angle.y) < 0) {
                field_0x6C0 = 0;
            } else {
                field_0x6C0 = 1;
            }
            return 1;
        }
    }
    fopAc_ac_c* temp_r3_2 = (fopAc_ac_c*) fpcM_Search(s_obj_sub, this);
    if (temp_r3_2 != NULL) {
        if ((s16)(fopAcM_searchActorAngleY(this, temp_r3_2) - shape_angle.y) < 0) {
            field_0x6C0 = 0;
        } else {
            field_0x6C0 = 1;
        }
        return 1;
    }
    return 0;
}

/* 807E8E6C-807E8EEC 00186C 0080+00 1/1 0/0 0/0 .text            s_attack_ww__FPvPv */
static void* s_attack_ww(void* param_0, void* param_1) {
    // Change names ?
    if (param_0 != param_1 && fopAcM_IsActor(param_0) && fopAcM_GetName(param_0) == PROC_E_WW && !fpcM_IsCreating(fopAcM_GetID(param_0)) && ((daE_WW_c*)param_0)->isAttack() != 0) {
        return param_0;
    }
    return NULL;
}

/* ############################################################################################## */

/* 807E8EEC-807E905C 0018EC 0170+00 2/2 0/0 0/0 .text            createWolf__8daE_WW_cF4cXyzUc */
void daE_WW_c::createWolf(cXyz param_0, u8 param_1) {
    fpc_ProcID var_r30;
    u8 var_r29;
    u8 var_r28;

    // sp10 = param_1;
    cXyz sp1C = daPy_getPlayerActorClass()->current.pos;
    // f32 temp_f31 = ;
    csXyz sp14(0, cLib_targetAngleY(&param_0, &sp1C) + cM_rndFX(4096.0f), 0);
    u8 temp_r27 = field_0x6A8 / 100.0f;
    if (param_1 == 0) {
        var_r30 = fopAcM_GetLinkId(this);
        var_r29 = 0;
        var_r28 = 2;
    } else {
        var_r30 = fopAcM_GetID(this);
        var_r29 = field_0x6C0;
        var_r28 = 1;
    }
    mChildID[var_r29] = fopAcM_createChild(PROC_E_WW, var_r30, (var_r28 << 24) | (field_0x6B4 | (0xF0FF0000 | 0xF000) | (temp_r27 * 0x10)), &param_0, fopAcM_GetRoomNo(this), &sp14, NULL, -1, NULL);
}

/* ############################################################################################## */

/* 807EFCAC-807EFD60 000134 00B4+00 1/2 0/0 0/0 .bss             create_pos */
static cXyz create_pos[15] = {
    cXyz(1000.0f, 0.0f, 200.0f),
    cXyz(-700.0f, 0.0f, 100.0f),
    cXyz(700.0f, 0.0f, 100.0f),
    cXyz(-1000.0f, 0.0f, 200.0f),
    cXyz(-300.0f, 0.0f, -200.0f),
    cXyz(700.0f, 0.0f, -100.0f),
    cXyz(200.0f, 0.0f, 300.0f),
    cXyz(400.0f, 0.0f, -200.0f),
    cXyz(-700.0f, 0.0f, -100.0f),
    cXyz(-400.0f, 0.0f, 200.0f),
    cXyz(250.0f, 0.0f, 200.0f),
    cXyz(250.0f, 0.0f, -250.0f),
    cXyz(0.0f, 0.0f, 0.0f),
    cXyz(-250.0f, 0.0f, 250.0f),
    cXyz(-250.0f, 0.0f, -250.0f),
};

/* 807E905C-807E972C 001A5C 06D0+00 1/1 0/0 0/0 .text            executeMaster__8daE_WW_cFv */
void daE_WW_c::executeMaster() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz sp48 = daPy_getPlayerActorClass()->current.pos;
    f32 temp_f30 = sp48.absXZ(current.pos);
    cXyz sp3C;
    cXyz sp30;
    fopAcM_OffStatus(this, fopAcM_STATUS_UNK_004000);
    field_0x724 = 10;
    switch (mAttackActionID) {
    case 0:
        if ((field_0x6B4 != 0 || !(std::abs(current.pos.y - sp48.y) > 500.0f)) && temp_f30 < field_0x6A8) {
            if (field_0x6B4 == 0) {
                sp30.set(0.0f, 0.0f, 2500.0f + nREG_F(11));
            } else {
                sp30.set(0.0f, 0.0f, 3000.0f);
            }
            cLib_offsetPos(&sp3C, &sp48, fopCamM_GetAngleY(camera), &sp30);
            if (current.pos.abs(sp3C) < field_0x6A8) {
                f32 temp_f31 = checkCreateBg(sp3C);
                if (-1e9f != temp_f31) {
                    sp3C.y = temp_f31;
                    int var_r30 = 0;
                    lbl_237_bss_30 = 0;
                    fpcM_Search(s_child_ww, this);
                    if (lbl_237_bss_30 < field_0x6B6) {
                        var_r30 = field_0x6B6 - lbl_237_bss_30;
                        if (field_0x6B5 != 0xFF && var_r30 > (field_0x6B5 - field_0x6C8)) {
                            var_r30 = field_0x6B5 - field_0x6C8;
                        }
                    }
                    if (var_r30 > 0) {
                        field_0x65C = sp3C;
                        mAttackActionID = 1;
                        field_0x6B7 = var_r30;
                        field_0x6C0 = 0;
                        setRandamNumber();
                        field_0x728 = 0;
                        return;
                    }
                }
                mAttackActionID = 10;
                field_0x728 = 30;
            }
        }
        break;

    case 1:
        if (field_0x728 == 0) {
            int var_r30_2;
            if (field_0x6B4 == 0) {
                var_r30_2 = field_0x6FC[field_0x6C0] + 5;
            } else {
                var_r30_2 = field_0x6FC[field_0x6C0];
            }
            sp30 = create_pos[var_r30_2];
            sp30.x += cM_rndFX(200.0f);
            cLib_offsetPos(&sp3C, &field_0x65C, (s16)fopCamM_GetAngleY(camera), &sp30);
            f32 temp_f31_2 = checkCreateBg(sp3C);
            if (-1e9f != temp_f31_2) {
                sp3C.y = temp_f31_2;
            } else {
                sp3C = field_0x65C;
            }
            createWolf(sp3C, 1);
            field_0x6C8++;
            field_0x6C0++;
            if (field_0x6C0 >= field_0x6B7) {
                mAttackActionID = 3;
                field_0x6C0 = 0;
                field_0x6C4 = 0;
                setRandamNumber();
                field_0x728 = 20;
                return;
            }
            field_0x728 = field_0x6D4[field_0x6C0];
        }
        break;

    case 2:
        if (field_0x728 == 0) {
            mAttackActionID = 3;
            field_0x6C0 = 0;
            field_0x6C4 = 0;
            setRandamNumber();
            field_0x728 = 0;
        }
        break;

    case 3:
        if (field_0x728 == 0) {
            if (field_0x6FC[field_0x6C4] < field_0x6B7) {
                fopAc_ac_c* sp8;
                fopAcM_SearchByID(mChildID[field_0x6FC[field_0x6C4]], &sp8);
                if (sp8 != NULL) {
                    ((daE_WW_c*)sp8)->setAttack();
                }
                field_0x6C0++;
                if (field_0x6C0 >= field_0x6B7) {
                    field_0x6C4 = 10;
                }
            }
            field_0x6C4++;
            if (field_0x6C4 >= 10) {
                mAttackActionID = 10;
                field_0x728 = 50;
                return;
            }
            if (field_0x6FC[field_0x6C4] < field_0x6B7) {
                field_0x728 = field_0x6D4[field_0x6C4] * 2;
            }
        }
        break;

    case 10:
        if (field_0x728 == 0) {
            mAttackActionID = 0;
        }
        if (field_0x6B5 != 0xFF && field_0x6C8 >= field_0x6B5) {
            fopAcM_delete(this);
        }
        break;
    }
}

/* ############################################################################################## */

/* 807E972C-807E99B8 00212C 028C+00 1/1 0/0 0/0 .text            executeWait__8daE_WW_cFv */
void daE_WW_c::executeWait() {
    // s32 temp_r0;
    // s32 var_r28;
    // std *temp_r3_3;
    // void **temp_r3;
    // void **temp_r3_2;
    // void *temp_r1;

    // temp_r1 = sp - 0x30;
    switch (mAttackActionID) {
    case 0:
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_004000);
        setBck(ANM_APPEAR, 0, 0.0f, 1.0f);
        mAttackActionID = 1;
        break;

    case 1:
        if (mpMorf->checkFrame(3.0f)) {
            mSound.startCreatureSound(Z2SE_EN_WW_APPEAR, 0, -1);
            setAppearEffect();
        }
        if (mpMorf->checkFrame(15.0f) || mpMorf->checkFrame(20.0f)) {
            mSound.startCreatureSound(Z2SE_EN_WW_FOOTNOTE, 0, -1);
        }
        if (mpMorf->isStop()) {
            if (field_0x758 != 0) {
                mAttackActionID = 10;
                return;
            }
            setBck(ANM_WAIT, 2, 3.0f, 1.0f);
            return;
        }
        break;

    case 10:
        bool var_r28 = true;
        if (checkAttackWall() == 0) {
            var_r28 = false;
        } else if (field_0x6B4 == 1) {
            if (cM_rnd() < 0.3f) {
                var_r28 = false;
            }
        } else if (field_0x6B4 == 0) {
            if (std::abs(current.pos.y - daPy_getPlayerActorClass()->current.pos.y) > 500.0f) {
                var_r28 = false;
            }
        }
        fopAcM_OffStatus(this, fopAcM_STATUS_UNK_004000);
        if (var_r28) {
            setActionMode(2, 0);
            field_0x756 = 1;
            return;
        }
        field_0x734 = l_HIO.mAttackInterval + cM_rndFX(30.0f);
        setBck(ANM_WAIT, 2, 3.0f, 1.0f);
        setActionMode(3, 10);
        break;
    }
}

/* ############################################################################################## */

/* 807E99B8-807E9C1C 0023B8 0264+00 1/1 0/0 0/0 .text            calcJumpSpeed__8daE_WW_cFv */
int daE_WW_c::calcJumpSpeed() {
    f32 var_f31 = field_0x65C.y - current.pos.y;
    int var_r28 = 0;
    int var_r29 = 0;
    int unused = 0;
    if (var_f31 > 0.0f) {
        while (var_f31 >= 35.0f) {
            var_f31 -= 35.0f + 3.0f * var_r28;
            var_r28++;
            var_r29++;
        }
    } else {
        while (var_f31 <= -35.0f) {
            var_f31 += 35.0f + 3.0f * var_r28;
            var_r29++;
        }
    }
    speed.y = 35.0f + 3.0f * var_r28 + nREG_F(7);
    field_0x75B = 2;
    speedF = current.pos.absXZ(field_0x65C) / (17.0f + var_r29 + nREG_F(8));
    if (speedF < 20.0f + nREG_F(10)) {
        speedF = 20.0f + nREG_F(10);
    }
    gravity = -3.0f + nREG_F(9);
    return var_r29; // Jump speed ?
}

/* ############################################################################################## */

/* 807E9C1C-807EA474 00261C 0858+00 2/1 0/0 0/0 .text            executeAttack__8daE_WW_cFv */
void daE_WW_c::executeAttack() {
    daPy_py_c* player_p = daPy_getPlayerActorClass();
    
    switch (mAttackActionID) {
    case 0:
        setBck(ANM_RUN, 2, 3.0f, l_HIO.mRunAnm); // Change BCK index to enum ?
        mAttackActionID = 1;
        field_0x728 = 10;
        speedF = l_HIO.mRunSpeed;
        field_0x72C = 300;
        /* fallthrough */

    case 1:
        field_0x75A = 1;
        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 4, 0x800, 0x100);
        current.angle.y = shape_angle.y;
        if (checkAttackWall() == 0) {
            setActionMode(3, 2);
        }
        if (field_0x728 == 0) {
            if (checkMoveOut() == 0) {
                if (fopAcM_searchPlayerDistance(this) < (800.0f + nREG_F(18) + mDistCheckModifier)) {
                    mAttackActionID = 20;
                    setBck(ANM_JUMP_ATTACKA, 0, 3.0f, 1.0f);
                    mSound.startCreatureVoice(Z2SE_EN_WW_V_ATTACK, -1);
                    speed.y = 0.0f;
                    speedF = 0.0f;
                }
                break;
            }
            return;
        }
        if (mpMorf->getFrame() <= 5.0f && checkSideStep() != 0) {
            mAttackActionID = 10;
            speed.y = 0.0f;
            speedF = 0.0f;
        }
        if (field_0x72C == 0 && fopAcM_otherBgCheck(this, daPy_getPlayerActorClass()) != 0) {
            setActionMode(3, 2);
            return;
        }
        break;
    
    case 10:
        field_0x6CC = fopAcM_searchPlayerAngleY(this);
        shape_angle.y = field_0x6CC;
        if (field_0x6C0 == 0) {
            setBck(ANM_SIDESTEP_LEFT, 0, 3.0f, 1.0f);
            current.angle.y = field_0x6CC + 0x1800 + cM_rndFX(2000.0f);
        } else {
            setBck(ANM_SIDESTEP_RIGHT, 0, 3.0f, 1.0f);
            current.angle.y = field_0x6CC - 0x1800 + cM_rndFX(2000.0f);
        }
        mAttackActionID = 11; // Change to anm run ??
        /* fallthrough */

    case 11:
        field_0x75A = 1;
        if (mpMorf->checkFrame(5.0f) != 0) {
            field_0x75B = 1;
            speed.y = 20.0f + nREG_F(15);
            speedF = nREG_F(16) + 40.0f + cM_rndFX(5.0f);
            mAttackActionID = 12;
            mSound.startCreatureSound(Z2SE_EN_WW_JUMP, 0, -1);
        }
        break;

    case 12:
        field_0x75A = 1;
        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 4, 0x800, 0x100);
        if (mAcch.ChkGroundHit() != 0) {
            speedF = 0.0f;
            if (mpMorf->isStop() != 0) {
                if (checkMoveOut() == 0) {
                    f32 var_f31 = 800.0f + nREG_F(18) + mDistCheckModifier;
                    if (player_p->getSpeedF() >= 18.0f) {
                        var_f31 = 1000.0f + nREG_F(18) + mDistCheckModifier;
                    }
                    if (fopAcM_searchPlayerDistance(this) < var_f31 && checkAttackWall() != 0) {
                        mAttackActionID = 20;
                        setBck(ANM_JUMP_ATTACKA, 0, 3.0f, 1.0f); // Change to ANM_JUMP ?
                        mSound.startCreatureVoice(Z2SE_EN_WW_V_ATTACK, -1);
                    } else {
                        mAttackActionID = 0;
                    }
                    break;
                }
                return;
            }
        }
        break;

    case 20:
        cXyz sp2C(0.0f, 0.0f, (17.0f + nREG_F(8)) * player_p->getSpeedF());
        cLib_offsetPos(&field_0x65C, &player_p->current.pos, player_p->shape_angle.y, &sp2C);
        cLib_addCalcAngleS(&shape_angle.y, cLib_targetAngleY(&current.pos, &field_0x65C), 4, 0x1000, 0x100);
        current.angle.y = shape_angle.y;
        if (mpMorf->checkFrame(2.0f) != 0) {
            mSound.startCreatureSound(Z2SE_EN_WW_JUMP, 0, -1);
        }
        if (mpMorf->isStop() != 0) {
            calcJumpSpeed();
            if (field_0x6B4 == 0) {
                mAttackActionID = 21;
                field_0x756 = 0;
            } else {
                mAttackActionID = 25;
                field_0x756 = 0;
                mAcch.SetGrndNone();
                mAcch.OffLineCheck();
                mAcch.OnLineCheckNone();
            }
            setBck(ANM_JUMP_ATTACKB, 2, 3.0f, 1.0f);
            shape_angle.x = cM_atan2s(speedF, speed.y) - 0x4000;
        }
        break;

    case 21:
        mSph2[0].SetTgType(0xD8FBFDFF);
        mSph2[1].SetTgType(0xD8FBFDFF);
        cLib_chaseF(&speedF, 0.0f, 1.0f);
        mSph1[1].OnAtSetBit();
        if (mAcch.ChkGroundHit()) {
            speedF = 20.0f + ZREG_F(0);
            setBck(ANM_JUMP_ATTACKC, 0, 3.0f, 1.0f);
            mAttackActionID = 22;
        }
        break;

    case 22:
        cLib_chaseF(&speedF, 0.0f, 1.0f + ZREG_F(1));
        if (mpMorf->checkFrame(2.0f) != 0) {
            mSound.startCreatureSound(Z2SE_EN_WW_FOOTNOTE, 0, -1);
        }
        if (mpMorf->isStop() != 0) {
            setActionMode(3, 0);
        }
        break;

    case 25:
    case 26:
        mAcch.ClrGroundHit();
        mSph2[0].SetTgType(0xD8FBFDFF);
        mSph2[1].SetTgType(0xD8FBFDFF);
        cLib_chaseF(&speedF, 0.0f, 1.0f);
        mSph1[1].OnAtSetBit();
        cXyz sp20(current.pos.x, 1000.0f + current.pos.y, current.pos.z);
        dBgS_GndChk gnd_chk;
        gnd_chk.SetPos(&sp20);
        if (-1e9f != dComIfG_Bgsp().GroundCross(&gnd_chk)) {
            if (mAttackActionID == 25 && current.pos.y < sp20.y) {
                setAppearEffect();
                mSound.startCreatureSound(Z2SE_EN_WW_HIDE, 0, -1);
                mAttackActionID = 26;
            }
            if (attention_info.position.y < sp20.y) {
                field_0x75D = 0;
            }
            if (current.pos.y < (sp20.y - 500.0f)) {
                fopAcM_delete(this);
            }
        }
        break;
    }
    if (mAcch.ChkGroundHit()) {
        cLib_addCalcAngleS(&shape_angle.x, 0, 4, 0x1000, 0x200);
        return;
    }
    cLib_addCalcAngleS(&shape_angle.x, cM_atan2s(speedF, speed.y) - 0x4000, 4, 0x800, 0x200);

}

/* ############################################################################################## */

/* 807EA474-807EA870 002E74 03FC+00 2/2 0/0 0/0 .text            checkAttackStart__8daE_WW_cFv */
int daE_WW_c::checkAttackStart() {
    // Change to bool ?
    if (field_0x734 == 0) {
        s16 temp_r25 = fopCamM_GetAngleY(dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0))) + 0x8000;
        s16 temp_r28 = temp_r25 - fopAcM_searchPlayerAngleY(this);
        cXyz sp14 = daPy_getPlayerActorClass()->current.pos;
        if (field_0x6B4 != 1) {
            if (fpcM_Search(s_attack_ww, this) != NULL) {
                return 0;
            }
        }
        else {
            if (abs(temp_r28) > 0x5000) {
                if (current.pos.absXZ(sp14) > 1400.0f + nREG_F(18) + mDistCheckModifier) {
                    fopAcM_delete(this);
                    return 1;
                }
            }
        }
        if (field_0x6B4 == 0 && std::abs(current.pos.y - sp14.y) > 500.0f) {
            return 0;
        }
        if (abs(temp_r28) < nREG_S(9) + 0x1555 && field_0x668.absXZ(sp14) < 800.0f + field_0x6A8) {
            BOOL temp = (checkCreateBg(current.pos) == -1e9)^1;
            if (temp != 0 && checkAttackWall() != 0) {
                setActionMode(2, 0);
                field_0x756 = 1;
                return 1;
            }
        }
    }
    return 0;
}

/* ############################################################################################## */

/* 807EA870-807EB650 003270 0DE0+00 1/1 0/0 0/0 .text            executeChase__8daE_WW_cFv */
void daE_WW_c::executeChase() {
//     cXyz sp28;
//     s32 sp24;
//     JAISoundID sp20;
//     JAISoundID sp1C;
//     JAISoundID sp18;
//     JAISoundID sp14;
//     s32 (*sp10)(daPy_py_c *);
//     s32 (*spC)(daPy_py_c *);
    s16 sp8;
//     f32 temp_f31;
//     s32 temp_r0;
//     s32 var_r29;
//     s32 var_r29_2;
//     void **temp_r3;
//     void **temp_r3_2;
//     void **temp_r3_3;
//     void **temp_r3_4;

    cXyz sp28 = daPy_getPlayerActorClass()->current.pos;
    f32 temp_f31 = sp28.absXZ(current.pos);
    switch (mAttackActionID) {
    case 5:
        if (temp_f31 > 1500.0f + nREG_F(18) + mDistCheckModifier) {
            mAttackActionID = 10;
            setBck(ANM_WAIT, 2, 3.0f, 1.0f);
            return;
        }

    case 0:
        setBck(ANM_RUN, 2, 3.0f, l_HIO.mRunAnm);
        mAttackActionID = 1;
        speedF = l_HIO.mRunSpeed;
        field_0x734 = l_HIO.mAttackInterval + cM_rndFX(30.0f);
        field_0x728 = 150;

    case 1:
        if (calcMoveDir(&sp8, fopAcM_searchPlayerAngleY(this) - 0x8000) != 0) {
            cLib_addCalcAngleS(&shape_angle.y, sp8, 4, 0x800, 0x100);
        } else {
            cLib_addCalcAngleS(&shape_angle.y, sp8, 8, 0x200, 0x80);
        }
        current.angle.y = shape_angle.y;
        bool var_r29 = false;
        if (temp_f31 > 1500.0f + nREG_F(18) + mDistCheckModifier - 200.0f) {
            var_r29 = true;
        }
        if ((field_0x6B4 == 0) && (field_0x728 == 0) && (daPy_getPlayerActorClass()->speedF == 0.0f)) {
            var_r29 = true;
        }
        if (var_r29) {
            mAttackActionID = 2;
            setBck(ANM_TURN, 0, 3.0f, 1.0f);
            mSound.startCreatureSound(Z2SE_EN_WW_JUMP, 0, -1);
        }
        break;

    case 2:
        field_0x75A = 1;
        cLib_addCalcAngleS(&shape_angle.y, getNearPlayerAngle(), 8, 0x800, 0x100);
        cLib_chaseF(&speedF, 0.0f, 1.5f);
        if (speedF == 0.0f && abs(shape_angle.y - fopAcM_searchPlayerAngleY(this)) < 0x2000) {
            mAttackActionID = 10;
            setBck(ANM_WAIT, 2, 3.0f, 1.0f);
        }
        break;

    case 10:
        mAttackActionID = 11;
        field_0x740 = 30;
        /* fallthrough */

    case 11:
        field_0x75A = 1;
        cLib_addCalcAngleS(&shape_angle.y, getNearPlayerAngle(), 4, 0x800, 0x100);
        current.angle.y = shape_angle.y;
        if (daPy_getPlayerActorClass()->speedF != 0.0f) {
            if (temp_f31 < 1400.0f + nREG_F(18) + mDistCheckModifier) {
                if (field_0x730 != 0 || temp_f31 < 1200.0f + nREG_F(18) + mDistCheckModifier) {
                    mAttackActionID = 0xC;
                    setBck(ANM_RUN, 2, 3.0f, l_HIO.mRunAnm);
                } else {
                    setBck(ANM_BACKSTEP, 0, 3.0f, 1.0f);
                    mSound.startCreatureSound(Z2SE_EN_WW_JUMP, 0, -1);
                    mAttackActionID = 0xF;
                    speedF = -40.0f;
                    speed.y = 25.0f;
                    field_0x75B = 1;
                    field_0x730 = 0x3C;
                }
            } else if (temp_f31 > 1800.0f + nREG_F(18) + mDistCheckModifier) {
                setBck(ANM_RUN, 2, 3.0f, l_HIO.mRunAnm);
                mAttackActionID = 0x14;
                speedF = l_HIO.mRunSpeed - 10.0f;
            }
        }
        if (checkSideStep() != 0) {
            mAttackActionID = 0x19;
            speed.y = 0.0f;
            speedF = 0.0f;
        }
        if (checkWalkStart() == 0 && checkAttackStart() == 0) {
            if (checkMoveOut() != 0) {
                return;
            }
        }
        break;

    case 12:
        field_0x728 = 30;
        mAttackActionID = 0xD;
        /* fallthrough */

    case 13:
        if (daPy_getPlayerActorClass()->checkNowWolf() != 0) {
            speedF = l_HIO.mWolfEscapeSpeed;
        } else {
            speedF = l_HIO.mLinkEscapeSpeed;
        }
        if (calcMoveDir(&sp8, fopAcM_searchPlayerAngleY(this) - 0x8000) != 0) {
            cLib_addCalcAngleS(&shape_angle.y, sp8, 4, 0x800, 0x200);
        } else {
            cLib_addCalcAngleS(&shape_angle.y, sp8, 8, 0x200, 0x80);
        }
        current.angle.y = shape_angle.y;
        if (field_0x728 == 0) {
            mAttackActionID = 0xE;
            field_0x728 = 150;
        }
        break;

    case 14:
        if (daPy_getPlayerActorClass()->checkNowWolf() != 0) {
            cLib_chaseF(&speedF, l_HIO.mWolfEscapeSpeed, 1.0f);
        } else {
            cLib_chaseF(&speedF, l_HIO.mLinkEscapeSpeed, 1.0f);
        }
        if (calcMoveDir(&sp8, (fopAcM_searchPlayerAngleY(this) - 0x8000)) != 0) {
            cLib_addCalcAngleS(&shape_angle.y, sp8, 4, 0x800, 0x200);
        } else {
            cLib_addCalcAngleS(&shape_angle.y, sp8, 8, 0x200, 0x80);
        }
        current.angle.y = shape_angle.y;
        bool var_r29_2 = false;
        if (temp_f31 > 1500.0f + nREG_F(18) + mDistCheckModifier) {
            var_r29_2 = true;
        }
        if (field_0x6B4 == 0 && field_0x728 == 0 && daPy_getPlayerActorClass()->speedF == 0.0f) {
            var_r29_2 = true;
        }
        if (var_r29_2) {
            mAttackActionID = 2;
            setBck(ANM_TURN, 0, 3.0f, 1.0f);
            mSound.startCreatureSound(Z2SE_EN_WW_JUMP, 0, -1);
        }
        break;

    case 15:
        field_0x75A = 1;
        if (!mAcch.ChkGroundHit()) {
            cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 4, 0x800, 0x100);
            current.angle.y = shape_angle.y;
        } else {
            speedF = 0.0f;
            if (mpMorf->isStop()) {
                setBck(ANM_WAIT, 2, 3.0f, 1.0f);
                mAttackActionID = 0xA;
            }
        }
        break;

    case 20:
        field_0x73C = 0;
        /* fallthrough */

    case 21:
        field_0x75A = 1;
        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 4, 0x800, 0x100);
        current.angle.y = shape_angle.y;
        if (temp_f31 < 1600.0f + nREG_F(18) + mDistCheckModifier) {
            setBck(ANM_WAIT, 2, 3.0f, 1.0f);
            mAttackActionID = 0xA;
            speedF = 0.0f;
        }
        if (mpMorf->getFrame() <= 5.0f) {
            if (checkSideStep() != 0) {
                mAttackActionID = 0x19;
                speed.y = 0.0f;
                speedF = 0.0f;
            }
            if (field_0x73C == 0 && checkMoveOut() != 0) {
                return;
            }
        }
        break;

    case 25:
        field_0x6CC = fopAcM_searchPlayerAngleY(this);
        shape_angle.y = field_0x6CC;
        if (field_0x6C0 == 0) {
            setBck(ANM_SIDESTEP_LEFT, 0, 3.0f, 1.0f);
            current.angle.y = field_0x6CC + 0x3800 + cM_rndFX(2000.0f);
        } else {
            setBck(ANM_SIDESTEP_RIGHT, 0, 3.0f, 1.0f);
            current.angle.y = field_0x6CC - 0x3800 + cM_rndFX(2000.0f);
        }
        mAttackActionID = 0x1B;
        /* fallthrough */

    case 27:
        field_0x75A = 1;
        if (mpMorf->checkFrame(5.0f) != 0) {
            speed.y = 20.0f + nREG_F(15);
            speedF = nREG_F(16) + (40.0f + cM_rndFX(5.0f));
            field_0x75B = 1;
            mAttackActionID = 0x1C;
            mSound.startCreatureSound(Z2SE_EN_WW_JUMP, 0, -1);
        }
        break;

    case 28:
        field_0x75A = 1;
        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 4, 0x800, 0x100);
        if (mAcch.ChkGroundHit() != 0) {
            speedF = 0.0f;
            if (mpMorf->isStop() != 0) {
                setBck(ANM_WAIT, 2, 3.0f, 1.0f);
                mAttackActionID = 0xA;
            }
        }
        break;
    }

    cLib_addCalcAngleS(&shape_angle.x, 0, 8, 0x400, 0x100);
}

/* ############################################################################################## */
/* 807EF84C-807EF850 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5607 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5607 = 14.0f;
COMPILER_STRIP_GATE(0x807EF84C, &lit_5607);
#pragma pop

/* 807EF850-807EF854 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5608 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5608 = 21.0f;
COMPILER_STRIP_GATE(0x807EF850, &lit_5608);
#pragma pop

/* 807EB650-807EB964 004050 0314+00 1/1 0/0 0/0 .text            executeDamage__8daE_WW_cFv */
void daE_WW_c::executeDamage() {
    // JAISoundID spC;
    // JAISoundID sp8;
    // s32 temp_r0;
    // void **temp_r3;
    // void **temp_r3_2;

    // if (health <= 0) {
    //     field_0x724 = 5;
    //     OffTgSetBit(mSph2[0]);
    //     OffTgSetBit(mSph2[1]);
    //     field_0x75D = 0;
    //     attention_info.flags = 0;
    // }
    // temp_r0 = mAttackActionID;
    // switch (temp_r0) {                              /* irregular */
    // case 0:
    //     if (health > 0) {
    //         setBck(ANM_DAMAGE, 0, 3.0f, 1.0f);
    //         temp_r3 = &mSound;
    //         temp_r3.startCreatureVoice(0x70389, -1);
    //         if (mAcch.ChkGroundHit() != 0) {
    //             speed.y = 20.0f;
    //         }
    //         speedF = 40.0f;
    //         mAttackActionID = 1;
    //     } else {
    //         setBck(ANM_DEAD, 0, 3.0f, 1.0f);
    //         temp_r3_2 = &mSound;
    //         temp_r3_2.startCreatureVoice(0x7038A, -1);
    //         if (mAcch.ChkGroundHit() != 0) {
    //             speed.y = 20.0f;
    //         }
    //         speedF = 30.0f;
    //         mAttackActionID = 5;
    //         field_0x75C = 1;
    //     }
    //     field_0x75B = 1;
    //     shape_angle = 0;
    //     current.angle.y = field_0xEA2 + 0x8000;
    //     shape_angle.y = field_0xEA2;
    //     return;
    // case 1:
    //     if (mpMorf->checkFrame(@119044.unkCC) != 0) {
    //         setPlaySpeed((mDoExt_morf_c *) mpMorf, 0.0f);
    //     }
    //     if (mAcch.ChkGroundHit() != 0) {
    //         field_0x75B = 0;
    //         mAttackActionID = 2;
    //         setPlaySpeed((mDoExt_morf_c *) mpMorf, 1.0f);
    //         return;
    //     }
    //     return;
    // case 2:
    //     cLib_chaseF(&speedF, 0.0f, 2.0f);
    //     if (mpMorf->isStop() != 0) {
    //         setActionMode(3, 0);
    //         return;
    //     }
    //     break;
    // case 5:
    //     if (mpMorf->checkFrame(@119044.unkD0) != 0) {
    //         setPlaySpeed((mDoExt_morf_c *) mpMorf, 0.0f);
    //     }
    //     if (mAcch.ChkGroundHit() != 0) {
    //         field_0x75B = 0;
    //         mAttackActionID = 6;
    //         setPlaySpeed((mDoExt_morf_c *) mpMorf, 1.0f);
    //         return;
    //     }
    //     break;
    // case 6:
    //     if (mAcch.ChkGroundHit() != 0) {
    //         cLib_chaseF(&speedF, 0.0f, 2.0f);
    //     }
    //     if (mpMorf->isStop() != 0) {
    //         fopAcM_createDisappear((fopAc_ac_c *) &current.pos.x, 0xA, 0, 0x1B);
    //         fopAcM_delete(this);
    //     }
    //     break;
    // }
}

/* 807EB964-807EBAE0 004364 017C+00 3/3 0/0 0/0 .text            checkMoveOut__8daE_WW_cFv */
int daE_WW_c::checkMoveOut() {
    // Change to BOOL ?

    if (field_0x668.absXZ(current.pos) > field_0x6A8) {
        setActionMode(5, 0);
        return 1;
    }
    return 0;
}

/* 807EBAE0-807EC940 0044E0 0E60+00 2/1 0/0 0/0 .text            executeMoveOut__8daE_WW_cFv */
void daE_WW_c::executeMoveOut() {
//     f32 temp_f1;
//     f32 temp_f1_2;
//     f32 temp_f31;
//     s16 temp_r28;
//     s32 temp_r0;
//     void **temp_r3;
//     void **temp_r3_2;
//     void **temp_r3_3;
//     void *temp_r1;

//     temp_r1 = sp - 0x50;
//     (sp14, daPy_getPlayerActorClass()->current.pos);
//     temp_r0 = mAttackActionID;
//     switch (temp_r0) {
//     case 0:
//         field_0x728 = 30;
//         sp20 = (l_HIO.mAttackInterval + cM_rndFX(30.0f));
//         field_0x734 = sp24;
//         /* fallthrough */
//     case 10:
//         temp_f31 = absXZ(sp14, (Vec *) &current.pos.x);
//         field_0x75A = 1;
//         cLib_addCalcAngleS(&shape_angle.y, getNearPlayerAngle(), 4, 0x800, 0x100);
//         current.angle.y = shape_angle.y;
//         if (absXZ(&field_0x668, sp14) > field_0x6A8) {
//             if (temp_f31 < (1200.0f + nREG_F(18) + mDistCheckModifier)) {
//                 if (field_0x728 == 0) {
//                     mAttackActionID = 0xB;
//                 }
//                 goto block_20;
//             }
//             if (temp_f31 > (3000.0f + nREG_F(18) + mDistCheckModifier)) {
//                 if (fopAcM_CheckCondition((fopAc_ac_c *) 4) != 0) {
//                     fopAcM_delete(this);
//                     return;
//                 }
//                 goto block_20;
//             }
//             if ((absXZ(&field_0x668, (Vec *) &current.pos.x) > (200.0f + field_0x6A8)) && (field_0x728 == 0)) {
//                 mAttackActionID = 0xB;
//             }
//             goto block_20;
//         }
//         if (temp_f31 < (1200.0f + nREG_F(18) + mDistCheckModifier)) {
//             if (field_0x728 == 0) {
//                 mAttackActionID = 0xF;
//             }
//             goto block_20;
//         }
//         if ((checkAttackStart() == 0) && (checkWalkStart() == 0)) {
//             if (temp_f31 > (1800.0f + nREG_F(18) + mDistCheckModifier)) {
//                 setBck(ANM_RUN, 2, 3.0f, l_HIO.mRunAnm);
//                 setActionMode(3, 0x15);
//                 speedF = l_HIO.mRunSpeed - 10.0f;
//                 field_0x73C = 30;
//                 return;
//             }
// block_20:
//             if (checkSideStep() != 0) {
//                 mAttackActionID = 0x19;
//                 speed.y = 0.0f;
//                 speedF = 0.0f;
//             }
//             if (mAttackActionID == 0) {
//                 speedF = 0.0f;
//                 setBck(ANM_WAIT, 2, 3.0f, 1.0f);
//                 mAttackActionID = 0xA;
//                 return;
//             }
//             /* Duplicate return node #45. Try simplifying control flow for better match */
//             return;
//         }
//     default:
//         return;
//     case 11:
//         setBck(ANM_RUN, 2, 3.0f, l_HIO.mRunAnm);
//         speedF = l_HIO.mRunSpeed;
//         mAttackActionID = 0xC;
//         field_0x728 = 0x3C;
//         /* fallthrough */
//     case 12:
//         cLib_addCalcAngleS(&shape_angle.y, cLib_targetAngleY((Vec *) &current.pos.x, (Vec *) &field_0x668), 4, 0x800, 0x100);
//         current.angle.y = shape_angle.y;
//         if ((absXZ(&field_0x668, (Vec *) &current.pos.x) < (field_0x6A8 - 100.0f)) && ((field_0x728 == 0) || (absXZ(sp14, (Vec *) &current.pos.x) > (1500.0f + nREG_F(18) + mDistCheckModifier)))) {
//             setActionMode(3, 2);
//             setBck(ANM_TURN, 0, 3.0f, 1.0f);
//             temp_r3 = &mSound;
//             temp_r3.startCreatureSound(Z2SE_EN_WW_JUMP, 0, -1);
//             return;
//         }
//         /* Duplicate return node #45. Try simplifying control flow for better match */
//         return;
//     case 15:
//         setBck(ANM_RUN, 2, 3.0f, l_HIO.mRunAnm);
//         speedF = l_HIO.mRunSpeed;
//         mAttackActionID = 0x10;
//         field_0x728 = 0x3C;
//         temp_r28 = cLib_targetAngleY((Vec *) &current.pos.x, (Vec *) &field_0x668);
//         if ((temp_r28 - fopAcM_searchPlayerAngleY(this)) < 0) {
//             field_0x6CC = 0x2000;
//         } else {
//             field_0x6CC = -0x2000;
//         }
//         /* fallthrough */
//     case 16:
//         cLib_addCalcAngleS(&shape_angle.y, (field_0x6CC + cLib_targetAngleY((Vec *) &current.pos.x, (Vec *) &field_0x668)), 4, 0x800, 0x100);
//         current.angle.y = shape_angle.y;
//         if ((absXZ(&field_0x668, (Vec *) &current.pos.x) < (field_0x6A8 - 100.0f)) && ((field_0x728 == 0) || (absXZ(sp14, (Vec *) &current.pos.x) > (1500.0f + nREG_F(18) + mDistCheckModifier)))) {
//             setActionMode(3, 2);
//             setBck(ANM_TURN, 0, 3.0f, 1.0f);
//             temp_r3_2 = &mSound;
//             temp_r3_2.startCreatureSound(Z2SE_EN_WW_JUMP, 0, -1);
//             return;
//         }
//         /* Duplicate return node #45. Try simplifying control flow for better match */
//         return;
//     case 25:
//         field_0x6CC = fopAcM_searchPlayerAngleY(this);
//         shape_angle.y = field_0x6CC;
//         if (field_0x6C0 == 0) {
//             setBck(ANM_SIDESTEP_LEFT, 0, 3.0f, 1.0f);
//             temp_f1 = cM_rndFX(2000.0f);
//             sp24 = ((field_0x6CC + 0x3800) ^ 0x80000000);
//             sp20 = 0x43300000;
//             sp28 = (((f32) sp20 - (f32) 0.1f) + temp_f1);
//             current.angle.y = sp2C;
//         } else {
//             setBck(ANM_SIDESTEP_RIGHT, 0, 3.0f, 1.0f);
//             temp_f1_2 = cM_rndFX(2000.0f);
//             sp2C = ((field_0x6CC - 0x3800) ^ 0x80000000);
//             sp28 = 0x43300000;
//             sp20 = (((f32) sp28 - (f32) 0.1f) + temp_f1_2);
//             current.angle.y = sp24;
//         }
//         mAttackActionID = 0x1B;
//         /* fallthrough */
//     case 27:
//         field_0x75A = 1;
//         if (mpMorf->checkFrame(5.0f) != 0) {
//             field_0x75B = 1;
//             speed.y = 20.0f + nREG_F(15);
//             speedF = nREG_F(16) + (40.0f + cM_rndFX(5.0f));
//             mAttackActionID = 0x1C;
//             temp_r3_3 = &mSound;
//             temp_r3_3.startCreatureSound(Z2SE_EN_WW_JUMP, 0, -1);
//             return;
//         }
//         /* Duplicate return node #45. Try simplifying control flow for better match */
//         return;
//     case 28:
//         field_0x75A = 1;
//         cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 4, 0x800, 0x100);
//         if (mAcch.ChkGroundHit() != 0) {
//             speedF = 0.0f;
//             if (mpMorf->isStop() != 0) {
//                 setBck(ANM_WAIT, 2, 3.0f, 1.0f);
//                 mAttackActionID = 0xA;
//             }
//         }
//         /* Duplicate return node #45. Try simplifying control flow for better match */
//         return;
//     }
}

/* ############################################################################################## */
/* 807EF854-807EF858 0000E4 0004+00 0/1 0/0 0/0 .rodata          @6190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6190 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x807EF854, &lit_6190);
#pragma pop

/* 807EF858-807EF85C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @6191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6191 = 3072.0f;
COMPILER_STRIP_GATE(0x807EF858, &lit_6191);
#pragma pop

/* 807EF85C-807EF860 0000EC 0004+00 0/1 0/0 0/0 .rodata          @6192 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6192 = 1024.0f;
COMPILER_STRIP_GATE(0x807EF85C, &lit_6192);
#pragma pop

/* 807EF860-807EF864 0000F0 0004+00 0/1 0/0 0/0 .rodata          @6193 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6193 = 1700.0f;
COMPILER_STRIP_GATE(0x807EF860, &lit_6193);
#pragma pop

/* 807EF864-807EF868 0000F4 0004+00 0/1 0/0 0/0 .rodata          @6194 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6194 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x807EF864, &lit_6194);
#pragma pop

/* 807EC940-807ECE58 005340 0518+00 2/2 0/0 0/0 .text            checkWalkStart__8daE_WW_cFv */
int daE_WW_c::checkWalkStart() {
    // Change to bool ?
//     f32 temp_f1;
//     f32 temp_f1_2;
//     f32 temp_f30;
//     f32 temp_f30_2;
//     f32 var_f31;
//     s16 temp_r0;
//     s16 temp_r26;
//     s32 var_r27;
//     s8 var_r28;
//     void *temp_r1;

//     temp_r1 = sp - 0x130;
//     if (field_0x6B4 != 0) {
//         return 0;
//     }
//     temp_r26 = fopCamM_GetAngleY(dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0)));
//     cXyz sp60;
//     cXyz sp54;
//     (sp48, daPy_getPlayerActorClass()->current.pos);
//     if (field_0x740 == 0) {
//         field_0x740 = 30;
//         spA = (fopAcM_searchPlayerAngleY(this) - 0x8000);
//         temp_r0 = temp_r26 - spA;
//         if (abs(temp_r0) < 0x3000) {
//             if (cM_rnd() < (@119044.unkD4 + nREG_F(20))) {
//                 return 0;
//             }
//             spE0 = (@119044.unkD8 + cM_rndFX(@119044.unkDC));
//             var_r27 = spE4;
//             if (abs(temp_r0) < 0x2000) {
//                 if (cM_rnd() < 0.5f) {
//                     var_r27 = -var_r27;
//                 }
//             } else if (temp_r0 > 0) {
//                 var_r27 = -var_r27;
//             }
//             var_f31 = absXZ(sp48, (Vec *) &current.pos.x);
//             if (var_f31 < (100.0f + (1400.0f + nREG_F(18)))) {
//                 var_f31 = 100.0f + (1400.0f + nREG_F(18));
//             }
//             if (var_f31 > ((1800.0f + nREG_F(18)) - 100.0f)) {
//                 var_f31 = (1800.0f + nREG_F(18)) - 100.0f;
//             }
//             set(sp54, 0.0f, 100.0f, var_f31);
//             cLib_offsetPos(sp60, sp48, (spA + var_r27), sp54);
//             cXyz sp3C(current.pos, 100.0f + current.pos.y, current.pos.z);
//             (sp70);
//             Set(sp70, sp3C, sp60, NULL);
//             if (LineCross(dComIfG_Bgsp(), sp70) == 0) {
//                 &field_0x65C = sp60
//                 setActionMode(6, 0);
//                 sp8 = 1;
//                 return sp8;
//             }
//             goto block_32;
//         }
//         if (cM_rnd() < (@119044.unkE0 + nREG_F(20))) {
//             return 0;
//         }
//         var_r28 = 0;
//         set(sp54, 0.0f, 100.0f, 100.0f + (1500.0f + nREG_F(18)));
//         temp_f1 = cM_rndFX(@119044.unkDC);
//         spE4 = ((temp_r26 + 0x1400) ^ 0x80000000);
//         spE0 = 0x43300000;
//         spE8 = (((f32) spE0 - (f32) 0.1f) + temp_f1);
//         cLib_offsetPos(sp60, sp48, spEC, sp54);
//         (sp24, sp60);
//         temp_f30 = checkCreateBg((cXyz) (sp24));
//         if (-1e9f != temp_f30) {
//             var_r28 = 1;
//             sp64 = temp_f30;
//         }
//         cXyz sp30;
//         temp_f1_2 = cM_rndFX(@119044.unkDC);
//         spEC = ((temp_r26 - 0x1400) ^ 0x80000000);
//         spE8 = 0x43300000;
//         spE0 = (((f32) spE8 - (f32) 0.1f) + temp_f1_2);
//         cLib_offsetPos(sp30, sp48, spE4, sp54);
//         (sp18, sp30);
//         temp_f30_2 = checkCreateBg((cXyz) (sp18));
//         if (-1e9f != temp_f30_2) {
//             var_r28 |= 2;
//             sp34 = temp_f30_2;
//         }
//         if (var_r28 == 0) {
//             return 0;
//         }
//         if (var_r28 == 3) {
//             if (cM_rnd() < 0.5f) {
//                 sp60 = sp30
//             }
//         } else if (var_r28 == 2) {
//             sp60 = sp30
//         }
//         (spC, sp60);
//         createWolf((cXyz) (spC), 0);
//         fopAcM_delete(this);
//         return 1;
//     }
// block_32:
    return 0;
}

/* ############################################################################################## */
/* 807EF868-807EF86C 0000F8 0004+00 0/3 0/0 0/0 .rodata          @6359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6359 = 300.0f;
COMPILER_STRIP_GATE(0x807EF868, &lit_6359);
#pragma pop

/* 807ECE58-807ED674 005858 081C+00 1/1 0/0 0/0 .text            executeWalk__8daE_WW_cFv */
void daE_WW_c::executeWalk() {
//     f32 temp_f31;
//     s16 temp_r3_2;
//     s16 var_r28;
//     s32 temp_r0;
//     void **temp_r3;
//     void **temp_r3_3;
//     void **temp_r3_4;
//     void *temp_r1;

//     temp_r1 = sp - 0x50;
//     temp_f31 = absXZ(daPy_getPlayerActorClass()->current.pos, (Vec *) &current.pos.x);
//     temp_r0 = mAttackActionID;
//     if (temp_r0 != 0xA) {
//         if (temp_r0 < 0xA) {
//             if (temp_r0 != 1) {
//                 if (temp_r0 < 1) {
//                     if (temp_r0 < 0) {
//                         return;
//                     }
//                     setBck(ANM_WALK, 2, 3.0f, l_HIO.unk14);
//                     mAttackActionID = 1;
//                     field_0x728 = 150;
//                     break;
//                 }
//                 /* Duplicate return node #44. Try simplifying control flow for better match */
//                 return;
//             }
// block_9:
//             if ((mpMorf->checkFrame(5.0f) != 0) || (mpMorf->checkFrame(10.0f) != 0) || (mpMorf->checkFrame(15.0f) != 0) || (mpMorf->checkFrame(20.0f) != 0)) {
//                 temp_r3 = &mSound;
//                 temp_r3.startCreatureSound(Z2SE_EN_WW_FOOTNOTE, 0, -1);
//             }
//             field_0x75A = 1;
//             var_r28 = cLib_targetAngleY((Vec *) &current.pos.x, (Vec *) &field_0x65C);
//             cLib_addCalcAngleS(&current.angle.y, var_r28, 8, 0x400, 0x100);
//             temp_r3_2 = fopAcM_searchPlayerAngleY(this);
//             if ((var_r28 - temp_r3_2) > 0x4000) {
//                 var_r28 = temp_r3_2 + 0x4000;
//             }
//             if ((var_r28 - temp_r3_2) < -0x4000) {
//                 var_r28 = temp_r3_2 - 0x4000;
//             }
//             cLib_addCalcAngleS(&shape_angle.y, var_r28, 8, 0x400, 0x100);
//             cLib_chaseF(&speedF, 5.0f + nREG_F(1), 1.0f);
//             if ((absXZ(&field_0x65C, (Vec *) &current.pos.x) < 150.0f) || (field_0x728 == 0)) {
//                 setActionMode(3, 2);
//             }
//             if (temp_f31 < (1400.0f + nREG_F(18) + mDistCheckModifier)) {
//                 if ((field_0x730 != 0) || (temp_f31 < (1200.0f + nREG_F(18) + mDistCheckModifier))) {
//                     setActionMode(3, 0xC);
//                     setBck(ANM_RUN, 2, 3.0f, l_HIO.mRunAnm);
//                 } else {
//                     setBck(ANM_BACKSTEP, 0, 3.0f, 1.0f);
//                     temp_r3_3 = &mSound;
//                     temp_r3_3.startCreatureSound(Z2SE_EN_WW_JUMP, 0, -1);
//                     setActionMode(3, 0xF);
//                     speedF = -40.0f;
//                     speed.y = 25.0f;
//                     field_0x730 = 0x3C;
//                     field_0x75B = 1;
//                 }
//             } else if (temp_f31 > (1800.0f + nREG_F(18) + mDistCheckModifier)) {
//                 setBck(ANM_RUN, 2, 3.0f, l_HIO.mRunAnm);
//                 setActionMode(3, 0x14);
//                 speedF = l_HIO.mRunSpeed - 10.0f;
//             }
//             if (checkSideStep() != 0) {
//                 setActionMode(3, 0x19);
//                 speed.y = 0.0f;
//                 speedF = 0.0f;
//             }
//             if (checkMoveOut() != 0) {
//                 return;
//             }
//             /* Duplicate return node #44. Try simplifying control flow for better match */
//             return;
//         }
//         if (temp_r0 < 0xC) {
//             goto block_33;
//         }
//         /* Duplicate return node #44. Try simplifying control flow for better match */
//         return;
//     }
//     setBck(ANM_RUN, 2, 3.0f, l_HIO.mRunAnm);
//     mAttackActionID = 0xB;
//     field_0x728 = 150;
// block_33:
//     daPy_getPlayerActorClass();
//     spC = checkNowWolf__9daPy_py_cFv;
//     if (spC((daPy_py_c *) checkNowWolf__9daPy_py_cFv) != 0) {
//         speedF = l_HIO.mWolfEscapeSpeed;
//     } else {
//         speedF = l_HIO.mLinkEscapeSpeed;
//     }
//     sp1C = calcMoveDir(temp_r1 + 8, cLib_targetAngleY((Vec *) &current.pos.x, (Vec *) &field_0x65C));
//     if (sp1C != 0) {
//         cLib_addCalcAngleS(&shape_angle.y, sp8, 4, 0x800, 0x200);
//     } else {
//         cLib_addCalcAngleS(&shape_angle.y, sp8, 8, 0x200, 0x80);
//     }
//     current.angle.y = shape_angle.y;
//     if ((abs(&field_0x65C, (Vec *) &current.pos.x) < @119044.unkE4) || (field_0x728 == 0)) {
//         if (temp_f31 > (1400.0f + nREG_F(18) + mDistCheckModifier)) {
//             setActionMode(3, 2);
//             setBck(ANM_TURN, 0, 3.0f, 1.0f);
//             temp_r3_4 = &mSound;
//             temp_r3_4.startCreatureSound(Z2SE_EN_WW_JUMP, 0, -1);
//             return;
//         }
//         setActionMode(3, 0xC);
//         setBck(ANM_RUN, 2, 3.0f, l_HIO.mRunAnm);
//         /* Duplicate return node #44. Try simplifying control flow for better match */
//         return;
//     }
}

/* ############################################################################################## */
/* 807EF86C-807EF870 0000FC 0004+00 0/1 0/0 0/0 .rodata          @6385 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6385 = -30.0f;
COMPILER_STRIP_GATE(0x807EF86C, &lit_6385);
#pragma pop

/* 807ED674-807ED78C 006074 0118+00 1/1 0/0 0/0 .text            eWW_posMoveF__8daE_WW_cFv */
void daE_WW_c::eWW_posMoveF() {
    if (field_0x75B != 0 && speed.y < 0.0f && mAcch.ChkGroundHit()) {
        field_0x75B = 0;
    }
    switch (field_0x75B) {
    case 0:
        gravity = -30.0f + nREG_F(0);
        break;
    case 1:
        gravity = -5.0f;
        break;
    case 2:
        gravity = -3.0f;
        break;
    }
    f32 temp_f31 = speedF;
    if (mAcch.ChkGroundHit()) {
        cM3dGPla plane;
        dComIfG_Bgsp().GetTriPla(mAcch.m_gnd, &plane);
        speedF *= plane.GetNP()->y;
    }
    fopAcM_posMoveF(this,mCcStts.GetCCMoveP());
    speedF = temp_f31;
}

/* 807ED78C-807EDA78 00618C 02EC+00 2/1 0/0 0/0 .text            action__8daE_WW_cFv */
void daE_WW_c::action() {
//     s16 temp_r26;
//     void **temp_r3;
//     void **temp_r3_2;
//     void *temp_r1;

//     temp_r1 = sp - 0xA0;
//     field_0x75A = 0;
//     setGroundAngle();
//     damage_check();
//     OffAtSetBit(mSph1[1]);
//     mSph2[0].SetTgType(, 0xD8000012);
//     mSph2[1].SetTgType(0xD8000012);
    int var_r29 = 0;
//     temp_r26 = shape_angle.y;
    switch (mActionID) {
    case ACTION_EXECUTE_MASTER:
        executeMaster();
        return;

    case ACTION_EXECUTE_WAIT:
        executeWait();
        /* Fallthrough */
    default:
        break;

    case ACTION_EXECUTE_ATTACK:
        executeAttack();
        var_r29 = 1;
        break;

    case ACTION_EXECUTE_CHASE:
        executeChase();
        var_r29 = 1;
        break;

    case ACTION_EXECUTE_DAMAGE:
        executeDamage();
        var_r29 = 1;
        break;

    case ACTION_EXECUTE_MOVE_OUT:
        executeMoveOut();
        break;

    case ACTION_EXECUTE_WALK:
        executeWalk();
        var_r29 = 1;
        break;
    }

    // setBlurEffect();
    // field_0x759 = 0;
    // if (shape_angle.y != temp_r26) {
    //     if ((shape_angle.y - temp_r26) < 0) {
    //         field_0x759 = 1;
    //     } else {
    //         field_0x759 = 2;
    //     }
    // }
    // setLinkSearch((Z2CreatureEnemy *) &mSound, (-var_r29 | var_r29) >> 0x1F);
    // if (field_0x75D != 0) {
    //     (sp10);
    //     Set(sp10, dComIfGp_getCamera(0) + 0xDC, &attention_info.position, this);
    //     if (LineCross(dComIfG_Bgsp(), sp10) != 0) {
    //         attention_info.flags &= 0xFFFFFFFB;
    //     } else {
    //         attention_info.flags |= 4;
    //     }
    // }
    // eWW_posMoveF();
    // CrrPos(&mAcch, dComIfG_Bgsp());
    // play(mpMorf, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    // if (checkBck(0xB) != 0) {
    //     if ((mpMorf->checkFrame(0.0f) != 0) || (mpMorf->checkFrame(@119044.unkEC) != 0) || (mpMorf->checkFrame(8.0f) != 0) || (mpMorf->checkFrame(@119044.unkF0) != 0)) {
    //         temp_r3 = &mSound;
    //         temp_r3.startCreatureSound(Z2SE_EN_WW_FOOTNOTE, 0, -1);
    //         return;
    //     }
    // } else {
    //     if ((checkBck(0xF) != 0) && (mpMorf->checkFrame(5.0f) != 0)) {
    //         temp_r3_2 = &mSound;
    //         temp_r3_2.startCreatureVoice(0x70388, -1);
    //     }
    //     return;
    // }
}

/* 807EDA78-807EDB00 006478 0088+00 1/1 0/0 0/0 .text            mtx_set__8daE_WW_cFv */
void daE_WW_c::mtx_set() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(field_0x674);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::XrotM(field_0x6CE);
    mDoMtx_stack_c::scaleM(l_HIO.mModelSize, l_HIO.mModelSize, l_HIO.mModelSize);
    
    mpMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    mpMorf->modelCalc();
}

/* ############################################################################################## */
/* 807EF870-807EF874 000100 0004+00 0/0 0/0 0/0 .rodata          @6439 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6439 = 6.0f;
COMPILER_STRIP_GATE(0x807EF870, &lit_6439);
#pragma pop

/* 807EF874-807EF878 000104 0004+00 0/0 0/0 0/0 .rodata          @6440 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6440 = 13.0f;
COMPILER_STRIP_GATE(0x807EF874, &lit_6440);
#pragma pop

/* 807EF878-807EF87C 000108 0004+00 0/1 0/0 0/0 .rodata          @6500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6500 = 70.0f;
COMPILER_STRIP_GATE(0x807EF878, &lit_6500);
#pragma pop

/* 807EDB00-807EDCC4 006500 01C4+00 1/1 0/0 0/0 .text            cc_set__8daE_WW_cFv */
void daE_WW_c::cc_set() {
    cXyz sp8;
    if (mActionID != ACTION_EXECUTE_MASTER) {
        J3DModel* model_p = mpMorf->getModel();
        mDoMtx_stack_c::copy(model_p->getAnmMtx(4));
        mDoMtx_stack_c::multVecZero(&eyePos);
        attention_info.position = eyePos;
        attention_info.position.y += 20.0f;
        mDoMtx_stack_c::copy(model_p->getAnmMtx(1));
        mDoMtx_stack_c::transM(0.0f, -20.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&sp8);
        mSph1[0].SetC(sp8);
        mSph1[0].SetR(40.0f);
        dComIfG_Ccsp()->Set(&mSph1[0]);
        mSph2[0].SetC(sp8);
        mSph2[0].SetR(70.0f + nREG_F(17));
        dComIfG_Ccsp()->Set(&mSph2[0]);
        mDoMtx_stack_c::copy(model_p->getAnmMtx(4)), 
        mDoMtx_stack_c::transM(-10.0f, -20.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&sp8);
        mSph1[1].SetC(sp8);
        mSph1[1].SetR(40.0f);
        dComIfG_Ccsp()->Set(&mSph1[1]);
        mSph2[1].SetC(sp8);
        mSph2[1].SetR(70.0f + nREG_F(17));
        dComIfG_Ccsp()->Set(&mSph2[1]);
    }
}

/* 807EDCC4-807EDE6C 0066C4 01A8+00 1/1 0/0 0/0 .text            execute__8daE_WW_cFv */
int daE_WW_c::execute() {
//     mDoMtx_stack_c *temp_ret;
//     s32 temp_cr0_eq;
//     s32 var_r29;
//     void *temp_r1;
//     void *temp_r4;

//     temp_r1 = sp - 0x30;
//     if (field_0x728 != 0) {
//         field_0x728 -= 1;
//     }
//     if (field_0x72C != 0) {
//         field_0x72C -= 1;
//     }
//     if (field_0x724 != 0) {
//         field_0x724 -= 1;
//     }
//     if (field_0x730 != 0) {
//         field_0x730 -= 1;
//     }
//     if (field_0x734 != 0) {
//         field_0x734 -= 1;
//     }
//     if (field_0x738 != 0) {
//         field_0x738 -= 1;
//     }
//     if (field_0x73C != 0) {
//         field_0x73C -= 1;
//     }
//     if (field_0x740 != 0) {
//         field_0x740 -= 1;
//     }
//     var_r29 = 0;
// loop_20:
//     temp_cr0_eq = var_r29 == 0;
//     var_r29++;
//     if (temp_cr0_eq == 0) {
//         if ((this + (var_r29 * 4))->unk77C != 0) {
//             temp_r4 = this + (var_r29 * 4);
//             temp_r4->unk77C = (temp_r4->unk77C - 1);
//         }
//         goto loop_20;
//     }
//     action();
//     mtx_set();
//     cc_set();
//     setHeadAngle();
//     if (l_HIO.mMoveRangeDebugDisp != 0) {
//         fopAcM_OffStatus((fopAc_ac_c *) 0x100);
//     } else {
//         fopAcM_OnStatus((fopAc_ac_c *) 0x100);
//     }
//     cXyz sp14;
//     temp_ret = mpMorf->getModel()->getAnmMtx(2);
//     mDoMtx_stack_c::copy(temp_ret, (f32 (*)[4]) (u64) temp_ret);
//     mDoMtx_stack_c::multVecZero(sp14, (Vec *) mDoMtx_stack_c::transM((mDoMtx_stack_c *) &g_regHIO, nREG_F(0), nREG_F(1), nREG_F(2)));
//     cXyz temp_r1 + 8(1.0f + nREG_F(3), 1.0f + nREG_F(4), 2.0f + nREG_F(5));
//     setMidnaBindEffect((fopEn_enemy_c *) (Z2CreatureEnemy *) &mSound, sp14, temp_r1 + 8);
    return 1;
}

/* 807EDE6C-807EDE8C 00686C 0020+00 2/1 0/0 0/0 .text            daE_WW_Execute__FP8daE_WW_c */
static int daE_WW_Execute(daE_WW_c* i_this) {
    return i_this->execute();
}

/* ############################################################################################## */
/* 807EF87C-807EF884 00010C 0006+02 0/1 0/0 0/0 .rodata          @6556 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_6556[6 + 2 /* padding */] = {
//     0x00,
//     0x00,
//     0xE0,
//     0x00,
//     0x20,
//     0x00,
//     /* padding */
//     0x00,
//     0x00,
// };
// COMPILER_STRIP_GATE(0x807EF87C, &lit_6556);
// #pragma pop

// /* 807EF8B8-807EF8B8 000148 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
// #pragma push
// #pragma force_active on
// SECTION_DEAD static char const* const stringBase_807EF8BD = "D_MN11";
// #pragma pop

/* 807EDE8C-807EE438 00688C 05AC+00 2/2 0/0 0/0 .text            calcMoveDir__8daE_WW_cFPss */
int daE_WW_c::calcMoveDir(s16* param_0, s16 param_1) {
//     s16 temp_r3;
//     s16 var_r29;
//     s32 var_r27;
//     void *temp_r1;

//     temp_r1 = sp - 0x100;
//     (sp70);
//     (sp58);
//     sp10 = @119044.eventInfo;
//     sp14 = (&@119044 + 0xF8)->unk4;
//     cXyz sp40;
//     cXyz sp34;
//     cXyz sp28(0.0f, 0.0f, 500.0f);
//     set(sp34, current.pos, 100.0f + current.pos.y, current.pos.z);
//     var_r27 = 0;
// loop_5:
//     if (var_r27 < 3) {
//         *(sp4C + (var_r27 * 4)) = 1000.0f;
//         cLib_offsetPos(sp40, sp34, (shape_angle.y + *(sp10 + (var_r27 * 2))), sp28);
//         Set(sp70, sp34, sp40, NULL);
//         *(sp20 + (var_r27 * 2)) = 0;
//         if (LineCross(dComIfG_Bgsp(), sp70) != 0) {
//             *(sp4C + (var_r27 * 4)) = abs(&current.pos.x, GetCross(sp70));
//             GetTriPla(dComIfG_Bgsp(), sp84, sp58);
//             if (sp5C < 0.5f) {
//                 temp_r3 = cM_atan2s(sp58, sp60);
//                 *(sp18 + (var_r27 * 2)) = temp_r3;
//                 (this + (var_r27 * 2))->unk788 = temp_r3;
//                 *(sp20 + (var_r27 * 2)) = 1;
//                 (this + (var_r27 * 4))->unk77C = (nREG_S(0) + 30);
//             }
//         }
//         var_r27++;
//         goto loop_5;
//     }
//     if ((strcmp("D_MN11", dComIfGp_getStartStageName()) == 0) && (dComIfGp_getStartStageRoomNo() == 4)) {
//         if (sp20 != 0) {
//             field_0x74C = 0;
//             field_0x748 = 0;
//         } else {
//             if (field_0x748 != 0) {
//                 sp1A = field_0x752;
//                 sp22 = 1;
//             }
//             if (field_0x74C != 0) {
//                 sp1C = field_0x754;
//                 sp24 = 1;
//             }
//         }
//     }
//     if ((sp22 != 0) && (sp24 != 0)) {
//         if (sp20 != 0) {
//             if (field_0x759 == 1) {
//                 var_r29 = shape_angle.y - 0x2000;
//             } else {
//                 var_r29 = shape_angle.y + 0x2000;
//             }
//         } else if (field_0x759 == 1) {
//             var_r29 = shape_angle.y - 0x2000;
//         } else if (field_0x759 == 2) {
//             var_r29 = shape_angle.y + 0x2000;
//         } else {
//             var_r29 = param_1;
//         }
//         field_0x738 = 30;
//     } else if (sp20 != 0) {
//         if (sp22 != 0) {
//             var_r29 = shape_angle.y + 0x2000;
//         } else if (sp24 != 0) {
//             var_r29 = shape_angle.y - 0x2000;
//         } else if ((sp18 - shape_angle.y) > 0) {
//             var_r29 = shape_angle.y + 0x2000;
//         } else {
//             var_r29 = shape_angle.y - 0x2000;
//         }
//         if ((field_0x738 == 0) && (abs((fopAcM_searchPlayerAngleY(this) - var_r29)) < 0x4000)) {
//             var_r29 = param_1;
//         }
//     } else if (sp22 != 0) {
//         if ((sp1A - shape_angle.y) < 0) {
//             var_r29 = sp1A + 0x4000;
//         } else {
//             var_r29 = sp1A - 0x4000;
//         }
//         if ((field_0x738 == 0) && (abs((fopAcM_searchPlayerAngleY(this) - var_r29)) < 0x2000)) {
//             var_r29 = sp1A;
//         }
//         if (sp50 < @119044.unkE4) {
//             var_r29 = sp1A;
//         }
//     } else if (sp24 != 0) {
//         if ((sp1C - shape_angle.y) < 0) {
//             var_r29 = sp1C + 0x4000;
//         } else {
//             var_r29 = sp1C - 0x4000;
//         }
//         if ((field_0x738 == 0) && (abs((fopAcM_searchPlayerAngleY(this) - var_r29)) < 0x2000)) {
//             var_r29 = sp1C;
//         }
//         if (sp54 < @119044.unkE4) {
//             var_r29 = sp1C;
//         }
//     } else {
//         var_r29 = param_1;
//     }
//     *param_0 = var_r29;
//     spC = 0;
// loop_60:
//     if (spC >= 3) {
//         sp8 = 0;
//         return sp8;
//     }
//     if (*(sp20 + (spC * 2)) != 0) {
//         sp9 = 1;
//         return sp9;
//     }
//     spC = (spC + 1);
//     goto loop_60;
}

/* 807EE438-807EE440 006E38 0008+00 1/0 0/0 0/0 .text            daE_WW_IsDelete__FP8daE_WW_c */
static int daE_WW_IsDelete(daE_WW_c* param_0) {
    return 1;
}

/* 807EE440-807EE4B4 006E40 0074+00 1/1 0/0 0/0 .text            _delete__8daE_WW_cFv */
int daE_WW_c::_delete() {
    dComIfG_resDelete(&mPhase, "E_WW");
    if (field_0xEC4 != 0) {
        l_HIOInit = false;
        mDoHIO_DELETE_CHILD(l_HIO.field_0x04);
    }
    if (heap != 0) {
        mSound.deleteObject();
    }
    return 1;
}

/* 807EE4B4-807EE4D4 006EB4 0020+00 1/0 0/0 0/0 .text            daE_WW_Delete__FP8daE_WW_c */
static int daE_WW_Delete(daE_WW_c* i_this) {
    fopAcM_RegisterDeleteID(i_this, "E_WW");
    return static_cast<daE_WW_c*>(i_this)->_delete();
}

/* 807EE4D4-807EE61C 006ED4 0148+00 1/1 0/0 0/0 .text            CreateHeap__8daE_WW_cFv */
int daE_WW_c::CreateHeap() {
//     s32 sp10;
//     s32 spC;
//     void **sp8;
//     J3DAnmTransform *temp_r7;
//     J3DModel *temp_r3_2;
//     JUTAssertion *temp_r3;
//     mDoExt_McaMorfSO *var_r26;
//     u16 var_r29;

//     temp_r3 = dComIfG_getObjectRes((s8 *) (@LOCAL@setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz@e_prim + 0x138), 0x13);
//     if (temp_r3 != NULL) {

//     } else {
//         showAssert(getSDevice(temp_r3), (@LOCAL@setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz@e_prim + 0x2D0), (s8 *)0xB07, (@LOCAL@setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz@e_prim + 0x2E0));
//         OSPanic(@LOCAL@setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz@e_prim + 0x2D0, 0xB07, @LOCAL@setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz@e_prim + 0x2F0);
//     }
//     var_r26 = (0x58);
//     if (var_r26 != NULL) {
//         temp_r7 = dComIfG_getObjectRes((s8 *) (@LOCAL@setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz@e_prim + 0x138), 4);
//         sp8 = &mSound;
//         spC = 0x80000;
//         sp10 = 0x11000084;
//         var_r26 = (var_r26, (J3DModelData *) temp_r3, NULL, NULL, temp_r7, 0, 1.0f, 0, -1, M2C_ERROR(/* Unable to find stack arg 0x24 in block */), M2C_ERROR(/* Unable to find stack arg 0x28 in block */), M2C_ERROR(/* Unable to find stack arg 0x2c in block */));
//     }
//     mpMorf = var_r26;
//     if (((mDoExt_McaMorfSO *) mpMorf == NULL) || (mpMorf->getModel() == NULL)) {
//         return 0;
//     }
//     temp_r3_2 = mpMorf->getModel();
//     setUserArea(temp_r3_2, this);
//     var_r29 = 1;
// loop_13:
//     if (var_r29 < getJointNum(temp_r3_2->getModelData())) {
//         if ((var_r29 == 3) || (var_r29 == 4)) {
//             setCallBack(getJointNodePointer(temp_r3_2->getModelData(), var_r29), (s32 (*)(J3DJoint *, s32)) JointCallBack__8daE_WW_cFP8J3DJointi);
//         }
//         var_r29++;
//         goto loop_13;
//     }
    return 1;
}

/* 807EE61C-807EE63C 00701C 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    daE_WW_c* a_this = (daE_WW_c*) i_this;
    return a_this->CreateHeap();
}

/* ############################################################################################## */
/* 807EF884-807EF888 000114 0004+00 0/2 0/0 0/0 .rodata          @6946 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6946 = -200.0f;
// COMPILER_STRIP_GATE(0x807EF884, &lit_6946);
// #pragma pop

// /* 807EF888-807EF88C 000118 0004+00 0/1 0/0 0/0 .rodata          @6947 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6947 = 65.0f;
// COMPILER_STRIP_GATE(0x807EF888, &lit_6947);
// #pragma pop

// /* 807EF88C-807EF890 00011C 0004+00 0/1 0/0 0/0 .rodata          @6948 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6948 = 130.0f;
// COMPILER_STRIP_GATE(0x807EF88C, &lit_6948);
// #pragma pop

/* 807EF890-807EF898 000120 0008+00 0/1 0/0 0/0 .rodata          @6950 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_6950[8] = {
//     0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x807EF890, &lit_6950);
// #pragma pop

// /* 807EF8B8-807EF8B8 000148 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
// #pragma push
// #pragma force_active on
// SECTION_DEAD static char const* const stringBase_807EF8C4 = "E_ww";
// #pragma pop

u8 lbl_237_bss_0;

/* 807EE63C-807EEB38 00703C 04FC+00 1/1 0/0 0/0 .text            create__8daE_WW_cFv */
int daE_WW_c::create() {
    // s32 sp8;
    // cXyz *temp_r22;
    // cXyz *temp_r23;
    // cXyz *temp_r4;
    // daE_WW_c *temp_r3_2;
    // int temp_r3 = 0;
    // u8 var_r26;
    // u8 var_r27;
    // void *temp_r1;

    // temp_r1 = sp - 0x50;
    fopAcM_SetupActor(this, daE_WW_c);

    int phase_state = dComIfG_resLoad(&mPhase, "E_WW");
    if (phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("E_WW PARAM %x\n", fopAcM_GetParam(this));
        field_0x6B4 = fopAcM_GetParam(this) & 0xF;
        if (field_0x6B4 == 0xF) {
            field_0x6B4 = 0;
        }
        u8 var_r26 = fopAcM_GetParam(this) >> 4; // Arg1 ?
        if (var_r26 == 0xFF || var_r26 == 0) {
            var_r26 = 30;
        }
        field_0x6A8 = 100.0f * var_r26;
        field_0x6B5 = fopAcM_GetParam(this) >> 0xC;
        if (field_0x6B5 == 0) {
            field_0x6B5 = 5;
        }
        field_0x6B6 = (fopAcM_GetParam(this) >> 0x14) & 0xF;
        if (field_0x6B6 == 0xF || field_0x6B6 == 0) {
            field_0x6B6 = 3;
        }
        if (field_0x6B6 > 10) {
            field_0x6B6 = 10;
        }
        field_0x757 = (fopAcM_GetParam(this) >> 0x18) & 0xF;
        if (field_0x757 == 0xF || field_0x757 == 0) {
            field_0x757 = 1;
        } else {
            if (field_0x757 == 2) {
                field_0x758 = 1;
            }
            field_0x757 = 0;
        }
        u8 var_r27 = current.angle.x;
        if (var_r27 == 0xFF || var_r27 == 0) {
            if (field_0x6B4 == 0) {
                var_r27 = 5;
            } else {
                var_r27 = 10;
            }
        }
        field_0x6AC = 100.0f * var_r27;
        shape_angle.x = 0;
        current.angle.x = 0;
        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x1F00)) {
            return cPhs_ERROR_e;
        }
        if (l_HIOInit == false) {
            l_HIOInit = true;
            field_0xEC4 = 1;
            l_HIO.field_0x04 = mDoHIO_CREATE_CHILD("ホワイトウルフォス", (JORReflexible*)&l_HIO);
        }
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(this, 200.0f, 200.0f, 200.0f);
        if (field_0x757 != 0) {
            setActionMode(0, 0);
        } else {
            mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
            mAcchCir.SetWall(65.0f, 130.0f);
            mAcch.OnLineCheck();
            if (field_0x6B4 == 1) {
                health = 1;
                field_0x560 = 1;
            } else {
                health = 100;
                field_0x560 = 100;
            }
            mCcStts.Init(0xFE, 0, this);
            field_0x75D = 1;
            attention_info.flags = 4;
            mSph1[0].Set(cc_ww_src);
            mSph1[0].SetStts(&mCcStts);
            mSph1[1].Set(cc_ww_src);
            mSph1[1].SetStts(&mCcStts);
            mSph2[0].Set(cc_ww_tg_src);
            mSph2[0].SetStts(&mCcStts);
            mSph2[0].OnTgNoHitMark();
            mSph2[1].Set(cc_ww_tg_src);
            mSph2[1].SetStts(&mCcStts);
            mSph2[1].OnTgNoHitMark();
            mSound.init(&current.pos, &eyePos, 3, 1);
            mSound.setEnemyName("E_ww");
            mpSound = &mSound;
            field_0xEB2 = 1;
            gravity = -5.0f;
            mDistCheckModifier = cM_rndFX(100.0f);
            field_0x668 = home.pos;
            if (fopAcM_SearchByID(fopAcM_GetLinkId(this)) != 0) {
                field_0x668 = current.pos;
            }
            setActionMode(1, 0);
        }
        attention_info.distances[fopAc_attn_BATTLE_e] = 0x34;
        daE_WW_Execute(this);
    }
    return phase_state;
}

/* 807EEE54-807EEE74 007854 0020+00 1/0 0/0 0/0 .text            daE_WW_Create__FP8daE_WW_c */
static int daE_WW_Create(daE_WW_c* i_this) {
    return static_cast<daE_WW_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 807EF898-807EF89C 000128 0004+00 0/1 0/0 0/0 .rodata          @7175 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_7175 = -700.0f;
// COMPILER_STRIP_GATE(0x807EF898, &lit_7175);
// #pragma pop

// /* 807EF89C-807EF8A0 00012C 0004+00 0/1 0/0 0/0 .rodata          @7176 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_7176 = -1000.0f;
// COMPILER_STRIP_GATE(0x807EF89C, &lit_7176);
// #pragma pop

// /* 807EF8A0-807EF8A4 000130 0004+00 0/1 0/0 0/0 .rodata          @7177 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_7177 = -300.0f;
// COMPILER_STRIP_GATE(0x807EF8A0, &lit_7177);
// #pragma pop

// /* 807EF8A4-807EF8A8 000134 0004+00 0/1 0/0 0/0 .rodata          @7178 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_7178 = -100.0f;
// COMPILER_STRIP_GATE(0x807EF8A4, &lit_7178);
// #pragma pop

// /* 807EF8A8-807EF8AC 000138 0004+00 0/1 0/0 0/0 .rodata          @7179 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_7179 = 400.0f;
// COMPILER_STRIP_GATE(0x807EF8A8, &lit_7179);
// #pragma pop

// /* 807EF8AC-807EF8B0 00013C 0004+00 0/1 0/0 0/0 .rodata          @7180 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_7180 = -400.0f;
// COMPILER_STRIP_GATE(0x807EF8AC, &lit_7180);
// #pragma pop

// /* 807EF8B0-807EF8B4 000140 0004+00 0/1 0/0 0/0 .rodata          @7181 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_7181 = 250.0f;
// COMPILER_STRIP_GATE(0x807EF8B0, &lit_7181);
// #pragma pop

// /* 807EF8B4-807EF8B8 000144 0004+00 0/1 0/0 0/0 .rodata          @7182 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_7182 = -250.0f;
// COMPILER_STRIP_GATE(0x807EF8B4, &lit_7182);
// #pragma pop

// /* 807EEF04-807EF2CC 007904 03C8+00 0/0 1/0 0/0 .text            __sinit_d_a_e_ww_cpp */
// void __sinit_d_a_e_ww_cpp() {
//     // NONMATCHING
// }

// #pragma push
// #pragma force_active on
// REGISTER_CTORS(0x807EEF04, __sinit_d_a_e_ww_cpp);
// #pragma pop

// /* 807EF2CC-807EF2D4 007CCC 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
// static void func_807EF2CC() {
//     // NONMATCHING
// }

// /* 807EF2D4-807EF2DC 007CD4 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
// static void func_807EF2D4() {
//     // NONMATCHING
// }

// /* 807EF2DC-807EF2E4 007CDC 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
// static void func_807EF2DC() {
//     // NONMATCHING
// }

// /* 807EF2E4-807EF2EC 007CE4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
// static void func_807EF2E4() {
//     // NONMATCHING
// }

// /* 807EF2EC-807EF2F4 007CEC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
// static void func_807EF2EC() {
//     // NONMATCHING
// }

/* ############################################################################################## */

/* 807EFA80-807EFAA0 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_WW_Method */
static actor_method_class l_daE_WW_Method = {
    (process_method_func)daE_WW_Create,
    (process_method_func)daE_WW_Delete,
    (process_method_func)daE_WW_Execute,
    (process_method_func)daE_WW_IsDelete,
    (process_method_func)daE_WW_Draw,
};

/* 807EFAA0-807EFAD0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_WW */
extern actor_process_profile_definition g_profile_E_WW = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_WW,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_WW_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  209,                    // mPriority
  &l_daE_WW_Method,       // sub_method
  0x00044100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

AUDIO_INSTANCES; // Needed ??

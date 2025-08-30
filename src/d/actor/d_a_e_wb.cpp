/**
 * @file d_a_e_wb.cpp
 * 
*/

#include "d/dolzel_rel.h"
#include "c/c_damagereaction.h"
#include "d/actor/d_a_e_wb.h"
#include "d/actor/d_a_e_rd.h"
#include "d/actor/d_a_alink.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"
#include "dol2asm.h"
#include "m_Do/m_Do_graphic.h"
#include "m_Do/m_Do_controller_pad.h"

/* 807E2FDC-807E2FE0 000084 0004+00 1/1 0/0 0/0 .data            f_ya$6404 */
static u8 f_ya[4] = {
    0x80,
    0x00,
    0x00,
    0x00,
};

/* 807E2FE0-807E2FE4 000088 0004+00 1/1 0/0 0/0 .data            f_id$6405 */
static u8 f_id[4] = {
    0x82,
    0xC7,
    0x82,
    0xC8,
};

/* 807E3000-807E3008 0000A8 0008+00 0/1 0/0 0/0 .data            footd$7448 */
static int footd[2] = {
    6, 
    10,
};

/* 807E3008-807E3010 0000B0 0008+00 0/1 0/0 0/0 .data            footd_B$7449 */
static int footd_B[2] = {
    6, 
    10,
};

/* 807E3010-807E3018 0000B8 0006+02 0/1 0/0 0/0 .data            w_eff_name$7501 */
static u16 w_eff_name[3] = {
    0x825B,
    0x825C,
    0x825D,
};

/* 807E3018-807E3020 0000C0 0006+02 0/1 0/0 0/0 .data            w_eff_name2$7502 */
static u16 w_eff_name2[3] = {
    0x8258,
    0x8259,
    0x825A,
};

/* 807E3020-807E3028 0000C8 0008+00 0/1 0/0 0/0 .data            w_eff_id$7518 */
static u16 w_eff_id[4] = {
    0x01B8,
    0x01B9,
    0x01BA,
    0x01BB,
};

/* 807E323C-807E3240 0002E4 0004+00 1/1 0/0 0/0 .data            key_eno$8737 */
static u16 key_eno_8737[2] = {
    0x827A,
    0x827B,
};

/* 807E3240-807E3244 0002E8 0004+00 1/1 0/0 0/0 .data            key_eno$8748 */
static u16 key_eno_8748[2] = {
    0x827A,
    0x827B,
};

/* 807E33CC-807E33DC 000474 0010+00 1/1 0/0 0/0 .data            foot_no$9903 */
static int foot_no[4] = {
    5,
    24,
    9,
    20,
};

/* 807E33DC-807E33EC 000484 0010+00 1/1 0/0 0/0 .data            foot_no_B$9904 */
static int foot_no_B[4] = {
    5, 
    28,
    9, 
    23
};

/* 807E33EC-807E3404 000494 0018+00 0/1 0/0 0/0 .data            pass_r$10268 */
static f32 pass_r[6] = {
    0.0f,
    3000.0f,
    3000.0f,
    -100.0f,
    -150.0f,
    -100.0f,
};

/* 807E3404-807E341C 0004AC 0018+00 0/1 0/0 0/0 .data            x_check_off$10269 */
static f32 x_check_off[6] = {
    2300.0f,
    -3000.0f,
    3000.0f,
    -300.0f,
    0.0f,
    300.0f,
};


/* 807E341C-807E345C 0004C4 0040+00 0/1 0/0 0/0 .data            cc_sph_src$10277 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x486022, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};


/* 807E345C-807E349C 000504 0040+00 0/1 0/0 0/0 .data            at_sph_src$10278 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_1000, 0x2, 0x1f}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};

/* 807D248C-807D2548 0000EC 00BC+00 1/1 0/0 0/0 .text            __ct__12daE_WB_HIO_cFv */
daE_WB_HIO_c::daE_WB_HIO_c() {
    field_0x04 = -1;
    mBaseSize = 1.2f;
    mLeaderSizeRatio = 1.2f;
    mMovementSpeed = 3.5f;
    mPlayerRecognitionDistance = 600.0f;
    mMaxSpeed = 37.0f;
    mCalvaryBattleMaxSpeed = 50.0f;
    mLeaderWalkingSpeed = 10.0f;
    mLeaderMaxSpeed = 40.0f;
    mLeaderCalvaryBattleMaxSpeed = 54.0f;
    mNormalSpeedVi = 25.0f;
    mMediumSpeedVi = 45.0f;
    mMaxSpeedVi = 55.0f;
    mSingleRiderSpeed = 50.0f;
    mPlayerMountedMaxSpeed = 30.0f;
    mPlayerMountedMotionPlaybackSpeed = 0.80000001f;
    mPlayerMountedDashTime = 30;
    mSearchIgnoreDistance1 = 500.0f;
    mSearchIgnoreDistance2 = 500.0f;
    mGuidanceDisplayDistance1 = 3500.0f;
    mGuidanceDisplayDistance2 = 3500.0f;
    field_0x58 = 0;
    mNoReins = 0;
}

#ifdef DEBUG
void daE_WB_HIO_c::genMessage(JORMContext* ctx) {
    ctx->genLabel("  イノシシ", 0x80000001, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("基本サイズ", &mBaseSize, 0.0f, 5.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("リーダーサイズ比", &mLeaderSizeRatio,0.0f,5.0, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("移動速度", &mMovementSpeed,0.0f,20.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("PL認識距離", &mPlayerRecognitionDistance,0.0f,2000.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("最速度", &mMaxSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("騎馬戦最速", &mCalvaryBattleMaxSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("歩き速（リ）", &mLeaderWalkingSpeed, 0.0f, 30.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("最速度（リ）", &mLeaderMaxSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("騎馬戦最（リ）", &mLeaderCalvaryBattleMaxSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("通常速（車）", &mNormalSpeedVi, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("中速度（車）", &mMediumSpeedVi, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("最速度（車）", &mMaxSpeedVi, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("一騎速", &mSingleRiderSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genCheckBox("手綱ナシ", &mNoReins, 1, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genLabel("",0x80000001, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genLabel("    プレイヤー騎乗時", 0x80000001, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("最大速度", &mPlayerMountedMaxSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("モーション再生速度", &mPlayerMountedMotionPlaybackSpeed, 0.0f, 5.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("ダッシュ時間", &mPlayerMountedDashTime,0.0f, 2000.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genLabel("",0x80000001, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genLabel("    以下 一騎討ち用",0x80000001, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("サーチ無視距離(１)", &mSearchIgnoreDistance1, 0.0f, 5000.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("サーチ無視距離(２)", &mSearchIgnoreDistance2, 0.0f, 5000.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("案内表示距離(１)", &mGuidanceDisplayDistance1, 0.0f, 5000.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("案内表示距離(２)", &mGuidanceDisplayDistance2, 0.0f, 5000.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
}
#endif

/* 807D2548-807D2610 0001A8 00C8+00 26/26 0/0 0/0 .text            anm_init__FP10e_wb_classifUcf */
static void anm_init(e_wb_class* i_actor, int i_anmId, f32 i_morf, u8 i_attr, f32 i_rate) {
    i_actor->mAnmID = i_anmId;

    if (i_actor->field_0x79d != 0 && i_actor->field_0x79d >= 2 && i_anmId == 0x20) {
        i_anmId = 0x21;
    }
    
    i_actor->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_actor->mResName,i_anmId), i_attr, i_morf, i_rate, 0.0f, -1.0f);
}

/* 807D2610-807D27D4 000270 01C4+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        int joint_no = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_wb_class* bullbo_p = (e_wb_class*)model->getUserArea();

        if (bullbo_p) {
            MTXCopy(model->getAnmMtx(joint_no), *calc_mtx);
            
            if (joint_no == 0) {
                cMtx_ZrotM(*calc_mtx, bullbo_p->field_0x79a);
            } else if (joint_no  == 2 || joint_no == bullbo_p->field_0x688+0xb) {
                cMtx_YrotM(*calc_mtx, bullbo_p->field_0x6d8);
            } else if (joint_no == 4 || joint_no == 8 || 
                (joint_no == 0x13 && bullbo_p->field_0x79d == 0) ||
                (joint_no == 0x17 && bullbo_p->field_0x79d == 0) ||
                (joint_no == 0x16 && bullbo_p->field_0x79d != 0) ||
                (joint_no == 0x1B && bullbo_p->field_0x79d != 0)) {
                cMtx_YrotM(*calc_mtx,bullbo_p->field_0x79a << 1);
            }
      
            if (bullbo_p->field_0x79d && joint_no == 0xd) {
                cMtx_YrotM(*calc_mtx,bullbo_p->field_0x6e0);
                cMtx_XrotM(*calc_mtx,bullbo_p->field_0x6de);
                cMtx_ZrotM(*calc_mtx,bullbo_p->field_0x6e2);
            }
            
            model->setAnmMtx(joint_no,*calc_mtx);
            MTXCopy(*calc_mtx,j3dSys.mCurrentMtx);
        }
    }
    
    return 1;
}

/* 807E35B4-807E35B8 -00001 0004+00 3/7 0/0 0/0 .bss             None */
/* 807E35B4 0001+00 data_807E35B4 @1009 */
/* 807E35B5 0001+00 data_807E35B5 None */
/* 807E35B6 0001+00 data_807E35B6 None */
/* 807E35B7 0001+00 data_807E35B7 None */
static u8 lbl_244_bss_44;
static s8 lbl_244_bss_45;
static s8 lbl_244_bss_46;
static s8 lbl_244_bss_47;

/* 807E35B8-807E35BC 000048 0004+00 1/2 0/0 0/0 .bss             None */
static u8 lbl_244_bss_48;
static u8 lbl_244_bss_49;
static u8 lbl_244_bss_4a;
static u8 lbl_244_bss_4b;

/* 807E35C8-807E3624 000058 005C+00 9/14 0/0 0/0 .bss             l_HIO */
static daE_WB_HIO_c l_HIO;

/* 807D27D4-807D2B48 000434 0374+00 1/1 0/0 0/0 .text himo_control1__FP10e_wb_classP4cXyziSc */
// NONMATCHING
static void himo_control1(e_wb_class* i_this, cXyz* i_pos, int i_idx, s8 param_3) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    cXyz sp60;
    cXyz sp54;

    int i;
    s16 sp10;
    s16 spE;

    cXyz* var_r30 = i_this->field_0x1450[i_idx].field_0x0;
    var_r30[0] = *i_pos;

    cXyz sp48;
    cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
    cMtx_XrotM(*calc_mtx, a_this->shape_angle.x);

    sp60.x = 20.0f;
    if (i_idx == 0) {
        sp60.x *= -1.0f;
    }
    sp60.y = 0.0f;
    sp60.z = 0.0f;
    MtxPosition(&sp60, &sp48);

    cXyz sp3C;
    cXyz sp30;
    cXyz sp24;

    sp60.x = 0.0f;
    sp60.y = i_this->field_0x1684;
    sp60.z = sp60.y;
    MtxPosition(&sp60, &sp30);

    if (a_this->speedF > 20.0f) {
        sp60.x = i_this->field_0x1684 * 0.4f;
    } else {
        sp60.x = i_this->field_0x1684 * 0.1f;
    }

    if (i_idx == 0) {
        sp60.x *= -1.0f;
    }
    sp60.y = 0.0f;
    sp60.z = 0.0f;
    MtxPosition(&sp60, &sp24);

    sp60.x = 0.0f;
    sp60.y = 0.0f;
    if (param_3 != 0) {
        sp60.z = 15.0f;
    } else {
        sp60.z = 20.0f;
    }

    if (i_this->field_0x79d != 0) {
        sp60.z *= l_HIO.mLeaderSizeRatio;
        sp48 *= l_HIO.mLeaderSizeRatio;
        sp30 *= l_HIO.mLeaderSizeRatio;
        sp24 *= l_HIO.mLeaderSizeRatio;
    }

    i = 1;
    cXyz* var_r30_2 = var_r30 + 1;
    for (; i < 16; i++, var_r30_2++) {
        sp3C.x = sp30.x * cM_ssin(i_this->field_0x1688 + i * 6000);  
        sp3C.y = sp30.y * cM_ssin(i_this->field_0x1688 + i * 6000);
        sp3C.z = sp30.z * cM_ssin(i_this->field_0x1688 + i * 6000);

        f32 var_f29 = 1.0f;
        f32 var_f31 = sp24.x + (sp3C.x + ((var_r30_2[0].x - var_r30_2[-1].x) + (sp48.x * var_f29)));
        f32 var_f28 = sp3C.y + ((var_r30_2[0].y - var_r30_2[-1].y) - 20.0f);
        f32 var_f30 = sp24.z + (sp3C.z + ((var_r30_2[0].z - var_r30_2[-1].z) + (sp48.z * var_f29)));

        spE = (s16)cM_atan2s(var_f31, var_f30);
        sp10 = -cM_atan2s(var_f28, JMAFastSqrt(var_f31 * var_f31 + var_f30 * var_f30));

        cMtx_YrotS(*calc_mtx, spE);
        cMtx_XrotM(*calc_mtx, sp10);
        MtxPosition(&sp60, &sp54);

        var_r30_2[0].x = var_r30_2[-1].x + sp54.x;
        var_r30_2[0].y = var_r30_2[-1].y + sp54.y;
        var_r30_2[0].z = var_r30_2[-1].z + sp54.z;
    }
}

/* 807D2B84-807D2D90 0007E4 020C+00 1/1 0/0 0/0 .text himo_control2__FP10e_wb_classP4cXyziSc */
static void himo_control2(e_wb_class* i_this, cXyz* i_pos, int i_idx, s8 param_3) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    cXyz sp30;
    cXyz sp24;

    int i;
    s16 sp10;
    s16 spE;
    himo_s* sp1C = &i_this->field_0x1450[i_idx];
    cXyz* temp_r31 = &sp1C->field_0x0[15];
    *temp_r31 = *i_pos;

    sp30.x = 0.0f;
    sp30.y = 0.0f;

    if (param_3 != 0) {
        sp30.z = 20.0f + YREG_F(7);
    } else {
        sp30.z = 15.0f + YREG_F(6);
    }

    temp_r31--;

    for (i = 14; i >= 1; i--, temp_r31--) {
        f32 temp_f31 = temp_r31[0].x - temp_r31[1].x;
        f32 temp_f29 = temp_r31[0].y - temp_r31[1].y;
        f32 temp_f30 = temp_r31[0].z - temp_r31[1].z;
        spE = (s16)cM_atan2s(temp_f31, temp_f30);
        sp10 = -cM_atan2s(temp_f29, JMAFastSqrt((temp_f31 * temp_f31) + (temp_f30 * temp_f30)));

        cMtx_YrotS(*calc_mtx,spE);
        cMtx_XrotM(*calc_mtx,sp10);
        MtxPosition(&sp30, &sp24);

        temp_r31[0].x = temp_r31[1].x + sp24.x;
        temp_r31[0].y = temp_r31[1].y + sp24.y;
        temp_r31[0].z = temp_r31[1].z + sp24.z;
    }

    // this = ::mDoExt_3DineMat1_c::getPos((mDoExt_3DlineMat1_c *)(param_1 + param_3 * 0x3c + 0x1620),0);
    temp_r31 = sp1C->field_0x0;
    cXyz* var_r29 = i_this->field_0x15d0[i_idx].getPos(0);
    for (int i = 0; i < 16; i++, var_r29++, temp_r31++) {
        *var_r29 = *temp_r31;
    }

    var_r29 = i_this->field_0x1648.getPos(0);
    var_r29[i_idx] = i_this->field_0x1450[i_idx].field_0x0[15];
}

/* 807D2D90-807D2F18 0009F0 0188+00 1/1 0/0 0/0 .text            e_wb_lr_wall_check__FP10e_wb_class
 */
static int e_wb_lr_wall_check(e_wb_class* i_actor) {
    e_wb_class* a_actor = (e_wb_class*)i_actor;

    dBgS_LinChk linChk;
    cXyz pos1;
    cXyz pos2;
    cXyz pos3;
    
    pos2 = a_actor->current.pos;
    pos2.y += 300.0f;
    
    cMtx_YrotS(*calc_mtx,a_actor->shape_angle.y);
    pos1.x = -400.0f;
    pos1.y = 300.0f;
    pos1.z = 400.0f;

    MtxPosition(&pos1,&pos3);
    pos3 += a_actor->current.pos;
    linChk.Set(&pos2,&pos3,a_actor);

    if (dComIfG_Bgsp().LineCross(&linChk)) {
        if (fopAcM_GetName(dComIfG_Bgsp().GetActorPointer(linChk)) == PROC_BG) {
            return -1;
        }
    }
    
    pos1.x *= -1.0f;
    MtxPosition(&pos1,&pos3);
    pos3 += a_actor->current.pos;

    if (dComIfG_Bgsp().LineCross(&linChk)) {
        if (fopAcM_GetName(dComIfG_Bgsp().GetActorPointer(linChk)) == PROC_BG) {
            return 1;
        }
    }
    
    return 0;
}

/* 807D2F18-807D366C 000B78 0754+00 1/0 0/0 0/0 .text            daE_WB_Draw__FP10e_wb_class */
static int daE_WB_Draw(e_wb_class* i_this) {
    static _GXColor l_color = {0x14, 0x0F, 0x00, 0xFF,};
    f32 fVar9;
    int local_74;
    int local_78;

    if (i_this->field_0x1430 != 0 || i_this->mActionID == ACT_EVENT) {
        return 1;
    }
    
    cXyz local_3c;
    cXyz local_48;

    J3DModel* model = i_this->mpModelMorf->getModel();
    g_env_light.settingTevStruct(0,&i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model,&i_this->tevStr);
    i_this->mpModelMorf->entryDL();

    cXyz cStack_54;
    cStack_54.set(i_this->current.pos.x, i_this->current.pos.y + 100.0f + BREG_F(0x12), i_this->current.pos.z);

    if (i_this->field_0x79d != 0) {
        fVar9 = i_this->scale.z * 800.0f;
    } else {
        fVar9 = i_this->scale.z * 1000.0f;
    }
    
    fVar9 += BREG_F(0x13);

    i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, 
        &cStack_54, fVar9, 0.0f, 
        i_this->current.pos.y, i_this->mAcch.GetGroundH(), 
        i_this->mAcch.m_gnd, &i_this->tevStr, 0, 
        1.0f, dDlst_shadowControl_c::getSimpleTex());

    if (l_HIO.mNoReins == 0) {
        MTXCopy(model->getAnmMtx((i_this->field_0x688 + 0xb) + YREG_S(3)), *calc_mtx);
        MtxPush();

        s8 cVar7 = 0;
        e_rd_class* pfVar4 = (e_rd_class*)fopAcM_SearchByID(i_this->field_0x1434);
        
        if ((i_this->field_0x6be & 1) != 0) {
            if (pfVar4 && pfVar4->field_0x9bc == 2) {
                if (i_this->field_0x7a2 == 0) {
                    model = pfVar4->mpModelMorf->getModel();
                    cVar7 = 1;
                }
            } else {
                if (daAlink_getAlinkActorClass()->checkBoarRideOwn(i_this)) {
                    if (!daAlink_getAlinkActorClass()->checkHorseNotGrab()) {
                        cVar7 = 1;
                    }
                }
            }
        }
        
        local_3c.x = YREG_F(0) + 80.0f;
        local_3c.y = YREG_F(1) - 20.0f;

        if (i_this->field_0x79d != 0) {
            local_3c.z = YREG_F(2) + 42.0f;
        } else {
            local_3c.z = YREG_F(0xc) + 47.0f;
        }
        
        MtxPosition(&local_3c,&local_48);
        himo_control1(i_this,&local_48, 0,cVar7);
        local_3c.z *= -1.0f;
        MtxPull();
        MtxPosition(&local_3c,&local_48);
        himo_control1(i_this,&local_48, 1,cVar7);

        if (cVar7 != 0) {
            cXyz local_60;

            if (daAlink_getAlinkActorClass()->checkBoarRideOwn(i_this)) {
                daAlink_getAlinkActorClass()->getHorseReinHandPos(&local_60, &local_48);
                i_this->field_0x1438[0] = local_48;
                i_this->field_0x1438[1] = local_60;
            } else {
                if (pfVar4->mBossMode != 0) {
                    local_78 = 0xf;
                    local_74 = 0x14;
                } else {
                    local_78 = 0x13;
                    local_74 = 0x18;
                }
                
                MTXCopy(model->getAnmMtx(local_74), *calc_mtx);
                local_3c.x = PREG_F(0xd) + 15.0f;
                local_3c.y = PREG_F(0xe);
                local_3c.z = PREG_F(0xf);
                MtxPosition(&local_3c,&local_48);

                MTXCopy(model->getAnmMtx(local_78), *calc_mtx);
                local_3c.x = PREG_F(0x10) + 15.0f;
                local_3c.y = PREG_F(0x11);
                local_3c.z = PREG_F(0x12);
                MtxPosition(&local_3c,&local_60);
            }
            
            if (i_this->field_0x168c > 100.0f) {
                i_this->field_0x1438[0] = local_48;
                i_this->field_0x1438[1] = local_60;
                
            } else {
                cLib_addCalc2(&i_this->field_0x1438[0].x, local_48.x,1.0f, i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[0].y, local_48.y,1.0f, i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[0].z, local_48.z,1.0f, i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[1].x, local_60.x,1.0f, i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[1].y, local_60.y,1.0f, i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[1].z, local_60.z,1.0f, i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x168c, 1000.0f, 1.0f, 10.0f);
                local_3c = i_this->field_0x1438[0] - local_48;
                
                if (local_3c.abs() > 500.0f) {
                    i_this->field_0x1438[0] = local_48;
                    i_this->field_0x1438[1] = local_60;
                }
            }
        } else {
            i_this->field_0x168c = 0.0f;
            MTXCopy(model->getAnmMtx(i_this->field_0x688 + 0xe),*calc_mtx);
            local_3c.x = YREG_F(3) + 50.0f;
            local_3c.y = YREG_F(4) + 60.0f;
            local_3c.z = YREG_F(5);
            MtxPosition(&local_3c,&i_this->field_0x1438[0]);
            i_this->field_0x1438[1] = i_this->field_0x1438[0];
            
        }
        
        himo_control2(i_this, &i_this->field_0x1438[0], 0, cVar7);
        himo_control2(i_this, &i_this->field_0x1438[1], 1, cVar7);
        i_this->field_0x15d0[0].update(0x10, l_color, &i_this->tevStr);
        dComIfGd_set3DlineMat(&i_this->field_0x15d0[0]);
        i_this->field_0x15d0[1].update(0x10,l_color, &i_this->tevStr);
        dComIfGd_set3DlineMat(&i_this->field_0x15d0[1]);
        i_this->field_0x1648.update(2,l_color, &i_this->tevStr);
        dComIfGd_set3DlineMat(&i_this->field_0x1648);
    }

    return 1;
}

/* 807D366C-807D387C 0012CC 0210+00 1/1 0/0 0/0 .text            e_wb_wall_check__FP10e_wb_class */
// NONMATCHING - stack issues, missing / wrong instructions
static int e_wb_wall_check(e_wb_class* i_this) {
    e_wb_class* a_this = (e_wb_class*)i_this;
    dBgS_LinChk linChk;
    cXyz pos1;
    cXyz pos2;
    cXyz pos3;

    cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
    pos1.x = 10.0f;
    pos1.y = 120.0f;
    pos1.z = BREG_F(8) + 250.0f;

    MtxPosition(&pos1, &pos3);
    pos3 += a_this->current.pos;
    pos2 = a_this->current.pos;
    pos2.y += 200.0f;

    linChk.Set(&pos2, &pos3, a_this);
    if (dComIfG_Bgsp().LineCross(&linChk)) {
        if (fopAcM_GetName(dComIfG_Bgsp().GetActorPointer(linChk)) != PROC_BG) {
            return 0;
        } else {
            cXyz pos4 = linChk.GetCross();
            pos1.x *= -1.0f;
            MtxPosition(&pos4,&pos3);
            pos3 += a_this->current.pos;
            linChk.Set(&pos2, &pos3, a_this);

            if (dComIfG_Bgsp().LineCross(&linChk)) {
                pos4 = linChk.GetCross();
                return 0;
            } else {
                pos4 = pos4 - pos3;
                int tmp = cM_atan2s(pos1.x, pos1.z) + 0x4000 - a_this->shape_angle.y;
                return tmp;
            }
        }
    } else {
        return 0;
    }
}

/* 807D387C-807D3B94 0014DC 0318+00 1/1 0/0 0/0 .text            gake_check__FP10e_wb_class */
static s8 gake_check(e_wb_class* a_this) {
    e_wb_class* i_this = (e_wb_class*)a_this;
    dBgS_GndChk dStack_70;
    cXyz local_7c;
    cXyz cStack_88;

    static f32 chk_x[4] = {3606.25f, 3590.859375f, -3423.5f, -3466.6875f};
    static f32 chk_z[4] = {3901.375f, -3456.40625f, 3535.5f, 3984.5625f};
    
    if (lbl_244_bss_46 != 0) {
        if (!daAlink_getAlinkActorClass()->checkBoarRideOwn(i_this) && i_this->current.pos.y < -5000.0f) {
            OS_REPORT(" WB NARAKU DOWN  2\n");
            fopAcM_delete(i_this);
            return 0;
        }

        for (int i =  0; i < 4; i++) {
            local_7c.x = nREG_F(3) + chk_x[i] - i_this->current.pos.x;
            local_7c.z = nREG_F(4) + chk_z[i] - i_this->current.pos.z;
            s16 sVar1 = cM_atan2s(local_7c.x,local_7c.z) - i_this->shape_angle.y;
            if (JMAFastSqrt(local_7c.x * local_7c.x + local_7c.z * local_7c.z) < nREG_F(8) + 2000.0f) {
                if (sVar1 < 0x4000 && sVar1 > -0x4000) {
                    return 2;
                }
                
                return -1;
            }
        }
    }

    cMtx_YrotS(*calc_mtx,i_this->shape_angle.y);
    local_7c.x = 500.0f;
    local_7c.y = 1000.0f;
    local_7c.z = JREG_F(0) + 1000.0f;
    MtxPosition(&local_7c,&cStack_88);
    cStack_88 += i_this->current.pos;
    dStack_70.SetPos(&cStack_88);
    f32 ground_cross = dComIfG_Bgsp().GroundCross(&dStack_70);
    
    if (i_this->current.pos.y - ground_cross > 2000.0f) {
        return 1;
    } else {
        local_7c.x = -500.0f;
        MtxPosition(&local_7c,&cStack_88);
        cStack_88 += i_this->current.pos;
        dStack_70.SetPos(&cStack_88);
        ground_cross = dComIfG_Bgsp().GroundCross(&dStack_70);

        if (i_this->current.pos.y - ground_cross > 2000.0f) {
            return 1;
        } else {
            local_7c.x = 0.0f;
            local_7c.y = 1000.0f;
            local_7c.z = JREG_F(1) + 2000.0f;
            MtxPosition(&local_7c,&cStack_88);
            cStack_88 += i_this->current.pos;
            dStack_70.SetPos(&cStack_88);
            ground_cross = dComIfG_Bgsp().GroundCross(&dStack_70);

            if (i_this->current.pos.y - ground_cross > 2000.0f) {
                return 1;
            } else {
                return 0;
            }
        }
    }
}

/* 807D3B94-807D3D94 0017F4 0200+00 1/1 0/0 0/0 .text e_wb_saku_jump_check__FP10e_wb_class */
// NONMATCHING - missing instruction / bad branch
static BOOL e_wb_saku_jump_check(e_wb_class* a_this) {
    e_wb_class* i_this = (e_wb_class*)a_this;
    dBgS_LinChk dStack_98;
    cXyz local_a8;
    cXyz cStack_b4;
    cXyz cStack_c0;
    cMtx_YrotS(*calc_mtx,i_this->shape_angle.y);
    cMtx_XrotM(*calc_mtx, i_this->shape_angle.x);
    local_a8.x = 10.0f;
    local_a8.y = 150.0f;
    local_a8.z = KREG_F(8) + 500.0f;
    MtxPosition(&local_a8,&cStack_c0);
    cStack_c0 += i_this->current.pos;
    cStack_b4 = i_this->current.pos;
    cStack_b4.y += 100.0f;
    dStack_98.Set(&cStack_b4,&cStack_c0,i_this);
    
    if (dComIfG_Bgsp().LineCross(&dStack_98)) {
        cXyz cStack_cc(dStack_98.GetCross());
        cXyz cStack_d8;

        local_a8.x *= -1.0f;
        MtxPosition(&local_a8,&cStack_c0);
        cStack_c0 += i_this->current.pos;
        dStack_98.Set(&cStack_b4,&cStack_c0,i_this);
        
        if (dComIfG_Bgsp().LineCross(&dStack_98)) {
            cStack_d8 = dStack_98.GetCross();
            return 0;
        } else {
            local_a8 = cStack_d8 - cStack_cc;
            s16 sVar1 = (cM_atan2s(local_a8.x,local_a8.z) + 0x4000) - i_this->shape_angle.y;

            if ((sVar1 > -0x3000) && (sVar1 < 0x3000)) {
                return 1;
            }
        }
    }
  
    return 0;
}

/* 807D3D94-807D3F2C 0019F4 0198+00 1/1 0/0 0/0 .text e_wb_saku_check_sub__FP10e_wb_classs */
// NONMATCHING - float instruction ordering
static int e_wb_saku_check_sub(e_wb_class* i_this, s16 param_1) {
    dBgS_GndChk dStack_90;
    dBgS_LinChk dStack_100;
    cXyz local_10c;
    cXyz cStack_118;
    cXyz cStack_124;

    f32 iVar2 = i_this->field_0x68e & 7;
    f32 local_38 = 176.0f;
    
    cMtx_YrotS(*calc_mtx,i_this->shape_angle.y + param_1);
    local_10c.x = 0.0f;
    local_10c.y = 2000.0f;
    local_10c.z = iVar2 * 400.0f;
    MtxPosition(&local_10c,&cStack_118);
    cStack_118 += i_this->current.pos;
    dStack_90.SetPos(&cStack_118);
    cStack_118.y = dComIfG_Bgsp().GroundCross(&dStack_90) + 150.0f;
    local_10c.x = 0.0f;
    local_10c.y = 0.0f;
    local_10c.z = 410.0f;

    MtxPosition(&local_10c,&cStack_124);
    cStack_124 += cStack_118;
    dStack_100.Set(&cStack_118,&cStack_124,i_this);

    if (dComIfG_Bgsp().LineCross(&dStack_100)) {
        return 1;
    }

    return 0;
    
}

/* 807D3F2C-807D3FB0 001B8C 0084+00 1/1 0/0 0/0 .text            e_wb_saku_check__FP10e_wb_class */
static int e_wb_saku_check(e_wb_class* i_this) {
    int uVar2 = false;
    static s16 yaa[3] = {0, -4096, 4096};
    static u32 saku_bit[3] = {1, 2, 4};

    for (int i = 0; i < 3; i++) {
        if (e_wb_saku_check_sub(i_this,yaa[i])) {
            uVar2 |= saku_bit[i];
        }
    }
    
    return uVar2;
}

/* 807D3FB0-807D40A8 001C10 00F8+00 1/1 0/0 0/0 .text            e_wb_wait__FP10e_wb_class */
static void e_wb_wait(e_wb_class* i_this) {    
    switch (i_this->mActionMode) {
    case 0:
        anm_init(i_this, 0x25, 3.0f, 2, 1.0f);
        i_this->mActionMode = 1;
    case 1:
        if (i_this->speedF > 15.0f) {
            i_this->field_0x142c = 2;
            i_this->mZ2Ride.startCreatureSoundLevel(Z2SE_EN_WB_L_SLIP, 0, -1);
        } else {
            anm_init(i_this,0x2a,10.0f,2,1.0f);
            i_this->mActionMode = 2;
            i_this->field_0x6be |= 0x20;
        }
    case 2:
    default:
        cLib_addCalc0(&i_this->speedF,1.0f,1.0f);    
    }
}

/* 807D40A8-807D4110 001D08 0068+00 1/1 0/0 0/0 .text            e_wb_ride__FP10e_wb_class */
static void e_wb_ride(e_wb_class* i_this) {
    switch (i_this->mActionMode) {
    case 0:
        anm_init(i_this, 0x1f, 3.0f, 0, 1.0f);
        i_this->mActionMode = 1;
    case 1:
    default:
        return;
    }
}

/* 807D4110-807D4154 001D70 0044+00 1/1 0/0 0/0 .text            e_wb_pl_ride_now__FP10e_wb_class */
static void e_wb_pl_ride_now(e_wb_class* i_this) {
    if (i_this->mAnmID != 0x2a) {
        anm_init(i_this,0x2a,10.0f,2,1.0f);
    }
}

/* 807D4154-807D48C0 001DB4 076C+00 1/1 0/0 0/0 .text            e_wb_pl_ride__FP10e_wb_class */
static void e_wb_pl_ride(e_wb_class* i_this) {
    f32 fVar11 = l_HIO.mCalvaryBattleMaxSpeed;
    f32 fVar2;

    if (i_this->field_0x1432 != 0) {
        if (i_this->field_0x1432 == 1) {
            i_this->mActionID = ACT_PL_RIDE;
        }
        
        if (i_this->mAnmID == 0x1b) {
            if (!i_this->mpModelMorf->isStop()) {
                if (i_this->mpModelMorf->checkFrame(22.0f) && !i_this->mpModelMorf->checkFrame(42.0)) {
                    return;
                }
                
                cXyz cStack_7c(0.0f,1.0f,0.0f);
                dComIfGp_getVibration().StartShock(5,0x1f,cStack_7c);
                return;
            }
            
            anm_init(i_this,0x20,2.0f,2,2.0f);
            i_this->speedF = 1.0;
        }
        
        fVar11 = 50.0f;

        if ((i_this->field_0x1432 & 0xf) == 0) {
            cXyz cStack_88(0.0f,1.0f,0.0f);
            dComIfGp_getVibration().StartShock(3,0x1f,cStack_88);
        }
    }

    if (i_this->mAnmID == 0x25) {
        cLib_chaseF(&i_this->speedF,0.0f,2.0f);
        if (i_this->speedF < 0.01f) {
            anm_init(i_this,0x2a,10.0f,2,1.0f);
        }
        
        if (i_this->speedF > 10.0) {
            i_this->field_0x142c = 2;
        }
    } else {
        f32 stick_value = mDoCPd_c::getStickValue(0);

        if (daAlink_getAlinkActorClass()->checkHorseGetOffMode()) {
            stick_value = 0.0f;
        }

        f32 fVar1 = 1.5;
        s16 stick_angle;
        
        if (i_this->mActionID == 0x65) {
            stick_angle = mDoCPd_c::getStickAngle3D(0);
        } else {
            fVar2 = 1.0;
            fVar1 = 10.0;
            
            if (!dComIfGp_event_runCheck()) {
                stick_angle = mDoCPd_c::getStickAngle3D(0);
                
                if (fVar11 < 0.1f) {
                    stick_angle = -0x8000;
                }
            } else {
                stick_angle = -0x8000;
            }
        }
        
        s16 angle_y = dCam_getControledAngleY(dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0)));
        
        angle_y -= 0x8000;
        int iVar4 = 0;
        s16 angle_delta = angle_y - i_this->current.angle.y;
        
        if (i_this->mActionID == 0x65) {
            if (abs(angle_delta) < 0x6001) {
                if (angle_delta < 0x2000) {
                    if (angle_delta < -0x1fff) {
                        iVar4 = 3;
                    }
                } else {
                    iVar4 = 2;
                }
            } else {
                iVar4 = 1;
            }
        } else if (angle_delta < 0x2000) {
            if (angle_delta < -0x1fff) {
                iVar4 = 3;
            }
        } else {
            iVar4 = 2;
        }
        
        if (i_this->field_0x142f == 2) {
            if (i_this->speedF >= 0.1f) {
                iVar4 = 1;
            } else if (iVar4 == 0) {
                fVar11 = 0.0;
            }
            
            if (i_this->mActionID != ACT_PL_RIDE) {
                i_this->mActionID = ACT_PL_RIDE;
                i_this->field_0x1432 = 0;
                
                if (l_HIO.mNormalSpeedVi < i_this->speedF) {
                    i_this->speedF = l_HIO.mNormalSpeedVi;
                }
            }
        } else if (i_this->field_0x142f && iVar4 == 1) {
            fVar11 = 0.0f;
        }

        // Bulblin Camp, Outside Arbiter's Grounds Room
        if (strcmp(dComIfGp_getStartStageName(),"F_SP118") && 
            fopAcM_GetRoomNo(i_this) == 3 && 
            dComIfGp_event_runCheck() || 
            dComIfGp_checkPlayerStatus0(0,0x2000)) {
            fVar11 = 0.0f;
        }

        i_this->mWaitRollAngle = 0;
        if (iVar4 != 1 && fVar11 > 0.01f) {
            s16 curr_angle_y = i_this->current.angle.y;
            
            if (i_this->mActionID == ACT_PL_RIDE) {
                cLib_addCalcAngleS2(&i_this->current.angle.y,curr_angle_y,4,500);
                i_this->mTargetAngleStep = 0;
            } else {
                s16 local_94 = 0;
                s16 local_96 = KREG_S(3) + 0x40;

                if (iVar4 == 2) {
                    local_94 = KREG_S(2) + 0x300;
                } else if (iVar4 == 3) {
                    local_94 = -KREG_S(2) + 0x300;
                } else {
                    local_96 = KREG_S(4) + 0x10;
                }
                
                cLib_addCalcAngleS2(&i_this->mTargetAngleStep,local_94,4,local_96);
                i_this->current.angle.y += i_this->mTargetAngleStep;
            }
            
            i_this->mWaitRollAngle = i_this->current.angle.y - curr_angle_y;
            f32 fVar10 = i_this->mWaitRollAngle * TREG_S(7) - 8 * i_this->speedF / l_HIO.mBaseSize + 1.0f;
            
            if (fVar10 <= NREG_F(0x11) + 4500.0f) {
                if (fVar10 < -NREG_F(0x11) + 4500.0f)
                    fVar10 = -NREG_F(0x11) + 4500.0f;
            } else {
                fVar10 = NREG_F(0x11) + 4500.0f;
            }
            
            cLib_addCalcAngleS2(&i_this->field_0x79a,(s16)fVar10,8,0x140);
        }
        
        if (i_this->speedF >= 0.01f) {
            i_this->mWaitRollAngle = 0;

            if (fVar11 <= 0.01) {
                cLib_chaseF(&i_this->speedF,0.0f,0.5);
                
                if (i_this->mAnmID == 0x20 && i_this->speedF < TREG_F(3) + 20.0f) {
                    anm_init(i_this, 0x2b, 0.0f, 2, 0.0f);
                }
            } else if (iVar4 == 1) {
                if ((fVar11 * 0.3f < i_this->speedF && i_this->mAnmID != 0x25)) {
                    anm_init(i_this, 0x25, 0.0f, 2, 0.0f);
                }
                
                cLib_chaseF(&i_this->speedF,0.0f,2.0f);
            } else {
                cLib_chaseF(&i_this->speedF, fVar11 * fVar2, fVar1);
                
                if (TREG_F(3) + 20.0f <= i_this->speedF) {
                    if (i_this->mAnmID != 0x20) {
                        anm_init(i_this, 0x20, 0.0f, 2, 0.0f);
                    }
                } else if (i_this->mAnmID != 0x2b) {
                    anm_init(i_this, 0x2b, 0.0f, 2, 0.0f);
                }
            }
        } else if (fVar2 <= 0.01f) {
            fVar11 = fabsf(i_this->speedF);
            
            if (fVar11 >= 0.01f) {
                cLib_chaseF(&i_this->speedF,0.0f,0.5f);
            } else if (i_this->mAnmID != 0x2a) {
                anm_init(i_this, 0x2a, 0.0f, 2, 0.0f);
            }
        } else if (iVar4 == 0) {
            i_this->mWaitRollAngle = 0;
            i_this->speedF = fVar1;
        } else {
            if (iVar4 == 1) {
                i_this->mWaitRollAngle = 0;
                cLib_chaseF(&i_this->speedF,fVar11 * fVar2 * -0.2f, 1.0f);
            }
            
            if (i_this->mAnmID != 0x28) {
                anm_init(i_this, 0x28, 0.0f, 2, 0.0f);
            }
        }
        
        if (i_this->mAnmID == 0x20) {
            i_this->mpModelMorf->setPlaySpeed(BREG_F(0) + 0.4f + (l_HIO.mPlayerMountedMaxSpeed * i_this->speedF) / l_HIO.mPlayerMountedMotionPlaybackSpeed);
            i_this->field_0x142c = 1;
            i_this->field_0x6bd = 1;
        } else if (i_this->mAnmID == 0x2b) {
            i_this->mpModelMorf->setPlaySpeed(TREG_F(4) + 0.7f + (TREG_F(5) + 0.05f) * i_this->speedF);
        }
    }
}

/* 807D48C0-807D4BDC 002520 031C+00 1/1 0/0 0/0 .text            e_wb_f_wait__FP10e_wb_class */
// NONMATCHING
static void e_wb_f_wait(e_wb_class* i_this) {
    s16 angle = fopAcM_searchPlayerAngleY(i_this);
    s16 new_angle;

    switch (i_this->mActionMode) {
    case 0:
      if (lbl_244_bss_45 != 0 && i_this->mParam2 == 1 || i_this->mParam == 1) {
            i_this->mActionMode = 10;
            anm_init(i_this,0x28,5.0f,2,1.5f);

            if (cM_rndF(1.0) < 0.5f) {
                i_this->field_0x7a0 = 0x3000;
            } else {
                i_this->field_0x7a0 = -0x3000;
            }
      }

      break;
    case 1:
      anm_init(i_this,0x28,5.0f,2,1.5f);
      i_this->mActionMode = 1;
      i_this->field_0x6be |= 4;

    case 11:
        cLib_addCalcAngleS2(&i_this->current.angle.y, angle, 8,0x200);
        i_this->field_0x6d0 = angle - i_this->current.angle.y;

        if (i_this->field_0x6d0 < 0x800 && i_this->field_0x6d0 > -0x800) {
            if (i_this->field_0x142f != 1) {
                fopAc_ac_c* player = dComIfGp_getPlayer(0);
                i_this->mActionID = 6;
                i_this->mActionMode = 0;
                i_this->field_0x5d0 = player->current.pos;
            } 
            
            if (i_this->mAnmID != 0x2a) {
                anm_init(i_this,0x2a,10.0f,2,1.0f);
            }
        }
        break;

    case 6:
        new_angle = angle + i_this->field_0x7a0;

        cLib_addCalcAngleS2(&i_this->current.angle.y,new_angle,8,0x200);
        i_this->field_0x6d0 = new_angle - i_this->current.angle.y;
    
        if (i_this->field_0x6d0 < 0x800 && i_this->field_0x6d0 > -0x800) {
            anm_init(i_this,0x2a,10.0f,2,1.0f);
            i_this->mActionMode = 11;
        }

    case 2:
        i_this->field_0x6d0 = i_this->field_0x7a0 - i_this->current.angle.y;

        if (i_this->field_0x6d0 > 0x1000 || i_this->field_0x6d0 < -0x1000) {
            i_this->mActionMode = 10;
            anm_init(i_this,0x28,5.0f,2,1.5f);
        }

        cLib_addCalc0(&i_this->speedF,1.0f,2.0f);

        if (i_this->mActionMode >= 10) {
            f32 dist = fopAcM_searchPlayerDistanceXZ(i_this);
            
            if (!(dist < 500.0f) && !(dist > 1500.0f)) {
                if (!daPy_getPlayerActorClass()->checkHorseRide()) {
                    return;
                }
                
                if (!(dComIfGp_getHorseActor()->speedF >= 30.0f)) {
                    return;
                }
            }
            
            if (i_this->field_0x142f == 0) {
                i_this->mActionID = 6;
                i_this->mActionMode = 0;
            }
        }
    }
}

/* 807D4BDC-807D4C84 00283C 00A8+00 1/1 0/0 0/0 .text            pl_pass_check__FP10e_wb_classf */
static bool pl_pass_check(e_wb_class* i_this, f32 param_1) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    
    cXyz pos_delta;
    cXyz cStack_24;
    
    pos_delta = i_this->current.pos - player->current.pos;
  
    cMtx_YrotS(*calc_mtx,-player->shape_angle.y);
    MtxPosition(&pos_delta,&cStack_24);

    return cStack_24.z > param_1;
}

/* 807D4C84-807D53AC 0028E4 0728+00 1/1 0/0 0/0 .text            e_wb_f_run__FP10e_wb_class */
static void e_wb_f_run(e_wb_class* i_this) {
    // NONMATCHING
}

/* 807D53AC-807D5408 00300C 005C+00 2/2 0/0 0/0 .text            s_wbstart_sub__FPvPv */
static int s_wbstart_sub(void* i_actor, void* i_data) {
  if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_WB && static_cast<e_wb_class*>(i_actor)->field_0x79d == 0) {
    static_cast<e_wb_class*>(i_actor)->field_0x7a6 = 1;
    static_cast<e_wb_class*>(i_actor)->field_0x7a7 = 1;
  }

  return 0;
}

/* 807D5408-807D5634 003068 022C+00 1/1 0/0 0/0 .text            e_wb_b_wait__FP10e_wb_class */
static void e_wb_b_wait(e_wb_class* i_this) {
    // NONMATCHING
}

/* 807E3630-807E3690 0000C0 0060+00 1/4 0/0 0/0 .bss             b_path */
static cXyz b_path[8];

/* 807E369C-807E36FC 00012C 0060+00 2/3 0/0 0/0 .bss             b_path2 */
static cXyz b_path2[8];

/* 807D5634-807D5EBC 003294 0888+00 1/1 0/0 0/0 .text            e_wb_b_run2__FP10e_wb_class */
static void e_wb_b_run2(e_wb_class* i_this) {
    fopAc_ac_c* player_p = dComIfGp_getPlayer(0);
    cXyz pos1;
    cXyz pos2;
    f32 dist = fopAcM_searchPlayerDistanceXZ(i_this);
    f32 fVar10 = 0.0f;
    f32 fVar1 = 1.0f;
    s16 curr_angle = i_this->current.angle.y;
    
    switch (i_this->mActionMode) {
    case 0:
        anm_init(i_this,0x1b,3.0f, 0, 1.0f);
        i_this->mActionMode = 1;
        i_this->field_0x6be |= 8;
        i_this->field_0x1684 = 40.0f;
        i_this->mPlaySpeed = 1.0f;
        break;
    case 1:
        if (i_this->mpModelMorf->checkFrame(3.0f) != 0) {
            i_this->field_0x142d |= 2;
            i_this->field_0x142c = 10;
        } else {
            if (i_this->mpModelMorf->checkFrame(15.0f) != 0) {
                i_this->field_0x142d |= 3;
            }
        }
        
        if (i_this->mpModelMorf->isStop()) {
            anm_init(i_this,0x20,5.0f,2,1.0f);
            i_this->mActionMode = 2;
            cXyz loop_pos1;
            cXyz loop_pos2;
            int local_e0 = 0;

            for (int i = 1; i < 8; i++) {
                loop_pos1 = b_path2[local_e0] - i_this->current.pos;
                loop_pos2 = b_path2[i] - i_this->current.pos;

                if (loop_pos1.abs() > loop_pos2.abs()) {
                    local_e0 = i;
                }
            }
            
            i_this->mBPathIdx = local_e0;
            i_this->field_0x698 = cM_rndF(100.0f) + 100.0f; 
        }
        
        break;
    case 2:
        i_this->field_0x6bd = 1;
        
        for (int i = 0; i < 8; i++) {
            cMtx_YrotS(*calc_mtx,i << 0xd);
            pos1.z = 3000.0f;
            MtxPosition(&pos1,&pos2);
            pos2 += player_p->current.pos;
            b_path2[i] = pos2;
        }
        
        pos1 = b_path2[i_this->mBPathIdx] - i_this->current.pos;
        pos1.y = 0.0f;
        
        if (pos1.abs() < 600.0f) {
            int local_ec = 1;
            pos1 = b_path2[(i_this->mBPathIdx + 1) & 7] - i_this->current.pos;
            
            s16 tmp = i_this->current.angle.y - cM_atan2s(pos1.x,pos1.z);

            if (tmp < 0x4000 && tmp > -0x4000) {
                i_this->mBPathIdx += local_ec;
            } else {
                i_this->mBPathIdx -= local_ec;
            }

            i_this->mBPathIdx &= 7;
            i_this->mTargetAngleStep = 0;
        }
        
        pos1 = b_path2[i_this->mBPathIdx] - i_this->current.pos;
        i_this->mAngleTarget = cM_atan2s(pos1.x,pos1.z);

        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mAngleTarget,8,i_this->mTargetAngleStep);
        cLib_addCalcAngleS2(&i_this->mTargetAngleStep,0x400,1,0x10);

        fVar1 = 3.0f;
        fVar10 = l_HIO.mLeaderMaxSpeed;
        i_this->field_0x142c = 1;

        if (i_this->field_0x698 == 0 && dist < 5000.0f) {
            anm_init(i_this,0x25,3.0f,2,1.0f);
            i_this->mActionMode = 3;
        }
        break;
    case 3:
        if (i_this->speedF > 15.0f) {
            i_this->field_0x142c = 2;
        }
        
        if (i_this->speedF < 1.0f) {
            i_this->mActionID = ACT_B_WAIT;
            i_this->mActionMode = 0;
            return;
        }
    }
    
    cLib_addCalc2(&i_this->speedF,fVar10,1.0f,fVar1);
    cLib_addCalcAngleS2(&i_this->field_0x79a, -4 * (i_this->current.angle.y - curr_angle),8,0x200);
    i_this->mpModelMorf->setPlaySpeed(i_this->mPlaySpeed);
    cLib_addCalc2(&i_this->mPlaySpeed,1.0f,1.0f,0.1f);

    if (dist < 1000.0f) {
        i_this->mActionID = ACT_B_RUN;

        if (i_this->mAnmID == 0x20) {
            i_this->mActionMode = 2;
        } else {
            i_this->mActionMode = 0;
            i_this->mZ2Ride.startCreatureVoice(Z2SE_EN_RDB_V_HOICK, -1);
        }
    }

    if (i_this->mActionMode < 3 && i_this->field_0x142f > 0) {
        anm_init(i_this,0x25,3.0f,2,1.0f);
    
        if (i_this->speedF > 30.0f)
            i_this->speedF = 30.0f;
        
        i_this->mActionMode = 3;
    }
}

/* 807D5EBC-807D6058 003B1C 019C+00 1/1 0/0 0/0 .text            e_wb_b_wait2__FP10e_wb_class */
static void e_wb_b_wait2(e_wb_class* i_this) {
    // NONMATCHING
}

/* 807D6058-807D6C2C 003CB8 0BD4+00 2/1 0/0 0/0 .text            e_wb_b_run__FP10e_wb_class */
// NONMATCHING - float and general regalloc
static void e_wb_b_run(e_wb_class* i_this) {
    fopAc_ac_c* player_p = dComIfGp_getPlayer(0);
    cXyz pos1;
    cXyz pos2;
    f32 dist = fopAcM_searchPlayerDistanceXZ(i_this);
    f32 speed_target = 0.0;
    f32 speed_step = 1.0;
    
    if ((i_this->field_0x6be & 1) == 0) {
        i_this->mActionID= 7;
        i_this->mActionMode = 0;
    } else {
        s8 bVar11 = false;
        f32 fVar14 = l_HIO.mLeaderCalvaryBattleMaxSpeed;
        if (daPy_getPlayerActorClass()->checkHorseRide() && dComIfGp_getHorseActor()->speedF >= 30.0f) {
            bVar11 = true;
        }

        s16 sVar3 = i_this->current.angle.y;
        f32 horse_speed = 1.0f;
        s8 bVar4 = false;
        
        switch(i_this->mActionMode) {
        case 0:
            i_this->field_0x6be |= 8;
        case 1:
            i_this->field_0x1684 = 30.0f;
            i_this->mPlaySpeed = 1.0f;
            anm_init(i_this,0x20,5.0f,2,1.0f);
            i_this->mActionMode = 2;
            i_this->field_0x6be |= 0x10;
            i_this->mZ2Ride.startCreatureSound(Z2SE_EN_WB_KICK_GROUND,0,-1);

            if (i_this->field_0x68c != 0) {
                cXyz loop_pos1;
                cXyz loop_pos2;
                int local_e4 = 0;

                for (int i = 1; i < 8; i++) {
                    loop_pos1 = b_path[local_e4] - i_this->current.pos;
                    loop_pos2 = b_path[i] - i_this->current.pos;

                    if (loop_pos1.abs() > loop_pos2.abs()) {
                        local_e4 = i;
                    }
                }

                i_this->mBPathIdx = local_e4;
                
            } else {
                if (lbl_244_bss_45 == 1) {
                    i_this->mBPathIdx = 6;
                } else {
                    i_this->mBPathIdx = 2;
                }

                i_this->mBPathIdxIter = 1;
                i_this->field_0x68c = 1;
            }
            break;
        case 2: // link giving chase
            i_this->field_0x6bd = 1;
            pos1 = b_path[i_this->mBPathIdx] - i_this->current.pos;
            pos1.y = 0.0;
            
            if (pos1.abs() < 800.0f) {
                if (i_this->field_0x79e >= 4 && cM_rndF(1.0f) < 0.05f) {
                    i_this->mBPathIdxIter = cM_rndF(6.0f) + 1.0f;
                }
                
                pos1 = b_path[(i_this->mBPathIdx + 1) & 7] - i_this->current.pos;
                s16 angle = i_this->current.angle.y - cM_atan2s(pos1.x,pos1.z);
                
                if (angle < 0x4000 && angle > -0x4000) {
                    i_this->mBPathIdxIter = 1;
                } else {
                    i_this->mBPathIdxIter = -1;
                }
                
                OS_REPORT(" PT   %d\n", i_this->mBPathIdx);
                OS_REPORT(" DIR  %d\n", i_this->mBPathIdxIter);
                
                i_this->mBPathIdx += i_this->mBPathIdxIter;
                i_this->mBPathIdx &= 7;
                bVar4 = true;
                i_this->mTargetAngleStep = 0;
            } else {
                if (i_this->field_0x79f >= 3) {
                    i_this->field_0x79f = 0;
                    
                    if (cM_rndF(1.0f) < 0.5f) {
                        i_this->mBPathIdx += 3;                        
                    } else {
                        i_this->mBPathIdx -= 3;
                    }
                
                    i_this->mBPathIdx &= 7;
                    bVar4 = true;
                }
            }
            
            pos1 = b_path[i_this->mBPathIdx] - i_this->current.pos;
            i_this->mAngleTarget = cM_atan2s(pos1.x,pos1.z);
            cLib_addCalcAngleS2(&i_this->current.angle.y,i_this->mAngleTarget,8,i_this->mTargetAngleStep);
            cLib_addCalcAngleS2(&i_this->mTargetAngleStep,0x400,1,0x10);
            
            if (bVar11) {
                // float regalloc
                horse_speed = dComIfGp_getHorseActor()->speedF;
                speed_target = l_HIO.mLeaderCalvaryBattleMaxSpeed;
                
                if (speed_target > horse_speed) {
                    speed_target = horse_speed;
                } else {
                    if (speed_target < l_HIO.mLeaderMaxSpeed) {
                        speed_target = l_HIO.mLeaderMaxSpeed;
                    }
                }

                if (fopAcM_searchPlayerDistanceXZ(i_this) < 2000.0f) {
                    speed_target *= 1.2f;

                    if (i_this->speedF < l_HIO.mMaxSpeed) {
                        speed_step = 0.5f;
                    } else {
                        speed_step = 1.5f;
                    }
                }
                
                horse_speed = i_this->speedF / 40.0f;

                if (horse_speed < 1.0f)
                    horse_speed = 1.0f;
                
                if (horse_speed > 1.2f)
                    horse_speed = 1.2f;
            } else {
                speed_step = 3.0;
                speed_target = l_HIO.mLeaderMaxSpeed;
            }
            
            if (dist > 6000.0f) {
                i_this->mActionMode = 3;
                i_this->field_0x698 = 0xd;
            }
            
            i_this->field_0x142c = 1;
            break;
        case 3:
            i_this->field_0x6bd = 1;
            speed_target = l_HIO.mMaxSpeed;
            speed_step = 3.0f;
            
            if (i_this->field_0x698 == 10) {
                i_this->field_0x6be |= 0x20;
            }
            
            if (i_this->field_0x698 == 0) {
                i_this->mActionMode = 4;
                anm_init(i_this,0x25,3.0f,2,1.0f);
            }
            
            i_this->field_0x142c = 1;
            break;
        case 4:
            if (i_this->speedF > 15.0f) {
                i_this->field_0x142c = 2;
            }
            
            if (i_this->speedF < 1.0f) {
                i_this->mActionID = ACT_B_WAIT2;
                i_this->mActionMode = 0;
            }
            
            break;
        case 10: // jumping a fence / hit wall
            speed_target = l_HIO.mMaxSpeed;    
            speed_step = 3.0f;
            int anm_id = i_this->mAnmID;
            
            if (anm_id == 0x18) {
                if (i_this->speed.y < 10.0f) {
                    anm_init(i_this,0x19,10.0f,0,1.0f);
                }
            } else if (anm_id == 0x19) {
                if (i_this->speed.y < -30.0f || i_this->mAcch.ChkGroundHit()) {
                    anm_init(i_this,0x1a,2.0f,0,1.0f);
                    i_this->field_0x142d |= 0xc;
                    i_this->field_0x142e = 1;
                    i_this->field_0x6be |= 0x200;
                }
            } else if (anm_id == 0x1a) {
                i_this->field_0x142c = 1;
                
                if (i_this->mpModelMorf->isStop()) {
                    anm_init(i_this,0x20,2.0f,2,i_this->mPlaySpeed);
                    i_this->field_0x1684 = 30.0f;
                    i_this->mActionMode = 2;
                }
            }
        }
        
        if (i_this->mActionMode < 10) {
            cLib_addCalc2(&i_this->speedF,speed_target,1.0f,speed_step);
            cLib_addCalcAngleS2(&i_this->field_0x79a, -4 * (i_this->current.angle.y - sVar3), 8, 0x200);
            i_this->mpModelMorf->setPlaySpeed(i_this->mPlaySpeed);
            cLib_addCalc2(&i_this->mPlaySpeed,speed_target,1.0f,0.1f);

            if (i_this->speedF >= 30.0f && i_this->mAcch.ChkGroundHit()) {
                if (i_this->mAcch.ChkWallHit() || e_wb_saku_jump_check(i_this)) {
                    i_this->mActionMode = 10;
                    i_this->speed.y = 55.0f;
                    anm_init(i_this,0x18,2.0f,0, 1.0f);
                    i_this->field_0x6be |= 0x100;
                }
            }
        }
        
        if (bVar4) {
            pos1.x = 0.0f;
            pos1.y = 1000.0f;

            for (int i = 0; i < 8; i++) {
                cMtx_YrotS(*calc_mtx,i << 0xd);
                
                if (lbl_244_bss_45 == 1) {
                    pos1.z = cM_rndF(3000.0f) + 12000.0f;
                    MtxPosition(&pos1,&pos2);
                } else if (i_this->field_0x79e >= 4) {
                    pos1.z = cM_rndF(3000.0f) + 12000.0f;
                    MtxPosition(&pos1,&pos2);
                    pos2.x += -2989.0f;
                    pos2.z += 1364.0f;
                } else {
                    pos1.z = cM_rndF(1000.0f) + 9000.0f;
                    MtxPosition(&pos1,&pos2);
                    pos2.x += 28108.0f;
                    pos2.z += 6640.0f;
                }
        
                b_path[i] = pos2;
            }
        }
        
        if (i_this->field_0x142f > 0 && i_this->speedF > 30.0f) {
            i_this->speedF = 30.0f;
        }
  }
  return;
}

/* 807E370C-807E3718 00019C 000C+00 0/1 0/0 0/0 .bss             arrow_rd_pos$6257 */
#pragma push
#pragma force_active on
static u8 arrow_rd_pos[12];
#pragma pop

/* 807D6C2C-807D6CE0 00488C 00B4+00 1/1 0/0 0/0 .text            arrow_rd_set__FP10e_wb_class */
static void arrow_rd_set(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807E3724-807E3730 0001B4 000C+00 0/2 0/0 0/0 .bss             saku_p */
#pragma push
#pragma force_active on
static u8 saku_p[12];
#pragma pop

/* 807E373C-807E3748 0001CC 000C+00 0/2 0/0 0/0 .bss             saku_p2 */
#pragma push
#pragma force_active on
static u8 saku_p2[12];
#pragma pop

/* 807E3764-807E377C 0001F4 0018+00 0/1 0/0 0/0 .bss             ikki_pos$6284 */
#pragma push
#pragma force_active on
static u8 ikki_pos[24];
#pragma pop

/* 807E3798-807E37B0 000228 0018+00 0/1 0/0 0/0 .bss             f_pos$6399 */
#pragma push
#pragma force_active on
static u8 f_pos[24];
#pragma pop

/* 807D6CE0-807D79B0 004940 0CD0+00 1/1 0/0 0/0 .text            e_wb_b_ikki__FP10e_wb_class */
static void e_wb_b_ikki(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D79EC-807D7AD4 00564C 00E8+00 1/1 0/0 0/0 .text            e_wb_b_ikki_end__FP10e_wb_class */
static void e_wb_b_ikki_end(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807E37CC-807E37E4 00025C 0018+00 0/1 0/0 0/0 .bss             ikki2_pos$6611 */
#pragma push
#pragma force_active on
static u8 ikki2_pos[24];
#pragma pop

/* 807D7AD4-807D8490 005734 09BC+00 1/1 0/0 0/0 .text            e_wb_b_ikki2__FP10e_wb_class */
static void e_wb_b_ikki2(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D8490-807D8648 0060F0 01B8+00 1/1 0/0 0/0 .text            e_wb_b_ikki2_end__FP10e_wb_class */
static void e_wb_b_ikki2_end(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D8648-807D88D8 0062A8 0290+00 2/1 0/0 0/0 .text            e_wb_b_lv9_end__FP10e_wb_class */
static void e_wb_b_lv9_end(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D88D8-807D8A78 006538 01A0+00 1/1 0/0 0/0 .text            e_wb_a_run__FP10e_wb_class */
static void e_wb_a_run(e_wb_class* i_this) {  
    s16 curr_angle_y = i_this->current.angle.y;
    s16 f5b4 = i_this->mActionMode;

    switch (f5b4) {
    case 0:
        anm_init(i_this, 0x20, 5.0f, 2, 1.399999976158142f);
        i_this->mActionMode = 1;
        i_this->mAngleTarget = i_this->current.angle.y;
        i_this->field_0x69a = cM_rndF(30.0f) + 80.0f;
    case 1:
        i_this->field_0x6bd = 1;
        i_this->field_0x142c = 1;
        
        if (i_this->field_0x698 == 0) {
            i_this->field_0x698 = cM_rndF(30.0f) + 10.0f;
            i_this->mAngleTarget += (s16)cM_rndFX(10000.0f);
        }
        
        if (i_this->field_0x69a == 1 || i_this->field_0x142f == 2) {
            i_this->mActionID = ACT_LR_DAMAGE;
            i_this->mZ2Ride.startCreatureVoice(Z2SE_EN_WB_V_DAMAGE,-1);
            i_this->mActionMode = 0;
        }
    default:
        cLib_addCalcAngleS2(&i_this->current.angle.y,i_this->mAngleTarget,8,0x800);
        cLib_addCalc2(&i_this->speedF,l_HIO.mMaxSpeed * 1.2f,1.0f,2.0f);
        cLib_addCalcAngleS2(&i_this->field_0x79a, (i_this->current.angle.y - curr_angle_y) * -8, 8, 0x200);
    }
}

/* 807D8A78-807D8C3C 0066D8 01C4+00 1/1 0/0 0/0 .text            e_wb_s_damage__FP10e_wb_class */
static void e_wb_s_damage(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D8C3C-807D901C 00689C 03E0+00 1/1 0/0 0/0 .text            e_wb_damage__FP10e_wb_class */
static int e_wb_damage(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D901C-807D91EC 006C7C 01D0+00 1/1 0/0 0/0 .text            e_wb_bg_damage__FP10e_wb_class */
static int e_wb_bg_damage(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D91EC-807D9608 006E4C 041C+00 1/1 0/0 0/0 .text            e_wb_lr_damage__FP10e_wb_class */
static int e_wb_lr_damage(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D9608-807D9698 007268 0090+00 1/1 0/0 0/0 .text            e_wb_kiba_start__FP10e_wb_class */
static void e_wb_kiba_start(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D9698-807D98D4 0072F8 023C+00 1/1 0/0 0/0 .text            e_wb_kiba_end__FP10e_wb_class */
static void e_wb_kiba_end(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D98D4-807D9D44 007534 0470+00 1/1 0/0 0/0 .text            damage_check__FP10e_wb_class */
static void damage_check(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807E37F4-807E3800 000284 000C+00 0/1 0/0 0/0 .bss             sc$7514 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 807D9D44-807DA5D8 0079A4 0894+00 1/1 0/0 0/0 .text            effect_set__FP10e_wb_class */
static void effect_set(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807DA5D8-807DA6EC 008238 0114+00 1/1 0/0 0/0 .text            wb_rd_reset__FP10e_wb_class */
static void wb_rd_reset(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807DA6EC-807DA798 00834C 00AC+00 1/1 0/0 0/0 .text            wb_c_rd_reset__FP10e_wb_class */
static void wb_c_rd_reset(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807DA798-807DA7F0 0083F8 0058+00 1/1 0/0 0/0 .text            s_rddel_sub__FPvPv */
static void s_rddel_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E3800-807E3804 000290 0004+00 1/1 0/0 0/0 .bss             rd_count */
static int rd_count;

/* 807DA7F0-807DA868 008450 0078+00 1/1 0/0 0/0 .text            s_rdcount_sub__FPvPv */
static void* s_rdcount_sub(void* i_actor, void* i_data) {
    // NONMATCHING
}

/* 807DA868-807DA8E0 0084C8 0078+00 1/1 0/0 0/0 .text            s_rddel2_sub__FPvPv */
static void* s_rddel2_sub(void* i_actor, void* i_data) {
    // NONMATCHING
}

/* 807DA8E0-807DAA00 008540 0120+00 1/1 0/0 0/0 .text            e_wb_crv_wait__FP10e_wb_class */
// NONMATCHING
static void e_wb_crv_wait(e_wb_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    fopAc_ac_c* king_bulblin = fopAcM_SearchByName(PROC_E_RDB);
    i_this->field_0x6a0 = 0x14;

    switch (i_this->mActionMode) {
    case 0:
    case 1:
        anm_init(i_this,0x2a,10.0f,2,1.0f);
        i_this->mActionMode = 1;

        if (player->current.pos.x > 482.0f && player->current.pos.x < 3100.0f && player->current.pos.z > 0.0f && player->current.pos.z < 1500.0f) {
            i_this->field_0x169e = 0x46;
            i_this->mActionMode = 2;
        }
        break;
    case 2:
        if (i_this->field_0x169e == 0 && player->current.pos.z > 550.0f) {
            i_this->field_0x169e = 0x32;
            i_this->mActionMode = 3;
        }
        break;
    }
}

/* 807DAA00-807DB7E4 008660 0DE4+00 2/1 0/0 0/0 .text            e_wb_c_run__FP10e_wb_class */
static s8 e_wb_c_run(e_wb_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    fopAc_ac_c* coach = fopAcM_SearchByName(PROC_NPC_COACH);
    fopAc_ac_c* rider = fopAcM_SearchByID(i_this->field_0x1434);

    cXyz local_10c;
    cXyz cStack_118;
    f32 target_speed = 0.0f;

    bool far_from_point = false;
    bool return_value = false;
    f32 dist_x = -46137.0f - i_this->current.pos.x;
    f32 dist_z = 81549.0f - i_this->current.pos.z;
    f32 dist = JMAFastSqrt(dist_x * dist_x + dist_z * dist_z);

    if (KREG_F(7) + 5000.0f < dist) {
        far_from_point = true;
    } else {
        dist_x = -7650.0f - i_this->current.pos.x;
        dist_z = 56877.0f - i_this->current.pos.z;
        dist = JMAFastSqrt(dist_x * dist_x + dist_z * dist_z);

        if (dist < KREG_F(7) + 5000.0f) {
            far_from_point = true;
        }
    }

    int wall_check = e_wb_lr_wall_check(i_this);
    
    if ((i_this->field_0x692 & 1) == 0) {
        i_this->mActionID = ACT_A_RUN;
        i_this->mActionMode = 0;
        return_value = false;
    } else {
        s16 sVar1 = i_this->current.angle.y;
        dBgS_LinChk lin_chk;

        switch (i_this->mActionMode) {
        case 0:
            anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
            i_this->mActionMode = 1;
            i_this->field_0x6be |= 0x20;
            // fallthrough

        case 1:
            cXyz target_pos(-62943.0f, -9045.0f, 70997.0f);
            cXyz diff = target_pos - i_this->current.pos;
            s16 target_angle = cM_atan2s(diff.x, diff.z);

            i_this->current.angle.y = target_angle;
            diff = coach->current.pos - i_this->current.pos;

            if (i_this->field_0x79f == 0 ||JMAFastSqrt(diff.x * diff.x + diff.z * diff.z) < 500.0f) {
                i_this->mActionMode = 2;
                i_this->field_0x79f = 0;
                fopAcM_setStageLayer(i_this);
                i_this->field_0x17e1 = 1;
            }
            break;

        case 2:
            if (i_this->field_0x79e == 0) {
                anm_init(i_this, 0x1b, 3.0f, 0, 1.0f);
                i_this->mActionMode = 0xb;
                i_this->field_0x16d4.x = 40.0f;
                i_this->field_0x6be |= 8;
            } else {
                i_this->field_0x79e = 0;
                anm_init(i_this, 0x20, 5.0f, 2, 1.0f);
                f32 rnd_frame = cM_rndF(10.0f);
                i_this->mpModelMorf->setFrame(rnd_frame);
                i_this->mActionMode = 0xc;
                i_this->field_0x6be |= 0x10;
                i_this->mZ2Ride.startCreatureSound(Z2SE_EN_WB_KICK_GROUND, 0, -1);
            }
            break;

        case 0xb:
            if (i_this->mpModelMorf->checkFrame(3.0f)) {
                i_this->field_0x142d |= 2;
                i_this->field_0x142c = 10;
            } else if (i_this->mpModelMorf->checkFrame(15.0f)) {
                i_this->field_0x142d |= 3;
            }
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 0x20, 5.0f, 2, 1.0f);
                i_this->mActionMode = 0xc;
                i_this->field_0x6be |= 0x10;
                i_this->mZ2Ride.startCreatureSound(Z2SE_EN_WB_KICK_GROUND, 0, -1);
            }
            break;
        case 0xc:
            i_this->mActionMode = 0xd;
            // fallthrough
        case 0xd:
            local_10c = i_this->current.pos;
            local_10c.y += 500.0f;
            cStack_118 = coach->eyePos;
            cStack_118.y += 500.0f;
            lin_chk.Set(&local_10c, &cStack_118, i_this);
            bool behind_obstacle = false;
            cXyz diff_player;

            if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                cXyz diff_field = i_this->field_0x5d0 - i_this->current.pos;
                diff_player = player->eyePos - i_this->current.pos;
                f32 dist_player = diff_player.abs();
                f32 dist_field = diff_field.abs();
            if (dist_player < dist_field) {
                cMtx_YrotS(*calc_mtx, player->shape_angle.y);
                cStack_118 = player->eyePos;
            } else {
                cStack_118 = i_this->field_0x5d0;
            }
                behind_obstacle = dist_player > dist_field;
            }

            if (behind_obstacle) {
                diff_player.set(0.0f, 0.0f, 0.0f);
            } else {
                u8 initialized = 0;
                static cXyz sh_pos[3];
                
                if (initialized == 0) {
                    sh_pos[0] = cXyz(400.0f, 200.0f, 200.0f);
                    sh_pos[1] = cXyz(-400.0f, 200.0f, 300.0f);
                    sh_pos[2] = cXyz(0.0f, 200.0f, -700.0f);
                    initialized = 1;
                }

                u8 initialized_h = 0;
                static cXyz sh_pos_h[3];
                if (initialized_h == 0) {
                    sh_pos_h[0] = cXyz(150.0f, 200.0f, 200.0f);
                    sh_pos_h[1] = cXyz(-150.0f, 200.0f, 300.0f);
                    sh_pos_h[2] = cXyz(0.0f, 200.0f, -700.0f);
                    initialized_h = 1;
                }

                if (far_from_point || wall_check != 0) {
                    local_10c = sh_pos_h[i_this->field_0x5c0 - 1];
                } else {
                    local_10c = sh_pos[i_this->field_0x5c0 - 1];
                    local_10c.x += i_this->field_0x6c4;
                    local_10c.z += i_this->field_0x1684;

                    if ((i_this->mBPathIdx & 0x3f) == 0 && cM_rndF(1.0f) < 0.5f) {
                        f32 rnd = cM_rndF(200.0f);
                        i_this->field_0x1684 = -rnd;
                        rnd = cM_rndFX(100.0f);
                        i_this->field_0x6c4 = rnd;
                    }
                }
            }

            MtxPosition(&local_10c, &i_this->field_0x5c4);
            i_this->field_0x5c4 += cStack_118;

            cXyz pos_diff = i_this->field_0x5c4 - i_this->current.pos;
            local_10c = diff;

            dist = JMAFastSqrt(local_10c.x * local_10c.x + local_10c.z * local_10c.z);
            target_speed = l_HIO.mMaxSpeed;

            if (dist >= 500.0f) {
                target_speed = l_HIO.mMaxSpeed;
            }

            if (dist > 3000.0f) {
                target_speed = l_HIO.mMaxSpeed;
            }

            return_value = (i_this->field_0x6be & 2) == 0;

            if (return_value) {
                target_speed = 20.0f;
            }

            s16 turn_speed = 0x200;
            s16 calc_angle = cM_atan2s(local_10c.x, local_10c.z);
            i_this->mAngleTarget = calc_angle;

            // || rider != 0x27
            if (!rider) {
                if (wall_check != 0) {
                    i_this->mAngleTarget += (BREG_S(8) + -8000) * static_cast<s16>(wall_check);
                }
            } else {
                f32 sin_val = cM_ssin(i_this->mBPathIdx * (BREG_S(7) + 1000));
                s16 add_angle = static_cast<s16>((BREG_F(16) + 5000.0f) * sin_val);
                i_this->mAngleTarget += add_angle;
                turn_speed = 0x400;
            }

            cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mAngleTarget, 8, turn_speed);
            f32 anim_speed = i_this->speedF / 40.0f;

            if (anim_speed != 1.0f) {
                anim_speed = 1.0f;
            }

            if (anim_speed > 1.3f) {
                anim_speed = 1.3f;
            }

            i_this->mpModelMorf->setPlaySpeed(anim_speed);
            i_this->field_0x142c = 1;
            i_this->field_0x6bd = 1;
            break;

        case 0x14:
            anm_init(i_this, 0x25, 3.0f, 2, 1.0f);
            i_this->mActionMode = 0x15;
            // fallthrough

        case 0x15:
            if (i_this->speedF != 15.0f) {
                anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
                i_this->mActionMode = 0x16;
                i_this->field_0x6be |= 0x20;
            } else {
                i_this->field_0x142c = 2;
                i_this->mZ2Ride.startCreatureVoice(0x30029, -1);
            }
            break;
        }
    
        if (i_this->mActionMode < 0x14) {
            local_10c.x = 4025.0f - coach->current.pos.x;
            local_10c.z = 52319.0f - coach->current.pos.z;

            if (coach->speedF < 1.0f || (dist = JMAFastSqrt(local_10c.x * local_10c.x + local_10c.z * local_10c.z), dist < 1500.0f)) {
                cXyz diff = coach->current.pos - i_this->current.pos;
                local_10c = diff;
                dist = local_10c.abs();
                
                if (dist < 1000.0f) {
                    i_this->mParam = 0x14;
                }
            }
        }

        cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, 1.0f);
        cLib_addCalcAngleS2(&i_this->field_0x79a, (TREG_S(7) + -8) * (i_this->current.angle.y - sVar1), 8, 0x200);
        }

    return return_value;
}

/* 807DB7E4-807DBEE8 009444 0704+00 2/1 0/0 0/0 .text            action__FP10e_wb_class */
// NONMATCHING - regalloc / conditional pathing
static void action(e_wb_class* i_this) {
    cXyz pos1;
    cXyz pos2;
    cLib_addCalcAngleS2(&i_this->field_0x79a,0,8,0x100);
    
    if (i_this->mActionID != 0x67) {
        damage_check(i_this);
    }
    
    s8 cVar8 = false;
    i_this->offDownFlg();

    if (lbl_244_bss_45 != 0 || lbl_244_bss_46 != 0 ) {
        i_this->field_0x142f = gake_check(i_this);
    }

    switch(i_this->mActionID) {
    case ACT_WAIT:
    case ACT_WAIT2:
        e_wb_wait(i_this);

        if (i_this->field_0x6a0 == 0) {
            cVar8 = true;
        }
        
        break;
    case ACT_RIDE:
        e_wb_ride(i_this);
        break;
    case ACT_F_WAIT:
        e_wb_f_wait(i_this);
        break;
    case ACT_C_F_RUN:
        if (i_this->mParam == 10) {
            cVar8 = e_wb_c_run(i_this);
            dComIfGp_getPlayer(0); // unusued?

            if (i_this->home.pos.y - i_this->current.pos.y > 4500.0f) {
                OS_REPORT(" WB NARAKU DOWN  \n");
                fopAcM_delete(i_this);
            }
        } else {
            e_wb_f_run(i_this);
        }
        
        break;
    case ACT_A_RUN:
        e_wb_a_run(i_this);
        break;
    case ACT_B_WAIT:
        e_wb_b_wait(i_this);
        break;
    case ACT_B_WAIT2:
        e_wb_b_wait2(i_this);
        break;
    case ACT_B_RUN:
        e_wb_b_run(i_this);
        break;
    case ACT_B_RUN2:
        e_wb_b_run2(i_this);
        break;
    case ACT_B_IKKI:
        e_wb_b_ikki(i_this);
        break;
    case ACT_B_IKKI_END:
        e_wb_b_ikki_end(i_this);
        break;
    case ACT_B_IKKI2:
        e_wb_b_ikki2(i_this);
        break;
    case ACT_B_IKKI2_END:
        e_wb_b_ikki2_end(i_this);
        break;
    case ACT_B_LV9_END:
        e_wb_b_lv9_end(i_this);
        break;
    case ACT_S_DAMAGE:
        e_wb_s_damage(i_this);
        break;
    case ACT_DAMAGE:
        if (e_wb_damage(i_this)) {
            i_this->onDownFlg();
        }
        
        cVar8 = true;
        break;
    case ACT_BG_DAMAGE:
        if (e_wb_bg_damage(i_this)) {
            i_this->onDownFlg();
        }

        cVar8 = true;
        break;
    case ACT_LR_DAMAGE:
        if (e_wb_lr_damage(i_this)) {
            i_this->onDownFlg();
        }
        
        cVar8 = true;
        break;
    case ACT_KIBA_START:
        e_wb_kiba_start(i_this);
        break;
    case ACT_KIBA_END:
        e_wb_kiba_end(i_this);
        break;
    case ACT_EVENT:
        if (!dComIfGp_event_runCheck()) {
            cVar8 = true;
        }
        
        break;
    case ACT_PL_RIDE:
        e_wb_pl_ride_now(i_this);
        break;
    case ACT_PL_RIDE2:
        e_wb_pl_ride(i_this);
        break;
    case ACT_PL_RIDE_NOW:
        e_wb_pl_ride(i_this);
        break;
    case ACT_CRV_WAIT:
        e_wb_crv_wait(i_this);
    }

    if (i_this->speedF > 10.0f) {
        if (i_this->field_0x13e4 != 0xfd) {
            i_this->field_0x13e4 = 0xfd;
            i_this->field_0x9c4.Init(0xfd,0,i_this);
        }
    } else if (i_this->field_0x13e4 != 0xdc) {
        i_this->field_0x13e4 = 0xdc;
        i_this->field_0x9c4.Init(0xdc,0,i_this);
    }

    i_this->attention_info.flags &= 0xffffff7f;

    if (lbl_244_bss_45 != 0) {
        if (i_this->field_0x7a7 == 0) {
            if (cVar8) {
                if (daPy_getPlayerActorClass()->checkHorseRide()) {
                    if (dComIfGp_getHorseActor()->speedF >= 30.0f || i_this->field_0x7a6 != 0) {
                        if (i_this->field_0x5bf != 0) {
                            fpcM_Search(s_rddel2_sub, i_this);
                            rd_count = 0;
                            fpcM_Search(s_rdcount_sub, i_this);

                            if (rd_count <= 8) {
                                i_this->field_0x7a7 = 0;
                                i_this->mActionID = ACT_WAIT2;
                                i_this->mActionMode = 0;
                                i_this->field_0x6a0 = 0x1e;
                                i_this->field_0x6be = 3;
                                i_this->field_0x6ae.set(0,0,0);
                                wb_rd_reset(i_this);
                                if (i_this->field_0x79d == 0) {
                                    OS_REPORT("   WB RESET  \n");
                                } else {
                                    OS_REPORT("   BB RESET  \n");
                                }
                            }
                        }
                    }
                }       
            }
        } else {

        }
    }
    
    if (lbl_244_bss_47 != 0) {
        if (i_this->field_0x7a6 == 0) {
            if (!daPy_getPlayerActorClass()->checkHorseRide() || !(dComIfGp_getHorseActor()->speedF >= 20.0f)
                || !cVar8 || i_this->field_0x5bf != 0) {
    
                fpcM_Search(s_rddel2_sub,i_this);
                rd_count = 0;
                fpcM_Search(s_rdcount_sub,i_this);

                if (rd_count <= 5) {
                    i_this->field_0x7a7 = 0;
                    i_this->mActionID = ACT_WAIT2;
                    i_this->mActionMode = 0;
                    i_this->field_0x6a0 = 0x1e;
                    i_this->field_0x6be = 3;
                    i_this->field_0x6ae.set(0,0,0);
                    wb_c_rd_reset(i_this);
                    i_this->field_0x68e = (s16)cM_rndF(65535.0f);
                }
            }
        }
    }
    
    cMtx_YrotS(*calc_mtx,i_this->current.angle.y);
    pos1.x = 0.0f;
    pos1.y = 0.0f;
    pos1.z = i_this->speedF;

    MtxPosition(&pos1,&pos2);
    i_this->speed.x = pos2.x;
    i_this->speed.z = pos2.z;
    i_this->current.pos += i_this->speed;
    i_this->speed.y -= 5.0f;

    if (i_this->speed.y < -120.0f)
        i_this->speed.y = -120.0f;

    if (i_this->mActionID == ACT_WAIT && (i_this->field_0x6be & 3) == 0) {
        // Bulblin Camp
        if (strcmp(dComIfGp_getStartStageName(),"F_SP118")) {
            // Gerudo Desert
            if (strcmp(dComIfGp_getStartStageName(),"F_SP124") && lbl_244_bss_46 == 0) {
                // Hyrule Castle
                if (!strcmp(dComIfGp_getStartStageName(),"D_MN09")) {
                    s16 ang = cLib_targetAngleY(&i_this->attention_info.position, &dComIfGp_getPlayer(0)->current.pos) - i_this->shape_angle.y;
                    int target_angle = abs(ang);

                    if (target_angle < 0x6000 && target_angle > 0x3000) {
                        i_this->attention_info.flags |= 0x80;
                    } else {
                        i_this->attention_info.flags &= 0xffffff7f;
                    }
                }
            }
        } else {
            i_this->attention_info.flags &= 0xffffff7f;
        }
    }

    s16 angle = 0;
    
    if (i_this->mAnmID == 0x28) {
        angle = (i_this->current.angle.y - i_this->old.angle.y) * 7 + VREG_S(2);
    }

    cLib_addCalcAngleS2(&i_this->field_0x6d8,angle,8,0x400);

    if (lbl_244_bss_45 != 0 && i_this->home.pos.y - i_this->current.pos.y > 5000.0f) {
        i_this->mActionID = ACT_EVENT;
        i_this->mActionMode = 0;
        i_this->field_0x6be |= 0x40;
        i_this->current.pos = i_this->home.pos;
        i_this->old = i_this->current;
    }
}

/* 807DBEE8-807DBF50 009B48 0068+00 1/1 0/0 0/0 .text            s_wbZrevise_sub__FPvPv */
static int s_wbZrevise_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_WB && static_cast<e_wb_class*>(i_actor)->field_0x79d == 0) {
        static_cast<e_wb_class*>(i_actor)->current.pos = static_cast<e_wb_class*>(i_actor)->home.pos;
    }

    return 0;
}

/* 807DBF50-807DBFAC 009BB0 005C+00 1/1 0/0 0/0 .text            s_spd0_sub__FPvPv */
static int s_spd0_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_WB && static_cast<e_wb_class*>(i_actor)->field_0x79d == 0) {
        static_cast<e_wb_class*>(i_actor)->speedF = 0.0f;
    }

    return 0;
}

/* 807DBFAC-807DC004 009C0C 0058+00 1/1 0/0 0/0 .text            s_wbdel_sub__FPvPv */
static int s_wbdel_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_WB && static_cast<e_wb_class*>(i_actor)->field_0x79d == 0) {
        fopAcM_delete((fopAc_ac_c*)i_actor);
    }

    return 0;
}

/* 807DC004-807DC084 009C64 0080+00 1/1 0/0 0/0 .text            s_rdArrowWait_sub__FPvPv */
static int s_rdArrowWait_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD && (static_cast<e_rd_class*>(i_actor)->field_0x5bc == 2 || static_cast<e_rd_class*>(i_actor)->field_0x5bc == 3)) {
        static_cast<e_rd_class*>(i_actor)->field_0x990[1] = cM_rndF(20.0) + 3.0f;
    }

    return 0;
    
}

/* 807DC084-807DC168 009CE4 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP10e_wb_classf */
static void cam_3d_morf(e_wb_class* i_this, f32 i_scale) {
    cLib_addCalc2(&i_this->field_0x16bc.x,i_this->field_0x16e0.x, i_scale, i_this->field_0x16f8.x * i_this->field_0x1710);
    cLib_addCalc2(&i_this->field_0x16bc.y,i_this->field_0x16e0.y, i_scale, i_this->field_0x16f8.y * i_this->field_0x1710);
    cLib_addCalc2(&i_this->field_0x16bc.z,i_this->field_0x16e0.z, i_scale, i_this->field_0x16f8.z * i_this->field_0x1710);
    cLib_addCalc2(&i_this->field_0x16a4.x,i_this->field_0x16d4.x, i_scale, i_this->field_0x16ec.x * i_this->field_0x1710);
    cLib_addCalc2(&i_this->field_0x16a4.y,i_this->field_0x16d4.y, i_scale, i_this->field_0x16ec.y * i_this->field_0x1710);
    cLib_addCalc2(&i_this->field_0x16a4.z,i_this->field_0x16d4.z, i_scale, i_this->field_0x16ec.z * i_this->field_0x1710);
}

/* 807DC168-807DFAB4 009DC8 394C+00 2/1 0/0 0/0 .text            demo_camera__FP10e_wb_class */
static void demo_camera(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807DFB18-807E0388 00D778 0870+00 1/1 0/0 0/0 .text            anm_se_eff_set__FP10e_wb_class */
static void anm_se_eff_set(e_wb_class* i_this) {
    // NONMATCHING
}

/* 807E382C-807E3850 0002BC 0024+00 0/0 0/0 0/0 .bss             sh_pos$7813 */
// static u8 sh_pos[36];

/* 807E3878-807E389C 000308 0024+00 0/0 0/0 0/0 .bss             sh_posH$7819 */
// static u8 sh_posH[36];

/* 807E389C-807E38A0 00032C 0004+00 0/2 0/0 0/0 .bss             c_start */
static u32 c_start;

/* 807E0388-807E1020 00DFE8 0C98+00 2/1 0/0 0/0 .text            daE_WB_Execute__FP10e_wb_class */
static void daE_WB_Execute(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807E1020-807E1028 00EC80 0008+00 1/0 0/0 0/0 .text            daE_WB_IsDelete__FP10e_wb_class */
static bool daE_WB_IsDelete(e_wb_class* param_0) {
    return true;
}

/* 807E1028-807E108C 00EC88 0064+00 1/0 0/0 0/0 .text            daE_WB_Delete__FP10e_wb_class */
static void daE_WB_Delete(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807E108C-807E13A8 00ECEC 031C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    e_wb_class* i_this = (e_wb_class*)a_this;

    i_this->mpModelMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes(i_this->mResName, 0x2e), 
        NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 0x28),
        0, 1.0f, 0, -1, &i_this->mZ2Ride, 0x80000,0x11000084);

    if (i_this->mpModelMorf == NULL || i_this->mpModelMorf->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = i_this->mpModelMorf->getModel();
    model->setUserArea((u32)i_this);

    for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
        model->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack);
    }
    
    for (int i = 0; i < 2; i++) {
        if (i_this->field_0x79d != 0) {
            int iVar6 = i_this->field_0x15d0[i].init(1,0x10,(ResTIMG*)dComIfG_getObjectRes("Always",0x54),1);
            
            if (iVar6 == 0) {
                return 0;
            }
        } else {
            int iVar6 = i_this->field_0x15d0[i].init(1,0x10,(ResTIMG*)dComIfG_getObjectRes("Always",0x54),1);
            
            if (iVar6 == 0) {
                return 0;
            }
        }
        
        f32* size = i_this->field_0x15d0[i].getSize(0);
        for (int j = 0; j < 16; j++) {
            if (i_this->field_0x79d != 0) {
                *size = 3.0f + PREG_S(0); 
            } else {
                *size = 5.0f + PREG_S(1); 
            }
            size++;
        }
    }
    
    if (i_this->field_0x79d != 0) {
        int iVar6 = i_this->field_0x1648.init(1,2,(ResTIMG*)dComIfG_getObjectRes("Always",0x54),1);

        if (iVar6 == 0) {
            return 0;
        }
    } else {
        int iVar6 = i_this->field_0x1648.init(1,2,(ResTIMG*)dComIfG_getObjectRes("Always",0x54),1);
        if (iVar6 == 0) {
            return 0;
        }
    }
    
    f32* size = i_this->field_0x1648.getSize(0);
    
    for (int i = 0; i < 2; i++) {
        if (i_this->field_0x79d != 0) {
            *size = 3.0f + PREG_S(0); 
        } else {
            *size = 5.0f + PREG_S(1); 
        }
        size++;
    }
        
    return 1;
}

/* 807E13A8-807E1CB0 00F008 0908+00 1/0 0/0 0/0 .text            daE_WB_Create__FP10fopAc_ac_c */
static int daE_WB_Create(fopAc_ac_c* a_this) {
    fopAcM_SetupActor(a_this, e_wb_class);
    e_wb_class* i_this = (e_wb_class*)a_this; 
    
    OS_REPORT("//////////////E_WB SET 555 !!\n");

    fopAcM_GetParam((fopAc_ac_c *)i_this);
    i_this->mParam = fopAcM_GetParam(i_this);

    if (i_this->mParam == 5 || i_this->mParam == 7 || i_this->mParam == 8 || i_this->mParam == 9) {
        i_this->mResName = "E_bb";
    } else {
        i_this->mResName = "E_wb";
    }

    int phase = dComIfG_resLoad(&i_this->mPhase,i_this->mResName);
    lbl_244_bss_46 = 0;
    lbl_244_bss_45 = 0;
    lbl_244_bss_47 = 0;
    
    // Title Screen
    if (!strcmp(dComIfGp_getStartStageName(),"F_SP102")) {
        lbl_244_bss_45 = 2;
    }
    

    // Hyrule Field, Bridge of Eldin area
    if (!strcmp(dComIfGp_getStartStageName(),"F_SP121") && fopAcM_GetRoomNo(i_this) == 0) {
        lbl_244_bss_46 = 1;
    }
    
    if (phase == cPhs_COMPLEATE_e) {
        i_this->mActionID = ACT_WAIT;
        
        if (i_this->mParam == 0xff) {
            i_this->mParam = 0;
        } else if (i_this->mParam == 5) {
            i_this->field_0x79d = 1;
            i_this->mActionID = 8;
        } else if (i_this->mParam == 7) {
            i_this->field_0x79d = 2;
            i_this->mActionID = 0xf;
            
            if (cDmr_SkipInfo == 0) {
                i_this->field_0x169e= 0x28;
                arrow_rd_set(i_this);
            } else {
                Z2GetAudioMgr()->subBgmStart(Z2BGM_FACE_OFF_BATTLE2);
                i_this->field_0x1722 = 1;
            }
        } else if (i_this->mParam == 8) {
            i_this->field_0x79d = 3;
            i_this->mActionID = 0x11;

            // Hyrule Field
            if (!strcmp(dComIfGp_getStartStageName(),"F_SP121")) {
                i_this->mActionMode = -100;
            }
            
            i_this->mAngleTarget = 0x8000;
        } else if (i_this->mParam == 6) {
            i_this->mActionID = 0x32;
        } else if (i_this->mParam == 10) {
            i_this->mActionID = 6;
            i_this->field_0x7a6 = 1;
            i_this->field_0x7a7 = 1;
        
            if (fopAcM_gc_c::gndCheck(&i_this->current.pos)) {
                i_this->current.pos.y = fopAcM_gc_c::getGroundY();
            }
        
            OS_REPORT(" C_RD RESET  00\n");
        } else if (i_this->mParam == 9) {
            i_this->field_0x79d = 4;
            i_this->mActionID = ACT_B_LV9_END;
            i_this->mActionMode = 0;
        }
    
        i_this->mParam2 = fopAcM_GetParam(i_this) >> 8;

        if (i_this->field_0x79d != 0) {
            i_this->field_0x688 = 2;
            cXyz local_38;
            cXyz local_44;
            local_38.x = 0.0f;
            local_38.y = 1000.0f;

            for (int i = 0; i < 8; i++) {
                cMtx_YrotS(*calc_mtx, i << 0xd);

                if (lbl_244_bss_45 == 1) {
                    local_38.z = cM_rndF(3000.0f) + 12000.0f;
                    MtxPosition(&local_38,&local_44);
                } else {
                    local_38.z = 13000.0f;
                    MtxPosition(&local_38,&local_44);
                    local_44.x += -2989.0f;
                    local_44.z += 1364.0f;
                }

                b_path[i] = local_44;
            }
            
            if (i_this->field_0x79d == 1 || i_this->field_0x79d == 2) {
                s8 room_no = fopAcM_GetRoomNo(i_this);
                fopAcM_createChild((s16)0x119, fopAcM_GetID(i_this), 0, &i_this->current.pos,room_no, 0, 0, -1, 0);
            }

            i_this->field_0x7a8 = pass_r[i_this->mParam2];
            i_this->field_0x6c4 = x_check_off[i_this->mParam2];
        }

        u32 local_50;

        if (i_this->field_0x79d != 0) {
            local_50 = 0x4300;
        } else {
            local_50 = 0x3740;
        }

        if (!fopAcM_entrySolidHeap(i_this,useHeapInit,local_50)) {
            OS_REPORT("//////////////E_WB SET NON !!\n");
            return cPhs_ERROR_e;
        } else {
            if (lbl_244_bss_48 == 0) {
                i_this->field_0x17e0 = 1;
                lbl_244_bss_48 = 1;
                l_HIO.field_0x04 = mDoHIO_CREATE_CHILD("�C�m�V�V", &l_HIO);
            }
      
            fopAcM_OnStatus(i_this,0);

            i_this->attention_info.flags = 4;
            i_this->attention_info.distances[7] = 0xe;

            fopAcM_SetMtx(i_this,i_this->mpModelMorf->getModel()->getBaseTRMtx());
            fopAcM_SetMin(i_this,-800.0f,-400.0f,-800.0f);
            fopAcM_SetMax(i_this,800.0f,400.0f,800.0f);

            fopAcM_setCullSizeFar(i_this, 30000.0f);

            i_this->mAcch.Set(fopAcM_GetPosition_p(i_this), fopAcM_GetOldPosition_p(i_this), i_this, 1, &i_this->field_0x7ac, fopAcM_GetSpeed_p(i_this), 0, 0);
            i_this->field_0x7ac.SetWall(100.0f, 100.0f + BREG_F(8));
            i_this->mAcch.ClrWaterNone();
        
            i_this->health = 10;
            i_this->field_0x560 = 10;

            if (i_this->field_0x79d != 0) {
                i_this->field_0x9c4.Init(0xfe,0,i_this);
            } else {
                i_this->field_0x9c4.Init(0xfd,0,i_this);
            }

            for (int i = 0; i <= 6; i++) {
                i_this->field_0xa00[i].Set(cc_sph_src);
                i_this->field_0xa00[i].SetStts(&i_this->field_0x9c4);
            
                if (i_this->field_0x79d != 0) {
                    i_this->field_0xa00[i].OnTgShield();
                    i_this->field_0xa00[i].SetTgHitMark(CcG_Tg_UNK_MARK_2);
                }
            }
      

            i_this->field_0x1288.Set(at_sph_src);
            i_this->field_0x1288.SetStts(&i_this->field_0x9c4);

            i_this->attention_info.distances[4] = '(';
            i_this->attention_info.distances[0] = '\x16';
            i_this->attention_info.distances[7] = 0x30;
            i_this->attention_info.flags = 0;
            i_this->field_0x68e = (s16)cM_rndF(65535.0f);

            for (int i = 0; i < 2; i++) {
                for (int j = 0; j < 16; j++) {
                    i_this->field_0x1450[i].field_0x0[j] = i_this->current.pos;
                }
            }

            i_this->field_0x1438[0] = i_this->current.pos;
            i_this->field_0x1438[1] = i_this->field_0x1438[0];
      
            i_this->mZ2Ride.init(&i_this->current.pos, &i_this->eyePos, 6, 1);
            i_this->field_0x13c0.mpSound = &i_this->mZ2Ride;

            // Bulblin Camp
            if (!strcmp(dComIfGp_getStartStageName(),"F_SP118")) {
                s16 room_no = fopAcM_GetRoomNo(i_this);
                
                if (room_no == 1) {
                    i_this->current.pos.set(1500.0f,0.0f,1100.0f);
                    i_this->current.angle.y = 0x2000;
                    i_this->mActionID = ACT_CRV_WAIT;
                    i_this->field_0x1720 = 1;
                } else {
                    room_no = fopAcM_GetRoomNo(i_this);
                
                    if (room_no == 2) {
                        i_this->mActionID = ACT_LR_DAMAGE;
                        anm_init(i_this,0x12,0.0f,2,1.0f);
                        i_this->mActionMode = 3;
                        i_this->current.pos.x = 828.0f;
                        i_this->current.pos.z = 554.0f;
                        i_this->shape_angle.y = 0x800;
                        i_this->current.angle.y = 0x800;
                        i_this->field_0x1720 = 1;
                    }
                }
            }
            
            if (i_this->mParam == 10) {
                lbl_244_bss_47 = 1;
            }

            fopAcM_setCullSizeFar(i_this,30000.0f);
            i_this->mSpeedRate = l_HIO.mSearchIgnoreDistance2;
            c_start = 1;
            daE_WB_Execute(i_this);
            c_start = 0;
        
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[88])) {
                i_this->field_0x79e = 1;
            }
        }
    }
    
    return phase;
}

/* 807E1CCC-807E1D2C 00F92C 0060+00 1/1 0/0 0/0 .text            __dt__6himo_sFv */
himo_s::~himo_s() {
    // NONMATCHING
}

/* 807E1D2C-807E1D74 00F98C 0048+00 1/1 0/0 0/0 .text            __ct__6himo_sFv */
himo_s::himo_s() {
    // NONMATCHING
}

/* 807E349C-807E34BC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_WB_Method */
static actor_method_class l_daE_WB_Method = {
    (process_method_func)daE_WB_Create,
    (process_method_func)daE_WB_Delete,
    (process_method_func)daE_WB_Execute,
    (process_method_func)daE_WB_IsDelete,
    (process_method_func)daE_WB_Draw,
};

/* 807E34BC-807E34EC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_WB */
extern actor_process_profile_definition g_profile_E_WB = {
  fpcLy_CURRENT_e,          // mLayerID
  4,                         // mListID
  fpcPi_CURRENT_e,     // mListPrio
  PROC_E_WB,                    // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(e_wb_class),   // mSize
  0,                        // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,        // sub_method
  152,                           // mPriority
  &l_daE_WB_Method,                 // sub_method
  0x00044100,                           // mStatus
  fopAc_ENEMY_e,                         // mActorType
  fopAc_CULLBOX_CUSTOM_e,             // cullType
};

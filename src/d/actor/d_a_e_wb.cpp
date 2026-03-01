/**
 * @file d_a_e_wb.cpp
 *
 */
 
 #include "d/dolzel_rel.h" // IWYU pragma: keep
 #include "d/actor/d_a_e_rdb.h"
 #include "d/actor/d_a_obj_crvgate.h"
 #include "d/actor/d_a_obj_crvsteel.h"
 #include "d/d_msg_object.h"
#include "d/actor/d_a_e_wb.h"
#include "Z2AudioLib/Z2Instances.h"
#include "c/c_damagereaction.h"
#include "d/actor/d_a_alink.h"
#include "d/actor/d_a_e_rd.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"
#include "m_Do/m_Do_controller_pad.h"
#include "m_Do/m_Do_graphic.h"
#include "res/Object/Always.h"
#include <cstring>


class daE_WB_HIO_c : public JORReflexible {
public:
    daE_WB_HIO_c();
    virtual ~daE_WB_HIO_c() {};
    void genMessage(JORMContext*);

    /* イノシシ - Wild Boar */
    /* 0x00 */ // vtable
    /* 0x04 */ s8 mId;
    /* 0x08 */ f32 base_size;                           // 基本サイズ - Base Size
    /* 0x0C */ f32 leader_size_ratio;                   // リーダーサイズ比 - Leader Size Ratio
    /* 0x10 */ f32 movement_speed;                      // 移動速度 - Movement Speed
    /* 0x14 */ f32 max_speed;                           // 最速度 - Max Speed
    /* 0x18 */ f32 cavalry_battle_max_speed;            // 騎馬戦最速 - Cavalry Battle Max Speed
    /* 0x1C */ f32 normal_speed_vi;
    /* 0x20 */ f32 medium_speed_vi;
    /* 0x24 */ f32 mMaxSpeedVi;
    /* 0x28 */ f32 leader_walking_speed;                // 歩き速（リ）- Leader Walking Speed
    /* 0x2C */ f32 leader_max_speed;                    // 最速度（リ）- Leader Max Speed
    /* 0x30 */ f32 leader_cavalry_battle_max_speed;     // 騎馬戦最（リ）- Leader Cavalry Battle Max Speed
    /* 0x34 */ f32 mSingleRiderSpeed;
    /* 0x38 */ f32 player_recognition_dist;             // PL認識距離 - Player Recognition Distance
    /* 0x3C */ f32 mPlayerMountedMaxSpeed;
    /* 0x40 */ f32 mPlayerMountedMotionPlaybackSpeed;
    /* 0x44 */ s16 mPlayerMountedDashTime;
    /* 0x48 */ f32 mSearchIgnoreDistance1;
    /* 0x4C */ f32 mSearchIgnoreDistance2;
    /* 0x50 */ f32 mGuidanceDisplayDistance1;
    /* 0x54 */ f32 mGuidanceDisplayDistance2;
    /* 0x58 */ u8 field_0x58;
    /* 0x59 */ u8 mNoReins;
};

STATIC_ASSERT(sizeof(daE_WB_HIO_c) == 0x5C);

#if !DEBUG
static u8 const lit_3882[12] = {0};
#endif

daE_WB_HIO_c::daE_WB_HIO_c() {
    mId = -1;
    base_size = 1.2f;
    leader_size_ratio = 1.2f;
    movement_speed = 3.5f;
    player_recognition_dist = 600.0f;
    max_speed = 37.0f;
    cavalry_battle_max_speed = 50.0f;
    leader_walking_speed = 10.0f;
    leader_max_speed = 40.0f;
    leader_cavalry_battle_max_speed = 54.0f;
    normal_speed_vi = 25.0f;
    medium_speed_vi = 45.0f;
    mMaxSpeedVi = 55.0f;
    mSingleRiderSpeed = 50.0f;
    mPlayerMountedMaxSpeed = 30.0f;
    mPlayerMountedMotionPlaybackSpeed = 0.80000001f;
    mPlayerMountedDashTime = 300;
    mSearchIgnoreDistance1 = 500.0f;
    mSearchIgnoreDistance2 = 500.0f;
    mGuidanceDisplayDistance1 = 3500.0f;
    mGuidanceDisplayDistance2 = 3500.0f;
    field_0x58 = 0;
    mNoReins = 0;
}

#if DEBUG
void daE_WB_HIO_c::genMessage(JORMContext* ctx) {
    ctx->genLabel("  イノシシ", 0x80000001);
    ctx->genSlider("基本サイズ", &base_size, 0.0f, 5.0f);
    ctx->genSlider("リーダーサイズ比", &leader_size_ratio, 0.0f, 5.0);
    ctx->genSlider("移動速度", &movement_speed, 0.0f, 20.0f);
    ctx->genSlider("PL認識距離", &player_recognition_dist, 0.0f, 2000.0f);
    ctx->genSlider("最速度", &max_speed, 0.0f, 100.0f);
    ctx->genSlider("騎馬戦最速", &cavalry_battle_max_speed, 0.0f, 100.0f);
    ctx->genSlider("歩き速（リ）", &leader_walking_speed, 0.0f, 30.0f);
    ctx->genSlider("最速度（リ）", &leader_max_speed, 0.0f, 100.0f);
    ctx->genSlider("騎馬戦最（リ）", &leader_cavalry_battle_max_speed, 0.0f, 100.0f);
    ctx->genSlider("通常速（車）", &normal_speed_vi, 0.0f, 100.0f);
    ctx->genSlider("中速度（車）", &medium_speed_vi, 0.0f, 100.0f);
    ctx->genSlider("最速度（車）", &mMaxSpeedVi, 0.0f, 100.0f);
    ctx->genSlider("一騎速", &mSingleRiderSpeed, 0.0f, 100.0f);
    ctx->genCheckBox("手綱ナシ", &mNoReins, 0x1);
    ctx->genLabel("  ", 0x80000001);
    ctx->genLabel("    プレイヤー騎乗時", 0x80000001);
    ctx->genSlider("最大速度", &mPlayerMountedMaxSpeed, 0.0f, 100.0f);
    ctx->genSlider("モーション再生速度", &mPlayerMountedMotionPlaybackSpeed, 0.0f, 5.0f);
    ctx->genSlider("ダッシュ時間", &mPlayerMountedDashTime, 0.0f, 2000.0f);
    ctx->genLabel("  ", 0x80000001);
    ctx->genLabel("    以下 一騎討ち用", 0x80000001);
    ctx->genSlider("サーチ無視距離(１)", &mSearchIgnoreDistance1, 0.0f, 5000.0f);
    ctx->genSlider("サーチ無視距離(２)", &mSearchIgnoreDistance2, 0.0f, 5000.0f);
    ctx->genSlider("案内表示距離(１)", &mGuidanceDisplayDistance1, 0.0f, 5000.0f);
    ctx->genSlider("案内表示距離(２)", &mGuidanceDisplayDistance2, 0.0f, 5000.0f);
}
#endif

static void anm_init(e_wb_class* i_actor, int i_anmId, f32 i_morf, u8 i_attr, f32 i_rate) {
    i_actor->anmID = i_anmId;

    if (i_actor->field_0x79d != 0 && i_actor->field_0x79d >= 2 && i_anmId == 32) {
        i_anmId = 33;
    }

    i_actor->anm_p->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_actor->resName, i_anmId),
                                 i_attr, i_morf, i_rate, 0.0f, -1.0f);
}

static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DJoint* joint = i_joint;
        int joint_no = joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_wb_class* i_this = (e_wb_class*)model->getUserArea();
        e_wb_class* bullbo_p2 = i_this;

        if (i_this) {
            MTXCopy(model->getAnmMtx(joint_no), *calc_mtx);

            if (joint_no == 0) {
                cMtx_ZrotM(*calc_mtx, i_this->mBodyTiltAngle);
            } else if (joint_no == 2 || joint_no == i_this->field_0x688 + 0xb) {
                cMtx_YrotM(*calc_mtx, i_this->field_0x6d8);
            } else if (joint_no == 4 || joint_no == 8 ||
                       (joint_no == 19 && i_this->field_0x79d == 0) ||
                       (joint_no == 23 && i_this->field_0x79d == 0) ||
                       (joint_no == 22 && i_this->field_0x79d != 0) ||
                       (joint_no == 27 && i_this->field_0x79d != 0))
            {
                cMtx_YrotM(*calc_mtx, i_this->mBodyTiltAngle << 1);
            }

            if (i_this->field_0x79d && joint_no == 13) {
                cMtx_YrotM(*calc_mtx, i_this->field_0x6de.y);
                cMtx_XrotM(*calc_mtx, i_this->field_0x6de.x);
                cMtx_ZrotM(*calc_mtx, i_this->field_0x6de.z);
            }

            model->setAnmMtx(joint_no, *calc_mtx);
            MTXCopy(*calc_mtx, j3dSys.mCurrentMtx);
        }
    }

    return 1;
}

static s8 lbl_244_bss_45;
static s8 lbl_244_bss_46;
static s8 lbl_244_bss_47;
static bool hio_set;

static daE_WB_HIO_c l_HIO;

static void himo_control1(e_wb_class* i_this, cXyz* i_pos, int i_idx, s8 param_3) {
    fopEn_enemy_c* enemy = &i_this->enemy;
    cXyz mae, sp54;

    int i;
    s16 rx;
    s16 ry;

    cXyz* sp18 = i_this->field_0x1450[i_idx].field_0x0;
    cXyz* r30 = sp18;
    *r30 = *i_pos;

    cXyz ato;
    cMtx_YrotS(*calc_mtx, enemy->shape_angle.y);
    cMtx_XrotM(*calc_mtx, enemy->shape_angle.x);

    mae.x = 20.0f + YREG_F(17);
    if (i_idx == 0) {
        mae.x *= -1.0f;
    }
    mae.y = 0.0f;
    mae.z = 0.0f;
    MtxPosition(&mae, &ato);

    cXyz sp3C;
    cXyz ato2;
    cXyz ato3;

    mae.x = 0.0f;
    mae.y = i_this->anm_spd * (1.0f + YREG_F(4));
    mae.z = i_this->anm_spd * (1.0f + YREG_F(5));
    MtxPosition(&mae, &ato2);

    if (enemy->speedF > 20.0f) {
        mae.x = i_this->anm_spd * (0.4f + YREG_F(9));
    } else {
        mae.x = i_this->anm_spd * (0.1f + YREG_F(9));
    }

    if (i_idx == 0) {
        mae.x *= -1.0f;
    }
    mae.y = 0.0f;
    mae.z = 0.0f;
    MtxPosition(&mae, &ato3);

    mae.x = 0.0f;
    mae.y = 0.0f;
    if (param_3 != 0) {
        mae.z = 15.0f + YREG_F(6);
    } else {
        mae.z = 20.0f + YREG_F(7);
    }

    if (i_this->field_0x79d != 0) {
        mae.z *= l_HIO.leader_size_ratio;
        ato *= l_HIO.leader_size_ratio;
        ato2 *= l_HIO.leader_size_ratio;
        ato3 *= l_HIO.leader_size_ratio;
    }

    f32 r, x, y, z;

    r30++;
    for (i = 1; i < 16; i++, r30++) {
        sp3C.x = ato2.x * cM_ssin(i_this->field_0x1688 + i * 0x1770);
        sp3C.y = ato2.y * cM_ssin(i_this->field_0x1688 + i * 0x1770);
        sp3C.z = ato2.z * cM_ssin(i_this->field_0x1688 + i * 0x1770);

        r = 1.0f;
        x = ato3.x + (sp3C.x + ((r30[0].x - r30[-1].x) + (ato.x * r)));
        y = sp3C.y + ((r30[0].y - r30[-1].y) - 20.0f + YREG_F(16));
        z = ato3.z + (sp3C.z + ((r30[0].z - r30[-1].z) + (ato.z * r)));

        ry = (s16)cM_atan2s(x, z);
        rx = -cM_atan2s(y, JMAFastSqrt(x * x + z * z));

        cMtx_YrotS(*calc_mtx, ry);
        cMtx_XrotM(*calc_mtx, rx);
        MtxPosition(&mae, &sp54);

        r30[0].x = r30[-1].x + sp54.x;
        r30[0].y = r30[-1].y + sp54.y;
        r30[0].z = r30[-1].z + sp54.z;
    }
}

static void himo_control2(e_wb_class* i_this, cXyz* i_pos, int i_idx, s8 param_3) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    cXyz mae;
    cXyz ato;

    int i;
    s16 rx;
    s16 ry;
    himo_s* sp1C = &i_this->field_0x1450[i_idx];
    cXyz* temp_r31 = &sp1C->field_0x0[15];
    *temp_r31 = *i_pos;

    mae.x = 0.0f;
    mae.y = 0.0f;

    if (param_3 != 0) {
        mae.z = 15.0f + YREG_F(6);
    } else {
        mae.z = 20.0f + YREG_F(7);
    }

    f32 x, y, z;
    temp_r31--;
    for (i = 14; i >= 1; i--, temp_r31--) {
        x = temp_r31[0].x - temp_r31[1].x;
        y = temp_r31[0].y - temp_r31[1].y;
        z = temp_r31[0].z - temp_r31[1].z;
        ry = (s16)cM_atan2s(x, z);
        rx = -cM_atan2s(y, JMAFastSqrt((x * x) + (z * z)));

        cMtx_YrotS(*calc_mtx, ry);
        cMtx_XrotM(*calc_mtx, rx);
        MtxPosition(&mae, &ato);

        temp_r31[0].x = temp_r31[1].x + ato.x;
        temp_r31[0].y = temp_r31[1].y + ato.y;
        temp_r31[0].z = temp_r31[1].z + ato.z;
    }

    temp_r31 = sp1C->field_0x0;
    cXyz* var_r29 = i_this->field_0x15d0[i_idx].getPos(0);
    for (i = 0; i < 16; i++, var_r29++, temp_r31++) {
        *var_r29 = *temp_r31;
    }

    var_r29 = i_this->field_0x1648.getPos(0);
    var_r29[i_idx] = i_this->field_0x1450[i_idx].field_0x0[15];
}

static int e_wb_lr_wall_check(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;

    dBgS_LinChk linChk;
    cXyz mae;
    cXyz start;
    cXyz ato;

    start = actor->current.pos;
    start.y += 300.0f;

    cMtx_YrotS(*calc_mtx, actor->shape_angle.y);
    mae.x = -400.0f;
    mae.y = 300.0f;
    mae.z = 400.0f + BREG_F(11);

    MtxPosition(&mae, &ato);
    ato += actor->current.pos;
    linChk.Set(&start, &ato, actor);

    fopAc_ac_c* wall;
    if (dComIfG_Bgsp().LineCross(&linChk)) {
        wall = dComIfG_Bgsp().GetActorPointer(linChk);
        if (fopAcM_GetName(wall) == PROC_BG) {
            return -1;
        }
    }

    mae.x *= -1.0f;
    MtxPosition(&mae, &ato);
    ato += actor->current.pos;

    if (dComIfG_Bgsp().LineCross(&linChk)) {
        wall = dComIfG_Bgsp().GetActorPointer(linChk);
        if (fopAcM_GetName(wall) == PROC_BG) {
            return 1;
        }
    }

    return 0;
}

static int daE_WB_Draw(e_wb_class* i_this) {
    static _GXColor l_color = {
        0x14,
        0x0F,
        0x00,
        0xFF,
    };
    f32 fVar9;

    
    if (i_this->field_0x1430 != 0 || i_this->action == ACT_EVENT) {
        return 1;
    }
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;

    cXyz mae;
    cXyz ato;

    J3DModel* model = i_this->anm_p->getModel();
    g_env_light.settingTevStruct(0, &actor->current.pos, &actor->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &actor->tevStr);
    i_this->anm_p->entryDL();

    cXyz cStack_54;
    cStack_54.set(actor->current.pos.x, actor->current.pos.y + 100.0f + BREG_F(0x12),
                  actor->current.pos.z);

    if (i_this->field_0x79d != 0) {
        fVar9 = actor->scale.z * 1000.0f + BREG_F(19);
    } else {
        fVar9 = actor->scale.z * 800.0f + BREG_F(19);
    }


    i_this->shadow_key =
        dComIfGd_setShadow(i_this->shadow_key, 1, model, &cStack_54, fVar9, 0.0f,
                           actor->current.pos.y, i_this->Bgc.GetGroundH(), i_this->Bgc.m_gnd,
                           &i_this->enemy.tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());

    if (l_HIO.mNoReins == 0) {
        MTXCopy(model->getAnmMtx((i_this->field_0x688 + 0xb) + YREG_S(3)), *calc_mtx);
        MtxPush();

        s8 cVar7 = 0;
        e_rd_class* pfVar4 = (e_rd_class*)fopAcM_SearchByID(i_this->rd_id);

        if ((i_this->StatusFlag & 1) != 0) {
            if (pfVar4 && pfVar4->ride_type == 2) {
                if (i_this->kiba == 0) {
                    model = pfVar4->anm_p->getModel();
                    cVar7 = 1;
                }
            } else {
                if (daAlink_getAlinkActorClass()->checkBoarRideOwn(actor)) {
                    if (!daAlink_getAlinkActorClass()->checkHorseNotGrab()) {
                        cVar7 = 1;
                    }
                }
            }
        }

        mae.x = 80.0f + YREG_F(0);
        mae.y = -20.0f + YREG_F(1);

        if (i_this->field_0x79d != 0) {
            mae.z = 47.0f + YREG_F(12);
        } else {
            mae.z = 42.0f + YREG_F(2);
        }

        MtxPosition(&mae, &ato);
        himo_control1(i_this, &ato, 0, cVar7);
        mae.z *= -1.0f;
        MtxPull();
        MtxPosition(&mae, &ato);
        himo_control1(i_this, &ato, 1, cVar7);

        if (cVar7 != 0) {
            cXyz ato2;
            daAlink_c* link;
            int spc;
            int sp8;
            if (daAlink_getAlinkActorClass()->checkBoarRideOwn(actor)) {
                link = daAlink_getAlinkActorClass();
                link->getHorseReinHandPos(&ato2, &ato);
                i_this->field_0x1438[0] = ato;
                i_this->field_0x1438[1] = ato2;
            } else {
                if (pfVar4->actor_set != 0) {
                    sp8 = 15;
                    spc = 20;
                } else {
                    sp8 = 19;
                    spc = 24;
                }

                MTXCopy(model->getAnmMtx(spc), *calc_mtx);
                mae.x = XREG_F(13) + 15.0f;
                mae.y = XREG_F(14);
                mae.z = XREG_F(15);
                MtxPosition(&mae, &ato);

                MTXCopy(model->getAnmMtx(sp8), *calc_mtx);
                mae.x = XREG_F(16) + 15.0f;
                mae.y = XREG_F(17);
                mae.z = XREG_F(18);
                MtxPosition(&mae, &ato2);
            }

            if (i_this->field_0x168c > 100.0f) {
                i_this->field_0x1438[0] = ato;
                i_this->field_0x1438[1] = ato2;

            } else {
                cLib_addCalc2(&i_this->field_0x1438[0].x, ato.x, 1.0f, i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[0].y, ato.y, 1.0f, i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[0].z, ato.z, 1.0f, i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[1].x, ato2.x, 1.0f, i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[1].y, ato2.y, 1.0f, i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[1].z, ato2.z, 1.0f, i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x168c, 1000.0f, 1.0f, 10.0f);
                mae = i_this->field_0x1438[0] - ato;

                if (mae.abs() > 500.0f) {
                    i_this->field_0x1438[0] = ato;
                    i_this->field_0x1438[1] = ato2;
                }
            }
        } else {
            i_this->field_0x168c = 0.0f;
            MTXCopy(model->getAnmMtx(i_this->field_0x688 + 0xe), *calc_mtx);
            mae.x = YREG_F(3) + 50.0f;
            mae.y = YREG_F(4) + 60.0f;
            mae.z = YREG_F(5);
            MtxPosition(&mae, &i_this->field_0x1438[0]);
            i_this->field_0x1438[1] = i_this->field_0x1438[0];
        }

        himo_control2(i_this, &i_this->field_0x1438[0], 0, cVar7);
        himo_control2(i_this, &i_this->field_0x1438[1], 1, cVar7);
        i_this->field_0x15d0[0].update(0x10, l_color, &actor->tevStr);
        dComIfGd_set3DlineMat(&i_this->field_0x15d0[0]);
        i_this->field_0x15d0[1].update(0x10, l_color, &actor->tevStr);
        dComIfGd_set3DlineMat(&i_this->field_0x15d0[1]);
        i_this->field_0x1648.update(2, l_color, &actor->tevStr);
        dComIfGd_set3DlineMat(&i_this->field_0x1648);
    }

    return 1;
}

static s16 e_wb_wall_check(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    dBgS_LinChk linChk;
    cXyz mae;
    cXyz start;
    cXyz ato;

    cMtx_YrotS(*calc_mtx, actor->shape_angle.y);
    mae.x = 10.0f;
    mae.y = 120.0f;
    mae.z = 250.0f + BREG_F(8);
    MtxPosition(&mae, &ato);
    ato += actor->current.pos;
    start = actor->current.pos;
    start.y += 200.0f;
    linChk.Set(&start, &ato, actor);
    if (dComIfG_Bgsp().LineCross(&linChk)) {
        fopAc_ac_c* wall = dComIfG_Bgsp().GetActorPointer(linChk);
        if (fopAcM_GetName(wall) != PROC_BG) {
            return 0;
        }
        cXyz cStack_c4(linChk.GetCross());
        cXyz cStack_d0;
        mae.x *= -1.0f;
        MtxPosition(&mae, &ato);
        ato += actor->current.pos;
        linChk.Set(&start, &ato, actor);
        if (!dComIfG_Bgsp().LineCross(&linChk) == 0) {
            cStack_d0 = linChk.GetCross();
        } else {
            return 0;
        }
        mae = cStack_d0 - cStack_c4;
        s16 chk = (cM_atan2s(mae.x, mae.z) + 0x4000) - actor->shape_angle.y;
        if (chk == 0) {
            chk = 1;
        }
        return chk;
    }

    return 0;
}

static s8 gake_check(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    dBgS_GndChk gnd_chk;
    cXyz mae;
    cXyz ato;

    static f32 chk_x[4] = {14257.0f, 34775.0f, -22864.0f, -11627.0f};
    static f32 chk_z[4] = {20075.0f, -16467.0f, 9823.0f, 22601.0f};

    if (lbl_244_bss_46 != 0) {
        if (!daAlink_getAlinkActorClass()->checkBoarRideOwn(actor) &&
            actor->current.pos.y < -5000.0f)
        {
            OS_REPORT(" WB NARAKU DOWN  2\n");
            fopAcM_delete(actor);
            return 0;
        }

        for (int i = 0; i < 4; i++) {
            mae.x = nREG_F(3) + chk_x[i] - actor->current.pos.x;
            mae.z = nREG_F(4) + chk_z[i] - actor->current.pos.z;
            s16 range = cM_atan2s(mae.x, mae.z) - actor->shape_angle.y;
            if (JMAFastSqrt(mae.x * mae.x + mae.z * mae.z) < nREG_F(8) + 2000.0f) {
                if (range < 0x4000 && range > -0x4000) {
                    return 2;
                }

                return -1;
            }
        }
    }

    cMtx_YrotS(*calc_mtx, actor->shape_angle.y);
    mae.x = 500.0f;
    mae.y = 1000.0f;
    mae.z = 1000.0f + WREG_F(0);
    MtxPosition(&mae, &ato);
    ato += actor->current.pos;
    gnd_chk.SetPos(&ato);

    if (actor->current.pos.y - dComIfG_Bgsp().GroundCross(&gnd_chk) > 2000.0f) {
        return 1;
    } else {
        mae.x = -500.0f;
        MtxPosition(&mae, &ato);
        ato += actor->current.pos;
        gnd_chk.SetPos(&ato);

        if (actor->current.pos.y - dComIfG_Bgsp().GroundCross(&gnd_chk) > 2000.0f) {
            return 1;
        } else {
            mae.x = 0.0f;
            mae.y = 1000.0f;
            mae.z = 2000.0f + WREG_F(1);
            MtxPosition(&mae, &ato);
            ato += actor->current.pos;
            gnd_chk.SetPos(&ato);

            if (actor->current.pos.y - dComIfG_Bgsp().GroundCross(&gnd_chk) > 2000.0f) {
                return 1;
            } else {
                return 0;
            }
        }
    }
}

static BOOL e_wb_saku_jump_check(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    dBgS_LinChk dStack_98;
    cXyz mae;
    cXyz start;
    cXyz ato;
    cMtx_YrotS(*calc_mtx, actor->shape_angle.y);
    cMtx_XrotM(*calc_mtx, actor->shape_angle.x);
    mae.x = 10.0f;
    mae.y = 150.0f;
    mae.z = KREG_F(8) + 500.0f;
    MtxPosition(&mae, &ato);
    ato += actor->current.pos;
    start = actor->current.pos;
    start.y += 100.0f;
    dStack_98.Set(&start, &ato, actor);

    if (dComIfG_Bgsp().LineCross(&dStack_98)) {
        cXyz cStack_cc(dStack_98.GetCross());
        cXyz cStack_d8;

        mae.x *= -1.0f;
        MtxPosition(&mae, &ato);
        ato += actor->current.pos;
        dStack_98.Set(&start, &ato, actor);

        if (dComIfG_Bgsp().LineCross(&dStack_98)) {
            cStack_d8 = dStack_98.GetCross();
        } else {
            return 0;
        }

        mae = cStack_d8 - cStack_cc;
        s16 range = (cM_atan2s(mae.x, mae.z) + 0x4000) - actor->shape_angle.y;

        if (range > -0x3000 && range < 0x3000) {
            return 1;
        }
    }

    return 0;
}

static int e_wb_saku_check_sub(e_wb_class* i_this, s16 yaa) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    dBgS_GndChk dStack_90;
    dBgS_LinChk link_chk;
    cXyz mae;
    cXyz start;
    cXyz ato;

    f32 iVar2 = (i_this->field_0x68e & 7) * 400.0f;

    cMtx_YrotS(*calc_mtx, actor->shape_angle.y + yaa);
    mae.x = 0.0f;
    mae.y = 2000.0f;
    mae.z = iVar2;
    MtxPosition(&mae, &start);
    start += actor->current.pos;
    dStack_90.SetPos(&start);
    start.y = dComIfG_Bgsp().GroundCross(&dStack_90) + 150.0f;
    mae.x = 0.0f;
    mae.y = 0.0f;
    mae.z = 410.0f;

    MtxPosition(&mae, &ato);
    ato += start;
    link_chk.Set(&start, &ato, actor);

    if (dComIfG_Bgsp().LineCross(&link_chk)) {
        return 1;
    }

    return 0;
}

static int e_wb_saku_check(e_wb_class* i_this) {
    e_wb_class* unused = i_this;
    int saku = false;
    static s16 yaa[3] = {0, -4096, 4096};
    static u32 saku_bit[3] = {1, 2, 4};

    for (int i = 0; i < 3; i++) {
        if (e_wb_saku_check_sub(i_this, yaa[i])) {
            saku |= saku_bit[i];
        }
    }

    return saku;
}

static void e_wb_wait(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    cXyz unused1, unused2;
    switch (i_this->mode) {
    case 0:
        anm_init(i_this, 0x25, 3.0f, 2, 1.0f);
        i_this->mode = 1;
    case 1:
        if (actor->speedF > 15.0f) {
            i_this->movement_type = 2;
            i_this->creature.startCreatureSoundLevel(Z2SE_EN_WB_L_SLIP, 0, -1);
        } else {
            anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
            i_this->mode = 2;
            i_this->StatusFlag |= (u16)0x20;
        }
    case 2:
    default:
        cLib_addCalc0(&actor->speedF, 1.0f, 1.0f);
    }
}

static void e_wb_ride(e_wb_class* i_this) {
    e_wb_class* unused = i_this;
    switch (i_this->mode) {
    case 0:
        anm_init(i_this, 0x1f, 3.0f, 0, 1.0f);
        i_this->mode = 1;
    case 1:
    default:
        return;
    }
}

static void e_wb_pl_ride_now(e_wb_class* i_this) {
    if (i_this->anmID != 42) {
        anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
    }
}

static void e_wb_pl_ride(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    f32 fVar11;
    f32 fVar2;

    if (i_this->dash_timer != 0) {
        fVar11 = 50.0f;
        if (i_this->dash_timer == 1) {
            i_this->action = ACT_PL_RIDE;
        }

        if (i_this->anmID == 27) {
            if (i_this->anm_p->isStop()) {
                anm_init(i_this, 0x20, 2.0f, 2, 2.0f);
                actor->speedF = 1.0;
            } else {
                if (i_this->anm_p->checkFrame(22.0f) || i_this->anm_p->checkFrame(42.0))
                {
                    dComIfGp_getVibration().StartShock(5, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
                }
                return;
            }
        }
        if (
#if PLATFORM_GCN
            (i_this->dash_timer & 0x7) == 0
#else
            (i_this->field_0x1432 & 0xf) == 0
#endif
        )
        {
            dComIfGp_getVibration().StartShock(3, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        }
    } else {
        fVar11 = l_HIO.mPlayerMountedMaxSpeed;
    }

    if (i_this->anmID == 37) {
        cLib_chaseF(&actor->speedF, 0.0f, 2.0f);
        if (actor->speedF < 0.01f) {
            anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
        }

        if (actor->speedF > 10.0f) {
            i_this->movement_type = 2;
        }
        return;
    } else {
        f32 stick_value = mDoCPd_c::getStickValue(0);
        if (daAlink_getAlinkActorClass()->checkHorseGetOffMode()) {
            stick_value = 0.0f;
        }

        f32 fVar1 = 1.5;
        s16 stick_angle;

        if (i_this->action == 101) {
            fVar2 = stick_value;
            stick_angle = mDoCPd_c::getStickAngle3D(0);
        } else {
            fVar2 = 1.0;
            fVar1 = 10.0;

            if (dComIfGp_event_runCheck()) {
                stick_angle = -0x8000;
            } else {
                stick_angle = mDoCPd_c::getStickAngle3D(0);

                if (stick_value < 0.1f) {
                    stick_angle = -0x8000;
                }
            }
        }

        s16 angle_y = dCam_getControledAngleY(dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0))) +
                      0x10000 + stick_angle - 0x8000;
        int iVar4 = 0;
        s16 angle_delta = angle_y - actor->current.angle.y;

        if (i_this->action == 101) {
            if (abs(angle_delta) > 0x6000) {
                iVar4 = 1;
            } else if (angle_delta >= 0x2000) {
                iVar4 = 2;
            } else if (angle_delta <= -0x2000) {
                iVar4 = 3;
            }
        } else if (angle_delta >= 0x2000) {
            iVar4 = 2;
        } else if (angle_delta <= -0x2000) {
            iVar4 = 3;
        }

        if (i_this->mSpeedCapTimer == 2) {
            if (actor->speedF < 0.1f) {
                if (iVar4 == 0) {
                    fVar2 = 0.0;
                }
            } else {
                iVar4 = 1;
            }

            if (i_this->action != ACT_PL_RIDE) {
                i_this->action = ACT_PL_RIDE;
                i_this->dash_timer = 0;

                if (actor->speedF > l_HIO.mPlayerMountedMaxSpeed) {
                    actor->speedF = l_HIO.mPlayerMountedMaxSpeed;
                }
            }
        } else if (i_this->mSpeedCapTimer < 0 && iVar4 == 1) {
            fVar2 = 0.0f;
        }

        // Bulblin Camp, Outside Arbiter's Grounds Room
        if ((strcmp(dComIfGp_getStartStageName(), "F_SP118") == 0 &&
             fopAcM_GetRoomNo(actor) == 3 && dComIfGp_event_runCheck()) ||
            dComIfGp_checkPlayerStatus0(0, 0x2000))
        {
            fVar2 = 0.0f;
        }

        i_this->mWaitRollAngle = 0;
        if (iVar4 != 1 && fVar2 > 0.01f) {
            s16 curr_angle_y = actor->current.angle.y;

            if (i_this->action == ACT_PL_RIDE) {
                cLib_addCalcAngleS2(&actor->current.angle.y, angle_y, 4, 0x1F4);
                i_this->turn_step = 0;
            } else {
                s16 local_94 = 0;
                s16 local_96 = 0x40 + KREG_S(3);

                if (iVar4 == 2) {
                    local_94 = 0x300 + KREG_S(2);
                } else if (iVar4 == 3) {
                    local_94 = -(0x300 + KREG_S(2));
                } else {
                    local_96 = 0x10 + KREG_S(4);
                }

                cLib_addCalcAngleS2(&i_this->turn_step, local_94, 4, local_96);
                actor->current.angle.y += i_this->turn_step;
            }

            i_this->mWaitRollAngle = actor->current.angle.y - curr_angle_y;
            s16 temAngle = i_this->mWaitRollAngle * (TREG_S(7) - 8);
            f32 fVar10 = temAngle * actor->speedF / (l_HIO.mPlayerMountedMaxSpeed + 1.0f);

            if (fVar10 > NREG_F(0x11) + 4500.0f) {
                fVar10 = NREG_F(0x11) + 4500.0f;
            } else if (fVar10 < -(4500.0f + NREG_F(0x11))) {
                fVar10 = -(4500.0f + NREG_F(0x11));
            }

            cLib_addCalcAngleS2(&i_this->mBodyTiltAngle, (s16)fVar10, 8, 0x140);
        }

        if (actor->speedF < 0.01f) {
            if (fVar2 > 0.01f) {
                if (iVar4 == 0) {
                    i_this->mWaitRollAngle = 0;
                    actor->speedF = fVar1;
                } else {
                    if (iVar4 == 1) {
                        i_this->mWaitRollAngle = 0;
                        cLib_chaseF(&actor->speedF, fVar11 * fVar2 * -0.2f, 1.0f);
                    }

                    if (i_this->anmID != 40) {
                        anm_init(i_this, 0x28, 5.0f, 2, 1.5f);
                    }
                }
            } else if (fabsf(actor->speedF) < 0.01f) {
                if (i_this->anmID != 42) {
                    anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
                }
            } else {
                cLib_chaseF(&actor->speedF, 0.0f, 0.5f);
            }
        } else {
            i_this->mWaitRollAngle = 0;

            if (fVar2 > 0.01f) {
                if (iVar4 == 1) {
                    if (actor->speedF > fVar11 * 0.3f && i_this->anmID != 37) {
                        anm_init(i_this, 0x25, 3.0f, 2, 1.0f);
                    }

                    cLib_chaseF(&actor->speedF, 0.0f, 2.0f);
                } else {
                    cLib_chaseF(&actor->speedF, fVar11 * fVar2, fVar1);

                    if (actor->speedF < TREG_F(3) + 20.0f) {
                        if (i_this->anmID != 43) {
                            anm_init(i_this, 0x2b, 5.0f, 2, 1.0f);
                        }
                    } else if (i_this->anmID != 32) {
                        anm_init(i_this, 0x20, 5.0f, 2, 1.0f);
                    }
                }
            } else {
                cLib_chaseF(&actor->speedF, 0.0f, 0.5);

                if (i_this->anmID == 32 && actor->speedF < TREG_F(3) + 20.0f) {
                    anm_init(i_this, 0x2b, 5.0f, 2, 1.0f);
                }
            }
        }

        if (i_this->anmID == 32) {
            i_this->anm_p->setPlaySpeed(
                BREG_F(0) + 0.4f +
                (l_HIO.mPlayerMountedMotionPlaybackSpeed * actor->speedF) /
                    l_HIO.mPlayerMountedMaxSpeed);
            i_this->movement_type = 1;
            i_this->pursuit_flg = 1;
        } else if (i_this->anmID == 43) {
            i_this->anm_p->setPlaySpeed(TREG_F(4) + 0.7f +
                                              (TREG_F(5) + 0.05f) * actor->speedF);
        }
    }
}

static void e_wb_f_wait(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    s16 target_angle = fopAcM_searchPlayerAngleY(actor);

    switch (i_this->mode) {
    case 0:
        if (lbl_244_bss_45 != 0 && (i_this->arg1 == 1 || i_this->arg1 == 2)) {
            i_this->mode = 10;
            anm_init(i_this, 0x28, 5.0f, 2, 1.5f);

            if (cM_rndF(1.0) < 0.5f) {
                i_this->field_0x7a0 = 0x3000;
            } else {
                i_this->field_0x7a0 = -0x3000;
            }
            break;
        } else {
            anm_init(i_this, 0x28, 5.0f, 2, 1.5f);
            i_this->mode = 1;
            i_this->StatusFlag |= (u16)4;
        }
        // fallthrough
    case 1:

        cLib_addCalcAngleS2(&actor->current.angle.y, target_angle, 8, 0x200);
        i_this->range = target_angle - actor->current.angle.y;

        if (i_this->range < 2048 && i_this->range > -0x800) {
            if (i_this->mSpeedCapTimer > 0) {
                if (i_this->anmID != 42) {
                    anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
                }
            } else {
                fopAc_ac_c* player = dComIfGp_getPlayer(0);
                i_this->action = ACT_C_F_RUN;
                i_this->mode = 0;
                i_this->field_0x5d0 = player->current.pos;
            }
            break;
        } else if (i_this->anmID != 40) {
            anm_init(i_this, 0x28, 5.0f, 2, 1.0f);
        }
        break;

    case 10:
        target_angle += i_this->field_0x7a0;

        cLib_addCalcAngleS2(&actor->current.angle.y, target_angle, 8, 0x200);
        i_this->range = target_angle - actor->current.angle.y;

        if (i_this->range < 2048 && i_this->range > -0x800) {
            anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
            i_this->mode = 11;
        }
        break;

    case 11:
        target_angle += i_this->field_0x7a0;
        i_this->range = target_angle - actor->current.angle.y;

        if (i_this->range > 0x1000 || i_this->range < -0x1000) {
            i_this->mode = 10;
            anm_init(i_this, 0x28, 5.0f, 2, 1.5f);
        }

        break;
    }

    cLib_addCalc0(&actor->speedF, 1.0f, 2.0f);

    if (i_this->mode >= 10) {
        f32 dist = fopAcM_searchPlayerDistanceXZ(actor);

        if (!(dist < 500.0f) && !(dist > 1500.0f)) {
            if (!daPy_getPlayerActorClass()->checkHorseRide()) {
                return;
            }

            if (!(dComIfGp_getHorseActor()->speedF >= 30.0f)) {
                return;
            }
        }

        if (i_this->mSpeedCapTimer == 0) {
            i_this->action = ACT_C_F_RUN;
            i_this->mode = 0;
        }
    }
}

static int pl_pass_check(e_wb_class* i_this, f32 pass) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    fopAc_ac_c* pl = dComIfGp_getPlayer(0);

    cXyz mae;
    cXyz ato;

    mae = actor->current.pos - pl->current.pos;

    cMtx_YrotS(*calc_mtx, -pl->shape_angle.y);
    MtxPosition(&mae, &ato);
    if (ato.z > pass) {
        return 1;
    } else {
        return 0;
    }
}

static void e_wb_f_run(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    fopAc_ac_c* pla = dComIfGp_getPlayer(0);
    cXyz mae;
    cXyz ato;
    f32 dist = fopAcM_searchPlayerDistanceXZ(actor);
    f32 speed = 0.0f;
    f32 acceleration = 1.0f;
    if ((i_this->StatusFlag & 1) == 0) {
        i_this->action = ACT_A_RUN;
        i_this->mode = 0;
    } else {
        e_rd_class* local_90 = (e_rd_class*)fopAcM_SearchByID(i_this->rd_id);
        int saku;
        if (saku = e_wb_saku_check(i_this)) {
            i_this->field_0x6d4 = 60;
            if ((saku & 2) != 0) {
                i_this->field_0x6d6 = 0x3000;
            } else {
                i_this->field_0x6d6 = -0x3000;
            }
        }
        cLib_addCalcAngleS2(&i_this->field_0x6d6, 0, 1, 0x64);
        s8 run_check = false;
        if (daPy_getPlayerActorClass()->checkHorseRide() &&
            dComIfGp_getHorseActor()->speedF >= 30.0f)
        {
            run_check = true;
        }

        s16 angle = actor->current.angle.y;

        switch (i_this->mode) {
        case 0:
            if (i_this->field_0x7a6 == 0) {
                anm_init(i_this, 0x1b, 3.0f, 0, 1.0f);
                i_this->mode = 1;
                i_this->anm_spd = 40.0f;
                i_this->StatusFlag |= (u16)8;
            } else {
                i_this->field_0x7a6 = 0;
                anm_init(i_this, 0x20, 5.0f, 2, 1.0f);
                i_this->anm_p->setFrame(cM_rndF(10.0f));
                i_this->mode = 2;
                i_this->StatusFlag |= (u16)0x10;
                i_this->creature.startCreatureSound(Z2SE_EN_WB_KICK_GROUND, 0, -1);
            }
            break;
        case 1:
            if (i_this->anm_p->checkFrame(3.0f)) {
                i_this->collision_flg |= (u8)2;
                i_this->movement_type = 10;
            } else if (i_this->anm_p->checkFrame(15.0f)) {
                i_this->collision_flg |= (u8)3;
            }

            if (i_this->anm_p->isStop()) {
                anm_init(i_this, 0x20, 5.0f, 2, 1.0f);
                i_this->mode = 2;
                i_this->StatusFlag |= (u16)0x10;
                i_this->creature.startCreatureSound(Z2SE_EN_WB_KICK_GROUND, 0, -1);
            }
            break;
        case 2:
            i_this->pursuit_flg = 1;
            if (run_check) {
                speed = dComIfGp_getHorseActor()->speedF;
                if (speed > l_HIO.cavalry_battle_max_speed) {
                    speed = l_HIO.cavalry_battle_max_speed;
                } else if (speed < l_HIO.max_speed) {
                    speed = l_HIO.max_speed;
                }

                s16 local_a4 = 128;
                if (i_this->field_0x6c0 != 0) {
                    i_this->mTargetFacingAngle = pla->shape_angle.y;
                    i_this->field_0x5de = 0;
                    acceleration = 0.5f;
                } else {
                    if (i_this->timer[2] == 0) {
                        i_this->timer[2] = cM_rndF(10.0f) + 3.0f;
                        mae.x = i_this->x_check;
                        mae.y = 0.0f;
                        mae.z = 1500.0f;
                        cMtx_YrotS(*calc_mtx, pla->shape_angle.y);
                        MtxPosition(&mae, &ato);
                        ato += pla->current.pos;
                        mae = ato - actor->current.pos;
                        i_this->mTargetFacingAngle = cM_atan2s(mae.x, mae.z);
                    }

                    if (pl_pass_check(i_this, i_this->pass)) {
                        speed *= 0.95f + TREG_F(7);
                        acceleration = 0.5f;
                    } else {
                        speed *= 1.35f + TREG_F(8);
                        acceleration = 0.5f;
                    }
                    local_a4 = 0x200;
                }

                if (local_90 != NULL && local_90->anm == 39) {
                    i_this->field_0x6d6 =
                        (5000.0f + BREG_F(16)) * cM_ssin(i_this->field_0x68e * (0x3E8 + BREG_S(7)));
                    local_a4 = 0x400;
                }

                cLib_addCalcAngleS2(&actor->current.angle.y,
                                    i_this->mTargetFacingAngle + i_this->field_0x5de +
                                        i_this->field_0x6d6,
                                    8, local_a4);
                cLib_addCalcAngleS2(&i_this->field_0x5de, 0, 1, 0x64);
                f32 fVar1 = actor->speedF / 40.0f;
                if (fVar1 < 1.0f) {
                    fVar1 = 1.0f;
                }

                if (fVar1 > 1.3f) {
                    fVar1 = 1.3f;
                }
                i_this->anm_p->setPlaySpeed(fVar1);
            } else {
                i_this->anm_p->setPlaySpeed(1.0);
                acceleration = 3.0f;
                speed = l_HIO.max_speed;
                if (dist > 700.0f) {
                    cLib_addCalcAngleS2(&actor->current.angle.y,
                                        i_this->field_0x6d6 + fopAcM_searchPlayerAngleY(actor), 8,
                                        0x200);
                }

                if (dist < 400.0f) {
                    i_this->mode = 3;
                    i_this->timer[0] = 40;
                }
            }
            i_this->movement_type = 1;
            break;
        case 3:
            i_this->pursuit_flg = 1;
            speed = l_HIO.max_speed;
            acceleration = 3.0f;
            if (i_this->timer[0] == 15) {
                i_this->StatusFlag |= (u16)0x20;
            }

            if (i_this->timer[0] == 0) {
                i_this->mode = 4;
                anm_init(i_this, 0x25, 3.0f, 2, 1.0f);
            }

            i_this->movement_type = 1;
            break;
        case ACT_RIDE:
            if (actor->speedF > 15.0f) {
                i_this->movement_type = 2;
                i_this->creature.startCreatureSoundLevel(Z2SE_EN_WB_L_SLIP, 0, -1);
            }

            if (actor->speedF < 1.0f) {
                i_this->action = ACT_F_WAIT;
                i_this->mode = 0;
                return;
            }
            break;
        }

        cLib_addCalc2(&actor->speedF, speed, 1.0f, acceleration);
        s16 ya = (-8 + TREG_S(7)) * (actor->current.angle.y - angle);
        cLib_addCalcAngleS2(&i_this->mBodyTiltAngle, ya, 8, 0x200);
        if (i_this->mode < 4 && i_this->mSpeedCapTimer > 0) {
            i_this->StatusFlag |= (u16)0x20;
            anm_init(i_this, 0x25, 3.0f, 2, 1.0f);
            if (actor->speedF > 30.0f) {
                actor->speedF = 30.0f;
            }
            i_this->mode = 4;
        }
    }
}

static void* s_wbstart_sub(void* i_actor, void* i_data) {
    UNUSED(i_data);
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_WB) {
        e_wb_class* wb = static_cast<e_wb_class*>(i_actor);
        if (wb->field_0x79d == 0) {
            wb->field_0x7a6 = 1;
            wb->field_0x7a7 = 1;
        }
    }
    return NULL;
}

static void e_wb_b_wait(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    f32 dist = fopAcM_searchPlayerDistanceXZ(actor);
    s16 target_angle = fopAcM_searchPlayerAngleY(actor);
    if (i_this->wait_timer != 0) {
        i_this->wait_timer--;
        if (i_this->wait_timer == 0) {
            fpcM_Search(s_wbstart_sub, i_this);
        }
    }

    switch (i_this->mode) {
    case 0:
        anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
        i_this->mode = 1;
        i_this->timer[0] = cM_rndF(100.0f) + 100.0f;
        i_this->StatusFlag |= (u16)0x20;
        // fallthrough
    case 1:
        if (i_this->timer[0] == 0 && i_this->mPathInitialized != 0) {
            i_this->mode = 2;
        } else if (dist < 2000.0f) {
            i_this->action = ACT_B_RUN;
            i_this->mode = 0;
            i_this->creature.startCreatureVoice(Z2SE_EN_RDB_V_HOICK, -1);
        }
        break;
    case 2:
        cLib_addCalcAngleS2(&actor->current.angle.y, target_angle, 8, 0x200);
        i_this->range = target_angle - actor->current.angle.y;
        if (i_this->range < 2048 && i_this->range > -0x800) {
            if (i_this->mSpeedCapTimer > 0) {
                if (i_this->anmID != 42) {
                    anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
                }
            } else {
                i_this->action = ACT_B_WAIT2;
                i_this->mode = 0;
            }
        } else if (i_this->anmID != 40) {
            anm_init(i_this, 0x28, 5.0f, 2, 1.0f);
        }
        break;
    }

    cLib_addCalc0(&actor->speedF, 1.0f, 2.0f);
}

static cXyz b_path[8];

static cXyz b_path2[8];

static void e_wb_b_run2(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    fopAc_ac_c* pla = dComIfGp_getPlayer(0);
    cXyz mae;
    cXyz ato;
    f32 dist = fopAcM_searchPlayerDistanceXZ(actor);
    f32 speed = 0.0f;
    f32 acceleration = 1.0f;
    s16 angle = actor->current.angle.y;
    f32 target = 1.0f;

    switch (i_this->mode) {
    case 0:
        anm_init(i_this, 0x1b, 3.0f, 0, 1.0f);
        i_this->mode = 1;
        i_this->StatusFlag |= (u16)8;
        i_this->anm_spd = 40.0f;
        i_this->mPlaySpeed = 1.0f;
        break;
    case 1:
        if (i_this->anm_p->checkFrame(3.0f) != 0) {
            i_this->collision_flg |= (u8)2;
            i_this->movement_type = 10;
        } else {
            if (i_this->anm_p->checkFrame(15.0f) != 0) {
                i_this->collision_flg |= (u8)3;
            }
        }

        if (i_this->anm_p->isStop()) {
            anm_init(i_this, 0x20, 5.0f, 2, 1.0f);
            i_this->mode = 2;
            cXyz path;
            cXyz path2;
            int path_no = 0;

            for (int i = 1; i < 8; i++) {
                path = b_path2[path_no] - actor->current.pos;
                path2 = b_path2[i] - actor->current.pos;

                if (path.abs() > path2.abs()) {
                    path_no = i;
                }
            }

            i_this->path_no = path_no;
            i_this->timer[0] = cM_rndF(100.0f) + 100.0f;
        }

        break;
    case 2:
        i_this->pursuit_flg = 1;

        for (int i = 0; i < 8; i++) {
            cMtx_YrotS(*calc_mtx, i << 13);
            mae.z = 3000.0f + ZREG_F(10);
            MtxPosition(&mae, &ato);
            ato += pla->current.pos;
            b_path2[i] = ato;
        }

        mae = b_path2[i_this->path_no] - actor->current.pos;
        mae.y = 0.0f;

        if (mae.abs() < 600.0f) {
            int path_dir = 1;
            mae = b_path2[(i_this->path_no + 1) & 7] - actor->current.pos;

            s16 range = actor->current.angle.y - cM_atan2s(mae.x, mae.z);

            if (range < 0x4000 && range > -0x4000) {
                i_this->path_no += path_dir;
            } else {
                i_this->path_no -= path_dir;
            }

            i_this->path_no &= 7;
            i_this->turn_step = 0;
        }

        mae = b_path2[i_this->path_no] - actor->current.pos;
        i_this->mTargetFacingAngle = cM_atan2s(mae.x, mae.z);

        cLib_addCalcAngleS2(&actor->current.angle.y, i_this->mTargetFacingAngle, 8,
                            i_this->turn_step);
        cLib_addCalcAngleS2(&i_this->turn_step, 0x400, 1, 0x10);

        acceleration = 3.0f;
        speed = l_HIO.leader_max_speed;
        i_this->movement_type = 1;

        if (i_this->timer[0] == 0 && dist < 5000.0f) {
            anm_init(i_this, 0x25, 3.0f, 2, 1.0f);
            i_this->mode = 3;
        }
        break;
    case 3:
        if (actor->speedF > 15.0f) {
            i_this->movement_type = 2;
        }

        if (actor->speedF < 1.0f) {
            i_this->action = ACT_B_WAIT;
            i_this->mode = 0;
            return;
        }
    }

    cLib_addCalc2(&actor->speedF, speed, 1.0f, acceleration);
    s16 ya = (-4 + TREG_S(7)) * (actor->current.angle.y - angle);
    cLib_addCalcAngleS2(&i_this->mBodyTiltAngle, ya, 8, 0x200);
    i_this->anm_p->setPlaySpeed(i_this->mPlaySpeed);
    cLib_addCalc2(&i_this->mPlaySpeed, target, 1.0f, 0.1f);

    if (dist < 1000.0f) {
        i_this->action = ACT_B_RUN;

        if (i_this->anmID == 32) {
            i_this->mode = 2;
        } else {
            i_this->mode = 0;
            i_this->creature.startCreatureVoice(Z2SE_EN_RDB_V_HOICK, -1);
        }
    }

    if (i_this->mode < 3 && i_this->mSpeedCapTimer > 0) {
        anm_init(i_this, 0x25, 3.0f, 2, 1.0f);

        if (actor->speedF > 30.0f)
            actor->speedF = 30.0f;

        i_this->mode = 3;
    }
}

static void e_wb_b_wait2(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    fopAc_ac_c* pla = dComIfGp_getPlayer(0);
    cXyz cStack_38;
    cXyz cStack_44;
    f32 dist = fopAcM_searchPlayerDistanceXZ(actor);
    s16 target_angle = fopAcM_searchPlayerAngleY(actor);

    switch (i_this->mode) {
    case 0:
        if (cM_rndF(1.0f) < 0.5f) {
            i_this->mTargetFacingAngle = target_angle + 0x4000;
        } else {
            i_this->mTargetFacingAngle = target_angle - 0x4000;
        }
        i_this->mode = 1;
        // fallthrough
    case 1:
        cLib_addCalcAngleS2(&actor->current.angle.y, i_this->mTargetFacingAngle, 8, 0x200);
        i_this->range = i_this->mTargetFacingAngle - actor->current.angle.y;
        if (i_this->range < 2048 && i_this->range > -0x800) {
            anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
            i_this->mode = 2;
        } else if (i_this->anmID != 40) {
            anm_init(i_this, 0x28, 5.0f, 2, 1.0f);
        }
        break;
    case 2:
        if (dist < 4000.0f) {
            i_this->action = ACT_B_RUN;
            i_this->mode = 0;
            i_this->creature.startCreatureVoice(Z2SE_EN_RDB_V_HOICK, -1);
        }
        break;
    }

    cLib_addCalc0(&actor->speedF, 1.0f, 1.0f);
}

/**
 * @brief Handles the running action state for the Bullbo enemy.
 *
 * This function controls the Bullbo's behavior while running, including path initialization,
 * following a generated path, adjusting speed based on the player's horse, handling jumps over fences or walls,
 * and transitioning to other states like waiting or catching up.
 *
 * The path is an octagonal loop with randomized radii, regenerated when the Bullbo reaches a waypoint or periodically.
 * Speed and animation are adjusted dynamically to match or exceed the player's pace during chases.
 *
 * @param i_this Pointer to the Bullbo instance (e_wb_class).
 */
static void e_wb_b_run(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    fopAc_ac_c* pla = dComIfGp_getPlayer(0);
    cXyz mae;
    cXyz ato;
    f32 dist = fopAcM_searchPlayerDistanceXZ(actor);
    f32 target_speed = 0.0;
    f32 acceleration = 1.0;

    if ((i_this->StatusFlag & 1) == 0) {
        i_this->action = ACT_A_RUN;
        i_this->mode = 0;
    } else {
        s8 is_player_on_fast_horse = false;
        if (daPy_getPlayerActorClass()->checkHorseRide() &&
            dComIfGp_getHorseActor()->speedF >= 30.0f)
        {
            is_player_on_fast_horse = true;
        }

        s16 initial_facing_angle = actor->current.angle.y;
        f32 anm_spd = 1.0f;
        s8 regenerate_path = false;

        switch (i_this->mode) {
        case 0:
            i_this->StatusFlag |= (u16)8;
        case 1: // path initialization
            i_this->anm_spd = 30.0f;
            i_this->mPlaySpeed = 1.0f;
            anm_init(i_this, 0x20, 5.0f, 2, 1.0f);
            i_this->mode = 2;
            i_this->StatusFlag |= (u16)0x10;
            i_this->creature.startCreatureSound(Z2SE_EN_WB_KICK_GROUND, 0, -1);

            if (i_this->mPathInitialized != 0) {
                cXyz dist_to_point;
                cXyz dist_to_other;
                int closest_index = 0;

                for (int i = 1; i < 8; i++) {
                    dist_to_point = b_path[closest_index] - actor->current.pos;
                    dist_to_other = b_path[i] - actor->current.pos;

                    if (dist_to_point.abs() > dist_to_other.abs()) {
                        closest_index = i;
                    }
                }

                i_this->path_no = closest_index;

            } else {
                if (lbl_244_bss_45 == 1) {
                    i_this->path_no = 6 + TREG_S(6);
                } else {
                    i_this->path_no = 2 + TREG_S(6);
                }

                i_this->path_dir = 1;
                i_this->mPathInitialized = 1;
            }
            break;
        case 2:  // path following
            i_this->pursuit_flg = 1;
            mae = b_path[i_this->path_no] - actor->current.pos;
            mae.y = 0.0;

            if (mae.abs() < 800.0f) {
                if (i_this->lap_cnt >= 4 && cM_rndF(1.0f) < 0.05f) {
                    i_this->path_dir = cM_rndF(6.0f) + 1.0f;
                }

                mae = b_path[(i_this->path_no + 1) & 7] - actor->current.pos;
                s16 range =
                    actor->current.angle.y - cM_atan2s(mae.x, mae.z);

                if (range < 0x4000 && range > -0x4000) {
                    i_this->path_dir = 1;
                } else {
                    i_this->path_dir = -1;
                }

                OS_REPORT(" PT   %d\n", i_this->path_no);
                OS_REPORT(" DIR  %d\n", i_this->path_dir);

                i_this->path_no += i_this->path_dir;
                i_this->path_no &= 7;
                regenerate_path = true;
                i_this->turn_step = 0;
            } else {
                if (i_this->mPathAdjustCounter >= 3) {
                    i_this->mPathAdjustCounter = 0;

                    if (cM_rndF(1.0f) < 0.5f) {
                        i_this->path_no += 3;
                    } else {
                        i_this->path_no -= 3;
                    }

                    i_this->path_no &= 7;
                    regenerate_path = true;
                }
            }

            mae = b_path[i_this->path_no] - actor->current.pos;
            i_this->mTargetFacingAngle = cM_atan2s(mae.x, mae.z);
            cLib_addCalcAngleS2(&actor->current.angle.y, i_this->mTargetFacingAngle, 8,
                                i_this->turn_step);
            cLib_addCalcAngleS2(&i_this->turn_step, 0x400, 1, 0x10);

            if (is_player_on_fast_horse) {
                target_speed = dComIfGp_getHorseActor()->speedF;

                if (target_speed > l_HIO.leader_cavalry_battle_max_speed) {
                    target_speed = l_HIO.leader_cavalry_battle_max_speed;
                } else {
                    if (target_speed < l_HIO.leader_max_speed) {
                        target_speed = l_HIO.leader_max_speed;
                    }
                }

                if (fopAcM_searchPlayerDistanceXZ(actor) < 2000.0f + KREG_F(0)) {
                    target_speed *= 1.2f;

                    if (actor->speedF < l_HIO.max_speed) {
                        acceleration = 1.5f;
                    } else {
                        acceleration = 0.5f;
                    }
                }

                anm_spd = actor->speedF / 40.0f;

                if (anm_spd < 1.0f)
                    anm_spd = 1.0f;

                if (anm_spd > 1.2f)
                    anm_spd = 1.2f;
            } else {
                acceleration = 3.0;
                target_speed = l_HIO.leader_max_speed;
            }

            if (dist > 6000.0f) {
                i_this->mode = 3;
                i_this->timer[0] = 13;
            }

            i_this->movement_type = 1;
            break;
        case 3:
            i_this->pursuit_flg = 1;
            target_speed = l_HIO.max_speed;
            acceleration = 3.0f;

            if (i_this->timer[0] == 10) {
                i_this->StatusFlag |= (u16)0x20;
            }

            if (i_this->timer[0] == 0) {
                i_this->mode = 4;
                anm_init(i_this, 0x25, 3.0f, 2, 1.0f);
            }

            i_this->movement_type = 1;
            break;
        case 4: // decelerating back to wait action
            if (actor->speedF > 15.0f) {
                i_this->movement_type = 2;
            }

            if (actor->speedF < 1.0f) {
                i_this->action = ACT_B_WAIT2;
                i_this->mode = 0;
            }

            break;
        case 10:  // jumping a fence / hit wall
            target_speed = l_HIO.max_speed;
            acceleration = 3.0f;

            if (i_this->anmID == 24) {
                if (actor->speed.y < 10.0f) {
                    anm_init(i_this, 0x19, 10.0f, 0, 1.0f);
                }
            } else if (i_this->anmID == 25) {
                if (actor->speed.y < (-30.0f + JREG_F(9)) || i_this->Bgc.ChkGroundHit()) {
                    anm_init(i_this, 0x1a, 2.0f, 0, 1.0f);
                    i_this->collision_flg |= (u8)0xc;
                    i_this->mLandingFlag = 1;
                    i_this->StatusFlag |= (u16)0x200;
                }
            } else if (i_this->anmID == 26) {
                i_this->movement_type = 1;

                if (i_this->anm_p->isStop()) {
                    anm_init(i_this, 0x20, 2.0f, 2, i_this->mPlaySpeed);
                    i_this->anm_spd = 30.0f;
                    i_this->mode = 2;
                }
            }
        }

        if (i_this->mode < 10) {
            cLib_addCalc2(&actor->speedF, target_speed, 1.0f, acceleration);
            s16 targetAngle = (TREG_S(7) - 4) * (actor->current.angle.y - initial_facing_angle);
            cLib_addCalcAngleS2(&i_this->mBodyTiltAngle,
                                targetAngle, 8, 0x200);
            i_this->anm_p->setPlaySpeed(i_this->mPlaySpeed);
            cLib_addCalc2(&i_this->mPlaySpeed, anm_spd, 1.0f, 0.1f);

            if (actor->speedF >= 30.0f && i_this->Bgc.ChkGroundHit()) {
                if (i_this->Bgc.ChkWallHit() || e_wb_saku_jump_check(i_this)) {
                    i_this->mode = 10;
                    actor->speed.y = 55.0f + WREG_F(1);
                    anm_init(i_this, 0x18, 2.0f, 0, 1.0f);
                    i_this->StatusFlag |= (u16)0x100;
                }
            }
        }

        if (regenerate_path) {
            mae.x = 0.0f;
            mae.y = 1000.0f;

            for (int i = 0; i < 8; i++) {
                cMtx_YrotS(*calc_mtx, i << 13);

                if (lbl_244_bss_45 == 1) {
                    mae.z = cM_rndF(3000.0f) + 12000.0f;
                    MtxPosition(&mae, &ato);
                } else if (i_this->lap_cnt >= 4) {
                    mae.z = cM_rndF(1000.0f) + 9000.0f;
                    MtxPosition(&mae, &ato);
                    ato.x += 28108.0f;
                    ato.z += 6640.0f;
                } else {
                    mae.z = cM_rndF(3000.0f) + 12000.0f;
                    MtxPosition(&mae, &ato);
                    ato.x += -2989.0f;
                    ato.z += 1364.0f;
                }

                b_path[i] = ato;
            }
        }

        if (i_this->mSpeedCapTimer > 0 && actor->speedF > 30.0f) {
            actor->speedF = 30.0f;
        }
    }
    return;
}

static void arrow_rd_set(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    static cXyz arrow_rd_pos[1] = {cXyz(36460.0f, 1040.0f, -17020.0f)};
    for (int i = 0; i < 1; i++) {
        fopAcM_create(PROC_E_RD, 0xff00a3ff, &arrow_rd_pos[i], fopAcM_GetRoomNo(actor), 0, 0, -1);
    }
}

static cXyz saku_p(34800.0f, 0.0f, -14900.0f);

static cXyz saku_p2(34800.0f, 0.0f, -37200.0f);

static void e_wb_b_ikki(e_wb_class* i_this) {
    static cXyz ikki_pos[2] = {cXyz(34789.0f, -290.0f, -36200.0f),
                               cXyz(34789.0f, -290.0f, -16600.0f)};

    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    fopAc_ac_c* pla = dComIfGp_getPlayer(0);
    cXyz mae;
    cXyz ato;
    f32 dist = fopAcM_searchPlayerDistanceXZ(actor);
    s16 target_angle = fopAcM_searchPlayerAngleY(actor);
    s16 range = target_angle - actor->current.angle.y;
    f32 speed = 0.0;
    f32 acceleration = 1.0;
    s16 angle = 0x400;
    s16 local_d8 = 0;
    int frame = i_this->anm_p->getFrame();

    switch (i_this->mode) {
    case -100:
        anm_init(i_this, 0x27, 5.0f, 2, 1.0f);
        i_this->mode = -99;
        i_this->StatusFlag |= (u16)0x400;
        break;
    case -99:
        if (i_this->anm_p->checkFrame(10.0f) || i_this->anm_p->checkFrame(31.0f)) {
            i_this->collision_flg |= (u8)1;
            i_this->movement_type = 10;
        }
        break;
    case -98:
        anm_init(i_this, 0x26, 10.0f, 0, 1.0f);
        i_this->mode = -97;
        i_this->StatusFlag |= (u16)0x800;
        break;
    case -97:
        if (i_this->anm_p->checkFrame(38.0f) || i_this->anm_p->checkFrame(50.0f) ||
            i_this->anm_p->checkFrame(65.0f) || i_this->anm_p->checkFrame(108.0f))
        {
            i_this->collision_flg |= (u8)1;
            i_this->movement_type = 10;
        } else if (i_this->anm_p->checkFrame(82.0f)) {
            i_this->collision_flg |= (u8)3;
        } else if (i_this->anm_p->checkFrame(106.0f)) {
            i_this->collision_flg |= (u8)2;
            i_this->movement_type = 10;
        }

        if (frame >= 112) {
            if (frame == 112) {
                i_this->StatusFlag |= (u16)0x10;
                i_this->creature.startCreatureSound(Z2SE_EN_WB_KICK_GROUND, 0, -1);
                i_this->creature.startCreatureVoice(Z2SE_EN_RDB_V_HOICK, -1);
                i_this->anm_spd = 40.0f;
            }
            speed = l_HIO.mSingleRiderSpeed;
            acceleration = l_HIO.mSingleRiderSpeed * 0.2f;
            i_this->movement_type = 1;
        }

        if (i_this->anm_p->isStop()) {
            anm_init(i_this, 0x20, 1.0f, 2, 1.0f);
            i_this->mode = 4;
            i_this->acceleration = 0;
            i_this->path_no = 1;
            i_this->eye = ikki_pos[i_this->path_no];
        }
        break;
    case 0:
        anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
        i_this->mode = 1;
        i_this->timer[3] = 10;
        break;
    case 1:
        if (i_this->timer[3] == 0 && !dComIfGp_event_runCheck()) {
            i_this->mode = 2;
            i_this->path_no = 1;
        }
        break;
    case 2:
        if (!i_this->field_0x5bf) {
            anm_init(i_this, 0x1b, 3.0f, 0, 1.0f);
            i_this->StatusFlag |= (u16)8;
            i_this->anm_spd = 40.0f;
            i_this->eye = ikki_pos[i_this->path_no];
            i_this->mode = 3;
        }
        break;
    case 3:
        if (i_this->anm_p->checkFrame(3.0f)) {
            i_this->collision_flg |= (u8)2;
            i_this->movement_type = 10;
        } else if (i_this->anm_p->checkFrame(15.0)) {
            i_this->collision_flg |= (u8)3;
        }

        if (i_this->anm_p->isStop()) {
            anm_init(i_this, 0x20, 5.0f, 2, 1.0f);
            i_this->mode = 4;
            i_this->StatusFlag |= (u8)0x10;
            i_this->creature.startCreatureSound(Z2SE_EN_WB_KICK_GROUND, 0, -1);
            i_this->acceleration = 0;
        }
        break;
    case 4: {
        speed = l_HIO.mSingleRiderSpeed;
        acceleration = 5.0f;
        i_this->movement_type = 1;
        if (range < 0x3000 && range > -0x3000 && dist < 4000.0f + VREG_F(16) &&
            dist > 600.0f + VREG_F(17))
        {
            i_this->field_0x6dc = 13 + VREG_S(5);
        } else if (range < 0x800 && range > -0x800) {
            i_this->field_0x6da = 1;
        } else if (range > 0) {
            i_this->field_0x6da = 3;
        } else {
            i_this->field_0x6da = 2;
        }
        f32 fVar2;
        f32 fVar1;
        if (i_this->lap_cnt == 0) {
            fVar2 = l_HIO.mSearchIgnoreDistance2;
            fVar1 = l_HIO.mGuidanceDisplayDistance2;
        } else {
            fVar2 = l_HIO.mSearchIgnoreDistance1;
            fVar1 = l_HIO.mGuidanceDisplayDistance1;
        }

        if (range < 0x3000 && range > -0x3000) {
            if (dist > fVar2) {
                cLib_addCalc2(&actor->current.pos.x, pla->current.pos.x, 0.05f,
                              actor->speedF * i_this->acceleration);
                cLib_addCalc2(&i_this->acceleration, 0.6f, 1.0f, 0.06f);
                cMtx_YrotS(*calc_mtx, actor->current.angle.y);
                mae.x = actor->current.pos.x - pla->current.pos.x;
                mae.y = mae.z = 0.0f;
                MtxPosition(&mae, &ato);
                local_d8 = ato.x * (-20.0f + XREG_F(12));
                if (local_d8 > 0x1000) {
                    local_d8 = 0x1000;
                } else if (local_d8 < -0x1000) {
                    local_d8 = -0x1000;
                }
            }
            if (dist < fVar1) {
                daPy_getPlayerActorClass()->onSingleBoarAvoid();
            }
        }

        mae = i_this->eye - actor->current.pos;
        i_this->mTargetFacingAngle = (s16)cM_atan2s(mae.x, mae.z);
        if (mae.abs() < 600.0f + AREG_F(8)) {
            anm_init(i_this, 0x25, 3.0f, 2, 1.0f);
            i_this->mode = 5;
            i_this->StatusFlag |= (u16)0x20;
        }
        angle = 2048 + XREG_S(1);
        break;
    }
    case 5:
        if (actor->speedF > 15.0f) {
            i_this->movement_type = 2;
            i_this->creature.startCreatureSoundLevel(Z2SE_EN_WB_L_SLIP, 0, -1);
        } else if (actor->speedF < 1.0f) {
            anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
            i_this->mode = 6;
            ANGLE_ADD(i_this->mTargetFacingAngle, 0x8000);
        }
        break;
    case 6:
        angle = 0x200;
        i_this->range = i_this->mTargetFacingAngle - actor->current.angle.y;
        if (i_this->range < 2048 && i_this->range > -0x800) {
            i_this->mode = 2;
            i_this->path_no = 1 - i_this->path_no;
        } else if (i_this->anmID != 40) {
            anm_init(i_this, 0x28, 5.0f, 2, 1.5f);
        }
        break;
    }

    cLib_addCalcAngleS2(&actor->current.angle.y, i_this->mTargetFacingAngle, 2, angle);
    cLib_addCalcAngleS2(&i_this->field_0x7a4, local_d8, 8, i_this->acceleration + 10000.0f);
    cLib_addCalc2(&actor->speedF, speed, 1.0f, acceleration);
    if (actor->current.pos.x > 35350.0f) {
        actor->current.pos.x = 35350.0f;
    } else if (actor->current.pos.x < 34243.0f) {
        actor->current.pos.x = 34243.0f;
    }

    if (i_this->mode == 4 && (range > 16384 || range < -0x4000) && i_this->field_0x5bf) {
        if (i_this->path_no == 1 && pla->current.pos.z < ikki_pos[0].z + 12000.0f &&
            actor->current.pos.z > ikki_pos[1].z - 12000.0f)
        {
            actor->current.pos.z = ikki_pos[1].z;
            i_this->mode = 5;
            actor->speedF = 0.0f;
            OS_REPORT("   WB CULL !!\n");
        } else {
            if (i_this->path_no == 0 &&
                pla->current.pos.z > ikki_pos[1].z - 12000.0f &&
                actor->current.pos.z < ikki_pos[0].z + 12000.0f)
            {
                actor->current.pos.z = ikki_pos[0].z;
                i_this->mode = 5;
                actor->speedF = 0.0f;
                OS_REPORT("   WB CULL !!\n");
            }
        }
    }

    if (i_this->field_0x1722 != 0) {
        if (i_this->field_0x1722 == 1) {
            static cXyz f_pos[2] = {cXyz(34800.0f, -300.0f, -15150.0f),
                                    cXyz(34800.0f, -300.0f, -37200.0f)};
            csXyz angl;
            for (int i = 0; i < 2; i++) {
                static s16 f_ya[2] = {
                    -0x8000,
                    0x0000,
                };

                angl.set(0, f_ya[i], 0);
                for (int j = 0; j < 2; j++) {
                    static u16 f_id[2] = {
                        dPa_RM(ID_ZI_S_UMASAKU_BURN_A),
                        dPa_RM(ID_ZI_S_UMASAKU_BURN_B),
                    };
                    dComIfGp_particle_set(f_id[j], &f_pos[i], 0, &angl, NULL);
                }
            }
            i_this->field_0x1722++;
        }
        Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_STRAWFENCE_BURNING, &saku_p, 0, 0, 1.0f, 1.0f, -1.0f,
                                      -1.0f, 0);
        Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_STRAWFENCE_BURNING, &saku_p2, 0, 0, 1.0f, 1.0f,
                                      -1.0f, -1.0f, 0);
    }
}

static void e_wb_b_ikki_end(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;

    f32 speed = 0.0;
    f32 acceleration = 1.0f;

    switch (i_this->mode) {
    case 0:
        anm_init(i_this, 0x20, 1.0f, 2, 1.0f);
        i_this->mode = 1;
        break;
    case 1:
        speed = l_HIO.mSingleRiderSpeed;
        acceleration = 5.0f;
        break;
    }

    cLib_addCalc2(&actor->speedF, speed, 1.0f, acceleration);
    if (actor->current.pos.x > 35350.0f) {
        actor->current.pos.x = 35350.0f;
    } else if (actor->current.pos.x < 34243.0f) {
        actor->current.pos.x = 34243.0f;
    }
}

static void e_wb_b_ikki2(e_wb_class* i_this) {
    static cXyz ikki2_pos[2] = {cXyz(-93620.0f, -5750.0f, 48944.0f),
                                cXyz(-93620.0f, -5750.0f, 28423.0f)};

    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    fopAc_ac_c* pla = dComIfGp_getPlayer(0);
    cXyz mae;
    cXyz ato;
    f32 dist = fopAcM_searchPlayerDistanceXZ(actor);
    s16 target_angle = fopAcM_searchPlayerAngleY(actor);
    s16 range = target_angle - actor->current.angle.y;
    f32 target_speed = 0.0f;
    f32 acceleration = 1.0f;
    s16 angle = 0x400;
    s16 local_b8 = 0;
    int local_b6;

    int frame = i_this->anm_p->getFrame();
    e_rd_class* rider = (e_rd_class*)fopAcM_SearchByID(i_this->rd_id);

    switch (i_this->mode) {
    case -100: {
        int local_a0 = dComIfGp_getEventManager().getMyStaffId("RiderBoss", NULL, 0);
        if (local_a0 != -1) {
            dComIfGp_getEventManager().cutEnd(local_a0);
            i_this->mode = -99;
            anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
        }
    } break;
    case -99: {
        actor->current.angle.y = 0x58F0 + JREG_S(7);
        angle = 0;
        int staffId = dComIfGp_getEventManager().getMyStaffId("RiderBoss", NULL, 0);
        if (staffId != -1 ) {
            int* p = dComIfGp_evmng_getMyIntegerP(staffId, "action");
            if (p) {
                rider->mode = 2;
                i_this->mode = -98;
            }
        }
    } break;
    case -98:
        angle = 0;
        break;
    case 0:
        anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
        i_this->mode = 1;
        i_this->timer[3] = 10;
        break;

    case 1:
        if (i_this->timer[3] == 0 && !dComIfGp_event_runCheck()) {
            i_this->mode = 2;
            i_this->path_no = 1;
            Z2GetAudioMgr()->subBgmStart(Z2BGM_FACE_OFF_BATTLE);
        }
        break;

    case 2:
        if (!i_this->field_0x5bf) {
            anm_init(i_this, 0x1b, 3.0f, 0, 1.0f);
            i_this->StatusFlag |= (u16)8;
            i_this->anm_spd = 40.0f;
            i_this->eye = ikki2_pos[i_this->path_no];
            i_this->mode = 3;
        }
        break;

    case 3: {
        if (frame < 15 + JREG_S(4)) {
            angle = 0;
        }
        if (i_this->anm_p->checkFrame(3.0f)) {
            i_this->collision_flg |= (u8)2;
            i_this->movement_type = 10;
        } else if (i_this->anm_p->checkFrame(15.0f)) {
            i_this->collision_flg |= (u8)3;
        }

        if (i_this->anm_p->isStop()) {
            anm_init(i_this, 0x20, 5.0f, 2, 1.0f);
            i_this->mode = 4;
            i_this->StatusFlag |= (u8)0x10;
            i_this->creature.startCreatureSound(Z2SE_EN_WB_KICK_GROUND, 0, -1);
            i_this->acceleration = 0.0f;
        }
    } break;

    case 4: {
        target_speed = l_HIO.mSingleRiderSpeed;
        acceleration = 5.0f;
        i_this->movement_type = 1;

        if (range < 0x3000 && range > -0x3000 && dist < 4000.0f + VREG_F(16) &&
            dist > 600.0f + VREG_F(17))
        {
            i_this->field_0x6dc = 13 + VREG_S(5);
        } else if (range < 0x800 && range > -0x800) {
            i_this->field_0x6da = 1;
        } else if (range > 0) {
            i_this->field_0x6da = 3;
        } else {
            i_this->field_0x6da = 2;
        }

        f32 ignore_dist;
        f32 guidance_dist;
        if (i_this->lap_cnt == 0) {
            ignore_dist = l_HIO.mSearchIgnoreDistance2;
            guidance_dist = l_HIO.mGuidanceDisplayDistance2;
        } else {
            ignore_dist = l_HIO.mSearchIgnoreDistance1;
            guidance_dist = l_HIO.mGuidanceDisplayDistance1;
        }

        if (i_this->timer[3] == 0 && range < 0x3000 && range > -0x3000) {
            if (dist > ignore_dist) {
                cLib_addCalc2(&actor->current.pos.x, pla->current.pos.x, 0.05f,
                              actor->speedF * i_this->acceleration);
                cLib_addCalc2(&i_this->acceleration, 0.6f, 1.0f, 0.06f);

                cMtx_YrotS(*calc_mtx, actor->current.angle.y);
                mae.x = actor->current.pos.x - pla->current.pos.x;
                mae.y = mae.z = 0.0f;
                MtxPosition(&mae, &ato);

                local_b8 = (s16)(ato.x * (-20.0f + XREG_F(12)));
                if (local_b8 > 4096) {
                    local_b8 = 4096;
                } else if (local_b8 < -0x1000) {
                    local_b8 = -0x1000;
                }
            }
        }

        if (dist < guidance_dist) {
            daPy_getPlayerActorClass()->onSingleBoarAvoid();
        }

        mae = i_this->eye - actor->current.pos;
        i_this->mTargetFacingAngle = (s16)cM_atan2s(mae.x, mae.z);

        if (i_this->lap_cnt >= 2) {
            i_this->mTargetFacingAngle +=
                (s16)(cM_ssin(i_this->field_0x68e * (0x320 + KREG_S(4))) * (2500.0f + BREG_F(16)));
        }

        if (mae.abs() < 700.0f + AREG_F(8)) {
            anm_init(i_this, 0x25, 3.0f, 2, 1.0f);
            i_this->mode = 5;
            i_this->StatusFlag |= (u16)0x20;
        }

        angle = 2048 + XREG_S(1);
    } break;

    case 5: {
        if (actor->speedF > 15.0f) {
            i_this->movement_type = 2;
            i_this->creature.startCreatureSoundLevel(Z2SE_EN_WB_L_SLIP, 0, -1);
        } else if (actor->speedF < 1.0f) {
            anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
            i_this->mode = 6;
            ANGLE_ADD(i_this->mTargetFacingAngle, 0x8000);
        }
    } break;

    case 6: {
        angle = 0x200;
        i_this->range = i_this->mTargetFacingAngle - actor->current.angle.y;

        if (i_this->range < 0x800 && i_this->range > -0x800) {
            i_this->mode = 2;
            i_this->path_no = 1 - i_this->path_no;
        } else if (i_this->anmID != 40) {
            anm_init(i_this, 0x28, 5.0f, 2, 1.5f);
        }
    } break;
    }

    cLib_addCalcAngleS2(&actor->current.angle.y, i_this->mTargetFacingAngle, 2, angle);
    cLib_addCalcAngleS2(&i_this->field_0x7a4, local_b8, 8, i_this->acceleration + 10000.0f);
    cLib_addCalc2(&actor->speedF, target_speed, 1.0f, acceleration);

    // Handle position culling logic
    if (i_this->mode == 4 && (range > 0x4000 || range < -0x4000) &&
        i_this->field_0x5bf)
    {
        if (i_this->path_no == 1 && pla->current.pos.z < ikki2_pos[0].z + 12000.0f &&
            actor->current.pos.z > ikki2_pos[1].z - 12000.0f)
        {
            actor->current.pos.z = ikki2_pos[1].z;
            i_this->mode = 5;
            actor->speedF = 0.0f;
            OS_REPORT("   WB CULL !!\n");
        } else if (i_this->path_no == 0 &&
                   pla->current.pos.z > ikki2_pos[1].z - 12000.0f &&
                   actor->current.pos.z < ikki2_pos[0].z + 12000.0f)
        {
            actor->current.pos.z = ikki2_pos[0].z;
            i_this->mode = 5;
            actor->speedF = 0.0f;
            OS_REPORT("   WB CULL !!\n");
        }
    }
}

static void e_wb_b_ikki2_end(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;

    switch (i_this->mode) {
    case 0:
        actor->current.pos.x = -93620.0f;
        anm_init(i_this, 0x20, 1.0f, 2, 1.0f);
        i_this->mode = 1;
        i_this->field_0x68e = 0;
        // fallthrough
    case 1:
        if (i_this->field_0x68e > (s16)(170 + KREG_S(6)) && i_this->Bgc.ChkWallHit()) {
            i_this->action = ACT_BG_DAMAGE;
            i_this->mode = 0;
            i_this->anm_spd = 50.0f;
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_DAMAGE, -1);
            dComIfGp_getVibration().StartShock(8, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
            i_this->mLandingFlag = 1;
        }
        break;
    }

    actor->speedF = l_HIO.mSingleRiderSpeed;

    if (i_this->field_0x68e == (s16)(180 + KREG_S(7))) {
        i_this->field_0x7ac.SetWall(100.0f, 300.0f + BREG_F(8));
    }

    s16 yaa;
    if (i_this->field_0x68e > (s16)(170 + KREG_S(6))) {
        yaa = -0x3A98;
    } else {
        yaa = (s16)(3000.0f * cM_ssin(i_this->field_0x68e * (0x3E8 + KREG_S(4))));
    }

    s16 angle = actor->current.angle.y;
    cLib_addCalcAngleS2(&actor->current.angle.y, yaa + 0x8000, 2, 0x800);
    s16 target_yaa = (TREG_S(7) - 13) * (actor->current.angle.y - angle);
    cLib_addCalcAngleS2(&i_this->mBodyTiltAngle, target_yaa, 8, 0x800);
}

static void e_wb_b_lv9_end(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    cXyz local_44;
    f32 target_speed = 0.0f;
    f32 speed_step = 0.5f;
    s16 angle = actor->current.angle.y;

    switch (i_this->mode) {
    case 0:
        i_this->timer[0] = 30;
        i_this->mode = 1;
        anm_init(i_this, 0x2b, 0.0f, 2, 1.0f);
        actor->current.pos.set(-7080.0f, 50.0f, -6634.0f);
        local_44.x = -10008.0f - actor->current.pos.x;
        local_44.z = -2729.0f - actor->current.pos.z;
        actor->current.angle.y = cM_atan2s(local_44.x, local_44.z);
        actor->shape_angle.y = actor->current.angle.y;
        i_this->mTargetFacingAngle = actor->current.angle.y;
        // fallthrough
    case 1:
        if (i_this->timer[0] == 0) {
            i_this->mode = 2;
            i_this->timer[0] = KREG_S(6) + 65;
        }
        break;
    case 2:
        target_speed = KREG_F(6) + 15.0f;
        if (i_this->timer[0] == 0) {
            anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
            i_this->mode = 3;
            i_this->StatusFlag |= (u16)8;
            i_this->timer[0] = 40;
        }
        break;
    case 3:
        if (i_this->timer[0] == 1) {
            i_this->StatusFlag |= (u16)8;
        }
        break;
    case 4:
        anm_init(i_this, 0x1b, 3.0f, 0, 1.0f);
        i_this->mode = 5;
        break;
    case 5:
        if (i_this->anm_p->isStop()) {
            anm_init(i_this, 0x20, 2.0f, 2, 1.0f);
            i_this->mode = 6;
            i_this->timer[0] = 80;
        }
        break;
    case 6:
        target_speed = KREG_F(7) + 40.0f;
        speed_step = 5.0f;
        if (i_this->timer[0] < 30) {
            i_this->movement_type = 1;
        }
        if (i_this->timer[0] == 0) {
            local_44.x = -12682.0f - actor->current.pos.x;
            local_44.z = -2701.0f - actor->current.pos.z;
            i_this->mTargetFacingAngle = cM_atan2s(local_44.x, local_44.z);
        }
        break;
    }

    cLib_addCalc2(&actor->speedF, target_speed, 1.0f, speed_step);
    cLib_addCalcAngleS2(&actor->current.angle.y, i_this->mTargetFacingAngle, 4, 0x100);
    s16 ya = (TREG_S(7) + -8) * (actor->current.angle.y - angle);
    cLib_addCalcAngleS2(&i_this->mBodyTiltAngle, ya, 8, 0x200);
}

static void e_wb_a_run(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    cXyz sp18, spC;
    s16 curr_angle_y = actor->current.angle.y;
    s16 ya;

    switch (i_this->mode) {
    case 0:
        anm_init(i_this, 0x20, 5.0f, 2, 1.399999976158142f);
        i_this->mode = 1;
        i_this->mTargetFacingAngle = actor->current.angle.y;
        i_this->timer[1] = cM_rndF(30.0f) + 80.0f;
    case 1:
        i_this->pursuit_flg = 1;
        i_this->movement_type = 1;

        if (i_this->timer[0] == 0) {
            i_this->timer[0] = cM_rndF(30.0f) + 10.0f;
            ANGLE_ADD(i_this->mTargetFacingAngle, cM_rndFX(10000.0f));
        }

        if (i_this->timer[1] == 1 || i_this->mSpeedCapTimer == 2) {
            i_this->action = ACT_LR_DAMAGE;
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_DAMAGE, -1);
            i_this->mode = 0;
        }
    default:
        cLib_addCalcAngleS2(&actor->current.angle.y, i_this->mTargetFacingAngle, 8, 0x800);
        cLib_addCalc2(&actor->speedF, l_HIO.max_speed * 1.2f, 1.0f, 2.0f);
        ya = (TREG_S(7) - 8) * (actor->current.angle.y - curr_angle_y);
        cLib_addCalcAngleS2(&i_this->mBodyTiltAngle, ya, 8, 0x200);
    }
}

static void e_wb_s_damage(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    cXyz cStack_1c;
    cXyz cStack_28;

    i_this->field_0x6a0 = 10;
    switch (i_this->mode) {
    case 0:
        if (actor->speedF <= 5.0f) {
            if ((i_this->StatusFlag & 3) != 0) {
                anm_init(i_this, 9, 2.0f, 0, 1.0f);
            } else {
                anm_init(i_this, 8, 2.0f, 0, 1.0f);
                i_this->anm_spd = 50.0f;
                i_this->field_0x168a = 0x1388;
            }
        } else {
            anm_init(i_this, 0x22, 2.0f, 0, 1.0f);
        }
        i_this->mode = 1;
        break;
    case 1:
        if (i_this->anm_p->isStop()) {
            if ((i_this->StatusFlag & 3) != 0) {
                i_this->action = i_this->old_action;
                if (i_this->action == ACT_WAIT2) {
                    i_this->action = ACT_C_F_RUN;
                } else if (i_this->action == ACT_C_F_RUN) {
                    i_this->mode = 1;
                } else {
                    if (i_this->action == ACT_PL_RIDE) {
                        i_this->action = ACT_PL_RIDE2;
                        i_this->dash_timer = l_HIO.mPlayerMountedDashTime;
                        actor->speedF = 0.0f;
                        anm_init(i_this, 0x1b, 3.0f, 0, 1.0f);
                        i_this->anm_spd = 40.0f;
                        OS_REPORT(" RIDE RUN START \n");
                        return;
                    }
                    i_this->mode = 0;
                }
            } else {
                i_this->action = ACT_A_RUN;
                i_this->mode = 0;
            }
        }
        break;
    }

    cLib_addCalc0(&actor->speedF, 1.0f, 1.0f);
}

static int e_wb_damage(e_wb_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->enemy;
    cXyz local_2c;
    cXyz local_38;

    i_this->field_0x6a0 = 10;
    BOOL local_48 = FALSE;

    switch (i_this->mode) {
    case 0:
        dKy_Sound_set(a_this->current.pos, 100, fopAcM_GetID(&i_this->enemy), 5);
        anm_init(i_this, 8, 1.0f, 0, 1.0f);
        i_this->mode = 1;
        a_this->speedF = -15.0f + YREG_F(0);
        a_this->speed.y = 50.0f + YREG_F(1) + cM_rndF(20.0f);
        ANGLE_ADD(a_this->current.angle.y, cM_rndFX(3000.0f));
        i_this->StatusFlag |= (u16)0x40;
        break;

    case 1:
        if (i_this->Bgc.ChkGroundHit()) {
            i_this->mode = 2;
            a_this->speedF *= 0.5f;
            a_this->speed.y = 40.0f + YREG_F(2);
            anm_init(i_this, 0x22, 2.0f, 0, 1.0f);
            i_this->field_0x6b4.y = (s16)cM_rndFX(2000.0f + YREG_F(4));
        }
        break;

    case 2:
        if (i_this->anm_p->isStop()) {
            i_this->mode = 3;
            if (cM_rndF(1.0f) < 0.5f) {
                anm_init(i_this, 0xc, 2.0f, 0, 1.0f);
                i_this->field_0x6e4 = 0;
            } else {
                anm_init(i_this, 0xd, 2.0f, 0, 1.0f);
                i_this->field_0x6e4 = 1;
            }
            i_this->timer[0] = (s16)(cM_rndF(40.0f) + 70.0f);
        }
        break;

    case 3:
        local_48 = TRUE;
        if (i_this->anm_p->isStop()) {
            if (i_this->anmID == 12) {
                anm_init(i_this, 0x12, 3.0f, 2, 1.0f);
            } else if (i_this->anmID == 13) {
                anm_init(i_this, 0x13, 3.0f, 2, 1.0f);
            }
        }

        if (i_this->Bgc.ChkGroundHit()) {
            a_this->speedF = 0.0f;
            cLib_addCalcAngleS2(&i_this->field_0x6b4.y, 0, 1, 0x96 + YREG_S(3));
        }

        if (i_this->timer[0] == 0 && i_this->field_0x6ae.x > -0x200) {
            if (i_this->field_0x6e4 == 0) {
                anm_init(i_this, 0x10, 2.0f, 0, 1.0f);
            } else {
                anm_init(i_this, 0x11, 2.0f, 0, 1.0f);
            }
            i_this->mode = 4;
        }
        break;

    case 4:
        if (i_this->anm_p->isStop()) {
            i_this->action = ACT_WAIT;
            i_this->mode = 0;
            i_this->field_0x6ae.x = 0;
            a_this->current.angle.y += i_this->field_0x6ae.y;
            a_this->shape_angle.y = a_this->current.angle.y;
            i_this->field_0x6ae.y = i_this->field_0x6b4.y = 0;
        }
        break;
    }

    i_this->field_0x6ae.y += i_this->field_0x6b4.y;

    if (i_this->mode >= 3) {
        cLib_addCalcAngleS2(&i_this->field_0x6ae.x, 0, 1, 0x600);
    } else {
        cLib_addCalcAngleS2(&i_this->field_0x6ae.x, -(YREG_S(6) + 0x4000), 1, YREG_S(1) + 0x200);
    }

    return local_48;
}

static int e_wb_bg_damage(e_wb_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    cXyz local_30, unused;
    BOOL return_value = FALSE;

    i_this->field_0x6a0 = 10;

    switch (i_this->mode) {
    case 0:
        dKy_Sound_set(a_this->current.pos, 100, fopAcM_GetID(&i_this->enemy), 5);
        anm_init(i_this, 5, 2.0f, 0, 1.0f);
        i_this->mode = 1;
        a_this->speedF = 0.0f;
        i_this->StatusFlag |= (u16)0x80;
        i_this->dash_timer = 0;
        break;

    case 1:
        if (i_this->anm_p->isStop()) {
            i_this->mode = 2;
            anm_init(i_this, 7, 2.0f, 2, 1.0f);
            i_this->timer[0] = (s16)(cM_rndF(60.0f) + 150.0f);
        }
        break;

    case 2:
        return_value = TRUE;
        if (i_this->timer[0] == 0) {
            anm_init(i_this, 6, 3.0f, 0, 1.0f);
            i_this->mode = 3;
        }
        break;

    case 3:
        if (i_this->anm_p->isStop()) {
            i_this->action = ACT_WAIT;
            i_this->mode = 0;
        }
        break;
    }

    return return_value;
}

static int e_wb_lr_damage(e_wb_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    cXyz local_2c;
    cXyz local_38;
    BOOL return_value = FALSE;

    i_this->field_0x6a0 = 10;

    switch (i_this->mode) {
    case 0: {
        if (cM_rndF(1.0f) < 0.5f || i_this->field_0x1720 != 0) {
            anm_init(i_this, 0xc, 2.0f, 0, 1.0f);
            i_this->field_0x6e4 = 0;
        } else {
            anm_init(i_this, 0xd, 2.0f, 0, 1.0f);
            i_this->field_0x6e4 = 1;
        }
        i_this->mode = 1;
        i_this->StatusFlag |= (u16)0x40;
        i_this->timer[0] = (s16)(cM_rndF(60.0f) + 150.0f);
        i_this->timer[1] = 15 + TREG_S(5);

        if (i_this->field_0x1720 != 0) {
            a_this->speedF = -50.0f + JREG_F(16);
            i_this->field_0x6b4.y = JREG_S(7) - 0x640;
        } else {
            i_this->field_0x6b4.y = (s16)cM_rndFX(a_this->speedF * (50.0f + YREG_F(4)));
        }
    } break;

    case 1: {
        if ((int)i_this->anm_p->getFrame() == 10) {
            i_this->anm_spd = 40.0f;
            i_this->field_0x168a = 4000;

            if (a_this->speedF > 30.0f) {
                if (i_this->field_0x6e4 == 0) {
                    anm_init(i_this, 0xe, 2.0f, 2, 1.0f);
                } else {
                    anm_init(i_this, 0xf, 2.0f, 2, 1.0f);
                }
                i_this->mode = 2;
                a_this->speedF = 30.0f;
            }
            i_this->mLandingFlag = 1;
            dKy_Sound_set(a_this->current.pos, 100, fopAcM_GetID(&i_this->enemy), 5);
        }

        if (i_this->anm_p->isStop()) {
            i_this->mode = 3;
            if (i_this->anmID == 12) {
                anm_init(i_this, 0x12, 3.0f, 2, 1.0f);
            } else if (i_this->anmID == 13) {
                anm_init(i_this, 0x13, 3.0f, 2, 1.0f);
            }
        }
    }
        goto case3;

    case 2:
        if (a_this->speedF < 5.0f) {
            if (i_this->anmID == 14) {
                anm_init(i_this, 0x12, 3.0f, 2, 1.0f);
            } else if (i_this->anmID == 15) {
                anm_init(i_this, 0x13, 3.0f, 2, 1.0f);
            }
            i_this->mode = 3;
        }
        // fallthrough

    case 3: {
    case3:
        if (i_this->timer[1] == 0) {
            return_value = TRUE;
        }

        if (a_this->speedF > 15.0f) {
            i_this->movement_type = 2;
        }

        if (i_this->timer[0] == 0 && i_this->field_0x1720 == 0) {
            if (i_this->field_0x6e4 == 0) {
                anm_init(i_this, 0x10, 3.0f, 0, 1.0f);
            } else {
                anm_init(i_this, 0x11, 3.0f, 0, 1.0f);
            }
            i_this->mode = 4;
        }

        cLib_addCalcAngleS2(&i_this->field_0x6b4.y, 0, 1, 0x64 + YREG_S(3));
    } break;

    case 4: {
        if (i_this->anm_p->isStop()) {
            i_this->action = ACT_WAIT;
            i_this->mode = 0;
            a_this->current.angle.y += i_this->field_0x6ae.y;
            a_this->shape_angle.y = a_this->current.angle.y;
            i_this->field_0x6ae.y = i_this->field_0x6b4.y = 0;
        }
    } break;
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 1.5f + YREG_F(11));
    i_this->field_0x6ae.y += i_this->field_0x6b4.y;

    return return_value;
}

static void e_wb_kiba_start(e_wb_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    f32 target = 0.0f;
    switch (i_this->mode) {
    case 0:
        anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
        i_this->demo_mode = 30;
        i_this->mode = 1;
        i_this->kiba = 1;
        break;
    case 1:
    default:
        break;
    }

    cLib_addCalc2(&a_this->speedF, target, 1.0f, 5.0f);
}

static void e_wb_kiba_end(e_wb_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;

    i_this->field_0x6a0 = 10;

    switch (i_this->mode) {
    case 0:
        if (i_this->anmID != 32) {
            anm_init(i_this, 0x20, 1.0f, 2, 1.0f);
        }
        i_this->mode = 1;
        i_this->demo_mode = 1;
        break;

    case 1:
        i_this->movement_type = 1;
        i_this->anm_spd = 60.0f + YREG_F(10);
        i_this->field_0x168a = 0x1388 + YREG_S(7);

        if (a_this->current.pos.x > 34000.0f && a_this->current.pos.x < 35500.0f &&
            a_this->current.pos.z < -14500.0f + KREG_F(13))
        {
            a_this->speed.y = 55.0f + WREG_F(1);
            anm_init(i_this, 0x18, 2.0f, 0, 1.0f);
            i_this->mode = 2;
            i_this->creature.startCreatureVoice(Z2SE_EN_RDB_V_HOICK, -1);
            i_this->StatusFlag |= (u16)0x100;
        }
        break;

    case 2:
        if (a_this->speed.y < 10.0f) {
            anm_init(i_this, 0x19, 10.0f, 0, 1.0f);
            i_this->mode = 3;
        }
        break;

    case 3:
        if (i_this->anmID == 25) {
            if (a_this->speed.y < -30.0f + JREG_F(9) || i_this->Bgc.ChkGroundHit()) {
                anm_init(i_this, 0x1a, 2.0f, 0, 1.0f);
                i_this->collision_flg |= (u8)0xc;
                i_this->mLandingFlag = 1;
                i_this->StatusFlag |= (u16)0x200;
            }
        } else if (i_this->anmID == 26 && i_this->anm_p->isStop()) {
            anm_init(i_this, 0x20, 2.0f, 2, 1.0f);
            i_this->mode = 4;
        }
        break;
    case 4:
        break;
    }

    cLib_addCalc2(&a_this->speedF, 40.0f, 1.0f, 5.0f);
}

static void damage_check(e_wb_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    a_this->health = 100;

    if (i_this->field_0x6ba != 0) {
        i_this->field_0x6ba--;
    }

    for (int i = 0; i <= 2; i++) {
        if (i_this->cc_sph[i].ChkCoHit()) {
            fopAc_ac_c* hit_actor = dCc_GetAc(i_this->cc_sph[i].GetCoHitObj()->GetAc());

            if (!daAlink_getAlinkActorClass()->checkBoarRideOwn(a_this) &&
                i_this->field_0x6a0 == 0 && a_this->speedF < 1.0f &&
                fopAcM_GetName(hit_actor) == PROC_ALINK) {
                ANGLE_ADD(i_this->field_0x6ba, 2);
                if (i_this->field_0x6ba >= 150) {
                    i_this->old_action = i_this->action;
                    i_this->action = ACT_S_DAMAGE;
                    i_this->mode = 0;
                    i_this->field_0x6a0 = 20;
                    return;
                }
            }

            if ((lbl_244_bss_47 != 0 || lbl_244_bss_45 != 0) &&
                fopAcM_GetName(hit_actor) == PROC_E_WB)
            {
                e_wb_class* wb = (e_wb_class*)hit_actor;
                if (i_this->field_0x6a0 == 0) {
                    if (wb->field_0x6a0 == 0 && i_this->field_0x79d == 0 && wb->field_0x79d == 0) {
                        u8 temp = wb->arg1;
                        wb->arg1 = i_this->arg1;
                        i_this->arg1 = temp;
                        i_this->field_0x6a0 = 10;
                    }
                }
            }

            if (i_this->field_0x79d >= 2 && a_this->speedF >= 30.0f) {
                i_this->creature.startCreatureVoice(Z2SE_EN_RDB_V_RUNDOWN, -1);
                i_this->creature.startCreatureSound(Z2SE_EN_BB_RUNDOWN, 0, -1);

                e_rd_class* rider = (e_rd_class*)fopAcM_SearchByID(i_this->rd_id);
                rider->damage_timer = 20;
            } else {
                if (i_this->field_0x79d == 0 || i_this->mSpeedCapTimer == 0) {
                    fopAc_ac_c* hit_actor =
                        dCc_GetAc(i_this->cc_sph[i].GetCoHitObj()->GetAc());

                    if (a_this->speedF >= 20.0f) {
                        if (i_this->cc_sph[i].GetCoHitObj()->GetStts()->GetWeightUc() > 100 &&
                            (i_this->action == ACT_C_F_RUN || i_this->action == ACT_B_RUN) &&
                            hit_actor->speedF >= 20.0f)
                        {
                            cXyz pos_diff = hit_actor->current.pos - a_this->current.pos;
                            s16 angle = cM_atan2s(pos_diff.x, pos_diff.z) - a_this->shape_angle.y;

                            if (angle < 0) {
                                i_this->field_0x5de = 0x1000;
                                ANGLE_ADD(a_this->current.angle.y, 0x800);
                            } else {
                                i_this->field_0x5de = -0x1000;
                                ANGLE_SUB(a_this->current.angle.y, 0x800);
                            }
                        }
                    }
                }
            }
        }
    }

    i_this->mStts.Move();

    if (i_this->field_0x6a0 == 0) {
        dCcU_AtInfo at_info;

        for (int i = 0; i <= 6; i++) {
            if (i_this->cc_sph[i].ChkTgHit()) {
                i_this->field_0x13c0.mpCollider = i_this->cc_sph[i].GetTgHitObj();

                if (i_this->field_0x79d != 0 || (daPy_getPlayerActorClass()->checkHorseRide() &&
                        (i_this->StatusFlag & 3) != 0)) {
                    if (i_this->field_0x79d != 0) {
                        def_se_set(&i_this->creature, i_this->field_0x13c0.mpCollider, 0x28, NULL);
                    }
                } else {
                    at_power_check(&i_this->field_0x13c0);
                    cc_at_check(a_this, &i_this->field_0x13c0);

                    if ((i_this->StatusFlag & 3) != 0) {
                        if (i_this->field_0x13c0.mAttackPower < 30) {
                            i_this->old_action = i_this->action;
                            i_this->action = ACT_S_DAMAGE;
                        } else {
                            i_this->action = ACT_LR_DAMAGE;
                        }
                        i_this->mode = 0;
                    } else {
                        i_this->action = ACT_S_DAMAGE;
                        i_this->mode = 0;
                    }
                }

                if (i_this->field_0x13c0.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                    i_this->field_0x6a0 = 20;
                } else {
                    i_this->field_0x6a0 = 10;
                }

                i_this->anm_spd = 30.0f;
                return;
            }
        }
    }
}

static void effect_set(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    cXyz pos;
    cXyz effect_pos;
    dBgS_GndChk gnd_chk;
    dBgS_ObjGndChk_Spl obj_gnd_chk;

    pos = actor->current.pos;
    pos.y += 100.0f;
    gnd_chk.SetPos(&pos);
    obj_gnd_chk.SetPos(&pos);

    s8 is_water = false;
    s8 in_water = false;
    f32 waterY = dComIfG_Bgsp().GroundCross(&gnd_chk);
    if (dComIfG_Bgsp().GroundCross(&obj_gnd_chk) - waterY > 0.0f) {
        is_water = true;
    }

    if (i_this->movement_type == 1) {
        if (i_this->anm_p->checkFrame(11.0f)) {
            i_this->collision_flg |= (u8)4;
        } else if (i_this->anm_p->checkFrame(13.0f)) {
            i_this->collision_flg |= (u8)8;
        }
    } else if (i_this->movement_type == 2) {
        pos.set(0.0f, 0.0f, 0.0f);
        J3DModel* model = i_this->anm_p->getModel();
        int foot_idx = (i_this->field_0x68e & 2) >> 1;

        static int footd[2] = {
            6,
            10,
        };

        static int footd_B[2] = {
            6,
            10,
        };

        if (i_this->field_0x79d != 0) {
            MTXCopy(model->getAnmMtx(footd_B[foot_idx]), *calc_mtx);
        } else {
            MTXCopy(model->getAnmMtx(footd[foot_idx]), *calc_mtx);
        }
        MtxPosition(&pos, &effect_pos);

        if (is_water) {
            in_water = true;
        } else if ((i_this->field_0x68e & 1) == 0) {
            fopAcM_effSmokeSet2(&i_this->field_0x13e8[foot_idx],
                               &i_this->field_0x1408[foot_idx], &effect_pos, &actor->shape_angle, actor->scale.z * 2.0f, &actor->tevStr);
        }
    }

    if (i_this->collision_flg != 0) {
        J3DModel* model = i_this->anm_p->getModel();
        pos.set(0.0f, 0.0f, 0.0f);

        if ((i_this->collision_flg & 1) != 0) {
            MTXCopy(model->getAnmMtx(10), *calc_mtx);
            MtxPosition(&pos, &effect_pos);
            if (is_water) {
                in_water = true;
            } else {
                fopAcM_effSmokeSet2(i_this->field_0x13e8 + 1,
                                   i_this->field_0x1408 + 1, &effect_pos, &actor->shape_angle, actor->scale.z * 2.0f, &actor->tevStr);
                if (i_this->movement_type != 0) {
                    i_this->field_0x13fc = dComIfGp_particle_set(i_this->field_0x13fc, dPa_RM(ID_ZI_S_WBCLOD_A),
                                                                 &effect_pos, &actor->shape_angle, 0);
                }
            }
        }

        if ((i_this->collision_flg & 2) != 0) {
            MTXCopy(model->getAnmMtx(6), *calc_mtx);
            MtxPosition(&pos, &effect_pos);
            if (is_water) {
                in_water = true;
            } else {
                fopAcM_effSmokeSet2(i_this->field_0x13e8,
                                   i_this->field_0x1408, &effect_pos, &actor->shape_angle, actor->scale.z * 2.0f, &actor->tevStr);
                if (i_this->movement_type != 0) {
                    i_this->field_0x13f8 = dComIfGp_particle_set(i_this->field_0x13f8, dPa_RM(ID_ZI_S_WBCLOD_A),
                                                                 &effect_pos, &actor->shape_angle, 0);
                }
            }
        }

        if ((i_this->collision_flg & 4) != 0) {
            if (i_this->field_0x79d != 0) {
                MTXCopy(model->getAnmMtx(29), *calc_mtx);
            } else {
                MTXCopy(model->getAnmMtx(25), *calc_mtx);
            }
            MtxPosition(&pos, &effect_pos);
            if (is_water) {
                in_water = true;
            } else {
                fopAcM_effSmokeSet2(&i_this->field_0x13f0,
                                   &i_this->field_0x1410, &effect_pos, &actor->shape_angle, actor->scale.z * 2.0f, &actor->tevStr);
                if (i_this->movement_type != 0) {
                    i_this->field_0x1400 = dComIfGp_particle_set(i_this->field_0x1400, dPa_RM(ID_ZI_S_WBCLOD_A),
                                                                 &effect_pos, &actor->shape_angle, 0);
                }
            }
        }

        if ((i_this->collision_flg & 8) != 0) {
            if (i_this->field_0x79d != 0) {
                MTXCopy(model->getAnmMtx(24), *calc_mtx);
            } else {
                MTXCopy(model->getAnmMtx(21), *calc_mtx);
            }
            MtxPosition(&pos, &effect_pos);
            if (is_water) {
                in_water = true;
            } else {
                fopAcM_effSmokeSet2(&i_this->field_0x13f4,
                                   &i_this->field_0x1414, &effect_pos, &actor->shape_angle, actor->scale.z * 2.0f, &actor->tevStr);
                if (i_this->movement_type != 0) {
                    i_this->field_0x1404 = dComIfGp_particle_set(i_this->field_0x1404, dPa_RM(ID_ZI_S_WBCLOD_A),
                                                                 &effect_pos, &actor->shape_angle, 0);
                }
            }
        }
    }

    if (i_this->mLandingFlag != 0) {
        if (is_water) {
            in_water = true;
        } else {
            pos.set(JREG_F(0), JREG_F(1), JREG_F(2));
            MTXCopy(i_this->anm_p->getModel()->getAnmMtx(i_this->field_0x688 + 0xb),
                    *calc_mtx);
            MtxPosition(&pos, &effect_pos);
            fopAcM_effSmokeSet1(&i_this->field_0x1418,
                                   &i_this->field_0x141c, &effect_pos, NULL, actor->scale.z * 2.0f, &actor->tevStr, 1);
        }
    }

    if (in_water) {
        f32 v = 2.0f;
        cXyz scale(v, v, v);
        csXyz angle(0, 0, 0);

        static u16 w_eff_name[3] = {
            dPa_RM(ID_ZI_S_ENEMY_RUNWTRA_A),
            dPa_RM(ID_ZI_S_ENEMY_RUNWTRA_B),
            dPa_RM(ID_ZI_S_ENEMY_RUNWTRA_C),
        };

        static u16 w_eff_name2[3] = {
            dPa_RM(ID_ZI_S_ENEMY_DOWNWTRA_A),
            dPa_RM(ID_ZI_S_ENEMY_DOWNWTRA_B),
            dPa_RM(ID_ZI_S_ENEMY_DOWNWTRA_C),
        };

        for (int i = 0; i < 3; i++) {
            if (i_this->movement_type == 2) {
                i_this->enemy_wtra[i] = dComIfGp_particle_set(i_this->enemy_wtra[i],
                    w_eff_name2[i], &effect_pos, &actor->tevStr, &angle, &scale, 0xff, 0, -1, 0, 0, 0);
            } else {
                i_this->enemy_wtra[i] = dComIfGp_particle_set(i_this->enemy_wtra[i],
                    w_eff_name[i], &effect_pos, &actor->tevStr, &angle, &scale, 0xff, 0, -1, 0, 0, 0);
            }
        }
    }

    if (is_water && i_this->field_0x1721 != 0) {
        static cXyz sc(4.0f, 4.0f, 4.0f);

        for (int i = 0; i < 4; i++) {
            static u16 w_eff_id[4] = {
                ID_ZI_J_DOWNWTRA_A,
                ID_ZI_J_DOWNWTRA_B,
                ID_ZI_J_DOWNWTRA_C,
                ID_ZI_J_DOWNWTRA_D,
            };

            i_this->jump_wtra[i] = dComIfGp_particle_set(i_this->jump_wtra[i],
                w_eff_id[i], &actor->current.pos, &actor->tevStr, &actor->shape_angle,
                &sc, 0xff, 0, -1, 0, 0, 0);
        }
        i_this->field_0x1721 = 0;
    }

    i_this->movement_type = 0;
    i_this->collision_flg = 0;
    i_this->mLandingFlag = 0;
}

static void wb_rd_reset(e_wb_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz pos = a_this->current.pos;

    if (i_this->arg1 == 1 || i_this->arg1 == 2) {
        fopAcM_create(PROC_E_RD, 0xff010301, &pos, fopAcM_GetRoomNo(a_this), &player->shape_angle, 0, -1);
        fopAcM_create(PROC_E_RD, 0xff010302, &pos, fopAcM_GetRoomNo(a_this), &player->shape_angle, 0, -1);
    } else if (i_this->arg1 >= 3) {
        fopAcM_create(PROC_E_RD, 0xff010101, &pos, fopAcM_GetRoomNo(a_this), &player->shape_angle, 0, -1);
        fopAcM_create(PROC_E_RD, 0xff010102, &pos, fopAcM_GetRoomNo(a_this), &player->shape_angle, 0, -1);
    }
}

static void wb_c_rd_reset(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    fopAc_ac_c* pla = dComIfGp_getPlayer(0);
    u32 parameter = 0xFF010300;
    if (i_this->field_0x17e1 != 0) {
        parameter = 0xFF020300;
    }
    cXyz pos = actor->current.pos;
    fopAcM_create(PROC_E_RD, parameter | 1, &pos, fopAcM_GetRoomNo(actor), 0, 0, -1);
    fopAcM_create(PROC_E_RD, parameter | 2, &pos, fopAcM_GetRoomNo(actor), 0, 0, -1);
}

static void* s_rddel_sub(void* i_actor, void* i_data) {
    UNUSED(i_data);
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD) {
        e_rd_class* rd = (e_rd_class*)i_actor;
        if (rd->actor_set == 0) {
            fopAcM_delete((fopAc_ac_c*)i_actor);
        }
    }
    return NULL;
}

static int rd_count;

static void* s_rdcount_sub(void* i_actor, void* i_data) {
    UNUSED(i_data);
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD) {
        if (((e_rd_class*)i_actor)->actor_set == 0 &&
            (((e_rd_class*)i_actor)->arg1 == 1 || ((e_rd_class*)i_actor)->arg1 == 2))
        {
            rd_count++;
        }
    }
    return NULL;
}

static void* s_rddel2_sub(void* i_actor, void* i_data) {
    UNUSED(i_data);
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD) {
        e_rd_class* rd = ((e_rd_class*)i_actor);
        fopAc_ac_c* r28 = fopAcM_SearchByID(rd->boar_id);
        if (r28 == i_data) {
            fopAcM_delete((fopAc_ac_c*)i_actor);
        }
    }
    return NULL;
}

static void e_wb_crv_wait(e_wb_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->enemy;
    cXyz unused, unused2;
    fopAc_ac_c* pla = dComIfGp_getPlayer(0);
    fopAc_ac_c* rdb = fopAcM_SearchByName(PROC_E_RDB);
    i_this->field_0x6a0 = 20;

    switch (i_this->mode) {
    case 0:
        anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
        i_this->mode = 1;
        // fallthrough
    case 1:
        if (pla->current.pos.x > 482.0f && pla->current.pos.x < 3100.0f &&
            pla->current.pos.z > 0.0f && pla->current.pos.z < 1500.0f)
        {
            i_this->demo_mode = 70;
            i_this->mode = 2;
        }
        break;
    case 2:
        if (i_this->demo_mode == 0 && pla->current.pos.z > 550.0f) {
            i_this->demo_mode = 50;
            i_this->mode = 3;
        }
        break;
    case 3:
        break;
    }
}

static s8 e_wb_c_run(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    fopAc_ac_c* pla = dComIfGp_getPlayer(0);
    fopAc_ac_c* coach = fopAcM_SearchByName(PROC_NPC_COACH);
    fopAc_ac_c* coach_ = coach;
    e_rd_class* rider = (e_rd_class*)fopAcM_SearchByID(i_this->rd_id);

    cXyz sh;
    cXyz sp88;
    f32 target_speed = 0.0f;
    f32 f26 = 1.0f;

    int wall_check;
    s8 far_from_point = false;
    s8 rv = false;
    f32 dx = -46137.0f - actor->current.pos.x;
    f32 dz = 81549.0f - actor->current.pos.z;

    if (JMAFastSqrt(dx * dx + dz * dz) < KREG_F(7) + 5000.0f) {
        far_from_point = true;
    } else {
        dx = -7650.0f - actor->current.pos.x;
        dz = 56877.0f - actor->current.pos.z;

        if (JMAFastSqrt(dx * dx + dz * dz) < KREG_F(7) + 5000.0f) {
            far_from_point = true;
        }
    }

    wall_check = e_wb_lr_wall_check(i_this);

    if ((i_this->StatusFlag & 1) == 0) {
        i_this->action = ACT_A_RUN;
        i_this->mode = 0;
        return rv;
    }

    s16 sp10 = actor->current.angle.y;
    s16 turn_speed = 0x200;
    s16 spC;
    dBgS_LinChk lin_chk;

    switch (i_this->mode) {
    case 0: {
        anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
        i_this->mode = 1;
        i_this->StatusFlag |= (u16)0x20;
    }
    // fallthrough
    case 1: {
        cXyz target_pos(-62943.0f, -9045.0f, 70997.0f);
        sh = target_pos - actor->current.pos;
        actor->current.angle.y = cM_atan2s(sh.x, sh.z);
        sh = target_pos - coach->current.pos;

        if (i_this->field_0x7a7 == 0 || JMAFastSqrt(sh.x * sh.x + sh.z * sh.z) < 500.0f) {
            i_this->mode = 2;
            i_this->field_0x7a7 = 0;
            fopAcM_setStageLayer(actor);
            i_this->field_0x17e1 = 1;
        }
    } break;

    case 2: {
        if (i_this->field_0x7a6 == 0) {
            anm_init(i_this, 0x1b, 3.0f, 0, 1.0f);
            i_this->mode = 11;
            i_this->anm_spd = 40.0f;
            i_this->StatusFlag |= (u16)8;
        } else {
            i_this->field_0x7a6 = 0;
            anm_init(i_this, 0x20, 5.0f, 2, 1.0f);
            i_this->anm_p->setFrame(cM_rndF(10.0f));
            i_this->mode = 12;
            i_this->StatusFlag |= (u16)0x10;
            i_this->creature.startCreatureSound(Z2SE_EN_WB_KICK_GROUND, 0, -1);
        }
    } break;

    case 11: {
        if (i_this->anm_p->checkFrame(3.0f)) {
            i_this->collision_flg |= (u8)2;
            i_this->movement_type = 10;
        } else if (i_this->anm_p->checkFrame(15.0f)) {
            i_this->collision_flg |= (u8)3;
        }
        if (i_this->anm_p->isStop()) {
            anm_init(i_this, 0x20, 5.0f, 2, 1.0f);
            i_this->mode = 12;
            i_this->StatusFlag |= (u8)0x10;
            i_this->creature.startCreatureSound(Z2SE_EN_WB_KICK_GROUND, 0, -1);
        }
    } break;
    case 12: {
        i_this->mode = 13;
    }
        // fallthrough
    case 13: {
        sh = actor->current.pos;
        sh.y += 500.0f;
        sp88 = coach->eyePos;
        sp88.y += 500.0f;
        lin_chk.Set(&sh, &sp88, actor);
        s8 behind_obstacle = false;

        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            cXyz diff_field = i_this->field_0x5d0 - actor->current.pos;
            sh = pla->eyePos - actor->current.pos;
            if (diff_field.abs() < sh.abs()) {
                sp88 = i_this->field_0x5d0;
                behind_obstacle = true;
            } else {
                cMtx_YrotS(*calc_mtx, pla->shape_angle.y);
                sp88 = pla->eyePos;
            }
        } else {
            cMtx_YrotS(*calc_mtx, coach->shape_angle.y);
            sp88 = coach->current.pos;
            i_this->field_0x5d0 = sp88;
        }


        if (!behind_obstacle) {
            static cXyz sh_pos[3] = {
                cXyz(400.0f, 200.0f, 200.0f),
                cXyz(-400.0f, 200.0f, 300.0f),
                cXyz(0.0f, 200.0f, -700.0f),
            };

            static cXyz sh_posH[3] = {
                cXyz(150.0f, 200.0f, 200.0f),
                cXyz(-150.0f, 200.0f, 300.0f),
                cXyz(0.0f, 200.0f, -700.0f)
            };

            if (far_from_point || wall_check != 0) {
                sh = sh_posH[i_this->arg1 - 1];
            } else {
                sh = sh_pos[i_this->arg1 - 1];
                sh.x += i_this->x_check;
                sh.z += i_this->pass;

                if ((i_this->field_0x68e & 0x3f) == 0 && cM_rndF(1.0f) < 0.5f) {
                    i_this->pass = -cM_rndF(200.0f);
                    i_this->x_check = cM_rndFX(100.0f);
                }
            }
        } else {
            sh.set(0.0f, 0.0f, 0.0f);
        }

        MtxPosition(&sh, &i_this->eye);
        i_this->eye += sp88;

        sh = i_this->eye - actor->current.pos;

        f32 dist = JMAFastSqrt(sh.x * sh.x + sh.z * sh.z);

        if (dist < 500.0f) {
            target_speed = l_HIO.normal_speed_vi;
        } else if (dist > 3000.0f && i_this->field_0x5bf) {
            target_speed = l_HIO.mMaxSpeedVi;
        } else {
            target_speed = l_HIO.medium_speed_vi;
        }

        if ((i_this->StatusFlag & 2) == 0) {
            target_speed = 20.0f;
            rv = 1;
        }

        turn_speed = 0x200;
        i_this->mTargetFacingAngle = cM_atan2s(sh.x, sh.z);

        if (rider && rider->anm == 39) {
            ANGLE_ADD(i_this->mTargetFacingAngle,
                      (BREG_F(16) + 5000.0f) * cM_ssin(i_this->field_0x68e * (BREG_S(7) + 0x3E8)));
            turn_speed = 0x400;
        } else if (wall_check != 0) {
            ANGLE_ADD(i_this->mTargetFacingAngle, (BREG_S(8) + -0x1F40) * wall_check);
        }

        cLib_addCalcAngleS2(&actor->current.angle.y, i_this->mTargetFacingAngle, 8, turn_speed);
        f32 anim_speed = actor->speedF / 40.0f;

        if (anim_speed < 1.0f) {
            anim_speed = 1.0f;
        }

        if (anim_speed > 1.3f) {
            anim_speed = 1.3f;
        }

        i_this->anm_p->setPlaySpeed(anim_speed);
        i_this->movement_type = 1;
        i_this->pursuit_flg = 1;
    } break;

    case 20: {
        anm_init(i_this, 0x25, 3.0f, 2, 1.0f);
        i_this->mode = 21;
    }
        // fallthrough

    case 21:
        int unused; // needs to be here to match debug
        {
            if (actor->speedF > 15.0f) {
                i_this->movement_type = 2;
                i_this->creature.startCreatureSoundLevel(Z2SE_EN_WB_L_SLIP, 0, -1);
            } else {
                anm_init(i_this, 0x2a, 10.0f, 2, 1.0f);
                i_this->mode = 22;
                i_this->StatusFlag |= (u16)0x20;
            }
        }
        break;
    }

    if (i_this->mode < 20) {
        sh.x = 4025.0f - coach->current.pos.x;
        sh.z = 52319.0f - coach->current.pos.z;

        if (coach->speedF < 1.0f ||
            JMAFastSqrt(sh.x * sh.x + sh.z * sh.z) < 1500.0f)
        {
            sh = coach->current.pos - actor->current.pos;

            if (sh.abs() < 1000.0f) {
                i_this->mode = 20;
            }
        }
    }

    cLib_addCalc2(&actor->speedF, target_speed, 1.0f, f26);
    spC = (TREG_S(7) + -8) * (actor->current.angle.y - sp10);
    cLib_addCalcAngleS2(&i_this->mBodyTiltAngle, spC, 8, 0x200);

    return rv;
}

static void action(e_wb_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz mae;
    cXyz ato;
    cLib_addCalcAngleS2(&i_this->mBodyTiltAngle, 0, 8, 0x100);

    if (i_this->action != 103) {
        damage_check(i_this);
    }
    s8 cVar8 = false;
    fopEn_enemy_c* a_this2 = a_this;
    a_this2->offDownFlg();

    if (lbl_244_bss_45 != 0 || lbl_244_bss_46 != 0) {
        i_this->mSpeedCapTimer = gake_check(i_this);
    }

    switch (i_this->action) {
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
        if (i_this->arg0 == 10) {
            cVar8 = e_wb_c_run(i_this);
            fopAc_ac_c* v = dComIfGp_getPlayer(0);  // unusued?

            if (a_this->home.pos.y - a_this->current.pos.y > 4500.0f) {
                OS_REPORT(" WB NARAKU DOWN  \n");
                fopAcM_delete(a_this);
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
            a_this2->onDownFlg();
        }

        cVar8 = true;
        break;
    case ACT_BG_DAMAGE:
        if (e_wb_bg_damage(i_this)) {
            a_this2->onDownFlg();
        }

        cVar8 = true;
        break;
    case ACT_LR_DAMAGE:
        if (e_wb_lr_damage(i_this)) {
            a_this2->onDownFlg();
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
    case ACT_PL_RIDE_NOW:
        e_wb_pl_ride_now(i_this);
        break;
    case ACT_PL_RIDE:
        e_wb_pl_ride(i_this);
        break;
    case ACT_PL_RIDE2:
        e_wb_pl_ride(i_this);
        break;
    case ACT_CRV_WAIT:
        e_wb_crv_wait(i_this);
    }

    if (a_this->speedF > 10.0f) {
        if (i_this->field_0x13e4 != 253) {
            i_this->field_0x13e4 = 253;
            i_this->mStts.Init(0xfd, 0, a_this);
        }
    } else if (i_this->field_0x13e4 != 220) {
        i_this->field_0x13e4 = 220;
        i_this->mStts.Init(0xdc, 0, a_this);
    }

    a_this->attention_info.flags &= ~fopAc_AttnFlag_CARRY_e;

    if (lbl_244_bss_45 != 0) {
        if (i_this->field_0x7a7 != 0 || (cVar8 && daPy_getPlayerActorClass()->checkHorseRide() && (dComIfGp_getHorseActor()->speedF >= 30.0f || i_this->field_0x7a6 != 0) && i_this->field_0x5bf != 0)) {
            fpcM_Search(s_rddel2_sub, i_this);
            rd_count = 0;
            fpcM_Search(s_rdcount_sub, i_this);

            if (rd_count <= 8) {
                i_this->field_0x7a7 = 0;
                i_this->action = ACT_WAIT2;
                i_this->mode = 0;
                i_this->field_0x6a0 = 30;
                i_this->StatusFlag = 3;
                i_this->field_0x6ae.set(0, 0, 0);
                wb_rd_reset(i_this);
                if (i_this->field_0x79d) {
                    OS_REPORT("   BB RESET  \n");
                } else {
                    OS_REPORT("   WB RESET  \n");
                }
            }
        }
    }

    if (lbl_244_bss_47 != 0) {
        if (i_this->field_0x7a6 != 0 || (daPy_getPlayerActorClass()->checkHorseRide() &&
                dComIfGp_getHorseActor()->speedF >= 20.0f && cVar8 && i_this->field_0x5bf != 0)) {
            fpcM_Search(s_rddel2_sub, i_this);
            rd_count = 0;
            fpcM_Search(s_rdcount_sub, i_this);

            if (rd_count <= 4) {
                i_this->field_0x7a6 = 0;
                i_this->action = ACT_WAIT2;
                i_this->mode = 0;
                i_this->field_0x6a0 = 30;
                i_this->StatusFlag = 3;
                i_this->field_0x6ae.set(0, 0, 0);
                wb_c_rd_reset(i_this);
                i_this->field_0x68e = (s16)cM_rndF(65535.0f);
            }
        }
    }

    cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
    mae.x = 0.0f;
    mae.y = 0.0f;
    mae.z = a_this->speedF;

    MtxPosition(&mae, &ato);
    a_this->speed.x = ato.x;
    a_this->speed.z = ato.z;
    a_this->current.pos += a_this->speed;
    a_this->speed.y -= 5.0f;

    if (a_this->speed.y < -120.0f)
        a_this->speed.y = -120.0f;

    if (i_this->action == ACT_WAIT && (i_this->StatusFlag & 3) == 0 &&
        // Bulblin Camp
        (strcmp(dComIfGp_getStartStageName(), "F_SP118") == 0 ||
        // Gerudo Desert
        strcmp(dComIfGp_getStartStageName(), "F_SP124") == 0 || lbl_244_bss_46 != 0 ||
        // Hyrule Castle
        strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0))
    {
        int target_angle = abs((s16)(cLib_targetAngleY(&a_this->attention_info.position,
                                                       &dComIfGp_getPlayer(0)->current.pos) -
                                     a_this->shape_angle.y));

        if (target_angle < 0x6000 && target_angle > 0x3000) {
            a_this->attention_info.flags |= fopAc_AttnFlag_ETC_e;
        } else {
            a_this->attention_info.flags &= ~fopAc_AttnFlag_ETC_e;
        }
    } else {
        a_this->attention_info.flags &= ~fopAc_AttnFlag_ETC_e;
    }

    s16 angle = 0;

    if (i_this->anmID == 40) {
        angle = (a_this->current.angle.y - a_this->old.angle.y) * (7 + VREG_S(2));
    }

    cLib_addCalcAngleS2(&i_this->field_0x6d8, angle, 8, 0x400);

    if (lbl_244_bss_45 != 0 && a_this->home.pos.y - a_this->current.pos.y > 5000.0f) {
        i_this->action = ACT_EVENT;
        i_this->mode = 0;
        i_this->StatusFlag |= (u16)0x40;
        a_this->current.pos = a_this->home.pos;
        a_this->old = a_this->current;
    }
}

static void* s_wbZrevise_sub(void* i_actor, void* i_data) {
    UNUSED(i_data);
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_WB) {
        e_wb_class* a_this = static_cast<e_wb_class*>(i_actor);
        if (a_this->field_0x79d == 0) {
            a_this->enemy.current.pos = a_this->enemy.home.pos;
        }
    }

    return NULL;
}

static void* s_spd0_sub(void* i_actor, void* i_data) {
    UNUSED(i_data);
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_WB) {
        e_wb_class* a_this = static_cast<e_wb_class*>(i_actor);
        if (a_this->field_0x79d == 0) {
            a_this->enemy.speedF = 0.0f;
        }
    }

    return NULL;
}

static void* s_wbdel_sub(void* i_actor, void* i_data) {
    UNUSED(i_data);
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_WB) {
        e_wb_class* a_this = static_cast<e_wb_class*>(i_actor);
        if (a_this->field_0x79d == 0) {
            fopAcM_delete((fopAc_ac_c*)i_actor);
        }
    }

    return NULL;
}

static void* s_rdArrowWait_sub(void* i_actor, void* i_data) {
    UNUSED(i_data);
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD) {
        e_rd_class* a_this = static_cast<e_rd_class*>(i_actor);
        if (a_this->weapon_type == 2 || a_this->weapon_type == 3) {
            a_this->timer[1] = cM_rndF(20.0) + 3.0f;
        }
    }

    return NULL;
}

static void cam_3d_morf(e_wb_class* i_this, f32 i_scale) {
    cLib_addCalc2(&i_this->demo_cam_ctr.x, i_this->field_0x16e0.x, i_scale,
                  i_this->field_0x16f8.x * i_this->demo_morf);
    cLib_addCalc2(&i_this->demo_cam_ctr.y, i_this->field_0x16e0.y, i_scale,
                  i_this->field_0x16f8.y * i_this->demo_morf);
    cLib_addCalc2(&i_this->demo_cam_ctr.z, i_this->field_0x16e0.z, i_scale,
                  i_this->field_0x16f8.z * i_this->demo_morf);
    cLib_addCalc2(&i_this->demo_cam_eye.x, i_this->field_0x16d4.x, i_scale,
                  i_this->field_0x16ec.x * i_this->demo_morf);
    cLib_addCalc2(&i_this->demo_cam_eye.y, i_this->field_0x16d4.y, i_scale,
                  i_this->field_0x16ec.y * i_this->demo_morf);
    cLib_addCalc2(&i_this->demo_cam_eye.z, i_this->field_0x16d4.z, i_scale,
                  i_this->field_0x16ec.z * i_this->demo_morf);
}

static void demo_camera(e_wb_class* i_this) {
    fopEn_enemy_c* enemy = (fopEn_enemy_c*)i_this;
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera_class* camera0 = dComIfGp_getCamera(0);
    daPy_py_c* pla = (daPy_py_c*)dComIfGp_getPlayer(0);
    daHorse_c* horse;
    e_rd_class* rider;
    e_rdb_class* boss;
    if (i_this->demo_mode != 0) {
        horse = (daHorse_c*)dComIfGp_getHorseActor();
        rider = (e_rd_class*)fopAcM_SearchByID(i_this->rd_id);
        boss = (e_rdb_class*)fopAcM_SearchByName(PROC_E_RDB);
    }
    cXyz mae, ato, eye, center;

    switch (i_this->demo_mode) {
    case 1: {
        if (!enemy->eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(enemy, 2, 0xffff, 0);
            enemy->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        camera->mCamera.Stop();
        i_this->demo_mode = 2;
        i_this->demo_timer = 0;
        i_this->demo_cam_zoom = 55.0f;
        i_this->demo_timer = 0;
        i_this->field_0x1708 = 800.0f + ZREG_F(1);
        camera->mCamera.SetTrimSize(3);
        enemy->current.pos.set(34800.0f, -66.0f, -604.0f);
        enemy->current.angle.y = 0x8000;
        enemy->shape_angle = enemy->current.angle;
        enemy->old = enemy->current;
        i_this->demo_cam_angle = 0x2000 + XREG_S(0);
        daPy_getPlayerActorClass()->changeOriginalDemo();
        horse->changeOriginalDemo();
        fpcM_Search(s_wbdel_sub, i_this);
        dComIfGp_getEvent()->startCheckSkipEdge(enemy);
    }
        // fallthrough
    case 2: {
        if (i_this->demo_timer == 160 + JREG_S(5)) {
            ato.set(34700.0f, -66.0f, 7896.0f + JREG_F(18));
            horse->setHorsePosAndAngle(&ato, -0x8000);
            horse->changeDemoMode(4, 0);
            ato.set(34900.0f, -280.0f, -18048.0f);
            horse->changeDemoPos0(&ato);
        }
        cLib_addCalc2(&i_this->field_0x1708, 1200.0f + ZREG_F(3), 0.05f, 3.0f);
        mDoMtx_stack_c::YrotS(enemy->shape_angle.y + i_this->demo_cam_angle);
        mae.x = 0.0f;
        mae.y = 300.0f + ZREG_F(0);
        mae.z = i_this->field_0x1708;
        mDoMtx_stack_c::multVec(&mae, &i_this->demo_cam_eye);
        i_this->demo_cam_eye += enemy->current.pos;
        cLib_addCalcAngleS2(&i_this->demo_cam_angle, 0x7800, 0x20, 0xa0);
        if (i_this->demo_timer == 0) {
            i_this->demo_cam_ctr = enemy->current.pos;
            i_this->demo_cam_ctr.y += 400.0f + ZREG_F(2);
        } else {
            cLib_addCalc2(&i_this->demo_cam_ctr.x, enemy->current.pos.x, 0.5f, 200.0f);
            cLib_addCalc2(&i_this->demo_cam_ctr.y,
                          200.0f + enemy->current.pos.y + 200.0f + ZREG_F(2), 0.5f, 200.0f);
            cLib_addCalc2(&i_this->demo_cam_ctr.z, enemy->current.pos.z, 0.5f, 200.0f);
        }

        if (i_this->demo_timer == 220) {
            i_this->demo_mode = 3;
            i_this->demo_timer = 0;
            i_this->field_0x1708 = 1100.0f + ZREG_F(9);
            i_this->demo_cam_angle = 0x1000 + XREG_S(8);
        }
    } break;
    case 3: {
        mDoMtx_stack_c::YrotS(pla->shape_angle.y + i_this->demo_cam_angle);
        mae.x = 0.0f;
        mae.y = 0.0f + ZREG_F(10);
        mae.z = i_this->field_0x1708;
        mDoMtx_stack_c::multVec(&mae, &i_this->demo_cam_eye);
        i_this->demo_cam_eye += pla->current.pos;
        i_this->demo_cam_ctr = pla->current.pos;
        i_this->demo_cam_ctr.y += ZREG_F(11) - 50.0f;
        cLib_addCalc2(&i_this->field_0x1708, 500.0f, 0.05f, 10.0f);
        if (i_this->demo_timer != 70) {
            break;
        }
        i_this->demo_mode = 4;
        i_this->demo_timer = 0;
    }
        // fallthrough
    case 4: {
        i_this->field_0x1708 = 1200.0f + ZREG_F(3);
        mDoMtx_stack_c::YrotS(enemy->shape_angle.y - 0x7800);
        mae.x = 0.0f;
        mae.y = 300.0f + ZREG_F(0);
        mae.z = i_this->field_0x1708;
        mDoMtx_stack_c::multVec(&mae, &i_this->demo_cam_eye);
        i_this->demo_cam_eye.x += enemy->current.pos.x;
        i_this->demo_cam_eye.y += -300.0f;
        i_this->demo_cam_eye.z += enemy->current.pos.z;
        i_this->demo_cam_ctr.x = enemy->current.pos.x;
        i_this->demo_cam_ctr.z = enemy->current.pos.z;
        if (i_this->demo_timer == 0) {
            i_this->demo_cam_ctr.y = enemy->current.pos.y + 200.0f + 200.0f + ZREG_F(2);
        } else {
            cLib_addCalc2(&i_this->demo_cam_ctr.y,
                          enemy->current.pos.y + 200.0f + 200.0f + ZREG_F(2), 0.1f, 20.0f);
        }
        if (i_this->demo_timer != 140) {
            break;
        }

        i_this->demo_mode = 5;
        i_this->demo_timer = 0;
        i_this->field_0x1708 = 350.0f + ZREG_F(9);
        i_this->field_0x170c = 50.0f;
    }
        // fallthrough
    case 5:
    case 6: {
        i_this->demo_cam_angle = 0x7800 + XREG_S(3);
        mDoMtx_stack_c::YrotS(pla->shape_angle.y + i_this->demo_cam_angle);
        mae.x = i_this->field_0x170c;
        mae.y = 0.0f;
        mae.z = i_this->field_0x1708;
        mDoMtx_stack_c::multVec(&mae, &i_this->demo_cam_eye);
        i_this->demo_cam_eye.x += pla->current.pos.x;
        i_this->demo_cam_eye.z += pla->current.pos.z;
        i_this->demo_cam_eye.y = 50.0f + ZREG_F(10);
        if (i_this->demo_timer == 0) {
            i_this->demo_cam_ctr = pla->current.pos;
            i_this->demo_cam_ctr.y += ZREG_F(11) - 50.0f + 50.0f;
        } else {
            i_this->demo_cam_ctr.x = pla->current.pos.x;
            i_this->demo_cam_ctr.z = pla->current.pos.z;
            f32 dVar13 = pla->current.pos.y + ZREG_F(11) - 50.0f + 50.0f;
            if (dVar13 > 150.0f) {
                dVar13 = 150.0f;
            }
            cLib_addCalc2(&i_this->demo_cam_ctr.y, dVar13, 0.2f + ZREG_F(12), 30.0f + ZREG_F(13));
        }
        cLib_addCalc2(&i_this->field_0x1708, 800.0f, 0.05f, 5.0f);
        cLib_addCalc2(&i_this->field_0x170c, -50.0f, 0.05f, 1.2f);
        if (i_this->demo_mode == 5 && pla->current.pos.z < -14500.0f + KREG_F(12)) {
            horse->changeDemoMode(7, 0);
            horse->onDemoJumpDistance(600.0f + BREG_F(18), 100.0f + BREG_F(19));
            i_this->demo_mode = 6;
        }

        if (i_this->demo_timer == 75) {
            dComIfGp_setNextStage("F_SP102", 1, 0, 4);
        }
    } break;
    case 10: {
        if (!enemy->eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(enemy, 2, 0xffff, 0);
            enemy->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        i_this->demo_mode = 11;
        i_this->demo_timer = 0;
        i_this->demo_cam_zoom = 55.0f + KREG_F(7);
        i_this->demo_timer = 0;
        s16 yaa = rider->enemy.shape_angle.y +
                   (rider->jump_angle.y - rider->enemy.shape_angle.y) / 2;
        mDoMtx_stack_c::YrotS(yaa);
        mae.x = NREG_F(0);
        mae.y = NREG_F(1) + 500.0f;
        mae.z = NREG_F(2) - 500.0f;
        mDoMtx_stack_c::multVec(&mae, &i_this->demo_cam_eye);
        i_this->demo_cam_eye += rider->enemy.current.pos;
        i_this->demo_morf = 10.0f;
        i_this->demo_cam_ctr = rider->enemy.current.pos;
        i_this->demo_cam_ctr.y += 200.0f + KREG_F(11);
        daPy_getPlayerActorClass()->changeOriginalDemo();
        horse->changeOriginalDemo();
    }
        // fallthrough
    case 11: {
        cLib_addCalc2(&i_this->demo_morf, 1000.0f, 1.0f, 100.0f + KREG_F(10));
        cLib_addCalc2(&i_this->demo_cam_ctr.x, rider->enemy.current.pos.x, 0.5f + KREG_F(8),
                      i_this->demo_morf);
        cLib_addCalc2(&i_this->demo_cam_ctr.y, rider->enemy.current.pos.y + 200.0f + KREG_F(11),
                      0.5f + KREG_F(8), i_this->demo_morf);
        cLib_addCalc2(&i_this->demo_cam_ctr.z, rider->enemy.current.pos.z, 0.5f + KREG_F(8),
                      i_this->demo_morf);
        cLib_addCalc2(&i_this->demo_cam_eye.x, rider->enemy.current.pos.x, 0.05f,
                      12.0f + NREG_F(3));
        if (i_this->demo_timer == 40) {
            if (enemy->shape_angle.y < 0x4000 && -0x4000 < enemy->shape_angle.y) {
                ato.set(34800.0f, -300.0f, -26400.0f);
                horse->setHorsePosAndAngle(&ato, pla->shape_angle.y);
                horse->changeDemoMode(3, 0);
                ato.set(34800.0f, -300.0f, -36400.0f);
                horse->changeDemoPos0(&ato);
            } else {
                ato.set(34800.0f, -300.0f, -26400.0f);
                horse->setHorsePosAndAngle(&ato, pla->shape_angle.y);
                horse->changeDemoMode(3, 0);
                ato.set(34800.0f, -300.0f, -16400.0f);
                horse->changeDemoPos0(&ato);
            }
        }
        if (i_this->demo_timer >= 40 && i_this->demo_timer < 87) {
            enemy->current.pos.y = 5000.0f;
            enemy->current.pos.z = -18000.0f;
            enemy->speedF = 0.0f;
        }

        if (i_this->demo_timer == 87) {
            enemy->current.pos.y = -300.0f;
            if (enemy->shape_angle.y < 0x4000 && -0x4000 < enemy->shape_angle.y) {
                enemy->current.pos.z = -25000.0f - KREG_F(16);
            } else {
                enemy->current.pos.z = -27800.0f + KREG_F(16);
            }
            enemy->speedF = l_HIO.mSingleRiderSpeed;
        }

        if (i_this->demo_timer == 90) {
            i_this->demo_cam_ctr.set(48545.0f, -1884.0f, -27557.0f);
            i_this->demo_cam_eye.set(49099.0f, -1884.0f, -27626.0f);
            i_this->demo_mode = 12;
            i_this->demo_timer = 0;
            i_this->demo_cam_zoom = 45.0f;
            fopAc_ac_c* rd = fopAcM_SearchByID(i_this->rd_id);
            rd->current.pos.z = -26400.0f;
            rd->current.pos.y = -3500.0f + KREG_F(18);
            rd->current.pos.x = 34800.0f;
            rd->speed.set(0.0f, -50.0f, 0.0f);
            rd->speedF = 0.0f;
        }

        if (!daPy_getPlayerActorClass()->checkHorseRide()) {
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            daPy_getPlayerActorClass()->cancelOriginalDemo();
            i_this->demo_mode = 0;
        }
    } break;
    case 12: {
        cLib_addCalc2(&i_this->demo_cam_zoom, 55.0f, 0.05f, 0.1f);
        if (i_this->demo_timer == 90) {
            Z2GetAudioMgr()->bgmStreamPrepare(0x2000010);
            Z2GetAudioMgr()->bgmStreamPlay();
            dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[85]);
            dComIfGp_setNextStage("F_SP102", 0x14, 0, 8);
        }
    } break;
    case 20: {
        if (!enemy->eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(enemy, 2, 0xffff, 0);
            enemy->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        i_this->demo_mode = 21;
        i_this->demo_timer = 0;
        i_this->demo_cam_zoom = 55.0f;
        i_this->demo_timer = 0;
        mDoMtx_stack_c::YrotS(pla->shape_angle.y);
        mae.x = -500.0f + ZREG_F(8);
        mae.y = 100.0f + ZREG_F(9);
        mae.z = 0.0f + ZREG_F(10);
        mDoMtx_stack_c::multVec(&mae, &i_this->demo_cam_eye);
        i_this->demo_cam_eye += pla->current.pos;
        i_this->demo_morf = 0;
        i_this->demo_cam_ctr = enemy->current.pos;
        i_this->demo_cam_ctr.y += 300.0f + ZREG_F(11);
        horse->changeOriginalDemo();
        horse->changeDemoMode(6, 0);
    }
    // fallthrough
    case 21: {
        s16 angle;
        if (horse->shape_angle.y < 0x4000 && -0x4000 < horse->shape_angle.y) {
            angle = 0;
        } else {
            angle = -0x8000;
        }
        horse->setHorsePosAndAngle(&horse->current.pos, angle);
        cLib_addCalc2(&i_this->demo_cam_ctr.x, enemy->current.pos.x, 0.8f, 100.0f);
        cLib_addCalc2(&i_this->demo_cam_ctr.y, (enemy->current.pos.y + 300.0f + ZREG_F(11)), 0.8f,
                      100.0f);
        cLib_addCalc2(&i_this->demo_cam_ctr.z, enemy->current.pos.z, 0.8f, 100.0f);
        if (i_this->demo_timer == (s16)(20 + ZREG_S(8))) {
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            i_this->demo_mode = 0;
        }
        break;
    }
    case 25: {
        if (!enemy->eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(enemy, 2, 0xffff, 0);
            enemy->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        i_this->demo_mode = 26;
        i_this->demo_timer = 0;
        i_this->demo_cam_zoom = 55.0f;
        i_this->demo_timer = 0;
        horse->changeOriginalDemo();
        horse->changeDemoMode(6, 0);
        s16 angleDiff = enemy->shape_angle.y - fopAcM_searchPlayerAngleY(enemy);
        if (angleDiff < 0) {
            i_this->field_0x170c = 200.0f;
        } else {
            i_this->field_0x170c = -200.0f;
        }
    }
    // fallthrough
    case 26: {
        mDoMtx_stack_c::YrotS(enemy->shape_angle.y);
        mae.x = i_this->field_0x170c;
        mae.y = 300.0f + ZREG_F(9);
        mae.z = 300.0f + ZREG_F(10);
        mDoMtx_stack_c::multVec(&mae, &i_this->demo_cam_eye);
        i_this->demo_cam_eye += enemy->current.pos;
        i_this->demo_cam_ctr = enemy->current.pos;
        i_this->demo_cam_ctr.y += 400.0f + ZREG_F(11);
        if (i_this->demo_timer == (s16)(15 + ZREG_S(8))) {
            cMtx_YrotS(*calc_mtx, pla->shape_angle.y);
            mae.x = 0.0f;
            mae.y = 400.0f + JREG_F(1);
            mae.z = -600.0f + JREG_F(2);
            MtxPosition(&mae, &i_this->demo_cam_eye);
            i_this->demo_cam_eye += pla->current.pos;
            i_this->demo_cam_ctr = pla->current.pos;
            i_this->demo_cam_ctr.y += 120.0f;
            camera->mCamera.Reset(i_this->demo_cam_ctr, i_this->demo_cam_eye,
                                     i_this->demo_cam_zoom, 0);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            i_this->demo_mode = 0;
        }
    } break;
    case 30: {
        if (!enemy->eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(enemy, 2, 0xffff, 0);
            enemy->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        i_this->demo_mode = 31;
        i_this->demo_timer = 0;
        i_this->demo_cam_zoom = 55.0f;
        i_this->demo_timer = 0;
        i_this->demo_morf = 0;
        i_this->demo_cam_ctr.set(-8592.0f, 342.0f, -139.0f);
        i_this->demo_cam_eye.set(-8844.0f, 317.0f, 512.0f);
        i_this->field_0x16e0.set(-8416.0f, 345.0f, 6.0f);
        i_this->field_0x16d4.set(-8994.0f, 326.0f, 400.0f);
        i_this->field_0x16ec.x = fabsf(i_this->field_0x16d4.x - i_this->demo_cam_eye.x);
        i_this->field_0x16ec.y = fabsf(i_this->field_0x16d4.y - i_this->demo_cam_eye.y);
        i_this->field_0x16ec.z = fabsf(i_this->field_0x16d4.z - i_this->demo_cam_eye.z);
        i_this->field_0x16f8.x = fabsf(i_this->field_0x16e0.x - i_this->demo_cam_ctr.x);
        i_this->field_0x16f8.y = fabsf(i_this->field_0x16e0.y - i_this->demo_cam_ctr.y);
        i_this->field_0x16f8.z = fabsf(i_this->field_0x16e0.z - i_this->demo_cam_ctr.z);
        daPy_getPlayerActorClass()->changeOriginalDemo();
        horse->changeOriginalDemo();
        ato.set(-10775.0f + ZREG_F(0) + 350.0f, 60.0f, 75.0f);
        horse->setHorsePosAndAngle(&ato, horse->shape_angle.y);
        horse->changeDemoMode(3, 0);
        ato.set(-8705.0f, 213.0f, 75.0f);
        horse->changeDemoPos0(&ato);
        dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[86]);
        Z2GetAudioMgr()->bgmStreamPrepare(0x200000f);
        Z2GetAudioMgr()->bgmStreamPlay();
    }
    // fallthrough
    case 31: {
        if (i_this->demo_timer > 50 + JREG_S(3)) {
            cam_3d_morf(i_this, 0.1f);
            cLib_addCalc2(&i_this->demo_morf, 0.02f, 1.0f, 0.001f);
        }
        if (i_this->demo_timer == 40 + JREG_S(0)) {
            horse->changeDemoMode(8, 0);
            dComIfGp_getEvent()->startCheckSkipEdge(enemy);
        }
        if (i_this->demo_timer == 80 + JREG_S(1)) {
            horse->changeDemoMode(9, 0);
        }
        if (i_this->demo_timer == 143 + JREG_S(2)) {
            dKy_change_colpat(4);
        }
        if (i_this->demo_timer == 144 + JREG_S(2)) {
            i_this->demo_mode = 32;
            i_this->demo_timer = 0;
            horse->changeDemoMode(1, 0);
            i_this->demo_cam_ctr.set(-9224.0f, 500.0f, 300.0f);
            i_this->demo_cam_eye.set(-8586.0f, 447.0f, 18.0f);
            i_this->demo_cam_zoom = 40.0f;
        }
    } break;
    case 32: {
        if (i_this->demo_timer == 10) {
            pla->changeDemoParam2(1);
        }
        if (i_this->demo_timer != 35) {
            break;
        }

        i_this->demo_mode = 33;
        i_this->demo_timer = 0;
        i_this->demo_cam_zoom = 85.0f;
        i_this->demo_morf = 0;
        dKy_change_colpat(5);
    }
        // fallthrough
    case 33: {
        i_this->field_0x16b0.set(400.0f + JREG_F(6), 400.0f + JREG_F(7), 500.0f + JREG_F(8));
        i_this->field_0x16c8.set(-10.0f + JREG_F(9), 700.0f + JREG_F(10), 180.0f + JREG_F(11));
        cMtx_YrotS(*calc_mtx, enemy->shape_angle.y);
        MtxPosition(&i_this->field_0x16b0, &ato);
        i_this->demo_cam_eye = enemy->current.pos + ato;
        MtxPosition(&i_this->field_0x16c8, &ato);
        i_this->demo_cam_ctr = enemy->current.pos + ato;
        if (i_this->demo_timer > 25) {
            cLib_addCalc2(&i_this->demo_cam_zoom, 55.0f + JREG_F(12) - 30.0f, 0.8f, 6.0f);
        }
        if (i_this->demo_timer == 95) {
            i_this->demo_mode = 34;
            i_this->demo_timer = 0;
            i_this->field_0x16d4.set(700.0f, 100.0f, 0.0f);
            i_this->field_0x16e0.set(-10.0f, 350.0f, 80.0f);
            i_this->field_0x16ec.x = fabsf(i_this->field_0x16d4.x - i_this->field_0x16b0.x);
            i_this->field_0x16ec.y = fabsf(i_this->field_0x16d4.y - i_this->field_0x16b0.y);
            i_this->field_0x16ec.z = fabsf(i_this->field_0x16d4.z - i_this->field_0x16b0.z);
            i_this->field_0x16f8.x = fabsf(i_this->field_0x16e0.x - i_this->field_0x16c8.x);
            i_this->field_0x16f8.y = fabsf(i_this->field_0x16e0.y - i_this->field_0x16c8.y);
            i_this->field_0x16f8.z = fabsf(i_this->field_0x16e0.z - i_this->field_0x16c8.z);
            i_this->demo_morf = 0;
        }
    } break;
    case 34: {
        cLib_addCalc2(&i_this->demo_cam_zoom, 55.0f, 0.05f, 0.3f);
        cLib_addCalc2(&i_this->field_0x16c8.x, i_this->field_0x16e0.x, 0.05f,
                      i_this->field_0x16f8.x * i_this->demo_morf);
        cLib_addCalc2(&i_this->field_0x16c8.y, i_this->field_0x16e0.y, 0.05f,
                      i_this->field_0x16f8.y * i_this->demo_morf);
        cLib_addCalc2(&i_this->field_0x16c8.z, i_this->field_0x16e0.z, 0.05f,
                      i_this->field_0x16f8.z * i_this->demo_morf);
        cLib_addCalc2(&i_this->field_0x16b0.x, i_this->field_0x16d4.x, 0.05f,
                      (i_this->field_0x16ec.x * i_this->demo_morf));
        cLib_addCalc2(&i_this->field_0x16b0.y, i_this->field_0x16d4.y, 0.05f,
                      (i_this->field_0x16ec.y * i_this->demo_morf));
        cLib_addCalc2(&i_this->field_0x16b0.z, i_this->field_0x16d4.z, 0.05f,
                      (i_this->field_0x16ec.z * i_this->demo_morf));
        cLib_addCalc2(&i_this->demo_morf, 0.01f, 1.0f, 0.0005f);
        cMtx_YrotS(*calc_mtx, enemy->shape_angle.y);
        MtxPosition(&i_this->field_0x16b0, &i_this->demo_cam_eye);
        i_this->demo_cam_eye += enemy->current.pos;
        MtxPosition(&i_this->field_0x16c8, &i_this->demo_cam_ctr);
        i_this->demo_cam_ctr += enemy->current.pos;
        if (i_this->demo_timer == 130) {
            rider->mode++;
            pla->changeDemoParam2(0);
        }
        if (i_this->demo_timer == 220) {
            i_this->demo_mode = 35;
            i_this->demo_timer = 0;
            dKy_change_colpat(4);
        }
    } break;
    case 35: {
        i_this->demo_cam_zoom = 55.0f;
        i_this->demo_cam_ctr.set(-9110.0f, 492.0f, 331.0f);
        i_this->demo_cam_eye.set(-8469.0f, 372.0f, -54.0f);
        if (i_this->demo_timer == 10) {
            daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 2, 0);
        }

        if (i_this->demo_timer == 50) {
            i_this->demo_mode = 36;
            i_this->demo_timer = 0;
        }
    } break;
    case 36: {
        i_this->field_0x16b0.set(700.0f + JREG_F(0), 100.0f + JREG_F(1), 500.0f + JREG_F(2));
        i_this->field_0x16c8.set(-10.0f + JREG_F(3), 350.0f + JREG_F(4), 80.0f + JREG_F(5));
        cMtx_YrotS(*calc_mtx, enemy->shape_angle.y);
        MtxPosition(&i_this->field_0x16b0, &i_this->demo_cam_eye);
        i_this->demo_cam_eye += enemy->current.pos;
        MtxPosition(&i_this->field_0x16c8, &i_this->demo_cam_ctr);
        i_this->demo_cam_ctr += enemy->current.pos;
        if (i_this->demo_timer == 20) {
            rider->mode++;
        }
        if (i_this->demo_timer != (s16)(92 + KREG_S(8))) {
            break;
        }
        i_this->demo_mode = 37;
        i_this->demo_timer = 0;
        fpcM_Search(s_wbstart_sub, i_this);
        i_this->demo_cam_ctr.set(-12800.0f, 153.0f, 51.0f);
        i_this->demo_cam_eye.set(-12022.0f, 82.0f, 51.0f);
        i_this->field_0x16e0.set(-13168.0f, 163.0f, -200.0f);
        i_this->field_0x16d4.set(-12500.0f, 83.0f, -593.0f);
        i_this->field_0x16ec.x = fabsf(i_this->field_0x16d4.x - i_this->demo_cam_eye.x);
        i_this->field_0x16ec.y = fabsf(i_this->field_0x16d4.y - i_this->demo_cam_eye.y);
        i_this->field_0x16ec.z = fabsf(i_this->field_0x16d4.z - i_this->demo_cam_eye.z);
        i_this->field_0x16f8.x = fabsf(i_this->field_0x16e0.x - i_this->demo_cam_ctr.x);
        i_this->field_0x16f8.y = fabsf(i_this->field_0x16e0.y - i_this->demo_cam_ctr.y);
        i_this->field_0x16f8.z = fabsf(i_this->field_0x16e0.z - i_this->demo_cam_ctr.z);
        i_this->demo_morf = 0;
    }
        // fallthrough
    case 37: {
        if (i_this->demo_timer < 110) {
            fpcM_Search(s_spd0_sub, i_this);
        }
        if (i_this->demo_timer < 210) {
            fpcM_Search(s_rdArrowWait_sub, i_this);
        }
        if (i_this->demo_timer > (s16)(165 + BREG_S(6))) {
            cam_3d_morf(i_this, 0.1f + BREG_F(17));
            cLib_addCalc2(&i_this->demo_morf, 0.01f + BREG_F(18), 1.0f, 0.00015f + BREG_F(19));
        }
        if (i_this->demo_timer == 245) {
            dComIfGp_getVibration().StartQuake(4 + TREG_S(5), 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (i_this->demo_timer == 295) {
            dComIfGp_getVibration().StopQuake(0x1f);
        }

        if (i_this->demo_timer > 250 && i_this->demo_timer < 285) {
            cLib_addCalc2(&i_this->field_0x171c, 35.0f + BREG_F(7) - 10.0f, 1.0f, 3.0f + BREG_F(6));
        }

        if (i_this->demo_timer == 325) {
            fpcM_Search(s_wbZrevise_sub, i_this);
        }

        if (i_this->demo_timer == 335) {
            i_this->demo_mode = 38;
            i_this->demo_timer = 0;
            i_this->kiba = 0;
            i_this->action = ACT_B_RUN;
            i_this->mode = 0;
            i_this->demo_cam_ctr.set(-8416.0f, 345.0f, 6.0f);
            i_this->demo_cam_eye.set(-8994.0f, 326.0f, 400.0f);
            i_this->creature.startCreatureVoice(Z2SE_EN_RDB_V_HOICK, -1);
            rider->timer[3] = 700;
        }
    } break;
    case 38: {
        if (i_this->demo_timer == 50) {
            camera->mCamera.Reset(i_this->demo_cam_ctr, i_this->demo_cam_eye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            daPy_getPlayerActorClass()->cancelOriginalDemo();
            horse->cancelOriginalDemo();
            i_this->demo_mode = 0;
            Z2GetAudioMgr()->subBgmStart(Z2BGM_HORSE_BATTLE);
            dKy_change_colpat(3);
        }
    } break;
    case 40: {
        if (!enemy->eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(enemy, 2, 0xffff, 0);
            enemy->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        i_this->demo_mode = 41;
        i_this->demo_cam_zoom = 55.0f;
        i_this->demo_timer = 0;
        i_this->demo_morf = 0;
        i_this->demo_cam_ctr.set(36156.0f, 985.0f, -16931.0f);
        i_this->demo_cam_eye.set(36496.0f, 1358.0f, -17344.0f);
        i_this->field_0x16e0.set(36453.0f, 1116.0f, -16995.0f);
        i_this->field_0x16d4.set(35835.0f, 955.0f, -16867.0f);
        i_this->field_0x16ec.x = fabsf(i_this->field_0x16d4.x - i_this->demo_cam_eye.x) * 0.3f;
        i_this->field_0x16ec.y = fabsf(i_this->field_0x16d4.y - i_this->demo_cam_eye.y) * 0.3f;
        i_this->field_0x16ec.z = fabsf(i_this->field_0x16d4.z - i_this->demo_cam_eye.z) * 0.3f;
        i_this->field_0x16f8.x = fabsf(i_this->field_0x16e0.x - i_this->demo_cam_ctr.x);
        i_this->field_0x16f8.y = fabsf(i_this->field_0x16e0.y - i_this->demo_cam_ctr.y);
        i_this->field_0x16f8.z = fabsf(i_this->field_0x16e0.z - i_this->demo_cam_ctr.z);
        daPy_getPlayerActorClass()->changeOriginalDemo();
        horse->changeOriginalDemo();
        ato.set(34800.0f, -300.0f, -15200.0f);
        horse->setHorsePosAndAngle(&ato, -0x8000);
        horse->changeDemoMode(3, 0);
        ato.set(34800.0f, -300.0f, -20000.0f);
        horse->changeDemoPos0(&ato);
        dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[87]);
        Z2GetAudioMgr()->bgmStart(Z2BGM_HORSE_BATTLE_D02, 0, 0);
        dComIfGp_getEvent()->startCheckSkipEdge(enemy);
    }
        // fallthrough
    case 41: {
        if (i_this->demo_timer == (30 + JREG_S(0))) {
            horse->changeDemoMode(8, 0);
        }

        if (i_this->demo_timer > (70 + JREG_S(3))) {
            cam_3d_morf(i_this, 0.2f);
            cLib_addCalc2(&i_this->demo_morf, 0.2f, 1.0f, 0.01f);
            if (i_this->demo_timer == (150 + JREG_S(4))) {
                i_this->demo_cam_ctr.set(35528.0f, 316.0f, -16987.0f);
                i_this->demo_cam_eye.set(35059.0f, -128.0f, -16992.0f);
                i_this->field_0x16ec.set(0.0f, 0.0f, 0.0f);
                i_this->field_0x16e0.set(34973.0f, -148.0f, -16346.0f);
                i_this->field_0x16f8.x = fabsf(i_this->field_0x16e0.x - i_this->demo_cam_ctr.x);
                i_this->field_0x16f8.y = fabsf(i_this->field_0x16e0.y - i_this->demo_cam_ctr.y);
                i_this->field_0x16f8.z = fabsf(i_this->field_0x16e0.z - i_this->demo_cam_ctr.z);
                i_this->demo_morf = 0;
                i_this->demo_mode = 42;
                i_this->demo_timer = 0;
            }
        }
    } break;
    case 42: {
        i_this->demo_morf = 0.075f + JREG_F(7);
        cam_3d_morf(i_this, 0.5f);
        if (i_this->demo_timer == 20 + JREG_S(5)) {
            i_this->field_0x1722 = 1;
            i_this->field_0x1718 = 0.0f;
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_STRAWFENCE_IGNITION, &saku_p, 0, 0, 1.0f, 1.0f, -1.0f,
                                     -1.0f, 0);
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_STRAWFENCE_IGNITION, &saku_p2, 0, 0, 1.0f, 1.0f,
                                     -1.0f, -1.0f, 0);
        }

        if (i_this->demo_timer == 23 + JREG_S(6)) {
            horse->changeDemoMode(9, 0);
        }

        if (i_this->demo_timer == 83) {
            i_this->demo_cam_ctr.set(34800.0f, 15.7f, -16820.0f);
            i_this->demo_cam_eye.set(34800.0f, 10.0f, -16170.0f);
            i_this->demo_morf = 0;
            i_this->demo_cam_zoom = 55.0f;
            i_this->demo_mode = 43;
            i_this->demo_timer = 0;
            i_this->mode = -100;
        }
    } break;
    case 43: {
        if (i_this->demo_timer == 5) {
            horse->changeDemoMode(1, 0);
            daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 2, 0);
            fpcM_Search(s_rddel_sub, i_this);
        }

        if (i_this->demo_timer > 40) {
            cLib_addCalc2(&i_this->demo_cam_zoom, 4.5f, 0.4f, 3.5f);
            if (i_this->demo_timer == 130) {
                i_this->demo_cam_ctr.set(34843.0f, -92.7f, -35956.0f);
                i_this->demo_cam_eye.set(35167.0f, -202.0f, -35403.0f);
                i_this->field_0x16e0.set(34740.0f, -92.7f, -35966.0f);
                i_this->field_0x16d4.set(34320.0, -202.0, -35490.0);
                i_this->field_0x16ec.x = fabsf(i_this->field_0x16d4.x - i_this->demo_cam_eye.x);
                i_this->field_0x16ec.y = fabsf(i_this->field_0x16d4.y - i_this->demo_cam_eye.y);
                i_this->field_0x16ec.z = fabsf(i_this->field_0x16d4.z - i_this->demo_cam_eye.z);
                i_this->field_0x16f8.x = fabsf(i_this->field_0x16e0.x - i_this->demo_cam_ctr.x);
                i_this->field_0x16f8.y = fabsf(i_this->field_0x16e0.y - i_this->demo_cam_ctr.y);
                i_this->field_0x16f8.z = fabsf(i_this->field_0x16e0.z - i_this->demo_cam_ctr.z);
                i_this->demo_cam_zoom = 55.0f;
                i_this->demo_mode = 44;
                i_this->demo_timer = 0;
                i_this->timer[0] = 20;
            }
        }
    } break;
    case 44: {
        cam_3d_morf(i_this, 0.05f);
        cLib_addCalc2(&i_this->demo_morf, 0.005f, 1.0f, 0.0002f);
        if (i_this->demo_timer == 170) {
            i_this->mode++;
        }

        if (i_this->demo_timer == 258) {
            ato.set(34800.0f, -300.0f, -18700.0f);
            horse->setHorsePosAndAngle(&ato, horse->shape_angle.y);
        }
        if (i_this->demo_timer == 306 + NREG_S(6)) {
            camera->mCamera.Reset(i_this->demo_cam_ctr, i_this->demo_cam_eye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            daPy_getPlayerActorClass()->cancelOriginalDemo();
            horse->cancelOriginalDemo();
            i_this->demo_mode = 0;
            Z2GetAudioMgr()->subBgmStart(Z2BGM_FACE_OFF_BATTLE2);
        }
    } break;
    case 50: {
        if (!boss->enemy.eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(&boss->enemy, 2, 0xffff, 0);
            boss->enemy.eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        i_this->demo_mode = 51;
        i_this->demo_cam_zoom = 55.0f;
        i_this->demo_timer = 0;
        i_this->demo_morf = 0;
        i_this->demo_cam_ctr.set(1679.0, 100.0, 852.0);
        i_this->demo_cam_eye.set(1873.0, 64.0, 527.0);
        daPy_getPlayerActorClass()->changeOriginalDemo();
        dComIfGp_getEvent()->startCheckSkipEdge(enemy);
        dComIfGs_onOneZoneSwitch(4, -1);
    }
    // fallthrough
    case 51: {
        if (i_this->demo_timer < 30) {
            ato.set(1787.0f, 1.75f, 484.0f);
            pla->setPlayerPosAndAngle(&ato, -0x12c3, 0);
        }

        if (i_this->demo_timer == 30) {
            pla->changeDemoMode(2, 1, 0, 0);
            ato.set(1634.0, 1.4, 811.0);
            pla->changeDemoPos0(&ato);
        }

        if (i_this->demo_timer == 139) {
            boss->field_0x6d8 = 2;
        }

        if (i_this->demo_timer == 140) {
            i_this->demo_mode = 52;
            i_this->demo_timer = 0;
            cMtx_YrotS(*calc_mtx, boss->enemy.shape_angle.y);
            mae.x = 0.0f;
            mae.y = 150.0f + JREG_F(7);
            mae.z = 800.0f + JREG_F(8);
            MtxPosition(&mae, &i_this->demo_cam_eye);
            i_this->demo_cam_eye += boss->enemy.current.pos;
            i_this->demo_cam_ctr = boss->enemy.current.pos;
            i_this->demo_cam_ctr.y += 150.0f + JREG_F(9);
            boss->mMode = 2;
            boss->field_0x6b8[0] = 40;
        } else {
            break;
        }
    }
        // fallthrough
    case 52: {
        cLib_addCalc0(&boss->field_0x6e0, 1.0f, 0.3f + KREG_F(3));
        if (i_this->demo_timer == 145) {
            boss->field_0x6d8 = 3;
        }
        if (i_this->demo_timer == 175) {
            boss->mMode = 4;
        }
        if (i_this->demo_timer == 312) {
            i_this->action = 24;
            i_this->mode = 0;
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_DAMAGE, -1);
            cXyz pos(enemy->current.pos);
            pos.y += 150.0f;
            dComIfGp_setHitMark(3, 0, &pos, &enemy->shape_angle, 0, 0);
        }
        if (i_this->demo_timer == 315) {
            i_this->demo_cam_ctr.set(1717.0f, 96.0f, 910.0f);
            i_this->demo_cam_eye.set(2226.0f, 56.0f, 751.0f);
            i_this->field_0x16e0.set(1780.0f, 92.0f, 967.0f);
            i_this->field_0x16d4.set(1988.0f, 69.0f, 475.0f);
            i_this->field_0x16ec.x = fabsf(i_this->field_0x16d4.x - i_this->demo_cam_eye.x);
            i_this->field_0x16ec.y = fabsf(i_this->field_0x16d4.y - i_this->demo_cam_eye.y);
            i_this->field_0x16ec.z = fabsf(i_this->field_0x16d4.z - i_this->demo_cam_eye.z);
            i_this->field_0x16f8.x = fabsf(i_this->field_0x16e0.x - i_this->demo_cam_ctr.x);
            i_this->field_0x16f8.y = fabsf(i_this->field_0x16e0.y - i_this->demo_cam_ctr.y);
            i_this->field_0x16f8.z = fabsf(i_this->field_0x16e0.z - i_this->demo_cam_ctr.z);
            i_this->demo_morf = 0;
            pla->setPlayerPosAndAngle(&pla->current.pos, pla->shape_angle.y - 4000, 0);
        }
        if (i_this->demo_timer == 345) {
            daPy_getPlayerActorClass()->setThrowDamage(boss->enemy.shape_angle.y - 8000 + TREG_S(8),
                                                       40.0f, 25.0f + KREG_F(14), 0, 1, 0);
            daPy_getPlayerActorClass()->changeDemoMode(1, 0, 0, 0);
            cXyz pos(pla->current.pos);
            pos.y += 150.0f;
            dComIfGp_setHitMark(3, 0, &pos, &pla->shape_angle, 0, 0);
        }

        if (i_this->demo_timer == 418) {
            daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 2, 0);
        }

        if (i_this->demo_timer >= 378) {
            cam_3d_morf(i_this, 0.1f + BREG_F(17));
            cLib_addCalc2(&i_this->demo_morf, 0.05f + BREG_F(18), 1.0f, 0.001f + BREG_F(19));
        }

        if (i_this->demo_timer >= 490) {
            camera->mCamera.Reset(i_this->demo_cam_ctr, i_this->demo_cam_eye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            daPy_getPlayerActorClass()->cancelOriginalDemo();
            i_this->demo_mode = 0;
            boss->mMode = 7;
            Z2GetAudioMgr()->subBgmStart(Z2BGM_FACE_OFF_BATTLE3);
        }
    } break;
    case 60: {
        if (!boss->enemy.eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(&boss->enemy, 2, 0xffff, 0);
            boss->enemy.eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        i_this->demo_mode = 61;
        i_this->demo_cam_zoom = 55.0f;
        i_this->demo_timer = 0;
        i_this->demo_morf = 0;
        i_this->demo_cam_ctr.set(2297.0f, 81.0f, 1668.0f);
        i_this->demo_cam_eye.set(2285.0f, 95.0f, 1988.0f);
        boss->enemy.current.pos.set(2341.0f, 1.0f, 1292.0f);
        boss->enemy.shape_angle.y = boss->enemy.current.angle.y = 2392;
        daPy_getPlayerActorClass()->changeOriginalDemo();
        daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 2, 0);
        dComIfGs_onOneZoneSwitch(5, -1);
    }
        // fallthrough
    case 61: {
        if (i_this->demo_timer == 170) {
            daPy_getPlayerActorClass()->changeDemoMode(0xc, 0, 0, 0);
        }

        ato.set(2120.0f + BREG_F(2), pla->current.pos.y, 1200.0f + BREG_F(3));
        pla->setPlayerPosAndAngle(&ato, 5300, 0);
        center.y = boss->enemy.eyePos.y + BREG_F(16);
        if (center.y < 81.0f) {
            center.y = 81.0f;
        }

        if (center.y > 120.0f + BREG_F(15)) {
            center.y = 120.0f + BREG_F(15);
        }

        cLib_addCalc2(&i_this->demo_cam_ctr.y, center.y, 0.1f, 10.0f);
        if (i_this->demo_timer == 260) {
            boss->mMode = 3;
        }

        if (i_this->demo_timer == 630) {
            i_this->demo_cam_ctr.set(2272.0f, 136.0f, 1555.0f);
            i_this->demo_cam_eye.set(2056.0f, 160.0f, 1318.0f);
            i_this->demo_mode = 62;
            i_this->demo_timer = 0;
        }
    } break;
    case 62: {
        daObjCRVSTEEL_c* crvSteel = (daObjCRVSTEEL_c*)fopAcM_SearchByName(PROC_Obj_CRVSTEEL);
        if (i_this->demo_timer == (s16)(20 + AREG_S(4))) {
            crvSteel->OpenSet(20.0f + AREG_F(3), 350.0f + AREG_F(4));
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_CRVN_URA_GATE, &crvSteel->current.pos, 0, 0, 1.0f,
                                     1.0f, -1.0f, -1.0f, 0);
        }

        if (i_this->demo_timer == (s16)(130 + AREG_S(5))) {
            crvSteel->CloseSet(-40.0f + AREG_F(5));
        }

        if (i_this->demo_timer == (s16)(140 + AREG_S(5))) {
            dComIfGp_getVibration().StartShock(5, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (i_this->demo_timer != 170) {
            break;
        }
        boss->mMode = 10;
        boss->field_0x680 = 0;
        i_this->field_0x16e0.set(2834.0f, 490.0f, 1584.0f);
        i_this->field_0x16d4.set(1978.0f, 87.0f, 1225.0f);
        i_this->field_0x16ec.x = fabsf(i_this->field_0x16d4.x - i_this->demo_cam_eye.x);
        i_this->field_0x16ec.y = fabsf(i_this->field_0x16d4.y - i_this->demo_cam_eye.y);
        i_this->field_0x16ec.z = fabsf(i_this->field_0x16d4.z - i_this->demo_cam_eye.z);
        i_this->field_0x16f8.x = fabsf(i_this->field_0x16e0.x - i_this->demo_cam_ctr.x);
        i_this->field_0x16f8.y = fabsf(i_this->field_0x16e0.y - i_this->demo_cam_ctr.y);
        i_this->field_0x16f8.z = fabsf(i_this->field_0x16e0.z - i_this->demo_cam_ctr.z);
        i_this->demo_morf = 0;
        i_this->demo_mode = 63;
        i_this->demo_timer = 0;
        // fallthrough
    }
    case 63: {
        if (i_this->demo_timer == 40) {
            boss->field_0xfe4 = 1;
            Z2GetAudioMgr()->bgmStart(Z2BGM_EVENT02, 0, 0);
        }

        if (i_this->demo_timer == 60) {
            boss->field_0x6d8 = 4;
        }

        if (i_this->demo_timer > 60) {
            cam_3d_morf(i_this, 0.05f + BREG_F(17));
            cLib_addCalc2(&i_this->demo_morf, 0.05f + BREG_F(18), 1.0f, 0.0002f + BREG_F(19));
        }

        if (i_this->demo_timer == 110) {
            daPy_getPlayerActorClass()->changeDemoMode(0x14, 0, 0, 0);
        }

        if (i_this->demo_timer != 220) {
            break;
        }

        i_this->demo_cam_ctr.set(1425.0f, 259.0f, 1583.0f);
        i_this->demo_cam_eye.set(2265.0f, 127.0f, 1011.0f);
        i_this->field_0x16e0.set(1267.0f, 259.0f, 821.0f);
        i_this->field_0x16d4.set(2265.0f, 127.0f, 1011.0f);
        i_this->field_0x16ec.x = fabsf(i_this->field_0x16d4.x - i_this->demo_cam_eye.x);
        i_this->field_0x16ec.y = fabsf(i_this->field_0x16d4.y - i_this->demo_cam_eye.y);
        i_this->field_0x16ec.z = fabsf(i_this->field_0x16d4.z - i_this->demo_cam_eye.z);
        i_this->field_0x16f8.x = fabsf(i_this->field_0x16e0.x - i_this->demo_cam_ctr.x);
        i_this->field_0x16f8.y = fabsf(i_this->field_0x16e0.y - i_this->demo_cam_ctr.y);
        i_this->field_0x16f8.z = fabsf(i_this->field_0x16e0.z - i_this->demo_cam_ctr.z);
        i_this->demo_morf = 0;
        i_this->demo_cam_zoom = 60.0f;
        i_this->demo_mode = 64;
        i_this->demo_timer = 0;
        daPy_getPlayerActorClass()->changeDemoMode(0x14, 0, 0, 0);
    }
        // fallthrough
    case 64: {
        if (i_this->demo_timer > 60) {
            cam_3d_morf(i_this, 0.05f + BREG_F(17));
            cLib_addCalc2(&i_this->demo_morf, 0.05f + BREG_F(18), 1.0f, 0.0002f + BREG_F(19));
        }

        if (i_this->demo_timer == 170) {
            i_this->field_0x1720 = 0;
        }

        if (i_this->demo_timer == 250) {
            camera->mCamera.Reset(i_this->demo_cam_ctr, i_this->demo_cam_eye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            daPy_getPlayerActorClass()->cancelOriginalDemo();
            i_this->demo_mode = 0;
        }
    } break;
    case 70: {
        if (!boss->enemy.eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(&boss->enemy, 2, 0xffff, 0);
            boss->enemy.eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        i_this->demo_mode = 71;
        i_this->demo_cam_zoom = 55.0f;
        i_this->demo_timer = 0;
        i_this->demo_morf = 0;
        i_this->demo_cam_ctr.set(1895.0, 159.0, -129.0);
        i_this->demo_cam_eye.set(1984.0, 151.0, 158.0);
        daPy_getPlayerActorClass()->changeOriginalDemo();
        fpcM_Search(s_rddel_sub, i_this);
        boss->field_0x6d8 = 1;
    }
        // fallthrough
    case 71: {
        ato.set(1800.0f, pla->current.pos.y, -192.0f);
        pla->setPlayerPosAndAngle(&ato, 0, 0);
        if (i_this->demo_timer == (s16)(2 + VREG_S(1))) {
            daObjCRVGATE_c* crvGate = (daObjCRVGATE_c*)fopAcM_SearchByName(PROC_Obj_CRVGATE);
            crvGate->SetB_Close();
        }

        if (i_this->demo_timer == (s16)(25 + VREG_S(0))) {
            daPy_getPlayerActorClass()->changeDemoMode(0x19, 0, 0, 0);
        }

        if (i_this->demo_timer == 73) {
            camera->mCamera.Reset(i_this->demo_cam_ctr, i_this->demo_cam_eye);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            daPy_getPlayerActorClass()->cancelOriginalDemo();
            i_this->demo_mode = 0;
        }
    } break;
    case 80: {
        if (!enemy->eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(enemy, 2, 0xffff, 0);
            enemy->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        i_this->demo_mode = 81;
        i_this->demo_cam_zoom = 55.0f;
        i_this->demo_timer = 0;
        i_this->demo_morf = 0.0f;
        enemy->current.pos.x = 1800.0f;
        enemy->current.pos.z = 0.0f;
        i_this->demo_cam_ctr.set(1631.0f, 195.0f, -224.0f);
        i_this->demo_cam_eye.set(1233.0f, 167.0f, 195.0f);
        daPy_getPlayerActorClass()->changeOriginalDemo();
    }
        // fallthrough
    case 81: {
        enemy->current.angle.y = 0x8000;
        enemy->shape_angle.y = 0x8000;
        i_this->turn_step = 0;
        cLib_addCalc2(&i_this->demo_cam_ctr.x, enemy->eyePos.x, 0.2f, 200.0f);
        cLib_addCalc2(&i_this->demo_cam_ctr.y, enemy->eyePos.y, 0.2f, 200.0f);
        cLib_addCalc2(&i_this->demo_cam_ctr.z, enemy->eyePos.z, 0.2f, 200.0f);
        if (i_this->demo_timer > 20) {
            if (i_this->demo_timer >= 52) {
                if (i_this->demo_timer == 52) {
                    i_this->demo_cam_eye = enemy->current.pos;
                    i_this->demo_cam_eye.x += 300.0f + VREG_F(8);
                    i_this->demo_cam_eye.y += 150.0f + VREG_F(9);
                    i_this->demo_cam_eye.z -= 1400.0f + VREG_F(d10);
                }
            } else {
                i_this->demo_cam_eye = enemy->current.pos;
                i_this->demo_cam_eye.y += 400.0f + VREG_F(6);
                i_this->demo_cam_eye.z += 700.0f + VREG_F(7);
            }
        }
        if (i_this->demo_timer == 140) {
            dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[90]);
            dComIfGp_setNextStage("F_SP118", 0, 3, 0, 0.0f, 0, 1, 0, 0, 1, 0);
        }
    } break;
    case 90: {
        if (!enemy->eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(enemy, 2, 0xffff, 0);
            enemy->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        i_this->demo_mode = 91;
        i_this->demo_timer = 0;
        i_this->demo_cam_zoom = 55.0f + KREG_F(7);
        i_this->demo_timer = 0;
        i_this->demo_morf = 0;
        daPy_getPlayerActorClass()->changeOriginalDemo();
        horse->changeOriginalDemo();
        enemy->current.pos.set(-93640.0f, enemy->current.pos.y, 44000.0f);
        enemy->current.angle.y = enemy->shape_angle.y = 0x8000;
        i_this->demo_cam_ctr = enemy->current.pos;
        i_this->demo_cam_ctr.y = enemy->eyePos.y + 200.0f + VREG_F(0);
        i_this->demo_cam_eye = enemy->current.pos;
        i_this->demo_cam_eye.y += 300.0f + VREG_F(1);
        i_this->demo_cam_eye.z += 500.0f + VREG_F(2);
        horse->changeDemoMode(1, 0);
        daPy_getPlayerActorClass()->changeDemoMode(1, 0, 0, 0);
    }
        // fallthrough
    case 91: {
        ato.set(-93335.0f + JREG_F(17), horse->current.pos.y, 44500.0f);
        horse->setHorsePosAndAngle(&ato, 0);
        cLib_addCalc2(&i_this->demo_cam_ctr.x, enemy->eyePos.x, 0.2f, 200.0f);
        cLib_addCalc2(&i_this->demo_cam_ctr.y, 150.0f + enemy->eyePos.y + VREG_F(0), 0.2f, 200.0f);
        cLib_addCalc2(&i_this->demo_cam_ctr.z, enemy->eyePos.z, 0.2f, 200.0f);
        i_this->demo_cam_eye.z += enemy->speed.z * (0.8f + VREG_F(3));
        if (i_this->demo_timer == 111) {
            i_this->demo_mode = 92;
            i_this->demo_timer = 0;
            i_this->demo_cam_eye = enemy->current.pos;
            i_this->demo_cam_eye.x += -300.0f + VREG_F(5);
            i_this->demo_cam_eye.y += 100.0f + VREG_F(6);
            i_this->demo_cam_eye.z += -1300.0f + VREG_F(7);
        }

        i_this->field_0x171c = 23.0f + JREG_F(7);
        if (!daPy_getPlayerActorClass()->checkHorseRide()) {
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            daPy_getPlayerActorClass()->cancelOriginalDemo();
            i_this->demo_mode = 0;
        }
    } break;
    case 92: {
        cLib_addCalc2(&i_this->demo_cam_ctr.x, enemy->eyePos.x, 0.2f, 200.0f);
        cLib_addCalc2(&i_this->demo_cam_ctr.y, enemy->eyePos.y + 100.0f + VREG_F(8), 0.2f, 200.0f);
        cLib_addCalc2(&i_this->demo_cam_ctr.z, enemy->eyePos.z, 0.2f, 200.0f);
        if (i_this->demo_timer != 60) {
            break;
        }

        i_this->demo_mode = 93;
        i_this->demo_timer = 0;
        i_this->demo_cam_eye = enemy->current.pos;
        i_this->demo_cam_eye.x += 100.0f + VREG_F(8);
        i_this->demo_cam_eye.y += 600.0f + VREG_F(9);
        i_this->demo_cam_eye.z += -500.0f + VREG_F(10);
        i_this->demo_cam_ctr = rider->enemy.current.pos;
        i_this->demo_cam_ctr.y = rider->enemy.current.pos.y + 100.0f + KREG_F(11);
    }
        // fallthrough
    case 93: {
        if (rider != NULL) {
            cLib_addCalc2(&i_this->demo_morf, 1000.0f, 1.0f, 100.0f + KREG_F(10));
            cLib_addCalc2(&i_this->demo_cam_ctr.x, rider->enemy.current.pos.x, 0.5f + KREG_F(8),
                          i_this->demo_morf);
            cLib_addCalc2(&i_this->demo_cam_ctr.y,
                          rider->enemy.current.pos.y + 100.0f + KREG_F(11), 0.5f + KREG_F(8),
                          i_this->demo_morf);
            cLib_addCalc2(&i_this->demo_cam_ctr.z, rider->enemy.current.pos.z, 0.5f + KREG_F(8),
                          i_this->demo_morf);
            cLib_addCalc2(&i_this->demo_cam_eye.x, rider->enemy.current.pos.x - 10.0f, 0.05f,
                          12.0f + NREG_F(3));
            if (i_this->demo_timer >= 40) {
                if (i_this->demo_timer == 40) {
                    i_this->eye = rider->enemy.current.pos;
                }

                for (int i = 0; i < 2; i++) {
                    static u16 key_eno[2] = {
                        dPa_RM(ID_ZM_S_KEYLIGHT00),
                        dPa_RM(ID_ZM_S_KEYLIGHT01),
                    };
                    i_this->jump_wtra[i] = dComIfGp_particle_set(
                        i_this->jump_wtra[i], key_eno[i], &i_this->eye, 0, 0);
                }
                mae = pla->eyePos - i_this->eye;
                cMtx_YrotS(*calc_mtx, cM_atan2s(mae.x, mae.z));
                cMtx_XrotM(*calc_mtx, -cM_atan2s(mae.y, JMAFastSqrt(mae.x * mae.x +
                                                                         mae.z * mae.z)));
                mae.x = 0.0f;
                mae.y = 0.0f;
                mae.z = 30.0f + VREG_F(11);
                MtxPosition(&mae, &ato);
                i_this->eye += ato;
            }

            if (i_this->demo_timer == 100) {
                i_this->demo_mode = 94;
                i_this->demo_timer = 0;
                i_this->demo_cam_eye.set(-93217.0f, -5783.0f, 44734.0f);
                i_this->demo_cam_ctr.set(-92351.0f, -4742.0f, 43295.0f);
                i_this->eye = i_this->demo_cam_ctr;
                i_this->field_0x1430 = 1;
                enemy->current.angle.y = pla->shape_angle.y;
                fopAcM_delete(&rider->enemy);
            }
        }
    } break;
    case 94: {
        for (int i = 0; i < 2; i++) {
            static u16 key_eno[2] = {
                dPa_RM(ID_ZM_S_KEYLIGHT00),
                dPa_RM(ID_ZM_S_KEYLIGHT01),
            };
            i_this->jump_wtra[i] = dComIfGp_particle_set(i_this->jump_wtra[i], key_eno[i],
                                                            &i_this->eye, 0, 0);
        }
        mae = pla->eyePos - i_this->eye;
        if (mae.abs() < 50.0f) {
            i_this->demo_mode = 95;
            i_this->demo_timer = 0;
            daPy_getPlayerActorClass()->changeDemoMode(59, 0, 0, 0);
            i_this->eye = pla->eyePos;
        } else {
            cMtx_YrotS(*calc_mtx, cM_atan2s(mae.x, mae.z));
            cMtx_XrotM(*calc_mtx, -cM_atan2s(mae.y, JMAFastSqrt(mae.x * mae.x +
                                                                     mae.z * mae.z)));
            mae.x = 0.0f;
            mae.y = 0.0f;
            mae.z = 30.0f + VREG_F(11);
            MtxPosition(&mae, &ato);
            i_this->eye += ato;
        }
    }
        // fallthrough
    case 95: {
        cLib_addCalc2(&i_this->demo_cam_ctr.x, i_this->eye.x, 0.2f, 100.0f);
        cLib_addCalc2(&i_this->demo_cam_ctr.y, i_this->eye.y, 0.2f, 100.0f);
        cLib_addCalc2(&i_this->demo_cam_ctr.z, i_this->eye.z, 0.2f, 100.0f);
        if (i_this->demo_mode == 95) {
            if (i_this->demo_timer == 50) {
                daPy_getPlayerActorClass()->changeDemoMode(0xb, 0xf3, 0, 0);
            }
            if (i_this->demo_timer >= 60) {
                cLib_addCalc2(&i_this->demo_cam_zoom, 30.0f, 0.2f, 1.5f);
            }
            if (i_this->demo_timer >= 120 && !dMsgObject_isTalkNowCheck()) {
                i_this->demo_mode = 96;
                i_this->demo_timer = 0;
                daPy_getPlayerActorClass()->changeDemoMode(1, 1, 0, 0);
                i_this->demo_cam_ctr.set(-93375.0f, -5700.0f, 44622.0f);
                i_this->demo_cam_eye.set(-93153.0f, -5635.0f, 44717.0f);
                i_this->demo_cam_zoom = 55.0f;
                enemy->current.pos = pla->current.pos;
                enemy->current.pos.z += 3000.0f;
            }
        }
    } break;
    case 96: {
        if (i_this->demo_timer >= 100) {
            fopAc_ac_c* coach = fopAcM_SearchByName(PROC_NPC_COACH);
            enemy->current.pos = coach->eyePos;
            enemy->current.pos.z = enemy->current.pos.z - VREG_F(17);
        }
        if (i_this->demo_timer >= 220 && !dMsgObject_isTalkNowCheck()) {
            i_this->demo_mode = 97;
            i_this->demo_timer = 0;
        }
    } break;
    case 97: {
        fopAc_ac_c* coach = fopAcM_SearchByName(PROC_NPC_COACH);
        enemy->current.pos = coach->eyePos;
        enemy->current.pos.z = enemy->current.pos.z - VREG_F(17);
        if (i_this->demo_timer == 120) {
            dComIfGp_setNextStage("F_SP121", 99, 13, 2, 0.0f, 0, 1, 0, 0, 1, 0);
        }
    } break;
    }

    if (i_this->demo_mode != 0) {
        center = i_this->demo_cam_ctr;
        eye = i_this->demo_cam_eye;
        s16 bank = 0;
        if (i_this->field_0x171c > 0.0f) {
            i_this->demo_cam_ctr.y += i_this->field_0x171c * cM_ssin(i_this->demo_timer * 0x2400);
            bank = (10.0f + BREG_F(4)) *
                        (i_this->field_0x171c * cM_scos(i_this->demo_timer * 0x2100));
            cLib_addCalc0(&i_this->field_0x171c, 1.0f, 1.5f + BREG_F(5));
        }
        camera->mCamera.Set(center, eye, bank, i_this->demo_cam_zoom);
        i_this->demo_timer++;
        if (i_this->demo_timer > 10000) {
            i_this->demo_timer = 10000;
        }

        if (i_this->demo_mode < 10 || (i_this->demo_mode >= 30 && i_this->demo_mode < 60)) {
            if (dComIfGp_getEvent()->checkSkipEdge()) {
                cDmr_SkipInfo = 40;
                Z2GetAudioMgr()->bgmStop(0, 0);
                if (i_this->demo_mode < 10 || dComIfG_play_c::getLayerNo(0) == 4) {
                    dComIfGp_setNextStage("F_SP102", 1, 0, 4, 0.0f, 0, 1, 13,
                                                          0, 1, 0);
                    Z2GetAudioMgr()->bgmStreamStop(0x1e);
                    if (i_this->demo_mode < 10) {
                        cDmr_SkipInfo = 0;
                    }
                    i_this->demo_mode = 1000;
                } else if (i_this->demo_mode < 50) {
                    dComIfGp_setNextStage("F_SP102", 0, 0, 0, 0.0f, 0, 1, 13,
                                                          0, 1, 0);
                    Z2GetAudioMgr()->bgmStreamStop(0x1e);
                    i_this->demo_mode = 1000;
                } else {
                    cDmr_SkipInfo = 0;
                    mDoGph_gInf_c::fadeIn(0.066, g_blackColor);
                    i_this->action = ACT_LR_DAMAGE;
                    anm_init(i_this, 0x12, 0.0f, 2, 1.0);
                    i_this->mode = 3;
                    enemy->current.pos.x = 828.0f;
                    enemy->current.pos.z = 554.0f;
                    enemy->current.angle.y = enemy->shape_angle.y = 2048;
                    boss->mMode = 7;
                    boss->field_0xfcf = 0;
                    boss->field_0x6e0 = 0;
                    boss->field_0x6d8 = 3;
                    camera->mCamera.Reset(i_this->demo_cam_ctr, i_this->demo_cam_eye);
                    camera->mCamera.Start();
                    camera->mCamera.SetTrimSize(0);
                    dComIfGp_event_reset();
                    daPy_getPlayerActorClass()->cancelOriginalDemo();
                    i_this->demo_mode = 0;
                    Z2GetAudioMgr()->subBgmStart(Z2BGM_FACE_OFF_BATTLE3);
                }
            }
        }
    }
}

static void anm_se_eff_set(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    J3DModel* model = i_this->anm_p->getModel();

    if (i_this->anmID == 12 || i_this->anmID == 13) {
        if (i_this->anm_p->checkFrame(9.0f)) {
            i_this->creature.startCreatureSound(Z2SE_CM_BODYFALL_L, 0, -1);
            i_this->field_0x1721 = 1;
        }
    } else if (i_this->anmID == 38) {
        i_this->anm_se_eff = dComIfGp_particle_set(
            i_this->anm_se_eff, dPa_RM(ID_ZI_S_BB_STARTHANAIKI),
            &actor->current.pos, &actor->tevStr);

        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(i_this->anm_se_eff);
        if (emitter != NULL) {
            emitter->setGlobalSRTMatrix(model->getAnmMtx(15));
        }

        if (i_this->anm_p->checkFrame(1.0f)) {
            cXyz scale(actor->scale.z, actor->scale.z, actor->scale.z);
            dComIfGp_particle_set(dPa_RM(ID_ZI_S_BB_STARTCLOD), &actor->current.pos,
                                 &actor->tevStr, &actor->shape_angle, &scale);
            dComIfGp_particle_set(dPa_RM(ID_ZI_S_BB_STARTFOOTMARK), &actor->current.pos,
                                 &actor->tevStr, &actor->shape_angle, &scale);
        }
    } else if (i_this->anmID == 5) {
        if (i_this->anm_p->checkFrame(1.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_CRASH, -1);
            i_this->creature.startCreatureSound(Z2SE_EN_WB_RUNDOWN, 0, -1);
        } else if (i_this->anm_p->checkFrame(15.0f)) {
            i_this->creature.startCreatureSound(Z2SE_CM_BODYFALL_L, 0, -1);
        }
    } else if (i_this->anmID == 6) {
        if (i_this->anm_p->checkFrame(2.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_UP, -1);
        }
    } else if (i_this->anmID == 7) {
        if (i_this->anm_p->checkFrame(18.0f) || i_this->anm_p->checkFrame(40.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_BREATH, -1);
        }
    } else if (i_this->anmID == 8) {
        if (i_this->anm_p->checkFrame(4.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_INANAKI_DMG, -1);
        }
    } else if (i_this->anmID == 12) {
        if (i_this->anm_p->checkFrame(1.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_DOWN, -1);
        }
    } else if (i_this->anmID == 13) {
        if (i_this->anm_p->checkFrame(1.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_DOWN, -1);
        }
    } else if (i_this->anmID == 16) {
        if (i_this->anm_p->checkFrame(12.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_BREATH, -1);
        }
    } else if (i_this->anmID == 17) {
        if (i_this->anm_p->checkFrame(16.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_BREATH, -1);
        }
    } else if (i_this->anmID == 9) {
        if (i_this->anm_p->checkFrame(1.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_DAMAGE, -1);
        }
    } else if (i_this->anmID == 27) {
        if (i_this->anm_p->checkFrame(14.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_INANAKI, -1);
        }
    } else if (i_this->anmID == 31) {
        if (i_this->anm_p->checkFrame(2.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_RIDE, -1);
        }
    } else if (i_this->anmID == 32 || i_this->anmID == 33) {
        if (i_this->anm_p->checkFrame(7.5f) || i_this->anm_p->checkFrame(12.5f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_BREATH, -1);
        }
    } else if (i_this->anmID == 34) {
        if (i_this->anm_p->checkFrame(3.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_DAMAGE, -1);
        }
    } else if (i_this->anmID == 40) {
        if (i_this->anm_p->checkFrame(6.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_BREATH, -1);
        }
    } else if (i_this->anmID == 42) {
        if (i_this->anm_p->checkFrame(11.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_BREATH, -1);
        }
    } else if (i_this->anmID == 43) {
        if (i_this->anm_p->checkFrame(25.0f)) {
            i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_BREATH, -1);
        }
    }

    // Special sound effects for the leader Bulblin
    if (i_this->field_0x79d != 0) {
        if (i_this->anmID == 32 || i_this->anmID == 33) {
            if (i_this->anm_p->checkFrame(4.0f)) {
                i_this->creature.startCreatureVoice(Z2SE_EN_BB_V_BREATH, -1);
            }
        } else if (i_this->anmID == 43) {
            if (i_this->anm_p->checkFrame(14.0f)) {
                i_this->creature.startCreatureVoice(Z2SE_EN_BB_V_BREATH, -1);
            }
        } else if (i_this->anmID == 42) {
            if (i_this->anm_p->checkFrame(6.0f)) {
                i_this->creature.startCreatureVoice(Z2SE_EN_BB_V_BREATH, -1);
            }
        } else if (i_this->anmID == 27) {
            if (i_this->anm_p->checkFrame(17.0f)) {
                i_this->creature.startCreatureVoice(Z2SE_EN_BB_V_INANAKI, -1);
            }
        }
    }
}

static int c_start;

#if DEBUG
static f32 dummy(){return 35.f;}
#endif

static int daE_WB_Execute(e_wb_class* i_this) {
    if (c_start == 0) {
        if (dComIfGp_event_runCheck()) {
            if (lbl_244_bss_46 != 0 || cDmrNowMidnaTalk()) {
                return 1;
            }
        }
    }

    if (i_this->demo_mode == 1000) {
        return 1;
    }

    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;

    cXyz mae;
    cXyz ato;

    actor->scale.z = l_HIO.base_size;

    if (fopAcM_CheckCondition(actor, fopAcCnd_NODRAW_e)) {
        i_this->field_0x5bf = 1;
    } else {
        i_this->field_0x5bf = 0;
    }

    if (i_this->field_0x79d != 0) {
        actor->scale.z = actor->scale.z * l_HIO.leader_size_ratio;
    }

    i_this->field_0x68e++;

    if (i_this->field_0x1430 == 0) {
        fopAcM_OffStatus(actor, 0);
        actor->attention_info.flags = 0;
        i_this->StatusFlag &= (u16)3;

        for (int i = 0; i < 4; i++) {
            if (i_this->timer[i] != 0) {
                i_this->timer[i]--;
            }
        }

        if (i_this->field_0x6a0 != 0) {
            i_this->field_0x6a0--;
        }

        if (i_this->dash_timer != 0) {
            i_this->dash_timer--;
        }

        action(i_this);
    }

    if (i_this->field_0x79d != 0 || i_this->demo_mode != 0) {
        demo_camera(i_this);
    }

    if (i_this->field_0x1430 != 0) {
        actor->eyePos = actor->current.pos;
        return 1;
    }

    if (i_this->field_0x79d == 0 || i_this->mSpeedCapTimer == 0) {
        cXyz* move_p = i_this->mStts.GetCCMoveP();
        if (move_p != NULL) {
            f32 move_scale = TREG_F(19) + 0.3f;
            actor->current.pos.x += move_p->x * move_scale;
            actor->current.pos.y += move_p->y * move_scale;
            actor->current.pos.z += move_p->z * move_scale;
        }
    }

    if ((i_this->field_0x5bf == 0) && !dComIfGp_event_runCheck()) {
        s16 wall_check = e_wb_wall_check(i_this);
        if (wall_check != 0 && wall_check > -0x2000 && wall_check < 0x2000) {
            if ((i_this->action == ACT_C_F_RUN || i_this->action == ACT_PL_RIDE2 ||
                    i_this->action == ACT_A_RUN) &&
                (actor->speedF >= 5.0f))
            {
                if (actor->speedF > l_HIO.max_speed - 5.0f) {
                    if (i_this->action == ACT_PL_RIDE2) {
                        dComIfGp_getVibration().StartShock(8, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
                    }
                    i_this->action = ACT_BG_DAMAGE;
                    i_this->mode = 0;
                    i_this->anm_spd = 50.0f;
                    i_this->creature.startCreatureVoice(Z2SE_EN_WB_V_DAMAGE, -1);
                } else {
                    if (i_this->action != ACT_PL_RIDE2) {
                        if (i_this->action == ACT_C_F_RUN) {
                            i_this->action = ACT_F_WAIT;
                        } else {
                            i_this->action = ACT_WAIT;
                        }
                        i_this->mode = 0;
                    }
                }

                if (i_this->action != ACT_PL_RIDE2) {
                    actor->current.pos = actor->old.pos;
                }
            }

            dBgS_LinChk linChk;
            cXyz start;
            start = actor->current.pos;
            start.y += 100.0f;
            linChk.Set(&start, &actor->eyePos, actor);

            if (dComIfG_Bgsp().LineCross(&linChk)) {
                cMtx_YrotS(*calc_mtx, actor->shape_angle.y);
                mae.x = 0.0f;
                mae.y = 0.0f;
                mae.z = KREG_F(11) + -20.0f;
                MtxPosition(&mae, &ato);
                actor->current.pos += ato;

                if (i_this->action != ACT_PL_RIDE2) {
                    actor->speedF = 0.0f;
                }
            }
        }
    }

    i_this->Bgc.CrrPos(dComIfG_Bgsp());
    cLib_addCalcAngleS2(&actor->shape_angle.y, actor->current.angle.y, 4, 0x2000);

    if (i_this->Bgc.ChkGroundHit()) {
        dBgS_GndChk gndChk;
        Vec pos;
        cXyz ato2;

        cMtx_YrotS(*calc_mtx, actor->shape_angle.y);
        mae.x = 0.0f;
        mae.y = 200.0f;
        mae.z = 100.0f;
        MtxPosition(&mae, &ato);
        ato += actor->current.pos;

        mae.z = -100.0f;
        MtxPosition(&mae, &ato2);
        ato2 += actor->current.pos;

        pos.x = ato.x;
        pos.y = ato.y;
        pos.z = ato.z;

        gndChk.SetPos(&pos);
        ato.y = dComIfG_Bgsp().GroundCross(&gndChk);

        pos.x = ato2.x;
        pos.y = ato2.y;
        pos.z = ato2.z;

        gndChk.SetPos(&pos);
        ato2.y = dComIfG_Bgsp().GroundCross(&gndChk);

        if (fabsf(ato.y - ato2.y) <= 200.0f) {
            actor->current.angle.x = -cM_atan2s(ato.y - ato2.y, 200.0f);
        }
        
        actor->speed.y = -20.0f;
    }
    
    cLib_addCalcAngleS2(&actor->shape_angle.x, actor->current.angle.x, 4, 0x1000);
    cLib_addCalcAngleS2(&actor->shape_angle.z, actor->current.angle.z, 4, 0x1000);
    
    mDoMtx_stack_c::transS(actor->current.pos.x, actor->current.pos.y, actor->current.pos.z);
    mDoMtx_stack_c::YrotM(actor->shape_angle.y + i_this->field_0x7a4);
    mDoMtx_stack_c::XrotM((s16)actor->shape_angle.x);
    mDoMtx_stack_c::ZrotM(actor->shape_angle.z);
    mDoMtx_stack_c::transM(0.0f, 150.0f, 0.0f);
    mDoMtx_stack_c::YrotM((s16)i_this->field_0x6ae.y);
    mDoMtx_stack_c::XrotM((s16)i_this->field_0x6ae.x);
    mDoMtx_stack_c::transM(0.0f, -150.0f, -50.0f);
    
    f32 scale = actor->scale.z;
    mDoMtx_stack_c::scaleM(scale, scale, scale);
    
    J3DModel* model = i_this->anm_p->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    
    int soundParam;
    
    if (-G_CM3D_F_INF != i_this->Bgc.GetGroundH()) {
        if (i_this->Bgc.ChkWaterHit() && i_this->Bgc.m_wtr.GetHeight() > actor->current.pos.y)
        {
            soundParam = dKy_pol_sound_get(&i_this->Bgc.m_wtr);
        } else if (i_this->Bgc.ChkGroundHit()) {
            soundParam = dKy_pol_sound_get(&i_this->Bgc.m_gnd);
        } else {
            soundParam = 0;
        }
    } else {
        soundParam = 0;
    }
    
    i_this->anm_p->play(soundParam, dComIfGp_getReverb(fopAcM_GetRoomNo(actor)));
    i_this->anm_p->modelCalc();
    
    anm_se_eff_set(i_this);
    
    if (i_this->action != ACT_EVENT) {
        f32 size_scale = 1.0f;
        if (i_this->field_0x79d >= 2) {
            size_scale += JREG_F(15) + 1.1f;
        }
        
        MTXCopy(model->getAnmMtx(i_this->field_0x688 + 0xd), *calc_mtx);
        mae.set(KREG_F(13) + -20.0f, KREG_F(14) + -30.0f, KREG_F(15));
        MtxPosition(&mae, &actor->eyePos);

        actor->attention_info.position.set(
            actor->current.pos.x - cM_ssin(actor->shape_angle.y) * 30.0f,
            actor->current.pos.y + 150.0f,
            actor->current.pos.z - cM_scos(actor->shape_angle.y) * 30.0f);

        i_this->cc_sph[0].SetC(actor->eyePos);
        i_this->cc_sph[0].SetR((KREG_F(16) + 40.0f) * l_HIO.base_size * size_scale);
        
        u32 tg_group;
        if (i_this->action == ACT_PL_RIDE) {
            tg_group = 4;
        } else {
            tg_group = 2;
        }
        
        for (int i = 0; i < 7; i++) {
            i_this->cc_sph[i].SetTgGrp(tg_group);
        }
        
        dComIfG_Ccsp()->Set(&i_this->cc_sph[0]);
        
        if (i_this->pursuit_flg != 0) {
            
            mae.set(KREG_F(10) + -30.0f, KREG_F(11) + -50.0f, KREG_F(12));
            MtxPosition(&mae, &ato);
            i_this->at_sph.SetC(ato);
            i_this->at_sph.SetR((KREG_F(8) + 55.0f) * l_HIO.base_size);
            
            dComIfG_Ccsp()->Set(&i_this->at_sph);
            
            if ((i_this->action == ACT_PL_RIDE) || (i_this->action == ACT_PL_RIDE2)) {
                i_this->at_sph.SetAtType(AT_TYPE_NORMAL_SWORD);
            } else {
                i_this->at_sph.SetAtType(AT_TYPE_1000);
            }
            
            if (actor->speedF > l_HIO.max_speed - 2.0f) {
                i_this->at_sph.SetAtSpl(dCcG_At_Spl_UNK_7);
                
                if (i_this->at_sph.ChkAtHit()) {
                    cCcD_Obj* hit_obj = i_this->at_sph.GetAtHitObj();
                    fopAc_ac_c* hit_actor = dCc_GetAc(hit_obj->GetAc());
                    
                    if (hit_actor != NULL) {
                        if (fopAcM_GetName(hit_actor) == PROC_E_RD) {
                            i_this->creature.startCreatureSound(Z2SE_EN_WB_RUNDOWN, 0, -1);
                        } else if (fopAcM_GetName(hit_actor) == PROC_ALINK) {
                            if (daPy_getPlayerActorClass()->checkPlayerGuard()) {
                                dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
                            }
                        }
                    }
                }
            } else {
                i_this->at_sph.SetAtSpl(dCcG_At_Spl_UNK_0);
            }
            
            if (daPy_getPlayerActorClass()->checkHorseRide()) {
                i_this->at_sph.OffAtVsPlayerBit();
            } else {
                i_this->at_sph.OnAtVsPlayerBit();
            }
            
            i_this->pursuit_flg = 0;
        } else {
            cXyz cr(-200000.0f, -200000.0f, 200000.0f);
            i_this->at_sph.SetC(cr);
        }
        
        mae.set(JREG_F(0) + -30.0f, JREG_F(1), JREG_F(2));
        MTXCopy(model->getAnmMtx(i_this->field_0x688 + 0xb), *calc_mtx);
        MtxPosition(&mae, &ato);
        i_this->cc_sph[1].SetC(ato);
        i_this->cc_sph[1].SetR(l_HIO.base_size * 50.0f);
        
        MTXCopy(model->getAnmMtx(i_this->field_0x688 + 0x11), *calc_mtx);
        mae.set(JREG_F(3) + 10.0f, JREG_F(4) + 20.0f, JREG_F(5));
        MtxPosition(&mae, &ato);
        i_this->cc_sph[2].SetC(ato);
        i_this->cc_sph[2].SetR(l_HIO.base_size * 40.0f + 20.0f + JREG_F(6));
        
        dComIfG_Ccsp()->Set(&i_this->cc_sph[1]);
        dComIfG_Ccsp()->Set(&i_this->cc_sph[2]);
        
        mae.set(0.0f, 0.0f, 0.0f);
        for (int i = 0; i < 4; i++) {
            static int foot_no[4] = {5, 24, 9, 20};
            static int foot_no_B[4] = {5, 28, 9, 23};

            if (i_this->field_0x79d != 0) {
                MTXCopy(model->getAnmMtx(foot_no_B[i]), *calc_mtx);
            } else {
                MTXCopy(model->getAnmMtx(foot_no[i]), *calc_mtx);
            }
            
            MtxPosition(&mae, &ato);
            i_this->cc_sph[i + 3].SetC(ato);
            i_this->cc_sph[i + 3].SetR(l_HIO.base_size * 20.0f);
            
            dComIfG_Ccsp()->Set(&i_this->cc_sph[i + 3]);
        }
        
        for (int i = 0; i < 6; i++) {
            if (i_this->field_0x79d == 0) {
                i_this->cc_sph[i + 1].OnTgSetBit();
            } else {
                i_this->cc_sph[i + 1].OffTgSetBit();
            }
        }
    }
    
    i_this->field_0x1688 += i_this->field_0x168a;
    cLib_addCalcAngleS2(&i_this->field_0x168a, actor->speedF * 50.0f + 1500.0f, 1, 0x3c);
    
    cLib_addCalc2(&i_this->anm_spd, actor->speedF * (YREG_F(8) + 1.5f) + BREG_F(6), 1.0f, BREG_F(7) + 0.9f);
    
    i_this->rd_id = fpcM_ERROR_PROCESS_ID_e;
    
    effect_set(i_this);
    i_this->field_0x6c0 = 0;

    return 1;
}

static int daE_WB_IsDelete(e_wb_class* i_this) {
    return 1;
}

static int daE_WB_Delete(e_wb_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)i_this;
    fopAcM_RegisterDeleteID(i_this, "E_WB");
    dComIfG_resDelete(&i_this->mPhase, i_this->resName);
    if (i_this->field_0x17e0 != 0) {
        hio_set = false;
        mDoHIO_DELETE_CHILD(l_HIO.mId);
    }

    if (actor->heap != NULL) {
        i_this->anm_p->stopZelAnime();
    }

    return 1;
}

static int useHeapInit(fopAc_ac_c* actor) {
    e_wb_class* i_this = (e_wb_class*)actor;

    i_this->anm_p =
        new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes(i_this->resName, 0x2e), NULL,
                             NULL, (J3DAnmTransform*)dComIfG_getObjectRes(i_this->resName, 0x28),
                             0, 1.0f, 0, -1, &i_this->creature, 0x80000, 0x11000084);

    if (i_this->anm_p == NULL || i_this->anm_p->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = i_this->anm_p->getModel();
    model->setUserArea((uintptr_t)i_this);

    for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
        model->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack);
    }
    
    f32* size;
    for (int i = 0; i < 2; i++) {
        if (i_this->field_0x79d != 0) {
            if (!i_this->field_0x15d0[i].init(
                    1, 0x10, (ResTIMG*)dComIfG_getObjectRes("Always", dRes_INDEX_ALWAYS_BTI_ROPE_e),
                    1))
            {
                return 0;
            }
        } else {
            if (!i_this->field_0x15d0[i].init(
                    1, 0x10, (ResTIMG*)dComIfG_getObjectRes("Always", dRes_INDEX_ALWAYS_BTI_ROPE_e),
                    1))
            {
                return 0;
            }
        }

        size = i_this->field_0x15d0[i].getSize(0);
        for (int j = 0; j < 16; j++, size++) {
            if (i_this->field_0x79d != 0) {
                *size = 5.0f + XREG_S(1) * 0.1f;
            } else {
                *size = 3.0f + XREG_S(0) * 0.1f;
            }
        }
    }

    if (i_this->field_0x79d != 0) {
        if (!i_this->field_0x1648.init(1, 2, (ResTIMG*)dComIfG_getObjectRes("Always", dRes_INDEX_ALWAYS_BTI_ROPE_e), 1)) {
            return 0;
        }
    } else {
        if (!i_this->field_0x1648.init(1, 2, (ResTIMG*)dComIfG_getObjectRes("Always", dRes_INDEX_ALWAYS_BTI_ROPE_e), 1)) {
            return 0;
        }
    }

    size = i_this->field_0x1648.getSize(0);
    for (int i = 0; i < 2; i++, size++) {
        if (i_this->field_0x79d != 0) {
            *size = 5.0f + XREG_S(1) * 0.1f;
        } else {
            *size = 3.0f + XREG_S(0) * 0.1f;
        }
    }

    return 1;
}

static int daE_WB_Create(fopAc_ac_c* i_this) {
    e_wb_class* actor = (e_wb_class*)i_this;
    fopAcM_ct(&actor->enemy, e_wb_class);

    OS_REPORT("//////////////E_WB SET 555 !!\n");
    
    actor->arg0 = fopAcM_GetParam(i_this);

    if (actor->arg0 == 5 || actor->arg0 == 7 || actor->arg0 == 8 || actor->arg0 == 9) {
        actor->resName = "E_bb";
    } else {
        actor->resName = "E_wb";
    }

    int phase_state = dComIfG_resLoad(&actor->mPhase, actor->resName);
    lbl_244_bss_47 = lbl_244_bss_45 = lbl_244_bss_46 = 0;

    // Title Screen
    if (!strcmp(dComIfGp_getStartStageName(), "F_SP102")) {
        lbl_244_bss_45 = 2;
    }

    // Hyrule Field, Bridge of Eldin area
    if (!strcmp(dComIfGp_getStartStageName(), "F_SP121") && fopAcM_GetRoomNo(i_this) == 0) {
        lbl_244_bss_46 = 1;
    }

    if (phase_state == cPhs_COMPLEATE_e) {
        actor->action = ACT_WAIT;

        if (actor->arg0 == 0xff) {
            actor->arg0 = 0;
        } else if (actor->arg0 == 5) {
            actor->field_0x79d = 1;
            actor->action = ACT_B_WAIT;
        } else if (actor->arg0 == 7) {
            actor->field_0x79d = 2;
            actor->action = ACT_B_IKKI;

            if (cDmr_SkipInfo == 0) {
                actor->demo_mode = 40;
                arrow_rd_set(actor);
            } else {
                Z2GetAudioMgr()->subBgmStart(Z2BGM_FACE_OFF_BATTLE2);
                actor->field_0x1722 = 1;
            }
        } else if (actor->arg0 == 8) {
            actor->field_0x79d = 3;
            actor->action = ACT_B_IKKI2;

            // Hyrule Field
            if (!strcmp(dComIfGp_getStartStageName(), "F_SP121")) {
                actor->mode = -100;
            }

            actor->mTargetFacingAngle = 0x8000;
        } else if (actor->arg0 == 6) {
            actor->action = ACT_EVENT;
        } else if (actor->arg0 == 10) {
            actor->action = ACT_C_F_RUN;
            actor->field_0x7a6 = 1;
            actor->field_0x7a7 = 1;

            if (fopAcM_gc_c::gndCheck(&i_this->current.pos)) {
                i_this->current.pos.y = fopAcM_gc_c::getGroundY();
            }

            OS_REPORT(" C_RD RESET  00\n");
        } else if (actor->arg0 == 9) {
            actor->field_0x79d = 4;
            actor->action = ACT_B_LV9_END;
            actor->mode = 0;
        }

        actor->arg1 = (fopAcM_GetParam(i_this) & 0xff00) >> 8;

        if (actor->field_0x79d != 0) {
            actor->field_0x688 = 2;
            cXyz mae;
            cXyz ato;
            mae.x = 0.0f;
            mae.y = 1000.0f;

            for (int i = 0; i < 8; i++) {
                cMtx_YrotS(*calc_mtx, i << 13);

                if (lbl_244_bss_45 == 1) {
                    mae.z = cM_rndF(3000.0f) + 12000.0f;
                    MtxPosition(&mae, &ato);
                } else {
                    mae.z = 13000.0f;
                    MtxPosition(&mae, &ato);
                    ato.x += -2989.0f;
                    ato.z += 1364.0f;
                }

                b_path[i] = ato;
            }

            if (actor->field_0x79d == 1 || actor->field_0x79d == 2) {
                fopAcM_createChild(PROC_OBJ_WFLAG, fopAcM_GetID(i_this), 0, &i_this->current.pos,
                                   fopAcM_GetRoomNo(i_this), 0, 0, -1, 0);
            }

            static f32 pass_r[6] = {
                0.0f, 800.0f, 800.0f, -100.0f, -150.0f, -100.0f,
            };

            static f32 x_check_off[6] = {
                600.0f, -800.0f, 800.0f, -300.0f, 0.0f, 300.0f,
            };

            actor->pass = pass_r[actor->arg1];
            actor->x_check = x_check_off[actor->arg1];
        }

        u32 local_50;

        if (actor->field_0x79d != 0) {
            local_50 = 17152;
        } else {
            local_50 = 14144;
        }

        if (!fopAcM_entrySolidHeap(i_this, useHeapInit, local_50)) {
            OS_REPORT("//////////////E_WB SET NON !!\n");
            return cPhs_ERROR_e;
        } else {
            if (!hio_set) {
                actor->field_0x17e0 = 1;
                hio_set = true;
                l_HIO.mId = mDoHIO_CREATE_CHILD("イノシシ", &l_HIO);
            }

            fopAcM_OnStatus(i_this, 0);

            i_this->attention_info.flags = fopAc_AttnFlag_BATTLE_e;
            i_this->attention_info.distances[fopAc_attn_ETC_e] = 14;

            fopAcM_SetMtx(i_this, actor->anm_p->getModel()->getBaseTRMtx());
            fopAcM_SetMin(i_this, -800.0f, -400.0f, -800.0f);
            fopAcM_SetMax(i_this, 800.0f, 400.0f, 800.0f);

            fopAcM_setCullSizeFar(i_this, 30000.0f);

            actor->Bgc.Set(fopAcM_GetPosition_p(i_this), fopAcM_GetOldPosition_p(i_this), i_this,
                              1, &actor->field_0x7ac, fopAcM_GetSpeed_p(i_this), 0, 0);
            actor->field_0x7ac.SetWall(100.0f, 100.0f + BREG_F(8));
            actor->Bgc.ClrWaterNone();

            i_this->field_0x560 = i_this->health = 10;

            if (actor->field_0x79d != 0) {
                actor->mStts.Init(0xfe, 0, i_this);
            } else {
                actor->mStts.Init(0xfd, 0, i_this);
            }

            for (int i = 0; i <= 6; i++) {
                static dCcD_SrcSph cc_sph_src = {
                    {
                        {0x0, {{0x0, 0x0, 0x0}, {0x486022, 0x3}, 0x75}},  // mObj
                        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},               // mGObjAt
                        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2},               // mGObjTg
                        {0x0},                                            // mGObjCo
                    },                                                    // mObjInf
                    {
                        {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSph
                    }  // mSphAttr
                };

                actor->cc_sph[i].Set(cc_sph_src);
                actor->cc_sph[i].SetStts(&actor->mStts);

                if (actor->field_0x79d != 0) {
                    actor->cc_sph[i].OnTgShield();
                    actor->cc_sph[i].SetTgHitMark(CcG_Tg_UNK_MARK_2);
                }
            }

            static dCcD_SrcSph at_sph_src = {
                {
                    {0x0, {{AT_TYPE_1000, 0x2, 0x1f}, {0x0, 0x0}, 0x0}},  // mObj
                    {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0},              // mGObjAt
                    {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2},                   // mGObjTg
                    {0x0},                                                // mGObjCo
                },                                                        // mObjInf
                {
                    {{0.0f, 0.0f, 0.0f}, 35.0f}  // mSph
                }  // mSphAttr
            };

            actor->at_sph.Set(at_sph_src);
            actor->at_sph.SetStts(&actor->mStts);

            i_this->attention_info.distances[fopAc_attn_CARRY_e] = 40;
            i_this->attention_info.distances[fopAc_attn_LOCK_e] = 22;
            i_this->attention_info.distances[fopAc_attn_ETC_e] = 48;
            i_this->attention_info.flags = 0;
            actor->field_0x68e = (s16)cM_rndF(65535.0f);

            for (int i = 0; i < 2; i++) {
                for (int j = 0; j < 16; j++) {
                    actor->field_0x1450[i].field_0x0[j] = i_this->current.pos;
                }
            }

            actor->field_0x1438[1] = actor->field_0x1438[0] = i_this->current.pos;

            actor->creature.init(&i_this->current.pos, &i_this->eyePos, 6, 1);
            actor->field_0x13c0.mpSound = &actor->creature;

            // Bulblin Camp
            if (!strcmp(dComIfGp_getStartStageName(), "F_SP118")) {

                if (fopAcM_GetRoomNo(i_this) == 1) {
                    i_this->current.pos.set(1500.0f, 0.0f, 1100.0f);
                    i_this->current.angle.y = 0x2000;
                    actor->action = ACT_CRV_WAIT;
                    actor->field_0x1720 = 1;
                } else {
                    if (fopAcM_GetRoomNo(i_this) == 2) {
                        actor->action = ACT_LR_DAMAGE;
                        anm_init(actor, 0x12, 0.0f, 2, 1.0f);
                        actor->mode = 3;
                        i_this->current.pos.x = 828.0f;
                        i_this->current.pos.z = 554.0f;
                        i_this->current.angle.y = i_this->shape_angle.y = 2048;
                        actor->field_0x1720 = 1;
                    }
                }
            }

            if (actor->arg0 == 10) {
                lbl_244_bss_47 = 1;
            }

            fopAcM_setCullSizeFar(i_this, 30000.0f);
            actor->mSpeedRate = l_HIO.mPlayerMountedMaxSpeed;
            c_start = 1;
            daE_WB_Execute(actor);
            c_start = 0;

            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[88])) {
                actor->lap_cnt = 1;
            }
        }
    }

    return phase_state;
}

static actor_method_class l_daE_WB_Method = {
    (process_method_func)daE_WB_Create,  (process_method_func)daE_WB_Delete,
    (process_method_func)daE_WB_Execute, (process_method_func)daE_WB_IsDelete,
    (process_method_func)daE_WB_Draw,
};

actor_process_profile_definition g_profile_E_WB = {
    fpcLy_CURRENT_e,         // mLayerID
    4,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_E_WB,               // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(e_wb_class),      // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    152,                     // mPriority
    &l_daE_WB_Method,        // sub_method
    0x00044100,              // mStatus
    fopAc_ENEMY_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

AUDIO_INSTANCES;
#include "JSystem/JAudio2/JAUSectionHeap.h"
template<>
JAUSectionHeap* JASGlobalInstance<JAUSectionHeap>::sInstance;

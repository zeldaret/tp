/**
 * @file d_a_npc_henna.cpp
 *
 */

#include "d/dolzel_rel.h"  // IWYU pragma: keep

#include "d/actor/d_a_npc_henna.h"

#include "SSystem/SComponent/c_counter.h"
#include "SSystem/SComponent/c_m3d_g_pla.h"
#include "Z2AudioLib/Z2Instances.h"
#include "c/c_damagereaction.h"
#include <math.h>
#include "d/actor/d_a_alink.h"
#include "d/actor/d_a_canoe.h"
#include "d/actor/d_a_mg_fshop.h"
#include "d/actor/d_a_mg_rod.h"
#include "d/actor/d_a_npc_du.h"
#include "d/d_camera.h"
#include "d/d_com_inf_game.h"
#include "d/d_msg_object.h"
#include "d/d_s_play.h"
#include "d/d_timer.h"
#include "f_op/f_op_kankyo_mng.h"
#include "m_Do/m_Do_graphic.h"

class dmg_rod_class;

class daNpc_Henna_HIO_c : public JORReflexible {
public:
    daNpc_Henna_HIO_c();
    virtual ~daNpc_Henna_HIO_c() {}
    void genMessage(JORMContext*);

    s8 no;
    f32 field_0x8;
    s16 field_0xc;
    s16 mSeasonDefColorR;
    s16 mSeasonDefColorG;
    s16 mSeasonDefColorB;
    s16 mSeason2ColorR;
    s16 mSeason2ColorG;
    s16 mSeason2ColorB;
    s16 mSeason3ColorR;
    s16 mSeason3ColorG;
    s16 mSeason3ColorB;
    f32 mSeasonDefLightDist;
    s16 mSeasonDefLightAngle;
    f32 mSeason2LightDist;
    s16 mSeason2LightAngle;
    f32 mSeason3LightDist;
    s16 mSeason3LightAngle;
};

static u16 check_kind[4] = {
    0xF57F,
    0xF47F,
    0xF37F,
    0xF27F,
};

daNpc_Henna_HIO_c::daNpc_Henna_HIO_c() {
    no = -1;
    field_0x8 = 1.0f;
    field_0xc = 60;
    mSeasonDefColorR = 255;
    mSeasonDefColorG = 255;
    mSeasonDefColorB = 200;
    mSeason2ColorR = 255;
    mSeason2ColorG = 255;
    mSeason2ColorB = 230;
    mSeason3ColorR = 255;
    mSeason3ColorG = 200;
    mSeason3ColorB = 220;
    mSeasonDefLightDist = 0.7f;
    mSeason2LightDist = 0.9f;
    mSeason3LightDist = 0.9f;
    mSeasonDefLightAngle = -45;
    mSeason2LightAngle = -40;
    mSeason3LightAngle = -45;
}

static void anm_init(npc_henna_class* i_this, int i_resIndex, f32 i_morf, u8 i_mode, f32 i_speed) {
    i_this->anm_p->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("Henna", i_resIndex), i_mode,
                           i_morf, i_speed, 0.0f, -1.0f, NULL);
    i_this->res_id = i_resIndex;
}

static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DJoint* joint = (J3DJoint*)i_joint;  // debug match
        s32 jnt_no = joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        npc_henna_class* i_this = (npc_henna_class*)model->getUserArea();
        if (i_this != 0) {
            MTXCopy(model->getAnmMtx(jnt_no), *calc_mtx);
            if (jnt_no == 1) {
                if (i_this->ride_flag != 0) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x6c4);
                } else {
                    cMtx_XrotM(*calc_mtx,
                               i_this->field_0x6c4 + i_this->head_rotY * (0.15f + TREG_F(4)));
                }
            } else if (jnt_no == 3) {
                cMtx_XrotM(*calc_mtx, i_this->head_rotY * 0.25f);
                cMtx_ZrotM(*calc_mtx, i_this->head_rotX / 4);
            } else if (jnt_no == 4) {
                cMtx_XrotM(*calc_mtx, i_this->head_rotY * 0.5f);
                cMtx_ZrotM(*calc_mtx, i_this->head_rotX / 2);
            } else if (jnt_no == 11) {
                cMtx_ZrotM(*calc_mtx, (s16)i_this->eye_rot);
            } else if (jnt_no == 14) {
                cMtx_YrotM(*calc_mtx, -i_this->field_0x6bc);
            } else if (jnt_no == 15) {
                cMtx_ZrotM(*calc_mtx, (s16)i_this->field_0x6c0);
            } else if (jnt_no == 20) {
                cMtx_YrotM(*calc_mtx, (s16)i_this->field_0x6be);
            } else if (jnt_no == 21) {
                cMtx_ZrotM(*calc_mtx, (s16)i_this->field_0x6c2);
            } else if (jnt_no == 26) {
                cMtx_ZrotM(*calc_mtx, (s16)i_this->field_0x704);
            } else if (jnt_no == 27) {
                cMtx_ZrotM(*calc_mtx, -i_this->field_0x704);
            } else if (jnt_no == 29) {
                cMtx_ZrotM(*calc_mtx, (s16)i_this->field_0x706);
            } else if (jnt_no == 30) {
                cMtx_ZrotM(*calc_mtx, -i_this->field_0x706);
            }
            model->setAnmMtx(jnt_no, *calc_mtx);
            MTXCopy(*calc_mtx, j3dSys.mCurrentMtx);
        }
    }
    return 1;
}

static int daNpc_Henna_Draw(npc_henna_class* i_this) {
    if (i_this->no_draw != 0) {
        return 1;
    }

    fopAc_ac_c* actor = &i_this->actor;

    g_env_light.settingTevStruct(0, &actor->current.pos, &actor->tevStr);
    if (i_this->hide_body_flag == 0) {
        camera_class* camera = dComIfGp_getCamera(0);
        f32 lookOffsetX = camera->lookat.eye.x - actor->current.pos.x;
        f32 lookOffsetY = camera->lookat.eye.y - actor->current.pos.y;
        f32 lookOffsetZ = camera->lookat.eye.z - actor->current.pos.z;
        if (lookOffsetY > 190.0f + JREG_F(16) || lookOffsetY < 0.0f ||
            lookOffsetX * lookOffsetX + lookOffsetZ * lookOffsetZ > 700.0f + JREG_F(17))
        {
            J3DModel* model = i_this->anm_p->getModel();
            g_env_light.setLightTevColorType_MAJI(model, &actor->tevStr);
            i_this->btk[i_this->btk_no]->entry(model->getModelData());
            i_this->btp[i_this->btp_no]->entry(model->getModelData());
            i_this->anm_p->entryDL();
        }
    }
    if (i_this->rod_draw_flag != 0) {
        g_env_light.setLightTevColorType_MAJI(i_this->model, &actor->tevStr);
        mDoExt_modelUpdateDL(i_this->model);
    }
    return 1;
}

// needed for matching .rodata + weak func order, probably from a stripped method?

static f32 dummy_dt_cxyz() {
    cXyz xyz(0.0f, 0.0f, 0.0f);
    return xyz.x;
}

static f32 dummy_100() {
    return 100.0f;
}

static f32 dummy_30() {
    return 30.0f;
}

static f32 dummy_m30() {
    return -30.0f;
}

static f32 dummy_m100() {
    return -100.0f;
}

static f32 dummy_300() {
    return 300.0f;
}

static f32 dummy_m450() {
    return -450.0f;
}

static f32 dummy_0_8() {
    return 0.8f;
}

static f32 dummy_m300() {
    return -300.0f;
}

static void dummy_dt_cm3dgpla() {
    delete (cM3dGPla*)NULL;
}

static void* s_npc_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) &&
        (fopAcM_GetName(i_actor) == PROC_NPC_NE || fopAcM_GetName(i_actor) == PROC_NPC_DU))
    {
        cXyz s_pos =
            ((fopAc_ac_c*)i_actor)->current.pos - ((npc_henna_class*)i_data)->actor.current.pos;
        if (((npc_henna_class*)i_data)->dis > s_pos.abs()) {
            return i_actor;
        }
    }
    return NULL;
}

static void* s_piro_sub(void* param_0, void* param_1) {
    UNUSED(param_1);
    if (fopAcM_IsActor(param_0) && fopAcM_GetName(param_0) == PROC_NPC_INKO) {
        return param_0;
    }
    return NULL;
}

static void* s_du_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_NPC_DU &&
        ((npc_du_class*)i_actor)->mPlayerDist < 300.0f)
    {
        ((npc_henna_class*)i_data)->du_near_time = 70;
        return i_actor;
    }
    return NULL;
}

static void* s_shop_sub(void* param_0, void* param_1) {
    UNUSED(param_1);
    if (fopAcM_IsActor(param_0) && fopAcM_GetName(param_0) == PROC_FSHOP &&
        (s32)(fopAcM_GetParam(param_0) & 0xff) < 35)
    {
        return param_0;
    }
    return NULL;
}

static void* s_koro2ball_sub(void* param_0, void* param_1) {
    UNUSED(param_1);
    if (fopAcM_IsActor(param_0)) {
        if (fopAcM_GetName(param_0) == PROC_FSHOP && (fopAcM_GetParam(param_0) & 0xff) == 35) {
            return param_0;
        }
    }
    return NULL;
}

static void message_shop(npc_henna_class* i_this) {
    s16 range = i_this->target_angle - dComIfGp_getPlayer(0)->shape_angle.y + 0x8000;
    if (range > 0x1800 || range < -0x1800 || (u16)i_this->target_angle < 0x2e00 ||
        (u16)i_this->target_angle > 0xa800 || i_this->dis > 270.0f)
    {
        i_this->talk_time = 1;
    }
    if (i_this->talk_time != 0) {
        fopAcM_OffStatus(&i_this->actor, NULL);
        cLib_offBit<u32>(i_this->actor.attention_info.flags, fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e);
    } else {
        fopAcM_OnStatus(&i_this->actor, 0);
        cLib_onBit<u32>(i_this->actor.attention_info.flags, fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e);
        i_this->actor.attention_info.distances[1] = 4;
        i_this->actor.attention_info.distances[3] = 4;
        i_this->actor.eventInfo.onCondition(1);
        if (dComIfGp_event_runCheck() && i_this->demo_mode == 0 &&
            i_this->actor.eventInfo.checkCommandTalk() != 0)
        {
            dComIfGp_event_reset();
            i_this->demo_mode = 10;
        }
    }
}

static void henna_shop(npc_henna_class* i_this) {
    s16 step_tag = 0x800;

    switch (i_this->mode) {
    case 0: {
        anm_init(i_this, 26, 1.0f, 2, 1.0f);
        i_this->actor.current.angle.y = 0x8000;
        i_this->actor.shape_angle.y = 0x8000;
        i_this->start_pya = 0x8000;
        i_this->mode = 1;
    case 1:
        step_tag = 0;
        break;
    case 2:
        anm_init(i_this, 27, 0.0f, 0, 1.0f);
        i_this->mode = 3;
    case 3:
        if (i_this->res_id == 27 && i_this->anm_p->isStop()) {
            anm_init(i_this, 32, 10.0f, 2, 1.0f);
            i_this->mode = 5;
        }
        break;
    case 4:
        if (i_this->counter > 0x50) {
            i_this->mode = 2;
        }
        break;
    case 5:
        if (i_this->demo_mode != 0) {
            i_this->timer[5] = cM_rndF(1000.0f) + 1000.0f;
        }
        if (i_this->timer[5] == 1) {
            i_this->mode = 10;
        }
        break;
    case 10:
        if (cM_rndF(1.0f) < 0.5f || i_this->field_0x708 != 0) {
            anm_init(i_this, 24, 3.0f, 0, 1.0f);
            i_this->btk_no = 2;
            i_this->field_0x708 = 0;
        } else {
            anm_init(i_this, 20, 3.0f, 0, 1.0f);
            i_this->btk_no = 1;
        }
        i_this->mode = 11;
        i_this->bck_no = 3;
        i_this->anm_speed = 0;
        i_this->bck[i_this->bck_no]->setFrame(0.0f);
        i_this->bck[i_this->bck_no + 4]->setFrame(0.0f);
        break;
    case 11:
        step_tag = 0;
        i_this->field_0x70d = 0;
        i_this->busy_time = 5;
        if (i_this->anm_p->isStop() != 0) {
            if (i_this->res_id == 20) {
                anm_init(i_this, 19, 0.0f, 2, 1.0f);
            } else {
                anm_init(i_this, 23, 0.0f, 2, 1.0f);
            }
            i_this->mode = 0xc;
            i_this->timer[0] = cM_rndF(60.0f) + 120.0f;
        }
        break;
    }
    case 12: {
        step_tag = 0;
        i_this->field_0x70d = 0;
        i_this->busy_time = 5;
        if (i_this->timer[0] == 0 || i_this->demo_mode != 0) {
            anm_init(i_this, 0x20, 10.0f, 2, 1.0f);
            i_this->mode = 5;
            i_this->bck_no = 0;
            i_this->btk_no = 0;
            i_this->anm_speed = 0;
            i_this->timer[5] = cM_rndF(1000.0f) + 1000.0f;
        }
    }
    }

    s16 range = i_this->target_angle - i_this->actor.shape_angle.y;

    if (range > 0x2000 || range < -0x2000) {
        if (range > 0) {
            i_this->start_pya = i_this->target_angle + -0x2000;
        } else {
            i_this->start_pya = i_this->target_angle + 0x2000;
        }
    }
    if (i_this->demo_mode >= 80 && i_this->demo_camera_no > 10) {
        f32 dX = -661.0f - i_this->actor.current.pos.x;
        f32 dZ = 376.0f - i_this->actor.current.pos.z;
        i_this->start_pya = cM_atan2s(dX, dZ);
    }
    cLib_addCalcAngleS2(&i_this->actor.current.angle.y, i_this->start_pya, 2, step_tag);
    /* dSv_event_flag_c::F_0461 - Fishing Pond - First time entered fishing house */
    if ((!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[461]) || cDmr_MadInfo != 0) &&
        i_this->field_0x7d7 == 0 && i_this->counter == 56 + TREG_S(7))
    {
        dComIfGp_event_reset();
        if (cDmr_MadInfo != 0) {
            cDmr_MadInfo = 0;
            i_this->demo_mode = 60;
        } else {
            /* dSv_event_flag_c::F_0461 - Fishing Pond - First time entered fishing house */
            dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[461]);
            i_this->demo_mode = 1;
        }
        i_this->field_0x7d7 = 1;
    }
    if (i_this->timer[3] != 0 && (i_this->timer[3] & 1) != 0) {
        mDoAud_seStart(Z2SE_SY_ITEM_SET_X, 0, 0, 0);
    }
    if (i_this->timer[4] != 0) {
        mDoAud_seStart(Z2SE_SYS_ERROR, 0, 0, 0);
    }
}

static void* s_rod_sub(void* i_actor, void* i_data) {
    UNUSED(i_data);
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_MG_ROD) {
        return i_actor;
    }
    return NULL;
}

static void* s_fish_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) != 0) {
        fopAc_ac_c* actor = (fopAc_ac_c*)i_actor;
        if (fopAcM_GetName(i_actor) == PROC_NPC_DU || fopAcM_GetName(i_actor) == PROC_MG_FISH) {
            fopAc_ac_c* actor2 = (fopAc_ac_c*)i_data;
            cXyz offset = actor->current.pos - actor2->current.pos;
            if (offset.abs() < 500.0f + TREG_F(12)) {
                return i_actor;
            }
        }
    }
    return 0;
}

static u8 hio_set;

static daNpc_Henna_HIO_c l_HIO;

static dmg_rod_class* lrl;

static u8 c_start;
static u8 koro2_ct;

static void henna_ride(npc_henna_class* i_this) {
    daPy_py_c* player;
    f32 stickX;
    f32 stickY;
    f32 stick_mag;
    s16 stick_ang;
    fopAc_ac_c* actor;

    actor = &i_this->actor;
    player = (daPy_py_c*)dComIfGp_getPlayer(0);

    stickX = mDoCPd_c::getStickX3D(0);
    stickY = mDoCPd_c::getStickY(0);

    i_this->field_0x70d = 2;
    i_this->step_angle = 1300;
    i_this->look_pos = player->eyePos;

    if (dComIfGp_checkPlayerStatus0(0, 0x2000) != 0 || dComIfGp_event_runCheck()) {
        stickX = stickY = 0.0f;
    }
    stick_mag = JMAFastSqrt(stickX * stickX + stickY * stickY);
    stick_ang = (s16)cM_atan2s(stickX, stickY);

    cXyz mae;
    cXyz ato;

    switch (i_this->mode) {
    case 0:
        anm_init(i_this, 8, 10.0f, 2, 1.0f);
        i_this->mode++;
        actor->speedF = 0;
        i_this->ride_flag = 1;
        break;
    case 2:
        anm_init(i_this, 21, 3.0f, 0, 1.0f);
        i_this->mode++;
        break;
    case 3:
        cLib_addCalcAngleS2(&i_this->rod_curv_z, -0x1f40, 1, 0x800);
        if (i_this->anm_p->isStop()) {
            i_this->mode = 0;
        }
        break;
    case 5:
        anm_init(i_this, 21, 3.0f, 1, -1.0f);
        i_this->anm_p->setFrame(i_this->anm_p->getEndFrame() - 1.0f);
        i_this->mode++;
        break;
    case 6:
        if (i_this->anm_p->getFrame() <= 12.0f + VREG_F(6)) {
            cLib_addCalcAngleS2(&i_this->rod_curv_z, 0, 1, 0x800);
        }
        if (i_this->anm_p->isStop()) {
            i_this->mode = 7;
        }
        break;
    case 7:
        cLib_addCalcAngleS2(&i_this->rod_curv_z, 0, 1, 0x800);
        break;
    case 10:
        anm_init(i_this, 9, 5.0f, 2, 1.0f);
        i_this->mode = 11;
        i_this->timer[0] = l_HIO.field_0xc;
        break;
    case 11:
        if (i_this->timer[0] == 0) {
            i_this->mode = 0;
            i_this->field_0x6f2 = cM_rndF(100.0f) + 60.0f;
            i_this->anm_time = 0;
        }
    }

    if (lrl != NULL) {
        fopAc_ac_c* fish;
        if (lrl->action == 0) {
            if (i_this->look_time == 0) {
                i_this->look_time = cM_rndF(100.0f) + 90.0f;
                cMtx_YrotS(*calc_mtx, actor->shape_angle.y);
                mae.x = cM_rndFX(200.0f);
                mae.y = 0.0f;
                mae.z = 100.0f;
                MtxPosition(&mae, &i_this->target_pos);
                i_this->target_pos += actor->current.pos;
            } else {
                i_this->look_time--;
            }
            i_this->look_pos = i_this->target_pos;
            fish = (fopAc_ac_c*)fpcM_Search(s_fish_sub, i_this);
            if (fish != NULL) {
                i_this->look_pos = fish->current.pos;
                i_this->step_angle = 0x600;
            }
        } else if (lrl->play_cam_mode == 10 || lrl->play_cam_mode == 11) {
            fish = fopAcM_SearchByID(lrl->mg_fish_id);
            if (fish != NULL) {
                i_this->look_pos = fish->current.pos;
                i_this->step_angle = 1000;
            }
        } else if (lrl->action == 1) {
            cMtx_YrotS(*calc_mtx, player->getFishingRodAngleY());
            mae.x = 0.0f;
            mae.y = 0.0f;
            mae.z = 2000.0f;
            MtxPosition(&mae, &i_this->look_pos);
            i_this->look_pos += player->eyePos;
        } else if (lrl->action == 3 || lrl->action == 4 || lrl->action == 5) {
            i_this->look_pos = lrl->actor.current.pos;
            i_this->step_angle = 0x600;
        }

        if (player->checkCanoeRide() != 0 &&
            (lrl->play_cam_mode == 0 || lrl->play_cam_mode >= 0x50))
        {
            if (i_this->mode < 5) {
                i_this->mode = 5;
            }
            if (i_this->mode == 7) {
                i_this->rod_hold_flag = 1;
                if (stick_mag > 0.1f) {
                    if (stick_ang <= 0x3200 && stick_ang >= -0x3200) {
                        if (i_this->paddle_time > 0x14 && i_this->res_id != 7) {
                            anm_init(i_this, 7, 10.0f, 2, 1.0f);
                        }
                        i_this->paddle_time++;
                    } else if (stick_ang > (s16)(0x6000 + AREG_S(6)) ||
                               (s16)stick_ang < (s16) - (0x6000 + AREG_S(6)))
                    {
                        if (i_this->paddle_time > 0x14 && i_this->res_id != 6) {
                            anm_init(i_this, 6, 10.0f, 2, 1.0f);
                        }
                        i_this->paddle_time++;
                        if (i_this->paddle_time > 0x14) {
                            cMtx_YrotS(*calc_mtx, actor->shape_angle.y);
                            if ((i_this->counter & 0x80) != 0) {
                                mae.x = 100.0f;
                            } else {
                                mae.x = -100.0f;
                            }
                            mae.y = 0.0f;
                            mae.z = -200.0f;
                            MtxPosition(&mae, &i_this->look_pos);
                            i_this->look_pos += actor->current.pos;
                            i_this->field_0x70d = 3;
                            i_this->step_angle = 5000;
                        }
                    } else {
                        if (i_this->res_id != 30) {
                            anm_init(i_this, 30, 10.0f, 2, 1.0f);
                        }
                        i_this->paddle_time = 0;
                    }
                } else {
                    if (i_this->res_id != 30) {
                        anm_init(i_this, 30, 10.0f, 2, 1.0f);
                    }
                    i_this->paddle_time = 0;
                }
                if (i_this->res_id == 7 || i_this->res_id == 6) {
                    f32 stickMagAdj = stick_mag * (1.5f + VREG_F(7));
                    if (stickMagAdj < 1.0f + VREG_F(8)) {
                        stickMagAdj = 1.0f + VREG_F(8);
                    }
                    i_this->anm_p->setPlaySpeed(stickMagAdj);
                    MTXCopy(i_this->model->getBaseTRMtx(), *calc_mtx);
                    mae.x = 0.0f;
                    mae.y = 0.0f;
                    mae.z = -100.0f + VREG_F(8);
                    MtxPosition(&mae, &ato);
                    ato.y = lrl->water_surface_y;
                    f32 frame;
                    if (i_this->res_id == 7) {
                        frame = 22.0f;
                    } else {
                        frame = 2.0f;
                    }
                    if (i_this->anm_p->checkFrame(frame) != FALSE) {
                        fopKyM_createWpillar(&ato, 0.6f + VREG_F(10), 0);
                    }
                }
            }
        } else {
            if (i_this->mode >= 5 && i_this->mode < 10) {
                i_this->mode = 2;
                i_this->rod_hold_flag = 1;
            }
            i_this->paddle_time = 0;
        }
    }

    if (i_this->res_id == 21 && i_this->anm_p->getFrame() <= 12.0f + VREG_F(6)) {
        i_this->rod_hold_flag = 1;
    }

    if (player->checkCanoeRide() == 0) {
        i_this->field_0x70d = 10;
    }

    if ((lrl != NULL && lrl->msg_flow_state != 0) || i_this->msg_time != 0 ||
        dComIfGp_checkPlayerStatus0(0, 0x2000) != 0)
    {
        i_this->field_0x70d = 2;
        i_this->step_angle = 1000;

        i_this->look_pos = player->eyePos;
        i_this->look_pos.y += hREG_F(0) + 40.0f;

        if (i_this->res_id == 30) {
            cMtx_YrotS(*calc_mtx, actor->shape_angle.y);
            mae.x = JREG_F(7) - 80.0f;
            mae.y = 0.0f;
            mae.z = 0.0f;
            MtxPosition(&mae, &ato);
            i_this->look_pos += ato;
        }

        if (dComIfGp_checkPlayerStatus0(0, 0x2000) != 0) {
            camera_class* camera = dComIfGp_getCamera(0);

            cXyz dis;
            dis = actor->eyePos - camera->lookat.eye;
            mae = camera->lookat.center - camera->lookat.eye;

            s16 rot = (s16)cM_atan2s(mae.x, mae.z);
            rot -= (s16)cM_atan2s(dis.x, dis.z);
            if (rot < 0x400 && rot > -0x400) {
                s16 range = (s16)-cM_atan2s(mae.y, JMAFastSqrt(mae.x * mae.x + mae.z * mae.z));
                range -= (s16)-cM_atan2s(dis.y, JMAFastSqrt(dis.x * dis.x +
                                                                    dis.z * dis.z));
                if (range < 0x400 && range > -0x400 && i_this->timer[3] == 0) {
                    i_this->timer[3] = 0xa0;
                    i_this->blink_time = 60;
                }
            }
        }
    }
}

static void action(npc_henna_class* i_this) {
    fopAc_ac_c* actor = (fopAc_ac_c*)&i_this->actor;
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);
    cXyz mae;
    cXyz ato;

    i_this->dis = fopAcM_searchPlayerDistance(actor);
    i_this->target_angle = fopAcM_searchPlayerAngleY(actor);

    if (i_this->msg_time != 0) {
        i_this->msg_time--;
    }
    if (i_this->du_near_time != 0) {
        i_this->du_near_time--;
    }
    if (i_this->field_0x7b5 != 0) {
        i_this->field_0x7b5--;
    }
    if (i_this->talk_time != 0) {
        i_this->talk_time--;
    }
    if (i_this->busy_time != 0) {
        i_this->busy_time--;
    }
    fpcM_Search(s_du_sub, i_this);

    fopAc_ac_c* s_actor;
    if (i_this->demo_mode >= 80 && i_this->demo_camera_no > 5) {
        s_actor = (fopAc_ac_c*)fpcM_Search(s_piro_sub, i_this);
    } else {
        s_actor = (fopAc_ac_c*)fpcM_Search(s_npc_sub, i_this);
        if (s_actor == NULL) {
            s_actor = player;
        }
    }
    i_this->field_0x70d = 1;

    msg_class* msg = ((dMsgObject_c*)s_actor)->getActor();
    if (msg != 0 && msg->mode == 6 && ((dMsgObject_c*)s_actor)->isMouthCheck() != 0 &&
        (lrl == 0 || lrl->play_cam_mode != 30))
    {
        i_this->mouth_time = 15;
    }
    i_this->talk_mode = 0;

    switch (i_this->action) {
    case 20:
        henna_ride(i_this);
        break;
    case 50:
        henna_shop(i_this);
        i_this->talk_mode = 2;
        break;
    case 0:
    case 10:
    case 60:
    default:
        break;
    }

    if (i_this->talk_mode == 1 && i_this->dis < 200.0f) {
        i_this->action = 10;
        i_this->mode = 0;
    }

    if (i_this->ride_flag == 0) {
        i_this->field_0x6c4 = 0;
    } else {
        player = fopAcM_SearchByID(i_this->boat_id);
        if (player != NULL) {
            cLib_addCalcAngleS2(&i_this->field_0x6c4, player->shape_angle.z * (-0.75f + ZREG_F(0)),
                                4, 500.0f + ZREG_F(0));
        }
    }

    cLib_addCalcAngleS2(&actor->shape_angle.y, actor->current.angle.y, 2, 0x4000);
    if (i_this->btp_no == 0) {
        if (i_this->field_0x6f2 == 0) {
            i_this->field_0x6f2 = cM_rndF(150.0f) + 30.0f;
            i_this->anm_time = 8;
        }
        if (i_this->anm_time != 0) {
            i_this->anm_time -= 1;
            i_this->anm_frame = i_this->anm_time;
            if (i_this->anm_frame > 5.0f) {
                i_this->anm_frame = 0.0f;
            }
        } else {
            i_this->anm_frame = 0;
        }
    }

    s16 angle = 0;
    s16 angle2 = 0;
#if VERSION == VERSION_WII_USA_R0
    s16 unkTarget2Limit = 9000 + BREG_S(0);
    s16 unkTarget1Limit = 10000 + BREG_S(1);
#else
    s16 range2 = 9000 + BREG_F(0);
    s16 range = 10000 + BREG_F(1);
#endif
    if (i_this->field_0x70d == 10 || (i_this->field_0x70d == 1 && i_this->dis < 700.0f)) {
        if (i_this->field_0x70c != 0) {
            mae = s_actor->eyePos - actor->eyePos;
            mae.y += i_this->field_0x72c * (20.0f + TREG_F(5)) + TREG_F(2);
        } else {
            mae = s_actor->eyePos - actor->current.pos;
            if (i_this->ride_flag == 0) {
                mae.y += -150.0f + TREG_F(1);
            } else {
                mae.y += 0.0f + TREG_F(2);
            }
        }
        s16 range = actor->shape_angle.y - i_this->target_angle;
        if (i_this->ride_flag != 0 || (range < 0x4000 && range > -0x4000)) {
            angle = cM_atan2s(mae.x, mae.z) - actor->shape_angle.y;
            angle2 = -cM_atan2s(mae.y, JMAFastSqrt(mae.x * mae.x + mae.z * mae.z));
        }
    } else if (i_this->field_0x70d == 2 || i_this->field_0x70d == 3) {
        mae = i_this->look_pos - actor->current.pos;
        angle = cM_atan2s(mae.x, mae.z) - actor->shape_angle.y;
        angle2 = -cM_atan2s(mae.y, JMAFastSqrt(mae.x * mae.x + mae.z * mae.z));
        if (i_this->field_0x70d == 2) {
            range = 15000;
        } else {
            range = 0x6000;
        }
    }

    if (angle > range) {
        angle = range;
    } else if (angle < (s16)-range) {
        angle = -range;
    }

    if (angle2 > range2) {
        angle2 = range2;
    } else if (angle2 < -range2) {
        angle2 = -range2;
    }

    cLib_addCalc2(&i_this->head_rotY, angle, 0.5f, i_this->step_angle);
    cLib_addCalcAngleS2(&i_this->head_rotX, angle2, 2, i_this->step_angle);
    i_this->step_angle = 0x600;

    if (i_this->head_rotX > 0) {
        i_this->eye_rot = i_this->head_rotX * (TREG_F(2) + -0.5f);
    } else {
        i_this->eye_rot = i_this->head_rotX * (TREG_F(3) + -0.65f);
    }
    i_this->eye_rot += (s16)((0.15f + TREG_F(13)) * fabsf(i_this->head_rotY));
}

static void cam_3d_morf(npc_henna_class* i_this, f32 scale) {
    cLib_addCalc2(&i_this->demo_way.x, i_this->demo_morf.x, scale,
                  i_this->field_0x79c.x * i_this->cam_spd);
    cLib_addCalc2(&i_this->demo_way.y, i_this->demo_morf.y, scale,
                  i_this->field_0x79c.y * i_this->cam_spd);
    cLib_addCalc2(&i_this->demo_way.z, i_this->demo_morf.z, scale,
                  i_this->field_0x79c.z * i_this->cam_spd);
    cLib_addCalc2(&i_this->demo_eye.x, i_this->field_0x778.x, scale,
                  i_this->field_0x790.x * i_this->cam_spd);
    cLib_addCalc2(&i_this->demo_eye.y, i_this->field_0x778.y, scale,
                  i_this->field_0x790.y * i_this->cam_spd);
    cLib_addCalc2(&i_this->demo_eye.z, i_this->field_0x778.z, scale,
                  i_this->field_0x790.z * i_this->cam_spd);
}

static void demo_camera(npc_henna_class* i_this) {
    camera_class* camera;
    daCanoe_c* boat;

    fopAc_ac_c* unused1 = dComIfGp_getPlayer(0);
    camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera_class* unused2 = dComIfGp_getCamera(0);

    cXyz unkXyz;
    cXyz unkXyz2;
    cXyz mae;
    cXyz ato;

    switch (i_this->demo_mode) {
    case 0:
        c_start = 0;
        break;
    case 100:
        if (!i_this->actor.eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(&i_this->actor, dEvtCnd_CANDEMO_e, -1, 0);
            i_this->actor.eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        i_this->demo_mode = 101;
        i_this->demo_camera_no = 0;
        camera->mCamera.Stop();
        i_this->demo_way.set(-2815.0f, 66.0f, 4604.0f);
        i_this->demo_eye.set(-2914.0f, 144.0f, 5036.0f);
        i_this->demo_zoom = 55.0f;
    case 101:
        if (i_this->demo_camera_no == 2) {
            daPy_getPlayerActorClass()->changeOriginalDemo();
            daPy_getPlayerActorClass()->changeDemoMode(4, 3, 0, 0);
            i_this->action = 20;
            i_this->mode = 0;
            boat = (daCanoe_c*)fopAcM_SearchByID(i_this->boat_id);
            if (boat != NULL) {
                ato.set(-2815.0f, boat->current.pos.y, 4603.0f);
                boat->setPosAndAngle(&ato, 0x76d9);
            }
        }

        if (i_this->demo_camera_no == 10) {
            camera->mCamera.Reset(i_this->demo_way, i_this->demo_eye);
            camera->mCamera.Start();
            dComIfGp_event_reset();
            daPy_py_c* player = daPy_getPlayerActorClass();
            player->cancelOriginalDemo();
            /* dSv_event_flag_c::F_0464 - Fishing Pond - Reserved for fishing */
            if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x1d0])) {
                i_this->fade_time = 10;
                i_this->fade_type = 0;
                i_this->no_draw = 1;
            } else {
                i_this->demo_mode = 0;
            }
            /* dSv_event_flag_c::F_0463 - Fishing Pond - Reserved for fishing */
            dComIfGs_offEventBit(dSv_event_flag_c::saveBitLabels[0x1cf]);
            /* dSv_event_flag_c::F_0464 - Fishing Pond - Reserved for fishing */
            dComIfGs_offEventBit(dSv_event_flag_c::saveBitLabels[0x1d0]);
        }
    }

    if (i_this->demo_mode != 0) {
        i_this->demo_camera_no = i_this->demo_camera_no + 1;
        if (i_this->demo_camera_no > 10000) {
            i_this->demo_camera_no = 10000;
        }
        if (i_this->demo_mode < 110) {
            camera->mCamera.Set(i_this->demo_way, i_this->demo_eye, i_this->demo_zoom, 0);
        }
    }
}

static int zoom_check(npc_henna_class* i_this, cXyz* target, s16 range) {
    // unused assignments are needed for debug match
    fopAc_ac_c* actor = &i_this->actor;
    fopAc_ac_c* unusedPlayer = (fopAc_ac_c*)dComIfGp_getPlayer(0);
    camera_class* unusedCamera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));

    camera_class* camera = (camera_class*)dComIfGp_getCamera(0);

    cXyz mae;
    cXyz ato;

    mae = *target - camera->lookat.eye;
    if (JMAFastSqrt(mae.x * mae.x + mae.z * mae.z) < 300.0f + XREG_F(10)) {
        ato = camera->lookat.center - camera->lookat.eye;
        s16 lookat_angle = (s16)cM_atan2s(ato.x, ato.z);
        s16 target_angle = (s16)cM_atan2s(mae.x, mae.z);
        lookat_angle -= target_angle;
        if (lookat_angle < range && lookat_angle > (s16)-range) {
            lookat_angle = (s16)-cM_atan2s(ato.y,
                                    JMAFastSqrt(ato.x * ato.x + ato.z * ato.z));
            target_angle = (s16)-cM_atan2s(
                mae.y, JMAFastSqrt(mae.x * mae.x + mae.z * mae.z));
            lookat_angle -= target_angle;
            if (lookat_angle < range && lookat_angle > (s16)-range) {
                return 1;
            }
        }
    }
    return 0;
}

static u32 const unkLimitsMs1[8] = {
    120000, 90000, 80000, 70000, 60000, 50000, 40000, 30000,
};

static u32 const unkLimitsMs2[1] = {180000};

static cXyz zoom_check_pos[20] = {
    cXyz(-720.0f, 140.0f, 70.0f),   cXyz(100000.0f, 0.0f, 0.0f),     cXyz(-500.0f, 176.0f, 595.0f),
    cXyz(-376.0f, 135.0f, 595.0f),  cXyz(-464.0f, 45.0f, -250.0f),   cXyz(-648.0f, 140.0f, 380.0f),
    cXyz(90.0f, 312.0f, 545.0f),    cXyz(-262.0f, 2.0f, 57.0f),      cXyz(-387.0f, 215.0f, -274.0f),
    cXyz(10335.0f, 160.0f, 254.0f), cXyz(10025.0f, 240.0f, -208.0f), cXyz(-110.0f, 248.0f, 600.0f),
    cXyz(234.0f, 153.0f, 600.0f),   cXyz(141.0f, 150.0f, 600.0f),    cXyz(34.0f, 149.0f, 600.0f),
    cXyz(-64.0f, 149.0f, 600.0f),   cXyz(-166.0f, 153.0f, 600.0f),   cXyz(-131.0f, 50.0f, 566.0f),
    cXyz(323.0f, 130.0f, 233.0f),   cXyz(284.0f, 90.0f, 432.0f),
};

static s32 koro2_reset;

static void demo_camera_shop(npc_henna_class* i_this) {
    static u16 check_size[4] = {
        0x002B,
        0x0032,
        0x0038,
        0x003C,
    };

    static u8 unk_bss_5134;
    static f32 old_stick_x;
    static s8 S_stick_x;
    static f32 old_stick_sx;
    static s8 S_stick_sx;

    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    camera_class* playerCamera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera_class* camera = dComIfGp_getCamera(0);
    fopAc_ac_c* actor = &i_this->actor;

    fshop_class* fshop;
    fshop_class* koro2;
    fs_koro2_s* koro;

    cXyz mae;
    cXyz ato;
    cXyz koro2_eye;
    cXyz koro2_way;

    f32 zoom;
    s16 range;
    s32 unkInt1;
    s32 hour;
    u32 unkIntArr1[8];
    u32 unkIntArr2[1];
    s8 demo_set = FALSE;

    if (!dComIfGp_event_runCheck()
            /* dSv_event_flag_c::F_0465 - Fishing Pond - Reserved for fishing */
        && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x1d1]))
    {
        i_this->field_0x756++;
        if (i_this->field_0x756 < 200) {
            mae.x = 140.0f - player->current.pos.x;
            mae.y = 0.0f;
            mae.z = -100.0f - player->current.pos.z;
            if (mae.x * mae.x + mae.z * mae.z < 1500.0f) {
                i_this->field_0x756 = 200;
                i_this->demo_mode = 0x23;
            }
        }
    }

    switch (i_this->demo_mode) {
    case 0: {
        if (!dComIfGp_event_runCheck()) {
            if (i_this->field_0x7b5 != 0) {
                if (i_this->field_0x7b5 == 1 || i_this->field_0x7b5 == 21 ||
                    i_this->field_0x7b5 == 41)
                {
                    i_this->talk_ct++;
                    if (i_this->talk_ct >= 3) {
                        i_this->demo_mode = 10;
                    } else {
                        i_this->demo_mode = 30;
                    }
                    i_this->demo_camera_no = 0;
                    i_this->field_0x5be = 1;
                }
            } else {
                if (i_this->demo_time != 0) {
                    i_this->demo_time--;
                    if (i_this->demo_time == 0) {
                        i_this->demo_mode = 80;
                        i_this->demo_camera_no = 0;
                    }
                } else {
                    for (s32 i = 0; i < 20; i++) {
                        if (i != 11 || dComIfGs_getEventReg(check_kind[1]) != 0) {
                            mae.x = zoom_check_pos[i].x - player->current.pos.x;
                            mae.z = zoom_check_pos[i].z - player->current.pos.z;
                            if (JMAFastSqrt(mae.x * mae.x + mae.z * mae.z) <
                                120.0f)
                            {
                                daPy_py_c::setLookPos(&zoom_check_pos[i]);
                            }
                        }
                    }
                    if (i_this->zoom_time != 0) {
                        i_this->zoom_time--;
                    }
                    if (dComIfGp_checkPlayerStatus0(0, 0x2000) != 0) {
                        for (s32 i = 0; i < 20; i++) {
                            if (i != 11 || dComIfGs_getEventReg(check_kind[1]) != 0) {
                                if (i >= 12 && i <= 17 || i == 11) {
                                    range = 0x600;
                                } else {
                                    if (i == 0 || i == 5 || i == 7) {
                                        range = 0xc00;
                                    } else {
                                        range = 0x800;
                                    }
                                }
                                if (zoom_check(i_this, &zoom_check_pos[i], range) != FALSE) {
                                    i_this->zoom_time += 2;
                                    if (i_this->zoom_time >= 10) {
                                        i_this->demo_mode = 0x28;
                                        i_this->zoom_pos = zoom_check_pos[i];
                                        i_this->look_mode = i;
                                        i_this->field_0x5be = 0;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        break;
    }
    case 1: {
        if (i_this->actor.eventInfo.checkCommandDemoAccrpt() == 0) {
            fopAcM_orderPotentialEvent(actor, dEvtCnd_CANDEMO_e, -1, 0);
            i_this->actor.eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        playerCamera->mCamera.Stop();
        i_this->demo_mode = 2;
        i_this->demo_camera_no = 0;
        i_this->demo_zoom = 65.0f;
        playerCamera->mCamera.SetTrimSize(1);
        daPy_getPlayerActorClass()->changeOriginalDemo();
        daPy_getPlayerActorClass()->changeDemoMode(0x48, 1, 0, 0);
        i_this->mode = 0;
    }
    case 2: {
        cMtx_YrotS(*calc_mtx, player->shape_angle.y);

        mae.x = XREG_F(4) + 30.0f;
        mae.y = XREG_F(5) + 140.0f;
        mae.z = XREG_F(6) + 70.0f;
        MtxPosition(&mae, &i_this->demo_eye);

        i_this->demo_eye += player->current.pos;

        i_this->demo_way.x = player->current.pos.x;
        i_this->demo_way.y = player->current.pos.y + 150.0f + XREG_F(2);
        i_this->demo_way.z = player->current.pos.z;

        cLib_addCalc2(&i_this->demo_zoom, TREG_F(0xc) + 55.0f, 0.05f, 0.2f);
        if (i_this->demo_camera_no == 0x41) {
            i_this->demo_zoom = 50.0f;

            i_this->demo_way.set(-36.0f, 155.0f, 407.0f);
            i_this->demo_eye.set(-45.0f, 153.0f, 169.0f);
            i_this->demo_morf.set(-270.0f, 155.0f, 103.0f);
            i_this->field_0x778.set(-45.0f, 153.0f, 169.0f);

            i_this->field_0x790.x = std::fabsf(i_this->field_0x778.x - i_this->demo_eye.x);
            i_this->field_0x790.y = std::fabsf(i_this->field_0x778.y - i_this->demo_eye.y);
            i_this->field_0x790.z = std::fabsf(i_this->field_0x778.z - i_this->demo_eye.z);
            i_this->field_0x79c.x = std::fabsf(i_this->demo_morf.x - i_this->demo_way.x);
            i_this->field_0x79c.y = std::fabsf(i_this->demo_morf.y - i_this->demo_way.y);
            i_this->field_0x79c.z = std::fabsf(i_this->demo_morf.z - i_this->demo_way.z);

            i_this->demo_mode = 3;
            i_this->cam_spd = 0.0f;
            i_this->demo_camera_no = 0;
        }
        break;
    }
    case 3: {
        if (i_this->demo_camera_no > 30) {
            cam_3d_morf(i_this, 0.05f);
            cLib_addCalc2(&i_this->cam_spd, BREG_F(7) + 0.01f, 1.0f, BREG_F(8) + 0.001f);
        }
        if (i_this->demo_camera_no >= 160) {
            if (i_this->demo_camera_no == 160) {
                i_this->msg_flow.init(actor, 0x321, 0, NULL);
                ato.set(-67.0f, 0.0f, 105.0f);
                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&ato, 0xE1C5, 0);
            }
            i_this->msg_flow.doFlow(actor, NULL, 0);
            if (i_this->msg_flow.getNowMsgNo() == 0x1f42) {
                i_this->demo_mode = 11;
                i_this->demo_camera_no = -20;
                i_this->mode = 2;
                i_this->start_pya = i_this->target_angle;
            }
        }
        break;
    }
    case 10: {
        if (i_this->actor.eventInfo.checkCommandDemoAccrpt() == 0) {
            fopAcM_orderPotentialEvent(actor, dEvtCnd_CANDEMO_e, 0xff7f, 0);
            i_this->actor.eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        playerCamera->mCamera.Stop();
        i_this->demo_mode = 11;
        i_this->demo_camera_no = 0;
        i_this->demo_zoom = 65.0f;
        playerCamera->mCamera.SetTrimSize(1);
        daPy_getPlayerActorClass()->changeOriginalDemo();
        daPy_getPlayerActorClass()->changeDemoMode(1, 0, 0, 0);
    }
    case 11: {
        cMtx_YrotS(*calc_mtx, i_this->target_angle);
        mae.x = 0.0f;
        mae.y = 160.0f + XREG_F(0);
        mae.z = 120.0f + XREG_F(1);
        MtxPosition(&mae, &i_this->demo_eye);
        i_this->demo_eye += i_this->actor.current.pos;
        i_this->demo_way.x = i_this->actor.current.pos.x;
        i_this->demo_way.y = i_this->actor.current.pos.y + 150.0f + XREG_F(2);
        i_this->demo_way.z = i_this->actor.current.pos.z;
        cLib_addCalc2(&i_this->demo_zoom, 55.0f, 0.5f, 5.0f);
        if (i_this->demo_camera_no == 0) {
            if (i_this->field_0x5be == 1) {
                i_this->field_0x5be = 2;
                if (i_this->talk_ct >= 4) {
                    i_this->msg_flow.init(actor, 0x354, 0, NULL);
                } else {
                    i_this->msg_flow.init(actor, 0x353, 0, NULL);
                }
                anm_init(i_this, 18, -10.0f, 2, 1.0f);
                i_this->du_talk_ct++;
            } else {
                /* dSv_event_flag_c::F_0462 - Fishing Pond - Reserved for fishing */
                if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x1ce])) {
                    dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x1ce]);
                    i_this->demo_mode = 19;
                    break;
                }
                /* dSv_event_flag_c::F_0465 - Fishing Pond - Reserved for fishing */
                if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x1d1])) {
                    if (i_this->busy_time != 0) {
                        i_this->msg_flow.init(actor, 0x327, 0, NULL);
                        i_this->blink_time = 90;
                    } else {
                        i_this->msg_flow.init(actor, 0x325, 0, NULL);
                    }
                    i_this->demo_mode = 20;
                    i_this->demo_camera_no = 0;
                } else {
                    if (i_this->busy_time != 0) {
                        i_this->msg_flow.init(actor, 0x326, 0, NULL);
                        i_this->blink_time = 90;
                    } else if (i_this->du_talk_ct == 0) {
                        i_this->msg_flow.init(actor, 0x323, 0, NULL);
                    } else {
                        i_this->msg_flow.init(actor, 0x324, 0, NULL);
                    }
                }
            }
            i_this->du_talk_ct++;
        } else if (i_this->field_0x5be == 2 && i_this->demo_camera_no == 5) {
            i_this->bck_no = 2;
        }
        if (i_this->demo_camera_no >= 0 && i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
            if (i_this->bck_no == 2 && i_this->talk_ct >= 4) {
                
                dStage_changeScene(1, 0.0f, 0, fopAcM_GetRoomNo(actor), 0, -1);
                cDmr_MadInfo = 1;
                data_80450C9A = 0;
                data_80450C9B = 0;
                return;
            }
            i_this->bck_no = 0;
            if (i_this->field_0x5be == 2) {
                i_this->demo_mode = 100;
                anm_init(i_this, 32, -10.0f, 2, 1.0f);
                i_this->field_0x5be = 0;
            } else {
                if (dMsgObject_getSelectCursorPos() == 0) {
                    i_this->demo_mode = 12;
                } else {
                    i_this->demo_mode = 13;
                }
                i_this->demo_camera_no = 0;
            }
        }
        break;
    }
    case 12:
    case 13: {
        if (i_this->demo_camera_no >= 1) {
            if (i_this->demo_camera_no == 1) {
                if (i_this->demo_mode == 12) {
                    if (dComIfGs_getRupee() >= 20) {
                        /* dSv_event_flag_c::F_0465 - Fishing Pond - Reserved for fishing */
                        if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x1d1])) {
                            i_this->msg_flow.init(actor, 0x32e, 0, NULL);
                            /* dSv_event_flag_c::F_0465 - Fishing Pond - Reserved for fishing */
                            dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x1d1]);
                            /* dSv_event_flag_c::F_0464 - Fishing Pond - Reserved for fishing */
                            dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x1d0]);
                            data_80450CA0 = 1;
                        } else {
                            i_this->msg_flow.init(actor, 0x32f, 0, NULL);
                        }
                        dComIfGp_setItemRupeeCount(0xffffffec);
                        /* dSv_event_flag_c::F_0463 - Fishing Pond - Reserved for fishing */
                        dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x1cf]);
                        i_this->field_0x5b6 = 1;
                    } else {
                        i_this->msg_flow.init(actor, 0x332, 0, NULL);
                    }
                } else {
                    i_this->msg_flow.init(actor, 0x331, 0, NULL);
                }
            }
            if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
                if (i_this->field_0x5b6 != 0) {
                    i_this->blink_time = 100;
                    dStage_changeScene(1, 0.0f, 0, fopAcM_GetRoomNo(actor), 0, -1);
                    data_80450C9A = 0;
                    data_80450C9B = 0;
                } else {
                    i_this->demo_mode = 100;
                }
            }
        }
        break;
    }
    case 19: {
        if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
            i_this->demo_mode = 100;
            i_this->bck_no = 0;
        }
        break;
    }
    case 20: {
        if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
            i_this->bck_no = 0;
            if (dMsgObject_getSelectCursorPos() == 0) {
                i_this->demo_mode = 12;
            } else {
                if (dMsgObject_getSelectCursorPos() == 1) {
                    i_this->demo_mode = 21;
                } else {
                    i_this->demo_mode = 13;
                }
            }
            i_this->demo_camera_no = 0;
        }
        break;
    case 21:
        if (i_this->demo_camera_no >= 1) {
            if (i_this->demo_camera_no == 1) {
                if (dComIfGs_getRupee() >= 100) {
                    i_this->msg_flow.init(actor, 0x330, 0, NULL);
                    dComIfGp_setItemRupeeCount(-100);
                    /* dSv_event_flag_c::F_0463 - Fishing Pond - Reserved for fishing */
                    dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x1cf]);
                    /* dSv_event_flag_c::F_0464 - Fishing Pond - Reserved for fishing */
                    dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x1d0]);
                    data_80450CA0 = 1;
                    i_this->field_0x5b6 = 1;
                } else {
                    i_this->msg_flow.init(actor, 0x332, 0, NULL);
                }
            }
            if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
                if (i_this->field_0x5b6 != 0) {
                    i_this->blink_time = 100;
                    dStage_changeScene(1, 0.0f, 0, fopAcM_GetRoomNo(actor), 0, -1);
                    data_80450C9A = 0;
                    data_80450C9B = 0;
                } else {
                    i_this->demo_mode = 100;
                }
            }
        }
        break;
    }
    case 30: {
        if (actor->eventInfo.checkCommandDemoAccrpt() == 0) {
            fopAcM_orderPotentialEvent(&i_this->actor, dEvtCnd_CANDEMO_e, 0xffff, 0);
            actor->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        playerCamera->mCamera.Stop();
        i_this->demo_mode = 0x1f;
        i_this->demo_camera_no = 0;
        playerCamera->mCamera.SetTrimSize(1);
    }
    case 31: {
        demo_set = TRUE;
        if (i_this->demo_camera_no >= 5) {
            if (i_this->demo_camera_no == 5) {
                if (i_this->field_0x7b5 > 25) {
                    i_this->msg_flow.init(actor, 0x352, 0, NULL);
                } else {
                    if (i_this->field_0x7b5 > 5) {
                        i_this->msg_flow.init(actor, 0x351, 0, NULL);
                    } else {
                        i_this->msg_flow.init(actor, 0x350, 0, NULL);
                    }
                }
                i_this->field_0x7b5 = 0;
                i_this->bck_no = 2;
            }
            if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
                i_this->demo_mode = 101;
                i_this->bck_no = 0;
            }
        }
        break;
    }
    case 35: {
        if (i_this->actor.eventInfo.checkCommandDemoAccrpt() == 0) {
            fopAcM_orderPotentialEvent(actor, dEvtCnd_CANDEMO_e, 0xffff, 0);
            i_this->actor.eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        playerCamera->mCamera.Stop();
        i_this->demo_mode = 36;
        i_this->demo_camera_no = 0;
        playerCamera->mCamera.SetTrimSize(1);
    }
    case 36: {
        demo_set = TRUE;
        if (i_this->demo_camera_no >= 5) {
            if (i_this->demo_camera_no == 5) {
                i_this->msg_flow.init(actor, 0x322, 0, NULL);
            }
            if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
                i_this->demo_mode = 0x65;
            }
        }
        break;
    }
    case 40: {
        if (actor->eventInfo.checkCommandDemoAccrpt() == 0) {
            fopAcM_orderPotentialEvent(actor, dEvtCnd_CANDEMO_e, -1, 0);
            actor->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        playerCamera->mCamera.Stop();
        i_this->demo_mode = 41;
        i_this->demo_camera_no = 0;
        i_this->demo_zoom = 50.0f;
        playerCamera->mCamera.SetTrimSize(1);
        daPy_getPlayerActorClass()->onPlayerNoDraw();
        mae = camera->lookat.center - camera->lookat.eye;
        i_this->field_0x758 = cM_atan2s(mae.x, mae.z);
        i_this->field_0x75c = -cM_atan2s(
            mae.y, JMAFastSqrt(mae.x * mae.x + mae.z * mae.z));
        i_this->field_0x7c4 = mae.abs();
    }
    case 41: {
        i_this->demo_eye = camera->lookat.eye;
        cMtx_YrotS(*calc_mtx, i_this->field_0x758);
        cMtx_XrotM(*calc_mtx, i_this->field_0x75c);
        mae.x = 0.0f;
        mae.y = 0.0f;
        mae.z = i_this->field_0x7c4;
        MtxPosition(&mae, &i_this->demo_way);
        i_this->demo_way += i_this->demo_eye;
        mae = i_this->zoom_pos - camera->lookat.eye;
        if (i_this->look_mode != 8 && i_this->look_mode != 7) {
            cLib_addCalcAngleS2(&i_this->field_0x758, cM_atan2s(mae.x, mae.z), 8,
                                0x800);
            cLib_addCalcAngleS2(&i_this->field_0x75c,
                                -cM_atan2s(mae.y, JMAFastSqrt(mae.x * mae.x +
                                                                    mae.z * mae.z)),
                                8, 0x800);
        }
        if (i_this->look_mode != 8 && i_this->look_mode != 7 && i_this->look_mode != 6 &&
            i_this->look_mode != 2 && i_this->look_mode != 4 && i_this->look_mode != 0)
        {
            zoom = (130.0f + BREG_F(8)) - mae.abs();
            zoom = zoom * (0.4f + BREG_F(9)) + 50.0f;
            if (zoom > 70.0f) {
                zoom = 70.0f;
            } else if (zoom < 30.0f) {
                zoom = 30.0f;
            }
            cLib_addCalc2(&i_this->demo_zoom, zoom, 0.2f, 2.0f);
        } else {
            zoom = 200.0f + BREG_F(8) - mae.abs();
            zoom = zoom * 0.4f + (50.0f + BREG_F(9));
            if (zoom > 80.0f) {
                zoom = 80.0f;
            } else if (zoom < 50.0f) {
                zoom = 50.0f;
            }
            cLib_addCalc2(&i_this->demo_zoom, zoom, 0.2f, 2.0f);
        }
        if (i_this->demo_camera_no >= 15) {
            if (i_this->demo_camera_no == 15) {
                unkInt1 = 0;
                switch (i_this->look_mode) {
                case 0:
                    for (s32 i = 0; i <= 3; i++) {
                        if (dComIfGs_getEventReg(check_kind[i]) >= check_size[i]) {
                            unkInt1++;
                        }
                    }

                    if (unkInt1 == 0) {
                        i_this->msg_flow.init(actor, 0x333, 0, NULL);
                    } else if (unkInt1 >= 4) {
                        i_this->msg_flow.init(actor, 0x336, 0, NULL);
                    } else {
                        if (dComIfGs_getEventReg(check_kind[1]) >= 10) {
                            i_this->msg_flow.init(actor, 0x335, 0, NULL);
                        } else {
                            i_this->msg_flow.init(actor, 0x334, 0, NULL);
                        }
                    }
                    break;
                case 2:
                    /* dSv_event_flag_c::F_0469 - Fishing Pond - Reserved for fishing */
                    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x1d5])) {
                        i_this->msg_flow.init(actor, 0x338, 0, NULL);
                    } else {
                        i_this->msg_flow.init(actor, 0x337, 0, NULL);
                    }
                    break;
                case 3:
                    i_this->msg_flow.init(actor, 0x339, 0, NULL);
                    break;
                case 4:
                    i_this->msg_flow.init(actor, 0x33a, 0, NULL);
                    break;
                case 5:
                    i_this->msg_flow.init(actor, 0x33b, 0, NULL);
                    data_80450C9D |= 0x80;
                    break;
                case 6:
                    i_this->msg_flow.init(actor, 0x33d, 0, NULL);
                    break;
                case 7:
                    i_this->msg_flow.init(actor, 0x33e, 0, NULL);
                    break;
                case 8: {
                    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
                    if (kankyo->raincnt == 0) {
                        hour = kankyo->daytime / 15.0f;
                        if (hour < 8 || hour > 16) {
                            i_this->msg_flow.init(actor, 0x371, 0, NULL);
                        } else {
                            i_this->msg_flow.init(actor, 0x346, 0, NULL);
                        }
                    } else {
                        i_this->msg_flow.init(actor, 0x347, 0, NULL);
                    }
                    break;
                }
                case 0xb:
                    i_this->msg_flow.init(actor, 0x35f, 0, NULL);
                    break;
                case 0xc:
                    i_this->msg_flow.init(actor, 0x344, 0, NULL);
                    break;
                case 0xd:
                    i_this->msg_flow.init(actor, 0x342, 0, NULL);
                    break;
                case 0xe:
                    i_this->msg_flow.init(actor, 0x343, 0, NULL);
                    break;
                case 0xf:
                    i_this->msg_flow.init(actor, 0x341, 0, NULL);
                    break;
                case 0x10:
                    i_this->msg_flow.init(actor, 0x340, 0, NULL);
                    break;
                case 0x11:
                    i_this->msg_flow.init(actor, 0x33f, 0, NULL);
                    break;
                case 0x12:
                    i_this->msg_flow.init(actor, 0x33c, 0, NULL);
                    break;
                case 0x13:
                    /* dSv_event_flag_c::KORO2_ALLCLEAR - Fishing - After all stages (8-8) of roll
                     * goal game cleared */
                    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x335])) {
                        i_this->msg_flow.init(actor, 0x366, 0, NULL);
                    } else {
                        dComIfGp_event_offHindFlag(0x80);
                        dComIfGp_setMessageCountNumber(
                            (s16)((s16)((koro2_ct & 7) + (koro2_ct >> 3) * 10) + 11));
                        if (koro2_ct == 0) {
                            i_this->msg_flow.init(actor, 0x348, 0, NULL);
                        } else if (koro2_ct == 0x3f) {
                            i_this->msg_flow.init(actor, 0x370, 0, NULL);
                        } else {
                            i_this->msg_flow.init(actor, 0x34b, 0, NULL);
                        }
                    }
                }
            }
            if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
                if (i_this->look_mode == 19) {
                    if (dMsgObject_getSelectCursorPos() == 0) {
                        /* dSv_event_flag_c::KORO2_ALLCLEAR - Fishing - After all stages (8-8) of
                         * roll goal game cleared */
                        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x335])) {
                            i_this->demo_mode = 0x4d;
                            i_this->demo_camera_no = 0;
                            mDoGph_gInf_c::fadeOut(0.1f, g_blackColor);
                            koro2_reset = 0;
                        } else {
                            if (dComIfGs_getRupee() >= 5) {
                                i_this->demo_mode = 0x46;
                                i_this->demo_camera_no = 0;
                                dComIfGp_setItemRupeeCount(-5);
                                mDoGph_gInf_c::fadeOut(0.1f, g_blackColor);
                                koro2_reset = 0;
                            } else {
                                i_this->demo_camera_no = 0;
                                i_this->demo_mode = 0x2a;
                            }
                        }
                    } else {
                        i_this->demo_camera_no = 0;
                        i_this->demo_mode = 0x2b;
                    }
                } else {
                    i_this->demo_mode = 0x65;
                    daPy_getPlayerActorClass()->offPlayerNoDraw();
                    i_this->du_talk_ct++;
                    if (i_this->look_mode == 16) {
                        i_this->mode = 10;
                        i_this->field_0x708 = 1;
                    }
                }
            }
        }
        break;
    }
    case 42: {
        if (i_this->demo_camera_no == 1) {
            i_this->msg_flow.init(actor, 0x349, 0, NULL);
        }
        if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
            i_this->demo_mode = 0x4b;
            i_this->du_talk_ct++;
        }
        break;
    }
    case 43: {
        if (i_this->demo_camera_no == 1) {
            i_this->msg_flow.init(actor, 0x34a, 0, NULL);
            i_this->demo_mode = 42;
        }
        break;
    }
    case 50: {
        if (i_this->actor.eventInfo.checkCommandDemoAccrpt() == 0) {
            fopAcM_orderPotentialEvent(actor, dEvtCnd_CANDEMO_e, 0xffff, 0);
            i_this->actor.eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            dComIfGp_event_reset();
            return;
        }

        playerCamera->mCamera.Stop();

        i_this->demo_mode = 0x33;
        i_this->demo_camera_no = 0;
        i_this->demo_zoom = 65.0f;

        playerCamera->mCamera.SetTrimSize(1);

        daPy_getPlayerActorClass()->changeOriginalDemo();
        daPy_getPlayerActorClass()->changeDemoMode(1, 0, 0, 0);

        i_this->demo_zoom = 55.0f;

        i_this->demo_way.set(-440.0f, 130.0f, 380.0f);
        i_this->demo_eye.set(-263.0f, 142.0f, 162.0f);
        i_this->demo_morf.set(-538.0f, 130.0f, 116.0f);
        i_this->field_0x778.set(-263.0f, 142.0f, 162.0f);

        i_this->field_0x790.x = std::fabsf(i_this->field_0x778.x - i_this->demo_eye.x);
        i_this->field_0x790.y = std::fabsf(i_this->field_0x778.y - i_this->demo_eye.y);
        i_this->field_0x790.z = std::fabsf(i_this->field_0x778.z - i_this->demo_eye.z);
        i_this->field_0x79c.x = std::fabsf(i_this->demo_morf.x - i_this->demo_way.x);
        i_this->field_0x79c.y = std::fabsf(i_this->demo_morf.y - i_this->demo_way.y);
        i_this->field_0x79c.z = std::fabsf(i_this->demo_morf.z - i_this->demo_way.z);
    }
    case 51: {
        if (i_this->demo_camera_no >= 15) {
            if (i_this->demo_camera_no == 15) {
                if (data_80450C9A == 0) {
                    i_this->msg_flow.init(actor, 0x328, 0, NULL);
                } else if (data_80450C9B == 2) {
                    i_this->msg_flow.init(actor, 0x329, 0, NULL);
                } else if (data_80450C9B == 3) {
                    i_this->msg_flow.init(actor, 0x32a, 0, NULL);
                } else if (data_80450C9B == 4) {
                    i_this->msg_flow.init(actor, 0x32b, 0, NULL);
                } else if (data_80450C9B == 1) {
                    i_this->msg_flow.init(actor, 0x32d, 0, NULL);
                } else {
                    i_this->msg_flow.init(actor, 0x32c, 0, NULL);
                }
            }
            if (data_80450C9B >= 2) {
                i_this->msg_flow.doFlow(actor, NULL, 0);
                if (i_this->demo_camera_no > 0x32) {
                    i_this->demo_mode = 0x34;
                    i_this->demo_camera_no = 0;
                }
            } else {
                if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
                    i_this->demo_mode = 100;
                }
            }
        }
        break;
    }
    case 52: {
        if (mDoCPd_c::getTrigA(0) != 0 && i_this->demo_camera_no < 30) {
            i_this->demo_camera_no = 30;
        }
        if (i_this->demo_camera_no >= 30) {
            cam_3d_morf(i_this, 0.3f);
            cLib_addCalc2(&i_this->cam_spd, BREG_F(7) + 0.06f, 1.0f, BREG_F(8) + 0.02f);
            if (i_this->demo_camera_no > 0x32) {
                cLib_addCalc2(&i_this->demo_zoom, TREG_F(0xc) + 40.0f, 0.1f, 1.0f);
            }
        }
        if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0 && i_this->demo_camera_no > 0x3c) {
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&player->current.pos, 0xb01c, 0);
            i_this->demo_mode = 53;
            i_this->demo_camera_no = 0;
        }
        break;
    }
    case 53: {
        if (i_this->demo_camera_no > 0x1e) {
            i_this->demo_mode = 100;
        }
        break;
    }
    case 60: {
        if (i_this->actor.eventInfo.checkCommandDemoAccrpt() == 0) {
            fopAcM_orderPotentialEvent(actor, dEvtCnd_CANDEMO_e, 0xffff, 0);
            i_this->actor.eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        playerCamera->mCamera.Stop();
        i_this->demo_mode = 61;
        i_this->demo_camera_no = 0;
        i_this->demo_zoom = 65.0f;
        playerCamera->mCamera.SetTrimSize(1);
        daPy_getPlayerActorClass()->changeOriginalDemo();
        daPy_getPlayerActorClass()->changeDemoMode(1, 0, 0, 0);
    }
    case 61: {
        cMtx_YrotS(*calc_mtx, i_this->target_angle);

        mae.x = 0.0f;
        mae.y = 160.0f + XREG_F(0);
        mae.z = 120.0f + XREG_F(1);
        MtxPosition(&mae, &i_this->demo_eye);

        i_this->demo_eye += i_this->actor.current.pos;

        i_this->demo_way.x = actor->current.pos.x;
        i_this->demo_way.y = actor->current.pos.y + 150.0f + XREG_F(2);
        i_this->demo_way.z = actor->current.pos.z;

        cLib_addCalc2(&i_this->demo_zoom, 55.0f, 0.5f, 5.0f);

        if (i_this->demo_camera_no == 0) {
            i_this->msg_flow.init(actor, 0x355, 0, NULL);
            anm_init(i_this, 18, -10.0f, 2, 1.0f);
            i_this->bck_no = 2;
        }
        if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
            i_this->demo_camera_no = 0;
            i_this->demo_mode = 62;
            anm_init(i_this, 32, -10.0f, 2, 1.0f);
        }
        break;
    }
    case 62: {
        if (i_this->demo_camera_no >= 1) {
            if (i_this->demo_camera_no == 1) {
                i_this->msg_flow.init(actor, 0x356, 0, NULL);
            }

            if (i_this->demo_camera_no == 5) {
                i_this->bck_no = 2;
            }

            if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
                i_this->bck_no = 0;
                i_this->demo_mode = 100;
            }
        }
        break;
    }
    case 70: {
        if (i_this->demo_camera_no == 10) {
            fshop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);
            if (fshop != NULL) {
                fshop->field_0x4010 = 1;
            }

            ato.set(171.0f, 0.0f, 432.0f);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&ato, 0x4000, 0);

            i_this->demo_zoom = 20.0f;

            playerCamera->mCamera.SetTrimSize(1);
        }
        if (i_this->demo_camera_no == 0xb) {
            fshop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);

            i_this->demo_way = fshop->field_0x4014;
            i_this->demo_way.x += WREG_F(0);
            i_this->demo_way.y += WREG_F(1);
            i_this->demo_way.z += WREG_F(2);

            i_this->demo_eye = fshop->field_0x4014;
            i_this->demo_eye.x += -900.0f + WREG_F(3);
            i_this->demo_eye.y += 1300.0f + WREG_F(4);
            i_this->demo_eye.z += WREG_F(5);
        }
        if (i_this->demo_camera_no == 0x12) {
            koro2 = (fshop_class*)fpcM_Search(s_koro2ball_sub, i_this);
            if (koro2 != NULL) {
                koro2->field_0x0572 = 1;
            }
        }
        if (i_this->demo_camera_no == 0x14) {
            mDoGph_gInf_c::fadeIn(0.1f, g_blackColor);

            i_this->msg_flow.init(actor, 0x34c, 0, NULL);

            i_this->demo_mode = 71;
            i_this->demo_camera_no = 0;
            i_this->field_0x756 = 200;
        }
        break;
    }
    case 71: {
        i_this->field_0x7b9 = 0;
        if (i_this->demo_camera_no >= 2) {
            if (i_this->demo_camera_no == 2) {
                __memcpy(unkIntArr1, unkLimitsMs1, sizeof(unkLimitsMs1));
                dTimer_createTimer(6, unkIntArr1[koro2_ct >> 3], 1, 0, 210.0f, 410.0f, 32.0f,
                                   419.0f);
            }

            dTimer_c* timer = dComIfG_getTimerPtr();
            if (timer != 0 && i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
                i_this->demo_mode = 0x48;

                dComIfG_TimerStart(6, 0);

                Z2GetAudioMgr()->subBgmStart(Z2BGM_KOROKORO_GAME);

                fshop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);
                fshop->field_0x4062 = 0;
                fshop->field_0x4060 = 0;

                koro2 = (fshop_class*)fpcM_Search(s_koro2ball_sub, i_this);
                if (koro2 != NULL) {
                    koro2->field_0x0572 = 1;
                }
            }
        }
        break;
    }
    case 72: {
        if (i_this->field_0x7b9 == 0) {
            fshop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);
            if (fshop != NULL && dTimer_isStart() != 0) {
                fshop->field_0x4010 = 2;
                i_this->field_0x7b9 = 1;
                for (s32 i = 0; i < 100; i++) {
                    koro = &fshop->field_0x4008->mKoro2[i];
                    if ((koro->part_id >= 2 && koro->part_id <= 5) ||
                        (koro->part_id >= 8 && koro->part_id <= 11))
                    {
                        fshop->field_0x4008->mKoro2[i].field_0x60 = 1;
                    }
                }
            }
        }
    }
    case 73: {
        koro2 = (fshop_class*)fpcM_Search(s_koro2ball_sub, i_this);
        koro2_way = koro2->actor.current.pos;
        fshop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);
        cMtx_YrotS(*calc_mtx, fshop->field_0x4060);
        mae.x = -500.0f;
        mae.y = 600.0f;
        mae.z = 0.0f;
        MtxPosition(&mae, &koro2_eye);
        koro2_eye += koro2->actor.current.pos;
        if (koro2_reset != 0) {
            koro2_reset = 0;
            i_this->demo_way = koro2_way;
            i_this->demo_eye = koro2_eye;
        } else {
            cLib_addCalc2(&i_this->demo_way.x, koro2_way.x, 0.1f, 20.0f);
            cLib_addCalc2(&i_this->demo_way.y, koro2_way.y, 0.1f, 20.0f);
            cLib_addCalc2(&i_this->demo_way.z, koro2_way.z, 0.1f, 20.0f);
            cLib_addCalc2(&i_this->demo_eye.x, koro2_eye.x, 0.3f, 70.0f);
            cLib_addCalc2(&i_this->demo_eye.y, koro2_eye.y, 0.3f, 70.0f);
            cLib_addCalc2(&i_this->demo_eye.z, koro2_eye.z, 0.3f, 70.0f);
        }
        if (i_this->demo_mode == 0x49) {
            if (i_this->demo_camera_no == 2) {
                fshop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);
                if (fshop != NULL) {
                    fshop->field_0x4010 = 1;
                }
                dComIfG_TimerDeleteRequest(6);
                Z2GetAudioMgr()->subBgmStop();
            }
            if (i_this->demo_camera_no == 10) {
                if (actor->health == 0) {
                    i_this->msg_flow.init(actor, 0x34d, 0, NULL);
                } else if (actor->health == 1) {
                    i_this->msg_flow.init(actor, 0x364, 0, NULL);
                } else if (actor->health == 2) {
                    i_this->msg_flow.init(actor, 0x360, 0, NULL);
                } else {
                    i_this->msg_flow.init(actor, 0x363, 0, NULL);
                }
                i_this->demo_mode = 74;
                Z2GetAudioMgr()->subBgmStart(Z2BGM_FISHING_BARE);
            }
        }
        break;
    }
    case 74: {
        if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
            if (dMsgObject_getSelectCursorPos() == 0) {
                 /* dSv_event_flag_c::KORO2_ALLCLEAR - Fishing - After all stages (8-8) of roll goal game cleared */
                if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x335])) {
                    i_this->demo_camera_no = 0;
                    i_this->demo_mode = 0x4d;
                    mDoGph_gInf_c::fadeOut(0.1f, g_blackColor);
                } else {
                    if (dComIfGs_getRupee() >= 5) {
                        dComIfGp_setItemRupeeCount(-5);
                        i_this->demo_mode = 71;
                        i_this->demo_camera_no = 0;
                        fshop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);
                        if (fshop != NULL) {
                            fshop->field_0x4020.z = 0;
                            fshop->field_0x4020.x = 0;
                        }
                        koro2_reset = 1;
                    } else {
                        i_this->demo_camera_no = 0;
                        i_this->demo_mode = 42;
                    }
                }
            } else {
                i_this->demo_camera_no = 0;
                i_this->demo_mode = 43;
            }
        }
        break;
    }
    case 75: {
        i_this->demo_mode = 100;
        daPy_getPlayerActorClass()->offPlayerNoDraw();
        fshop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);
        if (fshop != NULL) {
            fshop->field_0x4010 = 0;
            fshop->field_0x4020.y = cM_rndFX(2000.0f) + -16384.0f;
        }
        koro2 = (fshop_class*)fpcM_Search(s_koro2ball_sub, i_this);
        if (koro2 != NULL) {
            koro2->field_0x0572 = 0;
        }
        break;
    }
    case 76: {
        if (i_this->demo_camera_no == 2) {
            dComIfG_TimerDeleteRequest(6);
            fshop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);
            if (fshop != NULL) {
                fshop->field_0x4010 = 1;
            }
            Z2GetAudioMgr()->subBgmStop();
        }
        if (i_this->demo_camera_no == 10) {
             /* dSv_event_flag_c::KORO2_ALLCLEAR - Fishing - After all stages (8-8) of roll goal game cleared */
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x335])) {
                i_this->msg_flow.init(actor, 0x36f, 0, NULL);
            } else {
                if ((koro2_ct & 7) == 0x7) {
                    if (koro2_ct == 0x3f) {
                        i_this->msg_flow.init(actor, 0x365, 0, NULL);
                        /* dSv_event_flag_c::KORO2_ALLCLEAR - Fishing - After all stages (8-8) of roll goal game cleared */
                        dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x335]);
                        dComIfGp_setItemRupeeCount(1000);
                    } else if ((koro2_ct & 0x38) == 0) {
                        i_this->msg_flow.init(actor, 0x34f, 0, NULL);
                        /* dSv_event_flag_c::F_0469 - Fishing Pond - Reserved for fishing */
                        dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x1d5]);
                    } else {
                        i_this->msg_flow.init(actor, 0x34f, 0, NULL);
                        dComIfGp_setItemRupeeCount(10);
                    }
                } else {
                    i_this->msg_flow.init(actor, 0x34e, 0, NULL);
                    dComIfGp_setItemRupeeCount(10);
                }
                if (koro2_ct == dComIfGs_getEventReg(0xf63f) && koro2_ct < 0x3f) {
                    dComIfGs_setEventReg(0xf63f, koro2_ct + 1);
                }
            }
            Z2GetAudioMgr()->subBgmStart(Z2BGM_FISHING_GET1);
        }
        if (i_this->demo_camera_no >= 10 && i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
            i_this->demo_mode = 75;
            dComIfG_TimerDeleteRequest(6);
        }
        break;
    }
    case 77: {
        if (i_this->demo_camera_no == 10) {
            fshop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);
            if (fshop != NULL) {
                fshop->field_0x4010 = 1;
            }
            ato.set(171.0f, 0.0f, 432.0f);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&ato, 0x4000, 0);
            i_this->demo_zoom = 20.0f;
            playerCamera->mCamera.SetTrimSize(1);
        }
        if (i_this->demo_camera_no == 11) {
            fshop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);

            i_this->demo_way = fshop->field_0x4014;
            i_this->demo_way.x += WREG_F(0);
            i_this->demo_way.y += WREG_F(1);
            i_this->demo_way.z += WREG_F(2);

            i_this->demo_eye = fshop->field_0x4014;
            i_this->demo_eye.x += -900.0f + WREG_F(3);
            i_this->demo_eye.y += 1300.0f + WREG_F(4);
            i_this->demo_eye.z += WREG_F(5);
        }

        if (i_this->demo_camera_no == 0x12) {
            koro2 = (fshop_class*)fpcM_Search(s_koro2ball_sub, i_this);
            if (koro2 != NULL) {
                koro2->field_0x0572 = 1;
            }
        }

        if (i_this->demo_camera_no == 0x14) {
            i_this->demo_mode = 78;
            i_this->demo_camera_no = 0;
            i_this->field_0x756 = 200;
            fshop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);
            fshop->field_0x400c = unk_bss_5134;
        }
        break;
    }
    case 78: {
        if (i_this->demo_camera_no == 1) {
            mDoGph_gInf_c::fadeIn(0.1f, g_blackColor);
        }

        dComIfGp_setDoStatusForce(0x22, 0);

        if (S_stick_x == 0) {
            old_stick_x = 0.0f;
            S_stick_x = 1;
        }
        if (S_stick_sx == 0) {
            old_stick_sx = 0.0f;
            S_stick_sx = 1;
        }

        if ((mDoCPd_c::getStickX3D(0) >= 0.8f && old_stick_x < 0.8f ||
             mDoCPd_c::getStickX3D(0) <= -0.8f && old_stick_x > -0.8f ||
             mDoCPd_c::getSubStickX(0) >= 0.8f && old_stick_sx < 0.8f ||
             mDoCPd_c::getSubStickX(0) <= -0.8f && old_stick_sx > -0.8f) &&
            i_this->demo_camera_no >= 15)
        {
            if (mDoCPd_c::getStickX3D(0) >= 0.5f || mDoCPd_c::getSubStickX(0) >= 0.5f) {
                unk_bss_5134++;
            } else {
                unk_bss_5134--;
            }
            unk_bss_5134 &= 7;
            mDoAud_seStart(Z2SE_SY_CURSOR_FLOOR, 0, 0, 0);
            i_this->msg_flow.remove();
            i_this->demo_camera_no = 1;
        }

        old_stick_x = mDoCPd_c::getStickX3D(0);
        old_stick_sx = mDoCPd_c::getSubStickX(0);

        fshop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);
        fshop->field_0x400c = unk_bss_5134;

        if (i_this->demo_camera_no >= 2) {
            if (i_this->demo_camera_no == 2) {
                i_this->msg_flow.init(actor, unk_bss_5134 + 0x367, 0, NULL);
            }
            if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
                mDoAud_seStart(Z2SE_SY_ITEM_SET_X, 0, 0, 0);
                i_this->demo_mode = 79;
                i_this->demo_camera_no = 0;
            }
        }

        koro2 = (fshop_class*)fpcM_Search(s_koro2ball_sub, i_this);
        if (koro2 != NULL) {
            koro2->field_0x0572 = 1;
        }
        break;
    }
    case 79: {
        i_this->field_0x7b9 = 0;
        if (i_this->demo_camera_no >= 2) {
            if (i_this->demo_camera_no == 2) {
                i_this->msg_flow.init(actor, 0x34c, 0, NULL);
                __memcpy(unkIntArr2, unkLimitsMs2, sizeof(unkLimitsMs2));
                dTimer_createTimer(6, unkIntArr2[0], 1, 0, 210.0f, 410.0f, 32.0f, 419.0f);
            }
            dTimer_c* timer = dComIfG_getTimerPtr();
            if (timer != 0 && i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
                i_this->demo_mode = 0x48;

                dComIfG_TimerStart(6, 0);

                Z2GetAudioMgr()->subBgmStart(Z2BGM_KOROKORO_GAME);

                fshop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);
                fshop->field_0x4062 = 0;
                fshop->field_0x4060 = 0;

                koro2 = (fshop_class*)fpcM_Search(s_koro2ball_sub, i_this);
                if (koro2 != NULL) {
                    koro2->field_0x0572 = 1;
                }
            }
        }
        break;
    }
    case 80: {
        if (i_this->actor.eventInfo.checkCommandDemoAccrpt() == 0) {
            fopAcM_orderPotentialEvent(actor, dEvtCnd_CANDEMO_e, 0xffff, 0);
            i_this->actor.eventInfo.onCondition(dEvtCnd_CANDEMO_e);
            return;
        }
        playerCamera->mCamera.Stop();
        i_this->demo_mode = 81;
        i_this->demo_camera_no = 0;
        playerCamera->mCamera.SetTrimSize(1);
        daPy_getPlayerActorClass()->changeOriginalDemo();
        daPy_getPlayerActorClass()->changeDemoMode(1, 0, 0, 0);
        i_this->demo_way.set(-610.0f, 143.0f, 407.0f);
        i_this->demo_eye.set(-880.0f, 146.0f, 502.0f);
        i_this->demo_zoom = 30.0f;
    }
    case 81: {
        cLib_addCalc2(&i_this->demo_zoom, 25.0f + TREG_F(12), 0.1f, 0.2f);
        if (i_this->demo_camera_no >= 1) {
            if (i_this->demo_camera_no == 1) {
                i_this->msg_flow.init(actor, 0x362, 0, NULL);
            }
            if (i_this->demo_camera_no == 15) {
                i_this->bck_no = 2;
                anm_init(i_this, 0x12, -10.0f, 2, 1.0f);
            }
            if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
                i_this->bck_no = 0;
                i_this->demo_mode = 100;
                anm_init(i_this, 0x20, -10.0f, 2, 1.0f);
            }
        }
    }
    }

    if (i_this->demo_mode >= 100) {
        if (i_this->demo_mode == 100) {
            cMtx_YrotS(*calc_mtx, player->shape_angle.y);
            mae.x = 0.0f;
            mae.y = 200.0f + JREG_F(1);
            mae.z = -250.0f + JREG_F(2);
            MtxPosition(&mae, &i_this->demo_eye);
            i_this->demo_eye += player->current.pos;
            i_this->demo_way = player->current.pos;
            i_this->demo_way.y += 120.0f;
            playerCamera->mCamera.Reset(i_this->demo_way, i_this->demo_eye,
                                        i_this->demo_zoom, 0);
        }
        playerCamera->mCamera.Start();
        playerCamera->mCamera.SetTrimSize(0);
        dComIfGp_event_reset();
        daPy_getPlayerActorClass()->cancelOriginalDemo();
        i_this->demo_mode = 0;
        i_this->talk_time = 0x14;
    }
    if (i_this->demo_mode != 0) {
        i_this->demo_camera_no = i_this->demo_camera_no + 1;
        if (i_this->demo_camera_no > 10000) {
            i_this->demo_camera_no = 10000;
        }
        if (!demo_set) {
            playerCamera->mCamera.Set(i_this->demo_way, i_this->demo_eye, i_this->demo_zoom,
                                      0);
        }
    }
}

static u8 S_rain;

static void message_guide(npc_henna_class* i_this) {
    fopAc_ac_c* actor = &i_this->actor;
    daPy_py_c* unusedPlayer = (daPy_py_c*)dComIfGp_getPlayer(0);

    if (actor->eventInfo.checkCommandTalk()) {
        i_this->talk_mode = 2;
    }

    if (i_this->talk_mode == 2 && i_this->field_0x5ba != -1) {
        fopAcM_OnStatus(actor, 0);

        cLib_onBit<u32>(actor->attention_info.flags, (fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e));
        actor->attention_info.distances[1] = 2;
        actor->attention_info.distances[fopAc_attn_SPEAK_e] = 2;

        actor->eventInfo.onCondition(dEvtCnd_CANTALK_e);

        if (lrl != NULL && lrl->play_cam_mode != 0) {
            return;
        }

        if (dComIfGp_event_runCheck()) {
            if (!actor->eventInfo.checkCommandTalk()) {
                return;
            }

            if (i_this->talk_check == 0) {
                i_this->talk_check = 1;
                if (i_this->du_near_time != 0 &&
                    (i_this->du_talk_flag == 0 || (i_this->du_talk_ct & 0x3) == 0))
                {
                    i_this->msg_flow.init(actor, 0x3c3, 0, NULL);
                    i_this->du_near_time = 0;
                    i_this->du_talk_flag = 1;
                } else if (i_this->wait_time != 0) {
                    i_this->wait_time = 0;
                    i_this->msg_flow.init(actor, 0x3cc, 0, NULL);
                } else if (i_this->field_0x7cc == 0) {
                    if (i_this->du_talk_ct < 4) {
                        i_this->msg_flow.init(actor, 0x3cd, 0, NULL);
                    } else if ((i_this->du_talk_ct & 1) != 0) {
                        i_this->msg_flow.init(actor, 0x3cd, 0, NULL);
                    } else {
                        i_this->msg_flow.init(actor, 0x3ce, 0, NULL);
                    }
                } else {
                    i_this->msg_flow.init(actor, 0x3ce, 0, NULL);
                }
            }

            if (i_this->msg_flow.doFlow(actor, NULL, 0) != 0) {
                dComIfGp_event_reset();
                i_this->talk_check = 0;
            }
        } else {
            i_this->talk_check = 0;
        }
    } else {
        fopAcM_OffStatus(actor, 0);
        cLib_offBit<u32>(actor->attention_info.flags, (fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e));

        if (i_this->ride_flag == 0) {
            i_this->talk_check = 0;
        }
    }
}

static void* s_boat_sub(void* i_actor, void* i_data) {
    if (fopAc_IsActor(i_actor)) {
        if (fopAcM_GetName(i_actor) == PROC_CANOE) {
            return i_actor;
        }
    }
    return NULL;
}

static void env_control(npc_henna_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    fopAc_ac_c* actor = &i_this->actor;
    cXyz mae;
    cXyz ato;
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    camera_class* camera = dComIfGp_getCamera(0);

    mae.x = -2591.0f - player->current.pos.x;
    mae.z = -6742.0f - player->current.pos.z;
    mae.y = JMAFastSqrt(mae.x * mae.x + mae.z * mae.z);
    f32 rain;
    if (mae.y < 3500.0f) {
        rain = (3500.0f - mae.y) * 0.045f + 180.0f;
        if (rain > 210.0f) {
            rain = 210.0f;
        }
    } else {
        rain = 180.0f;
    }
    if (kankyo->raincnt != 0) {
        rain += kankyo->raincnt * 0.7f;
    }
    if (rain > 250.0f) {
        rain = 250.0f;
    }

    if (S_rain != 0) {
        i_this->rain_time = rain;
    } else {
        cLib_addCalc2(&i_this->rain_time, rain, 1.0f, 0.01f);
    }

    kankyo->rain_set = i_this->rain_time;

    u32 counter = (u16)g_Counter.mCounter0;
    u16 mask = 0x1fff;

    f32 unkFloat1 = 0.3f;
    if (kankyo->fishing_hole_season == 2) {
        mask = 0x1fff;
        unkFloat1 = 0.6f;
    }

    if ((counter & mask) == 0 && cM_rndF(1.0f) < unkFloat1) {
        OS_REPORT(" FISHING WETHER: %d\n", cDmr_FishingWether);
        if (cDmr_FishingWether == 0) {
            kankyo->wether = 1;
        } else if (cDmr_FishingWether == 1) {
            if (kankyo->fishing_hole_season == 2) {
                kankyo->wether = 3;
            } else if (kankyo->fishing_hole_season == 4) {
                kankyo->wether = 6;
            } else {
                kankyo->wether = 2;
            }
        } else if (cDmr_FishingWether == 2 || cDmr_FishingWether == 3 || cDmr_FishingWether == 6) {
            kankyo->wether = 0;
        }
        cDmr_FishingWether = kankyo->wether;
    }
}

static int daNpc_Henna_Execute(npc_henna_class* i_this) {
    fopAc_ac_c* unusedPlayer = dComIfGp_getPlayer(0);

    cXyz mae;
    cXyz ato;

    env_control(i_this);
    if (i_this->fade_time != 0) {
        i_this->fade_time -= 1;
        if (i_this->fade_type == 0) {
            i_this->hide_body_flag = 1;
            i_this->rod_draw_flag = 0;
            mDoGph_gInf_c::fadeIn(0.0001f, g_blackColor);
            if (i_this->fade_time == 0) {
                mDoGph_gInf_c::fadeIn(0.066f, g_blackColor);
            }
            return 1;
        }

        f32 fade_spd;
        if (i_this->fade_time != 0) {
            fade_spd = 0.0001f;
        } else {
            fade_spd = 0.066f;
        }
        mDoGph_gInf_c::fadeIn(fade_spd, g_blackColor);
    }

    if (i_this->no_draw != 0) {
        return 1;
    }

    if (dComIfGp_checkPlayerStatus0(0, 0x100000) != 0) {
        i_this->wait_time = 100;
    }

    if (i_this->wait_time != 0) {
        i_this->wait_time--;
    }

    i_this->rod_hold_flag = 0;

    if (i_this->boat_id == -1) {
        base_process_class* boat = fpcM_Search(s_boat_sub, i_this);
        i_this->boat_id = fopAcM_GetID(boat);
    }

    lrl = (dmg_rod_class*)fpcM_Search(s_rod_sub, i_this);

    i_this->counter++;

    for (s32 i = 0; i < 10; i++) {
        if (i_this->timer[i] != 0) {
            i_this->timer[i]--;
        }
    }

    action(i_this);

    J3DModel* model = i_this->anm_p->getModel();
    if (i_this->ride_flag != 0) {
        daCanoe_c* boat = (daCanoe_c*)fopAcM_SearchByID(i_this->boat_id);
        if (boat != NULL) {
            MTXCopy(model->getAnmMtx(2), mDoMtx_stack_c::get());
            mDoMtx_stack_c::multVecZero(&i_this->actor.current.pos);
            i_this->actor.current.angle.y = boat->shape_angle.y;
            MTXCopy(boat->getModelMtx(), mDoMtx_stack_c::get());
        } else {
            mDoMtx_stack_c::transS(i_this->actor.current.pos.x, i_this->actor.current.pos.y,
                                   i_this->actor.current.pos.z);
        }
    } else {
        mDoMtx_stack_c::transS(i_this->actor.current.pos.x,
                               i_this->actor.current.pos.y + i_this->field_0x72c,
                               i_this->actor.current.pos.z);
        mDoMtx_stack_c::YrotM((s16)i_this->actor.shape_angle.y);
        mDoMtx_stack_c::transM(0.0f, i_this->field_0x72c, i_this->field_0x730);
    }
    mDoMtx_stack_c::scaleM(l_HIO.field_0x8, l_HIO.field_0x8, l_HIO.field_0x8);

    model->setBaseTRMtx(mDoMtx_stack_c::get());

    i_this->anm_p->play(&i_this->actor.eyePos, 0, 0);
    if ((i_this->res_id == 9 || i_this->res_id == 10) &&
        (i_this->anm_p->checkFrame(1.5f) != 0 || i_this->anm_p->checkFrame(9.5f) != 0 ||
         i_this->anm_p->checkFrame(17.5f) != 0))
    {
        fopAcM_seStart(&i_this->actor, Z2SE_HENA_CLAP, 0);
    }

    if (i_this->blink_time != 0) {
        i_this->blink_time--;
        i_this->bck_no = 1;
        if (i_this->blink_time == 0) {
            i_this->bck_no = 0;
        }
    }

    if (i_this->btk_no != 0) {
        i_this->anm_speed += 1.0f;
        if (i_this->anm_speed > i_this->btk[i_this->btk_no]->getEndFrame() - 2.0f) {
            i_this->anm_speed = i_this->btk[i_this->btk_no]->getEndFrame() - 2.0f;
        }
    } else {
        i_this->anm_speed = 0;
    }

    i_this->btk[i_this->btk_no]->setFrame(i_this->anm_speed);

    if (i_this->bck_no != 0) {
        i_this->btp_no = i_this->bck_no;
    } else {
        i_this->btp_no = 0;
    }

    if (i_this->btp_no == 0) {
        i_this->btp[0]->setFrame(i_this->anm_frame);
    } else {
        i_this->btp[i_this->btp_no]->setFrame(1.0f);
    }

    J3DModelData* modelData = model->getModelData();

    s32 bck_offset = 0;
    if (i_this->mouth_time != 0) {
        i_this->mouth_time--;
        bck_offset = 4;
    }

    i_this->bck[i_this->bck_no + bck_offset]->entryJoint(modelData, 4);
    i_this->bck[i_this->bck_no + bck_offset]->play();

    if (i_this->bck_no == 3) {
        if (i_this->bck[i_this->bck_no + bck_offset]->getFrame() >
            i_this->bck[i_this->bck_no + bck_offset]->getEndFrame() - 2.0f)
        {
            i_this->bck[i_this->bck_no + bck_offset]->setFrame(
                i_this->bck[i_this->bck_no + bck_offset]->getEndFrame() - 2.0f);
        }
    }

    i_this->anm_p->modelCalc();

    i_this->rod_draw_flag = 1;

    if (i_this->rod_hold_flag != 0) {
        MTXCopy(model->getAnmMtx(0x11), mDoMtx_stack_c::get());
        mDoMtx_stack_c::transM(5.0f + VREG_F(0), 12.0f + VREG_F(1), 4.0f + VREG_F(2));
        mDoMtx_stack_c::YrotM(VREG_S(0) - 12500);
        mDoMtx_stack_c::XrotM(VREG_S(1) - 20000);
        mDoMtx_stack_c::ZrotM(i_this->rod_curv_z);
    } else {
        daCanoe_c* boat = (daCanoe_c*)fopAcM_SearchByID(i_this->boat_id);
        if (boat != NULL) {
            MTXCopy(boat->getModelMtx(), mDoMtx_stack_c::get());
            mDoMtx_stack_c::YrotM(VREG_S(3) - 17314);
            mDoMtx_stack_c::XrotM(VREG_S(4));
            mDoMtx_stack_c::ZrotM(VREG_S(5));
            mDoMtx_stack_c::transM(-60.0f + VREG_F(3), 30.0f + VREG_F(4), 50.0f + VREG_F(5));
        } else {
            if (i_this->arg0 == 1) {
                fshop_class* shop = (fshop_class*)fpcM_Search(s_shop_sub, i_this);
                if (shop != NULL) {
                    s32 unkInt1 = shop->field_0x6b34 * cM_ssin(shop->field_0x6b34 * 6500) *
                                  (-50.0f + JREG_F(7));
                    mDoMtx_stack_c::transS(-460.0f + AREG_F(0), 51.0f + AREG_F(1),
                                           -240.0f + AREG_F(2));
                    mDoMtx_stack_c::YrotM(-17729 + AREG_S(0));
                    mDoMtx_stack_c::XrotM(32505 + AREG_S(1));
                    mDoMtx_stack_c::ZrotM(unkInt1 + 2000 + AREG_S(2));
                } else {
                    mDoMtx_stack_c::transS(-790.0f + AREG_F(0), 153.0f + AREG_F(1),
                                           590.0f + AREG_F(2));
                    mDoMtx_stack_c::YrotM(AREG_S(0) - 9000);
                    mDoMtx_stack_c::XrotM(AREG_S(1) - 14000);
                }
            } else {
                i_this->rod_draw_flag = 0;
                MTXCopy(model->getAnmMtx(0x11), mDoMtx_stack_c::get());
            }
        }
    }

    i_this->model->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(model->getAnmMtx(4), mDoMtx_stack_c::get());

    mDoMtx_stack_c::multVecZero(&i_this->actor.eyePos);
    i_this->actor.eyePos.x = i_this->actor.eyePos.x + NREG_F(8);
    i_this->actor.attention_info.position = i_this->actor.eyePos;
    i_this->actor.attention_info.position.y += 40.0f;

    if (i_this->arg0 == 1) {
        message_shop(i_this);
        demo_camera_shop(i_this);
    } else {
        message_guide(i_this);
        demo_camera(i_this);
    }

    i_this->hide_body_flag = 0;

    if (i_this->ride_flag == 0) {
        camera_class* camera = dComIfGp_getCamera(0);

        mae.x = camera->lookat.center.x - camera->lookat.eye.x;
        mae.z = camera->lookat.center.z - camera->lookat.eye.z;
        s16 camera_rot = cM_atan2s(mae.x, mae.z);

        mae.x = i_this->actor.current.pos.x - camera->lookat.eye.x;
        mae.z = i_this->actor.current.pos.z - camera->lookat.eye.z;
        s16 lookat_rot = cM_atan2s(mae.x, mae.z);

        s16 range = lookat_rot - camera_rot;
        if (i_this->demo_mode == 0 && (range > 0x4000 || range < -0x4000) &&
            JMAFastSqrt(mae.x * mae.x + mae.z * mae.z) > AREG_F(11) + 500.0f)
        {
            i_this->hide_body_flag = 1;
        }
    }

    if (c_start != 0) {
        dScnKy_env_light_c* kankyo = dKy_getEnvlight();
        f32 dis;
        s16 angle;

        GXColor color;
        if (kankyo->fishing_hole_season == 2) {
            color.r = l_HIO.mSeason2ColorR;
            color.g = l_HIO.mSeason2ColorG;
            color.b = l_HIO.mSeason2ColorB;
            dis = l_HIO.mSeason2LightDist;
            angle = l_HIO.mSeason2LightAngle;
        } else if (kankyo->fishing_hole_season == 3) {
            color.r = l_HIO.mSeason3ColorR;
            color.g = l_HIO.mSeason3ColorG;
            color.b = l_HIO.mSeason3ColorB;
            dis = l_HIO.mSeason3LightDist;
            angle = l_HIO.mSeason3LightAngle;
        } else {
            color.r = l_HIO.mSeasonDefColorR;
            color.g = l_HIO.mSeasonDefColorG;
            color.b = l_HIO.mSeasonDefColorB;
            dis = l_HIO.mSeasonDefLightDist;
            angle = l_HIO.mSeasonDefLightAngle;
        }
        color.a = -1;

        cMtx_YrotS(*calc_mtx, i_this->actor.shape_angle.y + angle * 0xb6);

        mae.x = 0.0f;
        mae.y = 200.0f + BREG_F(10);
        mae.z = 500.0f + BREG_F(11);
        MtxPosition(&mae, &ato);
        ato += i_this->actor.current.pos;
        dKy_BossLight_set(&ato, &color, dis, 0);
    }
    return 1;
}

static bool daNpc_Henna_IsDelete(npc_henna_class* param_0) {
    return true;
}

static int daNpc_Henna_Delete(npc_henna_class* i_this) {
    dComIfG_resDelete(&i_this->phase, "Henna");
    if (i_this->hio_set != 0) {
        hio_set = 0;
    }
    return 1;
}

static int useHeapInit(fopAc_ac_c* actor) {
    static u32 btk_d[3] = {
        0x29,
        0x2A,
        0x2B,
    };
    static u32 btp_d[8] = {
        0x2E, 0x35, 0x32, 0x33, 0x2E, 0x34, 0x31, 0x31,
    };
    static u32 facebck_d[8] = {
        0x11, 0x0F, 0x0C, 0x0D, 0x10, 0x0E, 0x0B, 0x0B,
    };

    npc_henna_class* i_this = (npc_henna_class*)actor;

    s32 res_id;
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0) {
        res_id = 37;
    } else {
        res_id = 38;
    }

    i_this->anm_p = new mDoExt_McaMorf((J3DModelData*)dComIfG_getObjectRes("Henna", res_id), NULL,
                                        NULL, NULL, 0, 1.0f, 0, -1, 1, NULL, 0x80000, 0x11020284);
    if (i_this->anm_p == NULL || i_this->anm_p->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = i_this->anm_p->getModel();
    model->setUserArea((s32)actor);

    for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
        model->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack);
    }

    for (s32 i = 0; i < 3; i++) {
        i_this->btk[i] = new mDoExt_btkAnm();
        if (i_this->btk[i] == NULL) {
            return 0;
        }
        J3DAnmTextureSRTKey* srtKey = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("Henna", btk_d[i]);
        model = i_this->anm_p->getModel();
        if (i_this->btk[i]->init(model->getModelData(), srtKey, 1, 0, 1.0f, 0, -1) == 0) {
            return 0;
        }
    }

    for (s32 i = 0; i < 8; i++) {
        i_this->btp[i] = new mDoExt_btpAnm();
        if (i_this->btp[i] == NULL) {
            return 0;
        }
        J3DAnmTexPattern* texPattern = (J3DAnmTexPattern*)dComIfG_getObjectRes("Henna", btp_d[i]);
        model = i_this->anm_p->getModel();
        if (i_this->btp[i]->init(model->getModelData(), texPattern, 1, 2, 1.0f, 0, -1) ==
            0)
        {
            return 0;
        }
    }

    for (s32 i = 0; i < 8; i++) {
        i_this->bck[i] = new mDoExt_bckAnm();
        if (i_this->bck[i] == 0) {
            return 0;
        }
        J3DAnmTransform* anmTransform =
            (J3DAnmTransform*)dComIfG_getObjectRes("Henna", facebck_d[i]);
        if (i_this->bck[i]->init(anmTransform, 1, 2, 1.0f, 0, -1, false) == 0) {
            return 0;
        }
    }
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("Henna", 0x24);
    JUT_ASSERT(6547, modelData != NULL);
    i_this->model = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (i_this->model == 0) {
        return 0;
    } else {
        return 1;
    }
}

static int daNpc_Henna_Create(fopAc_ac_c* actor) {
    fopAcM_ct(actor, npc_henna_class);
    npc_henna_class* i_this = (npc_henna_class*)actor;

    cPhs__Step phase_state = (cPhs__Step)dComIfG_resLoad(&i_this->phase, "Henna");
    if (phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("NPC_HENNA PARAM %x\n", fopAcM_GetParam(i_this));
        i_this->arg0 = fopAcM_GetParam(actor);
        OS_REPORT("NPC_HENNA//////////////NPC_HENNA SET 1 !!\n");
        if (!fopAcM_entrySolidHeap(actor, useHeapInit, 0x4500)) {
            OS_REPORT("//////////////NPC_HENNA SET NON !!\n");
            return cPhs_ERROR_e;
        }
        OS_REPORT("//////////////NPC_HENNA SET 2 !!\n");

        if (!hio_set ) {
            i_this->hio_set = TRUE;
            hio_set = TRUE;
            // "Henna"
            l_HIO.no = mDoHIO_CREATE_CHILD("ヘナさま", &l_HIO);
        }
        actor->attention_info.flags = (fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e);
        i_this->action = 0;
        fopAcM_SetMtx(actor, i_this->anm_p->getModel()->getBaseTRMtx());
        c_start = 0;
        if (i_this->arg0 == 1) {
            i_this->field_0x70c = 1;
            i_this->action = 0x32;
            i_this->timer[5] = cM_rndF(1000.0f) + 1000.0f;
            actor->current.pos.set(-380.0f + TREG_F(10), 0.0f, 450.0f + TREG_F(10));
            actor->old = actor->current;
            s16 angle = 0x6000;
            if (cDmr_MadInfo != 0) {
                anm_init(i_this, 0x20, 0.0f, 2, 1.0f);
                i_this->mode = 5;
            } else {
                anm_init(i_this, 0x1a, 1.0f, 2, 1.0f);
                i_this->mode = 4;
                if (data_80450C99 != 0) {
                    data_80450C99 = 0;
                    i_this->demo_mode = 0x32;
                    angle = -0x8000;
                    i_this->fade_time = 10;
                    i_this->fade_type = 2;
                    if (data_80450CA0 != 0) {
                        anm_init(i_this, 0x20, 10.0f, 2, 1.0f);
                        i_this->mode = 5;
                        data_80450CA0 = 0;
                    } else {
                        i_this->counter = 0x46;
                    }
                }
            }
            /* dSv_event_flag_c::F_0463 - Fishing Pond - Reserved for fishing */
            dComIfGs_offEventBit(dSv_event_flag_c::saveBitLabels[0x1cf]);
            /* dSv_event_flag_c::F_0464 - Fishing Pond - Reserved for fishing */
            dComIfGs_offEventBit(dSv_event_flag_c::saveBitLabels[0x1d0]);
            i_this->start_pya = actor->shape_angle.y = actor->current.angle.y = angle;
            koro2_ct = dComIfGs_getEventReg(0xf63f);
            daNpc_Henna_Execute(i_this);
            fopAcM_create(PROC_FSHOP, -1, &actor->current.pos, fopAcM_GetRoomNo(actor), NULL,
                          NULL, -1);
            return phase_state;
        } else {
            dScnKy_env_light_c* kankyo = dKy_getEnvlight();
            if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0) {
                i_this->action = 0x3c;
                i_this->demo_mode = 100;
                c_start = 1;
                cXyz df_pos;
                if (kankyo->fishing_hole_season == 3) {
                    fopAc_ac_c* player = dComIfGp_getPlayer(0);
                    df_pos.set(player->current.pos.x, player->current.pos.y + 700.0f,
                                 player->current.pos.z);
                    fopAcM_create(PROC_NPC_DF, WREG_S(3) - 0xf4, &df_pos,
                                  fopAcM_GetRoomNo(actor), NULL, NULL, -1);
                }
                f32 rnd = cM_rndF(1.0f);
                if (rnd < 0.33f) {
                    df_pos.set(4400.0f, 0.0f, 2122.0f);
                } else if (rnd < 0.66f) {
                    df_pos.set(-606.0f, 0.0f, 5210.0f);
                } else {
                    df_pos.set(2249.0f, 50.0f, -2218.0f);
                }
                fopAcM_create(PROC_NPC_DU, 0xffffff00, &df_pos, fopAcM_GetRoomNo(actor), NULL,
                              NULL, -1);
                df_pos.x -= 300.0f;
                df_pos.z += 100.0f;
                fopAcM_create(PROC_NPC_DU, 0xffffff01, &df_pos, fopAcM_GetRoomNo(actor), NULL,
                              NULL, -1);
                for (s32 i = 0; i < 5; i++) {
                    df_pos.set(0.0f, 45.0f, 8000.0f);
                    fopAcM_create(PROC_BD, 0xffffffff, &df_pos, fopAcM_GetRoomNo(actor), NULL,
                                  NULL, -1);
                }
                df_pos.set(-1500.0f, 3000.0f + nREG_F(7), 3000.0f);
                fopAcM_create(PROC_NPC_TK, 0xffffffff, &df_pos, fopAcM_GetRoomNo(actor), NULL,
                              NULL, -1);
                data_80450C99 = 0;
                /* dSv_event_flag_c::F_0463 - Fishing Pond - Reserved for fishing */
                if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x1cf])) {
                    i_this->fade_time = 4;
                    i_this->no_draw = 1;
                } else {
                    i_this->fade_time = 20;
                    i_this->fade_type = 1;
                }
            }
            if (fopAcM_GetRoomNo(actor) == 4 &&
                strcmp(dComIfGp_getStartStageName(), "T_MUKAO") == 0)
            {
                cXyz mae;
                cXyz ato;
                csXyz angl(0.0f, 0.0f, 0.0f);
                s32 parameter;
                for (s32 i = 0; i < 50; i++) {
                    parameter = (s32)(cM_rndFX(5.0f) + 30.0f) << 8 | 0x5;
                    mDoMtx_YrotS(*calc_mtx, cM_rndF(65536.0f));
                    ato.x = 0.0f;
                    ato.y = cM_rndFX(50.0f) + -160.0f;
                    ato.z = cM_rndF(2300.0f);
                    MtxPosition(&ato, &mae);
                    angl.y = cM_rndF(65536.0f);
                    fopAcM_create(PROC_MG_FISH, parameter, &mae, fopAcM_GetRoomNo(actor),
                                  &angl, NULL, -1);
                }
                fopAcM_create(PROC_NPC_NE, 0xffffff01, &actor->home.pos, fopAcM_GetRoomNo(actor),
                              NULL, NULL, -1);
            }
            i_this->boat_id = -1;
            csXyz unused;
            if (kankyo->fishing_hole_season != 4 && cDmr_FishingWether == 6) {
                cDmr_FishingWether = 0;
            } else if (kankyo->fishing_hole_season == 4 &&
                       (cDmr_FishingWether == 2 || cDmr_FishingWether == 3))
            {
                cDmr_FishingWether = 0;
            }
            kankyo->wether = cDmr_FishingWether;
            S_rain = 1;
            daNpc_Henna_Execute(i_this);
            S_rain = 0;
        }
    }
    return phase_state;
}

static actor_method_class l_daNpc_Henna_Method = {
    (process_method_func)daNpc_Henna_Create,  (process_method_func)daNpc_Henna_Delete,
    (process_method_func)daNpc_Henna_Execute, (process_method_func)daNpc_Henna_IsDelete,
    (process_method_func)daNpc_Henna_Draw,
};

actor_process_profile_definition g_profile_NPC_HENNA = {
    fpcLy_CURRENT_e,          // mLayerID
    7,                        // mListID
    fpcPi_CURRENT_e,          // mListPrio
    PROC_NPC_HENNA,           // mProcName
    &g_fpcLf_Method.base,     // sub_method
    sizeof(npc_henna_class),  // mSize
    0,                        // mSizeOther
    0,                        // mParameters
    &g_fopAc_Method.base,     // sub_method
    342,                      // mPriority
    &l_daNpc_Henna_Method,    // sub_method
    0x00044000,               // mStatus
    fopAc_NPC_e,              // mActorType
    fopAc_CULLBOX_0_e,        // cullType
};

AUDIO_INSTANCES

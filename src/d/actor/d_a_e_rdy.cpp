/**
 * @file d_a_e_rdy.cpp
 * 
*/

#include "d/actor/d_a_e_rdy.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/actor/d_a_e_yc.h"
#include "d/actor/d_a_horse.h"
#include "d/d_bomb.h"
#include "d/d_cc_d.h"
#include "d/d_msg_object.h"
#include "dol2asm.h"
#include "d/d_camera.h"
#include "f_op/f_op_kankyo_mng.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"

enum Action {
    /* 0x00 */ ACT_NORMAL,
    /* 0x03 */ ACT_FIGHT_RUN = 3,
    /* 0x04 */ ACT_FIGHT,
    /* 0x05 */ ACT_BOW_RUN,
    /* 0x06 */ ACT_BOW,
    /* 0x07 */ ACT_BOW2,
    /* 0x09 */ ACT_BOW_IKKI2 = 9,
    /* 0x0A */ ACT_AVOID,
    /* 0x13 */ ACT_BOMB_ACTION = 0x13,
    /* 0x14 */ ACT_S_DAMAGE,
    /* 0x15 */ ACT_DAMAGE,
    /* 0x16 */ ACT_DROP,
    /* 0x17 */ ACT_A_DAMAGE,
    /* 0x18 */ ACT_STAND,
    /* 0x19 */ ACT_COMMANDER,
    /* 0x1A */ ACT_BOW3,
    /* 0x1B */ ACT_EXCITE,
    /* 0x1D */ ACT_WATER = 0x1D,
    /* 0x1E */ ACT_TKUSA,
    /* 0x20 */ ACT_YC_RIDE = 0x20,
    /* 0x33 */ ACT_JYUNKAI = 0x33,
};

enum Animation {
    /* 0x04 */ ANM_ARMAMENT = 4,
    /* 0x05 */ ANM_ATTACK01,
    /* 0x06 */ ANM_AVOID,
    /* 0x07 */ ANM_BLOW,
    /* 0x08 */ ANM_BOW_READY,
    /* 0x09 */ ANM_BOW_RREADY,
    /* 0x0A */ ANM_BOW_RSHOOT,
    /* 0x0B */ ANM_BOW_SHOOT,
    /* 0x0C */ ANM_DAMAGE_L,
    /* 0x0D */ ANM_DAMAGE_R,
    /* 0x0E */ ANM_DAMAGE_S,
    /* 0x0F */ ANM_DAMAGE_W,
    /* 0x10 */ ANM_DEAD_ARROW,
    /* 0x11 */ ANM_DIEA,
    /* 0x12 */ ANM_DIEA_UP,
    /* 0x13 */ ANM_DIEB,
    /* 0x14 */ ANM_DIEB_UP,
    /* 0x15 */ ANM_DROWNEDA,
    /* 0x16 */ ANM_DROWNEDB,
    /* 0x17 */ ANM_FURA2,
    /* 0x18 */ ANM_GOSIGN,
    /* 0x19 */ ANM_JUMP_A,
    /* 0x1A */ ANM_JUMP_B,
    /* 0x1B */ ANM_JUMP_C,
    /* 0x1C */ ANM_KAMAE,
    /* 0x1D */ ANM_KICK,
    /* 0x1E */ ANM_KYORO2,
    /* 0x1F */ ANM_LOOKBACK,
    /* 0x20 */ ANM_PICKUP,
    /* 0x21 */ ANM_RATTACK01,
    /* 0x22 */ ANM_RATTACK01_WAIT,
    /* 0x23 */ ANM_RATTACK02,
    /* 0x24 */ ANM_RATTACK02_WAIT,
    /* 0x25 */ ANM_RATTACK03,
    /* 0x26 */ ANM_RATTACK04,
    /* 0x27 */ ANM_RDAMAGE,
    /* 0x28 */ ANM_RDAMAGE_BACK,
    /* 0x29 */ ANM_RFLY,
    /* 0x2A */ ANM_RFLY_GLIDE,
    /* 0x2B */ ANM_RHANGED,
    /* 0x2C */ ANM_RHANGED_BRASH,
    /* 0x2D */ ANM_RHANGED_BRASH2,
    /* 0x2E */ ANM_RHANGED_DAMAGE,
    /* 0x2F */ ANM_RHANGED_WAIT,
    /* 0x30 */ ANM_RHOVERING,
    /* 0x31 */ ANM_RJUMP_C,
    /* 0x32 */ ANM_RRUN,
    /* 0x33 */ ANM_RRUN02_BACK,
    /* 0x34 */ ANM_RRUN_BACK,
    /* 0x35 */ ANM_RSHOOT,
    /* 0x36 */ ANM_RSHOOT_READY,
    /* 0x37 */ ANM_RSHOOT_WAIT,
    /* 0x38 */ ANM_RSHOOT_WAIT02,
    /* 0x39 */ ANM_RSTEP_BACK,
    /* 0x3A */ ANM_RSTEP_L,
    /* 0x3B */ ANM_RSTEP_LBACK,
    /* 0x3C */ ANM_RSTEP_R,
    /* 0x3D */ ANM_RSTEP_RBACK,
    /* 0x3E */ ANM_RUN,
    /* 0x3F */ ANM_RUN02,
    /* 0x40 */ ANM_RWAIT,
    /* 0x41 */ ANM_RWAIT_BACK,
    /* 0x42 */ ANM_RWALK,
    /* 0x43 */ ANM_RWALK_BACK,
    /* 0x44 */ ANM_SHOOT,
    /* 0x45 */ ANM_SHOOT_READY,
    /* 0x46 */ ANM_SHOOT_WAIT,
    /* 0x47 */ ANM_SHOUT,
    /* 0x48 */ ANM_SIGN,
    /* 0x49 */ ANM_SLEEP_LOOKAROUND,
    /* 0x4A */ ANM_SLEEP_STANDUP,
    /* 0x4B */ ANM_SLEEP_WAIT,
    /* 0x4C */ ANM_WAIT01,
    /* 0x4D */ ANM_WALK,
};
  
enum Joint {
    /* 0x00 */ JNT_KOSI,
    /* 0x01 */ JNT_HIP1,
    /* 0x02 */ JNT_KOKA_L,
    /* 0x03 */ JNT_MOMO_L,
    /* 0x04 */ JNT_SUNE_L1,
    /* 0x05 */ JNT_ASI_L,
    /* 0x06 */ JNT_KOKA_R,
    /* 0x07 */ JNT_MOMOR_R,
    /* 0x08 */ JNT_SUNE_R1,
    /* 0x09 */ JNT_ASI_R,
    /* 0x0A */ JNT_MUNE1,
    /* 0x0B */ JNT_MUNE2,
    /* 0x0C */ JNT_KUBI,
    /* 0x0D */ JNT_HEAD,
    /* 0x0E */ JNT_HIMO_L,
    /* 0x0F */ JNT_HIMO_R,
    /* 0x10 */ JNT_SHOULDER_L,
    /* 0x11 */ JNT_ARM_L1,
    /* 0x12 */ JNT_ARM_L2,
    /* 0x13 */ JNT_HAND_L,
    /* 0x14 */ JNT_YUBI_L,
    /* 0x15 */ JNT_SHOULDER_R,
    /* 0x16 */ JNT_ARM_R1,
    /* 0x17 */ JNT_ARM_R2,
    /* 0x18 */ JNT_HAND_R,
    /* 0x19 */ JNT_YUBI_R,
 };

 enum WeaponType {
    /* 0 */ WEAPON_NONE,
    /* 1 */ WEAPON_CLUB,
    /* 2 */ WEAPON_BOW,
    /* 3 */ WEAPON_BOW_FIRE,
    /* 4 */ WEAPON_BOW_BOMB,
 };

/* 8076BDCC-8076BE80 0000EC 00B4+00 1/1 0/0 0/0 .text            __ct__13daE_RDY_HIO_cFv */
daE_RDY_HIO_c::daE_RDY_HIO_c() {
    field_0x4 = -1;
    mScale = 1.2f;
    field_0xc = 1.2f;
    field_0x10 = 3.5f;
    field_0x14 = 14.0f;
    field_0x18 = 250.0f;
    field_0x1c = 300.0f;
    field_0x20 = 1.1f;
    field_0x24 = 60;
    field_0x28 = 1300.0f;
    field_0x2c = 2000.0f;
    field_0x30 = 3.0f;
    field_0x34 = 3.0f;
    field_0x38 = 1;
    field_0x39 = 0;
    field_0x3a = 0;
    field_0x3b = 0;
    field_0x3c = 75.0f;
    field_0x48 = 5.0f;
    field_0x44 = 10.0f;
    field_0x4c = 33.0f;
    field_0x40 = 5.0f;
}

/* 8076BE80-8076BF6C 0001A0 00EC+00 23/23 0/0 0/0 .text            anm_init__FP11e_rdy_classifUcf */
static void anm_init(e_rdy_class* i_this, int i_anm, f32 i_morf, u8 i_attr, f32 i_rate) {
    J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mpArcName, i_anm);
    i_this->mpMorf->setAnm(bck, i_attr, i_morf, i_rate, 0.0f, -1.0f);
    i_this->mAnm = i_anm;

    if (i_anm == ANM_KYORO2) {
        i_this->mpMorf->setFrame(cM_rndF(30.0f));
    }
}

/* 8076BF6C-8076C484 00028C 0518+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
// NONMATCHING ordering issue
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        int jnt_no = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_rdy_class* _this = (e_rdy_class*)model->getUserArea();
        if (_this != NULL) {
            MTXCopy(model->getAnmMtx(jnt_no), *calc_mtx);

            if (jnt_no == JNT_KOSI) {
                if (_this->field_0xa98 == 3) {
                    mDoMtx_YrotM(*calc_mtx, _this->field_0xa9a);
                }
            } else if (jnt_no == JNT_HIP1) {
                if (_this->field_0xa98 == 3) {
                    mDoMtx_XrotM(*calc_mtx, _this->field_0xa9a);
                }
                mDoMtx_YrotM(*calc_mtx, _this->field_0xbb0);
                mDoMtx_ZrotM(*calc_mtx, _this->field_0xb8c[2]
                                        + (_this->field_0xbae - _this->field_0xb02[2].x));
            } else if (jnt_no == JNT_KOKA_L) {
                mDoMtx_YrotM(*calc_mtx, _this->field_0xb8c[7]);
            } else if (jnt_no == JNT_SUNE_L1) {
                mDoMtx_ZrotM(*calc_mtx, _this->field_0xb8c[8]);
            } else if (jnt_no == JNT_KOKA_R) {
                mDoMtx_YrotM(*calc_mtx, _this->field_0xb8c[9]);
            } else if (jnt_no == JNT_SUNE_R1) {
                mDoMtx_ZrotM(*calc_mtx, _this->field_0xb8c[10]);
            } else if (jnt_no == JNT_MUNE2) {
                mDoMtx_YrotM(*calc_mtx, _this->field_0xb02[1].y);
                if (_this->field_0xa98 == 3) {
                    mDoMtx_XrotM(*calc_mtx, _this->field_0xa9a);
                }
                mDoMtx_ZrotM(*calc_mtx, _this->field_0xb02[1].x + _this->field_0xb8c[1]);
                if (_this->field_0xa98 == 4) {
                    mDoMtx_YrotM(*calc_mtx, _this->field_0xa9c * -1.0f);
                    mDoMtx_XrotM(*calc_mtx, _this->field_0xa9c * 0.3f);
                }
                if (_this->field_0xa98 == 3) {
                    mDoMtx_ZrotM(*calc_mtx, _this->field_0xa9c);
                }
            } else if (jnt_no == JNT_HEAD) {
                if (_this->field_0xa98 != 3 && _this->field_0xa98 != 4) {
                    mDoMtx_YrotM(*calc_mtx, (_this->field_0xa9e - _this->field_0xa9a) / 2);
                    mDoMtx_ZrotM(*calc_mtx, (_this->field_0xb8c[0]
                                            + (_this->field_0xb02[0].x - _this->field_0xa9c)) / 2);
                }
            } else if (jnt_no == JNT_KUBI) {
                mDoMtx_YrotM(*calc_mtx, _this->field_0xb02[0].y);
                if (_this->field_0xa98 != 3 && _this->field_0xa98 != 4) {
                    mDoMtx_YrotM(*calc_mtx, (_this->field_0xa9e - _this->field_0xa9a) / 2);
                    mDoMtx_ZrotM(*calc_mtx, (_this->field_0xb8c[0]
                                            + (_this->field_0xb02[0].x - _this->field_0xa9c)) / 2);
                } else {
                    mDoMtx_ZrotM(*calc_mtx, _this->field_0xb02[0].x + _this->field_0xb8c[0]);
                }
            } else if (jnt_no == JNT_ARM_L1) {
                mDoMtx_YrotM(*calc_mtx, _this->field_0xb02[3].y + _this->field_0xb8c[3]);
            } else if (jnt_no == JNT_ARM_L2) {
                mDoMtx_YrotM(*calc_mtx, _this->field_0xb02[4].y + _this->field_0xb8c[4]);
            } else if (jnt_no == JNT_ARM_R1) {
                mDoMtx_YrotM(*calc_mtx, _this->field_0xb02[5].y + _this->field_0xb8c[5]);
            } else if (jnt_no == JNT_ARM_R2) {
                mDoMtx_YrotM(*calc_mtx, _this->field_0xb02[6].y + _this->field_0xb8c[6]);
            }

            if (_this->field_0xbaa != 0) {
                if (jnt_no & 1) {
                    mDoMtx_YrotM(*calc_mtx, _this->field_0xbaa);
                } else if (jnt_no & 2) {
                    mDoMtx_XrotM(*calc_mtx, _this->field_0xbaa);
                } else if (jnt_no & 4) {
                    mDoMtx_ZrotM(*calc_mtx, _this->field_0xbaa);
                }
            }

            model->setAnmMtx(jnt_no, *calc_mtx);
            MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
        }
    }

    return 1;
}

/* 8076C484-8076C54C 0007A4 00C8+00 1/1 0/0 0/0 .text            nodeCallBack_bow__FP8J3DJointi */
static int nodeCallBack_bow(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        int jnt_no = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_rdy_class* _this = (e_rdy_class*)model->getUserArea();
        if (_this != NULL && _this->field_0xa78 != 0) {
            MTXCopy(model->getAnmMtx(jnt_no), *calc_mtx);
            mDoMtx_ZrotM(*calc_mtx, _this->field_0xa78);
            model->setAnmMtx(jnt_no, *calc_mtx);
            MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
        }
    }

    return 1;
}

/* 8076C54C-8076C9D0 00086C 0484+00 1/0 0/0 0/0 .text            daE_RDY_Draw__FP11e_rdy_class */
static int daE_RDY_Draw(e_rdy_class* i_this) {
    if (i_this->field_0x5b8 == 12 && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[239])) {
        return 1;
    }
    
    if (i_this->field_0xbcb != 0) {
        return 1;
    }

    J3DModel* model = i_this->mpMorf->getModel();
    g_env_light.settingTevStruct(2, &i_this->current.pos, &i_this->tevStr);
    dComIfGd_setListDark();
    g_env_light.setLightTevColorType_MAJI(model, &i_this->tevStr);

    if (i_this->field_0xa38 != 0) {
        J3DModelData* model_data = model->getModelData();
        for (u16 i = 0; i < model_data->getMaterialNum(); i++) {
            J3DMaterial* material = model_data->getMaterialNodePointer(i);
            material->getTevColor(0)->r = i_this->field_0xa3c;
            material->getTevColor(0)->g = i_this->field_0xa3c;
            material->getTevColor(0)->b = i_this->field_0xa3c;
        }
    }

    i_this->mpMorf->entryDL();

    if (i_this->field_0xa38 != 0) {
        J3DModelData* model_data = model->getModelData();
        for (u16 i = 0; i < model_data->getMaterialNum(); i++) {
            J3DMaterial* material = model_data->getMaterialNodePointer(i);
            material->getTevColor(0)->r = 0;
            material->getTevColor(0)->g = 0;
            material->getTevColor(0)->b = 0;
        }
    }

    if (i_this->mWeaponType == WEAPON_CLUB) {
        g_env_light.setLightTevColorType_MAJI(i_this->mpWeaponModel, &i_this->tevStr);
        mDoExt_modelUpdateDL(i_this->mpWeaponModel);
    } else if (i_this->mWeaponType >= WEAPON_BOW) {
        g_env_light.setLightTevColorType_MAJI(i_this->mpBowMorf->getModel(), &i_this->tevStr);
        i_this->mpBowMorf->entryDL();
        if (i_this->field_0xa72 != 0) {
            g_env_light.setLightTevColorType_MAJI(i_this->mpWeaponModel, &i_this->tevStr);
            mDoExt_modelUpdateDL(i_this->mpWeaponModel);
        }
    }

    if (i_this->field_0x1367 != 0) {
        for (int i = 0; i < 2; i++) {
            g_env_light.setLightTevColorType_MAJI(i_this->mpEyeModel[i], &i_this->tevStr);
            J3DModelData* model_data = i_this->mpEyeModel[i]->getModelData();
            for (u16 j = 0; j < model_data->getMaterialNum(); j++) {
                J3DMaterial* material = model_data->getMaterialNodePointer(j);
                material->getTevColor(1)->r = 0xff;
                material->getTevColor(1)->g = 0x8a;
                material->getTevColor(1)->b = 0x18;
            }
            mDoExt_modelUpdateDL(i_this->mpEyeModel[i]);
        }
    }

    dComIfGd_setList();

    if (i_this->field_0xa8c != 2) {
        cXyz pos;
        pos.set(i_this->current.pos.x, i_this->current.pos.y + 100.0f, i_this->current.pos.z);
        i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, &pos, 1200.0f, 0.0f,
                                                i_this->current.pos.y, i_this->mAcch.GetGroundH(),
                                                i_this->mAcch.m_gnd, &i_this->tevStr, 0, 1.0f,
                                                dDlst_shadowControl_c::getSimpleTex());
        if (i_this->mWeaponType == WEAPON_CLUB) {
            dComIfGd_addRealShadow(i_this->mShadowKey, i_this->mpWeaponModel);
        }
    }

    if (i_this->field_0x69c != 0) {
        g_env_light.settingTevStruct(0x10, &i_this->current.pos, &i_this->mHawkGrassTevStr);
        g_env_light.setLightTevColorType_MAJI(i_this->mpHawkGrassModel, &i_this->mHawkGrassTevStr);
        mDoExt_modelUpdateDL(i_this->mpHawkGrassModel);
    }

    return 1;
}

/* 8076C9D0-8076CAA8 000CF0 00D8+00 3/3 0/0 0/0 .text other_bg_check__FP11e_rdy_classP10fopAc_ac_c
 */
static BOOL other_bg_check(e_rdy_class* i_this, fopAc_ac_c* i_actor) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    dBgS_LinChk lin_chk;
    cXyz start, end;
    end = i_actor->current.pos;
    end.y += 130.0f;
    start = _this->current.pos;
    start.y = _this->eyePos.y;
    lin_chk.Set(&start, &end, _this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

UNK_BSS(1109)
UNK_BSS(1107)
UNK_BSS(1105)
UNK_BSS(1104)
UNK_BSS(1099)
UNK_BSS(1097)
UNK_BSS(1095)
UNK_BSS(1094)
UNK_BSS(1057)
UNK_BSS(1055)
UNK_BSS(1053)
UNK_BSS(1052)
UNK_BSS(1014)
UNK_BSS(1012)
UNK_BSS(1010)
UNK_BSS(1009)

/* 8077A870-8077A874 000048 0004+00 1/1 0/0 0/0 .bss             boss */
static e_rdy_class* boss;

/* 8077A874-8077A878 00004C 0004+00 1/2 0/0 0/0 .bss             None */
static u8 data_8077A874[4];

/* 8077A884-8077A8D4 00005C 0050+00 15/18 0/0 0/0 .bss             l_HIO */
static daE_RDY_HIO_c l_HIO;

/* 8077A8D4-8077A8D8 0000AC 0002+02 4/5 0/0 0/0 .bss             S_find */
static s16 S_find;

/* 8077A8E4-8077A8F0 0000BC 000C+00 2/3 0/0 0/0 .bss             S_find_pos */
static cXyz S_find_pos;

/* 8077A8F0-8077A918 0000C8 0028+00 2/2 0/0 0/0 .bss             target_info */
static fopAc_ac_c* target_info[10];

/* 8077A918-8077A91C 0000F0 0004+00 2/2 0/0 0/0 .bss             target_info_count */
static int target_info_count;

/* 8076CAA8-8076CB24 000DC8 007C+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
static void* s_b_sub(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc)) {
        fopAc_ac_c* actor = static_cast<fopAc_ac_c*>(i_proc);
        if (dBomb_c::checkBombActor(actor) && !static_cast<dBomb_c*>(actor)->checkStateExplode()
            && target_info_count < 10)
        {
            target_info[target_info_count] = actor;
            target_info_count++;
        }
    }

    return NULL;
}

/* 8076CB24-8076CE10 000E44 02EC+00 2/2 0/0 0/0 .text            search_bomb__FP11e_rdy_classi */
// NONMATCHING very wrong
static dBomb_c* search_bomb(e_rdy_class* i_this, BOOL param_1) {
    if ((i_this->field_0xaf0 & 0x10000000) == 0) {
        return NULL;
    }

    target_info_count = 0;
    for (int i = 0; i < 10; i++) {
        target_info[i] = NULL;
    }
    fpcM_Search(s_b_sub, i_this);

    f32 threshold = 50.0f;
    if (target_info_count != 0) {
        cXyz vec1, vec2, vec3;
        for (int i = 0; i < target_info_count;) {
            for (; threshold <= 1500.0f; threshold += 50.0f) {
                for (i = 0; i != target_info_count; i++) {
                    dBomb_c* bomb = static_cast<dBomb_c*>(target_info[i]);
                    vec1.x = bomb->current.pos.x - i_this->eyePos.x;
                    vec1.y = bomb->current.pos.y + threshold - i_this->eyePos.y;
                    vec1.z = bomb->current.pos.z - i_this->eyePos.z;
                    vec2.x = bomb->current.pos.x - i_this->current.pos.x;
                    vec2.z = bomb->current.pos.z - i_this->current.pos.z;
                    f32 dist1 = JMAFastSqrt(vec1.x * vec1.x + vec1.z * vec1.z);
                    f32 dist2 = JMAFastSqrt(vec2.x * vec2.x + vec2.z * vec2.z);
                    if (dist1 < threshold && dist2 <= i_this->mPlayerDist + 30.0f
                        && (!other_bg_check(i_this, bomb) || !param_1))
                    {
                        if (!param_1) {
                            return bomb;
                        }

                        if (fabsf(bomb->current.pos.y + threshold - i_this->eyePos.y) <= 300.0f) {
                            s16 ang_y = i_this->shape_angle.y - cM_atan2s(vec1.x, vec1.z);
                            u32 abs_ang_y = ang_y;
                            if (ang_y < 0) {
                                abs_ang_y = (u16)-ang_y;
                            }
                            if (abs_ang_y < 20000) {
                                return bomb;
                            }
                            mDoMtx_YrotS(*calc_mtx, -i_this->shape_angle.y);
                            MtxPosition(&vec1, &vec3);
                            if (fabsf(vec3.x) < 500.0f && fabsf(vec3.y) < 300.0f
                                && vec3.z > -125.0f && vec3.z < 500.0f)
                            {
                                return bomb;
                            }
                        }
                    }
                }
            }

            return NULL;
        }
    } else {
        return NULL;
    }

    return NULL;
}

/* 8076CE10-8076CF1C 001130 010C+00 3/3 0/0 0/0 .text            way_bg_check__FP11e_rdy_classf */
static BOOL way_bg_check(e_rdy_class* i_this, f32 i_dist) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    dBgS_LinChk lin_chk;
    cXyz vec, start, end;
    start = _this->current.pos;
    start.y += 50.0f;
    mDoMtx_YrotS(*calc_mtx, _this->shape_angle.y);
    vec.x = 0.0f;
    vec.y = 50.0f;
    vec.z = i_dist;
    MtxPosition(&vec, &end);
    end += _this->current.pos;
    lin_chk.Set(&start, &end, _this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/* 8076CF1C-8076D004 00123C 00E8+00 1/1 0/0 0/0 .text            ride_off__FP11e_rdy_class */
static void ride_off(e_rdy_class* i_this) {
    e_yc_class* kargorok = static_cast<e_yc_class*>(fopAcM_SearchByID(i_this->mKargorokID));
    if (kargorok != NULL) {
        kargorok->field_0x6b0 = 0;
        i_this->field_0xa8e = 0;
        i_this->current.angle.x = 0;
        i_this->mKargorokID = fpcM_ERROR_PROCESS_ID_e;
    }

    i_this->field_0xa8c = 0;
    if (i_this->mpBowMorf != NULL) {
        J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mpArcName, 11);
        i_this->mpBowMorf->setAnm(bck, J3DFrameCtrl::LOOP_ONCE_e, 1.0f, 1.0f, 0.0f, -1.0f);
        i_this->mpBowMorf->setFrame(10.0f);
    }
    i_this->home.pos = i_this->current.pos;
}

/* 8076D004-8076D114 001324 0110+00 6/6 0/0 0/0 .text            pl_check__FP11e_rdy_classfs */
static BOOL pl_check(e_rdy_class* i_this, f32 i_dist, s16 i_angle) {
    if (dComIfGp_event_runCheck()) {
        return FALSE;
    }

    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    if (S_find != 0) {
        i_dist = 10000.0f;
    }

    if (i_this->mPlayerDist < i_dist) {
        s16 angle = i_this->shape_angle.y - i_this->mPlayerAngle;
        if (angle < i_angle && angle > (s16)-i_angle && !other_bg_check(i_this, player)) {
            return TRUE;
        }

        for (int i = 0; i <= 2; i++) {
            if (i_this->mCcSph[i].ChkCoHit()) {
                fopAc_ac_c* hit_actor = dCc_GetAc(i_this->mCcSph[i].GetCoHitObj()->GetAc());
                if (daPy_getPlayerActorClass() == hit_actor) {
                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

/* 8076D114-8076D138 001434 0024+00 3/3 0/0 0/0 .text            bomb_view_check__FP11e_rdy_class */
static dBomb_c* bomb_view_check(e_rdy_class* i_this) {
    return search_bomb(i_this, TRUE);
}

/* 8076D138-8076D15C 001458 0024+00 1/1 0/0 0/0 .text            bomb_check__FP11e_rdy_class */
static dBomb_c* bomb_check(e_rdy_class* i_this) {
    return search_bomb(i_this, FALSE);
}

/* 8076D15C-8076D24C 00147C 00F0+00 6/6 0/0 0/0 .text            move_gake_check__FP11e_rdy_classf
 */
static BOOL move_gake_check(e_rdy_class* i_this, f32 i_dist) {
    dBgS_GndChk gnd_chk;
    cXyz vec, pos;
    mDoMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
    vec.x = 0.0f;
    vec.y = 100.0f;
    vec.z = i_dist;
    MtxPosition(&vec, &pos);
    pos += i_this->current.pos;
    gnd_chk.SetPos(&pos);
    if (i_this->current.pos.y - dComIfG_Bgsp().GroundCross(&gnd_chk) > 300.0f) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/* 8076D24C-8076D3C4 00156C 0178+00 1/1 0/0 0/0 .text            way_check__FP11e_rdy_class */
static BOOL way_check(e_rdy_class* i_this) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    cXyz start, end, vec;
    s16 angle = cM_rndF(65535.0f);
    f32 dist = 1000.0f;
    start = _this->current.pos;
    start.y += 50.0f;
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 0x10; j++) {
            mDoMtx_YrotS(*calc_mtx, angle);
            vec.x = 0.0f;
            vec.y = 0.0f;
            vec.z = dist;
            MtxPosition(&vec, &end);
            end += start;
            dBgS_LinChk lin_chk;
            lin_chk.Set(&start, &end, _this);
            if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                angle += 0x1000;
            } else {
                i_this->mTargetAngleY = angle;
                return TRUE;
            }
        }
        dist -= 150.0f;
    }
    return FALSE;
}

/* 8076D3C4-8076D5F0 0016E4 022C+00 1/1 0/0 0/0 .text            path_check__FP11e_rdy_class */
static BOOL path_check(e_rdy_class* i_this) {
    static bool check_index[0xff];
    dBgS_LinChk lin_chk;
    cXyz start, end;
    start = i_this->current.pos;
    start.y += 10.0f;
    dStage_dPnt_c* point = i_this->mpPath->m_points;
    for (int i = 0; i < i_this->mpPath->m_num; i++, point++) {
        if (i < 0xff) {
            end.x = point->m_position.x;
            end.y = point->m_position.y + 10.0f;
            end.z = point->m_position.z;
            lin_chk.Set(&start, &end, i_this);
            if (!dComIfG_Bgsp().LineCross(&lin_chk)) {
                check_index[i] = true;
            } else {
                check_index[i] = false;
            }
        }
    }

    f32 dist, delta_x, delta_y, delta_z;
    f32 threshold = 100.0f;
    bool check = false;
    for (int i = 0; i < 100; threshold += 50.0f, i++) {
        point = i_this->mpPath->m_points;
        for (int i = 0; i < i_this->mpPath->m_num; i++, point++) {
            if (i < 0xff && check_index[i]) {
                delta_x = i_this->current.pos.x - point->m_position.x;
                delta_y = i_this->current.pos.y - point->m_position.y;
                delta_z = i_this->current.pos.z - point->m_position.z;
                dist = JMAFastSqrt(delta_x * delta_x + delta_y * delta_y + delta_z * delta_z);
                if (dist < threshold) {
                    i_this->mPathIndex = i;
                    check = true;
                    break;
                }
            }
        }
        if (check) break;
    }

    if (!check) {
        return FALSE;
    } else {
        if (cM_rndF(1.0f) < 0.5f) {
            i_this->mPathDirection = 1;
        } else {
            i_this->mPathDirection = -1;
        }
        return TRUE;
    }
}

/* 8076D5F0-8076DA3C 001910 044C+00 1/1 0/0 0/0 .text            e_rdy_normal__FP11e_rdy_class */
static void e_rdy_normal(e_rdy_class* i_this) {
    f32 target_speed = 0.0f;
    s16 check_angle = 0x4000;

    switch (i_this->mMode) {
    case 0:
        if (i_this->field_0x5bb) {
            anm_init(i_this, ANM_ARMAMENT, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            i_this->mMode = 1;
        } else {
            i_this->mMode = 2;
        }
        break;

    case 1:
        if ((int)i_this->mpMorf->getFrame() == 11) {
            i_this->field_0x5bb = false;
        }
        if (i_this->mpMorf->isStop()) {
            i_this->mMode = 2;
        }
        break;

    case 2:
        if (i_this->mTimer[0] == 0) {
            if (i_this->mpPath != NULL && path_check(i_this)) {
                i_this->mAction = ACT_JYUNKAI;
                i_this->mMode = 0;
                return;
            } else if (way_check(i_this)) {
                anm_init(i_this, ANM_WALK, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
                i_this->mMode = 3;
                i_this->mTimer[0] = cM_rndF(100.0f) + 100.0f;
            }
        } else {
            check_angle = 0x6000;
        }
        break;

    case 3:
        target_speed = l_HIO.field_0x10;
        if (i_this->speedF >= 3.0f && move_gake_check(i_this, 100.0f)) {
            i_this->mMode = 4;
            i_this->mTimer[0] = cM_rndF(100.0f) + 50.0f;
            anm_init(i_this, ANM_KYORO2, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        } else if (i_this->mTimer[0] == 0
            || (i_this->speedF >= 3.0f && way_bg_check(i_this, 200.0f)))
        {
            i_this->mMode = 2;
            i_this->mTimer[0] = cM_rndF(100.0f) + 50.0f;
            anm_init(i_this, ANM_KYORO2, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        }
        break;

    case 4:
        i_this->field_0xa98 = -1;
        if (i_this->mTimer[0] == 0) {
            i_this->mTargetAngleY = i_this->current.angle.y + 0x8000 + (int)cM_rndFX(4000.0f);
            anm_init(i_this, ANM_WALK, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 3;
            i_this->mTimer[0] = cM_rndF(100.0f) + 100.0f;
        }
        break;
    }

    if (target_speed) {
        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 8, 0x400);
        s16 angle_diff = i_this->current.angle.y - i_this->mTargetAngleY;
        if (angle_diff > 0x400 || angle_diff < -0x400) {
            target_speed = 0.0f;
        }
    }
    cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, 3.0f);

    f32 check_dist = i_this->field_0xa50;
    BOOL bVar1 = FALSE;
    if (i_this->field_0xa71 == 1 || S_find != 0) {
        if (i_this->field_0xa71 == 1) {
            bVar1 = TRUE;
        }
        check_dist = 10000.0f;
        check_angle = 0x7fff;
    }

    if (((i_this->mCounter & 7) == 0 || bVar1) && i_this->mMode >= 2
        && ((i_this->mCounter & 8) == 0 || bVar1))
    {
        if (pl_check(i_this, check_dist, check_angle)) {
            if (i_this->mWeaponType == WEAPON_CLUB) {
                i_this->mAction = ACT_FIGHT_RUN;
                i_this->mMode = -10;
                i_this->mTimer[0] = 60;
            } else if (i_this->mWeaponType >= WEAPON_BOW) {
                i_this->mAction = ACT_BOW_RUN;
                i_this->mMode = -10;
            }
        }
        if (bomb_view_check(i_this)) {
            i_this->mAction = ACT_BOMB_ACTION;
            i_this->mMode = 0;
        }
    }
}

/* 8076DA3C-8076E00C 001D5C 05D0+00 2/1 0/0 0/0 .text            e_rdy_fight_run__FP11e_rdy_class */
// NONMATCHING minor regalloc
static void e_rdy_fight_run(e_rdy_class* i_this) {
    f32 target_speed = 0.0f;
    s8 bVar1 = true;
    if (!pl_check(i_this, i_this->field_0xa50 + 50.0f, 0x7fff) && i_this->mTimer[0] == 0) {
        if (i_this->field_0xa6c == 0) {
            bVar1 = false;
        }
    } else {
        i_this->field_0xa6c = 20;
    }
    f32 tmp_hio_14 = l_HIO.field_0x14;

    if (i_this->mWeaponType != WEAPON_CLUB) {
        if (i_this->mWeaponType >= WEAPON_BOW) {
            i_this->mAction = ACT_BOW_RUN;
        } else {
            i_this->mAction = ACT_NORMAL;
            i_this->mTimer[0] = cM_rndF(50.0f) + 50.0f;
            anm_init(i_this, ANM_KYORO2, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        }
        i_this->mMode = 0;
        return;
    }

    switch (i_this->mMode) {
    case -20:
        if ((int)i_this->mpMorf->getFrame() == 11) {
            i_this->field_0x5bb = false;
        }
        if (i_this->mpMorf->isStop()) {
            i_this->mMode = 0;
        }
        break;

    case -10:
        anm_init(i_this, ANM_WAIT01, 7.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mTimer[1] = cM_rndF(10.0f) + 15.0f;
        i_this->mMode = -9;
        break;

    case -9:
        if (i_this->mTimer[1] == 0) {
            i_this->mMode = 0;
        }
        break;

    case 0:
        if (i_this->field_0x5bb) {
            anm_init(i_this, ANM_ARMAMENT, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            i_this->mMode = -20;
        } else if (i_this->mTimer[1] == 0) {
            anm_init(i_this, ANM_RUN, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, cM_rndFX(0.05f) + 1.0f);
            i_this->mMode = 1;
        }
        break;

    case 1:
        target_speed = tmp_hio_14;
        if (i_this->mPlayerDist < l_HIO.field_0x18) {
            anm_init(i_this, ANM_KAMAE, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 2;
        }
        break;

    case 2:
        target_speed = l_HIO.field_0x10;
        if (i_this->mPlayerDist > l_HIO.field_0x18 + 50.0f) {
            i_this->mMode = 0;
        } else if (i_this->mPlayerDist < l_HIO.field_0x18 - 50.0f) {
            i_this->mMode = 3;
        }
        break;

    case 3:
        target_speed = -l_HIO.field_0x10;
        if (i_this->mPlayerDist > l_HIO.field_0x18) {
            i_this->mMode = 2;
        }
        break;

    case 5:
        if (i_this->mTimer[3] != 0) {
            i_this->field_0xa98 = -1;
        }
        i_this->speedF = 0.0f;
        if (!move_gake_check(i_this, 100.0f)) {
            i_this->mMode = 2;
        }
        break;
    }

    if (i_this->mMode < 5 && move_gake_check(i_this, 100.0f)) {
        i_this->mMode = 5;
        i_this->mTimer[3] = cM_rndF(15.0f) + 30.0f;
        anm_init(i_this, ANM_WAIT01, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
    }

    if (i_this->mMode >= 0) {
        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mPlayerAngle, 4, 0x800);
        s16 angle_diff = i_this->current.angle.y - i_this->mPlayerAngle;
        if (angle_diff > 0x400 || angle_diff < -0x400) {
            target_speed = 0.0f;
        }
    }
    cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, 5.0f);

    if (!bVar1) {
        i_this->mAction = ACT_NORMAL;
        if (i_this->mMode == 5) {
            i_this->mTargetAngleY = i_this->current.angle.y + 0x8000 + (int)cM_rndFX(4000.0f);
            anm_init(i_this, ANM_WALK, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 3;
            i_this->mTimer[0] = cM_rndF(100.0f) + 100.0f;
            i_this->mTimer[1] = 40;
        } else {
            i_this->mMode = 0;
            i_this->mTimer[0] = cM_rndF(50.0f) + 50.0f;
            anm_init(i_this, ANM_KYORO2, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        }
    } else {
        if (i_this->mPlayerDist < l_HIO.field_0x18 && (i_this->field_0xaf0 & cc_pl_cut_bit_get())
            && i_this->mKnockback < 0.1f)
        {
            i_this->mAction = ACT_AVOID;
            i_this->mMode = 0;
            i_this->mIFrameTimer = 20;
        } else if (!i_this->field_0x5bb && i_this->mPlayerDist < l_HIO.field_0x1c
            && i_this->mTimer[2] == 0)
        {
            i_this->mTimer[2] = cM_rndF(20.0f) + 20.0f;
            if (cM_rndF(1.0f) < 0.5f) {
                i_this->mAction = ACT_FIGHT;
                i_this->mMode = 0;
            }
        }
    }

    if ((i_this->mCounter & 0xf) == 0 && bomb_view_check(i_this)) {
        i_this->mAction = ACT_BOMB_ACTION;
        i_this->mMode = 0;
    }

    if (i_this->mAction == ACT_FIGHT_RUN && i_this->field_0xa98 >= 0) {
        i_this->field_0xa98 = 1;
    }
}

/* 8076E00C-8076E06C 00232C 0060+00 1/1 0/0 0/0 .text            at_hit_check__FP11e_rdy_class */
static fopAc_ac_c* at_hit_check(e_rdy_class* i_this) {
    if (i_this->mMode >= 10) {
        return NULL;
    }

    if (i_this->mAtSph.ChkAtHit()) {
        return dCc_GetAc(i_this->mAtSph.GetAtHitObj()->GetAc());
    } else {
        return NULL;
    }
}

/* 8076E06C-8076E418 00238C 03AC+00 1/1 0/0 0/0 .text            e_rdy_fight__FP11e_rdy_class */
static void e_rdy_fight(e_rdy_class* i_this) {
    int frame = (int)i_this->mpMorf->getFrame();
    int last_frame;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, ANM_ATTACK01, 6.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        if (l_HIO.field_0x38 == 0) {
            i_this->mTimer[0] = 25;
        } else if (l_HIO.field_0x38 == 1) {
            i_this->mTimer[0] = 15;
        } else if (l_HIO.field_0x38 == 2) {
            i_this->mTimer[0] = 10;
        }
        i_this->mMode = 1;
        i_this->mTimer[1] = 5;
        i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_WAND_ATTACK, -1);
        break;

    case 1:
        if (i_this->mTimer[1] != 0) {
            cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mPlayerAngle, 4, 0x800);
        }
        if (frame == 30) {
            i_this->mpMorf->setFrame(0.0f);
        } else if (i_this->mTimer[0] == 0) {
            anm_init(i_this, ANM_ATTACK01, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, l_HIO.field_0x20);
            i_this->mpMorf->setFrame(30.0f);
            i_this->mMode = 2;
        }
        break;

    case 2:
        if (frame >= 44 && frame <= 47) {
            i_this->field_0xa7b = 1;
        }
        if (i_this->mpMorf->checkFrame(44.0f)) {
            i_this->mSound.startCreatureSound(Z2SE_EN_RD_SWING_CLUB, 0, -1);
        }
        if (i_this->mpMorf->checkFrame(50.0f)) {
            i_this->mpMorf->setPlaySpeed(1.0f);
        }
        if (l_HIO.field_0x38 == 0) {
            last_frame = 64;
        } else if (l_HIO.field_0x38 == 1) {
            last_frame = 54;
        } else if (l_HIO.field_0x38 == 2) {
            last_frame = 44;
        }
        if (frame >= last_frame) {
            i_this->mMode = 3;
            if (l_HIO.field_0x38 == 0) {
                i_this->mTimer[0] = 20;
            } else if (l_HIO.field_0x38 == 1) {
                i_this->mTimer[0] = 15;
            } else if (l_HIO.field_0x38 == 2) {
                i_this->mTimer[0] = 10;
            }
            anm_init(i_this, ANM_KAMAE, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        }
        break;

    case 3:
    case 10:
        if (i_this->mTimer[0] == 0) {
            i_this->mAction = ACT_FIGHT_RUN;
            i_this->mMode = 0;
        }
        break;
    }

    cLib_addCalc0(&i_this->speedF, 1.0f, 3.0f);

    if (i_this->field_0xa7b != 0) {
        fopAc_ac_c* hit_actor = at_hit_check(i_this);
        if (hit_actor != NULL && fopAcM_GetName(hit_actor) == PROC_ALINK
            && daPy_getPlayerActorClass()->checkPlayerGuard())
        {
            i_this->mpMorf->setPlaySpeed(-1.0f);
            dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            dKy_Sound_set(i_this->current.pos, 100, fopAcM_GetID(i_this), 5);
            i_this->mMode = 10;
            i_this->mTimer[0] = 10;
        }
    }
}

/* 8076E418-8076E81C 002738 0404+00 2/1 0/0 0/0 .text            e_rdy_bow_run__FP11e_rdy_class */
static void e_rdy_bow_run(e_rdy_class* i_this) {
    f32 target_speed = 0.0f;
    f32 tmp_hio_14 = l_HIO.field_0x14;
    s16 target_angle = fopAcM_searchPlayerAngleY(i_this);
    s8 bVar2 = false;

    switch (i_this->mMode) {
    case -20:
        if ((int)i_this->mpMorf->getFrame() == 11) {
            i_this->field_0x5bb = false;
        }
        if (i_this->mpMorf->isStop()) {
            i_this->mMode = 0;
        }
        break;

    case -10:
        anm_init(i_this, ANM_WAIT01, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mTimer[0] = cM_rndF(10.0f) + 15.0f;
        i_this->mMode = -9;
        break;

    case -9:
        i_this->field_0xa98 = 1;
        if (i_this->mTimer[0] == 0) {
            i_this->mMode = 0;
        }
        break;

    case 0:
        if (i_this->field_0x5bb) {
            anm_init(i_this, ANM_ARMAMENT, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            i_this->mMode = -20;
        } else {
            anm_init(i_this, ANM_RUN, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mTimer[0] = cM_rndF(50.0f) + 20.0f;
            if (i_this->mPlayerDist < l_HIO.field_0x28 - 100.0f) {
                i_this->mMode = 1;
            } else if (i_this->mPlayerDist > l_HIO.field_0x28 + 100.0f) {
                i_this->mMode = 2;
            } else {
                bVar2 = true;
            }
        }
        break;

    case 1:
        target_speed = tmp_hio_14;
        target_angle += 0x8000;
        if (i_this->mPlayerDist > l_HIO.field_0x28 || i_this->mTimer[0] == 0
            || i_this->mAcch.ChkWallHit())
        {
            bVar2 = true;
        }
        i_this->mTimer[2] = 20;
        break;

    case 2:
        target_speed = tmp_hio_14;
        if (i_this->mPlayerDist < l_HIO.field_0x28) {
            bVar2 = true;
        }
        break;
    }

    if (i_this->mMode >= 0) {
        cLib_addCalcAngleS2(&i_this->current.angle.y, target_angle, 2, 0x1000);
        s16 angle_diff = i_this->current.angle.y - target_angle;
        if (angle_diff > 0x800 || angle_diff < -0x800) {
            target_speed = 0.0f;
        }
    }
    cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, 5.0f);

    if (move_gake_check(i_this, 200.0f)) {
        bVar2 = true;
    }

    if (!i_this->field_0x5bb && bVar2) {
        if (i_this->field_0x5b8 == 3) {
            i_this->mAction = ACT_BOW2;
        } else {
            i_this->mAction = ACT_BOW;
        }
        i_this->mMode = 0;
        i_this->mTimer[1] = cM_rndF(150.0f);
    } else if (i_this->mTimer[2] == 0 && !pl_check(i_this, i_this->field_0xa50 + 50.0f, 0x7fff)) {
        i_this->mAction = ACT_NORMAL;
        i_this->mMode = 0;
        i_this->mTimer[0] = cM_rndF(50.0f) + 50.0f;
        anm_init(i_this, ANM_KYORO2, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
    } else if ((i_this->mCounter & 0xf) == 0 && bomb_view_check(i_this)) {
        i_this->mAction = ACT_BOMB_ACTION;
        i_this->mMode = 0;
    }

    if (i_this->mAction != ACT_BOW_RUN) {
        i_this->field_0xa98 = 0;
    }
}

/* 8076E81C-8076EB4C 002B3C 0330+00 1/1 0/0 0/0 .text            e_rdy_bow__FP11e_rdy_class */
static void e_rdy_bow(e_rdy_class* i_this) {
    J3DAnmTransform* bck;
    int frame = (int)i_this->mpMorf->getFrame();

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, ANM_SHOOT_READY, 5.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        bck = (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mpArcName, 8);
        i_this->mpBowMorf->setAnm(bck, J3DFrameCtrl::LOOP_ONCE_e, 5.0f, 0.9f, 0.0f, -1.0f);
        i_this->mMode = 1;
        i_this->speedF = 0.0f;
        break;

    case 1:
        i_this->field_0xa98 = 4;
        if (frame >= 10) {
            i_this->field_0xa72 = 1;
        }
        if (frame == 20) {
            i_this->mSound.startCreatureSound(Z2SE_OBJ_ARROW_DRAW_NORMAL, 0, -1);
        }
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, ANM_SHOOT_WAIT, 4.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mTimer[0] = cM_rndF(10.0f) + 10.0f;
            i_this->mMode = 2;
        }
        break;

    case 2:
        i_this->field_0xa98 = 4;
        if (i_this->mTimer[0] == 0) {
            if (i_this->field_0xa74 == 0 && !dMsgObject_isTalkNowCheck()) {
                anm_init(i_this, ANM_SHOOT, 1.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
                bck = (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mpArcName, 11);
                i_this->mpBowMorf->setAnm(bck, J3DFrameCtrl::LOOP_ONCE_e, 1.0f, 1.0f, 0.0f, -1.0f);
                i_this->mMode = 3;
            } else {
                i_this->mAction = ACT_BOW_RUN;
                i_this->mMode = 0;
            }
        }
        i_this->field_0xa72 = 1;
        break;

    case 3:
        if (frame <= 3) {
            i_this->field_0xa72 = 1;
            i_this->field_0xa98 = 4;
        }
        if (frame == 2) {
            i_this->field_0xa73 = 1;
        }
        if (i_this->mpMorf->isStop()) {
            if (i_this->mTimer[1] == 0 && (i_this->mPlayerDist < l_HIO.field_0x28 - 200.0f
                                            || i_this->mPlayerDist > l_HIO.field_0x28)) {
                if (!(i_this->mPlayerDist < l_HIO.field_0x28 - 200.0f
                                            && way_bg_check(i_this, -100.0f))) {
                    i_this->mAction = ACT_BOW_RUN;
                }
                i_this->mMode = 0;
            } else {
                i_this->mMode = 0;
            }
        }
        break;
    }

    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mPlayerAngle, 4, 0x1000);
}

/* 8076EB4C-8076EBB8 002E6C 006C+00 1/1 0/0 0/0 .text            s_command3_sub__FPvPv */
static void* s_command3_sub(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_E_RDY) {
        e_rdy_class* other = static_cast<e_rdy_class*>(i_proc);
        if (other != i_this && other->mAction == ACT_COMMANDER) {
            return other;
        }
    }
    return NULL;
}

/* 8076EBB8-8076F0E0 002ED8 0528+00 1/1 0/0 0/0 .text            e_rdy_bow2__FP11e_rdy_class */
// NONMATCHING regalloc
static s8 e_rdy_bow2(e_rdy_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz vec1, vec2;
    J3DAnmTransform* bck;
    int frame = (int)i_this->mpMorf->getFrame();

    s8 ret = false;
    if (i_this->mMode <= 1) {
        if (i_this->mPlayerDist < i_this->field_0xa50 && !other_bg_check(i_this, player)) {
            i_this->mMode = 2;
        }
        ret = true;
    }

    if (i_this->mpPath != NULL) {
        dStage_dPnt_c* point = i_this->mpPath->m_points;
        i_this->field_0xaa4.x = point->m_position.x;
        i_this->field_0xaa4.y = point->m_position.y;
        i_this->field_0xaa4.z = point->m_position.z;
        vec1 = i_this->field_0xaa4 - i_this->current.pos;
        i_this->mPlayerAngle = cM_atan2s(vec1.x, vec1.z);
    }

    int sw_bit = fopAcM_GetParam(i_this) >> 0x18;
    BOOL bVar2 = FALSE;
    if (sw_bit != 0xff && dComIfGs_isSwitch(sw_bit, fopAcM_GetRoomNo(i_this))) {
        bVar2 = TRUE;
    }

    switch (i_this->mMode) {
    case 0:
        if (i_this->mTimer[0] == 0) {
            anm_init(i_this, ANM_KYORO2, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 1;
            i_this->mTimer[0] = cM_rndF(40.0f) + 60.0f;
        }
        break;

    case 1:
        if (i_this->mTimer[0] == 0) {
            anm_init(i_this, ANM_WAIT01, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mTimer[0] = cM_rndF(100.0f) + 100.0f;
            i_this->mMode = 0;
        }
        break;

    case 2:
        anm_init(i_this, ANM_SHOOT_READY, 5.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        bck = (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mpArcName, 8);
        i_this->mpBowMorf->setAnm(bck, J3DFrameCtrl::LOOP_ONCE_e, 5.0f, 0.9f, 0.0f, -1.0f);
        i_this->mMode = 3;
        i_this->speedF = 0.0f;
        break;

    case 3:
        i_this->field_0xa98 = 4;
        if (frame >= 10) {
            i_this->field_0xa72 = 1;
        }
        if (frame == 20) {
            i_this->mSound.startCreatureSound(Z2SE_OBJ_ARROW_DRAW_NORMAL, 0, -1);
        }
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, ANM_SHOOT_WAIT, 4.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mTimer[0] = cM_rndF(10.0f);
            i_this->mMode = 4;
        }
        break;

    case 4:
        i_this->field_0xa98 = 4;
        if (i_this->mTimer[0] == 0) {
            if (i_this->mpPath == NULL && sw_bit == 0xff
                && (i_this->mPlayerDist > i_this->field_0xa50 || other_bg_check(i_this, player)))
            {
                i_this->mMode = 0;
                return ret;
            }
            if ((sw_bit == 0xff || (sw_bit != 0xff && bVar2)) && !dMsgObject_isTalkNowCheck()
                && i_this->field_0xa74 == 0)
            {
                anm_init(i_this, ANM_SHOOT, 1.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
                bck = (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mpArcName, 11);
                i_this->mpBowMorf->setAnm(bck, J3DFrameCtrl::LOOP_ONCE_e, 1.0f, 1.0f, 0.0f, -1.0f);
                i_this->mMode = 5;
            }
        }
        i_this->field_0xa72 = 1;
        break;

    case 5:
        if (frame <= 3) {
            i_this->field_0xa72 = 1;
            i_this->field_0xa98 = 4;
        }
        if (frame == 2) {
            i_this->field_0xa73 = 1;
        }
        if (i_this->mpMorf->isStop()) {
            if (i_this->mTimer[1] == 0 && i_this->mPlayerDist < l_HIO.field_0x28 - 200.0f) {
                if (!way_bg_check(i_this, -100.0f) && !move_gake_check(i_this, -200.0f)) {
                    i_this->mAction = ACT_BOW_RUN;
                    i_this->field_0x1365 = 0;
                }
                i_this->mMode = 0;
            } else {
                i_this->mMode = 0;
            }
        }
        break;
    }

    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mPlayerAngle, 4, 0x1000);
    if (i_this->field_0xa98 != 0 && i_this->mpPath != NULL) {
        i_this->field_0xa98 = 14;
    }
    return ret;
}

/* 8076F0E0-8076F438 003400 0358+00 2/1 0/0 0/0 .text            e_rdy_bow_ikki2__FP11e_rdy_class */
static void e_rdy_bow_ikki2(e_rdy_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    J3DAnmTransform* bck;
    int frame = (int)i_this->mpMorf->getFrame();

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, ANM_WAIT01, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mMode = 1;
        i_this->current.pos.x = -92938.0f;
        i_this->current.pos.z = 49992.0f;
        break;

    case 1:
        if (player->current.pos.z > 35000.0f) {
            i_this->mDemoMode = 20;
            i_this->mDemoTimer = 0;
            i_this->mMode = 2;
        }
        break;

    case 2:
        i_this->mCamDist = 0.0f;
        break;

    case 3:
        cLib_addCalc2(&i_this->current.pos.x, -93658.0f, 1.0f, 50.0f);
        cLib_addCalc2(&i_this->current.pos.z, 49894.0f, 1.0f, 50.0f);
        break;

    case 4:
        anm_init(i_this, ANM_SHOOT_READY, 5.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        bck = (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mpArcName, 8);
        i_this->mpBowMorf->setAnm(bck, J3DFrameCtrl::LOOP_ONCE_e, 5.0f, 0.9f, 0.0f, -1.0f);
        i_this->mMode = 5;
        break;

    case 5:
        if (frame >= 10) {
            i_this->field_0xa72 = 1;
        }
        if (frame == 20) {
            i_this->mSound.startCreatureSound(Z2SE_OBJ_ARROW_DRAW_NORMAL, 0, -1);
        }
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, ANM_SHOOT_WAIT, 4.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 6;
            i_this->mTimer[0] = 40;
        }
        break;

    case 6:
        if (i_this->mTimer[0] == 0 && i_this->field_0xa74 == 0) {
            anm_init(i_this, ANM_SHOOT, 1.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            bck = (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mpArcName, 11);
            i_this->mpBowMorf->setAnm(bck, J3DFrameCtrl::LOOP_ONCE_e, 1.0f, 1.0f, 0.0f, -1.0f);
            i_this->mMode = 7;
        }
        i_this->field_0xa72 = 1;
        break;

    case 7:
        if (frame <= 3) {
            i_this->field_0xa72 = 1;
        }
        if (frame == 2) {
            i_this->field_0xa73 = 1;
        }
        if (i_this->mpMorf->isStop()) {
            i_this->mMode = 2;
            anm_init(i_this, ANM_WAIT01, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        }
        break;
    }

    if (i_this->mMode >= 6) {
        i_this->field_0xa98 = 14;
        i_this->field_0xaa4.set(-93666.0f, player->current.pos.y + i_this->mCamDist,
                                player->current.pos.z);
        f32 fVar2;
        if (i_this->mDemoMode > 25) {
            fVar2 = -1000.0f;
        } else {
            fVar2 = 5400.0f;
        }
        cLib_addCalc2(&i_this->mCamDist, fVar2, 0.1f, 200.0f);
    }
}

/* 8076F438-8076F59C 003758 0164+00 1/1 0/0 0/0 .text            e_rdy_avoid__FP11e_rdy_class */
static void e_rdy_avoid(e_rdy_class* i_this) {
    int frame = (int)i_this->mpMorf->getFrame();

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, ANM_AVOID, 1.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        i_this->mMode = 1;
        i_this->speedF = -30.0f;
        i_this->speed.y = 20.0f;
        i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_DODGE, -1);
        break;

    case 1:
        if (frame == 6) {
            i_this->mpMorf->setPlaySpeed(0.0f);
            i_this->mMode = 2;
        }
        break;

    case 2:
        if (i_this->mAcch.ChkGroundHit()) {
            i_this->mpMorf->setPlaySpeed(1.0f);
            i_this->mMode = 3;
        }
        break;

    case 3:
        cLib_addCalc0(&i_this->speedF, 1.0f, 10.0f);
        if (i_this->mpMorf->isStop()) {
            i_this->mAction = ACT_FIGHT_RUN;
            i_this->mMode = 0;
            i_this->mTimer[0] = 30;
        }
        break;
    }
}

/* 8076F59C-8076F71C 0038BC 0180+00 1/1 0/0 0/0 .text            s_kusa_sub__FPvPv */
static void* s_kusa_sub(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_Obj_Yobikusa) {
        fopAc_ac_c* grass = static_cast<fopAc_ac_c*>(i_proc);
        fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
        cXyz delta = grass->current.pos - _this->current.pos;
        if (delta.abs() < 1000.0f) {
            return i_proc;
        }
    }
    return NULL;
}

/* 8076F71C-807701F4 003A3C 0AD8+00 2/1 0/0 0/0 .text            e_rdy_tkusa__FP11e_rdy_class */
// NONMATCHING regswap
static void e_rdy_tkusa(e_rdy_class* i_this) {
    cXyz vec;
    i_this->mIFrameTimer = 20;

    if (i_this->mKargorokID == fpcM_ERROR_PROCESS_ID_e) {
        i_this->mKargorokID = fopAcM_GetID(fopAcM_SearchByName(PROC_E_YC));
    }
    e_yc_class* kargorok = static_cast<e_yc_class*>(fopAcM_SearchByID(i_this->mKargorokID));
    if (kargorok != NULL) {
        kargorok->mRiderID = fopAcM_GetID(i_this);
    }

    int frame = (int)i_this->mpMorf->getFrame();
    f32 target_speed = 0.0f;

    fopAc_ac_c* grass = (fopAc_ac_c*)fpcM_Search(s_kusa_sub, i_this);
    if (grass == NULL) {
        return;
    }

    if (i_this->mMode <= 1 && i_this->mPlayerDist < 1300.0f) {
        i_this->mDemoMode = 10;
        i_this->mDemoTimer = 0;
        i_this->mMode = 2;
        anm_init(i_this, ANM_WAIT01, 7.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
    }

    switch (i_this->mMode) {
    case 0:
        if (i_this->mTimer[0] == 0) {
            anm_init(i_this, ANM_WALK, 7.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mTimer[0] = cM_rndF(60.0f) + 60.0f;
            i_this->mMode = 1;
            vec.x = i_this->home.pos.x + cM_rndFX(200.0f) - i_this->current.pos.x;
            vec.z = i_this->home.pos.z + cM_rndFX(200.0f) - i_this->current.pos.z;
            i_this->mTargetAngleY = cM_atan2s(vec.x, vec.z);
        }
        break;

    case 1:
        target_speed = l_HIO.field_0x10;
        if (i_this->mTimer[0] == 0) {
            anm_init(i_this, ANM_KYORO2, 7.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 0;
            i_this->mTimer[0] = cM_rndF(30.0f) + 60.0f;
        }
        break;

    case 2:
        if (i_this->mDemoMode == 11) {
            if (i_this->mDemoTimer > 70) {
                vec = grass->current.pos - i_this->current.pos;
                i_this->mTargetAngleY = cM_atan2s(vec.x, vec.z) + -1000;
            } else if (i_this->mDemoTimer > 30) {
                i_this->mTargetAngleY = i_this->mPlayerAngle;
                if (i_this->mDemoTimer == 31) {
                    i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_NOTICE, -1);
                }
            }
        } else if (i_this->mDemoTimer == 110) {
            anm_init(i_this, ANM_RUN, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 3;
            i_this->mDemoMode++;
            i_this->mDemoTimer = 0;
        }
        break;

    case 3:
        target_speed = l_HIO.field_0x14;
        vec = grass->current.pos - i_this->current.pos;
        i_this->mTargetAngleY = cM_atan2s(vec.x, vec.z);
        if (vec.abs() < 160.0f) {
            anm_init(i_this, ANM_WAIT01, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mTimer[0] = 20;
            i_this->mMode = 4;
        }
        break;

    case 4:
        if (i_this->mTimer[0] == 0) {
            anm_init(i_this, ANM_PICKUP, 5.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            i_this->mMode = 5;
        }
        break;

    case 5:
        if (frame == 15) {
            fopAcM_setCarryNow(grass, FALSE);
            i_this->field_0x69c = 1;
            i_this->mSound.startCreatureSound(Z2SE_AL_PICKUP_GRASS, 0, -1);
            i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_CALLING, -1);
        }
        if (frame == 30) {
            i_this->mDemoMode++;
        }
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, ANM_BLOW, 0.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 6;
            i_this->mTimer[0] = 220;
        }
        break;

    case 6:
        if (i_this->mTimer[0] == 215) {
            mDoAud_seStart(Z2SE_PLAY_REED_TOBIKUSA, NULL, 0, 0);
            i_this->mTimer[2] = 100;
        }
        if (i_this->mTimer[0] == 140) {
            i_this->mDemoMode++;
            i_this->mDemoTimer = 0;
        }
        if (i_this->mTimer[0] == 100) {
            mDoAud_seStart(Z2SE_PLAY_REED_TOBIKUSA, NULL, 0, 0);
            i_this->mTimer[2] = 100;
        }
        if (i_this->mTimer[0] == 50) {
            i_this->mMode = 7;
            i_this->mTimer[0] = 3;
            kargorok->mMode = 2;
            kargorok->current = kargorok->home;
            kargorok->shape_angle = kargorok->current.angle;
            kargorok->mNoDrawFlag = true;
            kargorok->mAngleSpeedRatio = 0.0f;
        }
        break;

    case 7:
        if (i_this->mTimer[0] == 1) {
            i_this->mDemoMode = 16;
            i_this->mDemoTimer = 0;
            anm_init(i_this, ANM_WAIT01, 7.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            Z2GetAudioMgr()->setBattleBgmOff(false);
        }
        if (i_this->mDemoTimer == 309) {
            anm_init(i_this, ANM_LOOKBACK, 10.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            i_this->field_0x69c = 0;
            kargorok->mMode = 4;
            kargorok->speedF = 30.0f;
            mDoMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
            vec.x = 1100.0f;
            vec.y = 1050.0f;
            vec.z = -1100.0f;
            MtxPosition(&vec, &kargorok->current.pos);
            kargorok->current.pos += i_this->current.pos;
            vec = i_this->current.pos - kargorok->current.pos;
            kargorok->current.angle.y = cM_atan2s(vec.x, vec.z);
            kargorok->shape_angle.y = kargorok->current.angle.y;
            kargorok->shape_angle.z = 0x2000;
            kargorok->current.angle.z = 0x2000;
            i_this->mDemoMode = 17;
            i_this->mDemoTimer = 0;
            i_this->mMode = 8;
        }
        break;

    case 8:
        if (i_this->mDemoTimer == 95) {
            anm_init(i_this, ANM_RUN, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            vec = kargorok->current.pos - i_this->current.pos;
            i_this->mTargetAngleY = cM_atan2s(vec.x, vec.z);
            i_this->mDemoMode = 18;
            i_this->mDemoTimer = 0;
            i_this->mMode = 9;
            kargorok->mMode = 5;
        }
        break;

    case 9:
        if (i_this->mDemoTimer == 10) {
            anm_init(i_this, ANM_JUMP_A, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_JUMP_RIDING, -1);
            i_this->mMode = 10;
            i_this->home = i_this->current;
        }
        break;

    case 10:
        if (i_this->mpMorf->isStop()) {
            i_this->mMode = 11;
            anm_init(i_this, ANM_JUMP_B, 10.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            i_this->field_0xa8c = 1;
            i_this->field_0xa94 = 50.0f;
            i_this->mTimer[3] = 30;
        }
        break;

    case 11:
        if (i_this->field_0xa90 <= 0.0f) {
            anm_init(i_this, ANM_RJUMP_C, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            i_this->mMode = 12;
            kargorok->field_0x698 = -27.0f;
        }
        break;

    case 12:
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, ANM_RHOVERING, 15.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mpMorf->setFrame(kargorok->mpMorf->getFrame());
            i_this->mMode = 13;
            kargorok->mMode = 6;
            i_this->mDemoMode = 19;
            i_this->mDemoTimer = 0;
        }
        break;

    case 13:
        break;
    }

    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 2, 0x1000);
    s16 angle_diff = i_this->current.angle.y - i_this->mTargetAngleY;
    if (angle_diff > 0x400 || angle_diff < -0x400) {
        target_speed = 0.0f;
    }
    cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, 5.0f);
}

/* 807701F4-8077089C 004514 06A8+00 1/1 0/0 0/0 .text            e_rdy_yc_ride__FP11e_rdy_class */
static void e_rdy_yc_ride(e_rdy_class* i_this) {
    int frame = (int)i_this->mpMorf->getFrame();
    e_yc_class* kargorok = static_cast<e_yc_class*>(fopAcM_SearchByID(i_this->mKargorokID));
    i_this->mIFrameTimer = 20;

    if (kargorok == NULL) {
        kargorok = static_cast<e_yc_class*>(fopAcM_SearchByName(PROC_E_YC));
        i_this->mKargorokID = fopAcM_GetID(kargorok);
        return;
    }
    
    if (i_this->field_0xa6e != 0) {
        return;
    }

    int kargorok_frame = (int)kargorok->mpMorf->getFrame();
    if (i_this->mAnm != ANM_RHANGED && i_this->mAnm != ANM_RHANGED_BRASH
        && i_this->mAnm != ANM_RHANGED_BRASH2 && i_this->mAnm != ANM_RHANGED_DAMAGE)
    {
        i_this->field_0xa98 = 4;
    } else {
        i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_SNIPED_DAMAGE, -1);
    }

    switch (i_this->mMode) {
    case 0:
        if (kargorok->mAnm == e_yc_class::ANM_HOVERING && i_this->mAnm != ANM_RHOVERING) {
            anm_init(i_this, ANM_RHOVERING, 15.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mpMorf->setFrame(kargorok->mpMorf->getFrame());
        } else if (kargorok->mAnm == e_yc_class::ANM_FLY && i_this->mAnm != ANM_RFLY) {
            anm_init(i_this, ANM_RFLY, 15.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mpMorf->setFrame(kargorok->mpMorf->getFrame());
        } else if (kargorok->mAnm == e_yc_class::ANM_FLY_GLIDE && i_this->mAnm != ANM_RFLY_GLIDE) {
            anm_init(i_this, ANM_RFLY_GLIDE, 15.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mpMorf->setFrame(kargorok->mpMorf->getFrame());
        } else if (kargorok->mAnm == e_yc_class::ANM_HANGED && kargorok_frame == 1) {
            anm_init(i_this, ANM_RHANGED, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        } else if (kargorok->mAnm == e_yc_class::ANM_HANGED_WAIT
                                                            && i_this->mAnm != ANM_RHANGED_WAIT) {
            anm_init(i_this, ANM_RHANGED_WAIT, 3.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mpMorf->setFrame(kargorok->mpMorf->getFrame());
        } else if (kargorok->mAnm == e_yc_class::ANM_HANGED_DAMAGE && kargorok_frame == 1) {
            anm_init(i_this, ANM_RHANGED_DAMAGE, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        } else if (kargorok->mAnm == e_yc_class::ANM_HANGED_BRUSH && kargorok_frame == 1) {
            anm_init(i_this, ANM_RHANGED_BRASH, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        } else if (kargorok->mAnm == e_yc_class::ANM_HANGED_BRUSH2 && kargorok_frame == 1) {
            anm_init(i_this, ANM_RHANGED_BRASH2, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        }
        if (i_this->mAnm == ANM_RHOVERING) {
            i_this->mMode = 1;
            i_this->mTimer[0] = cM_rndF(30.0f) + 30.0f;
        }
        break;

    case 1:
        if (i_this->mTimer[0] == 0) {
            anm_init(i_this, ANM_RSHOOT_READY, 5.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mpArcName, 9);
            i_this->mpBowMorf->setAnm(bck, J3DFrameCtrl::LOOP_ONCE_e, 5.0f, 1.0f, 0.0f, -1.0f);
            i_this->mMode = 2;
        }
        break;

    case 2:
        if (frame == 14) {
            i_this->mSound.startCreatureSound(Z2SE_OBJ_ARROW_DRAW_NORMAL, 0, -1);
        }
        if (i_this->mpMorf->isStop()) {
            i_this->mMode = 3;
            anm_init(i_this, ANM_RSHOOT_WAIT, 4.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        }
        i_this->field_0xa72 = 1;
        break;

    case 3:
        if (i_this->mTimer[1] == 0 && !dComIfGp_event_runCheck()) {
            anm_init(i_this, ANM_RSHOOT, 1.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mpArcName, 11);
            i_this->mpBowMorf->setAnm(bck, J3DFrameCtrl::LOOP_ONCE_e, 1.0f, 1.0f, 0.0f, -1.0f);
            i_this->mMode = 4;
        }
        i_this->field_0xa72 = 1;
        break;

    case 4:
        if (frame <= 3) {
            i_this->field_0xa72 = 1;
        }
        if (frame == 2) {
            i_this->field_0xa73 = 1;
        }
        if (i_this->mpMorf->isStop()) {
            if (kargorok->mAnm == e_yc_class::ANM_HOVERING) {
                anm_init(i_this, ANM_RSHOOT_READY, 5.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
                J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mpArcName, 9);
                i_this->mpBowMorf->setAnm(bck, J3DFrameCtrl::LOOP_ONCE_e, 5.0f, 1.0f, 0.0f, -1.0f);
                i_this->mMode = 2;
                i_this->mTimer[1] = cM_rndF(30.0f) + 20.0f;
            } else {
                i_this->mMode = 0;
            }
        }
        break;
    }

    i_this->field_0xa8c = 2;
    i_this->field_0xa8e = 1;
    kargorok->field_0x6b0 = 1;
    if (i_this->mAnm == ANM_RFLY || i_this->mAnm == ANM_RFLY_GLIDE) {
        i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_RIDING_YELL, -1);
    }
}

/* 8077089C-80770CF8 004BBC 045C+00 2/1 0/0 0/0 .text            e_rdy_bomb_action__FP11e_rdy_class
 */
static void e_rdy_bomb_action(e_rdy_class* i_this) {
    cXyz vec1, vec2;
    dBomb_c* bomb = bomb_check(i_this);
    if (bomb == NULL) {
        i_this->mAction = ACT_FIGHT_RUN;
        i_this->mMode = 0;
        return;
    }

    vec1.x = bomb->current.pos.x - i_this->current.pos.x;
    vec1.z = bomb->current.pos.z - i_this->current.pos.z;
    s16 target_angle = cM_atan2s(vec1.x, vec1.z);
    f32 target_speed = 0.0f;

    switch (i_this->mMode) {
    case 0:
        i_this->mMode = 1;
        anm_init(i_this, ANM_WAIT01, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mTimer[1] = cM_rndF(10.0f) + 10.0f;
        // fallthrough

    case 1:
        if (i_this->mTimer[1] == 0 && bomb->speedF < 0.1f) {
            i_this->mMode = 2;
            anm_init(i_this, ANM_RUN, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, cM_rndFX(0.05f) + 1.0f);
        }
        break;

    case 2:
        if (bomb->speedF < 0.1f && !bomb->checkStateCarry()
            && JMAFastSqrt(vec1.x * vec1.x + vec1.z * vec1.z) < 250.0f)
        {
            s16 angle = i_this->mPlayerAngle - i_this->shape_angle.y;
            if (angle < 0x4000 && angle > -0x4000) {
                i_this->mMode = 5;
                break;
            }
        }
        target_angle += 0x8000;
        target_speed = l_HIO.field_0x14;
        if (JMAFastSqrt(vec1.x * vec1.x + vec1.z * vec1.z) > 600.0f) {
            i_this->mMode = 3;
            anm_init(i_this, ANM_WAIT01, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        }
        break;

    case 3:
        target_angle = i_this->mPlayerAngle;
        if (JMAFastSqrt(vec1.x * vec1.x + vec1.z * vec1.z) < 500.0f) {
            i_this->mMode = 0;
        }
        break;

    case 5:
        target_speed = l_HIO.field_0x14;
        i_this->field_0xa7d = 0;
        if (bomb->speedF > 0.1f) {
            i_this->mMode = 0;
        } else if (JMAFastSqrt(vec1.x * vec1.x + vec1.z * vec1.z) < 100.0f) {
            i_this->mTimer[0] = 20;
            i_this->mMode = 6;
            anm_init(i_this, ANM_KICK, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        }
        break;

    case 6:
        i_this->field_0xa7d = 0;
        target_angle = i_this->mPlayerAngle;
        if ((int)i_this->mpMorf->getFrame() <= 10) {
            mDoMtx_YrotS(*calc_mtx, target_angle);
            vec1.x = -30.0f;
            vec1.y = 0.0f;
            vec1.z = 60.0f;
            MtxPosition(&vec1, &vec2);
            vec2 += i_this->current.pos;
            cLib_addCalc2(&bomb->current.pos.x, vec2.x, 1.0f, 15.0f);
            cLib_addCalc2(&bomb->current.pos.z, vec2.z, 1.0f, 15.0f);
            if ((int)i_this->mpMorf->getFrame() == 10) {
                bomb->speedF = 30.0f;
                bomb->speed.y = 30.0f;
                bomb->current.angle.y = i_this->shape_angle.y;
            }
        }
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, ANM_WAIT01, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 3;
        }
        break;
    }

    cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, 5.0f);
    cLib_addCalcAngleS2(&i_this->current.angle.y, target_angle, 4, 0x1000);
    i_this->field_0xa98 = 11;
    i_this->field_0xaa4 = bomb->current.pos;
}

/* 80770CF8-80770E48 005018 0150+00 1/1 0/0 0/0 .text            e_rdy_s_damage__FP11e_rdy_class */
static void e_rdy_s_damage(e_rdy_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        i_this->mMode = 1;
        i_this->mTimer[0] = 10;
        if (i_this->field_0xa8e != 0) {
            e_yc_class* kargorok = static_cast<e_yc_class*>(fopAcM_SearchByID(i_this->mKargorokID));
            if (kargorok != NULL) {
                kargorok->field_0x6b0 &= ~i_this->field_0xa8e;
            }
            i_this->field_0xa8e = 0;
            i_this->mKargorokID = fpcM_ERROR_PROCESS_ID_e;
        }
        break;

    case 1:
        if (i_this->mTimer[1] != 0) {
            i_this->onHeadLockFlg();
        }
        if (i_this->mpMorf->isStop()) {
            if (i_this->mPrevAction == ACT_BOW2) {
                i_this->mAction = ACT_BOW2;
            } else if (i_this->mPrevAction == ACT_BOW3) {
                i_this->mAction = ACT_BOW3;
            } else {
                i_this->mAction = ACT_FIGHT_RUN;
                i_this->mTimer[0] = 40;
            }
            i_this->mMode = 0;
        }
    }
    
    cLib_addCalc0(&i_this->speedF, 1.0f, 3.0f);
}

/* 80770E48-80770FFC 005168 01B4+00 1/1 0/0 0/0 .text            kado_check__FP11e_rdy_class */
static int kado_check(e_rdy_class* i_this) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    dBgS_LinChk lin_chk;
    cXyz vec1, vec2, vec3;
    int ret = 0;
    mDoMtx_YrotS(*calc_mtx, i_this->field_0xadc.y);
    
    static int kado_bit[2] = {1, 2};
    static f32 kado_check_x[2] = {80.0f, -80.0f};

    for (int i = 0; i < 2; i++) {
        vec2 = _this->current.pos;
        vec2.y += 100.0f;
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = 70.0f;
        MtxPosition(&vec1, &vec3);
        vec2 += vec3;

        vec1.y = 50.0f;
        vec1.z = -150.0f;
        vec1.x = kado_check_x[i];
        MtxPosition(&vec1, &vec3);
        vec3 += vec2;
        
        lin_chk.Set(&vec2, &vec3, _this);
        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            ret |= kado_bit[i];
        }
    }

    if (ret == 3) {
        ret = 0;
    }
    return ret;
}

/* 80770FFC-807710DC 00531C 00E0+00 3/3 0/0 0/0 .text            rd_disappear__FP11e_rdy_class */
static void rd_disappear(e_rdy_class* i_this) {
    cXyz vec1, vec2;
    MTXCopy(i_this->mpMorf->getModel()->getAnmMtx(JNT_MUNE2), *calc_mtx);
    vec1.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&vec1, &vec2);
    fopAcM_createDisappear(i_this, &vec2, 10, 1, 12);

    if (i_this->field_0x5b8 == 12) {
        i_this->field_0xbcb = 50;
        Z2GetAudioMgr()->setBattleBgmOff(true);
    } else {
        fopAcM_delete(i_this);
    }

    int sw_bit = fopAcM_GetParam(i_this) >> 0x18;
    if (sw_bit != 0xff) {
        dComIfGs_onSwitch(sw_bit, fopAcM_GetRoomNo(i_this));
    }
}

/* 807710DC-80771230 0053FC 0154+00 1/1 0/0 0/0 .text            body_gake__FP11e_rdy_class */
static BOOL body_gake(e_rdy_class* i_this) {
    cXyz vec1, vec2;
    MTXCopy(i_this->mpMorf->getModel()->getAnmMtx(JNT_MUNE2), *calc_mtx);
    vec1.set(40.0f, 0.0f, 0.0f);
    MtxPosition(&vec1, &vec2);
    dBgS_ObjGndChk gnd_chk;
    vec2.y += 100.0f;
    gnd_chk.SetPos(&vec2);
    vec2.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
    if (i_this->current.pos.y - vec2.y > 300.0f) {
        return TRUE;
    } else {
        return FALSE;
    }
}

/* 807712A8-80771DA4 0055C8 0AFC+00 2/1 0/0 0/0 .text            e_rdy_damage__FP11e_rdy_class */
static void e_rdy_damage(e_rdy_class* i_this) {
    cXyz vec1, vec2;

    if (i_this->health <= 0) {
        fopAcM_OffStatus(i_this, 0);
        i_this->attention_info.flags = 0;
    }

    i_this->field_0xa34 = 0.0f;

    if (!daPy_py_c::i_checkNowWolf() && i_this->checkCutDownHitFlg()) {
        i_this->offCutDownHitFlg();
        i_this->mMode = 3;
        i_this->mTimer[0] = 100;
        i_this->mTimer[1] = 45;
        i_this->health = 0;
        i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_DEATH, -1);
        i_this->field_0xa38 = 1;
        daPy_getPlayerActorClass()->onEnemyDead();
        i_this->field_0xbac = 15;
        i_this->offDownFlg();
    }

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, ANM_DIEB, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        i_this->mMode = 1;
        i_this->speedF = 0.0f;
        ride_off(i_this);
        i_this->field_0xb88 = 8000.0f;
        if (i_this->health <= 0) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_DEATH, -1);
            i_this->field_0xa38 = 1;
            daPy_getPlayerActorClass()->onEnemyDead();
        } else {
            i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_DAMAGE, -1);
        }
        i_this->mTimer[0] = 0;
        break;

    case 1:
        if (i_this->mAcch.ChkWallHit() && i_this->mTimer[0] == 0) {
            int check = kado_check(i_this);
            if (check != 0) {
                if (check == 2) {
                    i_this->field_0xac6 = 0x1000;
                    i_this->field_0xadc.y += -7000;
                } else {
                    i_this->field_0xac6 = -0x1000;
                    i_this->field_0xadc.y += 7000;
                }
                i_this->field_0xb88 = 8000.0f;
                i_this->field_0xaf4 = 100.0f;
                i_this->field_0xafc = 100.0f;
                i_this->mTimer[0] = 60;
            } else {
                i_this->mMode = 10;
                i_this->speed.y = 0.0f;
                i_this->field_0xabc *= 0.2f;
                i_this->field_0xadc.y += 0x8000;
                i_this->field_0xbc0 = 5;
                i_this->field_0xaf4 = 100.0f;
                i_this->field_0xafc = 100.0f;
                i_this->field_0xac6 = 0;
            }
        } else {
            cLib_addCalcAngleS2(&i_this->field_0xadc.x, -0x4000, 1, 0x300);
            i_this->current.angle.y += i_this->field_0xac6;
            i_this->shape_angle.y = i_this->current.angle.y;
            if (i_this->field_0xadc.x <= -0x3000 && i_this->mAcch.ChkGroundHit()) {
                i_this->field_0xaee = 10;
                if (i_this->mInWater) {
                    i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_ASASE_M, 0, -1);
                } else {
                    i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_M, 0, -1);
                }
                i_this->mMode = 2;
                s16 angle_y;
                if (i_this->field_0xaef == 0) {
                    anm_init(i_this, ANM_DIEA, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
                    angle_y = i_this->field_0xadc.y;
                } else {
                    angle_y = i_this->field_0xadc.y + 0x8000;
                }
                i_this->current.angle.y = angle_y;
                if (i_this->field_0xac8 != 0) {
                    i_this->field_0xabc = 0.0f;
                    i_this->field_0xb88 = 2000.0f;
                } else {
                    if (i_this->field_0xaef == 0) {
                        i_this->field_0xaf4 = -100.0f;
                        i_this->field_0xafc = -100.0f;
                    } else {
                        i_this->field_0xaf4 = 100.0f;
                        i_this->field_0xafc = 100.0f;
                    }
                    i_this->field_0xaf8 = -0x5000;
                    i_this->field_0xb00 = -0x4000;
                    i_this->field_0xabc *= 0.5f;
                    i_this->speed.y = 20.0f;
                    i_this->field_0xac6 /= 2;
                    i_this->field_0xb88 = 8000.0f;
                    i_this->field_0x132d = 1;
                }
            }
        }
        break;

    case 2:
        i_this->current.angle.y += i_this->field_0xac6;
        i_this->shape_angle.y = i_this->current.angle.y;
        cLib_addCalcAngleS2(&i_this->field_0xadc.x, -0x4000, 1, 0x300);
        if (i_this->mAcch.ChkGroundHit()) {
            if (i_this->health > 0 && !daPy_py_c::i_checkNowWolf()) {
                i_this->onDownFlg();
            }
            dKy_Sound_set(i_this->current.pos, 100, fopAcM_GetID(i_this), 5);
            i_this->field_0xaee = 10;
            if (i_this->field_0xaef == 0) {
                anm_init(i_this, ANM_DIEA, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            } else {
                anm_init(i_this, ANM_DIEB, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            }
            i_this->field_0xabc = 0.0f;
            i_this->field_0xadc.x = -0x4000;
            s16 angle_y;
            if (i_this->field_0xaef == 0) {
                angle_y = i_this->field_0xadc.y;
                for (int i = 0; i < 4; i++) {
                    i_this->field_0xba2[i] = cM_rndF(10.0f);
                }
            } else {
                angle_y = i_this->field_0xadc.y + 0x8000;
            }
            i_this->current.angle.y = angle_y;
            if (daPy_py_c::i_checkNowWolf()) {
                i_this->mTimer[0] = 80;
                i_this->mTimer[1] = 55;
            } else {
                i_this->mTimer[0] = cM_rndF(10.0f) + 60.0f;
                i_this->mTimer[1] = 35;
            }
            i_this->mMode = 3;
            i_this->field_0xb88 = 1500.0f;
            i_this->field_0x132d = 1;
        }
        break;

    case 3:
        if (body_gake(i_this)) {
            i_this->field_0xabc = -20.0f;
            i_this->field_0xadc.x += -0x300;
        }
        if (i_this->health <= 0 && i_this->mTimer[1] == 0) {
            rd_disappear(i_this);
            return;
        }
        if (daPy_getPlayerActorClass()->getCutType() != daPy_py_c::CUT_TYPE_DOWN
            && i_this->mTimer[0] == 0)
        {
            i_this->field_0xabc = 0.0f;
            i_this->field_0xadc.x = -0x4000;
            i_this->offDownFlg();
            i_this->mMode = 20;
            if (i_this->field_0xaef == 0) {
                anm_init(i_this, ANM_DIEA_UP, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            } else {
                anm_init(i_this, ANM_DIEB_UP, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            }
            if (i_this->field_0x5b8 == 12) {
                i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_CALLING, -1);
            }
        }
        break;

    case 10:
        if (i_this->field_0xbc0 != 0) {
            cLib_addCalcAngleS2(&i_this->field_0xadc.x, 0, 1, 0x300);
        } else {
            cLib_addCalcAngleS2(&i_this->field_0xadc.x, -0x4000, 1, 0x800);
            if (i_this->mAcch.ChkGroundHit()) {
                i_this->mMode = 2;
                if (i_this->field_0xaef == 0) {
                    anm_init(i_this, ANM_DIEA, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
                    i_this->field_0xaf4 = -100.0f;
                    i_this->field_0xafc = -100.0f;
                } else {
                    i_this->field_0xaf4 = 100.0f;
                    i_this->field_0xafc = 100.0f;
                }
                i_this->field_0xaf8 = -0x5000;
                i_this->field_0xb00 = -0x4000;
                i_this->field_0xabc *= 0.5f;
                i_this->speed.y = 20.0f;
                s16 angle_y;
                if (i_this->field_0xaef == 0) {
                    angle_y = i_this->field_0xadc.y;
                } else {
                    angle_y = i_this->field_0xadc.y + 0x8000;
                }
                i_this->current.angle.y = angle_y;
                i_this->field_0xb88 = 8000.0f;
            }
        }
        break;

    case 20:
        if (i_this->mpMorf->getFrame() >= 35.0f) {
            i_this->field_0xae8.z = 0;
            i_this->field_0xae8.x = 0;
        }
        if (i_this->mpMorf->isStop()) {
            i_this->field_0xadc.y = 0;
            i_this->field_0xadc.x = 0;
            anm_init(i_this, ANM_WAIT01, 0.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mTimer[0] = 5;
            i_this->mMode = 21;
            i_this->offDownFlg();
        }
        break;

    case 21:
        if (i_this->mTimer[0] == 0) {
            i_this->mTimer[0] = cM_rndF(20.0f) + 20.0f;
            anm_init(i_this, ANM_KYORO2, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 22;
        }
        break;

    case 22:
        i_this->mIFrameTimer = 0;
        if (i_this->mTimer[0] == 0) {
            i_this->mAction = ACT_NORMAL;
            i_this->mMode = 0;
            i_this->mTimer[0] = cM_rndF(50.0f) + 50.0f;
            anm_init(i_this, ANM_KYORO2, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        }
        break;

    case 30:
        if (!i_this->checkWolfDownPullFlg()) {
            i_this->mTimer[1] = 0;
        }
        if (i_this->mTimer[0] == 0) {
            i_this->mMode = 31;
            if (i_this->field_0xaef == 0) {
                anm_init(i_this, ANM_DIEA_UP, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            } else {
                anm_init(i_this, ANM_DIEB_UP, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            }
            i_this->mTimer[0] = 10;
        } else if (i_this->mTimer[1] == 1) {
            i_this->onWolfDownPullEndFlg();
            i_this->offCutDownHitFlg();
            i_this->health = 0;
            i_this->mTimer[0] = 1000;
            i_this->mTimer[1] = 35;
            i_this->mMode = 3;
        }
        break;

    case 31:
        if (i_this->mTimer[0] == 0) {
            i_this->offDownFlg();
            i_this->mMode = 20;
            i_this->field_0xbca = 0;
        }
        break;
    }

    if (i_this->checkDownFlg()) {
        MTXCopy(i_this->mpMorf->getModel()->getAnmMtx(JNT_MUNE2), *calc_mtx);
        vec1.set(0.0f, 0.0f, 0.0f);
        MtxPosition(&vec1, &vec2);
        i_this->setDownPos(&vec2);
        i_this->field_0xa7d = 0;
    }

    if (i_this->field_0xbac != 0) {
        i_this->field_0xbac--;
        i_this->field_0xbaa = i_this->field_0xbac * cM_ssin(i_this->field_0xbac * 0x3800) * 100.0f;
    }
}

/* 80771DA4-80771F50 0060C4 01AC+00 1/1 0/0 0/0 .text            gake_check__FP11e_rdy_classf */
static s16 gake_check(e_rdy_class* i_this, f32 i_dist) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    dBgS_GndChk gnd_chk;
    dBgS_LinChk lin_chk;
    cXyz vec1, vec2;
    s16 angle_y = _this->shape_angle.y;
    for (int i = 0; i < 0x10; i++, angle_y += 0x1000) {
        mDoMtx_YrotS(*calc_mtx, angle_y);
        vec1.x = 0.0f;
        vec1.y = 100.0f;
        vec1.z = i_dist;
        MtxPosition(&vec1, &vec2);
        vec2 += _this->current.pos;
        gnd_chk.SetPos(&vec2);
        if (_this->current.pos.y - dComIfG_Bgsp().GroundCross(&gnd_chk) > 300.0f) {
            vec1 = _this->current.pos;
            vec1.y += 100.0f;
            lin_chk.Set(&vec1, &vec2, _this);
            if (!dComIfG_Bgsp().LineCross(&lin_chk)) {
                return angle_y;
            }
        }
    }
    return _this->shape_angle.y;
}

/* 80771F50-80772128 006270 01D8+00 1/1 0/0 0/0 .text            s_bikkuri_sub__FPvPv */
// NONMATCHING regswap
static void* s_bikkuri_sub(void* i_proc, void* i_this) {
    e_rdy_class* _this = static_cast<e_rdy_class*>(i_this);
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_E_RDY) {
        e_rdy_class* other = static_cast<e_rdy_class*>(i_proc);
        if (other != _this && other->mAction == ACT_BOW3 && other->mMode <= 2) {
            cXyz delta = other->current.pos - _this->current.pos;
            if (delta.abs() < 350.0f) {
                anm_init(other, ANM_KYORO2, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.3f);
                other->mMode = 3;
                other->mTimer[0] = cM_rndF(20.0f) + 40.0f;
            }
        }
    }
    return NULL;
}

/* 80772128-807724A0 006448 0378+00 1/1 0/0 0/0 .text            e_rdy_drop__FP11e_rdy_class */
static void e_rdy_drop(e_rdy_class* i_this) {
    f32 target_speed = 0.0f;

    switch (i_this->mMode) {
    case 0:
        i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_SNIPED_DAMAGE, -1);
        anm_init(i_this, ANM_DAMAGE_S, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        i_this->mMode = 1;
        break;

    case 1:
        i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_SNIPED_DAMAGE, -1);
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, ANM_FURA2, 0.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 2;
            i_this->mTargetAngleY = gake_check(i_this, 200.0f);
            fpcM_Search(s_bikkuri_sub, i_this);
            i_this->mTimer[0] = 60;
        }
        break;

    case 2:
        i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_SNIPED_DAMAGE, -1);
        target_speed = 4.0f;
        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 8, 0x400);
        if (i_this->mTimer[0] == 0) {
            i_this->mAction = ACT_A_DAMAGE;
            i_this->mMode = 0;
            return;
        }
        if (move_gake_check(i_this, 10.0f)) {
            i_this->mMode = 3;
            i_this->field_0xadc.y = i_this->shape_angle.y + 0x8000;
            i_this->field_0xadc.x = 0;
            i_this->mpMorf->setPlaySpeed(0.3f);
            i_this->field_0xbc8 = 0;
            i_this->mTimer[0] = 20;
        }
        break;

    case 3:
        target_speed = 3.0f;
        if (i_this->field_0xadc.x > -0x4000) {
            i_this->speed.y = 0.0f;
            i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_SNIPED_DAMAGE, -1);
        } else if (i_this->field_0xadc.x > -0x6800) {
            i_this->speed.y = -fabsf(cM_scos(i_this->field_0xadc.x) * 70.0f);
            i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_SNIPED_FALLING, -1);
        } else {
            i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_SNIPED_FALLING, -1);
        }
        cLib_addCalcAngleS2(&i_this->field_0xadc.x, -0x7000, 2, i_this->field_0xbc8);
        cLib_addCalcAngleS2(&i_this->field_0xbc8, 0x800, 1, 0x50);
        i_this->field_0xa7b = 2;
        if (i_this->mTimer[0] == 0 && i_this->current.pos.y <= i_this->mAcch.GetGroundH() + 100.0f)
        {
            i_this->current.pos.y = i_this->mAcch.GetGroundH() + 100.0f;
            i_this->field_0xadc.x = -0x4000;
            i_this->mAction = ACT_DAMAGE;
            i_this->mMode = 0;
            i_this->field_0xabc = 0.0f;
            i_this->health = 0;
        }
        break;
    }

    cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, 3.0f);
}

/* 807724A0-80772580 0067C0 00E0+00 1/1 0/0 0/0 .text            e_rdy_a_damage__FP11e_rdy_class */
static void e_rdy_a_damage(e_rdy_class* i_this) {
    i_this->mIFrameTimer = 3;

    switch (i_this->mMode) {
    case 0:
        i_this->mMode = 1;
        anm_init(i_this, ANM_DEAD_ARROW, 5.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        i_this->mTimer[0] = 80;
        dKy_Sound_set(i_this->current.pos, 100, fopAcM_GetID(i_this), 5);
        break;

    case 1:
        if (i_this->mTimer[0] == 0) {
            rd_disappear(i_this);
        }
        break;
    }

    cLib_addCalc0(&i_this->speedF, 1.0f, 3.0f);
}

/* 80772580-807726F0 0068A0 0170+00 1/1 0/0 0/0 .text            e_rdy_stand__FP11e_rdy_class */
static void e_rdy_stand(e_rdy_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        if (i_this->mTimer[0] == 0) {
            anm_init(i_this, ANM_KYORO2, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 1;
            i_this->mTimer[0] = cM_rndF(40.0f) + 60.0f;
        }
        break;

    case 1:
        if (i_this->mTimer[0] == 0) {
            anm_init(i_this, ANM_WAIT01, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mTimer[0] = cM_rndF(100.0f) + 100.0f;
            i_this->mMode = 0;
        }
        break;
    }

    f32 dist = i_this->field_0xa50;
    s16 angle = 0x4000;
    BOOL bVar1 = FALSE;
    if (i_this->field_0xa71 == 1 || S_find != 0) {
        if (i_this->field_0xa71 == 1) {
            bVar1 = TRUE;
        }
        dist = 10000.0f;
        angle = 0x7fff;
    }
    if (((i_this->mCounter & 7) == 0 || bVar1) && pl_check(i_this, dist, angle)
        && i_this->mWeaponType == WEAPON_CLUB)
    {
        i_this->mAction = ACT_FIGHT_RUN;
        i_this->mMode = -10;
        i_this->mTimer[0] = 60;
    }
}

/* 807726F0-80772B0C 006A10 041C+00 2/1 0/0 0/0 .text            e_rdy_bow3__FP11e_rdy_class */
static s8 e_rdy_bow3(e_rdy_class* i_this) {
    if (i_this->mIFrameTimer == 0 && i_this->mMode != 5
        && fpcM_Search(s_command3_sub, i_this) == NULL)
    {
        i_this->mMode = 5;
        i_this->mTimer[1] = cM_rndF(20.0f) + 40.0f;
        i_this->mTimer[0] = cM_rndF(20.0f) + 80.0f;
    }

    int frame = (int)i_this->mpMorf->getFrame();
    s8 turn_to_player = true;

    switch (i_this->mMode) {
    case 0:
        turn_to_player = false;
        anm_init(i_this, ANM_WAIT01, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mMode = 1;
        break;

    case 1:
        turn_to_player = false;
        break;

    case 3:
        if (i_this->mTimer[0] == 0) {
            i_this->mMode = 0;
        }
        break;

    case 5:
        if (i_this->mTimer[1] == 1) {
            anm_init(i_this, ANM_KYORO2, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.3f);
        }
        if (i_this->mTimer[0] == 10) {
            anm_init(i_this, ANM_WAIT01, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        }
        if (i_this->mTimer[0] == 0) {
            i_this->mAction = ACT_BOW2;
            i_this->mMode = 0;
        }
        break;

    case 10:
        if (i_this->mTimer[0] == 0) {
            anm_init(i_this, ANM_SHOOT_READY, 5.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mpArcName, 8);
            i_this->mpBowMorf->setAnm(bck, J3DFrameCtrl::LOOP_ONCE_e, 5.0f, 0.9f, 0.0f, -1.0f);
            i_this->mMode = 11;
            i_this->speedF = 0.0f;
        }
        break;

    case 11:
        i_this->field_0xa98 = 4;
        if (frame >= 10) {
            i_this->field_0xa72 = 1;
        }
        if (frame == 20) {
            i_this->mSound.startCreatureSound(Z2SE_OBJ_ARROW_DRAW_NORMAL, 0, -1);
        }
        if (i_this->mpMorf->isStop()) {
            anm_init(i_this, ANM_SHOOT_WAIT, 4.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mTimer[0] = cM_rndF(10.0f) + 10.0f;
            i_this->mMode = 12;
        }
        break;

    case 12:
        i_this->field_0xa98 = 4;
        if (i_this->mTimer[0] == 0 && i_this->field_0xa74 == 0 && !dMsgObject_isTalkNowCheck()) {
            anm_init(i_this, ANM_SHOOT, 1.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mpArcName, 11);
            i_this->mpBowMorf->setAnm(bck, J3DFrameCtrl::LOOP_ONCE_e, 1.0f, 1.0f, 0.0f, -1.0f);
            i_this->mMode = 13;
        }
        i_this->field_0xa72 = 1;
        break;

    case 13:
        if (frame <= 3) {
            i_this->field_0xa72 = 1;
            i_this->field_0xa98 = 4;
        }
        if (frame == 2) {
            i_this->field_0xa73 = 1;
        }
        if (i_this->mpMorf->isStop()) {
            i_this->mMode = 0;
        }
        break;
    }

    if (turn_to_player) {
        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mPlayerAngle, 4, 0x1000);
    }

    if (i_this->mPlayerDist < 500.0f) {
        i_this->mAction = ACT_BOW_RUN;
        i_this->mMode = 0;
        i_this->field_0x1365 = 0;
    }

    return false;
}

/* 80772B0C-80772B98 006E2C 008C+00 1/1 0/0 0/0 .text            s_command2_sub__FPvPv */
static void* s_command2_sub(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_E_RDY) {
        e_rdy_class* other = static_cast<e_rdy_class*>(i_proc);
        if (other->mAction == ACT_BOW3 && other->mMode < 10) {
            other->mTimer[0] = cM_rndF(10.0f) + 10.0f;
            other->mMode = 10;
        }
    }
    return NULL;
}

/* 80772B98-80772C04 006EB8 006C+00 1/1 0/0 0/0 .text            s_command4_sub__FPvPv */
static void* s_command4_sub(void* i_proc, void* i_this) {
    if (fopAc_IsActor(i_proc) && fopAcM_GetName(i_proc) == PROC_E_RDY) {
        e_rdy_class* other = static_cast<e_rdy_class*>(i_proc);
        if (other != i_this && other->mAction == ACT_BOW3) {
            return other;
        }
    }
    return NULL;
}

/* 80772C04-80773070 006F24 046C+00 2/1 0/0 0/0 .text            e_rdy_commander__FP11e_rdy_class */
static void e_rdy_commander(e_rdy_class* i_this) {
    s8 bVar1 = false;
    s8 turn_to_player = false;
    boss = i_this;

    if (i_this->mTimer[2] == 0 && fpcM_Search(s_command4_sub, i_this) == NULL) {
        i_this->mAction = ACT_BOW2;
        i_this->mMode = 0;
        return;
    }

    switch (i_this->mMode) {
    case 0:
        i_this->mMode = 1;
        break;

    case 1:
        bVar1 = true;
        if (i_this->mTimer[0] == 0) {
            anm_init(i_this, ANM_KYORO2, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mMode = 2;
            i_this->mTimer[0] = cM_rndF(40.0f) + 60.0f;
        }
        break;

    case 2:
        bVar1 = true;
        if (i_this->mTimer[0] == 0) {
            anm_init(i_this, ANM_WAIT01, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            i_this->mTimer[0] = cM_rndF(100.0f) + 100.0f;
            i_this->mMode = 1;
        }
        break;

    case 5:
        anm_init(i_this, ANM_WAIT01, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mTimer[0] = 30;
        i_this->mMode = 6;
        break;

    case 6:
        turn_to_player = true;
        if (i_this->mTimer[0] == 0) {
            anm_init(i_this, ANM_GOSIGN, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
            mDoAud_seStart(Z2SE_EN_RD_V_CALLING, NULL, 0, 0);
            i_this->mMode = 7;
            if (dComIfGp_event_runCheck()) {
                i_this->mTimer[0] = l_HIO.field_0x24 + 2;
            } else {
                i_this->mTimer[0] = 10;
            }
        }
        break;

    case 7:
        turn_to_player = true;
        if (i_this->mTimer[0] == 1) {
            fpcM_Search(s_command2_sub, i_this);
        }
        if (i_this->mTimer[0] == 0 && i_this->mpMorf->isStop()) {
            anm_init(i_this, ANM_WAIT01, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
            if (!dComIfGp_event_runCheck() && !pl_check(i_this, i_this->field_0xa50, 0x4000)) {
                i_this->mMode = 10;
                i_this->mTimer[1] = 350;
            } else {
                if (dComIfGp_event_runCheck()) {
                    i_this->mTimer[0] = 80;
                } else {
                    i_this->mTimer[0] = 0;
                }
                i_this->mMode = 6;
            }
        }
        break;

    case 10:
        anm_init(i_this, ANM_GOSIGN, 3.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        mDoAud_seStart(Z2SE_EN_RD_V_CALLING, NULL, 0, 0);
        fpcM_Search(s_command2_sub, i_this);
        i_this->mMode = 11;
        break;

    case 11:
        if (i_this->mpMorf->isStop()) {
            if (i_this->mTimer[1] == 0) {
                anm_init(i_this, ANM_WAIT01, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
                i_this->mTimer[0] = cM_rndF(30.0f) + 30.0f;
                i_this->mMode = 1;
            } else {
                i_this->mMode = 10;
            }
        }
        break;
    }

    if (bVar1 && pl_check(i_this, i_this->field_0xa50, 0x4000)) {
        i_this->mMode = 5;
        if (i_this->field_0x136c != 0) {
            dComIfGs_onSwitch(i_this->field_0x136c, fopAcM_GetRoomNo(i_this));
        }
    }

    if (turn_to_player) {
        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mPlayerAngle, 2, 0x800);
    }
}

/* 80773070-80773474 007390 0404+00 1/1 0/0 0/0 .text            e_rdy_excite__FP11e_rdy_class */
static void e_rdy_excite(e_rdy_class* i_this) {
    cXyz vec;
    f32 target_speed = 0.0f;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, ANM_WAIT01, 4.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mMode = 1;
        i_this->mTimer[0] = cM_rndF(20.0f) + 20.0f;
        i_this->mTargetAngleY = i_this->current.angle.y;
        i_this->field_0x5bc = S_find_pos;
        break;

    case 1:
        i_this->field_0xa98 = 11;
        i_this->field_0xaa4 = S_find_pos;
        if (i_this->mTimer[0] == 0) {
            if (i_this->field_0x1365 != 0) {
                i_this->mMode = 3;
                anm_init(i_this, ANM_KYORO2, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.3f);
                i_this->mTimer[0] = cM_rndF(20.0f) + 40.0f;
            } else {
                i_this->mMode = 2;
                anm_init(i_this, ANM_RUN, 2.0f, J3DFrameCtrl::LOOP_REPEAT_e,
                         cM_rndFX(0.05f) + 1.0f);
                i_this->mTimer[0] = cM_rndF(15.0f) + 30.0f;
            }
            vec = i_this->field_0x5bc - i_this->current.pos;
            i_this->mTargetAngleY = cM_atan2s(vec.x, vec.z);
        }
        break;

    case 2:
        i_this->field_0xa98 = 11;
        i_this->field_0xaa4 = i_this->field_0x5bc;
        target_speed = l_HIO.field_0x14;
        vec = i_this->field_0x5bc - i_this->current.pos;
        if (i_this->mTimer[0] == 0 || move_gake_check(i_this, 100.0f) || vec.abs() < 100.0f) {
            i_this->mMode = 3;
            anm_init(i_this, ANM_KYORO2, 5.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.3f);
            i_this->mTimer[0] = cM_rndF(20.0f) + 40.0f;
        }
        break;

    case 3:
        if (i_this->mTimer[0] == 0) {
            i_this->mAction = i_this->mPrevAction;
            if (i_this->mAction == ACT_STAND) {
                i_this->mAction = ACT_NORMAL;
            }
            i_this->mMode = 0;
        }
        break;
    }

    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 2, 0x800);
    s16 angle_diff = i_this->current.angle.y - i_this->mTargetAngleY;
    if (angle_diff > 0x400 || angle_diff < -0x400) {
        target_speed = 0.0f;
    }
    cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, 5.0f);
}

/* 80773474-807735A8 007794 0134+00 1/1 0/0 0/0 .text            e_rdy_water__FP11e_rdy_class */
static void e_rdy_water(e_rdy_class* i_this) {
    i_this->mIFrameTimer = 10;

    switch (i_this->mMode) {
    case 0: {
        i_this->speed.y = 0.0f;
        if (i_this->field_0xaef == 0) {
            anm_init(i_this, ANM_DROWNEDA, 3.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        } else {
            anm_init(i_this, ANM_DROWNEDB, 3.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        }
        i_this->mTimer[0] = 60;
        i_this->mMode = 1;
        i_this->speedF = 0.0f;
        i_this->field_0xabc = 0.0f;
        i_this->mKnockback = 0.0f;
        cXyz pos = i_this->current.pos;
        pos.y = i_this->mWaterHeight;
        fopKyM_createWpillar(&pos, 1.5f, 0);
        break;
    }

    case 1:
        i_this->speed.y = 0.0f;
        cLib_addCalc2(&i_this->current.pos.y, i_this->mWaterHeight, 0.5f, 5.0f);
        cLib_addCalcAngleS2(&i_this->field_0xadc.x, -0x4000, 4, 0x400);
        if (i_this->mTimer[0] == 0) {
            rd_disappear(i_this);
        }
    }
}

/* 807735A8-80773A8C 0078C8 04E4+00 1/1 0/0 0/0 .text            e_rdy_jyunkai__FP11e_rdy_class */
static void e_rdy_jyunkai(e_rdy_class* i_this) {
    cXyz vec;
    f32 target_speed = 0.0f;
    s16 check_angle = 0x4000;

    switch (i_this->mMode) {
    case 0: {
        anm_init(i_this, ANM_WALK, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        i_this->mMode = 1;
        dStage_dPnt_c* point = &i_this->mpPath->m_points[i_this->mPathIndex];
        i_this->field_0x5bc = point->m_position;
        // fallthrough
    }

    case 1:
        target_speed = l_HIO.field_0x10;
        vec = i_this->field_0x5bc - i_this->current.pos;
        i_this->mTargetAngleY = cM_atan2s(vec.x, vec.z);
        if (vec.abs() < 50.0f) {
            i_this->mPathIndex += i_this->mPathDirection;
            if (i_this->mPathIndex >= (i_this->mpPath->m_num & 0xff)) {
                if (dPath_ChkClose(i_this->mpPath)) {
                    i_this->mPathIndex = 0;
                } else {
                    i_this->mPathDirection = -1;
                    i_this->mPathIndex = i_this->mpPath->m_num - 2;
                }
            } else if (i_this->mPathIndex < 0) {
                i_this->mPathDirection = 1;
                i_this->mPathIndex = 1;
            }
            i_this->mMode = 2;
            i_this->mTimer[0] = cM_rndF(100.0f) + 100.0f;
            anm_init(i_this, ANM_KYORO2, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        }
        break;

    case 2:
        check_angle = 0x6000;
        if (i_this->mTimer[0] == 0) {
            i_this->mMode = 0;
        }
        break;

    case 10:
        anm_init(i_this, ANM_SHOUT, 5.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        i_this->mMode = 11;
        dKy_Sound_set(i_this->current.pos, 100, fopAcM_GetID(i_this), 3);
        S_find = 20;
        break;

    case 11:
        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mPlayerAngle, 2, 0x800);
        if (i_this->mpMorf->isStop()) {
            i_this->mAction = ACT_FIGHT_RUN;
            i_this->mMode = -10;
            i_this->mTimer[0] = 60;
            return;
        }
        break;
    }

    if (target_speed) {
        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mTargetAngleY, 8, 0x400);
        s16 angle_diff = i_this->current.angle.y - i_this->mTargetAngleY;
        if (angle_diff > 0x400 || angle_diff < -0x400) {
            target_speed = 0.0f;
        }
    }
    cLib_addCalc2(&i_this->speedF, target_speed, 1.0f, 3.0f);

    f32 check_dist = i_this->field_0xa50;
    BOOL bVar1 = FALSE;
    if (i_this->field_0xa71 == 1 || S_find != 0) {
        if (i_this->field_0xa71 == 1) {
            bVar1 = TRUE;
        }
        check_dist = 10000.0f;
        check_angle = 0x7fff;
    }

    if (i_this->mMode < 10) {
        if (bVar1) {
            i_this->mMode = 2;
            i_this->mTimer[0] = cM_rndF(100.0f) + 100.0f;
            anm_init(i_this, ANM_KYORO2, 10.0f, J3DFrameCtrl::LOOP_REPEAT_e, 1.0f);
        } else if ((i_this->mCounter & 7) == 0 && pl_check(i_this, check_dist, check_angle)) {
            if (S_find == 0) {
                i_this->mMode = 10;
            } else {
                i_this->mAction = 3;
                i_this->mMode = -10;
                i_this->mTimer[0] = 60;
            }
        }
    }
}

/* 80773A8C-80773B24 007DAC 0098+00 1/1 0/0 0/0 .text            wolfkick_damage__FP11e_rdy_class */
static void wolfkick_damage(e_rdy_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    i_this->mAction = ACT_DAMAGE;
    i_this->mMode = 0;
    i_this->field_0xadc.y = player->shape_angle.y + 0x8000;
    i_this->speed.y = l_HIO.field_0x30;
    i_this->field_0xabc = -l_HIO.field_0x34;
    i_this->mSound.startCollisionSE(Z2SE_HIT_WOOD_WEAPON, 0x1f);
    i_this->field_0xac8 = 1;
}

/* 80773B24-80773D2C 007E44 0208+00 1/1 0/0 0/0 .text            big_damage__FP11e_rdy_class */
static void big_damage(e_rdy_class* i_this) {
    i_this->mAction = ACT_DAMAGE;
    i_this->mMode = 0;
    i_this->speed.y = l_HIO.field_0x4c + 2.0f;

    if (i_this->field_0xa8c == 2) {
        fopAc_ac_c* kargorok = fopAcM_SearchByID(i_this->mKargorokID);
        if (kargorok != NULL && kargorok->speedF >= 20.0f) {
            i_this->field_0xabc = kargorok->speedF;
            if (i_this->field_0xabc > 40.0f) {
                i_this->field_0xabc = 40.0f;
            }
        } else {
            i_this->field_0xabc = -l_HIO.field_0x48;
        }
        i_this->field_0xadc.y = i_this->shape_angle.y + (s16)cM_rndFX(3000.0f);
    } else {
        i_this->field_0xadc.y = i_this->mAtInfo.mHitDirection;
        i_this->field_0xabc = -l_HIO.field_0x44;
    }

    if (i_this->mAtInfo.mHitBit & 0x80) {
        i_this->field_0xac6 = cM_rndFX(2000.0f) + 4000.0f;
    } else if (i_this->mAtInfo.mHitBit & 0x800) {
        i_this->field_0xac6 = -(cM_rndFX(2000.0f) + 4000.0f);
    } else if (i_this->field_0xa8c != 0) {
        i_this->field_0xac6 = cM_rndFX(3000.0f);
    } else if (fopAcM_GetName(i_this->mAtInfo.mpActor) == PROC_E_WB) {
        i_this->field_0xac6 = cM_rndFX(8000.0f);
        i_this->speed.y = cM_rndF(15.0f) + 35.0f;
        i_this->field_0xabc = -(i_this->mAtInfo.mpActor->speedF * 0.5f);
    } else {
        i_this->field_0xac6 = cM_rndFX(1000.0f);
    }

    i_this->field_0xac8 = 0;
}

/* 80773D2C-80773E5C 00804C 0130+00 1/1 0/0 0/0 .text            small_damage__FP11e_rdy_classi */
static void small_damage(e_rdy_class* i_this, int i_collider) {
    if (i_this->mAction != ACT_S_DAMAGE) {
        i_this->mPrevAction = i_this->mAction;
    }
    i_this->mAction = ACT_S_DAMAGE;
    i_this->mMode = 0;
    i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_DAMAGE, -1);

    if (i_collider == 0) {
        s16 angle_diff = i_this->shape_angle.y - i_this->mPlayerAngle;
        if (angle_diff < -0x4000 || angle_diff > 0x4000) {
            anm_init(i_this, ANM_DAMAGE_W, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        } else if (angle_diff < 0) {
            anm_init(i_this, ANM_DAMAGE_L, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        } else {
            anm_init(i_this, ANM_DAMAGE_R, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
        }
    } else {
        anm_init(i_this, ANM_DAMAGE_W, 2.0f, J3DFrameCtrl::LOOP_ONCE_e, 1.0f);
    }

    i_this->mKnockback = 20.0f;
    i_this->mHitDirection = i_this->mAtInfo.mHitDirection;
}

/* 80773E5C-8077424C 00817C 03F0+00 1/1 0/0 0/0 .text            damage_check__FP11e_rdy_class */
static void damage_check(e_rdy_class* i_this) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    daPy_py_c* player = static_cast<daPy_py_c*>(dComIfGp_getPlayer(0));
    if (i_this->field_0xa8f != 0) {
        i_this->field_0xa8f = 0;
        big_damage(i_this);
        i_this->mIFrameTimer = 1000;
        _this->current.angle.x = 0;
        _this->current.angle.z = 0;
        _this->shape_angle.x = _this->current.angle.x;
        _this->shape_angle.z = _this->current.angle.z;
    } else {
        i_this->mCcStts.Move();
        if (i_this->mIFrameTimer == 0) {
            if (l_HIO.field_0x39) {
                _this->health = 100;
            }

            for (int i = 0; i <= 2; i++) {
                if (i_this->mCcSph[i].ChkTgHit()) {
                    i_this->mIFrameTimer = 6;
                    i_this->mParticleTimer = 3;
                    i_this->mAtInfo.mpCollider = i_this->mCcSph[i].GetTgHitObj();

                    if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_10000000)) {
                        wolfkick_damage(i_this);
                        i_this->mIFrameTimer = 1000;
                        break;

                    } else {
                        at_power_check(&i_this->mAtInfo);
                        if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
                            i_this->mTimer[1] = 30;
                        } else {
                            i_this->mTimer[1] = 1;
                        }

                        if (i_this->mAtInfo.mHitType != HIT_TYPE_LINK_NORMAL_ATTACK
                            && i_this->mAtInfo.mHitType != HIT_TYPE_STUN
                            && i_this->mAtInfo.mHitType != HIT_TYPE_BOMB
                            && i_this->field_0x1365 != 0)
                        {
                            i_this->mIFrameTimer = 1000;
                            i_this->mAction = ACT_DROP;
                            i_this->mMode = 0;
                            _this->health = 0;
                            cc_at_check(_this, &i_this->mAtInfo);
                            return;
                        }

                        if (i_this->field_0xa8c == 0 && i_this->mAtInfo.mHitType == HIT_TYPE_ARROW)
                        {
                            i_this->mAction = ACT_A_DAMAGE;
                            i_this->mMode = 0;
                            i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_DAMAGE, -1);
                            _this->health = 0;
                            cc_at_check(_this, &i_this->mAtInfo);
                            return;
                        }

                        cc_at_check(_this, &i_this->mAtInfo);

                        if (daPy_getPlayerActorClass()->getCutType()
                                                        == daPy_py_c::CUT_TYPE_HEAD_JUMP) {
                            _this->health = 0;
                        }

                        if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                            i_this->mIFrameTimer = 20;
                        } else {
                            i_this->mIFrameTimer = 10;
                        }
                        if (i_this->mAtInfo.mAttackPower <= 1) {
                            i_this->mIFrameTimer = 10;
                        }

                        i_this->field_0xaf0 |= i_this->mAtInfo.mHitBit;

                        if (daPy_getPlayerActorClass()->checkHorseRide()
                            && dComIfGp_getHorseActor()->speedF >= 20.0f
                            && i_this->mAtInfo.mHitType == HIT_TYPE_LINK_NORMAL_ATTACK)
                        {
                            i_this->mAtInfo.mAttackPower = 20;
                        }

                        if (_this->health <= 0 || i_this->mAtInfo.mAttackPower >= 20
                            || i_this->mAtInfo.mHitStatus != 0 || i_this->field_0xa8c != 0)
                        {
                            if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP
                                && player->checkCutJumpCancelTurn())
                            {
                                small_damage(i_this, i);
                                i_this->mIFrameTimer = 3;
                            } else {
                                big_damage(i_this);
                                i_this->mIFrameTimer = 1000;
                            }
                        } else {
                            int collider = i;
                            if (i_this->mAtInfo.mHitType == HIT_TYPE_STUN) {
                                collider = 0;
                            }
                            small_damage(i_this, collider);
                        }

                        _this->speedF = 0.0f;

                        if (i_this->mpBowMorf != NULL) {
                            J3DAnmTransform* bck =
                                (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mpArcName, 11);
                            i_this->mpBowMorf->setAnm(bck, J3DFrameCtrl::LOOP_ONCE_e,
                                                      1.0f, 1.0f, 0.0f, -1.0f);
                            break;
                        } else {
                            break;
                        }
                    }
                }
            }

            for (int i = 0; i <= 2; i++) {
                if (_this->health <= 1) {
                    _this->health = 0;
                    i_this->mCcSph[i].SetTgHitMark(CcG_Tg_UNK_MARK_3);
                }
            }
        }
    }
}

/* 8077424C-8077582C 00856C 15E0+00 2/1 0/0 0/0 .text            action__FP11e_rdy_class */
static void action(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F44-80779F48 000148 0004+00 0/0 0/0 0/0 .rodata          @7912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7912 = -5.0f;
COMPILER_STRIP_GATE(0x80779F44, &lit_7912);
#pragma pop

/* 80779F48-80779F4C 00014C 0004+00 0/1 0/0 0/0 .rodata          @7913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7913 = -60.0f;
COMPILER_STRIP_GATE(0x80779F48, &lit_7913);
#pragma pop

/* 80779F4C-80779F50 000150 0004+00 0/0 0/0 0/0 .rodata          @7914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7914 = 4.5f;
COMPILER_STRIP_GATE(0x80779F4C, &lit_7914);
#pragma pop

/* 80779F50-80779F54 000154 0004+00 0/0 0/0 0/0 .rodata          @7915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7915 = 110.0f;
COMPILER_STRIP_GATE(0x80779F50, &lit_7915);
#pragma pop

/* 80779F54-80779F58 000158 0004+00 0/0 0/0 0/0 .rodata          @7916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7916 = 12000.0f;
COMPILER_STRIP_GATE(0x80779F54, &lit_7916);
#pragma pop

/* 80779F58-80779F5C 00015C 0004+00 0/1 0/0 0/0 .rodata          @7917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7917 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80779F58, &lit_7917);
#pragma pop

/* 80779F5C-80779F60 000160 0004+00 0/1 0/0 0/0 .rodata          @7976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7976 = 90.0f;
COMPILER_STRIP_GATE(0x80779F5C, &lit_7976);
#pragma pop

/* 8077582C-80775A20 009B4C 01F4+00 1/1 0/0 0/0 .text            fire_eff_set__FP11e_rdy_class */
static void fire_eff_set(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80775A20-80775B04 009D40 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP11e_rdy_classf */
static void cam_3d_morf(e_rdy_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* 80775B04-80775B50 009E24 004C+00 1/1 0/0 0/0 .text            s_adel_sub__FPvPv */
static void s_adel_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F60-80779F64 000164 0004+00 0/1 0/0 0/0 .rodata          @8521 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8521 = 55.0f;
COMPILER_STRIP_GATE(0x80779F60, &lit_8521);
#pragma pop

/* 80775B50-80777330 009E70 17E0+00 2/1 0/0 0/0 .text            demo_camera__FP11e_rdy_class */
static void demo_camera(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F64-80779F68 000168 0004+00 0/0 0/0 0/0 .rodata          @8522 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8522 = -300.0f;
COMPILER_STRIP_GATE(0x80779F64, &lit_8522);
#pragma pop

/* 80779F68-80779F6C 00016C 0004+00 0/0 0/0 0/0 .rodata          @8523 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8523 = -102687.0f;
COMPILER_STRIP_GATE(0x80779F68, &lit_8523);
#pragma pop

/* 80779F6C-80779F70 000170 0004+00 0/0 0/0 0/0 .rodata          @8524 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8524 = -23441.5f;
COMPILER_STRIP_GATE(0x80779F6C, &lit_8524);
#pragma pop

/* 80779F70-80779F74 000174 0004+00 0/0 0/0 0/0 .rodata          @8525 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8525 = 38942.0f;
COMPILER_STRIP_GATE(0x80779F70, &lit_8525);
#pragma pop

/* 80779F74-80779F78 000178 0004+00 0/0 0/0 0/0 .rodata          @8526 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8526 = -102677.0f;
COMPILER_STRIP_GATE(0x80779F74, &lit_8526);
#pragma pop

/* 80779F78-80779F7C 00017C 0004+00 0/0 0/0 0/0 .rodata          @8527 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8527 = -23375.0f;
COMPILER_STRIP_GATE(0x80779F78, &lit_8527);
#pragma pop

/* 80779F7C-80779F80 000180 0004+00 0/0 0/0 0/0 .rodata          @8528 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8528 = 38866.0f;
COMPILER_STRIP_GATE(0x80779F7C, &lit_8528);
#pragma pop

/* 80779F80-80779F84 000184 0004+00 0/0 0/0 0/0 .rodata          @8529 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8529 = -102392.0f;
COMPILER_STRIP_GATE(0x80779F80, &lit_8529);
#pragma pop

/* 80779F84-80779F88 000188 0004+00 0/0 0/0 0/0 .rodata          @8530 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8530 = -23393.0f;
COMPILER_STRIP_GATE(0x80779F84, &lit_8530);
#pragma pop

/* 80779F88-80779F8C 00018C 0004+00 0/0 0/0 0/0 .rodata          @8531 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8531 = 39031.0f;
COMPILER_STRIP_GATE(0x80779F88, &lit_8531);
#pragma pop

/* 80779F8C-80779F90 000190 0004+00 0/0 0/0 0/0 .rodata          @8532 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8532 = -102520.0f;
COMPILER_STRIP_GATE(0x80779F8C, &lit_8532);
#pragma pop

/* 80779F90-80779F94 000194 0004+00 0/0 0/0 0/0 .rodata          @8533 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8533 = -23416.0f;
COMPILER_STRIP_GATE(0x80779F90, &lit_8533);
#pragma pop

/* 80779F94-80779F98 000198 0004+00 0/0 0/0 0/0 .rodata          @8534 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8534 = 38021.0f;
COMPILER_STRIP_GATE(0x80779F94, &lit_8534);
#pragma pop

/* 80779F98-80779F9C 00019C 0004+00 0/1 0/0 0/0 .rodata          @8535 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8535 = -50.0f;
COMPILER_STRIP_GATE(0x80779F98, &lit_8535);
#pragma pop

/* 80779F9C-80779FA0 0001A0 0004+00 0/0 0/0 0/0 .rodata          @8536 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8536 = 420.0f;
COMPILER_STRIP_GATE(0x80779F9C, &lit_8536);
#pragma pop

/* 80779FA0-80779FA4 0001A4 0004+00 0/0 0/0 0/0 .rodata          @8537 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8537 = 170.0f;
COMPILER_STRIP_GATE(0x80779FA0, &lit_8537);
#pragma pop

/* 80779FA4-80779FA8 0001A8 0004+00 0/0 0/0 0/0 .rodata          @8538 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8538 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x80779FA4, &lit_8538);
#pragma pop

/* 80779FA8-80779FAC 0001AC 0004+00 0/0 0/0 0/0 .rodata          @8539 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8539 = 210.0f;
COMPILER_STRIP_GATE(0x80779FA8, &lit_8539);
#pragma pop

/* 80779FAC-80779FB0 0001B0 0004+00 0/0 0/0 0/0 .rodata          @8540 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8540 = 400.0f;
COMPILER_STRIP_GATE(0x80779FAC, &lit_8540);
#pragma pop

/* 80779FB0-80779FB4 0001B4 0004+00 0/0 0/0 0/0 .rodata          @8541 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8541 = -350.0f;
COMPILER_STRIP_GATE(0x80779FB0, &lit_8541);
#pragma pop

/* 80779FB4-80779FB8 0001B8 0004+00 0/1 0/0 0/0 .rodata          @8542 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8542 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x80779FB4, &lit_8542);
#pragma pop

/* 80779FB8-80779FBC 0001BC 0004+00 0/0 0/0 0/0 .rodata          @8543 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8543 = -93806.0f;
COMPILER_STRIP_GATE(0x80779FB8, &lit_8543);
#pragma pop

/* 80779FBC-80779FC0 0001C0 0004+00 0/0 0/0 0/0 .rodata          @8544 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8544 = -5894.0f;
COMPILER_STRIP_GATE(0x80779FBC, &lit_8544);
#pragma pop

/* 80779FC0-80779FC4 0001C4 0004+00 0/0 0/0 0/0 .rodata          @8545 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8545 = 42791.0f;
COMPILER_STRIP_GATE(0x80779FC0, &lit_8545);
#pragma pop

/* 80779FC4-80779FC8 0001C8 0004+00 0/0 0/0 0/0 .rodata          @8546 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8546 = -93532.0f;
COMPILER_STRIP_GATE(0x80779FC4, &lit_8546);
#pragma pop

/* 80779FC8-80779FCC 0001CC 0004+00 0/0 0/0 0/0 .rodata          @8547 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8547 = -5824.0f;
COMPILER_STRIP_GATE(0x80779FC8, &lit_8547);
#pragma pop

/* 80779FCC-80779FD0 0001D0 0004+00 0/0 0/0 0/0 .rodata          @8548 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8548 = 43075.0f;
COMPILER_STRIP_GATE(0x80779FCC, &lit_8548);
#pragma pop

/* 80779FD0-80779FD4 0001D4 0004+00 0/0 0/0 0/0 .rodata          @8549 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8549 = -93705.0f;
COMPILER_STRIP_GATE(0x80779FD0, &lit_8549);
#pragma pop

/* 80779FD4-80779FD8 0001D8 0004+00 0/0 0/0 0/0 .rodata          @8550 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8550 = -5951.0f;
COMPILER_STRIP_GATE(0x80779FD4, &lit_8550);
#pragma pop

/* 80779FD8-80779FDC 0001DC 0004+00 0/0 0/0 0/0 .rodata          @8551 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8551 = 42867.0f;
COMPILER_STRIP_GATE(0x80779FD8, &lit_8551);
#pragma pop

/* 80779FDC-80779FE0 0001E0 0004+00 0/0 0/0 0/0 .rodata          @8552 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8552 = -93860.0f;
COMPILER_STRIP_GATE(0x80779FDC, &lit_8552);
#pragma pop

/* 80779FE0-80779FE4 0001E4 0004+00 0/0 0/0 0/0 .rodata          @8553 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8553 = -5786.0f;
COMPILER_STRIP_GATE(0x80779FE0, &lit_8553);
#pragma pop

/* 80779FE4-80779FE8 0001E8 0004+00 0/0 0/0 0/0 .rodata          @8554 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8554 = 42701.0f;
COMPILER_STRIP_GATE(0x80779FE4, &lit_8554);
#pragma pop

/* 80779FE8-80779FEC 0001EC 0004+00 0/0 0/0 0/0 .rodata          @8555 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8555 = -93644.0f;
COMPILER_STRIP_GATE(0x80779FE8, &lit_8555);
#pragma pop

/* 80779FEC-80779FF0 0001F0 0004+00 0/0 0/0 0/0 .rodata          @8556 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8556 = -5908.0f;
COMPILER_STRIP_GATE(0x80779FEC, &lit_8556);
#pragma pop

/* 80779FF0-80779FF4 0001F4 0004+00 0/0 0/0 0/0 .rodata          @8557 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8557 = 43016.0f;
COMPILER_STRIP_GATE(0x80779FF0, &lit_8557);
#pragma pop

/* 80779FF4-80779FF8 0001F8 0004+00 0/0 0/0 0/0 .rodata          @8558 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8558 = -93614.0f;
COMPILER_STRIP_GATE(0x80779FF4, &lit_8558);
#pragma pop

/* 80779FF8-80779FFC 0001FC 0004+00 0/0 0/0 0/0 .rodata          @8559 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8559 = -5879.0f;
COMPILER_STRIP_GATE(0x80779FF8, &lit_8559);
#pragma pop

/* 80779FFC-8077A000 000200 0004+00 0/0 0/0 0/0 .rodata          @8560 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8560 = 43003.0f;
COMPILER_STRIP_GATE(0x80779FFC, &lit_8560);
#pragma pop

/* 8077A000-8077A004 000204 0004+00 0/0 0/0 0/0 .rodata          @8561 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8561 = -93593.0f;
COMPILER_STRIP_GATE(0x8077A000, &lit_8561);
#pragma pop

/* 8077A004-8077A008 000208 0004+00 0/0 0/0 0/0 .rodata          @8562 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8562 = -5871.0f;
COMPILER_STRIP_GATE(0x8077A004, &lit_8562);
#pragma pop

/* 8077A008-8077A00C 00020C 0004+00 0/0 0/0 0/0 .rodata          @8563 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8563 = 42603.0f;
COMPILER_STRIP_GATE(0x8077A008, &lit_8563);
#pragma pop

/* 8077A00C-8077A010 000210 0004+00 0/0 0/0 0/0 .rodata          @8564 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8564 = -93660.0f;
COMPILER_STRIP_GATE(0x8077A00C, &lit_8564);
#pragma pop

/* 8077A010-8077A014 000214 0004+00 0/0 0/0 0/0 .rodata          @8565 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8565 = -5873.0f;
COMPILER_STRIP_GATE(0x8077A010, &lit_8565);
#pragma pop

/* 8077A014-8077A018 000218 0004+00 0/0 0/0 0/0 .rodata          @8566 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8566 = 49831.0f;
COMPILER_STRIP_GATE(0x8077A014, &lit_8566);
#pragma pop

/* 8077A018-8077A01C 00021C 0004+00 0/0 0/0 0/0 .rodata          @8567 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8567 = -93551.0f;
COMPILER_STRIP_GATE(0x8077A018, &lit_8567);
#pragma pop

/* 8077A01C-8077A020 000220 0004+00 0/0 0/0 0/0 .rodata          @8568 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8568 = -5926.0f;
COMPILER_STRIP_GATE(0x8077A01C, &lit_8568);
#pragma pop

/* 8077A020-8077A024 000224 0004+00 0/0 0/0 0/0 .rodata          @8569 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8569 = 49449.0f;
COMPILER_STRIP_GATE(0x8077A020, &lit_8569);
#pragma pop

/* 8077A024-8077A028 000228 0004+00 0/0 0/0 0/0 .rodata          @8570 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8570 = -92666.0f;
COMPILER_STRIP_GATE(0x8077A024, &lit_8570);
#pragma pop

/* 8077A028-8077A02C 00022C 0004+00 0/0 0/0 0/0 .rodata          @8571 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8571 = -5540.0f;
COMPILER_STRIP_GATE(0x8077A028, &lit_8571);
#pragma pop

/* 8077A02C-8077A030 000230 0004+00 0/0 0/0 0/0 .rodata          @8572 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8572 = 43878.0f;
COMPILER_STRIP_GATE(0x8077A02C, &lit_8572);
#pragma pop

/* 8077A030-8077A034 000234 0004+00 0/0 0/0 0/0 .rodata          @8573 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8573 = 39000.0f;
COMPILER_STRIP_GATE(0x8077A030, &lit_8573);
#pragma pop

/* 8077A034-8077A038 000238 0004+00 0/0 0/0 0/0 .rodata          @8574 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8574 = -93539.0f;
COMPILER_STRIP_GATE(0x8077A034, &lit_8574);
#pragma pop

/* 8077A038-8077A03C 00023C 0004+00 0/0 0/0 0/0 .rodata          @8575 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8575 = -5857.0f;
COMPILER_STRIP_GATE(0x8077A038, &lit_8575);
#pragma pop

/* 8077A03C-8077A040 000240 0004+00 0/0 0/0 0/0 .rodata          @8576 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8576 = 30480.0f;
COMPILER_STRIP_GATE(0x8077A03C, &lit_8576);
#pragma pop

/* 8077A040-8077A044 000244 0004+00 0/0 0/0 0/0 .rodata          @8577 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8577 = -4469.0f;
COMPILER_STRIP_GATE(0x8077A040, &lit_8577);
#pragma pop

/* 8077A044-8077A048 000248 0004+00 0/0 0/0 0/0 .rodata          @8578 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8578 = -92006.0f;
COMPILER_STRIP_GATE(0x8077A044, &lit_8578);
#pragma pop

/* 8077A048-8077A04C 00024C 0004+00 0/1 0/0 0/0 .rodata          @8579 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8579 = 30000.0f;
COMPILER_STRIP_GATE(0x8077A048, &lit_8579);
#pragma pop

/* 8077A04C-8077A050 000250 0004+00 0/0 0/0 0/0 .rodata          @8580 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8580 = -92787.0f;
COMPILER_STRIP_GATE(0x8077A04C, &lit_8580);
#pragma pop

/* 8077A050-8077A054 000254 0004+00 0/0 0/0 0/0 .rodata          @8581 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8581 = -5256.0f;
COMPILER_STRIP_GATE(0x8077A050, &lit_8581);
#pragma pop

/* 8077A054-8077A058 000258 0004+00 0/0 0/0 0/0 .rodata          @8582 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8582 = 46550.0f;
COMPILER_STRIP_GATE(0x8077A054, &lit_8582);
#pragma pop

/* 8077A058-8077A05C 00025C 0004+00 0/0 0/0 0/0 .rodata          @8583 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8583 = -92609.0f;
COMPILER_STRIP_GATE(0x8077A058, &lit_8583);
#pragma pop

/* 8077A05C-8077A060 000260 0004+00 0/0 0/0 0/0 .rodata          @8584 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8584 = -5139.0f;
COMPILER_STRIP_GATE(0x8077A05C, &lit_8584);
#pragma pop

/* 8077A060-8077A064 000264 0004+00 0/0 0/0 0/0 .rodata          @8585 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8585 = 46210.0f;
COMPILER_STRIP_GATE(0x8077A060, &lit_8585);
#pragma pop

/* 8077A064-8077A068 000268 0004+00 0/0 0/0 0/0 .rodata          @8586 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8586 = -103242.0f;
COMPILER_STRIP_GATE(0x8077A064, &lit_8586);
#pragma pop

/* 8077A068-8077A06C 00026C 0004+00 0/0 0/0 0/0 .rodata          @8587 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8587 = -22894.0f;
COMPILER_STRIP_GATE(0x8077A068, &lit_8587);
#pragma pop

/* 8077A06C-8077A070 000270 0004+00 0/0 0/0 0/0 .rodata          @8588 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8588 = 38097.0f;
COMPILER_STRIP_GATE(0x8077A06C, &lit_8588);
#pragma pop

/* 8077A070-8077A074 000274 0004+00 0/0 0/0 0/0 .rodata          @8589 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8589 = -93652.0f;
COMPILER_STRIP_GATE(0x8077A070, &lit_8589);
#pragma pop

/* 8077A074-8077A078 000278 0004+00 0/0 0/0 0/0 .rodata          @8590 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8590 = -5875.0f;
COMPILER_STRIP_GATE(0x8077A074, &lit_8590);
#pragma pop

/* 8077A078-8077A07C 00027C 0004+00 0/0 0/0 0/0 .rodata          @8591 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8591 = 46674.0f;
COMPILER_STRIP_GATE(0x8077A078, &lit_8591);
#pragma pop

/* 8077A07C-8077A080 000280 0004+00 0/0 0/0 0/0 .rodata          @8592 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8592 = -93659.0f;
COMPILER_STRIP_GATE(0x8077A07C, &lit_8592);
#pragma pop

/* 8077A080-8077A084 000284 0004+00 0/0 0/0 0/0 .rodata          @8593 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8593 = 32500.0f;
COMPILER_STRIP_GATE(0x8077A080, &lit_8593);
#pragma pop

/* 8077A084-8077A088 000288 0004+00 0/0 0/0 0/0 .rodata          @8594 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8594 = -250.0f;
COMPILER_STRIP_GATE(0x8077A084, &lit_8594);
#pragma pop

/* 8077A088-8077A08C 00028C 0004+00 0/0 0/0 0/0 .rodata          @8595 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8595 = 120.0f;
COMPILER_STRIP_GATE(0x8077A088, &lit_8595);
#pragma pop

/* 8077A08C-8077A090 000290 0004+00 0/1 0/0 0/0 .rodata          @9184 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9184 = -1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8077A08C, &lit_9184);
#pragma pop

/* 8077A090-8077A094 000294 0004+00 0/1 0/0 0/0 .rodata          @9185 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9185 = 38.0f;
COMPILER_STRIP_GATE(0x8077A090, &lit_9185);
#pragma pop

/* 8077A094-8077A098 000298 0004+00 0/1 0/0 0/0 .rodata          @9186 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9186 = 0x3A83126F;
COMPILER_STRIP_GATE(0x8077A094, &lit_9186);
#pragma pop

/* 8077A098-8077A09C 00029C 0004+00 0/1 0/0 0/0 .rodata          @9187 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9187 = -6.0f;
COMPILER_STRIP_GATE(0x8077A098, &lit_9187);
#pragma pop

/* 8077A09C-8077A0A0 0002A0 0004+00 0/1 0/0 0/0 .rodata          @9188 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9188 = -20000.0f;
COMPILER_STRIP_GATE(0x8077A09C, &lit_9188);
#pragma pop

/* 8077A0A0-8077A0A4 0002A4 0004+00 0/1 0/0 0/0 .rodata          @9189 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9189 = 200000.0f;
COMPILER_STRIP_GATE(0x8077A0A0, &lit_9189);
#pragma pop

/* 8077A0A4-8077A0A8 0002A8 0004+00 0/1 0/0 0/0 .rodata          @9190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9190 = -10.0f;
COMPILER_STRIP_GATE(0x8077A0A4, &lit_9190);
#pragma pop

/* 8077A0A8-8077A0AC 0002AC 0004+00 0/1 0/0 0/0 .rodata          @9191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9191 = -200000.0f;
COMPILER_STRIP_GATE(0x8077A0A8, &lit_9191);
#pragma pop

/* 8077A0AC-8077A0B0 0002B0 0004+00 0/1 0/0 0/0 .rodata          @9192 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9192 = -500.0f;
COMPILER_STRIP_GATE(0x8077A0AC, &lit_9192);
#pragma pop

/* 8077A0B0-8077A0B4 0002B4 0004+00 0/1 0/0 0/0 .rodata          @9193 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9193 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x8077A0B0, &lit_9193);
#pragma pop

/* 8077A0BC-8077A0BC 0002C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8077A0BC = "F_SP121";
#pragma pop

/* 8077AA1C-8077AA24 0001F4 0004+04 0/2 0/0 0/0 .bss             c_start */
#pragma push
#pragma force_active on
static u8 c_start[4 + 4 /* padding */];
#pragma pop

/* 80777330-8077892C 00B650 15FC+00 2/1 0/0 0/0 .text            daE_RDY_Execute__FP11e_rdy_class */
static void daE_RDY_Execute(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 8077892C-80778934 00CC4C 0008+00 1/0 0/0 0/0 .text            daE_RDY_IsDelete__FP11e_rdy_class
 */
static bool daE_RDY_IsDelete(e_rdy_class* param_0) {
    return true;
}

/* 80778934-80778998 00CC54 0064+00 1/0 0/0 0/0 .text            daE_RDY_Delete__FP11e_rdy_class */
static void daE_RDY_Delete(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8077A0BC-8077A0BC 0002C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8077A0C4 = "J_Tobi";
#pragma pop

/* 80778998-80778D90 00CCB8 03F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8077A0B4-8077A0B8 0002B8 0004+00 0/1 0/0 0/0 .rodata          @9541 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9541 = 5000.0f;
COMPILER_STRIP_GATE(0x8077A0B4, &lit_9541);
#pragma pop

/* 8077A0B8-8077A0BC 0002BC 0004+00 0/1 0/0 0/0 .rodata          @9542 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9542 = 100000.0f;
COMPILER_STRIP_GATE(0x8077A0B8, &lit_9542);
#pragma pop

/* 8077A0BC-8077A0BC 0002C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8077A0CB = "E_rdy";
SECTION_DEAD static char const* const stringBase_8077A0D1 = "F_SP115";
#pragma pop

/* 80778D90-80779340 00D0B0 05B0+00 1/0 0/0 0/0 .text            daE_RDY_Create__FP10fopAc_ac_c */
static void daE_RDY_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80779340-807794E0 00D660 01A0+00 1/1 0/0 0/0 .text            __ct__11e_rdy_classFv */
e_rdy_class::e_rdy_class() {
    // NONMATCHING
}

AUDIO_INSTANCES

/* 8077A24C-8077A254 000170 0008+00 1/1 0/0 0/0 .data            kado_bit$6208 */
SECTION_DATA static u8 kado_bit[8] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02,
};

/* 8077A254-8077A25C 000178 0008+00 1/1 0/0 0/0 .data            kado_check_x$6209 */
SECTION_DATA static u8 kado_check_x[8] = {
    0x42, 0xA0, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00,
};

/* 8077A344-8077A35C 000268 0016+02 1/1 0/0 0/0 .data            j_spd$7550 */
SECTION_DATA static u8 j_spd[22 + 2 /* padding */] = {
    0x40,
    0x00,
    0x40,
    0x00,
    0x40,
    0x00,
    0x10,
    0x00,
    0x10,
    0x00,
    0x10,
    0x00,
    0x10,
    0x00,
    0x40,
    0x00,
    0x40,
    0x00,
    0x40,
    0x00,
    0x40,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 8077A35C-8077A364 000280 0006+02 1/1 0/0 0/0 .data            w_eff_name$7595 */
SECTION_DATA static u8 w_eff_name[6 + 2 /* padding */] = {
    0x82,
    0x58,
    0x82,
    0x59,
    0x82,
    0x5A,
    /* padding */
    0x00,
    0x00,
};

/* 8077A5C8-8077A62C 0004EC 0064+00 1/1 0/0 0/0 .data            time_scale$8695 */
SECTION_DATA static u8 time_scale[100] = {
    0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x8C, 0xCC, 0xCD, 0x3F, 0x80, 0x00,
    0x00, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x19, 0x99, 0x9A, 0x3E, 0xCC, 0xCC, 0xCD, 0x3E, 0x4C,
    0xCC, 0xCD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3E, 0x4C, 0xCC,
    0xCD, 0x3F, 0x00, 0x00, 0x00, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x99,
    0x99, 0x9A, 0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x99, 0x99, 0x9A,
};

/* 8077A62C-8077A638 000550 000C+00 1/0 0/0 0/0 .data            jv_offset */
SECTION_DATA static u8 jv_offset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8077A638-8077A6BC -00001 0084+00 1/1 0/0 0/0 .data            jc_data */
SECTION_DATA static void* jc_data[33] = {
    (void*)0x00010001, (void*)0x41F00000, (void*)&jv_offset, (void*)0x0001000B, (void*)0x41C80000,
    (void*)&jv_offset, (void*)0x0001000C, (void*)0x41A00000, (void*)&jv_offset, (void*)0x00010011,
    (void*)0x41700000, (void*)&jv_offset, (void*)0x00010012, (void*)0x41200000, (void*)&jv_offset,
    (void*)0x00010016, (void*)0x41700000, (void*)&jv_offset, (void*)0x00010017, (void*)0x41200000,
    (void*)&jv_offset, (void*)0x00010003, (void*)0x41200000, (void*)&jv_offset, (void*)0x00010004,
    (void*)0x40A00000, (void*)&jv_offset, (void*)0x00010008, (void*)0x41200000, (void*)&jv_offset,
    (void*)0x00010009, (void*)0x40A00000, (void*)&jv_offset,
};

/* 8077A6BC-8077A6FC 0005E0 0040+00 1/1 0/0 0/0 .data            cc_sph_src$9405 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8077A6FC-8077A73C 000620 0040+00 1/1 0/0 0/0 .data            at_sph_src$9406 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};

/* 8077A73C-8077A75C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_RDY_Method */
static actor_method_class l_daE_RDY_Method = {
    (process_method_func)daE_RDY_Create,
    (process_method_func)daE_RDY_Delete,
    (process_method_func)daE_RDY_Execute,
    (process_method_func)daE_RDY_IsDelete,
    (process_method_func)daE_RDY_Draw,
};

/* 8077A75C-8077A78C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_RDY */
extern actor_process_profile_definition g_profile_E_RDY = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_RDY,             // mProcName
  &g_fpcLf_Method.base,  // sub_method
  0x0000142C,             // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  157,                    // mPriority
  &l_daE_RDY_Method,      // sub_method
  0x00044000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

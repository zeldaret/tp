/**
 * @file d_a_e_rdy.cpp
 * 
*/

#include "d/actor/d_a_e_rdy.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/actor/d_a_e_yc.h"
#include "d/d_bomb.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"
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
static u8 boss[4];

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
static void e_rdy_bow_run(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779EC4-80779EC8 0000C8 0004+00 0/3 0/0 0/0 .rodata          @5297 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5297 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80779EC4, &lit_5297);
#pragma pop

/* 80779EC8-80779ECC 0000CC 0004+00 0/5 0/0 0/0 .rodata          @5298 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5298 = 4.0f;
COMPILER_STRIP_GATE(0x80779EC8, &lit_5298);
#pragma pop

/* 80779ECC-80779ED0 0000D0 0004+00 0/2 0/0 0/0 .rodata          @5299 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5299 = -100.0f;
COMPILER_STRIP_GATE(0x80779ECC, &lit_5299);
#pragma pop

/* 8076E81C-8076EB4C 002B3C 0330+00 1/1 0/0 0/0 .text            e_rdy_bow__FP11e_rdy_class */
static void e_rdy_bow(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 8076EB4C-8076EBB8 002E6C 006C+00 1/1 0/0 0/0 .text            s_command3_sub__FPvPv */
static void s_command3_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779ED0-80779ED4 0000D4 0004+00 0/3 0/0 0/0 .rodata          @5429 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5429 = 60.0f;
COMPILER_STRIP_GATE(0x80779ED0, &lit_5429);
#pragma pop

/* 80779ED4-80779ED8 0000D8 0004+00 0/8 0/0 0/0 .rodata          @5430 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5430 = 40.0f;
COMPILER_STRIP_GATE(0x80779ED4, &lit_5430);
#pragma pop

/* 80779ED8-80779EDC 0000DC 0004+00 0/3 0/0 0/0 .rodata          @5431 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5431 = -200.0f;
COMPILER_STRIP_GATE(0x80779ED8, &lit_5431);
#pragma pop

/* 8076EBB8-8076F0E0 002ED8 0528+00 1/1 0/0 0/0 .text            e_rdy_bow2__FP11e_rdy_class */
static void e_rdy_bow2(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779EDC-80779EE0 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5508 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5508 = -92938.0f;
COMPILER_STRIP_GATE(0x80779EDC, &lit_5508);
#pragma pop

/* 80779EE0-80779EE4 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5509 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5509 = 49992.0f;
COMPILER_STRIP_GATE(0x80779EE0, &lit_5509);
#pragma pop

/* 8076F0E0-8076F438 003400 0358+00 2/1 0/0 0/0 .text            e_rdy_bow_ikki2__FP11e_rdy_class */
static void e_rdy_bow_ikki2(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779EE4-80779EE8 0000E8 0004+00 0/0 0/0 0/0 .rodata          @5510 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5510 = 35000.0f;
COMPILER_STRIP_GATE(0x80779EE4, &lit_5510);
#pragma pop

/* 80779EE8-80779EEC 0000EC 0004+00 0/0 0/0 0/0 .rodata          @5511 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5511 = -93658.0f;
COMPILER_STRIP_GATE(0x80779EE8, &lit_5511);
#pragma pop

/* 80779EEC-80779EF0 0000F0 0004+00 0/0 0/0 0/0 .rodata          @5512 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5512 = 49894.0f;
COMPILER_STRIP_GATE(0x80779EEC, &lit_5512);
#pragma pop

/* 80779EF0-80779EF4 0000F4 0004+00 0/0 0/0 0/0 .rodata          @5513 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5513 = -93666.0f;
COMPILER_STRIP_GATE(0x80779EF0, &lit_5513);
#pragma pop

/* 80779EF4-80779EF8 0000F8 0004+00 0/0 0/0 0/0 .rodata          @5514 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5514 = -1000.0f;
COMPILER_STRIP_GATE(0x80779EF4, &lit_5514);
#pragma pop

/* 80779EF8-80779EFC 0000FC 0004+00 0/0 0/0 0/0 .rodata          @5515 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5515 = 5400.0f;
COMPILER_STRIP_GATE(0x80779EF8, &lit_5515);
#pragma pop

/* 80779EFC-80779F00 000100 0004+00 0/2 0/0 0/0 .rodata          @5553 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5553 = -30.0f;
COMPILER_STRIP_GATE(0x80779EFC, &lit_5553);
#pragma pop

/* 8076F438-8076F59C 003758 0164+00 1/1 0/0 0/0 .text            e_rdy_avoid__FP11e_rdy_class */
static void e_rdy_avoid(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 8076F59C-8076F71C 0038BC 0180+00 1/1 0/0 0/0 .text            s_kusa_sub__FPvPv */
static void s_kusa_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8076F71C-807701F4 003A3C 0AD8+00 2/1 0/0 0/0 .text            e_rdy_tkusa__FP11e_rdy_class */
static void e_rdy_tkusa(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 807701F4-8077089C 004514 06A8+00 1/1 0/0 0/0 .text            e_rdy_yc_ride__FP11e_rdy_class */
static void e_rdy_yc_ride(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 8077089C-80770CF8 004BBC 045C+00 2/1 0/0 0/0 .text            e_rdy_bomb_action__FP11e_rdy_class
 */
static void e_rdy_bomb_action(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80770CF8-80770E48 005018 0150+00 1/1 0/0 0/0 .text            e_rdy_s_damage__FP11e_rdy_class */
static void e_rdy_s_damage(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F00-80779F04 000104 0004+00 0/0 0/0 0/0 .rodata          @5893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5893 = 160.0f;
COMPILER_STRIP_GATE(0x80779F00, &lit_5893);
#pragma pop

/* 80779F04-80779F08 000108 0004+00 0/0 0/0 0/0 .rodata          @5894 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5894 = 1100.0f;
COMPILER_STRIP_GATE(0x80779F04, &lit_5894);
#pragma pop

/* 80779F08-80779F0C 00010C 0004+00 0/0 0/0 0/0 .rodata          @5895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5895 = 1050.0f;
COMPILER_STRIP_GATE(0x80779F08, &lit_5895);
#pragma pop

/* 80779F0C-80779F10 000110 0004+00 0/0 0/0 0/0 .rodata          @5896 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5896 = -1100.0f;
COMPILER_STRIP_GATE(0x80779F0C, &lit_5896);
#pragma pop

/* 80779F10-80779F14 000114 0004+00 0/0 0/0 0/0 .rodata          @5897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5897 = -27.0f;
COMPILER_STRIP_GATE(0x80779F10, &lit_5897);
#pragma pop

/* 80779F14-80779F18 000118 0004+00 0/0 0/0 0/0 .rodata          @6168 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6168 = 600.0f;
COMPILER_STRIP_GATE(0x80779F14, &lit_6168);
#pragma pop

/* 80779F18-80779F1C 00011C 0004+00 0/2 0/0 0/0 .rodata          @6243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6243 = 70.0f;
COMPILER_STRIP_GATE(0x80779F18, &lit_6243);
#pragma pop

/* 80779F1C-80779F20 000120 0004+00 0/1 0/0 0/0 .rodata          @6244 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6244 = -150.0f;
COMPILER_STRIP_GATE(0x80779F1C, &lit_6244);
#pragma pop

/* 80770E48-80770FFC 005168 01B4+00 1/1 0/0 0/0 .text            kado_check__FP11e_rdy_class */
static void kado_check(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80770FFC-807710DC 00531C 00E0+00 3/3 0/0 0/0 .text            rd_disappear__FP11e_rdy_class */
static void rd_disappear(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 807710DC-80771230 0053FC 0154+00 1/1 0/0 0/0 .text            body_gake__FP11e_rdy_class */
static void body_gake(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80771230-807712A8 005550 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F20-80779F24 000124 0004+00 0/2 0/0 0/0 .rodata          @6634 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6634 = 8000.0f;
COMPILER_STRIP_GATE(0x80779F20, &lit_6634);
#pragma pop

/* 807712A8-80771DA4 0055C8 0AFC+00 2/1 0/0 0/0 .text            e_rdy_damage__FP11e_rdy_class */
static void e_rdy_damage(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80771DA4-80771F50 0060C4 01AC+00 1/1 0/0 0/0 .text            gake_check__FP11e_rdy_classf */
static void gake_check(e_rdy_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F24-80779F28 000128 0004+00 0/1 0/0 0/0 .rodata          @6635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6635 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80779F24, &lit_6635);
#pragma pop

/* 80779F28-80779F2C 00012C 0004+00 0/1 0/0 0/0 .rodata          @6636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6636 = -20.0f;
COMPILER_STRIP_GATE(0x80779F28, &lit_6636);
#pragma pop

/* 80779F2C-80779F30 000130 0004+00 0/2 0/0 0/0 .rodata          @6637 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6637 = 35.0f;
COMPILER_STRIP_GATE(0x80779F2C, &lit_6637);
#pragma pop

/* 80779F30-80779F34 000134 0004+00 0/1 0/0 0/0 .rodata          @6727 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6727 = 350.0f;
COMPILER_STRIP_GATE(0x80779F30, &lit_6727);
#pragma pop

/* 80779F34-80779F38 000138 0004+00 0/2 0/0 0/0 .rodata          @6728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6728 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x80779F34, &lit_6728);
#pragma pop

/* 80771F50-80772128 006270 01D8+00 1/1 0/0 0/0 .text            s_bikkuri_sub__FPvPv */
static void s_bikkuri_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80772128-807724A0 006448 0378+00 1/1 0/0 0/0 .text            e_rdy_drop__FP11e_rdy_class */
static void e_rdy_drop(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 807724A0-80772580 0067C0 00E0+00 1/1 0/0 0/0 .text            e_rdy_a_damage__FP11e_rdy_class */
static void e_rdy_a_damage(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80772580-807726F0 0068A0 0170+00 1/1 0/0 0/0 .text            e_rdy_stand__FP11e_rdy_class */
static void e_rdy_stand(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F38-80779F3C 00013C 0004+00 0/1 0/0 0/0 .rodata          @6940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6940 = 80.0f;
COMPILER_STRIP_GATE(0x80779F38, &lit_6940);
#pragma pop

/* 807726F0-80772B0C 006A10 041C+00 2/1 0/0 0/0 .text            e_rdy_bow3__FP11e_rdy_class */
static void e_rdy_bow3(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80772B0C-80772B98 006E2C 008C+00 1/1 0/0 0/0 .text            s_command2_sub__FPvPv */
static void s_command2_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80772B98-80772C04 006EB8 006C+00 1/1 0/0 0/0 .text            s_command4_sub__FPvPv */
static void s_command4_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80772C04-80773070 006F24 046C+00 2/1 0/0 0/0 .text            e_rdy_commander__FP11e_rdy_class */
static void e_rdy_commander(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80773070-80773474 007390 0404+00 1/1 0/0 0/0 .text            e_rdy_excite__FP11e_rdy_class */
static void e_rdy_excite(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F3C-80779F40 000140 0004+00 0/1 0/0 0/0 .rodata          @7142 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7142 = 1.5f;
COMPILER_STRIP_GATE(0x80779F3C, &lit_7142);
#pragma pop

/* 80773474-807735A8 007794 0134+00 1/1 0/0 0/0 .text            e_rdy_water__FP11e_rdy_class */
static void e_rdy_water(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 807735A8-80773A8C 0078C8 04E4+00 1/1 0/0 0/0 .text            e_rdy_jyunkai__FP11e_rdy_class */
static void e_rdy_jyunkai(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80773A8C-80773B24 007DAC 0098+00 1/1 0/0 0/0 .text            wolfkick_damage__FP11e_rdy_class */
static void wolfkick_damage(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F40-80779F44 000144 0004+00 0/1 0/0 0/0 .rodata          @7294 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7294 = 3000.0f;
COMPILER_STRIP_GATE(0x80779F40, &lit_7294);
#pragma pop

/* 80773B24-80773D2C 007E44 0208+00 1/1 0/0 0/0 .text            big_damage__FP11e_rdy_class */
static void big_damage(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80773D2C-80773E5C 00804C 0130+00 1/1 0/0 0/0 .text            small_damage__FP11e_rdy_classi */
static void small_damage(e_rdy_class* param_0, int param_1) {
    // NONMATCHING
}

/* 80773E5C-8077424C 00817C 03F0+00 1/1 0/0 0/0 .text            damage_check__FP11e_rdy_class */
static void damage_check(e_rdy_class* param_0) {
    // NONMATCHING
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

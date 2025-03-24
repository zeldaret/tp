/**
 * d_a_e_bee.cpp
 * Enemy - Bees
 */

#include "d/actor/d_a_e_bee.h"
#include "d/actor/d_a_e_nest.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "d/d_procname.h"
#include "SSystem/SComponent/c_math.h"

/* 80685638-8068563C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 8068563C-80685640 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80685640-80685644 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80685644-80685648 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80685648-8068564C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8068564C-80685650 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80685650-80685654 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80685654-80685658 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80685658-8068565C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 8068565C-80685660 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80685660-80685664 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80685664-80685668 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80685668-8068566C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 8068566C-80685670 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80685670-80685674 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80685674-80685678 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 80685674 0001+00 data_80685674 @1009 */
/* 80685675 0003+00 data_80685675 None */
static u8 struct_80685674;
static bool hioInit;

/* 80685684-80685694 000054 0010+00 6/6 0/0 0/0 .bss             l_HIO */
static daE_Bee_HIO_c l_HIO;

/* 8068286C-8068289C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__13daE_Bee_HIO_cFv */
daE_Bee_HIO_c::daE_Bee_HIO_c() {
    field_0x4 = -1;
    mScale = 1.0f;
    mDelete = false;
    mNoKill = false;
}

/* 8068289C-806829A8 00011C 010C+00 1/0 0/0 0/0 .text            daE_Bee_Draw__FP11e_bee_class */
static int daE_Bee_Draw(e_bee_class* i_this) {
    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    bee_s* bee = i_this->mBees;
    int room_no = fopAcM_GetRoomNo(i_this);
    for (int i = 0; i < i_this->mNumBees; i++, bee++) {
        if (bee->mAction != bee_s::ACT_DEAD && !bee->mNoDraw) {
            if (bee->mIsFlying == 0) {
                if ((bee->mCounter & 4) != 0) {
                    dComIfGp_entrySimpleModel(bee->mpModel3, room_no);
                } else {
                    dComIfGp_entrySimpleModel(bee->mpModel4, room_no);
                }
            } else {
                if ((bee->mCounter & 1) != 0) {
                    dComIfGp_entrySimpleModel(bee->mpModel1, room_no);
                } else {
                    dComIfGp_entrySimpleModel(bee->mpModel2, room_no);
                }
            }
        }
    }
    return 1;
}

/* 806829A8-80682A70 000228 00C8+00 3/3 0/0 0/0 .text            bee_mtxset__FP5bee_s */
static void bee_mtxset(bee_s* i_bee) {
    mDoMtx_stack_c::transS(i_bee->mPos.x, i_bee->mPos.y, i_bee->mPos.z);
    mDoMtx_stack_c::YrotM(i_bee->mAngle.y);
    mDoMtx_stack_c::XrotM(i_bee->mAngle.x);
    mDoMtx_stack_c::ZrotM(i_bee->mAngle.z);
    f32 scale = l_HIO.mScale * i_bee->mScale;
    mDoMtx_stack_c::scaleM(scale, scale, scale);
    if ((i_bee->mCounter & 1) != 0) {
        i_bee->mpModel1->setBaseTRMtx(mDoMtx_stack_c::get());
    } else {
        i_bee->mpModel2->setBaseTRMtx(mDoMtx_stack_c::get());
    }
}

/* 80682A70-80682D78 0002F0 0308+00 1/1 0/0 0/0 .text            bee_ground_ang_set__FP5bee_s */
static void bee_ground_ang_set(bee_s* i_bee) {
    dBgS_LinChk lin_chk;
    cXyz vec4, vec2, vec3, vec1;
    vec1 = i_bee->mPos;
    vec1.y += 30.0f;
    mDoMtx_stack_c::transS(i_bee->mPos.x, i_bee->mPos.y, i_bee->mPos.z);
    mDoMtx_stack_c::transM(5.0f, -30.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&vec2);
    mDoMtx_stack_c::transM(-10.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&vec3);
    s8 bvar1 = false;
    lin_chk.Set(&vec1, &vec2, NULL);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        vec2 = lin_chk.GetCross();
        lin_chk.Set(&vec1, &vec3, NULL);
        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            vec3 = lin_chk.GetCross();
            bvar1 = true;
        }
    }
    if (bvar1) {
        vec4 = vec2 - vec3;
        i_bee->mAngle.z = cM_atan2s(vec4.y, JMAFastSqrt(vec4.x * vec4.x + vec4.z * vec4.z));
    }
    mDoMtx_stack_c::transM(5.0f, 0.0f, 5.0f);
    mDoMtx_stack_c::multVecZero(&vec2);
    mDoMtx_stack_c::transM(0.0f, 0.0f, -10.0f);
    mDoMtx_stack_c::multVecZero(&vec3);
    bvar1 = false;
    lin_chk.Set(&vec1, &vec2, NULL);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        vec2 = lin_chk.GetCross();
        lin_chk.Set(&vec1, &vec3, NULL);
        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            vec3 = lin_chk.GetCross();
            bvar1 = true;
        }
    }
    if (bvar1) {
        vec4 = vec2 - vec3;
        i_bee->mAngle.x = -cM_atan2s(vec4.y, JMAFastSqrt(vec4.x * vec4.x + vec4.z * vec4.z));
    }
}

/* 80685694-80685698 000064 0004+00 1/2 0/0 0/0 .bss             None */
static u8 ccCylSet;

/* 80682DB4-806835FC 000634 0848+00 1/1 0/0 0/0 .text bee_fly_action__FP11e_bee_classP5bee_s */
static int bee_fly_action(e_bee_class* i_this, bee_s* i_bee) {
    e_nest_class* nest = static_cast<e_nest_class*>(fopAcM_SearchByID(i_this->parentActorID));
    if (nest == NULL) {
        i_bee->mAction = bee_s::ACT_DEAD;
        return false;
    }

    fopAc_ac_c* hit_actor = fopAcM_SearchByID(nest->mHitActorID);
    if (hit_actor == NULL) {
        i_bee->mAction = bee_s::ACT_DEAD;
        return false;
    }

    int ret = false;
    i_bee->mIsFlying = 1;
    cXyz vec;
    
    if (i_bee->mAction == bee_s::ACT_FLY) {
        if (i_bee->mTimer == 0) {
            i_bee->mTimer = cM_rndF(15.0f) + 15.0f;
            i_bee->mTarget.x = cM_rndFX(100.0f);
            i_bee->mTarget.y = cM_rndFX(50.0f);
            i_bee->mTarget.z = cM_rndFX(100.0f);
            i_bee->mSpeedF = cM_rndF(5.0f) + 17.0f;
        }
        if (fopAcM_GetName(hit_actor) != PROC_ALINK) {
            vec = hit_actor->current.pos - i_bee->mPos;
            vec.y += 125.0f;
            vec += i_bee->mTarget;
            if (i_bee->mHomeTimer == 0) {
                if (fopAcM_GetName(hit_actor) == PROC_NPC_TK) {
                    i_bee->mAction = bee_s::ACT_DEAD;
                } else {
                    i_bee->mAction = bee_s::ACT_FLY_HOME_A;
                    i_bee->mSound.startSound(Z2SE_EN_BE_GO_HOME, 0, -1);
                }
            }
        } else {
            vec = hit_actor->current.pos - i_bee->mPos;
            vec.y += 150.0f;
            f32 dist = vec.abs();
            if (i_this->mCcSetTimer == 0 && dist < 40.0f) {
                i_this->mCcSph.SetC(i_bee->mPos);
            }
            if (dist < 300.0f) {
                daPy_getPlayerActorClass()->onBeeFollow();
            }
            vec += i_bee->mTarget;
            f32 home_check = 30.0f;
            if (i_this->mHomeTimer == 0) {
                if (i_bee->mHomeTimer > 10) {
                    i_bee->mHomeTimer = 10;
                }
                home_check = 10000.0f;
            }
            if (i_bee->mHomeTimer == 0) {
                if (nest != NULL && nest->mAction == e_nest_class::ACT_NORMAL) {
                    f32 dx = hit_actor->current.pos.x - i_bee->mPos.x;
                    f32 dz = hit_actor->current.pos.z - i_bee->mPos.z;
                    if (JMAFastSqrt(dx * dx + dz * dz) < home_check) {
                        i_bee->mAction = bee_s::ACT_FLY_HOME_A;
                        i_bee->mSound.startSound(Z2SE_EN_BE_GO_HOME, 0, -1);
                    }
                } else {
                    i_bee->mAction = bee_s::ACT_FLY_HOME_B;
                    i_bee->mSound.startSound(Z2SE_EN_BE_GO_HOME, 0, -1);
                }
            }
        }
        ret = true;
    } else if (i_bee->mAction == bee_s::ACT_FLY_HOME_A) {
        vec = i_this->home.pos - i_bee->mPos;
        f32 home_dist = vec.abs();
        f32 home_check = i_this->scale.x * 55.0f;
        if (home_check < 55.0f) {
            home_check = 55.0f;
        }
        if (home_dist < home_check) {
            i_bee->mAction = bee_s::ACT_HOME;
        } else {
            if (home_dist > 500.0f) {
                home_dist = 500.0f;
            }
            vec.x += home_dist * cM_ssin(i_bee->mCounter * 0x500);
            vec.y += home_dist * cM_scos(i_bee->mCounter * 0x400) * 0.5f;
            vec.z += home_dist * cM_scos(i_bee->mCounter * 0x600);
        }
    } else {
        vec = i_this->home.pos - i_bee->mPos;
        vec.y += 2000.0f;
        vec.x += cM_ssin(i_bee->mCounter * 0x170) * 2000.0f;
        vec.z += cM_scos(i_bee->mCounter * 0x130) * 2000.0f;
        if (i_bee->mPos.y - i_this->home.pos.y > 1500.0f) {
            i_bee->mAction = bee_s::ACT_DEAD;
        }
    }

    s16 angle_y = cM_ssin(i_bee->mCounter * 3500) * 1500.0f;
    s16 angle_x = cM_ssin(i_bee->mCounter * 3000) * 1500.0f;
    cLib_addCalcAngleS2(&i_bee->mAngle.y, angle_y + cM_atan2s(vec.x, vec.z), 1, 0x1000);
    f32 vec_xz = JMAFastSqrt(vec.x * vec.x + vec.z * vec.z);
    cLib_addCalcAngleS2(&i_bee->mAngle.x, angle_x - cM_atan2s(vec.y, vec_xz), 1, 0x1000);
    mDoMtx_YrotS(*calc_mtx, i_bee->mAngle.y);
    mDoMtx_XrotM(*calc_mtx, i_bee->mAngle.x);
    vec.x = 0.0f;
    vec.y = 0.0f;
    vec.z = i_bee->mSpeedF;
    MtxPosition(&vec, &i_bee->mSpeed);
    i_bee->mPos += i_bee->mSpeed;
    i_bee->mAngle.z = 0;
    bee_mtxset(i_bee);
    
    if (ccCylSet == 0) {
        ccCylSet += 1;
        cXyz cyl_center = i_bee->mPos;
        cyl_center.y -= 100.0f;
        i_this->mCcCyl.SetC(cyl_center);
        i_this->mCcCyl.SetH(200.0f);
        i_this->mCcCyl.SetR(500.0f);
    }

    if (i_bee->mHomeTimer != 0) {
        i_bee->mHomeTimer--;
    }
    return ret;
}

/* 806835FC-80683DDC 000E7C 07E0+00 1/1 0/0 0/0 .text bee_nest_action__FP11e_bee_classP5bee_sSc */
static void bee_nest_action(e_bee_class* i_this, bee_s* i_bee, s8 i_nestHealth) {
    i_bee->mIsFlying = 0;
    cXyz vec1 = i_bee->mTarget - i_bee->mPos;

    if (i_bee->mMode == 0) {
        if (i_bee->mTimer == 0) {
            if (cM_rndF(1.0f) < 0.02f) {
                i_bee->mTimer = cM_rndF(50.0f) + 30.0f;
                i_bee->mMode = 2;
            } else {
                i_bee->mTimer = cM_rndF(30.0f) + 15.0f;
                i_bee->mTarget.x = i_this->home.pos.x + cM_rndFX(200.0f);
                i_bee->mTarget.z = i_this->home.pos.z + cM_rndFX(200.0f);
                i_bee->mMode = 1;
            }
        }
        i_bee->mSpeedF = 0.0f;
    } else if (i_bee->mMode == 1) {
        i_bee->mCounter++;
        cLib_addCalcAngleS2(&i_bee->mAngle.y, cM_atan2s(vec1.x, vec1.z), 2, 0x400);
        if (i_bee->mTimer == 0 || vec1.abs() < 10.0f) {
            i_bee->mMode = 0;
            i_bee->mTimer = cM_rndF(15.0f) + 5.0f;
        }
        i_bee->mSpeedF = 2.0f;
    } else if (i_bee->mMode == 2) {
        i_bee->mIsFlying = 1;
        cLib_addCalc2(&i_bee->mStartDistance, 50.0f, 0.1f, 5.0f);
        cLib_addCalcAngleS2(&i_bee->mAngle.y, cM_atan2s(vec1.x, vec1.z), 2, 0x800);
        if ((i_bee->mTimer & 7) == 0) {
            i_bee->mTarget.x = i_this->home.pos.x + cM_rndFX(200.0f);
            i_bee->mTarget.z = i_this->home.pos.z + cM_rndFX(200.0f);
        }
        if (i_bee->mTimer == 0) {
            i_bee->mMode = 3;
        }
        i_bee->mSpeedF = 5.0f;
    } else if (i_bee->mMode == 3) {
        i_bee->mIsFlying = 1;
        cLib_addCalc0(&i_bee->mStartDistance, 1.0f, 5.0f);
        if (i_bee->mStartDistance <= 0.1f) {
            i_bee->mMode = 0;
        }
        i_bee->mSpeedF = 0.0f;
    }

    mDoMtx_YrotS(*calc_mtx, i_bee->mAngle.y);
    vec1.y = 0.0f;
    vec1.x = 0.0f;
    vec1.z = i_bee->mSpeedF;
    MtxPosition(&vec1, &i_bee->mSpeed);
    i_bee->mPos += i_bee->mSpeed;

    s16 angle_z = -(i_bee->mPos.x - i_this->home.pos.x) * 0x8000 / 200.0f;
    s16 angle_x = (i_bee->mPos.z - i_this->home.pos.z) * 0x8000 / 200.0f;
    vec1.y = i_this->scale.x * -51.0f - i_bee->mStartDistance;
    vec1.z = 0.0f;
    vec1.x = 0.0f;
    MtxScale(1.0f, 1.2f, 1.0f, 0);
    mDoMtx_ZrotM(*calc_mtx, angle_z);
    mDoMtx_XrotM(*calc_mtx, angle_x);
    cXyz pos;
    MtxPosition(&vec1, &pos);
    pos += i_this->home.pos;
    
    if (i_bee->mIsFlying == 0) {
        cLib_addCalcAngleS2(&i_bee->mAngle.x, angle_z, 2, 0x800);
        cLib_addCalcAngleS2(&i_bee->mAngle.z, angle_x, 2, 0x800);
    } else {
        i_bee->mCounter++;
        cLib_addCalcAngleS2(&i_bee->mAngle.x, 0, 1, 0x1000);
        cLib_addCalcAngleS2(&i_bee->mAngle.z, 0x8000, 1, 0x1000);
    }
    
    mDoMtx_stack_c::transS(pos.x, pos.y, pos.z);
    mDoMtx_stack_c::ZrotM(i_bee->mAngle.x);
    mDoMtx_stack_c::XrotM(i_bee->mAngle.z);
    mDoMtx_stack_c::YrotM(i_bee->mAngle.y);
    mDoMtx_stack_c::XrotM(0x8000);
    f32 scale = l_HIO.mScale * i_bee->mScale;
    mDoMtx_stack_c::scaleM(scale, scale, scale);

    if (i_bee->mIsFlying != 0) {
        if ((i_bee->mCounter & 1) != 0) {
            i_bee->mpModel1->setBaseTRMtx(mDoMtx_stack_c::get());
        } else {
            i_bee->mpModel2->setBaseTRMtx(mDoMtx_stack_c::get());
        }
    } else {
        if ((i_bee->mCounter & 4) != 0) {
            i_bee->mpModel3->setBaseTRMtx(mDoMtx_stack_c::get());
        } else {
            i_bee->mpModel4->setBaseTRMtx(mDoMtx_stack_c::get());
        }
    }

    if (i_nestHealth == 1) {
        i_bee->mAction = bee_s::ACT_FLY;
        i_bee->mPos = pos;
        i_bee->mTimer = cM_rndF(50.0f);
        i_bee->mSpeedF = 0.0f;
        i_bee->mMode = 0;
        i_bee->mStartDistance = 0.0f;
        i_bee->mHomeTimer = cM_rndF(100.0f) + 400.0f;
    } else if (i_nestHealth == 2) {
        i_bee->mAction = bee_s::ACT_START;
        i_bee->mPos = pos;
        i_bee->mTimer = cM_rndF(30.0f) + 20.0f;
    } else {
        fopAc_ac_c* nest = fopAcM_SearchByID(i_this->parentActorID);
        if (nest == NULL) {
            i_bee->mPos = pos;
            vec1 = i_bee->mPos - i_this->home.pos;
            i_bee->mAction = bee_s::ACT_FAIL;
            i_bee->mMode = 0;
            mDoMtx_YrotS(*calc_mtx, cM_atan2s(vec1.x, vec1.z));
            vec1.x = 0.0f;
            vec1.y = cM_rndF(10.0f) + 20.0f;
            vec1.z = cM_rndF(10.0f) + 20.0f;
            MtxPosition(&vec1, &i_bee->mSpeed);
            i_bee->mAngle.x = cM_rndF(0x10000);
            i_bee->mAngle.z = cM_rndF(0x10000);
            i_bee->mTimer = 0;
            i_bee->mIsFlying = 1;
            i_bee->mSound.startSound(Z2SE_EN_BE_DEATH, 0, -1);
        }
    }
}

/* 80683DDC-80683FF4 00165C 0218+00 1/1 0/0 0/0 .text            bee_fail__FP5bee_s */
static void bee_fail(bee_s* i_bee) {
    if (i_bee->mMode <= 1) {
        i_bee->mPos += i_bee->mSpeed;
        i_bee->mSpeed.y -= 3.0f;
        i_bee->mAngle.x += 0x2000;
        i_bee->mAngle.z += 0x1300;
        dBgS_GndChk gnd_chk;
        cXyz vec = i_bee->mPos;
        vec.y += 100.0f;
        gnd_chk.SetPos(&vec);
        f32 ground = dComIfG_Bgsp().GroundCross(&gnd_chk) + 3.0f;
        if (fabsf(ground - i_bee->mPos.y) > 1000.0f) {
            ground = i_bee->mPos.y;
        }
        if (i_bee->mPos.y <= ground) {
            i_bee->mPos.y = ground;
            if (i_bee->mMode == 0) {
                i_bee->mSpeed.y *= -(cM_rndF(0.1f) + 0.2f);
                i_bee->mSpeed.x *= cM_rndF(0.1f) + 0.3f;
                i_bee->mSpeed.z *= cM_rndF(0.1f) + 0.3f;
            } else {
                bee_ground_ang_set(i_bee);
                i_bee->mSpeed.y = 0.0f;
                if (!l_HIO.mNoKill) {
                    i_bee->mTimer = cM_rndF(15.0f) + 15.0f;
                } else {
                    i_bee->mAction = bee_s::ACT_FLY;
                }
            }
            i_bee->mMode++;
        }
    } else if (i_bee->mTimer == 0) {
        cLib_addCalc0(&i_bee->mScale, 1.0f, 0.1f);
        if (i_bee->mScale < 0.01f) {
            i_bee->mAction = bee_s::ACT_DEAD;
        }
    }
    bee_mtxset(i_bee);
}

/* 80683FF4-80684248 001874 0254+00 1/1 0/0 0/0 .text            bee_start__FP11e_bee_classP5bee_s
 */
static void bee_start(e_bee_class* i_this, bee_s* i_bee) {
    cXyz vec = i_this->home.pos - i_bee->mPos;
    vec.y += 30;
    s16 angle_y = cM_ssin(i_bee->mCounter * 4500) * 4000.0f;
    s16 angle_x = cM_ssin(i_bee->mCounter * 5500) * 4000.0f;
    cLib_addCalcAngleS2(&i_bee->mAngle.y, angle_y + cM_atan2s(vec.x, vec.z), 1, 0x1000);
    f32 vec_xz = JMAFastSqrt(vec.x * vec.x + vec.z * vec.z);
    cLib_addCalcAngleS2(&i_bee->mAngle.x, angle_x - cM_atan2s(vec.y, vec_xz), 1, 0x1000);
    i_bee->mCounter++;
    cLib_addCalcAngleS2(&i_bee->mAngle.z, 0x8000, 4, 0x400);
    i_bee->mSpeedF = 15.0f;
    mDoMtx_YrotS(*calc_mtx, i_bee->mAngle.y);
    mDoMtx_XrotM(*calc_mtx, i_bee->mAngle.x);
    vec.x = 0.0f;
    vec.y = 0.0f;
    vec.z = i_bee->mSpeedF;
    MtxPosition(&vec, &i_bee->mSpeed);
    i_bee->mPos += i_bee->mSpeed;

    if (i_bee->mTimer == 0) {
        e_nest_class* nest = static_cast<e_nest_class*>(fopAcM_SearchByID(i_this->parentActorID));
        if (nest != NULL && nest->mHawkHit != 0) {
            i_bee->mAction = bee_s::ACT_FLY_HOME_B;
            i_bee->mSpeedF = cM_rndF(5.0f) + 17.0f;
        } else {
            i_bee->mAction = bee_s::ACT_FLY;
            i_bee->mSpeedF = 0.0f;
            i_bee->mMode = 0;
            i_bee->mStartDistance = 0.0f;
            i_bee->mHomeTimer = cM_rndF(55.0f) + 200.0f;
        }
    }

    i_bee->mIsFlying = 1;
    bee_mtxset(i_bee);
}

/* 80684248-80684A94 001AC8 084C+00 1/1 0/0 0/0 .text            bee_control__FP11e_bee_class */
// NONMATCHING regalloc
static void bee_control(e_bee_class* i_this) {
    s8 nest_health = 0;

    static cXyz non(-20000.0f, 30000.0f, -15000.0f);
    i_this->mCcSph.SetC(i_this->current.pos + non);

    fopAc_ac_c* parent = fopAcM_SearchByID(i_this->parentActorID);
    e_nest_class* nest = NULL;
    if (parent != NULL) {
        if (parent != NULL && parent->health != 0) {
            nest_health = parent->health;
        }
        nest = static_cast<e_nest_class*>(parent);
        i_this->home.pos = nest->mCenterPos;
    }

    dComIfG_Ccsp()->Set(&i_this->mCcCyl);

    cXyz hit_pos;
    cXyz* hit_pos_p = NULL;
    f32 hit_radius = 120.0f;

    if (i_this->mCcCyl.ChkTgHit()) {
        hit_pos_p = &hit_pos;
        cCcD_Obj* hit_obj = i_this->mCcCyl.GetTgHitObj();
        if (hit_obj->ChkAtType(AT_TYPE_BOMB) || hit_obj->ChkAtType(AT_TYPE_BOOMERANG)
                                             || hit_obj->ChkAtType(AT_TYPE_IRON_BALL)) {
            fopAc_ac_c* hit_actor = dCc_GetAc(hit_obj->GetAc());
            if (hit_obj->ChkAtType(AT_TYPE_BOMB)) {
                hit_radius = 300.0f;
                hit_pos = hit_actor->current.pos;
            } else if (hit_obj->ChkAtType(AT_TYPE_IRON_BALL)) {
                hit_radius = 100.0f;
                daPy_py_c* player = static_cast<daPy_py_c*>(dComIfGp_getPlayer(0));
                cXyz* center = player->getIronBallCenterPos();
                if (center != NULL) {
                    hit_pos = *center;
                }
            } else {
                hit_pos = hit_actor->current.pos;
                hit_radius = 150.0f;
            }
        } else {
            cXyz vec1, vec2;
            daPy_py_c* player = daPy_getPlayerActorClass();
            if (cc_pl_cut_bit_get() == 0x80) {
                i_this->mBoomerangAngle += 0x1400;
                vec1.z = 150.0f;
            } else {
                vec1.z = 100.0f;
            }
            mDoMtx_YrotS(*calc_mtx, player->shape_angle.y + i_this->mBoomerangAngle);
            vec1.x = 0.0f;
            vec1.y = 100.0f;
            MtxPosition(&vec1, &vec2);
            hit_pos = player->current.pos + vec2;
        }
    } else {
        i_this->mBoomerangAngle = 0;
    }

    bee_s* bee = i_this->mBees;
    s8 active_bees = 0;
    ccCylSet = 0;
    s8 bees_in_nest = 0;
    s8 bees_flying = 0;
    camera_class* camera = dComIfGp_getCamera(0);

    if ((nest != NULL && nest->mDemoStage == 0 && dComIfGp_event_runCheck())
                    || !daPy_getPlayerActorClass()->checkSwimUp()
                    || dComIfGp_checkPlayerStatus0(0, 0x100000)
                    || dComIfGp_checkPlayerStatus0(0, 0x8000000)
                    || daPy_getPlayerActorClass()->checkCanoeRide()) {
        if (i_this->mHomeTimer != 0) {
            i_this->mHomeTimer--;
        }
    } else {
        i_this->mHomeTimer = 10;
    }

    for (int i = 0; i < i_this->mNumBees; i++, bee++) {
        if (bee->mAction != bee_s::ACT_DEAD) {
            bee->mNoDraw = false;
            active_bees++;
            cXyz vec3;
            
            if (dComIfGp_checkPlayerStatus0(0, 0x200000)) {
                vec3.x = bee->mPos.x - camera->lookat.eye.x;
                vec3.z = bee->mPos.z - camera->lookat.eye.z;
                if (JMAFastSqrt(vec3.x * vec3.x + vec3.z * vec3.z) > 2500.0f) {
                    bee->mNoDraw = true;
                }
            }

            if (bee->mTimer != 0) {
                bee->mTimer--;
            }

            if (bee->mAction == bee_s::ACT_HOME) {
                bee_nest_action(i_this, bee, nest_health);
                bees_in_nest++;
            } else if (bee->mAction <= bee_s::ACT_FLY_HOME_B) {
                bee->mCounter++;
                if (bee_fly_action(i_this, bee)) {
                    i_this->current.pos = bee->mPos;
                    bees_flying++;
                }
                if (hit_pos_p != NULL) {
                    vec3 = bee->mPos - *hit_pos_p;
                    if (vec3.abs() < hit_radius) {
                        bee->mAction = bee_s::ACT_FAIL;
                        bee->mMode = 0;
                        mDoMtx_YrotS(*calc_mtx, cM_atan2s(vec3.x, vec3.z));
                        vec3.x = 0.0f;
                        vec3.y = cM_rndF(10.0f) + 20.0f;
                        vec3.z = cM_rndF(10.0f) + 20.0f;
                        MtxPosition(&vec3, &bee->mSpeed);
                        bee->mAngle.x = cM_rndF(0x10000);
                        bee->mAngle.z = cM_rndF(0x10000);
                        bee->mTimer = 0;
                        bee->mSound.startSound(Z2SE_EN_BE_DEATH, 0, -1);
                        cXyz hit_mark_scale(0.35f, 0.35f, 0.35f);
                        dComIfGp_setHitMark(1, i_this, &bee->mPos, NULL, &hit_mark_scale, 0);
                    }
                }
            } else if (bee->mAction == bee_s::ACT_FAIL) {
                bee_fail(bee);
            } else if (bee->mAction == bee_s::ACT_START) {
                bees_flying++;
                bee_start(i_this, bee);
            }
            bee->mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));
        }
    }

    if (active_bees == 0) {
        fopAcM_delete(i_this);
    } else {
        if (bees_flying != 0) {
            if (dComIfGp_event_runCheck()) {
                i_this->mSound.playBeeGroupSound(Z2SE_EN_BE_FLY_D, bees_flying);
            } else {
                i_this->mSound.playBeeGroupSound(Z2SE_EN_BE_FLY, bees_flying);
            }
        }
        i_this->mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));
        if (nest != NULL) {
            if (bees_in_nest != 0) {
                nest->mBeeSound.playBeeGroupSound(Z2SE_EN_BE_STAY, bees_in_nest);
            }
            nest->mBeeSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));
        }
    }

    if (!dComIfGp_event_runCheck()) {
        dComIfG_Ccsp()->Set(&i_this->mCcSph);
        if (i_this->mCcSph.ChkAtHit()) {
            fopAc_ac_c* hit_actor = dCc_GetAc(i_this->mCcSph.GetAtHitObj()->GetAc());
            if (hit_actor != NULL && fopAcM_GetName(hit_actor) == PROC_ALINK) {
                dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            }
        }
    }
}

/* 80684A94-80684B5C 002314 00C8+00 2/1 0/0 0/0 .text            daE_Bee_Execute__FP11e_bee_class */
static int daE_Bee_Execute(e_bee_class* i_this) {
    if (l_HIO.mDelete) {
        fopAcM_delete(i_this);
    }

    i_this->mCounter++;

    for (int i = 0; i < 2; i++) {
        if (i_this->mTimers[i] != 0) {
            i_this->mTimers[i]--;
        }
    }

    if (dComIfGp_event_runCheck()) {
        i_this->mCcSetTimer = 60;
    }
    if (i_this->mCcSetTimer != 0) {
        i_this->mCcSetTimer--;
    }

    bee_control(i_this);

    if (i_this->mCcSetTimer == 0) {
        i_this->mCcSetTimer = 4;
    }
    
    return 1;
}


/* 80684B5C-80684B64 0023DC 0008+00 1/0 0/0 0/0 .text            daE_Bee_IsDelete__FP11e_bee_class
 */
static int daE_Bee_IsDelete(e_bee_class* param_0) {
    return 1;
}

/* 80684B64-80684C70 0023E4 010C+00 1/0 0/0 0/0 .text            daE_Bee_Delete__FP11e_bee_class */
static int daE_Bee_Delete(e_bee_class* i_this) {
    static const u32 l_bmdidx[4] = {3, 4, 5, 6};
    if (i_this->mResLoaded) {
        for (u32 i = 0; i < 4; i++) {
            J3DModelData* model_data =
                static_cast<J3DModelData*>(dComIfG_getObjectRes("E_bee", l_bmdidx[i]));
            dComIfGp_removeSimpleModel(model_data, fopAcM_GetRoomNo(i_this));
        }
    }
    
    dComIfG_resDelete(&i_this->mPhase, "E_bee");
    
    if (i_this->mHIOInit) {
        hioInit = false;
    }

    if (i_this->heap != NULL) {
        i_this->mSound.deleteObject();
        for (int i = 0; i < i_this->mNumBees; i++) {
            i_this->mBees[i].mSound.deleteObject();
        }
    }

    return 1;
}

/* 80684C70-80684E24 0024F0 01B4+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    e_bee_class* _this = static_cast<e_bee_class*>(i_this);
    
    J3DModelData* bmdBe01 = static_cast<J3DModelData*>(dComIfG_getObjectRes("E_bee", 3));
    J3DModelData* bmdBe02 = static_cast<J3DModelData*>(dComIfG_getObjectRes("E_bee", 4));
    J3DModelData* bmdBe03 = static_cast<J3DModelData*>(dComIfG_getObjectRes("E_bee", 5));
    J3DModelData* bmdBe04 = static_cast<J3DModelData*>(dComIfG_getObjectRes("E_bee", 6));

    _this->mSound.init(&_this->current.pos, 2);

    for (int i = 0; i < _this->mNumBees; i++) {
        _this->mBees[i].mpModel1 = mDoExt_J3DModel__create(bmdBe01, 0x20000, 0x11000084);
        if (_this->mBees[i].mpModel1 == NULL) {
            return false;
        }
        _this->mBees[i].mpModel2 = mDoExt_J3DModel__create(bmdBe02, 0x20000, 0x11000084);
        if (_this->mBees[i].mpModel2 == NULL) {
            return false;
        }
        _this->mBees[i].mpModel3 = mDoExt_J3DModel__create(bmdBe03, 0x20000, 0x11000084);
        if (_this->mBees[i].mpModel3 == NULL) {
            return false;
        }
        _this->mBees[i].mpModel4 = mDoExt_J3DModel__create(bmdBe04, 0x20000, 0x11000084);
        if (_this->mBees[i].mpModel4 == NULL) {
            return false;
        }
        _this->mBees[i].mSound.init(&_this->mBees[i].mPos, 1);
    }

    return true;
}

/* 80684E24-80685224 0026A4 0400+00 1/0 0/0 0/0 .text            daE_Bee_Create__FP10fopAc_ac_c */
static cPhs__Step daE_Bee_Create(fopAc_ac_c* i_this) {
    e_bee_class* _this = static_cast<e_bee_class*>(i_this);
    fopAcM_SetupActor(_this, e_bee_class);
    
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&_this->mPhase, "E_bee");
    if (step == cPhs_COMPLEATE_e) {
        _this->mParam0 = (u8)fopAcM_GetParam(_this);
        _this->mParam1 = (u8)(fopAcM_GetParam(_this) >> 8);
        _this->mParam2 = (u8)(fopAcM_GetParam(_this) >> 16);
        if (_this->mParam2 == 0xff) {
            _this->mParam2 = 0;
        }
        _this->mNumBees = _this->mParam0 + 1;
        if (_this->mNumBees > 0x40) {
            _this->mNumBees = 0x40;
        }

        if (!fopAcM_entrySolidHeap(_this, useHeapInit, _this->mNumBees * 0x7e0)) {
            return cPhs_ERROR_e;
        }

        if (!hioInit) {
            _this->mHIOInit = true;
            hioInit = true;
            l_HIO.field_0x4 = -1;
        }

        if (_this->mParam1 == 1) {
            _this->scale.x = _this->mParam2 * 0.1f;
            _this->home.pos.y += _this->scale.x * -80.0f;
        }

        for (int i = 0; i < _this->mNumBees; i++) {
            if (_this->mParam1 == 1) {
                _this->mBees[i].mAction = bee_s::ACT_HOME;
            } else {
                _this->mBees[i].mAction = bee_s::ACT_FLY;
            }
            _this->mBees[i].mPos = _this->home.pos;
            _this->mBees[i].mCounter = cM_rndF(0x10000);
            _this->mBees[i].mScale = cM_rndFX(0.1f) + 1.0f;
        }

        _this->mCounter = fopAcM_GetID(i_this);

        _this->mCcStts.Init(0, 0, i_this);
        static dCcD_SrcCyl cc_cyl_src = {
            {
                {0x0, {{0x0, 0x0, 0x0}, {0x410022, 0x23}, 0x0}}, // mObj
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
                {0x0}, // mGObjCo
            }, // mObjInf
            {
                {0.0f, 0.0f, 0.0f}, // mCenter
                30.0f, // mRadius
                130.0f // mHeight
            } // mCcCyl
        };
        _this->mCcCyl.Set(cc_cyl_src);
        _this->mCcCyl.SetStts(&_this->mCcStts);
        _this->mCcCyl.OnTgNoHitMark();
        static dCcD_SrcSph at_sph_src = {
            {
                {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
                {dCcD_SE_NONE, 0x0, 0xc, 0x0, 0x1}, // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
                {0x0}, // mGObjCo
            }, // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 30.0f} // mCcSph
            } // mCcSphAttr
        };
        _this->mCcSph.Set(at_sph_src);
        _this->mCcSph.SetStts(&_this->mCcStts);

        daE_Bee_Execute(_this);

        static const u32 l_bmdidx[4] = {3, 4, 5, 6};
        for (u32 i = 0; i < 4; i++) {
            J3DModelData* model_data =
                static_cast<J3DModelData*>(dComIfG_getObjectRes("E_bee", l_bmdidx[i]));
            dComIfGp_addSimpleModel(model_data, fopAcM_GetRoomNo(_this), false);
            _this->mResLoaded = true;
        }
    }
    return step;
}

/* 806856B4-806856B8 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_806856B4[4];
#pragma pop

/* 806856B8-806856BC 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_806856B8[4];
#pragma pop

/* 806856BC-806856C0 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_806856BC[4];
#pragma pop

/* 806856C0-806856C4 000090 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806856C0[4];
#pragma pop

/* 806856C4-806856C8 000094 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806856C4[4];
#pragma pop

/* 806856C8-806856CC 000098 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806856C8[4];
#pragma pop

/* 806856CC-806856D0 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_806856CC[4];
#pragma pop

/* 806856D0-806856D4 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_806856D0[4];
#pragma pop

/* 806856D4-806856D8 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_806856D4[4];
#pragma pop

/* 806856D8-806856DC 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_806856D8[4];
#pragma pop

/* 806856DC-806856E0 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_806856DC[4];
#pragma pop

/* 806856E0-806856E4 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806856E0[4];
#pragma pop

/* 806856E4-806856E8 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_806856E4[4];
#pragma pop

/* 806856E8-806856EC 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806856E8[4];
#pragma pop

/* 806856EC-806856F0 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806856EC[4];
#pragma pop

/* 806856F0-806856F4 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_806856F0[4];
#pragma pop

/* 806856F4-806856F8 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_806856F4[4];
#pragma pop

/* 806856F8-806856FC 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806856F8[4];
#pragma pop

/* 806856FC-80685700 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_806856FC[4];
#pragma pop

/* 80685700-80685704 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80685700[4];
#pragma pop

/* 80685704-80685708 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80685704[4];
#pragma pop

/* 80685708-8068570C 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80685708[4];
#pragma pop

/* 8068570C-80685710 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8068570C[4];
#pragma pop

/* 80685710-80685714 0000E0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80685710[4];
#pragma pop

/* 80685714-80685718 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80685714[4];
#pragma pop

/* 80685524-80685524 0000F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 806855B0-806855D0 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_Bee_Method */
static actor_method_class l_daE_Bee_Method = {
    (process_method_func)daE_Bee_Create,
    (process_method_func)daE_Bee_Delete,
    (process_method_func)daE_Bee_Execute,
    (process_method_func)daE_Bee_IsDelete,
    (process_method_func)daE_Bee_Draw,
};

/* 806855D0-80685600 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_BEE */
extern actor_process_profile_definition g_profile_E_BEE = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_E_BEE,
    &g_fpcLf_Method.base,
    sizeof(e_bee_class),
    0,
    0,
    &g_fopAc_Method.base,
    0xB7,
    &l_daE_Bee_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

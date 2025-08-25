/**
 * d_a_kytag13.cpp
 * Blowing Snow Tag
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_kytag13.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "d/d_kankyo_rain.h"

/* 8085F1F8-8085F200 000078 0008+00 1/0 0/0 0/0 .text            daKytag13_Draw__FP13kytag13_class
 */
static int daKytag13_Draw(kytag13_class* i_this) {
    return 1;
}

/* 8085F200-8085F2B0 000080 00B0+00 1/1 0/0 0/0 .text            vectle_calc__FP10DOUBLE_POSP4cXyz
 */
static void vectle_calc(DOUBLE_POS* pos, cXyz* out) {
    f64 len = sqrt(pos->x * pos->x + pos->y * pos->y + pos->z * pos->z);
    if (0.0 != len) {
        out->x = pos->x / len;
        out->y = pos->y / len;
        out->z = pos->z / len;
    } else {
        out->x = 0.0f;
        out->y = 0.0f;
        out->z = 0.0f;
    }
}

/* 8085F2B0-80860148 000130 0E98+00 1/1 0/0 0/0 .text
 * daKytag13_Execute_standard__FP13kytag13_class                */
// NONMATCHING - some regalloc
static int daKytag13_Execute_standard(kytag13_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    dKankyo_snow_Packet* snow_packet = g_env_light.mpSnowPacket;
    camera_class* camera = dComIfGp_getCamera(0);
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    DOUBLE_POS sp88;
    cXyz sp7C;
    cXyz sp70;

    cXyz sp64 = dKyw_get_wind_vecpow();
    cXyz sp60;

    cXyz sp4C;
    cXyz sp40;

    dBgS_ObjGndChk_All spA0;
    cXyz sp34;

    if (snow_packet == NULL) {
        return 1;
    }

    sp34 = player->current.pos;
    sp34.y += 100.0f;
    spA0.SetPos(&sp34);

    f32 temp_f30 = dComIfG_Bgsp().GroundCross(&spA0);
    temp_f30 += 5.0f;
    f32 var_f29;
    f32 var_f28;

    f32 temp_f27 = a_this->current.pos.y;

    if (i_this->field_0x57a != 0xFF) {
        if (!dComIfGs_isSwitch(i_this->field_0x57a, dComIfGp_roomControl_getStayNo())) {
            g_env_light.field_0xe90 = 0;
        }
    }

    snow_packet->field_0x6d74 = camera->lookat.eye;
    sp7C.z = 0.0f;
    sp7C.y = 0.0f;
    sp7C.x = 0.0f;

    cXyz* temp_r27 = dKyw_get_wind_vec();
    f32 temp_f31 = dKyw_get_wind_pow();

    sp4C.x = 0.0f;
    sp4C.y = 1000.0f * a_this->scale.y;
    sp4C.z = 0.0f;

    mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y, a_this->current.pos.z);
    mDoMtx_stack_c::ZrotM(a_this->current.angle.z);
    mDoMtx_stack_c::YrotM(a_this->current.angle.y);
    mDoMtx_stack_c::XrotM(a_this->current.angle.x);
    mDoMtx_stack_c::multVec(&sp4C, &sp40);

    sp70 = *temp_r27;

    dKyr_get_vectle_calc(&sp40, &a_this->current.pos, &sp64);

    sp88.x = camera->lookat.center.x - camera->lookat.eye.x;
    sp88.y = 0.0;
    sp88.z = camera->lookat.center.z - camera->lookat.eye.z;

    cXyz sp28;
    vectle_calc(&sp88, &sp28);

    snow_packet->field_0x6d84 = cM3d_VectorProduct2d(0.0f, 0.0f, -sp70.x, -sp70.z, sp28.x, sp28.z);

    f32 tmp = fabsf((sp70.x * sp28.x) + (sp70.z * sp28.z));
    snow_packet->field_0x6d80 = (1.0f - tmp) * temp_f31 * (1.0f - fabsf(0.3f + sp70.y));
    snow_packet->field_0x6d80 *= fabsf(snow_packet->field_0x6d84);

    for (int i = i_this->field_0x57e - 1; i >= i_this->field_0x57c; i--) {
        if (strcmp(dComIfGp_getStartStageName(), "D_MN11") == 0 &&
            dComIfGp_roomControl_getStayNo() == 0 && i == 100)
        {
            sp64.x = -0.0f;
            sp64.y = -0.3f;
            sp64.z = -0.4f;
        }

        f32 temp_f28 = -(0.2f + cM_rndF(1.0f));

        switch (snow_packet->mSnowEff[i].mStatus) {
        case 0:
            snow_packet->mSnowEff[i].mWindSpeed = (4.0f * i_this->mSpeed) + cM_rndF(6.0f);
            snow_packet->mSnowEff[i].mGravity = temp_f28;
            snow_packet->mSnowEff[i].mTimer = 0;
            snow_packet->mSnowEff[i].mPosition.x = sp40.x + cM_rndFX(500.0f * a_this->scale.x);
            snow_packet->mSnowEff[i].mPosition.y = sp40.y - cM_rndF(1000.0f * a_this->scale.y);
            snow_packet->mSnowEff[i].mPosition.z = sp40.z + cM_rndFX(500.0f * a_this->scale.z);
            snow_packet->mSnowEff[i].mBasePos.x = sp40.x + cM_rndFX(500.0f * a_this->scale.x);
            snow_packet->mSnowEff[i].mBasePos.y = sp40.y - cM_rndF(1000.0f * a_this->scale.y);
            snow_packet->mSnowEff[i].mBasePos.z = sp40.z + cM_rndFX(500.0f * a_this->scale.z);
            snow_packet->mSnowEff[i].mScale = 1.0f;
            snow_packet->mSnowEff[i].field_0x30 = 1.0f;
            snow_packet->mSnowEff[i].mPosWaveX = cM_rndF(0xFFFF);
            snow_packet->mSnowEff[i].mPosWaveZ = cM_rndF(0xFFFF);
            snow_packet->mSnowEff[i].mStatus = 1;

            if (strcmp(dComIfGp_getStartStageName(), "D_MN11") == 0 &&
                dComIfGp_roomControl_getStayNo() == 0)
            {
                if (i < 25) {
                    snow_packet->mSnowEff[i].mBasePos.x =
                        1680.0f + cM_rndFX(200.0f * a_this->scale.x);
                    snow_packet->mSnowEff[i].mBasePos.y =
                        1630.0f - cM_rndF(1630.0f * a_this->scale.y);
                    snow_packet->mSnowEff[i].mBasePos.z =
                        4280.0f + cM_rndFX(100.0f * a_this->scale.z);
                } else if (i < 50) {
                    snow_packet->mSnowEff[i].mBasePos.x =
                        -1680.0f + cM_rndFX(200.0f * a_this->scale.x);
                    snow_packet->mSnowEff[i].mBasePos.y =
                        1630.0f - cM_rndF(1630.0f * a_this->scale.y);
                    snow_packet->mSnowEff[i].mBasePos.z =
                        4280.0f + cM_rndFX(100.0f * a_this->scale.z);
                } else if (i < 75) {
                    snow_packet->mSnowEff[i].mBasePos.x = cM_rndFX(500.0f * a_this->scale.x);
                    snow_packet->mSnowEff[i].mBasePos.y =
                        1680.0f - cM_rndF(1680.0f * a_this->scale.y);
                    snow_packet->mSnowEff[i].mBasePos.z =
                        5000.0f + cM_rndFX(100.0f * a_this->scale.z);
                } else if (i < 100) {
                    snow_packet->mSnowEff[i].mBasePos.x = cM_rndFX(500.0f * a_this->scale.x);
                    snow_packet->mSnowEff[i].mBasePos.y =
                        750.0f - cM_rndF(750.0f * a_this->scale.y);
                    snow_packet->mSnowEff[i].mBasePos.z =
                        7110.0f + cM_rndFX(100.0f * a_this->scale.z);
                }
            }
            break;
        case 1:
        case 2:
            var_f28 = temp_f27;
            var_f29 = temp_f27;

            if (dComIfGp_roomControl_getStayNo() == 0) {
                var_f28 = -22.0f;
                var_f29 = -22.0f;
            } else if (dComIfGp_roomControl_getStayNo() == 6) {
                var_f28 = 950.0f;
                var_f29 = 950.0f;
            } else if (dComIfGp_roomControl_getStayNo() == 3) {
                var_f28 = -22.0f;
                var_f29 = -22.0f;
            } else if (dComIfGp_roomControl_getStayNo() == 9) {
                var_f28 = -50.0f;
                var_f29 = -50.0f;
            } else if (dComIfGp_roomControl_getStayNo() == 13) {
                var_f28 = 0.0f;
                var_f29 = 0.0f;
            }

            if (camera->lookat.eye.abs(snow_packet->mSnowEff[i].mPosition) < 500.0f) {
                var_f28 = temp_f30;
            }

            if (camera->lookat.eye.abs(snow_packet->mSnowEff[i].mBasePos) < 500.0f) {
                var_f29 = temp_f30;
            }

            cLib_addCalc(&snow_packet->mSnowEff[i].mWindSpeed,
                         snow_packet->mSnowEff[i].mWindSpeed - cM_rndFX(0.08f), 0.5f, 0.1f, 0.01f);

            cXyz sp1C;
            if (snow_packet->mSnowEff[i].mPosition.y > var_f28) {
                s16 temp_r4_2 = snow_packet->mSnowEff[i].mPosWaveX;
                s16 temp_r5_2 = snow_packet->mSnowEff[i].mPosWaveZ;

                sp1C.x = cM_scos(temp_r4_2) * cM_ssin(temp_r5_2);
                sp1C.y = cM_ssin(temp_r4_2);
                sp1C.z = cM_scos(temp_r4_2) * cM_scos(temp_r5_2);

                snow_packet->mSnowEff[i].mPosition.x +=
                    (sp64.x * snow_packet->mSnowEff[i].mWindSpeed);
                snow_packet->mSnowEff[i].mPosition.z +=
                    (sp64.z * snow_packet->mSnowEff[i].mWindSpeed);
                snow_packet->mSnowEff[i].mPosition.y +=
                    (snow_packet->mSnowEff[i].mGravity +
                     (sp64.y * snow_packet->mSnowEff[i].mWindSpeed));

                snow_packet->mSnowEff[i].mPosition.x += (3.7f * sp1C.x);
                snow_packet->mSnowEff[i].mPosition.y += (3.7f * sp1C.y);
                snow_packet->mSnowEff[i].mPosition.z += (3.7f * sp1C.z);
            }

            if (snow_packet->mSnowEff[i].mBasePos.y > var_f29) {
                snow_packet->mSnowEff[i].mBasePos.x +=
                    (sp64.x * snow_packet->mSnowEff[i].mWindSpeed);
                snow_packet->mSnowEff[i].mBasePos.z +=
                    (sp64.z * snow_packet->mSnowEff[i].mWindSpeed);
                snow_packet->mSnowEff[i].mBasePos.y +=
                    (snow_packet->mSnowEff[i].mGravity +
                     (sp64.y * snow_packet->mSnowEff[i].mWindSpeed));

                snow_packet->mSnowEff[i].mBasePos.x += (3.0f * sp1C.x);
                snow_packet->mSnowEff[i].mBasePos.y += (3.0f * sp1C.y);
                snow_packet->mSnowEff[i].mBasePos.z += (3.0f * sp1C.z);
            }

            cLib_addCalc(&snow_packet->mSnowEff[i].mPosWaveX,
                         snow_packet->mSnowEff[i].mPosWaveX + cM_rndF(3000.0f), 0.25f, 1500.0f,
                         0.001f);
            cLib_addCalc(&snow_packet->mSnowEff[i].mPosWaveZ,
                         snow_packet->mSnowEff[i].mPosWaveZ + cM_rndF(3000.0f), 0.25f, 1500.0f,
                         0.001f);

            sp60.y = snow_packet->mSnowEff[i].mPosition.y;
            if (sp60.y < var_f28) {
                snow_packet->mSnowEff[i].mPosition.y = var_f28;
                snow_packet->mSnowEff[i].mStatus = 2;
            }

            sp60.y = snow_packet->mSnowEff[i].mBasePos.y;
            if (sp60.y < var_f29) {
                snow_packet->mSnowEff[i].mBasePos.y = var_f29;
                snow_packet->mSnowEff[i].mStatus = 2;
            }

            if (snow_packet->mSnowEff[i].mPosition.y == var_f28) {
                cLib_addCalc(&snow_packet->mSnowEff[i].mScale, 0.0f, 0.25f, 0.05f, 0.0001f);

                if (snow_packet->mSnowEff[i].mScale <= 0.0001f) {
                    snow_packet->mSnowEff[i].mPosition.x =
                        sp40.x + cM_rndFX(500.0f * a_this->scale.x);
                    snow_packet->mSnowEff[i].mPosition.y =
                        sp40.y - cM_rndF(10.0f * a_this->scale.y);
                    snow_packet->mSnowEff[i].mPosition.z =
                        sp40.z + cM_rndFX(500.0f * a_this->scale.z);
                    snow_packet->mSnowEff[i].mStatus = 1;
                }
            } else {
                snow_packet->mSnowEff[i].mScale = (f32)0.5f;
            }

            if (snow_packet->mSnowEff[i].mBasePos.y == var_f29) {
                cLib_addCalc(&snow_packet->mSnowEff[i].field_0x30, 0.0f, 0.25f, 0.05f, 0.0001f);

                if (snow_packet->mSnowEff[i].field_0x30 <= 0.0001f) {
                    snow_packet->mSnowEff[i].mBasePos.x =
                        sp40.x + cM_rndFX(500.0f * a_this->scale.x);
                    snow_packet->mSnowEff[i].mBasePos.y = sp40.y - cM_rndF(10.0f * a_this->scale.y);
                    snow_packet->mSnowEff[i].mBasePos.z =
                        sp40.z + cM_rndFX(500.0f * a_this->scale.z);

                    if (strcmp(dComIfGp_getStartStageName(), "D_MN11") == 0 &&
                        dComIfGp_roomControl_getStayNo() == 0)
                    {
                        if (i < 20) {
                            snow_packet->mSnowEff[i].mBasePos.x =
                                1680.0f + cM_rndFX(200.0f * a_this->scale.x);
                            snow_packet->mSnowEff[i].mBasePos.y =
                                1630.0f - cM_rndF(10.0f * a_this->scale.y);
                            snow_packet->mSnowEff[i].mBasePos.z =
                                4280.0f + cM_rndFX(200.0f * a_this->scale.z);
                        } else if (i < 50) {
                            snow_packet->mSnowEff[i].mBasePos.x =
                                -1680.0f + cM_rndFX(200.0f * a_this->scale.x);
                            snow_packet->mSnowEff[i].mBasePos.y =
                                1630.0f - cM_rndF(10.0f * a_this->scale.y);
                            snow_packet->mSnowEff[i].mBasePos.z =
                                4280.0f + cM_rndFX(100.0f * a_this->scale.z);
                        } else if (i < 75) {
                            snow_packet->mSnowEff[i].mBasePos.x =
                                cM_rndFX(500.0f * a_this->scale.x);
                            snow_packet->mSnowEff[i].mBasePos.y =
                                1680.0f - cM_rndF(10.0f * a_this->scale.y);
                            snow_packet->mSnowEff[i].mBasePos.z =
                                5000.0f + cM_rndFX(100.0f * a_this->scale.z);
                        } else if (i < 100) {
                            snow_packet->mSnowEff[i].mBasePos.x =
                                cM_rndFX(500.0f * a_this->scale.x);
                            snow_packet->mSnowEff[i].mBasePos.y =
                                750.0f - cM_rndF(10.0f * a_this->scale.y);
                            snow_packet->mSnowEff[i].mBasePos.z =
                                7110.0f + cM_rndFX(100.0f * a_this->scale.z);
                        }
                    }
                    snow_packet->mSnowEff[i].mStatus = 1;
                }
            } else {
                snow_packet->mSnowEff[i].field_0x30 = 0.5f;
            }
            break;
        }

        if (dComIfGp_roomControl_getStayNo() == 5) {
            if (snow_packet->mSnowEff[i].mBasePos.z > -5560.0f &&
                snow_packet->mSnowEff[i].mBasePos.y < 925.0f)
            {
                snow_packet->mSnowEff[i].field_0x30 = 0.0f;
            }
            if (snow_packet->mSnowEff[i].mPosition.z > -5560.0f &&
                snow_packet->mSnowEff[i].mPosition.y < 925.0f)
            {
                snow_packet->mSnowEff[i].mScale = 0.0f;
            }
        }
    }

    return 1;
}

/* 808601C0-80860200 001040 0040+00 1/0 0/0 0/0 .text daKytag13_Execute__FP13kytag13_class */
static int daKytag13_Execute(kytag13_class* i_this) {
    if (i_this->home.roomNo == dComIfGp_roomControl_getStayNo()) {
        daKytag13_Execute_standard(i_this);
    }

    return 1;
}

/* 80860200-80860208 001080 0008+00 1/0 0/0 0/0 .text daKytag13_IsDelete__FP13kytag13_class */
static int daKytag13_IsDelete(kytag13_class* i_this) {
    return 1;
}

/* 80860208-80860210 001088 0008+00 1/0 0/0 0/0 .text            daKytag13_Delete__FP13kytag13_class
 */
static int daKytag13_Delete(kytag13_class* i_this) {
    return 1;
}

/* 80860210-80860450 001090 0240+00 1/0 0/0 0/0 .text            daKytag13_Create__FP10fopAc_ac_c */
static int daKytag13_Create(fopAc_ac_c* i_this) {
    kytag13_class* a_this = (kytag13_class*)i_this;
    fopAcM_SetupActor(i_this, kytag13_class);

    if (i_this->home.roomNo != dComIfGp_roomControl_getStayNo()) {
        return 0;
    }

    a_this->mMax = fopAcM_GetParam(i_this) & 0xFF;
    if (a_this->mMax > 7) {
        a_this->mMax = 7;
    }

    a_this->mMax *= 71;
    if (a_this->mMax > 500) {
        a_this->mMax = 500;
    }

    g_env_light.field_0xe90 = a_this->mMax / 10;

    if (g_env_light.mSnowInitialized) {
        g_env_light.mSnowCount = 0;

        if (g_env_light.mpSnowPacket != NULL) {
            g_env_light.mpSnowPacket->field_0x6d88 = 0;

            for (int i = 0; i < 500; i++) {
                g_env_light.mpSnowPacket->mSnowEff[i].mStatus = 0;
            }
        }
    }

    a_this->mSpeed = ((fopAcM_GetParam(i_this) >> 8) & 0xFF) / 255.0f;
    a_this->field_0x57a = fopAcM_GetParam(i_this) >> 0x10;
    a_this->field_0x57c = 0;
    a_this->field_0x57e = g_env_light.field_0xe90 * 10;

    if (i_this->home.roomNo == 9) {
        u8 prm = (fopAcM_GetParam(i_this) >> 0x1C);
        a_this->field_0x57c = prm * 125;
        a_this->field_0x57e = (prm + 1) * 125;

        if (g_env_light.field_0xe90 * 10 < a_this->field_0x57e) {
            g_env_light.field_0xe90 = a_this->field_0x57e / 10;
        }
    } else if (i_this->home.roomNo == 7) {
        u8 prm = (fopAcM_GetParam(i_this) >> 0x1C);
        a_this->field_0x57c = prm * 250;
        a_this->field_0x57e = (prm + 1) * 250;

        if (g_env_light.field_0xe90 * 10 < a_this->field_0x57e) {
            g_env_light.field_0xe90 = a_this->field_0x57e / 10;
        }
    } else if (i_this->home.roomNo == 13) {
        u8 prm = (fopAcM_GetParam(i_this) >> 0x1C);
        a_this->field_0x57c = prm * 71;
        a_this->field_0x57e = (prm + 1) * 71;

        if (g_env_light.field_0xe90 * 10 < a_this->field_0x57e) {
            g_env_light.field_0xe90 = a_this->field_0x57e / 10;
        }
    }

    return cPhs_COMPLEATE_e;
}

/* 80860540-80860560 -00001 0020+00 1/0 0/0 0/0 .data            l_daKytag13_Method */
static actor_method_class l_daKytag13_Method = {
    (process_method_func)daKytag13_Create,
    (process_method_func)daKytag13_Delete,
    (process_method_func)daKytag13_Execute,
    (process_method_func)daKytag13_IsDelete,
    (process_method_func)daKytag13_Draw,
};

/* 80860560-80860590 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KYTAG13 */
extern actor_process_profile_definition g_profile_KYTAG13 = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_KYTAG13,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(kytag13_class), // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  107,                   // mPriority
  &l_daKytag13_Method,   // sub_method
  0x00060000,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

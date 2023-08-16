/**
 * d_a_kytag06.cpp
 * Weather System Manager
 */

#include "rel/d/a/kytag/d_a_kytag06/d_a_kytag06.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "SSystem/SComponent/c_counter.h"
#include "SSystem/SComponent/c_math.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"

/* 8085786C-80857918 0000EC 00AC+00 1/1 0/0 0/0 .text            dice_wether_init__FUcff */
static void dice_wether_init(u8 i_weatherMode, f32 i_weatherTime, f32 i_currentTime) {
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();

    env_light->mDiceWeatherMode = i_weatherMode;
    env_light->mDiceWeatherTime =
        i_currentTime + i_weatherTime + cM_rndF(i_weatherTime) + cM_rndF(i_weatherTime);

    if (env_light->mDiceWeatherTime >= 360.0f) {
        env_light->mDiceWeatherTime -= 360.0f;
    }
}

/* 80857918-808579EC 000198 00D4+00 1/1 0/0 0/0 .text            dice_wether_execute__FUcff */
static void dice_wether_execute(u8 i_weatherMode, f32 i_weatherTime, f32 i_currentTime) {
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();
    env_light->mDiceWeatherMode = i_weatherMode;

    if (env_light->mDiceWeatherMode != DICE_MODE_DONE_e) {
        env_light->mDiceWeatherTime =
            i_currentTime + i_weatherTime + cM_rndF(i_weatherTime) + cM_rndF(i_weatherTime);

        if (env_light->mDiceWeatherTime >= 360.0f) {
            env_light->mDiceWeatherTime -= 360.0f;
        }

        env_light->mDiceWeatherCounter++;
    } else {
        env_light->mDiceWeatherMode = DICE_MODE_SUNNY_e;
        env_light->mDiceWeatherState++;
    }
}

/* 808579EC-80857A50 00026C 0064+00 3/3 0/0 0/0 .text            dice_rain_minus__Fv */
static void dice_rain_minus() {
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();

    if ((g_Counter.mCounter0 & 3) == 0) {
        // run block every 4 frames
        if (env_light->mRainCount > 40) {
            env_light->mRainCount -= 3;
        } else if (env_light->mRainCount != 0) {
            env_light->mRainCount--;
        }

        dKyw_rain_set(env_light->mRainCount);
    }
}

/* 80859FA0-80859FAC 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80859FAC-80859FC0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
// unused?
#pragma push
#pragma force_active on
static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80857A50-80857F28 0002D0 04D8+00 2/1 0/0 0/0 .text            dKy_event_proc__Fv */
static void dKy_event_proc() {
    static f32 S_time_table[8] = {45.0f, 75.0f, 120.0f, 150.0f, 180.0f, 240.0f, 270.0f, 360.0f};
    static u8 S_wether_table[8] = {0, 1, 2, 3, 4, 0, 1, 2};

    static u8 S_wether_mode_pat01[4] = {1, 2, 1, 0xFF};
    static f32 S_wether_time_pat01[3] = {7.5f, 7.5f, 7.5f};

    static u8 S_wether_mode_pat02[4] = {1, 4, 1, 0xFF};
    static f32 S_wether_time_pat02[3] = {5.0f, 15.0f, 5.0f};

    static u8 S_wether_mode_pat03[4] = {1, 3, 1, 0xFF};
    static f32 S_wether_time_pat03[3] = {7.5f, 15.0f, 7.5f};

    static u8 S_wether_mode_pat04[2] = {1, 0xFF};
    static f32 S_wether_time_pat04[1] = {30.0f};

    static u8 S_wether_mode_pat05[4] = {1, 5, 1, 0xFF};
    static f32 S_wether_time_pat05[3] = {3.75f, 7.5f, 3.75f};

    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();

    if (!g_env_light.mCameraInWater) {
        if (g_env_light.mInitAnmTimer == 0) {
            f32 current_time = dComIfGs_getTime();

            switch (env_light->mDiceWeatherState) {
            case DICE_STATE_RESET_e:
                if (current_time > env_light->mDiceWeatherChangeTime &&
                    current_time - env_light->mDiceWeatherChangeTime < 15.0f)
                {
                    env_light->mDiceWeatherState = DICE_STATE_INIT_e;
                }
                break;
            case DICE_STATE_INIT_e:
                u8 table_no = cM_rndF(12.99f);
                if (table_no >= 8) {
                    env_light->mDiceWeatherState = DICE_STATE_NEXT_e;
                } else {
                    env_light->mDiceWeatherCurrPattern = S_wether_table[table_no];
                    env_light->mDiceWeatherCounter = 0;

                    switch (env_light->mDiceWeatherCurrPattern) {
                    case 0:
                        dice_wether_init(S_wether_mode_pat01[env_light->mDiceWeatherCounter],
                                         S_wether_time_pat01[env_light->mDiceWeatherCounter],
                                         current_time);
                        break;
                    case 1:
                        dice_wether_init(S_wether_mode_pat02[env_light->mDiceWeatherCounter],
                                         S_wether_time_pat02[env_light->mDiceWeatherCounter],
                                         current_time);
                        break;
                    case 2:
                        dice_wether_init(S_wether_mode_pat03[env_light->mDiceWeatherCounter],
                                         S_wether_time_pat03[env_light->mDiceWeatherCounter],
                                         current_time);
                        break;
                    case 3:
                        dice_wether_init(S_wether_mode_pat04[env_light->mDiceWeatherCounter],
                                         S_wether_time_pat04[env_light->mDiceWeatherCounter],
                                         current_time);
                        break;
                    case 4:
                        dice_wether_init(S_wether_mode_pat05[env_light->mDiceWeatherCounter],
                                         S_wether_time_pat05[env_light->mDiceWeatherCounter],
                                         current_time);
                        break;
                    }

                    env_light->mDiceWeatherCounter++;
                    env_light->mDiceWeatherState++;
                }
                break;
            case DICE_STATE_EXEC_e:
                if (current_time > env_light->mDiceWeatherTime &&
                    current_time - env_light->mDiceWeatherTime < 180.0f)
                {
                    switch (env_light->mDiceWeatherCurrPattern) {
                    case 0:
                        dice_wether_execute(S_wether_mode_pat01[env_light->mDiceWeatherCounter],
                                            S_wether_time_pat01[env_light->mDiceWeatherCounter],
                                            current_time);
                        break;
                    case 1:
                        dice_wether_execute(S_wether_mode_pat02[env_light->mDiceWeatherCounter],
                                            S_wether_time_pat02[env_light->mDiceWeatherCounter],
                                            current_time);
                        break;
                    case 2:
                        dice_wether_execute(S_wether_mode_pat03[env_light->mDiceWeatherCounter],
                                            S_wether_time_pat03[env_light->mDiceWeatherCounter],
                                            current_time);
                        break;
                    case 3:
                        dice_wether_execute(S_wether_mode_pat04[env_light->mDiceWeatherCounter],
                                            S_wether_time_pat04[env_light->mDiceWeatherCounter],
                                            current_time);
                        break;
                    case 4:
                        dice_wether_execute(S_wether_mode_pat05[env_light->mDiceWeatherCounter],
                                            S_wether_time_pat05[env_light->mDiceWeatherCounter],
                                            current_time);
                        break;
                    }
                }
                break;
            case DICE_STATE_NEXT_e:
                u8 time_table_no = cM_rndF(7.99f);
                env_light->mDiceWeatherChangeTime = current_time + S_time_table[time_table_no];

                if (env_light->mDiceWeatherChangeTime >= 360.0f) {
                    env_light->mDiceWeatherChangeTime -= 360.0f;
                }

                env_light->mDiceWeatherState = DICE_STATE_RESET_e;
                break;
            }

            if (g_env_light.field_0x130b == 1) {
                env_light->mDiceWeatherMode = DICE_MODE_UNK6_e;
            }

            if (g_env_light.mColPatMode == 0 && g_env_light.mColPatModeGather == 0) {
                u8 weather_colpat;

                switch (env_light->mDiceWeatherMode) {
                case DICE_MODE_SUNNY_e:
                    weather_colpat = 0;
                    if (g_env_light.mThunderEff.mMode == 1) {
                        g_env_light.mThunderEff.mMode = 0;
                    }

                    dice_rain_minus();
                    break;
                case DICE_MODE_CLOUDY_e:
                    g_env_light.mThunderEff.mMode = 0;
                    weather_colpat = 1;
                    dice_rain_minus();
                    break;
                case DICE_MODE_RAIN_LIGHT_e:
                    weather_colpat = 1;
                    if (env_light->mRainCount < 40) {
                        env_light->mRainCount++;
                        dKyw_rain_set(env_light->mRainCount);
                    } else {
                        env_light->mRainCount--;
                        dKyw_rain_set(env_light->mRainCount);
                    }
                    break;
                case DICE_MODE_THUNDER_HEAVY_e:
                    g_env_light.mThunderEff.mMode = 1;
                case DICE_MODE_RAIN_HEAVY_e:
                    weather_colpat = 2;
                    if (env_light->mRainCount < 250) {
                        env_light->mRainCount++;
                        dKyw_rain_set(env_light->mRainCount);
                    }
                    break;
                case DICE_MODE_THUNDER_LIGHT_e:
                    weather_colpat = 1;
                    g_env_light.mThunderEff.mMode = 1;
                    dice_rain_minus();
                    break;
                case DICE_MODE_UNK6_e:
                    weather_colpat = 0;
                    if (g_env_light.mThunderEff.mMode == 1) {
                        g_env_light.mThunderEff.mMode = 0;
                    }

                    if (env_light->mRainCount > 2) {
                        env_light->mRainCount -= 2;
                    } else {
                        env_light->mRainCount = 0;
                    }

                    dKyw_rain_set(env_light->mRainCount);
                }

                if (env_light->mColpatWeather != weather_colpat) {
                    g_env_light.mColpatWeather = weather_colpat;
                    g_env_light.mColpatCurrGather = weather_colpat;
                }
            }

            if (g_env_light.mColPatMode == 0 && g_env_light.mColPatModeGather == 0 &&
                g_env_light.mColpatCurrGather != 0xFF &&
                g_env_light.mColPatCurr != g_env_light.mColpatCurrGather)
            {
                g_env_light.mColPatBlendGather = 0.0f;
            }
        }
    }
}

/* 80857F28-80857F48 0007A8 0020+00 1/1 0/0 0/0 .text daKytag06_type_04_Execute__FP13kytag06_class
 */
static void daKytag06_type_04_Execute(kytag06_class*) {
    dKy_event_proc();
}

/* 80857F48-80857F8C 0007C8 0044+00 1/1 0/0 0/0 .text            set_path_info__FP10fopAc_ac_c */
static dPath* set_path_info(fopAc_ac_c* i_this) {
    kytag06_class* this_ = (kytag06_class*)i_this;
    dPath* room_path = NULL;

    if (this_->mPathNo != 0xFF) {
        room_path = dPath_GetRoomPath(this_->mPathNo, fopAcM_GetRoomNo(this_));
    }

    return room_path;
}

/* 80857F8C-8085811C 00080C 0190+00 1/1 0/0 0/0 .text near_rail_get__FP13kytag06_classP4cXyz */
static dStage_dPnt_c* near_rail_get(kytag06_class* i_this, cXyz* i_pos) {
    f32 nearest_dist = 100000000.0f;
    dPath* path = i_this->mpPath;
    dStage_dPnt_c* pnt;

    for (int i = 0; i < path->m_num; i++) {
        f32 pnt_dist = i_pos->abs(path->m_points[i].m_position);

        if (pnt_dist < nearest_dist) {
            nearest_dist = pnt_dist;
            pnt = &path->m_points[i];
        }
    }

    return pnt;
}

/* 8085811C-8085814C 00099C 0030+00 1/0 0/0 0/0 .text            daKytag06_Draw__FP13kytag06_class
 */
static int daKytag06_Draw(kytag06_class* i_this) {
    if (i_this->mType == 4) {
        daKytag06_type_04_Execute(i_this);
    }

    return 1;
}

/* 8085814C-8085824C 0009CC 0100+00 1/1 0/0 0/0 .text
 * daKytag06_lv7_boss_wether_proc__FP13kytag06_classUc          */
static void daKytag06_lv7_boss_wether_proc(kytag06_class* i_this, u8 param_1) {
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();
    g_env_light.mThunderEff.mMode = 0;

    u8 weather_colpat = g_env_light.mColpatWeather;
    switch (param_1) {
    case 0:
        weather_colpat = 0;
        if (env_light->mRainCount > 20) {
            env_light->mRainCount -= 4;
        } else if (env_light->mRainCount != 0) {
            env_light->mRainCount--;
        }
        dKyw_rain_set(env_light->mRainCount);
        break;
    case 1:
        weather_colpat = 1;
        dice_rain_minus();
        break;
    case 2:
        weather_colpat = 2;
        if (env_light->mRainCount < 250) {
            env_light->mRainCount++;
            dKyw_rain_set(env_light->mRainCount);
        }

        g_env_light.mThunderEff.mMode = 1;
        break;
    }

    if (env_light->mColpatWeather != weather_colpat && !g_env_light.mCameraInWater) {
        g_env_light.mColpatWeather = weather_colpat;
        dKy_change_colpat(weather_colpat);
    }
}

/* 8085824C-808584B4 000ACC 0268+00 1/1 0/0 0/0 .text
 * daKytag06_Ganon_wether_proc__FP13kytag06_classUc             */
static void daKytag06_Ganon_wether_proc(kytag06_class* i_this, u8 param_1) {
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();

    g_env_light.mThunderEff.mMode = 0;
    dKyw_evt_wind_set(0, -0x4000);

    switch (param_1) {
    case 0:
        g_env_light.mMoyaMode = 10;
        g_env_light.mMoyaCount = 50;

        cLib_addCalc(&i_this->mWindPower, 0.3f, 0.25f, 0.01f, 1e-05f);
        dKyw_custom_windpower(i_this->mWindPower);
        break;
    case 1:
        g_env_light.mThunderEff.mMode = 1;
        g_env_light.mMoyaMode = 10;
        g_env_light.mMoyaCount = 50;

        cLib_addCalc(&i_this->mWindPower, 0.7f, 0.25f, 0.01f, 1e-05f);
        dKyw_custom_windpower(i_this->mWindPower);
        break;
    case 2:
        g_env_light.mThunderEff.mMode = 0;
        g_env_light.mMoyaMode = 10;
        g_env_light.mMoyaCount = 50;

        cLib_addCalc(&i_this->mWindPower, 0.7f, 0.25f, 0.01f, 1e-05f);
        dKyw_custom_windpower(i_this->mWindPower);
        break;
    case 3:
        g_env_light.mMoyaCount = 50;

        switch (i_this->mMode) {
        case 0:
            g_env_light.mMoyaMode = 10;
            cLib_addCalc(&i_this->mWindPower, 0.0f, 0.5f, 0.5f, 0.01f);

            if (i_this->mWindPower < 0.01f) {
                i_this->mMode++;
            }
            break;
        case 1:
            g_env_light.mMoyaMode = 11;
            cLib_addCalc(&i_this->mWindPower, 1.0f, 0.5f, 0.5f, 1e-05f);

            if (i_this->mWindPower > 0.99f) {
                i_this->mMode++;
            }
            break;
        case 2:
            cLib_addCalc(&i_this->mWindPower, 0.0f, 0.1f, 0.015f, 1e-05f);

            if (i_this->mWindPower < 0.01f) {
                i_this->mMode++;
            }
            break;
        case 3:
            i_this->mMode = 0;
            break;
        }

        dKyw_custom_windpower(i_this->mWindPower);
        break;
    }

    if (i_dComIfGp_event_runCheck()) {
        g_env_light.mThunderEff.mMode = 1;
    }
}

/* 808584B4-808586C4 000D34 0210+00 3/2 0/0 0/0 .text daKytag06_wether_proc__FP13kytag06_classUc
 */
static void daKytag06_wether_proc(kytag06_class* i_this, u8 param_1) {
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();
    g_env_light.mThunderEff.mMode = 0;

    u8 weather_colpat = env_light->mColpatWeather;
    switch (param_1) {
    case 0:
        weather_colpat = 0;
        dice_rain_minus();

        if (env_light->mSnowCount != 0) {
            env_light->mSnowCount--;
        }
        break;
    case 1:
        weather_colpat = 1;
        dice_rain_minus();

        if (env_light->mSnowCount != 0) {
            env_light->mSnowCount--;
        }
        break;
    case 2:
        weather_colpat = 1;

        if ((g_Counter.mCounter0 & 3) == 0) {
            // run block every 4 frames
            if (env_light->mRainCount < 40) {
                env_light->mRainCount++;
                dKyw_rain_set(env_light->mRainCount);
            } else {
                env_light->mRainCount--;
                dKyw_rain_set(env_light->mRainCount);
            }
        }

        if (env_light->mSnowCount != 0) {
            env_light->mSnowCount--;
        }
        break;
    case 3:
        weather_colpat = 1;

        if (env_light->mRainCount < 250) {
            env_light->mRainCount++;
            dKyw_rain_set(env_light->mRainCount);
        }

        if (env_light->mSnowCount != 0) {
            env_light->mSnowCount--;
        }
        break;
    case 4:
        g_env_light.mThunderEff.mMode = 1;
        weather_colpat = 1;

        if (env_light->mRainCount < 250) {
            env_light->mRainCount++;
            dKyw_rain_set(env_light->mRainCount);
        }

        if (env_light->mSnowCount != 0) {
            env_light->mSnowCount--;
        }
        break;
    case 5:
        weather_colpat = 1;
        g_env_light.mThunderEff.mMode = 1;

        dice_rain_minus();

        if (env_light->mSnowCount != 0) {
            env_light->mSnowCount--;
        }
        break;
    case 6:
        weather_colpat = 1;

        if (env_light->mSnowCount < 125) {
            if ((g_Counter.mCounter0 & 3) == 0) {
                // run block every 4 frames
                env_light->mSnowCount++;
            }
        } else {
            env_light->mSnowCount--;
        }
        break;
    case 7:
        weather_colpat = 2;

        if (env_light->mSnowCount < 500) {
            env_light->mSnowCount++;
        }
        break;
    }

    if (env_light->mColpatWeather != weather_colpat && !g_env_light.mCameraInWater) {
        g_env_light.mColpatWeather = weather_colpat;
        dKy_change_colpat(weather_colpat);
    }
}

/* 808586C4-808586F0 000F44 002C+00 1/1 0/0 0/0 .text
 * daKytag06_type_07_wether_Execute__FP13kytag06_class          */
static void daKytag06_type_07_wether_Execute(kytag06_class* i_this) {
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();
    daKytag06_wether_proc(i_this, env_light->field_0x12cc);
}

/* 808586F0-808589A4 000F70 02B4+00 1/1 0/0 0/0 .text daKytag06_type_07_Execute__FP13kytag06_class
 */
static void daKytag06_type_07_Execute(kytag06_class* i_this) {
    cXyz spX;
    f32 current_time = dComIfGs_getTime();
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();
    camera_class* camera = dComIfGp_getCamera(0);

    if (i_this->field_0x574 == 0) {
        if (current_time > 285.0f || current_time < 82.5f) {
            i_this->field_0x591 = 1;
        } else {
            i_this->field_0x591 = 0;
        }
    }

    switch (i_this->mMode) {
    case 0:
        if (i_this->field_0x591 != 0) {
            cLib_addCalc(&i_this->mWindPower, 0.8f, 0.5f, 1.0f, 0.0001f);

            if (i_this->mWindPower > 0.79f) {
                i_this->mMode++;
            }
        }
        break;
    case 1:
        cLib_addCalc(&i_this->mWindPower, 0.6f, 0.5f, 1.5f, 0.0001f);

        if (i_this->mWindPower < 0.61f) {
            i_this->mMode++;
        }
        break;
    case 2:
        cLib_addCalc(&i_this->mWindPower, 1.0f, 0.5f, 1.5f, 0.0001f);

        if (i_this->mWindPower > 0.99f) {
            i_this->mWindPower = 1.0f;
            i_this->mMode++;
        }
        break;
    case 3:
        if (i_this->field_0x591 == 0) {
            cLib_addCalc(&i_this->mWindPower, 0.0f, 0.5f, 1.0f, 0.0001f);

            if (i_this->mWindPower < 0.01f) {
                i_this->mWindPower = 0.0f;
                i_this->mMode = 0;
            }
        }
        break;
    }

    spX.x = -273.0f;
    spX.y = 233.0f;
    spX.z = 160.0f;

    GXColor color;
    color.r = 88;
    color.g = 76;
    color.b = 50;
    color.a = 255;

    daKytag06_type_07_wether_Execute(i_this);

    if (camera != NULL) {
        if (camera->mLookat.mEye.y > 0.0f) {
            dKy_BossLight_set(&spX, &color, i_this->mWindPower * 2.0f, 0);
            g_env_light.mTerrainAmbienceBG3.r = (u8)(i_this->mWindPower * 230.0f + 25.0f);
            g_env_light.mTerrainAmbienceBG3.g = (u8)(i_this->mWindPower * 215.0f + 30.0f);
            g_env_light.mTerrainAmbienceBG3.b = (u8)(i_this->mWindPower * 155.0f + 25.0f);
        } else {
            g_env_light.mTerrainAmbienceBG3.r = 0;
            g_env_light.mTerrainAmbienceBG3.g = 0;
            g_env_light.mTerrainAmbienceBG3.b = 0;
            g_env_light.mThunderEff.mMode = 0;
        }
    }
}

/* 8085A130-8085A134 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
// all of these unused?
static u8 lit_1109[1 + 3 /* padding */];

/* 8085A134-8085A138 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 8085A138-8085A13C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8085A13C-8085A140 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 8085A140-8085A144 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8085A144-8085A148 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 8085A148-8085A14C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8085A14C-8085A150 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 8085A150-8085A154 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 8085A154-8085A158 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 8085A158-8085A15C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8085A15C-8085A160 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 8085A160-8085A164 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 8085A164-8085A168 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 8085A168-8085A16C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8085A16C-8085A170 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 808589E0-80858CD4 001260 02F4+00 1/1 0/0 0/0 .text daKytag06_type_06_Execute__FP13kytag06_class
 */
static void daKytag06_type_06_Execute(kytag06_class* i_this) {
    static u16 w_eff_name[4] = {
        0x8753,
        0x8754,
        0x8755,
        0x8756,
    };

    dComIfGs_getTime();
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();

    daKytag06_wether_proc(i_this, env_light->field_0x12cc);
    cXyz spX;

    f32 current_time = dComIfGs_getTime();
    if (i_this->field_0x574 == 0) {
        if (current_time > 285.0f || current_time < 82.5f) {
            i_this->field_0x591 = 1;
        } else {
            i_this->field_0x591 = 0;
        }
    }

    switch (i_this->mMode) {
    case 0:
        if (i_this->field_0x591 != 0) {
            cLib_addCalc(&i_this->mWindPower, 0.8f, 0.5f, 1.0f, 0.0001f);

            if (i_this->mWindPower > 0.79f) {
                i_this->mMode++;
            }
        }
        break;
    case 1:
        cLib_addCalc(&i_this->mWindPower, 0.6f, 0.5f, 1.5f, 0.0001f);

        if (i_this->mWindPower < 0.61f) {
            i_this->mMode++;
        }
        break;
    case 2:
        cLib_addCalc(&i_this->mWindPower, 1.0f, 0.5f, 1.5f, 0.0001f);

        if (i_this->mWindPower > 0.99f) {
            i_this->mWindPower = 1.0f;
            i_this->mMode++;
        }
        break;
    case 3:
        if (i_this->field_0x591 == 0) {
            cLib_addCalc(&i_this->mWindPower, 0.0f, 0.5f, 1.0f, 0.0001f);

            if (i_this->mWindPower < 0.01f) {
                i_this->mWindPower = 0.0f;
                i_this->mMode = 0;
            }
        }
        break;
    }

    g_env_light.mTerrainAmbienceBG3.r = (u8)(i_this->mWindPower * 245.0f + 10.0f);
    g_env_light.mTerrainAmbienceBG3.g = (u8)(i_this->mWindPower * 185.0f + 15.0f);
    g_env_light.mTerrainAmbienceBG3.b = (u8)(i_this->mWindPower * 130.0f + 20.0f);

    static cXyz c_pos(0.0f, 0.0f, 0.0f);

    for (int i = 0; i < 4; i++) {
        i_this->field_0x580[i] =
            dComIfGp_particle_set(i_this->field_0x580[i], w_eff_name[i], &c_pos, NULL, NULL);
    }
}

/* 80858CD4-80858D00 001554 002C+00 1/1 0/0 0/0 .text daKytag06_type_08_Execute__FP13kytag06_class
 */
static void daKytag06_type_08_Execute(kytag06_class* i_this) {
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();
    daKytag06_lv7_boss_wether_proc(i_this, env_light->field_0x12cc);
}

/* 80858D00-80858D2C 001580 002C+00 1/1 0/0 0/0 .text daKytag06_type_09_Execute__FP13kytag06_class
 */
static void daKytag06_type_09_Execute(kytag06_class* i_this) {
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();
    daKytag06_Ganon_wether_proc(i_this, env_light->field_0x12cc);
}

/* 80858D2C-8085912C 0015AC 0400+00 1/1 0/0 0/0 .text daKytag06_type_10_Execute__FP13kytag06_class
 */
static void daKytag06_type_10_Execute(kytag06_class* i_this) {
    u8 tmp = 0;
    if (i_dComIfGs_isEventBit(dSv_event_flag_c::F_0266)) {
        // 2008: Snowpeak Ruins completed
        tmp = 0;
    } else if (i_dComIfGs_isEventBit(dSv_event_flag_c::F_0065)) {
        // 1420: Talked to Yeta after giving cheese
        tmp = 2;
    } else if (i_dComIfGs_isEventBit(dSv_event_flag_c::F_0064)) {
        // 1440: Talked to Yeta after giving pumpkin
        tmp = 1;
    }

    switch (tmp) {
    case 0:
        dKy_change_colpat(0);
        break;
    case 1:
        dKy_change_colpat(1);
        break;
    case 2:
        dKy_change_colpat(2);
        break;
    default:
        dKy_change_colpat(0);
        break;
    }

    if (dComIfGp_roomControl_getStayNo() == 4) {
        g_env_light.field_0xe90 = 0;

        if (g_env_light.mSnowCount == 0 && g_env_light.mSnowInitialized &&
            g_env_light.mpSnowPacket != NULL)
        {
            g_env_light.mpSnowPacket->field_0x6d88 = 0;

            for (int i = 0; i < 500; i++) {
                g_env_light.mpSnowPacket->mSnowEff[i].mStatus = 0;
            }
        }

        dKyw_evt_wind_set_go();
        camera_class* camera = dComIfGp_getCamera(0);

        cXyz eye(camera->mLookat.mEye);

        if (camera != NULL) {
            if (((eye.x > 2079.0f && eye.x < 3013.0f && eye.y < 864.0f && eye.z > -6000.0f &&
                  eye.z < -4145.0f) ||
                 eye.x < -2960.0f) ||
                ((eye.z > -880.0f || eye.z < -6000.0f) ||
                 (eye.z < -4920.0f && eye.y < 864.0f && eye.x < -2000.0f)))
            {
                cLib_addCalc(&i_this->field_0x570, 0.0f, 0.6f, 0.5f, 0.01f);
            } else {
                cLib_addCalc(&i_this->field_0x570, i_this->mWindPower, 0.5f, 0.5f, 0.001f);
            }

            switch (tmp) {
            case 0:
                g_env_light.field_0xe92 = 0;
                cLib_addCalc(&i_this->mWindPower, 0.0f, 0.5f, 0.1f, 0.001f);
                dKyw_custom_windpower(0.2f);
                break;
            case 1:
                g_env_light.field_0xe92 = 0;
                cLib_addCalc(&i_this->mWindPower, 1.0f, 0.5f, 0.1f, 0.001f);
                dKyw_custom_windpower(0.35f);
                break;
            case 2:
                g_env_light.field_0xe92 = 1;
                cLib_addCalc(&i_this->mWindPower, 1.0f, 0.5f, 0.1f, 0.001f);
                dKyw_custom_windpower(0.5f);
                break;
            }
        }
    } else {
        g_env_light.field_0xe92 = 0;
        i_this->mWindPower = 0.0f;
        i_this->field_0x570 = 0.0f;
        dKyw_custom_windpower(0.3f);
    }

    g_env_light.mSnowCount = i_this->mWindPower * 500.0f;
    g_env_light.mMoyaCount = i_this->field_0x570 * 50.0f;

    if (!g_env_light.field_0xe92) {
        g_mEnvSeMgr.setSnowPower(i_this->mWindPower * 63.0f);
    } else {
        g_mEnvSeMgr.setSnowPower(i_this->mWindPower * 127.0f);
    }

    if (dComIfGp_roomControl_getStayNo() != 0 && dComIfGp_roomControl_getStayNo() != 3 &&
        (dComIfGp_roomControl_getStayNo() < 5 || dComIfGp_roomControl_getStayNo() > 9) &&
        dComIfGp_roomControl_getStayNo() != 11 && dComIfGp_roomControl_getStayNo() != 13)
    {
        g_env_light.field_0xe90 = 0;
    }
}

/* 8085912C-808591A4 0019AC 0078+00 1/1 0/0 0/0 .text daKytag06_type_11_Execute__FP13kytag06_class
 */
static void daKytag06_type_11_Execute(kytag06_class* i_this) {
    if (dKy_darkworld_check() && dComIfG_play_c::getLayerNo(0) == 14) {
        switch (dComIfGp_roomControl_getStayNo()) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
            dKy_change_colpat(dComIfGp_roomControl_getStayNo());
            break;
        case 8:
            dKy_change_colpat(5);
            break;
        }
    }
}

/* 808591A4-8085931C 001A24 0178+00 1/1 0/0 0/0 .text daKytag06_type_05_Execute__FP13kytag06_class
 */
static void daKytag06_type_05_Execute(kytag06_class* i_this) {
    cXyz spX;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    if (player != NULL) {
        spX.x = player->current.pos.x;
        spX.y = i_this->current.pos.y;
        spX.z = player->current.pos.z;

        if (i_this->current.pos.abs(spX) < i_this->mScale.x * 5000.0f) {
            g_env_light.field_0x130b = 1;
        }
    }
}

/* 8085931C-80859528 001B9C 020C+00 1/1 0/0 0/0 .text daKytag06_type_03_Execute__FP13kytag06_class
 */
static void daKytag06_type_03_Execute(kytag06_class* i_this) {
    if (i_this->field_0x597 == 0) {
        switch (i_this->mMode) {
        case 0:
            // 0C01: Midna's Desperate Hour started    1E08: Midna's Desperate Hour Completed
            if (i_dComIfGs_isEventBit(dSv_event_flag_c::M_071) && !i_dComIfGs_isEventBit(dSv_event_flag_c::F_0250)) {
                i_this->mMode = 1;
                i_this->field_0x578 = 450;
                dKy_change_colpat(i_this->field_0x591);

                s32 stayNo = dComIfGp_roomControl_getStayNo();
                dComIfGs_onSwitch(i_this->mSwNo, stayNo);
            }
            break;
        case 1:
            int old = i_this->field_0x578;
            i_this->field_0x578--;

            if (old <= 0) {
                i_this->mMode++;
            }
            break;
        case 2:
            if ((g_Counter.mCounter0 & 7) == 0) {
                // run block every 8 frames
                if (g_env_light.mRainCount < 250) {
                    g_env_light.mRainCount++;
                } else {
                    i_this->mMode++;
                }
            }
            break;
        case 3:
            break;
        }
    } else if (i_this->field_0x597 == 2 && dComIfGp_roomControl_getStayNo() != 0) {
        switch (i_this->mMode) {
        case 0:
            if (i_this->mSwNo != 0xFF && dComIfGs_isSwitch(i_this->mSwNo, i_this->current.roomNo)) {
                cLib_addCalc(&i_this->mWindPower, 1.0f, 0.1f, 0.01f, 0.0001f);

                if (i_this->mWindPower >= 1.0f) {
                    i_this->mWindPower = 1.0f;
                    g_env_light.mColpatWeather = 0;
                    i_this->mMode = 1;
                }

                dKy_custom_colset(i_this->field_0x591, 0, i_this->mWindPower);
            } else {
                dKy_custom_colset(0, i_this->field_0x591, 1.0f);
                g_env_light.mColpatWeather = i_this->field_0x591;
            }
            break;
        case 1:
            break;
        }
    }
}

/* 80859528-80859A88 001DA8 0560+00 2/0 0/0 0/0 .text daKytag06_Execute__FP13kytag06_class */
static int daKytag06_Execute(kytag06_class* i_this) {
    dComIfGs_getTime();

    switch (i_this->mType) {
    case 1:
        camera_class* camera = dComIfGp_getCamera(0);

        if (i_this->mpPath != NULL) {
            int target1 = 0;
            int target2 = 0;
            dStage_dPnt_c* pnt = near_rail_get(i_this, &camera->mLookat.mEye);

            if (pnt != NULL && pnt->field_0x3 != 0xFF) {
                dKy_change_colpat(pnt->field_0x3);

                if (pnt->field_0x3 == 0) {
                    target1 = 250;
                    target2 = 25;
                } else if (pnt->field_0x3 == 1) {
                    target1 = 500;
                    target2 = 50;
                } else if (pnt->field_0x3 == 2) {
                    target1 = 125;
                    target2 = 12;
                }

                if ((int)i_this->mWindPower > 250) {
                    g_env_light.field_0xe92 = 1;
                } else {
                    g_env_light.field_0xe92 = 0;
                }

                cLib_addCalc(&i_this->mWindPower, (s16)target1, 0.5f, 1.0f, 0.01f);
                cLib_addCalc(&i_this->field_0x570, (s16)target2, 0.5f, 1.0f, 0.01f);

                g_env_light.mSnowCount = i_this->mWindPower;
                g_env_light.mMoyaCount = i_this->field_0x570;
                g_mEnvSeMgr.setSnowPower((i_this->mWindPower / 500.0f) * 127.0f);
                break;
            }
        }
        break;
    case 2:
        if (i_this->mSwNo != 0xFF) {
            s32 stayNo = dComIfGp_roomControl_getStayNo();
            if (dComIfGs_isSwitch(i_this->mSwNo, stayNo) && i_this->mMode == 0) {
                i_this->mMode = 1;
                dKy_change_colpat(i_this->field_0x591);
            }
        }
        break;
    case 3:
        daKytag06_type_03_Execute(i_this);
        break;
    case 5:
        daKytag06_type_05_Execute(i_this);
        break;
    case 6:
        daKytag06_type_06_Execute(i_this);
        break;
    case 7:
        daKytag06_type_07_Execute(i_this);
        break;
    case 8:
        daKytag06_type_08_Execute(i_this);
        break;
    case 9:
        daKytag06_type_09_Execute(i_this);
        break;
    case 10:
        if (strcmp(dComIfGp_getStartStageName(), "F_SP114") != 0) {
            daKytag06_type_10_Execute(i_this);
        } else {
            daKytag06_type_03_Execute(i_this);
        }
        break;
    case 11:
        daKytag06_type_11_Execute(i_this);
        break;
    default:
        if (i_this->mMode == 0) {
            switch (i_this->field_0x591) {
            case 0:
                if (dComIfGs_BossLife_public_Get() != -1 && dComIfGs_BossLife_public_Get() <= 6) {
                    dKy_change_colpat(1);
                    i_this->field_0x591++;
                }
                break;
            case 1:
                if (i_this->field_0x578 > 600) {
                    g_env_light.mMoyaMode = 0;

                    if (g_env_light.mMoyaCount < 50) {
                        g_env_light.mMoyaCount++;
                    } else {
                        i_this->field_0x591++;
                    }
                }
                break;
            case 2:
                if (i_this->field_0x578 > 900) {
                    if (g_env_light.mRainCount < 250) {
                        g_env_light.mRainCount++;
                    } else {
                        i_this->field_0x591++;
                    }
                }
                break;
            case 3:
                if (i_this->field_0x578 > 1100) {
                    g_env_light.mThunderEff.mMode = 2;
                    i_this->field_0x591++;
                }
                break;
            }

            if (dComIfGs_BossLife_public_Get() != -1 && dComIfGs_BossLife_public_Get() <= 3) {
                i_this->field_0x591 = 0;
                i_this->field_0x578 = 0;
                i_this->mMode = 1;
            }
        } else {
            switch (i_this->field_0x591) {
            case 0:
                if (i_this->field_0x578 > 0) {
                    g_env_light.mThunderEff.mMode = 0;

                    if (g_env_light.mRainCount > 0) {
                        g_env_light.mRainCount--;
                    } else {
                        i_this->field_0x591++;
                    }
                }
                break;
            case 1:
                if (i_this->field_0x578 > 150) {
                    g_env_light.mMoyaMode = 0;

                    if (g_env_light.mMoyaCount >= 0) {
                        g_env_light.mMoyaCount--;
                    } else {
                        i_this->field_0x591++;
                    }
                }
                break;
            case 2:
                if (i_this->field_0x578 > 300) {
                    dKy_change_colpat(6);
                    i_this->field_0x591++;
                }
                break;
            case 3:
                if (i_this->field_0x578 > 420) {
                    dKy_change_colpat(0);
                    i_this->field_0x591++;
                }
                break;
            case 4:
                if (dComIfGs_BossLife_public_Get() == 0) {
                    f32 time = dComIfGs_getTime();

                    if (time < 255.0f) {
                        time += 0.03f;

                        if (i_dComIfGp_event_runCheck()) {
                            time += 0.1f;
                        }

                        dComIfGs_setTime(time);
                    }
                }
                break;
            }
        }

        if ((i_this->mMode != 0 || i_this->field_0x591 != 0) && i_this->field_0x578 < 101849) {
            i_this->field_0x578++;
        }

        if (i_this->field_0x578 < 99999) {
            i_this->field_0x57c++;
        }
        break;
    case 4:
        break;
    }

    return 1;
}

/* 80859A88-80859A90 002308 0008+00 1/0 0/0 0/0 .text daKytag06_IsDelete__FP13kytag06_class */
static int daKytag06_IsDelete(kytag06_class* i_this) {
    return 1;
}

/* 80859A90-80859AD0 002310 0040+00 1/0 0/0 0/0 .text            daKytag06_Delete__FP13kytag06_class
 */
static int daKytag06_Delete(kytag06_class* i_this) {
    if (i_this->mType == 0 && i_this->mMode != 0 && i_this->field_0x591 >= 4) {
        dComIfGs_setTime(270.0f);
    }

    return 1;
}

/* 80859AD0-80859AF0 002350 0020+00 1/1 0/0 0/0 .text daKytag06_type04_init__FP10fopAc_ac_c */
static void daKytag06_type04_init(fopAc_ac_c* i_this) {
    kytag06_class* this_ = (kytag06_class*)i_this;

    this_->mSwNo = fopAcM_GetParam(this_) >> 8;
    this_->field_0x591 = fopAcM_GetParam(this_) & 0xFF;
    this_->mMode = 0;
}

/* 80859AF0-80859B14 002370 0024+00 1/1 0/0 0/0 .text daKytag06_type06_init__FP10fopAc_ac_c */
static void daKytag06_type06_init(fopAc_ac_c* i_this) {
    kytag06_class* this_ = (kytag06_class*)i_this;

    this_->mSwNo = fopAcM_GetParam(this_) >> 8;
    this_->field_0x591 = fopAcM_GetParam(this_) & 0xFF;
    this_->mMode = 0;
    this_->field_0x598 = 0;
}

/* 80859B14-80859B34 002394 0020+00 1/1 0/0 0/0 .text daKytag06_type02_init__FP10fopAc_ac_c */
static void daKytag06_type02_init(fopAc_ac_c* i_this) {
    kytag06_class* this_ = (kytag06_class*)i_this;

    this_->mSwNo = fopAcM_GetParam(this_) >> 8;
    this_->field_0x591 = fopAcM_GetParam(this_) & 0xFF;
    this_->mMode = 0;
}

/* 80859B34-80859C88 0023B4 0154+00 1/1 0/0 0/0 .text daKytag06_type03_init__FP10fopAc_ac_c */
static void daKytag06_type03_init(fopAc_ac_c* i_this) {
    kytag06_class* this_ = (kytag06_class*)i_this;

    this_->mSwNo = fopAcM_GetParam(this_) >> 8;
    this_->field_0x591 = fopAcM_GetParam(this_) & 0xFF;
    this_->mMode = 0;

    if (this_->field_0x597 == 0) {
        // 0C01: Midna's Desperate Hour started    1E08: Midna's Desperate Hour Completed
        if (i_dComIfGs_isEventBit(0x0C01) && !i_dComIfGs_isEventBit(0x1E08) && this_->mSwNo != 0xFF)
        {
            s32 stayNo = dComIfGp_roomControl_getStayNo();

            if (dComIfGs_isSwitch(this_->mSwNo, stayNo)) {
                this_->mMode = 9;
                g_env_light.mRainCount = 250;
                g_env_light.mColpatWeather = this_->field_0x591;
                g_env_light.mColPatPrev = this_->field_0x591;
                g_env_light.mColPatCurr = this_->field_0x591;
            }
        }
    } else if (this_->field_0x597 == 2 && dComIfGp_roomControl_getStayNo() != 0) {
        if (this_->mSwNo != 0xFF && !dComIfGs_isSwitch(this_->mSwNo, this_->current.roomNo)) {
            dKy_custom_colset(0, this_->field_0x591, 1.0f);
            g_env_light.mColpatWeather = this_->field_0x591;
        } else {
            this_->mMode = 1;
        }
    }
}

/* 80859C88-80859E68 002508 01E0+00 2/0 0/0 0/0 .text            daKytag06_Create__FP10fopAc_ac_c */
static int daKytag06_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, kytag06_class);
    kytag06_class* this_ = static_cast<kytag06_class*>(i_this);

    this_->mType = (fopAcM_GetParam(this_) >> 0x18) & 0xF;
    this_->field_0x597 = (fopAcM_GetParam(this_) >> 0x1C);
    this_->mWindPower = 0.0f;
    this_->field_0x570 = 0.0f;

    switch (this_->mType) {
    case 1:
        this_->mPathNo = fopAcM_GetParam(this_) >> 0x10;
        this_->mpPath = set_path_info(this_);
        break;
    case 2:
        daKytag06_type02_init(this_);
        break;
    case 3:
        daKytag06_type03_init(this_);
        break;
    case 4:
        daKytag06_type04_init(this_);
        break;
    case 6:
        daKytag06_type06_init(this_);
        break;
    case 7:
        this_->mMode = 0;
        this_->field_0x591 = 0;
        this_->field_0x574 = 0;
        break;
    case 8:
        daKytag06_type06_init(this_);
        g_env_light.mMoyaMode = 9;
        g_env_light.mMoyaCount = 50;
        break;
    case 9:
        daKytag06_type06_init(this_);
        break;
    case 10:
        if (strcmp(dComIfGp_getStartStageName(), "F_SP114") != 0) {
            daKytag06_type06_init(this_);
        } else {
            daKytag06_type03_init(this_);
        }
        break;
    case 11:
        daKytag06_type06_init(this_);
        break;
    default:
        if (strcmp(dComIfGp_getStartStageName(), "T_MUKAO") != 0) {
            g_env_light.mColpatWeather = 3;
            g_env_light.mColPatPrev = 3;
            g_env_light.mColPatCurr = 3;
        } else {
            dComIfGs_setTime(210.0f);
        }

        this_->field_0x578 = 0;
        this_->field_0x57c = 0;
        this_->mMode = 0;
        this_->field_0x591 = 0;
        this_->field_0x574 = 640;
        break;
    case 5:
        break;
    }

    return cPhs_COMPLEATE_e;
}

/* ############################################################################################## */
/* 8085A0D4-8085A0F4 -00001 0020+00 1/0 0/0 0/0 .data            l_daKytag06_Method */
static actor_method_class l_daKytag06_Method = {
    (process_method_func)daKytag06_Create,  (process_method_func)daKytag06_Delete,
    (process_method_func)daKytag06_Execute, (process_method_func)daKytag06_IsDelete,
    (process_method_func)daKytag06_Draw,
};

/* 8085A0F4-8085A124 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KYTAG06 */
extern actor_process_profile_definition g_profile_KYTAG06 = {
    -3,
    7,
    -3,
    PROC_KYTAG06,
    &g_fpcLf_Method.mBase,
    sizeof(kytag06_class),
    0,
    0,
    &g_fopAc_Method.base,
    0x64,
    &l_daKytag06_Method,
    0x00060000,
    0,
    0,
};

/* 8085A18C-8085A190 000064 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8085A18C[4];
#pragma pop

/* 8085A190-8085A194 000068 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8085A190[4];
#pragma pop

/* 8085A194-8085A198 00006C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8085A194[4];
#pragma pop

/* 8085A198-8085A19C 000070 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8085A198[4];
#pragma pop

/* 8085A19C-8085A1A0 000074 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8085A19C[4];
#pragma pop

/* 8085A1A0-8085A1A4 000078 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8085A1A0[4];
#pragma pop

/* 8085A1A4-8085A1A8 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8085A1A4[4];
#pragma pop

/* 8085A1A8-8085A1AC 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8085A1A8[4];
#pragma pop

/* 8085A1AC-8085A1B0 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8085A1AC[4];
#pragma pop

/* 8085A1B0-8085A1B4 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8085A1B0[4];
#pragma pop

/* 8085A1B4-8085A1B8 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8085A1B4[4];
#pragma pop

/* 8085A1B8-8085A1BC 000090 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8085A1B8[4];
#pragma pop

/* 8085A1BC-8085A1C0 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8085A1BC[4];
#pragma pop

/* 8085A1C0-8085A1C4 000098 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8085A1C0[4];
#pragma pop

/* 8085A1C4-8085A1C8 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8085A1C4[4];
#pragma pop

/* 8085A1C8-8085A1CC 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8085A1C8[4];
#pragma pop

/* 8085A1CC-8085A1D0 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8085A1CC[4];
#pragma pop

/* 8085A1D0-8085A1D4 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8085A1D0[4];
#pragma pop

/* 8085A1D4-8085A1D8 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8085A1D4[4];
#pragma pop

/* 8085A1D8-8085A1DC 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8085A1D8[4];
#pragma pop

/* 8085A1DC-8085A1E0 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8085A1DC[4];
#pragma pop

/* 8085A1E0-8085A1E4 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8085A1E0[4];
#pragma pop

/* 8085A1E4-8085A1E8 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8085A1E4[4];
#pragma pop

/* 8085A1E8-8085A1EC 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8085A1E8[4];
#pragma pop

/* 8085A1EC-8085A1F0 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8085A1EC[4];
#pragma pop

/* 80859F90-80859F90 000118 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

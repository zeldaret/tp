#include <dolphin.h>
#include "f_op/f_op_kankyo.h"
#include "d/d_kankyo.h"
#include "d/actor/d_a_player.h"
#include "d/d_meter2_info.h"
#include "d/actor/d_a_kytag08.h"
#include "d/d_kankyo_rain.h"
#include "d/d_kankyo_static.h"
#include "d/d_msg_object.h"
#include "SSystem/SComponent/c_counter.h"
#include "SSystem/SComponent/c_math.h"
#include "m_Do/m_Do_lib.h"
#include "m_Do/m_Do_graphic.h"

struct sub_kankyo__class : public kankyo_class {};

// setSunpos calls these functions as inlines somehow
// these need to be moved to MSL_C once an appropriate solution is found
inline float sinf(float x) {
    return sin(x);
}

inline float cosf(float x) {
    return cos(x);
}

/* 8019C388-8019C3A4 196CC8 001C+00 2/2 0/0 0/0 .text dKy_WolfPowerup_AmbCol__FP11_GXColorS10 */
static void dKy_WolfPowerup_AmbCol(GXColorS10* in_col_p) {
    in_col_p->r = 40;
    in_col_p->g = 52;
    in_col_p->b = 49;
}

/* 8019C3A4-8019CB0C 196CE4 0768+00 2/2 0/0 0/0 .text            dKy_sense_pat_get__Fv */
static s32 dKy_sense_pat_get() {
    s32 pat = 0;
    if (dKy_Outdoor_check()) {
        pat = 1;
    } else {
        pat = 5;
    }

    // Stage is Lake Hylia
    if (!strcmp(dComIfGp_getStartStageName(), "F_SP115")) {
        pat = 9;

        // Room is Lake
        if (dComIfGp_roomControl_getStayNo() == 0 && dComIfGs_isSaveSwitch(0x11) &&
            !dComIfGs_isSaveSwitch(0x75))
        {
            pat = 2;
        }

        if (dComIfGs_sense_type_change_Get() > 0) {
            pat = 13;
        }
    }
    // Stage is Zora's Domain
    else if (!strcmp(dComIfGp_getStartStageName(), "F_SP113"))
    {
        if (dComIfGs_sense_type_change_Get() > 0) {
            pat = 13;
        } else {
            pat = 1;
        }
    }
    // Stage is Faron Woods Cave
    else if (!strcmp(dComIfGp_getStartStageName(), "D_SB10"))
    {
        pat = 1;
    }
    // Stage is Zora's River
    else if (!strcmp(dComIfGp_getStartStageName(), "F_SP112"))
    {
        pat = 3;
    }
    // Stage is Upper Zora's River
    else if (!strcmp(dComIfGp_getStartStageName(), "F_SP126"))
    {
        pat = 6;
    }
    // Stage is Snowpeak
    else if (!strcmp(dComIfGp_getStartStageName(), "F_SP114"))
    {
        pat = 4;
    }
    // Stage is Forest Temple or Goron Mines or Goron Stockcave or Grotto
    else if (!memcmp(dComIfGp_getStartStageName(), "D_MN05", 6) ||
             !memcmp(dComIfGp_getStartStageName(), "D_MN04", 6) ||
             !memcmp(dComIfGp_getStartStageName(), "D_SB04", 6) ||
             !memcmp(dComIfGp_getStartStageName(), "D_SB05", 6) ||
             !memcmp(dComIfGp_getStartStageName(), "D_SB06", 6) ||
             !memcmp(dComIfGp_getStartStageName(), "D_SB07", 6) ||
             !memcmp(dComIfGp_getStartStageName(), "D_SB08", 6) ||
             !memcmp(dComIfGp_getStartStageName(), "D_SB09", 6))
    {
        pat = 5;
    }
    // Stage is Stallord arena or Argorok arena
    else if (!strcmp(dComIfGp_getStartStageName(), "D_MN10A") ||
             !strcmp(dComIfGp_getStartStageName(), "D_MN07A"))
    {
        pat = 14;
    }
    // Stage is Death Sword arena
    else if (!strcmp(dComIfGp_getStartStageName(), "D_MN10B"))
    {
        pat = 15;
    }
    // Stage is Arbiter's Grounds
    else if (!strcmp(dComIfGp_getStartStageName(), "D_MN10"))
    {
        pat = 8;
        // Room is Central Poe room
        if (dComIfGp_roomControl_getStayNo() == 2) {
            pat = 14;
            // Room is 2nd Poe room or 4th Poe room
        } else if (dComIfGp_roomControl_getStayNo() == 3 || dComIfGp_roomControl_getStayNo() == 8) {
            pat = 6;
        }
    }
    // Stage is Blizzeta arena
    else if (!strcmp(dComIfGp_getStartStageName(), "D_MN11A"))
    {
        pat = 4;
    }
    // Stage is Snowpeak Ruins or Darkhammer or Ice Puzzle cave
    else if (!strcmp(dComIfGp_getStartStageName(), "D_MN11") ||
             !strcmp(dComIfGp_getStartStageName(), "D_MN11B") ||
             !memcmp(dComIfGp_getStartStageName(), "D_SB00", 6))
    {
        pat = 7;

        // Stage is Snowpeak Ruins and Room is Courtyard
        if (!strcmp(dComIfGp_getStartStageName(), "D_MN11") &&
            dComIfGp_roomControl_getStayNo() == 4)
        {
            pat = 4;
        }
    }
    // Stage is Ganondorf Field or Ganondorf Defeated or Castle Town
    else if (!strcmp(dComIfGp_getStartStageName(), "D_MN09B") ||
             !strcmp(dComIfGp_getStartStageName(), "D_MN09C") ||
             !strcmp(dComIfGp_getStartStageName(), "F_SP116"))
    {
        pat = 1;
    }
    // Stage is Temple of Time or City in the Sky or Hyrule Castle Throne Room or
    // Cave of Ordeals or Cloud Sea or Hyrule Castle cutscenes or Lakebed Temple or Deku Toad
    else if (!memcmp(dComIfGp_getStartStageName(), "D_MN06", 6) ||
             !strcmp(dComIfGp_getStartStageName(), "D_MN07") ||
             !strcmp(dComIfGp_getStartStageName(), "D_MN09A") ||
             !memcmp(dComIfGp_getStartStageName(), "D_SB01", 6) ||
             !strcmp(dComIfGp_getStartStageName(), "R_SP300") ||
             !strcmp(dComIfGp_getStartStageName(), "R_SP301") ||
             !strcmp(dComIfGp_getStartStageName(), "D_MN01") ||
             !strcmp(dComIfGp_getStartStageName(), "D_MN01B"))
    {
        pat = 8;
    }
    // Stage is Morpheel arena
    else if (!strcmp(dComIfGp_getStartStageName(), "D_MN01A"))
    {
        pat = 14;
    }
    // Stage is Palace of Twilight
    else if (!memcmp(dComIfGp_getStartStageName(), "D_MN08", 6))
    {
        pat = 9;
    }
    // Stage is Gorge Cave or Lake Hylia Cave
    else if (!memcmp(dComIfGp_getStartStageName(), "D_SB02", 6) ||
             !memcmp(dComIfGp_getStartStageName(), "D_SB03", 6))
    {
        pat = 10;
    }
    // Stage is Ordon Village Interiors or Faron Woods Interiors or
    // Kakariko Graveyard or Telma's Bar or STAR game or Death Mountain or
    // Hyrule Castle sewers
    else if (!strcmp(dComIfGp_getStartStageName(), "R_SP01") ||
             !strcmp(dComIfGp_getStartStageName(), "R_SP108") ||
             !strcmp(dComIfGp_getStartStageName(), "R_SP209") ||
             !strcmp(dComIfGp_getStartStageName(), "R_SP116") ||
             !strcmp(dComIfGp_getStartStageName(), "R_SP161") ||
             !strcmp(dComIfGp_getStartStageName(), "F_SP110") ||
             !strcmp(dComIfGp_getStartStageName(), "R_SP107"))
    {
        pat = 11;

        // Stage is Ordon Village and Room is Sera's Shop
        if (!strcmp(dComIfGp_getStartStageName(), "R_SP01") &&
            dComIfGp_roomControl_getStayNo() == 1)
        {
            pat = 12;
        }
    }
    // Stage is Hidden Village interiors or Castle Town interiors or Fishing Pond interiors
    else if (!strcmp(dComIfGp_getStartStageName(), "R_SP128") ||
             !strcmp(dComIfGp_getStartStageName(), "R_SP160") ||
             !strcmp(dComIfGp_getStartStageName(), "R_SP127"))
    {
        pat = 12;
    }
    // Stage is Kakariko Village interiors
    else if (!strcmp(dComIfGp_getStartStageName(), "R_SP109"))
    {
        pat = 12;

        // Room is Sanctuary or Inn
        if (dComIfGp_roomControl_getStayNo() == 0 || dComIfGp_roomControl_getStayNo() == 2) {
            pat = 11;
        }
    }
    return pat;
}

/* 803BBDB8-803BBDC4 018ED8 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803BBDC4-803BBEAC 018EE4 00E8+00 1/1 0/0 0/0 .data            lightStatusBase */
static LightStatus lightStatusBase = {
    {-36384.5f, 29096.699f, 17422.199f},
    {377.0f, 5207.3999f, 1220.4f},
    {0xFF, 0xFF, 0xFF, 0xFF},
    0,
    1.0f,
    0.0f,
    0.0f,
    1.0f,
    0.0f,
    0.0f,
    {0.0f, -1.0f, -1.0f},
    90.0f,
    GX_SP_OFF,
    500.0f,
    1.0f,
    GX_DA_OFF,
    {
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
    },
    320.0f,
    -320.0f,
    1000.0f,
    160000.0f,
    {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0,
    },
    0.536479f,
    2.726476f,
    0.0f,
    0.5f,
};

/* 803BBEAC-803BBEBC 018FCC 0010+00 4/4 0/0 0/0 .data            lightMaskData */
static u16 lightMaskData[8] = {
    GX_LIGHT0, GX_LIGHT1, GX_LIGHT2, GX_LIGHT3, GX_LIGHT4, GX_LIGHT5, GX_LIGHT6, GX_LIGHT7,
};

/* 8019CB0C-8019CCDC 19744C 01D0+00 3/2 0/0 0/0 .text dKy_WolfPowerup_BgAmbCol__FP11_GXColorS10 */
static void dKy_WolfPowerup_BgAmbCol(GXColorS10* in_col_p) {
    switch (dKy_sense_pat_get()) {
    case 1:
        in_col_p->r = 33;
        in_col_p->g = 48;
        in_col_p->b = 44;
        break;
    case 2:
        in_col_p->r = 33;
        in_col_p->g = 48;
        in_col_p->b = 44;
        break;
    case 3:
        in_col_p->r = 40;
        in_col_p->g = 53;
        in_col_p->b = 49;
        break;
    case 4:
        in_col_p->r = 32;
        in_col_p->g = 46;
        in_col_p->b = 40;
        break;
    case 5:
        in_col_p->r = 45;
        in_col_p->g = 64;
        in_col_p->b = 58;
        break;
    case 6:
        in_col_p->r = 33;
        in_col_p->g = 48;
        in_col_p->b = 44;
        break;
    case 7:
        in_col_p->r = 38;
        in_col_p->g = 53;
        in_col_p->b = 49;
        break;
    case 8:
        in_col_p->r = 33;
        in_col_p->g = 48;
        in_col_p->b = 44;
        break;
    case 9:
        in_col_p->r = 40;
        in_col_p->g = 59;
        in_col_p->b = 53;
        break;
    case 11:
    case 12:
        in_col_p->r = 45;
        in_col_p->g = 64;
        in_col_p->b = 58;
        break;
    case 10:
        in_col_p->r = 40;
        in_col_p->g = 60;
        in_col_p->b = 58;
        break;
    case 13:
        in_col_p->r = 33;
        in_col_p->g = 48;
        in_col_p->b = 44;
        break;
    case 14:
        in_col_p->r = 33;
        in_col_p->g = 48;
        in_col_p->b = 44;
        break;
    case 15:
        in_col_p->r = 30;
        in_col_p->g = 48;
        in_col_p->b = 59;
        break;
    }
}

/* 8019CCDC-8019CE5C 19761C 0180+00 4/3 0/0 0/0 .text            dKy_WolfPowerup_FogNearFar__FPfPf
 */
static void dKy_WolfPowerup_FogNearFar(f32* near_p, f32* far_p) {
    switch (dKy_sense_pat_get()) {
    case 1:
        *near_p = 750.0f;
        *far_p = 1750.0f;
        break;
    case 2:
        *near_p = 5000.0f;
        *far_p = 40000.0f;
        break;
    case 3:
        *near_p = 4000.0f;
        *far_p = 12000.0f;
        break;
    case 4:
        *near_p = 500.0f;
        *far_p = 2250.0f;
        break;
    case 5:
        *near_p = 1000.0f;
        *far_p = 1800.0f;
        break;
    case 6:
        *near_p = 1000.0f;
        *far_p = 2750.0f;
        break;
    case 7:
        *near_p = 750.0f;
        *far_p = 1750.0f;
        break;
    case 8:
        *near_p = 750.0f;
        *far_p = 1750.0f;
        break;
    case 9:
        *near_p = 2000.0f;
        *far_p = 3000.0f;
        break;
    case 10:
        *near_p = 300.0f;
        *far_p = 700.0f;
        break;
    case 11:
        *near_p = 750.0f;
        *far_p = 1500.0f;
        break;
    case 12:
        *near_p = 500.0f;
        *far_p = 1250.0f;
        break;
    case 13:
        *near_p = 1000.0f;
        *far_p = 80000.0f;
        break;
    case 14:
        *near_p = 1250.0f;
        *far_p = 3000.0f;
        break;
    case 15:
        *near_p = 1000.0f;
        *far_p = 4750.0f;
        break;
    }
}

/* 8019CE5C-8019CFE4 19779C 0188+00 1/1 0/0 0/0 .text dKy_pos2_get_angle__FP4cXyzP4cXyzPsPs */
static void dKy_pos2_get_angle(cXyz* param_0, cXyz* param_1, s16* param_2, s16* param_3) {
    cXyz sp28;
    sp28 = *param_0 - *param_1;

    *param_2 = cM_atan2s(-sp28.y, sp28.absXZ());
    *param_3 = cM_atan2s(sp28.x, sp28.z);
}


/* 8042CA54-8042DD64 059774 1310+00 116/118 128/128 649/649 .bss             g_env_light */
dScnKy_env_light_c g_env_light;

/* 8019CFE4-8019D1A0 197924 01BC+00 4/4 0/0 0/0 .text            dKy_twi_wolflight_set__Fi */
static void dKy_twi_wolflight_set(int i_lightIdx) {
    dScnKy_env_light_c* env_light = dKy_getEnvlight();
    camera_class* camera_p = dComIfGp_getCamera(0);
    cXyz vectle;

    if (camera_p == NULL) {
        return;
    }

    s16 spA;
    s16 sp8;
    dKy_pos2_get_angle(&camera_p->lookat.center, &camera_p->lookat.eye, &spA, &sp8);
    dKyr_get_vectle_calc(&camera_p->lookat.center, &camera_p->lookat.eye, &vectle);

    env_light->field_0x0c18[i_lightIdx].mPos.x = camera_p->lookat.eye.x + vectle.x * 300.0f;
    env_light->field_0x0c18[i_lightIdx].mPos.y = camera_p->lookat.eye.y + vectle.y * 300.0f;
    env_light->field_0x0c18[i_lightIdx].mPos.z = camera_p->lookat.eye.z + vectle.z * 300.0f;

    switch (g_env_light.field_0x1309) {
    case 0:
        env_light->field_0x0c18[i_lightIdx].mPos.y += 1500.0f;
        break;
    case 1:
        env_light->field_0x0c18[i_lightIdx].mPos.y += 500.0f;
        break;
    case 2:
        env_light->field_0x0c18[i_lightIdx].mPos.y += 1000.0f;
        break;
    case 3:
        env_light->field_0x0c18[i_lightIdx].mPos.y += 1500.0f;
        break;
    default:
        env_light->field_0x0c18[i_lightIdx].mPos.y += 500.0f;
        break;
    }

    spA += 6000;
    env_light->field_0x0c18[i_lightIdx].mAngleX = cM_sht2d(-spA);
    env_light->field_0x0c18[i_lightIdx].mAngleY = cM_sht2d(-sp8) + 90.0f;
}

/* 8019D1A0-8019D2C4 197AE0 0124+00 3/3 0/0 0/0 .text            dKy_lightdir_set__FffP3Vec */
static void dKy_lightdir_set(f32 param_0, f32 param_1, Vec* param_2) {
    MtxP view_mtx = j3dSys.getViewMtx();
    Mtx sp20;
    Vec sp14;
    cXyz sp8;

    f32 deg0 = RAD_TO_DEG(param_0);
    f32 deg1 = RAD_TO_DEG(param_1);
    sp8.x = cM_fcos(deg0) * cM_fcos(deg1);
    sp8.y = cM_fsin(deg0);
    sp8.z = cM_fcos(deg0) * cM_fsin(deg1);

    mDoMtx_inverseTranspose(view_mtx, sp20);
    cMtx_multVec(sp20, &sp8, &sp14);

    param_2->x = sp14.x;
    param_2->y = sp14.y;
    param_2->z = sp14.z;
}

/* 8019D2C4-8019D44C 197C04 0188+00 3/2 0/0 0/0 .text dKy_GXInitLightSpot__FP12J3DLightInfofUc */
static void dKy_GXInitLightSpot(J3DLightInfo* param_0, f32 param_1, u8 param_2) {
    if (param_1 <= 0.0f || param_1 > 90.0f) {
        param_2 = 0;
    }

    f32 temp_f1;
    f32 var_f4 = cosf((param_1 * M_PI) / 180.0f);
    f32 x, y, z;

    switch (param_2) {
    case 1:
        x = var_f4 * -1000.0f;
        y = 1000.0f;
        z = 0.0f;
        break;
    case 2:
        x = -var_f4 / (1.0f - var_f4);
        y = 1.0f / (1.0f - var_f4);
        z = 0.0f;
        break;
    case 3:
        x = 0.0f;
        y = -var_f4 / (1.0f - var_f4);
        z = 1.0f / (1.0f - var_f4);
        break;
    case 4:
        temp_f1 = ((1.0f - var_f4) * (1.0f - var_f4));
        x = (var_f4 * (var_f4 - 2.0f)) / temp_f1;
        y = 2.0f / temp_f1;
        z = -1.0f / temp_f1;
        break;
    case 5:
        temp_f1 = ((1.0f - var_f4) * (1.0f - var_f4));
        x = (var_f4 * -4.0f) / temp_f1;
        y = ((var_f4 + 1.0f) * 4.0f) / temp_f1;
        z = -4.0f / temp_f1;
        break;
    case 6:
        temp_f1 = ((1.0f - var_f4) * (1.0f - var_f4));
        x = 1.0f - (var_f4 * 2.0f * var_f4) / temp_f1;
        y = (var_f4 * 4.0f) / temp_f1;
        z = -2.0f / temp_f1;
        break;
    case 0:
    default:
        x = 1.0f;
        y = 0.0f;
        z = 0.0f;
        break;
    }

    param_0->mCosAtten.x = x;
    param_0->mCosAtten.y = y;
    param_0->mCosAtten.z = z;
}

/* 8019D44C-8019D520 197D8C 00D4+00 2/2 0/0 0/0 .text
 * dKy_GXInitLightDistAttn__FP12J3DLightInfoffUc                */
static void dKy_GXInitLightDistAttn(J3DLightInfo* i_info, f32 param_1, f32 param_2, u8 param_3) {
    f32 temp_f3;
    f32 var_f0;
    f32 var_f4;
    f32 var_f5;

    if (param_1 < 0.0f) {
        param_3 = 0;
    }

    if (param_2 <= 0.0f || param_2 >= 1.0f) {
        param_3 = 0;
    }

    switch (param_3) {
    case 1:
        var_f4 = 1.0f;
        var_f5 = (1.0f - param_2) / (param_2 * param_1);
        var_f0 = 0.0f;
        break;
    case 2:
        var_f4 = 1.0f;
        temp_f3 = (1.0f - param_2) * 0.5f;
        var_f5 = temp_f3 / (param_2 * param_1);
        var_f0 = temp_f3 / (param_1 * param_2 * param_1);
        break;
    case 3:
        var_f4 = 1.0f;
        var_f5 = 0.0f;
        var_f0 = (1.0f - param_2) / (param_1 * (param_2 * param_1));
        break;
    default:
    case 0:
        var_f4 = 1.0f;
        var_f5 = 0.0f;
        var_f0 = var_f5;
        break;
    }

    i_info->mDistAtten.x = var_f4;
    i_info->mDistAtten.y = var_f5;
    i_info->mDistAtten.z = var_f0;
}

/* 8019D520-8019D56C 197E60 004C+00 1/1 0/0 0/0 .text            u8_data_ratio_set__FUcUcf */
static s16 u8_data_ratio_set(u8 start, u8 end, f32 ratio) {
    return start + (int)(ratio * (end - start));
}

/* 8019D56C-8019D5BC 197EAC 0050+00 1/1 0/0 0/0 .text            s16_data_ratio_set__Fssf */
static s16 s16_data_ratio_set(s16 start, s16 end, f32 ratio) {
    return start + (s16)(ratio * (end - start));
}

/* 8019D5BC-8019D61C 197EFC 0060+00 1/1 0/0 0/0 .text            kankyo_color_ratio_calc_common__Fsf
 */
static u8 kankyo_color_ratio_calc_common(s16 color, f32 ratio) {
    s16 calc = color * ratio;

    if (calc < 0) {
        calc = 0;
    } else if (calc > 255) {
        calc = 255;
    }

    return calc;
}

/* 8019D61C-8019D68C 197F5C 0070+00 1/1 0/0 0/0 .text
 * kankyo_color_ratio_calc__FP8_GXColor11_GXColorS10f           */
static void kankyo_color_ratio_calc(GXColor* calc_color, GXColorS10 color, f32 ratio) {
    GXColorS10 work_color;
    work_color = color;

    calc_color->r = kankyo_color_ratio_calc_common(work_color.r, ratio);
    calc_color->g = kankyo_color_ratio_calc_common(work_color.g, ratio);
    calc_color->b = kankyo_color_ratio_calc_common(work_color.b, ratio);
}

/* 8019D68C-8019D790 197FCC 0104+00 2/2 0/0 0/0 .text kankyo_color_ratio_set__FUcUcfUcUcfsf */
static s16 kankyo_color_ratio_set(u8 color_a_start, u8 color_a_end, f32 color_ratio, u8 color_b_start, u8 color_b_end,
                                  f32 blend_ratio, s16 add_color, f32 scale) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();

    s16 a = s16_data_ratio_set(color_a_start, color_a_end, color_ratio);
    s16 b = s16_data_ratio_set(color_b_start, color_b_end, color_ratio);
    s16 blend_color = s16_data_ratio_set(a, b, blend_ratio);
    blend_color += add_color;

    s16 calc_color = kankyo->mColAllcolRatio * scale * blend_color;

    if (calc_color < 0) {
        calc_color = 0;
    }

    if (calc_color > 255) {
        calc_color = 255;
    }

    return calc_color;
}

/* 8019D790-8019D7A0 1980D0 0010+00 1/1 0/0 0/0 .text            fl_data_ratio_set__Ffff */
static f32 fl_data_ratio_set(f32 start, f32 end, f32 ratio) {
    return start + ratio * (end - start);
}

/* 8019D7A0-8019D878 1980E0 00D8+00 3/3 0/0 0/0 .text float_kankyo_color_ratio_set__Fffffffff */
static f32 float_kankyo_color_ratio_set(f32 color_a_start, f32 color_a_end, f32 color_ratio, f32 color_b_start,
                                        f32 color_b_end, f32 blend_ratio, f32 param_6, f32 param_7) {
    f32 temp_f30 = fl_data_ratio_set(color_a_start, color_a_end, color_ratio);
    f32 temp_f29 = fl_data_ratio_set(color_b_start, color_b_end, color_ratio);
    f32 calc_color = fl_data_ratio_set(temp_f30, temp_f29, blend_ratio);
    calc_color += param_7 * (param_6 - calc_color);

    return calc_color;
}

/* 8019D878-8019D8AC 1981B8 0034+00 3/3 0/0 0/0 .text            get_parcent__Ffff */
static f32 get_parcent(f32 max, f32 min, f32 value) {
    f32 range = max - min;

    if (0.0f != range) {
        f32 diff = max - value;
        f32 parcent = 1.0f - (diff / range);
        if (!(parcent >= 1.0f)) {
            return parcent;
        }
    }

    return 1.0f;
}

/* 8019D8AC-8019D8CC 1981EC 0020+00 0/0 1/1 1/1 .text            dKy_get_parcent__Ffff */
f32 dKy_get_parcent(f32 max, f32 min, f32 value) {
    return get_parcent(max, min, value);
}

/* 8019D8CC-8019DD4C 19820C 0480+00 1/1 0/0 0/0 .text dKy_FiveSenses_fullthrottle_dark_static1__Fv
 */
static void dKy_FiveSenses_fullthrottle_dark_static1() {
    dScnKy_env_light_c* env_light = dKy_getEnvlight();
    int temp_r30 = 0;

    cXyz sp18;
    cXyz spC;

    sp18.x = 0.0f;
    sp18.y = 0.0f;
    sp18.z = 0.0f;
    spC.x = 1.0f;
    spC.y = 1.0f;
    spC.z = 1.0f;

    if (daPy_py_c::checkNowWolfPowerUp()) {
        env_light->field_0xf3d = 1;
        temp_r30 = 1;

        if (env_light->field_0xf40 <= 0.0f) {
            dComIfGp_particle_set(0x1E3, &sp18, NULL, NULL, &spC);
        }

        cLib_addCalc(&env_light->field_0xf40, 1.0f, 0.5f, 0.1f, 0.01f);
    } else if (env_light->field_0xf40 > 0.0f) {
        if (env_light->field_0xf40 >= 1.0f) {
            dComIfGp_particle_set(0x46A, &sp18, NULL, NULL, &spC);
        }

        cLib_addCalc(&env_light->field_0xf40, 0.0f, 0.5f, 0.1f, 0.01f);
        temp_r30 = 1;
    }

    switch (env_light->field_0xf3c) {
    case 0:
        if (temp_r30 == 1) {
            env_light->field_0xf44 = NULL;
            env_light->field_0xf48 = NULL;
            env_light->field_0xf4c = NULL;

            env_light->field_0xf44 = dComIfGp_particle_set(0x1F2, &sp18, NULL, NULL);
            env_light->field_0xf48 = dComIfGp_particle_set(0x1F3, &sp18, NULL, NULL, &spC);
            env_light->field_0xf4c = dComIfGp_particle_set(0x1F4, &sp18, NULL, NULL, &spC);
            env_light->field_0xf3c += 1;
        case 1:
            if (temp_r30 == 1) {
                if (env_light->field_0xf44 != NULL) {
                    env_light->field_0xf44->setGlobalTranslation(sp18.x, sp18.y, sp18.z);
                    env_light->field_0xf44->setGlobalAlpha(env_light->field_0xf40 * 255.0f);
                }

                if (env_light->field_0xf48 != NULL) {
                    env_light->field_0xf48->setGlobalTranslation(sp18.x, sp18.y, sp18.z);
                    env_light->field_0xf48->setGlobalAlpha(env_light->field_0xf40 * 255.0f);
                }

                if (env_light->field_0xf4c != NULL) {
                    env_light->field_0xf4c->setGlobalTranslation(sp18.x, sp18.y, sp18.z);

                    env_light->field_0xf4c->setGlobalEnvColor(
                        255.0f * (1.0f - env_light->field_0xf40),
                        255.0f * (1.0f - env_light->field_0xf40),
                        255.0f * (1.0f - env_light->field_0xf40));
                }
            } else {
                env_light->field_0xf3c += 1;
            }
        }
        break;
    case 2:
        if (env_light->field_0xf44 != NULL) {
            env_light->field_0xf44->deleteAllParticle();
            env_light->field_0xf44->becomeInvalidEmitter();
            env_light->field_0xf44->quitImmortalEmitter();
            env_light->field_0xf44->setEmitterCallBackPtr(NULL);
            env_light->field_0xf44 = NULL;
        }

        if (env_light->field_0xf48 != NULL) {
            env_light->field_0xf48->deleteAllParticle();
            env_light->field_0xf48->becomeInvalidEmitter();
            env_light->field_0xf48->quitImmortalEmitter();
            env_light->field_0xf48->setEmitterCallBackPtr(NULL);
            env_light->field_0xf48 = NULL;
        }

        if (env_light->field_0xf4c != NULL) {
            env_light->field_0xf4c->deleteAllParticle();
            env_light->field_0xf4c->becomeInvalidEmitter();
            env_light->field_0xf4c->quitImmortalEmitter();
            env_light->field_0xf4c->setEmitterCallBackPtr(NULL);
            env_light->field_0xf4c = NULL;
        }

        env_light->field_0xf3c = 0;
        break;
    }
}

/* 8019DD4C-8019DD6C 19868C 0020+00 0/0 1/1 0/0 .text dKy_FiveSenses_fullthrottle_dark__Fv */
void dKy_FiveSenses_fullthrottle_dark() {
    dKy_FiveSenses_fullthrottle_dark_static1();
}

/* 8019DD6C-8019E13C 1986AC 03D0+00 3/3 0/0 0/0 .text            dKy_light_influence_id__F4cXyzi */
static int dKy_light_influence_id(cXyz position, int param_1) {
    f32 closest_plight_dist = 1000000.0f;

    int closest_plight_no = -1;
    int var_r27 = -1;
    int j;
    int var_r25 = -1;
    int i;

    f32 var_f30 = 800.0f;
    if (strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0) {
        var_f30 = 250.0f;
    }

    for (i = 0; i <= param_1; i++) {
        for (j = 0; j < 100; j++) {
            if (g_env_light.mPointLight[j] != NULL && (i == 0 || j != closest_plight_no) &&
                g_env_light.mPointLight[j]->mPow > 0.01f)
            {
                if (closest_plight_dist > position.abs(g_env_light.mPointLight[j]->mPosition)) {
                    if (g_env_light.mPointLight[j]->mIndex & 0x8000) {
                        if (closest_plight_dist > var_f30) {
                            if (i == 0) {
                                closest_plight_no = j;
                            }

                            if (i != 0) {
                                var_r27 = j;
                            }

                            closest_plight_dist = var_f30;
                        }
                    } else {
                        closest_plight_dist = position.abs(g_env_light.mPointLight[j]->mPosition);
                        if (closest_plight_dist < g_env_light.mPointLight[j]->mPow) {
                            if (strcmp(dComIfGp_getStartStageName(), "D_MN05") == 0 &&
                                dComIfGp_roomControl_getStayNo() == 0)
                            {
                                if (closest_plight_dist < g_env_light.mPointLight[j]->mPow * 0.5f) {
                                    var_r25 = 99;
                                }
                            } else {
                                var_r25 = 99;
                            }
                        }

                        if (var_r25 != -2) {
                            if (i == 0) {
                                closest_plight_no = j;
                            } else {
                                var_r27 = j;
                            }
                        }
                    }
                }

                if (g_env_light.mPointLight[j]->mIndex < 0 && var_r25 != 99) {
                    if (i == 0) {
                        closest_plight_no = j;
                    }

                    var_r25 = -2;
                }
            }
        }
        closest_plight_dist = 1000000.0f;
    }

    if (param_1 == 0) {
        return closest_plight_no;
    } else {
        return var_r27;
    }
}

/* 8019E13C-8019E404 198A7C 02C8+00 2/2 0/0 0/0 .text            dKy_eflight_influence_id__F4cXyzi
 */
static int dKy_eflight_influence_id(cXyz param_0, int param_1) {
    f32 var_f31 = 1000000.0f;

    int var_r28 = -1;
    int var_r27 = -1;
    int j, i;

    for (i = 0; i <= param_1; i++) {
        for (j = 0; j < 5; j++) {
            if (g_env_light.mEfPLight[j] != NULL && (i == 0 || j != var_r28)) {
                if (var_f31 > param_0.abs(g_env_light.mEfPLight[j]->mPosition) &&
                    g_env_light.mEfPLight[j]->mPow > 0.01f)
                {
                    var_f31 = param_0.abs(g_env_light.mEfPLight[j]->mPosition);

                    if (i == 0) {
                        var_r28 = j;
                    } else {
                        var_r27 = j;
                    }
                }
            }
        }
        var_f31 = 1000000.0f;
    }

    if (param_1 == 0) {
        return var_r28;
    } else {
        return var_r27;
    }
}

/* 8019E404-8019E430 198D44 002C+00 1/1 0/0 0/0 .text            dKy_light_influence_col__Fi */
static GXColorS10 dKy_light_influence_col(int param_0) {
    dScnKy_env_light_c* env_light = &g_env_light;
    return env_light->mPointLight[param_0 >= 0 ? param_0 : 0]->mColor;
}

/* 8019E430-8019E520 198D70 00F0+00 4/4 3/3 0/0 .text dKy_light_influence_col__FP8_GXColorf */
GXColor dKy_light_influence_col(GXColor* i_color, f32 ratio) {
    GXColor out_color;

    f32 r = i_color->r * ratio;
    if (r <= 255.0f) {
        out_color.r = r;
    } else {
        out_color.r = 255;
    }

    f32 g = i_color->g * ratio;
    if (g <= 255.0f) {
        out_color.g = g;
    } else {
        out_color.g = 255;
    }

    f32 b = i_color->b * ratio;
    if (b <= 255.0f) {
        out_color.b = b;
    } else {
        out_color.b = 255;
    }

    return out_color;
}

/* 8019E520-8019E548 198E60 0028+00 1/1 0/0 0/0 .text            dKy_light_influence_power__Fi */
static f32 dKy_light_influence_power(int param_0) {
    dScnKy_env_light_c* env_light = &g_env_light;
    return env_light->mPointLight[param_0 >= 0 ? param_0 : 0]->mPow;
}

/* 8019E548-8019E570 198E88 0028+00 1/1 0/0 0/0 .text            dKy_light_influence_yuragi__Fi */
static f32 dKy_light_influence_yuragi(int param_0) {
    dScnKy_env_light_c* env_light = &g_env_light;
    return env_light->mPointLight[param_0 >= 0 ? param_0 : 0]->mFluctuation;
}

/* 8019E570-8019E694 198EB0 0124+00 1/1 0/0 0/0 .text dKy_light_influence_distance__F4cXyzi */
static f32 dKy_light_influence_distance(cXyz param_0, int i_lightIdx) {
    return param_0.abs(g_env_light.mPointLight[i_lightIdx >= 0 ? i_lightIdx : 0]->mPosition);
}

/* 8019E694-8019E708 198FD4 0074+00 2/2 0/0 0/0 .text            plight_init__Fv */
static void plight_init() {
    g_env_light.mLightInfluence[0].mPow = 99999.9f;

    for (int i = 0; i < 100; i++) {
        g_env_light.mPointLight[i] = NULL;
    }

    for (int i = 0; i < 5; i++) {
        g_env_light.mEfPLight[i] = NULL;
        g_env_light.field_0x72c[i] = NULL;
    }

    g_env_light.mPlayerPLightIdx = -1;
    g_env_light.mPlayerEfLightIdx = -1;
}

/* 8019E708-8019E734 199048 002C+00 1/1 0/0 0/0 .text            darkmist_init__Fv */
static void darkmist_init() {
    for (int i = 0; i < 10; i++) {
        g_env_light.mDalkmistInf[i] = NULL;
    }
}

/* 8019E734-8019E854 199074 0120+00 1/1 0/0 0/0 .text            plight_set__Fv */
static void plight_set() {
    int idx = 0;

    stage_plight_info_class* plight_info = dComIfGp_getStagePlightInfo();
    if (plight_info != NULL) {
        g_env_light.stagPlightInfo = plight_info;

        for (int i = 0; i < dComIfGp_getStagePlightNumInfo(); i++) {
            if (idx < 30) {
                g_env_light.mLightInfluence[idx].mPosition = plight_info[i].m_position;
                g_env_light.mLightInfluence[idx].mColor.r = plight_info[i].m_color.r;
                g_env_light.mLightInfluence[idx].mColor.g = plight_info[i].m_color.g;
                g_env_light.mLightInfluence[idx].mColor.b = plight_info[i].m_color.b;
                g_env_light.mLightInfluence[idx].mPow = plight_info[i].m_radius * 200.0f;
                g_env_light.mLightInfluence[idx].mFluctuation = plight_info[i].m_fluctuation;
                dKy_plight_set(&g_env_light.mLightInfluence[idx]);
                idx++;
            } else {
#ifdef DEBUG
                // "\nToo many Point Lights set!!!"
                OSReport_Warning("\nポイントライトマップ配置が多すぎます！！！");
#endif
            }
        }
    }
}

/* 8019E854-8019E874 199194 0020+00 1/1 0/0 0/0 .text            bgparts_activelight_init__Fv */
static void bgparts_activelight_init() {
    int i = 0;
    for (; i < 2; i++) {
        g_env_light.mBGpartsActiveLight[0].mIndex = 0;
    }
}

/* 8019E874-8019EAA0 1991B4 022C+00 1/1 0/0 0/0 .text            dungeonlight_init__Fv */
static void dungeonlight_init() {
    static Vec test_pos_tbl[] = {
        {0.0f, -99999.0f, 0.0f}, {0.0f, -99999.0f, 0.0f}, {0.0f, -99999.0f, 0.0f},
        {0.0f, -99999.0f, 0.0f}, {0.0f, -99999.0f, 0.0f}, {0.0f, -99999.0f, 0.0f},
        {0.0f, -99999.0f, 0.0f}, {0.0f, -99999.0f, 0.0f},
    };
    static color_RGB_class test_color_tbl[] = {
        {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0}, {0, 0, 0},
    };
    dScnKy_env_light_c* env_light = dKy_getEnvlight();

    for (int i = 0; i < 8; i++) {
        env_light->mDungeonLights[i].mPosition = cXyz(test_pos_tbl[i]);
        env_light->mDungeonLights[i].mRefDistance = 1.0f;
        env_light->mDungeonLights[i].field_0x14 = 0.99f;
        env_light->mDungeonLights[i].mColor.r = test_color_tbl[i].r;
        env_light->mDungeonLights[i].mColor.g = test_color_tbl[i].g;
        env_light->mDungeonLights[i].mColor.b = test_color_tbl[i].b;
        env_light->mDungeonLights[i].mColor.a = 255;

        env_light->mDungeonLights[i].mInfluence.mPosition = env_light->mDungeonLights[i].mPosition;
        env_light->mDungeonLights[i].mInfluence.mColor.r = env_light->mDungeonLights[i].mColor.r;
        env_light->mDungeonLights[i].mInfluence.mColor.g = env_light->mDungeonLights[i].mColor.g;
        env_light->mDungeonLights[i].mInfluence.mColor.b = env_light->mDungeonLights[i].mColor.b;
        env_light->mDungeonLights[i].mInfluence.mPow =
            env_light->mDungeonLights[i].mRefDistance * 100.0f;
        env_light->mDungeonLights[i].mInfluence.mFluctuation = 0.0f;

        env_light->mDungeonLights[i].mCutoffAngle = 90.0f;
        env_light->mDungeonLights[i].mAngleX = -90.0f;
        env_light->mDungeonLights[i].mAngleY = 0.0f;
        env_light->mDungeonLights[i].mAngleAttenuation = 0;
        env_light->mDungeonLights[i].mDistAttenuation = 2;

        env_light->field_0x0c18[i].mPos = cXyz(test_pos_tbl[i]);
        env_light->field_0x0c18[i].mColor.r = test_color_tbl[i].r;
        env_light->field_0x0c18[i].mColor.g = test_color_tbl[i].g;
        env_light->field_0x0c18[i].mColor.b = test_color_tbl[i].b;
        env_light->field_0x0c18[i].mColor.a = 255;
        env_light->field_0x0c18[i].mRefDistance = 0.001f;
        env_light->field_0x0c18[i].field_0x14 = 0.99f;
        env_light->field_0x0c18[i].field_0x26 = 0;
        env_light->field_0x0c18[i].mCutoffAngle = 90.0f;
        env_light->field_0x0c18[i].mAngleX = -90.0f;
        env_light->field_0x0c18[i].mAngleY = 0.0f;
        env_light->field_0x0c18[i].mAngleAttenuation = 0;
        env_light->field_0x0c18[i].mDistAttenuation = 2;

        if (i < 6) {
            env_light->field_0x0d58[i] = env_light->field_0x0c18[i];
        }
    }
}

/* 8019EAA0-8019EBD0 1993E0 0130+00 1/1 0/0 0/0 .text            undwater_init__Fv */
static void undwater_init() {
    J3DModelData* modelData2 = (J3DModelData*)dComIfG_getObjectRes("Always", 0x1D);
    JUT_ASSERT(modelData2 != 0);

    g_env_light.mpUndwaterEfHeap = mDoExt_createSolidHeapFromGameToCurrent(0x600, 0x20);

    if (g_env_light.mpUndwaterEfHeap != NULL) {
        g_env_light.mpUndwaterEfModel = mDoExt_J3DModel__create(modelData2, 0x80000, 0x11020202);

        if (g_env_light.mpUndwaterEfModel != NULL) {
            g_env_light.mpUndwaterBtk = new mDoExt_btkAnm();

            if (g_env_light.mpUndwaterBtk != NULL) {
                J3DAnmTextureSRTKey* pbtk =
                    (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("Always", 0x3C);
                g_env_light.mpUndwaterBtk->init(modelData2, pbtk, TRUE, J3DFrameCtrl::LOOP_REPEAT_e,
                                                1.0f, 0, -1);
            } else {
                JUT_ASSERT(0);
            }
        }
        mDoExt_restoreCurrentHeap();
        mDoExt_adjustSolidHeap(g_env_light.mpUndwaterEfHeap);
    } else {
        JUT_ASSERT(0);
    }
}

/* 8019EBD0-8019EC98 199510 00C8+00 1/1 0/0 0/0 .text            dKy_light_size_get__FPCc */
static void dKy_light_size_get(char const* stage) {
    dKydata_lightsizeInfo_c* lightTbl = dKyd_light_size_tbl_getp();
    dKydata_lightsizeInfo_c* lightTwTbl = dKyd_light_tw_size_tbl_getp();

    if (!dKy_darkworld_check()) {
        for (int i = 0; i < 36; i++) {
            if (!strcmp(stage, lightTbl->stageName)) {
                g_env_light.field_0x1309 = lightTbl->size;
                return;
            }
            lightTbl++;
        }
    } else {
        for (int i = 0; i < 9; i++) {
            if (!strcmp(stage, lightTwTbl->stageName)) {
                g_env_light.field_0x1309 = lightTwTbl->size;
                return;
            }
            lightTwTbl++;
        }
    }
}

/* 8019EC98-8019F264 1995D8 05CC+00 1/1 0/0 0/0 .text            envcolor_init__Fv */
static void envcolor_init() {
    stage_palette_info_class* palette = dComIfGp_getStagePaletteInfo();
    stage_pselect_info_class* pselect = dComIfGp_getStagePselectInfo();
    stage_envr_info_class* envr = dComIfGp_getStageEnvrInfo();
    stage_vrboxcol_info_class* vrbox = dComIfGp_getStageVrboxcolInfo();

    dKy_actor_addcol_set(0, 0, 0, 0.0f);
    dKy_fog_startendz_set(0.0f, 0.0f, 0.0f);
    dKy_vrbox_addcol_set(0, 0, 0, 0.0f);

    g_env_light.field_0x1280 = 0;
    g_env_light.mInitAnmTimer = 1;
    g_env_light.mSchBit = 0;
    g_env_light.mSchbitTimer = 0;

    g_env_light.mVrboxInvisible = false;
    g_env_light.mContrastFlag = 0;
    g_env_light.mFogAdjEnable = true;
    g_env_light.mFogAdjTableType = 0;
    g_env_light.mFogAdjCenter = 0x140;
    dKyd_xfog_table_set(0);

    g_env_light.mColAllcolRatio = 1.0f;
    g_env_light.mColActColRatio = 1.0f;
    g_env_light.mColBgColRatio = 1.0f;
    g_env_light.mColFogColRatio = 1.0f;
    g_env_light.mColVrboxSoraColRatio = 1.0f;
    g_env_light.mColVrboxKumocolRatio = 1.0f;
    g_env_light.field_0x1210 = 1.0f;

    g_env_light.mAllcolRatio = 1.0f;
    g_env_light.mActcolRatio = 1.0f;
    g_env_light.mBgcolRatio = 1.0f;
    g_env_light.mFogcolRatio = 1.0f;
    g_env_light.mVrboxSoracolRatio = 1.0f;
    g_env_light.mVrboxKumocolRatio = 1.0f;
    g_env_light.field_0x122c = 1.0f;

    g_env_light.mItemGetCol_chg = 0;
    g_env_light.field_0x1240 = 0.0f;
    g_env_light.field_0x1230 = 0.0f;
    g_env_light.field_0x1234 = 0.0f;

    g_env_light.mThunderEff.mState = 0;
    g_env_light.field_0x1238 = 0.0f;
    g_env_light.field_0x123c = 0.0f;
    g_env_light.field_0x12d6 = 0;
    g_env_light.mShadowMode = 0;
    g_env_light.mCameraInWater = 0;

    g_env_light.field_0x1258 = 0.0f;
    g_env_light.mActorLightEffect = 100;
    g_env_light.mPaletteTerrainLightEffect = 1.0f;
    g_env_light.field_0x1064.x = 0.0f;
    g_env_light.field_0x1064.y = -1.0f;
    g_env_light.field_0x1064.z = -1.0f;
    g_env_light.mDemoAttentionPoint = 0.0f;

    if (!strcmp(dComIfGp_getStartStageName(), "R_SP127")) {
        g_env_light.mDemoAttentionPoint = 0.11f;
    }

    g_env_light.field_0x1308 = 0;
    g_env_light.field_0x130b = 0;
    g_env_light.field_0x1309 = 1;
    dKy_light_size_get(dComIfGp_getStartStageName());
    g_env_light.mGrassLightEffectRate = 1.0f;
    g_env_light.field_0x12fc = -1;
    g_env_light.field_0x1278 = 0.0f;
    g_env_light.field_0x1264 = -255.0f;
    g_env_light.field_0x1268 = 999999.9f;
    g_env_light.field_0x126c = 999999.9f;
    g_env_light.field_0x127c = 200.0f;

    if (dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) == ST_BOSS_ROOM) {
        g_env_light.mpSchedule = dKyd_schejule_boss_getp();
    } else {
        g_env_light.mpSchedule = dKyd_schejule_getp();
    }

    g_env_light.PrevCol = dComIfGp_roomControl_getStayNo();
    g_env_light.UseCol = dComIfGp_roomControl_getStayNo();
    g_env_light.pat_ratio = 1.0f;
    g_env_light.field_0x12b0 = 0;
    g_env_light.mColpatWeather = 0;
    g_env_light.mVrkumoStrength = 0.0f;

    if (!strcmp(dComIfGp_getStartStageName(), "F_SP127") ||
        !strcmp(dComIfGp_getStartStageName(), "R_SP127"))
    {
        if (g_env_light.field_0x12cc >= 7) {
            g_env_light.mColpatWeather = 2;
        } else if (g_env_light.field_0x12cc != 0) {
            g_env_light.mColpatWeather = 1;
        }
    } else if (!strcmp(dComIfGp_getStartStageName(), "D_MN07A")) {
        if (g_env_light.field_0x12cc == 1) {
            g_env_light.mColpatWeather = 1;
        } else if (g_env_light.field_0x12cc == 2) {
            g_env_light.mColpatWeather = 2;
        }
    } else {
        g_env_light.field_0x12cc = 0;
    }

    g_env_light.mRainCountOrig = 0;
    g_env_light.field_0x12a0 = 0;
    g_env_light.mDiceWeatherMode = 0;
    g_env_light.mDiceWeatherChangeTime =
        dComIfGs_getTime() + (cM_rndF(g_Counter.mCounter0 & 0x1F) * 15.0f);
    if (g_env_light.mDiceWeatherChangeTime >= 360.0f) {
        g_env_light.mDiceWeatherChangeTime -= 360.0f;
    }

    g_env_light.mDiceWeatherState = 0;
    g_env_light.mDiceWeatherCurrPattern = 0;
    g_env_light.mDiceWeatherCounter = 0;
    g_env_light.mDiceWeatherTime = 0.0f;

    g_env_light.wether_pat0 = g_env_light.mColpatWeather;
    g_env_light.wether_pat1 = g_env_light.mColpatWeather;
    g_env_light.mColpatPrevGather = 0xFF;
    g_env_light.mColpatCurrGather = 0xFF;
    g_env_light.mColPatBlendGather = -1.0f;
    g_env_light.mColPatMode = 0;
    g_env_light.mColPatModeGather = 0;

    if (envr != NULL) {
        g_env_light.mpDmEnvr = envr;
    } else {
        g_env_light.mpDmEnvr = (stage_envr_info_class*)dKyd_dmenvr_getp();
    }

    if (palette != NULL) {
        g_env_light.mpDmPalet = palette;
    } else {
        g_env_light.mpDmPalet = (stage_palette_info_class*)dKyd_dmpalet_getp();
    }

    if (pselect != NULL) {
        g_env_light.mpDmPselect = pselect;
    } else {
        g_env_light.mpDmPselect = (stage_pselect_info_class*)dKyd_dmpselect_getp();
    }

    if (vrbox != NULL) {
        g_env_light.mpDmVrbox = vrbox;
    } else {
        g_env_light.mpDmVrbox = (stage_vrboxcol_info_class*)dKyd_dmvrbox_getp();
    }

    plight_init();
    plight_set();
    darkmist_init();
    bgparts_activelight_init();

    g_env_light.field_0x11c8 = 1.0f;
    g_env_light.field_0x11cc = 1.0f;
    g_env_light.field_0x11d0 = 1.0f;
    g_env_light.field_0xf2c = 0;
    g_env_light.mpUndwaterEfModel = NULL;
    g_env_light.field_0xf34 = 0.0f;
    g_env_light.mpUndwaterEfHeap = NULL;

    undwater_init();
    dComIfGs_PolyDamageOff_Set(0);
    g_env_light.field_0x98c = dComIfGp_roomControl_getStayNo();
    g_env_light.mIsBlure = 0;
    g_env_light.field_0x12fb = 0;
    g_env_light.field_0x1300 = -1;
    g_env_light.field_0x1302 = -1;
    g_env_light.mWaterSurfaceShineRate = 1.0f;

    int timeH = dStage_stagInfo_GetTimeH(dComIfGp_getStage()->getStagInfo());
    if (timeH >= 0) {
        dComIfGs_setTime(timeH * 15.0f);
    }
    g_env_light.mTimeSpeed = 0.012f;

    memset(&g_env_light.mMoyaSE, 0, 0x10);
}

/* 8019F264-8019F2E8 199BA4 0084+00 1/1 1/1 0/0 .text            dKy_clear_game_init__Fv */
void dKy_clear_game_init() {
    dKy_actor_addcol_set(0, 0, 0, 0.0f);

    g_env_light.mSunPos.x = 1.0f;
    g_env_light.mSunPos.y = 0.0f;
    g_env_light.mSunPos.z = 0.0f;

    g_env_light.mMoonPos.x = -1.0f;
    g_env_light.mMoonPos.y = 0.0f;
    g_env_light.mMoonPos.z = 0.0f;

    g_env_light.mNexttime = -1.0f;
    g_env_light.mTime = -1.0f;
    g_env_light.mDarkDaytime = 120.0f;

    g_env_light.mDarktimeWeek = 0;
    g_env_light.mPondSeason = 0;
    g_env_light.field_0x130a = 0;
    g_env_light.field_0x12cc = 0;
    g_env_light.field_0x130c = 0;
}

/* 8019F2E8-8019F400 199C28 0118+00 1/1 0/0 0/0 .text            __ct__18dScnKy_env_light_cFv */
dScnKy_env_light_c::dScnKy_env_light_c() {
    dKy_clear_game_init();
}

/* 8019F4FC-8019F780 199E3C 0284+00 1/1 0/0 0/0 .text            setDaytime__18dScnKy_env_light_cFv
 */
// NONMATCHING - getTimePass doing s8 check instead of int check
void dScnKy_env_light_c::setDaytime() {
    mDate = dComIfGs_getDate();
    mDaytime = dComIfGs_getTime();

    if (field_0x12fb == 0) {
        if (!dKy_darkworld_check()) {
            if (dComIfGp_event_runCheck() == FALSE) {
                msg_class* msg = dMsgObject_c::getActor();
                bool temp_r29 = msg == NULL || msg->mode < 2;

                if (dComIfGp_roomControl_getTimePass() && !field_0x130a && temp_r29) {
                    mDaytime += mTimeSpeed;

                    // Stage is Fishing Pond or Hena's Hut
                    if (!strcmp(dComIfGp_getStartStageName(), "F_SP127") ||
                        !strcmp(dComIfGp_getStartStageName(), "R_SP127"))
                    {
                        f32 current_time = mDaytime;
                        if (current_time >= 300.0f || current_time <= 60.0f) {
                            mDaytime += mTimeSpeed;
                            mDaytime += mTimeSpeed;
                        } else if (current_time >= 150.0f && current_time <= 195.0f) {
                            mDaytime = current_time + mTimeSpeed;
                        }
                    }

                    if ((u32)mDaytime >= 360.0f) {
                        mDaytime = 0.0f;
                        mDate++;
                        dKankyo_DayProc();
                    }
                }
            }
        } else {
            mDarkDaytime += mTimeSpeed;
            if ((u32)mDarkDaytime >= 360.0f) {
                mDarktimeWeek++;
                mDarkDaytime = 0.0f;
            }
            mDaytime = 0.0f;
        }
    }

    if (mDaytime >= 360.0f) {
        mDaytime = 0.0f;
    }

    dComIfGs_setTime(mDaytime);
    mDoAud_setHour(dKy_getdaytime_hour());
    mDoAud_setMinute(dKy_getdaytime_minute());
    mDoAud_setWeekday(dKy_get_dayofweek());
    dComIfGs_setDate(mDate);
    g_env_light.field_0x12fb = 0;
}

/* 8019F788-8019FA08 19A0C8 0280+00 1/1 0/0 0/0 .text            setSunpos__18dScnKy_env_light_cFv
 */
void dScnKy_env_light_c::setSunpos() {
    camera_class* camera_p = dComIfGp_getCamera(0);
    cXyz sp8;

    if (camera_p != NULL && strcmp(dComIfGp_getStartStageName(), "F_SP200") != 0) {
        f32 var_f3 = g_env_light.mDaytime;
        f32 var_f31;
        f32 var_f3_2;
        f32 var_f30;

        if (var_f3 >= 90.0f && var_f3 <= 270.0f) {
            f32 percent = get_parcent(270.0f, 90.0f, var_f3);
            var_f31 = (percent * 150.0f) + 105.0f;
        } else {
            if (var_f3 < 90.0f) {
                var_f3 += 360.0f;
            }

            f32 percent = get_parcent(450.0f, 270.0f, var_f3);
            var_f31 = (percent * 210.0f) + 255.0f;
            if (var_f31 > 360.0f) {
                var_f31 -= 360.0f;
            }
        }

        var_f3_2 = 180.0f + g_env_light.mDaytime;
        if (var_f3_2 >= 360.0f) {
            var_f3_2 -= 360.0f;
        }

        if (var_f3_2 >= 90.0f && var_f3_2 <= 270.0f) {
            f32 percent = get_parcent(270.0f, 90.0f, var_f3_2);
            var_f30 = (percent * 150.0f) + 105.0f;
        } else {
            if (var_f3_2 < 90.0f) {
                var_f3_2 += 360.0f;
            }

            f32 percent = get_parcent(450.0f, 270.0f, var_f3_2);
            var_f30 = (percent * 210.0f) + 255.0f;
            if (var_f30 > 360.0f) {
                var_f30 -= 360.0f;
            }
        }

        sp8.x = sinf(var_f31 * 0.01745329238474369f) * 80000.0f;
        sp8.y = cosf(var_f31 * 0.01745329238474369f) * 80000.0f;
        sp8.z = cosf(var_f31 * 0.01745329238474369f) * -48000.0f;

        mSunPos.x = camera_p->lookat.eye.x + sp8.x;
        mSunPos.y = camera_p->lookat.eye.y - sp8.y;
        mSunPos.z = camera_p->lookat.eye.z + sp8.z;

        sp8.x = sinf(var_f30 * 0.01745329238474369f) * 80000.0f;
        sp8.y = cosf(var_f30 * 0.01745329238474369f) * 80000.0f;
        sp8.z = cosf(var_f30 * 0.01745329238474369f) * -48000.0f;

        mMoonPos.x = sp8.x;
        mMoonPos.y = -sp8.y;
        mMoonPos.z = sp8.z;
    }
}

/* 8019FA08-8019FA10 19A348 0008+00 3/3 5/5 1/1 .text            getDaytime__18dScnKy_env_light_cFv
 */
f32 dScnKy_env_light_c::getDaytime() {
    return mDaytime;
}

/* 8019FA10-8019FA3C 19A350 002C+00 2/2 2/2 32/32 .text            dKy_getdaytime_hour__Fv */
s32 dKy_getdaytime_hour() {
    return dComIfGs_getTime() / 15.0f;
}

/* 8019FA3C-8019FAB8 19A37C 007C+00 1/1 1/1 26/26 .text            dKy_getdaytime_minute__Fv */
s32 dKy_getdaytime_minute() {
    f32 tmp = ((s32)(dComIfGs_getTime() * 1000000.0f) % 15000000);
    return tmp / 1000000.0f / 15.0f * 60.0f;
}

/* 8019FAB8-8019FAF4 19A3F8 003C+00 0/0 3/3 6/6 .text            dKy_daynight_check__Fv */
s32 dKy_daynight_check() {
    s32 hour = dKy_getdaytime_hour();

    if (hour >= 6 && hour < 19) {
        return 0;  // day time
    } else {
        return 1;  // night time
    }
}

/* 8019FAF4-8019FB30 19A434 003C+00 0/0 0/0 22/22 .text            dKy_getDarktime_hour__Fv */
s32 dKy_getDarktime_hour() {
    return g_env_light.getDarkDaytime() / 15.0f;
}

/* 8019FB30-8019FBBC 19A470 008C+00 0/0 0/0 19/19 .text            dKy_getDarktime_minute__Fv */
s32 dKy_getDarktime_minute() {
    f32 time = g_env_light.getDarkDaytime();
    f32 temp_f30 = ((int)(time * 1000000.0f) % 15000000) / 1000000.0f;
    return 60.0f * (temp_f30 / 15.0f);
}

/* 8019FBBC-8019FBCC 19A4FC 0010+00 0/0 0/0 8/8 .text            dKy_getDarktime_week__Fv */
s32 dKy_getDarktime_week() {
    return g_env_light.mDarktimeWeek;
}

/* 8019FBCC-8019FBD4 19A50C 0008+00 2/2 0/0 0/0 .text getDarkDaytime__18dScnKy_env_light_cFv */
f32 dScnKy_env_light_c::getDarkDaytime() {
    return mDarkDaytime;
}

/* 8019FBD4-801A0340 19A514 076C+00 5/3 0/0 0/0 .text
 * setLight_palno_get__18dScnKy_env_light_cFPUcPUcPUcPUcPUcPUcPUcPUcPfPiPiPfPUc */
void dScnKy_env_light_c::setLight_palno_get(u8* i_envrSel0, u8* i_envrSel1, u8* i_pSelIdx0,
                                            u8* i_pSelIdx1, u8* i_palIdx0A, u8* i_palIdx0B,
                                            u8* i_palIdx1A, u8* i_palIdx1B, f32* i_blendPalAB,
                                            int* i_pSelPalIdx0, int* i_pSelPalIdx1,
                                            f32* i_blendPal01, u8* i_initTimer) {
    stage_envr_info_class* envr_p;
    u8 psel_idx = 0;

    if (*i_initTimer != 0) {
        *i_initTimer += 1;

        if (*i_initTimer > 20) {
            *i_initTimer = 0;
        }

        if (g_env_light.mColPatMode == 0 && g_env_light.mColPatModeGather == 0) {
            *i_blendPal01 = g_env_light.pat_ratio;

            if (*i_blendPal01 >= 1.0f) {
                *i_envrSel0 = *i_envrSel1;
                *i_pSelIdx0 = *i_pSelIdx1;
            }
        }
    }

    for (int i = 0; i < 11; i++) {
        if (!(mDaytime >= mpSchedule[i].startTime && mDaytime <= mpSchedule[i].endTime)) {
            continue;
        }

        *i_pSelPalIdx0 = mpSchedule[i].startTimeLight;
        *i_pSelPalIdx1 = mpSchedule[i].endTimeLight;
        *i_blendPalAB = get_parcent(mpSchedule[i].endTime, mpSchedule[i].startTime, mDaytime);

        envr_p = &g_env_light.mpDmEnvr[*i_envrSel0];
        switch (*i_pSelIdx0) {
        case 0:
            psel_idx = envr_p->m_pselectID[0];
            break;
        case 1:
            psel_idx = envr_p->m_pselectID[1];
            break;
        case 2:
            psel_idx = envr_p->m_pselectID[2];
            break;
        case 3:
            psel_idx = envr_p->m_pselectID[3];
            break;
        case 4:
            psel_idx = envr_p->m_pselectID[4];
            break;
        case 5:
            psel_idx = envr_p->m_pselectID[5];
            break;
        case 6:
            psel_idx = envr_p->m_pselectID[6];
            break;
        case 7:
            psel_idx = envr_p->m_pselectID[7];
            break;
        default:
            if (*i_pSelIdx0 > 7 && *i_pSelIdx0 < 64) {
                psel_idx = envr_p->m_pselectID[*i_pSelIdx0];
            }
            break;
        }

        if (g_env_light.mCameraInWater != 0 && strcmp(dComIfGp_getStartStageName(), "D_MN08D") != 0
            && strcmp(dComIfGp_getStartStageName(), "D_MN01A") != 0)
        {
            if (g_env_light.wether_pat1 == 0) {
                psel_idx = envr_p->m_pselectID[8];
            } else {
                psel_idx = envr_p->m_pselectID[9];
            }
        } else if (strcmp(dComIfGp_getStartStageName(), "R_SP127") == 0) {
            camera_class* camera_p = dComIfGp_getCamera(0);

            if (camera_p != NULL && camera_p->lookat.eye.y < 0.0f) {
                psel_idx = envr_p->m_pselectID[10];
            }
        }

        if (psel_idx > 250) {
            psel_idx = 0;
        }

        stage_pselect_info_class* pselect_p = &g_env_light.mpDmPselect[psel_idx];
        switch (*i_pSelPalIdx0) {
        case 0:
            *i_palIdx0A = pselect_p->mPalIdx[0];
            break;
        case 1:
            *i_palIdx0A = pselect_p->mPalIdx[1];
            break;
        case 2:
            *i_palIdx0A = pselect_p->mPalIdx[2];
            break;
        case 3:
            *i_palIdx0A = pselect_p->mPalIdx[3];
            break;
        case 4:
            *i_palIdx0A = pselect_p->mPalIdx[4];
            break;
        case 5:
            *i_palIdx0A = pselect_p->mPalIdx[5];
            break;
        }

        switch (*i_pSelPalIdx1) {
        case 0:
            *i_palIdx0B = pselect_p->mPalIdx[0];
            break;
        case 1:
            *i_palIdx0B = pselect_p->mPalIdx[1];
            break;
        case 2:
            *i_palIdx0B = pselect_p->mPalIdx[2];
            break;
        case 3:
            *i_palIdx0B = pselect_p->mPalIdx[3];
            break;
        case 4:
            *i_palIdx0B = pselect_p->mPalIdx[4];
            break;
        case 5:
            *i_palIdx0B = pselect_p->mPalIdx[5];
            break;
        }

        envr_p = &g_env_light.mpDmEnvr[*i_envrSel1];
        switch (*i_pSelIdx1) {
        case 0:
            psel_idx = envr_p->m_pselectID[0];
            break;
        case 1:
            psel_idx = envr_p->m_pselectID[1];
            break;
        case 2:
            psel_idx = envr_p->m_pselectID[2];
            break;
        case 3:
            psel_idx = envr_p->m_pselectID[3];
            break;
        case 4:
            psel_idx = envr_p->m_pselectID[4];
            break;
        case 5:
            psel_idx = envr_p->m_pselectID[5];
            break;
        case 6:
            psel_idx = envr_p->m_pselectID[6];
            break;
        case 7:
            psel_idx = envr_p->m_pselectID[7];
            break;
        default:
            if (*i_pSelIdx1 > 7 && *i_pSelIdx1 < 64) {
                psel_idx = envr_p->m_pselectID[*i_pSelIdx1];
            }
            break;
        }

        if (psel_idx > 250) {
            psel_idx = 0;
        }

        pselect_p = &g_env_light.mpDmPselect[psel_idx];
        if (*i_envrSel0 != *i_envrSel1 || *i_pSelIdx0 != *i_pSelIdx1) {
            if (pselect_p->mChangeRate < 0.033333335f) {
                pselect_p->mChangeRate = 0.033333335f;
            }

            if (g_env_light.mColPatMode == 0) {
                if (pselect_p->mChangeRate > 0.0f) {
                    *i_blendPal01 += 0.033333335f / pselect_p->mChangeRate;
                }

                if (strcmp(dComIfGp_getStartStageName(), "F_SP121") == 0
                    && *i_pSelIdx0 == *i_pSelIdx1)
                {
                    *i_blendPal01 += 0.06666667f;
                }

                if (*i_blendPal01 >= 1.0f) {
                    *i_envrSel0 = *i_envrSel1;
                    *i_pSelIdx0 = *i_pSelIdx1;
                    *i_blendPal01 = 1.0f;
                }
            }
        }

        if (g_env_light.mCameraInWater != 0 && strcmp(dComIfGp_getStartStageName(), "D_MN08D") != 0
            && strcmp(dComIfGp_getStartStageName(), "D_MN01A") != 0)
        {
            if (g_env_light.wether_pat1 == 0) {
                pselect_p = &g_env_light.mpDmPselect[envr_p->m_pselectID[8]];
            } else {
                pselect_p = &g_env_light.mpDmPselect[envr_p->m_pselectID[9]];
            }
        } else if (strcmp(dComIfGp_getStartStageName(), "R_SP127") == 0) {
            camera_class* camera_p = dComIfGp_getCamera(0);

            if (camera_p != NULL && camera_p->lookat.eye.y < 0.0f) {
                pselect_p = &g_env_light.mpDmPselect[envr_p->m_pselectID[10]];
            }
        }

        switch (*i_pSelPalIdx0) {
        case 0:
            *i_palIdx1A = pselect_p->mPalIdx[0];
            break;
        case 1:
            *i_palIdx1A = pselect_p->mPalIdx[1];
            break;
        case 2:
            *i_palIdx1A = pselect_p->mPalIdx[2];
            break;
        case 3:
            *i_palIdx1A = pselect_p->mPalIdx[3];
            break;
        case 4:
            *i_palIdx1A = pselect_p->mPalIdx[4];
            break;
        case 5:
            *i_palIdx1A = pselect_p->mPalIdx[5];
            break;
        }

        switch (*i_pSelPalIdx1) {
        case 0:
            *i_palIdx1B = pselect_p->mPalIdx[0];
            break;
        case 1:
            *i_palIdx1B = pselect_p->mPalIdx[1];
            break;
        case 2:
            *i_palIdx1B = pselect_p->mPalIdx[2];
            break;
        case 3:
            *i_palIdx1B = pselect_p->mPalIdx[3];
            break;
        case 4:
            *i_palIdx1B = pselect_p->mPalIdx[4];
            break;
        case 5:
            *i_palIdx1B = pselect_p->mPalIdx[5];
            break;
        }

        break;
    }

    if (*i_palIdx0A > 250) {
        *i_palIdx0A = 0;
    }

    if (*i_palIdx1A > 250) {
        *i_palIdx1A = 0;
    }

    if (*i_palIdx0B > 250) {
        *i_palIdx0B = 0;
    }

    if (*i_palIdx1B > 250) {
        *i_palIdx1B = 0;
    }
}

/* 801A0340-801A040C 19AC80 00CC+00 3/3 0/0 0/0 .text
 * dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
 */
static void dKy_calc_color_set(GXColorS10* o_calcColor, color_RGB_class* i_col0A,
                               color_RGB_class* i_col1A, color_RGB_class* i_col0B,
                               color_RGB_class* i_col1B, f32 i_blendAB0, f32 i_blendAB1,
                               GXColorS10 i_addCol, f32 i_mul) {
    o_calcColor->r = kankyo_color_ratio_set(i_col0A->r, i_col0B->r, i_blendAB0, i_col1A->r,
                                            i_col1B->r, i_blendAB1, i_addCol.r, i_mul);
    o_calcColor->g = kankyo_color_ratio_set(i_col0A->g, i_col0B->g, i_blendAB0, i_col1A->g,
                                            i_col1B->g, i_blendAB1, i_addCol.g, i_mul);
    o_calcColor->b = kankyo_color_ratio_set(i_col0A->b, i_col0B->b, i_blendAB0, i_col1A->b,
                                            i_col1B->b, i_blendAB1, i_addCol.b, i_mul);
}

inline bool checkZoraWearFlg() {
    return dComIfGs_getSelectEquipClothes() == fpcNm_ITEM_WEAR_ZORA;
}

/* 801A040C-801A133C 19AD4C 0F30+00 1/1 0/0 0/0 .text            setLight__18dScnKy_env_light_cFv */
void dScnKy_env_light_c::setLight() {
    u8* init_timer = &g_env_light.mInitAnmTimer;
    camera_class* camera_p = dComIfGp_getCamera(0);
    GXColorS10 addCol;
    addCol.r = 0;
    addCol.g = 0;
    addCol.b = 0;
    addCol.a = 0;

    if (camera_p != NULL) {
        if (g_env_light.mCameraInWater) {
            dBgS_CamGndChk_Wtr camchk;
            cXyz chkpos;

            if (checkZoraWearFlg() && !daPy_py_c::i_checkNowWolf()) {
                dKy_WaterIn_Light_set();
            }

            chkpos = camera_p->lookat.eye;
            chkpos.y += 100000.0f;

            camchk.SetPos(&chkpos);
            dComIfG_Bgsp().GroundCross(&camchk);
            cLib_addCalc(&g_env_light.field_0x1258, 1.0f, 0.25f, 0.01f, 0.0000000000001f);
        } else {
            g_env_light.field_0x1258 = 0.0f;
        }

        u8 pale0;
        u8 pale2;
        u8 pale1;
        u8 pale3;
        f32 blendAB;
        int palIdx0;
        int palIdx1;
        setLight_palno_get(&g_env_light.PrevCol, &g_env_light.UseCol,
                           &g_env_light.wether_pat0, &g_env_light.wether_pat1, &pale0, &pale1,
                           &pale2, &pale3, &blendAB, &palIdx0, &palIdx1, &g_env_light.pat_ratio,
                           init_timer);

        if (pale0 == 0xFF) {
            mActorAmbience.r = 255;
            mActorAmbience.g = 0;
            mActorAmbience.b = 0;

            for (int i = 0; i < 4; i++) {
                mTerrainAmbienceBG[i].r = 255;
                mTerrainAmbienceBG[i].g = 0;
                mTerrainAmbienceBG[i].b = 0;
                mTerrainAmbienceBG[i].a = 0;
            }
        } else {
            stage_palette_info_class* pale0_p = &g_env_light.mpDmPalet[pale0];
            stage_palette_info_class* pale1_p = &g_env_light.mpDmPalet[pale1];
            stage_palette_info_class* pale2_p = &g_env_light.mpDmPalet[pale2];
            stage_palette_info_class* pale3_p = &g_env_light.mpDmPalet[pale3];

            dKy_calc_color_set(&mActorAmbience, &pale0_p->mActorAmbColor, &pale2_p->mActorAmbColor,
                               &pale1_p->mActorAmbColor, &pale3_p->mActorAmbColor, blendAB,
                               g_env_light.pat_ratio, addCol,
                               g_env_light.field_0x1210 *
                                   (g_env_light.mColActColRatio * g_env_light.mColActColRatio));

            for (int i = 0; i < 4; i++) {
                if (i != 3 || (strcmp(dComIfGp_getStartStageName(), "R_SP127") != 0 &&
                               strcmp(dComIfGp_getStartStageName(), "F_SP127") != 0))
                {
                    dKy_calc_color_set(&mTerrainAmbienceBG[i], &pale0_p->mBgAmbColor[i],
                                       &pale2_p->mBgAmbColor[i], &pale1_p->mBgAmbColor[i],
                                       &pale3_p->mBgAmbColor[i], blendAB, g_env_light.pat_ratio,
                                       addCol, g_env_light.mColBgColRatio);
                }
            }

            if (daPy_py_c::checkNowWolfPowerUp()) {
                dKy_WolfPowerup_AmbCol(&mActorAmbience);
                dKy_WolfPowerup_BgAmbCol(&mTerrainAmbienceBG[0]);
            }

            mTerrainAmbienceBG[1].a = (u8)kankyo_color_ratio_set(
                pale0_p->mBgAmbColor1A, pale1_p->mBgAmbColor1A, blendAB, pale2_p->mBgAmbColor1A,
                pale3_p->mBgAmbColor1A, g_env_light.pat_ratio, 0, 1.0f);
            mTerrainAmbienceBG[2].a = (u8)kankyo_color_ratio_set(
                pale0_p->mBgAmbColor2A, pale1_p->mBgAmbColor2A, blendAB, pale2_p->mBgAmbColor2A,
                pale3_p->mBgAmbColor2A, g_env_light.pat_ratio, 0, 1.0f);
            mTerrainAmbienceBG[3].a = (u8)kankyo_color_ratio_set(
                pale0_p->mBgAmbColor3A, pale1_p->mBgAmbColor3A, blendAB, pale2_p->mBgAmbColor3A,
                pale3_p->mBgAmbColor3A, g_env_light.pat_ratio, 0, 1.0f);

            s16 tmp = kankyo_color_ratio_set(
                pale0_p->mTerrainLightInfluence, pale1_p->mTerrainLightInfluence, blendAB,
                pale2_p->mTerrainLightInfluence, pale3_p->mTerrainLightInfluence,
                g_env_light.pat_ratio, 0, 1.0f);
            mPaletteTerrainLightEffect = tmp * 0.01f;
            if (mPaletteTerrainLightEffect > 2.0f) {
                mPaletteTerrainLightEffect = 1.0f;
            }

            mFogDensity = kankyo_color_ratio_set(
                pale0_p->mCloudShadowDensity, pale1_p->mCloudShadowDensity, blendAB,
                pale2_p->mCloudShadowDensity, pale3_p->mCloudShadowDensity,
                g_env_light.pat_ratio, 0, 1.0f);
            if (daPy_py_c::checkNowWolfPowerUp()) {
                mFogDensity = -1;
            }

            for (int i = 0; i < 6; i++) {
                dKy_calc_color_set(&field_0x1128[i], &pale0_p->mPlightColor[i],
                                   &pale2_p->mPlightColor[i], &pale1_p->mPlightColor[i],
                                   &pale3_p->mPlightColor[i], blendAB, g_env_light.pat_ratio,
                                   addCol, g_env_light.mColBgColRatio);

                if (daPy_py_c::checkNowWolfPowerUp()) {
                    field_0x1128[i].r = 0;
                    field_0x1128[i].g = 0;
                    field_0x1128[i].b = 0;
                }

                g_env_light.mDungeonLights[i].mColor.r = field_0x1128[i].r;
                g_env_light.mDungeonLights[i].mColor.g = field_0x1128[i].g;
                g_env_light.mDungeonLights[i].mColor.b = field_0x1128[i].b;
            }

            dKy_calc_color_set(&mFogColor, &pale0_p->mFogColor, &pale2_p->mFogColor,
                               &pale1_p->mFogColor, &pale3_p->mFogColor, blendAB,
                               g_env_light.pat_ratio, mFogAddCol, g_env_light.mColFogColRatio);
            mFogNear = float_kankyo_color_ratio_set(
                pale0_p->mFogStartZ, pale1_p->mFogStartZ, blendAB, pale2_p->mFogStartZ,
                pale3_p->mFogStartZ, g_env_light.pat_ratio, g_env_light.field_0x11ec,
                g_env_light.field_0x11f4);
            mFogFar = float_kankyo_color_ratio_set(
                pale0_p->mFogEndZ, pale1_p->mFogEndZ, blendAB, pale2_p->mFogEndZ, pale3_p->mFogEndZ,
                g_env_light.pat_ratio, g_env_light.field_0x11f0, g_env_light.field_0x11f4);

            if (daPy_py_c::checkNowWolfPowerUp()) {
                mFogColor.r = 0;
                mFogColor.g = 0;
                mFogColor.b = 0;
                dKy_WolfPowerup_FogNearFar(&mFogNear, &mFogFar);
            }

            u8 bloomIdx0 = pale0_p->mBloomTblIdx;
            u8 bloomIdx2 = pale2_p->mBloomTblIdx;
            u8 bloomIdx1 = pale1_p->mBloomTblIdx;
            u8 bloomIdx3 = pale3_p->mBloomTblIdx;

            if (daPy_py_c::checkNowWolfPowerUp()) {
                bloomIdx3 = 3;
                bloomIdx1 = 3;
                bloomIdx2 = 3;
                bloomIdx0 = 3;
            }

            f32 temp_f31;
            if (g_env_light.field_0x12fc >= 0) {
                bloomIdx1 = g_env_light.field_0x12fc;
                bloomIdx3 = g_env_light.field_0x12fc;
                temp_f31 = blendAB;
                blendAB = g_env_light.field_0x1278;
            }

            dKydata_BloomInfo_c* bloomInf0_p;
            dKydata_BloomInfo_c* bloomInf1_p;
            dKydata_BloomInfo_c* bloomInf2_p;
            dKydata_BloomInfo_c* bloomInf3_p;

            bloomInf0_p = dKyd_BloomInf_tbl_getp(bloomIdx0);
            bloomInf2_p = dKyd_BloomInf_tbl_getp(bloomIdx2);
            bloomInf1_p = dKyd_BloomInf_tbl_getp(bloomIdx1);
            bloomInf3_p = dKyd_BloomInf_tbl_getp(bloomIdx3);

            u8 temp_r14 = kankyo_color_ratio_set(
                bloomInf0_p->mThreshold, bloomInf1_p->mThreshold, blendAB, bloomInf2_p->mThreshold,
                bloomInf3_p->mThreshold, g_env_light.pat_ratio, 0, 1.0f);
            mDoGph_gInf_c::getBloom()->setPoint(temp_r14);
            u8 blureSize = (u8)kankyo_color_ratio_set(
                bloomInf0_p->mBlurAmount, bloomInf1_p->mBlurAmount, blendAB,
                bloomInf2_p->mBlurAmount, bloomInf3_p->mBlurAmount, g_env_light.pat_ratio, 0,
                1.0f);

            if (dKy_darkworld_check()) {
                static s16 S_fuwan_sin;

                f32 sin = cM_ssin(S_fuwan_sin);
                S_fuwan_sin += (s16)cM_rndF(2000.0f) + 500;

                blureSize += (u8)(sin * (0.2f * blureSize));
            }

            mDoGph_gInf_c::getBloom()->setBlureSize(blureSize);
            mDoGph_gInf_c::getBloom()->setBlureRatio(kankyo_color_ratio_set(
                bloomInf0_p->mDensity, bloomInf1_p->mDensity, blendAB, bloomInf2_p->mDensity,
                bloomInf3_p->mDensity, g_env_light.pat_ratio, 0, 1.0f));

            GXColor blendCol;
            blendCol.r = kankyo_color_ratio_set(bloomInf0_p->mColorR, bloomInf1_p->mColorR, blendAB,
                                                bloomInf2_p->mColorR, bloomInf3_p->mColorR,
                                                g_env_light.pat_ratio, 0, 1.0f);
            blendCol.g = kankyo_color_ratio_set(bloomInf0_p->mColorG, bloomInf1_p->mColorG, blendAB,
                                                bloomInf2_p->mColorG, bloomInf3_p->mColorG,
                                                g_env_light.pat_ratio, 0, 1.0f);
            blendCol.b = kankyo_color_ratio_set(bloomInf0_p->mColorB, bloomInf1_p->mColorB, blendAB,
                                                bloomInf2_p->mColorB, bloomInf3_p->mColorB,
                                                g_env_light.pat_ratio, 0, 1.0f);
            blendCol.a = kankyo_color_ratio_set(
                bloomInf0_p->mOrigDensity, bloomInf1_p->mOrigDensity, blendAB,
                bloomInf2_p->mOrigDensity, bloomInf3_p->mOrigDensity, g_env_light.pat_ratio, 0,
                1.0f);
            mDoGph_gInf_c::getBloom()->setBlendColor(blendCol);

            if (g_env_light.field_0x12fc >= 0) {
                blendAB = temp_f31;
            }

            GXColor monoCol;
            monoCol.r = kankyo_color_ratio_set(
                bloomInf0_p->mSaturateSubtractR, bloomInf1_p->mSaturateSubtractR, blendAB,
                bloomInf2_p->mSaturateSubtractR, bloomInf3_p->mSaturateSubtractR,
                g_env_light.pat_ratio, 0, 1.0f);
            monoCol.g = kankyo_color_ratio_set(
                bloomInf0_p->mSaturateSubtractG, bloomInf1_p->mSaturateSubtractG, blendAB,
                bloomInf2_p->mSaturateSubtractG, bloomInf3_p->mSaturateSubtractG,
                g_env_light.pat_ratio, 0, 1.0f);
            monoCol.b = kankyo_color_ratio_set(
                bloomInf0_p->mSaturateSubtractB, bloomInf1_p->mSaturateSubtractB, blendAB,
                bloomInf2_p->mSaturateSubtractB, bloomInf3_p->mSaturateSubtractB,
                g_env_light.pat_ratio, 0, 1.0f);
            monoCol.a = kankyo_color_ratio_set(
                bloomInf0_p->mSaturateSubtractA, bloomInf1_p->mSaturateSubtractA, blendAB,
                bloomInf2_p->mSaturateSubtractA, bloomInf3_p->mSaturateSubtractA,
                g_env_light.pat_ratio, 0, 1.0f);
            mDoGph_gInf_c::getBloom()->setMonoColor(monoCol);

            if (temp_r14 >= 0xFF) {
                mDoGph_gInf_c::getBloom()->setEnable(0);
            } else {
                u8 mode = 0;
                mDoGph_gInf_c::getBloom()->setEnable(1);

                if (bloomIdx0 != 0 && bloomInf0_p->mType != 0) {
                    mode = 1;
                } else if (bloomIdx2 != 0 && bloomInf2_p->mType != 0) {
                    mode = 1;
                } else if (bloomIdx1 != 0 && bloomInf1_p->mType != 0) {
                    mode = 1;
                } else if (bloomIdx3 != 0 && bloomInf3_p->mType != 0) {
                    mode = 1;
                }

                mDoGph_gInf_c::getBloom()->setMode(mode);
            }

            f32 var_f30;
            if (dKy_Outdoor_check() == true) {
                static f32 now_shadow_alpha[] = {0.25f, 0.35f, 0.6f, 0.6f, 0.25f, 0.35f};

                f32 var_f1;
                f32 var_f2;
                f32 var_f4;
                f32 var_f5;

                if (palIdx0 < 6) {
                    var_f1 = now_shadow_alpha[palIdx0];
                } else {
                    var_f1 = 0.25f;
                }

                if (palIdx1 < 6) {
                    var_f2 = now_shadow_alpha[palIdx1];
                } else {
                    var_f2 = 0.25f;
                }

                var_f4 = 0.25f;
                var_f5 = 0.25f;

                if (pale0_p == pale2_p) {
                    var_f4 = var_f1;
                    var_f5 = var_f2;
                }

                var_f30 = float_kankyo_color_ratio_set(var_f1, var_f2, blendAB, var_f4, var_f5,
                                                       g_env_light.pat_ratio, 0.0f, 0.0f);

                field_0x123c = 0.8f;
                if (mColpatWeather != 0) {
                    var_f30 *= 0.4f;
                }
            } else {
                var_f30 = 0.4f;
                field_0x123c = 0.65f;
            }

            if (dKy_darkworld_check()) {
                var_f30 = 0.55f;
                field_0x123c = 0.55f;
            }

            if (g_env_light.mInitAnmTimer != 0) {
                field_0x1238 = var_f30;
            } else {
                cLib_addCalc(&field_0x1238, var_f30, 0.05f, 0.005f, 0.000001f);
            }

            stage_vrboxcol_info_class* vrbox0_p = &g_env_light.mpDmVrbox[pale0_p->mVirtIdx];
            stage_vrboxcol_info_class* vrbox1_p = &g_env_light.mpDmVrbox[pale1_p->mVirtIdx];
            stage_vrboxcol_info_class* vrbox2_p = &g_env_light.mpDmVrbox[pale2_p->mVirtIdx];
            stage_vrboxcol_info_class* vrbox3_p = &g_env_light.mpDmVrbox[pale3_p->mVirtIdx];

            mVrSkyCol.r = kankyo_color_ratio_set(
                vrbox0_p->field_0x0.r, vrbox1_p->field_0x0.r, blendAB, vrbox2_p->field_0x0.r,
                vrbox3_p->field_0x0.r, g_env_light.pat_ratio, mVrboxAddcolSky0.r,
                g_env_light.mColVrboxSoraColRatio * g_env_light.field_0x11c8);
            mVrSkyCol.g = kankyo_color_ratio_set(
                vrbox0_p->field_0x0.g, vrbox1_p->field_0x0.g, blendAB, vrbox2_p->field_0x0.g,
                vrbox3_p->field_0x0.g, g_env_light.pat_ratio, mVrboxAddcolSky0.g,
                g_env_light.mColVrboxSoraColRatio * g_env_light.field_0x11cc);
            mVrSkyCol.b = kankyo_color_ratio_set(
                vrbox0_p->field_0x0.b, vrbox1_p->field_0x0.b, blendAB, vrbox2_p->field_0x0.b,
                vrbox3_p->field_0x0.b, g_env_light.pat_ratio, mVrboxAddcolSky0.b,
                g_env_light.mColVrboxSoraColRatio * g_env_light.field_0x11d0);
            mVrSkyCol.a = 255;

            mVrkumoCol.r = kankyo_color_ratio_set(
                vrbox0_p->field_0x3.r, vrbox1_p->field_0x3.r, blendAB, vrbox2_p->field_0x3.r,
                vrbox3_p->field_0x3.r, g_env_light.pat_ratio, mVrboxAddcolSky0.r,
                g_env_light.mColVrboxKumocolRatio * g_env_light.field_0x11c8);
            mVrkumoCol.g = kankyo_color_ratio_set(
                vrbox0_p->field_0x3.g, vrbox1_p->field_0x3.g, blendAB, vrbox2_p->field_0x3.g,
                vrbox3_p->field_0x3.g, g_env_light.pat_ratio, mVrboxAddcolSky0.g,
                g_env_light.mColVrboxKumocolRatio * g_env_light.field_0x11cc);
            mVrkumoCol.b = kankyo_color_ratio_set(
                vrbox0_p->field_0x3.b, vrbox1_p->field_0x3.b, blendAB, vrbox2_p->field_0x3.b,
                vrbox3_p->field_0x3.b, g_env_light.pat_ratio, mVrboxAddcolSky0.b,
                g_env_light.mColVrboxKumocolRatio * g_env_light.field_0x11d0);
            mVrkumoCol.a = kankyo_color_ratio_set(
                vrbox0_p->field_0x9.a, vrbox1_p->field_0x9.a, blendAB, vrbox2_p->field_0x9.a,
                vrbox3_p->field_0x9.a, g_env_light.pat_ratio, 0, 1.0f);

            mVrShitaGumoCol.r = kankyo_color_ratio_set(
                vrbox0_p->field_0x6.r, vrbox1_p->field_0x6.r, blendAB, vrbox2_p->field_0x6.r,
                vrbox3_p->field_0x6.r, g_env_light.pat_ratio, mVrboxAddcolSky0.r,
                g_env_light.mColVrboxKumocolRatio * g_env_light.field_0x11c8);
            mVrShitaGumoCol.g = kankyo_color_ratio_set(
                vrbox0_p->field_0x6.g, vrbox1_p->field_0x6.g, blendAB, vrbox2_p->field_0x6.g,
                vrbox3_p->field_0x6.g, g_env_light.pat_ratio, mVrboxAddcolSky0.g,
                g_env_light.mColVrboxKumocolRatio * g_env_light.field_0x11cc);
            mVrShitaGumoCol.b = kankyo_color_ratio_set(
                vrbox0_p->field_0x6.b, vrbox1_p->field_0x6.b, blendAB, vrbox2_p->field_0x6.b,
                vrbox3_p->field_0x6.b, g_env_light.pat_ratio, mVrboxAddcolSky0.b,
                g_env_light.mColVrboxKumocolRatio * g_env_light.field_0x11d0);

            mVrShitaUneiCol.r = kankyo_color_ratio_set(
                vrbox0_p->field_0x9.r, vrbox1_p->field_0x9.r, blendAB, vrbox2_p->field_0x9.r,
                vrbox3_p->field_0x9.r, g_env_light.pat_ratio, mVrboxAddcolSky0.r,
                g_env_light.mColVrboxKumocolRatio * g_env_light.field_0x11c8);
            mVrShitaUneiCol.g = kankyo_color_ratio_set(
                vrbox0_p->field_0x9.g, vrbox1_p->field_0x9.g, blendAB, vrbox2_p->field_0x9.g,
                vrbox3_p->field_0x9.g, g_env_light.pat_ratio, mVrboxAddcolSky0.g,
                g_env_light.mColVrboxKumocolRatio * g_env_light.field_0x11cc);
            mVrShitaUneiCol.b = kankyo_color_ratio_set(
                vrbox0_p->field_0x9.b, vrbox1_p->field_0x9.b, blendAB, vrbox2_p->field_0x9.b,
                vrbox3_p->field_0x9.b, g_env_light.pat_ratio, mVrboxAddcolSky0.b,
                g_env_light.mColVrboxKumocolRatio * g_env_light.field_0x11d0);

            mVrKasumiCol.r = kankyo_color_ratio_set(
                vrbox0_p->field_0xd.r, vrbox1_p->field_0xd.r, blendAB, vrbox2_p->field_0xd.r,
                vrbox3_p->field_0xd.r, g_env_light.pat_ratio, mVrboxAddcolKasumi.r,
                g_env_light.mColVrboxSoraColRatio * g_env_light.field_0x11c8);
            mVrKasumiCol.g = kankyo_color_ratio_set(
                vrbox0_p->field_0xd.g, vrbox1_p->field_0xd.g, blendAB, vrbox2_p->field_0xd.g,
                vrbox3_p->field_0xd.g, g_env_light.pat_ratio, mVrboxAddcolKasumi.g,
                g_env_light.mColVrboxSoraColRatio * g_env_light.field_0x11cc);
            mVrKasumiCol.b = kankyo_color_ratio_set(
                vrbox0_p->field_0xd.b, vrbox1_p->field_0xd.b, blendAB, vrbox2_p->field_0xd.b,
                vrbox3_p->field_0xd.b, g_env_light.pat_ratio, mVrboxAddcolKasumi.b,
                g_env_light.mColVrboxSoraColRatio * g_env_light.field_0x11d0);
            mVrKasumiCol.a = kankyo_color_ratio_set(
                vrbox0_p->field_0xd.a, vrbox1_p->field_0xd.a, blendAB, vrbox2_p->field_0xd.a,
                vrbox3_p->field_0xd.a, g_env_light.pat_ratio, 0, 1.0f);

            mVrOkuKasumiCol.r = kankyo_color_ratio_set(
                vrbox0_p->field_0x11.r, vrbox1_p->field_0x11.r, blendAB, vrbox2_p->field_0x11.r,
                vrbox3_p->field_0x11.r, g_env_light.pat_ratio, mVrboxAddcolKasumi.r,
                g_env_light.mColVrboxSoraColRatio * g_env_light.field_0x11c8);
            mVrOkuKasumiCol.g = kankyo_color_ratio_set(
                vrbox0_p->field_0x11.g, vrbox1_p->field_0x11.g, blendAB, vrbox2_p->field_0x11.g,
                vrbox3_p->field_0x11.g, g_env_light.pat_ratio, mVrboxAddcolKasumi.g,
                g_env_light.mColVrboxSoraColRatio * g_env_light.field_0x11cc);
            mVrOkuKasumiCol.b = kankyo_color_ratio_set(
                vrbox0_p->field_0x11.b, vrbox1_p->field_0x11.b, blendAB, vrbox2_p->field_0x11.b,
                vrbox3_p->field_0x11.b, g_env_light.pat_ratio, mVrboxAddcolKasumi.b,
                g_env_light.mColVrboxSoraColRatio * g_env_light.field_0x11d0);
            mVrOkuKasumiCol.a = kankyo_color_ratio_set(
                vrbox0_p->field_0x11.a, vrbox1_p->field_0x11.a, blendAB, vrbox2_p->field_0x11.a,
                vrbox3_p->field_0x11.a, g_env_light.pat_ratio, 0, 1.0f);

            if (daPy_py_c::checkNowWolfPowerUp()) {
                mVrSkyCol.r = 0;
                mVrSkyCol.g = 0;
                mVrSkyCol.b = 0;

                mVrkumoCol.r = 0;
                mVrkumoCol.g = 0;
                mVrkumoCol.b = 0;

                mVrShitaGumoCol.r = 0;
                mVrShitaGumoCol.g = 0;
                mVrShitaGumoCol.b = 0;

                mVrShitaUneiCol.r = 0;
                mVrShitaUneiCol.g = 0;
                mVrShitaUneiCol.b = 0;

                mVrKasumiCol.r = 0;
                mVrKasumiCol.g = 0;
                mVrKasumiCol.b = 0;

                mVrOkuKasumiCol.r = 0;
                mVrOkuKasumiCol.g = 0;
                mVrOkuKasumiCol.b = 0;
            }
        }
    }
}

/* 801A133C-801A16C0 19BC7C 0384+00 2/2 0/0 0/0 .text
 * setLight_bg__18dScnKy_env_light_cFP12dKy_tevstr_cP11_GXColorS10P11_GXColorS10PfPf */
void dScnKy_env_light_c::setLight_bg(dKy_tevstr_c* i_tevstr, GXColorS10* param_1,
                                     GXColorS10* param_2, f32* i_fogStartZ, f32* i_fogEndZ) {
    i_tevstr->wether_pat0 = g_env_light.wether_pat0;
    i_tevstr->wether_pat1 = g_env_light.wether_pat1;

    if (i_tevstr->wether_pat0 != i_tevstr->wether_pat1) {
        i_tevstr->pat_ratio = g_env_light.pat_ratio;
    }

    u8 pale0;
    u8 pale2;
    u8 pale1;
    u8 pale3;
    f32 blendAB;
    int palIdx0;
    int palIdx1;
    int i;
    setLight_palno_get(&i_tevstr->PrevCol, &i_tevstr->UseCol, &i_tevstr->wether_pat0,
                       &i_tevstr->wether_pat1, &pale0, &pale1, &pale2, &pale3, &blendAB, &palIdx0,
                       &palIdx1, &i_tevstr->pat_ratio, &i_tevstr->mInitTimer);

    if (pale0 == 0xFF) {
        for (int i = 0; i < 4; i++) {
            param_1[i].r = 255;
            param_1[i].g = 0;
            param_1[i].b = 0;
        }
    } else {
        stage_palette_info_class* pale0_p = &g_env_light.mpDmPalet[pale0];
        stage_palette_info_class* pale1_p = &g_env_light.mpDmPalet[pale1];
        stage_palette_info_class* pale2_p = &g_env_light.mpDmPalet[pale2];
        stage_palette_info_class* pale3_p = &g_env_light.mpDmPalet[pale3];

        for (int i = 0; i < 4; i++) {
            dKy_calc_color_set(&param_1[i], &pale0_p->mBgAmbColor[i], &pale2_p->mBgAmbColor[i],
                               &pale1_p->mBgAmbColor[i], &pale3_p->mBgAmbColor[i], blendAB,
                               i_tevstr->pat_ratio, mBgAddColAmb, g_env_light.mColBgColRatio);
        }

        if (daPy_py_c::checkNowWolfEyeUp()) {
            dKy_WolfPowerup_BgAmbCol(param_1);
        }

        param_1[3].a = 255;
        param_1[2].a = 255;
        param_1[1].a = 255;
        param_1[0].a = 255;

        GXColorS10 sp50[6];
        for (i = 0; i < 6; i++) {
            dKy_calc_color_set(&sp50[i], &pale0_p->mPlightColor[i], &pale2_p->mPlightColor[i],
                               &pale1_p->mPlightColor[i], &pale3_p->mPlightColor[i], blendAB,
                               i_tevstr->pat_ratio, mBgAddColAmb, g_env_light.mColBgColRatio);

            if (daPy_py_c::checkNowWolfEyeUp()) {
                sp50[i].r = 0;
                sp50[i].g = 0;
                sp50[i].b = 0;
            }

            J3DLightInfo& light_info = i_tevstr->mLights[i].getLightInfo();

            GXColor sp28;
            sp28.r = sp50[i].r;
            sp28.g = sp50[i].g;
            sp28.b = sp50[i].b;
            sp28.a = sp50[i].a;
            light_info.mColor = dKy_light_influence_col(&sp28, i_tevstr->field_0x374);
        }

        dKy_calc_color_set(param_2, &pale0_p->mFogColor, &pale2_p->mFogColor, &pale1_p->mFogColor,
                           &pale3_p->mFogColor, blendAB, i_tevstr->pat_ratio, mFogAddCol,
                           g_env_light.mColFogColRatio);

        *i_fogStartZ = float_kankyo_color_ratio_set(
            pale0_p->mFogStartZ, pale1_p->mFogStartZ, blendAB, pale2_p->mFogStartZ,
            pale3_p->mFogStartZ, i_tevstr->pat_ratio, g_env_light.field_0x11ec,
            g_env_light.field_0x11f4);
        *i_fogEndZ = float_kankyo_color_ratio_set(
            pale0_p->mFogEndZ, pale1_p->mFogEndZ, blendAB, pale2_p->mFogEndZ, pale3_p->mFogEndZ,
            i_tevstr->pat_ratio, g_env_light.field_0x11f0, g_env_light.field_0x11f4);

        if (daPy_py_c::checkNowWolfEyeUp()) {
            param_2->r = 0;
            param_2->g = 0;
            param_2->b = 0;
            dKy_WolfPowerup_FogNearFar(i_fogStartZ, i_fogEndZ);
        }
    }
}

/* 801A16C0-801A1D64 19C000 06A4+00 1/1 0/0 0/0 .text
 * setLight_actor__18dScnKy_env_light_cFP12dKy_tevstr_cP11_GXColorS10PfPf */
void dScnKy_env_light_c::setLight_actor(dKy_tevstr_c* i_tevstr, GXColorS10* i_fogColor,
                                        f32* i_fogStartZ, f32* i_fogEndZ) {
    u8 palIdx0A;
    u8 palIdx1A;
    u8 palIdx0B;
    u8 palIdx1B;
    f32 blendAB;
    int palIdx0;
    int palIdx1;
    int i;

    i_tevstr->wether_pat0 = g_env_light.wether_pat0;
    i_tevstr->wether_pat1 = g_env_light.wether_pat1;
    if (i_tevstr->wether_pat0 != i_tevstr->wether_pat1) {
        i_tevstr->pat_ratio = g_env_light.pat_ratio;
    } else if (i_tevstr->PrevCol == i_tevstr->UseCol) {
        i_tevstr->pat_ratio = 0.0f;
    }

    setLight_palno_get(&i_tevstr->PrevCol, &i_tevstr->UseCol, &i_tevstr->wether_pat0,
                       &i_tevstr->wether_pat1, &palIdx0A, &palIdx0B, &palIdx1A, &palIdx1B, &blendAB,
                       &palIdx0, &palIdx1, &i_tevstr->pat_ratio, &i_tevstr->mInitTimer);

    if (palIdx0A == 0xFF) {
        for (i = 0; i < 4; i++) {
            i_tevstr->AmbCol.r = 255;
            i_tevstr->AmbCol.g = 0;
            i_tevstr->AmbCol.b = 0;
        }
    } else {
        stage_palette_info_class* pale0_p = &g_env_light.mpDmPalet[palIdx0A];
        stage_palette_info_class* pale1_p = &g_env_light.mpDmPalet[palIdx0B];
        stage_palette_info_class* pale2_p = &g_env_light.mpDmPalet[palIdx1A];
        stage_palette_info_class* pale3_p = &g_env_light.mpDmPalet[palIdx1B];

        if (i_tevstr->Type == 10 || i_tevstr->Type == 9 || i_tevstr->Material_id != 0)
        {
            dKy_calc_color_set(&i_tevstr->AmbCol, &pale0_p->mActorAmbColor,
                               &pale2_p->mActorAmbColor, &pale1_p->mActorAmbColor,
                               &pale3_p->mActorAmbColor, blendAB, i_tevstr->pat_ratio,
                               mActorAddColAmb,
                               i_tevstr->field_0x374 *
                                   (g_env_light.mColActColRatio * g_env_light.mColActColRatio));
        } else {
            dKy_calc_color_set(
                &i_tevstr->AmbCol, &pale0_p->mActorAmbColor, &pale2_p->mActorAmbColor,
                &pale1_p->mActorAmbColor, &pale3_p->mActorAmbColor, blendAB, i_tevstr->pat_ratio,
                mActorAddColAmb,
                i_tevstr->field_0x374 * (g_env_light.field_0x1210 * (g_env_light.mColActColRatio *
                                                                     g_env_light.mColActColRatio)));
        }

        if (daPy_py_c::checkNowWolfPowerUp()) {
            dKy_WolfPowerup_AmbCol(&i_tevstr->AmbCol);
        }

        GXColorS10 sp88[6];
        for (i = 0; i < 6; i++) {
            J3DLightInfo* light_info = &i_tevstr->mLights[i].getLightInfo();

            if (i == 0) {
                if (i_tevstr->Type == 10 || i_tevstr->Type == 9 ||
                    i_tevstr->Material_id != 0)
                {
                    dKy_calc_color_set(&sp88[i], &pale0_p->mPlightColor[i],
                                       &pale2_p->mPlightColor[i], &pale1_p->mPlightColor[i],
                                       &pale3_p->mPlightColor[i], blendAB, i_tevstr->pat_ratio,
                                       mActorAddColAmb, 1.0f);

                    if (daPy_py_c::checkNowWolfPowerUp()) {
                        sp88[i].r = 0;
                        sp88[i].g = 0;
                        sp88[i].b = 0;
                    }

                    light_info = &i_tevstr->mLights[i].getLightInfo();

                    GXColor sp30;
                    sp30.r = sp88[i].r;
                    sp30.g = sp88[i].g;
                    sp30.b = sp88[i].b;
                    sp30.a = sp88[i].a;
                    light_info->mColor = dKy_light_influence_col(&sp30, i_tevstr->field_0x374);
                } else {
                    dKy_calc_color_set(&sp88[i], &pale0_p->mPlightColor[i],
                                       &pale2_p->mPlightColor[i], &pale1_p->mPlightColor[i],
                                       &pale3_p->mPlightColor[i], blendAB, i_tevstr->pat_ratio,
                                       mActorAddColAmb, g_env_light.field_0x1210);

                    if (daPy_py_c::checkNowWolfPowerUp()) {
                        sp88[i].r = 0;
                        sp88[i].g = 0;
                        sp88[i].b = 0;
                    }

                    kankyo_color_ratio_calc(&light_info->mColor, sp88[i],
                                            field_0x1210 * i_tevstr->field_0x374);
                }
            } else if (i_tevstr->Type == 10 || i_tevstr->Type == 9 ||
                       i_tevstr->Material_id != 0)
            {
                dKy_calc_color_set(&sp88[i], &pale0_p->mPlightColor[i], &pale2_p->mPlightColor[i],
                                   &pale1_p->mPlightColor[i], &pale3_p->mPlightColor[i], blendAB,
                                   i_tevstr->pat_ratio, mActorAddColAmb,
                                   g_env_light.mColActColRatio * g_env_light.mColActColRatio);

                if (daPy_py_c::checkNowWolfPowerUp()) {
                    sp88[i].r = 0;
                    sp88[i].g = 0;
                    sp88[i].b = 0;
                }

                GXColor sp30;
                sp30.r = sp88[i].r;
                sp30.g = sp88[i].g;
                sp30.b = sp88[i].b;
                sp30.a = sp88[i].a;
                light_info->mColor = dKy_light_influence_col(&sp30, i_tevstr->field_0x374);
            } else {
                dKy_calc_color_set(&sp88[i], &pale0_p->mPlightColor[i], &pale2_p->mPlightColor[i],
                                   &pale1_p->mPlightColor[i], &pale3_p->mPlightColor[i], blendAB,
                                   i_tevstr->pat_ratio, mActorAddColAmb,
                                   g_env_light.field_0x1210 *
                                       (g_env_light.mColActColRatio * g_env_light.mColActColRatio));

                if (daPy_py_c::checkNowWolfPowerUp()) {
                    sp88[i].r = 0;
                    sp88[i].g = 0;
                    sp88[i].b = 0;
                }

                kankyo_color_ratio_calc(&light_info->mColor, sp88[i],
                                        field_0x1210 * i_tevstr->field_0x374);
            }
        }

        dKy_calc_color_set(i_fogColor, &pale0_p->mFogColor, &pale2_p->mFogColor,
                           &pale1_p->mFogColor, &pale3_p->mFogColor, blendAB,
                           i_tevstr->pat_ratio, mFogAddCol, g_env_light.mColFogColRatio);
        if ((i_tevstr->Type != 10 && i_tevstr->Type != 9) ||
            g_env_light.field_0x1210 == 1.0f)
        {
            *i_fogStartZ = float_kankyo_color_ratio_set(
                pale0_p->mFogStartZ, pale1_p->mFogStartZ, blendAB, pale2_p->mFogStartZ,
                pale3_p->mFogStartZ, i_tevstr->pat_ratio, g_env_light.field_0x11ec,
                g_env_light.field_0x11f4);
            *i_fogEndZ = float_kankyo_color_ratio_set(
                pale0_p->mFogEndZ, pale1_p->mFogEndZ, blendAB, pale2_p->mFogEndZ, pale3_p->mFogEndZ,
                i_tevstr->pat_ratio, g_env_light.field_0x11f0, g_env_light.field_0x11f4);
        } else {
            *i_fogStartZ = float_kankyo_color_ratio_set(
                pale0_p->mFogStartZ, pale1_p->mFogStartZ, blendAB, pale2_p->mFogStartZ,
                pale3_p->mFogStartZ, i_tevstr->pat_ratio, g_env_light.field_0x11ec, 0.0f);
            *i_fogEndZ = float_kankyo_color_ratio_set(
                pale0_p->mFogEndZ, pale1_p->mFogEndZ, blendAB, pale2_p->mFogEndZ, pale3_p->mFogEndZ,
                i_tevstr->pat_ratio, g_env_light.field_0x11f0, 0.0f);
        }

        if (daPy_py_c::checkNowWolfPowerUp()) {
            i_fogColor->r = 0;
            i_fogColor->g = 0;
            i_fogColor->b = 0;
            dKy_WolfPowerup_FogNearFar(i_fogStartZ, i_fogEndZ);
        }
    }
}

/* 801A1D64-801A1F58 19C6A4 01F4+00 1/1 0/0 0/0 .text
 * settingTevStruct_colget_actor__18dScnKy_env_light_cFP4cXyzP12dKy_tevstr_cP11_GXColorS10P11_GXColorS10PfPf
 */
void dScnKy_env_light_c::settingTevStruct_colget_actor(cXyz* param_0, dKy_tevstr_c* i_tevstr,
                                                       GXColorS10* i_color, GXColorS10* i_fogColor,
                                                       f32* i_fogStartZ, f32* i_fogEndZ) {
    if (i_tevstr->YukaCol != 0xFF) {
        f32 target = i_tevstr->YukaCol / 100.0f;

        if (g_env_light.mActorLightEffect == 100) {
            cLib_addCalc(&i_tevstr->field_0x374, target, 0.25f, 0.05f, 0.000001f);
        }
    } else if (i_tevstr->room_no >= 0) {
        i_tevstr->UseCol = i_tevstr->room_no;
        if (g_env_light.mActorLightEffect == 100) {
            cLib_addCalc(&i_tevstr->field_0x374, 1.0f, 0.25f, 0.05f, 0.000001f);
        }
    } else {
        i_tevstr->UseCol = 0;
    }

    if ((i_tevstr->Type >= 1 && i_tevstr->Type <= 7) ||
        (i_tevstr->Type == 9 && dKy_darkworld_check()))
    {
        if ((i_tevstr->Type != 2 && i_tevstr->Type != 3) || dKy_darkworld_check()) {
            i_tevstr->field_0x374 = 0.0f;
        }
    }

    if (i_tevstr->PrevCol != i_tevstr->UseCol &&
        (i_tevstr->pat_ratio >= 1.0f || i_tevstr->pat_ratio <= 0.0f))
    {
        i_tevstr->pat_ratio = 0.0f;
    }

    if (i_tevstr->Type != 8) {
        setLight_actor(i_tevstr, i_fogColor, i_fogStartZ, i_fogEndZ);
        i_color->r = i_tevstr->AmbCol.r;
        i_color->g = i_tevstr->AmbCol.g;
        i_color->b = i_tevstr->AmbCol.b;
        i_color->a = i_tevstr->AmbCol.a;
    } else {
        GXColorS10 sp8[4];
        setLight_bg(i_tevstr, sp8, i_fogColor, i_fogStartZ, i_fogEndZ);
        i_color->r = sp8[0].r;
        i_color->g = sp8[0].g;
        i_color->b = sp8[0].b;
        i_color->a = sp8[0].a;
    }
}

/* 801A1F58-801A2090 19C898 0138+00 1/1 0/0 0/0 .text
 * settingTevStruct_colget_player__18dScnKy_env_light_cFP12dKy_tevstr_c */
void dScnKy_env_light_c::settingTevStruct_colget_player(dKy_tevstr_c* i_tevstr) {
    if (i_tevstr->YukaCol != 0xFF) {
        f32 target = i_tevstr->YukaCol / 100.0f;

        if (g_env_light.mActorLightEffect == 100) {
            cLib_addCalc(&i_tevstr->field_0x374, target, 0.25f, 0.05f, 0.000001f);
        }
    } else if (i_tevstr->room_no >= 0) {
        i_tevstr->UseCol = i_tevstr->room_no;
        if (g_env_light.mActorLightEffect == 100) {
            cLib_addCalc(&i_tevstr->field_0x374, 1.0f, 0.25f, 0.05f, 0.000001f);
        }
    }

    if (g_env_light.UseCol != i_tevstr->UseCol) {
        if (i_tevstr->UseCol == g_env_light.PrevCol) {
            g_env_light.PrevCol = g_env_light.UseCol;
            g_env_light.UseCol = i_tevstr->UseCol;
            g_env_light.pat_ratio = 1.0f - g_env_light.pat_ratio;

            i_tevstr->pat_ratio = 1.0f - g_env_light.pat_ratio;
        } else if (g_env_light.pat_ratio >= 1.0f || g_env_light.pat_ratio <= 0.0f) {
            g_env_light.UseCol = i_tevstr->UseCol;
            g_env_light.pat_ratio = 0.0f;
            i_tevstr->pat_ratio = 0.0f;
        }
    }
}

/* 801A2090-801A2128 19C9D0 0098+00 1/1 0/0 0/0 .text            cLib_addCalcU8__FPUcUcss */
static void cLib_addCalcU8(u8* i_value, u8 i_target, s16 i_scale, s16 i_maxStep) {
    s16 step, value;
    value = *i_value;

    step = i_target - value;
    if (abs(step) >= i_scale) {
        step /= i_scale;
    }

    if (step > i_maxStep) {
        value += i_maxStep;
    } else if (step < -i_maxStep) {
        value -= i_maxStep;
    } else {
        value += step;
    }

    *i_value = value;
}

/* 801A2128-801A37C4 19CA68 169C+00 2/1 0/0 0/0 .text
 * settingTevStruct_plightcol_plus__18dScnKy_env_light_cFP4cXyzP12dKy_tevstr_c11_GXColorS1011_GXColorS10Uc
 */
void dScnKy_env_light_c::settingTevStruct_plightcol_plus(cXyz* param_0, dKy_tevstr_c* param_1,
                                                         GXColorS10 param_2,
                                                         GXColorS10 param_3, u8 param_4) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    cXyz spE8;
    Vec spDC;
    MtxP view_mtx = j3dSys.getViewMtx();
    f32 var_f29;
    f32 var_f30;
    f32 sp48;
    int sp40 = 0;
    int sp3C = 0;
    int sp38;
    u8 sp9 = 0;
    f32 sp34 = 1.0f;
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (param_0 != NULL) {
        J3DLightInfo* light_info = &param_1->mLightObj.getLightInfo();
        light_info->mColor.a = 0xFF;

        sp38 = dKy_light_influence_id(*param_0, 0);
        int sp44 = 0;

        if (param_1->Type == 7 || param_1->Type == 1 || ((param_1->Type == 2 || param_1->Type == 6 || param_1->Type == 3) && dKy_darkworld_check()) || param_1->Type == 4 || param_1->Type == 5) {
            sp38 = -2;
        } else if (param_1->Type == 9 && dKy_darkworld_check()) {
            sp38 = -2;
        }

        if (sp38 >= 0) {
            var_f29 = dKy_light_influence_distance(*param_0, sp38);
            var_f30 = dKy_light_influence_power(sp38);

            if (var_f30 < 0.001f) {
                var_f30 = 0.001f;
            }

            if (var_f29 < 1000.0f + var_f30) {
                sp44 = 1;
            }
        }

        if (sp44 == 0) {
            spE8 = kankyo->mBaseLightInfluence.mPosition;
            var_f29 = kankyo->mBaseLightInfluence.mPosition.abs(*param_0);
            var_f30 = kankyo->mBaseLightInfluence.mPow;
            sp48 = kankyo->mBaseLightInfluence.mFluctuation;

            field_0x10f8.r = 0;
            field_0x10f8.g = 0;
            field_0x10f8.b = 0;

            if ((sp38 <= -2 || (sp38 == -1 && dKy_Outdoor_check() == TRUE) || strcmp(dComIfGp_getStartStageName(), "D_MN09A") == 0)) {
                cXyz camfwd;
                camera_class* camera = (camera_class*)dComIfGp_getCamera(0);
                J3DLightInfo* sp28 = &param_1->mLights[0].getLightInfo();
                sp9 = 1;

                dKyr_get_vectle_calc(&camera->lookat.center, &camera->lookat.eye, &camfwd);
                spE8 = *param_0 + (camfwd * 500.0f);
                spE8.y += 40.0f;

                if (param_1->Type >= 1 && param_1->Type <= 9) {
                    dKyr_get_vectle_calc(&camera->lookat.center, &camera->lookat.eye, &camfwd);
                    spE8 = camera->lookat.eye + (camfwd * 180.0f);
                }

                field_0x10f8.r = sp28->mColor.r;
                field_0x10f8.g = sp28->mColor.g;
                field_0x10f8.b = sp28->mColor.b;

                sp48 = 0.0f;
                var_f30 = 120.0f;
                var_f29 = 100.0f;
                sp40 = 1;
                sp3C = 1;

                if (strcmp(dComIfGp_getStartStageName(), "D_MN09A") == 0) {
                    if (dComIfG_play_c::getLayerNo(0) == 0) {
                        if (param_1->Type == 0) {
                            field_0x10f8.r = 0x1E;
                            field_0x10f8.g = 0x37;
                            field_0x10f8.b = 0x6E;

                            spE8.y += -800.0f;
                            var_f30 = 250.0f;
                        }
                    } else if (dComIfG_play_c::getLayerNo(0) == 1 && param_1->Type == 0) {
                        field_0x10f8.r = 0x3C;
                        field_0x10f8.g = 0x5F;
                        field_0x10f8.b = 0x64;
                        spE8.y += -800.0f;
                        var_f30 = 150.0f;
                    }
                }

                if (param_1 != NULL && param_1->mLightInf.a != 0) {
                    field_0x10f8.r = param_1->mLightInf.r * 4;
                    field_0x10f8.g = param_1->mLightInf.g * 4;
                    field_0x10f8.b = param_1->mLightInf.b * 4;
                }

                switch (param_1->Type) {
                case 1:
                    field_0x10f8.r = 500;
                    field_0x10f8.g = 500;
                    field_0x10f8.b = 500;
                    var_f29 = 90.0f;
                    var_f30 = 5000.0f;
                    break;
                case 4:
                    field_0x10f8.r = 500;
                    field_0x10f8.g = 500;
                    field_0x10f8.b = 500;
                    var_f29 = 90.0f;
                    var_f30 = 5000.0f;
                    break;
                case 5:
                    field_0x10f8.r = 170;
                    field_0x10f8.g = 170;
                    field_0x10f8.b = 170;
                    var_f29 = 90.0f;
                    var_f30 = 5000.0f;
                    break;
                case 2:
                    if (dKy_darkworld_check()) {
                        field_0x10f8.r = 103;
                        field_0x10f8.g = 129;
                        field_0x10f8.b = 199;
                        var_f29 = 90.0f;
                        var_f30 = 5000.0f;
                    }
                    break;
                case 3:
                    if (dKy_darkworld_check()) {
                        field_0x10f8.r = 53;
                        field_0x10f8.g = 53;
                        field_0x10f8.b = 80;
                        var_f29 = 90.0f;
                        var_f30 = 5000.0f;
                    }
                    break;
                case 9:
                    if (dKy_darkworld_check()) {
                        field_0x10f8.r = 110;
                        field_0x10f8.g = 110;
                        field_0x10f8.b = 140;
                        var_f29 = 90.0f;
                        var_f30 = 5000.0f;
                    }
                    break;
                case 7:
                    f32 sp34 = param_1->TevColor.a / 255.0f;
                    field_0x10f8.r = 180;
                    field_0x10f8.g = 180;
                    field_0x10f8.b = 180;
                    var_f29 = 90.0f;
                    spE8.y += -120.0f;

                    f32 sp24 = cM_ssin(g_Counter.mCounter0 * 325);
                    f32 sp20 = cM_scos(g_Counter.mCounter0 * 285);
                    cLib_addCalcU8(&light_info->mColor.a, fabsf(sp24 * 255.0f), 2, 255);
                    light_info->mColor.a *= sp34;

                    spE8.y += sp20 * 500.0f;
                    spE8.y -= 80.0f;
                    var_f30 = 300.0f;
                    break;
                case 6:
                    if (dKy_darkworld_check()) {
                        field_0x10f8.r = 255;
                        field_0x10f8.g = 255;
                        field_0x10f8.b = 255;
                        var_f29 = 90.0f;
                        var_f30 = 5000.0f;
                    }
                    break;
                }
            }
        } else {
            spE8 = dKy_light_influence_pos(sp38);
            field_0x10f8 = dKy_light_influence_col(sp38);
            sp48 = dKy_light_influence_yuragi(sp38);
        }

        f32 var_f31;
        if (var_f30 <= 0.0f && sp3C == 0) {
            var_f31 = 1.0f;
        } else {
            var_f31 = var_f29 / var_f30;
        }

        if (var_f31 > 1.0f) {
            var_f31 = 1.0f;
        }

        var_f31 = (1.0f - var_f31);
        var_f31 *= g_env_light.mColActColRatio;

        if ((param_1->Type != 10 && param_1->Type != 9) || param_1->Material_id != 0) {
            field_0x10f0.r = field_0x10f8.r * (var_f31 * kankyo->field_0x1210);
            field_0x10f0.g = field_0x10f8.g * (var_f31 * kankyo->field_0x1210);
            field_0x10f0.b = field_0x10f8.b * (var_f31 * kankyo->field_0x1210);
        } else {
            field_0x10f0.r = field_0x10f8.r * var_f31;
            field_0x10f0.g = field_0x10f8.g * var_f31;
            field_0x10f0.b = field_0x10f8.b * var_f31;
        }

        if (field_0x10f0.r > 0xFF) {
            field_0x10f0.r = 0xFF;
        }

        if (field_0x10f0.g > 0xFF) {
            field_0x10f0.g = 0xFF;
        }

        if (field_0x10f0.b > 0xFF) {
            field_0x10f0.b = 0xFF;
        }

        if (param_4 != 0 || var_f31 <= 0.0f || sp9 == 0) {
            light_info->mColor.r = field_0x10f0.r;
            light_info->mColor.g = field_0x10f0.g;
            light_info->mColor.b = field_0x10f0.b;
        } else {
            cLib_addCalcU8(&light_info->mColor.r, field_0x10f0.r, 10, 0x80);
            cLib_addCalcU8(&light_info->mColor.g, field_0x10f0.g, 10, 0x80);
            cLib_addCalcU8(&light_info->mColor.b, field_0x10f0.b, 10, 0x80);
        }

        field_0x10f0.r = param_2.r + (int)(light_info->mColor.r * (0.1f * var_f31));
        field_0x10f0.g = param_2.g + (int)(light_info->mColor.g * (0.1f * var_f31));
        field_0x10f0.b = param_2.b + (int)(light_info->mColor.b * (0.1f * var_f31));

        if (field_0x10f0.r > 0xFF) {
            field_0x10f0.r = 0xFF;
        }

        if (field_0x10f0.g > 0xFF) {
            field_0x10f0.g = 0xFF;
        }

        if (field_0x10f0.b > 0xFF) {
            field_0x10f0.b = 0xFF;
        }

        if (param_4 != 0 || sp40 != 0 || param_1->field_0x384 != 0) {
            param_1->field_0x32c = spE8;
        } else {
            f32 sp18 = param_0->abs(param_1->field_0x32c);
            f32 sp14 = sp18 / 10000.0f;
            if (sp14 > 1.0f) {
                sp14 = 1.0f;
            }
            sp14 *= sp14;

            sp18 = param_0->abs(spE8);
            f32 var_f28 = sp18 / 5000.0f;
            if (var_f28 > 1.0f) {
                var_f28 = 1.0f;
            }

            var_f28 = 1.0f - var_f28;
            var_f28 *= var_f28 * var_f28;
            f32 sp1C = 10.0f + (10000.0f * sp14) + (100.0f * var_f28);
            cLib_addCalc(&param_1->field_0x32c.x, spE8.x, 0.5f, sp1C, 0.001f);
            cLib_addCalc(&param_1->field_0x32c.y, spE8.y, 0.5f, sp1C, 0.001f);
            cLib_addCalc(&param_1->field_0x32c.z, spE8.z, 0.5f, sp1C, 0.001f);
        }

        cXyz spC4;
        cXyz spB8;
        spB8 = param_1->field_0x32c;
        cMtx_multVec(view_mtx, &spB8, &spDC);

        if (dKy_shadow_mode_check(4) == 0) {
            if ((param_1->Type == 9 || param_1->Type == 10) && (player->getSinkShapeOffset() < -20.0f || player->checkSinkDead() || dKy_camera_water_in_status_check() || !player->checkSwimUp())) {
                cLib_addCalc(&param_1->mLightPosWorld.x, param_0->x, 0.5f, 5000.0f, 0.1f);
                cLib_addCalc(&param_1->mLightPosWorld.y, 1000.0f + param_0->y, 0.5f, 5000.0f, 0.1f);
                cLib_addCalc(&param_1->mLightPosWorld.z, param_0->z, 0.5f, 5000.0f, 0.1f);
            } else if ((kankyo->mShadowMode & 1) || (kankyo->mShadowMode & 2)) {
                cLib_addCalc(&param_1->mLightPosWorld.x, g_env_light.field_0x10a0.x, 0.5f, 5000.0f, 0.1f);
                cLib_addCalc(&param_1->mLightPosWorld.y, g_env_light.field_0x10a0.y, 0.5f, 5000.0f, 0.1f);
                cLib_addCalc(&param_1->mLightPosWorld.z, g_env_light.field_0x10a0.z, 0.5f, 5000.0f, 0.1f);
            } else if (sp9 != 0) {
                if (param_4 != 0 || param_1->field_0x384 != 0) {
                    param_1->mLightPosWorld = kankyo->mBaseLightInfluence.mPosition;
                } else {
                    cLib_addCalc(&param_1->mLightPosWorld.x, kankyo->mBaseLightInfluence.mPosition.x, 0.25f, 1000.0f, 0.0001f);
                    cLib_addCalc(&param_1->mLightPosWorld.y, kankyo->mBaseLightInfluence.mPosition.y, 0.25f, 1000.0f, 0.0001f);
                    cLib_addCalc(&param_1->mLightPosWorld.z, kankyo->mBaseLightInfluence.mPosition.z, 0.25f, 1000.0f, 0.0001f);
                }
            } else {
                cXyz spAC;
                u8 sp8 = 0;
                spAC = param_1->field_0x32c;

                for (int i = 0; i < 6; i++) {
                    if (kankyo->field_0x0c18[i].field_0x26 == 1) {
                        if (kankyo->field_0x0c18[i].mPos.abs(*param_0) < spAC.abs(*param_0) && kankyo->field_0x0c18[i].mPos.abs(*param_0) < 1000.0f) {
                            spAC = kankyo->field_0x0c18[i].mPos;
                            sp8 = i + 1;
                        }
                    }
                }

                if (sp8 == 0) {
                    if (param_4 != 0 || param_1->field_0x384 != 0) {
                        param_1->mLightPosWorld = param_1->field_0x32c;
                    } else {
                        cLib_addCalc(&param_1->mLightPosWorld.x, param_1->field_0x32c.x, 0.25f, 1000.0f, 0.0001f);
                        cLib_addCalc(&param_1->mLightPosWorld.y, param_1->field_0x32c.y, 0.25f, 1000.0f, 0.0001f);
                        cLib_addCalc(&param_1->mLightPosWorld.z, param_1->field_0x32c.z, 0.25f, 1000.0f, 0.0001f);
                    }
                } else {
                    if (param_4 != 0 || param_1->field_0x384 != 0) {
                        param_1->mLightPosWorld = kankyo->field_0x0c18[sp8 - 1].mPos;
                    } else {
                        cLib_addCalc(&param_1->mLightPosWorld.x, kankyo->field_0x0c18[sp8 - 1].mPos.x, 0.25f, 1000.0f, 0.0001f);
                        cLib_addCalc(&param_1->mLightPosWorld.y, kankyo->field_0x0c18[sp8 - 1].mPos.y, 0.25f, 1000.0f, 0.0001f);
                        cLib_addCalc(&param_1->mLightPosWorld.z, kankyo->field_0x0c18[sp8 - 1].mPos.z, 0.25f, 1000.0f, 0.0001f);
                    }

                    var_f31 = kankyo->field_0x0c18[sp8 - 1].mPos.abs(*param_0) / 500.0f;
                    if (var_f31 > 1.0f) {
                        var_f31 = 1.0f;
                    }
                    var_f31 = 1.0f - var_f31;
                }
            }

            if ((param_1->Type == 9 || param_1->Type == 10) && (player->checkSinkDead() || dComIfGp_checkPlayerStatus0(0, 0x02000308) || dComIfGp_checkPlayerStatus1(0, 0x02000000) || player->checkMagneBootsOn())) {
                cLib_addCalc(&param_1->field_0x344, 0.0f, 0.75f, 0.21f, 0.0001f);
            } else if (param_1->Type == 9 && player->getSinkShapeOffset() < -35.0f) {
                cLib_addCalc(&param_1->field_0x344, 0.0f, 0.1f, 0.001f, 0.00001f);
            } else if (param_1->Type == 10 && player->getSinkShapeOffset() < -100.0f) {
                cLib_addCalc(&param_1->field_0x344, 0.0f, 0.1f, 0.001f, 0.00001f);
            } else if (param_4 != 0) {
                param_1->field_0x344 = kankyo->field_0x1238 + (var_f31 * (kankyo->field_0x123c - kankyo->field_0x1238));
            } else {
                cLib_addCalc(&param_1->field_0x344, kankyo->field_0x1238 + (var_f31 * (kankyo->field_0x123c - kankyo->field_0x1238)), 0.75f, 0.04f, 0.000001f);
            }

            if (param_1->field_0x344 > 1.0f) {
                param_1->field_0x344 = 1.0f;
            }
        }

        light_info->mLightPosition = spDC;
        light_info->mLightDirection = g_env_light.field_0x1064;

        light_info->mCosAtten.x = 1.0f;
        light_info->mCosAtten.y = 0.0f;
        light_info->mCosAtten.z = 0.0f;

        light_info->mDistAtten.x = 1.0f;
        light_info->mDistAtten.y = 0.0f;
        light_info->mDistAtten.z = 0.0f;
    }
}

/* 8042DD70-8042E07C 05AA90 030C+00 1/2 8/8 9/9 .bss             g_mEnvSeMgr */
Z2EnvSeMgr g_mEnvSeMgr;

/* 8042E07C-8042E7BC 05AD9C 0740+00 5/4 0/0 0/0 .bss             lightStatusData */
static LightStatus lightStatusData[8];

/* 801A37C4-801A441C 19E104 0C58+00 2/1 14/14 515/515 .text
 * settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c */
void dScnKy_env_light_c::settingTevStruct(int i_tevstrType, cXyz* param_1, dKy_tevstr_c* i_tevstr) {
    dScnKy_env_light_c* env_light = dKy_getEnvlight();
    u8 var_r30 = i_tevstr->mInitTimer;

    GXColorS10 sp30;
    GXColorS10 K0_color;

    f32 fog_z_start;
    f32 fog_z_end;

    cXyz spA4;
    if (i_tevstr->room_no < 0) {
        i_tevstr->room_no = dComIfGp_roomControl_getStayNo();
    }

    if (param_1 != NULL) {
        spA4 = *param_1;
    } else {
        spA4.set(0.0f, 0.0f, 0.0f);
    }

    if (i_tevstr != NULL && g_env_light.mActorLightEffect != 100) {
        i_tevstr->field_0x374 = g_env_light.mActorLightEffect / 100.0f;
    }

    i_tevstr->Type = i_tevstrType;

    if (i_tevstr->Material_use_fg != 123 && i_tevstr->Material_use_fg != 124) {
        dKy_tevstr_init(i_tevstr, dComIfGp_roomControl_getStayNo(), 0xFF);
    }

    i_tevstr->Material_use_fg = 124;
    mActorAmbience.a = 255;

    if (i_tevstrType == 14) {
        camera_class* temp_r30 = (camera_class*)dComIfGp_getCamera(0);
        cXyz sp98;
        i_tevstr->mLightMode = 0;

        if (i_tevstr->room_no >= 0x80) {
            i_tevstr->UseCol = 0;
        } else {
            i_tevstr->UseCol = i_tevstr->room_no;
        }

        if (!dKy_darkworld_check()) {
            field_0x10f0.r = 24;
            field_0x10f0.g = 24;
            field_0x10f0.b = 24;
            field_0x10f0.a = 255;
        } else {
            field_0x10f0.r = 55;
            field_0x10f0.g = 55;
            field_0x10f0.b = 77;
        }

        K0_color.r = 255;
        K0_color.g = 255;
        K0_color.b = 255;

        fog_z_start = 30000.0f;
        fog_z_end = 30000.0f;
        dKyr_get_vectle_calc(&spA4, &temp_r30->lookat.eye, &sp98);

        for (int i = 0; i < 6; i++) {
            J3DLightInfo& light_info = i_tevstr->mLights[i].getLightInfo();

            if (i == 0) {
                if (!dKy_darkworld_check()) {
                    light_info.mColor.r = 126;
                    light_info.mColor.g = 110;
                    light_info.mColor.b = 89;
                } else {
                    light_info.mColor.r = 0;
                    light_info.mColor.g = 0;
                    light_info.mColor.b = 0;
                }
            } else if (i == 1) {
                if (!dKy_darkworld_check()) {
                    light_info.mColor.r = 24;
                    light_info.mColor.g = 41;
                    light_info.mColor.b = 50;
                } else {
                    light_info.mColor.r = 0;
                    light_info.mColor.g = 0;
                    light_info.mColor.b = 0;
                }
            } else {
                light_info.mColor.r = 0;
                light_info.mColor.g = 0;
                light_info.mColor.b = 0;
            }

            dKy_GXInitLightSpot(&light_info, 90.0f, 0);
            dKy_GXInitLightDistAttn(&light_info, 100000.0f, 0.99999f, 3);

            light_info.mLightPosition.x = 0.0f;
            light_info.mLightPosition.y = 0.0f;
            light_info.mLightPosition.z = 0.0f;

            if (i == 0) {
                light_info.mLightPosition.x = 500.0f;
                light_info.mLightPosition.y = 500.0f;
                light_info.mLightPosition.z = 500.0f;
            } else {
                light_info.mLightPosition.x = -500.0f;
                light_info.mLightPosition.y = -500.0f;
                light_info.mLightPosition.z = -500.0f;
            }

            dKy_lightdir_set(0.0f, 0.0f, &light_info.mLightDirection);

            light_info.mLightDirection.x = -light_info.mLightDirection.x;
            light_info.mLightDirection.y = -light_info.mLightDirection.y;
            light_info.mLightDirection.z = -light_info.mLightDirection.z;
        }

        MtxP view_mtx = j3dSys.getViewMtx();
        Vec sp8C;
        Vec sp80;

        sp80.x = temp_r30->lookat.eye.x;
        sp80.y = temp_r30->lookat.eye.y;
        sp80.z = temp_r30->lookat.eye.z;
        cMtx_multVec(view_mtx, &sp80, &sp8C);

        J3DLightInfo& light_info = i_tevstr->mLightObj.getLightInfo();
        light_info.mLightPosition = sp8C;
        i_tevstr->field_0x32c = sp80;
        i_tevstr->mLightPosWorld = sp80;
        light_info.mLightDirection = g_env_light.field_0x1064;

        light_info.mColor.r = 0;
        light_info.mColor.g = 0;
        light_info.mColor.b = 0;

        light_info.mCosAtten.x = 1.0f;
        light_info.mCosAtten.y = 0.0f;
        light_info.mCosAtten.z = 0.0f;

        light_info.mDistAtten.x = 1.0f;
        light_info.mDistAtten.y = 0.0f;
        light_info.mDistAtten.z = 0.0f;
    } else if (i_tevstrType == 12 || i_tevstrType == 13) {
        camera_class* temp_r30_2 = (camera_class*)dComIfGp_getCamera(0);

        i_tevstr->TevColor.r = 0;
        i_tevstr->TevColor.g = 0;
        i_tevstr->TevColor.b = 0;
        i_tevstr->TevColor.a = 0;

        i_tevstr->TevKColor.r = 0;
        i_tevstr->TevKColor.g = 0;
        i_tevstr->TevKColor.b = 0;
        i_tevstr->TevKColor.a = 0;
        i_tevstr->mLightMode = 0;

        if (i_tevstr->room_no >= 128) {
            i_tevstr->UseCol = 0;
        } else {
            i_tevstr->UseCol = i_tevstr->room_no;
        }

        if (i_tevstrType == 12) {
            field_0x10f0.r = 25;
            field_0x10f0.g = 20;
            field_0x10f0.b = 25;
        } else {
            field_0x10f0.r = 40;
            field_0x10f0.g = 35;
            field_0x10f0.b = 30;
        }

        field_0x10f0.a = 0xFF;

        K0_color.r = 255;
        K0_color.g = 255;
        K0_color.b = 255;

        fog_z_start = 30000.0f;
        fog_z_end = 30000.0f;

        for (int i = 0; i < 6; i++) {
            J3DLightInfo& temp_r31 = i_tevstr->mLights[i].getLightInfo();

            if (i == 0) {
                if (i_tevstrType == 12) {
                    temp_r31.mLightPosition.x = -30000.0f;
                    temp_r31.mLightPosition.y = 18800.0f;
                    temp_r31.mLightPosition.z = 29000.0f;
                    temp_r31.mColor.r = 120;
                    temp_r31.mColor.g = 110;
                    temp_r31.mColor.b = 100;
                } else {
                    temp_r31.mLightPosition.x = -37000.0f;
                    temp_r31.mLightPosition.y = 18800.0f;
                    temp_r31.mLightPosition.z = 500.0f;
                    temp_r31.mColor.r = 85;
                    temp_r31.mColor.g = 90;
                    temp_r31.mColor.b = 100;
                }
            } else if (i == 1) {
                if (i_tevstrType == 12) {
                    temp_r31.mLightPosition.x = 14400.0f;
                    temp_r31.mLightPosition.y = 7500.0f;
                    temp_r31.mLightPosition.z = 3900.0f;
                    temp_r31.mColor.r = 30;
                    temp_r31.mColor.g = 45;
                    temp_r31.mColor.b = 30;
                } else {
                    temp_r31.mLightPosition.x = 18000.0f;
                    temp_r31.mLightPosition.y = -6500.0f;
                    temp_r31.mLightPosition.z = -10000.0f;
                    temp_r31.mColor.r = 100;
                    temp_r31.mColor.g = 65;
                    temp_r31.mColor.b = 40;
                }
            } else {
                temp_r31.mColor.r = 0;
                temp_r31.mColor.g = 0;
                temp_r31.mColor.b = 0;
            }

            dKy_GXInitLightSpot(&temp_r31, 90.0f, 0);
            dKy_GXInitLightDistAttn(&temp_r31, 100000.0f, 0.99999f, 3);
            dKy_lightdir_set(0.0f, 0.0f, &temp_r31.mLightDirection);

            temp_r31.mLightDirection.x = -temp_r31.mLightDirection.x;
            temp_r31.mLightDirection.y = -temp_r31.mLightDirection.y;
            temp_r31.mLightDirection.z = -temp_r31.mLightDirection.z;
        }

        MtxP view_mtx = j3dSys.getViewMtx();
        Vec sp74;
        Vec sp68;

        sp68.x = temp_r30_2->lookat.eye.x;
        sp68.y = temp_r30_2->lookat.eye.y;
        sp68.z = temp_r30_2->lookat.eye.z;

        J3DLightInfo& light_info = i_tevstr->mLightObj.getLightInfo();
        cMtx_multVec(view_mtx, &sp68, &sp74);

        light_info.mLightPosition = sp74;
        if (i_tevstrType == 13) {
            i_tevstr->field_0x32c = sp68;
            i_tevstr->mLightPosWorld = sp68;
        }

        light_info.mLightDirection = g_env_light.field_0x1064;

        light_info.mColor.r = 0;
        light_info.mColor.g = 0;
        light_info.mColor.b = 0;

        light_info.mCosAtten.x = 1.0f;
        light_info.mCosAtten.y = 0.0f;
        light_info.mCosAtten.z = 0.0f;

        light_info.mDistAtten.x = 1.0f;
        light_info.mDistAtten.y = 0.0f;
        light_info.mDistAtten.z = 0.0f;
    } else if (!(i_tevstrType & 0xF0)) {
        i_tevstr->mLightMode = 1;

        sp30 = mActorAmbience;
        K0_color = mFogColor;

        fog_z_start = mFogNear;
        fog_z_end = mFogFar;

        if (i_tevstrType == 0 || i_tevstrType == 0 || i_tevstrType == 8 || i_tevstrType == 7 ||
            i_tevstrType == 1 || i_tevstrType == 2 || i_tevstrType == 3 || i_tevstrType == 5 ||
            i_tevstrType == 4 || i_tevstrType == 11)
        {
            settingTevStruct_colget_actor(param_1, i_tevstr, &sp30, &K0_color, &fog_z_start,
                                          &fog_z_end);
        } else if (i_tevstrType == 10 || i_tevstrType == 9) {
            if (g_env_light.field_0x98c != (u8)dComIfGp_roomControl_getStayNo()) {
                g_env_light.field_0x98c = dComIfGp_roomControl_getStayNo();
                mDoAud_setSceneName(
                    dComIfGp_getStartStageName(), dComIfGp_roomControl_getStayNo(),
                    dComIfG_play_c::getLayerNo_common(dComIfGp_getStartStageName(),
                                                      dComIfGp_roomControl_getStayNo(),
                                                      dComIfGp_getStartStageLayer()));

                if (strcmp(dComIfGp_getStartStageName(), "F_SP121") == 0) {
                    mDoAud_load2ndDynamicWave();
                }
            }
            var_r30 = g_env_light.mInitAnmTimer;
            settingTevStruct_colget_player(i_tevstr);
            settingTevStruct_colget_actor(param_1, i_tevstr, &sp30, &K0_color, &fog_z_start,
                                          &fog_z_end);
        }

        field_0x10f0.r = sp30.r;
        field_0x10f0.g = sp30.g;
        field_0x10f0.b = sp30.b;
        field_0x10f0.a = 255;

        if (i_tevstrType != 11) {
            settingTevStruct_plightcol_plus(param_1, i_tevstr, sp30, sp30, var_r30);
        }

        if (i_tevstrType == 10 || i_tevstrType == 9) {
            g_env_light.mPLightNearPos = i_tevstr->mLightPosWorld;
        }
    } else {
        i_tevstr->mLightMode = 0;
        if (i_tevstr->Type != 20) {
            i_tevstr->field_0x374 = g_env_light.mPaletteTerrainLightEffect;
        } else {
            switch (i_tevstr->mLightInf.r) {
            case 0:
                i_tevstr->field_0x374 = 0.2f;
                break;
            case 1:
                i_tevstr->field_0x374 = 0.3f;
                break;
            case 2:
                i_tevstr->field_0x374 = 0.4f;
                break;
            case 3:
                i_tevstr->field_0x374 = 0.6f;
                break;
            case 4:
                i_tevstr->field_0x374 = 0.8f;
                break;
            case 5:
                i_tevstr->field_0x374 = 0.9f;
                break;
            case 6:
                i_tevstr->field_0x374 = 1.0f;
                break;
            case 7:
                i_tevstr->field_0x374 = 1.2f;
                break;
            default:
                i_tevstr->field_0x374 = 1.0f;
                break;
            }
        }

        if (i_tevstr->room_no >= 128) {
            i_tevstr->UseCol = 0;
        } else {
            i_tevstr->UseCol = i_tevstr->room_no;
        }

        GXColorS10 spB0[4];
        setLight_bg(i_tevstr, spB0, &K0_color, &fog_z_start, &fog_z_end);

        field_0x10f0 = spB0[i_tevstrType & 3];

        MtxP view_mtx = j3dSys.getViewMtx();
        Vec sp5C;
        cXyz sp58;
        bool var_r25_3 = 0;
        sp58.z = 0.0f;
        sp58.y = 0.0f;
        sp58.x = 0.0f;

        int temp_r3_2 = dKy_light_influence_id(sp58, 0);
        if (temp_r3_2 >= 0 && g_env_light.mPointLight[temp_r3_2]->mIndex < 0) {
            var_r25_3 = 1;
        }

        if (var_r25_3 == 1) {
            sp58 = g_env_light.mPointLight[temp_r3_2]->mPosition;
            J3DLightInfo& light_info = i_tevstr->mLightObj.getLightInfo();

            cMtx_multVec(view_mtx, &sp58, &sp5C);

            light_info.mLightPosition = sp5C;
            i_tevstr->field_0x32c = sp58;
            light_info.mLightDirection = g_env_light.field_0x1064;

            light_info.mColor.a = g_env_light.mPointLight[temp_r3_2]->mColor.a;
            light_info.mColor.r = g_env_light.mPointLight[temp_r3_2]->mColor.r;
            light_info.mColor.g = g_env_light.mPointLight[temp_r3_2]->mColor.g;
            light_info.mColor.b = g_env_light.mPointLight[temp_r3_2]->mColor.b;
            dKy_GXInitLightSpot(&light_info, 90.0f, 0);
            dKy_GXInitLightDistAttn(&light_info, g_env_light.mPointLight[temp_r3_2]->mPow * 0.001f,
                                    0.99999f, 3);
        } else {
            MtxP view_mtx = j3dSys.getViewMtx();
            J3DLightInfo& light_info = i_tevstr->mLightObj.getLightInfo();
            Vec sp44;
            cMtx_multVec(view_mtx, &lightStatusData[0].field_0x0, &sp44);

            light_info.mLightPosition = sp44;
            i_tevstr->field_0x32c = lightStatusData[0].field_0x0;
            light_info.mLightDirection = g_env_light.field_0x1064;

            light_info.mColor.r = 0;
            light_info.mColor.g = 0;
            light_info.mColor.b = 0;

            light_info.mCosAtten.x = 0.0f;
            light_info.mCosAtten.y = 0.0f;
            light_info.mCosAtten.z = 0.0f;

            light_info.mDistAtten.x = 0.0f;
            light_info.mDistAtten.y = 0.0f;
            light_info.mDistAtten.z = 0.0f;
        }

        i_tevstr->mLightPosWorld = env_light->mBaseLightInfluence.mPosition;
    }

    field_0x10f0.a = 255;
    i_tevstr->AmbCol = field_0x10f0;
    i_tevstr->FogCol = K0_color;
    i_tevstr->mFogStartZ = fog_z_start;
    i_tevstr->mFogEndZ = fog_z_end;
}

/* 801A441C-801A4420 19ED5C 0004+00 0/0 0/0 2/2 .text
 * setLightTevColorType__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c */
void dScnKy_env_light_c::setLightTevColorType(J3DModelData* param_0, dKy_tevstr_c* param_1) {}

/* 801A4420-801A4C08 19ED60 07E8+00 2/2 0/0 0/0 .text
 * setLightTevColorType_MAJI_sub__FP11J3DMaterialP12dKy_tevstr_ci */
// NONMATCHING - some minor issues with dKyd_maple_col_getp
static void setLightTevColorType_MAJI_sub(J3DMaterial* material, dKy_tevstr_c* tevstr,
                                          int lightType) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    MtxP sp1C = j3dSys.getViewMtx();
    camera_class* camera = (camera_class*)dComIfGp_getCamera(0);

    if (tevstr != NULL) {
        J3DGXColor sp18;
        sp18.r = tevstr->AmbCol.r;
        sp18.g = tevstr->AmbCol.g;
        sp18.b = tevstr->AmbCol.b;
        sp18.a = tevstr->AmbCol.a;

        if (((tevstr->Type >= 1 && tevstr->Type <= 7) || tevstr->Type == 5 || tevstr->Type == 15 || (tevstr->Type == 9 && dKy_darkworld_check())) && ((tevstr->Type != 2 && tevstr->Type != 3) || dKy_darkworld_check())) {
            sp18.r = 0;
            sp18.g = 0;
            sp18.b = 0;
            sp18.a = 0;

            if (tevstr->Type == 7) {
                sp18.a = 4;
            }

            if (tevstr->Type == 3) {
                sp18.r = 12;
                sp18.g = 12;
                sp18.b = 12;
            } else if (tevstr->Type == 6) {
                f32 var_r30 = fabsf(cM_ssin(g_Counter.mCounter0 * 662));
                sp18.r = 255.0f - (185.0f * var_r30);
                sp18.g = 255.0f - (185.0f * var_r30);
                sp18.b = 255.0f - (185.0f * var_r30);
            } else if (tevstr->Type == 2) {
                sp18.r = 0x12;
                sp18.g = 0x12;
                sp18.b = 0x12;
            } else if (tevstr->Type == 4) {
                sp18.r = 0xFF;
                sp18.g = 0x33;
                sp18.b = 0xB;
            } else if (tevstr->Type == 5) {
                sp18.r = 0xA;
                sp18.g = 0xA;
                sp18.b = 8;
            } else if (tevstr->Type == 15) {
                sp18.r = 0x19;
                sp18.g = 0x1E;
                sp18.b = 0x23;
            }
        }

        material->setAmbColor(0, &sp18);

        if (lightType != 0) {
            material->setTevColor(0, (J3DGXColorS10*)&tevstr->TevColor);
            material->setTevKColor(0, (J3DGXColor*)&tevstr->TevKColor);
        }

        MtxP sp10 = j3dSys.getViewMtx();
        if (sp10 != NULL) {
            Vec sp28;
            J3DLightInfo* sp20 = &tevstr->mLightObj.getLightInfo();
            cMtx_multVec(sp10, &tevstr->field_0x32c, &sp28);
            sp20->mLightPosition = sp28;
        }

        material->setLight(0, &tevstr->mLightObj);

        if (sp1C != NULL) {
            if (lightType != 2) {
                for (int i = 0; i < 6; i++) {
                    material->setLight(i + 2, &tevstr->mLights[i]);
                }
            } else if (g_env_light.mPondSeason >= 1 && g_env_light.mPondSeason <= 4) {
                color_RGB_class maple_color;
                maple_color.r = dKyd_maple_col_getp()[g_env_light.mPondSeason + 7].r;
                maple_color.g = dKyd_maple_col_getp()[g_env_light.mPondSeason + 7].g;
                maple_color.b = dKyd_maple_col_getp()[g_env_light.mPondSeason + 7].b;

                sp18.r = 0xA;
                sp18.g = 0xA;
                sp18.b = 0xA;

                f32 var_f31;
                var_f31 = (sp18.r * g_env_light.mColBgColRatio) / 10.0f;
                var_f31 *= var_f31;
                if (var_f31 > 1.0f) {
                    var_f31 = 1.0f;
                }
                sp18.r = g_env_light.mColBgColRatio * (maple_color.r * var_f31);

                var_f31 = (sp18.g * g_env_light.mColBgColRatio) / 10.0f;
                var_f31 *= var_f31;
                if (var_f31 > 1.0f) {
                    var_f31 = 1.0f;
                }
                sp18.g = g_env_light.mColBgColRatio * (maple_color.g * var_f31);
                
                var_f31 = (sp18.b * g_env_light.mColBgColRatio) / 10.0f;
                var_f31 *= var_f31;
                if (var_f31 > 1.0f) {
                    var_f31 = 1.0f;
                }
                sp18.b = g_env_light.mColBgColRatio * (maple_color.b * var_f31);

                material->setAmbColor(0, &sp18);

                for (int i = 0; i < 6; i++) {
                    if (i <= 1) {
                        J3DLightInfo* var_r28;
                        if (i == 0) {
                            kankyo->field_0xf50[i].field_0x0 = tevstr->mLights[i];

                            J3DLightInfo* sp8 = &kankyo->field_0xf50[1].field_0x0.getLightInfo();
                            var_r28 = &kankyo->field_0xf50[i].field_0x0.getLightInfo();
                            sp8->mColor = var_r28->mColor;
                        } else {
                            var_r28 = &kankyo->field_0xf50[i].field_0x0.getLightInfo();
                        }

                        color_RGB_class maple_color;
                        maple_color.r = dKyd_maple_col_getp()[(g_env_light.mPondSeason + (i * 4))].r;
                        maple_color.g = dKyd_maple_col_getp()[(g_env_light.mPondSeason + (i * 4))].g;
                        maple_color.b = dKyd_maple_col_getp()[(g_env_light.mPondSeason + (i * 4))].b;

                        var_f31 = var_r28->mColor.r / 95.0f;
                        var_f31 *= var_f31;
                        if (var_f31 > 1.0f) {
                            var_f31 = 1.0f;
                        }
                        var_r28->mColor.r = maple_color.r;
                        var_r28->mColor.r *= var_f31;

                        var_f31 = var_r28->mColor.g / 95.0f;
                        var_f31 *= var_f31;
                        if (var_f31 > 1.0f) {
                            var_f31 = 1.0f;
                        }
                        var_r28->mColor.g = maple_color.g;
                        var_r28->mColor.g *= var_f31;

                        var_f31 = var_r28->mColor.b / 95.0f;
                        var_f31 *= var_f31;
                        if (var_f31 > 1.0f) {
                            var_f31 = 1.0f;
                        }
                        var_r28->mColor.b = maple_color.b;
                        var_r28->mColor.b *= var_f31;

                        material->setLight(i + 2, &kankyo->field_0xf50[i].field_0x0);
                    } else {
                        material->setLight(i + 2, &tevstr->mLights[i]);
                    }
                }
            }
        }

        if (material->getFog() != NULL) {
            J3DFogInfo* fog_info = material->getFog()->getFogInfo();
            if (fog_info->mType != 0) {
                fog_info->mStartZ = tevstr->mFogStartZ;
                fog_info->mEndZ = tevstr->mFogEndZ;

                if (dComIfGd_getView() != NULL) {
                    fog_info->mNearZ = dComIfGd_getView()->near;
                    fog_info->mFarZ = dComIfGd_getView()->far;
                }

                if (fog_info->mType == 7) {
                    fog_info->mType = 2;
                    fog_info->mColor.r = 0;
                    fog_info->mColor.g = 0;
                    fog_info->mColor.b = 0;
                } else if (fog_info->mType == 6) {
                    fog_info->mColor.r = 0xFF;
                    fog_info->mColor.g = 0xFF;
                    fog_info->mColor.b = 0xFF;
                } else {
                    fog_info->mColor.r = tevstr->FogCol.r;
                    fog_info->mColor.g = tevstr->FogCol.g;
                    fog_info->mColor.b = tevstr->FogCol.b;
                }

                fog_info->mAdjEnable = g_env_light.mFogAdjEnable;
                if (fog_info->mAdjEnable == 1) {
                    fog_info->mCenter = g_env_light.mFogAdjCenter;
                    memcpy(&fog_info->mFogAdjTable, &g_env_light.mXFogTbl, sizeof(GXFogAdjTable));
                }
            }
        }
    }
}

/* 801A4C10-801A4DA0 19F550 0190+00 1/1 0/0 0/0 .text
 * dKy_cloudshadow_scroll__FP12J3DModelDataP12dKy_tevstr_ci     */
static void dKy_cloudshadow_scroll(J3DModelData* i_modelData, dKy_tevstr_c* i_tevstr, int param_2) {
    JUTNameTab* mat_nametbl = i_modelData->getMaterialName();

    for (int i = i_modelData->getMaterialNum() - 1; i >= 0; i--) {
        J3DMaterial* mat_p = i_modelData->getMaterialNodePointer(i);

        int tmp = param_2;
        if (i_tevstr->Material_id != 0 && i_tevstr->Material_id == i) {
            tmp = 2;
        }

        setLightTevColorType_MAJI_sub(mat_p, i_tevstr, tmp);

        const char* mat_name = mat_nametbl->getName(i);
        if ((mat_name[3] == 'M' && mat_name[4] == 'A' && mat_name[5] == '0' &&
             (mat_name[6] == '0' || mat_name[6] == '1')) ||
            (mat_name[5] == '1' && mat_name[6] == '6'))
        {
            if (mat_name[6] == '0') {
                J3DGXColor k_color;
                k_color.r = g_env_light.mFogDensity;
                k_color.g = 0;
                k_color.b = 0;
                k_color.a = 0;
                mat_p->setTevKColor(1, &k_color);
            }

            if (mat_p->getTexGenBlock()->getTexMtx(1) != NULL) {
                J3DTexMtxInfo* tex_mtx_inf =
                    &mat_p->getTexGenBlock()->getTexMtx(1)->getTexMtxInfo();

                if (tex_mtx_inf != NULL && g_env_light.mpVrkumoPacket != NULL) {
                    tex_mtx_inf->mSRT.mTranslationX = g_env_light.mpVrkumoPacket->field_0x1150;
                    tex_mtx_inf->mSRT.mTranslationY = g_env_light.mpVrkumoPacket->field_0x1154;
                }
            }
        }
    }
}

/* 801A4DA0-801A4E90 19F6E0 00F0+00 0/0 18/18 536/536 .text
 * setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c */
void dScnKy_env_light_c::setLightTevColorType_MAJI(J3DModelData* i_modelData,
                                                   dKy_tevstr_c* i_tevstr) {
    if (i_tevstr->Material_use_fg != 124) {
        if (i_tevstr->Material_use_fg != 123) {
            dKy_tevstr_init(i_tevstr, dComIfGp_roomControl_getStayNo(), 0xFF);
        }

        settingTevStruct(11, NULL, i_tevstr);
    }

    dKy_setLight_nowroom_actor(i_tevstr);

    int tmp;
    if (i_tevstr->Type > 10 && i_tevstr->Type != 12 && i_tevstr->Type != 13) {
        tmp = 0;
    } else {
        tmp = 1;
    }

    if (i_tevstr->Type & 0x20) {
        dKy_cloudshadow_scroll(i_modelData, i_tevstr, tmp);
    } else {
        for (int i = i_modelData->getMaterialNum() - 1; i >= 0; i--) {
            setLightTevColorType_MAJI_sub(i_modelData->getMaterialNodePointer(i), i_tevstr, tmp);
        }
    }
}

/* 801A4E90-801A4F24 19F7D0 0094+00 1/1 0/0 0/0 .text CalcTevColor__18dScnKy_env_light_cFv */
void dScnKy_env_light_c::CalcTevColor() {
    fopAc_ac_c* player_p = dComIfGp_getPlayer(0);

    if (player_p != NULL) {
        mPlayerEfLightIdx = dKy_eflight_influence_id(player_p->current.pos, 0);
        mPlayerPLightIdx = dKy_light_influence_id(player_p->current.pos, 0);
    }
}

/* 801A4F24-801A4F64 19F864 0040+00 1/1 0/0 0/0 .text            Sndpos__18dScnKy_env_light_cFv */
void dScnKy_env_light_c::Sndpos() {
    if (mSound.field_0x10 != 0) {
        mSound.field_0x10--;
        if (mSound.field_0x10 == 0) {
            dKy_Sound_init();
        }
    }
}

/* 801A4F64-801A516C 19F8A4 0208+00 1/1 0/0 0/0 .text Eflight_flush_proc__18dScnKy_env_light_cFv
 */
void dScnKy_env_light_c::Eflight_flush_proc() {
    struct flush_info {
        u8 start_frame;
        u8 r;
        u8 g;
        u8 b;
    };

    f32 power;
    f32 fluctuation;
    flush_info* info;

    if (mSwordLight.mLightType == 0) {
        static flush_info flush_col[] = {
            1,  0x00, 0x00, 0x00,
            4,  0x43, 0x73, 0x58,
            10, 0x25, 0x3E, 0x2D,
            20, 0x00, 0x00, 0x00,
        };

        info = flush_col;
        fluctuation = 100.0f;
        power = 120.0f;
    } else if (mSwordLight.mLightType == 1) {
        static flush_info flush_col2[] = {
            1,  0x00, 0x00, 0x00,
            4,  0x6E, 0x5A, 0x00,
            8,  0x4B, 0x22, 0x00,
            15, 0x00, 0x00, 0x00,
        };

        info = flush_col2;
        fluctuation = 0.0f;
        power = 120.0f;
    } else {
        static flush_info flush_col3[] = {
            1,  0x00, 0x00, 0x00,
            4,  0x46, 0x4D, 0x43,
            15, 0x22, 0x1E, 0x00,
            20, 0x00, 0x00, 0x00,
        };

        info = flush_col3;
        fluctuation = 100.0f;
        power = 80.0f;
    }

    switch (mSwordLight.mState) {
    case 0:
        break;
    case 1:
        mSwordLight.mFrame = 0;
        mSwordLight.field_0x8.mColor.r = info[0].r;
        mSwordLight.field_0x8.mColor.g = info[0].g;
        mSwordLight.field_0x8.mColor.b = info[0].b;
        mSwordLight.field_0x8.mPow = power;
        mSwordLight.field_0x8.mFluctuation = fluctuation;

        dKy_efplight_set(&mSwordLight.field_0x8);
        mSwordLight.mState++;
        break;
    case 2:
        for (int i = 0; i < 3; i++) {
            if (mSwordLight.mFrame >= info[i].start_frame && mSwordLight.mFrame <= info[i + 1].start_frame) {
                f32 ratio = 1.0f - (f32)(info[i + 1].start_frame - mSwordLight.mFrame) / (f32)(info[i + 1].start_frame - info[i].start_frame);
                
                mSwordLight.field_0x8.mColor.r = u8_data_ratio_set(info[i].r, info[i + 1].r, ratio);
                mSwordLight.field_0x8.mColor.g = u8_data_ratio_set(info[i].g, info[i + 1].g, ratio);
                mSwordLight.field_0x8.mColor.b = u8_data_ratio_set(info[i].b, info[i + 1].b, ratio);
                break;
            }
        }

        if (mSwordLight.mFrame > info[3].start_frame) {
            mSwordLight.mState++;
        }

        mSwordLight.mFrame++;
        break;
    case 3:
        dKy_efplight_cut(&mSwordLight.field_0x8);
        mSwordLight.mState = 0;
        break;
    case 4:
        dKy_efplight_cut(&mSwordLight.field_0x8);
        mSwordLight.mState = 1;
        break;
    }
}

/* 80450700-80450704 000180 0002+02 2/2 0/0 0/0 .sdata           lightMask */
static u16 lightMask = 0x0001;

/* 80450704-80450708 -00001 0004+00 3/3 0/0 0/0 .sdata           lightStatusPt */
static LightStatus* lightStatusPt = lightStatusData;

/* 801A516C-801A5288 19FAAC 011C+00 1/1 0/0 0/0 .text SetBaseLight__18dScnKy_env_light_cFv */
void dScnKy_env_light_c::SetBaseLight() {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    camera_class* camera = (camera_class*)dComIfGp_getCamera(0);

    if (dKy_SunMoon_Light_Check() == TRUE) {
        f32 daytime = g_env_light.getDaytime();
        if (daytime > 67.5f && daytime < 292.5f) {
            mBaseLightInfluence.mPosition = kankyo->mSunPos2;
        } else if (camera != NULL) {
            mBaseLightInfluence.mPosition = camera->lookat.eye + kankyo->mMoonPos;
        } else {
            mBaseLightInfluence.mPosition = kankyo->mMoonPos;
        }
    } else {
        mBaseLightInfluence.mPosition = lightStatusPt[2].field_0x0;
    }

    mBaseLightInfluence.mColor.r = 0xFF;
    mBaseLightInfluence.mColor.g = 0xFF;
    mBaseLightInfluence.mColor.b = 0xFF;
    mBaseLightInfluence.mColor.a = 0xFF;
    mBaseLightInfluence.mPow = 0.0f;
    mBaseLightInfluence.mFluctuation = 0.0f;
}

/* 801A5288-801A56DC 19FBC8 0454+00 1/1 0/0 0/0 .text            exeKankyo__18dScnKy_env_light_cFv
 */
// NONMATCHING - single regswap
void dScnKy_env_light_c::exeKankyo() {
    for (int i = 0; i < 6; i++) {
        field_0x0c18[i].field_0x26 = 0;

        if (field_0x0d58[i].field_0x26 != 0) {
            field_0x0d58[i].field_0x26 = 0;
            dKy_BossLight_set(&field_0x0d58[i].mPos, &field_0x0d58[i].mColor,
                              field_0x0d58[i].mRefDistance, 0);
        }
    }

    g_env_light.mColPatMode = g_env_light.mColPatModeGather;

    if (dComIfGp_event_runCheck() == false && g_env_light.mColPatModeGather != 0) {
        if (g_env_light.mColPatModeGather >= 3) {
            g_env_light.mColPatModeGather = 0;
        } else {
            g_env_light.mColPatModeGather++;
        }
    }

    if (g_env_light.mColPatMode != 0) {
        if (g_env_light.mColpatPrevGather != 0xFF) {
            g_env_light.wether_pat0 = g_env_light.mColpatPrevGather;

            if (g_env_light.mColPatModeGather == 0) {
                g_env_light.mColpatPrevGather = 0xFF;
            }
        }

        if (g_env_light.mColpatCurrGather != 0xFF) {
            g_env_light.wether_pat1 = g_env_light.mColpatCurrGather;

            if (g_env_light.mColPatModeGather == 0) {
                g_env_light.mColpatCurrGather = 0xFF;
            }
        }

        if (g_env_light.mColPatBlendGather >= 0.0f) {
            g_env_light.pat_ratio = g_env_light.mColPatBlendGather;

            if (g_env_light.mColPatModeGather == 0) {
                g_env_light.mColPatBlendGather = -1.0f;
            }
        }
    } else if (g_env_light.wether_pat0 == g_env_light.wether_pat1) {
        if (g_env_light.mColpatPrevGather != 0xFF) {
            g_env_light.wether_pat0 = g_env_light.mColpatPrevGather;
            g_env_light.mColpatPrevGather = 0xFF;
        }

        if (g_env_light.mColpatCurrGather != 0xFF) {
            g_env_light.wether_pat1 = g_env_light.mColpatCurrGather;
            g_env_light.mColpatCurrGather = 0xFF;
            g_env_light.mColpatWeather = g_env_light.wether_pat1;
        }

        if (g_env_light.mColPatBlendGather >= 0.0f) {
            g_env_light.pat_ratio = g_env_light.mColPatBlendGather;
            g_env_light.mColPatBlendGather = -1.0f;
        }
    }

    g_env_light.field_0x1210 = g_env_light.field_0x122c;

    cLib_addCalc(&g_env_light.mColAllcolRatio, g_env_light.mAllcolRatio, 0.5f, 0.25f, 0.01f);
    cLib_addCalc(&g_env_light.mColActColRatio, g_env_light.mActcolRatio, 0.5f, 0.25f, 0.01f);
    cLib_addCalc(&g_env_light.mColBgColRatio, g_env_light.mBgcolRatio * g_env_light.field_0x1210,
                 0.5f, 0.25f, 0.01f);
    cLib_addCalc(&g_env_light.mColFogColRatio, g_env_light.mFogcolRatio * g_env_light.field_0x1210,
                 0.5f, 0.25f, 0.01f);
    cLib_addCalc(&g_env_light.mColVrboxSoraColRatio,
                 g_env_light.mVrboxSoracolRatio * g_env_light.field_0x1210, 0.5f, 0.25f, 0.01f);
    cLib_addCalc(&g_env_light.mColVrboxKumocolRatio,
                 g_env_light.mVrboxKumocolRatio * g_env_light.field_0x1210, 0.5f, 0.25f, 0.01f);

    g_env_light.mAllcolRatio = 1.0f;
    g_env_light.mActcolRatio = 1.0f;
    g_env_light.mBgcolRatio = 1.0f;
    g_env_light.mFogcolRatio = 1.0f;
    g_env_light.mVrboxSoracolRatio = 1.0f;
    g_env_light.mVrboxKumocolRatio = 1.0f;
    g_env_light.field_0x122c = 1.0f;
    g_env_light.field_0x126c = g_env_light.field_0x1268;
    g_env_light.field_0x1268 = 999999.9f;

    for (int i = 50; i < 100; i++) {
        g_env_light.mPointLight[i] = NULL;
    }

    g_env_light.field_0x130b = 0;

    setDaytime();
    dKyw_wether_proc();
    CalcTevColor();
    Sndpos();
    Eflight_flush_proc();

    daPy_py_c* player_p = (daPy_py_c*)dComIfGp_getPlayer(0);
    if (player_p != NULL) {
        cXyz* flame_pos_p = player_p->getKandelaarFlamePos();

        if (flame_pos_p != NULL) {
            g_env_light.field_0x10a0 = *flame_pos_p;
            dKy_shadow_mode_set(2);
        } else if (dKy_shadow_mode_check(2)) {
            dKy_shadow_mode_reset(2);
        }
    }

    if (strcmp(dComIfGp_getStartStageName(), "R_SP127") == 0) {
        if ((dCam_getBody()->Mode() == 4 || dCam_getBody()->Mode() == 7) &&
            dComIfGp_event_runCheck())
        {
            cLib_addCalc(&g_env_light.mDemoAttentionPoint, 0.0f, 0.5f, 0.1f, 1E-05f);
        } else {
            cLib_addCalc(&g_env_light.mDemoAttentionPoint, 0.11f, 0.5f, 0.1f, 1E-05f);
        }
    }
}

/* 801A56DC-801A572C 1A001C 0050+00 1/1 0/0 0/0 .text            drawKankyo__18dScnKy_env_light_cFv
 */
void dScnKy_env_light_c::drawKankyo() {
    setSunpos();
    SetBaseLight();
    setLight();
    dKy_setLight_nowroom(g_env_light.PrevCol);
}

/* 801A572C-801A5B6C 1A006C 0440+00 0/0 1/1 0/0 .text            dKy_undwater_filter_draw__Fv */
void dKy_undwater_filter_draw() {
    camera_class* camera = (camera_class*)dComIfGp_getCamera(0);
    cXyz size;

    static cXyz S_old_cameye(0.0f, 0.0f, 0.0f);
    static cXyz S_old_camctr(0.0f, 0.0f, 0.0f);

    if (dKy_camera_water_in_status_check()) {
        f32 dist_to_old = camera->lookat.eye.abs(S_old_cameye);
        if (dist_to_old > 100.0f) {
            dist_to_old = 100.0f;
        }

        if (g_env_light.field_0x1258 > 1.0f - (dist_to_old / 100.0f)) {
            cLib_addCalc(&g_env_light.field_0x1258, 1.0f - (dist_to_old / 100.0f), 0.5f, 0.05f, 0.0001f);
        }

        dist_to_old = camera->lookat.center.abs(S_old_camctr);
        if (dist_to_old > 100.0f) {
            dist_to_old = 100.0f;
        }

        if (g_env_light.field_0x1258 > 1.0f - (dist_to_old / 100.0f)) {
            cLib_addCalc(&g_env_light.field_0x1258, 1.0f - (dist_to_old / 100.0f), 0.5f, 0.05f, 0.0001f);
        }

        S_old_cameye = camera->lookat.eye;
        S_old_camctr = camera->lookat.center;

        mDoMtx_stack_c::transS(0.0f, 0.0f, 0.0f);

        size.x = 0.00524f;
        size.y = 0.00524f;
        size.z = 0.00524f;

        if (g_env_light.mpUndwaterEfModel != NULL) {
            J3DGXColor sp8;
            g_env_light.mpUndwaterEfModel->setBaseScale(size);
            g_env_light.mpUndwaterEfModel->setBaseTRMtx(mDoMtx_stack_c::get());

            if (g_env_light.mpUndwaterBtk != NULL) {
                g_env_light.mpUndwaterBtk->setPlaySpeed(2.0f + (35.0f * (1.0f - g_env_light.field_0x1258)));
                g_env_light.mpUndwaterBtk->entry(g_env_light.mpUndwaterEfModel->getModelData());
                g_env_light.mpUndwaterBtk->play();

                dComIfGd_setXluList2DScreen();
                mDoExt_modelUpdateDL(g_env_light.mpUndwaterEfModel);
                dComIfGd_setList();
            }
        }
    }
}

/* 801A5B6C-801A5B98 1A04AC 002C+00 1/0 0/0 0/0 .text            dKy_Draw__FP17sub_kankyo__class */
static int dKy_Draw(sub_kankyo__class* i_this) {
    g_env_light.drawKankyo();
    return 1;
}

/* 801A5B98-801A5BCC 1A04D8 0034+00 1/0 0/0 0/0 .text            dKy_Execute__FP17sub_kankyo__class
 */
static int dKy_Execute(sub_kankyo__class* i_this) {
    g_env_light.exeKankyo();
    dKyw_wind_set();
    dKy_twilight_camelight_set();
    return 1;
}

/* 801A5BCC-801A5BD4 1A050C 0008+00 1/0 0/0 0/0 .text            dKy_IsDelete__FP17sub_kankyo__class
 */
static int dKy_IsDelete(sub_kankyo__class* i_this) {
    return 1;
}

/* 801A5BD4-801A5C1C 1A0514 0048+00 1/0 0/0 0/0 .text            dKy_Delete__FP17sub_kankyo__class
 */
static int dKy_Delete(sub_kankyo__class* i_this) {
    plight_init();
    mDoAud_mEnvse_resetScene();

    if (g_env_light.mpUndwaterEfHeap != NULL) {
        mDoExt_destroySolidHeap(g_env_light.mpUndwaterEfHeap);
    }

    return 1;
}

/* 801A5C1C-801A5E54 1A055C 0238+00 1/0 0/0 0/0 .text            dKy_Create__FPv */
static int dKy_Create(void* i_this) {
    BOOL setNextTime = false;
    stage_envr_info_class* envr = dComIfGp_getStageEnvrInfo();
    if (envr != NULL && dComIfGp_getStartStageRoomNo() != -1) {
        if (envr[dComIfGp_getStartStageRoomNo()].m_pselectID[0x40] != 0) {
            mDoGph_gInf_c::getBloom()->create();
        }
    }

    envcolor_init();
    g_env_light.field_0x12b0 = 0;
    g_env_light.field_0x1254 = 1.0f;
    g_env_light.mPLightNearPos.x = 0.0f;
    g_env_light.mPLightNearPos.y = 0.0f;
    g_env_light.mPLightNearPos.z = 0.0f;
    g_env_light.field_0xf3c = 0;
    g_env_light.field_0xf40 = 0.0f;
    g_env_light.field_0xf3d = 0;

    dKy_setLight_init();
    dKy_Sound_init();
    dKyw_wind_set();
    dungeonlight_init();
    dKy_setLight_nowroom(dComIfGp_roomControl_getStayNo());

    g_env_light.mResPolEfftbl = (dKy_pol_efftbl_struct*)dComIfG_getStageRes("pol_efftbl.dat");
    g_env_light.mResPolEffcol = (dKy_pol_effcol_struct*)dComIfG_getStageRes("pol_effcol.dat");
    g_env_light.mResPolEfftbl2 = (dKy_pol_efftbl_struct*)dComIfG_getStageRes("pol_efftbl2.dat");
    g_env_light.mResPolEffcol2 = (dKy_pol_effcol_struct*)dComIfG_getStageRes("pol_effcol2.dat");
    g_env_light.mResPolSound = (dKy_pol_sound_struct*)dComIfG_getStageRes("pol_sound.dat");
    g_env_light.mResPolArg = (dKy_pol_arg_struct*)dComIfG_getStageRes("pol_arg.dat");
    g_env_light.mResColorDataTbl = (dKy_color_data_struct*)dComIfG_getStageRes("colordata_tbl.dat");

    if (g_env_light.mNexttime != -1.0f) {
        setNextTime = true;
        dComIfGs_setTime(g_env_light.mNexttime);
    }

    if (dKy_darkworld_check()) {
        if (g_env_light.mTime == -1.0f) {
            g_env_light.mTime = dComIfGs_getTime();
        }
    } else if (g_env_light.mTime != -1.0f) {
        if (!setNextTime) {
            dComIfGs_setTime(g_env_light.mTime);
        }
        g_env_light.mTime = -1.0f;
    }

    g_env_light.mNexttime = -1.0f;
    return cPhs_COMPLEATE_e;
}

/* 801A5E54-801A60BC 1A0794 0268+00 1/1 1/1 0/0 .text            dKy_setLight_init__Fv */
void dKy_setLight_init() {
    for (int i = 0; i < 8; i++) {
        lightStatusData[i] = lightStatusBase;
    }
}

/* 801A60BC-801A60E0 1A09FC 0024+00 0/0 1/1 0/0 .text            dKy_setLight__Fv */
void dKy_setLight() {
    g_env_light.mSunPos2 = g_env_light.mSunPos;
}

/* 801A60E0-801A61F4 1A0A20 0114+00 2/2 0/0 0/0 .text            dKy_GlobalLight_set__Fv */
static void dKy_GlobalLight_set() {
    MtxP view_mtx = j3dSys.getViewMtx();

    for (int i = 0; i < 8; i++) {
        LightStatus* light_status = &lightStatusData[i];

        Vec light_pos;
        cMtx_multVec(view_mtx, &light_status->field_0x0, &light_pos);

        GXLightObj light_obj;
        GXInitLightPos(&light_obj, light_pos.x, light_pos.y, light_pos.z);
        GXInitLightDir(&light_obj, light_status->mLightDir.x, light_status->mLightDir.y,
                       light_status->mLightDir.z);
        GXInitLightColor(&light_obj, light_status->field_0x18);

        if (light_status->mRefDist <= 0.0f) {
            light_status->mRefDist = 1.0E-6f;
        }

        GXInitLightDistAttn(&light_obj, light_status->mRefDist, light_status->mRefBrightness,
                            light_status->mDistFn);
        GXInitLightSpot(&light_obj, light_status->mCutoff, light_status->mSpotFn);
        GXLoadLightObjImm(&light_obj, (GXLightID)lightMaskData[i]);
    }
}

inline u8 dLVI_getSWLight(stage_pure_lightvec_info_class* i_info) {
    return i_info->field_0x1e & 0x80;
}

/* 801A61F4-801A6278 1A0B34 0084+00 3/3 0/0 0/0 .text
 * dKy_lightswitch_check__FP30stage_pure_lightvec_info_classc   */
static BOOL dKy_lightswitch_check(stage_pure_lightvec_info_class* param_0, char i_roomNo) {
    BOOL var_r31 = TRUE;
    if (param_0->field_0x1f != 0xFF) {
        if (!dLVI_getSWLight(param_0)) {
            if (dComIfGs_isSwitch(param_0->field_0x1f, i_roomNo)) {
                var_r31 = FALSE;
            }
        } else if (!dComIfGs_isSwitch(param_0->field_0x1f, i_roomNo)) {
            var_r31 = FALSE;
        }
    }

    return var_r31;
}

/* 801A6278-801A6C20 1A0BB8 09A8+00 2/2 0/0 0/0 .text            dKy_setLight_nowroom_common__Fcf */
// NONMATCHING - some issues with lightStatusPt loads
static void dKy_setLight_nowroom_common(char param_0, f32 param_1) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    camera_class* camera = (camera_class*)dComIfGp_getCamera(0);
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);
    MtxP view_mtx = j3dSys.getViewMtx();
    dKy_tevstr_c* room_tevstr = dComIfGp_roomControl_getTevStr(param_0);

    if (dComIfGp_roomControl_getStatusRoomDt(param_0) != NULL) {
        stage_pure_lightvec_info_class* room_light_info = dComIfGp_roomControl_getStatusRoomDt(param_0)->mRoomDt.getLightVecInfo();
        int room_light_info_num = dComIfGp_roomControl_getStatusRoomDt(param_0)->mRoomDt.getLightVecInfoNum();
        if (room_light_info_num > 6) {
            room_light_info_num = 6;
        }

        lightMask = 0;

        for (int i = 0; i < room_light_info_num; i++) {
            if (room_light_info != NULL) {
                lightMask |= lightMaskData[i + 2];
            }
            room_light_info++;
        }

        room_light_info = dComIfGp_roomControl_getStatusRoomDt(param_0)->mRoomDt.getLightVecInfo();
        if (dKy_SunMoon_Light_Check() == TRUE && room_light_info == NULL) {
            lightMask |= lightMaskData[2];
            lightMask |= lightMaskData[3];
            room_light_info_num = 2;
        }

        if (g_env_light.mBGpartsActiveLight[0].mIndex != 0) {
            lightMask |= 1;
        }

        if (g_env_light.mBGpartsActiveLight[1].mIndex != 0) {
            lightMask |= 2;
        }

        if (camera != 0) {
            int sp38 = dKy_eflight_influence_id(camera->lookat.eye, 0);
            if (sp38 >= 0) {
                dKy_bgparts_activelight_set(g_env_light.mEfPLight[sp38], 1);
                if (dKy_Indoor_check() == TRUE) {
                    g_env_light.field_0x10a0 = g_env_light.mEfPLight[sp38]->mPosition;
                    dKy_shadow_mode_set(1);
                }
            } else {
                dKy_bgparts_activelight_cut(1);
                if (dKy_shadow_mode_check(1)) {
                    dKy_shadow_mode_reset(1);
                }
            }
        }

        for (int i = 0; i < 2; i++) {
            if (g_env_light.mBGpartsActiveLight[i].mIndex != 0 && 0.0f != g_env_light.mBGpartsActiveLight[i].mPow && (i != 1 || dMeter2Info_getWindowStatus() != 3)) {
                lightStatusPt[i].field_0x0 = g_env_light.mBGpartsActiveLight[i].mPosition;

                if (i == 0) {
                    lightStatusPt[i].mRefDist = g_env_light.mBGpartsActiveLight[i].mPow * 0.01f;
                } else {
                    lightStatusPt[i].mRefDist = g_env_light.mBGpartsActiveLight[i].mPow * 0.01f;
                }

                lightStatusPt[i].mRefBrightness = 0.99999f;
                lightStatusPt[i].field_0x1c = 1;
                lightStatusPt[i].mDistFn = GX_DA_STEEP;
                lightStatusPt[i].mSpotFn = GX_SP_OFF;
                lightStatusPt[i].field_0x18.r = g_env_light.mBGpartsActiveLight[i].mColor.r;
                lightStatusPt[i].field_0x18.g = g_env_light.mBGpartsActiveLight[i].mColor.g;
                lightStatusPt[i].field_0x18.b = g_env_light.mBGpartsActiveLight[i].mColor.b;
            } else {
                lightStatusPt[i].field_0x18.r = 0;
                lightStatusPt[i].field_0x18.g = 0;
                lightStatusPt[i].field_0x18.b = 0;
            }
        }

        for (int i = 0; i < 6; i++) {
            if (room_light_info != 0) {
                if (i < room_light_info_num) {
                    lightStatusPt[i + 2].field_0x0.x = room_light_info[i].m_position.x;
                    lightStatusPt[i + 2].field_0x0.y = room_light_info[i].m_position.y;
                    lightStatusPt[i + 2].field_0x0.z = room_light_info[i].m_position.z;

                    if (dKy_lightswitch_check(&room_light_info[i], param_0) == TRUE) {
                        lightStatusPt[i + 2].mRefDist = room_light_info[i].m_radius;
                    } else {
                        lightStatusPt[i + 2].mRefDist = 0.000001f;
                    }

                    lightStatusPt[i + 2].mRefBrightness = 0.99999f;
                    lightStatusPt[i + 2].field_0x1c = 0;
                    lightStatusPt[i + 2].mSpotFn = (GXSpotFn)room_light_info[i].field_0x1c;
                    lightStatusPt[i + 2].mDistFn = (GXDistAttnFn)room_light_info[i].field_0x1d;
                    lightStatusPt[i + 2].mCutoff = room_light_info[i].m_spotCutoff;
                    dKy_lightdir_set(room_light_info[i].m_directionX, room_light_info[i].m_directionY, &lightStatusPt[i + 2].mLightDir);
                } else {
                    lightStatusPt[i + 2].mRefDist = 0.0f;
                    lightStatusPt[i + 2].mRefBrightness = 0.99999f;
                    lightStatusPt[i + 2].field_0x1c = 0;
                    lightStatusPt[i + 2].mDistFn = GX_DA_OFF;
                    lightStatusPt[i + 2].mSpotFn = GX_SP_OFF;
                    lightStatusPt[i + 2].mCutoff = 90.0f;
                }
            }

            if (dKy_SunMoon_Light_Check() == TRUE && i <= 1) {
                lightMask |= lightMaskData[2];
                lightMask |= lightMaskData[3];

                if (i == 0) {
                    lightStatusPt[i + 2].field_0x0 = kankyo->mSunPos;
                } else if (camera != 0) {
                    lightStatusPt[i + 2].field_0x0 = camera->lookat.eye + kankyo->mMoonPos;
                } else {
                    lightStatusPt[i + 2].field_0x0 = kankyo->mMoonPos;
                }

                lightStatusPt[i + 2].mRefDist = 10000.0f;
                lightStatusPt[i + 2].mRefBrightness = 0.99999f;
                lightStatusPt[i + 2].field_0x1c = 1;
                lightStatusPt[i + 2].mDistFn = GX_DA_STEEP;
                lightStatusPt[i + 2].mSpotFn = GX_SP_OFF;
            }

            if (lightMask & lightMaskData[i + 2]) {
                if (room_tevstr == NULL) {
                    JUT_ASSERT(12633, 0);
                }

                J3DLightInfo* room_light = &room_tevstr->mLights[i].getLightInfo();
                if (room_light != NULL) {
                    lightStatusPt[i + 2].field_0x18 = dKy_light_influence_col(&room_light->mColor, param_1);
                } else {
                    lightStatusPt[i + 2].field_0x18 = dKy_light_influence_col(&g_env_light.mDungeonLights[i].mColor, param_1);
                }

                if (param_0 == dComIfGp_roomControl_getStayNo() && room_light_info != NULL && i < room_light_info_num) {
                    g_env_light.mDungeonLights[i].mPosition = lightStatusPt[i + 2].field_0x0;
                    g_env_light.mDungeonLights[i].mRefDistance = lightStatusPt[i + 2].mRefDist;
                    g_env_light.mDungeonLights[i].mCutoffAngle = lightStatusPt[i + 2].mCutoff;
                    g_env_light.mDungeonLights[i].mAngleAttenuation = lightStatusPt[i + 2].mSpotFn;
                    g_env_light.mDungeonLights[i].mDistAttenuation = lightStatusPt[i + 2].mDistFn;
                    g_env_light.mDungeonLights[i].mAngleX = room_light_info[i].m_directionX;
                    g_env_light.mDungeonLights[i].mAngleY = room_light_info[i].m_directionY;
                }
            } else {
                lightStatusPt[i + 2].field_0x18.r = 0;
                lightStatusPt[i + 2].field_0x18.g = 0;
                lightStatusPt[i + 2].field_0x18.b = 0;
            }
        }

        for (int i = 0; i < 6; i++) {
            if (kankyo->field_0x0c18[i].field_0x26 == 1) {
                for (int j = 0; j < 6; j++) {
                    if (!(lightMask & lightMaskData[j + 2])) {
                        lightMask |= lightMaskData[j + 2];

                        if (kankyo->field_0x0c18[i].mColor.a == 0xFE || kankyo->field_0x0c18[i].mColor.a == 0xFD) {
                            dKy_twi_wolflight_set(i);
                        }

                        if (room_tevstr->Type < 16) {
                            lightStatusPt[j + 2].field_0x0.x = kankyo->field_0x0c18[i].mPos.x;
                            lightStatusPt[j + 2].field_0x0.y = kankyo->field_0x0c18[i].mPos.y;
                            lightStatusPt[j + 2].field_0x0.z = kankyo->field_0x0c18[i].mPos.z;
                        } else {
                            lightStatusPt[j + 2].field_0x0.x = kankyo->field_0x0c18[i].mPos.x;
                            if (i == 0) {
                                lightStatusPt[j + 2].field_0x0.y = kankyo->field_0x0c18[i].mPos.y + g_env_light.field_0x127c;
                            } else {
                                lightStatusPt[j + 2].field_0x0.y = 200.0f + kankyo->field_0x0c18[i].mPos.y;
                            }
                            lightStatusPt[j + 2].field_0x0.z = kankyo->field_0x0c18[i].mPos.z;
                        }

                        lightStatusPt[j + 2].field_0x18 = dKy_light_influence_col(&kankyo->field_0x0c18[i].mColor, param_1);
                        lightStatusPt[j + 2].mRefDist = kankyo->field_0x0c18[i].mRefDistance;
                        lightStatusPt[j + 2].mRefBrightness = 0.99999f;
                        lightStatusPt[j + 2].field_0x1c = 1;
                        lightStatusPt[j + 2].mSpotFn = (GXSpotFn)kankyo->field_0x0c18[i].mAngleAttenuation;
                        lightStatusPt[j + 2].mDistFn = (GXDistAttnFn)kankyo->field_0x0c18[i].mDistAttenuation;
                        lightStatusPt[j + 2].mCutoff = kankyo->field_0x0c18[i].mCutoffAngle;

                        dKy_lightdir_set(kankyo->field_0x0c18[i].mAngleX, kankyo->field_0x0c18[i].mAngleY, &lightStatusPt[j + 2].mLightDir);
                        break;
                    }
                }
            }
        }

        dKy_GlobalLight_set();
    }
}

/* 801A6C20-801A6C58 1A1560 0038+00 2/2 1/1 0/0 .text            dKy_setLight_nowroom__Fc */
void dKy_setLight_nowroom(char param_0) {
    if (dComIfGp_getCamera(0) != NULL) {
        dKy_setLight_nowroom_common(param_0, 1.0f);
    }
}

/* 801A6C58-801A6D4C 1A1598 00F4+00 0/0 1/1 2/2 .text            dKy_setLight_nowroom_grass__Fcf */
// NONMATCHING - weird branching
void dKy_setLight_nowroom_grass(char param_0, f32 param_1) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    camera_class* camera = (camera_class*)dComIfGp_getCamera(0);
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);
    MtxP view_mtx = j3dSys.getViewMtx();

    if (dComIfGp_roomControl_getStatusRoomDt(param_0) != NULL) {
        dStage_FileList_dt_c* filelist = dComIfGp_roomControl_getStatusRoomDt(param_0)->mRoomDt.getFileListInfo();
        if (filelist == NULL) {
            return;
        }
        
        int var_r31 = dStage_FileList_dt_GRASSLIGHT(filelist);

        f32 var_f31;
        if (var_r31 >= 0xFF) {
            var_f31 = 1.0f;
        } else {
            var_f31 = var_r31 / 100.0f;
        }

        if (param_1 == 0.0f) {
            dKy_setLight_nowroom_common(param_0, var_f31);
        } else {
            dKy_setLight_nowroom_common(param_0, param_1);
        }
    }
}

/* 801A6D4C-801A6E9C 1A168C 0150+00 1/1 1/1 0/0 .text dKy_move_room_ratio__FP12dKy_tevstr_cPSc */
f32 dKy_move_room_ratio(dKy_tevstr_c* param_0, s8* param_1) {
    f32 var_f31 = 1.0f;
    
    if (memcmp(dComIfGp_getStartStageName(), "D_MN", 4) == 0 && g_env_light.mColPatMode == 0 && g_env_light.mColPatModeGather == 0 && param_0->pat_ratio > 0.0f && param_0->pat_ratio < 1.0f) {
        if (param_0->pat_ratio < 0.5f) {
            if (param_0->YukaCol == 0xFF) {
                *param_1 = param_0->PrevCol;
                var_f31 = fabsf(2.0f * (0.5f - param_0->pat_ratio));
            } else {
                *param_1 = param_0->room_no;
                var_f31 = fabsf(2.0f * (param_0->pat_ratio - 0.5f));
            }
        } else {
            *param_1 = param_0->room_no;
            var_f31 = fabsf(2.0f * (param_0->pat_ratio - 0.5f));
        }

        if (var_f31 <= 0.0f) {
            var_f31 = 0.000001f;
        }
    }

    return var_f31;
}

/* 801A6E9C-801A75C0 1A17DC 0724+00 1/1 1/1 0/0 .text dKy_setLight_nowroom_actor__FP12dKy_tevstr_c
 */
void dKy_setLight_nowroom_actor(dKy_tevstr_c* tevstr) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    Vec light_pos;
    Vec sp3C;
    camera_class* camera = (camera_class*)dComIfGp_getCamera(0);
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    MtxP view_mtx = j3dSys.getViewMtx();

    s8 room_no = tevstr->room_no;
    f32 var_f31 = 1.0f;

    if (tevstr->Type == 9 || tevstr->Type == 10) {
        var_f31 = dKy_move_room_ratio(tevstr, &room_no);
    }

    if (tevstr->Type == 14 || tevstr->Type == 12 || tevstr->Type == 13) {
        return;
    }

    if (dComIfGp_roomControl_getStatusRoomDt(room_no) != NULL) {
        J3DLightInfo* light;
        stage_pure_lightvec_info_class* room_lights = dComIfGp_roomControl_getStatusRoomDt(room_no)->mRoomDt.getLightVecInfo();
        int room_light_num = dComIfGp_roomControl_getStatusRoomDt(room_no)->mRoomDt.getLightVecInfoNum();
        if (room_light_num > 6) {
            room_light_num = 6;
        }

        lightMask = 0;

        for (int i = 0; i < room_light_num; i++) {
            if (room_lights != NULL) {
                lightMask |= lightMaskData[i + 2];
            }
            room_lights++;
        }

        room_lights = dComIfGp_roomControl_getStatusRoomDt(room_no)->mRoomDt.getLightVecInfo();

        for (int i = 0; i < 6; i++) {
            light = &tevstr->mLights[i].getLightInfo();
            if (view_mtx != NULL) {
                if (room_lights != 0 && i < room_light_num) {
                    sp3C.x = room_lights[i].m_position.x;
                    sp3C.y = room_lights[i].m_position.y;
                    sp3C.z = room_lights[i].m_position.z;

                    dKy_GXInitLightSpot(light, room_lights[i].m_spotCutoff, room_lights[i].field_0x1c);
                    
                    f32 var_f29;
                    if (dKy_lightswitch_check(&room_lights[i], room_no) == TRUE) {
                        var_f29 = var_f31 * room_lights[i].m_radius;
                    } else {
                        var_f29 = 0.000001f;
                    }

                    dKy_GXInitLightDistAttn(light, var_f29, 0.99999f, room_lights[i].field_0x1d);
                    dKy_lightdir_set(room_lights[i].m_directionX, room_lights[i].m_directionY, &light->mLightDirection);
                    light->mLightDirection.x = -light->mLightDirection.x;
                    light->mLightDirection.y = -light->mLightDirection.y;
                    light->mLightDirection.z = -light->mLightDirection.z;
                }

                if (dKy_SunMoon_Light_Check() == TRUE && i <= 1) {
                    lightMask |= lightMaskData[2];
                    lightMask |= lightMaskData[3];

                    if (i == 0) {
                        sp3C.x = kankyo->mSunPos.x;
                        sp3C.y = kankyo->mSunPos.y;
                        sp3C.z = kankyo->mSunPos.z;
                    } else if (camera != NULL) {
                        sp3C.x = camera->lookat.eye.x + kankyo->mMoonPos.x;
                        sp3C.y = camera->lookat.eye.y + kankyo->mMoonPos.y;
                        sp3C.z = camera->lookat.eye.z + kankyo->mMoonPos.z;
                    } else {
                        sp3C.x = kankyo->mMoonPos.x;
                        sp3C.y = kankyo->mMoonPos.y;
                        sp3C.z = kankyo->mMoonPos.z;
                    }

                    dKy_GXInitLightSpot(light, 90.0f, 0);
                    dKy_GXInitLightDistAttn(light, 10000.0f, 0.99999f, 3);
                }

                cMtx_multVec(view_mtx, &sp3C, &light_pos);
                light->mLightPosition = light_pos;

                if (1.0f != var_f31) {
                    light->mColor.r *= var_f31;
                    light->mColor.g *= var_f31;
                    light->mColor.b *= var_f31;
                }
            }

            if (!(lightMask & lightMaskData[i + 2])) {
                light->mColor.r = 0;
                light->mColor.g = 0;
                light->mColor.b = 0;
            }

            light = &tevstr->mLightObj.getLightInfo();
            if (1.0f != var_f31) {
                light->mColor.r *= var_f31;
                light->mColor.g *= var_f31;
                light->mColor.b *= var_f31;
            }
        }

        for (int i = 0; i < 6; i++) {
            if (kankyo->field_0x0c18[i].field_0x26 == 1 && view_mtx != NULL) {
                for (int j = 0; j < 6; j++) {
                    if (!(lightMask & lightMaskData[j + 2])) {
                        lightMask |= lightMaskData[j + 2];

                        light = &tevstr->mLights[j].getLightInfo();
                        if (kankyo->field_0x0c18[i].mColor.a == 0xFE || kankyo->field_0x0c18[i].mColor.a == 0xFD) {
                            dKy_twi_wolflight_set(i);
                        }

                        light->mColor = dKy_light_influence_col(&kankyo->field_0x0c18[i].mColor, tevstr->field_0x374);

                        if (tevstr->Type < 16) {
                            sp3C.x = kankyo->field_0x0c18[i].mPos.x;
                            sp3C.y = kankyo->field_0x0c18[i].mPos.y;
                            sp3C.z = kankyo->field_0x0c18[i].mPos.z;

                            if (kankyo->field_0x0c18[i].mColor.a == 0xFD) {
                                light->mColor.r = light->mColor.r * 0.65f;
                                light->mColor.g = light->mColor.g * 0.65f;
                                light->mColor.b = light->mColor.b * 0.65f;
                            }
                        } else {
                            sp3C.x = kankyo->field_0x0c18[i].mPos.x;
                            if (i == 0) {
                                sp3C.y = kankyo->field_0x0c18[i].mPos.y + g_env_light.field_0x127c;
                            } else {
                                sp3C.y = 200.0f + kankyo->field_0x0c18[i].mPos.y;
                            }
                            sp3C.z = kankyo->field_0x0c18[i].mPos.z;
                        }

                        dKy_GXInitLightSpot(light, kankyo->field_0x0c18[i].mCutoffAngle, kankyo->field_0x0c18[i].mAngleAttenuation);
                        f32 var_f30 = kankyo->field_0x0c18[i].mRefDistance * var_f31;
                        if (var_f30 <= 0.0f) {
                            var_f30 = 0.000001f;
                        }

                        dKy_GXInitLightDistAttn(light, var_f30, 0.99999f, kankyo->field_0x0c18[i].mDistAttenuation);
                        cMtx_multVec(view_mtx, &sp3C, &light_pos);
                        light->mLightPosition = light_pos;
                        
                        dKy_lightdir_set(kankyo->field_0x0c18[i].mAngleX, kankyo->field_0x0c18[i].mAngleY, &light->mLightDirection);
                        light->mLightDirection.x = -light->mLightDirection.x;
                        light->mLightDirection.y = -light->mLightDirection.y;
                        light->mLightDirection.z = -light->mLightDirection.z;
                        break;
                    }
                }
            }
        }
    }
}

/* 801A75C0-801A75E0 1A1F00 0020+00 0/0 6/6 7/7 .text            dKy_setLight_again__Fv */
void dKy_setLight_again() {
    dKy_GlobalLight_set();
}

/* 801A75E0-801A76D8 1A1F20 00F8+00 0/0 3/3 5/5 .text dKy_Global_amb_set__FP12dKy_tevstr_c */
void dKy_Global_amb_set(dKy_tevstr_c* i_tevstr) {
    GXColor color;
    color.r = i_tevstr->AmbCol.r;
    color.g = i_tevstr->AmbCol.g;
    color.b = i_tevstr->AmbCol.b;
    color.a = i_tevstr->AmbCol.a;

    if (i_tevstr->Type == 2 || i_tevstr->Type == 3) {
        if (dKy_darkworld_check()) {
            if (i_tevstr->Type == 2) {
                color.r = 18;
                color.g = 18;
                color.b = 18;
                color.a = 0;
            } else {
                color.r = 12;
                color.g = 12;
                color.b = 12;
                color.a = 0;
            }
        }
    } else if ((i_tevstr->Type >= 1 && i_tevstr->Type <= 7) ||
               (i_tevstr->Type == 9 && dKy_darkworld_check()))
    {
        color.r = 0;
        color.g = 0;
        color.b = 0;
        color.a = 0;
    }

    GXSetChanAmbColor(GX_COLOR0A0, color);
}

/* 801A76D8-801A7714 1A2018 003C+00 1/1 0/0 0/0 .text            dKy_light_influence_pos__Fi */
cXyz dKy_light_influence_pos(int param_0) {
    if (param_0 < 0) {
        param_0 = 0;
    }

    dScnKy_env_light_c* env_light = &g_env_light;
    return env_light->mPointLight[param_0]->mPosition;
}

/* 801A7714-801A7738 1A2054 0024+00 0/0 1/1 0/0 .text            dKy_plight_near_pos__Fv */
cXyz dKy_plight_near_pos() {
    return g_env_light.mPLightNearPos;
}

/* 801A7738-801A7790 1A2078 0058+00 0/0 0/0 1/1 .text
 * dKy_mock_light_every_set__FP15LIGHT_INFLUENCE                */
void dKy_mock_light_every_set(LIGHT_INFLUENCE* param_0) {
    for (int i = 50; i < 100; i++) {
        if (g_env_light.mPointLight[i] == NULL) {
            g_env_light.mPointLight[i] = param_0;
            g_env_light.mPointLight[i]->mIndex = i + 1;
            break;
        }
    }
}

/* 801A7790-801A7814 1A20D0 0084+00 1/1 1/1 18/18 .text dKy_plight_set__FP15LIGHT_INFLUENCE */
void dKy_plight_set(LIGHT_INFLUENCE* param_0) {
    for (int i = 0; i < 100; i++) {
        if (g_env_light.mPointLight[i] == param_0) {
            return;
        }
    }

    for (int i = 0; i < 50; i++) {
        if (g_env_light.mPointLight[i] == NULL) {
            g_env_light.mPointLight[i] = param_0;
            g_env_light.mPointLight[i]->mIndex = i + 1;
            break;
        }
    }
}

/* 801A7814-801A7868 1A2154 0054+00 0/0 0/0 4/4 .text dKy_dalkmist_inf_set__FP18DALKMIST_INFLUENCE
 */
void dKy_dalkmist_inf_set(DALKMIST_INFLUENCE* param_0) {
    for (int i = 0; i < 10; i++) {
        if (g_env_light.mDalkmistInf[i] == NULL) {
            g_env_light.mDalkmistInf[i] = param_0;
            g_env_light.mDalkmistInf[i]->mIndex = i;
            break;
        }
    }
}

/* 801A7868-801A789C 1A21A8 0034+00 0/0 0/0 4/4 .text dKy_dalkmist_inf_cut__FP18DALKMIST_INFLUENCE
 */
void dKy_dalkmist_inf_cut(DALKMIST_INFLUENCE* param_0) {
    if (param_0 != NULL) {
        if (param_0->mIndex < 10) {
            g_env_light.mDalkmistInf[param_0->mIndex] = NULL;
        }
    }
}

/* 801A789C-801A792C 1A21DC 0090+00 0/0 0/0 1/1 .text dKy_plight_priority_set__FP15LIGHT_INFLUENCE
 */
void dKy_plight_priority_set(LIGHT_INFLUENCE* param_0) {
    int i = 0;

    for (; i < 50; i++) {
        if (g_env_light.mPointLight[i] == NULL) {
            g_env_light.mPointLight[i] = param_0;
            g_env_light.mPointLight[i]->mIndex = -(i + 1);
            break;
        }
    }

    if (i >= 50) {
        OSReport_Warning("\nPOINTLIGHT COUNT OVER!!!\n");
    }
}

/* 801A792C-801A797C 1A226C 0050+00 0/0 1/1 32/32 .text dKy_plight_cut__FP15LIGHT_INFLUENCE */
void dKy_plight_cut(LIGHT_INFLUENCE* param_0) {
    if (param_0 != NULL) {
        if (param_0->mIndex != 0) {
            if (param_0->mIndex < 0) {
                param_0->mIndex *= -1;
            }

            int idx = (param_0->mIndex & 0xFFF) - 1;
            if (idx < 50) {
                g_env_light.mPointLight[idx] = NULL;
            }
        }
    }
}

/* 801A797C-801A7A00 1A22BC 0084+00 1/1 1/1 3/3 .text dKy_efplight_set__FP15LIGHT_INFLUENCE */
void dKy_efplight_set(LIGHT_INFLUENCE* param_0) {
    for (int i = 0; i < 5; i++) {
        if (g_env_light.mEfPLight[i] == param_0) {
            return;
        }
    }

    for (int i = 0; i < 5; i++) {
        if (g_env_light.mEfPLight[i] == NULL) {
            g_env_light.mEfPLight[i] = param_0;
            g_env_light.mEfPLight[i]->mIndex = i + 1;
            break;
        }
    }
}

/* 801A7A00-801A7A40 1A2340 0040+00 1/1 1/1 3/3 .text dKy_efplight_cut__FP15LIGHT_INFLUENCE */
void dKy_efplight_cut(LIGHT_INFLUENCE* param_0) {
    if (param_0 != NULL) {
        if (param_0->mIndex != 0) {
            int idx = param_0->mIndex - 1;
            if (idx >= 0 && idx < 5) {
                g_env_light.mEfPLight[idx] = NULL;
            }
        }
    }
}

/* 801A7A40-801A7AAC 1A2380 006C+00 1/1 0/0 0/0 .text
 * dKy_bgparts_activelight_set__FP15LIGHT_INFLUENCEi            */
void dKy_bgparts_activelight_set(LIGHT_INFLUENCE* influence_p, int param_1) {
    if (influence_p != NULL) {
        memcpy(&g_env_light.mBGpartsActiveLight[param_1], influence_p, sizeof(LIGHT_INFLUENCE));
        g_env_light.mBGpartsActiveLight[param_1].mIndex = param_1 + 1;
    }
}

/* 801A7AAC-801A7AC8 1A23EC 001C+00 1/1 0/0 0/0 .text            dKy_bgparts_activelight_cut__Fi */
void dKy_bgparts_activelight_cut(int param_0) {
    g_env_light.mBGpartsActiveLight[param_0].mIndex = 0;
}

/* 801A7AC8-801A7B68 1A2408 00A0+00 1/1 1/1 1/1 .text            dKy_actor_addcol_amb_set__Fsssf */
void dKy_actor_addcol_amb_set(s16 r, s16 g, s16 b, f32 factor) {
    g_env_light.mActorAddColAmb.r = r * factor;
    g_env_light.mActorAddColAmb.g = g * factor;
    g_env_light.mActorAddColAmb.b = b * factor;
}


/* 801A7B68-801A7C08 1A24A8 00A0+00 1/1 1/1 1/1 .text            dKy_bg_addcol_amb_set__Fsssf */
void dKy_bg_addcol_amb_set(s16 r, s16 g, s16 b, f32 factor) {
    g_env_light.mBgAddColAmb.r = r * factor;
    g_env_light.mBgAddColAmb.g = g * factor;
    g_env_light.mBgAddColAmb.b = b * factor;
}


/* 801A7C08-801A7CA8 1A2548 00A0+00 1/1 1/1 0/0 .text            dKy_bg1_addcol_amb_set__Fsssf */
void dKy_bg1_addcol_amb_set(s16 r, s16 g, s16 b, f32 factor) {
    g_env_light.mBg1AddColAmb.r = r * factor;
    g_env_light.mBg1AddColAmb.g = g * factor;
    g_env_light.mBg1AddColAmb.b = b * factor;
}


/* 801A7CA8-801A7D48 1A25E8 00A0+00 1/1 0/0 0/0 .text            dKy_bg2_addcol_amb_set__Fsssf */
static void dKy_bg2_addcol_amb_set(s16 r, s16 g, s16 b, f32 factor) {
    g_env_light.mBg2AddColAmb.r = r * factor;
    g_env_light.mBg2AddColAmb.g = g * factor;
    g_env_light.mBg2AddColAmb.b = b * factor;
}


/* 801A7D48-801A7DE8 1A2688 00A0+00 1/1 0/0 0/0 .text            dKy_bg3_addcol_amb_set__Fsssf */
static void dKy_bg3_addcol_amb_set(s16 r, s16 g, s16 b, f32 factor) {
    g_env_light.mBg3AddColAmb.r = r * factor;
    g_env_light.mBg3AddColAmb.g = g * factor;
    g_env_light.mBg3AddColAmb.b = b * factor;
}


/* 801A7DE8-801A7E88 1A2728 00A0+00 1/1 1/1 0/0 .text            dKy_addcol_fog_set__Fsssf */
void dKy_addcol_fog_set(s16 r, s16 g, s16 b, f32 factor) {
    g_env_light.mFogAddCol.r = r * factor;
    g_env_light.mFogAddCol.g = g * factor;
    g_env_light.mFogAddCol.b = b * factor;
}


/* 801A7E88-801A7F20 1A27C8 0098+00 2/2 0/0 2/2 .text            dKy_actor_addcol_set__Fsssf */
void dKy_actor_addcol_set(s16 r, s16 g, s16 b, f32 factor) {
    dKy_actor_addcol_amb_set(r, g, b, factor);
    dKy_bg_addcol_amb_set(r, g, b, factor);
    dKy_bg1_addcol_amb_set(r, g, b, factor);
    dKy_bg2_addcol_amb_set(r, g, b, factor);
    dKy_bg3_addcol_amb_set(r, g, b, factor);
}

/* 801A7F20-801A7FC0 1A2860 00A0+00 1/1 1/1 0/0 .text            dKy_vrbox_addcol_sky0_set__Fsssf */
void dKy_vrbox_addcol_sky0_set(s16 r, s16 g, s16 b, f32 factor) {
    g_env_light.mVrboxAddcolSky0.r = r * factor;
    g_env_light.mVrboxAddcolSky0.g = g * factor;
    g_env_light.mVrboxAddcolSky0.b = b * factor;
}


/* 801A7FC0-801A8060 1A2900 00A0+00 1/1 1/1 0/0 .text            dKy_vrbox_addcol_kasumi_set__Fsssf
 */
void dKy_vrbox_addcol_kasumi_set(s16 r, s16 g, s16 b, f32 factor) {
    g_env_light.mVrboxAddcolKasumi.r = r * factor;
    g_env_light.mVrboxAddcolKasumi.g = g * factor;
    g_env_light.mVrboxAddcolKasumi.b = b * factor;
}


/* 801A8060-801A80D0 1A29A0 0070+00 1/1 0/0 0/0 .text            dKy_vrbox_addcol_set__Fsssf */
static void dKy_vrbox_addcol_set(s16 param_0, s16 param_1, s16 param_2, f32 param_3) {
    dKy_vrbox_addcol_sky0_set(param_0, param_1, param_2, param_3);
    dKy_vrbox_addcol_kasumi_set(param_0, param_1, param_2, param_3);
    dKy_addcol_fog_set(param_0, param_1, param_2, param_3);
}

/* 801A80D0-801A8168 1A2A10 0098+00 1/1 0/0 2/2 .text            dKy_fog_startendz_set__Ffff */
void dKy_fog_startendz_set(f32 param_0, f32 param_1, f32 ratio) {
    if (ratio < 0.0f || ratio > 1.0f) {
        OSReport_Warning("\ndKy_fog_startendz_set ratio error!\n");
        ratio = 0.0f;
    }

    if (ratio < 9.999999747378752e-05f) {
        ratio = 0.0f;
    }

    g_env_light.field_0x11ec = param_0;
    g_env_light.field_0x11f0 = param_1;
    g_env_light.field_0x11f4 = ratio;
}


/* 801A8168-801A8190 1A2AA8 0028+00 0/0 1/1 0/0 .text            dKy_Itemgetcol_chg_on__Fv */
void dKy_Itemgetcol_chg_on() {
    if (g_env_light.mItemGetCol_chg != 0 && g_env_light.mItemGetCol_chg != 6) {
        return;
    }

    g_env_light.mItemGetCol_chg = 1;
}

/* 801A8190-801A81C0 1A2AD0 0030+00 2/2 0/0 0/0 .text            dKy_Sound_init__Fv */
static void dKy_Sound_init() {
    g_env_light.mSound.field_0x0.x = 999999.9f;
    g_env_light.mSound.field_0x0.y = 999999.9f;
    g_env_light.mSound.field_0x0.z = 999999.9f;
    g_env_light.mSound.field_0xc = 0;
    g_env_light.mSound.field_0x14 = -1;
    g_env_light.mSound.field_0x10 = 0;
}

/* 801A81C0-801A8474 1A2B00 02B4+00 0/0 5/5 27/27 .text            dKy_Sound_set__F4cXyziUii */
void dKy_Sound_set(cXyz i_pos, int param_1, fpc_ProcID i_actorID, int param_3) {
    camera_class* temp_r3 = (camera_class*)dComIfGp_getCamera(0);
    int var_r31 = 0;
    f32 temp_f30 = i_pos.abs(temp_r3->lookat.eye);
    f32 temp_f31 = g_env_light.mSound.field_0x0.abs(temp_r3->lookat.eye);

    if (temp_f30 < temp_f31) {
        if (temp_f31 < 1500.0f) {
            var_r31 = 1;
        } else if (g_env_light.mSound.field_0xc < param_1) {
            var_r31 = 1;
        }
    }

    if (var_r31 != 0) {
        g_env_light.mSound.field_0x0 = i_pos;
        g_env_light.mSound.field_0xc = param_1;
        g_env_light.mSound.field_0x14 = i_actorID;
        g_env_light.mSound.field_0x10 = param_3;
    }
}

/* 801A8474-801A8484 1A2DB4 0010+00 0/0 1/1 8/8 .text            dKy_Sound_get__Fv */
SND_INFLUENCE* dKy_Sound_get() {
    return &g_env_light.mSound;
}

/* 801A8484-801A8538 1A2DC4 00B4+00 0/0 2/2 0/0 .text            dKy_SordFlush_set__F4cXyzi */
void dKy_SordFlush_set(cXyz param_0, int param_1) {
    dScnKy_env_light_c* light = dKy_getEnvlight();

    if (!dKy_darkworld_check() &&
        (light->mThunderEff.mState >= 10 || light->mThunderEff.mFlashTimer <= 0.0f))
    {
        if (g_env_light.mSwordLight.mState == 0) {
            g_env_light.mSwordLight.mState = 1;
            g_env_light.mSwordLight.mLightType = param_1;
            g_env_light.mSwordLight.field_0x8.mPosition = param_0;
        } else if (g_env_light.mSwordLight.mState == 2) {
            g_env_light.mSwordLight.mState = 4;
        }
    }
}

/* 801A8538-801A85E8 1A2E78 00B0+00 1/1 0/0 0/0 .text            GxFogSet_Sub__FP8_GXColor */
static void GxFogSet_Sub(GXColor* param_0) {
    f32 near_z = 1.0f;
    f32 far_z = 160000.0f;
    GXColor color;
    color = *param_0;

    if (dComIfGd_getView() != NULL) {
        if (dComIfGd_getView()->near >= 0.0f && dComIfGd_getView()->far >= 0.0f) {
            if (dComIfGd_getView()->near < dComIfGd_getView()->far) {
                near_z = dComIfGd_getView()->near;
                far_z = dComIfGd_getView()->far;
            }
        }
    }

    GXSetFog(GX_FOG_PERSP_LIN, g_env_light.mFogNear, g_env_light.mFogFar, near_z, far_z, color);
}

/* 801A85E8-801A862C 1A2F28 0044+00 1/1 0/0 0/0 .text            GxFog_set__Fv */
static void GxFog_set() {
    GXColor color;
    color.r = g_env_light.mFogColor.r;
    color.g = g_env_light.mFogColor.g;
    color.b = g_env_light.mFogColor.b;

    GxFogSet_Sub(&color);
}

/* 801A862C-801A8650 1A2F6C 0024+00 0/0 7/7 2/2 .text            dKy_GxFog_set__Fv */
void dKy_GxFog_set() {
    GxFog_set();
    GxXFog_set();
}

/* 801A8650-801A86F8 1A2F90 00A8+00 0/0 3/3 6/6 .text dKy_GxFog_tevstr_set__FP12dKy_tevstr_c */
void dKy_GxFog_tevstr_set(dKy_tevstr_c* param_0) {
    f32 near_z = 1.0f;
    f32 far_z = 160000.0f;

    GXColor color;
    color.r = param_0->FogCol.r;
    color.g = param_0->FogCol.g;
    color.b = param_0->FogCol.b;

    if (dComIfGd_getView() != NULL) {
        if (dComIfGd_getView()->near >= 0.0f && dComIfGd_getView()->far >= 0.0f) {
            if (dComIfGd_getView()->near < dComIfGd_getView()->far) {
                near_z = dComIfGd_getView()->near;
                far_z = dComIfGd_getView()->far;
            }
        }
    }

    GXSetFog(GX_FOG_PERSP_LIN, param_0->mFogStartZ, param_0->mFogEndZ, near_z, far_z, color);
    GxXFog_set();
}

/* 801A86F8-801A87A0 1A3038 00A8+00 0/0 0/0 1/1 .text dKy_GfFog_tevstr_set__FP12dKy_tevstr_c */
void dKy_GfFog_tevstr_set(dKy_tevstr_c* param_0) {
    f32 near_z = 1.0f;
    f32 far_z = 160000.0f;

    GXColor color;
    color.r = param_0->FogCol.r;
    color.g = param_0->FogCol.g;
    color.b = param_0->FogCol.b;

    if (dComIfGd_getView() != NULL) {
        if (dComIfGd_getView()->near >= 0.0f && dComIfGd_getView()->far >= 0.0f) {
            if (dComIfGd_getView()->near < dComIfGd_getView()->far) {
                near_z = dComIfGd_getView()->near;
                far_z = dComIfGd_getView()->far;
            }
        }
    }

    GFSetFog(GX_FOG_PERSP_LIN, param_0->mFogStartZ, param_0->mFogEndZ, near_z, far_z, color);
    GxXFog_set();
}

/* 801A87A0-801A87E4 1A30E0 0044+00 3/3 0/0 0/0 .text            GxXFog_set__Fv */
static void GxXFog_set() {
    dKyd_xfog_table_set(g_env_light.mFogAdjTableType);
    GXSetFogRangeAdj(g_env_light.mFogAdjEnable, g_env_light.mFogAdjCenter,
                     &g_env_light.mXFogTbl);
}

/* 801A87E4-801A880C 1A3124 0028+00 0/0 0/0 52/52 .text            dKy_change_colpat__FUc */
void dKy_change_colpat(u8 colpat) {
    g_env_light.mColpatCurrGather = colpat;
    if (g_env_light.wether_pat1 != colpat) {
        g_env_light.mColPatBlendGather = 0.0f;
    }
}

/* 801A880C-801A8854 1A314C 0048+00 0/0 0/0 25/25 .text            dKy_custom_colset__FUcUcf */
void dKy_custom_colset(u8 prevGather, u8 curGather, f32 blend) {
    if (g_env_light.mInitAnmTimer != 1) {
        if (blend < 1.0f) {
            g_env_light.mColpatPrevGather = prevGather;
        } else {
            g_env_light.mColpatPrevGather = curGather;
        }

        g_env_light.mColpatCurrGather = curGather;
        g_env_light.mColPatBlendGather = blend;
        g_env_light.mColPatModeGather = 1;
    }
}

/* 801A8854-801A88EC 1A3194 0098+00 0/0 0/0 2/2 .text            dKy_setLight_mine__FP12dKy_tevstr_c
 */
void dKy_setLight_mine(dKy_tevstr_c* p_tevstr) {
    GXLightObj light;

    GXInitLightPos(&light, p_tevstr->mLightObj.mInfo.mLightPosition.x,
                   p_tevstr->mLightObj.mInfo.mLightPosition.y,
                   p_tevstr->mLightObj.mInfo.mLightPosition.z);
    GXInitLightDir(&light, p_tevstr->mLightObj.mInfo.mLightDirection.x,
                   p_tevstr->mLightObj.mInfo.mLightDirection.y,
                   p_tevstr->mLightObj.mInfo.mLightDirection.z);
    GXInitLightColor(&light, p_tevstr->mLightObj.mInfo.mColor);
    GXInitLightAttn(&light, p_tevstr->mLightObj.mInfo.mCosAtten.x,
                    p_tevstr->mLightObj.mInfo.mCosAtten.y, p_tevstr->mLightObj.mInfo.mCosAtten.z,
                    p_tevstr->mLightObj.mInfo.mDistAtten.x, p_tevstr->mLightObj.mInfo.mDistAtten.y,
                    p_tevstr->mLightObj.mInfo.mDistAtten.z);
    GXLoadLightObjImm(&light, (GXLightID)*lightMaskData);
}

/* 801A88EC-801A8A34 1A322C 0148+00 2/2 5/5 11/11 .text dKy_tevstr_init__FP12dKy_tevstr_cScUc */
void dKy_tevstr_init(dKy_tevstr_c* p_tevstr, s8 roomCol, u8 floorCol) {
    memset(p_tevstr, 0, sizeof(dKy_tevstr_c));

    if (roomCol == -1) {
        p_tevstr->room_no = dComIfGp_roomControl_getStayNo();
    } else {
        p_tevstr->room_no = roomCol;
    }

    p_tevstr->UseCol = p_tevstr->room_no;
    p_tevstr->PrevCol = p_tevstr->room_no;
    p_tevstr->YukaCol = floorCol;
    p_tevstr->mInitTimer = 1;
    p_tevstr->Material_use_fg = 0x7B;
    p_tevstr->AmbCol.a = 0;
    p_tevstr->FogCol.a = 255;
    p_tevstr->Material_id = 0;
    p_tevstr->field_0x374 = 1.0f;
    p_tevstr->field_0x384 = 0;

    p_tevstr->mLightObj.mInfo.mColor.g = 0;
    p_tevstr->mLightObj.mInfo.mColor.b = 0;
    p_tevstr->mLightObj.mInfo.mColor.a = 255;
    p_tevstr->mLightObj.mInfo.mCosAtten.x = 1.0f;
    p_tevstr->mLightObj.mInfo.mCosAtten.y = 0.0f;
    p_tevstr->mLightObj.mInfo.mCosAtten.z = 0.0f;
    p_tevstr->mLightObj.mInfo.mDistAtten.x = 1.0f;
    p_tevstr->mLightObj.mInfo.mDistAtten.y = 0.0f;
    p_tevstr->mLightObj.mInfo.mDistAtten.z = 0.0f;

    for (int i = 0; i < 6; i++) {
        J3DLightObj* tev_light_p = &p_tevstr->mLights[i];
        LightStatus* light_data_p = &lightStatusData[i];

        tev_light_p->mInfo.mLightPosition = light_data_p->field_0x0;
        tev_light_p->mInfo.mColor = light_data_p->field_0x18;
        tev_light_p->mInfo.mCosAtten.x = 1.0f;
        tev_light_p->mInfo.mCosAtten.y = 0.0f;
        tev_light_p->mInfo.mCosAtten.z = 0.0f;
        tev_light_p->mInfo.mDistAtten.x = 1.0f;
        tev_light_p->mInfo.mDistAtten.y = 0.0f;
        tev_light_p->mInfo.mDistAtten.z = 0.0f;
    }
}


/* 801A8A34-801A8A44 1A3374 0010+00 0/0 1/1 0/0 .text            dKy_rain_check__Fv */
int dKy_rain_check() {
    return g_env_light.mRainCount;
}

/* 801A8A44-801A8A54 1A3384 0010+00 0/0 0/0 5/5 .text            dKy_set_allcol_ratio__Ff */
void dKy_set_allcol_ratio(f32 ratio) {
    g_env_light.mAllcolRatio = ratio;
}

/* 801A8A54-801A8A64 1A3394 0010+00 0/0 1/1 1/1 .text            dKy_set_actcol_ratio__Ff */
void dKy_set_actcol_ratio(f32 ratio) {
    g_env_light.mActcolRatio = ratio;
}

/* 801A8A64-801A8A74 1A33A4 0010+00 0/0 1/1 1/1 .text            dKy_set_bgcol_ratio__Ff */
void dKy_set_bgcol_ratio(f32 ratio) {
    g_env_light.mBgcolRatio = ratio;
}

/* 801A8A74-801A8A84 1A33B4 0010+00 0/0 1/1 1/1 .text            dKy_set_fogcol_ratio__Ff */
void dKy_set_fogcol_ratio(f32 ratio) {
    g_env_light.mFogcolRatio = ratio;
}

/* 801A8A84-801A8AB8 1A33C4 0034+00 0/0 1/1 0/0 .text            dKy_set_vrboxcol_ratio__Ff */
void dKy_set_vrboxcol_ratio(f32 ratio) {
    dKy_set_vrboxsoracol_ratio(ratio);
    dKy_set_vrboxkumocol_ratio(ratio);
}

/* 801A8AB8-801A8AC8 1A33F8 0010+00 1/1 0/0 0/0 .text            dKy_set_vrboxsoracol_ratio__Ff */
static void dKy_set_vrboxsoracol_ratio(f32 ratio) {
    g_env_light.mVrboxSoracolRatio = ratio;
}

/* 801A8AC8-801A8AD8 1A3408 0010+00 1/1 0/0 0/0 .text            dKy_set_vrboxkumocol_ratio__Ff */
static void dKy_set_vrboxkumocol_ratio(f32 ratio) {
    g_env_light.mVrboxKumocolRatio = ratio;
}

/* 801A8AD8-801A8B38 1A3418 0060+00 0/0 1/1 0/0 .text            dKy_itudemo_se__Fv */
void dKy_itudemo_se() {
    if (g_env_light.mMoyaSE != 0) {
        mDoAud_seStart(g_env_light.mMoyaSE, NULL, 0, 0);
    }
}


/* 801A8B38-801A8B58 1A3478 0020+00 1/1 2/2 11/11 .text            dKy_get_dayofweek__Fv */
s32 dKy_get_dayofweek() {
    return dComIfGs_getDate() % 7;
}

/* 801A8B58-801A8B68 1A3498 0010+00 0/0 3/3 0/0 .text            dKy_set_nexttime__Ff */
void dKy_set_nexttime(f32 nextTime) {
    g_env_light.mNexttime = nextTime;
}

/* 801A8B68-801A8BC8 1A34A8 0060+00 0/0 1/1 0/0 .text            dKy_instant_timechg__Ff */
void dKy_instant_timechg(f32 time) {
    if (time < g_env_light.getDaytime()) {
        dComIfGs_setDate(dComIfGs_getDate() + 1);
        dKankyo_DayProc();
    }

    dComIfGs_setTime(time);
}

/* 801A8BC8-801A8C04 1A3508 003C+00 0/0 1/1 0/0 .text            dKy_instant_rainchg__Fv */
void dKy_instant_rainchg() {
    dKyw_rain_set(250);
    g_env_light.mColpatWeather = 1;
    g_env_light.wether_pat0 = 1;
    g_env_light.wether_pat1 = 1;
}

/* 801A8C04-801A8E20 1A3544 021C+00 3/3 0/0 0/0 .text            NewAmbColGet__FP11_GXColorS10 */
static GXColor NewAmbColGet(GXColorS10* param_0) {
    GXColorS10 sp18, sp10;
    sp18 = *param_0;

    sp10.r = sp18.r * 4;
    sp10.g = sp18.g * 4;
    sp10.b = sp18.b * 4;

    if (sp10.r > 0xFF) {
        f32 temp_f31 = 255.0f / sp10.r;
        sp10.r *= temp_f31;
        sp10.g *= temp_f31;
        sp10.b *= temp_f31;
    }

    if (sp10.g > 0xFF) {
        f32 temp_f31_2 = 255.0f / sp10.g;
        sp10.r *= temp_f31_2;
        sp10.g *= temp_f31_2;
        sp10.b *= temp_f31_2;
    }

    if (sp10.b > 0xFF) {
        f32 temp_f31_3 = 255.0f / sp10.b;
        sp10.r *= temp_f31_3;
        sp10.g *= temp_f31_3;
        sp10.b *= temp_f31_3;
    }

    GXColor spC;
    spC.r = sp10.r;
    spC.g = sp10.g;
    spC.b = sp10.b;
    spC.a = 0xFF;

    return spC;
}

/* 803BC0A0-803BC0B4 -00001 0014+00 1/0 0/0 0/0 .data            l_dKy_Method */
static leafdraw_method_class l_dKy_Method = {
    (process_method_func)dKy_Create,  (process_method_func)dKy_Delete,
    (process_method_func)dKy_Execute, (process_method_func)dKy_IsDelete,
    (process_method_func)dKy_Draw,
};

/* 803BC0B4-803BC0DC -00001 0028+00 0/0 0/0 1/0 .data            g_profile_KANKYO */
extern kankyo_process_profile_definition g_profile_KANKYO = {
    fpcLy_CURRENT_e,
    1,
    fpcPi_CURRENT_e,
    PROC_KANKYO,
    &g_fpcLf_Method.base,
    sizeof(sub_kankyo__class),
    0,
    0,
    &g_fopKy_Method,
    2,
    &l_dKy_Method,
};

// fixes float literal order
static f32 dummy() {
    return 50.0f;
}

/* 801A8E20-801A9BE4 1A3760 0DC4+00 2/2 0/0 0/0 .text
 * dKy_ParticleColor_get_base__FP4cXyzP12dKy_tevstr_cP8_GXColorP8_GXColorP8_GXColorP8_GXColorf */
static void dKy_ParticleColor_get_base(cXyz* param_0, dKy_tevstr_c* param_1, GXColor* param_2,
                                       GXColor* param_3, GXColor* param_4, GXColor* param_5,
                                       f32 param_6) {
    GXColor sp70[3];
    cXyz sp64;
    f32 sp58[] = {100000000.0f, 100000000.0f, 100000000.0f};
    int i;
    u8 spD = 0;
    s8 spC;

    GXColorS10 sp48;
    J3DLightInfo* sp44;
    GXColor sp40;
    int sp3C;
    s32 sp38;
    stage_pure_lightvec_info_class* sp34;
    int sp30;

    for (i = 0; i < 6; i++) {
        if (param_1 != NULL) {
            sp44 = &param_1->mLights[i].getLightInfo();
            sp40 = sp44->mColor;
        } else {
            sp38 = dComIfGp_roomControl_getStayNo();
            if (dKy_SunMoon_Light_Check() == TRUE && i <= 1) {
                sp40 = g_env_light.mDungeonLights[i].mColor;
            } else if (dComIfGp_roomControl_getStatusRoomDt(sp38) != NULL) {
                sp34 = dComIfGp_roomControl_getStatusRoomDt(sp38)->mRoomDt.getLightVecInfo();
                sp30 = dComIfGp_roomControl_getStatusRoomDt(sp38)->mRoomDt.getLightVecInfoNum();
                if (i < sp30) {
                    sp40 = g_env_light.mDungeonLights[i].mColor;
                } else {
                    sp40.r = 0;
                    sp40.g = 0;
                    sp40.b = 0;
                }
            }
        }

        f32 var_f31;
        if (dKy_SunMoon_Light_Check() == TRUE && i <= 1) {
            if (g_env_light.mDaytime >= 90.0f && g_env_light.mDaytime <= 285.0f) {
                if (i == 0) {
                    var_f31 = 1.0f;
                } else {
                    var_f31 = 2.0f;
                }
            } else if (i == 0) {
                var_f31 = 2.0f;
            } else {
                var_f31 = 1.0f;
            }

            if (strcmp(dComIfGp_getStartStageName(), "F_SP114") == 0) {
                if (sp40.r < 15.0f) {
                    sp40.r = 15;
                }

                if (sp40.g < 17.0f) {
                    sp40.g = 17;
                }

                if (sp40.b < 20.0f) {
                    sp40.b = 20;
                }
            }
        } else if (sp40.r != 0 || sp40.g != 0 || sp40.b != 0) {
            stage_pure_lightvec_info_class* var_r28;
            if (param_1 != NULL && param_1->room_no >= 0) {
                var_r28 = dComIfGp_roomControl_getStatusRoomDt(param_1->room_no)->mRoomDt.getLightVecInfo();
                sp3C = dComIfGp_roomControl_getStatusRoomDt(param_1->room_no)->mRoomDt.getLightVecInfoNum();
            } else {
                s32 room_no = dComIfGp_roomControl_getStayNo();  // fakematch, fixes instruction order
                var_r28 = dComIfGp_roomControl_getStatusRoomDt(room_no)->mRoomDt.getLightVecInfo();
                room_no = dComIfGp_roomControl_getStayNo();  // fakematch, fixes instruction order
                sp3C = dComIfGp_roomControl_getStatusRoomDt(room_no)->mRoomDt.getLightVecInfoNum();
            }

            f32 var_f27;
            f32 var_f26;
            if (var_r28 != 0) {
                if (i < sp3C) {
                    sp64.x = var_r28[i].m_position.x;
                    sp64.y = var_r28[i].m_position.y;
                    sp64.z = var_r28[i].m_position.z;

                    if (param_1 != NULL && param_1->room_no >= 0) {
                        spC = param_1->room_no;
                    } else {
                        spC = dComIfGp_roomControl_getStayNo();
                    }

                    if (dKy_lightswitch_check(&var_r28[i], spC) == TRUE) {
                        var_f27 = 190.0f * var_r28[i].m_radius;
                    } else {
                        var_f27 = 0.0f;
                    }
                } else {
                    sp64.x = lightStatusPt[i + 2].field_0x0.x;
                    sp64.y = lightStatusPt[i + 2].field_0x0.y;
                    sp64.z = lightStatusPt[i + 2].field_0x0.z;
                    var_f27 = 190.0f * lightStatusPt[i + 2].mRefDist;
                }
            } else {
                sp64.x = 100000000.0f;
                sp64.y = 100000000.0f;
                sp64.z = 100000000.0f;
                var_f27 = 0.0f;
            }

            var_f31 = param_0->abs(sp64);
            if (var_f31 <= 0.0f) {
                var_f31 = 9.9999998E-14f;
            }

            if (var_f27 > 0.0f) {
                var_f26 = var_f27 / var_f31;
            } else {
                var_f26 = 0.0f;
            }

            if (var_f26 < 1.0f) {
                sp40.r *= var_f26;
                sp40.g *= var_f26;
                sp40.b *= var_f26;
            } else {
                var_f31 = 5.0f;
            }
        }

        if (sp58[0] > var_f31) {
            sp58[2] = sp58[1];
            sp58[1] = sp58[0];
            sp58[0] = var_f31;
            sp70[2] = sp70[1];
            sp70[1] = sp70[0];
            sp70[0] = sp40;
        } else if (sp58[1] > var_f31) {
            sp58[2] = sp58[1];
            sp58[1] = var_f31;
            sp70[2] = sp70[1];
            sp70[1] = sp40;
        } else if (sp58[2] > var_f31) {
            sp58[2] = var_f31;
            sp70[2] = sp40;
        }
    }

    sp48.r = 0;
    sp48.g = 0;
    sp48.b = 0;

    for (int i = 0; i < 3; i++) {
        if (sp58[i] < 100000000.0f) {
            spD++;
        }
    }

    static f32 parcent_tabel[][3] = {
        {0.0f, 0.0f, 0.0f},
        {1.0f, 0.0f, 0.0f},
        {0.7f, 0.3f, 0.0f},
        {0.6f, 0.3f, 0.1f},
    };

    if (sp58[0] < 100000000.0f) {
        f32 temp_f28 = parcent_tabel[spD][0];
        sp48.r = sp70[0].r * temp_f28;
        sp48.g = sp70[0].g * temp_f28;
        sp48.b = sp70[0].b * temp_f28;
    }

    for (int i = 1; i < 3; i++) {
        if (sp58[i] < 100000000.0f) {
            f32 temp_f28 = parcent_tabel[spD][i];
            sp48.r += (s16)(sp70[i].r * temp_f28);
            sp48.g += (s16)(sp70[i].g * temp_f28);
            sp48.b += (s16)(sp70[i].b * temp_f28);
        }
    }

    *param_3 = NewAmbColGet(&sp48);

    sp48.r = (0.8f * param_2->r) + (1.2f * param_3->r);
    sp48.g = (0.8f * param_2->g) + (1.2f * param_3->g);
    sp48.b = (0.8f * param_2->b) + (1.2f * param_3->b);

    if (sp48.r > 0xFF) {
        f32 temp_f30 = 255.0f / sp48.r;
        sp48.r *= temp_f30;
        sp48.g *= temp_f30;
        sp48.b *= temp_f30;
    }

    if (sp48.g > 0xFF) {
        f32 temp_f30 = 255.0f / sp48.g;
        sp48.r *= temp_f30;
        sp48.g *= temp_f30;
        sp48.b *= temp_f30;
    }

    if (sp48.b > 0xFF) {
        f32 temp_f30 = 255.0f / sp48.b;
        sp48.r *= temp_f30;
        sp48.g *= temp_f30;
        sp48.b *= temp_f30;
    }

    GXColorS10 sp50;
    sp50.r = sp48.r & 0xFF;
    sp50.g = sp48.g & 0xFF;
    sp50.b = sp48.b & 0xFF;

    f32 sp20 = param_4->r / 255.0f;
    f32 sp1C = param_4->g / 255.0f;
    f32 sp18 = param_4->b / 255.0f;

    param_2->r = (sp20 * (sp50.r * (1.0f - param_6))) + (param_4->r * param_6);
    param_2->g = (sp1C * (sp50.g * (1.0f - param_6))) + (param_4->g * param_6);
    param_2->b = (sp18 * (sp50.b * (1.0f - param_6))) + (param_4->b * param_6);

    sp20 = (param_5->r / 255.0f);
    sp1C = (param_5->g / 255.0f);
    sp18 = (param_5->b / 255.0f);

    param_3->r = (sp20 * (sp50.r * (1.0f - param_6))) + (param_5->r * param_6);
    param_3->g = (sp1C * (sp50.g * (1.0f - param_6))) + (param_5->g * param_6);
    param_3->b = (sp18 * (sp50.b * (1.0f - param_6))) + (param_5->b * param_6);
}

/* 801A9BE4-801A9CBC 1A4524 00D8+00 0/0 3/3 0/0 .text
 * dKy_ParticleColor_get_actor__FP4cXyzP12dKy_tevstr_cP8_GXColorP8_GXColorP8_GXColorP8_GXColorf */
void dKy_ParticleColor_get_actor(cXyz* param_0, dKy_tevstr_c* param_1, _GXColor* param_2,
                                 _GXColor* param_3, _GXColor* param_4, _GXColor* param_5,
                                 f32 param_6) {
    if (param_1 != NULL) {
        *param_2 = NewAmbColGet(&param_1->AmbCol);
    } else {
        *param_2 = NewAmbColGet(&g_env_light.mActorAmbience);
    }

    dKy_ParticleColor_get_base(param_0, param_1, param_2, param_3, param_4, param_5, param_6);
}

/* 801A9CBC-801A9D60 1A45FC 00A4+00 0/0 6/6 0/0 .text
 * dKy_ParticleColor_get_bg__FP4cXyzP12dKy_tevstr_cP8_GXColorP8_GXColorP8_GXColorP8_GXColorf */
void dKy_ParticleColor_get_bg(cXyz* param_0, dKy_tevstr_c* param_1, _GXColor* param_2,
                              _GXColor* param_3, _GXColor* param_4, _GXColor* param_5,
                              f32 param_6) {
    *param_2 = NewAmbColGet(&g_env_light.mTerrainAmbienceBG[0]);
    dKy_ParticleColor_get_base(param_0, param_1, param_2, param_3, param_4, param_5, param_6);
}

/* 801A9D60-801AA664 1A46A0 0904+00 1/1 0/0 17/17 .text dKy_BossLight_set__FP4cXyzP8_GXColorfUc */
int dKy_BossLight_set(cXyz* param_0, GXColor* param_1, f32 param_2, u8 param_3) {
    dScnKy_env_light_c* sp18 = dKy_getEnvlight();
    camera_class* sp14 = (camera_class*)dComIfGp_getCamera(0);
    int sp10 = 0;
    f32 var_f31 = 0.0f;
    u8 spA = 0xFF;
    int spC = 0;
    int i;
    
    if (strcmp(dComIfGp_getStartStageName(), "F_SP118") != 0) {
        u8 sp9 = dComIfGp_roomControl_getStayNo();
        if (dComIfGp_roomControl_getStatusRoomDt(sp9) == NULL) {
            return 0;
        }

        spC = dComIfGp_roomControl_getStatusRoomDt(sp9)->mRoomDt.getLightVecInfoNum();
        if (spC < 0 || spC > 6) {
            spC = 6;
        }
    }
    
    BOSS_LIGHT* var_r30;
    if (param_3 == 0) {
        var_r30 = sp18->field_0x0c18;
    } else {
        var_r30 = sp18->field_0x0d58;
    }

    for (i = 1; i < 6 - spC; i++) {
        if (var_r30[i].field_0x26 == 1 && param_0->x == var_r30[i].mPos.x && param_0->y == var_r30[i].mPos.y && param_0->z == var_r30[i].mPos.z) {
            return 0;
        }
    }

    for (i = 1; i < 6 - spC; i++) {
        if (var_r30[i].field_0x26 == 0) {
            var_r30[i].mPos = *param_0;
            var_r30[i].mColor.r = param_1->r;
            var_r30[i].mColor.g = param_1->g;
            var_r30[i].mColor.b = param_1->b;
            var_r30[i].mColor.a = 0xFF;
            var_r30[i].mRefDistance = param_2;
            var_r30[i].field_0x14 = 0.99f;
            var_r30[i].mCutoffAngle = 90.0f;
            var_r30[i].mAngleX = 0.0f;
            var_r30[i].mAngleY = 0.0f;
            var_r30[i].mAngleAttenuation = GX_SP_OFF;
            var_r30[i].mDistAttenuation = GX_DA_STEEP;
            var_r30[i].field_0x26 = 1;
            sp10 = 1;
            break;
        }
    }

    for (i = 1; i < 6 - spC; i++) {
        if (var_r30[i].field_0x26 != 0) {
            cXyz sp1C(var_r30[i].mPos);

            if (strcmp(dComIfGp_getStartStageName(), "D_SB03") == 0) {
                sp1C.x = sp14->lookat.eye.x;
                sp1C.z = sp14->lookat.eye.z;

                if (sp1C.abs(sp14->lookat.eye) > 2000.0f) {
                    var_f31 = 99999.9f;
                    spA = i;
                    break;
                } else {
                    if (var_r30[i].mPos.abs(sp14->lookat.eye) > var_f31) {
                        var_f31 = var_r30[i].mPos.abs(sp14->lookat.eye);
                        spA = i;
                    }
                }
            } else {
                if (var_r30[i].mPos.abs(sp14->lookat.eye) > var_f31) {
                    var_f31 = var_r30[i].mPos.abs(sp14->lookat.eye);
                    spA = i;
                }
            }
        }
    }

    if (sp10 == 0 && spA != 0xFF) {
        i = spA;
        if (i < 6 && param_0->abs(sp14->lookat.eye) < var_f31) {
            var_r30[i].mPos = *param_0;
            var_r30[i].mColor.r = param_1->r;
            var_r30[i].mColor.g = param_1->g;
            var_r30[i].mColor.b = param_1->b;
            var_r30[i].mColor.a = 0xFF;
            var_r30[i].mRefDistance = param_2;
            var_r30[i].field_0x14 = 0.99f;
            var_r30[i].mCutoffAngle = 90.0f;
            var_r30[i].mAngleX = 0.0f;
            var_r30[i].mAngleY = 0.0f;
            var_r30[i].mAngleAttenuation = GX_SP_OFF;
            var_r30[i].mDistAttenuation = GX_DA_STEEP;
            var_r30[i].field_0x26 = 1;
            sp10 = 1;
        }
    }

    return sp10;
}

/* 801AA664-801AAC5C 1A4FA4 05F8+00 0/0 0/0 3/3 .text
 * dKy_BossSpotLight_set__FP4cXyzfffP8_GXColorfUcUc             */
int dKy_BossSpotLight_set(cXyz* param_0, f32 param_1, f32 param_2, f32 param_3,
                          GXColor* param_4, f32 param_5, u8 param_6, u8 param_7) {
    dScnKy_env_light_c* temp_r31 = dKy_getEnvlight();
    camera_class* sp10 = (camera_class*)dComIfGp_getCamera(0);
    int spC = 0;
    f32 var_f31 = 0.0f;
    u8 sp8 = 0xFF;
    int i;

    for (i = 1; i < 6; i++) {
        if (temp_r31->field_0x0c18[i].field_0x26 == 0) {
            temp_r31->field_0x0c18[i].mPos = *param_0;
            temp_r31->field_0x0c18[i].mColor.r = param_4->r;
            temp_r31->field_0x0c18[i].mColor.g = param_4->g;
            temp_r31->field_0x0c18[i].mColor.b = param_4->b;
            temp_r31->field_0x0c18[i].mColor.a = 0xFF;
            temp_r31->field_0x0c18[i].mRefDistance = param_5;
            temp_r31->field_0x0c18[i].field_0x14 = 0.99f;
            temp_r31->field_0x0c18[i].mCutoffAngle = param_3;
            temp_r31->field_0x0c18[i].mAngleX = param_1;
            temp_r31->field_0x0c18[i].mAngleY = param_2 + 90.0f;
            temp_r31->field_0x0c18[i].mAngleAttenuation = param_6;
            temp_r31->field_0x0c18[i].mDistAttenuation = param_7;
            temp_r31->field_0x0c18[i].field_0x26 = 1;
            spC = 1;
            break;
        }
    }

    if (spC == 0) {
        for (i = 1; i < 6; i++) {
            if (temp_r31->field_0x0c18[i].field_0x26 != 0 && temp_r31->field_0x0c18[i].mPos.abs(sp10->lookat.eye) > var_f31) {
                var_f31 = temp_r31->field_0x0c18[i].mPos.abs(sp10->lookat.eye);
                sp8 = i;
            }
        }

        if (sp8 != 0xFF) {
            i = sp8;
            if (i < 6 && param_0->abs(sp10->lookat.eye) < temp_r31->field_0x0c18[i].mPos.abs(sp10->lookat.eye)) {
                temp_r31->field_0x0c18[i].mPos = *param_0;
                temp_r31->field_0x0c18[i].mColor.r = param_4->r;
                temp_r31->field_0x0c18[i].mColor.g = param_4->g;
                temp_r31->field_0x0c18[i].mColor.b = param_4->b;
                temp_r31->field_0x0c18[i].mColor.a = 0xFF;
                temp_r31->field_0x0c18[i].mRefDistance = param_5;
                temp_r31->field_0x0c18[i].field_0x14 = 0.99f;
                temp_r31->field_0x0c18[i].mCutoffAngle = param_3;
                temp_r31->field_0x0c18[i].mAngleX = param_1;
                temp_r31->field_0x0c18[i].mAngleY = param_2 + 90.0f;
                temp_r31->field_0x0c18[i].mAngleAttenuation = param_6;
                temp_r31->field_0x0c18[i].mDistAttenuation = param_7;
                temp_r31->field_0x0c18[i].field_0x26 = 1;
                spC = 1;
            }
        }
    }

    return spC;
}

/* 801AAC5C-801AAD50 1A559C 00F4+00 0/0 1/1 0/0 .text
 * dKy_WolfEyeLight_set__FP4cXyzfffP8_GXColorfUcUc              */
int dKy_WolfEyeLight_set(cXyz* param_0, f32 param_1, f32 param_2, f32 param_3, GXColor* param_4,
                         f32 param_5, u8 param_6, u8 param_7) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();

    kankyo->field_0x0c18[0].mPos = *param_0;

    kankyo->field_0x0c18[0].mColor.r = param_4->r;
    kankyo->field_0x0c18[0].mColor.g = param_4->g;
    kankyo->field_0x0c18[0].mColor.b = param_4->b;
    kankyo->field_0x0c18[0].mColor.a = 255;

    kankyo->field_0x0c18[0].mRefDistance = param_5;
    kankyo->field_0x0c18[0].field_0x14 = 0.99f;
    kankyo->field_0x0c18[0].mCutoffAngle = param_3;
    kankyo->field_0x0c18[0].mAngleX = param_1;
    kankyo->field_0x0c18[0].mAngleY = param_2 + 90.0f;
    kankyo->field_0x0c18[0].mAngleAttenuation = param_6;
    kankyo->field_0x0c18[0].mDistAttenuation = param_7;

    f32 var_f31;
    f32 var_f30;
    f32 var_f29;
    switch (kankyo->field_0x1309) {
    case 0:
        var_f31 = 50.0f;
        var_f30 = 1.0f;
        var_f29 = 0.9f;
        break;
    case 1:
        var_f31 = 200.0f;
        var_f30 = 1.0f;
        var_f29 = 1.0f;
        break;
    case 2:
        var_f31 = 350.0f;
        var_f30 = 1.5f;
        var_f29 = 1.5f;
        break;
    case 3:
    default:
        var_f31 = 1500.0f;
        var_f30 = 4.0f;
        var_f29 = 1.5f;
    }

    kankyo->field_0x127c = var_f31;
    kankyo->field_0x0c18[0].mRefDistance *= var_f30;
    kankyo->field_0x0c18[0].mCutoffAngle *= var_f29;
    kankyo->field_0x0c18[0].field_0x26 = 1;
    return 1;
}

/* 801AAD50-801AB01C 1A5690 02CC+00 1/1 0/0 0/0 .text            dKy_twilight_camelight_set__Fv */
static void dKy_twilight_camelight_set() {
    dScnKy_env_light_c* temp_r31 = dKy_getEnvlight();
    fopAc_ac_c* sp10 = dComIfGp_getPlayer(0);
    camera_class* spC = (camera_class*)dComIfGp_getCamera(0);
    u8 sp8 = 0;

    if (strcmp(dComIfGp_getStartStageName(), "R_SP107") != 0 || dComIfGp_roomControl_getStayNo() != 3 || dComIfGp_getStartStageLayer() != 12) {
        if (!dKy_darkworld_check() || memcmp(dComIfGp_getStartStageName(), "D_MN08", 6) == 0) {
            return;
        }

        if (!daPy_py_c::checkNowWolfPowerUp()) {
            for (int i = 0; i < 6; i++) {
                if (temp_r31->field_0x0c18[i].field_0x26 != 1) {
                    dKy_twi_wolflight_set(i);
                    temp_r31->field_0x0c18[i].field_0x14 = 0.99f;
                    temp_r31->field_0x0c18[i].mColor.a = 254;
                    
                    f32 var_f31 = 0.0f;
                    if (sp10 != NULL) {
                        f32 var_f30 = spC->lookat.eye.y - sp10->current.pos.y;
                        if (var_f30 < 0.0f) {
                            var_f30 = 0.0f;
                        }
                        if (var_f30 > 600.0f) {
                            var_f30 = 600.0f;
                        }
                        var_f31 = var_f30 / 450.0f;
                    }
    
                    switch (g_env_light.field_0x1309) {
                    case 0:
                        temp_r31->field_0x0c18[i].mColor.r = 0x19;
                        temp_r31->field_0x0c18[i].mColor.g = 0x5A;
                        temp_r31->field_0x0c18[i].mColor.b = 0xB7;
                        cLib_addCalc(&temp_r31->field_0x0c18[i].mRefDistance, 1.0625f + (0.75f * var_f31), 0.2f, 10.0f, 0.0001f);
                        temp_r31->field_0x0c18[i].mCutoffAngle = 90.0f;
                        break;
                    case 1:
                        temp_r31->field_0x0c18[i].mColor.r = 0x48;
                        temp_r31->field_0x0c18[i].mColor.g = 0x87;
                        temp_r31->field_0x0c18[i].mColor.b = 0xCE;
                        cLib_addCalc(&temp_r31->field_0x0c18[i].mRefDistance, 1.7f + (0.75f * var_f31), 0.2f, 10.0f, 0.0001f);
                        temp_r31->field_0x0c18[i].mCutoffAngle = 70.0f;
                        break;
                    case 2:
                        temp_r31->field_0x0c18[i].mColor.r = 0x48;
                        temp_r31->field_0x0c18[i].mColor.g = 0x87;
                        temp_r31->field_0x0c18[i].mColor.b = 0xCE;
                        cLib_addCalc(&temp_r31->field_0x0c18[i].mRefDistance, 2.5500002f + (0.75f * var_f31), 0.2f, 10.0f, 0.0001f);
                        temp_r31->field_0x0c18[i].mCutoffAngle = 70.0f;
                        break;
                    case 3:
                        temp_r31->field_0x0c18[i].mColor.r = 0x50;
                        temp_r31->field_0x0c18[i].mColor.g = 0x87;
                        temp_r31->field_0x0c18[i].mColor.b = 0xCE;
                        cLib_addCalc(&temp_r31->field_0x0c18[i].mRefDistance, 3.4f + (0.75f * var_f31), 0.2f, 10.0f, 0.0001f);
                        temp_r31->field_0x0c18[i].mCutoffAngle = 65.0f;
                        break;
                    }

                    temp_r31->field_0x0c18[i].mAngleAttenuation = GX_SP_COS;
                    temp_r31->field_0x0c18[i].mDistAttenuation = GX_DA_STEEP;
                    temp_r31->field_0x0c18[i].field_0x26 = 1;
                    break;
                }
            }
        }
    }
}

/* 801AB01C-801AB270 1A595C 0254+00 1/1 0/0 0/0 .text            dKy_WaterIn_Light_set__Fv */
// NONMATCHING - some weirdness with temp stores
static void dKy_WaterIn_Light_set() {
    dScnKy_env_light_c* temp_r30 = dKy_getEnvlight();
    fopAc_ac_c* sp18 = dComIfGp_getPlayer(0);
    camera_class* sp14 = (camera_class*)dComIfGp_getCamera(0);

    int sp10 = 0;
    int spC = 0;

    int sp8 = 1;
    if (strcmp(dComIfGp_getStartStageName(), "F_SP109") == 0 || strcmp(dComIfGp_getStartStageName(), "F_SP115") == 0 || strcmp(dComIfGp_getStartStageName(), "F_SP122") == 0) {
        sp8 = 3;
    }

    for (int i = 0; i < 6; i++) {
        if (temp_r30->field_0x0c18[i].field_0x26 != 1) {
            dKy_twi_wolflight_set(i);
            temp_r30->field_0x0c18[i].mColor.r = 0x8A;
            temp_r30->field_0x0c18[i].mColor.g = 0xC0;
            temp_r30->field_0x0c18[i].mColor.b = 0xBC;
            temp_r30->field_0x0c18[i].mColor.a = 0xFD;

            f32 var_f26 = 0.0f;
            if (sp18 != NULL) {
                f32 var_f31 = sp14->lookat.eye.y - sp18->current.pos.y;
                if (var_f31 < 0.0f) {
                    var_f31 = 0.0f;
                }
                if (var_f31 > 600.0f) {
                    var_f31 = 600.0f;
                }
                var_f26 = var_f31 / 450.0f;
            }

            temp_r30->field_0x0c18[i].mRefDistance = 7.2250004f + (0.75f * var_f26);
            temp_r30->field_0x0c18[i].mCutoffAngle = 28.0f;
            temp_r30->field_0x0c18[i].mAngleAttenuation = 2;
            temp_r30->field_0x0c18[i].mDistAttenuation = 3;

            f32* var_r30 = &temp_r30->field_0x0c18[i].mRefDistance;
            f32* var_r29 = &temp_r30->field_0x0c18[i].mCutoffAngle;

            if (strcmp(dComIfGp_getStartStageName(), "D_MN01A") == 0) {
                dBgS_CamGndChk_Wtr sp28;
                cXyz sp1C;
                sp8 = 1;
                *var_r29 = 60.0f;

                sp1C = sp14->lookat.eye;
                sp1C.y += 100000.0f;
                sp28.SetPos(&sp1C);

                f32 var_f30 = (dComIfG_Bgsp().GroundCross(&sp28) - sp14->lookat.eye.y) / 3000.0f;
                if (var_f30 < 0.0f) {
                    var_f30 = 0.0f;
                }
                if (var_f30 > 1.0f) {
                    var_f30 = 1.0f;
                }
                *var_r30 *= var_f30;
            }

            f32 var_f29, var_f28, var_f27;
            switch (sp8) {
            case 0:
            case 1:
                var_f29 = 200.0f;
                var_f28 = 1.0f;
                var_f27 = 1.0f;
                break;
            case 2:
            case 3:
            case 4:
            default:
                var_f29 = 200.0f;
                var_f28 = 2.0f;
                var_f27 = 1.25f;
                break;
            }

            temp_r30->field_0x127c = var_f29;
            *var_r30 *= var_f28;
            *var_r29 *= var_f27;
            temp_r30->field_0x0c18[i].field_0x26 = 1;
            sp10 = 1;
        }
        break;
    }
}

/* 801AB270-801AB280 1A5BB0 0010+00 0/0 2/2 0/0 .text            dKy_camera_water_in_status_set__FUc
 */
void dKy_camera_water_in_status_set(u8 status) {
    g_env_light.mCameraInWater = status;
}

/* 801AB280-801AB290 1A5BC0 0010+00 3/3 1/1 5/5 .text dKy_camera_water_in_status_check__Fv */
BOOL dKy_camera_water_in_status_check() {
    return g_env_light.mCameraInWater;
}

/* 801AB290-801AB3A8 1A5BD0 0118+00 0/0 5/5 0/0 .text dKy_pol_efftype_get__FPC13cBgS_PolyInfo */
u8 dKy_pol_efftype_get(const cBgS_PolyInfo* param_0) {
    dScnKy_env_light_c* temp_r30 = dKy_getEnvlight();
    if (param_0 == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int var_r31 = dComIfG_Bgsp().GetPolyAtt0(*param_0);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 && g_env_light.mPondSeason == 4) {
        if (var_r31 == 4) {
            var_r31 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 && dComIfGs_isStageBossEnemy() && var_r31 == 11) {
        var_r31 = 7;
    }

    u8 var_r29;
    int temp_r28 = dComIfG_Bgsp().GetPolyAtt1(*param_0);
    if (temp_r30->mResPolEfftbl != 0) {
        var_r29 = temp_r30->mResPolEfftbl[var_r31].data[temp_r28];
    } else {
        var_r29 = 0xFF;
    }

    return var_r29;
}

/* 801AB3A8-801AB4C0 1A5CE8 0118+00 0/0 2/2 0/0 .text dKy_pol_efftype2_get__FPC13cBgS_PolyInfo */
u8 dKy_pol_efftype2_get(cBgS_PolyInfo const* param_0) {
    dScnKy_env_light_c* temp_r30 = dKy_getEnvlight();
    if (param_0 == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int var_r31 = dComIfG_Bgsp().GetPolyAtt0(*param_0);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 && g_env_light.mPondSeason == 4) {
        if (var_r31 == 4) {
            var_r31 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 && dComIfGs_isStageBossEnemy() && var_r31 == 11) {
        var_r31 = 7;
    }

    u8 var_r29;
    int temp_r28 = dComIfG_Bgsp().GetPolyAtt1(*param_0);
    if (temp_r30->mResPolEfftbl2 != 0) {
        var_r29 = temp_r30->mResPolEfftbl2[var_r31].data[temp_r28];
    } else {
        var_r29 = 0xFF;
    }

    return var_r29;
}

/* 801AB4C0-801AB59C 1A5E00 00DC+00 0/0 9/9 21/21 .text dKy_pol_sound_get__FPC13cBgS_PolyInfo */
u8 dKy_pol_sound_get(cBgS_PolyInfo const* polyinfo) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    if (polyinfo == NULL || &dComIfG_Bgsp() == NULL) {
        return 0;
    }

    int z0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo);
    if (!strcmp(dComIfGp_getStartStageName(), "F_SP127") && g_env_light.mPondSeason == 4 && z0 == 4) {
        z0 = 13;
    }

    u8 sound;
    int z1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo);
    if (kankyo->mResPolSound != NULL) {
        sound = kankyo->mResPolSound[z0].data[z1];
    } else {
        sound = 0;
    }

    if (sound == 0xFF) {
        sound = 0;
    }

    return sound;
}

/* 801AB59C-801AB668 1A5EDC 00CC+00 0/0 5/5 0/0 .text dKy_pol_argument_get__FPC13cBgS_PolyInfo */
u8 dKy_pol_argument_get(cBgS_PolyInfo const* polyinfo) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    if (polyinfo == NULL || &dComIfG_Bgsp() == NULL) {
        return 0;
    }

    int att0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo);
    if (!strcmp(dComIfGp_getStartStageName(), "F_SP127") && g_env_light.mPondSeason == 4 && att0 == 4) {
        att0 = 13;
    }

    int att1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo);
    if (kankyo->mResPolArg != NULL) {
        return kankyo->mResPolArg[att0].data[att1];
    }

    return 0;
}

/* 801AB668-801AB7D0 1A5FA8 0168+00 0/0 1/1 2/2 .text
 * dKy_pol_eff_prim_get__FPC13cBgS_PolyInfoP8_GXColor           */
u8 dKy_pol_eff_prim_get(cBgS_PolyInfo const* polyinfo, GXColor* param_1) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    if (polyinfo == NULL || param_1 == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int att0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 && g_env_light.mPondSeason == 4) {
        if (att0 == 4) {
            att0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 && dComIfGs_isStageBossEnemy() && att0 == 11) {
        att0 = 7;
    }

    int att1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo);
    u8 var_r30;
    if (kankyo->mResPolEffcol != NULL) {
        var_r30 = kankyo->mResPolEffcol[att0].data[att1];
    } else {
        return 0xFF;
    }

    if (var_r30 >= 100) {
        return 0xFF;
    }

    param_1->r = kankyo->mResColorDataTbl[var_r30].data[0];
    param_1->g = kankyo->mResColorDataTbl[var_r30].data[1];
    param_1->b = kankyo->mResColorDataTbl[var_r30].data[2];
    return var_r30;
}

/* 801AB7D0-801AB93C 1A6110 016C+00 0/0 1/1 2/2 .text
 * dKy_pol_eff_env_get__FPC13cBgS_PolyInfoP8_GXColor            */
u8 dKy_pol_eff_env_get(cBgS_PolyInfo const* polyinfo, GXColor* param_1) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    if (polyinfo == NULL || param_1 == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int att0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 && g_env_light.mPondSeason == 4) {
        if (att0 == 4) {
            att0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 && dComIfGs_isStageBossEnemy() && att0 == 11) {
        att0 = 7;
    }

    int att1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo);
    u8 var_r30;
    if (kankyo->mResPolEffcol != NULL) {
        var_r30 = kankyo->mResPolEffcol[att0].data[att1];
    } else {
        return 0xFF;
    }

    if (var_r30 >= 100) {
        return 0xFF;
    }

    param_1->r = kankyo->mResColorDataTbl[var_r30].data[3];
    param_1->g = kankyo->mResColorDataTbl[var_r30].data[4];
    param_1->b = kankyo->mResColorDataTbl[var_r30].data[5];
    return var_r30;
}

/* 801AB93C-801ABAA4 1A627C 0168+00 0/0 1/1 2/2 .text
 * dKy_pol_eff2_prim_get__FPC13cBgS_PolyInfoP8_GXColor          */
u8 dKy_pol_eff2_prim_get(cBgS_PolyInfo const* polyinfo, GXColor* param_1) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    if (polyinfo == NULL || param_1 == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int att0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 && g_env_light.mPondSeason == 4) {
        if (att0 == 4) {
            att0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 && dComIfGs_isStageBossEnemy() && att0 == 11) {
        att0 = 7;
    }

    int att1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo);
    u8 var_r30;
    if (kankyo->mResPolEffcol2 != NULL) {
        var_r30 = kankyo->mResPolEffcol2[att0].data[att1];
    } else {
        return 0xFF;
    }

    if (var_r30 >= 100) {
        return 0xFF;
    }

    param_1->r = kankyo->mResColorDataTbl[var_r30].data[0];
    param_1->g = kankyo->mResColorDataTbl[var_r30].data[1];
    param_1->b = kankyo->mResColorDataTbl[var_r30].data[2];
    return var_r30;
}

/* 801ABAA4-801ABC10 1A63E4 016C+00 0/0 1/1 2/2 .text
 * dKy_pol_eff2_env_get__FPC13cBgS_PolyInfoP8_GXColor           */
u8 dKy_pol_eff2_env_get(cBgS_PolyInfo const* polyinfo, _GXColor* param_1) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    if (polyinfo == NULL || param_1 == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int att0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 && g_env_light.mPondSeason == 4) {
        if (att0 == 4) {
            att0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 && dComIfGs_isStageBossEnemy() && att0 == 11) {
        att0 = 7;
    }

    int att1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo);
    u8 var_r30;
    if (kankyo->mResPolEffcol2 != NULL) {
        var_r30 = kankyo->mResPolEffcol2[att0].data[att1];
    } else {
        return 0xFF;
    }

    if (var_r30 >= 100) {
        return 0xFF;
    }

    param_1->r = kankyo->mResColorDataTbl[var_r30].data[3];
    param_1->g = kankyo->mResColorDataTbl[var_r30].data[4];
    param_1->b = kankyo->mResColorDataTbl[var_r30].data[5];
    return var_r30;
}

/* 801ABC10-801ABD4C 1A6550 013C+00 0/0 1/1 2/2 .text dKy_pol_eff_alpha_get__FPC13cBgS_PolyInfo */
u8 dKy_pol_eff_alpha_get(cBgS_PolyInfo const* polyinfo) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    if (polyinfo == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int att0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 && g_env_light.mPondSeason == 4) {
        if (att0 == 4) {
            att0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 && dComIfGs_isStageBossEnemy() && att0 == 11) {
        att0 = 7;
    }

    int att1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo);
    u8 var_r30;
    if (kankyo->mResPolEffcol != NULL) {
        var_r30 = kankyo->mResPolEffcol[att0].data[att1];
    } else {
        return 0xFF;
    }

    if (var_r30 >= 100) {
        return 0xFF;
    }

    var_r30 = kankyo->mResColorDataTbl[var_r30].data[6];
    return var_r30;
}

/* 801ABD4C-801ABEA8 1A668C 015C+00 0/0 1/1 2/2 .text dKy_pol_eff_ratio_get__FPC13cBgS_PolyInfo */
f32 dKy_pol_eff_ratio_get(cBgS_PolyInfo const* polyinfo) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    f32 var_f31 = 0.0f;

    if (polyinfo == NULL || &dComIfG_Bgsp() == NULL) {
        return 0.0f;
    }

    int att0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 && g_env_light.mPondSeason == 4) {
        if (att0 == 4) {
            att0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 && dComIfGs_isStageBossEnemy() && att0 == 11) {
        att0 = 7;
    }

    int att1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo);
    u8 var_r30;
    if (kankyo->mResPolEffcol != NULL) {
        var_r30 = kankyo->mResPolEffcol[att0].data[att1];
    } else {
        return var_f31;
    }

    if (var_r30 >= 100) {
        return var_f31;
    }

    var_f31 = (f32)kankyo->mResColorDataTbl[var_r30].data[7];
    var_f31 = 0.01f * var_f31;
    return var_f31;
}

/* 801ABEA8-801ABFE4 1A67E8 013C+00 0/0 1/1 2/2 .text dKy_pol_eff2_alpha_get__FPC13cBgS_PolyInfo
 */
u8 dKy_pol_eff2_alpha_get(cBgS_PolyInfo const* polyinfo) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    if (polyinfo == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int att0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 && g_env_light.mPondSeason == 4) {
        if (att0 == 4) {
            att0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 && dComIfGs_isStageBossEnemy() && att0 == 11) {
        att0 = 7;
    }

    int att1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo);
    u8 var_r30;
    if (kankyo->mResPolEffcol2 != NULL) {
        var_r30 = kankyo->mResPolEffcol2[att0].data[att1];
    } else {
        return 0xFF;
    }

    if (var_r30 >= 100) {
        return 0xFF;
    }

    var_r30 = kankyo->mResColorDataTbl[var_r30].data[6];
    return var_r30;
}

/* 801ABFE4-801AC140 1A6924 015C+00 0/0 1/1 2/2 .text dKy_pol_eff2_ratio_get__FPC13cBgS_PolyInfo
 */
f32 dKy_pol_eff2_ratio_get(cBgS_PolyInfo const* polyinfo) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    f32 var_f31 = 0.0f;

    if (polyinfo == NULL || &dComIfG_Bgsp() == NULL) {
        return 0.0f;
    }

    int att0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 && g_env_light.mPondSeason == 4) {
        if (att0 == 4) {
            att0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 && dComIfGs_isStageBossEnemy() && att0 == 11) {
        att0 = 7;
    }

    int att1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo);
    u8 var_r30;
    if (kankyo->mResPolEffcol2 != NULL) {
        var_r30 = kankyo->mResPolEffcol2[att0].data[att1];
    } else {
        return var_f31;
    }

    if (var_r30 >= 100) {
        return var_f31;
    }

    var_f31 = (f32)kankyo->mResColorDataTbl[var_r30].data[7];
    var_f31 = 0.01f * var_f31;
    return var_f31;
}

/* 801AC140-801AC168 1A6A80 0028+00 0/0 2/2 0/0 .text            dKy_TeachWind_existence_chk__Fv */
BOOL dKy_TeachWind_existence_chk() {
    if (g_env_light.mTeachWindExist == 0xFF) {
        return -1;
    }

    return g_env_light.mTeachWindExist ? TRUE : FALSE;
}

/* 801AC168-801AC228 1A6AA8 00C0+00 4/4 0/0 2/2 .text            dKy_SunMoon_Light_Check__Fv */
BOOL dKy_SunMoon_Light_Check() {
    BOOL check = false;
    if (g_env_light.mSunInitialized && !dKy_darkworld_check()) {
        // stage is not City in the Sky, Hyrule Castle, or Hidden Skill area
        if (memcmp(dComIfGp_getStartStageName(), "D_MN07", 6) &&
            memcmp(dComIfGp_getStartStageName(), "D_MN09", 6) &&
            strcmp(dComIfGp_getStartStageName(), "F_SP200"))
        {
            check = true;
        }
    }

    return check;
}

/* 801AC228-801AC28C 1A6B68 0064+00 3/3 0/0 0/0 .text            dKy_Outdoor_check__Fv */
static int dKy_Outdoor_check() {
    BOOL outdoors = false;
    u32 type = ST_FIELD;

    if (dComIfGp_getStage() != NULL) {
        type = dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo());
    }

    if (type == ST_FIELD) {
        outdoors = true;
    }

    return outdoors;
}

/* 801AC28C-801AC2E0 1A6BCC 0054+00 1/1 0/0 0/0 .text            dKy_Indoor_check__Fv */
int dKy_Indoor_check() {
    BOOL indoors = false;

    if (dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) != ST_FIELD) {
        indoors = true;
    }

    return indoors;
}

/* 801AC2E0-801AC2E8 1A6C20 0008+00 0/0 1/1 0/0 .text            dKy_withwarp_capture_check__Fv */
BOOL dKy_withwarp_capture_check() {
    return false;
}

/* 801AC2E8-801AC57C 1A6C28 0294+00 0/0 1/1 0/0 .text            dKy_depth_dist_set__FPv */
void dKy_depth_dist_set(void* param_0) {
    dScnKy_env_light_c* temp_r28 = dKy_getEnvlight();
    camera_class* temp_r30 = (camera_class*)dComIfGp_getCamera(0);
    cXyz sp30;
    cXyz sp24;

    fopAc_ac_c* temp_r29 = (fopAc_ac_c*)param_0;
    sp24 = temp_r29->eyePos;

    if (dComIfGp_event_runCheck() && temp_r29->tevStr.Type <= 10) {
        if (fabsf(sp24.y - temp_r30->lookat.eye.y) < 400.0f) {
            sp24.y = temp_r30->lookat.eye.y;
        }

        f32 var_f31 = sp24.abs(temp_r30->lookat.eye);
        if (var_f31 < 2000.0f && var_f31 < temp_r28->field_0x1268) {
            mDoLib_project(&temp_r29->eyePos, &sp30);

            if ((sp30.x >= 0.0f && sp30.x < 608.0f) && (sp30.y >= 0.0f && sp30.y < 600.0f)) {
                cXyz sp18;
                cXyz spC;
                dKyr_get_vectle_calc(&temp_r30->lookat.eye, &temp_r30->lookat.center, &sp18);
                dKyr_get_vectle_calc(&temp_r30->lookat.eye, &temp_r29->eyePos, &spC);

                s16 temp_r27 = cM_atan2s(sp18.x, sp18.z);
                s16 temp_r26 = cM_atan2s(spC.x, spC.z);

                if ((s16)fabsf((f32)temp_r26 - (f32)temp_r27) > 0) {
                    temp_r28->field_0x1268 = var_f31;
                }
            }
        }
    }
}

/* 801AC57C-801AC5BC 1A6EBC 0040+00 13/13 21/21 134/134 .text            dKy_darkworld_check__Fv */
bool dKy_darkworld_check() {
    bool check = false;

    if (dComIfGp_world_dark_get() == 1) {
        check = true;
    }

    return check;
}

/**
 * @brief Returns the following info about a room: (1) if the room must not be in twilight and (2)
 * which darkLv the room belongs to (Faron, Eldin, etc.).
 *
 * @param stageName stage name
 * @param roomNo room number
 * @param out_darkLv byte pointer to write darkLv to, or NULL
 * @param tblIndex index in darkworld table for the stageName
 * @return int Returns -1 if the given room must not be loaded in twilight, else returns 0 or 1. A
 * return of 1 means darkLv should be read from out_darkLv and 0 means it should be read from the
 * darkworld table.
 */
/* 801AC5BC-801AC70C 1A6EFC 0150+00 3/3 0/0 0/0 .text            dKy_F_SP121Check__FPCciPUci */
static int dKy_F_SP121Check(char const* stageName, int roomNo, u8* out_darkLv, int tblIndex) {
    dKydata_darkworldInfo_c* darkworldTbl = dKyd_darkworld_tbl_getp();
    int result = 0;

    if (out_darkLv != NULL) {
        *out_darkLv = UNCLEARABLE;
    }

    // Stage is Hyrule Field
    if (!strcmp(stageName, "F_SP121")) {
        // Room is one of:
        // - Eldin Field (0)
        // - Kakariko Gorge (3)
        // - Eldin Field / Kakariko Gorge Path North (5) and South (4)
        // - Faron Field / Kakariko Gorge Path North (2)
        // - Outside Hidden Village (7)
        if (roomNo == 0 || (2 <= roomNo && roomNo <= 5) || roomNo == 7) {
            if (out_darkLv != NULL) {
                *out_darkLv = ELDIN;
            }
            result = 1;
        }

        // Room is one of:
        // - Lanayru Field (10)
        // - Great Bridge of Hylia (13)
        // - Lanayru Field / Great Bridge of Hylia Path North (11) and South (12)
        // - Faron Field / Great Bridge of Hylia Path North (14)
        // - Lanayru Field / Outside Hidden Village Path (9)
        else if (roomNo >= 9 && roomNo <= 14)
        {
            if (out_darkLv != NULL) {
                *out_darkLv = LANAYRU;
            }
            result = 1;
        }

        // Room is one of:
        // - Faron Field (6)
        // - Faron Field / Kakariko Gorge Path South (1)
        // - Faron Field / Great Bridge of Hylia Path South (15)
        else
        {
            result = -1;
        }
    }

    // Faron Spring; No twilight during Rusl cutscene at very beginning of game.
    else if (!strcmp(stageName, "F_SP108") && roomNo == 1 && dComIfGp_getStartStageLayer() == 13)
    {
        result = -1;
    }

    // Prevent twilight if stage depends on Faron Twilight cleared status (Faron Woods, Coro's
    // Lantern Shop, Faron Woods Cave) but haven't finished Ordon Day 2.
    if (darkworldTbl[tblIndex].darkLv == FARON && !dComIfGs_isEventBit(0x4510)) {
        result = -1;
    }

    return result;
}

/**
 * @brief Returns TRUE if (1) the room is one which can be loaded in twilight, (2) there is nothing
 * currently preventing it from being loaded in twilight, and (3) the player has not cleared the
 * relevant dark level (Faron Twilight, etc.). Otherwise returns FALSE.
 *
 * @param stageName stage name
 * @param roomNo room number
 * @return BOOL Returns TRUE if the room can be loaded as twilight and the player has not already
 * cleared it, else FALSE.
 */
/* 801AC70C-801AC7E0 1A704C 00D4+00 0/0 2/2 0/0 .text            dKy_darkworld_stage_check__FPCci */
u8 dKy_darkworld_stage_check(char const* stageName, int roomNo) {
    dKydata_darkworldInfo_c* darkworldTbl = dKyd_darkworld_tbl_getp();
    u8 result = FALSE;
    u8 darkLv[1];

    for (int i = 0; i < 34; i++) {
        if (!strcmp(stageName, darkworldTbl[i].stageName)) {
            if (darkworldTbl[i].darkLv != ALWAYS_DARK) {
                int fsp121CheckResult = dKy_F_SP121Check(stageName, roomNo, darkLv, i);
                if (fsp121CheckResult >= 0) {
                    if (fsp121CheckResult == 0) {
                        *darkLv = darkworldTbl[i].darkLv;
                    }
                    if (!dComIfGs_isDarkClearLV(*darkLv)) {
                        result = TRUE;
                    }
                    break;
                }
            } else {
                // ALWAYS_DARK is used to force twilight (likely for testing). This will
                // never normally run since it is not present in l_darkworld_tbl.
                result = TRUE;
                break;
            }
        }
    }

    return result;
}

/**
 * @brief Returns TRUE if a given room would be loaded in twilight. This function always behaves as
 * if the player has not cleared any twilights.
 *
 * For example, Eldin Field will always return TRUE. Faron Woods on the other hand might return TRUE
 * or FALSE depending on whether or not the player has completed Ordon Day 2.
 *
 * @param stageName stage name
 * @param roomNo room number
 * @return BOOL Returns TRUE if a given room would be loaded in twilight. This function always
 * behaves as if the player has not cleared any twilights.
 */
/* 801AC7E0-801AC870 1A7120 0090+00 0/0 1/1 0/0 .text            dKy_darkworld_spot_check__FPCci */
BOOL dKy_darkworld_spot_check(char const* stageName, int roomNo) {
    dKydata_darkworldInfo_c* darkworldTblPtr = dKyd_darkworld_tbl_getp();
    BOOL result = FALSE;

    for (int i = 0; i < 34; i++) {
        if (!strcmp(stageName, darkworldTblPtr->stageName) &&
            dKy_F_SP121Check(stageName, roomNo, NULL, i) >= 0)
        {
            result = TRUE;
            break;
        }
        darkworldTblPtr++;
    }

    return result;
}

/* 801AC870-801AC918 1A71B0 00A8+00 0/0 1/1 0/0 .text            dKy_darkworld_Area_set__FPCci */
void dKy_darkworld_Area_set(char const* stageName, int roomNo) {
    dKydata_darkworldInfo_c* darkworldTblPtr = dKyd_darkworld_tbl_getp();
    u8 darkLv[1];

    for (int i = 0; i < 34; i++) {
        if (!strcmp(stageName, darkworldTblPtr[i].stageName)) {
            int fsp121CheckResult = dKy_F_SP121Check(stageName, roomNo, darkLv, i);
            if (fsp121CheckResult >= 0) {
                if (fsp121CheckResult == 0) {
                    *darkLv = darkworldTblPtr[i].darkLv;
                }
                dComIfGp_setStartStageDarkArea(*darkLv);
                break;
            }
        }
    }
}

/* 801AC918-801ACCDC 1A7258 03C4+00 1/1 0/0 0/0 .text            dKy_murky_set__FP11J3DMaterial */
static void dKy_murky_set(J3DMaterial* material_p) {
    dKankyo_sunlenz_Packet* temp_r30 = g_env_light.mpSunLenzPacket;
    dKankyo_sun_Packet* temp_r28 = g_env_light.mpSunPacket;
    camera_class* temp_r29 = (camera_class*)dComIfGp_getCamera(0);
    cXyz sp18;
    J3DGXColorS10 sp10;
    J3DGXColor spC;

    JUT_ASSERT(0x43DB, material_p != 0);

    sp10.r = g_env_light.mTerrainAmbienceBG[1].r;
    sp10.g = g_env_light.mTerrainAmbienceBG[1].g;
    sp10.b = g_env_light.mTerrainAmbienceBG[1].b;
    sp10.a = g_env_light.mTerrainAmbienceBG[2].a;
    spC.a = g_env_light.mTerrainAmbienceBG[1].a;

    f32 var_f29 = 1.0f;

    if (g_env_light.field_0x1300 != -1) {
        spC.a = g_env_light.field_0x1300 * var_f29;
    }

    if (g_env_light.field_0x1302 != -1) {
        sp10.a = (u8)(g_env_light.field_0x1302 * var_f29);
    }

    if (temp_r30 != NULL && temp_r28->mVisibility > 0.000001f) {
        sp10.a = (u8)(sp10.a * (1.0f - (temp_r28->mVisibility * (1.0f - (temp_r30->mDistFalloff * temp_r30->mDistFalloff * temp_r30->mDistFalloff)))));
    }

    // Diababa room handling
    if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0) {
        dScnKy_env_light_c* var_r26 = dKy_getEnvlight();
        dKankyo_mud_Packet* var_r27 = var_r26->mpMudPacket;

        f32 var_f31;
        if (var_r27 != NULL) {
            var_f31 = 1.0f - var_r27->field_0x1c3c;
        }

        sp10.r = 20;
        sp10.g = 6;
        sp10.b = 15;

        sp10.r = (u8)(sp10.r + (s16)(-(f32)sp10.r * var_f31));
        sp10.g = (u8)(sp10.g + (s16)((36.0f - sp10.g) * var_f31));
        sp10.b = (u8)(sp10.b + (s16)((29.0f - sp10.b) * var_f31));

        if (temp_r29 != NULL && temp_r29->lookat.eye.z < 1800.0f) {
            f32 var_f30;
            if (temp_r29->lookat.eye.z < 1550.0f) {
                var_f30 = 1.0f;
            } else {
                var_f30 = 1.0f - ((temp_r29->lookat.eye.z - 1550.0f) / 250.0f);
            }
            sp10.a = (u8)(255.0f * var_f30);
        } else {
            sp10.a = 0;
        }

        sp10.a = (u8)(sp10.a + (s16)(-(f32)sp10.a * var_f31));
        
        spC.a = 0xFF;
        spC.a = (u8)(spC.a + (s16)((140.0f - spC.a) * var_f31));
    }

    spC.r = 0;
    spC.g = 0;
    spC.b = 0;

    material_p->setTevColor(1, &sp10);
    material_p->setTevKColor(3, &spC);
}

/* 801ACCDC-801ACCF4 1A761C 0018+00 2/2 1/1 0/0 .text            dKy_shadow_mode_set__FUc */
void dKy_shadow_mode_set(u8 mode) {
    g_env_light.mShadowMode |= mode;
}

/* 801ACCF4-801ACD0C 1A7634 0018+00 2/2 1/1 0/0 .text            dKy_shadow_mode_reset__FUc */
void dKy_shadow_mode_reset(u8 mode) {
    g_env_light.mShadowMode &= ~mode;
}

/* 801ACD0C-801ACD24 1A764C 0018+00 3/3 0/0 1/1 .text            dKy_shadow_mode_check__FUc */
u8 dKy_shadow_mode_check(u8 mode) {
    return g_env_light.mShadowMode & mode;
}

/* 80450708-8045070C 000188 0004+00 1/1 0/0 0/0 .sdata           l_zmodeUpEnable */
static J3DZModeInfo l_zmodeUpEnable = {1, 3, 1};

/* 8045070C-80450710 00018C 0004+00 1/1 0/0 0/0 .sdata           l_zmodeUpDisable */
static J3DZModeInfo l_zmodeUpDisable = {1, 3, 0};

/* 80450710-80450718 000190 0008+00 1/1 0/0 0/0 .sdata           l_alphaCompInfoOPA */
static J3DAlphaCompInfo l_alphaCompInfoOPA = {
    0x07, 0x00, 0x01, 0x07, 0x00, 0x00, 0x00, 0x00,
};

/* 80450718-80450720 000198 0008+00 1/1 0/0 0/0 .sdata           l_alphaCompInfo */
static J3DAlphaCompInfo l_alphaCompInfo = {
    0x04, 0x80, 0x00, 0x03, 0xFF, 0x00, 0x00, 0x00,
};

/* 801ACD24-801ADBBC 1A7664 0E98+00 0/0 0/0 7/7 .text            dKy_bg_MAxx_proc__FPv */
// NONMATCHING - `setAlphaCompInfo` is incorrect, and instruction in the wrong order at the start
void dKy_bg_MAxx_proc(void* param_0) {
    dScnKy_env_light_c* env_light = dKy_getEnvlight();
    J3DModel* sp68 = (J3DModel*)param_0;
    dDlst_window_c* window = dComIfGp_getWindow(0);
    camera_class* camera_p = (camera_class*)dComIfGp_getCamera(window->getCameraID());
    fopAc_ac_c* player_p = dComIfGp_getPlayer(0);

    if (sp68 != NULL && player_p != NULL) {
        J3DModelData* modelData = sp68->getModelData();

        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            J3DGXColor sp5C;

            J3DMaterial* mat_p = modelData->getMaterialNodePointer(i);
            JUTNameTab* sp4C = modelData->getMaterialName();
            const char* mat_name = sp4C->getName(i);

            if (mat_name[3] == 'M' && mat_name[4] == 'A') {
                if (memcmp(&mat_name[3], "MA06", 4) == 0) {
                    dKy_murky_set(mat_p);
                }

                if (memcmp(&mat_name[3], "MA03", 4) == 0 || memcmp(&mat_name[3], "MA09", 4) == 0 ||
                    memcmp(&mat_name[3], "MA17", 4) == 0 || memcmp(&mat_name[3], "MA19", 4) == 0)
                {
                    if (mat_name[5] != '1') {
                        dComIfGd_setListDarkBG();
                    } else if (mat_name[6] == '9') {
                        dComIfGd_setListInvisisble();
                    }

                    if (mat_p->getFog() != NULL) {
                        J3DFogInfo* fog_info_p = mat_p->getFog()->getFogInfo();

                        if (fog_info_p != NULL) {
                            if (mat_name[5] == '0' && mat_name[6] == '9') {
                                fog_info_p->mType = 6;

                                J3DGXColor sp44;
                                sp44.r = 245.0f - g_env_light.mWaterSurfaceShineRate * 45.0f;
                                sp44.g = 245.0f - g_env_light.mWaterSurfaceShineRate * 45.0f;
                                sp44.b = 245.0f - g_env_light.mWaterSurfaceShineRate * 35.0f;
                                sp44.a = 255;
                                mat_p->setTevKColor(1, &sp44);
                            } else {
                                fog_info_p->mType = 7;

                                J3DGXColorS10 spA0;
                                J3DGXColor sp40;
                                spA0.r = g_env_light.mTerrainAmbienceBG[2].r;
                                spA0.g = g_env_light.mTerrainAmbienceBG[2].g;
                                spA0.b = g_env_light.mTerrainAmbienceBG[2].b;
                                spA0.a = g_env_light.mTerrainAmbienceBG[2].a;

                                sp40.a = g_env_light.mTerrainAmbienceBG[1].a;
                                sp40.r = 0;
                                sp40.g = 0;
                                sp40.b = 0;

                                mat_p->setTevColor(1, &spA0);
                                mat_p->setTevKColor(3, &sp40);
                            }
                        }
                    }
                }

                if (memcmp(&mat_name[3], "MA07", 4) == 0) {
                    J3DGXColorS10 sp98;
                    dScnKy_env_light_c* sp3C = dKy_getEnvlight();
                    EF_THUNDER* sp38 = &sp3C->mThunderEff;

                    sp98.r = (u8)(sp38->mFlashTimer * 100.0f);
                    sp98.g = (u8)(sp38->mFlashTimer * 100.0f);
                    sp98.b = (u8)(sp38->mFlashTimer * 100.0f);
                    sp98.a = 255;

                    mat_p->setTevColor(0, &sp98);
                }

                if (memcmp(&mat_name[3], "MA10", 4) == 0 || memcmp(&mat_name[3], "MA02", 4) == 0) {
                    dComIfGd_setListInvisisble();

                    if (mat_p->getTexGenBlock()->getTexMtx(0) != NULL) {
                        J3DTexMtxInfo* tex_mtx_inf = &mat_p->getTexGenBlock()->getTexMtx(0)->getTexMtxInfo();
                        if (tex_mtx_inf != NULL) {
                            cXyz* sp34 = dKyw_get_wind_vec();
                            cXyz sp108;

                            Mtx sp1D8;
                            if (mat_name[6] == '2') {
                                C_MTXLightPerspective(sp1D8, dComIfGd_getView()->fovy,
                                                      camera_p->aspect, 1.0f, 1.0f, -0.01f, 0.0f);
                            } else {
                                C_MTXLightPerspective(sp1D8, dComIfGd_getView()->fovy,
                                                      camera_p->aspect, 0.49f, -0.49f, 0.5f, 0.5f);
                            }

                            tex_mtx_inf->setEffectMtx(sp1D8);
                            modelData->simpleCalcMaterial(0, (MtxP)j3dDefaultMtx);
                        }
                    }
                }

                if (memcmp(&mat_name[3], "MA00", 4) == 0 || memcmp(&mat_name[3], "MA01", 4) == 0 ||
                    memcmp(&mat_name[3], "MA04", 4) == 0 || memcmp(&mat_name[3], "MA16", 4) == 0)
                {
                    
                    sp5C.r = g_env_light.mFogDensity;
                    sp5C.g = 0;
                    sp5C.b = 0;
                    if (mat_name[6] == '1') {
                        J3DPEBlock* peblock_p = mat_p->getPEBlock();
                        mat_p->change();

                        if (dKy_camera_water_in_status_check()) {
                            sp5C.a = 255;
                            peblock_p->getAlphaComp()->setAlphaCompInfo(l_alphaCompInfo);
                            peblock_p->getZMode()->setZModeInfo(l_zmodeUpEnable);
                        } else {
                            sp5C.a = 0;
                            peblock_p->getAlphaComp()->setAlphaCompInfo(l_alphaCompInfoOPA);
                            peblock_p->getZMode()->setZModeInfo(l_zmodeUpDisable);
                        }
                    } else {
                        sp5C.a = 0;
                    }

                    mat_p->setTevKColor(1, &sp5C);
                }

                if (memcmp(&mat_name[3], "MA11", 4) == 0) {
                    J3DGXColorS10 sp90;
                    if (dKy_darkworld_check()) {
                        dComIfGd_setListDarkBG();

                        sp90.r = 170;
                        sp90.g = 160;
                        sp90.b = 255;
                        sp90.a = 255;
                        mat_p->setTevColor(1, &sp90);

                        sp90.r = 50;
                        sp90.g = 20;
                        sp90.b = 90;
                        sp90.a = 255;
                        mat_p->setTevColor(2, &sp90);
                    } else {
                        cXyz spFC;
                        cXyz spF0;

                        sp90.r = 120;
                        sp90.g = 90;
                        sp90.b = 180;
                        sp90.a = 255;

                        if (dComIfG_play_c::getLayerNo(0) == 1) {
                            sp90.a = 0;
                        }

                        mat_p->setTevColor(1, &sp90);

                        sp90.r = 40;
                        sp90.g = 30;
                        sp90.b = 65;
                        sp90.a = 255;
                        mat_p->setTevColor(2, &sp90);

                        if (env_light->field_0x1060 != NULL) {
                            spF0 = env_light->field_0x1060->mAvoidPos;
                            f32 var_f28 = env_light->field_0x1060->mSize.x *
                                          env_light->field_0x1060->mSizeScale;
                            if (var_f28 < 0.1f) {
                                var_f28 = 0.1f;
                            }

                            if (mat_p->getTexGenBlock()->getTexMtx(0) != NULL) {
                                J3DTexMtxInfo* tex_mtx_inf =
                                    &mat_p->getTexGenBlock()->getTexMtx(0)->getTexMtxInfo();

                                if (tex_mtx_inf != NULL) {
                                    Mtx sp1A8;
                                    Mtx sp178;
                                    C_MTXLightPerspective(sp1A8, var_f28 * 2.8f, 1.0f, 0.5f, 0.5f,
                                                          0.0f, 0.0f);
                                    spFC.x = spF0.x;
                                    spFC.y = 100.0f;
                                    spFC.z = spF0.z;

                                    cXyz spE4(spF0.x, -1000.0f, spF0.z);
                                    mDoMtx_lookAt(sp178, &spE4, &spFC, 0);
                                    cMtx_concat(sp1A8, sp178, sp178);
                                    tex_mtx_inf->setEffectMtx(sp178);
                                }
                            }
                        }
                    }
                } else if (memcmp(&mat_name[3], "MA20", 4) == 0) {
                    cXyz spD8;
                    cXyz spCC;
                    if (mat_p->getFog() != NULL) {
                        J3DFogInfo* fog_inf = mat_p->getFog()->getFogInfo();
                        if (fog_inf != NULL) {
                            fog_inf->mType = 7;
                        }

                        J3DGXColorS10 sp88;
                        sp88.r = g_env_light.mTerrainAmbienceBG[3].r;
                        sp88.g = g_env_light.mTerrainAmbienceBG[3].g;
                        sp88.b = g_env_light.mTerrainAmbienceBG[3].b;
                        sp88.a = 255;

                        mat_p->setTevColor(1, &sp88);

                        if (mat_p->getTexGenBlock()->getTexMtx(2) != NULL) {
                            J3DTexMtxInfo* tex_mtx_inf =
                                &mat_p->getTexGenBlock()->getTexMtx(2)->getTexMtxInfo();

                            if (tex_mtx_inf != NULL) {
                                Mtx sp148;
                                Mtx sp118;
                                C_MTXLightPerspective(sp148, 170.0f, 1.0f, 1.5f, 1.5f, 0.0f, 0.0f);
                                spD8.x = player_p->current.pos.x;
                                spD8.y = -14770.0f;
                                spD8.z = player_p->current.pos.z;

                                cXyz spC0(player_p->current.pos.x, -14570.0f,
                                          player_p->current.pos.z);
                                mDoMtx_lookAt(sp118, &spC0, &spD8, 0);
                                cMtx_concat(sp148, sp118, sp118);
                                tex_mtx_inf->setEffectMtx(sp118);
                            }
                        }
                    }
                } else if (memcmp(&mat_name[3], "MA13", 4) == 0) {
                    J3DGXColorS10 sp80;
                    sp80.r = g_env_light.mTerrainAmbienceBG[3].r;
                    sp80.g = g_env_light.mTerrainAmbienceBG[3].g;
                    sp80.b = g_env_light.mTerrainAmbienceBG[3].b;
                    sp80.a = g_env_light.mTerrainAmbienceBG[3].a;
                    mat_p->setTevColor(1, &sp80);
                } else if (memcmp(&mat_name[3], "MA14", 4) == 0) {
                    J3DGXColorS10 sp78;
                    J3DGXColor sp1C;
                    sp78.r = g_env_light.mFogColor.r;
                    sp78.g = g_env_light.mFogColor.g;
                    sp78.b = g_env_light.mFogColor.b;
                    sp78.a = g_env_light.mFogColor.a;
                    mat_p->setTevColor(1, &sp78);

                    sp1C.r = sp1C.g = sp1C.b = 0;
                    sp1C.a = g_env_light.mTerrainAmbienceBG[3].a;
                    mat_p->setTevKColor(3, &sp1C);
                } else if (memcmp(&mat_name[3], "MA16", 4) == 0) {
                    J3DGXColorS10 sp70;
                    J3DGXColor sp18;
                    sp70.r = g_env_light.mTerrainAmbienceBG[1].r;
                    sp70.g = g_env_light.mTerrainAmbienceBG[1].g;
                    sp70.b = g_env_light.mTerrainAmbienceBG[1].b;
                    sp70.a = g_env_light.mTerrainAmbienceBG[1].a;
                    mat_p->setTevColor(1, &sp70);

                    sp18.r = sp18.g = sp18.b = 0;
                    sp18.a = g_env_light.mTerrainAmbienceBG[3].a;
                    mat_p->setTevKColor(3, &sp18);
                }
            }

            if (memcmp(&mat_name[3], "Rainbow", 7) == 0) {
                f32 temp_f29;
                f32 temp_f31;

                f32 temp_f30 = g_env_light.getDaytime();
                cXyz spB4;
                camera_class* temp_r16_2 = dComIfGp_getCamera(0);
                J3DGXColor sp10;

                cXyz spA8;
                spA8.x = -5853.0f;
                spA8.y = temp_r16_2->lookat.eye.y;
                spA8.z = -879.0f;

                temp_f31 = spA8.abs(temp_r16_2->lookat.eye);
                temp_f31 = -0.2f + (temp_f31 / 4500.0f);
                if (temp_f31 > 1.0f) {
                    temp_f31 = 1.0f;
                } else if (temp_f31 < 0.0f) {
                    temp_f31 = 0.0f;
                }

                sp10.b = sp10.g = sp10.r = 255;
                sp10.a = 255;

                temp_f29 = 0.0f;
                if (temp_f30 >= 270.0f) {
                    if (temp_f30 < 285.0f) {
                        temp_f29 = (285.0f - temp_f30) / 15.0f;
                    }
                } else if (temp_f30 < 75.0f) {
                    if (temp_f30 >= 60.0f) {
                        temp_f29 = 1.0f - ((75.0f - temp_f30) / 15.0f);
                    }
                } else {
                    temp_f29 = 1.0f;
                }

                if (g_env_light.mColpatWeather != 0) {
                    temp_f29 = 0.0f;
                }

                sp10.b = 255;
                sp10.g = 255;
                sp10.r = 255;

                f32 temp_f25 = 1.0f;

                spA8 = temp_r16_2->lookat.center;
                spA8.y = temp_r16_2->lookat.eye.y;
                dKyr_get_vectle_calc(&temp_r16_2->lookat.eye, &spA8, &spB4);

                f32 temp_f27 = cM3d_VectorProduct2d(0.0f, 0.0f, -0.81f, 0.583f, spB4.x, spB4.z);
                f32 temp_f26;
                if (temp_f27 < 0.2f) {
                    sp10.a = 0;
                } else {
                    if (temp_f27 > 0.6f) {
                        temp_f26 = 1.0f;
                    } else {
                        temp_f26 = (temp_f27 - 0.2f) / 0.4f;
                    }
                    sp10.a = temp_f25 * (temp_f31 * (115.0f * temp_f26 * temp_f29));
                }

                mat_p->setTevKColor(3, &sp10);
            }
        }
    }
}

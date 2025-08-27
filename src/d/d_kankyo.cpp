#include "d/dolzel.h"

#include "d/d_kankyo.h"
#include <dolphin.h>
#include <dolphin/gf/GFPixel.h>
#include "SSystem/SComponent/c_counter.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_kytag08.h"
#include "d/actor/d_a_player.h"
#include "d/d_kankyo_rain.h"
#include "d/d_kankyo_static.h"
#include "d/d_meter2_info.h"
#include "d/d_msg_object.h"
#include "f_op/f_op_kankyo.h"
#include "m_Do/m_Do_graphic.h"
#include "m_Do/m_Do_lib.h"

static void GxXFog_set();

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
void dKy_WolfPowerup_AmbCol(GXColorS10* in_col_p) {
    JUT_ASSERT(185, in_col_p != 0);

    in_col_p->r = 40;
    in_col_p->g = 52;
    in_col_p->b = 49;
}

/* 8019C3A4-8019CB0C 196CE4 0768+00 2/2 0/0 0/0 .text            dKy_sense_pat_get__Fv */
int dKy_sense_pat_get() {
    int pat = 0;
    if (dKy_Outdoor_check()) {
        pat = 1;
    } else {
        pat = 5;
    }

    // Stage is Lake Hylia
    if (!strcmp(dComIfGp_getStartStageName(), "F_SP115")) {
        pat = 9;

        // Room is Lake
        if (dComIfGp_roomControl_getStayNo() == 0 && dComIfGs_isSaveSwitch(17) &&
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
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
    },
    320.0f,
    -320.0f,
    1000.0f,
    160000.0f,
    {
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
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
void dKy_WolfPowerup_BgAmbCol(GXColorS10* in_col_p) {
    JUT_ASSERT(374, in_col_p != 0);

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
void dKy_WolfPowerup_FogNearFar(f32* near_p, f32* far_p) {
    JUT_ASSERT(499, near_p != 0);
    JUT_ASSERT(500, far_p != 0);

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
void dKy_pos2_get_angle(cXyz* pos1_p, cXyz* pos2_p, s16* pitch_p, s16* yaw_p) {
    cXyz vec;
    vec = *pos1_p - *pos2_p;

    *pitch_p = cM_atan2s(-vec.y, vec.absXZ());
    *yaw_p = cM_atan2s(vec.x, vec.z);
}

/* 8042CA54-8042DD64 059774 1310+00 116/118 128/128 649/649 .bss             g_env_light */
dScnKy_env_light_c g_env_light;

/* 8019CFE4-8019D1A0 197924 01BC+00 4/4 0/0 0/0 .text            dKy_twi_wolflight_set__Fi */
void dKy_twi_wolflight_set(int light_id) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    camera_class* camera_p = dComIfGp_getCamera(0);
    cXyz vectle;

    if (camera_p == NULL) {
        return;
    }

    s16 angle_x;
    s16 angle_y;
    dKy_pos2_get_angle(&camera_p->lookat.center, &camera_p->lookat.eye, &angle_x, &angle_y);
    dKyr_get_vectle_calc(&camera_p->lookat.center, &camera_p->lookat.eye, &vectle);

    kankyo->field_0x0c18[light_id].mPos.x = camera_p->lookat.eye.x + vectle.x * 300.0f;
    kankyo->field_0x0c18[light_id].mPos.y = camera_p->lookat.eye.y + vectle.y * 300.0f;
    kankyo->field_0x0c18[light_id].mPos.z = camera_p->lookat.eye.z + vectle.z * 300.0f;

    switch (g_env_light.light_size) {
    case LIGHT_SIZE_S:
        kankyo->field_0x0c18[light_id].mPos.y += 1500.0f;
        break;
    case LIGHT_SIZE_M:
        kankyo->field_0x0c18[light_id].mPos.y += 500.0f;
        break;
    case LIGHT_SIZE_L:
        kankyo->field_0x0c18[light_id].mPos.y += 1000.0f;
        break;
    case LIGHT_SIZE_LL:
        kankyo->field_0x0c18[light_id].mPos.y += 1500.0f;
        break;
    default:
        kankyo->field_0x0c18[light_id].mPos.y += 500.0f;
        break;
    }

    angle_x += 6000;
    kankyo->field_0x0c18[light_id].mAngleX = cM_sht2d(-angle_x);
    kankyo->field_0x0c18[light_id].mAngleY = cM_sht2d(-angle_y) + 90.0f;
}

/* 8019D1A0-8019D2C4 197AE0 0124+00 3/3 0/0 0/0 .text            dKy_lightdir_set__FffP3Vec */
void dKy_lightdir_set(f32 angle_x, f32 angle_y, Vec* out_dir_p) {
    MtxP view_mtx = j3dSys.getViewMtx();
    Mtx inv;
    Vec calc_dir;
    cXyz dir;

    f32 x_deg = RAD_TO_DEG(angle_x);
    f32 y_deg = RAD_TO_DEG(angle_y);
    dir.x = cM_fcos(x_deg) * cM_fcos(y_deg);
    dir.y = cM_fsin(x_deg);
    dir.z = cM_fcos(x_deg) * cM_fsin(y_deg);

    mDoMtx_inverseTranspose(view_mtx, inv);
    cMtx_multVec(inv, &dir, &calc_dir);

    out_dir_p->x = calc_dir.x;
    out_dir_p->y = calc_dir.y;
    out_dir_p->z = calc_dir.z;
}

/* 8019D2C4-8019D44C 197C04 0188+00 3/2 0/0 0/0 .text dKy_GXInitLightSpot__FP12J3DLightInfofUc */
void dKy_GXInitLightSpot(J3DLightInfo* light_p, f32 cutoff, u8 spot_type) {
    if (cutoff <= 0.0f || cutoff > 90.0f) {
        spot_type = GX_SP_OFF;
    }

    f32 temp_f1;
    f32 var_f4 = cosf((cutoff * M_PI) / 180.0f);
    f32 x, y, z;

    switch (spot_type) {
    case GX_SP_FLAT:
        x = var_f4 * -1000.0f;
        y = 1000.0f;
        z = 0.0f;
        break;
    case GX_SP_COS:
        x = -var_f4 / (1.0f - var_f4);
        y = 1.0f / (1.0f - var_f4);
        z = 0.0f;
        break;
    case GX_SP_COS2:
        x = 0.0f;
        y = -var_f4 / (1.0f - var_f4);
        z = 1.0f / (1.0f - var_f4);
        break;
    case GX_SP_SHARP:
        temp_f1 = ((1.0f - var_f4) * (1.0f - var_f4));
        x = (var_f4 * (var_f4 - 2.0f)) / temp_f1;
        y = 2.0f / temp_f1;
        z = -1.0f / temp_f1;
        break;
    case GX_SP_RING1:
        temp_f1 = ((1.0f - var_f4) * (1.0f - var_f4));
        x = (var_f4 * -4.0f) / temp_f1;
        y = ((var_f4 + 1.0f) * 4.0f) / temp_f1;
        z = -4.0f / temp_f1;
        break;
    case GX_SP_RING2:
        temp_f1 = ((1.0f - var_f4) * (1.0f - var_f4));
        x = 1.0f - (var_f4 * 2.0f * var_f4) / temp_f1;
        y = (var_f4 * 4.0f) / temp_f1;
        z = -2.0f / temp_f1;
        break;
    case GX_SP_OFF:
    default:
        x = 1.0f;
        y = 0.0f;
        z = 0.0f;
        break;
    }

    light_p->mCosAtten.x = x;
    light_p->mCosAtten.y = y;
    light_p->mCosAtten.z = z;
}

/* 8019D44C-8019D520 197D8C 00D4+00 2/2 0/0 0/0 .text
 * dKy_GXInitLightDistAttn__FP12J3DLightInfoffUc                */
void dKy_GXInitLightDistAttn(J3DLightInfo* light_p, f32 param_1, f32 param_2, u8 distattn_type) {
    f32 temp_f3;
    f32 z;
    f32 x;
    f32 y;

    if (param_1 < 0.0f) {
        distattn_type = GX_DA_OFF;
    }

    if (param_2 <= 0.0f || param_2 >= 1.0f) {
        distattn_type = GX_DA_OFF;
    }

    switch (distattn_type) {
    case GX_DA_GENTLE:
        x = 1.0f;
        y = (1.0f - param_2) / (param_2 * param_1);
        z = 0.0f;
        break;
    case GX_DA_MEDIUM:
        x = 1.0f;
        temp_f3 = (1.0f - param_2) * 0.5f;
        y = temp_f3 / (param_2 * param_1);
        z = temp_f3 / (param_1 * param_2 * param_1);
        break;
    case GX_DA_STEEP:
        x = 1.0f;
        y = 0.0f;
        z = (1.0f - param_2) / (param_1 * (param_2 * param_1));
        break;
    default:
    case GX_DA_OFF:
        x = 1.0f;
        y = 0.0f;
        z = 0.0f;
        break;
    }

    light_p->mDistAtten.x = x;
    light_p->mDistAtten.y = y;
    light_p->mDistAtten.z = z;
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
static void kankyo_color_ratio_calc(GXColor* out_col_p, GXColorS10 color, f32 ratio) {
    GXColorS10 work_color;
    work_color = color;

    out_col_p->r = kankyo_color_ratio_calc_common(work_color.r, ratio);
    out_col_p->g = kankyo_color_ratio_calc_common(work_color.g, ratio);
    out_col_p->b = kankyo_color_ratio_calc_common(work_color.b, ratio);
}

/* 8019D68C-8019D790 197FCC 0104+00 2/2 0/0 0/0 .text kankyo_color_ratio_set__FUcUcfUcUcfsf */
static s16 kankyo_color_ratio_set(u8 color_a_start, u8 color_a_end, f32 color_ratio,
                                  u8 color_b_start, u8 color_b_end, f32 blend_ratio, s16 add_color,
                                  f32 scale) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();

    s16 a = s16_data_ratio_set(color_a_start, color_a_end, color_ratio);
    s16 b = s16_data_ratio_set(color_b_start, color_b_end, color_ratio);
    s16 blend_color = s16_data_ratio_set(a, b, blend_ratio);
    blend_color += add_color;

    s16 calc_color = kankyo->now_allcol_ratio * scale * blend_color;

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
static f32 float_kankyo_color_ratio_set(f32 color_a_start, f32 color_a_end, f32 color_ratio,
                                        f32 color_b_start, f32 color_b_end, f32 blend_ratio,
                                        f32 param_6, f32 param_7) {
    f32 a = fl_data_ratio_set(color_a_start, color_a_end, color_ratio);
    f32 b = fl_data_ratio_set(color_b_start, color_b_end, color_ratio);
    f32 calc_color = fl_data_ratio_set(a, b, blend_ratio);
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
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    BOOL init_mode_change = FALSE;

    cXyz particle_pos;
    cXyz particle_size;

    particle_pos.x = 0.0f;
    particle_pos.y = 0.0f;
    particle_pos.z = 0.0f;

    particle_size.x = 1.0f;
    particle_size.y = 1.0f;
    particle_size.z = 1.0f;

    if (daPy_py_c::checkNowWolfPowerUp()) {
        kankyo->now_senses_effect = 1;
        init_mode_change = TRUE;

        if (kankyo->senses_effect_strength <= 0.0f) {
            dComIfGp_particle_set(0x1E3, &particle_pos, NULL, NULL, &particle_size);
        }

        cLib_addCalc(&kankyo->senses_effect_strength, 1.0f, 0.5f, 0.1f, 0.01f);
    } else if (kankyo->senses_effect_strength > 0.0f) {
        if (kankyo->senses_effect_strength >= 1.0f) {
            dComIfGp_particle_set(0x46A, &particle_pos, NULL, NULL, &particle_size);
        }

        cLib_addCalc(&kankyo->senses_effect_strength, 0.0f, 0.5f, 0.1f, 0.01f);
        init_mode_change = TRUE;
    }

    switch (kankyo->senses_mode) {
    case 0:
        if (init_mode_change != TRUE) {
            break;
        }

        kankyo->senses_ef_emitter0 = NULL;
        kankyo->senses_ef_emitter1 = NULL;
        kankyo->senses_ef_emitter2 = NULL;

        kankyo->senses_ef_emitter0 = dComIfGp_particle_set(0x1F2, &particle_pos, NULL, NULL);
        kankyo->senses_ef_emitter1 = dComIfGp_particle_set(0x1F3, &particle_pos, NULL, NULL, &particle_size);
        kankyo->senses_ef_emitter2 = dComIfGp_particle_set(0x1F4, &particle_pos, NULL, NULL, &particle_size);
        kankyo->senses_mode++;
    case 1:
        if (init_mode_change == TRUE) {
            if (kankyo->senses_ef_emitter0 != NULL) {
                kankyo->senses_ef_emitter0->setGlobalTranslation(particle_pos.x, particle_pos.y,
                                                                 particle_pos.z);
                kankyo->senses_ef_emitter0->setGlobalAlpha(kankyo->senses_effect_strength * 255.0f);
            }

            if (kankyo->senses_ef_emitter1 != NULL) {
                kankyo->senses_ef_emitter1->setGlobalTranslation(particle_pos.x, particle_pos.y,
                                                                 particle_pos.z);
                kankyo->senses_ef_emitter1->setGlobalAlpha(kankyo->senses_effect_strength * 255.0f);
            }

            if (kankyo->senses_ef_emitter2 != NULL) {
                kankyo->senses_ef_emitter2->setGlobalTranslation(particle_pos.x, particle_pos.y,
                                                                 particle_pos.z);

                kankyo->senses_ef_emitter2->setGlobalEnvColor(
                    255.0f * (1.0f - kankyo->senses_effect_strength),
                    255.0f * (1.0f - kankyo->senses_effect_strength),
                    255.0f * (1.0f - kankyo->senses_effect_strength));
            }
        } else {
            kankyo->senses_mode++;
        }
        break;
    case 2:
        if (kankyo->senses_ef_emitter0 != NULL) {
            kankyo->senses_ef_emitter0->deleteAllParticle();
            kankyo->senses_ef_emitter0->becomeInvalidEmitter();
            kankyo->senses_ef_emitter0->quitImmortalEmitter();
            kankyo->senses_ef_emitter0->setEmitterCallBackPtr(NULL);
            kankyo->senses_ef_emitter0 = NULL;
        }

        if (kankyo->senses_ef_emitter1 != NULL) {
            kankyo->senses_ef_emitter1->deleteAllParticle();
            kankyo->senses_ef_emitter1->becomeInvalidEmitter();
            kankyo->senses_ef_emitter1->quitImmortalEmitter();
            kankyo->senses_ef_emitter1->setEmitterCallBackPtr(NULL);
            kankyo->senses_ef_emitter1 = NULL;
        }

        if (kankyo->senses_ef_emitter2 != NULL) {
            kankyo->senses_ef_emitter2->deleteAllParticle();
            kankyo->senses_ef_emitter2->becomeInvalidEmitter();
            kankyo->senses_ef_emitter2->quitImmortalEmitter();
            kankyo->senses_ef_emitter2->setEmitterCallBackPtr(NULL);
            kankyo->senses_ef_emitter2 = NULL;
        }

        kankyo->senses_mode = 0;
        break;
    }
}

/* 8019DD4C-8019DD6C 19868C 0020+00 0/0 1/1 0/0 .text dKy_FiveSenses_fullthrottle_dark__Fv */
void dKy_FiveSenses_fullthrottle_dark() {
    dKy_FiveSenses_fullthrottle_dark_static1();
}

/* 8019DD6C-8019E13C 1986AC 03D0+00 3/3 0/0 0/0 .text            dKy_light_influence_id__F4cXyzi */
int dKy_light_influence_id(cXyz position, int param_1) {
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
            if (g_env_light.pointlight[j] != NULL && (i == 0 || j != closest_plight_no) &&
                g_env_light.pointlight[j]->mPow > 0.01f)
            {
                if (closest_plight_dist > position.abs(g_env_light.pointlight[j]->mPosition)) {
                    if (g_env_light.pointlight[j]->mIndex & 0x8000) {
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
                        closest_plight_dist = position.abs(g_env_light.pointlight[j]->mPosition);
                        if (closest_plight_dist < g_env_light.pointlight[j]->mPow) {
                            if (strcmp(dComIfGp_getStartStageName(), "D_MN05") == 0 &&
                                dComIfGp_roomControl_getStayNo() == 0)
                            {
                                if (closest_plight_dist < g_env_light.pointlight[j]->mPow * 0.5f) {
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

                if (g_env_light.pointlight[j]->mIndex < 0 && var_r25 != 99) {
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
int dKy_eflight_influence_id(cXyz position, int param_1) {
    f32 var_f31 = 1000000.0f;

    int var_r28 = -1;
    int var_r27 = -1;
    int j, i;

    for (i = 0; i <= param_1; i++) {
        for (j = 0; j < 5; j++) {
            if (g_env_light.efplight[j] != NULL && (i == 0 || j != var_r28)) {
                if (var_f31 > position.abs(g_env_light.efplight[j]->mPosition) &&
                    g_env_light.efplight[j]->mPow > 0.01f)
                {
                    var_f31 = position.abs(g_env_light.efplight[j]->mPosition);

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
GXColorS10 dKy_light_influence_col(int light_id) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    return kankyo->pointlight[light_id >= 0 ? light_id : 0]->mColor;
}

/* 8019E430-8019E520 198D70 00F0+00 4/4 3/3 0/0 .text dKy_light_influence_col__FP8_GXColorf */
GXColor dKy_light_influence_col(GXColor* in_col_p, f32 ratio) {
    GXColor out_col;

    f32 r = in_col_p->r * ratio;
    if (r <= 255.0f) {
        out_col.r = r;
    } else {
        out_col.r = 255;
    }

    f32 g = in_col_p->g * ratio;
    if (g <= 255.0f) {
        out_col.g = g;
    } else {
        out_col.g = 255;
    }

    f32 b = in_col_p->b * ratio;
    if (b <= 255.0f) {
        out_col.b = b;
    } else {
        out_col.b = 255;
    }

    return out_col;
}

/* 8019E520-8019E548 198E60 0028+00 1/1 0/0 0/0 .text            dKy_light_influence_power__Fi */
f32 dKy_light_influence_power(int light_id) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    return kankyo->pointlight[light_id >= 0 ? light_id : 0]->mPow;
}

/* 8019E548-8019E570 198E88 0028+00 1/1 0/0 0/0 .text            dKy_light_influence_yuragi__Fi */
f32 dKy_light_influence_yuragi(int light_id) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    return kankyo->pointlight[light_id >= 0 ? light_id : 0]->mFluctuation;
}

/* 8019E570-8019E694 198EB0 0124+00 1/1 0/0 0/0 .text dKy_light_influence_distance__F4cXyzi */
f32 dKy_light_influence_distance(cXyz position, int light_id) {
    return position.abs(g_env_light.pointlight[light_id >= 0 ? light_id : 0]->mPosition);
}

/* 8019E694-8019E708 198FD4 0074+00 2/2 0/0 0/0 .text            plight_init__Fv */
static void plight_init() {
    g_env_light.mLightInfluence[0].mPow = 99999.9f;

    for (int i = 0; i < 100; i++) {
        g_env_light.pointlight[i] = NULL;
    }

    for (int i = 0; i < 5; i++) {
        g_env_light.efplight[i] = NULL;
        g_env_light.unk_0x72c[i] = NULL;
    }

    g_env_light.mPlayerPLightIdx = -1;
    g_env_light.mPlayerEfLightIdx = -1;
}

/* 8019E708-8019E734 199048 002C+00 1/1 0/0 0/0 .text            darkmist_init__Fv */
static void darkmist_init() {
    for (int i = 0; i < 10; i++) {
        g_env_light.dalkmist_influence[i] = NULL;
    }
}

/* 8019E734-8019E854 199074 0120+00 1/1 0/0 0/0 .text            plight_set__Fv */
static void plight_set() {
    int plight_no = 0;

    stage_plight_info_class* plight_info = dComIfGp_getStagePlightInfo();
    if (plight_info != NULL) {
        g_env_light.stage_plight_info = plight_info;

        for (int i = 0; i < dComIfGp_getStagePlightNumInfo(); i++) {
            if (plight_no < 30) {
                g_env_light.mLightInfluence[plight_no].mPosition.x = plight_info[i].position.x;
                g_env_light.mLightInfluence[plight_no].mPosition.y = plight_info[i].position.y;
                g_env_light.mLightInfluence[plight_no].mPosition.z = plight_info[i].position.z;
                g_env_light.mLightInfluence[plight_no].mColor.r = plight_info[i].color.r;
                g_env_light.mLightInfluence[plight_no].mColor.g = plight_info[i].color.g;
                g_env_light.mLightInfluence[plight_no].mColor.b = plight_info[i].color.b;
                g_env_light.mLightInfluence[plight_no].mPow = plight_info[i].power * 200.0f;
                g_env_light.mLightInfluence[plight_no].mFluctuation = plight_info[i].fluctuation;
                dKy_plight_set(&g_env_light.mLightInfluence[plight_no]);
                plight_no++;
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
    for (int i = 0; i < 2; i++) {
        g_env_light.bgparts_active_light[0].mIndex = 0;
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

    dScnKy_env_light_c* kankyo = dKy_getEnvlight();

    for (int i = 0; i < 8; i++) {
        kankyo->dungeonlight[i].mPosition = cXyz(test_pos_tbl[i]);
        kankyo->dungeonlight[i].mRefDistance = 1.0f;
        kankyo->dungeonlight[i].field_0x14 = 0.99f;
        kankyo->dungeonlight[i].mColor.r = test_color_tbl[i].r;
        kankyo->dungeonlight[i].mColor.g = test_color_tbl[i].g;
        kankyo->dungeonlight[i].mColor.b = test_color_tbl[i].b;
        kankyo->dungeonlight[i].mColor.a = 255;

        kankyo->dungeonlight[i].mInfluence.mPosition = kankyo->dungeonlight[i].mPosition;
        kankyo->dungeonlight[i].mInfluence.mColor.r = kankyo->dungeonlight[i].mColor.r;
        kankyo->dungeonlight[i].mInfluence.mColor.g = kankyo->dungeonlight[i].mColor.g;
        kankyo->dungeonlight[i].mInfluence.mColor.b = kankyo->dungeonlight[i].mColor.b;
        kankyo->dungeonlight[i].mInfluence.mPow = kankyo->dungeonlight[i].mRefDistance * 100.0f;
        kankyo->dungeonlight[i].mInfluence.mFluctuation = 0.0f;

        kankyo->dungeonlight[i].mCutoffAngle = 90.0f;
        kankyo->dungeonlight[i].mAngleX = -90.0f;
        kankyo->dungeonlight[i].mAngleY = 0.0f;
        kankyo->dungeonlight[i].mAngleAttenuation = GX_SP_OFF;
        kankyo->dungeonlight[i].mDistAttenuation = GX_DA_MEDIUM;

        kankyo->field_0x0c18[i].mPos = cXyz(test_pos_tbl[i]);
        kankyo->field_0x0c18[i].mColor.r = test_color_tbl[i].r;
        kankyo->field_0x0c18[i].mColor.g = test_color_tbl[i].g;
        kankyo->field_0x0c18[i].mColor.b = test_color_tbl[i].b;
        kankyo->field_0x0c18[i].mColor.a = 255;
        kankyo->field_0x0c18[i].mRefDistance = 0.001f;
        kankyo->field_0x0c18[i].field_0x14 = 0.99f;
        kankyo->field_0x0c18[i].field_0x26 = 0;
        kankyo->field_0x0c18[i].mCutoffAngle = 90.0f;
        kankyo->field_0x0c18[i].mAngleX = -90.0f;
        kankyo->field_0x0c18[i].mAngleY = 0.0f;
        kankyo->field_0x0c18[i].mAngleAttenuation = GX_SP_OFF;
        kankyo->field_0x0c18[i].mDistAttenuation = GX_DA_MEDIUM;

        if (i < 6) {
            kankyo->field_0x0d58[i] = kankyo->field_0x0c18[i];
        }
    }
}

/* 8019EAA0-8019EBD0 1993E0 0130+00 1/1 0/0 0/0 .text            undwater_init__Fv */
static void undwater_init() {
    J3DModelData* modelData2 = (J3DModelData*)dComIfG_getObjectRes("Always", 0x1D);
    JUT_ASSERT(1867, modelData2 != 0);

    g_env_light.undwater_ef_heap = mDoExt_createSolidHeapFromGameToCurrent(0x600, 0x20);

    if (g_env_light.undwater_ef_heap != NULL) {
        g_env_light.undwater_ef_model = mDoExt_J3DModel__create(modelData2, 0x80000, 0x11020202);

        if (g_env_light.undwater_ef_model != NULL) {
            g_env_light.undwater_btk = new mDoExt_btkAnm();

            if (g_env_light.undwater_btk != NULL) {
                J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("Always", 0x3C);
                if (!g_env_light.undwater_btk->init(modelData2, pbtk, TRUE,
                                                    J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1))
                {
                    JUT_ASSERT(1898, 0);
                }
            } else {
                JUT_ASSERT(1902, 0);
            }
        }
        mDoExt_restoreCurrentHeap();
        mDoExt_adjustSolidHeap(g_env_light.undwater_ef_heap);
    } else {
        JUT_ASSERT(1917, 0);
    }
}

/* 8019EBD0-8019EC98 199510 00C8+00 1/1 0/0 0/0 .text            dKy_light_size_get__FPCc */
void dKy_light_size_get(char const* stageName) {
    dKydata_lightsizeInfo_c* size_tbl = dKyd_light_size_tbl_getp();
    dKydata_lightsizeInfo_c* tw_size_tbl = dKyd_light_tw_size_tbl_getp();

    if (!dKy_darkworld_check()) {
        for (int i = 0; i < 36; i++) {
            if (!strcmp(stageName, size_tbl->stageName)) {
                g_env_light.light_size = size_tbl->size;
                return;
            }
            size_tbl++;
        }
    } else {
        for (int i = 0; i < 9; i++) {
            if (!strcmp(stageName, tw_size_tbl->stageName)) {
                g_env_light.light_size = tw_size_tbl->size;
                return;
            }
            tw_size_tbl++;
        }
    }
}

/* 8019EC98-8019F264 1995D8 05CC+00 1/1 0/0 0/0 .text            envcolor_init__Fv */
static void envcolor_init() {
    stage_palette_info_class* stage_palette_p = dComIfGp_getStagePaletteInfo();
    stage_pselect_info_class* stage_psel_p = dComIfGp_getStagePselectInfo();
    stage_envr_info_class* stage_envr_p = dComIfGp_getStageEnvrInfo();
    stage_vrboxcol_info_class* stage_vrboxcol_p = dComIfGp_getStageVrboxcolInfo();

    dKy_actor_addcol_set(0, 0, 0, 0.0f);
    dKy_fog_startendz_set(0.0f, 0.0f, 0.0f);
    dKy_vrbox_addcol_set(0, 0, 0, 0.0f);

    g_env_light.field_0x1280 = 0;
    g_env_light.light_init_timer = 1;
    g_env_light.schbit = 0;
    g_env_light.schbit_timer = 0;

    g_env_light.hide_vrbox = false;
    g_env_light.mContrastFlag = 0;
    g_env_light.mFogAdjEnable = true;
    g_env_light.mFogAdjTableType = 0;
    g_env_light.mFogAdjCenter = 0x140;
    dKyd_xfog_table_set(0);

    g_env_light.now_allcol_ratio = 1.0f;
    g_env_light.now_actcol_ratio = 1.0f;
    g_env_light.now_bgcol_ratio = 1.0f;
    g_env_light.now_fogcol_ratio = 1.0f;
    g_env_light.now_vrboxsoracol_ratio = 1.0f;
    g_env_light.now_vrboxkumocol_ratio = 1.0f;
    g_env_light.field_0x1210 = 1.0f;

    g_env_light.allcol_ratio = 1.0f;
    g_env_light.actcol_ratio = 1.0f;
    g_env_light.bgcol_ratio = 1.0f;
    g_env_light.fogcol_ratio = 1.0f;
    g_env_light.vrboxsoracol_ratio = 1.0f;
    g_env_light.vrboxkumocol_ratio = 1.0f;
    g_env_light.field_0x122c = 1.0f;

    g_env_light.Itemgetcol_chg = 0;
    g_env_light.field_0x1240 = 0.0f;
    g_env_light.field_0x1230 = 0.0f;
    g_env_light.field_0x1234 = 0.0f;

    g_env_light.mThunderEff.mState = 0;
    g_env_light.field_0x1238 = 0.0f;
    g_env_light.field_0x123c = 0.0f;
    g_env_light.field_0x12d6 = 0;
    g_env_light.shadow_mode = 0;
    g_env_light.camera_water_in_status = 0;

    g_env_light.field_0x1258 = 0.0f;
    g_env_light.mActorLightEffect = 100;
    g_env_light.bg_light_influence = 1.0f;
    g_env_light.field_0x1064.x = 0.0f;
    g_env_light.field_0x1064.y = -1.0f;
    g_env_light.field_0x1064.z = -1.0f;
    g_env_light.mDemoAttentionPoint = 0.0f;

    if (!strcmp(dComIfGp_getStartStageName(), "R_SP127")) {
        g_env_light.mDemoAttentionPoint = 0.11f;
    }

    g_env_light.light_mask_type = 0;
    g_env_light.field_0x130b = 0;
    g_env_light.light_size = LIGHT_SIZE_M;
    dKy_light_size_get(dComIfGp_getStartStageName());
    g_env_light.grass_light_inf_rate = 1.0f;
    g_env_light.field_0x12fc = -1;
    g_env_light.field_0x1278 = 0.0f;
    g_env_light.field_0x1264 = -255.0f;
    g_env_light.field_0x1268 = 999999.9f;
    g_env_light.field_0x126c = 999999.9f;
    g_env_light.field_0x127c = 200.0f;

    if (dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) == ST_BOSS_ROOM) {
        g_env_light.light_schedule = dKyd_schejule_boss_getp();
    } else {
        g_env_light.light_schedule = dKyd_schejule_getp();
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

    g_env_light.base_raincnt = 0;
    g_env_light.field_0x12a0 = 0;
    g_env_light.dice_wether_mode = 0;
    g_env_light.dice_wether_change_time = dComIfGs_getTime() + (cM_rndF(g_Counter.mCounter0 & 31) * 15.0f);
    if (g_env_light.dice_wether_change_time >= 360.0f) {
        g_env_light.dice_wether_change_time -= 360.0f;
    }

    g_env_light.dice_wether_state = 0;
    g_env_light.dice_wether_pat = 0;
    g_env_light.dice_wether_counter = 0;
    g_env_light.dice_wether_time = 0.0f;

    g_env_light.wether_pat0 = g_env_light.mColpatWeather;
    g_env_light.wether_pat1 = g_env_light.mColpatWeather;
    g_env_light.mColpatPrevGather = 0xFF;
    g_env_light.mColpatCurrGather = 0xFF;
    g_env_light.mColPatBlendGather = -1.0f;
    g_env_light.mColPatMode = 0;
    g_env_light.mColPatModeGather = 0;

    if (stage_envr_p != NULL) {
        g_env_light.stage_envr_info = stage_envr_p;
    } else {
        g_env_light.stage_envr_info = (stage_envr_info_class*)dKyd_dmenvr_getp();
    }

    if (stage_palette_p != NULL) {
        g_env_light.stage_palette_info = stage_palette_p;
    } else {
        g_env_light.stage_palette_info = (stage_palette_info_class*)dKyd_dmpalet_getp();
    }

    if (stage_psel_p != NULL) {
        g_env_light.stage_pselect_info = stage_psel_p;
    } else {
        g_env_light.stage_pselect_info = (stage_pselect_info_class*)dKyd_dmpselect_getp();
    }

    if (stage_vrboxcol_p != NULL) {
        g_env_light.stage_vrboxcol_info = stage_vrboxcol_p;
    } else {
        g_env_light.stage_vrboxcol_info = (stage_vrboxcol_info_class*)dKyd_dmvrbox_getp();
    }

    plight_init();
    plight_set();
    darkmist_init();
    bgparts_activelight_init();

    g_env_light.unk_0x11c8 = 1.0f;
    g_env_light.unk_0x11cc = 1.0f;
    g_env_light.unk_0x11d0 = 1.0f;
    g_env_light.field_0xf2c = 0;
    g_env_light.undwater_ef_model = NULL;
    g_env_light.field_0xf34 = 0.0f;
    g_env_light.undwater_ef_heap = NULL;

    undwater_init();
    dComIfGs_PolyDamageOff_Set(0);

    g_env_light.player_room_no = dComIfGp_roomControl_getStayNo();
    g_env_light.is_blure = 0;
    g_env_light.using_time_control_tag = 0;
    g_env_light.field_0x1300 = -1;
    g_env_light.field_0x1302 = -1;
    g_env_light.mWaterSurfaceShineRate = 1.0f;

    int stage_time = dStage_stagInfo_GetTimeH(dComIfGp_getStage()->getStagInfo());
    if (stage_time >= 0) {
        dComIfGs_setTime(stage_time * 15.0f);
    }
    g_env_light.time_change_rate = 0.012f;

    memset(&g_env_light.moya_se, 0, 0x10);
}

/* 8019F264-8019F2E8 199BA4 0084+00 1/1 1/1 0/0 .text            dKy_clear_game_init__Fv */
void dKy_clear_game_init() {
    dKy_actor_addcol_set(0, 0, 0, 0.0f);

    g_env_light.sun_pos.x = 1.0f;
    g_env_light.sun_pos.y = 0.0f;
    g_env_light.sun_pos.z = 0.0f;

    g_env_light.moon_pos.x = -1.0f;
    g_env_light.moon_pos.y = 0.0f;
    g_env_light.moon_pos.z = 0.0f;

    g_env_light.nexttime = -1.0f;
    g_env_light.old_time = -1.0f;
    g_env_light.dark_daytime = 120.0f;

    g_env_light.darktime_week = 0;
    g_env_light.fishing_hole_season = 0;
    g_env_light.field_0x130a = 0;
    g_env_light.field_0x12cc = 0;
    g_env_light.staffroll_next_timer = 0;
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
    daytime = dComIfGs_getTime();

    if (using_time_control_tag == 0) {
        if (!dKy_darkworld_check()) {
            if (dComIfGp_event_runCheck() == FALSE) {
                msg_class* msg = dMsgObject_c::getActor();
                bool temp_r29 = msg == NULL || msg->mode < 2;

                if (dComIfGp_roomControl_getTimePass() && !field_0x130a && temp_r29) {
                    daytime += time_change_rate;

                    // Stage is Fishing Pond or Hena's Hut
                    if (!strcmp(dComIfGp_getStartStageName(), "F_SP127") ||
                        !strcmp(dComIfGp_getStartStageName(), "R_SP127"))
                    {
                        f32 current_time = daytime;
                        if (current_time >= 300.0f || current_time <= 60.0f) {
                            daytime += time_change_rate;
                            daytime += time_change_rate;
                        } else if (current_time >= 150.0f && current_time <= 195.0f) {
                            daytime = current_time + time_change_rate;
                        }
                    }

                    if ((u32)daytime >= 360.0f) {
                        daytime = 0.0f;
                        mDate++;
                        dKankyo_DayProc();
                    }
                }
            }
        } else {
            dark_daytime += time_change_rate;
            if ((u32)dark_daytime >= 360.0f) {
                darktime_week++;
                dark_daytime = 0.0f;
            }
            daytime = 0.0f;
        }
    }

    if (daytime >= 360.0f) {
        daytime = 0.0f;
    }

    dComIfGs_setTime(daytime);
    mDoAud_setHour(dKy_getdaytime_hour());
    mDoAud_setMinute(dKy_getdaytime_minute());
    mDoAud_setWeekday(dKy_get_dayofweek());
    dComIfGs_setDate(mDate);
    g_env_light.using_time_control_tag = 0;
}

/* 8019F788-8019FA08 19A0C8 0280+00 1/1 0/0 0/0 .text            setSunpos__18dScnKy_env_light_cFv
 */
void dScnKy_env_light_c::setSunpos() {
    camera_class* camera_p = dComIfGp_getCamera(0);
    cXyz pos;

    if (camera_p != NULL && strcmp(dComIfGp_getStartStageName(), "F_SP200") != 0) {
        f32 sun_time = g_env_light.daytime;
        f32 sun_angle;
        f32 moon_time;
        f32 moon_angle;

        if (sun_time >= 90.0f && sun_time <= 270.0f) {
            f32 percent = get_parcent(270.0f, 90.0f, sun_time);
            sun_angle = (percent * 150.0f) + 105.0f;
        } else {
            if (sun_time < 90.0f) {
                sun_time += 360.0f;
            }

            f32 percent = get_parcent(450.0f, 270.0f, sun_time);
            sun_angle = (percent * 210.0f) + 255.0f;
            if (sun_angle > 360.0f) {
                sun_angle -= 360.0f;
            }
        }

        moon_time = 180.0f + g_env_light.daytime;
        if (moon_time >= 360.0f) {
            moon_time -= 360.0f;
        }

        if (moon_time >= 90.0f && moon_time <= 270.0f) {
            f32 percent = get_parcent(270.0f, 90.0f, moon_time);
            moon_angle = (percent * 150.0f) + 105.0f;
        } else {
            if (moon_time < 90.0f) {
                moon_time += 360.0f;
            }

            f32 percent = get_parcent(450.0f, 270.0f, moon_time);
            moon_angle = (percent * 210.0f) + 255.0f;
            if (moon_angle > 360.0f) {
                moon_angle -= 360.0f;
            }
        }

        pos.x = sinf(DEG_TO_RAD(sun_angle)) * 80000.0f;
        pos.y = cosf(DEG_TO_RAD(sun_angle)) * 80000.0f;
        pos.z = cosf(DEG_TO_RAD(sun_angle)) * -48000.0f;

        sun_pos.x = camera_p->lookat.eye.x + pos.x;
        sun_pos.y = camera_p->lookat.eye.y - pos.y;
        sun_pos.z = camera_p->lookat.eye.z + pos.z;

        pos.x = sinf(DEG_TO_RAD(moon_angle)) * 80000.0f;
        pos.y = cosf(DEG_TO_RAD(moon_angle)) * 80000.0f;
        pos.z = cosf(DEG_TO_RAD(moon_angle)) * -48000.0f;

        moon_pos.x = pos.x;
        moon_pos.y = -pos.y;
        moon_pos.z = pos.z;
    }
}

/* 8019FA08-8019FA10 19A348 0008+00 3/3 5/5 1/1 .text            getDaytime__18dScnKy_env_light_cFv
 */
f32 dScnKy_env_light_c::getDaytime() {
    return daytime;
}

/* 8019FA10-8019FA3C 19A350 002C+00 2/2 2/2 32/32 .text            dKy_getdaytime_hour__Fv */
int dKy_getdaytime_hour() {
    return dComIfGs_getTime() / 15.0f;
}

/* 8019FA3C-8019FAB8 19A37C 007C+00 1/1 1/1 26/26 .text            dKy_getdaytime_minute__Fv */
int dKy_getdaytime_minute() {
    f32 tmp = ((int)(dComIfGs_getTime() * 1000000.0f) % 15000000);
    return tmp / 1000000.0f / 15.0f * 60.0f;
}

/* 8019FAB8-8019FAF4 19A3F8 003C+00 0/0 3/3 6/6 .text            dKy_daynight_check__Fv */
BOOL dKy_daynight_check() {
    int hour = dKy_getdaytime_hour();
    if (hour >= 6 && hour < 19) {
        return FALSE;  // day time
    } else {
        return TRUE;  // night time
    }
}

/* 8019FAF4-8019FB30 19A434 003C+00 0/0 0/0 22/22 .text            dKy_getDarktime_hour__Fv */
int dKy_getDarktime_hour() {
    return g_env_light.getDarkDaytime() / 15.0f;
}

/* 8019FB30-8019FBBC 19A470 008C+00 0/0 0/0 19/19 .text            dKy_getDarktime_minute__Fv */
int dKy_getDarktime_minute() {
    f32 time = g_env_light.getDarkDaytime();
    f32 temp_f30 = ((int)(time * 1000000.0f) % 15000000) / 1000000.0f;
    return 60.0f * (temp_f30 / 15.0f);
}

/* 8019FBBC-8019FBCC 19A4FC 0010+00 0/0 0/0 8/8 .text            dKy_getDarktime_week__Fv */
u8 dKy_getDarktime_week() {
    return g_env_light.darktime_week;
}

/* 8019FBCC-8019FBD4 19A50C 0008+00 2/2 0/0 0/0 .text getDarkDaytime__18dScnKy_env_light_cFv */
f32 dScnKy_env_light_c::getDarkDaytime() {
    return dark_daytime;
}

/* 8019FBD4-801A0340 19A514 076C+00 5/3 0/0 0/0 .text
 * setLight_palno_get__18dScnKy_env_light_cFPUcPUcPUcPUcPUcPUcPUcPUcPfPiPiPfPUc */
/**
 * Gets stage environment color palette information based on given IDs.
 * This gets both previous and next palette information so that blending between
 * palettes can occur. Both previous and next palette's also get a start and ending palette
 * used to blend color based on time of day.
 *
 * @param prev_envr_id_p Index into stage ENVR info for previous palette
 * @param next_envr_id_p Index into stage ENVR info for next (target) palette
 * @param prev_pat_p Index of stage Pselect (Palette Select) to use for previous palette
 * @param next_pat_p Index of stage Pselect (Palette Select) to use for next (target) palette
 * @param prev_pal_start_id_p Start Palette ID for previous palette color
 * @param prev_pal_end_id_p Ending Palette ID for previous palette color
 * @param next_pal_start_id_p Start Palette ID for next (target) palette color
 * @param next_pal_end_id_p Ending Palette ID for next (target) palette color
 * @param color_ratio_p Ratio in-between start and ending palette to use
 * @param start_pat_pal_id_p Index into stage Pselect for starting palette
 * @param end_pat_pal_id_p Index into stage Pselect for ending palette
 * @param pattern_ratio_p Ratio in-between previous pattern to the next
 * @param init_timer_p
 */
void dScnKy_env_light_c::setLight_palno_get(u8* prev_envr_id_p, u8* next_envr_id_p, u8* prev_pat_p,
                                            u8* next_pat_p, u8* prev_pal_start_id_p,
                                            u8* prev_pal_end_id_p, u8* next_pal_start_id_p,
                                            u8* next_pal_end_id_p, f32* color_ratio_p,
                                            int* start_pat_pal_id_p, int* end_pat_pal_id_p,
                                            f32* pattern_ratio_p, u8* init_timer_p) {
    stage_envr_info_class* envr_p;
    u8 psel_idx = 0;

    if (*init_timer_p != 0) {
        *init_timer_p += 1;

        if (*init_timer_p > 20) {
            *init_timer_p = 0;
        }

        if (g_env_light.mColPatMode == 0 && g_env_light.mColPatModeGather == 0) {
            *pattern_ratio_p = g_env_light.pat_ratio;

            // previous has reached next, so set previous to next
            if (*pattern_ratio_p >= 1.0f) {
                *prev_envr_id_p = *next_envr_id_p;
                *prev_pat_p = *next_pat_p;
            }
        }
    }

    for (int i = 0; i < 11; i++) {
        // if time of day is not within light schedule range, then don't calculate light color
        if (!(daytime >= light_schedule[i].startTime && daytime <= light_schedule[i].endTime)) {
            continue;
        }

        *start_pat_pal_id_p = light_schedule[i].startTimeLight;
        *end_pat_pal_id_p = light_schedule[i].endTimeLight;
        *color_ratio_p = get_parcent(light_schedule[i].endTime, light_schedule[i].startTime, daytime);

        envr_p = &g_env_light.stage_envr_info[*prev_envr_id_p];
        switch (*prev_pat_p) {
        case 0:
            psel_idx = envr_p->pselect_id[0];
            break;
        case 1:
            psel_idx = envr_p->pselect_id[1];
            break;
        case 2:
            psel_idx = envr_p->pselect_id[2];
            break;
        case 3:
            psel_idx = envr_p->pselect_id[3];
            break;
        case 4:
            psel_idx = envr_p->pselect_id[4];
            break;
        case 5:
            psel_idx = envr_p->pselect_id[5];
            break;
        case 6:
            psel_idx = envr_p->pselect_id[6];
            break;
        case 7:
            psel_idx = envr_p->pselect_id[7];
            break;
        default:
            if (*prev_pat_p > 7 && *prev_pat_p < 64) {
                psel_idx = envr_p->pselect_id[*prev_pat_p];
            }
            break;
        }

        // use a specific palette for underwater (except during morpheel and zant fight)
        if (g_env_light.camera_water_in_status &&
            strcmp(dComIfGp_getStartStageName(), "D_MN08D") != 0 &&
            strcmp(dComIfGp_getStartStageName(), "D_MN01A") != 0)
        {
            if (g_env_light.wether_pat1 == 0) {
                psel_idx = envr_p->pselect_id[8];
            } else {
                psel_idx = envr_p->pselect_id[9];
            }
        }
        // use a specific palette for rollgoal (camera eye gets set below 0.0)
        else if (strcmp(dComIfGp_getStartStageName(), "R_SP127") == 0)
        {
            camera_class* camera_p = dComIfGp_getCamera(0);

            if (camera_p != NULL && camera_p->lookat.eye.y < 0.0f) {
                psel_idx = envr_p->pselect_id[10];
            }
        }

        if (psel_idx > 250) {
            psel_idx = 0;
        }

        stage_pselect_info_class* pselect_p = &g_env_light.stage_pselect_info[psel_idx];
        switch (*start_pat_pal_id_p) {
        case 0:
            *prev_pal_start_id_p = pselect_p->palette_id[0];
            break;
        case 1:
            *prev_pal_start_id_p = pselect_p->palette_id[1];
            break;
        case 2:
            *prev_pal_start_id_p = pselect_p->palette_id[2];
            break;
        case 3:
            *prev_pal_start_id_p = pselect_p->palette_id[3];
            break;
        case 4:
            *prev_pal_start_id_p = pselect_p->palette_id[4];
            break;
        case 5:
            *prev_pal_start_id_p = pselect_p->palette_id[5];
            break;
        }

        switch (*end_pat_pal_id_p) {
        case 0:
            *prev_pal_end_id_p = pselect_p->palette_id[0];
            break;
        case 1:
            *prev_pal_end_id_p = pselect_p->palette_id[1];
            break;
        case 2:
            *prev_pal_end_id_p = pselect_p->palette_id[2];
            break;
        case 3:
            *prev_pal_end_id_p = pselect_p->palette_id[3];
            break;
        case 4:
            *prev_pal_end_id_p = pselect_p->palette_id[4];
            break;
        case 5:
            *prev_pal_end_id_p = pselect_p->palette_id[5];
            break;
        }

        envr_p = &g_env_light.stage_envr_info[*next_envr_id_p];
        switch (*next_pat_p) {
        case 0:
            psel_idx = envr_p->pselect_id[0];
            break;
        case 1:
            psel_idx = envr_p->pselect_id[1];
            break;
        case 2:
            psel_idx = envr_p->pselect_id[2];
            break;
        case 3:
            psel_idx = envr_p->pselect_id[3];
            break;
        case 4:
            psel_idx = envr_p->pselect_id[4];
            break;
        case 5:
            psel_idx = envr_p->pselect_id[5];
            break;
        case 6:
            psel_idx = envr_p->pselect_id[6];
            break;
        case 7:
            psel_idx = envr_p->pselect_id[7];
            break;
        default:
            if (*next_pat_p > 7 && *next_pat_p < 64) {
                psel_idx = envr_p->pselect_id[*next_pat_p];
            }
            break;
        }

        if (psel_idx > 250) {
            psel_idx = 0;
        }

        pselect_p = &g_env_light.stage_pselect_info[psel_idx];
        if (*prev_envr_id_p != *next_envr_id_p || *prev_pat_p != *next_pat_p) {
            if (pselect_p->change_rate < (1.0f / 30)) {
                pselect_p->change_rate = (1.0f / 30);
            }

            if (g_env_light.mColPatMode == 0) {
                if (pselect_p->change_rate > 0.0f) {
                    *pattern_ratio_p += (1.0f / 30) / pselect_p->change_rate;
                }

                // pattern change rate is faster in hyrule field
                if (strcmp(dComIfGp_getStartStageName(), "F_SP121") == 0 &&
                    *prev_pat_p == *next_pat_p)
                {
                    *pattern_ratio_p += (1.0f / 15);
                }

                if (*pattern_ratio_p >= 1.0f) {
                    *prev_envr_id_p = *next_envr_id_p;
                    *prev_pat_p = *next_pat_p;
                    *pattern_ratio_p = 1.0f;
                }
            }
        }

        // use a specific palette for underwater (except during morpheel and zant fight)
        if (g_env_light.camera_water_in_status &&
            strcmp(dComIfGp_getStartStageName(), "D_MN08D") != 0 &&
            strcmp(dComIfGp_getStartStageName(), "D_MN01A") != 0)
        {
            if (g_env_light.wether_pat1 == 0) {
                pselect_p = &g_env_light.stage_pselect_info[envr_p->pselect_id[8]];
            } else {
                pselect_p = &g_env_light.stage_pselect_info[envr_p->pselect_id[9]];
            }
        }
        // use a specific palette for rollgoal (camera eye gets set below 0.0)
        else if (strcmp(dComIfGp_getStartStageName(), "R_SP127") == 0)
        {
            camera_class* camera_p = dComIfGp_getCamera(0);

            if (camera_p != NULL && camera_p->lookat.eye.y < 0.0f) {
                pselect_p = &g_env_light.stage_pselect_info[envr_p->pselect_id[10]];
            }
        }

        switch (*start_pat_pal_id_p) {
        case 0:
            *next_pal_start_id_p = pselect_p->palette_id[0];
            break;
        case 1:
            *next_pal_start_id_p = pselect_p->palette_id[1];
            break;
        case 2:
            *next_pal_start_id_p = pselect_p->palette_id[2];
            break;
        case 3:
            *next_pal_start_id_p = pselect_p->palette_id[3];
            break;
        case 4:
            *next_pal_start_id_p = pselect_p->palette_id[4];
            break;
        case 5:
            *next_pal_start_id_p = pselect_p->palette_id[5];
            break;
        }

        switch (*end_pat_pal_id_p) {
        case 0:
            *next_pal_end_id_p = pselect_p->palette_id[0];
            break;
        case 1:
            *next_pal_end_id_p = pselect_p->palette_id[1];
            break;
        case 2:
            *next_pal_end_id_p = pselect_p->palette_id[2];
            break;
        case 3:
            *next_pal_end_id_p = pselect_p->palette_id[3];
            break;
        case 4:
            *next_pal_end_id_p = pselect_p->palette_id[4];
            break;
        case 5:
            *next_pal_end_id_p = pselect_p->palette_id[5];
            break;
        }
        break;
    }

    if (*prev_pal_start_id_p > 250) {
        *prev_pal_start_id_p = 0;
    }

    if (*next_pal_start_id_p > 250) {
        *next_pal_start_id_p = 0;
    }

    if (*prev_pal_end_id_p > 250) {
        *prev_pal_end_id_p = 0;
    }

    if (*next_pal_end_id_p > 250) {
        *next_pal_end_id_p = 0;
    }
}

/* 801A0340-801A040C 19AC80 00CC+00 3/3 0/0 0/0 .text
 * dKy_calc_color_set__FP11_GXColorS10P15color_RGB_classP15color_RGB_classP15color_RGB_classP15color_RGB_classff11_GXColorS10f
 */
void dKy_calc_color_set(GXColorS10* out_color_p, color_RGB_class* color_a_start_p,
                        color_RGB_class* color_b_start_p, color_RGB_class* color_a_end_p,
                        color_RGB_class* color_b_end_p, f32 color_ratio, f32 blend_ratio,
                        GXColorS10 add_col, f32 scale) {
    out_color_p->r =
        kankyo_color_ratio_set(color_a_start_p->r, color_a_end_p->r, color_ratio,
                               color_b_start_p->r, color_b_end_p->r, blend_ratio, add_col.r, scale);
    out_color_p->g =
        kankyo_color_ratio_set(color_a_start_p->g, color_a_end_p->g, color_ratio,
                               color_b_start_p->g, color_b_end_p->g, blend_ratio, add_col.g, scale);
    out_color_p->b =
        kankyo_color_ratio_set(color_a_start_p->b, color_a_end_p->b, color_ratio,
                               color_b_start_p->b, color_b_end_p->b, blend_ratio, add_col.b, scale);
}

inline bool checkZoraWearFlg() {
    return dComIfGs_getSelectEquipClothes() == fpcNm_ITEM_WEAR_ZORA;
}

/* 801A040C-801A133C 19AD4C 0F30+00 1/1 0/0 0/0 .text            setLight__18dScnKy_env_light_cFv */
void dScnKy_env_light_c::setLight() {
    u8* init_timer = &g_env_light.light_init_timer;
    camera_class* camera_p = dComIfGp_getCamera(0);

    GXColorS10 add_col;
    add_col.r = 0;
    add_col.g = 0;
    add_col.b = 0;
    add_col.a = 0;

    if (camera_p != NULL) {
        if (g_env_light.camera_water_in_status) {
            dBgS_CamGndChk_Wtr camchk;
            cXyz chkpos;

            if (checkZoraWearFlg() && !daPy_py_c::checkNowWolf()) {
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

        u8 prev_pal_start_id;
        u8 next_pal_start_id;
        u8 prev_pal_end_id;
        u8 next_pal_end_id;
        f32 color_ratio;
        int start_pat_pal_id;
        int end_pat_pal_id;
        setLight_palno_get(&g_env_light.PrevCol, &g_env_light.UseCol, &g_env_light.wether_pat0,
                           &g_env_light.wether_pat1, &prev_pal_start_id, &prev_pal_end_id,
                           &next_pal_start_id, &next_pal_end_id, &color_ratio, &start_pat_pal_id,
                           &end_pat_pal_id, &g_env_light.pat_ratio, init_timer);

        if (prev_pal_start_id == 0xFF) {
            actor_amb_col.r = 255;
            actor_amb_col.g = 0;
            actor_amb_col.b = 0;

            for (int i = 0; i < 4; i++) {
                bg_amb_col[i].r = 255;
                bg_amb_col[i].g = 0;
                bg_amb_col[i].b = 0;
                bg_amb_col[i].a = 0;
            }
        } else {
            stage_palette_info_class* prev_pal_start_p = &g_env_light.stage_palette_info[prev_pal_start_id];
            stage_palette_info_class* prev_pal_end_p = &g_env_light.stage_palette_info[prev_pal_end_id];
            stage_palette_info_class* next_pal_start_p = &g_env_light.stage_palette_info[next_pal_start_id];
            stage_palette_info_class* next_pal_end_p = &g_env_light.stage_palette_info[next_pal_end_id];

            dKy_calc_color_set(&actor_amb_col, &prev_pal_start_p->actor_amb_col,
                               &next_pal_start_p->actor_amb_col, &prev_pal_end_p->actor_amb_col,
                               &next_pal_end_p->actor_amb_col, color_ratio, g_env_light.pat_ratio,
                               add_col,
                               g_env_light.field_0x1210 * (g_env_light.now_actcol_ratio * g_env_light.now_actcol_ratio));

            for (int i = 0; i < 4; i++) {
                if (i != 3 || (strcmp(dComIfGp_getStartStageName(), "R_SP127") != 0 &&
                               strcmp(dComIfGp_getStartStageName(), "F_SP127") != 0))
                {
                    dKy_calc_color_set(&bg_amb_col[i], &prev_pal_start_p->bg_amb_col[i],
                                       &next_pal_start_p->bg_amb_col[i],
                                       &prev_pal_end_p->bg_amb_col[i],
                                       &next_pal_end_p->bg_amb_col[i], color_ratio,
                                       g_env_light.pat_ratio, add_col, g_env_light.now_bgcol_ratio);
                }
            }

            if (daPy_py_c::checkNowWolfPowerUp()) {
                dKy_WolfPowerup_AmbCol(&actor_amb_col);
                dKy_WolfPowerup_BgAmbCol(&bg_amb_col[0]);
            }

            bg_amb_col[1].a = (u8)kankyo_color_ratio_set(
                prev_pal_start_p->BG1_amb_alpha, prev_pal_end_p->BG1_amb_alpha, color_ratio,
                next_pal_start_p->BG1_amb_alpha, next_pal_end_p->BG1_amb_alpha,
                g_env_light.pat_ratio, 0, 1.0f);
            bg_amb_col[2].a = (u8)kankyo_color_ratio_set(
                prev_pal_start_p->BG2_amb_alpha, prev_pal_end_p->BG2_amb_alpha, color_ratio,
                next_pal_start_p->BG2_amb_alpha, next_pal_end_p->BG2_amb_alpha,
                g_env_light.pat_ratio, 0, 1.0f);
            bg_amb_col[3].a = (u8)kankyo_color_ratio_set(
                prev_pal_start_p->BG3_amb_alpha, prev_pal_end_p->BG3_amb_alpha, color_ratio,
                next_pal_start_p->BG3_amb_alpha, next_pal_end_p->BG3_amb_alpha,
                g_env_light.pat_ratio, 0, 1.0f);

            s16 bg_light_inf = kankyo_color_ratio_set(
                prev_pal_start_p->bg_light_influence, prev_pal_end_p->bg_light_influence,
                color_ratio, next_pal_start_p->bg_light_influence,
                next_pal_end_p->bg_light_influence, g_env_light.pat_ratio, 0, 1.0f);
            bg_light_influence = bg_light_inf * 0.01f;
            if (bg_light_influence > 2.0f) {
                bg_light_influence = 1.0f;
            }

            mFogDensity = kankyo_color_ratio_set(
                prev_pal_start_p->cloud_shadow_density, prev_pal_end_p->cloud_shadow_density,
                color_ratio, next_pal_start_p->cloud_shadow_density,
                next_pal_end_p->cloud_shadow_density, g_env_light.pat_ratio, 0, 1.0f);
            if (daPy_py_c::checkNowWolfPowerUp()) {
                mFogDensity = -1;
            }

            for (int i = 0; i < 6; i++) {
                dKy_calc_color_set(&dungeonlight_col[i], &prev_pal_start_p->plight_col[i],
                                   &next_pal_start_p->plight_col[i], &prev_pal_end_p->plight_col[i],
                                   &next_pal_end_p->plight_col[i], color_ratio,
                                   g_env_light.pat_ratio, add_col, g_env_light.now_bgcol_ratio);

                if (daPy_py_c::checkNowWolfPowerUp()) {
                    dungeonlight_col[i].r = 0;
                    dungeonlight_col[i].g = 0;
                    dungeonlight_col[i].b = 0;
                }

                g_env_light.dungeonlight[i].mColor.r = dungeonlight_col[i].r;
                g_env_light.dungeonlight[i].mColor.g = dungeonlight_col[i].g;
                g_env_light.dungeonlight[i].mColor.b = dungeonlight_col[i].b;
            }

            dKy_calc_color_set(&fog_col, &prev_pal_start_p->fog_col, &next_pal_start_p->fog_col,
                               &prev_pal_end_p->fog_col, &next_pal_end_p->fog_col, color_ratio,
                               g_env_light.pat_ratio, addcol_fog, g_env_light.now_fogcol_ratio);
            mFogNear = float_kankyo_color_ratio_set(
                prev_pal_start_p->fog_start_z, prev_pal_end_p->fog_start_z, color_ratio,
                next_pal_start_p->fog_start_z, next_pal_end_p->fog_start_z, g_env_light.pat_ratio,
                g_env_light.field_0x11ec, g_env_light.field_0x11f4);
            mFogFar = float_kankyo_color_ratio_set(
                prev_pal_start_p->fog_end_z, prev_pal_end_p->fog_end_z, color_ratio,
                next_pal_start_p->fog_end_z, next_pal_end_p->fog_end_z, g_env_light.pat_ratio,
                g_env_light.field_0x11f0, g_env_light.field_0x11f4);

            if (daPy_py_c::checkNowWolfPowerUp()) {
                fog_col.r = 0;
                fog_col.g = 0;
                fog_col.b = 0;
                dKy_WolfPowerup_FogNearFar(&mFogNear, &mFogFar);
            }

            u8 prev_bloom_start_id = prev_pal_start_p->bloom_tbl_id;
            u8 next_bloom_start_id = next_pal_start_p->bloom_tbl_id;
            u8 prev_bloom_end_id = prev_pal_end_p->bloom_tbl_id;
            u8 next_bloom_end_id = next_pal_end_p->bloom_tbl_id;

            if (daPy_py_c::checkNowWolfPowerUp()) {
                next_bloom_end_id = 3;
                prev_bloom_end_id = 3;
                next_bloom_start_id = 3;
                prev_bloom_start_id = 3;
            }

            f32 temp_f31;
            if (g_env_light.field_0x12fc >= 0) {
                prev_bloom_end_id = g_env_light.field_0x12fc;
                next_bloom_end_id = g_env_light.field_0x12fc;
                temp_f31 = color_ratio;
                color_ratio = g_env_light.field_0x1278;
            }

            dKydata_BloomInfo_c* bloomInf0_p;
            dKydata_BloomInfo_c* bloomInf1_p;
            dKydata_BloomInfo_c* bloomInf2_p;
            dKydata_BloomInfo_c* bloomInf3_p;

            bloomInf0_p = dKyd_BloomInf_tbl_getp(prev_bloom_start_id);
            bloomInf2_p = dKyd_BloomInf_tbl_getp(next_bloom_start_id);
            bloomInf1_p = dKyd_BloomInf_tbl_getp(prev_bloom_end_id);
            bloomInf3_p = dKyd_BloomInf_tbl_getp(next_bloom_end_id);

            u8 bloom_point = kankyo_color_ratio_set(
                bloomInf0_p->mThreshold, bloomInf1_p->mThreshold, color_ratio,
                bloomInf2_p->mThreshold, bloomInf3_p->mThreshold, g_env_light.pat_ratio, 0, 1.0f);
            mDoGph_gInf_c::getBloom()->setPoint(bloom_point);

            u8 blure_size = (u8)kankyo_color_ratio_set(
                bloomInf0_p->mBlurAmount, bloomInf1_p->mBlurAmount, color_ratio,
                bloomInf2_p->mBlurAmount, bloomInf3_p->mBlurAmount, g_env_light.pat_ratio, 0, 1.0f);

            if (dKy_darkworld_check()) {
                static s16 S_fuwan_sin;

                f32 sin = cM_ssin(S_fuwan_sin);
                S_fuwan_sin += (s16)cM_rndF(2000.0f) + 500;

                blure_size += (u8)(sin * (0.2f * blure_size));
            }

            mDoGph_gInf_c::getBloom()->setBlureSize(blure_size);
            mDoGph_gInf_c::getBloom()->setBlureRatio(kankyo_color_ratio_set(
                bloomInf0_p->mDensity, bloomInf1_p->mDensity, color_ratio, bloomInf2_p->mDensity,
                bloomInf3_p->mDensity, g_env_light.pat_ratio, 0, 1.0f));

            GXColor bloom_blend_col;
            bloom_blend_col.r = kankyo_color_ratio_set(
                bloomInf0_p->mColorR, bloomInf1_p->mColorR, color_ratio, bloomInf2_p->mColorR,
                bloomInf3_p->mColorR, g_env_light.pat_ratio, 0, 1.0f);
            bloom_blend_col.g = kankyo_color_ratio_set(
                bloomInf0_p->mColorG, bloomInf1_p->mColorG, color_ratio, bloomInf2_p->mColorG,
                bloomInf3_p->mColorG, g_env_light.pat_ratio, 0, 1.0f);
            bloom_blend_col.b = kankyo_color_ratio_set(
                bloomInf0_p->mColorB, bloomInf1_p->mColorB, color_ratio, bloomInf2_p->mColorB,
                bloomInf3_p->mColorB, g_env_light.pat_ratio, 0, 1.0f);
            bloom_blend_col.a =
                kankyo_color_ratio_set(bloomInf0_p->mOrigDensity, bloomInf1_p->mOrigDensity,
                                       color_ratio, bloomInf2_p->mOrigDensity,
                                       bloomInf3_p->mOrigDensity, g_env_light.pat_ratio, 0, 1.0f);
            mDoGph_gInf_c::getBloom()->setBlendColor(bloom_blend_col);

            if (g_env_light.field_0x12fc >= 0) {
                color_ratio = temp_f31;
            }

            GXColor bloom_mono_col;
            bloom_mono_col.r = kankyo_color_ratio_set(
                bloomInf0_p->mSaturateSubtractR, bloomInf1_p->mSaturateSubtractR, color_ratio,
                bloomInf2_p->mSaturateSubtractR, bloomInf3_p->mSaturateSubtractR,
                g_env_light.pat_ratio, 0, 1.0f);
            bloom_mono_col.g = kankyo_color_ratio_set(
                bloomInf0_p->mSaturateSubtractG, bloomInf1_p->mSaturateSubtractG, color_ratio,
                bloomInf2_p->mSaturateSubtractG, bloomInf3_p->mSaturateSubtractG,
                g_env_light.pat_ratio, 0, 1.0f);
            bloom_mono_col.b = kankyo_color_ratio_set(
                bloomInf0_p->mSaturateSubtractB, bloomInf1_p->mSaturateSubtractB, color_ratio,
                bloomInf2_p->mSaturateSubtractB, bloomInf3_p->mSaturateSubtractB,
                g_env_light.pat_ratio, 0, 1.0f);
            bloom_mono_col.a = kankyo_color_ratio_set(
                bloomInf0_p->mSaturateSubtractA, bloomInf1_p->mSaturateSubtractA, color_ratio,
                bloomInf2_p->mSaturateSubtractA, bloomInf3_p->mSaturateSubtractA,
                g_env_light.pat_ratio, 0, 1.0f);
            mDoGph_gInf_c::getBloom()->setMonoColor(bloom_mono_col);

            if (bloom_point >= 0xFF) {
                mDoGph_gInf_c::getBloom()->setEnable(0);
            } else {
                u8 mode = 0;
                mDoGph_gInf_c::getBloom()->setEnable(1);

                if (prev_bloom_start_id != 0 && bloomInf0_p->mType != 0) {
                    mode = 1;
                } else if (next_bloom_start_id != 0 && bloomInf2_p->mType != 0) {
                    mode = 1;
                } else if (prev_bloom_end_id != 0 && bloomInf1_p->mType != 0) {
                    mode = 1;
                } else if (next_bloom_end_id != 0 && bloomInf3_p->mType != 0) {
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

                if (start_pat_pal_id < 6) {
                    var_f1 = now_shadow_alpha[start_pat_pal_id];
                } else {
                    var_f1 = 0.25f;
                }

                if (end_pat_pal_id < 6) {
                    var_f2 = now_shadow_alpha[end_pat_pal_id];
                } else {
                    var_f2 = 0.25f;
                }

                var_f4 = 0.25f;
                var_f5 = 0.25f;

                if (prev_pal_start_p == next_pal_start_p) {
                    var_f4 = var_f1;
                    var_f5 = var_f2;
                }

                var_f30 = float_kankyo_color_ratio_set(var_f1, var_f2, color_ratio, var_f4, var_f5,
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

            if (g_env_light.light_init_timer != 0) {
                field_0x1238 = var_f30;
            } else {
                cLib_addCalc(&field_0x1238, var_f30, 0.05f, 0.005f, 0.000001f);
            }

            stage_vrboxcol_info_class* prev_vrboxcol_start_p = &g_env_light.stage_vrboxcol_info[prev_pal_start_p->vrboxcol_id];
            stage_vrboxcol_info_class* prev_vrboxcol_end_p = &g_env_light.stage_vrboxcol_info[prev_pal_end_p->vrboxcol_id];
            stage_vrboxcol_info_class* next_vrboxcol_start_p = &g_env_light.stage_vrboxcol_info[next_pal_start_p->vrboxcol_id];
            stage_vrboxcol_info_class* next_vrboxcol_end_p = &g_env_light.stage_vrboxcol_info[next_pal_end_p->vrboxcol_id];

            vrbox_sky_col.r = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->sky_col.r, prev_vrboxcol_end_p->sky_col.r, color_ratio,
                next_vrboxcol_start_p->sky_col.r, next_vrboxcol_end_p->sky_col.r,
                g_env_light.pat_ratio, vrbox_addcol_sky0.r,
                g_env_light.now_vrboxsoracol_ratio * g_env_light.unk_0x11c8);
            vrbox_sky_col.g = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->sky_col.g, prev_vrboxcol_end_p->sky_col.g, color_ratio,
                next_vrboxcol_start_p->sky_col.g, next_vrboxcol_end_p->sky_col.g,
                g_env_light.pat_ratio, vrbox_addcol_sky0.g,
                g_env_light.now_vrboxsoracol_ratio * g_env_light.unk_0x11cc);
            vrbox_sky_col.b = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->sky_col.b, prev_vrboxcol_end_p->sky_col.b, color_ratio,
                next_vrboxcol_start_p->sky_col.b, next_vrboxcol_end_p->sky_col.b,
                g_env_light.pat_ratio, vrbox_addcol_sky0.b,
                g_env_light.now_vrboxsoracol_ratio * g_env_light.unk_0x11d0);
            vrbox_sky_col.a = 255;

            vrbox_kumo_top_col.r = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kumo_top_col.r, prev_vrboxcol_end_p->kumo_top_col.r,
                color_ratio, next_vrboxcol_start_p->kumo_top_col.r,
                next_vrboxcol_end_p->kumo_top_col.r, g_env_light.pat_ratio, vrbox_addcol_sky0.r,
                g_env_light.now_vrboxkumocol_ratio * g_env_light.unk_0x11c8);
            vrbox_kumo_top_col.g = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kumo_top_col.g, prev_vrboxcol_end_p->kumo_top_col.g,
                color_ratio, next_vrboxcol_start_p->kumo_top_col.g,
                next_vrboxcol_end_p->kumo_top_col.g, g_env_light.pat_ratio, vrbox_addcol_sky0.g,
                g_env_light.now_vrboxkumocol_ratio * g_env_light.unk_0x11cc);
            vrbox_kumo_top_col.b = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kumo_top_col.b, prev_vrboxcol_end_p->kumo_top_col.b,
                color_ratio, next_vrboxcol_start_p->kumo_top_col.b,
                next_vrboxcol_end_p->kumo_top_col.b, g_env_light.pat_ratio, vrbox_addcol_sky0.b,
                g_env_light.now_vrboxkumocol_ratio * g_env_light.unk_0x11d0);
            vrbox_kumo_top_col.a = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kumo_shadow_col.a, prev_vrboxcol_end_p->kumo_shadow_col.a,
                color_ratio, next_vrboxcol_start_p->kumo_shadow_col.a,
                next_vrboxcol_end_p->kumo_shadow_col.a, g_env_light.pat_ratio, 0, 1.0f);

            vrbox_kumo_bottom_col.r = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kumo_bottom_col.r, prev_vrboxcol_end_p->kumo_bottom_col.r,
                color_ratio, next_vrboxcol_start_p->kumo_bottom_col.r,
                next_vrboxcol_end_p->kumo_bottom_col.r, g_env_light.pat_ratio, vrbox_addcol_sky0.r,
                g_env_light.now_vrboxkumocol_ratio * g_env_light.unk_0x11c8);
            vrbox_kumo_bottom_col.g = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kumo_bottom_col.g, prev_vrboxcol_end_p->kumo_bottom_col.g,
                color_ratio, next_vrboxcol_start_p->kumo_bottom_col.g,
                next_vrboxcol_end_p->kumo_bottom_col.g, g_env_light.pat_ratio, vrbox_addcol_sky0.g,
                g_env_light.now_vrboxkumocol_ratio * g_env_light.unk_0x11cc);
            vrbox_kumo_bottom_col.b = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kumo_bottom_col.b, prev_vrboxcol_end_p->kumo_bottom_col.b,
                color_ratio, next_vrboxcol_start_p->kumo_bottom_col.b,
                next_vrboxcol_end_p->kumo_bottom_col.b, g_env_light.pat_ratio, vrbox_addcol_sky0.b,
                g_env_light.now_vrboxkumocol_ratio * g_env_light.unk_0x11d0);

            vrbox_kumo_shadow_col.r = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kumo_shadow_col.r, prev_vrboxcol_end_p->kumo_shadow_col.r,
                color_ratio, next_vrboxcol_start_p->kumo_shadow_col.r,
                next_vrboxcol_end_p->kumo_shadow_col.r, g_env_light.pat_ratio, vrbox_addcol_sky0.r,
                g_env_light.now_vrboxkumocol_ratio * g_env_light.unk_0x11c8);
            vrbox_kumo_shadow_col.g = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kumo_shadow_col.g, prev_vrboxcol_end_p->kumo_shadow_col.g,
                color_ratio, next_vrboxcol_start_p->kumo_shadow_col.g,
                next_vrboxcol_end_p->kumo_shadow_col.g, g_env_light.pat_ratio, vrbox_addcol_sky0.g,
                g_env_light.now_vrboxkumocol_ratio * g_env_light.unk_0x11cc);
            vrbox_kumo_shadow_col.b = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kumo_shadow_col.b, prev_vrboxcol_end_p->kumo_shadow_col.b,
                color_ratio, next_vrboxcol_start_p->kumo_shadow_col.b,
                next_vrboxcol_end_p->kumo_shadow_col.b, g_env_light.pat_ratio, vrbox_addcol_sky0.b,
                g_env_light.now_vrboxkumocol_ratio * g_env_light.unk_0x11d0);

            vrbox_kasumi_outer_col.r = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kasumi_outer_col.r, prev_vrboxcol_end_p->kasumi_outer_col.r,
                color_ratio, next_vrboxcol_start_p->kasumi_outer_col.r,
                next_vrboxcol_end_p->kasumi_outer_col.r, g_env_light.pat_ratio,
                vrbox_addcol_kasumi.r, g_env_light.now_vrboxsoracol_ratio * g_env_light.unk_0x11c8);
            vrbox_kasumi_outer_col.g = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kasumi_outer_col.g, prev_vrboxcol_end_p->kasumi_outer_col.g,
                color_ratio, next_vrboxcol_start_p->kasumi_outer_col.g,
                next_vrboxcol_end_p->kasumi_outer_col.g, g_env_light.pat_ratio,
                vrbox_addcol_kasumi.g, g_env_light.now_vrboxsoracol_ratio * g_env_light.unk_0x11cc);
            vrbox_kasumi_outer_col.b = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kasumi_outer_col.b, prev_vrboxcol_end_p->kasumi_outer_col.b,
                color_ratio, next_vrboxcol_start_p->kasumi_outer_col.b,
                next_vrboxcol_end_p->kasumi_outer_col.b, g_env_light.pat_ratio,
                vrbox_addcol_kasumi.b, g_env_light.now_vrboxsoracol_ratio * g_env_light.unk_0x11d0);
            vrbox_kasumi_outer_col.a = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kasumi_outer_col.a, prev_vrboxcol_end_p->kasumi_outer_col.a,
                color_ratio, next_vrboxcol_start_p->kasumi_outer_col.a,
                next_vrboxcol_end_p->kasumi_outer_col.a, g_env_light.pat_ratio, 0, 1.0f);

            vrbox_kasumi_inner_col.r = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kasumi_inner_col.r, prev_vrboxcol_end_p->kasumi_inner_col.r,
                color_ratio, next_vrboxcol_start_p->kasumi_inner_col.r,
                next_vrboxcol_end_p->kasumi_inner_col.r, g_env_light.pat_ratio,
                vrbox_addcol_kasumi.r, g_env_light.now_vrboxsoracol_ratio * g_env_light.unk_0x11c8);
            vrbox_kasumi_inner_col.g = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kasumi_inner_col.g, prev_vrboxcol_end_p->kasumi_inner_col.g,
                color_ratio, next_vrboxcol_start_p->kasumi_inner_col.g,
                next_vrboxcol_end_p->kasumi_inner_col.g, g_env_light.pat_ratio,
                vrbox_addcol_kasumi.g, g_env_light.now_vrboxsoracol_ratio * g_env_light.unk_0x11cc);
            vrbox_kasumi_inner_col.b = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kasumi_inner_col.b, prev_vrboxcol_end_p->kasumi_inner_col.b,
                color_ratio, next_vrboxcol_start_p->kasumi_inner_col.b,
                next_vrboxcol_end_p->kasumi_inner_col.b, g_env_light.pat_ratio,
                vrbox_addcol_kasumi.b, g_env_light.now_vrboxsoracol_ratio * g_env_light.unk_0x11d0);
            vrbox_kasumi_inner_col.a = kankyo_color_ratio_set(
                prev_vrboxcol_start_p->kasumi_inner_col.a, prev_vrboxcol_end_p->kasumi_inner_col.a,
                color_ratio, next_vrboxcol_start_p->kasumi_inner_col.a,
                next_vrboxcol_end_p->kasumi_inner_col.a, g_env_light.pat_ratio, 0, 1.0f);

            if (daPy_py_c::checkNowWolfPowerUp()) {
                vrbox_sky_col.r = 0;
                vrbox_sky_col.g = 0;
                vrbox_sky_col.b = 0;

                vrbox_kumo_top_col.r = 0;
                vrbox_kumo_top_col.g = 0;
                vrbox_kumo_top_col.b = 0;

                vrbox_kumo_bottom_col.r = 0;
                vrbox_kumo_bottom_col.g = 0;
                vrbox_kumo_bottom_col.b = 0;

                vrbox_kumo_shadow_col.r = 0;
                vrbox_kumo_shadow_col.g = 0;
                vrbox_kumo_shadow_col.b = 0;

                vrbox_kasumi_outer_col.r = 0;
                vrbox_kasumi_outer_col.g = 0;
                vrbox_kasumi_outer_col.b = 0;

                vrbox_kasumi_inner_col.r = 0;
                vrbox_kasumi_inner_col.g = 0;
                vrbox_kasumi_inner_col.b = 0;
            }
        }
    }
}

/* 801A133C-801A16C0 19BC7C 0384+00 2/2 0/0 0/0 .text
 * setLight_bg__18dScnKy_env_light_cFP12dKy_tevstr_cP11_GXColorS10P11_GXColorS10PfPf */
void dScnKy_env_light_c::setLight_bg(dKy_tevstr_c* tevstr_p, GXColorS10* bg_col_p,
                                     GXColorS10* fog_col_p, f32* fog_near_p, f32* fog_far_p) {
    tevstr_p->wether_pat0 = g_env_light.wether_pat0;
    tevstr_p->wether_pat1 = g_env_light.wether_pat1;

    if (tevstr_p->wether_pat0 != tevstr_p->wether_pat1) {
        tevstr_p->pat_ratio = g_env_light.pat_ratio;
    }

    u8 prev_pal_start_id;
    u8 next_pal_start_id;
    u8 prev_pal_end_id;
    u8 next_pal_end_id;
    f32 color_ratio;
    int start_pat_pal_id;
    int end_pat_pal_id;
    int i;
    setLight_palno_get(&tevstr_p->PrevCol, &tevstr_p->UseCol, &tevstr_p->wether_pat0,
                       &tevstr_p->wether_pat1, &prev_pal_start_id, &prev_pal_end_id,
                       &next_pal_start_id, &next_pal_end_id, &color_ratio, &start_pat_pal_id,
                       &end_pat_pal_id, &tevstr_p->pat_ratio, &tevstr_p->mInitTimer);

    if (prev_pal_start_id == 0xFF) {
        for (int i = 0; i < 4; i++) {
            bg_col_p[i].r = 255;
            bg_col_p[i].g = 0;
            bg_col_p[i].b = 0;
        }
    } else {
        stage_palette_info_class* prev_pal_start_p = &g_env_light.stage_palette_info[prev_pal_start_id];
        stage_palette_info_class* prev_pal_end_p = &g_env_light.stage_palette_info[prev_pal_end_id];
        stage_palette_info_class* next_pal_start_p = &g_env_light.stage_palette_info[next_pal_start_id];
        stage_palette_info_class* next_pal_end_p = &g_env_light.stage_palette_info[next_pal_end_id];

        for (int i = 0; i < 4; i++) {
            dKy_calc_color_set(&bg_col_p[i], &prev_pal_start_p->bg_amb_col[i],
                               &next_pal_start_p->bg_amb_col[i], &prev_pal_end_p->bg_amb_col[i],
                               &next_pal_end_p->bg_amb_col[i], color_ratio, tevstr_p->pat_ratio,
                               bg_addcol_amb, g_env_light.now_bgcol_ratio);
        }

        if (daPy_py_c::checkNowWolfEyeUp()) {
            dKy_WolfPowerup_BgAmbCol(bg_col_p);
        }

        bg_col_p[3].a = 255;
        bg_col_p[2].a = 255;
        bg_col_p[1].a = 255;
        bg_col_p[0].a = 255;

        GXColorS10 plight_colors[6];
        for (i = 0; i < 6; i++) {
            dKy_calc_color_set(&plight_colors[i], &prev_pal_start_p->plight_col[i],
                               &next_pal_start_p->plight_col[i], &prev_pal_end_p->plight_col[i],
                               &next_pal_end_p->plight_col[i], color_ratio, tevstr_p->pat_ratio,
                               bg_addcol_amb, g_env_light.now_bgcol_ratio);

            if (daPy_py_c::checkNowWolfEyeUp()) {
                plight_colors[i].r = 0;
                plight_colors[i].g = 0;
                plight_colors[i].b = 0;
            }

            J3DLightInfo& light_info = tevstr_p->mLights[i].getLightInfo();

            GXColor light_color;
            light_color.r = plight_colors[i].r;
            light_color.g = plight_colors[i].g;
            light_color.b = plight_colors[i].b;
            light_color.a = plight_colors[i].a;
            light_info.mColor = dKy_light_influence_col(&light_color, tevstr_p->field_0x374);
        }

        dKy_calc_color_set(fog_col_p, &prev_pal_start_p->fog_col, &next_pal_start_p->fog_col,
                           &prev_pal_end_p->fog_col, &next_pal_end_p->fog_col, color_ratio,
                           tevstr_p->pat_ratio, addcol_fog, g_env_light.now_fogcol_ratio);

        *fog_near_p = float_kankyo_color_ratio_set(
            prev_pal_start_p->fog_start_z, prev_pal_end_p->fog_start_z, color_ratio,
            next_pal_start_p->fog_start_z, next_pal_end_p->fog_start_z, tevstr_p->pat_ratio,
            g_env_light.field_0x11ec, g_env_light.field_0x11f4);
        *fog_far_p = float_kankyo_color_ratio_set(
            prev_pal_start_p->fog_end_z, prev_pal_end_p->fog_end_z, color_ratio,
            next_pal_start_p->fog_end_z, next_pal_end_p->fog_end_z, tevstr_p->pat_ratio,
            g_env_light.field_0x11f0, g_env_light.field_0x11f4);

        if (daPy_py_c::checkNowWolfEyeUp()) {
            fog_col_p->r = 0;
            fog_col_p->g = 0;
            fog_col_p->b = 0;
            dKy_WolfPowerup_FogNearFar(fog_near_p, fog_far_p);
        }
    }
}

/* 801A16C0-801A1D64 19C000 06A4+00 1/1 0/0 0/0 .text
 * setLight_actor__18dScnKy_env_light_cFP12dKy_tevstr_cP11_GXColorS10PfPf */
void dScnKy_env_light_c::setLight_actor(dKy_tevstr_c* tevstr_p, GXColorS10* fog_col_p,
                                        f32* fog_near_p, f32* fog_far_p) {
    u8 prev_pal_start_id;
    u8 next_pal_start_id;
    u8 prev_pal_end_id;
    u8 next_pal_end_id;
    f32 color_ratio;
    int start_pat_pal_id;
    int end_pat_pal_id;
    int i;

    tevstr_p->wether_pat0 = g_env_light.wether_pat0;
    tevstr_p->wether_pat1 = g_env_light.wether_pat1;
    if (tevstr_p->wether_pat0 != tevstr_p->wether_pat1) {
        tevstr_p->pat_ratio = g_env_light.pat_ratio;
    } else if (tevstr_p->PrevCol == tevstr_p->UseCol) {
        tevstr_p->pat_ratio = 0.0f;
    }

    setLight_palno_get(&tevstr_p->PrevCol, &tevstr_p->UseCol, &tevstr_p->wether_pat0,
                       &tevstr_p->wether_pat1, &prev_pal_start_id, &prev_pal_end_id,
                       &next_pal_start_id, &next_pal_end_id, &color_ratio, &start_pat_pal_id,
                       &end_pat_pal_id, &tevstr_p->pat_ratio, &tevstr_p->mInitTimer);

    if (prev_pal_start_id == 0xFF) {
        for (i = 0; i < 4; i++) {
            tevstr_p->AmbCol.r = 255;
            tevstr_p->AmbCol.g = 0;
            tevstr_p->AmbCol.b = 0;
        }
    } else {
        stage_palette_info_class* prev_pal_start_p = &g_env_light.stage_palette_info[prev_pal_start_id];
        stage_palette_info_class* prev_pal_end_p = &g_env_light.stage_palette_info[prev_pal_end_id];
        stage_palette_info_class* next_pal_start_p = &g_env_light.stage_palette_info[next_pal_start_id];
        stage_palette_info_class* next_pal_end_p = &g_env_light.stage_palette_info[next_pal_end_id];

        if (tevstr_p->Type == 10 || tevstr_p->Type == 9 || tevstr_p->Material_id != 0) {
            dKy_calc_color_set(&tevstr_p->AmbCol, &prev_pal_start_p->actor_amb_col,
                               &next_pal_start_p->actor_amb_col, &prev_pal_end_p->actor_amb_col,
                               &next_pal_end_p->actor_amb_col, color_ratio, tevstr_p->pat_ratio,
                               actor_addcol_amb,
                               tevstr_p->field_0x374 *
                                   (g_env_light.now_actcol_ratio * g_env_light.now_actcol_ratio));
        } else {
            dKy_calc_color_set(&tevstr_p->AmbCol, &prev_pal_start_p->actor_amb_col,
                               &next_pal_start_p->actor_amb_col, &prev_pal_end_p->actor_amb_col,
                               &next_pal_end_p->actor_amb_col, color_ratio, tevstr_p->pat_ratio,
                               actor_addcol_amb,
                               tevstr_p->field_0x374 *
                                   (g_env_light.field_0x1210 * (g_env_light.now_actcol_ratio * g_env_light.now_actcol_ratio)));
        }

        if (daPy_py_c::checkNowWolfPowerUp()) {
            dKy_WolfPowerup_AmbCol(&tevstr_p->AmbCol);
        }

        GXColorS10 plight_col[6];
        for (i = 0; i < 6; i++) {
            J3DLightInfo* light_info = &tevstr_p->mLights[i].getLightInfo();

            if (i == 0) {
                if (tevstr_p->Type == 10 || tevstr_p->Type == 9 || tevstr_p->Material_id != 0) {
                    dKy_calc_color_set(&plight_col[i], &prev_pal_start_p->plight_col[i],
                                       &next_pal_start_p->plight_col[i],
                                       &prev_pal_end_p->plight_col[i],
                                       &next_pal_end_p->plight_col[i], color_ratio,
                                       tevstr_p->pat_ratio, actor_addcol_amb, 1.0f);

                    if (daPy_py_c::checkNowWolfPowerUp()) {
                        plight_col[i].r = 0;
                        plight_col[i].g = 0;
                        plight_col[i].b = 0;
                    }

                    light_info = &tevstr_p->mLights[i].getLightInfo();

                    GXColor light_col;
                    light_col.r = plight_col[i].r;
                    light_col.g = plight_col[i].g;
                    light_col.b = plight_col[i].b;
                    light_col.a = plight_col[i].a;
                    light_info->mColor = dKy_light_influence_col(&light_col, tevstr_p->field_0x374);
                } else {
                    dKy_calc_color_set(
                        &plight_col[i], &prev_pal_start_p->plight_col[i],
                        &next_pal_start_p->plight_col[i], &prev_pal_end_p->plight_col[i],
                        &next_pal_end_p->plight_col[i], color_ratio, tevstr_p->pat_ratio,
                        actor_addcol_amb, g_env_light.field_0x1210);

                    if (daPy_py_c::checkNowWolfPowerUp()) {
                        plight_col[i].r = 0;
                        plight_col[i].g = 0;
                        plight_col[i].b = 0;
                    }

                    kankyo_color_ratio_calc(&light_info->mColor, plight_col[i],
                                            field_0x1210 * tevstr_p->field_0x374);
                }
            } else if (tevstr_p->Type == 10 || tevstr_p->Type == 9 || tevstr_p->Material_id != 0) {
                dKy_calc_color_set(&plight_col[i], &prev_pal_start_p->plight_col[i],
                                   &next_pal_start_p->plight_col[i], &prev_pal_end_p->plight_col[i],
                                   &next_pal_end_p->plight_col[i], color_ratio, tevstr_p->pat_ratio,
                                   actor_addcol_amb,
                                   g_env_light.now_actcol_ratio * g_env_light.now_actcol_ratio);

                if (daPy_py_c::checkNowWolfPowerUp()) {
                    plight_col[i].r = 0;
                    plight_col[i].g = 0;
                    plight_col[i].b = 0;
                }

                GXColor light_col;
                light_col.r = plight_col[i].r;
                light_col.g = plight_col[i].g;
                light_col.b = plight_col[i].b;
                light_col.a = plight_col[i].a;
                light_info->mColor = dKy_light_influence_col(&light_col, tevstr_p->field_0x374);
            } else {
                dKy_calc_color_set(&plight_col[i], &prev_pal_start_p->plight_col[i],
                                   &next_pal_start_p->plight_col[i], &prev_pal_end_p->plight_col[i],
                                   &next_pal_end_p->plight_col[i], color_ratio, tevstr_p->pat_ratio,
                                   actor_addcol_amb,
                                   g_env_light.field_0x1210 * (g_env_light.now_actcol_ratio *
                                                               g_env_light.now_actcol_ratio));

                if (daPy_py_c::checkNowWolfPowerUp()) {
                    plight_col[i].r = 0;
                    plight_col[i].g = 0;
                    plight_col[i].b = 0;
                }

                kankyo_color_ratio_calc(&light_info->mColor, plight_col[i],
                                        field_0x1210 * tevstr_p->field_0x374);
            }
        }

        dKy_calc_color_set(fog_col_p, &prev_pal_start_p->fog_col, &next_pal_start_p->fog_col,
                           &prev_pal_end_p->fog_col, &next_pal_end_p->fog_col, color_ratio,
                           tevstr_p->pat_ratio, addcol_fog, g_env_light.now_fogcol_ratio);
        if ((tevstr_p->Type != 10 && tevstr_p->Type != 9) || g_env_light.field_0x1210 == 1.0f) {
            *fog_near_p = float_kankyo_color_ratio_set(
                prev_pal_start_p->fog_start_z, prev_pal_end_p->fog_start_z, color_ratio,
                next_pal_start_p->fog_start_z, next_pal_end_p->fog_start_z, tevstr_p->pat_ratio,
                g_env_light.field_0x11ec, g_env_light.field_0x11f4);
            *fog_far_p = float_kankyo_color_ratio_set(
                prev_pal_start_p->fog_end_z, prev_pal_end_p->fog_end_z, color_ratio,
                next_pal_start_p->fog_end_z, next_pal_end_p->fog_end_z, tevstr_p->pat_ratio,
                g_env_light.field_0x11f0, g_env_light.field_0x11f4);
        } else {
            *fog_near_p = float_kankyo_color_ratio_set(
                prev_pal_start_p->fog_start_z, prev_pal_end_p->fog_start_z, color_ratio,
                next_pal_start_p->fog_start_z, next_pal_end_p->fog_start_z, tevstr_p->pat_ratio,
                g_env_light.field_0x11ec, 0.0f);
            *fog_far_p = float_kankyo_color_ratio_set(
                prev_pal_start_p->fog_end_z, prev_pal_end_p->fog_end_z, color_ratio,
                next_pal_start_p->fog_end_z, next_pal_end_p->fog_end_z, tevstr_p->pat_ratio,
                g_env_light.field_0x11f0, 0.0f);
        }

        if (daPy_py_c::checkNowWolfPowerUp()) {
            fog_col_p->r = 0;
            fog_col_p->g = 0;
            fog_col_p->b = 0;
            dKy_WolfPowerup_FogNearFar(fog_near_p, fog_far_p);
        }
    }
}

/* 801A1D64-801A1F58 19C6A4 01F4+00 1/1 0/0 0/0 .text
 * settingTevStruct_colget_actor__18dScnKy_env_light_cFP4cXyzP12dKy_tevstr_cP11_GXColorS10P11_GXColorS10PfPf
 */
void dScnKy_env_light_c::settingTevStruct_colget_actor(cXyz* unused, dKy_tevstr_c* tevstr_p,
                                                       GXColorS10* out_color_p,
                                                       GXColorS10* fog_col_p, f32* fog_near_p,
                                                       f32* fog_far_p) {
    if (tevstr_p->YukaCol != 0xFF) {
        f32 target = tevstr_p->YukaCol / 100.0f;

        if (g_env_light.mActorLightEffect == 100) {
            cLib_addCalc(&tevstr_p->field_0x374, target, 0.25f, 0.05f, 0.000001f);
        }
    } else if (tevstr_p->room_no >= 0) {
        tevstr_p->UseCol = tevstr_p->room_no;
        if (g_env_light.mActorLightEffect == 100) {
            cLib_addCalc(&tevstr_p->field_0x374, 1.0f, 0.25f, 0.05f, 0.000001f);
        }
    } else {
        tevstr_p->UseCol = 0;
    }

    if ((tevstr_p->Type >= 1 && tevstr_p->Type <= 7) ||
        (tevstr_p->Type == 9 && dKy_darkworld_check()))
    {
        if ((tevstr_p->Type != 2 && tevstr_p->Type != 3) || dKy_darkworld_check()) {
            tevstr_p->field_0x374 = 0.0f;
        }
    }

    if (tevstr_p->PrevCol != tevstr_p->UseCol &&
        (tevstr_p->pat_ratio >= 1.0f || tevstr_p->pat_ratio <= 0.0f))
    {
        tevstr_p->pat_ratio = 0.0f;
    }

    if (tevstr_p->Type != 8) {
        setLight_actor(tevstr_p, fog_col_p, fog_near_p, fog_far_p);
        out_color_p->r = tevstr_p->AmbCol.r;
        out_color_p->g = tevstr_p->AmbCol.g;
        out_color_p->b = tevstr_p->AmbCol.b;
        out_color_p->a = tevstr_p->AmbCol.a;
    } else {
        GXColorS10 BG_col[4];
        setLight_bg(tevstr_p, BG_col, fog_col_p, fog_near_p, fog_far_p);
        out_color_p->r = BG_col[0].r;
        out_color_p->g = BG_col[0].g;
        out_color_p->b = BG_col[0].b;
        out_color_p->a = BG_col[0].a;
    }
}

/* 801A1F58-801A2090 19C898 0138+00 1/1 0/0 0/0 .text
 * settingTevStruct_colget_player__18dScnKy_env_light_cFP12dKy_tevstr_c */
void dScnKy_env_light_c::settingTevStruct_colget_player(dKy_tevstr_c* tevstr_p) {
    if (tevstr_p->YukaCol != 0xFF) {
        f32 target = tevstr_p->YukaCol / 100.0f;

        if (g_env_light.mActorLightEffect == 100) {
            cLib_addCalc(&tevstr_p->field_0x374, target, 0.25f, 0.05f, 0.000001f);
        }
    } else if (tevstr_p->room_no >= 0) {
        tevstr_p->UseCol = tevstr_p->room_no;
        if (g_env_light.mActorLightEffect == 100) {
            cLib_addCalc(&tevstr_p->field_0x374, 1.0f, 0.25f, 0.05f, 0.000001f);
        }
    }

    if (g_env_light.UseCol != tevstr_p->UseCol) {
        if (tevstr_p->UseCol == g_env_light.PrevCol) {
            g_env_light.PrevCol = g_env_light.UseCol;
            g_env_light.UseCol = tevstr_p->UseCol;
            g_env_light.pat_ratio = 1.0f - g_env_light.pat_ratio;

            tevstr_p->pat_ratio = 1.0f - g_env_light.pat_ratio;
        } else if (g_env_light.pat_ratio >= 1.0f || g_env_light.pat_ratio <= 0.0f) {
            g_env_light.UseCol = tevstr_p->UseCol;
            g_env_light.pat_ratio = 0.0f;
            tevstr_p->pat_ratio = 0.0f;
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
void dScnKy_env_light_c::settingTevStruct_plightcol_plus(cXyz* pos_p, dKy_tevstr_c* tevstr_p,
                                                         GXColorS10 param_2, GXColorS10 param_3,
                                                         u8 init_timer) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    cXyz light_pos;
    Vec spDC;
    MtxP view_mtx = j3dSys.getViewMtx();
    f32 light_dist;
    f32 light_power;
    f32 light_yuragi;
    int sp40 = 0;
    int sp3C = 0;
    int light_inf_id;
    u8 sp9 = 0;
    f32 sp34 = 1.0f;
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (pos_p != NULL) {
        J3DLightInfo* light_info = &tevstr_p->mLightObj.getLightInfo();
        light_info->mColor.a = 0xFF;

        light_inf_id = dKy_light_influence_id(*pos_p, 0);
        BOOL sp44 = 0;

        if (tevstr_p->Type == 7 || tevstr_p->Type == 1 ||
            ((tevstr_p->Type == 2 || tevstr_p->Type == 6 || tevstr_p->Type == 3) &&
             dKy_darkworld_check()) ||
            tevstr_p->Type == 4 || tevstr_p->Type == 5)
        {
            light_inf_id = -2;
        } else if (tevstr_p->Type == 9 && dKy_darkworld_check()) {
            light_inf_id = -2;
        }

        if (light_inf_id >= 0) {
            light_dist = dKy_light_influence_distance(*pos_p, light_inf_id);
            light_power = dKy_light_influence_power(light_inf_id);

            if (light_power < 0.001f) {
                light_power = 0.001f;
            }

            if (light_dist < 1000.0f + light_power) {
                sp44 = 1;
            }
        }

        if (sp44 == 0) {
            light_pos = kankyo->base_light.mPosition;
            light_dist = kankyo->base_light.mPosition.abs(*pos_p);
            light_power = kankyo->base_light.mPow;
            light_yuragi = kankyo->base_light.mFluctuation;

            field_0x10f8.r = 0;
            field_0x10f8.g = 0;
            field_0x10f8.b = 0;

            if ((light_inf_id <= -2 || (light_inf_id == -1 && dKy_Outdoor_check() == TRUE) ||
                 strcmp(dComIfGp_getStartStageName(), "D_MN09A") == 0))
            {
                cXyz camfwd;
                camera_class* camera = (camera_class*)dComIfGp_getCamera(0);
                J3DLightInfo* light0_info = &tevstr_p->mLights[0].getLightInfo();
                sp9 = 1;

                dKyr_get_vectle_calc(&camera->lookat.center, &camera->lookat.eye, &camfwd);
                light_pos = *pos_p + (camfwd * 500.0f);
                light_pos.y += 40.0f;

                if (tevstr_p->Type >= 1 && tevstr_p->Type <= 9) {
                    dKyr_get_vectle_calc(&camera->lookat.center, &camera->lookat.eye, &camfwd);
                    light_pos = camera->lookat.eye + (camfwd * 180.0f);
                }

                field_0x10f8.r = light0_info->mColor.r;
                field_0x10f8.g = light0_info->mColor.g;
                field_0x10f8.b = light0_info->mColor.b;

                light_yuragi = 0.0f;
                light_power = 120.0f;
                light_dist = 100.0f;
                sp40 = 1;
                sp3C = 1;

                if (strcmp(dComIfGp_getStartStageName(), "D_MN09A") == 0) {
                    if (dComIfG_play_c::getLayerNo(0) == 0) {
                        if (tevstr_p->Type == 0) {
                            field_0x10f8.r = 0x1E;
                            field_0x10f8.g = 0x37;
                            field_0x10f8.b = 0x6E;

                            light_pos.y += -800.0f;
                            light_power = 250.0f;
                        }
                    } else if (dComIfG_play_c::getLayerNo(0) == 1 && tevstr_p->Type == 0) {
                        field_0x10f8.r = 0x3C;
                        field_0x10f8.g = 0x5F;
                        field_0x10f8.b = 0x64;
                        light_pos.y += -800.0f;
                        light_power = 150.0f;
                    }
                }

                if (tevstr_p != NULL && tevstr_p->mLightInf.a != 0) {
                    field_0x10f8.r = tevstr_p->mLightInf.r * 4;
                    field_0x10f8.g = tevstr_p->mLightInf.g * 4;
                    field_0x10f8.b = tevstr_p->mLightInf.b * 4;
                }

                switch (tevstr_p->Type) {
                case 1:
                    field_0x10f8.r = 500;
                    field_0x10f8.g = 500;
                    field_0x10f8.b = 500;
                    light_dist = 90.0f;
                    light_power = 5000.0f;
                    break;
                case 4:
                    field_0x10f8.r = 500;
                    field_0x10f8.g = 500;
                    field_0x10f8.b = 500;
                    light_dist = 90.0f;
                    light_power = 5000.0f;
                    break;
                case 5:
                    field_0x10f8.r = 170;
                    field_0x10f8.g = 170;
                    field_0x10f8.b = 170;
                    light_dist = 90.0f;
                    light_power = 5000.0f;
                    break;
                case 2:
                    if (dKy_darkworld_check()) {
                        field_0x10f8.r = 103;
                        field_0x10f8.g = 129;
                        field_0x10f8.b = 199;
                        light_dist = 90.0f;
                        light_power = 5000.0f;
                    }
                    break;
                case 3:
                    if (dKy_darkworld_check()) {
                        field_0x10f8.r = 53;
                        field_0x10f8.g = 53;
                        field_0x10f8.b = 80;
                        light_dist = 90.0f;
                        light_power = 5000.0f;
                    }
                    break;
                case 9:
                    if (dKy_darkworld_check()) {
                        field_0x10f8.r = 110;
                        field_0x10f8.g = 110;
                        field_0x10f8.b = 140;
                        light_dist = 90.0f;
                        light_power = 5000.0f;
                    }
                    break;
                case 7: {
                    f32 sp34 = tevstr_p->TevColor.a / 255.0f;
                    field_0x10f8.r = 180;
                    field_0x10f8.g = 180;
                    field_0x10f8.b = 180;
                    light_dist = 90.0f;
                    light_pos.y += -120.0f;

                    f32 sp24 = cM_ssin(g_Counter.mCounter0 * 325);
                    f32 sp20 = cM_scos(g_Counter.mCounter0 * 285);
                    cLib_addCalcU8(&light_info->mColor.a, fabsf(sp24 * 255.0f), 2, 255);
                    light_info->mColor.a *= sp34;

                    light_pos.y += sp20 * 500.0f;
                    light_pos.y -= 80.0f;
                    light_power = 300.0f;
                    break;
                }
                case 6:
                    if (dKy_darkworld_check()) {
                        field_0x10f8.r = 255;
                        field_0x10f8.g = 255;
                        field_0x10f8.b = 255;
                        light_dist = 90.0f;
                        light_power = 5000.0f;
                    }
                    break;
                }
            }
        } else {
            light_pos = dKy_light_influence_pos(light_inf_id);
            field_0x10f8 = dKy_light_influence_col(light_inf_id);
            light_yuragi = dKy_light_influence_yuragi(light_inf_id);
        }

        f32 var_f31;
        if (light_power <= 0.0f && sp3C == 0) {
            var_f31 = 1.0f;
        } else {
            var_f31 = light_dist / light_power;
        }

        if (var_f31 > 1.0f) {
            var_f31 = 1.0f;
        }

        var_f31 = (1.0f - var_f31);
        var_f31 *= g_env_light.now_actcol_ratio;

        if ((tevstr_p->Type != 10 && tevstr_p->Type != 9) || tevstr_p->Material_id != 0) {
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

        if (init_timer != 0 || var_f31 <= 0.0f || sp9 == 0) {
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

        if (init_timer != 0 || sp40 != 0 || tevstr_p->field_0x384 != 0) {
            tevstr_p->field_0x32c = light_pos;
        } else {
            f32 sp18 = pos_p->abs(tevstr_p->field_0x32c);
            f32 sp14 = sp18 / 10000.0f;
            if (sp14 > 1.0f) {
                sp14 = 1.0f;
            }
            sp14 *= sp14;

            sp18 = pos_p->abs(light_pos);
            f32 var_f28 = sp18 / 5000.0f;
            if (var_f28 > 1.0f) {
                var_f28 = 1.0f;
            }

            var_f28 = 1.0f - var_f28;
            var_f28 *= var_f28 * var_f28;
            f32 sp1C = 10.0f + (10000.0f * sp14) + (100.0f * var_f28);
            cLib_addCalc(&tevstr_p->field_0x32c.x, light_pos.x, 0.5f, sp1C, 0.001f);
            cLib_addCalc(&tevstr_p->field_0x32c.y, light_pos.y, 0.5f, sp1C, 0.001f);
            cLib_addCalc(&tevstr_p->field_0x32c.z, light_pos.z, 0.5f, sp1C, 0.001f);
        }

        cXyz spC4;
        cXyz spB8;
        spB8 = tevstr_p->field_0x32c;
        cMtx_multVec(view_mtx, &spB8, &spDC);

        if (dKy_shadow_mode_check(4) == 0) {
            if ((tevstr_p->Type == 9 || tevstr_p->Type == 10) &&
                (player->getSinkShapeOffset() < -20.0f || player->checkSinkDead() || dKy_camera_water_in_status_check() || !player->checkSwimUp()))
            {
                cLib_addCalc(&tevstr_p->mLightPosWorld.x, pos_p->x, 0.5f, 5000.0f, 0.1f);
                cLib_addCalc(&tevstr_p->mLightPosWorld.y, 1000.0f + pos_p->y, 0.5f, 5000.0f, 0.1f);
                cLib_addCalc(&tevstr_p->mLightPosWorld.z, pos_p->z, 0.5f, 5000.0f, 0.1f);
            } else if ((kankyo->shadow_mode & 1) || (kankyo->shadow_mode & 2)) {
                cLib_addCalc(&tevstr_p->mLightPosWorld.x, g_env_light.field_0x10a0.x, 0.5f, 5000.0f,
                             0.1f);
                cLib_addCalc(&tevstr_p->mLightPosWorld.y, g_env_light.field_0x10a0.y, 0.5f, 5000.0f,
                             0.1f);
                cLib_addCalc(&tevstr_p->mLightPosWorld.z, g_env_light.field_0x10a0.z, 0.5f, 5000.0f,
                             0.1f);
            } else if (sp9 != 0) {
                if (init_timer != 0 || tevstr_p->field_0x384 != 0) {
                    tevstr_p->mLightPosWorld = kankyo->base_light.mPosition;
                } else {
                    cLib_addCalc(&tevstr_p->mLightPosWorld.x, kankyo->base_light.mPosition.x, 0.25f,
                                 1000.0f, 0.0001f);
                    cLib_addCalc(&tevstr_p->mLightPosWorld.y, kankyo->base_light.mPosition.y, 0.25f,
                                 1000.0f, 0.0001f);
                    cLib_addCalc(&tevstr_p->mLightPosWorld.z, kankyo->base_light.mPosition.z, 0.25f,
                                 1000.0f, 0.0001f);
                }
            } else {
                cXyz spAC;
                u8 sp8 = 0;
                spAC = tevstr_p->field_0x32c;

                for (int i = 0; i < 6; i++) {
                    if (kankyo->field_0x0c18[i].field_0x26 == 1) {
                        if (kankyo->field_0x0c18[i].mPos.abs(*pos_p) < spAC.abs(*pos_p) &&
                            kankyo->field_0x0c18[i].mPos.abs(*pos_p) < 1000.0f)
                        {
                            spAC = kankyo->field_0x0c18[i].mPos;
                            sp8 = i + 1;
                        }
                    }
                }

                if (sp8 == 0) {
                    if (init_timer != 0 || tevstr_p->field_0x384 != 0) {
                        tevstr_p->mLightPosWorld = tevstr_p->field_0x32c;
                    } else {
                        cLib_addCalc(&tevstr_p->mLightPosWorld.x, tevstr_p->field_0x32c.x, 0.25f,
                                     1000.0f, 0.0001f);
                        cLib_addCalc(&tevstr_p->mLightPosWorld.y, tevstr_p->field_0x32c.y, 0.25f,
                                     1000.0f, 0.0001f);
                        cLib_addCalc(&tevstr_p->mLightPosWorld.z, tevstr_p->field_0x32c.z, 0.25f,
                                     1000.0f, 0.0001f);
                    }
                } else {
                    if (init_timer != 0 || tevstr_p->field_0x384 != 0) {
                        tevstr_p->mLightPosWorld = kankyo->field_0x0c18[sp8 - 1].mPos;
                    } else {
                        cLib_addCalc(&tevstr_p->mLightPosWorld.x,
                                     kankyo->field_0x0c18[sp8 - 1].mPos.x, 0.25f, 1000.0f, 0.0001f);
                        cLib_addCalc(&tevstr_p->mLightPosWorld.y,
                                     kankyo->field_0x0c18[sp8 - 1].mPos.y, 0.25f, 1000.0f, 0.0001f);
                        cLib_addCalc(&tevstr_p->mLightPosWorld.z,
                                     kankyo->field_0x0c18[sp8 - 1].mPos.z, 0.25f, 1000.0f, 0.0001f);
                    }

                    var_f31 = kankyo->field_0x0c18[sp8 - 1].mPos.abs(*pos_p) / 500.0f;
                    if (var_f31 > 1.0f) {
                        var_f31 = 1.0f;
                    }
                    var_f31 = 1.0f - var_f31;
                }
            }

            if ((tevstr_p->Type == 9 || tevstr_p->Type == 10) &&
                (player->checkSinkDead() || dComIfGp_checkPlayerStatus0(0, 0x02000308) ||
                 dComIfGp_checkPlayerStatus1(0, 0x02000000) || player->checkMagneBootsOn()))
            {
                cLib_addCalc(&tevstr_p->field_0x344, 0.0f, 0.75f, 0.21f, 0.0001f);
            } else if (tevstr_p->Type == 9 && player->getSinkShapeOffset() < -35.0f) {
                cLib_addCalc(&tevstr_p->field_0x344, 0.0f, 0.1f, 0.01f, 0.00001f);
            } else if (tevstr_p->Type == 10 && player->getSinkShapeOffset() < -100.0f) {
                cLib_addCalc(&tevstr_p->field_0x344, 0.0f, 0.1f, 0.01f, 0.00001f);
            } else if (init_timer != 0) {
                tevstr_p->field_0x344 = kankyo->field_0x1238 +
                                        (var_f31 * (kankyo->field_0x123c - kankyo->field_0x1238));
            } else {
                cLib_addCalc(&tevstr_p->field_0x344,
                             kankyo->field_0x1238 +
                                 (var_f31 * (kankyo->field_0x123c - kankyo->field_0x1238)),
                             0.75f, 0.04f, 0.000001f);
            }

            if (tevstr_p->field_0x344 > 1.0f) {
                tevstr_p->field_0x344 = 1.0f;
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
void dScnKy_env_light_c::settingTevStruct(int tevstrType, cXyz* pos_p, dKy_tevstr_c* tevstr_p) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    u8 init_timer = tevstr_p->mInitTimer;

    GXColorS10 amb_col;
    GXColorS10 fog_tev_col;

    f32 fog_near;
    f32 fog_far;

    cXyz pos;
    if (tevstr_p->room_no < 0) {
        tevstr_p->room_no = dComIfGp_roomControl_getStayNo();
    }

    if (pos_p != NULL) {
        pos = *pos_p;
    } else {
        pos.set(0.0f, 0.0f, 0.0f);
    }

    if (tevstr_p != NULL && g_env_light.mActorLightEffect != 100) {
        tevstr_p->field_0x374 = g_env_light.mActorLightEffect / 100.0f;
    }

    tevstr_p->Type = tevstrType;

    if (tevstr_p->Material_use_fg != 123 && tevstr_p->Material_use_fg != 124) {
        dKy_tevstr_init(tevstr_p, dComIfGp_roomControl_getStayNo(), 0xFF);
        OS_REPORT_ERROR("\n\ntevstr init Non. Material_use_fg[%d] setroom=[%d]\n",
                        tevstr_p->Material_use_fg, dComIfGp_roomControl_getStayNo());
    }

    tevstr_p->Material_use_fg = 124;
    actor_amb_col.a = 255;

    if (tevstrType == 14) {
        camera_class* camera_p = (camera_class*)dComIfGp_getCamera(0);
        cXyz calc_pos;
        tevstr_p->mLightMode = 0;

        // @bug room_no is a signed char, so this will always evaluate to false
        if (tevstr_p->room_no >= 128) {
            tevstr_p->UseCol = 0;
        } else {
            tevstr_p->UseCol = tevstr_p->room_no;
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

        fog_tev_col.r = 255;
        fog_tev_col.g = 255;
        fog_tev_col.b = 255;

        fog_near = 30000.0f;
        fog_far = 30000.0f;
        dKyr_get_vectle_calc(&pos, &camera_p->lookat.eye, &calc_pos);

        for (int i = 0; i < 6; i++) {
            J3DLightInfo& light_info = tevstr_p->mLights[i].getLightInfo();

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

            dKy_GXInitLightSpot(&light_info, 90.0f, GX_SP_OFF);
            dKy_GXInitLightDistAttn(&light_info, 100000.0f, 0.99999f, GX_DA_STEEP);

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

        sp80.x = camera_p->lookat.eye.x;
        sp80.y = camera_p->lookat.eye.y;
        sp80.z = camera_p->lookat.eye.z;
        cMtx_multVec(view_mtx, &sp80, &sp8C);

        J3DLightInfo& light_info = tevstr_p->mLightObj.getLightInfo();
        light_info.mLightPosition = sp8C;
        tevstr_p->field_0x32c = sp80;
        tevstr_p->mLightPosWorld = sp80;
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
    } else if (tevstrType == 12 || tevstrType == 13) {
        camera_class* camera_p = (camera_class*)dComIfGp_getCamera(0);

        tevstr_p->TevColor.r = 0;
        tevstr_p->TevColor.g = 0;
        tevstr_p->TevColor.b = 0;
        tevstr_p->TevColor.a = 0;

        tevstr_p->TevKColor.r = 0;
        tevstr_p->TevKColor.g = 0;
        tevstr_p->TevKColor.b = 0;
        tevstr_p->TevKColor.a = 0;
        tevstr_p->mLightMode = 0;

        if (tevstr_p->room_no >= 128) {
            tevstr_p->UseCol = 0;
        } else {
            tevstr_p->UseCol = tevstr_p->room_no;
        }

        if (tevstrType == 12) {
            field_0x10f0.r = 25;
            field_0x10f0.g = 20;
            field_0x10f0.b = 25;
        } else {
            field_0x10f0.r = 40;
            field_0x10f0.g = 35;
            field_0x10f0.b = 30;
        }

        field_0x10f0.a = 0xFF;

        fog_tev_col.r = 255;
        fog_tev_col.g = 255;
        fog_tev_col.b = 255;

        fog_near = 30000.0f;
        fog_far = 30000.0f;

        for (int i = 0; i < 6; i++) {
            J3DLightInfo& temp_r31 = tevstr_p->mLights[i].getLightInfo();

            if (i == 0) {
                if (tevstrType == 12) {
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
                if (tevstrType == 12) {
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

        sp68.x = camera_p->lookat.eye.x;
        sp68.y = camera_p->lookat.eye.y;
        sp68.z = camera_p->lookat.eye.z;

        J3DLightInfo& light_info = tevstr_p->mLightObj.getLightInfo();
        cMtx_multVec(view_mtx, &sp68, &sp74);

        light_info.mLightPosition = sp74;
        if (tevstrType == 13) {
            tevstr_p->field_0x32c = sp68;
            tevstr_p->mLightPosWorld = sp68;
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
    } else if (!(tevstrType & 0xF0)) {
        tevstr_p->mLightMode = 1;

        amb_col = actor_amb_col;
        fog_tev_col = fog_col;

        fog_near = mFogNear;
        fog_far = mFogFar;

        if (tevstrType == 0 || tevstrType == 0 || tevstrType == 8 || tevstrType == 7 ||
            tevstrType == 1 || tevstrType == 2 || tevstrType == 3 || tevstrType == 5 ||
            tevstrType == 4 || tevstrType == 11)
        {
            settingTevStruct_colget_actor(pos_p, tevstr_p, &amb_col, &fog_tev_col, &fog_near,
                                          &fog_far);
        } else if (tevstrType == 10 || tevstrType == 9) {
            if (g_env_light.player_room_no != (u8)dComIfGp_roomControl_getStayNo()) {
                g_env_light.player_room_no = dComIfGp_roomControl_getStayNo();
                mDoAud_setSceneName(
                    dComIfGp_getStartStageName(), dComIfGp_roomControl_getStayNo(),
                    dComIfG_play_c::getLayerNo_common(dComIfGp_getStartStageName(),
                                                      dComIfGp_roomControl_getStayNo(),
                                                      dComIfGp_getStartStageLayer()));

                if (strcmp(dComIfGp_getStartStageName(), "F_SP121") == 0) {
                    mDoAud_load2ndDynamicWave();
                }
            }
            init_timer = g_env_light.light_init_timer;
            settingTevStruct_colget_player(tevstr_p);
            settingTevStruct_colget_actor(pos_p, tevstr_p, &amb_col, &fog_tev_col, &fog_near,
                                          &fog_far);
        }

        field_0x10f0.r = amb_col.r;
        field_0x10f0.g = amb_col.g;
        field_0x10f0.b = amb_col.b;
        field_0x10f0.a = 255;

        if (tevstrType != 11) {
            settingTevStruct_plightcol_plus(pos_p, tevstr_p, amb_col, amb_col, init_timer);
        }

        if (tevstrType == 10 || tevstrType == 9) {
            g_env_light.plight_near_pos = tevstr_p->mLightPosWorld;
        }
    } else {
        tevstr_p->mLightMode = 0;
        if (tevstr_p->Type != 20) {
            tevstr_p->field_0x374 = g_env_light.bg_light_influence;
        } else {
            switch (tevstr_p->mLightInf.r) {
            case 0:
                tevstr_p->field_0x374 = 0.2f;
                break;
            case 1:
                tevstr_p->field_0x374 = 0.3f;
                break;
            case 2:
                tevstr_p->field_0x374 = 0.4f;
                break;
            case 3:
                tevstr_p->field_0x374 = 0.6f;
                break;
            case 4:
                tevstr_p->field_0x374 = 0.8f;
                break;
            case 5:
                tevstr_p->field_0x374 = 0.9f;
                break;
            case 6:
                tevstr_p->field_0x374 = 1.0f;
                break;
            case 7:
                tevstr_p->field_0x374 = 1.2f;
                break;
            default:
                tevstr_p->field_0x374 = 1.0f;
                break;
            }
        }

        // @bug room_no is a signed char, so this will always evaluate to false
        if (tevstr_p->room_no >= 128) {
            tevstr_p->UseCol = 0;
        } else {
            tevstr_p->UseCol = tevstr_p->room_no;
        }

        GXColorS10 BG_col[4];
        setLight_bg(tevstr_p, BG_col, &fog_tev_col, &fog_near, &fog_far);

        field_0x10f0 = BG_col[tevstrType & 3];

        MtxP view_mtx = j3dSys.getViewMtx();
        Vec sp5C;
        cXyz pos;
        bool var_r25_3 = 0;
        pos.z = 0.0f;
        pos.y = 0.0f;
        pos.x = 0.0f;

        int light_inf_id = dKy_light_influence_id(pos, 0);
        if (light_inf_id >= 0 && g_env_light.pointlight[light_inf_id]->mIndex < 0) {
            var_r25_3 = 1;
        }

        if (var_r25_3 == 1) {
            pos = g_env_light.pointlight[light_inf_id]->mPosition;
            J3DLightInfo& light_info = tevstr_p->mLightObj.getLightInfo();

            cMtx_multVec(view_mtx, &pos, &sp5C);

            light_info.mLightPosition = sp5C;
            tevstr_p->field_0x32c = pos;
            light_info.mLightDirection = g_env_light.field_0x1064;

            light_info.mColor.a = g_env_light.pointlight[light_inf_id]->mColor.a;
            light_info.mColor.r = g_env_light.pointlight[light_inf_id]->mColor.r;
            light_info.mColor.g = g_env_light.pointlight[light_inf_id]->mColor.g;
            light_info.mColor.b = g_env_light.pointlight[light_inf_id]->mColor.b;
            dKy_GXInitLightSpot(&light_info, 90.0f, GX_SP_OFF);
            dKy_GXInitLightDistAttn(&light_info,
                                    g_env_light.pointlight[light_inf_id]->mPow * 0.001f, 0.99999f,
                                    GX_DA_STEEP);
        } else {
            MtxP view_mtx = j3dSys.getViewMtx();
            J3DLightInfo& light_info = tevstr_p->mLightObj.getLightInfo();
            Vec sp44;
            cMtx_multVec(view_mtx, &lightStatusData[0].position, &sp44);

            light_info.mLightPosition = sp44;
            tevstr_p->field_0x32c = lightStatusData[0].position;
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

        tevstr_p->mLightPosWorld = kankyo->base_light.mPosition;
    }

    field_0x10f0.a = 255;
    tevstr_p->AmbCol = field_0x10f0;
    tevstr_p->FogCol = fog_tev_col;
    tevstr_p->mFogStartZ = fog_near;
    tevstr_p->mFogEndZ = fog_far;
}

/* 801A441C-801A4420 19ED5C 0004+00 0/0 0/0 2/2 .text
 * setLightTevColorType__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c */
void dScnKy_env_light_c::setLightTevColorType(J3DModelData*, dKy_tevstr_c*) {}

/* 801A4420-801A4C08 19ED60 07E8+00 2/2 0/0 0/0 .text
 * setLightTevColorType_MAJI_sub__FP11J3DMaterialP12dKy_tevstr_ci */
// NONMATCHING - some minor issues with dKyd_maple_col_getp
static void setLightTevColorType_MAJI_sub(J3DMaterial* material_p, dKy_tevstr_c* tevstr_p,
                                          int lightType) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    MtxP view_mtx = j3dSys.getViewMtx();
    camera_class* camera = (camera_class*)dComIfGp_getCamera(0);

    if (tevstr_p != NULL) {
        J3DGXColor amb_col;
        amb_col.r = tevstr_p->AmbCol.r;
        amb_col.g = tevstr_p->AmbCol.g;
        amb_col.b = tevstr_p->AmbCol.b;
        amb_col.a = tevstr_p->AmbCol.a;

        if (((tevstr_p->Type >= 1 && tevstr_p->Type <= 7) || tevstr_p->Type == 5 ||
             tevstr_p->Type == 15 || (tevstr_p->Type == 9 && dKy_darkworld_check())) &&
            ((tevstr_p->Type != 2 && tevstr_p->Type != 3) || dKy_darkworld_check()))
        {
            amb_col.r = 0;
            amb_col.g = 0;
            amb_col.b = 0;
            amb_col.a = 0;

            if (tevstr_p->Type == 7) {
                amb_col.a = 4;
            }

            if (tevstr_p->Type == 3) {
                amb_col.r = 12;
                amb_col.g = 12;
                amb_col.b = 12;
            } else if (tevstr_p->Type == 6) {
                f32 var_r30 = fabsf(cM_ssin(g_Counter.mCounter0 * 662));
                amb_col.r = 255.0f - (185.0f * var_r30);
                amb_col.g = 255.0f - (185.0f * var_r30);
                amb_col.b = 255.0f - (185.0f * var_r30);
            } else if (tevstr_p->Type == 2) {
                amb_col.r = 0x12;
                amb_col.g = 0x12;
                amb_col.b = 0x12;
            } else if (tevstr_p->Type == 4) {
                amb_col.r = 0xFF;
                amb_col.g = 0x33;
                amb_col.b = 0xB;
            } else if (tevstr_p->Type == 5) {
                amb_col.r = 0xA;
                amb_col.g = 0xA;
                amb_col.b = 8;
            } else if (tevstr_p->Type == 15) {
                amb_col.r = 0x19;
                amb_col.g = 0x1E;
                amb_col.b = 0x23;
            }
        }

        material_p->setAmbColor(0, &amb_col);

        if (lightType != 0) {
            material_p->setTevColor(0, (J3DGXColorS10*)&tevstr_p->TevColor);
            material_p->setTevKColor(0, (J3DGXColor*)&tevstr_p->TevKColor);
        }

        MtxP sp10 = j3dSys.getViewMtx();
        if (sp10 != NULL) {
            Vec sp28;
            J3DLightInfo* sp20 = &tevstr_p->mLightObj.getLightInfo();
            cMtx_multVec(sp10, &tevstr_p->field_0x32c, &sp28);
            sp20->mLightPosition = sp28;
        }

        material_p->setLight(0, &tevstr_p->mLightObj);

        if (view_mtx != NULL) {
            if (lightType != 2) {
                for (int i = 0; i < 6; i++) {
                    material_p->setLight(i + 2, &tevstr_p->mLights[i]);
                }
            } else if (g_env_light.fishing_hole_season >= 1 && g_env_light.fishing_hole_season <= 4)
            {
                color_RGB_class maple_color;
                maple_color.r = dKyd_maple_col_getp()[g_env_light.fishing_hole_season + 7].r;
                maple_color.g = dKyd_maple_col_getp()[g_env_light.fishing_hole_season + 7].g;
                maple_color.b = dKyd_maple_col_getp()[g_env_light.fishing_hole_season + 7].b;

                amb_col.r = 0xA;
                amb_col.g = 0xA;
                amb_col.b = 0xA;

                f32 var_f31;
                var_f31 = (amb_col.r * g_env_light.now_bgcol_ratio) / 10.0f;
                var_f31 *= var_f31;
                if (var_f31 > 1.0f) {
                    var_f31 = 1.0f;
                }
                amb_col.r = g_env_light.now_bgcol_ratio * (maple_color.r * var_f31);

                var_f31 = (amb_col.g * g_env_light.now_bgcol_ratio) / 10.0f;
                var_f31 *= var_f31;
                if (var_f31 > 1.0f) {
                    var_f31 = 1.0f;
                }
                amb_col.g = g_env_light.now_bgcol_ratio * (maple_color.g * var_f31);

                var_f31 = (amb_col.b * g_env_light.now_bgcol_ratio) / 10.0f;
                var_f31 *= var_f31;
                if (var_f31 > 1.0f) {
                    var_f31 = 1.0f;
                }
                amb_col.b = g_env_light.now_bgcol_ratio * (maple_color.b * var_f31);

                material_p->setAmbColor(0, &amb_col);

                for (int i = 0; i < 6; i++) {
                    if (i <= 1) {
                        J3DLightInfo* var_r28;
                        if (i == 0) {
                            kankyo->global_maple_col_change[i].light_obj = tevstr_p->mLights[i];

                            J3DLightInfo* sp8 =
                                &kankyo->global_maple_col_change[1].light_obj.getLightInfo();
                            var_r28 = &kankyo->global_maple_col_change[i].light_obj.getLightInfo();
                            sp8->mColor = var_r28->mColor;
                        } else {
                            var_r28 = &kankyo->global_maple_col_change[i].light_obj.getLightInfo();
                        }

                        color_RGB_class maple_color;
                        maple_color.r =
                            dKyd_maple_col_getp()[(g_env_light.fishing_hole_season + (i * 4))].r;
                        maple_color.g =
                            dKyd_maple_col_getp()[(g_env_light.fishing_hole_season + (i * 4))].g;
                        maple_color.b =
                            dKyd_maple_col_getp()[(g_env_light.fishing_hole_season + (i * 4))].b;

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

                        material_p->setLight(i + 2, &kankyo->global_maple_col_change[i].light_obj);
                    } else {
                        material_p->setLight(i + 2, &tevstr_p->mLights[i]);
                    }
                }
            }
        }

        if (material_p->getFog() != NULL) {
            J3DFogInfo* fog_info = material_p->getFog()->getFogInfo();
            if (fog_info->mType != 0) {
                fog_info->mStartZ = tevstr_p->mFogStartZ;
                fog_info->mEndZ = tevstr_p->mFogEndZ;

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
                    fog_info->mColor.r = tevstr_p->FogCol.r;
                    fog_info->mColor.g = tevstr_p->FogCol.g;
                    fog_info->mColor.b = tevstr_p->FogCol.b;
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
void dKy_cloudshadow_scroll(J3DModelData* modelData_p, dKy_tevstr_c* tevstr_p, int param_2) {
    JUTNameTab* mat_nametbl = modelData_p->getMaterialName();

    for (int i = modelData_p->getMaterialNum() - 1; i >= 0; i--) {
        J3DMaterial* mat_p = modelData_p->getMaterialNodePointer(i);

        int lightType = param_2;
        if (tevstr_p->Material_id != 0 && tevstr_p->Material_id == i) {
            lightType = 2;
        }

        setLightTevColorType_MAJI_sub(mat_p, tevstr_p, lightType);

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
void dScnKy_env_light_c::setLightTevColorType_MAJI(J3DModelData* modelData_p,
                                                   dKy_tevstr_c* tevstr_p) {
    if (tevstr_p->Material_use_fg != 124) {
        OS_REPORT_ERROR("\ncoltype tevstr init Non. Material_use_fg[%d]\n",
                        tevstr_p->Material_use_fg);
        if (tevstr_p->Material_use_fg != 123) {
            dKy_tevstr_init(tevstr_p, dComIfGp_roomControl_getStayNo(), 0xFF);
        }

        settingTevStruct(11, NULL, tevstr_p);
    }

    dKy_setLight_nowroom_actor(tevstr_p);

    int lightType;
    if (tevstr_p->Type > 10 && tevstr_p->Type != 12 && tevstr_p->Type != 13) {
        lightType = 0;
    } else {
        lightType = 1;
    }

    if (tevstr_p->Type & 0x20) {
        dKy_cloudshadow_scroll(modelData_p, tevstr_p, lightType);
    } else {
        for (int i = modelData_p->getMaterialNum() - 1; i >= 0; i--) {
            setLightTevColorType_MAJI_sub(modelData_p->getMaterialNodePointer(i), tevstr_p,
                                          lightType);
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
    if (sound_influence.timer != 0) {
        sound_influence.timer--;
        if (sound_influence.timer == 0) {
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

    if (eflight.mLightType == 0) {
        static flush_info flush_col[] = {
            {1, 0x00, 0x00, 0x00},
            {4, 0x43, 0x73, 0x58},
            {10, 0x25, 0x3E, 0x2D},
            {20, 0x00, 0x00, 0x00},
        };

        info = flush_col;
        fluctuation = 100.0f;
        power = 120.0f;
    } else if (eflight.mLightType == 1) {
        static flush_info flush_col2[] = {
            {1, 0x00, 0x00, 0x00},
            {4, 0x6E, 0x5A, 0x00},
            {8, 0x4B, 0x22, 0x00},
            {15, 0x00, 0x00, 0x00},
        };

        info = flush_col2;
        fluctuation = 0.0f;
        power = 120.0f;
    } else {
        static flush_info flush_col3[] = {
            {1, 0x00, 0x00, 0x00},
            {4, 0x46, 0x4D, 0x43},
            {15, 0x22, 0x1E, 0x00},
            {20, 0x00, 0x00, 0x00},
        };

        info = flush_col3;
        fluctuation = 100.0f;
        power = 80.0f;
    }

    switch (eflight.mState) {
    case 0:
        break;
    case 1:
        eflight.mFrame = 0;
        eflight.field_0x8.mColor.r = info[0].r;
        eflight.field_0x8.mColor.g = info[0].g;
        eflight.field_0x8.mColor.b = info[0].b;
        eflight.field_0x8.mPow = power;
        eflight.field_0x8.mFluctuation = fluctuation;

        dKy_efplight_set(&eflight.field_0x8);
        eflight.mState++;
        break;
    case 2:
        for (int i = 0; i < 3; i++) {
            if (eflight.mFrame >= info[i].start_frame && eflight.mFrame <= info[i + 1].start_frame)
            {
                f32 ratio = 1.0f - (f32)(info[i + 1].start_frame - eflight.mFrame) /
                                       (f32)(info[i + 1].start_frame - info[i].start_frame);

                eflight.field_0x8.mColor.r = u8_data_ratio_set(info[i].r, info[i + 1].r, ratio);
                eflight.field_0x8.mColor.g = u8_data_ratio_set(info[i].g, info[i + 1].g, ratio);
                eflight.field_0x8.mColor.b = u8_data_ratio_set(info[i].b, info[i + 1].b, ratio);
                break;
            }
        }

        if (eflight.mFrame > info[3].start_frame) {
            eflight.mState++;
        }

        eflight.mFrame++;
        break;
    case 3:
        dKy_efplight_cut(&eflight.field_0x8);
        eflight.mState = 0;
        break;
    case 4:
        dKy_efplight_cut(&eflight.field_0x8);
        eflight.mState = 1;
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
            base_light.mPosition = kankyo->sun_light_pos;
        } else if (camera != NULL) {
            base_light.mPosition = camera->lookat.eye + kankyo->moon_pos;
        } else {
            base_light.mPosition = kankyo->moon_pos;
        }
    } else {
        base_light.mPosition = lightStatusPt[2].position;
    }

    base_light.mColor.r = 0xFF;
    base_light.mColor.g = 0xFF;
    base_light.mColor.b = 0xFF;
    base_light.mColor.a = 0xFF;
    base_light.mPow = 0.0f;
    base_light.mFluctuation = 0.0f;
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

    cLib_addCalc(&g_env_light.now_allcol_ratio, g_env_light.allcol_ratio, 0.5f, 0.25f, 0.01f);
    cLib_addCalc(&g_env_light.now_actcol_ratio, g_env_light.actcol_ratio, 0.5f, 0.25f, 0.01f);
    cLib_addCalc(&g_env_light.now_bgcol_ratio, g_env_light.bgcol_ratio * g_env_light.field_0x1210,
                 0.5f, 0.25f, 0.01f);
    cLib_addCalc(&g_env_light.now_fogcol_ratio, g_env_light.fogcol_ratio * g_env_light.field_0x1210,
                 0.5f, 0.25f, 0.01f);
    cLib_addCalc(&g_env_light.now_vrboxsoracol_ratio,
                 g_env_light.vrboxsoracol_ratio * g_env_light.field_0x1210, 0.5f, 0.25f, 0.01f);
    cLib_addCalc(&g_env_light.now_vrboxkumocol_ratio,
                 g_env_light.vrboxkumocol_ratio * g_env_light.field_0x1210, 0.5f, 0.25f, 0.01f);

    g_env_light.allcol_ratio = 1.0f;
    g_env_light.actcol_ratio = 1.0f;
    g_env_light.bgcol_ratio = 1.0f;
    g_env_light.fogcol_ratio = 1.0f;
    g_env_light.vrboxsoracol_ratio = 1.0f;
    g_env_light.vrboxkumocol_ratio = 1.0f;
    g_env_light.field_0x122c = 1.0f;
    g_env_light.field_0x126c = g_env_light.field_0x1268;
    g_env_light.field_0x1268 = 999999.9f;

    for (int i = 50; i < 100; i++) {
        g_env_light.pointlight[i] = NULL;
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
        if ((dCam_getBody()->Mode() == 4 || dCam_getBody()->Mode() == 7) && dComIfGp_event_runCheck())
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
            cLib_addCalc(&g_env_light.field_0x1258, 1.0f - (dist_to_old / 100.0f), 0.5f, 0.05f,
                         0.0001f);
        }

        dist_to_old = camera->lookat.center.abs(S_old_camctr);
        if (dist_to_old > 100.0f) {
            dist_to_old = 100.0f;
        }

        if (g_env_light.field_0x1258 > 1.0f - (dist_to_old / 100.0f)) {
            cLib_addCalc(&g_env_light.field_0x1258, 1.0f - (dist_to_old / 100.0f), 0.5f, 0.05f,
                         0.0001f);
        }

        S_old_cameye = camera->lookat.eye;
        S_old_camctr = camera->lookat.center;

        mDoMtx_stack_c::transS(0.0f, 0.0f, 0.0f);

        size.x = 0.00524f;
        size.y = 0.00524f;
        size.z = 0.00524f;

        if (g_env_light.undwater_ef_model != NULL) {
            J3DGXColor sp8;
            g_env_light.undwater_ef_model->setBaseScale(size);
            g_env_light.undwater_ef_model->setBaseTRMtx(mDoMtx_stack_c::get());

            if (g_env_light.undwater_btk != NULL) {
                g_env_light.undwater_btk->setPlaySpeed(2.0f + (35.0f * (1.0f - g_env_light.field_0x1258)));
                g_env_light.undwater_btk->entry(g_env_light.undwater_ef_model->getModelData());
                g_env_light.undwater_btk->play();

                dComIfGd_setXluList2DScreen();
                mDoExt_modelUpdateDL(g_env_light.undwater_ef_model);
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

    if (g_env_light.undwater_ef_heap != NULL) {
        mDoExt_destroySolidHeap(g_env_light.undwater_ef_heap);
    }

    return 1;
}

/* 801A5C1C-801A5E54 1A055C 0238+00 1/0 0/0 0/0 .text            dKy_Create__FPv */
static int dKy_Create(void* i_this) {
    BOOL next_time_set = false;

    stage_envr_info_class* stage_envr_p = dComIfGp_getStageEnvrInfo();
    if (stage_envr_p != NULL && dComIfGp_getStartStageRoomNo() != -1) {
        if (stage_envr_p[dComIfGp_getStartStageRoomNo()].pselect_id[64] != 0) {
            mDoGph_gInf_c::getBloom()->create();
        }
    }

    envcolor_init();
    g_env_light.field_0x12b0 = 0;
    g_env_light.field_0x1254 = 1.0f;
    g_env_light.plight_near_pos.x = 0.0f;
    g_env_light.plight_near_pos.y = 0.0f;
    g_env_light.plight_near_pos.z = 0.0f;
    g_env_light.senses_mode = 0;
    g_env_light.senses_effect_strength = 0.0f;
    g_env_light.now_senses_effect = 0;

    dKy_setLight_init();
    dKy_Sound_init();
    dKyw_wind_set();
    dungeonlight_init();
    dKy_setLight_nowroom(dComIfGp_roomControl_getStayNo());

    g_env_light.pol_efftbl = (dKy_pol_efftbl_struct*)dComIfG_getStageRes("pol_efftbl.dat");
    g_env_light.pol_effcol = (dKy_pol_effcol_struct*)dComIfG_getStageRes("pol_effcol.dat");
    g_env_light.pol_efftbl2 = (dKy_pol_efftbl_struct*)dComIfG_getStageRes("pol_efftbl2.dat");
    g_env_light.pol_effcol2 = (dKy_pol_effcol_struct*)dComIfG_getStageRes("pol_effcol2.dat");
    g_env_light.pol_sound = (dKy_pol_sound_struct*)dComIfG_getStageRes("pol_sound.dat");
    g_env_light.pol_arg = (dKy_pol_arg_struct*)dComIfG_getStageRes("pol_arg.dat");
    g_env_light.colordata_tbl = (dKy_color_data_struct*)dComIfG_getStageRes("colordata_tbl.dat");

    if (g_env_light.nexttime != -1.0f) {
        next_time_set = true;
        dComIfGs_setTime(g_env_light.nexttime);
    }

    if (dKy_darkworld_check()) {
        if (g_env_light.old_time == -1.0f) {
            g_env_light.old_time = dComIfGs_getTime();
        }
    } else if (g_env_light.old_time != -1.0f) {
        if (!next_time_set) {
            dComIfGs_setTime(g_env_light.old_time);
        }
        g_env_light.old_time = -1.0f;
    }

    g_env_light.nexttime = -1.0f;
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
    g_env_light.sun_light_pos = g_env_light.sun_pos;
}

/* 801A60E0-801A61F4 1A0A20 0114+00 2/2 0/0 0/0 .text            dKy_GlobalLight_set__Fv */
void dKy_GlobalLight_set() {
    MtxP view_mtx = j3dSys.getViewMtx();

    for (int i = 0; i < 8; i++) {
        LightStatus* light_status = &lightStatusData[i];

        Vec light_pos;
        cMtx_multVec(view_mtx, &light_status->position, &light_pos);

        GXLightObj light_obj;
        GXInitLightPos(&light_obj, light_pos.x, light_pos.y, light_pos.z);
        GXInitLightDir(&light_obj, light_status->mLightDir.x, light_status->mLightDir.y,
                       light_status->mLightDir.z);
        GXInitLightColor(&light_obj, light_status->color);

        if (light_status->mRefDist <= 0.0f) {
            light_status->mRefDist = 0.000001f;
        }

        GXInitLightDistAttn(&light_obj, light_status->mRefDist, light_status->mRefBrightness,
                            light_status->mDistFn);
        GXInitLightSpot(&light_obj, light_status->mCutoff, light_status->mSpotFn);
        GXLoadLightObjImm(&light_obj, (GXLightID)lightMaskData[i]);
    }
}

inline u8 dLVI_getSWLight(stage_pure_lightvec_info_class* i_info) {
    return i_info->flags & 0x80;
}

/* 801A61F4-801A6278 1A0B34 0084+00 3/3 0/0 0/0 .text
 * dKy_lightswitch_check__FP30stage_pure_lightvec_info_classc   */
BOOL dKy_lightswitch_check(stage_pure_lightvec_info_class* stage_light_info_p, char room_no) {
    BOOL is_switch = TRUE;

    if (stage_light_info_p->switch_no != 0xFF) {
        if (!dLVI_getSWLight(stage_light_info_p)) {
            if (dComIfGs_isSwitch(stage_light_info_p->switch_no, room_no)) {
                is_switch = FALSE;
            }
        } else if (!dComIfGs_isSwitch(stage_light_info_p->switch_no, room_no)) {
            is_switch = FALSE;
        }
    }

    return is_switch;
}

/* 801A6278-801A6C20 1A0BB8 09A8+00 2/2 0/0 0/0 .text            dKy_setLight_nowroom_common__Fcf */
// NONMATCHING - some issues with lightStatusPt loads
void dKy_setLight_nowroom_common(char room_no, f32 light_ratio) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    camera_class* camera = (camera_class*)dComIfGp_getCamera(0);
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);
    MtxP view_mtx = j3dSys.getViewMtx();
    dKy_tevstr_c* room_tevstr = dComIfGp_roomControl_getTevStr(room_no);

    if (dComIfGp_roomControl_getStatusRoomDt(room_no) != NULL) {
        stage_pure_lightvec_info_class* room_light_info = dComIfGp_roomControl_getStatusRoomDt(room_no)->getLightVecInfo();
        int room_light_info_num = dComIfGp_roomControl_getStatusRoomDt(room_no)->getLightVecInfoNum();
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

        room_light_info = dComIfGp_roomControl_getStatusRoomDt(room_no)->getLightVecInfo();
        if (dKy_SunMoon_Light_Check() == TRUE && room_light_info == NULL) {
            lightMask |= lightMaskData[2];
            lightMask |= lightMaskData[3];
            room_light_info_num = 2;
        }

        if (g_env_light.bgparts_active_light[0].mIndex != 0) {
            lightMask |= 1;
        }

        if (g_env_light.bgparts_active_light[1].mIndex != 0) {
            lightMask |= 2;
        }

        if (camera != 0) {
            int eflight_id = dKy_eflight_influence_id(camera->lookat.eye, 0);
            if (eflight_id >= 0) {
                dKy_bgparts_activelight_set(g_env_light.efplight[eflight_id], 1);
                if (dKy_Indoor_check() == TRUE) {
                    g_env_light.field_0x10a0 = g_env_light.efplight[eflight_id]->mPosition;
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
            if (g_env_light.bgparts_active_light[i].mIndex != 0 &&
                0.0f != g_env_light.bgparts_active_light[i].mPow &&
                (i != 1 || dMeter2Info_getWindowStatus() != 3))
            {
                lightStatusPt[i].position = g_env_light.bgparts_active_light[i].mPosition;

                if (i == 0) {
                    lightStatusPt[i].mRefDist = g_env_light.bgparts_active_light[i].mPow * 0.01f;
                } else {
                    lightStatusPt[i].mRefDist = g_env_light.bgparts_active_light[i].mPow * 0.01f;
                }

                lightStatusPt[i].mRefBrightness = 0.99999f;
                lightStatusPt[i].field_0x1c = 1;
                lightStatusPt[i].mDistFn = GX_DA_STEEP;
                lightStatusPt[i].mSpotFn = GX_SP_OFF;
                lightStatusPt[i].color.r = g_env_light.bgparts_active_light[i].mColor.r;
                lightStatusPt[i].color.g = g_env_light.bgparts_active_light[i].mColor.g;
                lightStatusPt[i].color.b = g_env_light.bgparts_active_light[i].mColor.b;
            } else {
                lightStatusPt[i].color.r = 0;
                lightStatusPt[i].color.g = 0;
                lightStatusPt[i].color.b = 0;
            }
        }

        for (int i = 0; i < 6; i++) {
            if (room_light_info != 0) {
                if (i < room_light_info_num) {
                    lightStatusPt[i + 2].position.x = room_light_info[i].position.x;
                    lightStatusPt[i + 2].position.y = room_light_info[i].position.y;
                    lightStatusPt[i + 2].position.z = room_light_info[i].position.z;

                    if (dKy_lightswitch_check(&room_light_info[i], room_no) == TRUE) {
                        lightStatusPt[i + 2].mRefDist = room_light_info[i].radius;
                    } else {
                        lightStatusPt[i + 2].mRefDist = 0.000001f;
                    }

                    lightStatusPt[i + 2].mRefBrightness = 0.99999f;
                    lightStatusPt[i + 2].field_0x1c = 0;
                    lightStatusPt[i + 2].mSpotFn = (GXSpotFn)room_light_info[i].spot_type;
                    lightStatusPt[i + 2].mDistFn = (GXDistAttnFn)room_light_info[i].dist_atten_type;
                    lightStatusPt[i + 2].mCutoff = room_light_info[i].spotCutoff;
                    dKy_lightdir_set(room_light_info[i].directionX, room_light_info[i].directionY,
                                     &lightStatusPt[i + 2].mLightDir);
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
                    lightStatusPt[i + 2].position = kankyo->sun_pos;
                } else if (camera != 0) {
                    lightStatusPt[i + 2].position = camera->lookat.eye + kankyo->moon_pos;
                } else {
                    lightStatusPt[i + 2].position = kankyo->moon_pos;
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
                    lightStatusPt[i + 2].color =
                        dKy_light_influence_col(&room_light->mColor, light_ratio);
                } else {
                    lightStatusPt[i + 2].color =
                        dKy_light_influence_col(&g_env_light.dungeonlight[i].mColor, light_ratio);
                }

                if (room_no == dComIfGp_roomControl_getStayNo() && room_light_info != NULL &&
                    i < room_light_info_num)
                {
                    g_env_light.dungeonlight[i].mPosition = lightStatusPt[i + 2].position;
                    g_env_light.dungeonlight[i].mRefDistance = lightStatusPt[i + 2].mRefDist;
                    g_env_light.dungeonlight[i].mCutoffAngle = lightStatusPt[i + 2].mCutoff;
                    g_env_light.dungeonlight[i].mAngleAttenuation = lightStatusPt[i + 2].mSpotFn;
                    g_env_light.dungeonlight[i].mDistAttenuation = lightStatusPt[i + 2].mDistFn;
                    g_env_light.dungeonlight[i].mAngleX = room_light_info[i].directionX;
                    g_env_light.dungeonlight[i].mAngleY = room_light_info[i].directionY;
                }
            } else {
                lightStatusPt[i + 2].color.r = 0;
                lightStatusPt[i + 2].color.g = 0;
                lightStatusPt[i + 2].color.b = 0;
            }
        }

        for (int i = 0; i < 6; i++) {
            if (kankyo->field_0x0c18[i].field_0x26 == 1) {
                for (int j = 0; j < 6; j++) {
                    if (!(lightMask & lightMaskData[j + 2])) {
                        lightMask |= lightMaskData[j + 2];

                        if (kankyo->field_0x0c18[i].mColor.a == 254 ||
                            kankyo->field_0x0c18[i].mColor.a == 253)
                        {
                            dKy_twi_wolflight_set(i);
                        }

                        if (room_tevstr->Type < 16) {
                            lightStatusPt[j + 2].position.x = kankyo->field_0x0c18[i].mPos.x;
                            lightStatusPt[j + 2].position.y = kankyo->field_0x0c18[i].mPos.y;
                            lightStatusPt[j + 2].position.z = kankyo->field_0x0c18[i].mPos.z;
                        } else {
                            lightStatusPt[j + 2].position.x = kankyo->field_0x0c18[i].mPos.x;
                            if (i == 0) {
                                lightStatusPt[j + 2].position.y =
                                    kankyo->field_0x0c18[i].mPos.y + g_env_light.field_0x127c;
                            } else {
                                lightStatusPt[j + 2].position.y =
                                    200.0f + kankyo->field_0x0c18[i].mPos.y;
                            }
                            lightStatusPt[j + 2].position.z = kankyo->field_0x0c18[i].mPos.z;
                        }

                        lightStatusPt[j + 2].color = dKy_light_influence_col(&kankyo->field_0x0c18[i].mColor, light_ratio);
                        lightStatusPt[j + 2].mRefDist = kankyo->field_0x0c18[i].mRefDistance;
                        lightStatusPt[j + 2].mRefBrightness = 0.99999f;
                        lightStatusPt[j + 2].field_0x1c = 1;
                        lightStatusPt[j + 2].mSpotFn = (GXSpotFn)kankyo->field_0x0c18[i].mAngleAttenuation;
                        lightStatusPt[j + 2].mDistFn = (GXDistAttnFn)kankyo->field_0x0c18[i].mDistAttenuation;
                        lightStatusPt[j + 2].mCutoff = kankyo->field_0x0c18[i].mCutoffAngle;

                        dKy_lightdir_set(kankyo->field_0x0c18[i].mAngleX,
                                         kankyo->field_0x0c18[i].mAngleY,
                                         &lightStatusPt[j + 2].mLightDir);
                        break;
                    }
                }
            }
        }

        dKy_GlobalLight_set();
    }
}

/* 801A6C20-801A6C58 1A1560 0038+00 2/2 1/1 0/0 .text            dKy_setLight_nowroom__Fc */
void dKy_setLight_nowroom(char room_no) {
    if (dComIfGp_getCamera(0) != NULL) {
        dKy_setLight_nowroom_common(room_no, 1.0f);
    }
}

/* 801A6C58-801A6D4C 1A1598 00F4+00 0/0 1/1 2/2 .text            dKy_setLight_nowroom_grass__Fcf */
// NONMATCHING - weird branching
void dKy_setLight_nowroom_grass(char room_no, f32 light_ratio) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    camera_class* camera = (camera_class*)dComIfGp_getCamera(0);
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);
    MtxP view_mtx = j3dSys.getViewMtx();

    if (dComIfGp_roomControl_getStatusRoomDt(room_no) != NULL) {
        dStage_FileList_dt_c* filelist = dComIfGp_roomControl_getStatusRoomDt(room_no)->getFileListInfo();
        if (filelist == NULL) {
            return;
        }

        int grass_light = dStage_FileList_dt_GRASSLIGHT(filelist);

        f32 grass_light_ratio;
        if (grass_light >= 0xFF) {
            grass_light_ratio = 1.0f;
        } else {
            grass_light_ratio = grass_light / 100.0f;
        }

        if (light_ratio == 0.0f) {
            dKy_setLight_nowroom_common(room_no, grass_light_ratio);
        } else {
            dKy_setLight_nowroom_common(room_no, light_ratio);
        }
    }
}

/* 801A6D4C-801A6E9C 1A168C 0150+00 1/1 1/1 0/0 .text dKy_move_room_ratio__FP12dKy_tevstr_cPSc */
f32 dKy_move_room_ratio(dKy_tevstr_c* tevstr_p, s8* room_no_p) {
    f32 ratio = 1.0f;

    if (memcmp(dComIfGp_getStartStageName(), "D_MN", 4) == 0 && g_env_light.mColPatMode == 0 &&
        g_env_light.mColPatModeGather == 0 && tevstr_p->pat_ratio > 0.0f &&
        tevstr_p->pat_ratio < 1.0f)
    {
        if (tevstr_p->pat_ratio < 0.5f) {
            if (tevstr_p->YukaCol == 0xFF) {
                *room_no_p = tevstr_p->PrevCol;
                ratio = fabsf(2.0f * (0.5f - tevstr_p->pat_ratio));
            } else {
                *room_no_p = tevstr_p->room_no;
                ratio = fabsf(2.0f * (tevstr_p->pat_ratio - 0.5f));
            }
        } else {
            *room_no_p = tevstr_p->room_no;
            ratio = fabsf(2.0f * (tevstr_p->pat_ratio - 0.5f));
        }

        if (ratio <= 0.0f) {
            ratio = 0.000001f;
        }
    }

    return ratio;
}

/* 801A6E9C-801A75C0 1A17DC 0724+00 1/1 1/1 0/0 .text dKy_setLight_nowroom_actor__FP12dKy_tevstr_c
 */
void dKy_setLight_nowroom_actor(dKy_tevstr_c* tevstr_p) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    Vec light_pos;
    Vec sp3C;
    camera_class* camera = (camera_class*)dComIfGp_getCamera(0);
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    MtxP view_mtx = j3dSys.getViewMtx();

    s8 room_no = tevstr_p->room_no;
    f32 light_ratio = 1.0f;

    if (tevstr_p->Type == 9 || tevstr_p->Type == 10) {
        light_ratio = dKy_move_room_ratio(tevstr_p, &room_no);
    }

    if (tevstr_p->Type == 14 || tevstr_p->Type == 12 || tevstr_p->Type == 13) {
        return;
    }

    if (dComIfGp_roomControl_getStatusRoomDt(room_no) != NULL) {
        J3DLightInfo* light;
        stage_pure_lightvec_info_class* room_lights = dComIfGp_roomControl_getStatusRoomDt(room_no)->getLightVecInfo();
        int room_light_num = dComIfGp_roomControl_getStatusRoomDt(room_no)->getLightVecInfoNum();
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

        room_lights = dComIfGp_roomControl_getStatusRoomDt(room_no)->getLightVecInfo();

        for (int i = 0; i < 6; i++) {
            light = &tevstr_p->mLights[i].getLightInfo();
            if (view_mtx != NULL) {
                if (room_lights != 0 && i < room_light_num) {
                    sp3C.x = room_lights[i].position.x;
                    sp3C.y = room_lights[i].position.y;
                    sp3C.z = room_lights[i].position.z;

                    dKy_GXInitLightSpot(light, room_lights[i].spotCutoff, room_lights[i].spot_type);

                    f32 var_f29;
                    if (dKy_lightswitch_check(&room_lights[i], room_no) == TRUE) {
                        var_f29 = light_ratio * room_lights[i].radius;
                    } else {
                        var_f29 = 0.000001f;
                    }

                    dKy_GXInitLightDistAttn(light, var_f29, 0.99999f,
                                            room_lights[i].dist_atten_type);
                    dKy_lightdir_set(room_lights[i].directionX, room_lights[i].directionY,
                                     &light->mLightDirection);
                    light->mLightDirection.x = -light->mLightDirection.x;
                    light->mLightDirection.y = -light->mLightDirection.y;
                    light->mLightDirection.z = -light->mLightDirection.z;
                }

                if (dKy_SunMoon_Light_Check() == TRUE && i <= 1) {
                    lightMask |= lightMaskData[2];
                    lightMask |= lightMaskData[3];

                    if (i == 0) {
                        sp3C.x = kankyo->sun_pos.x;
                        sp3C.y = kankyo->sun_pos.y;
                        sp3C.z = kankyo->sun_pos.z;
                    } else if (camera != NULL) {
                        sp3C.x = camera->lookat.eye.x + kankyo->moon_pos.x;
                        sp3C.y = camera->lookat.eye.y + kankyo->moon_pos.y;
                        sp3C.z = camera->lookat.eye.z + kankyo->moon_pos.z;
                    } else {
                        sp3C.x = kankyo->moon_pos.x;
                        sp3C.y = kankyo->moon_pos.y;
                        sp3C.z = kankyo->moon_pos.z;
                    }

                    dKy_GXInitLightSpot(light, 90.0f, GX_SP_OFF);
                    dKy_GXInitLightDistAttn(light, 10000.0f, 0.99999f, GX_DA_STEEP);
                }

                cMtx_multVec(view_mtx, &sp3C, &light_pos);
                light->mLightPosition = light_pos;

                if (1.0f != light_ratio) {
                    light->mColor.r *= light_ratio;
                    light->mColor.g *= light_ratio;
                    light->mColor.b *= light_ratio;
                }
            }

            if (!(lightMask & lightMaskData[i + 2])) {
                light->mColor.r = 0;
                light->mColor.g = 0;
                light->mColor.b = 0;
            }

            light = &tevstr_p->mLightObj.getLightInfo();
            if (1.0f != light_ratio) {
                light->mColor.r *= light_ratio;
                light->mColor.g *= light_ratio;
                light->mColor.b *= light_ratio;
            }
        }

        for (int i = 0; i < 6; i++) {
            if (kankyo->field_0x0c18[i].field_0x26 == 1 && view_mtx != NULL) {
                for (int j = 0; j < 6; j++) {
                    if (!(lightMask & lightMaskData[j + 2])) {
                        lightMask |= lightMaskData[j + 2];

                        light = &tevstr_p->mLights[j].getLightInfo();
                        if (kankyo->field_0x0c18[i].mColor.a == 254 ||
                            kankyo->field_0x0c18[i].mColor.a == 253)
                        {
                            dKy_twi_wolflight_set(i);
                        }

                        light->mColor = dKy_light_influence_col(&kankyo->field_0x0c18[i].mColor,
                                                                tevstr_p->field_0x374);

                        if (tevstr_p->Type < 16) {
                            sp3C.x = kankyo->field_0x0c18[i].mPos.x;
                            sp3C.y = kankyo->field_0x0c18[i].mPos.y;
                            sp3C.z = kankyo->field_0x0c18[i].mPos.z;

                            if (kankyo->field_0x0c18[i].mColor.a == 253) {
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

                        dKy_GXInitLightSpot(light, kankyo->field_0x0c18[i].mCutoffAngle,
                                            kankyo->field_0x0c18[i].mAngleAttenuation);
                        f32 var_f30 = kankyo->field_0x0c18[i].mRefDistance * light_ratio;
                        if (var_f30 <= 0.0f) {
                            var_f30 = 0.000001f;
                        }

                        dKy_GXInitLightDistAttn(light, var_f30, 0.99999f,
                                                kankyo->field_0x0c18[i].mDistAttenuation);
                        cMtx_multVec(view_mtx, &sp3C, &light_pos);
                        light->mLightPosition = light_pos;

                        dKy_lightdir_set(kankyo->field_0x0c18[i].mAngleX,
                                         kankyo->field_0x0c18[i].mAngleY, &light->mLightDirection);
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
void dKy_Global_amb_set(dKy_tevstr_c* tevstr_p) {
    GXColor color;
    color.r = tevstr_p->AmbCol.r;
    color.g = tevstr_p->AmbCol.g;
    color.b = tevstr_p->AmbCol.b;
    color.a = tevstr_p->AmbCol.a;

    if (tevstr_p->Type == 2 || tevstr_p->Type == 3) {
        if (dKy_darkworld_check()) {
            if (tevstr_p->Type == 2) {
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
    } else if ((tevstr_p->Type >= 1 && tevstr_p->Type <= 7) ||
               (tevstr_p->Type == 9 && dKy_darkworld_check()))
    {
        color.r = 0;
        color.g = 0;
        color.b = 0;
        color.a = 0;
    }

    GXSetChanAmbColor(GX_COLOR0A0, color);
}

/* 801A76D8-801A7714 1A2018 003C+00 1/1 0/0 0/0 .text            dKy_light_influence_pos__Fi */
cXyz dKy_light_influence_pos(int light_id) {
    if (light_id < 0) {
        light_id = 0;
    }

    dScnKy_env_light_c* kankyo = &g_env_light;
    return kankyo->pointlight[light_id]->mPosition;
}

/* 801A7714-801A7738 1A2054 0024+00 0/0 1/1 0/0 .text            dKy_plight_near_pos__Fv */
cXyz dKy_plight_near_pos() {
    return g_env_light.plight_near_pos;
}

/* 801A7738-801A7790 1A2078 0058+00 0/0 0/0 1/1 .text
 * dKy_mock_light_every_set__FP15LIGHT_INFLUENCE                */
void dKy_mock_light_every_set(LIGHT_INFLUENCE* light_inf_p) {
    for (int i = 50; i < 100; i++) {
        if (g_env_light.pointlight[i] == NULL) {
            g_env_light.pointlight[i] = light_inf_p;
            g_env_light.pointlight[i]->mIndex = i + 1;
            break;
        }
    }
}

/* 801A7790-801A7814 1A20D0 0084+00 1/1 1/1 18/18 .text dKy_plight_set__FP15LIGHT_INFLUENCE */
void dKy_plight_set(LIGHT_INFLUENCE* light_inf_p) {
    for (int i = 0; i < 100; i++) {
        if (g_env_light.pointlight[i] == light_inf_p) {
            return;
        }
    }

    for (int i = 0; i < 50; i++) {
        if (g_env_light.pointlight[i] == NULL) {
            g_env_light.pointlight[i] = light_inf_p;
            g_env_light.pointlight[i]->mIndex = i + 1;
            break;
        }
    }
}

/* 801A7814-801A7868 1A2154 0054+00 0/0 0/0 4/4 .text dKy_dalkmist_inf_set__FP18DALKMIST_INFLUENCE
 */
void dKy_dalkmist_inf_set(DALKMIST_INFLUENCE* dalkmist_inf_p) {
    for (int i = 0; i < 10; i++) {
        if (g_env_light.dalkmist_influence[i] == NULL) {
            g_env_light.dalkmist_influence[i] = dalkmist_inf_p;
            g_env_light.dalkmist_influence[i]->mIndex = i;
            break;
        }
    }
}

/* 801A7868-801A789C 1A21A8 0034+00 0/0 0/0 4/4 .text dKy_dalkmist_inf_cut__FP18DALKMIST_INFLUENCE
 */
void dKy_dalkmist_inf_cut(DALKMIST_INFLUENCE* dalkmist_inf_p) {
    if (dalkmist_inf_p != NULL) {
        if (dalkmist_inf_p->mIndex < 10) {
            g_env_light.dalkmist_influence[dalkmist_inf_p->mIndex] = NULL;
        }
    }
}

/* 801A789C-801A792C 1A21DC 0090+00 0/0 0/0 1/1 .text dKy_plight_priority_set__FP15LIGHT_INFLUENCE
 */
void dKy_plight_priority_set(LIGHT_INFLUENCE* light_inf_p) {
    int i = 0;

    for (; i < 50; i++) {
        if (g_env_light.pointlight[i] == NULL) {
            g_env_light.pointlight[i] = light_inf_p;
            g_env_light.pointlight[i]->mIndex = -(i + 1);
            break;
        }
    }

    if (i >= 50) {
        OSReport_Warning("\nPOINTLIGHT COUNT OVER!!!\n");
    }
}

/* 801A792C-801A797C 1A226C 0050+00 0/0 1/1 32/32 .text dKy_plight_cut__FP15LIGHT_INFLUENCE */
void dKy_plight_cut(LIGHT_INFLUENCE* light_inf_p) {
    if (light_inf_p != NULL) {
        if (light_inf_p->mIndex != 0) {
            if (light_inf_p->mIndex < 0) {
                light_inf_p->mIndex *= -1;
            }

            int idx = (light_inf_p->mIndex & 0xFFF) - 1;
            if (idx < 50) {
                g_env_light.pointlight[idx] = NULL;
            }
        }
    }
}

/* 801A797C-801A7A00 1A22BC 0084+00 1/1 1/1 3/3 .text dKy_efplight_set__FP15LIGHT_INFLUENCE */
void dKy_efplight_set(LIGHT_INFLUENCE* light_inf_p) {
    for (int i = 0; i < 5; i++) {
        if (g_env_light.efplight[i] == light_inf_p) {
            return;
        }
    }

    for (int i = 0; i < 5; i++) {
        if (g_env_light.efplight[i] == NULL) {
            g_env_light.efplight[i] = light_inf_p;
            g_env_light.efplight[i]->mIndex = i + 1;
            break;
        }
    }
}

/* 801A7A00-801A7A40 1A2340 0040+00 1/1 1/1 3/3 .text dKy_efplight_cut__FP15LIGHT_INFLUENCE */
void dKy_efplight_cut(LIGHT_INFLUENCE* light_inf_p) {
    if (light_inf_p != NULL) {
        if (light_inf_p->mIndex != 0) {
            int idx = light_inf_p->mIndex - 1;
            if (idx >= 0 && idx < 5) {
                g_env_light.efplight[idx] = NULL;
            }
        }
    }
}

/* 801A7A40-801A7AAC 1A2380 006C+00 1/1 0/0 0/0 .text
 * dKy_bgparts_activelight_set__FP15LIGHT_INFLUENCEi            */
void dKy_bgparts_activelight_set(LIGHT_INFLUENCE* light_inf_p, int bgpart_id) {
    if (light_inf_p != NULL) {
        memcpy(&g_env_light.bgparts_active_light[bgpart_id], light_inf_p, sizeof(LIGHT_INFLUENCE));
        g_env_light.bgparts_active_light[bgpart_id].mIndex = bgpart_id + 1;
    }
}

/* 801A7AAC-801A7AC8 1A23EC 001C+00 1/1 0/0 0/0 .text            dKy_bgparts_activelight_cut__Fi */
void dKy_bgparts_activelight_cut(int bgpart_id) {
    g_env_light.bgparts_active_light[bgpart_id].mIndex = 0;
}

/* 801A7AC8-801A7B68 1A2408 00A0+00 1/1 1/1 1/1 .text            dKy_actor_addcol_amb_set__Fsssf */
void dKy_actor_addcol_amb_set(s16 r, s16 g, s16 b, f32 ratio) {
    g_env_light.actor_addcol_amb.r = r * ratio;
    g_env_light.actor_addcol_amb.g = g * ratio;
    g_env_light.actor_addcol_amb.b = b * ratio;
}

/* 801A7B68-801A7C08 1A24A8 00A0+00 1/1 1/1 1/1 .text            dKy_bg_addcol_amb_set__Fsssf */
void dKy_bg_addcol_amb_set(s16 r, s16 g, s16 b, f32 ratio) {
    g_env_light.bg_addcol_amb.r = r * ratio;
    g_env_light.bg_addcol_amb.g = g * ratio;
    g_env_light.bg_addcol_amb.b = b * ratio;
}

/* 801A7C08-801A7CA8 1A2548 00A0+00 1/1 1/1 0/0 .text            dKy_bg1_addcol_amb_set__Fsssf */
void dKy_bg1_addcol_amb_set(s16 r, s16 g, s16 b, f32 ratio) {
    g_env_light.bg1_addcol_amb.r = r * ratio;
    g_env_light.bg1_addcol_amb.g = g * ratio;
    g_env_light.bg1_addcol_amb.b = b * ratio;
}

/* 801A7CA8-801A7D48 1A25E8 00A0+00 1/1 0/0 0/0 .text            dKy_bg2_addcol_amb_set__Fsssf */
void dKy_bg2_addcol_amb_set(s16 r, s16 g, s16 b, f32 ratio) {
    g_env_light.bg2_addcol_amb.r = r * ratio;
    g_env_light.bg2_addcol_amb.g = g * ratio;
    g_env_light.bg2_addcol_amb.b = b * ratio;
}

/* 801A7D48-801A7DE8 1A2688 00A0+00 1/1 0/0 0/0 .text            dKy_bg3_addcol_amb_set__Fsssf */
void dKy_bg3_addcol_amb_set(s16 r, s16 g, s16 b, f32 ratio) {
    g_env_light.bg3_addcol_amb.r = r * ratio;
    g_env_light.bg3_addcol_amb.g = g * ratio;
    g_env_light.bg3_addcol_amb.b = b * ratio;
}

/* 801A7DE8-801A7E88 1A2728 00A0+00 1/1 1/1 0/0 .text            dKy_addcol_fog_set__Fsssf */
void dKy_addcol_fog_set(s16 r, s16 g, s16 b, f32 ratio) {
    g_env_light.addcol_fog.r = r * ratio;
    g_env_light.addcol_fog.g = g * ratio;
    g_env_light.addcol_fog.b = b * ratio;
}

/* 801A7E88-801A7F20 1A27C8 0098+00 2/2 0/0 2/2 .text            dKy_actor_addcol_set__Fsssf */
void dKy_actor_addcol_set(s16 r, s16 g, s16 b, f32 ratio) {
    dKy_actor_addcol_amb_set(r, g, b, ratio);
    dKy_bg_addcol_amb_set(r, g, b, ratio);
    dKy_bg1_addcol_amb_set(r, g, b, ratio);
    dKy_bg2_addcol_amb_set(r, g, b, ratio);
    dKy_bg3_addcol_amb_set(r, g, b, ratio);
}

/* 801A7F20-801A7FC0 1A2860 00A0+00 1/1 1/1 0/0 .text            dKy_vrbox_addcol_sky0_set__Fsssf */
void dKy_vrbox_addcol_sky0_set(s16 r, s16 g, s16 b, f32 ratio) {
    g_env_light.vrbox_addcol_sky0.r = r * ratio;
    g_env_light.vrbox_addcol_sky0.g = g * ratio;
    g_env_light.vrbox_addcol_sky0.b = b * ratio;
}

/* 801A7FC0-801A8060 1A2900 00A0+00 1/1 1/1 0/0 .text            dKy_vrbox_addcol_kasumi_set__Fsssf
 */
void dKy_vrbox_addcol_kasumi_set(s16 r, s16 g, s16 b, f32 ratio) {
    g_env_light.vrbox_addcol_kasumi.r = r * ratio;
    g_env_light.vrbox_addcol_kasumi.g = g * ratio;
    g_env_light.vrbox_addcol_kasumi.b = b * ratio;
}

/* 801A8060-801A80D0 1A29A0 0070+00 1/1 0/0 0/0 .text            dKy_vrbox_addcol_set__Fsssf */
void dKy_vrbox_addcol_set(s16 r, s16 g, s16 b, f32 ratio) {
    dKy_vrbox_addcol_sky0_set(r, g, b, ratio);
    dKy_vrbox_addcol_kasumi_set(r, g, b, ratio);
    dKy_addcol_fog_set(r, g, b, ratio);
}

/* 801A80D0-801A8168 1A2A10 0098+00 1/1 0/0 2/2 .text            dKy_fog_startendz_set__Ffff */
void dKy_fog_startendz_set(f32 param_0, f32 param_1, f32 ratio) {
    if (ratio < 0.0f || ratio > 1.0f) {
        OSReport_Warning("\ndKy_fog_startendz_set ratio error!\n");
        ratio = 0.0f;
    }

    if (ratio < 0.0001f) {
        ratio = 0.0f;
    }

    g_env_light.field_0x11ec = param_0;
    g_env_light.field_0x11f0 = param_1;
    g_env_light.field_0x11f4 = ratio;
}

/* 801A8168-801A8190 1A2AA8 0028+00 0/0 1/1 0/0 .text            dKy_Itemgetcol_chg_on__Fv */
void dKy_Itemgetcol_chg_on() {
    if (g_env_light.Itemgetcol_chg == 0 || g_env_light.Itemgetcol_chg == 6) {
        g_env_light.Itemgetcol_chg = 1;
    }
}

/* 801A8190-801A81C0 1A2AD0 0030+00 2/2 0/0 0/0 .text            dKy_Sound_init__Fv */
void dKy_Sound_init() {
    g_env_light.sound_influence.position.x = 999999.9f;
    g_env_light.sound_influence.position.y = 999999.9f;
    g_env_light.sound_influence.position.z = 999999.9f;
    g_env_light.sound_influence.field_0xc = 0;
    g_env_light.sound_influence.actor_id = fpcM_ERROR_PROCESS_ID_e;
    g_env_light.sound_influence.timer = 0;
}

/* 801A81C0-801A8474 1A2B00 02B4+00 0/0 5/5 27/27 .text            dKy_Sound_set__F4cXyziUii */
void dKy_Sound_set(cXyz pos, int param_1, fpc_ProcID actor_id, int timer) {
    camera_class* camera_p = (camera_class*)dComIfGp_getCamera(0);
    BOOL set_sound = FALSE;
    f32 dist_pos_to_eye = pos.abs(camera_p->lookat.eye);
    f32 dist_sndpos_to_eye = g_env_light.sound_influence.position.abs(camera_p->lookat.eye);

    if (dist_pos_to_eye < dist_sndpos_to_eye) {
        if (dist_sndpos_to_eye < 1500.0f) {
            set_sound = TRUE;
        } else if (g_env_light.sound_influence.field_0xc < param_1) {
            set_sound = TRUE;
        }
    }

    if (set_sound) {
        g_env_light.sound_influence.position = pos;
        g_env_light.sound_influence.field_0xc = param_1;
        g_env_light.sound_influence.actor_id = actor_id;
        g_env_light.sound_influence.timer = timer;
    }
}

/* 801A8474-801A8484 1A2DB4 0010+00 0/0 1/1 8/8 .text            dKy_Sound_get__Fv */
SND_INFLUENCE* dKy_Sound_get() {
    return &g_env_light.sound_influence;
}

/* 801A8484-801A8538 1A2DC4 00B4+00 0/0 2/2 0/0 .text            dKy_SordFlush_set__F4cXyzi */
void dKy_SordFlush_set(cXyz light_pos, int light_type) {
    dScnKy_env_light_c* light = dKy_getEnvlight();

    if (!dKy_darkworld_check() &&
        (light->mThunderEff.mState >= 10 || light->mThunderEff.mFlashTimer <= 0.0f))
    {
        if (g_env_light.eflight.mState == 0) {
            g_env_light.eflight.mState = 1;
            g_env_light.eflight.mLightType = light_type;
            g_env_light.eflight.field_0x8.mPosition = light_pos;
        } else if (g_env_light.eflight.mState == 2) {
            g_env_light.eflight.mState = 4;
        }
    }
}

/* 801A8538-801A85E8 1A2E78 00B0+00 1/1 0/0 0/0 .text            GxFogSet_Sub__FP8_GXColor */
static void GxFogSet_Sub(GXColor* fog_col_p) {
    f32 near_z = 1.0f;
    f32 far_z = 160000.0f;
    GXColor color;
    color = *fog_col_p;

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
    color.r = g_env_light.fog_col.r;
    color.g = g_env_light.fog_col.g;
    color.b = g_env_light.fog_col.b;

    GxFogSet_Sub(&color);
}

/* 801A862C-801A8650 1A2F6C 0024+00 0/0 7/7 2/2 .text            dKy_GxFog_set__Fv */
void dKy_GxFog_set() {
    GxFog_set();
    GxXFog_set();
}

/* 801A8650-801A86F8 1A2F90 00A8+00 0/0 3/3 6/6 .text dKy_GxFog_tevstr_set__FP12dKy_tevstr_c */
void dKy_GxFog_tevstr_set(dKy_tevstr_c* tevstr_p) {
    f32 near_z = 1.0f;
    f32 far_z = 160000.0f;

    GXColor color;
    color.r = tevstr_p->FogCol.r;
    color.g = tevstr_p->FogCol.g;
    color.b = tevstr_p->FogCol.b;

    if (dComIfGd_getView() != NULL) {
        if (dComIfGd_getView()->near >= 0.0f && dComIfGd_getView()->far >= 0.0f) {
            if (dComIfGd_getView()->near < dComIfGd_getView()->far) {
                near_z = dComIfGd_getView()->near;
                far_z = dComIfGd_getView()->far;
            }
        }
    }

    GXSetFog(GX_FOG_PERSP_LIN, tevstr_p->mFogStartZ, tevstr_p->mFogEndZ, near_z, far_z, color);
    GxXFog_set();
}

/* 801A86F8-801A87A0 1A3038 00A8+00 0/0 0/0 1/1 .text dKy_GfFog_tevstr_set__FP12dKy_tevstr_c */
void dKy_GfFog_tevstr_set(dKy_tevstr_c* tevstr_p) {
    f32 near_z = 1.0f;
    f32 far_z = 160000.0f;

    GXColor color;
    color.r = tevstr_p->FogCol.r;
    color.g = tevstr_p->FogCol.g;
    color.b = tevstr_p->FogCol.b;

    if (dComIfGd_getView() != NULL) {
        if (dComIfGd_getView()->near >= 0.0f && dComIfGd_getView()->far >= 0.0f) {
            if (dComIfGd_getView()->near < dComIfGd_getView()->far) {
                near_z = dComIfGd_getView()->near;
                far_z = dComIfGd_getView()->far;
            }
        }
    }

    GFSetFog(GX_FOG_PERSP_LIN, tevstr_p->mFogStartZ, tevstr_p->mFogEndZ, near_z, far_z, color);
    GxXFog_set();
}

/* 801A87A0-801A87E4 1A30E0 0044+00 3/3 0/0 0/0 .text            GxXFog_set__Fv */
static void GxXFog_set() {
    dKyd_xfog_table_set(g_env_light.mFogAdjTableType);
    GXSetFogRangeAdj(g_env_light.mFogAdjEnable, g_env_light.mFogAdjCenter, &g_env_light.mXFogTbl);
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
    if (g_env_light.light_init_timer != 1) {
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
void dKy_setLight_mine(dKy_tevstr_c* tevstr_p) {
    GXLightObj light;

    GXInitLightPos(&light, tevstr_p->mLightObj.mInfo.mLightPosition.x,
                   tevstr_p->mLightObj.mInfo.mLightPosition.y,
                   tevstr_p->mLightObj.mInfo.mLightPosition.z);
    GXInitLightDir(&light, tevstr_p->mLightObj.mInfo.mLightDirection.x,
                   tevstr_p->mLightObj.mInfo.mLightDirection.y,
                   tevstr_p->mLightObj.mInfo.mLightDirection.z);
    GXInitLightColor(&light, tevstr_p->mLightObj.mInfo.mColor);
    GXInitLightAttn(&light, tevstr_p->mLightObj.mInfo.mCosAtten.x,
                    tevstr_p->mLightObj.mInfo.mCosAtten.y, tevstr_p->mLightObj.mInfo.mCosAtten.z,
                    tevstr_p->mLightObj.mInfo.mDistAtten.x, tevstr_p->mLightObj.mInfo.mDistAtten.y,
                    tevstr_p->mLightObj.mInfo.mDistAtten.z);
    GXLoadLightObjImm(&light, (GXLightID)*lightMaskData);
}

/* 801A88EC-801A8A34 1A322C 0148+00 2/2 5/5 11/11 .text dKy_tevstr_init__FP12dKy_tevstr_cScUc */
void dKy_tevstr_init(dKy_tevstr_c* tevstr_p, s8 room_no, u8 floorCol) {
    memset(tevstr_p, 0, sizeof(dKy_tevstr_c));

    if (room_no == -1) {
        tevstr_p->room_no = dComIfGp_roomControl_getStayNo();
    } else {
        tevstr_p->room_no = room_no;
    }

    tevstr_p->UseCol = tevstr_p->room_no;
    tevstr_p->PrevCol = tevstr_p->room_no;
    tevstr_p->YukaCol = floorCol;
    tevstr_p->mInitTimer = 1;
    tevstr_p->Material_use_fg = 0x7B;
    tevstr_p->AmbCol.a = 0;
    tevstr_p->FogCol.a = 255;
    tevstr_p->Material_id = 0;
    tevstr_p->field_0x374 = 1.0f;
    tevstr_p->field_0x384 = 0;

    tevstr_p->mLightObj.mInfo.mColor.g = 0;
    tevstr_p->mLightObj.mInfo.mColor.b = 0;
    tevstr_p->mLightObj.mInfo.mColor.a = 255;
    tevstr_p->mLightObj.mInfo.mCosAtten.x = 1.0f;
    tevstr_p->mLightObj.mInfo.mCosAtten.y = 0.0f;
    tevstr_p->mLightObj.mInfo.mCosAtten.z = 0.0f;
    tevstr_p->mLightObj.mInfo.mDistAtten.x = 1.0f;
    tevstr_p->mLightObj.mInfo.mDistAtten.y = 0.0f;
    tevstr_p->mLightObj.mInfo.mDistAtten.z = 0.0f;

    for (int i = 0; i < 6; i++) {
        J3DLightObj* tev_light_p = &tevstr_p->mLights[i];
        LightStatus* light_data_p = &lightStatusData[i];

        tev_light_p->mInfo.mLightPosition = light_data_p->position;
        tev_light_p->mInfo.mColor = light_data_p->color;
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
    return g_env_light.raincnt;
}

/* 801A8A44-801A8A54 1A3384 0010+00 0/0 0/0 5/5 .text            dKy_set_allcol_ratio__Ff */
void dKy_set_allcol_ratio(f32 ratio) {
    g_env_light.allcol_ratio = ratio;
}

/* 801A8A54-801A8A64 1A3394 0010+00 0/0 1/1 1/1 .text            dKy_set_actcol_ratio__Ff */
void dKy_set_actcol_ratio(f32 ratio) {
    g_env_light.actcol_ratio = ratio;
}

/* 801A8A64-801A8A74 1A33A4 0010+00 0/0 1/1 1/1 .text            dKy_set_bgcol_ratio__Ff */
void dKy_set_bgcol_ratio(f32 ratio) {
    g_env_light.bgcol_ratio = ratio;
}

/* 801A8A74-801A8A84 1A33B4 0010+00 0/0 1/1 1/1 .text            dKy_set_fogcol_ratio__Ff */
void dKy_set_fogcol_ratio(f32 ratio) {
    g_env_light.fogcol_ratio = ratio;
}

/* 801A8A84-801A8AB8 1A33C4 0034+00 0/0 1/1 0/0 .text            dKy_set_vrboxcol_ratio__Ff */
void dKy_set_vrboxcol_ratio(f32 ratio) {
    dKy_set_vrboxsoracol_ratio(ratio);
    dKy_set_vrboxkumocol_ratio(ratio);
}

/* 801A8AB8-801A8AC8 1A33F8 0010+00 1/1 0/0 0/0 .text            dKy_set_vrboxsoracol_ratio__Ff */
void dKy_set_vrboxsoracol_ratio(f32 ratio) {
    g_env_light.vrboxsoracol_ratio = ratio;
}

/* 801A8AC8-801A8AD8 1A3408 0010+00 1/1 0/0 0/0 .text            dKy_set_vrboxkumocol_ratio__Ff */
void dKy_set_vrboxkumocol_ratio(f32 ratio) {
    g_env_light.vrboxkumocol_ratio = ratio;
}

/* 801A8AD8-801A8B38 1A3418 0060+00 0/0 1/1 0/0 .text            dKy_itudemo_se__Fv */
void dKy_itudemo_se() {
    if (g_env_light.moya_se != 0) {
        mDoAud_seStart(g_env_light.moya_se, NULL, 0, 0);
    }
}

/* 801A8B38-801A8B58 1A3478 0020+00 1/1 2/2 11/11 .text            dKy_get_dayofweek__Fv */
int dKy_get_dayofweek() {
    return dComIfGs_getDate() % 7;
}

/* 801A8B58-801A8B68 1A3498 0010+00 0/0 3/3 0/0 .text            dKy_set_nexttime__Ff */
void dKy_set_nexttime(f32 nexttime) {
    g_env_light.nexttime = nexttime;
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
static GXColor NewAmbColGet(GXColorS10* in_col_p) {
    GXColorS10 sp18, sp10;
    sp18 = *in_col_p;

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

    GXColor amb_col;
    amb_col.r = sp10.r;
    amb_col.g = sp10.g;
    amb_col.b = sp10.b;
    amb_col.a = 0xFF;

    return amb_col;
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
void dKy_ParticleColor_get_base(cXyz* param_0, dKy_tevstr_c* param_1, GXColor* param_2,
                                GXColor* param_3, GXColor* param_4, GXColor* param_5, f32 param_6) {
    GXColor sp70[3];
    cXyz sp64;
    f32 sp58[] = {100000000.0f, 100000000.0f, 100000000.0f};
    int i;
    u8 spD = 0;
    s8 room_no;

    GXColorS10 sp48;
    J3DLightInfo* sp44;
    GXColor sp40;
    int sp3C;
    int sp38;
    stage_pure_lightvec_info_class* stage_light_info_p;
    int sp30;

    for (i = 0; i < 6; i++) {
        if (param_1 != NULL) {
            sp44 = &param_1->mLights[i].getLightInfo();
            sp40 = sp44->mColor;
        } else {
            sp38 = dComIfGp_roomControl_getStayNo();
            if (dKy_SunMoon_Light_Check() == TRUE && i <= 1) {
                sp40 = g_env_light.dungeonlight[i].mColor;
            } else if (dComIfGp_roomControl_getStatusRoomDt(sp38) != NULL) {
                stage_light_info_p =
                    dComIfGp_roomControl_getStatusRoomDt(sp38)->getLightVecInfo();
                sp30 = dComIfGp_roomControl_getStatusRoomDt(sp38)->getLightVecInfoNum();
                if (i < sp30) {
                    sp40 = g_env_light.dungeonlight[i].mColor;
                } else {
                    sp40.r = 0;
                    sp40.g = 0;
                    sp40.b = 0;
                }
            }
        }

        f32 var_f31;
        if (dKy_SunMoon_Light_Check() == TRUE && i <= 1) {
            if (g_env_light.daytime >= 90.0f && g_env_light.daytime <= 285.0f) {
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
            stage_pure_lightvec_info_class* stage_light_info_p;
            if (param_1 != NULL && param_1->room_no >= 0) {
                stage_light_info_p = dComIfGp_roomControl_getStatusRoomDt(param_1->room_no)
                                         ->getLightVecInfo();
                sp3C = dComIfGp_roomControl_getStatusRoomDt(param_1->room_no)
                           ->getLightVecInfoNum();
            } else {
                stage_light_info_p = dComIfGp_roomControl_getStatusRoomDt(dComIfGp_roomControl_getStayNo())->getLightVecInfo();
                sp3C = dComIfGp_roomControl_getStatusRoomDt(dComIfGp_roomControl_getStayNo())->getLightVecInfoNum();
            }

            f32 var_f27;
            f32 var_f26;
            if (stage_light_info_p != 0) {
                if (i < sp3C) {
                    sp64.x = stage_light_info_p[i].position.x;
                    sp64.y = stage_light_info_p[i].position.y;
                    sp64.z = stage_light_info_p[i].position.z;

                    if (param_1 != NULL && param_1->room_no >= 0) {
                        room_no = param_1->room_no;
                    } else {
                        room_no = dComIfGp_roomControl_getStayNo();
                    }

                    if (dKy_lightswitch_check(&stage_light_info_p[i], room_no) == TRUE) {
                        var_f27 = 190.0f * stage_light_info_p[i].radius;
                    } else {
                        var_f27 = 0.0f;
                    }
                } else {
                    sp64.x = lightStatusPt[i + 2].position.x;
                    sp64.y = lightStatusPt[i + 2].position.y;
                    sp64.z = lightStatusPt[i + 2].position.z;
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
                var_f31 = 0.0000000000001f;
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
void dKy_ParticleColor_get_actor(cXyz* param_0, dKy_tevstr_c* tevstr_p, GXColor* param_2,
                                 GXColor* param_3, GXColor* param_4, GXColor* param_5,
                                 f32 param_6) {
    if (tevstr_p != NULL) {
        *param_2 = NewAmbColGet(&tevstr_p->AmbCol);
    } else {
        *param_2 = NewAmbColGet(&g_env_light.actor_amb_col);
    }

    dKy_ParticleColor_get_base(param_0, tevstr_p, param_2, param_3, param_4, param_5, param_6);
}

/* 801A9CBC-801A9D60 1A45FC 00A4+00 0/0 6/6 0/0 .text
 * dKy_ParticleColor_get_bg__FP4cXyzP12dKy_tevstr_cP8_GXColorP8_GXColorP8_GXColorP8_GXColorf */
void dKy_ParticleColor_get_bg(cXyz* param_0, dKy_tevstr_c* tevstr_p, GXColor* param_2,
                              GXColor* param_3, GXColor* param_4, GXColor* param_5, f32 param_6) {
    *param_2 = NewAmbColGet(&g_env_light.bg_amb_col[0]);
    dKy_ParticleColor_get_base(param_0, tevstr_p, param_2, param_3, param_4, param_5, param_6);
}

/* 801A9D60-801AA664 1A46A0 0904+00 1/1 0/0 17/17 .text dKy_BossLight_set__FP4cXyzP8_GXColorfUc */
int dKy_BossLight_set(cXyz* pos_p, GXColor* color_p, f32 ref_dist, u8 param_3) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    camera_class* camera = (camera_class*)dComIfGp_getCamera(0);
    int sp10 = 0;
    f32 var_f31 = 0.0f;
    u8 spA = 0xFF;
    int stage_light_info_num = 0;
    int i;

    if (strcmp(dComIfGp_getStartStageName(), "F_SP118") != 0) {
        u8 room_no = dComIfGp_roomControl_getStayNo();
        if (dComIfGp_roomControl_getStatusRoomDt(room_no) == NULL) {
            return 0;
        }

        stage_light_info_num = dComIfGp_roomControl_getStatusRoomDt(room_no)->getLightVecInfoNum();
        if (stage_light_info_num < 0 || stage_light_info_num > 6) {
            stage_light_info_num = 6;
        }
    }

    BOSS_LIGHT* boss_light_p;
    if (param_3 == 0) {
        boss_light_p = kankyo->field_0x0c18;
    } else {
        boss_light_p = kankyo->field_0x0d58;
    }

    for (i = 1; i < 6 - stage_light_info_num; i++) {
        if (boss_light_p[i].field_0x26 == 1 && pos_p->x == boss_light_p[i].mPos.x &&
            pos_p->y == boss_light_p[i].mPos.y && pos_p->z == boss_light_p[i].mPos.z)
        {
            return 0;
        }
    }

    for (i = 1; i < 6 - stage_light_info_num; i++) {
        if (boss_light_p[i].field_0x26 == 0) {
            boss_light_p[i].mPos = *pos_p;
            boss_light_p[i].mColor.r = color_p->r;
            boss_light_p[i].mColor.g = color_p->g;
            boss_light_p[i].mColor.b = color_p->b;
            boss_light_p[i].mColor.a = 0xFF;
            boss_light_p[i].mRefDistance = ref_dist;
            boss_light_p[i].field_0x14 = 0.99f;
            boss_light_p[i].mCutoffAngle = 90.0f;
            boss_light_p[i].mAngleX = 0.0f;
            boss_light_p[i].mAngleY = 0.0f;
            boss_light_p[i].mAngleAttenuation = GX_SP_OFF;
            boss_light_p[i].mDistAttenuation = GX_DA_STEEP;
            boss_light_p[i].field_0x26 = 1;
            sp10 = 1;
            break;
        }
    }

    for (i = 1; i < 6 - stage_light_info_num; i++) {
        if (boss_light_p[i].field_0x26 != 0) {
            cXyz sp1C(boss_light_p[i].mPos);

            if (strcmp(dComIfGp_getStartStageName(), "D_SB03") == 0) {
                sp1C.x = camera->lookat.eye.x;
                sp1C.z = camera->lookat.eye.z;

                if (sp1C.abs(camera->lookat.eye) > 2000.0f) {
                    var_f31 = 99999.9f;
                    spA = i;
                    break;
                } else {
                    if (boss_light_p[i].mPos.abs(camera->lookat.eye) > var_f31) {
                        var_f31 = boss_light_p[i].mPos.abs(camera->lookat.eye);
                        spA = i;
                    }
                }
            } else {
                if (boss_light_p[i].mPos.abs(camera->lookat.eye) > var_f31) {
                    var_f31 = boss_light_p[i].mPos.abs(camera->lookat.eye);
                    spA = i;
                }
            }
        }
    }

    if (sp10 == 0 && spA != 0xFF) {
        i = spA;
        if (i < 6 && pos_p->abs(camera->lookat.eye) < var_f31) {
            boss_light_p[i].mPos = *pos_p;
            boss_light_p[i].mColor.r = color_p->r;
            boss_light_p[i].mColor.g = color_p->g;
            boss_light_p[i].mColor.b = color_p->b;
            boss_light_p[i].mColor.a = 0xFF;
            boss_light_p[i].mRefDistance = ref_dist;
            boss_light_p[i].field_0x14 = 0.99f;
            boss_light_p[i].mCutoffAngle = 90.0f;
            boss_light_p[i].mAngleX = 0.0f;
            boss_light_p[i].mAngleY = 0.0f;
            boss_light_p[i].mAngleAttenuation = GX_SP_OFF;
            boss_light_p[i].mDistAttenuation = GX_DA_STEEP;
            boss_light_p[i].field_0x26 = 1;
            sp10 = 1;
        }
    }

    return sp10;
}

/* 801AA664-801AAC5C 1A4FA4 05F8+00 0/0 0/0 3/3 .text
 * dKy_BossSpotLight_set__FP4cXyzfffP8_GXColorfUcUc             */
int dKy_BossSpotLight_set(cXyz* pos_p, f32 angle_x, f32 angle_y, f32 cutoff, GXColor* color_p,
                          f32 ref_dist, u8 spot_type, u8 distattn_type) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    camera_class* camera = (camera_class*)dComIfGp_getCamera(0);
    int spC = 0;
    f32 var_f31 = 0.0f;
    u8 sp8 = 0xFF;
    int i;

    for (i = 1; i < 6; i++) {
        if (kankyo->field_0x0c18[i].field_0x26 == 0) {
            kankyo->field_0x0c18[i].mPos = *pos_p;
            kankyo->field_0x0c18[i].mColor.r = color_p->r;
            kankyo->field_0x0c18[i].mColor.g = color_p->g;
            kankyo->field_0x0c18[i].mColor.b = color_p->b;
            kankyo->field_0x0c18[i].mColor.a = 0xFF;
            kankyo->field_0x0c18[i].mRefDistance = ref_dist;
            kankyo->field_0x0c18[i].field_0x14 = 0.99f;
            kankyo->field_0x0c18[i].mCutoffAngle = cutoff;
            kankyo->field_0x0c18[i].mAngleX = angle_x;
            kankyo->field_0x0c18[i].mAngleY = angle_y + 90.0f;
            kankyo->field_0x0c18[i].mAngleAttenuation = spot_type;
            kankyo->field_0x0c18[i].mDistAttenuation = distattn_type;
            kankyo->field_0x0c18[i].field_0x26 = 1;
            spC = 1;
            break;
        }
    }

    if (spC == 0) {
        for (i = 1; i < 6; i++) {
            if (kankyo->field_0x0c18[i].field_0x26 != 0 &&
                kankyo->field_0x0c18[i].mPos.abs(camera->lookat.eye) > var_f31)
            {
                var_f31 = kankyo->field_0x0c18[i].mPos.abs(camera->lookat.eye);
                sp8 = i;
            }
        }

        if (sp8 != 0xFF) {
            i = sp8;
            if (i < 6 && pos_p->abs(camera->lookat.eye) <
                             kankyo->field_0x0c18[i].mPos.abs(camera->lookat.eye))
            {
                kankyo->field_0x0c18[i].mPos = *pos_p;
                kankyo->field_0x0c18[i].mColor.r = color_p->r;
                kankyo->field_0x0c18[i].mColor.g = color_p->g;
                kankyo->field_0x0c18[i].mColor.b = color_p->b;
                kankyo->field_0x0c18[i].mColor.a = 0xFF;
                kankyo->field_0x0c18[i].mRefDistance = ref_dist;
                kankyo->field_0x0c18[i].field_0x14 = 0.99f;
                kankyo->field_0x0c18[i].mCutoffAngle = cutoff;
                kankyo->field_0x0c18[i].mAngleX = angle_x;
                kankyo->field_0x0c18[i].mAngleY = angle_y + 90.0f;
                kankyo->field_0x0c18[i].mAngleAttenuation = spot_type;
                kankyo->field_0x0c18[i].mDistAttenuation = distattn_type;
                kankyo->field_0x0c18[i].field_0x26 = 1;
                spC = 1;
            }
        }
    }

    return spC;
}

/* 801AAC5C-801AAD50 1A559C 00F4+00 0/0 1/1 0/0 .text
 * dKy_WolfEyeLight_set__FP4cXyzfffP8_GXColorfUcUc              */
int dKy_WolfEyeLight_set(cXyz* pos_p, f32 angle_x, f32 angle_y, f32 cutoff, GXColor* color_p,
                         f32 ref_dist, u8 spot_type, u8 distattn_type) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();

    kankyo->field_0x0c18[0].mPos = *pos_p;

    kankyo->field_0x0c18[0].mColor.r = color_p->r;
    kankyo->field_0x0c18[0].mColor.g = color_p->g;
    kankyo->field_0x0c18[0].mColor.b = color_p->b;
    kankyo->field_0x0c18[0].mColor.a = 255;

    kankyo->field_0x0c18[0].mRefDistance = ref_dist;
    kankyo->field_0x0c18[0].field_0x14 = 0.99f;
    kankyo->field_0x0c18[0].mCutoffAngle = cutoff;
    kankyo->field_0x0c18[0].mAngleX = angle_x;
    kankyo->field_0x0c18[0].mAngleY = angle_y + 90.0f;
    kankyo->field_0x0c18[0].mAngleAttenuation = spot_type;
    kankyo->field_0x0c18[0].mDistAttenuation = distattn_type;

    f32 var_f31;
    f32 var_f30;
    f32 var_f29;
    switch (kankyo->light_size) {
    case LIGHT_SIZE_S:
        var_f31 = 50.0f;
        var_f30 = 1.0f;
        var_f29 = 0.9f;
        break;
    case LIGHT_SIZE_M:
        var_f31 = 200.0f;
        var_f30 = 1.0f;
        var_f29 = 1.0f;
        break;
    case LIGHT_SIZE_L:
        var_f31 = 350.0f;
        var_f30 = 1.5f;
        var_f29 = 1.5f;
        break;
    case LIGHT_SIZE_LL:
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
void dKy_twilight_camelight_set() {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    fopAc_ac_c* player_p = dComIfGp_getPlayer(0);
    camera_class* camera_p = (camera_class*)dComIfGp_getCamera(0);
    u8 sp8 = 0;

    if (strcmp(dComIfGp_getStartStageName(), "R_SP107") != 0 ||
        dComIfGp_roomControl_getStayNo() != 3 || dComIfGp_getStartStageLayer() != 12)
    {
        if (!dKy_darkworld_check() || memcmp(dComIfGp_getStartStageName(), "D_MN08", 6) == 0) {
            return;
        }

        if (!daPy_py_c::checkNowWolfPowerUp()) {
            for (int i = 0; i < 6; i++) {
                if (kankyo->field_0x0c18[i].field_0x26 != 1) {
                    dKy_twi_wolflight_set(i);
                    kankyo->field_0x0c18[i].field_0x14 = 0.99f;
                    kankyo->field_0x0c18[i].mColor.a = 254;

                    f32 var_f31 = 0.0f;
                    if (player_p != NULL) {
                        f32 var_f30 = camera_p->lookat.eye.y - player_p->current.pos.y;
                        if (var_f30 < 0.0f) {
                            var_f30 = 0.0f;
                        }
                        if (var_f30 > 600.0f) {
                            var_f30 = 600.0f;
                        }
                        var_f31 = var_f30 / 450.0f;
                    }

                    switch (g_env_light.light_size) {
                    case LIGHT_SIZE_S:
                        kankyo->field_0x0c18[i].mColor.r = 0x19;
                        kankyo->field_0x0c18[i].mColor.g = 0x5A;
                        kankyo->field_0x0c18[i].mColor.b = 0xB7;
                        cLib_addCalc(&kankyo->field_0x0c18[i].mRefDistance,
                                     1.0625f + (0.75f * var_f31), 0.2f, 10.0f, 0.0001f);
                        kankyo->field_0x0c18[i].mCutoffAngle = 90.0f;
                        break;
                    case LIGHT_SIZE_M:
                        kankyo->field_0x0c18[i].mColor.r = 0x48;
                        kankyo->field_0x0c18[i].mColor.g = 0x87;
                        kankyo->field_0x0c18[i].mColor.b = 0xCE;
                        cLib_addCalc(&kankyo->field_0x0c18[i].mRefDistance,
                                     1.7f + (0.75f * var_f31), 0.2f, 10.0f, 0.0001f);
                        kankyo->field_0x0c18[i].mCutoffAngle = 70.0f;
                        break;
                    case LIGHT_SIZE_L:
                        kankyo->field_0x0c18[i].mColor.r = 0x48;
                        kankyo->field_0x0c18[i].mColor.g = 0x87;
                        kankyo->field_0x0c18[i].mColor.b = 0xCE;
                        cLib_addCalc(&kankyo->field_0x0c18[i].mRefDistance,
                                     2.5500002f + (0.75f * var_f31), 0.2f, 10.0f, 0.0001f);
                        kankyo->field_0x0c18[i].mCutoffAngle = 70.0f;
                        break;
                    case LIGHT_SIZE_LL:
                        kankyo->field_0x0c18[i].mColor.r = 0x50;
                        kankyo->field_0x0c18[i].mColor.g = 0x87;
                        kankyo->field_0x0c18[i].mColor.b = 0xCE;
                        cLib_addCalc(&kankyo->field_0x0c18[i].mRefDistance,
                                     3.4f + (0.75f * var_f31), 0.2f, 10.0f, 0.0001f);
                        kankyo->field_0x0c18[i].mCutoffAngle = 65.0f;
                        break;
                    }

                    kankyo->field_0x0c18[i].mAngleAttenuation = GX_SP_COS;
                    kankyo->field_0x0c18[i].mDistAttenuation = GX_DA_STEEP;
                    kankyo->field_0x0c18[i].field_0x26 = 1;
                    break;
                }
            }
        }
    }
}

/* 801AB01C-801AB270 1A595C 0254+00 1/1 0/0 0/0 .text            dKy_WaterIn_Light_set__Fv */
// NONMATCHING - some weirdness with temp stores
void dKy_WaterIn_Light_set() {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    fopAc_ac_c* player_p = dComIfGp_getPlayer(0);
    camera_class* camera = (camera_class*)dComIfGp_getCamera(0);

    int sp10 = 0;
    int spC = 0;

    int sp8 = 1;
    if (strcmp(dComIfGp_getStartStageName(), "F_SP109") == 0 ||
        strcmp(dComIfGp_getStartStageName(), "F_SP115") == 0 ||
        strcmp(dComIfGp_getStartStageName(), "F_SP122") == 0)
    {
        sp8 = 3;
    }

    for (int i = 0; i < 6; i++) {
        if (kankyo->field_0x0c18[i].field_0x26 != 1) {
            dKy_twi_wolflight_set(i);
            kankyo->field_0x0c18[i].mColor.r = 0x8A;
            kankyo->field_0x0c18[i].mColor.g = 0xC0;
            kankyo->field_0x0c18[i].mColor.b = 0xBC;
            kankyo->field_0x0c18[i].mColor.a = 0xFD;

            f32 var_f26 = 0.0f;
            if (player_p != NULL) {
                f32 var_f31 = camera->lookat.eye.y - player_p->current.pos.y;
                if (var_f31 < 0.0f) {
                    var_f31 = 0.0f;
                }
                if (var_f31 > 600.0f) {
                    var_f31 = 600.0f;
                }
                var_f26 = var_f31 / 450.0f;
            }

            kankyo->field_0x0c18[i].mRefDistance = 7.2250004f + (0.75f * var_f26);
            kankyo->field_0x0c18[i].mCutoffAngle = 28.0f;
            kankyo->field_0x0c18[i].mAngleAttenuation = 2;
            kankyo->field_0x0c18[i].mDistAttenuation = 3;

            f32* var_r30 = &kankyo->field_0x0c18[i].mRefDistance;
            f32* var_r29 = &kankyo->field_0x0c18[i].mCutoffAngle;

            if (strcmp(dComIfGp_getStartStageName(), "D_MN01A") == 0) {
                dBgS_CamGndChk_Wtr sp28;
                cXyz sp1C;
                sp8 = 1;
                *var_r29 = 60.0f;

                sp1C = camera->lookat.eye;
                sp1C.y += 100000.0f;
                sp28.SetPos(&sp1C);

                f32 var_f30 = (dComIfG_Bgsp().GroundCross(&sp28) - camera->lookat.eye.y) / 3000.0f;
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

            kankyo->field_0x127c = var_f29;
            *var_r30 *= var_f28;
            *var_r29 *= var_f27;
            kankyo->field_0x0c18[i].field_0x26 = 1;
            sp10 = 1;
        }
        break;
    }
}

/* 801AB270-801AB280 1A5BB0 0010+00 0/0 2/2 0/0 .text            dKy_camera_water_in_status_set__FUc
 */
void dKy_camera_water_in_status_set(u8 status) {
    g_env_light.camera_water_in_status = status;
}

/* 801AB280-801AB290 1A5BC0 0010+00 3/3 1/1 5/5 .text dKy_camera_water_in_status_check__Fv */
BOOL dKy_camera_water_in_status_check() {
    return g_env_light.camera_water_in_status;
}

/* 801AB290-801AB3A8 1A5BD0 0118+00 0/0 5/5 0/0 .text dKy_pol_efftype_get__FPC13cBgS_PolyInfo */
u8 dKy_pol_efftype_get(const cBgS_PolyInfo* polyinfo_p) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    if (polyinfo_p == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int z0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo_p);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 &&
        g_env_light.fishing_hole_season == 4)
    {
        if (z0 == 4) {
            z0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 &&
               dComIfGs_isStageBossEnemy() && z0 == 11)
    {
        z0 = 7;
    }

    u8 efftype;
    int z1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo_p);
    if (kankyo->pol_efftbl != 0) {
        efftype = kankyo->pol_efftbl[z0].data[z1];
    } else {
        efftype = 0xFF;
    }

    return efftype;
}

/* 801AB3A8-801AB4C0 1A5CE8 0118+00 0/0 2/2 0/0 .text dKy_pol_efftype2_get__FPC13cBgS_PolyInfo */
u8 dKy_pol_efftype2_get(const cBgS_PolyInfo* polyinfo_p) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    if (polyinfo_p == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int z0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo_p);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 &&
        g_env_light.fishing_hole_season == 4)
    {
        if (z0 == 4) {
            z0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 &&
               dComIfGs_isStageBossEnemy() && z0 == 11)
    {
        z0 = 7;
    }

    u8 efftype;
    int z1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo_p);
    if (kankyo->pol_efftbl2 != 0) {
        efftype = kankyo->pol_efftbl2[z0].data[z1];
    } else {
        efftype = 0xFF;
    }

    return efftype;
}

/* 801AB4C0-801AB59C 1A5E00 00DC+00 0/0 9/9 21/21 .text dKy_pol_sound_get__FPC13cBgS_PolyInfo */
u8 dKy_pol_sound_get(const cBgS_PolyInfo* polyinfo_p) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    if (polyinfo_p == NULL || &dComIfG_Bgsp() == NULL) {
        return 0;
    }

    int z0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo_p);
    if (!strcmp(dComIfGp_getStartStageName(), "F_SP127") && g_env_light.fishing_hole_season == 4 &&
        z0 == 4)
    {
        z0 = 13;
    }

    u8 sound;
    int z1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo_p);
    if (kankyo->pol_sound != NULL) {
        sound = kankyo->pol_sound[z0].data[z1];
    } else {
        sound = 0;
    }

    if (sound == 0xFF) {
        sound = 0;
    }

    return sound;
}

/* 801AB59C-801AB668 1A5EDC 00CC+00 0/0 5/5 0/0 .text dKy_pol_argument_get__FPC13cBgS_PolyInfo */
u8 dKy_pol_argument_get(const cBgS_PolyInfo* polyinfo_p) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    if (polyinfo_p == NULL || &dComIfG_Bgsp() == NULL) {
        return 0;
    }

    int z0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo_p);
    if (!strcmp(dComIfGp_getStartStageName(), "F_SP127") && g_env_light.fishing_hole_season == 4 &&
        z0 == 4)
    {
        z0 = 13;
    }

    int z1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo_p);
    if (kankyo->pol_arg != NULL) {
        return kankyo->pol_arg[z0].data[z1];
    }

    return 0;
}

/* 801AB668-801AB7D0 1A5FA8 0168+00 0/0 1/1 2/2 .text
 * dKy_pol_eff_prim_get__FPC13cBgS_PolyInfoP8_GXColor           */
u8 dKy_pol_eff_prim_get(const cBgS_PolyInfo* polyinfo_p, GXColor* out_color_p) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    if (polyinfo_p == NULL || out_color_p == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int z0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo_p);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 &&
        g_env_light.fishing_hole_season == 4)
    {
        if (z0 == 4) {
            z0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 &&
               dComIfGs_isStageBossEnemy() && z0 == 11)
    {
        z0 = 7;
    }

    int z1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo_p);
    u8 eff_id;
    if (kankyo->pol_effcol != NULL) {
        eff_id = kankyo->pol_effcol[z0].data[z1];
    } else {
        return 0xFF;
    }

    if (eff_id >= 100) {
        return 0xFF;
    }

    out_color_p->r = kankyo->colordata_tbl[eff_id].data[0];
    out_color_p->g = kankyo->colordata_tbl[eff_id].data[1];
    out_color_p->b = kankyo->colordata_tbl[eff_id].data[2];
    return eff_id;
}

/* 801AB7D0-801AB93C 1A6110 016C+00 0/0 1/1 2/2 .text
 * dKy_pol_eff_env_get__FPC13cBgS_PolyInfoP8_GXColor            */
u8 dKy_pol_eff_env_get(const cBgS_PolyInfo* polyinfo_p, GXColor* out_color_p) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    if (polyinfo_p == NULL || out_color_p == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int z0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo_p);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 &&
        g_env_light.fishing_hole_season == 4)
    {
        if (z0 == 4) {
            z0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 &&
               dComIfGs_isStageBossEnemy() && z0 == 11)
    {
        z0 = 7;
    }

    int z1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo_p);
    u8 eff_id;
    if (kankyo->pol_effcol != NULL) {
        eff_id = kankyo->pol_effcol[z0].data[z1];
    } else {
        return 0xFF;
    }

    if (eff_id >= 100) {
        return 0xFF;
    }

    out_color_p->r = kankyo->colordata_tbl[eff_id].data[3];
    out_color_p->g = kankyo->colordata_tbl[eff_id].data[4];
    out_color_p->b = kankyo->colordata_tbl[eff_id].data[5];
    return eff_id;
}

/* 801AB93C-801ABAA4 1A627C 0168+00 0/0 1/1 2/2 .text
 * dKy_pol_eff2_prim_get__FPC13cBgS_PolyInfoP8_GXColor          */
u8 dKy_pol_eff2_prim_get(const cBgS_PolyInfo* polyinfo_p, GXColor* out_color_p) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    if (polyinfo_p == NULL || out_color_p == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int z0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo_p);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 &&
        g_env_light.fishing_hole_season == 4)
    {
        if (z0 == 4) {
            z0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 &&
               dComIfGs_isStageBossEnemy() && z0 == 11)
    {
        z0 = 7;
    }

    int z1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo_p);
    u8 eff_id;
    if (kankyo->pol_effcol2 != NULL) {
        eff_id = kankyo->pol_effcol2[z0].data[z1];
    } else {
        return 0xFF;
    }

    if (eff_id >= 100) {
        return 0xFF;
    }

    out_color_p->r = kankyo->colordata_tbl[eff_id].data[0];
    out_color_p->g = kankyo->colordata_tbl[eff_id].data[1];
    out_color_p->b = kankyo->colordata_tbl[eff_id].data[2];
    return eff_id;
}

/* 801ABAA4-801ABC10 1A63E4 016C+00 0/0 1/1 2/2 .text
 * dKy_pol_eff2_env_get__FPC13cBgS_PolyInfoP8_GXColor           */
u8 dKy_pol_eff2_env_get(const cBgS_PolyInfo* polyinfo_p, GXColor* out_color_p) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    if (polyinfo_p == NULL || out_color_p == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int z0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo_p);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 &&
        g_env_light.fishing_hole_season == 4)
    {
        if (z0 == 4) {
            z0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 &&
               dComIfGs_isStageBossEnemy() && z0 == 11)
    {
        z0 = 7;
    }

    int z1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo_p);
    u8 eff_id;
    if (kankyo->pol_effcol2 != NULL) {
        eff_id = kankyo->pol_effcol2[z0].data[z1];
    } else {
        return 0xFF;
    }

    if (eff_id >= 100) {
        return 0xFF;
    }

    out_color_p->r = kankyo->colordata_tbl[eff_id].data[3];
    out_color_p->g = kankyo->colordata_tbl[eff_id].data[4];
    out_color_p->b = kankyo->colordata_tbl[eff_id].data[5];
    return eff_id;
}

/* 801ABC10-801ABD4C 1A6550 013C+00 0/0 1/1 2/2 .text dKy_pol_eff_alpha_get__FPC13cBgS_PolyInfo */
u8 dKy_pol_eff_alpha_get(const cBgS_PolyInfo* polyinfo_p) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    if (polyinfo_p == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int z0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo_p);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 &&
        g_env_light.fishing_hole_season == 4)
    {
        if (z0 == 4) {
            z0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 &&
               dComIfGs_isStageBossEnemy() && z0 == 11)
    {
        z0 = 7;
    }

    int z1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo_p);
    u8 eff_id;
    if (kankyo->pol_effcol != NULL) {
        eff_id = kankyo->pol_effcol[z0].data[z1];
    } else {
        return 0xFF;
    }

    if (eff_id >= 100) {
        return 0xFF;
    }

    eff_id = kankyo->colordata_tbl[eff_id].data[6];
    return eff_id;
}

/* 801ABD4C-801ABEA8 1A668C 015C+00 0/0 1/1 2/2 .text dKy_pol_eff_ratio_get__FPC13cBgS_PolyInfo */
f32 dKy_pol_eff_ratio_get(const cBgS_PolyInfo* polyinfo_p) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    f32 ratio = 0.0f;

    if (polyinfo_p == NULL || &dComIfG_Bgsp() == NULL) {
        return 0.0f;
    }

    int z0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo_p);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 &&
        g_env_light.fishing_hole_season == 4)
    {
        if (z0 == 4) {
            z0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 &&
               dComIfGs_isStageBossEnemy() && z0 == 11)
    {
        z0 = 7;
    }

    int z1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo_p);
    u8 eff_id;
    if (kankyo->pol_effcol != NULL) {
        eff_id = kankyo->pol_effcol[z0].data[z1];
    } else {
        return ratio;
    }

    if (eff_id >= 100) {
        return ratio;
    }

    ratio = (f32)kankyo->colordata_tbl[eff_id].data[7];
    ratio = 0.01f * ratio;
    return ratio;
}

/* 801ABEA8-801ABFE4 1A67E8 013C+00 0/0 1/1 2/2 .text dKy_pol_eff2_alpha_get__FPC13cBgS_PolyInfo
 */
u8 dKy_pol_eff2_alpha_get(const cBgS_PolyInfo* polyinfo_p) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    if (polyinfo_p == NULL || &dComIfG_Bgsp() == NULL) {
        return 0xFF;
    }

    int z0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo_p);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 &&
        g_env_light.fishing_hole_season == 4)
    {
        if (z0 == 4) {
            z0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 &&
               dComIfGs_isStageBossEnemy() && z0 == 11)
    {
        z0 = 7;
    }

    int z1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo_p);
    u8 var_r30;
    if (kankyo->pol_effcol2 != NULL) {
        var_r30 = kankyo->pol_effcol2[z0].data[z1];
    } else {
        return 0xFF;
    }

    if (var_r30 >= 100) {
        return 0xFF;
    }

    var_r30 = kankyo->colordata_tbl[var_r30].data[6];
    return var_r30;
}

/* 801ABFE4-801AC140 1A6924 015C+00 0/0 1/1 2/2 .text dKy_pol_eff2_ratio_get__FPC13cBgS_PolyInfo
 */
f32 dKy_pol_eff2_ratio_get(const cBgS_PolyInfo* polyinfo_p) {
    dScnKy_env_light_c* kankyo = &g_env_light;
    f32 ratio = 0.0f;

    if (polyinfo_p == NULL || &dComIfG_Bgsp() == NULL) {
        return 0.0f;
    }

    int z0 = dComIfG_Bgsp().GetPolyAtt0(*polyinfo_p);
    if (strcmp(dComIfGp_getStartStageName(), "F_SP127") == 0 &&
        g_env_light.fishing_hole_season == 4)
    {
        if (z0 == 4) {
            z0 = 13;
        }
    } else if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0 &&
               dComIfGs_isStageBossEnemy() && z0 == 11)
    {
        z0 = 7;
    }

    int z1 = dComIfG_Bgsp().GetPolyAtt1(*polyinfo_p);
    u8 eff_id;
    if (kankyo->pol_effcol2 != NULL) {
        eff_id = kankyo->pol_effcol2[z0].data[z1];
    } else {
        return ratio;
    }

    if (eff_id >= 100) {
        return ratio;
    }

    ratio = (f32)kankyo->colordata_tbl[eff_id].data[7];
    ratio = 0.01f * ratio;
    return ratio;
}

/* 801AC140-801AC168 1A6A80 0028+00 0/0 2/2 0/0 .text            dKy_TeachWind_existence_chk__Fv */
BOOL dKy_TeachWind_existence_chk() {
    if (g_env_light.TeachWind_existence == 0xFF) {
        return -1;
    }

    return g_env_light.TeachWind_existence ? TRUE : FALSE;
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
BOOL dKy_Outdoor_check() {
    BOOL outdoors = false;
    u32 stage_type = ST_FIELD;

    if (dComIfGp_getStage() != NULL) {
        stage_type = dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo());
    }

    if (stage_type == ST_FIELD) {
        outdoors = true;
    }

    return outdoors;
}

/* 801AC28C-801AC2E0 1A6BCC 0054+00 1/1 0/0 0/0 .text            dKy_Indoor_check__Fv */
BOOL dKy_Indoor_check() {
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
void dKy_depth_dist_set(void* process_p) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    camera_class* camera_p = (camera_class*)dComIfGp_getCamera(0);
    cXyz sp30;
    cXyz sp24;

    fopAc_ac_c* actor_p = (fopAc_ac_c*)process_p;
    sp24 = actor_p->eyePos;

    if (dComIfGp_event_runCheck() && actor_p->tevStr.Type <= 10) {
        if (fabsf(sp24.y - camera_p->lookat.eye.y) < 400.0f) {
            sp24.y = camera_p->lookat.eye.y;
        }

        f32 var_f31 = sp24.abs(camera_p->lookat.eye);
        if (var_f31 < 2000.0f && var_f31 < kankyo->field_0x1268) {
            mDoLib_project(&actor_p->eyePos, &sp30);

            if ((sp30.x >= 0.0f && sp30.x < 608.0f) && (sp30.y >= 0.0f && sp30.y < 600.0f)) {
                cXyz sp18;
                cXyz spC;
                dKyr_get_vectle_calc(&camera_p->lookat.eye, &camera_p->lookat.center, &sp18);
                dKyr_get_vectle_calc(&camera_p->lookat.eye, &actor_p->eyePos, &spC);

                s16 temp_r27 = cM_atan2s(sp18.x, sp18.z);
                s16 temp_r26 = cM_atan2s(spC.x, spC.z);

                if ((s16)fabsf((f32)temp_r26 - (f32)temp_r27) > 0) {
                    kankyo->field_0x1268 = var_f31;
                }
            }
        }
    }
}

/* 801AC57C-801AC5BC 1A6EBC 0040+00 13/13 21/21 134/134 .text            dKy_darkworld_check__Fv */
bool dKy_darkworld_check() {
    bool check = false;
    if (dComIfGp_world_dark_get() == TRUE) {
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
int dKy_F_SP121Check(char const* stageName, int roomNo, u8* out_darkLv, int tblIndex) {
    dKydata_darkworldInfo_c* darkworldTbl = dKyd_darkworld_tbl_getp();
    int result = 0;

    if (out_darkLv != NULL) {
        *out_darkLv = KY_DARKLV_UNCLEARABLE;
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
                *out_darkLv = KY_DARKLV_ELDIN;
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
                *out_darkLv = KY_DARKLV_LANAYRU;
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
    if (darkworldTbl[tblIndex].darkLv == KY_DARKLV_FARON && !dComIfGs_isEventBit(0x4510)) {
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
            if (darkworldTbl[i].darkLv != KY_DARKLV_ALWAYS) {
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
                // KY_DARKLV_ALWAYS is used to force twilight (likely for testing). This will
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
void dKy_murky_set(J3DMaterial* material_p) {
    dKankyo_sunlenz_Packet* lenz_packet = g_env_light.mpSunLenzPacket;
    dKankyo_sun_Packet* sun_packet = g_env_light.mpSunPacket;
    camera_class* camera_p = (camera_class*)dComIfGp_getCamera(0);
    cXyz sp18;
    J3DGXColorS10 tev_col;
    J3DGXColor tev_kcol;

    JUT_ASSERT(0x43DB, material_p != 0);

    tev_col.r = g_env_light.bg_amb_col[1].r;
    tev_col.g = g_env_light.bg_amb_col[1].g;
    tev_col.b = g_env_light.bg_amb_col[1].b;
    tev_col.a = g_env_light.bg_amb_col[2].a;
    tev_kcol.a = g_env_light.bg_amb_col[1].a;

    f32 var_f29 = 1.0f;

    if (g_env_light.field_0x1300 != -1) {
        tev_kcol.a = g_env_light.field_0x1300 * var_f29;
    }

    if (g_env_light.field_0x1302 != -1) {
        tev_col.a = (u8)(g_env_light.field_0x1302 * var_f29);
    }

    if (lenz_packet != NULL && sun_packet->mVisibility > 0.000001f) {
        tev_col.a = (u8)(tev_col.a *
                         (1.0f - (sun_packet->mVisibility *
                                  (1.0f - (lenz_packet->mDistFalloff * lenz_packet->mDistFalloff * lenz_packet->mDistFalloff)))));
    }

    // Diababa room handling
    if (strcmp(dComIfGp_getStartStageName(), "D_MN05A") == 0) {
        dScnKy_env_light_c* var_r26 = dKy_getEnvlight();
        dKankyo_mud_Packet* var_r27 = var_r26->mpMudPacket;

        f32 var_f31;
        if (var_r27 != NULL) {
            var_f31 = 1.0f - var_r27->field_0x1c3c;
        }

        tev_col.r = 20;
        tev_col.g = 6;
        tev_col.b = 15;

        tev_col.r = (u8)(tev_col.r + (s16)(-(f32)tev_col.r * var_f31));
        tev_col.g = (u8)(tev_col.g + (s16)((36.0f - tev_col.g) * var_f31));
        tev_col.b = (u8)(tev_col.b + (s16)((29.0f - tev_col.b) * var_f31));

        if (camera_p != NULL && camera_p->lookat.eye.z < 1800.0f) {
            f32 var_f30;
            if (camera_p->lookat.eye.z < 1550.0f) {
                var_f30 = 1.0f;
            } else {
                var_f30 = 1.0f - ((camera_p->lookat.eye.z - 1550.0f) / 250.0f);
            }
            tev_col.a = (u8)(255.0f * var_f30);
        } else {
            tev_col.a = 0;
        }

        tev_col.a = (u8)(tev_col.a + (s16)(-(f32)tev_col.a * var_f31));

        tev_kcol.a = 0xFF;
        tev_kcol.a = (u8)(tev_kcol.a + (s16)((140.0f - tev_kcol.a) * var_f31));
    }

    tev_kcol.r = 0;
    tev_kcol.g = 0;
    tev_kcol.b = 0;

    material_p->setTevColor(1, &tev_col);
    material_p->setTevKColor(3, &tev_kcol);
}

/* 801ACCDC-801ACCF4 1A761C 0018+00 2/2 1/1 0/0 .text            dKy_shadow_mode_set__FUc */
void dKy_shadow_mode_set(u8 mode) {
    g_env_light.shadow_mode |= mode;
}

/* 801ACCF4-801ACD0C 1A7634 0018+00 2/2 1/1 0/0 .text            dKy_shadow_mode_reset__FUc */
void dKy_shadow_mode_reset(u8 mode) {
    g_env_light.shadow_mode &= ~mode;
}

/* 801ACD0C-801ACD24 1A764C 0018+00 3/3 0/0 1/1 .text            dKy_shadow_mode_check__FUc */
u8 dKy_shadow_mode_check(u8 mode) {
    return g_env_light.shadow_mode & mode;
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
void dKy_bg_MAxx_proc(void* bg_model_p) {
    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
    J3DModel* model_p = (J3DModel*)bg_model_p;
    dDlst_window_c* window = dComIfGp_getWindow(0);
    camera_class* camera_p = (camera_class*)dComIfGp_getCamera(window->getCameraID());
    fopAc_ac_c* player_p = dComIfGp_getPlayer(0);

    if (model_p != NULL && player_p != NULL) {
        J3DModelData* modelData = model_p->getModelData();

        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            J3DGXColor sp5C;

            J3DMaterial* mat_p = modelData->getMaterialNodePointer(i);
            JUTNameTab* mat_nametbl = modelData->getMaterialName();
            const char* mat_name = mat_nametbl->getName(i);

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
                                spA0.r = g_env_light.bg_amb_col[2].r;
                                spA0.g = g_env_light.bg_amb_col[2].g;
                                spA0.b = g_env_light.bg_amb_col[2].b;
                                spA0.a = g_env_light.bg_amb_col[2].a;

                                sp40.a = g_env_light.bg_amb_col[1].a;
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
                    dScnKy_env_light_c* kankyo = dKy_getEnvlight();
                    EF_THUNDER* thunder_ef = &kankyo->mThunderEff;

                    sp98.r = (u8)(thunder_ef->mFlashTimer * 100.0f);
                    sp98.g = (u8)(thunder_ef->mFlashTimer * 100.0f);
                    sp98.b = (u8)(thunder_ef->mFlashTimer * 100.0f);
                    sp98.a = 255;

                    mat_p->setTevColor(0, &sp98);
                }

                if (memcmp(&mat_name[3], "MA10", 4) == 0 || memcmp(&mat_name[3], "MA02", 4) == 0) {
                    dComIfGd_setListInvisisble();

                    if (mat_p->getTexGenBlock()->getTexMtx(0) != NULL) {
                        J3DTexMtxInfo* tex_mtx_inf =
                            &mat_p->getTexGenBlock()->getTexMtx(0)->getTexMtxInfo();
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

                        if (kankyo->fog_avoid_tag != NULL) {
                            spF0 = kankyo->fog_avoid_tag->mAvoidPos;
                            f32 var_f28 =
                                kankyo->fog_avoid_tag->mSize.x * kankyo->fog_avoid_tag->mSizeScale;
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
                        sp88.r = g_env_light.bg_amb_col[3].r;
                        sp88.g = g_env_light.bg_amb_col[3].g;
                        sp88.b = g_env_light.bg_amb_col[3].b;
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
                    sp80.r = g_env_light.bg_amb_col[3].r;
                    sp80.g = g_env_light.bg_amb_col[3].g;
                    sp80.b = g_env_light.bg_amb_col[3].b;
                    sp80.a = g_env_light.bg_amb_col[3].a;
                    mat_p->setTevColor(1, &sp80);
                } else if (memcmp(&mat_name[3], "MA14", 4) == 0) {
                    J3DGXColorS10 sp78;
                    J3DGXColor sp1C;
                    sp78.r = g_env_light.fog_col.r;
                    sp78.g = g_env_light.fog_col.g;
                    sp78.b = g_env_light.fog_col.b;
                    sp78.a = g_env_light.fog_col.a;
                    mat_p->setTevColor(1, &sp78);

                    sp1C.r = sp1C.g = sp1C.b = 0;
                    sp1C.a = g_env_light.bg_amb_col[3].a;
                    mat_p->setTevKColor(3, &sp1C);
                } else if (memcmp(&mat_name[3], "MA16", 4) == 0) {
                    J3DGXColorS10 sp70;
                    J3DGXColor sp18;
                    sp70.r = g_env_light.bg_amb_col[1].r;
                    sp70.g = g_env_light.bg_amb_col[1].g;
                    sp70.b = g_env_light.bg_amb_col[1].b;
                    sp70.a = g_env_light.bg_amb_col[1].a;
                    mat_p->setTevColor(1, &sp70);

                    sp18.r = sp18.g = sp18.b = 0;
                    sp18.a = g_env_light.bg_amb_col[3].a;
                    mat_p->setTevKColor(3, &sp18);
                }
            }

            if (memcmp(&mat_name[3], "Rainbow", 7) == 0) {
                f32 temp_f29;
                f32 temp_f31;

                f32 time = g_env_light.getDaytime();
                cXyz spB4;
                camera_class* camera_p = dComIfGp_getCamera(0);
                J3DGXColor sp10;

                cXyz spA8;
                spA8.x = -5853.0f;
                spA8.y = camera_p->lookat.eye.y;
                spA8.z = -879.0f;

                temp_f31 = spA8.abs(camera_p->lookat.eye);
                temp_f31 = -0.2f + (temp_f31 / 4500.0f);
                if (temp_f31 > 1.0f) {
                    temp_f31 = 1.0f;
                } else if (temp_f31 < 0.0f) {
                    temp_f31 = 0.0f;
                }

                sp10.b = sp10.g = sp10.r = 255;
                sp10.a = 255;

                temp_f29 = 0.0f;
                if (time >= 270.0f) {
                    if (time < 285.0f) {
                        temp_f29 = (285.0f - time) / 15.0f;
                    }
                } else if (time < 75.0f) {
                    if (time >= 60.0f) {
                        temp_f29 = 1.0f - ((75.0f - time) / 15.0f);
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

                spA8 = camera_p->lookat.center;
                spA8.y = camera_p->lookat.eye.y;
                dKyr_get_vectle_calc(&camera_p->lookat.eye, &spA8, &spB4);

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

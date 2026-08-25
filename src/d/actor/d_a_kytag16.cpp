/**
 * d_a_kytag16.cpp
 * Pikari Tag
 */

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_kytag16.h"
#include "SSystem/SComponent/c_counter.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "f_pc/f_pc_name.h"
#include <cstring>

static int daKytag16_Draw(kytag16_class* i_this) {
    return 1;
}

static int daKytag16_Execute(kytag16_class* i_this) {
    bool light_set = false;
    f32 x = 0.0f;
    f32 y = 0.0f;

    if (i_this->time_start < 31) {
        if (i_this->time_start > i_this->time_end) {
            if (dKy_getdaytime_hour() >= i_this->time_start ||
                dKy_getdaytime_hour() <= i_this->time_end)
            {
                light_set = true;
            }
        } else if (dKy_getdaytime_hour() >= i_this->time_start &&
                   dKy_getdaytime_hour() <= i_this->time_end)
        {
            light_set = true;
        }
    } else {
        light_set = true;
    }

    if (light_set) {
        light_set = false;

        if (i_this->bitsw != 0xFF) {
            if (dComIfGs_isSwitch(i_this->bitsw, dComIfGp_roomControl_getStayNo())) {
                light_set = true;
            }
        } else {
            light_set = true;
        }
    }

    if (light_set) {
        if (strcmp(dComIfGp_getStartStageName(), "F_SP117") != 0) {
            cLib_addCalc(&i_this->blend, 1.0f, 0.5f, 0.1f, 0.0001f);
        } else {
            x = cM_ssin(i_this->swayX);
            y = cM_scos(i_this->swayY);

            i_this->swayX += 0x500;
            i_this->swayY += 800;

            cLib_addCalc(&i_this->blend, 0.9f + (0.1f * cM_ssin(g_Counter.mCounter0 * 0x500)),
                         0.5f, 0.1f, 0.0001f);
            i_this->cutoff = 40.0f;
        }
    } else {
        cLib_addCalc(&i_this->blend, 0.0f, 0.5f, 0.05f, 0.0001f);
    }

    if (i_this->blend > 0.001f) {
        dKy_BossSpotLight_set(&i_this->current.pos, i_this->angleX + (12.0f * x),
                              i_this->angleY + (50.0f * y), i_this->cutoff,
                              &i_this->color, i_this->ref_dist * i_this->blend,
                              i_this->spot_type, i_this->distattn_type);
    }

    return 1;
}

static int daKytag16_IsDelete(kytag16_class* i_this) {
    return 1;
}

static int daKytag16_Delete(kytag16_class* i_this) {
    return 1;
}

static int daKytag16_Create(fopAc_ac_c* actor) {
    fopAcM_ct(actor, kytag16_class);
    kytag16_class* i_this = (kytag16_class*)actor;

    i_this->bitsw = fopAcM_GetParam(i_this) & 0xFF;
    i_this->light_type = (i_this->current.angle.z >> 10) & 0x3F;

    i_this->color.r = fopAcM_GetParam(i_this) >> 0x8;
    i_this->color.g = fopAcM_GetParam(i_this) >> 0x10;
    i_this->color.b = fopAcM_GetParam(i_this) >> 0x18;

    i_this->time_start = i_this->current.angle.z & 0x1F;
    i_this->time_end = (i_this->current.angle.z >> 5) & 0x1F;
    i_this->angleX = (i_this->shape_angle.x / 32767.0f) * 180.0f;
    i_this->angleY = (i_this->shape_angle.y / 32767.0f) * 180.0f;

    i_this->swayX = cM_rndFX(65535.0f);
    i_this->swayY = cM_rndFX(65535.0f);
    i_this->field_0x584 = 1.0f;
    i_this->blend = 0.0f;

    switch (i_this->light_type) {
    case 0:
        i_this->cutoff = 45.0f;
        i_this->ref_dist = 1.0f;
        i_this->spot_type = 0;
        i_this->distattn_type = 3;
        break;
    case 1:
        i_this->cutoff = 45.0f;
        i_this->ref_dist = 5.0f;
        i_this->spot_type = 0;
        i_this->distattn_type = 3;
        break;
    case 2:
        i_this->cutoff = 45.0f;
        i_this->ref_dist = 10.0f;
        i_this->spot_type = 0;
        i_this->distattn_type = 3;
        break;
    case 3:
        i_this->cutoff = 25.0f;
        i_this->ref_dist = 1.0f;
        i_this->spot_type = 2;
        i_this->distattn_type = 3;
        break;
    case 4:
        i_this->cutoff = 45.0f;
        i_this->ref_dist = 5.0f;
        i_this->spot_type = 2;
        i_this->distattn_type = 3;
        break;
    case 5:
        i_this->cutoff = 70.0f;
        i_this->ref_dist = 10.0f;
        i_this->spot_type = 2;
        i_this->distattn_type = 3;
        break;
    case 6:
        i_this->cutoff = 60.0f;
        i_this->ref_dist = 0.01f;
        i_this->spot_type = 2;
        i_this->distattn_type = 1;
        break;
    case 7:
        i_this->cutoff = 50.0f;
        i_this->ref_dist = 0.01f;
        i_this->spot_type = 2;
        i_this->distattn_type = 1;
        break;
    }

    return cPhs_COMPLEATE_e;
}

static actor_method_class l_daKytag16_Method = {
    (process_method_func)daKytag16_Create,  (process_method_func)daKytag16_Delete,
    (process_method_func)daKytag16_Execute, (process_method_func)daKytag16_IsDelete,
    (process_method_func)daKytag16_Draw,
};

actor_process_profile_definition g_profile_KYTAG16 = {
    /* Layer ID     */ fpcLy_CURRENT_e,
    /* List ID      */ 7,
    /* List Prio    */ fpcPi_CURRENT_e,
    /* Proc Name    */ fpcNm_KYTAG16_e,
    /* Proc SubMtd  */ &g_fpcLf_Method.base,
    /* Size         */ sizeof(kytag16_class),
    /* Size Other   */ 0,
    /* Parameters   */ 0,
    /* Leaf SubMtd  */ &g_fopAc_Method.base,
    /* Draw Prio    */ fpcDwPi_KYTAG16_e,
    /* Actor SubMtd */ &l_daKytag16_Method,
    /* Status       */ fopAcStts_UNK_0x40000_e | fopAcStts_NOPAUSE_e,
    /* Group        */ fopAc_ACTOR_e,
    /* Cull Type    */ fopAc_CULLBOX_0_e,
};

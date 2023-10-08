/**
 * d_a_kytag16.cpp
 * Pikari Tag
 */

#include "rel/d/a/kytag/d_a_kytag16/d_a_kytag16.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "SSystem/SComponent/c_counter.h"
#include "SSystem/SComponent/c_math.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80860C58-80860C60 000078 0008+00 1/0 0/0 0/0 .text            daKytag16_Draw__FP13kytag16_class
 */
static int daKytag16_Draw(kytag16_class* i_this) {
    return 1;
}

/* 80860C60-80860E9C 000080 023C+00 1/0 0/0 0/0 .text daKytag16_Execute__FP13kytag16_class */
static int daKytag16_Execute(kytag16_class* i_this) {
    bool var_r29 = false;
    f32 var_f31 = 0.0f;
    f32 var_f30 = 0.0f;

    if (i_this->field_0x571 < 31) {
        if (i_this->field_0x571 > i_this->field_0x572) {
            if (dKy_getdaytime_hour() >= i_this->field_0x571 ||
                dKy_getdaytime_hour() <= i_this->field_0x572)
            {
                var_r29 = true;
            }
        } else if (dKy_getdaytime_hour() >= i_this->field_0x571 &&
                   dKy_getdaytime_hour() <= i_this->field_0x572)
        {
            var_r29 = true;
        }
    } else {
        var_r29 = true;
    }

    if (var_r29) {
        var_r29 = false;

        if (i_this->field_0x573 != 0xFF) {
            s32 room_no = dComIfGp_roomControl_getStayNo();

            if (dComIfGs_isSwitch(i_this->field_0x573, room_no)) {
                var_r29 = true;
            }
        } else {
            var_r29 = true;
        }
    }

    if (var_r29) {
        if (strcmp(dComIfGp_getStartStageName(), "F_SP117") != 0) {
            cLib_addCalc(&i_this->field_0x568, 1.0f, 0.5f, 0.1f, 0.0001f);
        } else {
            var_f31 = cM_ssin(i_this->field_0x588);
            var_f30 = cM_scos(i_this->field_0x58a);

            i_this->field_0x588 += 0x500;
            i_this->field_0x58a += 800;

            cLib_addCalc(&i_this->field_0x568, 0.9f + (0.1f * cM_ssin(g_Counter.mCounter0 * 0x500)),
                         0.5f, 0.1f, 0.0001f);
            i_this->field_0x580 = 40.0f;
        }
    } else {
        cLib_addCalc(&i_this->field_0x568, 0.0f, 0.5f, 0.05f, 0.0001f);
    }

    if (i_this->field_0x568 > 0.001f) {
        dKy_BossSpotLight_set(&i_this->current.pos, i_this->field_0x578 + (12.0f * var_f31),
                              i_this->field_0x57c + (50.0f * var_f30), i_this->field_0x580,
                              &i_this->field_0x56d, i_this->field_0x574 * i_this->field_0x568,
                              i_this->field_0x58c, i_this->field_0x58d);
    }

    return 1;
}

/* 80860E9C-80860EA4 0002BC 0008+00 1/0 0/0 0/0 .text daKytag16_IsDelete__FP13kytag16_class */
static int daKytag16_IsDelete(kytag16_class* i_this) {
    return 1;
}

/* 80860EA4-80860EAC 0002C4 0008+00 1/0 0/0 0/0 .text            daKytag16_Delete__FP13kytag16_class
 */
static int daKytag16_Delete(kytag16_class* i_this) {
    return 1;
}

/* 80860EAC-8086112C 0002CC 0280+00 2/0 0/0 0/0 .text            daKytag16_Create__FP10fopAc_ac_c */
static int daKytag16_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, kytag16_class);
    kytag16_class* this_ = (kytag16_class*)i_this;

    this_->field_0x573 = fopAcM_GetParam(this_) & 0xFF;
    this_->field_0x56c = (this_->current.angle.z >> 10) & 0x3F;

    this_->field_0x56d.r = fopAcM_GetParam(this_) >> 0x8;
    this_->field_0x56d.g = fopAcM_GetParam(this_) >> 0x10;
    this_->field_0x56d.b = fopAcM_GetParam(this_) >> 0x18;

    this_->field_0x571 = this_->current.angle.z & 0x1F;
    this_->field_0x572 = (this_->current.angle.z >> 5) & 0x1F;
    this_->field_0x578 = (this_->shape_angle.x / 32767.0f) * 180.0f;
    this_->field_0x57c = (this_->shape_angle.y / 32767.0f) * 180.0f;

    this_->field_0x588 = cM_rndFX(65535.0f);
    this_->field_0x58a = cM_rndFX(65535.0f);
    this_->field_0x584 = 1.0f;
    this_->field_0x568 = 0.0f;

    switch (this_->field_0x56c) {
    case 0:
        this_->field_0x580 = 45.0f;
        this_->field_0x574 = 1.0f;
        this_->field_0x58c = 0;
        this_->field_0x58d = 3;
        break;
    case 1:
        this_->field_0x580 = 45.0f;
        this_->field_0x574 = 5.0f;
        this_->field_0x58c = 0;
        this_->field_0x58d = 3;
        break;
    case 2:
        this_->field_0x580 = 45.0f;
        this_->field_0x574 = 10.0f;
        this_->field_0x58c = 0;
        this_->field_0x58d = 3;
        break;
    case 3:
        this_->field_0x580 = 25.0f;
        this_->field_0x574 = 1.0f;
        this_->field_0x58c = 2;
        this_->field_0x58d = 3;
        break;
    case 4:
        this_->field_0x580 = 45.0f;
        this_->field_0x574 = 5.0f;
        this_->field_0x58c = 2;
        this_->field_0x58d = 3;
        break;
    case 5:
        this_->field_0x580 = 70.0f;
        this_->field_0x574 = 10.0f;
        this_->field_0x58c = 2;
        this_->field_0x58d = 3;
        break;
    case 6:
        this_->field_0x580 = 60.0f;
        this_->field_0x574 = 0.01f;
        this_->field_0x58c = 2;
        this_->field_0x58d = 1;
        break;
    case 7:
        this_->field_0x580 = 50.0f;
        this_->field_0x574 = 0.01f;
        this_->field_0x58c = 2;
        this_->field_0x58d = 1;
        break;
    }

    return cPhs_COMPLEATE_e;
}

/* ############################################################################################## */
/* 808611BC-808611DC -00001 0020+00 1/0 0/0 0/0 .data            l_daKytag16_Method */
static actor_method_class l_daKytag16_Method = {
    (process_method_func)daKytag16_Create,  (process_method_func)daKytag16_Delete,
    (process_method_func)daKytag16_Execute, (process_method_func)daKytag16_IsDelete,
    (process_method_func)daKytag16_Draw,
};

/* 808611DC-8086120C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KYTAG16 */
extern actor_process_profile_definition g_profile_KYTAG16 = {
    -3,
    7,
    -3,
    PROC_KYTAG16,
    &g_fpcLf_Method.mBase,
    sizeof(kytag16_class),
    0,
    0,
    &g_fopAc_Method.base,
    110,
    &l_daKytag16_Method,
    0x60000,
    0,
    0,
};

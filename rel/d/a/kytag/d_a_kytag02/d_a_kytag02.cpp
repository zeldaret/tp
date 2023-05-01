/**
 * d_a_kytag02.cpp
 *
 */

#include "rel/d/a/kytag/d_a_kytag02/d_a_kytag02.h"
#include "JSystem/JKernel/JKRHeap.h"

/* -80855AC0 000078 0008+00 1/0 0/0 0/0 .text            daKytag02_Draw__FP13kytag02_class
 */
static int daKytag02_Draw(kytag02_class* i_this) {
    return 1;
}

/* 80855AC0-80855CC4 000080 0204+00 1/0 0/0 0/0 .text daKytag02_Execute__FP13kytag02_class */
static int daKytag02_Execute(kytag02_class* i_this) {
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();
    cXyz* wind_vec = dKyw_get_wind_vec();

    if (dComIfGs_isSwitch(i_this->field_0x577, i_this->orig.roomNo)) {
        dKyw_evt_wind_set_go();
        dKyw_evt_wind_set(0, i_this->current.angle.y);

        if (i_this->field_0x578 != 99) {
            env_light->mTeachWindExist = 1;
            env_light->mMoyaMode = 4;
            env_light->mMoyaCount = 50;

            switch (i_this->field_0x576) {
            case 0:
                if (i_this->field_0x574 <= 0) {
                    env_light->custom_windpower = 0.27f;
                    i_this->field_0x574 = 60;
                    mDoAud_mEnvse_setWindType(2);
                    i_this->field_0x576++;
                }
                break;
            case 1:
                if (i_this->field_0x574 <= 0) {
                    env_light->custom_windpower = 0.40499997f;
                    i_this->field_0x574 = 90;
                    mDoAud_mEnvse_setWindType(1);
                    i_this->field_0x576++;
                }
                break;
            case 2:
                if (i_this->field_0x574 <= 0) {
                    env_light->custom_windpower = 0.0f;
                    i_this->field_0x574 = 90;
                    i_this->field_0x576 = 0;
                    mDoAud_mEnvse_setWindType(3);
                }
                break;
            }

            if (i_this->field_0x574 != 0) {
                i_this->field_0x574--;
            }
        } else {
            env_light->mTeachWindExist = 0xFF;
            env_light->custom_windpower = 0.3f;
        }
    } else {
        env_light = i_dKy_getEnvlight();
        env_light->mEvtWindSet = 0;

        if (i_this->field_0x578 != 99) {
            env_light->mMoyaCount = 0;
        }

        env_light->mTeachWindExist = 0;
    }

    if (i_this->field_0x578 != 99) {
        mDoAud_mEnvse_setWindDirection(wind_vec);

        s8 reverb = dComIfGp_getReverb(dComIfGp_roomControl_getStayNo());
        mDoAud_mEnvse_startStrongWindSe(reverb);
    }

    return 1;
}

/* 80855CC4-80855CCC 000284 0008+00 1/0 0/0 0/0 .text daKytag02_IsDelete__FP13kytag02_class */
static int daKytag02_IsDelete(kytag02_class* i_this) {
    return 1;
}

/* 80855CCC-80855CEC 00028C 0020+00 1/0 0/0 0/0 .text            daKytag02_Delete__FP13kytag02_class
 */
static int daKytag02_Delete(kytag02_class* i_this) {
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();

    env_light->mEvtWindSet = 0;
    env_light->mMoyaCount = 0;
    env_light->mTeachWindExist = 0;
    return 1;
}

/* 80855CEC-80855DF4 0002AC 0108+00 1/0 0/0 0/0 .text            daKytag02_Create__FP10fopAc_ac_c */
static int daKytag02_Create(fopAc_ac_c* i_this) {
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();
    dKyw_get_wind_vec();

    if (!fopAcM_CheckCondition(i_this, 8)) {
        new (i_this) kytag02_class();
        fopAcM_OnCondition(i_this, 8);
    }
    kytag02_class* this_ = (kytag02_class*)i_this;

    this_->field_0x574 = 0;
    this_->field_0x576 = 0;
    this_->field_0x577 = this_->current.angle.x & 0xFF;

    env_light->custom_windpower = 0.0f;

    this_->field_0x578 = fopAcM_GetParam(this_) & 0xFF;

    if (dComIfGs_isSwitch(this_->field_0x577, this_->orig.roomNo)) {
        dKyw_evt_wind_set_go();
        dKyw_evt_wind_set(0, this_->current.angle.y);

        if (this_->field_0x578 == 99) {
            env_light->mTeachWindExist = 0xFF;
        } else {
            env_light->mTeachWindExist = 1;
            env_light->mMoyaMode = 4;
            env_light->mMoyaCount = 50;
        }
    }

    if (this_->field_0x578 != 99) {
        mDoAud_mEnvse_initStrongWind();
    }

    return cPhs_COMPLEATE_e;
}

/* ############################################################################################## */
/* 80855E0C-80855E2C -00001 0020+00 1/0 0/0 0/0 .data            l_daKytag02_Method */
static actor_method_class l_daKytag02_Method = {
    (process_method_func)daKytag02_Create,  (process_method_func)daKytag02_Delete,
    (process_method_func)daKytag02_Execute, (process_method_func)daKytag02_IsDelete,
    (process_method_func)daKytag02_Draw,
};

/* 80855E2C-80855E5C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KYTAG02 */
extern actor_process_profile_definition g_profile_KYTAG02 = {
    -3,
    7,
    -3,
    PROC_KYTAG02,
    &g_fpcLf_Method.mBase,
    sizeof(kytag02_class),
    0,
    0,
    &g_fopAc_Method.base,
    0x60,
    &l_daKytag02_Method,
    0x00044000,
    0,
    0,
};

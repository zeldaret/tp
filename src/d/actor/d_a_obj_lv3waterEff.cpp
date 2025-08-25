/**
 * d_a_obj_lv3waterEff.cpp
 * Lakebed Temple Pre-Deku Toad Room Water Bubbles
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv3waterEff.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80C5C878-80C5C880 000000 0008+00 1/1 0/0 0/0 .rodata          l_eff_id */
static u16 const l_eff_id[] = {
    0x86D2,
    0x86D3,
    0x86D4,
    0x86D5,
};

/* 80C5C4F8-80C5C5DC 000078 00E4+00 1/1 0/0 0/0 .text            Create__15daObjWaterEff_cFv */
int daObjWaterEff_c::Create() {
    for (int i = 0; i < 4; i++) {
        mParticles[i] = dComIfGp_particle_set(l_eff_id[i], &current.pos, NULL, NULL, 0xFF, NULL, -1,
                                              NULL, NULL, NULL);
    }

    mSePositions[0].set(14420.0f, -1100.0f, -4950.0f);
    mSePositions[1].set(12585.0f, -550.0f, -2390.0f);
    return 1;
}

/* 80C5C5DC-80C5C670 00015C 0094+00 1/1 0/0 0/0 .text            create__15daObjWaterEff_cFv */
int daObjWaterEff_c::create() {
    fopAcM_SetupActor(this, daObjWaterEff_c);

    if (!Create()) {
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

/* 80C5C6B0-80C5C7B8 000230 0108+00 1/1 0/0 0/0 .text            execute__15daObjWaterEff_cFv */
int daObjWaterEff_c::execute() {
    if (dKy_camera_water_in_status_check()) {
        for (int i = 0; i < 4; i++) {
            if (mParticles[i] != NULL) {
                mParticles[i]->setGlobalAlpha(255);
            }
        }
    } else {
        for (int i = 0; i < 4; i++) {
            if (mParticles[i] != NULL) {
                mParticles[i]->setGlobalAlpha(128);
            }
        }
    }

    for (int i = 0; i < 2; i++) {
        mDoAud_seStartLevel(Z2SE_OBJ_WTR_STREAM, &mSePositions[i], 0, 0);
    }

    return 1;
}

/* 80C5C7B8-80C5C810 000338 0058+00 1/1 0/0 0/0 .text            _delete__15daObjWaterEff_cFv */
int daObjWaterEff_c::_delete() {
    for (int i = 0; i < 4; i++) {
        if (mParticles[i] != NULL) {
            mParticles[i]->becomeInvalidEmitter();
            mParticles[i]->quitImmortalEmitter();
            mParticles[i] = NULL;
        }
    }

    return 1;
}

/* 80C5C810-80C5C830 000390 0020+00 1/0 0/0 0/0 .text daObjWaterEff_Execute__FP15daObjWaterEff_c
 */
static int daObjWaterEff_Execute(daObjWaterEff_c* i_this) {
    return i_this->execute();
}

/* 80C5C830-80C5C850 0003B0 0020+00 1/0 0/0 0/0 .text daObjWaterEff_Delete__FP15daObjWaterEff_c */
static int daObjWaterEff_Delete(daObjWaterEff_c* i_this) {
    return i_this->_delete();
}

/* 80C5C850-80C5C870 0003D0 0020+00 1/0 0/0 0/0 .text daObjWaterEff_Create__FP10fopAc_ac_c */
static int daObjWaterEff_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjWaterEff_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80C5C8A0-80C5C8C0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjWaterEff_Method */
static actor_method_class l_daObjWaterEff_Method = {
    (process_method_func)daObjWaterEff_Create,
    (process_method_func)daObjWaterEff_Delete,
    (process_method_func)daObjWaterEff_Execute,
    (process_method_func)NULL,
    (process_method_func)NULL,
};

/* 80C5C8C0-80C5C8F0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_WaterEff */
extern actor_process_profile_definition g_profile_Obj_WaterEff = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Obj_WaterEff,
    &g_fpcLf_Method.base,
    sizeof(daObjWaterEff_c),
    0,
    0,
    &g_fopAc_Method.base,
    555,
    &l_daObjWaterEff_Method,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

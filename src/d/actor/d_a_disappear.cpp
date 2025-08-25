/**
 * d_a_disappear.cpp
 * Disappear death effect when an enemy is defeated
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_disappear.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 804A8F18-804A8F20 000078 0008+00 1/0 0/0 0/0 .text daDisappear_Draw__FP15disappear_class */
static int daDisappear_Draw(disappear_class* i_this) {
    return 1;
}

/* 804A8F20-804A8F6C 000080 004C+00 1/1 0/0 0/0 .text            s_ks_sub__FPvPv */
static void* s_ks_sub(void* i_actor, void*) {
    fopAc_ac_c* actor_p = (fopAc_ac_c*)i_actor;

    if (fopAcM_IsActor(actor_p) && fopAcM_GetName(actor_p) == PROC_NPC_KS) {
        actor_p->health = 1;
    }

    return NULL;
}

/* 804A8F6C-804A8FA8 0000CC 003C+00 1/0 0/0 0/0 .text daDisappear_Execute__FP15disappear_class */
static int daDisappear_Execute(disappear_class* i_this) {
    if (i_this->mDeleteTimer != 0) {
        i_this->mDeleteTimer--;
    } else {
        fopAcM_delete(i_this);
    }

    return 1;
}

/* 804A8FA8-804A8FB0 000108 0008+00 1/0 0/0 0/0 .text daDisappear_IsDelete__FP15disappear_class */
static int daDisappear_IsDelete(disappear_class* i_this) {
    return 1;
}

/* 804A8FB0-804A8FB8 000110 0008+00 1/0 0/0 0/0 .text daDisappear_Delete__FP15disappear_class */
static int daDisappear_Delete(disappear_class* i_this) {
    return 1;
}

/* 804A8FB8-804A9080 000118 00C8+00 1/1 0/0 0/0 .text yami_disappear__FP15disappear_classf */
static void yami_disappear(disappear_class* i_this, f32 i_scale) {
    static u16 da_name[] = {0x826C, 0x826D, 0x826E, 0x826B};

    cXyz scale;
    scale.set(i_scale, i_scale, i_scale);

    int n = 3;
    if (i_this->field_0x567 == 2) {
        n = 4;
    }

    for (int i = 0; i < n; i++) {
        dComIfGp_particle_set(da_name[i], &i_this->current.pos, NULL, &scale);
    }
}

/* 804A9080-804A9130 0001E0 00B0+00 1/1 0/0 0/0 .text ghost_disappear__FP15disappear_classf */
static void ghost_disappear(disappear_class* i_this, f32 i_scale) {
    static u16 da_name[] = {0x86A7, 0x86A8, 0x86A9, 0x86AA, 0x86AB};

    cXyz scale;
    scale.set(i_scale, i_scale, i_scale);

    for (int i = 0; i < 5; i++) {
        dComIfGp_particle_set(da_name[i], &i_this->current.pos, NULL, &scale);
    }
}

/* 804A9130-804A9364 000290 0234+00 1/1 0/0 0/0 .text            set_disappear__FP15disappear_classf
 */
static void set_disappear(disappear_class* i_this, f32 i_scale) {
    static u16 da_name[] = {0x0108, 0x0109, 0x010A, 0x010B, 0x010C, 0x0154, 0x0155};

    dKy_Sound_set(i_this->current.pos, 120, fopAcM_GetID(i_this), 10);

    fpcM_Search(s_ks_sub, i_this);

    if (i_this->field_0x567 == 3) {
        fopAcM_seStart(i_this, JA_SE_CM_MONS_EXPLODE, 0);
        ghost_disappear(i_this, i_scale);
    } else if (i_this->field_0x567 >= 1) {
        fopAcM_seStart(i_this, Z2SE_DARK_VANISH, 0);
        yami_disappear(i_this, i_scale * 1.666f);
    } else {
        fopAcM_seStart(i_this, JA_SE_CM_MONS_EXPLODE, 0);

        cXyz scale;
        scale.set(i_scale, i_scale, i_scale);

        i_this->mDeleteTimer = 58;
        for (int i = 0; i < 7; i++) {
            dComIfGp_particle_set(da_name[i], &i_this->current.pos, NULL, &scale);
        }
    }
}

/* 804A9364-804A9458 0004C4 00F4+00 1/0 0/0 0/0 .text            daDisappear_Create__FP10fopAc_ac_c
 */
static int daDisappear_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, disappear_class);
    disappear_class* this_ = (disappear_class*)i_this;

    this_->field_0x567 = fopAcM_GetParam(this_);

    f32 particle_scale = (fopAcM_GetParam(this_) >> 0x8) & 0xFF;
    if (particle_scale >= 50.0f) {
        particle_scale *= 0.01f;
    } else {
        particle_scale *= 0.1f;
    }

    u8 enemy_id = fopAcM_GetParam(this_) >> 0x10;
    if (enemy_id != 0xFF) {
        fopAcM_createItemFromEnemyID(enemy_id, &this_->current.pos, -1, -1, NULL, NULL, NULL, NULL);
    }

    set_disappear(this_, particle_scale);
    return cPhs_COMPLEATE_e;
}

/* ############################################################################################## */
/* 804A94A4-804A94C4 -00001 0020+00 1/0 0/0 0/0 .data            l_daDisappear_Method */
static actor_method_class l_daDisappear_Method = {
    (process_method_func)daDisappear_Create,  (process_method_func)daDisappear_Delete,
    (process_method_func)daDisappear_Execute, (process_method_func)daDisappear_IsDelete,
    (process_method_func)daDisappear_Draw,
};

/* 804A94C4-804A94F4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_DISAPPEAR */
extern actor_process_profile_definition g_profile_DISAPPEAR = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_DISAPPEAR,
    &g_fpcLf_Method.base,
    sizeof(disappear_class),
    0,
    0,
    &g_fopAc_Method.base,
    725,
    &l_daDisappear_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_0_e,
};

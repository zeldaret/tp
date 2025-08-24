/**
 * d_a_obj_eff.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_eff.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"


/* 8057C9D8-8057CA94 000078 00BC+00 1/1 0/0 0/0 .text            _create__Q28daObjEff5Act_cFv */
int daObjEff::Act_c::_create() {
    fopAcM_SetupActor(this, Act_c);

    if (daObj::PrmAbstract<Act_c::Prm_e>(this, PRM_8, PRM_0) == 3) {
        dComIfGp_particle_setColor(0x00E7, &current.pos, NULL, NULL, NULL, 0.0f, 55, NULL, &scale,
                                   NULL, fopAcM_GetRoomNo(this), &scale);
    }

    return cPhs_ERROR_e;
}

namespace daObjEff {
namespace {
/* 8057CA94-8057CAB4 000134 0020+00 1/0 0/0 0/0 .text
 * Mthd_Create__Q28daObjEff25@unnamed@d_a_obj_eff_cpp@FPv       */
int Mthd_Create(void* i_this) {
    return static_cast<daObjEff::Act_c*>(i_this)->_create();
}

/* 8057CAB4-8057CABC 000154 0008+00 1/0 0/0 0/0 .text
 * Mthd_Delete__Q28daObjEff25@unnamed@d_a_obj_eff_cpp@FPv       */
int Mthd_Delete(void* i_this) {
    return 1;
}

/* 8057CABC-8057CAC4 00015C 0008+00 1/0 0/0 0/0 .text
 * Mthd_Execute__Q28daObjEff25@unnamed@d_a_obj_eff_cpp@FPv      */
int Mthd_Execute(void* i_this) {
    return 1;
}

/* 8057CAC4-8057CACC 000164 0008+00 1/0 0/0 0/0 .text
 * Mthd_Draw__Q28daObjEff25@unnamed@d_a_obj_eff_cpp@FPv         */
int Mthd_Draw(void* i_this) {
    return 1;
}

/* 8057CACC-8057CAD4 00016C 0008+00 1/0 0/0 0/0 .text
 * Mthd_IsDelete__Q28daObjEff25@unnamed@d_a_obj_eff_cpp@FPv     */
int Mthd_IsDelete(void* i_this) {
    return 1;
}
};  // namespace
};  // namespace daObjEff

/* ############################################################################################## */
/* 8057CAFC-8057CB1C -00001 0020+00 1/0 0/0 0/0 .data
 * Mthd_Table__Q28daObjEff25@unnamed@d_a_obj_eff_cpp@           */
namespace daObjEff {
namespace {
static actor_method_class Mthd_Table = {
    (process_method_func)Mthd_Create,  (process_method_func)Mthd_Delete,
    (process_method_func)Mthd_Execute, (process_method_func)Mthd_IsDelete,
    (process_method_func)Mthd_Draw,
};
};
};  // namespace daObjEff

/* 8057CB1C-8057CB4C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Eff */
extern actor_process_profile_definition g_profile_Obj_Eff = {
    fpcLy_CURRENT_e,
    9,
    fpcPi_CURRENT_e,
    PROC_Obj_Eff,
    &g_fpcLf_Method.base,
    sizeof(daObjEff::Act_c),
    0,
    0,
    &g_fopAc_Method.base,
    267,
    &daObjEff::Mthd_Table,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_0_e,
};

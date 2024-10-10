#ifndef D_A_D_A_OBJ_H
#define D_A_D_A_OBJ_H

#include "f_op/f_op_actor_mng.h"

class dCcD_GObjInf;
namespace daObj {
void eff_break_tsubo(fopAc_ac_c*, cXyz, int);
void make_eff_break_kotubo(fopAc_ac_c*);
void make_eff_break_kotubo2(fopAc_ac_c*);
void make_eff_break_gm_kotubo(fopAc_ac_c*);
void make_eff_break_gm_ootubo(fopAc_ac_c*);
void posMoveF_stream(fopAc_ac_c*, cXyz const*, cXyz const*, f32, f32);
void posMoveF_grade(fopAc_ac_c*, cXyz const*, cXyz const*, f32, f32, cXyz const*, f32, f32,
                    cXyz const*);
void quat_rotBaseY(Quaternion*, cXyz const&);
void HitSeStart(cXyz const*, int, dCcD_GObjInf const*, u32);

template <typename T>
int PrmAbstract(const fopAc_ac_c* i_actor, T i_prmA, T i_prmB) {
    u32 param = fopAcM_GetParam(i_actor);
    return ((1 << i_prmA) - 1) & (param >> i_prmB);
}
};  // namespace daObj

#endif /* D_A_D_A_OBJ_H */

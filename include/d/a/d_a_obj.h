#ifndef D_A_D_A_OBJ_H
#define D_A_D_A_OBJ_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

namespace daObj {
/* 80037038 */ void eff_break_tsubo(fopAc_ac_c*, cXyz, int);
/* 80037180 */ void make_eff_break_kotubo(fopAc_ac_c*);
/* 80037210 */ void make_eff_break_kotubo2(fopAc_ac_c*);
/* 800372A0 */ void make_eff_break_gm_kotubo(fopAc_ac_c*);
/* 80037330 */ void make_eff_break_gm_ootubo(fopAc_ac_c*);
/* 800373C0 */ void posMoveF_stream(fopAc_ac_c*, cXyz const*, cXyz const*, f32, f32);
/* 80037620 */ void posMoveF_grade(fopAc_ac_c*, cXyz const*, cXyz const*, f32, f32, cXyz const*,
                                   f32, f32, cXyz const*);
/* 80037788 */ void quat_rotBaseY(Quaternion*, cXyz const&);
/* 80037900 */ void HitSeStart(cXyz const*, int, dCcD_GObjInf const*, u32);
};  // namespace daObj

#endif /* D_A_D_A_OBJ_H */

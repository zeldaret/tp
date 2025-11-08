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
T PrmAbstract(const fopAc_ac_c* i_actor, T i_nbits, T i_shift) {
    u32 param = fopAcM_GetParam(i_actor);
    return T((param >> i_shift) & ((1 << i_nbits) - 1));
}

class HioVarious_c : public JORReflexible {
public:
    static void init(JORReflexible* node_ptr, const char* node_name);
    static void clean(JORReflexible* node_ptr);

    void genMessage(JORMContext*);

    /* 0x04 */ JORReflexible* node_ptrs[16];
    /* 0x44 */ const char* node_names[16];
    /* 0x84 */ u8 field_0x84;
};

};  // namespace daObj

#endif /* D_A_D_A_OBJ_H */

#ifndef D_A_OBJ_EFF_H
#define D_A_OBJ_EFF_H

#include "f_op/f_op_actor_mng.h"

namespace daObjEff {
class Act_c : public fopAc_ac_c {
public:
    enum Prm_e {
        PRM_0 = 0,
        PRM_8 = 8,
    };

    /* 8057C9D8 */ int _create();

    static void make_land_smoke(cXyz* i_pos, f32 i_scale) {
        cXyz scale(i_scale, i_scale, i_scale);
        scale *= 1.6666666f;
        fopAcM_create(PROC_Obj_Eff, 3, i_pos, -1, NULL, &scale, -1);
    }
};
};  // namespace daObjEff

struct daObj {
public:
    template <typename T>
    static int PrmAbstract(const fopAc_ac_c* param_0, T param_1, T param_2);
};


#endif /* D_A_OBJ_EFF_H */

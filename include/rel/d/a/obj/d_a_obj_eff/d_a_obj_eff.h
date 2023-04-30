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
};
};  // namespace daObjEff

#endif /* D_A_OBJ_EFF_H */

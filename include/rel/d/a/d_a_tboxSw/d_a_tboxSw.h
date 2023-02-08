#ifndef D_A_TBOXSW_H
#define D_A_TBOXSW_H

#include "f_op/f_op_actor_mng.h"

class daTboxSw_c : public fopAc_ac_c {
public:
    /* 80D66858 */ int Create();
    /* 80D66860 */ int create();
    /* 80D668C8 */ int execute();
    /* 80D66938 */ int draw();
    /* 80D66940 */ int _delete();
};

namespace daTboxSw_prm {
    inline u8 getTboxNo(daTboxSw_c* p_tbox) { return fopAcM_GetParam(p_tbox) & 0x3F; }
    inline u8 getSwNo(daTboxSw_c* p_tbox) { return fopAcM_GetParam(p_tbox) >> 8; }
};

#endif /* D_A_TBOXSW_H */

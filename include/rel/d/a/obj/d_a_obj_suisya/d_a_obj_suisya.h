#ifndef D_A_OBJ_SUISYA_H
#define D_A_OBJ_SUISYA_H

#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_s_acch.h"

/**
 * @ingroup actors-objects
 * @class daObj_Suisya_c
 * @brief Water Wheel
 *
 * @details
 *
 */
class daObj_Suisya_c : public fopAc_ac_c {
public:
    /* 80CF0078 */ int draw();
    /* 80CF0168 */ int execute();
    /* 80CF0234 */ int _delete();
    /* 80CF0284 */ int CreateHeap();
    /* 80CF0310 */ int create();

private:
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ u32 mShadowKey;
    /* 0x578 */ dBgS_AcchCir mAcchCir;
    /* 0x5B8 */ dBgS_ObjAcch mAcch;
};

STATIC_ASSERT(sizeof(daObj_Suisya_c) == 0x790);

#endif /* D_A_OBJ_SUISYA_H */

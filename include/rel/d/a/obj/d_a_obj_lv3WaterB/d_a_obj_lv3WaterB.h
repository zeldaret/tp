#ifndef D_A_OBJ_LV3WATERB_H
#define D_A_OBJ_LV3WATERB_H

#include "f_op/f_op_actor_mng.h"

enum obj_lv3waterB_action {
    LV3WATERB_ACT_WAIT,
    LV3WATERB_ACT_REMOVE,
    LV3WATERB_ACT_END,
};

/**
 * @ingroup actors-objects
 * @class obj_lv3WaterB_class
 * @brief Lakebed Temple Water (Boss)
 *
 * @details
 *
 */
class obj_lv3WaterB_class : public fopAc_ac_c {
public:
    /* 0x568 */ request_of_phase_process_class mBWaterPhase;
    /* 0x570 */ request_of_phase_process_class mOcthibiPhase;
    /* 0x578 */ J3DModel* mpBWaterModel;
    /* 0x57C */ mDoExt_btkAnm* mpBWaterBtk;
    /* 0x580 */ J3DModel* mpOctHibiModel;
    /* 0x584 */ s16 mAction;
    /* 0x586 */ s16 field_0x586;
    /* 0x588 */ u8 field_0x588[0x58C - 0x588];
    /* 0x58C */ Mtx mpBWaterMtx;
    /* 0x5BC */ dBgW* mpBWaterBgW;
    /* 0x5C0 */ u8 field_0x5C0[0x5C4 - 0x5C0];
    /* 0x5C4 */ Mtx mpOctHibiMtx;
    /* 0x5F4 */ dBgW* mpOctHibiBgW;
};

STATIC_ASSERT(sizeof(obj_lv3WaterB_class) == 0x5F8);

#endif /* D_A_OBJ_LV3WATERB_H */

#ifndef D_A_OBJ_BURNBOX_H
#define D_A_OBJ_BURNBOX_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjBurnBox_c
 * @brief Burn Box
 *
 * @details
 *
 */
class daObjBurnBox_c : public fopAc_ac_c {
public:
    /* 8046E698 */ void initBaseMtx();
    /* 8046E6D4 */ void setBaseMtx();
    /* 8046E738 */ void Create();
    /* 8046E8BC */ void CreateHeap();
    /* 8046E93C */ void create1st();
    /* 8046E9EC */ void Execute(f32 (**)[3][4]);
    /* 8046EABC */ void Draw();
    /* 8046EC10 */ void Delete();

    static void make_prm_burnbox(u32* param_0, u8 param_1) {
        *param_0 = param_1;
    }

private:
    /* 0x568 */ u8 field_0x568[0x740 - 0x568];
};

STATIC_ASSERT(sizeof(daObjBurnBox_c) == 0x740);


#endif /* D_A_OBJ_BURNBOX_H */

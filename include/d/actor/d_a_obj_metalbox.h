#ifndef D_A_OBJ_METALBOX_H
#define D_A_OBJ_METALBOX_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjMBox_c
 * @brief Metal Box
 *
 * @details
 *
 */
class daObjMBox_c : public fopAc_ac_c {
public:
    /* 80592E98 */ void initBaseMtx();
    /* 80592ED4 */ void setBaseMtx();
    /* 80592F48 */ void Create();
    /* 80592FD4 */ void CreateHeap();
    /* 80593044 */ void create();
    /* 805932C4 */ void Execute(f32 (**)[3][4]);
    /* 805932F0 */ void Draw();
    /* 80593394 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x944 - 0x568];
};

STATIC_ASSERT(sizeof(daObjMBox_c) == 0x944);


#endif /* D_A_OBJ_METALBOX_H */

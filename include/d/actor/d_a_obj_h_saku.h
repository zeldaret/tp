#ifndef D_A_OBJ_H_SAKU_H
#define D_A_OBJ_H_SAKU_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjH_Saku_c
 * @brief H - Fence
 *
 * @details
 *
 */
class daObjH_Saku_c : public fopAc_ac_c {
public:
    /* 80C1552C */ void BreakSet();
    /* 80C15810 */ void SpeedSet(cXyz*, cXyz*, f32);
    /* 80C15A4C */ void Action();
    /* 80C15E00 */ void initBaseMtx();
    /* 80C15E44 */ void setBaseMtx();
    /* 80C161E8 */ void CreateHeap();
    /* 80C1629C */ void Create();
    /* 80C162F4 */ void Execute(f32 (**)[3][4]);
    /* 80C16340 */ void Draw();
    /* 80C1641C */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x850 - 0x568];
};

STATIC_ASSERT(sizeof(daObjH_Saku_c) == 0x850);


#endif /* D_A_OBJ_H_SAKU_H */

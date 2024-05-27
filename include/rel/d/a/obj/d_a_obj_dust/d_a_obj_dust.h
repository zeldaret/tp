#ifndef D_A_OBJ_DUST_H
#define D_A_OBJ_DUST_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjDust_c
 * @brief Dust
 *
 * @details
 *
 */
class daObjDust_c : public fopAc_ac_c {
public:
    /* 80BE22B8 */ void Search_Ymb();
    /* 80BE2490 */ void RideOn_Angle(s16&, f32, s16, f32);
    /* 80BE24F8 */ void Check_RideOn();
    /* 80BE2708 */ void initBaseMtx();
    /* 80BE2734 */ void setBaseMtx();
    /* 80BE2A70 */ void CreateHeap();
    /* 80BE2AE8 */ void Create();
    /* 80BE2B30 */ void Execute(f32 (**)[3][4]);
    /* 80BE2E9C */ void Draw();
    /* 80BE2F40 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x84c - 0x568];
};
STATIC_ASSERT(sizeof(daObjDust_c) == 0x84c);


#endif /* D_A_OBJ_DUST_H */

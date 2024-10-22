#ifndef D_A_OBJ_BHBRIDGE_H
#define D_A_OBJ_BHBRIDGE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjBhbridge_c
 * @brief BH Bridge?
 *
 * @details
 *
 */
class daObjBhbridge_c : public fopAc_ac_c {
public:
    /* 80BB5318 */ void RideOn_Angle(s16&, f32, s16, f32);
    /* 80BB5380 */ void Check_RideOn();
    /* 80BB558C */ void initBaseMtx();
    /* 80BB55B8 */ void setBaseMtx();
    /* 80BB5934 */ void CreateHeap();
    /* 80BB59AC */ void Create();
    /* 80BB5A14 */ void Execute(f32 (**)[3][4]);
    /* 80BB5E10 */ void Draw();
    /* 80BB5EB4 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x810 - 0x568];
};

STATIC_ASSERT(sizeof(daObjBhbridge_c) == 0x810);


#endif /* D_A_OBJ_BHBRIDGE_H */

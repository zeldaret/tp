#ifndef D_A_OBJ_IKADA_H
#define D_A_OBJ_IKADA_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjIkada_c : public fopAc_ac_c {
public:
    /* 80C269B8 */ void RideOn_Angle(s16&, f32, s16, f32);
    /* 80C26A20 */ void Check_RideOn();
    /* 80C26C50 */ void initBaseMtx();
    /* 80C26C7C */ void setBaseMtx();
    /* 80C27028 */ void CreateHeap();
    /* 80C270A0 */ void Create();
    /* 80C270E0 */ void Execute(f32 (**)[3][4]);
    /* 80C27400 */ void Draw();
    /* 80C274A4 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x844 - 0x568];
};
STATIC_ASSERT(sizeof(daObjIkada_c) == 0x844);


#endif /* D_A_OBJ_IKADA_H */

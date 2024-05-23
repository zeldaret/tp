#ifndef D_A_OBJ_LV5YIBLLTRAY_H
#define D_A_OBJ_LV5YIBLLTRAY_H

#include "f_op/f_op_actor_mng.h"

class daObjYIblltray_c : public fopAc_ac_c {
public:
    /* 80C6EBF8 */ void create1st();
    /* 80C6EC88 */ void setMtx();
    /* 80C6EDA8 */ void CreateHeap();
    /* 80C6EEFC */ void Create();
    /* 80C6F1E8 */ void rideActor(fopAc_ac_c*);
    /* 80C6F23C */ void sendBall(unsigned int);
    /* 80C6F440 */ void onAttention();
    /* 80C6F450 */ void offAttention();
    /* 80C6F460 */ void Execute(f32 (**)[3][4]);
    /* 80C702E0 */ void initRotTo();
    /* 80C70330 */ void Draw();
    /* 80C70408 */ void Delete();
    /* 80C7088C */ ~daObjYIblltray_c();

private:
    /* 0x568 */ u8 field_0x568[0xa94 - 0x568];
};
STATIC_ASSERT(sizeof(daObjYIblltray_c) == 0xa94);


#endif /* D_A_OBJ_LV5YIBLLTRAY_H */

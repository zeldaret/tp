#ifndef D_A_OBJ_Y_TAIHOU_H
#define D_A_OBJ_Y_TAIHOU_H

#include "f_op/f_op_actor_mng.h"
#include "rel/d/a/obj/d_a_obj_carry/d_a_obj_carry.h"

/**
 * @ingroup actors-objects
 * @class daObjYtaihou_c
 * @brief Snowpeak Ruins Cannon
 *
 * @details
 *
 */
class daObjYtaihou_c : public fopAc_ac_c {
public:
    /* 80B9FDE8 */ void create1st();
    /* 80B9FEB0 */ void setIronBall(daObjCarry_c*);
    /* 80B9FF08 */ void getEvent(u8);
    /* 80B9FF1C */ void loadAngle();
    /* 80B9FFAC */ void saveAngle();
    /* 80BA0060 */ void setNextAngle();
    /* 80BA0084 */ void setMtx();
    /* 80BA0208 */ void rotateCheck();
    /* 80BA045C */ void shotCheck();
    /* 80BA0964 */ void eventStart();
    /* 80BA0974 */ void CreateHeap();
    /* 80BA09E4 */ void Create();
    /* 80BA0A94 */ void Execute(f32 (**)[3][4]);
    /* 80BA0B4C */ void Draw();
    /* 80BA0C1C */ void Delete();
    /* 80BA0FA4 */ ~daObjYtaihou_c();

private:
    /* 0x568 */ u8 field_0x568[0x778 - 0x568];
};

STATIC_ASSERT(sizeof(daObjYtaihou_c) == 0x778);


#endif /* D_A_OBJ_Y_TAIHOU_H */

#ifndef D_A_OBJ_HHASHI_H
#define D_A_OBJ_HHASHI_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjHHASHI_c
 * @brief Pillar
 *
 * @details
 *
 */
class daObjHHASHI_c : public fopAc_ac_c {
public:
    /* 8057F9B8 */ void initCcCylinder();
    /* 8057FA18 */ void setCcCylinder();
    /* 8057FA90 */ void Set_Hahen(cXyz*);
    /* 8057FDA8 */ void Set_Speed(s16, s16, f32, f32, f32, f32);
    /* 805801B0 */ void Obj_Damage();
    /* 80580358 */ void Wall_Check(s16);
    /* 8058043C */ void Hahen_Motion(s16);
    /* 805805F4 */ void CheckCull();
    /* 805807C4 */ void checkViewArea(int);
    /* 80580854 */ void Rolling(cXyz*, f32, f32, s8);
    /* 80580A48 */ void Roll_Set(cXyz*, f32, s16);
    /* 80580C80 */ void setBaseMtx();
    /* 80580DA4 */ void CreateHeap();
    /* 80580EA0 */ void create();
    /* 805811CC */ void Create();
    /* 80581210 */ void Execute(f32 (**)[3][4]);
    /* 805812BC */ void Draw();
    /* 8058140C */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x119c - 0x568];
};

STATIC_ASSERT(sizeof(daObjHHASHI_c) == 0x119c);


#endif /* D_A_OBJ_HHASHI_H */

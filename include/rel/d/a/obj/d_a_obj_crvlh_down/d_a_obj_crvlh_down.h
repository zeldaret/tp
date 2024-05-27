#ifndef D_A_OBJ_CRVLH_DOWN_H
#define D_A_OBJ_CRVLH_DOWN_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjCRVLH_DW_c
 * @brief Bulblin Tower (Lower Half) 
 *
 * @details
 *
 */
class daObjCRVLH_DW_c : public fopAc_ac_c {
public:
    /* 80BD4138 */ void initCcCylinder();
    /* 80BD41A4 */ void SetCcSyl();
    /* 80BD4268 */ void BgRelease();
    /* 80BD42D8 */ void Break();
    /* 80BD45A4 */ void Obj_Hit();
    /* 80BD4644 */ void setBaseMtx();
    /* 80BD46EC */ void CreateHeap();
    /* 80BD4764 */ void create();
    /* 80BD4A84 */ void Create();
    /* 80BD4AC8 */ void Execute(f32 (**)[3][4]);
    /* 80BD4C44 */ void Draw();
    /* 80BD4CC8 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x74c - 0x568];
};
STATIC_ASSERT(sizeof(daObjCRVLH_DW_c) == 0x74c);


#endif /* D_A_OBJ_CRVLH_DOWN_H */

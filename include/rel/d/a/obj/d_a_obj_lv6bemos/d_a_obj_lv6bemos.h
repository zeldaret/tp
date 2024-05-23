#ifndef D_A_OBJ_LV6BEMOS_H
#define D_A_OBJ_LV6BEMOS_H

#include "f_op/f_op_actor_mng.h"

class daObjL6Bm_c : public fopAc_ac_c {
public:
    /* 80C7CE24 */ void initBaseMtx();
    /* 80C7CE60 */ void setBaseMtx();
    /* 80C7CED4 */ void Create();
    /* 80C7CFD0 */ void CreateHeap();
    /* 80C7D2F8 */ void create1st();
    /* 80C7D3A4 */ void Execute(f32 (**)[3][4]);
    /* 80C7D4F4 */ void action();
    /* 80C7D598 */ void actionWait();
    /* 80C7D6CC */ void actionFindPlayer();
    /* 80C7D894 */ void actionAttack();
    /* 80C7D898 */ void Draw();
    /* 80C7DABC */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x918 - 0x568];
};
STATIC_ASSERT(sizeof(daObjL6Bm_c) == 0x918);


#endif /* D_A_OBJ_LV6BEMOS_H */

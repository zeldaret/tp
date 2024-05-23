#ifndef D_A_OBJ_ROTEN_H
#define D_A_OBJ_ROTEN_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObj_Roten_c : public fopAc_ac_c {
public:
    /* 80CC0B58 */ void initBaseMtx();
    /* 80CC0B94 */ void setBaseMtx();
    /* 80CC0C20 */ void Create();
    /* 80CC0EC4 */ void CreateHeap();
    /* 80CC0F40 */ void create();
    /* 80CC1038 */ void Execute(f32 (**)[3][4]);
    /* 80CC1138 */ void Draw();
    /* 80CC1254 */ void Delete();
    /* 80CC12E4 */ void getResName();
    /* 80CC1388 */ ~daObj_Roten_c();

private:
    /* 0x568 */ u8 field_0x568[0x5c8 - 0x568];
};
STATIC_ASSERT(sizeof(daObj_Roten_c) == 0x5c8);


#endif /* D_A_OBJ_ROTEN_H */

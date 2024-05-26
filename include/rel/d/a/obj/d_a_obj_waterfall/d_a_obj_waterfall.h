#ifndef D_A_OBJ_WATERFALL_H
#define D_A_OBJ_WATERFALL_H

#include "f_op/f_op_actor_mng.h"

class daObjWaterFall_c : public fopAc_ac_c {
public:
    /* 80D2ED14 */ void search_bomb();
    /* 80D2F034 */ void search_arrow();
    /* 80D2F324 */ void initBaseMtx();
    /* 80D2F344 */ void setBaseMtx();
    /* 80D2F39C */ void Create();
    /* 80D2F5A0 */ void create();
    /* 80D2F984 */ void execute();
    /* 80D2FA6C */ void push_player();
    /* 80D2FC94 */ bool draw();
    /* 80D2FC9C */ void _delete();

private:
    /* 0x568 */ u8 field_0x568[0x9cc - 0x568];
};
STATIC_ASSERT(sizeof(daObjWaterFall_c) == 0x9cc);


#endif /* D_A_OBJ_WATERFALL_H */

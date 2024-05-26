#ifndef D_A_OBJ_SWORD_H
#define D_A_OBJ_SWORD_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjSword_c : public fopAc_ac_c {
public:
    /* 80CFD558 */ void initBaseMtx();
    /* 80CFD594 */ void setBaseMtx();
    /* 80CFD600 */ void Create();
    /* 80CFD67C */ void create();
    /* 80CFDA14 */ void actionWait();
    /* 80CFDA8C */ void initActionOrderGetDemo();
    /* 80CFDB04 */ void actionOrderGetDemo();
    /* 80CFDB80 */ void actionGetDemo();
    /* 80CFDC1C */ void execute();
    /* 80CFDD18 */ void draw();
    /* 80CFDD6C */ void _delete();

private:
    /* 0x568 */ u8 field_0x568[0x938 - 0x568];
};
STATIC_ASSERT(sizeof(daObjSword_c) == 0x938);


#endif /* D_A_OBJ_SWORD_H */

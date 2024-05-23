#ifndef D_A_OBJ_LV3WATER_H
#define D_A_OBJ_LV3WATER_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daLv3Water_c : public fopAc_ac_c {
public:
    /* 80C58838 */ void setBaseMtx();
    /* 80C5891C */ void CreateHeap();
    /* 80C58ABC */ void create();
    /* 80C58D68 */ void Execute(f32 (**)[3][4]);
    /* 80C58E20 */ void effectSet();
    /* 80C596F4 */ void mode_proc_wait();
    /* 80C59754 */ void mode_init_levelCtrl();
    /* 80C597FC */ void mode_proc_levelCtrl();
    /* 80C598BC */ void Draw();
    /* 80C59AA0 */ void Delete();
    /* 80C59AE0 */ void eventStart();
    /* 80C59D80 */ ~daLv3Water_c();

private:
    /* 0x568 */ u8 field_0x568[0x628 - 0x568];
};
STATIC_ASSERT(sizeof(daLv3Water_c) == 0x628);

class daLv3Water_HIO_c {
public:
    /* 80C587CC */ daLv3Water_HIO_c();
    /* 80C59C34 */ ~daLv3Water_HIO_c();
};


#endif /* D_A_OBJ_LV3WATER_H */

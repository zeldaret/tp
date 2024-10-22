#ifndef D_A_OBJ_LV3WATER2_H
#define D_A_OBJ_LV3WATER2_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daLv3Water2_c
 * @brief Lakebed Temple Water 2
 *
 * @details
 *
 */
class daLv3Water2_c : public fopAc_ac_c {
public:
    /* 80C5A478 */ void setBaseMtx();
    /* 80C5A4F8 */ void CreateHeap();
    /* 80C5A5E4 */ void create();
    /* 80C5A844 */ void Execute(f32 (**)[3][4]);
    /* 80C5AC10 */ void mode_proc_wait();
    /* 80C5ACB8 */ void mode_init_levelCtrl();
    /* 80C5ACE4 */ void mode_proc_levelCtrl();
    /* 80C5ADA4 */ void Draw();
    /* 80C5AEFC */ void Delete();
    /* 80C5AF3C */ void eventStart();
    /* 80C5B298 */ ~daLv3Water2_c();

private:
    /* 0x568 */ u8 field_0x568[0x610 - 0x568];
};

STATIC_ASSERT(sizeof(daLv3Water2_c) == 0x610);

class daLv3Water2_HIO_c {
public:
    /* 80C5A40C */ daLv3Water2_HIO_c();
    /* 80C5B14C */ ~daLv3Water2_HIO_c();
};


#endif /* D_A_OBJ_LV3WATER2_H */

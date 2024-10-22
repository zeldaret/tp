#ifndef D_A_OBJ_PDOOR_H
#define D_A_OBJ_PDOOR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjPDoor_c
 * @brief Push Door
 *
 * @details
 *
 */
class daObjPDoor_c : public fopAc_ac_c {
public:
    /* 80CA9F9C */ void initBaseMtx();
    /* 80CA9FD8 */ void setBaseMtx();
    /* 80CAA03C */ void Create();
    /* 80CAA14C */ void CreateHeap();
    /* 80CAA1BC */ void create1st();
    /* 80CAA23C */ void Execute(f32 (**)[3][4]);
    /* 80CAA290 */ void mode_proc_call();
    /* 80CAA31C */ void init_modeWait();
    /* 80CAA354 */ void modeWait();
    /* 80CAA698 */ void init_modeRotate();
    /* 80CAA6B4 */ void modeRotate();
    /* 80CAA968 */ void Draw();
    /* 80CAAA0C */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5c4 - 0x568];
};

STATIC_ASSERT(sizeof(daObjPDoor_c) == 0x5c4);


#endif /* D_A_OBJ_PDOOR_H */

#ifndef D_A_OBJ_LV6SWTURN_H
#define D_A_OBJ_LV6SWTURN_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjLv6SwTurn_c
 * @brief Temple of Time Turn Switch
 *
 * @details
 *
 */
class daObjLv6SwTurn_c : public fopAc_ac_c {
public:
    /* 80C83A98 */ void initBaseMtx();
    /* 80C83AD4 */ void setBaseMtx();
    /* 80C83B38 */ void Create();
    /* 80C83C10 */ void CreateHeap();
    /* 80C83C80 */ void create1st();
    /* 80C83D04 */ void Execute(f32 (**)[3][4]);
    /* 80C83D94 */ void mode_proc_call();
    /* 80C83E20 */ void init_modeWait();
    /* 80C83E58 */ void modeWait();
    /* 80C84238 */ void init_modeRotate();
    /* 80C8425C */ void modeRotate();
    /* 80C844F8 */ void Draw();
    /* 80C8459C */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5cc - 0x568];
};

STATIC_ASSERT(sizeof(daObjLv6SwTurn_c) == 0x5cc);


#endif /* D_A_OBJ_LV6SWTURN_H */

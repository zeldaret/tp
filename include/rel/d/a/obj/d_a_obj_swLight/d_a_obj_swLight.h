#ifndef D_A_OBJ_SWLIGHT_H
#define D_A_OBJ_SWLIGHT_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjSwLight_c
 * @brief Light Switch
 *
 * @details
 *
 */
class daObjSwLight_c : public fopAc_ac_c {
public:
    /* 80CF6F98 */ void initBaseMtx();
    /* 80CF6FD4 */ void setBaseMtx();
    /* 80CF7038 */ void Create();
    /* 80CF71F0 */ void CreateHeap();
    /* 80CF7260 */ void create1st();
    /* 80CF7320 */ void Execute(f32 (**)[3][4]);
    /* 80CF73E0 */ void action();
    /* 80CF761C */ void init_modeSwOnWait();
    /* 80CF766C */ void modeSwOnWait();
    /* 80CF777C */ void init_modeOnLight();
    /* 80CF7788 */ void modeOnLight();
    /* 80CF77D8 */ void init_modeSwOffWait();
    /* 80CF7838 */ void modeSwOffWait();
    /* 80CF7974 */ void modeDead();
    /* 80CF7978 */ void checkHit();
    /* 80CF7A6C */ void setOnTimer();
    /* 80CF7A98 */ void Draw();
    /* 80CF7BA8 */ void Delete();
    /* 80CF8124 */ ~daObjSwLight_c();

private:
    /* 0x568 */ u8 field_0x568[0xb28 - 0x568];
};
STATIC_ASSERT(sizeof(daObjSwLight_c) == 0xb28);


#endif /* D_A_OBJ_SWLIGHT_H */

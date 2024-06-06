#ifndef D_A_OBJ_MVSTAIR_H
#define D_A_OBJ_MVSTAIR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjStair_c
 * @brief Moving Stairs
 *
 * @details
 *
 */
class daObjStair_c : public fopAc_ac_c {
public:
    /* 80C9D098 */ void initBaseMtx();
    /* 80C9D0D4 */ void setBaseMtx();
    /* 80C9D148 */ void Create();
    /* 80C9D2B8 */ void CreateHeap();
    /* 80C9D338 */ void create1st();
    /* 80C9D41C */ void event_proc_call();
    /* 80C9D4D8 */ void mode_proc_call();
    /* 80C9D594 */ void Execute(f32 (**)[3][4]);
    /* 80C9D710 */ void Draw();
    /* 80C9D7B4 */ void Delete();
    /* 80C9D82C */ void actionWait();
    /* 80C9D8EC */ void actionOrderEvent();
    /* 80C9D95C */ void actionEvent();
    /* 80C9D9BC */ bool actionEnd();
    /* 80C9D9C4 */ void modeWaitUpperInit();
    /* 80C9D9F4 */ void modeWaitUpper();
    /* 80C9DA98 */ void modeUpperInit();
    /* 80C9DADC */ void modeUpper();
    /* 80C9DF18 */ void modeWaitLowerInit();
    /* 80C9DF60 */ void modeWaitLower();
    /* 80C9E004 */ void modeLowerInit();
    /* 80C9E034 */ void modeLower();
    /* 80C9E3D8 */ void setParticle();
    /* 80C9E5A0 */ void removeParticle();

private:
    /* 0x568 */ u8 field_0x568[0x66c - 0x568];
};

STATIC_ASSERT(sizeof(daObjStair_c) == 0x66c);


#endif /* D_A_OBJ_MVSTAIR_H */

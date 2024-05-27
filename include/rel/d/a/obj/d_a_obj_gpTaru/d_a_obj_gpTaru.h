#ifndef D_A_OBJ_GPTARU_H
#define D_A_OBJ_GPTARU_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daGpTaru_c
 * @brief Gunpowder Barrel
 *
 * @details
 *
 */
class daGpTaru_c : public fopAc_ac_c {
public:
    /* 8057D1F8 */ void setBaseMtx();
    /* 8057D2D0 */ void CreateHeap();
    /* 8057D33C */ void create();
    /* 8057D7CC */ void createHeapCallBack(fopAc_ac_c*);
    /* 8057DB3C */ void chkSinkAll();
    /* 8057DB60 */ void chkWaterLineIn();
    /* 8057DB84 */ void bgCheck();
    /* 8057E224 */ void Execute();
    /* 8057E494 */ void mode_proc_call();
    /* 8057E5DC */ void mode_init_wait();
    /* 8057E618 */ void mode_proc_wait();
    /* 8057E63C */ void mode_init_carry();
    /* 8057E660 */ void mode_proc_carry();
    /* 8057E700 */ void mode_init_drop();
    /* 8057E72C */ void mode_proc_drop();
    /* 8057E750 */ void mode_init_roll();
    /* 8057E768 */ void mode_proc_roll();
    /* 8057EBA4 */ void mode_init_exploInit();
    /* 8057EC60 */ void mode_proc_exploInit();
    /* 8057EE2C */ void mode_init_explosion();
    /* 8057EFB0 */ void mode_proc_explosion();
    /* 8057EFFC */ void mode_init_sink();
    /* 8057F014 */ void mode_proc_sink();
    /* 8057F104 */ void breakEffSet();
    /* 8057F284 */ void Draw();
    /* 8057F328 */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x9ac - 0x568];
};
STATIC_ASSERT(sizeof(daGpTaru_c) == 0x9ac);

class daGpTaru_HIO_c {
public:
    /* 8057D0CC */ daGpTaru_HIO_c();
    /* 8057F458 */ ~daGpTaru_HIO_c();
};


#endif /* D_A_OBJ_GPTARU_H */

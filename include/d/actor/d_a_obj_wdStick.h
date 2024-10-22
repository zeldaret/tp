#ifndef D_A_OBJ_WDSTICK_H
#define D_A_OBJ_WDSTICK_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daWdStick_c
 * @brief Wooden Stick
 *
 * @details
 *
 */
class daWdStick_c : public fopAc_ac_c {
public:
    /* 80D31BD0 */ void setBaseMtx();
    /* 80D31C58 */ void CreateHeap();
    /* 80D31CC4 */ void create();
    /* 80D32168 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80D32194 */ void lightInit();
    /* 80D32198 */ void setLight();
    /* 80D3219C */ void setFire();
    /* 80D3269C */ void Execute();
    /* 80D32DB4 */ void bgCheck();
    /* 80D33348 */ void setBoundSe();
    /* 80D333F4 */ void mode_proc_call();
    /* 80D3350C */ void mode_init_wait();
    /* 80D3353C */ void mode_proc_wait();
    /* 80D33588 */ void mode_init_carry();
    /* 80D335AC */ void mode_proc_carry();
    /* 80D3386C */ void mode_init_drop();
    /* 80D33890 */ void mode_proc_drop();
    /* 80D338DC */ void mode_init_roll();
    /* 80D338F4 */ void mode_proc_roll();
    /* 80D33D44 */ void chkWaterLineIn();
    /* 80D33D68 */ void mode_init_sink();
    /* 80D33D8C */ void mode_proc_sink();
    /* 80D33EB0 */ void Draw();
    /* 80D33F14 */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDSph[64];

private:
    /* 0x568 */ u8 field_0x568[0xaf8 - 0x568];
};

STATIC_ASSERT(sizeof(daWdStick_c) == 0xaf8);

class daWdStick_HIO_c {
public:
    /* 80D31B4C */ daWdStick_HIO_c();
    /* 80D34030 */ ~daWdStick_HIO_c();
};


#endif /* D_A_OBJ_WDSTICK_H */

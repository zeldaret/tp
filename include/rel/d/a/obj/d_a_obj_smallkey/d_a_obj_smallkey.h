#ifndef D_A_OBJ_SMALLKEY_H
#define D_A_OBJ_SMALLKEY_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daKey_c
 * @brief Small Key
 *
 * @details
 *
 */
class daKey_c : public fopAc_ac_c {
    /* 80CD9F2C */ void initBaseMtx();
    /* 80CD9F68 */ void setBaseMtx();
    /* 80CD9FDC */ void Create();
    /* 80CDA15C */ bool __CreateHeap();
    /* 80CDA164 */ void create();
    /* 80CDA680 */ void bg_check();
    /* 80CDA7E8 */ void actionInitInit();
    /* 80CDA81C */ void actionInit();
    /* 80CDA8C8 */ void actionParentWaitInit();
    /* 80CDA8FC */ void actionParentWait();
    /* 80CDA9AC */ void actionWaitInit();
    /* 80CDAA28 */ void actionWait();
    /* 80CDAB74 */ void initActionOrderGetDemo();
    /* 80CDAC18 */ void actionOrderGetDemo();
    /* 80CDAC94 */ void actionGetDemo();
    /* 80CDAD28 */ void actionInitSwOnWait();
    /* 80CDADD4 */ void actionSwOnWait();
    /* 80CDAE54 */ void actionInitBoomerangCarry();
    /* 80CDAF40 */ void actionBoomerangCarry();
    /* 80CDAFB4 */ void effectSet();
    /* 80CDB0D8 */ void effectStop();
    /* 80CDB128 */ void effectCtrl();
    /* 80CDB2E0 */ void seStartTwinkle_private(u32);
    /* 80CDB36C */ void actionInitE_GB();
    /* 80CDB3D8 */ void actionE_GB();
    /* 80CDB404 */ void execute();
    /* 80CDB5D4 */ void draw();
    /* 80CDB628 */ void _delete();
private:
    /* 0x568 */ u8 field_0x568[0x988 - 0x568];
};
STATIC_ASSERT(sizeof(daKey_c) == 0x988);


#endif /* D_A_OBJ_SMALLKEY_H */

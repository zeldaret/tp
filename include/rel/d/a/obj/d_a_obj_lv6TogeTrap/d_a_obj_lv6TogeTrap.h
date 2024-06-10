#ifndef D_A_OBJ_LV6TOGETRAP_H
#define D_A_OBJ_LV6TOGETRAP_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daLv6TogeTrap_c
 * @brief Temple of Time Spiked Trap
 *
 * @details
 *
 */
class daLv6TogeTrap_c : public fopAc_ac_c {
public:
    /* 80C79F10 */ void setBaseMtx();
    /* 80C79FE8 */ void CreateHeap();
    /* 80C7A068 */ void create();
    /* 80C7A6B0 */ void searchSekizoAct(void*, void*);
    /* 80C7A700 */ void Execute(f32 (**)[3][4]);
    /* 80C7A97C */ void moveLift();
    /* 80C7ABC8 */ void executeType1();
    /* 80C7ACA0 */ void init_modeBound();
    /* 80C7AD40 */ void modeBound();
    /* 80C7ADA4 */ void init_modeBoundWait();
    /* 80C7ADC0 */ void modeBoundWait();
    /* 80C7AE18 */ void init_modeAcc();
    /* 80C7AE24 */ void modeAcc();
    /* 80C7AF10 */ void init_modeMove();
    /* 80C7AF1C */ void modeMove();
    /* 80C7B234 */ void init_modeBrk();
    /* 80C7B240 */ void modeBrk();
    /* 80C7B43C */ void init_modeMove2();
    /* 80C7B448 */ void modeMove2();
    /* 80C7B518 */ void init_modeWaitInit();
    /* 80C7B530 */ void modeWaitInit();
    /* 80C7B600 */ void init_modeWait();
    /* 80C7B60C */ void modeWait();
    /* 80C7B6D4 */ void executeType2();
    /* 80C7B988 */ void init_modeWaitType2();
    /* 80C7B9A8 */ void modeWaitType2();
    /* 80C7BA38 */ void init_modeMoveInitType2();
    /* 80C7BA50 */ void modeMoveInitType2();
    /* 80C7BAE8 */ void init_modeAccType2();
    /* 80C7BAF4 */ void modeAccType2();
    /* 80C7BC54 */ void init_modeWaitAttackType2();
    /* 80C7BC7C */ void modeWaitAttackType2();
    /* 80C7BD64 */ void init_modeRotate();
    /* 80C7BD70 */ void modeRotate();
    /* 80C7BED8 */ void init_modeBreak();
    /* 80C7BFE4 */ void modeBreak();
    /* 80C7C1D8 */ void setNextPoint();
    /* 80C7C33C */ void Draw();
    /* 80C7C3E0 */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 const mCcDObjInfo2[48];
    static u8 const mSpeed[64];
    static u8 mCcDSph[64];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x8f4 - 0x568];
};

STATIC_ASSERT(sizeof(daLv6TogeTrap_c) == 0x8f4);

class daLv6TogeTrap_HIO_c {
public:
    /* 80C79E4C */ daLv6TogeTrap_HIO_c();
    /* 80C7C504 */ ~daLv6TogeTrap_HIO_c();
};

#endif /* D_A_OBJ_LV6TOGETRAP_H */

#ifndef D_A_OBJ_TAFENCE_H
#define D_A_OBJ_TAFENCE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daTaFence_c
 * @brief Fench/Mesh?
 *
 * @details
 *
 */
class daTaFence_c : public fopAc_ac_c {
public:
    /* 80D04F8C */ void setBaseMtx();
    /* 80D0503C */ void CreateHeap();
    /* 80D050A8 */ void create();
    /* 80D05550 */ void Execute(f32 (**)[3][4]);
    /* 80D055A0 */ void fenceProc();
    /* 80D057C4 */ void init_modeWait();
    /* 80D057D0 */ void modeWait();
    /* 80D05A54 */ void init_modeMoveInit();
    /* 80D05B5C */ void modeMoveInit();
    /* 80D05B94 */ void init_modeMove();
    /* 80D05CAC */ void modeMove();
    /* 80D05D2C */ void init_modeMoveEnd();
    /* 80D05E54 */ void modeMoveEnd();
    /* 80D05E58 */ void Draw();
    /* 80D05EFC */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x13d4 - 0x568];
};

STATIC_ASSERT(sizeof(daTaFence_c) == 0x13d4);

class daTaFence_HIO_c {
public:
    /* 80D04E6C */ daTaFence_HIO_c();
    /* 80D06000 */ ~daTaFence_HIO_c();
};


#endif /* D_A_OBJ_TAFENCE_H */

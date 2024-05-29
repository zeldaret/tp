#ifndef D_A_OBJ_TURARA_H
#define D_A_OBJ_TURARA_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daTurara_c
 * @brief Icicle
 *
 * @details
 *
 */
class daTurara_c : public fopAc_ac_c {
public:
    /* 80B9CC9C */ void setBaseMtx();
    /* 80B9CD74 */ void CreateHeap();
    /* 80B9CED8 */ void create();
    /* 80B9D468 */ void setFallStat();
    /* 80B9D4CC */ void Execute(f32 (**)[3][4]);
    /* 80B9D548 */ void move();
    /* 80B9D72C */ void init_modeWait();
    /* 80B9D738 */ void modeWait();
    /* 80B9D998 */ void eventStart();
    /* 80B9D9BC */ void init_modeDropInit();
    /* 80B9DA00 */ void modeDropInit();
    /* 80B9DA44 */ void init_modeDrop();
    /* 80B9DB44 */ void modeDrop();
    /* 80B9DB90 */ void bgCheck();
    /* 80B9DBD0 */ void init_modeDropEnd();
    /* 80B9DE48 */ void modeDropEnd();
    /* 80B9E078 */ void init_modeDropEnd2();
    /* 80B9E338 */ void modeDropEnd2();
    /* 80B9E388 */ void Draw();
    /* 80B9E478 */ void Delete();
    /* 80B9E710 */ ~daTurara_c();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x998 - 0x568];
};
STATIC_ASSERT(sizeof(daTurara_c) == 0x998);

class daTurara_HIO_c {
public:
    /* 80B9CB8C */ daTurara_HIO_c();
    /* 80B9E5B4 */ ~daTurara_HIO_c();
};

#endif /* D_A_OBJ_TURARA_H */

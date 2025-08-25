#ifndef D_A_OBJ_POCANDLE_H
#define D_A_OBJ_POCANDLE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daPoCandle_c
 * @brief Poe Torch
 *
 * @details
 *
 */
class daPoCandle_c : public fopAc_ac_c {
public:
    /* 80CB1AE4 */ void setBaseMtx();
    /* 80CB1B6C */ void CreateHeap();
    /* 80CB1BD8 */ void create();
    /* 80CB1D74 */ void lightInit();
    /* 80CB1E00 */ void setLight();
    /* 80CB1E30 */ void cutLight();
    /* 80CB1E60 */ void pointLightProc();
    /* 80CB1F10 */ void Execute(f32 (**)[3][4]);
    /* 80CB2140 */ void init_modeWait();
    /* 80CB214C */ void modeWait();
    /* 80CB21D8 */ void init_modeOnFire();
    /* 80CB22D4 */ void modeOnFire();
    /* 80CB22F4 */ void modeOnSwWait();
    /* 80CB2354 */ void init_modeEnd();
    /* 80CB2360 */ void modeEnd();
    /* 80CB2364 */ void eventStart();
    /* 80CB2388 */ void Draw();
    /* 80CB242C */ void Delete();
    /* 80CB2610 */ ~daPoCandle_c();

    /* 80CB3E3C */ cXyz getFirePos() { return static_cast<cXyz>(mFirePos); }
    u8 getIDNum() {return mIDNum;}
    void setFireFlag(u8 flag) { field_0x5D2 = flag; }

private:
    /* 0x568 */ u8 field_0x568[0x5C4 - 0x568];
    /* 0x5C4 */ cXyz mFirePos;
    /* 0x5D0 */ u8 field_0x5D0[0x5D2 - 0x5D0];
    /* 0x5D2 */ u8 field_0x5D2;
    /* 0x5D3 */ u8 field_0x5D3[0x5D5 - 0x5D3];
    /* 0x5D5 */ u8 mIDNum;
    /* 0x5DB */ u8 field_0x5DB[0x614 - 0x5D6];
};

STATIC_ASSERT(sizeof(daPoCandle_c) == 0x614);

class daPoCandle_HIO_c {
public:
    /* 80CB1A6C */ daPoCandle_HIO_c();
    /* 80CB2508 */ ~daPoCandle_HIO_c();
};


#endif /* D_A_OBJ_POCANDLE_H */

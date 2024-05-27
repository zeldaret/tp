#ifndef D_A_OBJ_RFHOLE_H
#define D_A_OBJ_RFHOLE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daRfHole_c
 * @brief (Kakariko?) Roof Hole
 *
 * @details
 *
 */
class daRfHole_c : public fopAc_ac_c {
public:
    /* 80CB8F04 */ void setBaseMtx();
    /* 80CB8F8C */ void CreateHeap();
    /* 80CB8FF8 */ void create();
    /* 80CB9148 */ void rideCallBack(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80CB9194 */ void playerAreaCheck();
    /* 80CB940C */ void Execute(f32 (**)[3][4]);
    /* 80CB9464 */ void holeProc();
    /* 80CB9520 */ void init_modeWait();
    /* 80CB952C */ void modeWait();
    /* 80CB9558 */ void init_modeBreak();
    /* 80CB96AC */ void modeBreak();
    /* 80CB96CC */ void init_modeBreakEff();
    /* 80CB971C */ void modeBreakEff();
    /* 80CB973C */ void init_modeEnd();
    /* 80CB9748 */ void modeEnd();
    /* 80CB9768 */ void setBreakEffect();
    /* 80CB9878 */ void Draw();
    /* 80CB991C */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5b4 - 0x568];
};
STATIC_ASSERT(sizeof(daRfHole_c) == 0x5b4);

class daRfHole_HIO_c {
public:
    /* 80CB8E6C */ daRfHole_HIO_c();
    /* 80CB99D8 */ ~daRfHole_HIO_c();
};


#endif /* D_A_OBJ_RFHOLE_H */

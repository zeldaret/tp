#ifndef D_A_OBJ_BOMBF_H
#define D_A_OBJ_BOMBF_H

#include "d/com/d_com_inf_game.h"
#include "d/d_bomb.h"

class daObjBombf_c : public fopAc_ac_c {
public:
    /* 80BBA9F8 */ bool createHeap();
    /* 80BBAA84 */ int create();
    /* 80BBABBC */ ~daObjBombf_c();
    /* 80BBAC4C */ void setMatrix();
    /* 80BBACC0 */ int execute();
    /* 80BBADF8 */ int draw();

    /* 0x568 */ request_of_phase_process_class field_0x568;
    /* 0x570 */ J3DModel* field_0x570;
    /* 0x574 */ u32 field_0x574;
    /* 0x578 */ u8 field_0x578;
    /* 0x57C */ u32 field_0x57c;
    /* 0x580 */ u16 field_0x580;
    /* 0x582 */ u8 field_0x582;
    /* 0x584 */ f32 field_0x584;
};  // Size: 0x588

#endif /* D_A_OBJ_BOMBF_H */

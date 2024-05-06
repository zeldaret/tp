#ifndef D_A_KYTAG03_H
#define D_A_KYTAG03_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_path.h"

class kytag03_class : public fopAc_ac_c {
public:
    /* 0x568 */ dPath* mpPath;
    /* 0x56C */ JPABaseEmitter* mpEmitter;
    /* 0x570 */ f32 field_0x570;
    /* 0x574 */ f32 field_0x574;
    /* 0x578 */ f32 field_0x578;
    /* 0x57C */ f32 field_0x57c;
    /* 0x580 */ int field_0x580;
    /* 0x584 */ u8 field_0x584;
    /* 0x585 */ u8 field_0x585;
    /* 0x586 */ u8 field_0x586;
    /* 0x587 */ u8 field_0x587;
    /* 0x588 */ u8 field_0x588;
    /* 0x589 */ u8 field_0x589;
    /* 0x58A */ u16 field_0x58a;
    /* 0x58C */ u8 field_0x58C[0x58E - 0x58C];
    /* 0x58E */ u8 field_0x58e;
};

#endif /* D_A_KYTAG03_H */

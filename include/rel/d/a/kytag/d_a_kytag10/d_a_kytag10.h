#ifndef D_A_KYTAG10_H
#define D_A_KYTAG10_H

#include "f_op/f_op_actor_mng.h"

struct dPath;

class kytag10_class : public fopAc_ac_c {
public:
    /* 0x568 */ dPath* mpPath;
    /* 0x56C */ JPABaseEmitter* mpEmitter1;
    /* 0x570 */ JPABaseEmitter* mpEmitter2;
    /* 0x574 */ cXyz mEmitterPtclScale;
    /* 0x580 */ s16 mEmitterVolSize;
    /* 0x582 */ s16 mEmitterLifeTime;
    /* 0x584 */ u8 field_0x584;
    /* 0x588 */ cXyz field_0x588;
    /* 0x594 */ f32 field_0x594;
    /* 0x598 */ int mPathPoint;
};

#endif /* D_A_KYTAG10_H */

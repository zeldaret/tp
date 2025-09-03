#ifndef D_A_OBJ_NAN_H
#define D_A_OBJ_NAN_H

#include "SSystem/SComponent/c_phase.h"
#include "d/d_insect.h"
#include "d/actor/d_a_player.h"
#include "d/d_cc_d.h"

class daPy_boomerangMove_c;

/**
 * @ingroup actors-objects
 * @class daObjNAN_c
 * @brief Insect - Phasmid
 *
 * @details
 *
 */
class daObjNAN_c : public dInsect_c {
public:
    typedef void (daObjNAN_c::*actionFunc)();

    /* 80CA05D4 */ void setAction(actionFunc);
    /* 80CA0978 */ void nan_posMove();
    /* 80CA0A2C */ void turn();
    /* 80CA0D9C */ u8 nan_WalkAnm();
    /* 80CA0E7C */ void wait();
    /* 80CA1184 */ void walk();
    /* 80CA1904 */ void bin_wait();
    /* 80CA1A20 */ void bin_action();
    /* 80CA1B50 */ void nan_setParticle();
    /* 80CA1D5C */ void hook();
    /* 80CA1F60 */ void boomerang();
    /* 80CA2368 */ void drop();
    /* 80CA2658 */ void hit_check();
    /* 80CA270C */ void action();
    /* 80CA276C */ int execute();
    /* 80CA2904 */ int _delete();
    /* 80CA296C */ void setBaseMtx();
    /* 80CA2B68 */ int create();

    inline int CreateHeap();
    inline int draw();

private:
    /* 0x590 */ request_of_phase_process_class mPhase;
    /* 0x598 */ Z2Creature mCreatureSound;
    /* 0x628 */ mDoExt_McaMorfSO* mMorf;
    /* 0x62C */ mDoExt_brkAnm* mBrk;
    /* 0x630 */ mDoExt_btkAnm* mBtk;
    /* 0x634 */ dCcD_Stts mStts;
    /* 0x670 */ dCcD_Sph mSph;
    /* 0x7A8 */ daPy_boomerangMove_c mBoomerangMove;
    /* 0x7B4 */ int field_0x7b4;
    /* 0x7B8 */ actionFunc mAction;
    /* 0x7C4 */ actionFunc mPrevAction;
    /* 0x7D0 */ int field_0x7d0;
    /* 0x7D4 */ csXyz field_0x7d4;
    /* 0x7DA */ csXyz field_0x7da;
    /* 0x7E0 */ s16 field_0x7e0;
    /* 0x7E2 */ s16 field_0x7e2;
    /* 0x7E4 */ s16 field_0x7e4;
    /* 0x7E8 */ f32 field_0x7e8;
    /* 0x7E6 */ u8 field_0x7e6[0x7f8 - 0x7ec];
    /* 0x7F8 */ u16 field_0x7f8;
    /* 0x7FA */ u8 field_0x7fa;
    /* 0x7FB */ u8 field_0x7fb;
    /* 0x7FC */ u8 field_0x7fc;
    /* 0x7FC */ u8 field_0x7fd;
};

STATIC_ASSERT(sizeof(daObjNAN_c) == 0x800);

#endif /* D_A_OBJ_NAN_H */

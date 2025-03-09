#ifndef D_A_E_KG_H
#define D_A_E_KG_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-enemies
 * @class e_kg_class
 * @brief Young Gohma
 * 
 * @details 
 * 
 */
class e_kg_class : public fopEn_enemy_c {
public:
    /* 0x5ac */ request_of_phase_process_class mPhase;
    /* 0x5b4 */ u8 field_0x5b4;
    /* 0x5b5 */ u8 field_0x5b5;
    /* 0x5b8 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x5bc */ Z2CreatureEnemy mSound;
    /* 0x660 */ mDoExt_btpAnm* mpBtp;
    /* 0x664 */ u8 field_0x664[0x668 - 0x664];
    /* 0x668 */ int mResIndex;
    /* 0x66c */ s16 field_0x66c;
    /* 0x66e */ u8 field_0x66e[0x674 - 0x66e];
    /* 0x674 */ s16 field_0x674;
    /* 0x676 */ s16 field_0x676;
    /* 0x678 */ s16 field_0x678;
    /* 0x67a */ u8 field_0x67a[0x688 - 0x67a];
    /* 0x688 */ s16 field_0x688;
    /* 0x68a */ u8 field_0x68a[0x68c - 0x68a];
    /* 0x68c */ s16 field_0x68c;
    /* 0x690 */ f32 field_0x690;
    /* 0x694 */ s16 field_0x694;
    /* 0x696 */ s16 field_0x696;
    /* 0x698 */ u8 field_0x698[0x69c - 0x698];
    /* 0x69c */ s16 field_0x69c;
    /* 0x6a0 */ int mShadowKey;
    /* 0x6a4 */ dBgS_AcchCir mAcchCir;
    /* 0x6e4 */ dBgS_ObjAcch mAcch;
    /* 0x8bc */ dCcD_Stts mStts;
    /* 0x8f8 */ dCcD_Sph mSph;
    /* 0xa30 */ dCcU_AtInfo mAtInfo;
    /* 0xa54 */ s16 field_0xa54;
    /* 0xa56 */ u8 field_0xa56[0xa70 - 0xa56];
    /* 0xa70 */ u8 field_0xa70;
};

STATIC_ASSERT(sizeof(e_kg_class) == 0xa74);

class daE_KG_HIO_c {
public:
    /* 806F7EEC */ daE_KG_HIO_c();
    /* 806F9EE8 */ virtual ~daE_KG_HIO_c() {}

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0c */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
};


#endif /* D_A_E_KG_H */

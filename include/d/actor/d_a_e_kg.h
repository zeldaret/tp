#ifndef D_A_E_KG_H
#define D_A_E_KG_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

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
    /* 0x5b8 */ mDoExt_McaMorf* mpMorf;
    /* 0x5bc */ Z2CreatureEnemy mSound;
    /* 0x660 */ u8 field_0x660[0x674 - 0x660];
    /* 0x674 */ s16 field_0x674;
    /* 0x676 */ s16 field_0x676;
    /* 0x678 */ u8 field_0x678[0x6a4 - 0x678];
    /* 0x6a4 */ dBgS_AcchCir mAcchCir;
    /* 0x6e4 */ dBgS_ObjAcch mAcch;
    /* 0x8bc */ dCcD_Stts mStts;
    /* 0x8f8 */ dCcD_Sph mSph;
    /* 0xa30 */ u8 field_0xa30[0xa38 - 0xa30];
    /* 0xa38 */ Z2CreatureEnemy* mpSound;
    /* 0xa3c */ u8 field_0xa3c[0xa4e - 0xa3c];
    /* 0xa4e */ u8 field_0xa4e;
    /* 0xa4f */ u8 field_0xa4f[0xa70 - 0xa4f];
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

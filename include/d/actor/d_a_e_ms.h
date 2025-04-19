#ifndef D_A_E_MS_H
#define D_A_E_MS_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_ms_class
 * @brief Rat
 * 
 * @details 
 * 
 */
class e_ms_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ s16 field_0x5b4;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 field_0x5b7;
    /* 0x5B8 */ int field_0x5b8;
    /* 0x5BC */ cXyz field_0x5bc;
    /* 0x5C8 */ s16 field_0x5c8;
    /* 0x5CC */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x5D0 */ int field_0x5d0;
    /* 0x5D4 */ u32 field_0x5d4;
    /* 0x5D8 */ Z2CreatureEnemy mSound;
    /* 0x67C */ s16 field_0x67c;
    /* 0x67E */ s16 field_0x67e;
    /* 0x680 */ f32 field_0x680;
    /* 0x684 */ s16 field_0x684;
    /* 0x686 */ s16 field_0x686[4];
    /* 0x68E */ s16 field_0x68e;
    /* 0x690 */ f32 field_0x690;
    /* 0x694 */ f32 field_0x694;
    /* 0x698 */ dBgS_AcchCir mAcchCir;
    /* 0x6D8 */ dBgS_ObjAcch mAcch;
    /* 0x8B0 */ s8 field_0x8b0;
    /* 0x8B4 */ dCcD_Stts mDStts;
    /* 0x8F0 */ dCcD_Sph mSph1;
    /* 0xA28 */ dCcD_Sph mSph2;
    /* 0xB60 */ dCcU_AtInfo mAtInfo;
    /* 0xB84 */ s8 field_0xb84;
    /* 0xB85 */ u8 field_0xb85[0xb8c - 0xb85];
    /* 0xB8C */ u32 field_0xb8c[4];
    /* 0xB9C */ u32 field_0xb9c;
    /* 0xBA0 */ u8 field_0xba0[0xba5 - 0xba0];
    /* 0xBA5 */ s8 field_0xba5;
    /* 0xBA6 */ s8 field_0xba6;
    /* 0xBA7 */ s8 field_0xba7;
    /* 0xBA8 */ s8 field_0xba8;
    /* 0xBA9 */ u8 field_0xba9[0xbb4 - 0xba9];
    /* 0xBB4 */ int field_0xbb4;
    /* 0xBB8 */ u8 field_0xbb8;
    /* 0xBB9 */ u8 field_0xbb9[0xbbc - 0xbb9];
};

STATIC_ASSERT(sizeof(e_ms_class) == 0xbbc);

class daE_MS_HIO_c : public JORReflexible {
public:
    /* 80725B8C */ daE_MS_HIO_c();
    /* 8072900C */ virtual ~daE_MS_HIO_c() {};

    void genMessage(JORMContext*);

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;

};


#endif /* D_A_E_MS_H */

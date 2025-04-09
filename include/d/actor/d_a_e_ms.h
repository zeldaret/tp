#ifndef D_A_E_MS_H
#define D_A_E_MS_H
#include "d/d_bg_s_acch.h"
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
    /* 0x5AC */ u8 field_0x5ac[0x5b4 - 0x5ac];
    /* 0x5B4 */ s16 field_0x5b4;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 field_0x5b7;
    /* 0x5B8 */ int field_0x5b8;
    /* 0x5BC */ u8 field_0x5bc[0x5c8 - 0x5bc];
    /* 0x5C8 */ s16 field_0x5c8;
    /* 0x5CA */ u8 field_0x5ca[0x5cc - 0x5ca];
    /* 0x5CC */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x5D0 */ int field_0x5d0;
    /* 0x5D4 */ u32 field_0x5d4;
    /* 0x5D8 */ Z2Creature mSound;
    /* 0x668 */ u8 field_0x668[0x67c - 0x668];
    /* 0x67C */ s16 field_0x67c;
    /* 0x67E */ s16 field_0x67e;
    /* 0x680 */ f32 field_0x680;
    /* 0x684 */ s16 field_0x684;
    /* 0x686 */ s16 field_0x686;
    /* 0x688 */ u8 field_0x688[0x68a - 0x688];
    /* 0x68A */ s16 field_0x68a;
    /* 0x68C */ u8 field_0x68c[0x690 - 0x68c];
    /* 0x690 */ f32 field_0x690;
    /* 0x694 */ u8 field_0x694[0x770 - 0x694];
    /* 0x770 */ f32 field_0x770;
    /* 0x774 */ u8 field_0x774[0x7c8 - 0x774];
    /* 0x7C8 */ dBgS_Acch mAcch;
    /* 0x9A0 */ u8 field_0x9a0[0xba5 - 0x9a0];
    /* 0xBA5 */ u8 field_0xba5;
    /* 0xBA6 */ s8 field_0xba6;
    /* 0xBA7 */ s8 field_0xba7;
    /* 0xBA8 */ u8 field_0xba8[0xbbc - 0xba8];
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

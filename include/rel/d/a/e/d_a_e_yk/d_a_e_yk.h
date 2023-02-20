#ifndef D_A_E_YK_H
#define D_A_E_YK_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"

class daE_YK_HIO_c {
public:
    /* 8080482C */ daE_YK_HIO_c();
    /* 808077E0 */ virtual ~daE_YK_HIO_c();

    /* 0x00 */ // vtable
    /* 0x04 */ s8 field_0x04;
    /* 0x05 */ u8 field_0x05[3]; // padding
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
};

class e_yk_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ u8 field_0x5ac[0x5c0-0x5ac];
    /* 0x5C0 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0x5C4 */ u8 field_0x5c4[0x668-0x5c4];
    /* 0x668 */ int mResIdx;
    /* 0x66C */ u8 field_0x66c[0xa90-0x66c];
};

// size: 0xA90

#endif /* D_A_E_YK_H */

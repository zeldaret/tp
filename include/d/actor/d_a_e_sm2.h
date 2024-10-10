#ifndef D_A_E_SM2_H
#define D_A_E_SM2_H

#include "f_op/f_op_actor_mng.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

/**
 * @ingroup actors-enemies
 * @class e_sm2_class
 * @brief Chuchu 2
 * 
 * @details 
 * 
 */
class e_sm2_class : public fopEn_enemy_c {
public:
    bool checkYellow() { return field_0x5b7 == 3; }

private:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ u8 field_0x5B5[0x5B7 - 0x5B5];
    /* 0x5B7 */ u8 field_0x5b7;
    /* 0x5B8 */ int field_0x5b8;
    /* 0x5BC */ mDoExt_McaMorfSO* mpMorf;
    /* 0x5C0 */ mDoExt_invisibleModel field_0x5c0;
    /* 0x5C8 */ mDoExt_btkAnm* field_0x5c8;
    /* 0x5CC */ mDoExt_McaMorfSO* field_0x5cc;
    /* 0x5D0 */ mDoExt_invisibleModel field_0x5d0;
    /* 0x5D8 */ u8 field_0x5d8;
    /* 0x5D9 */ u8 field_0x5D9[0x5DC - 0x5D9];
    /* 0x5DC */ Z2CreatureEnemy mSound;
    /* 0x680 */ s16 field_0x680;
    /* 0x682 */ s16 mAction;
    /* 0x684 */ s16 mMode;
    /* 0x686 */ s16 field_0x686;
    /* 0x688 */ s16 field_0x688;
    /* 0x68A */ u8 field_0x68A[0x68C - 0x68A];
    /* 0x68C */ s16 field_0x68c;
    /* 0x68E */ s16 field_0x68e;
    /* 0x690 */ s16 mAngleToPlayer;
    /* 0x692 */ u8 field_0x692[0x694 - 0x692];
    /* 0x694 */ f32 mDistToPlayer;
    /* 0x698 */ u8 field_0x698[0x6A4 - 0x698];
    /* 0x6A4 */ s16 field_0x6a4;
    /* 0x6A6 */ s16 field_0x6a6;
    /* 0x6A8 */ u8 field_0x6a8;
    /* 0x6A9 */ u8 field_0x6a9;
    /* 0x6AA */ u8 field_0x6aa;
    /* 0x6AB */ u8 field_0x6AB[0x6AC - 0x6AB];
    /* 0x6AC */ f32 field_0x6ac;
    /* 0x6B0 */ f32 field_0x6b0;
    /* 0x6B4 */ u32 field_0x6b4;
    /* 0x6B8 */ f32 field_0x6b8;
    /* 0x6BC */ f32 field_0x6bc;
    /* 0x6C0 */ f32 field_0x6c0;
    /* 0x6C4 */ f32 field_0x6c4;
    /* 0x6C8 */ f32 field_0x6c8;
    /* 0x6CC */ u8 field_0x6CC[0x6E8 - 0x6CC];
    /* 0x6E8 */ f32 field_0x6e8;
    /* 0x6EC */ u8 field_0x6EC[0x708 - 0x6EC];
    /* 0x708 */ cXyz field_0x708[8];
    /* 0x768 */ csXyz field_0x768[8];
    /* 0x798 */ cXyz field_0x798[8];
    /* 0x7F8 */ csXyz field_0x7f8[8];
    /* 0x828 */ s16 field_0x828;
    /* 0x82A */ u8 field_0x82A[0x82C - 0x82A];
    /* 0x82C */ f32 field_0x82c;
    /* 0x830 */ f32 field_0x830;
    /* 0x834 */ f32 mSize;
    /* 0x838 */ f32 field_0x838;
    /* 0x83C */ u8 field_0x83c;
    /* 0x83D */ u8 field_0x83d;
    /* 0x83E */ u8 field_0x83e;
    /* 0x83F */ u8 field_0x83f;
    /* 0x840 */ cXyz field_0x840;
    /* 0x84C */ csXyz field_0x84c;
    /* 0x852 */ u8 field_0x852[0x854 - 0x852];
    /* 0x854 */ dBgS_AcchCir mAcchCir;
    /* 0x894 */ dBgS_ObjAcch mAcch;
    /* 0xA6C */ dCcD_Stts mColliderStatus;
    /* 0xAA8 */ dCcD_Sph field_0xaa8[4];
    /* 0xF88 */ u8 field_0xf88;
    /* 0xF89 */ u8 field_0xF89[0xF8C - 0xF89];
    /* 0xF8C */ dCcU_AtInfo mAtInfo;
    /* 0xFB0 */ u8 field_0xFB0[0xFD0 - 0xFB0];
    /* 0xFD0 */ int field_0xfd0;
    /* 0xFD4 */ u8 field_0xfd4;
    /* 0xFD5 */ u8 field_0xFD5[0xFD8 - 0xFD5];
    /* 0xFD8 */ u32 field_0xfd8;
    /* 0xFDC */ u8 field_0xfdc[0xFF0 - 0xFDC];
};

STATIC_ASSERT(sizeof(e_sm2_class) == 0xff0);

class daE_SM2_HIO_c {
    /* 80798B4C */ daE_SM2_HIO_c();
    /* 8079CE94 */ ~daE_SM2_HIO_c();
};


#endif /* D_A_E_SM2_H */

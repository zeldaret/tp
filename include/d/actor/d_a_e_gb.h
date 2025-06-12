#ifndef D_A_E_GB_H
#define D_A_E_GB_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_gb_class
 * @brief Giant Baba
 * 
 * @details 
 * 
 */
class e_gb_class {
public:
    /* 806C6B94 */ e_gb_class();

    /* 0x000 */ fopEn_enemy_c actor;
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 field_0x5b7;
    /* 0x5B8 */ mDoExt_McaMorf* mpModelMorf1;
    /* 0x5BC */ mDoExt_McaMorf* mpModelMorf2;
    /* 0x5C0 */ mDoExt_brkAnm* mBrkAnm;
    /* 0x5C4 */ Z2CreatureEnemy mSound;
    /* 0x668 */ s8 field_0x668;
    /* 0x669 */ u8 field_0x669[3];
    /* 0x66C */ J3DModel* field_0x66c;
    /* 0x670 */ u8 field_0x670[0x68c - 0x670];
    /* 0x68C */ int field_0x68c;
    /* 0x690 */ u8 field_0x690[0x698 - 0x690];
    /* 0x698 */ s16 field_0x698;
    /* 0x69A */ s16 field_0x69a;
    /* 0x69C */ u8 field_0x69c[0x6e4 - 0x69c];
    /* 0x6E4 */ cXyz field_0x6e4[18];
    /* 0x7BC */ csXyz field_0x7bc[18];
    /* 0x828 */ J3DModel* field_0x828[18];
    /* 0x870 */ u8 field_0x870[0x8b8 - 0x870];
    /* 0x8B8 */ f32 field_0x8b8[18];
    /* 0x900 */ u8 field_0x900[0x955 - 0x900];
    /* 0x955 */ u8 field_0x955;
    /* 0x956 */ u8 field_0x956[0x968 - 0x956];
    /* 0x968 */ u8 field_0x968;
    /* 0x969 */ u8 field_0x969[0x970 - 0x969];
    /* 0x970 */ dCcD_Stts mStts;
    /* 0x9AC */ dCcD_Sph mHeadSph;
    /* 0xAE4 */ dCcD_Cyl mBodyCyl;
    /* 0xC20 */ u8 field_0xc20[4];
    /* 0xC24 */ dCcU_AtInfo mAtInfo;
    /* 0xC48 */ dBgS_AcchCir mAcchCir;
    /* 0xC88 */ dBgS_ObjAcch mObjAcch;
    /* 0xE60 */ u8 field_0xe60[0xef5 - 0xe60];
    /* 0xEF5 */ u8 field_0xef5;
    /* 0xEF6 */ u8 field_0xef6[0xef8 - 0xef6];
};

STATIC_ASSERT(sizeof(e_gb_class) == 0xef8);

class daE_GB_HIO_c {
public:
    /* 806C1CEC */ daE_GB_HIO_c();
    /* 806C6F98 */ ~daE_GB_HIO_c();

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ s16 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ s16 field_0x1c;
    /* 0x1E */ s16 field_0x1e;
};


#endif /* D_A_E_GB_H */

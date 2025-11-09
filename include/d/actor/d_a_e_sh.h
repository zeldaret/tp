#ifndef D_A_E_SH_H
#define D_A_E_SH_H
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_sh_class
 * @brief Stalhound
 * 
 * @details 
 * 
 */
class e_sh_class {
public:
    /* 0x000 */ fopEn_enemy_c enemy;
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B8 */ mDoExt_McaMorfSO* mAnm_p;
    /* 0x5BC */ Z2CreatureEnemy mSound;
    /* 0x660 */ int mCurAnm;
    /* 0x664 */ J3DModel* field_0x664[2];
    /* 0x66C */ f32 field_0x66c;
    /* 0x670 */ f32 field_0x670;
    /* 0x674 */ s16 field_0x674;
    /* 0x676 */ s16 field_0x676;
    /* 0x678 */ s16 field_0x678;
    /* 0x67C */ cXyz field_0x67c;
    /* 0x688 */ s16 field_0x688;
    /* 0x68A */ u8 field_0x68a[0x68c - 0x68a];
    /* 0x68C */ s16 field_0x68c;
    /* 0x690 */ f32 field_0x690;
    /* 0x694 */ f32 field_0x694;
    /* 0x698 */ s16 field_0x698[4];
    /* 0x6A0 */ s16 field_0x6a0;
    /* 0x6A4 */ f32 field_0x6a4;
    /* 0x6A8 */ s16 field_0x6a8;
    /* 0x6AA */ s8 field_0x6aa;
    /* 0x6AC */ s16 field_0x6ac;
    /* 0x6AE */ s16 field_0x6ae;
    /* 0x6B0 */ s16 field_0x6b0;
    /* 0x6B2 */ s16 field_0x6b2;
    /* 0x6B4 */ f32 field_0x6b4;
    /* 0x6B8 */ f32 field_0x6b8;
    /* 0x6BC */ f32 field_0x6bc;
    /* 0x6C0 */ u8 field_0x6c0[0x6c4 - 0x6c0];
    /* 0x6C4 */ u32 field_0x6c4;
    /* 0x6C8 */ dBgS_AcchCir mAcchCir;
    /* 0x708 */ dBgS_ObjAcch mObjAcch;
    /* 0x8E0 */ dCcD_Stts mStts;
    /* 0x91C */ dCcD_Sph mSphArr[2];
    /* 0xB8C */ dCcD_Sph mSph2;
    /* 0xCC4 */ dCcU_AtInfo mAtInfo;
    /* 0xCE8 */ s8 field_0xce8;
    /* 0xCE9 */ s8 field_0xce9;
    /* 0xCEA */ s8 field_0xcea;
    /* 0xCEB */ s8 field_0xceb;
    /* 0xCEC */ s8 field_0xcec;
    /* 0xCF0 */ int field_0xcf0[2];
    /* 0xCF8 */ u32 field_0xcf8;
    /* 0xCFC */ u8 field_0xcfc[0xd08 - 0xcfc];
    /* 0xD08 */ u8 mInitState;
};

STATIC_ASSERT(sizeof(e_sh_class) == 0xd0c);

#endif /* D_A_E_SH_H */

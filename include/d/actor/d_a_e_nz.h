#ifndef D_A_E_NZ_H
#define D_A_E_NZ_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_nz_class
 * @brief Ghoul Rat
 * 
 * @details 
 * 
 */
class e_nz_class {
public:
    /* 0x000 */ fopEn_enemy_c enemy;
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ s16 mSubAction;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B6 */ u8 field_0x5b7;
    /* 0x5B8 */ int field_0x5b8;
    /* 0x5BC */ cXyz field_0x5bc;
    /* 0x5D4 */ cXyz field_0x5c8;
    /* 0x5D4 */ s16 field_0x5d4;
    /* 0x5D8 */ f32 field_0x5d8;
    /* 0x5DC */ f32 field_0x5dc;
    /* 0x5E0 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x5E4 */ int field_0x5e4;
    /* 0x5E8 */ mDoExt_invisibleModel mInvModel;
    /* 0x5F0 */ f32 mMaterialAlpha;
    /* 0x5F4 */ Z2CreatureEnemy mSound;
    /* 0x698 */ s16 field_0x698;
    /* 0x69A */ s16 mAction;
    /* 0x6A0 */ f32 mPlayerDistance;
    /* 0x6A0 */ s16 mPlayerAngleY;
    /* 0x6A2 */ s16 field_0x6a2[4];
    /* 0x6AA */ s16 field_0x6aa;
    /* 0x6AC */ s8 field_0x6ac;
    /* 0x6B0 */ dBgS_AcchCir mAcchCir;
    /* 0x6F0 */ dBgS_ObjAcch mAcch;
    /* 0x8C8 */ s8 field_0x8c8;
    /* 0x8CC */ dCcD_Stts mStts;
    /* 0x908 */ dCcD_Sph mSph;
    /* 0xA40 */ dCcU_AtInfo mAtInfo;
    /* 0xA64 */ u32 mParticle;
    /* 0xA68 */ u32 mParticleIds[4];
    /* 0xA78 */ s8 field_0xa78;
    /* 0xA7C */ int field_0xa7c;
    /* 0xA80 */ int field_0xa80;
    /* 0xA84 */ bool mIsHIOOwner;
};

STATIC_ASSERT(sizeof(e_nz_class) == 0xa88);

#endif /* D_A_E_NZ_H */

#ifndef D_A_E_MM_MT_H
#define D_A_E_MM_MT_H
#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_uty.h"


/**
 * @ingroup actors-enemies
 * @class e_mm_mt_class
 * @brief Helmasaur Shell
 * 
 * @details 
 * 
 */
class e_mm_mt_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ Z2CreatureEnemy mSound;
    /* 0x658 */ u32 parameters; 
    /* 0x65C */ J3DModel* mpModel;
    /* 0x660 */ u32 mShadowKey;
    /* 0x664 */ s16 lifetime;
    /* 0x666 */ s16 mAction;
    /* 0x668 */ s16 mMode;
    /* 0x66A */ u8 field_0x66A[0x672 - 0x66A];
    /* 0x672 */ u8 field_0x672;
                u8 field_0x673[0x684 - 0x673];
    /* 0x684 */ s16 mTimer[2]; 
    /* 0x688 */ s16 mInvulnerabilityTimer;
    /* 0x68A */ bool field_0x68A[2];
    /* 0x68C */ csXyz mRotation;
    /* 0x692 */ s16 mCarryAngleSpeed;
    /* 0x694 */ s16 mCarryAngle;
    /* 0x696 */ u8 field_0x696[0x698 - 0x696];
    /* 0x698 */ u32 field_0x698;
    /* 0x69C */ f32 field_0x69C;
                s16 field_0x6A0;
                s16 field_0x6A2;
    /* 0x6A4 */ s16 mSpin;
                u8 field_0x6A6[0x6AC - 0x6A6];
    /* 0x6AC */ dBgS_AcchCir mAcchCir;
    /* 0x6EC */ dBgS_ObjAcch mAcch;
    /* 0x8C4 */ dCcD_Stts mStts;
    /* 0x900 */ dCcD_Sph mSphere;
    /* 0xA38 */ dCcD_Sph mSph;
    /* 0xB70 */ dCcU_AtInfo mAtInfo;
    /* 0xB94 */ u8 field_0xB94[0xB98 - 0xB94];
    /* 0xB98 */ u8 field_0xB98;
    /* 0xB99 */ u8 field_0xB99;
                u8 field_0xBA0[0xBA4 - 0xB9A];

};

//fop offset = 
//e_mm_mt class = 0x950 (shield) - 0x900 (gcn) = 0x50

//(dBgS_AcchCir *)(param_1[1].tevStr.mLightObj.mLightObj.unknown + 1) wherever this lives is where mAcchCir lives

STATIC_ASSERT(sizeof(e_mm_mt_class) == 0xba4);


#endif /* D_A_E_MM_MT_H */

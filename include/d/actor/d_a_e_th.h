#ifndef D_A_E_TH_H
#define D_A_E_TH_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_bg_s_acch.h"

struct th_ke_s {
    /* 0x000 */ cXyz pos[15];
    /* 0x0B4 */ cXyz field_0xb4[15];
    /* 0x168 */ s16 field_0x168;
    /* 0x16A */ s16 field_0x16a;
    /* 0x16C */ u8 field_0x16c[0x17C - 0x16C];
};

/**
 * @ingroup actors-enemies
 * @class e_th_class
 * @brief Darkhammer
 * 
 * @details 
 * 
 */
class e_th_class : public fopEn_enemy_c {
public:
    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ s16 mMode;
    /* 0x05B6 */ u8 field_0x5b6;
    /* 0x05B7 */ u8 field_0x5b7;
    /* 0x05B8 */ u8 field_0x5b8;
    /* 0x05B9 */ u8 field_0x5b9;
    /* 0x05BA */ u8 field_0x5BA[0x05CC - 0x05BA];
    /* 0x05CC */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x05D0 */ int mAnm;
    /* 0x05D4 */ u8 field_0x5D4[0x05D8 - 0x05D4];
    /* 0x05D8 */ f32 mSpinAnmSpeed;
    /* 0x05DC */ s16 field_0x5dc;
    /* 0x05E0 */ Z2CreatureEnemy mSound;
    /* 0x0684 */ s16 mCounter;
    /* 0x0686 */ s16 mAction;
    /* 0x0688 */ u8 field_0x688[0x068A - 0x0688];
    /* 0x068A */ s8 field_0x68a;
    /* 0x068C */ f32 mPlayerDist;
    /* 0x0690 */ s16 mPlayerAngleY;
    /* 0x0692 */ u8 field_0x692[0x0698 - 0x0692];
    /* 0x0698 */ u32 mShadowKey;
    /* 0x069C */ s16 mTimers[4];
    /* 0x06A4 */ s16 field_0x6a4;
    /* 0x06A6 */ s16 field_0x6a6;
    /* 0x06A8 */ cXyz mHandL_Pos1;
    /* 0x06B4 */ cXyz mHandL_Pos2;
    /* 0x06C0 */ cXyz mHandR_Pos1;
    /* 0x06CC */ cXyz mHandR_Pos2;
    /* 0x06D8 */ u8 field_0x6D8[0x06E4 - 0x06D8];
    /* 0x06E4 */ s8 field_0x6e4;
    /* 0x06E6 */ s16 mHeadRotY;
    /* 0x06E8 */ s16 mHeadRotZ;
    /* 0x06EA */ s8 field_0x6ea;
    /* 0x06EB */ u8 field_0x6EB[0x06F0 - 0x06EB];
    /* 0x06F0 */ fpc_ProcID mBallID;
    /* 0x06F4 */ dBgS_AcchCir mAcchCir;
    /* 0x0734 */ dBgS_ObjAcch mAcch;
    /* 0x090C */ dCcD_Stts mCcStts;
    /* 0x0948 */ dCcD_Sph mCcSph[3];
    /* 0x0CF0 */ dCcU_AtInfo mAtInfo;
    /* 0x0D14 */ cXyz mHeadPos;
    /* 0x0D20 */ cXyz mTailPos;
    /* 0x0D2C */ s16 mDemoCamMode;
    /* 0x0D2E */ s16 mDemoCamTimer;
    /* 0x0D30 */ cXyz mDemoCamEye;
    /* 0x0D3C */ cXyz mDemoCamCenter;
    /* 0x0D48 */ cXyz mDemoCamEyeTarget;
    /* 0x0D54 */ cXyz mDemoCamCenterTarget;
    /* 0x0D60 */ cXyz mDemoCamEyeSpd;
    /* 0x0D6C */ cXyz mDemoCamCenterSpd;
    /* 0x0D78 */ f32 field_0xd78;
    /* 0x0D7C */ u8 field_0xD7C[0x0D80 - 0x0D7C];
    /* 0x0D80 */ f32 mDemoCamFovy;
    /* 0x0D84 */ u8 field_0xD84[0x0D88 - 0x0D84];
    /* 0x0D88 */ f32 field_0xd88;
    /* 0x0D8C */ u8 field_0xD8C[0x0D8E - 0x0D8C];
    /* 0x0D8E */ s8 mNoDraw;
    /* 0x0D8F */ s8 mDoEndColorEff;
    /* 0x0D90 */ f32 mEndBodyColor;
    /* 0x0D94 */ u32 field_0xd94;
    /* 0x0D98 */ u32 field_0xd98;
    /* 0x0D9C */ th_ke_s mKe_s[3];
    /* 0x1210 */ mDoExt_3DlineMat0_c mKeLineMat;
    /* 0x122C */ u8 field_0x122C[0x1238 - 0x122C];
    /* 0x1238 */ u8 mInitHIO;
};

STATIC_ASSERT(sizeof(e_th_class) == 0x123c);

#endif /* D_A_E_TH_H */

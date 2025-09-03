#ifndef D_A_E_RDB_H
#define D_A_E_RDB_H

#include "JSystem/JHostIO/JORReflexible.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_msg_flow.h"
#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-enemies
 * @class e_rdb_class
 * @brief King Bulblin
 *
 * @details
 *
 */
class e_rdb_class {
public:
    enum E_RDB_RES_FILE_ID {
        /* BCK */
        /* 0x04 */ BCK_HORN_RPLAY_RUN = 4,
        /* 0x05 */ BCK_HORN_RPLAY_STOP,
        /* 0x06 */ BCK_HORN_RPLAY_STOP2,
        /* 0x07 */ BCK_RB_ATTACK01,
        /* 0x08 */ BCK_RB_ATTACK02,
        /* 0x09 */ BCK_RB_ATTACK03_END,
        /* 0x0A */ BCK_RB_ATTACK03_SPIN,
        /* 0x0B */ BCK_RB_ATTACK03_START,
        /* 0x0C */ BCK_RB_DAMAGEBL,
        /* 0x0D */ BCK_RB_DAMAGEBR,
        /* 0x0E */ BCK_RB_DAMAGEF,
        /* 0x0F */ BCK_RB_DAMAGEFL,
        /* 0x10 */ BCK_RB_DAMAGEFR,
        /* 0x11 */ BCK_RB_DOWN,
        /* 0x12 */ BCK_RB_DOWN_RETURN,
        /* 0x13 */ BCK_RB_DOWN_WAIT,
        /* 0x14 */ BCK_RB_ED_DEMO_DOWN,
        /* 0x15 */ BCK_RB_ED_DEMO_DOWNUP,
        /* 0x16 */ BCK_RB_ED_DEMO_DOWNWAIT,
        /* 0x17 */ BCK_RB_ED_DEMO_DOWNWALK,
        /* 0x18 */ BCK_RB_FALL,
        /* 0x19 */ BCK_RB_GUARD,
        /* 0x1A */ BCK_RB_LV9_END01,
        /* 0x1B */ BCK_RB_LV9_END02,
        /* 0x1C */ BCK_RB_LV9_END03,
        /* 0x1D */ BCK_RB_LV9_OP01,
        /* 0x1E */ BCK_RB_LV9_OP02,
        /* 0x1F */ BCK_RB_OP_DEMO_SWING,
        /* 0x20 */ BCK_RB_PUSH,
        /* 0x21 */ BCK_RB_RCOMEON,
        /* 0x22 */ BCK_RB_RDAMAGE01,
        /* 0x23 */ BCK_RB_RDAMAGE02,
        /* 0x24 */ BCK_RB_RDAMAGEB,
        /* 0x25 */ BCK_RB_RDAMAGEL,
        /* 0x26 */ BCK_RB_RDAMAGER,
        /* 0x27 */ BCK_RB_RDEAD,
        /* 0x28 */ BCK_RB_RDEAD2_DAMAGE,
        /* 0x29 */ BCK_RB_RDEAD2_FALL,
        /* 0x2A */ BCK_RB_RDEAD2_RUN,
        /* 0x2B */ BCK_RB_RDOWNB,
        /* 0x2C */ BCK_RB_RDOWNB_RUN,
        /* 0x2D */ BCK_RB_RDOWNB_UP,
        /* 0x2E */ BCK_RB_RGUARD_F,
        /* 0x2F */ BCK_RB_RGUARD_L,
        /* 0x30 */ BCK_RB_RGUARD_R,
        /* 0x31 */ BCK_RB_RJUMP_A,
        /* 0x32 */ BCK_RB_RJUMP_B,
        /* 0x33 */ BCK_RB_RJUMP_C,
        /* 0x34 */ BCK_RB_RNEIGH,
        /* 0x35 */ BCK_RB_ROP_DEMO2_EXCITE,
        /* 0x36 */ BCK_RB_ROP_DEMO2_WAIT,
        /* 0x37 */ BCK_RB_RPLAY_RUNL,
        /* 0x38 */ BCK_RB_RPLAY_RUNR,
        /* 0x39 */ BCK_RB_RPLAY_STOP,
        /* 0x3A */ BCK_RB_RPLAY_STOP2,
        /* 0x3B */ BCK_RB_RRUN,
        /* 0x3C */ BCK_RB_RSLIP,
        /* 0x3D */ BCK_RB_RSTART,
        /* 0x3E */ BCK_RB_RSTARTLOOP,
        /* 0x3F */ BCK_RB_RSTEP,
        /* 0x40 */ BCK_RB_RUN,
        /* 0x41 */ BCK_RB_RWAIT,
        /* 0x42 */ BCK_RB_RWAIT02,
        /* 0x43 */ BCK_RB_RWALK,
        /* 0x44 */ BCK_RB_STEP,
        /* 0x45 */ BCK_RB_WAIT01,
        /* 0x46 */ BCK_RB_WALK,

        /* BMDR */
        /* 0x49 */ BMDR_ARML2_ARMOR = 0x49,
        /* 0x4A */ BMDR_ARML_ARMOR,
        /* 0x4B */ BMDR_ARMR2_ARMOR,
        /* 0x4C */ BMDR_ARMR_ARMOR,
        /* 0x4D */ BMDR_FACE_ARMOR,
        /* 0x4E */ BMDR_HEAD_ARMOR,
        /* 0x4F */ BMDR_LEGL_ARMOR,
        /* 0x50 */ BMDR_LEGR_ARMOR,
        /* 0x51 */ BMDR_MUNE2_ARMOR,
        /* 0x52 */ BMDR_MUNE_ARMOR,
        /* 0x53 */ BMDR_RB,
        /* 0x54 */ BMDR_RB_HORN,
        /* 0x55 */ BMDR_RB_ONO,
        /* 0x56 */ BMDR_RB_SHIELDL,
        /* 0x57 */ BMDR_RB_SHIELDR,
        /* 0x58 */ BMDR_SENA2_ARMOR,
        /* 0x59 */ BMDR_SENA_ARMOR,
        /* 0x5A */ BMDR_SHOULDERL_ARMOR,
        /* 0x5B */ BMDR_SHOULDERR_ARMOR,
    };

    /* 0x0000 */ fopEn_enemy_c enemy;
    /* 0x05ac */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ s16 mMode;
    /* 0x05B6 */ u8 field_0x5b6;
    /* 0x05B7 */ u8 field_0x5b7[0x5c8 - 0x5b7];
    /* 0x05C8 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x05CC */ f32 field_0x5cc;
    /* 0x05D0 */ Z2CreatureEnemy mSound;
    /* 0x0674 */ int mAnm;
    /* 0x0678 */ J3DModel* mpAxeModel;
    /* 0x067C */ s16 field_0x67c;
    /* 0x067E */ s16 mAction;
    /* 0x0680 */ s8 field_0x680;
    /* 0x0681 */ u8 field_0x681[0x684 - 0x681];
    /* 0x0684 */ cXyz field_0x684;
    /* 0x0690 */ cXyz field_0x690;
    /* 0x069C */ csXyz field_0x69c;
    /* 0x06A2 */ s16 field_0x6a2;
    /* 0x06A4 */ s16 field_0x6a4;
    /* 0x06A6 */ u8 field_0x6a6[0x6a8 - 0x6a6];
    /* 0x06A8 */ s16 field_0x6a8;
    /* 0x06AA */ u8 field_0x6aa[0x6ac - 0x6aa];
    /* 0x06AC */ f32 mDistToPlayer;
    /* 0x06B0 */ s16 mAngleToPlayer;
    /* 0x06B2 */ u8 field_0x6b2[2];
    /* 0x06B4 */ u32 mShadowKey;
    /* 0x06B8 */ s16 field_0x6b8[4];
    /* 0x06C0 */ s16 field_0x6c0;
    /* 0x06C2 */ s16 field_0x6c2;
    /* 0x06C4 */ s8 field_0x6c4;
    /* 0x06C5 */ s8 field_0x6c5;
    /* 0x06C6 */ s8 field_0x6c6;
    /* 0x06C7 */ s8 field_0x6c7;
    /* 0x06C8 */ s8 field_0x6c8;
    /* 0x06C9 */ u8 field_0x6c9[0x6ca - 0x6c9];
    /* 0x06CA */ s16 field_0x6ca;
    /* 0x06CC */ s16 field_0x6cc;
    /* 0x06CE */ s16 field_0x6ce;
    /* 0x06D0 */ s16 field_0x6d0;
    /* 0x06D2 */ s16 field_0x6d2;
    /* 0x06D4 */ f32 field_0x6d4;
    /* 0x06D8 */ s8 field_0x6d8;
    /* 0x06D9 */ u8 field_0x6d9[0x6dc - 0x6d9];
    /* 0x06DC */ f32 mBlend;
    /* 0x06E0 */ f32 field_0x6e0;
    /* 0x06E4 */ f32 field_0x6e4;
    /* 0x06E8 */ s16 field_0x6e8;
    /* 0x06EA */ u8 field_0x6ea[0x6ec - 0x6ea];
    /* 0x06EC */ u32 field_0x6ec;
    /* 0x06F0 */ dBgS_AcchCir mAcchCir;
    /* 0x0730 */ dBgS_ObjAcch mAcch;
    /* 0x0908 */ dCcD_Stts mStts;
    /* 0x0944 */ dCcD_Sph field_0x944[3];
    /* 0x0CEC */ dCcD_Cyl field_0xcec;
    /* 0x0E28 */ dCcD_Stts mStts2;
    /* 0x0E64 */ dCcD_Sph field_0xe64;
    /* 0x0F9C */ dCcU_AtInfo mAtInfo;
    /* 0x0FC0 */ cXyz field_0xfc0;
    /* 0x0FCC */ s8 field_0xfcc;
    /* 0x0FCD */ s8 field_0xfcd;
    /* 0x0FCE */ u8 field_0xfce;
    /* 0x0FCF */ s8 field_0xfcf;
    /* 0x0FD0 */ u32 field_0xfd0[2];
    /* 0x0FD8 */ u8 field_0xfd8[0xfe4 - 0xfd8];
    /* 0x0FE4 */ s8 field_0xfe4;
    /* 0x0FE5 */ s8 field_0xfe5;
    /* 0x0FE6 */ s8 field_0xfe6;
    /* 0x0FE7 */ u8 field_0xfe7;
    /* 0x0FE8 */ u32 field_0xfe8[24];
    /* 0x1048 */ u32 field_0x1048[24];
    /* 0x10A8 */ s16 mDemoMode;
    /* 0x10AA */ s16 field_0x10aa;
    /* 0x10AC */ cXyz mDemoCamEye;
    /* 0x10B8 */ cXyz mDemoCamCenter;
    /* 0x10C4 */ cXyz field_0x10c4;
    /* 0x10D0 */ cXyz field_0x10d0;
    /* 0x10DC */ cXyz field_0x10dc;
    /* 0x10E8 */ cXyz field_0x10e8;
    /* 0x10F4 */ f32 mDemoCamFovy;
    /* 0x10F8 */ f32 field_0x10f8;
    /* 0x10FC */ u8 field_0x10fc[0x1104 - 0x10fc];
    /* 0x1104 */ u8 field_0x1104;
    /* 0x1105 */ u8 field_0x1105[0x1108 - 0x1105];
    /* 0x1108 */ dMsgFlow_c mMsgFlow;
};

STATIC_ASSERT(sizeof(e_rdb_class) == 0x1154);

#endif /* D_A_E_RDB_H */

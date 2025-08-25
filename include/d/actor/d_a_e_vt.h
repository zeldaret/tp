#ifndef D_A_E_VT_H
#define D_A_E_VT_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_VA_c
 * @brief Death Sword
 *
 * @details
 *
 */
class daE_VA_c : public fopEn_enemy_c {
public:
    enum daE_VA_ACTION {
        ACTION_DEMO_OP_WAIT_e,
        ACTION_DEMO_OP_e,
        ACTION_CLEAR_WAIT_e,
        ACTION_CLEAR_CHASE_e,
        ACTION_CLEAR_ATTACK_e,
        ACTION_TRANS_WAIT_e,
        ACTION_TRANS_ATTACK_e,
        ACTION_TRANS_CHASE_e,
        ACTION_TRANS_DAMAGE_e,
        ACTION_TRANS_BITE_DAMAGE_e,
        ACTION_TRANS_THROUGH_e,
        ACTION_OPACI_WAIT_e,
        ACTION_OPACI_FLY_e,
        ACTION_OPACI_DOWN_e,
        ACTION_OPACI_DOWN_DAMAGE_e,
        ACTION_OPACI_CHASE_e,
        ACTION_OPACI_ATTACK_e,
        ACTION_OPACI_DAMAGE_e,
        ACTION_OPACI_FLIP_e,
        ACTION_OPACI_FADE_AWAY_e,
        ACTION_OPACI_DEATH_e,
    };

    enum daE_ANM_e {
        ANM_END_EF_e = 7,
        ANM_FLOAT_ATTACK_e,
        ANM_FLOAT_DMG_A_e,
        ANM_FLOAT_DMG_B_e,
        ANM_FLOAT_DMG_C_e,
        ANM_FLOAT_WAIT_e,
        ANM_INVI_ATTACK_A_e,
        ANM_INVI_NOTICE_e,
        ANM_INVI_WAIT_e,
        ANM_INVI_WALK_e,
        ANM_OP_ATTACK_A_e,
        ANM_SUBS_ATTACK_A1_e,
        ANM_SUBS_ATTACK_A3_e,
        ANM_SUBS_ATTACK_B_e,
        ANM_SUBS_AVOID_e,
        ANM_SUBS_DOWN_e,
        ANM_SUBS_DOWN_DMG_A1_e,
        ANM_SUBS_DOWN_DMG_A2_e,
        ANM_SUBS_DOWN_DIE_e,
        ANM_SUBS_DOWN_D_STAND_e,
        ANM_SUBS_DOWN_STAGGER_e,
        ANM_SUBS_DOWN_STAND_e,
        ANM_SUBS_DOWN_WAIT_e,
        ANM_SUBS_FLY_e,
        ANM_SUBS_INVITE_A_e,
        ANM_SUBS_INVITE_B_e,
        ANM_SUBS_INVITE_C_e,
        ANM_SUBS_STAGGER_e,
        ANM_SUBS_TO_TRANS_e,
        ANM_SUBS_WAIT_e,
        ANM_TRANS_ATTACK_A1_e,
        ANM_TRANS_ATTACK_A2_e,
        ANM_TRANS_ATTACK_A3_e,
        ANM_TRANS_NECK_DMG_e,
        ANM_TRANS_NECK_PAT_e,
        ANM_TRANS_STRUGGLE_e,
        ANM_TRANS_THROUGH_e,
        ANM_TRANS_WAIT_e,
        ANM_TRANS_WALK_e,
    };

    /* 807C267C */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 807C284C */ static int JointCallBack(J3DJoint*, int);
    /* 807C2898 */ void calcJointNeck();
    /* 807C2A4C */ void calcJointSleeve();
    /* 807C3264 */ int draw();
    /* 807C3818 */ void setBck(int, u8, f32, f32);
    /* 807C38BC */ bool checkBck(int);
    /* 807C3918 */ void setActionMode(int, int);
    /* 807C39C4 */ int getWolfCutType();
    /* 807C3A1C */ void onSwordAtBit();
    /* 807C3A50 */ void offSwordShield();
    /* 807C3AB0 */ void setTransDamage(cXyz*);
    /* 807C3B58 */ void damage_check();
    /* 807C4844 */ void setFireEffect(int);
    /* 807C49B4 */ void setFootEffect();
    /* 807C4B54 */ void setWeponEffect();
    /* 807C4DFC */ void setBugsEffect();
    /* 807C4F10 */ void setWeponLandEffect();
    /* 807C4FCC */ void setWeponGlow();
    /* 807C50A4 */ void setWeponFlashScreen();
    /* 807C5188 */ void setMagicEffect(int);
    /* 807C5258 */ void setMagicHitEffect(int);
    /* 807C5338 */ void demo_skip(int);
    /* 807C53A8 */ static int DemoSkipCallBack(void*, int);
    /* 807C53DC */ f32 getRopeLength(int);
    /* 807C53FC */ void calcOpRopePos();
    /* 807C5CF0 */ void onRopeCutStatus(int, int, int);
    /* 807C5DF4 */ void setVibRope(f32, f32);
    /* 807C5EAC */ void setVibTag(int, int);
    /* 807C6164 */ void calcTagAngle();
    /* 807C638C */ void calcRopeFirePos();
    /* 807C6564 */ void executeDemoOpWait();
    /* 807C67A4 */ void executeDemoOp();
    /* 807C7534 */ void executeClearWait();
    /* 807C7640 */ void executeClearChase();
    /* 807C783C */ void executeClearAttack();
    /* 807C7A8C */ void executeTransWait();
    /* 807C7C74 */ void executeTransChase();
    /* 807C7ED4 */ void executeTransAttack();
    /* 807C839C */ void executeTransBiteDamage();
    /* 807C8860 */ void executeTransDamage();
    /* 807C8A84 */ void executeTransThrough();
    /* 807C8B78 */ void executeOpaciWait();
    /* 807C915C */ void executeOpaciFly();
    /* 807C9A40 */ void executeOpaciDamage();
    /* 807C9C8C */ void executeOpaciChase();
    /* 807CA364 */ void executeOpaciAttack();
    /* 807CA73C */ void executeOpaciDown();
    /* 807CAA80 */ void executeOpaciDownDamage();
    /* 807CACE0 */ void executeOpaciFlip();
    /* 807CADB8 */ void executeOpaciFadeAway();
    /* 807CB1C4 */ void executeOpaciDeath();
    /* 807CB8CC */ void calcMagicMove();
    /* 807CBC00 */ void setAlphaType();
    /* 807CC004 */ void action();
    /* 807CC4D0 */ void mtx_set();
    /* 807CC864 */ void cc_set();
    /* 807CCD24 */ int execute();
    /* 807CCF64 */ int _delete();
    /* 807CD048 */ int CreateHeap();
    /* 807CD668 */ int create();
    /* 807CDAD8 */ daE_VA_c();

private:
    /* 0x005AC */ request_of_phase_process_class mPhase;
    /* 0x005B4 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x005B8 */ mDoExt_McaMorfSO* mpEndEfMorf;
    /* 0x005BC */ J3DModel* mpWeaponModel;
    /* 0x005C0 */ J3DModel* mpCardModels[40];
    /* 0x00660 */ csXyz field_0x660[40];
    /* 0x00750 */ csXyz field_0x750[40];
    /* 0x00840 */ csXyz field_0x840[40];
    /* 0x00930 */ u8 mCardFlags[40];
    /* 0x00958 */ mDoExt_3DlineMat1_c mRope;
    /* 0x00994 */ cXyz field_0x994[100];
    /* 0x00E44 */ csXyz field_0xe44[100];
    /* 0x0109C */ u8 mRopeCutStatus[10];
    /* 0x010A6 */ u8 field_0x10A6[0x01100 - 0x010A6];
    /* 0x01100 */ u8 mDrawRopes;
    /* 0x01101 */ u8 field_0x1101[0x01104 - 0x01101];
    /* 0x01104 */ f32 field_0x1104[10];
    /* 0x0112C */ s16 field_0x112c[10];
    /* 0x01140 */ cXyz field_0x1140[10];
    /* 0x011B8 */ f32 field_0x11b8[10];
    /* 0x011E0 */ cXyz mMagicPos[2];
    /* 0x011F8 */ cXyz mMagicOldPos[2];
    /* 0x01210 */ cXyz mMagicSpeed[2];
    /* 0x01228 */ u8 field_0x1228[3];
    /* 0x0122C */ cXyz field_0x122c;
    /* 0x01238 */ csXyz field_0x1238;
    /* 0x0123E */ s16 field_0x123e;
    /* 0x01240 */ u8 field_0x1240;
    /* 0x01244 */ mDoExt_invisibleModel mInvisModel;
    /* 0x0124C */ mDoExt_brkAnm* mpWeaponBrk;
    /* 0x01250 */ mDoExt_brkAnm* mpEndEfBrk;
    /* 0x01254 */ Z2CreatureEnemy mSound;
    /* 0x012F8 */ cXyz field_0x12f8;
    /* 0x01304 */ csXyz field_0x1304;
    /* 0x0130A */ u8 field_0x130A[0x0130C - 0x0130A];
    /* 0x0130C */ s16 field_0x130c;
    /* 0x0130E */ s16 field_0x130e;
    /* 0x01310 */ f32 field_0x1310;
    /* 0x01314 */ f32 mKankyoColBlend;
    /* 0x01318 */ f32 field_0x1318;
    /* 0x0131C */ int mAction;
    /* 0x01320 */ int mMode;
    /* 0x01324 */ int field_0x1324;
    /* 0x01328 */ u8 field_0x1328[0x0132C - 0x01328];
    /* 0x0132C */ u32 mShadowKey;
    /* 0x01330 */ s16 field_0x1330;
    /* 0x01332 */ s16 field_0x1332;
    /* 0x01334 */ s16 field_0x1334;
    /* 0x01336 */ s16 field_0x1336;
    /* 0x01338 */ s16 mAttackSphIFrameTimer;
    /* 0x0133A */ s16 mNeckSphIFrameTimer;
    /* 0x0133C */ s16 mBodyCylIFrameTimer;
    /* 0x0133E */ s16 mOffTgTimer;
    /* 0x01340 */ int mDemoModeTimer;
    /* 0x01344 */ int mDownTimer;
    /* 0x01348 */ int field_0x1348;
    /* 0x0134C */ int mFadeAwayTimer;
    /* 0x01350 */ int field_0x1350;
    /* 0x01354 */ int field_0x1354;
    /* 0x01358 */ int field_0x1358;
    /* 0x0135C */ int field_0x135c;
    /* 0x01360 */ u8 field_0x1360[0x01364 - 0x01360];
    /* 0x01364 */ int field_0x1364;
    /* 0x01368 */ int field_0x1368;
    /* 0x0136C */ u8 field_0x136C[0x01370 - 0x0136C];
    /* 0x01370 */ int mAlphaType;
    /* 0x01374 */ int mKankyoColType;
    /* 0x01378 */ u8 mGlowLightA;
    /* 0x01379 */ u8 mFootSmokeAlpha;
    /* 0x0137A */ u8 mEyeAlpha;
    /* 0x0137B */ u8 field_0x137b;
    /* 0x0137C */ u8 mGlowLightR;
    /* 0x0137D */ u8 mGlowLightG;
    /* 0x0137E */ u8 mGlowLightB;
    /* 0x0137F */ u8 mGlowBody;
    /* 0x01380 */ u8 field_0x1380;
    /* 0x01381 */ u8 field_0x1381;
    /* 0x01382 */ u8 field_0x1382;
    /* 0x01383 */ u8 field_0x1383;
    /* 0x01384 */ u8 field_0x1384;
    /* 0x01385 */ u8 field_0x1385;
    /* 0x01386 */ u8 field_0x1386;
    /* 0x01387 */ u8 mRopesEnabled;
    /* 0x01388 */ u8 field_0x1388;
    /* 0x01389 */ u8 mWeponEfMode;
    /* 0x0138A */ u8 mPlayEndEf;
    /* 0x0138B */ u8 field_0x138b;
    /* 0x0138C */ u8 mSwNo;
    /* 0x0138D */ u8 field_0x138d;
    /* 0x0138E */ u8 field_0x138e;
    /* 0x0138F */ u8 field_0x138f;
    /* 0x01390 */ u8 field_0x1390;
    /* 0x01391 */ u8 field_0x1391;
    /* 0x01392 */ u8 field_0x1392;
    /* 0x01393 */ u8 field_0x1393;
    /* 0x01394 */ s16 field_0x1394;
    /* 0x01396 */ s16 field_0x1396;
    /* 0x01398 */ s16 field_0x1398;
    /* 0x0139C */ mDoExt_3DlineMat0_c field_0x139c;
    /* 0x013B8 */ cXyz field_0x13b8;
    /* 0x013C4 */ cXyz field_0x13c4;
    /* 0x013D0 */ cXyz field_0x13d0[5];
    /* 0x0140C */ cXyz field_0x140c[5];
    /* 0x01448 */ csXyz field_0x1448[5];
    /* 0x01466 */ csXyz field_0x1466[5];
    /* 0x01484 */ u8 field_0x1484;
    /* 0x01485 */ u8 field_0x1485;
    /* 0x01486 */ u8 field_0x1486;
    /* 0x01488 */ cXyz mDemoCamCenter;
    /* 0x01494 */ cXyz mDemoCamEye;
    /* 0x014A0 */ f32 mDemoCamBank;
    /* 0x014A4 */ f32 field_0x14a4;
    /* 0x014A8 */ f32 field_0x14a8;
    /* 0x014AC */ s16 field_0x14ac;
    /* 0x014B0 */ f32 field_0x14b0;
    /* 0x014B4 */ u8 field_0x14B4[0x014B8 - 0x014B4];
    /* 0x014B8 */ dBgS_AcchCir mAcchCir;
    /* 0x014F8 */ dBgS_ObjAcch mAcch;
    /* 0x016D0 */ dBgS_AcchCir mMagicAcchCir[2];
    /* 0x01750 */ dBgS_ObjAcch mMagicAcch[2];
    /* 0x01B00 */ dCcD_Stts mBodyCcStts;
    /* 0x01B3C */ dCcD_Stts field_0x1b3c;
    /* 0x01B78 */ dCcD_Sph mNeckSph;
    /* 0x01CB0 */ dCcD_Cyl mBodyCyls[3];
    /* 0x02064 */ dCcD_Sph mAttackSphs[4];
    /* 0x02544 */ dCcD_Sph mLineSphs[190];
    /* 0x10CD4 */ dCcD_Sph mMagicSphs[2];
    /* 0x10F44 */ dCcU_AtInfo mAtInfo;
    /* 0x10F68 */ u32 mWeponEffEmtrIDs[3];
    /* 0x10F74 */ u32 field_0x10f74;
    /* 0x10F78 */ u32 mFootSmokeEmtrIDs[2];
    /* 0x10F80 */ u32 field_0x10f80[30];
    /* 0x10FF8 */ u8 mInitHIO;
};

#endif /* D_A_E_VT_H */

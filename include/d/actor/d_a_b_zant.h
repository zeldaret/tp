#ifndef D_A_B_ZANT_H
#define D_A_B_ZANT_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/d_bg_s_acch.h"
#include "d/d_msg_flow.h"

/**
 * @ingroup actors-enemies
 * @class daB_ZANT_c
 * @brief Zant
 *
 * @details Palace of Twilight dungeon boss.
 *
 */
class daB_ZANT_c : public fopEn_enemy_c {
public:
    enum daB_ZANT_ACTION {
        ACT_SMALL_ATTACK,
        ACT_WARP,
        ACT_DAMAGE,
        ACT_CONFUSE,
        ACT_OPENING,
        ACT_FLY,
        ACT_FLY_GROUND,
        ACT_WATER,
        ACT_HOOK,
        ACT_SWIM,
        ACT_SIMA_JUMP,
        ACT_ICE_DEMO,
        ACT_ICE_JUMP,
        ACT_ICE_STEP,
        ACT_ICE_DAMAGE,
        ACT_MONKEY,
        ACT_MONKEY_FALL,
        ACT_MONKEY_DAMAGE,
        ACT_LAST_START_DEMO,
        ACT_LAST_ATTACK,
        ACT_LAST_TIRED,
        ACT_LAST_DAMAGE,
        ACT_LAST_END_DEMO,
        ACT_ROOM_CHANGE,
    };

    /* 8063E19C */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 8063E264 */ static int JointCallBack(J3DJoint*, int);
    /* 8063E2B0 */ int draw();
    /* 8063E5C4 */ void setBck(int, u8, f32, f32);
    /* 8063E668 */ bool checkBck(int);
    /* 8063E6C4 */ void setActionMode(int, int);
    /* 8063E6F8 */ bool checkBigDamage();
    /* 8063E79C */ int checkDamageType();
    /* 8063E810 */ void setDamageSe(dCcD_Sph*, int);
    /* 8063E938 */ void damage_check();
    /* 8063F524 */ void ice_damage_check();
    /* 8063F84C */ bool setNextDamageMode(int);
    /* 8063FAB4 */ bool checkAvoidWeapon(int);
    /* 8063FF6C */ void setTgHitBit(int);
    /* 8063FFAC */ void setCoHitBit(int);
    /* 8063FFEC */ void setTgShield(int);
    /* 806400BC */ void setTgType(u32);
    /* 806400C8 */ void setZantMessage(int);
    /* 80640104 */ int doZantMessage();
    /* 80640180 */ void setIceLandingEffect(int);
    /* 80640310 */ void setWaterBubble();
    /* 806403D4 */ void setMonkeyFallEffect();
    /* 80640478 */ void setLastRollEffect();
    /* 80640654 */ f32 getMagicSpeed();
    /* 80640664 */ f32 getMagicWaterSpeed();
    /* 80640674 */ void executeSmallAttack();
    /* 80640C20 */ bool calcScale(int);
    /* 80640D14 */ void executeWarp();
    /* 806412A8 */ void executeDamage();
    /* 806414E4 */ void executeConfuse();
    /* 80641640 */ void executeOpening();
    /* 806427EC */ void executeFly();
    /* 80642EC8 */ void executeFlyGround();
    /* 806430E0 */ bool checkSwimLinkNearMouth();
    /* 806432F8 */ bool checkSwimLinkNear();
    /* 8064350C */ void executeHook();
    /* 80643690 */ void executeWater();
    /* 80644074 */ void executeSwim();
    /* 80644A3C */ void executeSimaJump();
    /* 80645014 */ void executeIceDemo();
    /* 8064524C */ void executeIceJump();
    /* 80645DA4 */ void executeIceStep();
    /* 8064687C */ void executeIceDamage();
    /* 806471CC */ void setFarPillarPos();
    /* 806473E4 */ void setNearPillarPos();
    /* 80647468 */ void setNextPillarInfo(int);
    /* 806474F4 */ void setNextPillarPos();
    /* 80647A34 */ void checkPillarSwing();
    /* 80647AC8 */ void executeMonkey();
    /* 806481F4 */ void executeMonkeyFall();
    /* 80648544 */ void executeMonkeyDamage();
    /* 80648778 */ void setLastWarp(int, int);
    /* 80648F64 */ void executeLastStartDemo();
    /* 806494A8 */ void executeLastAttack();
    /* 8064A58C */ void executeLastTired();
    /* 8064A688 */ void executeLastDamage();
    /* 8064AC8C */ void executeLastEndDemo();
    /* 8064B270 */ void calcMahojinAnime();
    /* 8064B49C */ void calcRoomChangeCamera(int);
    /* 8064B69C */ void initNextRoom();
    /* 8064B868 */ void executeRoomChange();
    /* 8064C1C0 */ void setBaseActionMode(int);
    /* 8064C5A8 */ void action();
    /* 8064CB1C */ void mtx_set();
    /* 8064CD0C */ void cc_set();
    /* 8064CFA8 */ void cc_ice_set();
    /* 8064DA48 */ int execute();
    /* 8064DB70 */ int _delete();
    /* 8064DC04 */ int CreateHeap();
    /* 8064E190 */ int create();

    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x05B8 */ J3DModel* mpSwordLModel;
    /* 0x05BC */ J3DModel* mpSwordRModel;
    /* 0x05C0 */ J3DModel* mpMahojinModel;
    /* 0x05C4 */ J3DModel* mpMahojinModel2;
    /* 0x05C8 */ mDoExt_brkAnm* mpMahojinBrk;
    /* 0x05CC */ mDoExt_btkAnm* mpMahojinBtk;
    /* 0x05D0 */ mDoExt_btkAnm* mpMahojinStartBtk;
    /* 0x05D4 */ mDoExt_brkAnm* mpMahojinBrk2;
    /* 0x05D8 */ mDoExt_btkAnm* mpMahojinStartBtk2;
    /* 0x05DC */ cXyz field_0x5dc;
    /* 0x05E8 */ u8 field_0x5e8;
    /* 0x05E9 */ u8 field_0x5e9;
    /* 0x05EC */ f32 field_0x5ec;
    /* 0x05F0 */ Z2CreatureEnemy mSound;
    /* 0x0694 */ u8 field_0x694[0x06A0 - 0x0694];
    /* 0x06A0 */ cXyz mFlyWarpPos;
    /* 0x06AC */ cXyz field_0x6ac;
    /* 0x06B8 */ s16 field_0x6b8;
    /* 0x06BA */ s16 field_0x6ba;
    /* 0x06BC */ f32 field_0x6bc;
    /* 0x06C0 */ f32 field_0x6c0;
    /* 0x06C4 */ f32 field_0x6c4;
    /* 0x06C8 */ f32 field_0x6c8;
    /* 0x06CC */ f32 field_0x6cc;
    /* 0x06D0 */ f32 field_0x6d0;
    /* 0x06D4 */ int mAction;
    /* 0x06D8 */ int mLastAction;
    /* 0x06DC */ int mMode;
    /* 0x06E0 */ u32 mShadowKey;
    /* 0x06E4 */ u16 field_0x6e4;
    /* 0x06E8 */ int field_0x6e8;
    /* 0x06EC */ int field_0x6ec;
    /* 0x06F0 */ int field_0x6f0;
    /* 0x06F4 */ int field_0x6f4;
    /* 0x06F8 */ s16 field_0x6f8;
    /* 0x06FA */ u8 field_0x6fa;
    /* 0x06FB */ u8 mFightPhase;
    /* 0x06FC */ u8 field_0x6fc;
    /* 0x06FD */ u8 field_0x6fd;
    /* 0x06FE */ u8 mFlyWarpPosID;
    /* 0x06FF */ u8 field_0x6ff;
    /* 0x0700 */ u8 field_0x700[0x0701 - 0x0700];
    /* 0x0701 */ u8 field_0x701;
    /* 0x0702 */ u8 field_0x702;
    /* 0x0703 */ u8 field_0x703;
    /* 0x0704 */ u8 field_0x704;
    /* 0x0705 */ u8 field_0x705;
    /* 0x0706 */ u8 field_0x706;
    /* 0x0707 */ u8 field_0x707;
    /* 0x0708 */ u8 field_0x708;
    /* 0x0709 */ u8 field_0x709;
    /* 0x070A */ u8 field_0x70a;
    /* 0x070B */ u8 field_0x70b;
    /* 0x070C */ u8 field_0x70c;
    /* 0x070D */ u8 field_0x70d;
    /* 0x070E */ u8 field_0x70e;
    /* 0x070F */ u8 field_0x70f;
    /* 0x0710 */ u8 field_0x710;
    /* 0x0711 */ u8 field_0x711;
    /* 0x0712 */ u8 field_0x712;
    /* 0x0713 */ u8 field_0x713;
    /* 0x0714 */ u8 field_0x714;
    /* 0x0715 */ u8 field_0x715;
    /* 0x0716 */ u8 field_0x716;
    /* 0x0717 */ u8 field_0x717;
    /* 0x0718 */ u8 field_0x718;
    /* 0x0719 */ u8 mTakenBigDmg;
    /* 0x071A */ u8 mFightCycle;
    /* 0x071B */ u8 field_0x71b;
    /* 0x071C */ u8 field_0x71c;
    /* 0x071D */ u8 field_0x71d;
    /* 0x071E */ s16 field_0x71e;
    /* 0x0720 */ s16 field_0x720;
    /* 0x0722 */ s16 field_0x722;
    /* 0x0724 */ u32 field_0x724;
    /* 0x0728 */ u8 field_0x728;
    /* 0x072C */ fpc_ProcID mMobileIDs[4];
    /* 0x073C */ fpc_ProcID field_0x73c[9];
    /* 0x0760 */ cXyz field_0x760;
    /* 0x076C */ cXyz field_0x76c;
    /* 0x0778 */ f32 field_0x778;
    /* 0x077C */ f32 field_0x77c;
    /* 0x0780 */ int mMsgNo;
    /* 0x0784 */ int mMsgID;
    /* 0x0788 */ msg_class* mpMsg;
    /* 0x078C */ dBgS_AcchCir mAcchCir;
    /* 0x07CC */ dBgS_ObjAcch mAcch;
    /* 0x09A4 */ dCcD_Stts field_0x9a4;
    /* 0x09E0 */ dCcD_Sph field_0x9e0[2];
    /* 0x0C50 */ dCcU_AtInfo mAtInfo;
    /* 0x0C74 */ dCcD_Stts field_0xc74;
    /* 0x0CB0 */ dCcD_Sph mFootCc[11];
    /* 0x1A18 */ dCcD_Sph mFoot2Cc[11];
    /* 0x2780 */ dCcD_Sph mCameraCc[11];
    /* 0x34E8 */ dCcD_Cyl mRollCc;
    /* 0x3624 */ dCcD_Sph mSwordCc[2];
    /* 0x3894 */ u32 field_0x3894;
    /* 0x3898 */ u32 field_0x3898;
    /* 0x389C */ u32 field_0x389c[4];
    /* 0x38AC */ u32 field_0x38ac[2];
    /* 0x38B4 */ u32 field_0x38b4;
    /* 0x38B8 */ u8 field_0x38b8;
};

STATIC_ASSERT(sizeof(daB_ZANT_c) == 0x38BC);

class daB_ZANT_HIO_c {
public:
    /* 8063E10C */ daB_ZANT_HIO_c();
    /* 8064E994 */ virtual ~daB_ZANT_HIO_c() {}

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 mModelSize;
    /* 0x0C */ f32 mMahojinWaitTime;
    /* 0x10 */ f32 mDemoWarpTime;
    /* 0x14 */ f32 mPlayWarpTime;
    /* 0x18 */ f32 mSwordAttackSize;
    /* 0x1C */ f32 mAttackAnmSpeed;
    /* 0x20 */ f32 mBulletNum;
    /* 0x24 */ f32 mBulletSpeed;
    /* 0x28 */ f32 mBulletSpeedUnderwater;
    /* 0x2C */ f32 mMahojinSize;
    /* 0x30 */ f32 mMahojinOffsetX;
    /* 0x34 */ f32 mMahojinOffsetY;
    /* 0x38 */ f32 mMahojinOffsetZ;
    /* 0x3C */ f32 mAppearAnmSpeed;
    /* 0x40 */ f32 mDisappearAnmSpeed;
};

#endif /* D_A_B_ZANT_H */

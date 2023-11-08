#ifndef D_A_HORSE_H
#define D_A_HORSE_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/a/d_a_player.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/bg/d_bg_s_lin_chk.h"
#include "d/cc/d_cc_d.h"
#include "d/msg/d_msg_flow.h"
#include "f_op/f_op_actor.h"

class daHorseRein_c {
public:
    /* 80837F2C */ void setReinPos(int);
    /* 808383A8 */ void setReinPosPart(int);
    /* 80844FB0 */ ~daHorseRein_c();
    /* 80844FEC */ daHorseRein_c();

private:
    /* 0x00 */ cXyz* field_0x0[2];
    /* 0x08 */ int field_0x8[2];
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ cXyz field_0x1c;
};  // Size: 0x28

class daHorseFootData_c {
public:
    /* 80844F70 */ ~daHorseFootData_c();
    /* 80844FAC */ daHorseFootData_c();

private:
    /* 0x0 */ u8 field_0x0[0xE4];
};  // Size: 0xE4

class daHoZelda_c;
class daHorse_c : public fopAc_ac_c {
public:
    enum daHorse_ERFLG0 {
        /* 0x001 */ ERFLG0_UNK_1 = 0x1,
        /* 0x010 */ MOVE_ACCEPT = 0x10,
        /* 0x080 */ RIDE_RUN_FLG = 0x80,
        /* 0x100 */ CUT_TURN_CANCEL = 0x100,

        ERFLG0_UNK_18 = 0x18,
    };

    enum daHorse_RFLG0 {
        /* 0x02 */ ENEMY_SEARCH = 2,
        /* 0x08 */ LASH_DASH_START = 8,
        /* 0x10 */ TURN_STAND = 0x10,
        /* 0x40 */ TURN_STAND_CAMERA = 0x40,
    };

    enum daHorse_FLG0 {
        /* 0x00000020 */ RODEO_LEFT = 0x20,
        /* 0x00000040 */ RIDE_START_FLG = 0x40,
        /* 0x00000080 */ NO_DRAW_WAIT = 0x80,
        /* 0x00010000 */ PLAYER_BACK_RIDE_LASH = 0x10000,
        /* 0x20000000 */ TURN_CANCEL_KEEP = 0x20000000,
        /* 0x80000000 */ RODEO_MODE = 0x80000000
    };

    fopAc_ac_c* getZeldaActor();
    /* 807E27BC */ void cancelOriginalDemo();
    /* 807E27F8 */ void onDemoJumpDistance(f32, f32);
    /* 807E28B8 */ void changeDemoPos0(cXyz const*);
    /* 807E28D4 */ void changeDemoMode(u32, int);
    /* 807E28E0 */ void setHorsePosAndAngle(cXyz const*, s16);
    /* 807E2964 */ void changeOriginalDemo();
    /* 80838498 */ void coHitCallbackBoarJump(fopAc_ac_c*);
    /* 80838798 */ void coHitCallbackBoarHit(fopAc_ac_c*, dCcD_GObjInf*);
    /* 80838904 */ void coHitCallbackCowHit(fopAc_ac_c*);
    /* 80838B78 */ void modelCallBack(int);
    /* 80838F98 */ void createHeap();
    /* 8083940C */ void checkEnding();
    /* 80839498 */ void create();
    /* 80839D1C */ void setBasAnime(int);
    /* 80839EBC */ void resetBasAnime();
    /* 80839ED4 */ void setDoubleAnime(f32, f32, f32, u16, u16, f32);
    /* 8083A20C */ void setSingleAnime(u16, f32, f32, s16, f32, int);
    /* 8083A3C4 */ void animePlay();
    /* 8083A5AC */ void checkDemoAction();
    /* 8083A890 */ void setStickRodeoMove();
    /* 8083AC7C */ void setStickCallMove();
    /* 8083ACEC */ void setDemoMoveData(u32*, cXyz const*);
    /* 8083AEC0 */ void setDemoData();
    /* 8083B578 */ void acceptPlayerRide();
    /* 8083B600 */ void setStickData();
    /* 8083B828 */ void setTurnStartVibration();
    /* 8083B82C */ void setTurnVibration();
    /* 8083B830 */ void setMoveAnime(f32);
    /* 8083BF48 */ void checkHorseNoMove(int);
    /* 8083CA80 */ void checkTurnPlayerState();
    /* 8083CB38 */ void setSpeedAndAngle();
    /* 8083D748 */ void checkWaitTurn() const;
    /* 8083D774 */ void setRoomInfo(int);
    /* 8083D918 */ void setBodyPart();
    /* 8083D9D8 */ void setMatrix();
    /* 8083DC58 */ void setDashEffect(u32*);
    /* 8083DEEC */ void setEffect();
    /* 8083E4D8 */ void setCollision();
    /* 8083E6E8 */ void autoGroundHit();
    /* 8083E760 */ void setTailAngle();
    /* 8083E8A4 */ void setNeckAngle();
    /* 8083EA78 */ void copyFootMatrix();
    /* 8083EB10 */ void setFootMatrix();
    /* 8083ED88 */ void setLegAngle(f32, int, int, s16*);
    /* 8083F3B0 */ void footBgCheck();
    /* 8083F9AC */ void setReinPosMoveInit(int);
    /* 8083FDAC */ void copyReinPos();
    /* 8083FEB4 */ void setReinPosHandSubstance(int);
    /* 8084010C */ void setReinPosNormalSubstance();
    /* 808402F8 */ void bgCheck();
    /* 80840714 */ void checkSpecialWallHitSubstance(cXyz const&) const;
    /* 808407B0 */ void setServiceWaitTimer();
    /* 80840800 */ void checkServiceWaitAnime();
    /* 80840844 */ void checkTurnInput();
    /* 808408F0 */ void checkTgHitTurn();
    /* 808409C0 */ void checkTurnAfterFastMove(f32);
    /* 80840B28 */ void setNeckAnimeMorf();
    /* 80840B88 */ void setNeckAnime(u16, f32, f32, s16);
    /* 80840CA4 */ void resetNeckAnime();
    /* 80840CE4 */ void setLashCnt();
    /* 80840FE0 */ void setTalkModeWolf();
    /* 80841084 */ void setBoarHit(fopAc_ac_c*, int);
    /* 8084116C */ void savePos();
    /* 808411D0 */ void callHorseSubstance(cXyz const*);
    /* 80841468 */ void setHorsePosAndAngleSubstance(cXyz const*, s16);
    /* 808415B4 */ void checkPlayerHeavy();
    /* 80841628 */ void setTgCoGrp(u32, u32);
    /* 80841698 */ void onRideFlgSubstance();
    /* 808416D4 */ void offRideFlgSubstance();
    /* 80841708 */ void procWaitInit();
    /* 808417B8 */ void procWait();
    /* 80841F04 */ void procMoveInit();
    /* 80841F80 */ void procMove();
    /* 808423DC */ void procStopInit();
    /* 808425BC */ void procStop();
    /* 80842878 */ void procTurnInit(int);
    /* 80842AB0 */ void procTurn();
    /* 80843008 */ void procJumpInit(int);
    /* 808432E0 */ void procJump();
    /* 80843604 */ void procLandInit(f32, int);
    /* 80843770 */ void procLand();
    /* 808438AC */ void procLargeDamageInit();
    /* 8084396C */ void procLargeDamage();
    /* 808439C8 */ void procToolDemoInit();
    /* 80843A44 */ void procToolDemo();
    /* 80843BFC */ void searchSceneChangeArea(fopAc_ac_c*);
    /* 80843C74 */ void execute();
    /* 80844590 */ void draw();
    /* 8084478C */ ~daHorse_c();
    /* 80844CB0 */ daHorse_c();

    bool checkNoBombProc() const { return field_0x16b4 == 0 || field_0x16b4 == 1; }
    bool checkResetStateFlg0(daHorse_RFLG0 flag) const { return mResetStateFlg0 & flag; }
    bool checkEndResetStateFlg0(daHorse_ERFLG0 flag) const { return mEndResetStateFlg0 & flag; }
    bool checkStateFlg0(daHorse_FLG0 flag) const { return mStateFlg0 & flag; }
    f32 getNormalMaxSpeedF() { return mNormalMaxSpeedF; }
    f32 getLashMaxSpeedF() { return mLashMaxSpeedF; }
    void changeDemoMoveAngle(s16 angle) { mDemoMoveAngle = angle; }
    void setDemoStickR(f32 stick) { mDemoStickR = stick; }
    void i_changeDemoMode(u32 param_0, int param_1) { field_0x1740 = param_0; field_0x1728 = param_1; }
    void i_changeOriginalDemo() { field_0x16b8 = 3; field_0x1728 = 0; }
    void i_setHorsePosAndAngle(cXyz const* i_pos, s16 i_angle) { (this->*mpSetHorsePosAngleFn)(i_pos, i_angle); }
    void onRideFlg() { (this->*mpOnRideFlgFn)(); }
    void offRideFlg() { (this->*mpOffRideFlgFn)(); }
    void onStateFlg0(daHorse_FLG0 flag) { mStateFlg0 |= flag; }
    void offStateFlg0(daHorse_FLG0 flag) { mStateFlg0 &= ~flag; }
    void onEndResetStateFlg0(daHorse_ERFLG0 i_flag) { mEndResetStateFlg0 |= i_flag;}
    void offNoDrawWait() { offStateFlg0(NO_DRAW_WAIT); }
    int checkSpecialWallHit(const cXyz& param_0) { return (this->*mpCheckSpecialWallHitFn)(param_0); }
    MtxP getSaddleMtx() { return field_0x570->i_getAnmMtx(21); }
    MtxP getRootMtx() { return field_0x570->i_getAnmMtx(0); }
    f32 getAnmFrameMax(int i_idx) const { return field_0x5b0[i_idx].getEnd(); }
    f32 getAnmFrame(int i_idx) const { return field_0x5b0[i_idx].getFrame(); }
    s16 getAimNeckAngleY() const { return mAimNeckAngleY; }
    f32 getMorfFrame() const { return mMorfFrame; }
    f32 getBlendRate() { return field_0x594[1].getRatio(); }
    u16 getAnmIdx(int i_idx) const { return mAnmIdx[i_idx]; }

    daHoZelda_c* i_getZeldaActor() { return (daHoZelda_c*)mZeldaActorKeep.getActor(); }

    bool checkTurnStandCamera() const { return checkResetStateFlg0(TURN_STAND_CAMERA); }
    bool checkTurnStand() const { return checkResetStateFlg0(TURN_STAND); }
    bool checkRodeoMode() const { return checkStateFlg0(RODEO_MODE); }
    bool checkCutTurnCancel() const { return checkEndResetStateFlg0(CUT_TURN_CANCEL); }
    bool checkTurnCancelKeep() const { return checkStateFlg0(TURN_CANCEL_KEEP); }
    bool checkTurn() const { return field_0x16b4 == 3 && field_0x1720 == 0; }
    bool checkStop() const { return field_0x16b4 == 2; }
    bool checkJump() const { return field_0x16b4 == 4; }
    bool checkWait() const { return field_0x16b4 == 0; }
    bool checkLand() const { return field_0x16b4 == 5 && field_0x171a == 0; }
    bool checkGetOff() const { return fabsf(speedF) < 3.0f; }
    bool checkEnemySearch() { return checkResetStateFlg0(ENEMY_SEARCH); }

    void onTagJump(f32 param_0, f32 param_1, f32 param_2) {
        field_0x1768 = param_0;
        field_0x176c = param_1;
        field_0x1770 = param_2;
        onEndResetStateFlg0(ERFLG0_UNK_1);
    }

    void onMoveAccept() { onEndResetStateFlg0(MOVE_ACCEPT); }
    void onPlayerLash() { onEndResetStateFlg0(ERFLG0_UNK_18); }
    void offPlayerBackRideLash() { offStateFlg0(PLAYER_BACK_RIDE_LASH); }

    static u8 const m_footJointTable[8];
    static f32 const m_callLimitDistance2;

//private:
    /* 0x0568 */ u8 field_0x568[8];
    /* 0x0570 */ J3DModel* field_0x570;
    /* 0x0574 */ void* field_0x574;
    /* 0x0578 */ J3DFrameCtrl field_0x578;
    /* 0x058C */ int field_0x58c;
    /* 0x0590 */ u8 field_0x590[4];
    /* 0x0594 */ mDoExt_AnmRatioPack field_0x594[3];
    /* 0x05AC */ void* field_0x5ac;
    /* 0x05B0 */ daPy_frameCtrl_c field_0x5b0[3];
    /* 0x05F8 */ u8 field_0x5f8[4];
    /* 0x05FC */ dBgS_AcchCir field_0x5fc[3];
    /* 0x06BC */ dBgS_Acch field_0x6bc;
    /* 0x0894 */ dCcD_Stts field_0x894;
    /* 0x08D0 */ dBgS_HorseLinChk field_0x8d0;
    /* 0x0940 */ dCcD_Cyl field_0x940[3];
    /* 0x0CF4 */ dCcD_Cyl field_0xcf4;
    /* 0x0E30 */ dCcD_Cyl field_0xe30;
    /* 0x0F6C */ dCcD_Sph field_0xf6c;
    /* 0x10A4 */ Z2CreatureRide field_0x10a4;
    /* 0x1140 */ u8 field_0x1140[0x10];
    /* 0x1150 */ daHorseRein_c field_0x1150[3];
    /* 0x11C8 */ u8 field_0x11c8[0x40];
    /* 0x1208 */ dMsgFlow_c field_0x1208;
    /* 0x1254 */ daPy_actorKeep_c mZeldaActorKeep;
    /* 0x125C */ u8 field_0x125c[0xC8];
    /* 0x1324 */ daHorseFootData_c mFootData[4];
    /* 0x16B4 */ u8 field_0x16b4;
    /* 0x16B5 */ u8 field_0x16b5[3];
    /* 0x16B8 */ u8 field_0x16b8;
    /* 0x16B9 */ u8 field_0x16b9[2];
    /* 0x16BB */ u8 mRodeoPointCnt;
    /* 0x16BC */ u8 field_0x16bc[0x16C4 - 0x16BC];
    /* 0x16C4 */ u16 mAnmIdx[3];
    /* 0x16CA */ u8 field_0x16ca[0x16F2 - 0x16CA];
    /* 0x16F2 */ s16 mAimNeckAngleY;
    /* 0x16F4 */ u8 field_0x16f4[0x8];
    /* 0x16FC */ s16 mDemoMoveAngle;
    /* 0x16FE */ u8 field_0x16fe[4];
    /* 0x1702 */ s16 field_0x1702;
    /* 0x1704 */ u8 field_0x1704[2];
    /* 0x1706 */ s16 mCowHitAngle;
    /* 0x1708 */ s16 mCowHit;
    /* 0x170A */ u8 field_0x170a[0x171A - 0x170A];
    /* 0x171A */ s16 field_0x171a;
    /* 0x171C */ u8 field_0x171c[0x1720 - 0x171C];
    /* 0x1720 */ s16 field_0x1720;
    /* 0x1722 */ u8 field_0x1722[0x1728 - 0x1722];
    /* 0x1728 */ int field_0x1728;
    /* 0x172C */ u8 field_0x172c[0x14];
    /* 0x1740 */ u32 field_0x1740;
    /* 0x1744 */ u32 mStateFlg0;
    /* 0x1748 */ u32 mResetStateFlg0;
    /* 0x174C */ u32 mEndResetStateFlg0;
    /* 0x1750 */ f32 mMorfFrame;
    /* 0x1754 */ u8 field_0x1754[0x14];
    /* 0x1768 */ f32 field_0x1768;
    /* 0x176C */ f32 field_0x176c;
    /* 0x1770 */ f32 field_0x1770;
    /* 0x1774 */ u8 field_0x1774[0x14];
    /* 0x1788 */ f32 mDemoStickR;
    /* 0x178C */ f32 mNormalMaxSpeedF;
    /* 0x1790 */ f32 mLashMaxSpeedF;
    /* 0x1794 */ u8 field_0x1794[0x30];
    /* 0x17C4 */ cXyz mDemoPos0;
    /* 0x17D0 */ u8 field_0x17d0[0x18A4 - 0x17D0];
    /* 0x18A4 */ int (daHorse_c::*mpProcFn)();
    /* 0x18B0 */ int (daHorse_c::*mpCheckSpecialWallHitFn)(const cXyz&);
    /* 0x18BC */ void (daHorse_c::*mpSetReinPosHandFn)(int);
    /* 0x18C8 */ void (daHorse_c::*mpSetReinPosNormalFn)();
    /* 0x18D4 */ int (daHorse_c::*mpCallHorseFn)(const cXyz*);
    /* 0x18E0 */ int (daHorse_c::*mpSetHorsePosAngleFn)(const cXyz* i_pos, s16 i_angle);
    /* 0x18EC */ void (daHorse_c::*mpOnRideFlgFn)();
    /* 0x18F8 */ void (daHorse_c::*mpOffRideFlgFn)();
};

#endif /* D_A_HORSE_H */

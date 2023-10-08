#ifndef D_A_D_A_PLAYER_H
#define D_A_D_A_PLAYER_H

#include "d/d_drawlist.h"
#include "f_op/f_op_actor.h"

struct ResTIMG;

class daPy_sightPacket_c : public dDlst_base_c {
public:
    daPy_sightPacket_c() {}
    /* 8015F1A0 */ virtual void draw();
    /* 80140CDC */ virtual ~daPy_sightPacket_c();

    /* 8015F2FC */ void setSight();
    /* 8015F384 */ void setSightImage(ResTIMG*);

    bool getDrawFlg() { return mDrawFlag; }
    void onDrawFlg() { mDrawFlag = true; }
    void offDrawFlg() { mDrawFlag = false; }
    void setPos(const cXyz* i_pos) { mPos = *i_pos; }

private:
    /* 0x04 */ bool mDrawFlag;
    /* 0x05 */ u8 field_0x5[3];
    /* 0x08 */ cXyz mPos;
    /* 0x14 */ Mtx field_0x14;
    /* 0x44 */ ResTIMG* mpImg;
    /* 0x48 */ u8* mpData;
};

class daPy_boomerangMove_c {
public:
    /* 8015E5B0 */ void initOffset(cXyz const*);
    /* 8015E654 */ int posMove(cXyz*, s16*, fopAc_ac_c*, s16);
    /* 8015E87C */ void bgCheckAfterOffset(cXyz const*);

    static void initDropAngleY() { m_dropAngleY = 0x4000; }
    static void offEventKeepFlg() { m_eventKeepFlg = 0; }

    static s16 m_dropAngleY;
    static s16 m_eventKeepFlg;

private:
    /* 0x0 */ u8 field_0x0;
    /* 0x2 */ s16 field_0x2;
    /* 0x4 */ f32 field_0x4;
    /* 0x8 */ f32 field_0x8;
};  // Size: 0xC

class daPy_anmHeap_c {
public:
    enum daAlinkHEAP_TYPE {
        HEAP_TYPE_1 = 1,
        HEAP_TYPE_2,
        HEAP_TYPE_3,
        HEAP_TYPE_4,
        HEAP_TYPE_5,
    };

    /* 80140DCC */ void __defctor();  // compiler generated due to ctor with default param

    daPy_anmHeap_c(u32 param_0 = 0);
    ~daPy_anmHeap_c();
    void initData();
    void* mallocBuffer();
    void createHeap(daPy_anmHeap_c::daAlinkHEAP_TYPE);
    void* loadData(u16);
    void* loadDataIdx(u16);
    void* loadDataPriIdx(u16);
    void* loadDataDemoRID(u16, u16);
    JKRHeap* setAnimeHeap();

    u16 getIdx() const { return mIdx; }
    void resetIdx() { mIdx = 0xffff; }
    void resetPriIdx() { mPriIdx = 0xffff; }
    void resetArcNo() { mArcNo = 0xffff; }
    bool checkNoSetArcNo() const { return mArcNo == 0xFFFF; }
    void setBufferSize(u32 size) { mBufferSize = size; }
    void setBuffer(u8* buf) { mBuffer = buf; }
    u8* getBuffer() { return mBuffer; }
    bool checkNoSetIdx() const { return mIdx == 0xFFFF; }
    bool checkNoSetPriIdx() const { return mPriIdx == 0xFFFF; }

private:
    /* 0x00 */ u16 mIdx;
    /* 0x02 */ u16 mPriIdx;
    /* 0x04 */ u16 mArcNo;
    /* 0x06 */ u16 field_0x06;
    /* 0x08 */ u32 mBufferSize;
    /* 0x0C */ u8* mBuffer;
    /* 0x10 */ JKRSolidHeap* mAnimeHeap;
};  // Size = 0x14

class daPy_actorKeep_c {
public:
    daPy_actorKeep_c() {
        clearData();
    }

    void setActor();
    void setData(fopAc_ac_c*);
    void clearData();

    u32 getID() const { return mID; }
    void setID(u32 id) { mID = id; }
    fopAc_ac_c* getActor() const { return mActor; }
    fopAc_ac_c* getActorConst() const { return mActor; }

private:
    /* 0x0 */ u32 mID;
    /* 0x4 */ fopAc_ac_c* mActor;
};  // Size: 0x8

class daPy_frameCtrl_c : public J3DFrameCtrl {
public:
    /* 80140D24 */ ~daPy_frameCtrl_c();
    /* 80140D80 */ daPy_frameCtrl_c();
    bool checkAnmEnd();
    void updateFrame();
    void setFrameCtrl(u8, short, short, float, float);

    u16 getEndFlg() { return mEndFlg; }
    u16 getNowSetFlg() { return mNowSetFlg; }
    void onEndFlg() { mEndFlg = 1; }
    void onNowSetFlg() { mNowSetFlg = 1; }
    void offNowSetFlg() { mNowSetFlg = 0; }
    void offEndFlg() {
        mEndFlg = 0;
        mNowSetFlg = 0;
    }

private:
    /* 0x14 */ u16 mEndFlg;
    /* 0x16 */ u16 mNowSetFlg;
};

class Z2WolfHowlMgr;
class daBoomerang_c;

class daPy_demo_c {
public:
    void setSpecialDemoType();

    void setDemoType(u16 pType) { mDemoType = pType; }
    int getDemoType() const { return mDemoType; }
    void setDemoMode(u32 mode) { mDemoMode = mode; }
    u32 getDemoMode() const { return mDemoMode; }
    int getParam1() const { return mParam1; }
    void setOriginalDemoType() { setDemoType(3); }
    void i_setSpecialDemoType() { setDemoType(5); }
    void setSystemDemoType() { setDemoType(2); }
    void setStick(f32 stick) { mStick = stick; }
    void setMoveAngle(s16 angle) { mDemoMoveAngle = angle; }
    s16 getMoveAngle() const { return mDemoMoveAngle; }
    f32 getStick() { return mStick; }
    int getParam0() const { return mParam0; }
    void setParam0(int value) { mParam0 = value;}
    void setParam1(int value) { mParam1 = value;}
    void setParam2(int value) { mParam2 = value;}
    void setPos0(const cXyz* pos) { mDemoPos0 = *pos;}

private:
    /* 0x00 */ u16 mDemoType;
    /* 0x02 */ s16 mDemoMoveAngle;
    /* 0x04 */ s16 mTimer;
    /* 0x06 */ s16 mParam2;
    /* 0x08 */ int mParam0;
    /* 0x0C */ int mParam1;
    /* 0x10 */ u32 mDemoMode;
    /* 0x14 */ f32 mStick;
    /* 0x18 */ cXyz mDemoPos0;
};  // Size: 0x24

class daMidna_c;
class daPy_py_c;
inline daPy_py_c* dComIfGp_getLinkPlayer();
inline BOOL i_dComIfGs_isEventBit(const u16);

class daPy_py_c : public fopAc_ac_c {
public:
    /* 0x0568 */ u8 mCutType;
    /* 0x0569 */ u8 mComboCutCount;
    /* 0x056A */ u8 mSpecialMode;  // maybe needs better name
    /* 0x056B */ u8 field_0x56b;
    /* 0x056C */ s16 mDamageTimer;
    /* 0x056E */ u16 mSwordUpTimer;
    /* 0x0570 */ u32 mNoResetFlg0;
    /* 0x0574 */ u32 mNoResetFlg1;
    /* 0x0578 */ u32 mNoResetFlg2;
    /* 0x057C */ u32 mNoResetFlg3;
    /* 0x0580 */ u32 mResetFlg0;
    /* 0x0584 */ u32 mResetFlg1;
    /* 0x0588 */ u32 mEndResetFlg0;
    /* 0x058C */ u32 mEndResetFlg1;
    /* 0x0590 */ u32 mEndResetFlg2;
    /* 0x0594 */ f32 field_0x594;
    /* 0x0598 */ f32 field_0x598;
    /* 0x059C */ csXyz mBodyAngle;
    /* 0x05A4 */ cXyz mHeadTopPos;
    /* 0x05B0 */ cXyz mItemPos;
    /* 0x05BC */ cXyz mSwordTopPos;
    /* 0x05C8 */ cXyz mLeftHandPos;
    /* 0x05D4 */ cXyz mRightHandPos;
    /* 0x05E0 */ cXyz mLeftFootPos;
    /* 0x05EC */ cXyz mRightFootPos;
    /* 0x05F8 */ u8 field_0x5f8[0xC];
    /* 0x0604 */ daPy_demo_c mDemo;

public:
    enum daPy_FLG0 {
        FLG0_UNK_40000000 = 0x40000000,
        FLG0_EQUIP_HVY_BOOTS = 0x2000000,
        FLG0_PLAYER_NO_DRAW = 0x8000000,
        FLG0_UNK_10000000 = 0x10000000,
        FLG0_UNK_1000000 = 0x1000000,
        FLG0_UNDERWATER = 0x800000,
        FLG0_UNK_100000 = 0x100000,
        FLG0_UNK_80000 = 0x80000,
        FLG0_UNK_20000 = 0x20000,
        FLG0_UNK_8000 = 0x8000,
        FLG0_UNK_4000 = 0x4000,
        FLG0_UNK_2000 = 0x2000,
        FLG0_MAGNE_BOOTS_ON = 0x1000,
        FLG0_UNK_100 = 0x100,
        FLG0_UNK_80 = 0x80,
        FLG0_UNK_40 = 0x40,
        FLG0_UNK_20 = 0x20,
        FLG0_UNK_10 = 0x10,
        FLG0_UNK_8 = 0x8,
        FLG0_MIDNA_RIDE = 4,
        FLG0_UNK_2 = 2,

        FLG0_HVY_STATE = FLG0_UNK_40000000 | FLG0_EQUIP_HVY_BOOTS | FLG0_UNK_20000,
        FLG0_UNK_14000 = 0x14000,
    };

    enum daPy_FLG1 {
        FLG1_UNK_40000000 = 0x40000000,
        FLG1_UNK_20000000 = 0x20000000,
        FLG1_UNK_10000000 = 0x10000000,
        FLG1_UNK_4000000 = 0x4000000,
        FLG1_IS_WOLF = 0x2000000,
        FLG1_DASH_MODE = 0x400000,
        FLG1_UNK_10000 = 0x10000,
        FLG1_UNK_8000 = 0x8000,
        FLG1_THROW_DAMAGE = 0x4000,
        FLG1_UNK_2000 = 0x2000,
        FLG1_UNK_80 = 0x80,
        FLG1_UNK_40 = 0x40,
        FLG1_UNK_20 = 0x20,
        FLG1_UNK_10 = 0x10,
        FLG1_UNK_4 = 4,
        FLG1_UNK_2 = 2,
        FLG1_UNK_1 = 1,
    };

    enum daPy_FLG2 {
        FLG2_UNK_20000000 = 0x20000000,
        FLG2_UNK_10000000 = 0x10000000,
        FLG2_UNK_4080000 = 0x4080000,
        FLG2_UNK_2080000 = 0x2080000,
        FLG2_BOAR_SINGLE_BATTLE = 0x1800000,
        FLG2_UNK_8000000 = 0x8000000,
        FLG2_UNK_1000000 = 0x1000000,
        FLG2_UNK_800000 = 0x800000,
        FLG2_STATUS_WINDOW_DRAW = 0x400000,
        FLG2_UNK_280000 = 0x280000,
        FLG2_UNK_200000 = 0x200000,
        FLG2_UNK_80000 = 0x80000,
        FLG2_UNK_40000 = 0x40000,
        FLG2_UNK_20000 = 0x20000,
        FLG2_SCN_CHG_START = 0x8000,
        FLG2_UNK_4000 = 0x4000,
        FLG2_UNK_2000 = 0x2000,
        FLG2_UNK_1000 = 0x1000,
        FLG2_UNK_200 = 0x200,
        FLG2_UNK_80 = 0x80,
        FLG2_UNK_40 = 0x40,
        FLG2_WOLF_ENEMY_LEFT_THROW = 0x20,
        FLG2_UNK_10 = 0x10,
        FLG2_UNK_8 = 8,
        FLG2_UNK_2 = 2,
        FLG2_UNK_1 = 1,

        FLG2_UNK_58 = FLG2_UNK_40 | FLG2_UNK_10 | FLG2_UNK_8,
    };

    enum daPy_FLG3 {
        FLG3_UNK_40000000 = 0x40000000,
        FLG3_UNK_20000000 = 0x20000000,
        FLG3_UNK_4000000 = 0x4000000,
        FLG3_UNK_2000000 = 0x2000000,
        FLG3_UNK_1000000 = 0x1000000,
        FLG3_UNK_400000 = 0x400000,
        FLG3_UNK_100000 = 0x100000,
        FLG3_UNK_80000 = 0x80000,
        FLG3_COPY_ROD_THROW_AFTER = 0x40000,
        FLG3_UNK_4000 = 0x4000,
        FLG3_UNK_200 = 0x200,
        FLG3_UNK_100 = 0x100,
        FLG3_UNK_40 = 0x40,
        FLG3_UNK_20 = 0x20,
        FLG3_UNK_10 = 0x10,
        FLG3_UNK_4 = 4,
    };

    enum daPy_ERFLG0 {
        ERFLG0_UNK_40000000 = 0x40000000,
        ERFLG0_UNK_10000000 = 0x10000000,
        ERFLG0_UNK_8000000 = 0x8000000,
        ERFLG0_UNK_2000000 = 0x2000000,
        ERFLG0_UNK_1000000 = 0x1000000,
        ERFLG0_UNK_800000 = 0x800000,
        ERFLG0_UNK_400000 = 0x400000,
        ERFLG0_UNK_200000 = 0x200000,
        ERFLG0_UNK_100000 = 0x100000,
        ERFLG0_UNK_2000 = 0x2000,
        ERFLG0_UNK_1000 = 0x1000,
        ERFLG0_UNK_400 = 0x400,
        ERFLG0_FORCE_AUTO_JUMP = 0x200,
        ERFLG0_UNK_100 = 0x100,
        ERFLG0_UNK_80 = 0x80,
        ERFLG0_UNK_40 = 0x40,
        ERFLG0_NOT_AUTO_JUMP = 0x20,
        ERFLG0_NOT_HANG = 0x10,
        ERFLG0_UNK_8 = 8,
        ERFLG0_UNK_4 = 4,
        ERFLG0_UNK_2 = 2,
        ERFLG0_UNK_1 = 1,
    };

    enum daPy_ERFLG1 {
        ERFLG1_GANON_FINISH = 0x80000000,
        ERFLG1_UNK_40000000 = 0x40000000,
        ERFLG1_UNK_20000000 = 0x20000000,
        ERFLG1_UNK_10000000 = 0x10000000,
        ERFLG1_UNK_4000000 = 0x4000000,
        ERFLG1_UNK_40000 = 0x40000,
        ERFLG1_UNK_2000 = 0x2000,
        ERFLG1_UNK_800 = 0x800,
        ERFLG1_UNK_400 = 0x400,
        ERFLG1_UNK_200 = 0x200,
        ERFLG1_UNK_100 = 0x100,
        ERFLG1_UNK_80 = 0x80,
        ERFLG1_UNK_10 = 0x10,
        ERFLG1_UNK_20 = 0x20,
        ERFLG1_UNK_8 = 8,
        ERFLG1_UNK_4 = 4,
        ERFLG1_UNK_2 = 2,
        ERFLG1_UNK_1 = 1,
    };

    enum daPy_ERFLG2 {
        ERFLG2_UNK_100 = 0x100,
        ERFLG2_UNK_40 = 0x40,
        ERFLG2_UNK_20 = 0x20,
    };

    enum daPy_RFLG0 {
        RFLG0_UNK_8000000 = 0x8000000,
        RFLG0_UNK_4000000 = 0x4000000,
        RFLG0_UNK_4000 = 0x4000,
        RFLG0_FRONT_ROLL_CRASH = 0x2000,
        RFLG0_ENEMY_ATTN_LOCK = 0x1000,
        RFLG0_UNK_400 = 0x400,
        RFLG0_UNK_80 = 0x80,
        RFLG0_UNK_40 = 0x40,
        RFLG0_UNK_10 = 0x10,
        RFLG0_UNK_2 = 0x2,
    };

    enum daPy_RFLG1 {
        RFLG1_UNK_30 = 0x30,
        RFLG1_UNK_2 = 0x2,
        RFLG1_WOLF_ATTACK_REVERSE = 0x1,
    };

    enum {
        /* 0x01 */ SMODE_SUMO_READY = 1,
        /* 0x25 */ SMODE_SUMO_LOSE = 37,
        /* 0x27 */ SMODE_WOLF_PUZZLE = 39,
        /* 0x2A */ SMODE_GOAT_STOP = 42,
        /* 0x2B */ SMODE_GORON_THROW,
        /* 0x2C */ SMODE_CARGO_CARRY,
    };

    enum CutType {
        /* 0x01 */ CUT_TYPE_NM_VERTICAL = 1,
        /* 0x02 */ CUT_TYPE_NM_STAB,
        /* 0x03 */ CUT_TYPE_NM_RIGHT,
        /* 0x04 */ CUT_TYPE_NM_LEFT,
        /* 0x05 */ CUT_TYPE_HEAD_JUMP,  // Helm Splitter
        /* 0x06 */ CUT_TYPE_FINISH_LEFT,
        /* 0x07 */ CUT_TYPE_FINISH_VERTICAL,
        /* 0x08 */ CUT_TYPE_TURN_RIGHT,
        /* 0x0A */ CUT_TYPE_JUMP = 10,
        /* 0x0B */ CUT_TYPE_DASH_UNK_B,
        /* 0x0C */ CUT_TYPE_DASH_UNK_C,
        /* 0x0D */ CUT_TYPE_DASH_UNK_D,
        /* 0x10 */ CUT_TYPE_AIR = 0x10,
        /* 0x11 */ CUT_TYPE_DASH_UNK_11,
        /* 0x12 */ CUT_TYPE_LARGE_JUMP_INIT,
        /* 0x13 */ CUT_TYPE_LARGE_JUMP,
        /* 0x14 */ CUT_TYPE_LARGE_JUMP_FINISH,
        /* 0x15 */ CUT_TYPE_FINISH_RIGHT,
        /* 0x16 */ CUT_TYPE_TURN_LEFT,
        /* 0x17 */ CUT_TYPE_LARGE_TURN_LEFT,
        /* 0x18 */ CUT_TYPE_LARGE_TURN_RIGHT,
        /* 0x1A */ CUT_TYPE_MORTAL_DRAW_A = 0x1A,
        /* 0x1E */ CUT_TYPE_TWIRL = 0x1E,  // Back Slice
        /* 0x1F */ CUT_TYPE_MORTAL_DRAW_B,
        /* 0x20 */ CUT_TYPE_FINISH_STAB,
        /* 0x21 */ CUT_TYPE_COMBO_STAB,
        /* 0x22 */ CUT_TYPE_HORSE_UNK_22,
        /* 0x23 */ CUT_TYPE_HORSE_UNK_23,
        /* 0x25 */ CUT_TYPE_DASH_UNK_25 = 0x25,
        /* 0x26 */ CUT_TYPE_DASH_UNK_26 = 0x26,
        /* 0x27 */ CUT_TYPE_DOWN,
        /* 0x29 */ CUT_TYPE_GUARD_ATTACK = 0x29,
        /* 0x2A */ CUT_TYPE_HORSE_UNK_2A,
        /* 0x2B */ CUT_TYPE_HORSE_TURN,
        /* 0x2C */ CUT_TYPE_WOLF_B_LEFT,
        /* 0x2D */ CUT_TYPE_WOLF_B_RIGHT,
        /* 0x2E */ CUT_TYPE_WOLF_B_FRONT,
        /* 0x2F */ CUT_TYPE_WOLF_B_BACK,
        /* 0x31 */ CUT_TYPE_WOLF_UNK_31 = 0x31,
        /* 0x32 */ CUT_TYPE_WOLF_UNK_32,
        /* 0x33 */ CUT_TYPE_WOLF_TURN_LEFT,
        /* 0x34 */ CUT_TYPE_WOLF_TURN_RIGHT,
        /* 0x36 */ CUT_TYPE_WOLF_LOCK = 0x36,
        /* 0x38 */ CUT_TYPE_DASH_UNK_38 = 0x38,
        /* 0x39 */ CUT_TYPE_WOLF_UNK_39,
    };

    static u32 setParamData(int, int, int, int);
    static BOOL checkFishingRodItem(int);
    static BOOL checkBombItem(int);
    static BOOL checkBottleItem(int);
    static BOOL checkDrinkBottleItem(int);
    static BOOL checkOilBottleItem(int);
    static BOOL checkOpenBottleItem(int);
    static BOOL checkBowItem(int);
    static BOOL checkHookshotItem(int);
    static BOOL checkTradeItem(int);
    static BOOL checkDungeonWarpItem(int);
    static BOOL checkMasterSwordEquip();
    static BOOL checkWoodShieldEquip();
    static f32 getAttentionOffsetY();
    static int checkNowWolfEyeUp();
    static void forceRestartRoom(int, u32, int);
    static void setFmChainPos(fopAc_ac_c*, cXyz*, int);
    static void cancelFmChainGrab();
    static void setLookPos(cXyz*);
    static void setPlayerSe(u32);
    static bool linkGrabSubjectNoDraw(fopAc_ac_c*);
    static bool wolfGrabSubjectNoDraw(fopAc_ac_c*);
    static bool checkRoomRestartStart();
    static u32 checkCarryStartLightBallA();
    static u32 checkCarryStartLightBallB();
    float getSpinnerRideSpeed() const;
    bool checkSpinnerReflectEffect();
    static bool checkBoomerangCharge();
    bool checkBoomerangChargeTime();
    static daBoomerang_c* getThrowBoomerangActor();
    static void cancelBoomerangLockActor(fopAc_ac_c*);
    static void setPlayerDamage(int, int);
    static void setMidnaMotionNum(int);
    static void setMidnaFaceNum(int);
    u32 checkNoResetFlg0(daPy_FLG0) const;
    u32 checkEquipHeavyBoots() const;
    u32 checkBoarSingleBattle() const;
    u32 checkEndResetFlg0(daPy_ERFLG0) const;
    void onNoResetFlg2(daPy_py_c::daPy_FLG2);
    void offNoResetFlg0(daPy_py_c::daPy_FLG0);
    int checkEndResetFlg2(daPy_py_c::daPy_ERFLG2) const;
    bool getSumouMode() const;
    int checkNoResetFlg3(daPy_py_c::daPy_FLG3) const;
    BOOL checkShieldGet();
    void onNoResetFlg0(daPy_py_c::daPy_FLG0);
    u32 checkEndResetFlg1(daPy_py_c::daPy_ERFLG1) const;
    void offNoResetFlg1(daPy_py_c::daPy_FLG1);
    void offNoResetFlg2(daPy_py_c::daPy_FLG2);
    u32 checkWolf() const;
    BOOL checkSwordGet();
    u32 checkResetFlg0(daPy_py_c::daPy_RFLG0) const;
    u32 checkNoResetFlg2(daPy_py_c::daPy_FLG2) const;
    u32 checkMagneBootsOn() const;
    void changeDemoPos0(cXyz const*);
    void changeDemoMode(u32, int, int, s16);
    void changeDemoParam2(s16);
    void cancelOriginalDemo();
    void changeOriginalDemo();
    /* 801829E0 */ void checkThrowDamage() const;
    /* 80182A10 */ void checkGoronSideMove() const;
    /* 80182AAC */ void getRightFootPosP();
    /* 80182AB4 */ void getLeftFootPosP();
    /* 80182ABC */ //u32 getMidnaActor();
    /* 80182AC4 */ void checkCopyRodThrowAfter() const;
    /* 80182AD8 */ void checkRide() const;
    /* 80182B9C */ void getRightHandPos() const;
    /* 8015DFD8 */ const cXyz getItemPos() const;
    /* 8015DFF4 */ const cXyz& getLeftHandPos() const;
    /* 800977B4 */ bool checkMidnaRide() const;

    /* const cXyz* getItemPos() const {
        return &mItemPos;
    }
    const cXyz* getLeftHandPos() const {
        return &mLeftHandPos;
    } */

    virtual cXyz* getMidnaAtnPos() const;
    virtual void setMidnaMsgNum(fopAc_ac_c*, u16);
    virtual MtxP getModelMtx();
    virtual MtxP getInvMtx();
    virtual cXyz* getShadowTalkAtnPos();
    virtual f32 getGroundY();
    virtual MtxP getLeftItemMatrix();
    virtual MtxP getRightItemMatrix();
    virtual MtxP getLeftHandMatrix();
    virtual MtxP getRightHandMatrix();
    virtual MtxP getLinkBackBone1Matrix();
    virtual MtxP getWolfMouthMatrix();
    virtual MtxP getWolfBackbone2Matrix();
    virtual MtxP getBottleMtx();
    virtual BOOL checkPlayerGuard() const;
    virtual u32 checkPlayerFly() const;
    virtual BOOL checkFrontRoll() const;
    virtual BOOL checkWolfDash() const;
    virtual BOOL checkAutoJump() const;
    virtual bool checkSideStep() const;
    virtual bool checkWolfTriggerJump() const;
    virtual BOOL checkGuardBreakMode() const;
    virtual bool checkLv3Slide() const;
    virtual bool checkWolfHowlDemoMode() const;
    virtual bool checkChainBlockPushPull();
    virtual BOOL checkElecDamage() const;
    virtual BOOL checkEmptyBottleSwing() const;
    virtual BOOL checkBottleSwingMode() const;
    virtual BOOL checkHawkWait() const;
    virtual BOOL checkGoatThrow() const;
    virtual BOOL checkGoatThrowAfter() const;
    virtual BOOL checkWolfTagLockJump() const;
    virtual BOOL checkWolfTagLockJumpLand() const;
    virtual BOOL checkWolfRope();
    virtual BOOL checkWolfRopeHang() const;
    virtual BOOL checkRollJump() const;
    virtual BOOL checkGoronRideWait() const;
    virtual BOOL checkWolfChain() const;
    virtual BOOL checkWolfWait() const;
    virtual BOOL checkWolfJumpAttack() const;
    virtual BOOL checkWolfRSit() const;
    virtual bool checkBubbleFly() const;
    virtual BOOL checkBottleDrinkEnd() const;
    virtual BOOL checkWolfDig() const;
    virtual BOOL checkCutCharge() const;
    virtual BOOL checkCutTurnCharge() const;
    virtual BOOL checkCutLargeJumpCharge() const;
    virtual bool getBokoFlamePos(cXyz*);
    virtual BOOL checkComboCutTurn() const;
    virtual BOOL checkClimbMove() const;
    virtual BOOL checkGrassWhistle() const;
    virtual BOOL checkBoarRun() const;
    virtual bool checkFmChainPut() const;
    virtual bool checkHorseElecDamage() const;
    virtual float getBaseAnimeFrameRate() const;
    virtual float getBaseAnimeFrame() const;
    virtual void setAnimeFrame(float);
    virtual bool checkWolfLock(fopAc_ac_c*) const;
    virtual bool cancelWolfLock(fopAc_ac_c*);
    virtual s32 getAtnActorID() const;
    virtual s32 getItemID() const;
    virtual s32 getGrabActorID() const;
    virtual bool exchangeGrabActor(fopAc_ac_c*);
    virtual bool setForceGrab(fopAc_ac_c*, int, int);
    virtual void setForcePutPos(cXyz const&);
    virtual BOOL checkPlayerNoDraw();
    virtual bool checkRopeTag();
    virtual void voiceStart(u32);
    virtual void seStartOnlyReverb(u32);
    virtual void seStartOnlyReverbLevel(u32);
    virtual void setOutPower(float, short, int);
    virtual void setGrabCollisionOffset(float, float, cBgS_PolyInfo*);
    virtual void onMagneGrab(float, float);
    virtual void onFrollCrashFlg(u8, int);
    virtual MtxP getModelJointMtx(u16);
    virtual MtxP getHeadMtx();
    virtual bool setHookshotCarryOffset(unsigned int, cXyz const*);
    virtual BOOL checkCutJumpCancelTurn() const;
    virtual bool checkIronBallReturn() const;
    virtual bool checkIronBallGroundStop() const;
    virtual BOOL checkSingleBoarBattleSecondBowReady() const;
    virtual bool checkPointSubWindowMode() const;
    virtual void setClothesChange(int);
    virtual void setPlayerPosAndAngle(cXyz const*, short, int);
    virtual void setPlayerPosAndAngle(cXyz const*, csXyz const*);
    virtual void setPlayerPosAndAngle(float (*)[4]);
    virtual bool setThrowDamage(short, float, float, int, int, int);
    virtual bool checkSetNpcTks(cXyz*, int, int);
    virtual int setRollJump(float, float, short);
    virtual void playerStartCollisionSE(u32, u32);
    virtual void changeTextureAnime(u16, u16, int);
    virtual void cancelChangeTextureAnime();
    virtual void cancelDungeonWarpReadyNeck();
    virtual void onSceneChangeArea(u8, u8, fopAc_ac_c*);
    virtual void onSceneChangeAreaJump(u8, u8, fopAc_ac_c*);
    virtual void onSceneChangeDead(u8, int);
    virtual u32 checkHorseRide() const;
    virtual u32 checkBoarRide() const;
    virtual u32 checkCanoeRide() const;
    virtual u32 checkBoardRide() const;
    virtual u32 checkSpinnerRide() const;
    virtual fopAc_ac_c* getSpinnerActor();
    virtual BOOL checkHorseRideNotReady() const;
    virtual bool checkArrowChargeEnd() const;
    virtual f32 getSearchBallScale() const;
    virtual s16 checkFastShotTime();
    virtual bool checkNoEquipItem() const;
    virtual bool checkFireMaterial() const;
    virtual bool checkKandelaarSwing(int) const;
    virtual s16 getBoardCutTurnOffsetAngleY() const;
    virtual cXyz* getMagneHitPos();
    virtual cXyz* getMagneBootsTopVec();
    virtual cXyz* getKandelaarFlamePos();
    virtual bool checkUseKandelaar(int);
    virtual void setDkCaught(fopAc_ac_c*);
    virtual void onPressedDamage(cXyz const&, short);
    virtual bool checkPriActorOwn(fopAc_ac_c const*) const;
    virtual bool onWolfEnemyBiteAll(fopAc_ac_c*, daPy_FLG2);
    virtual bool checkWolfEnemyBiteAllOwn(fopAc_ac_c const*) const;
    virtual void setWolfEnemyHangBiteAngle(short);
    virtual void setKandelaarMtx(float (*)[4], int, int);
    virtual bool getStickAngleFromPlayerShape(short*) const;
    virtual bool checkSpinnerPathMove();
    virtual bool checkSpinnerTriggerAttack();
    virtual void onSpinnerPathForceRemove();
    virtual s16 getIronBallBgHit() const;
    virtual cXyz* getIronBallCenterPos();
    virtual bool checkCanoeFishingGetLeft() const;
    virtual bool checkCanoeFishingGetRight() const;
    virtual u8 checkBeeChildDrink() const;
    virtual void skipPortalObjWarp();
    virtual bool checkTreasureRupeeReturn(int) const;
    virtual void setSumouReady(fopAc_ac_c*);
    virtual bool checkAcceptDungeonWarpAlink(int);
    virtual s16 getSumouCounter() const;
    virtual s16 checkSumouWithstand() const;
    virtual void cancelGoronThrowEvent();
    virtual void setSumouGraspCancelCount(int);
    virtual void setSumouPushBackDirection(short);
    virtual void setSumouLoseHeadUp();
    virtual s16 getGiantPuzzleAimAngle() const;
    virtual void setGoronSideMove(fopAc_ac_c*);
    virtual void setCargoCarry(fopAc_ac_c*);
    virtual bool getDpdFarFlg() const;
    virtual cXyz* getHookshotTopPos();
    virtual bool checkHookshotReturnMode() const;
    virtual bool checkHookshotShootReturnMode() const;
    virtual bool checkOctaIealHang() const;
    virtual void cancelOctaIealHang();
    virtual void cancelDragonHangBackJump();
    virtual void setOctaIealWildHang();
    virtual bool checkDragonHangRide() const;
    virtual void changeDragonActor(fopAc_ac_c*);
    virtual u8 getClothesChangeWaitTimer() const;
    virtual u8 getShieldChangeWaitTimer() const;
    virtual u8 getSwordChangeWaitTimer() const;
    virtual BOOL checkMetamorphose() const;
    virtual BOOL checkWolfDownAttackPullOut() const;
    virtual BOOL checkBootsOrArmorHeavy() const;
    virtual s32 getBottleOpenAppearItem() const;
    virtual bool checkItemSwordEquip() const;
    virtual float getSinkShapeOffset() const;
    virtual BOOL checkSinkDead() const;
    virtual BOOL checkHorseStart();
    virtual Z2WolfHowlMgr* getWolfHowlMgrP();
    virtual BOOL checkWolfHowlSuccessAnime() const;
    virtual BOOL checkCopyRodTopUse();
    virtual bool checkCopyRodEquip() const;
    virtual BOOL checkCutJumpMode() const;

    bool getSumouCameraMode() const {
        bool sumouCameraMode = false;
        if (mSpecialMode != 0 && mSpecialMode < 0x26) {
            sumouCameraMode = true;
        }
        return sumouCameraMode;
    }

    bool i_getSumouMode() const { return getSumouCameraMode(); }
    void i_cancelOriginalDemo() {
        mDemo.setSystemDemoType();
        mDemo.setDemoMode(1);
    }

    bool checkStatusWindowDraw() { return i_checkNoResetFlg2(FLG2_STATUS_WINDOW_DRAW); }
    bool checkCargoCarry() const { return mSpecialMode == SMODE_CARGO_CARRY; }
    bool getHeavyStateAndBoots() { return i_checkNoResetFlg0(FLG0_HVY_STATE); }
    bool checkEnemyAttentionLock() const { return i_checkResetFlg0(RFLG0_ENEMY_ATTN_LOCK); }
    bool checkCanoeSlider() const { return mSpecialMode == 0x2D; }
    bool checkGoatStopGame() const { return mSpecialMode == 0x2A; }
    bool i_checkGoronSideMove() const { return mSpecialMode == 0x2B; }
    u8 getCutType() const { return mCutType; }
    u16 getSwordAtUpTime() const { return mSwordUpTimer; }
    bool checkWaterInMove() const { return i_checkNoResetFlg0(FLG0_UNDERWATER); }
    bool checkSceneChangeAreaStart() const { return i_checkNoResetFlg2(FLG2_SCN_CHG_START); }
    bool checkFrontRollCrash() const { return i_checkResetFlg0(RFLG0_FRONT_ROLL_CRASH); }
    bool checkWolfAttackReverse() const { return checkResetFlg1(RFLG1_WOLF_ATTACK_REVERSE); }
    
    void onForceAutoJump() { i_onEndResetFlg0(ERFLG0_FORCE_AUTO_JUMP); }
    void onNotAutoJump() { i_onEndResetFlg0(ERFLG0_NOT_AUTO_JUMP); }
    void onNotHang() { i_onEndResetFlg0(ERFLG0_NOT_HANG); }
    void onFogFade() { i_onNoResetFlg2(FLG2_UNK_4000); }
    
    void offGoronSideMove() {
        if (i_checkGoronSideMove()) {
            mSpecialMode = 0;
        }
    }

    s16 getBodyAngleX() const { return mBodyAngle.x; }
    s16 getBodyAngleY() const { return mBodyAngle.y; }

    BOOL checkMidnaWarp() const { return 0; }

    // some functions use these function as an inline
    // is there a better way to handle this?
    int i_checkNoResetFlg0(daPy_FLG0 pFlag) const { return mNoResetFlg0 & pFlag; }
    int i_checkNoResetFlg1(daPy_FLG1 pFlag) const { return mNoResetFlg1 & pFlag; }
    int i_checkNoResetFlg2(daPy_FLG2 pFlag) const { return mNoResetFlg2 & pFlag; }
    int i_checkNoResetFlg3(daPy_FLG3 pFlag) const { return mNoResetFlg3 & pFlag; }
    
    void i_onNoResetFlg0(int pFlg) { mNoResetFlg0 |= pFlg; }
    void i_onNoResetFlg1(int pFlg) { mNoResetFlg1 |= pFlg; }
    void i_onNoResetFlg2(int pFlg) { mNoResetFlg2 |= pFlg; }
    void i_onNoResetFlg3(int pFlg) { mNoResetFlg3 |= pFlg; }
    
    void i_offNoResetFlg0(int pFlg) { mNoResetFlg0 &= ~pFlg; }
    void i_offNoResetFlg1(int pFlg) { mNoResetFlg1 &= ~pFlg; }
    void i_offNoResetFlg2(int pFlg) { mNoResetFlg2 &= ~pFlg; }
    void i_offNoResetFlg3(int pFlg) { mNoResetFlg3 &= ~pFlg; }
    
    void i_offResetFlg0(int flag) { mResetFlg0 &= ~flag; }
    void i_onResetFlg0(int flag) { mResetFlg0 |= flag; }
    void i_onResetFlg1(int flag) { mResetFlg1 |= flag; }
    
    void i_onEndResetFlg0(int flag) { mEndResetFlg0 |= flag; }
    void i_onEndResetFlg2(int flag) { mEndResetFlg2 |= flag; }
    void i_offEndResetFlg2(daPy_ERFLG2 flag) { mEndResetFlg2 &= ~flag; }
    
    int i_checkResetFlg0(daPy_py_c::daPy_RFLG0 flag) const { return mResetFlg0 & flag; }
    int checkResetFlg1(daPy_py_c::daPy_RFLG1 flag) const { return mResetFlg1 & flag; }
    
    int i_checkEndResetFlg0(daPy_py_c::daPy_ERFLG0 flag) const { return mEndResetFlg0 & flag; }
    int i_checkEndResetFlg1(daPy_py_c::daPy_ERFLG1 flag) const { return mEndResetFlg1 & flag; }
    int i_checkEndResetFlg2(daPy_py_c::daPy_ERFLG2 flag) const { return mEndResetFlg2 & flag; }
    
    void i_onEndResetFlg1(daPy_ERFLG1 pFlg) { mEndResetFlg1 |= pFlg; }
    
    u32 i_checkWolf() const { return i_checkNoResetFlg1(FLG1_IS_WOLF); }
    BOOL i_checkEquipHeavyBoots() const { return i_checkNoResetFlg0(FLG0_EQUIP_HVY_BOOTS); }
    BOOL i_checkMagneBootsOn() const { return i_checkNoResetFlg0(FLG0_MAGNE_BOOTS_ON); }
    bool i_checkMidnaRide() const { return i_checkNoResetFlg0(FLG0_MIDNA_RIDE); }
    void i_onPlayerNoDraw() { i_onNoResetFlg0(FLG0_PLAYER_NO_DRAW); }
    void i_offPlayerNoDraw() { i_offNoResetFlg0(FLG0_PLAYER_NO_DRAW); }

    u32 i_checkBoarSingleBattle() const { return i_checkNoResetFlg2(FLG2_BOAR_SINGLE_BATTLE); }

    void i_changeOriginalDemo() {
        mDemo.setOriginalDemoType();
        mDemo.setParam0(0);
    }

    void i_changeDemoMode(u32 i_demoMode,int i_param0,int i_param1,s16 i_param2) {
        mDemo.setDemoMode(i_demoMode);
        mDemo.setParam0(i_param0);
        mDemo.setParam1(i_param1);
        mDemo.setParam2(i_param2);
    }

    void i_changeDemoPos0(const cXyz* i_posP) { mDemo.setPos0(i_posP); }

    inline static u32 i_getLastSceneMode();
    inline static u32 getLastSceneMode();
    inline static bool checkWoodSwordEquip();
    inline static bool checkLightMasterSwordEquip();
    inline BOOL i_checkSwordGet();
    inline bool i_checkShieldGet() const;
    inline static BOOL checkNowWolf();
    inline static BOOL i_checkNowWolf() { return dComIfGp_getLinkPlayer()->i_checkWolf(); }
    inline bool checkZoraWearFlg() const;
    inline bool checkMagicArmorWearFlg() const;
    inline static BOOL i_checkFirstMidnaDemo() { return i_dComIfGs_isEventBit(0xc10); }
    static int checkNowWolfPowerUp() { return checkNowWolfEyeUp(); }

    static daMidna_c* getMidnaActor() { return m_midnaActor; }

    // not sure how to define this properly
    // static void onWolfEnemyCatch(fopAc_ac_c* i_actorP) { onWolfEnemyBiteAll(i_actorP,8);}

    bool checkWolfEnemyCatchOwn(fopAc_ac_c* i_actorP) { return checkWolfEnemyBiteAllOwn(i_actorP); }
    bool checkWolfEnemyLeftThrow() const { return i_checkNoResetFlg2(FLG2_WOLF_ENEMY_LEFT_THROW); }

    static daMidna_c* m_midnaActor;
};

#endif /* D_A_D_A_PLAYER_H */

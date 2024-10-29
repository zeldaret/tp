#ifndef D_A_D_A_PLAYER_H
#define D_A_D_A_PLAYER_H

#include "d/d_drawlist.h"
#include "f_op/f_op_actor.h"

struct ResTIMG;

class daPy_sightPacket_c : public dDlst_base_c {
public:
    daPy_sightPacket_c() {}
    /* 8015F1A0 */ virtual void draw();
    /* 80140CDC */ virtual ~daPy_sightPacket_c() {}

    /* 8015F2FC */ void setSight();
    /* 8015F384 */ void setSightImage(ResTIMG*);

    bool getDrawFlg() { return mDrawFlag; }
    void onDrawFlg() { mDrawFlag = true; }
    void offDrawFlg() { mDrawFlag = false; }
    void setPos(const cXyz* i_pos) { mPos = *i_pos; }

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
    daPy_actorKeep_c() { clearData(); }

    void setActor();
    void setData(fopAc_ac_c*);
    void clearData();

    fpc_ProcID getID() const { return mID; }
    void setID(fpc_ProcID id) { mID = id; }
    fopAc_ac_c* getActor() const { return mActor; }
    fopAc_ac_c* getActorConst() const { return mActor; }

private:
    /* 0x0 */ fpc_ProcID mID;
    /* 0x4 */ fopAc_ac_c* mActor;
};  // Size: 0x8

class daPy_frameCtrl_c : public J3DFrameCtrl {
public:
    /* 80140D24 */ ~daPy_frameCtrl_c();
    /* 80140D80 */ daPy_frameCtrl_c();
    bool checkAnmEnd();
    void updateFrame();
    void setFrameCtrl(u8, short, short, f32, f32);

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
    enum {
        DEMO_LAST_e = 0x5F,
        DEMO_NEW_ANM0_e = 0x200,
    };

    void setDemoType(u16 pType) { mDemoType = pType; }
    int getDemoType() const { return mDemoType; }
    void setDemoMode(u32 mode) { mDemoMode = mode; }
    u32 getDemoMode() const { return mDemoMode; }
    int getParam1() const { return mParam1; }
    s16 getParam2() const { return mParam2; }
    void setOriginalDemoType() { setDemoType(3); }
    void setSpecialDemoType() { setDemoType(5); }
    void setSystemDemoType() { setDemoType(2); }
    void setStick(f32 stick) { mStick = stick; }
    void setMoveAngle(s16 angle) { mDemoMoveAngle = angle; }
    s16 getMoveAngle() const { return mDemoMoveAngle; }
    f32 getStick() { return mStick; }
    int getParam0() const { return mParam0; }
    void setParam0(int value) { mParam0 = value; }
    void setParam1(int value) { mParam1 = value; }
    void setParam2(int value) { mParam2 = value; }
    void setPos0(const cXyz* pos) { mDemoPos0 = *pos; }
    void setToolDemoType() { setDemoType(1); }
    s16 getTimer() const { return mTimer; }
    void decTimer() { mTimer--; }
    void setTimer(s16 i_timer) { mTimer = i_timer; }
    cXyz* getPos0() { return &mDemoPos0; }
    void resetDemoType() { setDemoType(0); }
    void setStartDemoType() { setDemoType(4); }

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
class daSpinner_c;
class daPy_py_c;
inline daPy_py_c* dComIfGp_getLinkPlayer();
inline BOOL dComIfGs_isEventBit(const u16);
inline u32 dComIfGs_getLastSceneMode();

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
        FLG0_UNK_400000 = 0x400000,
        FLG0_UNK_200000 = 0x200000,
        FLG0_UNK_100000 = 0x100000,
        FLG0_UNK_80000 = 0x80000,
        FLG0_UNK_40000 = 0x40000,
        FLG0_UNK_20000 = 0x20000,
        FLG0_UNK_10000 = 0x10000,
        FLG0_UNK_8000 = 0x8000,
        FLG0_UNK_4000 = 0x4000,
        FLG0_UNK_2000 = 0x2000,
        FLG0_MAGNE_BOOTS_ON = 0x1000,
        FLG0_PUSH_PULL_KEEP = 0x800,
        FLG0_UNK_400 = 0x400,
        FLG0_SWIM_UP = 0x100,
        FLG0_UNK_80 = 0x80,
        FLG0_UNK_40 = 0x40,
        FLG0_UNK_20 = 0x20,
        FLG0_UNK_10 = 0x10,
        FLG0_UNK_8 = 0x8,
        FLG0_MIDNA_RIDE = 4,
        FLG0_UNK_2 = 2,

        FLG0_HVY_STATE = FLG0_UNK_40000000 | FLG0_EQUIP_HVY_BOOTS | FLG0_UNK_20000,
        FLG0_UNK_14000 = 0x14000,
        FLG0_UNK_10400 = 0x10400,
        FLG0_UNK_18 = FLG0_UNK_10 | FLG0_UNK_8,
    };

    enum daPy_FLG1 {
        FLG1_ICE_FREEZE = 0x40000000,
        FLG1_UNK_20000000 = 0x20000000,
        FLG1_UNK_10000000 = 0x10000000,
        FLG1_UNK_4000000 = 0x4000000,
        FLG1_IS_WOLF = 0x2000000,
        FLG1_UNK_800000 = 0x800000,
        FLG1_DASH_MODE = 0x400000,
        FLG1_UNK_200000 = 0x200000,
        FLG1_UNK_100000 = 0x100000,
        FLG1_UNK_40000 = 0x40000,
        FLG1_UNK_10000 = 0x10000,
        FLG1_UNK_8000 = 0x8000,
        FLG1_THROW_DAMAGE = 0x4000,
        FLG1_UNK_2000 = 0x2000,
        FLG1_UNK_1000 = 0x1000,
        FLG1_UNK_800 = 0x800,
        FLG1_UNK_200 = 0x200,
        FLG1_UNK_80 = 0x80,
        FLG1_UNK_40 = 0x40,
        FLG1_UNK_20 = 0x20,
        FLG1_UNK_10 = 0x10,
        FLG1_UNK_4 = 4,
        FLG1_UNK_2 = 2,
        FLG1_UNK_1 = 1,

        FLG1_UNK_1800 = 0x1800,
        FLG1_UNK_10100000 = FLG1_UNK_10000000 | FLG1_UNK_100000,
    };

    enum daPy_FLG2 {
        FLG2_HORSE_ZELDA = 0x40000000,
        FLG2_UNK_20000000 = 0x20000000,
        FLG2_UNK_10000000 = 0x10000000,
        FLG2_UNK_4080000 = 0x4080000,
        FLG2_UNK_4000000 = 0x4000000,
        FLG2_UNK_2080000 = 0x2080000,
        FLG2_UNK_2000000 = 0x2000000,
        FLG2_UNK_8000000 = 0x8000000,
        FLG2_UNK_1000000 = 0x1000000,
        FLG2_BOAR_SINGLE_BATTLE = 0x800000,
        FLG2_STATUS_WINDOW_DRAW = 0x400000,
        FLG2_UNK_280000 = 0x280000,
        FLG2_UNK_200000 = 0x200000,
        FLG2_UNK_100000 = 0x100000,
        FLG2_UNK_80000 = 0x80000,
        FLG2_FORCE_GAMEOVER = 0x40000,
        FLG2_UNK_20000 = 0x20000,
        FLG2_WOLF_DASH_AUTO_JUMP = 0x10000,
        FLG2_SCN_CHG_START = 0x8000,
        FLG2_UNK_4000 = 0x4000,
        FLG2_UNK_2000 = 0x2000,
        FLG2_UNK_1000 = 0x1000,
        FLG2_PLAYER_SHADOW = 0x400,
        FLG2_UNK_200 = 0x200,
        FLG2_UNK_100 = 0x100,
        FLG2_UNK_80 = 0x80,
        FLG2_WOLF_ENEMY_HANG_BITE = 0x40,
        FLG2_WOLF_ENEMY_LEFT_THROW = 0x20,
        FLG2_UNK_10 = 0x10,
        FLG2_UNK_8 = 8,
        FLG2_UNK_4 = 4,
        FLG2_UNK_2 = 2,
        FLG2_UNK_1 = 1,

        FLG2_UNK_58 = FLG2_WOLF_ENEMY_HANG_BITE | FLG2_UNK_10 | FLG2_UNK_8,
        FLG2_UNK_10000001 = FLG2_UNK_10000000 | FLG2_UNK_1,
    };

    enum daPy_FLG3 {
        FLG3_UNK_80000000 = 0x80000000,
        FLG3_UNK_40000000 = 0x40000000,
        FLG3_UNK_20000000 = 0x20000000,
        FLG3_COPY_ROD_ATN_KEEP = 0x10000000,
        FLG3_BOOMERANG_ATN_KEEP = 0x8000000,
        FLG3_UNK_4000000 = 0x4000000,
        FLG3_UNK_2000000 = 0x2000000,
        FLG3_UNK_1000000 = 0x1000000,
        FLG3_UNK_800000 = 0x800000,
        FLG3_UNK_400000 = 0x400000,
        FLG3_UNK_200000 = 0x200000,
        FLG3_UNK_100000 = 0x100000,
        FLG3_UNK_80000 = 0x80000,
        FLG3_COPY_ROD_THROW_AFTER = 0x40000,
        FLG3_UNK_10000 = 0x10000,
        FLG3_UNK_8000 = 0x8000,
        FLG3_UNK_4000 = 0x4000,
        FLG3_UNK_2000 = 0x2000,
        FLG3_UNK_1000 = 0x1000,
        FLG3_UNK_800 = 0x800,
        FLG3_UNK_400 = 0x400,
        FLG3_UNK_200 = 0x200,
        FLG3_UNK_100 = 0x100,
        FLG3_UNK_80 = 0x80,
        FLG3_UNK_40 = 0x40,
        FLG3_UNK_20 = 0x20,
        FLG3_UNK_10 = 0x10,
        FLG3_UNK_8 = 8,
        FLG3_UNK_4 = 4,
        FLG3_UNK_1 = 1,
    };

    enum daPy_ERFLG0 {
        ERFLG0_UNK_80000000 = 0x80000000,
        ERFLG0_UNK_40000000 = 0x40000000,
        ERFLG0_UNK_20000000 = 0x20000000,
        ERFLG0_UNK_10000000 = 0x10000000,
        ERFLG0_UNK_8000000 = 0x8000000,
        ERFLG0_UNK_4000000 = 0x4000000,
        ERFLG0_BOSS_ROOM_WAIT = 0x2000000,
        ERFLG0_UNK_1000000 = 0x1000000,
        ERFLG0_UNK_800000 = 0x800000,
        ERFLG0_BEE_FOLLOW = 0x400000,
        ERFLG0_UNK_200000 = 0x200000,
        ERFLG0_UNK_100000 = 0x100000,
        ERFLG0_UNK_80000 = 0x80000,
        ERFLG0_UNK_40000 = 0x40000,
        ERFLG0_UNK_20000 = 0x20000,
        ERFLG0_UNK_10000 = 0x10000,
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
        ERFLG1_UNK_2000000 = 0x2000000,
        ERFLG1_UNK_1000000 = 0x1000000,
        ERFLG1_UNK_400000 = 0x400000,
        ERFLG1_UNK_200000 = 0x200000,
        ERFLG1_UNK_100000 = 0x100000,
        ERFLG1_UNK_80000 = 0x80000,
        ERFLG1_UNK_40000 = 0x40000,
        ERFLG1_UNK_20000 = 0x20000,
        ERFLG1_UNK_10000 = 0x10000,
        ERFLG1_UNK_8000 = 0x8000,
        ERFLG1_UNK_4000 = 0x4000,
        ERFLG1_UNK_2000 = 0x2000,
        ERFLG1_UNK_1000 = 0x1000,
        ERFLG1_UNK_800 = 0x800,
        ERFLG1_UNK_400 = 0x400,
        ERFLG1_WOLF_EYE_KEEP = 0x200,
        ERFLG1_UNK_100 = 0x100,
        ERFLG1_UNK_80 = 0x80,
        ERFLG1_UNK_40 = 0x40,
        ERFLG1_UNK_20 = 0x20,
        ERFLG1_UNK_10 = 0x10,
        ERFLG1_UNK_8 = 8,
        ERFLG1_UNK_4 = 4,
        ERFLG1_UNK_2 = 2,
        ERFLG1_UNK_1 = 1,
    };

    enum daPy_ERFLG2 {
        ERFLG2_UNK_100 = 0x100,
        ERFLG2_UNK_40 = 0x40,
        ERFLG2_UNK_20 = 0x20,
        ERFLG2_UNK_10 = 0x10,
        ERFLG2_UNK_2 = 2,
        ERFLG2_UNK_1 = 1,
    };

    enum daPy_RFLG0 {
        RFLG0_WOLF_BARK = 0x80000000,
        RFLG0_UNK_40000000 = 0x40000000,
        RFLG0_UNK_20000000 = 0x20000000,
        RFLG0_UNK_10000000 = 0x10000000,
        RFLG0_UNK_8000000 = 0x8000000,
        RFLG0_UNK_4000000 = 0x4000000,
        RFLG0_GRAB_PUT_START = 0x400000,
        RFLG0_WOLF_GROWL = 0x200000,
        RFLG0_UNK_80000 = 0x80000,
        RFLG0_UNK_40000 = 0x40000,
        RFLG0_UNK_20000 = 0x20000,
        RFLG0_UNK_10000 = 0x10000,
        RFLG0_UNK_8000 = 0x8000,
        RFLG0_UNK_4000 = 0x4000,
        RFLG0_FRONT_ROLL_CRASH = 0x2000,
        RFLG0_ENEMY_ATTN_LOCK = 0x1000,
        RFLG0_UNK_400 = 0x400,
        RFLG0_UNK_200 = 0x200,
        RFLG0_UNK_100 = 0x100,
        RFLG0_UNK_80 = 0x80,
        RFLG0_UNK_40 = 0x40,
        RFLG0_GRAB_UP_END = 0x20,
        RFLG0_UNK_10 = 0x10,
        RFLG0_UNK_8 = 0x8,
        RFLG0_GRAB_THROW = 0x4,
        RFLG0_UNK_2 = 0x2,
        RFLG0_UNK_1 = 0x1,
    };

    enum daPy_RFLG1 {
        RFLG1_UNK_400 = 0x400,
        RFLG1_UNK_200 = 0x200,
        RFLG1_UNK_100 = 0x100,
        RFLG1_UNK_80 = 0x80,
        RFLG1_UNK_40 = 0x40,
        RFLG1_UNK_30 = 0x30,
        RFLG1_UNK_20 = 0x20,
        RFLG1_UNK_10 = 0x10,
        RFLG1_UNK_8 = 0x8,
        RFLG1_UNK_4 = 0x4,
        RFLG1_UNK_2 = 0x2,
        RFLG1_WOLF_ATTACK_REVERSE = 0x1,

        RFLG1_UNK_C = 0xC,
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
        /* 0x09 */ CUT_TYPE_UNK_9,
        /* 0x0A */ CUT_TYPE_JUMP,
        /* 0x0B */ CUT_TYPE_DASH_UNK_B,
        /* 0x0C */ CUT_TYPE_DASH_UNK_C,
        /* 0x0D */ CUT_TYPE_DASH_UNK_D,
        /* 0x0E */ CUT_TYPE_UNK_E,
        /* 0x0F */ CUT_TYPE_UNK_F,
        /* 0x10 */ CUT_TYPE_AIR,
        /* 0x11 */ CUT_TYPE_DASH_UNK_11,
        /* 0x12 */ CUT_TYPE_LARGE_JUMP_INIT,
        /* 0x13 */ CUT_TYPE_LARGE_JUMP,
        /* 0x14 */ CUT_TYPE_LARGE_JUMP_FINISH,
        /* 0x15 */ CUT_TYPE_FINISH_RIGHT,
        /* 0x16 */ CUT_TYPE_TURN_LEFT,
        /* 0x17 */ CUT_TYPE_LARGE_TURN_LEFT,
        /* 0x18 */ CUT_TYPE_LARGE_TURN_RIGHT,
        /* 0x19 */ CUT_TYPE_UNK_19,
        /* 0x1A */ CUT_TYPE_MORTAL_DRAW_A,
        /* 0x1B */ CUT_TYPE_UNK_1B,
        /* 0x1C */ CUT_TYPE_UNK_1C,
        /* 0x1D */ CUT_TYPE_UNK_1D,
        /* 0x1E */ CUT_TYPE_TWIRL,  // Back Slice
        /* 0x1F */ CUT_TYPE_MORTAL_DRAW_B,
        /* 0x20 */ CUT_TYPE_FINISH_STAB,
        /* 0x21 */ CUT_TYPE_COMBO_STAB,
        /* 0x22 */ CUT_TYPE_HORSE_UNK_22,
        /* 0x23 */ CUT_TYPE_HORSE_UNK_23,
        /* 0x24 */ CUT_TYPE_UNK_24,
        /* 0x25 */ CUT_TYPE_DASH_UNK_25,
        /* 0x26 */ CUT_TYPE_DASH_UNK_26,
        /* 0x27 */ CUT_TYPE_DOWN,
        /* 0x28 */ CUT_TYPE_UNK_28,
        /* 0x29 */ CUT_TYPE_GUARD_ATTACK,
        /* 0x2A */ CUT_TYPE_HORSE_UNK_2A,
        /* 0x2B */ CUT_TYPE_HORSE_TURN,
        /* 0x2C */ CUT_TYPE_WOLF_B_LEFT,
        /* 0x2D */ CUT_TYPE_WOLF_B_RIGHT,
        /* 0x2E */ CUT_TYPE_WOLF_B_FRONT,
        /* 0x2F */ CUT_TYPE_WOLF_B_BACK,
        /* 0x30 */ CUT_TYPE_WOLF_UNK_30,
        /* 0x31 */ CUT_TYPE_WOLF_JUMP_S,
        /* 0x32 */ CUT_TYPE_WOLF_JUMP_S_FINISH,
        /* 0x33 */ CUT_TYPE_WOLF_TURN_LEFT,
        /* 0x34 */ CUT_TYPE_WOLF_TURN_RIGHT,
        /* 0x35 */ CUT_TYPE_WOLF_UNK_35,
        /* 0x36 */ CUT_TYPE_WOLF_LOCK,
        /* 0x37 */ CUT_TYPE_WOLF_UNK_37,
        /* 0x38 */ CUT_TYPE_DASH_UNK_38,
        /* 0x39 */ CUT_TYPE_WOLF_JUMP,
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
    f32 getSpinnerRideSpeed() const;
    bool checkSpinnerReflectEffect();
    static bool checkBoomerangCharge();
    int checkBoomerangChargeTime();
    static daBoomerang_c* getThrowBoomerangActor();
    static void cancelBoomerangLockActor(fopAc_ac_c*);
    static void setPlayerDamage(int, int);
    static void setMidnaMotionNum(int);
    static void setMidnaFaceNum(int);
    static BOOL checkShieldGet();
    static BOOL checkSwordGet();
    void changeDemoParam2(s16);
    cXyz getHeadTopPos() const { return mHeadTopPos; }
    BOOL checkThrowDamage() const { return checkNoResetFlg1(FLG1_THROW_DAMAGE); }
    BOOL checkGoronSideMove() const { return mSpecialMode == 0x2B; }
    cXyz* getRightFootPosP() { return &mRightFootPos; }
    cXyz* getLeftFootPosP() { return &mLeftFootPos; }
    BOOL checkCopyRodThrowAfter() const { return checkNoResetFlg3(FLG3_COPY_ROD_THROW_AFTER); }
    BOOL checkRide() const { return checkHorseRide() || checkBoarRide() || checkSpinnerRide() || checkCanoeRide() || checkBoardRide(); }
    const cXyz& getRightHandPos() const { return mRightHandPos; }
    const cXyz getLeftHandPos() const { return mLeftHandPos; }
    const cXyz getItemPos() const { return mItemPos; }

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
    virtual u32 checkPlayerFly() const { return 0; }
    virtual BOOL checkFrontRoll() const { return FALSE; }
    virtual BOOL checkWolfDash() const { return FALSE; }
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
    virtual f32 getBaseAnimeFrameRate() const;
    virtual f32 getBaseAnimeFrame() const;
    virtual void setAnimeFrame(f32);
    virtual BOOL checkWolfLock(fopAc_ac_c*) const;
    virtual bool cancelWolfLock(fopAc_ac_c*);
    virtual s32 getAtnActorID() const { return -1; }
    virtual s32 getItemID() const;
    virtual s32 getGrabActorID() const { return -1; }
    virtual BOOL exchangeGrabActor(fopAc_ac_c*);
    virtual BOOL setForceGrab(fopAc_ac_c*, int, int);
    virtual void setForcePutPos(cXyz const&);
    virtual u32 checkPlayerNoDraw();
    virtual bool checkRopeTag();
    virtual void voiceStart(u32);
    virtual void seStartOnlyReverb(u32);
    virtual void seStartOnlyReverbLevel(u32);
    virtual void setOutPower(f32, short, int);
    virtual void setGrabCollisionOffset(f32, f32, cBgS_PolyInfo*);
    virtual void onMagneGrab(f32, f32);
    virtual void onFrollCrashFlg(u8, int) {}
    virtual MtxP getModelJointMtx(u16);
    virtual MtxP getHeadMtx();
    virtual bool setHookshotCarryOffset(fpc_ProcID, cXyz const*);
    virtual BOOL checkCutJumpCancelTurn() const { return FALSE; }
    virtual bool checkIronBallReturn() const;
    virtual bool checkIronBallGroundStop() const;
    virtual BOOL checkSingleBoarBattleSecondBowReady() const;
    virtual bool checkPointSubWindowMode() const;
    virtual void setClothesChange(int);
    virtual void setPlayerPosAndAngle(cXyz const*, short, int);
    virtual void setPlayerPosAndAngle(cXyz const*, csXyz const*);
    virtual void setPlayerPosAndAngle(f32 (*)[4]);
    virtual bool setThrowDamage(short, f32, f32, int, int, int);
    virtual bool checkSetNpcTks(cXyz*, int, int);
    virtual int setRollJump(f32, f32, short);
    virtual void playerStartCollisionSE(u32, u32);
    virtual void changeTextureAnime(u16, u16, int);
    virtual void cancelChangeTextureAnime();
    virtual void cancelDungeonWarpReadyNeck();
    virtual void onSceneChangeArea(u8, u8, fopAc_ac_c*);
    virtual void onSceneChangeAreaJump(u8, u8, fopAc_ac_c*);
    virtual void onSceneChangeDead(u8, int);
    virtual u32 checkHorseRide() const { return false; }
    virtual u32 checkBoarRide() const { return 0; }
    virtual u32 checkCanoeRide() const { return 0; }
    virtual u32 checkBoardRide() const { return 0; }
    virtual u32 checkSpinnerRide() const { return 0; }
    virtual daSpinner_c* getSpinnerActor();
    virtual BOOL checkHorseRideNotReady() const;
    virtual bool checkArrowChargeEnd() const;
    virtual f32 getSearchBallScale() const;
    virtual int checkFastShotTime();
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
    virtual void setKandelaarMtx(f32 (*)[4], int, int);
    virtual bool getStickAngleFromPlayerShape(short*) const;
    virtual bool checkSpinnerPathMove();
    virtual bool checkSpinnerTriggerAttack();
    virtual void onSpinnerPathForceRemove();
    virtual int getIronBallBgHit() const;
    virtual cXyz* getIronBallCenterPos();
    virtual bool checkCanoeFishingGetLeft() const;
    virtual bool checkCanoeFishingGetRight() const;
    virtual u8 checkBeeChildDrink() const;
    virtual void skipPortalObjWarp();
    virtual BOOL checkTreasureRupeeReturn(int) const;
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
    virtual f32 getSinkShapeOffset() const;
    virtual BOOL checkSinkDead() const;
    virtual BOOL checkHorseStart();
    virtual Z2WolfHowlMgr* getWolfHowlMgrP();
    virtual BOOL checkWolfHowlSuccessAnime() const;
    virtual BOOL checkCopyRodTopUse();
    virtual bool checkCopyRodEquip() const;
    virtual BOOL checkCutJumpMode() const;

    f32 getSpeedF() const { return speedF; }

    bool getSumouCameraMode() const {
        bool sumouCameraMode = false;
        if (mSpecialMode != 0 && mSpecialMode < 0x26) {
            sumouCameraMode = true;
        }
        return sumouCameraMode;
    }

    bool getSumouMode() const { return getSumouCameraMode(); }
    void cancelOriginalDemo() {
        mDemo.setSystemDemoType();
        mDemo.setDemoMode(1);
    }

    u8 getCutCount() const { return mComboCutCount; }

    bool checkStatusWindowDraw() { return checkNoResetFlg2(FLG2_STATUS_WINDOW_DRAW); }
    bool checkCargoCarry() const { return mSpecialMode == SMODE_CARGO_CARRY; }
    bool getHeavyStateAndBoots() { return checkNoResetFlg0(FLG0_HVY_STATE); }
    bool checkEnemyAttentionLock() const { return checkResetFlg0(RFLG0_ENEMY_ATTN_LOCK); }
    bool checkCanoeSlider() const { return mSpecialMode == 0x2D; }
    bool checkGoatStopGame() const { return mSpecialMode == 0x2A; }
    u8 getCutType() const { return mCutType; }
    u16 getSwordAtUpTime() const { return mSwordUpTimer; }
    s16 getDamageWaitTimer() const { return mDamageTimer; }
    bool checkWaterInMove() const { return checkNoResetFlg0(FLG0_UNDERWATER); }
    bool checkSceneChangeAreaStart() const { return checkNoResetFlg2(FLG2_SCN_CHG_START); }
    bool checkFrontRollCrash() const { return checkResetFlg0(RFLG0_FRONT_ROLL_CRASH); }
    bool checkWolfAttackReverse() const { return checkResetFlg1(RFLG1_WOLF_ATTACK_REVERSE); }
    bool checkFreezeDamage() const { return checkNoResetFlg1(FLG1_ICE_FREEZE); }
    bool checkWolfTagLockJumpReady() const { return checkResetFlg0(RFLG0_UNK_20000); }
    bool getGrabUpEnd() const { return checkResetFlg0(RFLG0_GRAB_UP_END); }
    bool getGrabPutStart() const { return checkResetFlg0(RFLG0_GRAB_PUT_START); }
    bool checkSwimUp() const { return checkNoResetFlg0(FLG0_SWIM_UP); }
    BOOL checkHorseZelda() const { return checkNoResetFlg2(FLG2_HORSE_ZELDA); }
    BOOL checkSpecialHorseRide() { return checkNoResetFlg2(daPy_FLG2(FLG2_HORSE_ZELDA | FLG2_UNK_1000000 | FLG2_BOAR_SINGLE_BATTLE)); }
    BOOL checkBoardNoFootAngle() const { return checkResetFlg1(RFLG1_UNK_40); }
    bool checkGrabThrow() const { return checkResetFlg0(RFLG0_GRAB_THROW); }

    void onBossRoomWait() { onEndResetFlg0(ERFLG0_BOSS_ROOM_WAIT); }
    void onBeeFollow() { onEndResetFlg0(ERFLG0_BEE_FOLLOW); }
    void onForceAutoJump() { onEndResetFlg0(ERFLG0_FORCE_AUTO_JUMP); }
    void onNotAutoJump() { onEndResetFlg0(ERFLG0_NOT_AUTO_JUMP); }
    void onNotHang() { onEndResetFlg0(ERFLG0_NOT_HANG); }
    void onShieldBackBone() { onEndResetFlg1(ERFLG1_GANON_FINISH); }
    void onWolfEyeKeep() { onEndResetFlg1(ERFLG1_WOLF_EYE_KEEP); }
    void onFogFade() { onNoResetFlg2(FLG2_UNK_4000); }
    BOOL checkStickArrowReset() const { return checkResetFlg0(RFLG0_UNK_1); }
    u32 getCutAtFlg() const { return checkNoResetFlg0(FLG0_UNK_40); }
    u32 checkBoarSingleBattleFirst() const { return checkNoResetFlg2(FLG2_BOAR_SINGLE_BATTLE); }

    void offWolfEnemyHangBite() { offNoResetFlg2(FLG2_WOLF_ENEMY_HANG_BITE); }
    bool onWolfEnemyHangBite(fopAc_ac_c* param_0) { return onWolfEnemyBiteAll(param_0, FLG2_WOLF_ENEMY_HANG_BITE); }

    void setCanoeSlider() { mSpecialMode = 0x2D; }
    
    void offCanoeSlider() {
        if (checkCanoeSlider()) {
            mSpecialMode = 0;
        }
    }

    void offCargoCarry() {
        if (checkCargoCarry()) {
            mSpecialMode = 0;
        }
    }

    bool onWolfEnemyCatch(fopAc_ac_c* i_actor) { return onWolfEnemyBiteAll(i_actor, FLG2_UNK_8); }

    void offGoronSideMove() {
        if (checkGoronSideMove()) {
            mSpecialMode = 0;
        }
    }

    s16 getBodyAngleX() const { return mBodyAngle.x; }
    s16 getBodyAngleY() const { return mBodyAngle.y; }

    f32 getHeight() const { return field_0x598; }

    BOOL checkMidnaWarp() const { return 0; }

    u32 checkNoResetFlg0(daPy_FLG0 i_flag) const { return mNoResetFlg0 & i_flag; }
    u32 checkNoResetFlg1(daPy_FLG1 i_flag) const { return mNoResetFlg1 & i_flag; }
    u32 checkNoResetFlg2(daPy_FLG2 i_flag) const { return mNoResetFlg2 & i_flag; }
    u32 checkNoResetFlg3(daPy_FLG3 i_flag) const { return mNoResetFlg3 & i_flag; }

    void onNoResetFlg0(daPy_FLG0 i_flag) { mNoResetFlg0 |= i_flag; }
    void onNoResetFlg1(daPy_FLG1 i_flag) { mNoResetFlg1 |= i_flag; }
    void onNoResetFlg2(daPy_FLG2 i_flag) { mNoResetFlg2 |= i_flag; }
    void onNoResetFlg3(daPy_FLG3 i_flag) { mNoResetFlg3 |= i_flag; }

    void offNoResetFlg0(daPy_FLG0 i_flag) { mNoResetFlg0 &= ~i_flag; }
    void offNoResetFlg1(daPy_FLG1 i_flag) { mNoResetFlg1 &= ~i_flag; }
    void offNoResetFlg2(daPy_FLG2 i_flag) { mNoResetFlg2 &= ~i_flag; }
    void offNoResetFlg3(daPy_FLG3 i_flag) { mNoResetFlg3 &= ~i_flag; }

    void offResetFlg0(daPy_RFLG0 flag) { mResetFlg0 &= ~flag; }
    void offResetFlg1(daPy_RFLG1 flag) { mResetFlg1 &= ~flag; }
    void onResetFlg0(daPy_RFLG0 flag) { mResetFlg0 |= flag; }
    void onResetFlg1(daPy_RFLG1 flag) { mResetFlg1 |= flag; }

    void onEndResetFlg0(daPy_ERFLG0 i_flag) { mEndResetFlg0 |= i_flag; }
    void onEndResetFlg2(daPy_ERFLG2 i_flag) { mEndResetFlg2 |= i_flag; }
    void offEndResetFlg2(daPy_ERFLG2 i_flag) { mEndResetFlg2 &= ~i_flag; }

    u32 checkResetFlg0(daPy_RFLG0 i_flag) const { return mResetFlg0 & i_flag; }
    u32 checkResetFlg1(daPy_RFLG1 i_flag) const { return mResetFlg1 & i_flag; }

    u32 checkEndResetFlg0(daPy_ERFLG0 i_flag) const { return mEndResetFlg0 & i_flag; }
    u32 checkEndResetFlg1(daPy_ERFLG1 i_flag) const { return mEndResetFlg1 & i_flag; }
    u32 checkEndResetFlg2(daPy_ERFLG2 i_flag) const { return mEndResetFlg2 & i_flag; }

    void onEndResetFlg1(daPy_ERFLG1 i_flag) { mEndResetFlg1 |= i_flag; }

    cXyz* getLeftHandPosP() { return &mLeftHandPos; }
    cXyz* getRightHandPosP() { return &mRightHandPos; }
    cXyz* getHeadTopPosP() { return &mHeadTopPos; }

    u32 checkWolf() const { return checkNoResetFlg1(FLG1_IS_WOLF); }
    u32 checkEquipHeavyBoots() const { return checkNoResetFlg0(FLG0_EQUIP_HVY_BOOTS); }
    u32 checkMagneBootsOn() const { return checkNoResetFlg0(FLG0_MAGNE_BOOTS_ON); }
    BOOL checkFastSwordCut() const { return checkNoResetFlg0(FLG0_UNK_80000); }
    u32 checkMidnaRide() const { return checkNoResetFlg0(FLG0_MIDNA_RIDE); }
    BOOL checkWolfGrowl() const { return checkResetFlg0(RFLG0_WOLF_GROWL); }
    BOOL checkWolfThreat() const { return checkWolfGrowl(); }
    BOOL checkWolfBark() const { return checkResetFlg0(RFLG0_WOLF_BARK); }
    u32 checkBoomerangAtnKeep() const { return checkNoResetFlg3(FLG3_BOOMERANG_ATN_KEEP); }
    u32 checkCopyRodAtnKeep() const { return checkNoResetFlg3(FLG3_COPY_ROD_ATN_KEEP); }

    void onPlayerNoDraw() { onNoResetFlg0(FLG0_PLAYER_NO_DRAW); }
    void offPlayerNoDraw() { offNoResetFlg0(FLG0_PLAYER_NO_DRAW); }
    void onPushPullKeep() { onNoResetFlg0(FLG0_PUSH_PULL_KEEP); }
    void offPushPullKeep() { offNoResetFlg0(FLG0_PUSH_PULL_KEEP); }
    void onPlayerShadowNoDraw() { onNoResetFlg2(FLG2_PLAYER_SHADOW); }
    void offPlayerShadowNoDraw() { offNoResetFlg2(FLG2_PLAYER_SHADOW); }
    void onLightSwordGetEffect() { onEndResetFlg2(ERFLG2_UNK_10); }
    void onForceGameOver() { onNoResetFlg2(FLG2_FORCE_GAMEOVER); }
    void onForceWolfChange() { onEndResetFlg0(ERFLG0_UNK_2); }
    void onDoPutEmphasys() { onEndResetFlg1(ERFLG1_UNK_10000000); }
    void onNsScream() { onEndResetFlg1(ERFLG1_UNK_1); }
    void onNsScreamAnm() { onEndResetFlg1(daPy_ERFLG1(ERFLG1_UNK_1 | ERFLG1_UNK_2)); }

    u32 checkBoarSingleBattle() const { return checkNoResetFlg2(daPy_FLG2(FLG2_UNK_1000000 | FLG2_BOAR_SINGLE_BATTLE)); }
    u32 checkWolfDashAutoJump() const { return checkNoResetFlg2(FLG2_WOLF_DASH_AUTO_JUMP); }

    void changeOriginalDemo() {
        mDemo.setOriginalDemoType();
        mDemo.setParam0(0);
    }

    void changeDemoMode(u32 i_demoMode, int i_param0, int i_param1, s16 i_param2) {
        mDemo.setDemoMode(i_demoMode);
        mDemo.setParam0(i_param0);
        mDemo.setParam1(i_param1);
        mDemo.setParam2(i_param2);
    }

    void i_changeDemoParam2(s16 i_param2) {
        mDemo.setParam2(i_param2);
    }

    void changeDemoPos0(const cXyz* i_posP) { mDemo.setPos0(i_posP); }

    void changeDemoMoveAngle(s16 i_angle) { mDemo.setMoveAngle(i_angle); }

    static bool checkPeepEndSceneChange() { return getLastSceneMode() == 7; }

    static int getLastSceneDamage() { return (dComIfGs_getLastSceneMode() >> 4) & 0x7F; }
    static u8 getLastSceneSwordAtUpTime() { return (dComIfGs_getLastSceneMode() >> 11) & 0xFF; }

    inline static u32 i_getLastSceneMode();
    inline static u32 getLastSceneMode();
    inline static bool checkWoodSwordEquip();
    inline static bool checkLightMasterSwordEquip();
    inline BOOL i_checkSwordGet();
    inline bool i_checkShieldGet() const;
    inline static BOOL checkNowWolf();
    inline static u32 i_checkNowWolf() { return dComIfGp_getLinkPlayer()->checkWolf(); }
    inline bool checkZoraWearFlg() const;
    inline bool checkMagicArmorWearFlg() const;
    inline static BOOL i_checkFirstMidnaDemo() { return dComIfGs_isEventBit(0xc10); }
    static int checkNowWolfPowerUp() { return checkNowWolfEyeUp(); }

    static daMidna_c* getMidnaActor() { return m_midnaActor; }

    // not sure how to define this properly
    // static void onWolfEnemyCatch(fopAc_ac_c* i_actorP) { onWolfEnemyBiteAll(i_actorP,8);}

    bool checkWolfEnemyCatchOwn(fopAc_ac_c* i_actorP) { return checkWolfEnemyBiteAllOwn(i_actorP); }
    bool checkWolfEnemyHangBiteOwn(fopAc_ac_c* i_actorP) const { return checkWolfEnemyBiteAllOwn(i_actorP); }
    bool checkWolfEnemyLeftThrow() const { return checkNoResetFlg2(FLG2_WOLF_ENEMY_LEFT_THROW); }

    void onWolfLightDropGet() {
        onEndResetFlg0(ERFLG0_UNK_20000000);
        onNoResetFlg3(FLG3_UNK_200000);
    }

    static daMidna_c* m_midnaActor;
};

int daPy_addCalcShort(s16* param_0, s16 param_1, s16 param_2, s16 param_3, s16 param_4);

#endif /* D_A_D_A_PLAYER_H */

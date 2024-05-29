#ifndef D_A_NBOMB_H
#define D_A_NBOMB_H

#include "d/d_bomb.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/a/d_a_player.h"

class daNbomb_c : public dBomb_c {
public:
    enum daNbomb_FLG0 {
        FLG0_PLAYER_MAKE = 0x1,
        FLG0_BOMB_HIT = 0x4,
        FLG0_WATER_BOMB = 0x10,
        FLG0_UNDERWATER = 0x20,
        FLG0_UNK_40 = 0x40,
        FLG0_NO_HIT_PLAYER = 0x80,
        FLG0_CARGO_CARRY = 0x100,
        FLG0_FROZEN = 0x200,
        FLG0_INSECT_BOMB = 0x400,
        FLG0_UNK_800 = 0x800,
        FLG0_DELETE_BOMB = 0x1000,
        FLG0_UNK_2000 = 0x2000,
        FLG0_SET_HOOKSHOT_OFFSET = 0x4000,
        FLG0_UNK_8000 = 0x8000,
        FLG0_UNK_10000 = 0x10000,
        FLG0_UNK_20000 = 0x20000,
    };

    enum daNbomb_TYPE {
        TYPE_NORMAL_PLAYER,
        TYPE_WATER_PLAYER,
        TYPE_INSECT_PLAYER,
        TYPE_FLOWER,
        TYPE_INSECT_ENEMY,
        TYPE_WATER_ENEMY,
    };

    /* 804C6DCC */ void coHitCallback(fopAc_ac_c*);
    /* 804C6E34 */ void tgHitCallback(dCcD_GObjInf*);
    /* 804C6FD8 */ int searchEnemy(fopAc_ac_c*);
    /* 804C7114 */ int createHeap();
    /* 804C7324 */ int create();
    /* 804C7B44 */ daNbomb_c();
    /* 804C7EB4 */ ~daNbomb_c();
    /* 804C8294 */ bool checkTimerStop();
    /* 804C82D8 */ BOOL checkExplode();
    /* 804C8430 */ void setRoomInfo();
    /* 804C84D8 */ void setSmokePos();
    /* 804C8588 */ void setEffect();
    /* 804C87F0 */ void setHookshotOffset();
    /* 804C88CC */ void setFreeze();
    /* 804C88F0 */ BOOL checkWaterIn();
    /* 804C8928 */ BOOL insectLineCheck();
    /* 804C8A88 */ void setHitPolygon(int);
    /* 804C8CF8 */ BOOL procExplodeInit();
    /* 804C9118 */ BOOL procExplode();
    /* 804C93E0 */ BOOL procCarryInit();
    /* 804C955C */ BOOL procCarry();
    /* 804C9930 */ BOOL procWaitInit();
    /* 804C9984 */ BOOL procWait();
    /* 804CA268 */ BOOL procFlowerWaitInit();
    /* 804CA2EC */ BOOL procFlowerWait();
    /* 804CA3B8 */ BOOL procBoomerangMoveInit(dCcD_GObjInf*);
    /* 804CA4E0 */ BOOL procBoomerangMove();
    /* 804CA688 */ BOOL procInsectMoveInit();
    /* 804CA780 */ BOOL procInsectMove();
    /* 804CAEE8 */ int execute();
    /* 804CBC60 */ int draw();

    virtual BOOL checkExplodeNow();
    virtual void deleteBombAndEffect();
    virtual void setCargoBombExplode();

    void onStateFlg0(daNbomb_FLG0 i_flag) { mStateFlg0 |= i_flag; }
    void offStateFlg0(daNbomb_FLG0 i_flag) { mStateFlg0 &= ~i_flag; }
    u32 checkStateFlg0(daNbomb_FLG0 i_flag) const { return mStateFlg0 & i_flag; }

    u32 checkWaterBomb() const { return checkStateFlg0(FLG0_WATER_BOMB); }

    static const char* m_arcNameList[6];

    /* 0x56C */ request_of_phase_process_class mPhase;
    /* 0x574 */ J3DModel* mpModel;
    /* 0x578 */ dBgS_BombAcch mAcch;
    /* 0x750 */ dBgS_AcchCir mAcchCir;
    /* 0x790 */ dCcD_Stts mCcStts;
    /* 0x7CC */ dCcD_Sph mCcSph;
    /* 0x904 */ dCcD_Sph mSph2;
    /* 0xA3C */ mDoExt_bckAnm* mpBck;
    /* 0xA40 */ Mtx field_0xa40;
    /* 0xA70 */ Mtx field_0xa70;
    /* 0xAA0 */ dBgS_BombLinChk mLineChk;
    /* 0xB10 */ cBgS_PolyInfo mInsectHitPolyInfo;
    /* 0xB20 */ Z2SoundObjSimple mSound;
    /* 0xB40 */ daPy_boomerangMove_c mBoomerangMove;
    /* 0xB4C */ u32 mStateFlg0;
    /* 0xB50 */ u8 mExplodeMode;
    /* 0xB51 */ u8 field_0xb51;
    /* 0xB52 */ u8 mNoHitPlayerTimer;
    /* 0xB53 */ s8 mSoundReverb;
    /* 0xB54 */ u8 mType;
    /* 0xB55 */ u8 field_0xB55[0xB58 - 0xB55];
    /* 0xB58 */ s16 mExTime;
    /* 0xB5A */ s16 field_0xb5a;
    /* 0xB5C */ s16 field_0xb5c;
    /* 0xB5E */ s16 mFreezeTimer;
    /* 0xB60 */ LIGHT_INFLUENCE mLightInfluence;
    /* 0xB80 */ WIND_INFLUENCE mWindInfluence;
    /* 0xBAC */ f32 mExplosionStrength;
    /* 0xBB0 */ f32 field_0xbb0;
    /* 0xBB4 */ u32 mPolySound;
    /* 0xBB8 */ u32 mEffectEmitterIDs[5];
    /* 0xBCC */ cXyz mEffectPosition;
    /* 0xBD8 */ cXyz mEffectLastPosition;
    /* 0xBE4 */ cXyz field_0xbe4;
    /* 0xBF0 */ cXyz field_0xbf0;
    /* 0xBFC */ cXyz field_0xbfc;
    /* 0xC08 */ cXyz field_0xc08;
    /* 0xC14 */ cXyz field_0xc14;
    /* 0xC20 */ cXyz field_0xc20;
    /* 0xC2C */ cXyz field_0xc2c;
    /* 0xC38 */ BOOL (daNbomb_c::*mProcFunc)();
};

#endif /* D_A_NBOMB_H */

#ifndef D_A_CSTATUE_H
#define D_A_CSTATUE_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/d_particle_copoly.h"
#include "f_op/f_op_actor.h"

enum daCstatue_FLG0 {
    daCstatue_FLG0_1 = 0x1,
    daCstatue_FLG0_2 = 0x2,
    daCstatue_FLG0_4 = 0x4,
    daCstatue_FLG0_8 = 0x8,
    daCstatue_FLG0_10 = 0x10,
    daCstatue_FLG0_20 = 0x20,
    daCstatue_FLG0_40 = 0x40,
    daCstatue_FLG0_80 = 0x80,
    daCstatue_FLG0_100 = 0x100,
    daCstatue_FLG0_200 = 0x200,
    daCstatue_FLG0_400 = 0x400,
    daCstatue_FLG0_800 = 0x800,
    daCstatue_FLG0_1000 = 0x1000,
};

enum daCstatue_TYPE {
    daCstatue_TYPE_0,
    daCstatue_TYPE_1,
    daCstatue_TYPE_2,
    daCstatue_TYPE_3,
    daCstatue_TYPE_4,
    daCstatue_TYPE_N,
};

/**
 * @ingroup actors-unsorted
 * @class daCstatue_c
 * @brief Dominion Rod Statue
 *
 * @details
 *
 */
class daCstatue_c : public fopAc_ac_c {
public:
    /* 806636AC */ void atHitCallback(fopAc_ac_c*);
    /* 806636EC */ int createHeap();
    /* 80663D28 */ int create();
    /* 80664840 */ ~daCstatue_c();
    /* 80664AA0 */ void setRoomInfo();
    /* 80664B38 */ void setMatrix();
    /* 80664C9C */ void posMove();
    /* 8066555C */ void setCollision();
    /* 80665E14 */ BOOL checkHammerReverse();
    /* 80665F80 */ void setDemo();
    /* 80666390 */ void setAnime();
    /* 80666B80 */ int initBrk(u16);
    /* 80666BF8 */ void initStopBrkBtk();
    /* 80666C38 */ void initStartBrkBtk();
    /* 80666DE8 */ int execute();
    /* 80667438 */ int draw();

    bool checkNormalType() const { return mType == 0; }
    bool checkNotSmallType() const { return mType == 1; }
    bool checkBossType() const { return mType == 4 || mType == 3; }
    cXyz& getBallPos() { return mBallPos; }
    void onWarpGround(const cXyz& pos) {
        mSomePos3 = pos;
        mFlag1 = 3;
    }
    void warpStart(const cXyz& pos) {
        mSomePos3 = pos;
        mFlag1 = 1;
    }
    void onStateFlg0(daCstatue_FLG0 flg) { mStateFlg0 |= flg; }
    void offStateFlg0(daCstatue_FLG0 flg) { mStateFlg0 &= ~flg; }
    bool checkStateFlg0(daCstatue_FLG0 flg) const { return mStateFlg0 & flg; }
    void warpDelete() {
        onStateFlg0(daCstatue_FLG0_1);
        mFlag1 = 1;
    }

    static u16 const m_bckIdxTable[5][7];

private:
    /* 0x568 */ const char* mResName;
    /* 0x56C */ request_of_phase_process_class mPhaseReq;
    /* 0x574 */ J3DModel* mModel;
    /* 0x578 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x57C */ mDoExt_btkAnm mAnim1;
    /* 0x594 */ mDoExt_brkAnm mAnim2;
    /* 0x5AC */ dBgS_AcchCir mAcchCir[4];
    /* 0x6AC */ dBgS_StatueAcch mStatueAcch;  // todo: just dBgS_Acch?
    /* 0x884 */ dCcD_Stts mStts;
    /* 0x8C0 */ dCcD_Cyl mCyl1;
    /* 0x9FC */ dCcD_Cyl* mCyl2;
    /* 0xA00 */ dCcD_Cps* mCps1;
    /* 0xA04 */ dCcD_Cps* mCps2;
    /* 0xA08 */ dCcD_Sph* mSph;
    /* 0xA0C */ mDoExt_invisibleModel mInvisible;
    /* 0xA14 */ Z2Creature mSound;
    /* 0xAA4 */ dPaPo_c mPaPo;
    /* 0xADC */ s8 mReverb;
    /* 0xADD */ u8 mType;
    /* 0xADE */ u8 mParam0;
    /* 0xADF */ u8 mParam3;
    /* 0xAE0 */ u8 mFlag0;
    /* 0xAE1 */ u8 mFlag1;
    /* 0xAE2 */ u8 mParam1;
    /* 0xAE3 */ u8 mParam4;
    /* 0xAE4 */ u8 mParam2;
    /* 0xAE5 */ u8 mBossAtGndHit;
    /* 0xAE6 */ u8 field_0xae6[0xAE8 - 0xAE6];
    /* 0xAE8 */ s16 mParam5;
    /* 0xAEA */ s16 mParam6;
    /* 0xAEC */ u32 mStateFlg0;
    /* 0xAF0 */ u32 mShadowKey;
    /* 0xAF4 */ cXyz mSomePos2;
    /* 0xB00 */ f32 mSomeFloat;
    /* 0xB04 */ f32 mTargetFrame;
    /* 0xB08 */ cXyz mSomePos;
    /* 0xB14 */ cXyz mSomePos3;
    /* 0xB20 */ cXyz mBallPos;
};

STATIC_ASSERT(sizeof(daCstatue_c) == 0xB2C);

#endif /* D_A_CSTATUE_H */

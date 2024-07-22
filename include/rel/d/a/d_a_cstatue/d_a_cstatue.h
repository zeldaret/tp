#ifndef D_A_CSTATUE_H
#define D_A_CSTATUE_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/particle/d_particle_copoly.h"
#include "f_op/f_op_actor.h"

/**
 * @ingroup actors-unsorted
 * @class daCstatue_c
 * @brief Dominion Rod Statue (small?)
 *
 * @details
 *
 */
class daCstatue_c : public fopAc_ac_c {
public:
    /* 806636AC */ void atHitCallback(fopAc_ac_c*);
    /* 806636EC */ void createHeap();
    /* 80663D28 */ void create();
    /* 80664840 */ ~daCstatue_c();
    /* 80664AA0 */ void setRoomInfo();
    /* 80664B38 */ void setMatrix();
    /* 80664C9C */ void posMove();
    /* 8066555C */ void setCollision();
    /* 80665E14 */ void checkHammerReverse();
    /* 80665F80 */ void setDemo();
    /* 80666390 */ void setAnime();
    /* 80666B80 */ void initBrk(u16);
    /* 80666BF8 */ void initStopBrkBtk();
    /* 80666C38 */ void initStartBrkBtk();
    /* 80666DE8 */ void execute();
    /* 80667438 */ void draw();

    bool checkNormalType() const { return mType == 0; }
    bool checkNotSmallType() const { return mType == 1; }
    bool checkBossType() const { return mType == 4 || mType == 3; }
    cXyz& getBallPos() { return mBallPos; }
    void onWarpGround(const cXyz& pos) { 
        field_0xb14 = pos;
        field_0xae1 = 3;
    }
    void warpStart(const cXyz& pos) {
        field_0xb14 = pos;
        field_0xae1 = 1;
    }
    void onStateFlg0(int flg) {
        mStateFlg0 |= flg;
    }
    void warpDelete() {
        onStateFlg0(1);
        field_0xae1 = 1;
    }

    static u8 const m_bckIdxTable[70 + 2 /* padding */];

private:
    /* 0x568 */ char* mResName;
    /* 0x56C */ request_of_phase_process_class mPhaseReq;
    /* 0x574 */ J3DModel* field_0x574;
    /* 0x578 */ mDoExt_McaMorfSO* field_0x578;
    /* 0x57C */ mDoExt_btkAnm field_0x57c;
    /* 0x594 */ mDoExt_brkAnm field_0x594;
    /* 0x5AC */ dBgS_AcchCir field_0x5ac[4];
    /* 0x6AC */ dBgS_StatueAcch field_0x6ac;
    /* 0x884 */ dCcD_Stts field_0x884;
    /* 0x8C0 */ dCcD_Cyl field_0x8c0;
    /* 0x9FC */ dCcD_Cyl* field_0x9fc;
    /* 0xA00 */ dCcD_Cps* field_0xa00;
    /* 0xA04 */ dCcD_Cps* field_0xa04;
    /* 0xA08 */ dCcD_Sph* field_0xa08;
    /* 0xA0C */ mDoExt_invisibleModel field_0xa0c;
    /* 0xA14 */ Z2Creature field_0xa14;
    /* 0xAA4 */ dPaPo_c field_0xaa4;
    /* 0xADC */ u8 mReverb;
    /* 0xADD */ u8 mType;
    /* 0xADE */ u8 field_0xade;
    /* 0xADF */ u8 field_0xadf;
    /* 0xAE0 */ u8 field_0xae0;
    /* 0xAE1 */ u8 field_0xae1;
    /* 0xAE2 */ u8 field_0xae2;
    /* 0xAE3 */ u8 field_0xae3;
    /* 0xAE4 */ u8 field_0xae4;
    /* 0xAE5 */ u8 mBossAtGndHit;
    /* 0xAE6 */ u8 field_0xae6[0xAE8 - 0xAE6];
    /* 0xAE8 */ s16 field_0xae8;
    /* 0xAEA */ s16 field_0xaea;
    /* 0xAEC */ u32 mStateFlg0;
    /* 0xAF0 */ u32 field_0xaf0;
    /* 0xAF4 */ f32 field_0xaf4;
    /* 0xAF8 */ f32 field_0xaf8;
    /* 0xAFC */ f32 field_0xafc;
    /* 0xB00 */ f32 field_0xb00;
    /* 0xB04 */ f32 field_0xb04;
    /* 0xB08 */ cXyz field_0xb08;
    /* 0xB14 */ cXyz field_0xb14;
    /* 0xB20 */ cXyz mBallPos;
};

STATIC_ASSERT(sizeof(daCstatue_c) == 0xB2C);

#endif /* D_A_CSTATUE_H */

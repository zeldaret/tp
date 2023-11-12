#ifndef D_A_E_WB_H
#define D_A_E_WB_H

#include "rel/d/a/d_a_horse/d_a_horse.h"
#include "SSystem/SComponent/c_phase.h"
#include "d/cc/d_cc_uty.h"

enum daE_wb_ACT {
    /* 0x00 */ ACT_WAIT,
    /* 0x15 */ ACT_S_DAMAGE = 0x15,
    /* 0x65 */ ACT_PL_RIDE = 0x65,
    /* 0x67 */ ACT_PL_RIDE_NOW = 0x67,
};

class e_wb_class : public fopEn_enemy_c {
public:
    BOOL checkWait();
    void setPlayerRideNow();
    void setPlayerRide();
    void getOff();
    BOOL checkDownDamage();
    BOOL checkNormalRideMode() const;
    void setRunRideMode();

    MtxP getRideMtx() { return field_0x5e0->getModel()->i_getAnmMtx(15); }
    f32 nowAnimeFrame() const { return field_0x5e0->getFrame(); }
    s16 getWaitRollAngle() const { return mWaitRollAngle; }
    bool checkGetOff() const { return speedF < 3.0f; }

    J3DModel* getModel() {
        if (field_0x5e0 != NULL) {
            return field_0x5e0->getModel();
        }

        return NULL;
    }

private:
    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ s16 field_0x5b4;
    /* 0x05B8 */ char* mResName;
    /* 0x05BC */ u8 field_0x5bc;
    /* 0x05BD */ u8 field_0x5bd;
    /* 0x05BE */ u8 field_0x5be;
    /* 0x05BF */ bool field_0x5bf;
    /* 0x05C0 */ u8 field_0x5c0;
    /* 0x05C4 */ cXyz field_0x5c4;
    /* 0x05D0 */ cXyz field_0x5d0;
    /* 0x05DC */ s16 field_0x5dc;
    /* 0x05DE */ s16 field_0x5de;
    /* 0x05E0 */ mDoExt_McaMorfSO* field_0x5e0;
    /* 0x05E4 */ f32 field_0x5e4;
    /* 0x05E8 */ int mAnmID;
    /* 0x05EC */ Z2CreatureRide mZ2Ride;
    /* 0x0688 */ u8 field_0x688[4];
    /* 0x068C */ s8 field_0x68c;
    /* 0x068E */ s16 field_0x68e;
    /* 0x0690 */ s16 mActionID;
    /* 0x0692 */ u16 field_0x692;
    /* 0x0694 */ u32 field_0x694;
    /* 0x0698 */ s16 field_0x698[4];
    /* 0x06A0 */ s16 field_0x6a0;
    /* 0x06A2 */ u8 field_0x6a2[0x6ae - 0x6a2];
    /* 0x06AE */ s16 field_0x6ae;
    /* 0x06B0 */ s16 field_0x6b0;
    /* 0x06B2 */ s16 field_0x6b2;
    /* 0x06B4 */ u8 field_0x6b4[0x6b6 - 0x6b4];
    /* 0x06B6 */ s16 field_0x6b6;
    /* 0x06B8 */ u8 field_0x6b8[0x6ba - 0x6b8];
    /* 0x06BA */ s16 field_0x6ba;
    /* 0x06BC */ u8 field_0x6bc;
    /* 0x06BD */ u8 field_0x6bd;
    /* 0x06BE */ u16 field_0x6be;
    /* 0x06C0 */ s8 field_0x6c0;
    /* 0x06C4 */ cXyz field_0x6c4;
    /* 0x06D0 */ s16 field_0x6d0;
    /* 0x06D2 */ s16 field_0x6d2;
    /* 0x06D4 */ s16 field_0x6d4;
    /* 0x06D6 */ s16 field_0x6d6;
    /* 0x06D8 */ u8 field_0x6d8[0x6da - 0x6d8];
    /* 0x06DA */ s16 field_0x6da;
    /* 0x06DC */ s16 field_0x6dc;
    /* 0x06DE */ u8 field_0x6de[0x6e4 - 0x6de];
    /* 0x06E4 */ u8 field_0x6e4;
    /* 0x06E5 */ u8 field_0x6e5[0x79a - 0x6e5];
    /* 0x079A */ s16 field_0x79a;
    /* 0x079C */ u8 field_0x79c;
    /* 0x079D */ s8 field_0x79d;
    /* 0x079E */ s8 field_0x79e;
    /* 0x079F */ s8 field_0x79f;
    /* 0x07A0 */ s16 field_0x7a0;
    /* 0x07A2 */ s8 field_0x7a2;
    /* 0x07A4 */ s16 field_0x7a4;
    /* 0x07A6 */ s8 field_0x7a6;
    /* 0x07A7 */ s8 field_0x7a7;
    /* 0x07A8 */ f32 field_0x7a8;
    /* 0x07AC */ dBgS_AcchCir field_0x7ac;
    /* 0x07EC */ dBgS_Acch field_0x7ec;
    /* 0x09C4 */ dCcD_Stts field_0x9c4;
    /* 0x0A00 */ dCcD_Sph field_0xa00[7];
    /* 0x1288 */ dCcD_Sph field_0x1288;
    /* 0x13C0 */ dCcU_AtInfo field_0x13c0;
    /* 0x13E4 */ u8 field_0x13e4;
    /* 0x13E8 */ u32 field_0x13e8;
    /* 0x13EC */ u32 field_0x13ec;
    /* 0x13F0 */ u32 field_0x13f0;
    /* 0x13F4 */ u32 field_0x13f4;
    /* 0x13F8 */ u32 field_0x13f8;
    /* 0x13FC */ u32 field_0x13fc;
    /* 0x1400 */ u32 field_0x1400;
    /* 0x1404 */ u32 field_0x1404;
    /* 0x1408 */ u32 field_0x1408;
    /* 0x140C */ u32 field_0x140c;
    /* 0x1410 */ u32 field_0x1410;
    /* 0x1414 */ u32 field_0x1414;
    /* 0x1418 */ u32 field_0x1418;
    /* 0x141C */ u32 field_0x141c;
    /* 0x1420 */ u32 field_0x1420[3];
    /* 0x142C */ u8 field_0x142c;
    /* 0x142D */ u8 field_0x142d;
    /* 0x142E */ u8 field_0x142e;
    /* 0x142F */ s8 field_0x142f;
    /* 0x1430 */ s8 field_0x1430;
    /* 0x1432 */ s16 field_0x1432;
    /* 0x1434 */ u32 field_0x1434;  // Some actor ID
    /* 0x1438 */ cXyz field_0x1438;
    /* 0x1444 */ cXyz field_0x1444;
    /* 0x1450 */ u8 field_0x1450[0x15d0 - 0x1450];
    /* 0x15D0 */ mDoExt_3DlineMat1_c field_0x15d0;
    /* 0x160C */ mDoExt_3DlineMat1_c field_0x160c;
    /* 0x1648 */ mDoExt_3DlineMat1_c field_0x1648;
    /* 0x1684 */ f32 field_0x1684;
    /* 0x1688 */ u8 field_0x1688;
    /* 0x168A */ u16 field_0x168a;
    /* 0x168C */ f32 field_0x168c;
    /* 0x1690 */ f32 field_0x1690;
    /* 0x1694 */ u8 field_0x1694[0x169e - 0x1694];
    /* 0x169E */ s16 field_0x169e;
    /* 0x16A0 */ s16 field_0x16a0;
    /* 0x16A4 */ cXyz field_0x16a4;
    /* 0x16B0 */ cXyz field_0x16b0;
    /* 0x16BC */ cXyz field_0x16bc;
    /* 0x16C8 */ cXyz field_0x16c8;
    /* 0x16D4 */ cXyz field_0x16d4;
    /* 0x16E0 */ cXyz field_0x16e0;
    /* 0x16EC */ cXyz field_0x16ec;
    /* 0x16F8 */ cXyz field_0x16f8;
    /* 0x1704 */ s16 field_0x1704;
    /* 0x1708 */ f32 field_0x1708;
    /* 0x170C */ f32 field_0x170c;
    /* 0x1710 */ f32 field_0x1710;
    /* 0x1714 */ f32 field_0x1714;
    /* 0x1718 */ f32 field_0x1718;
    /* 0x171C */ u8 field_0x171c[0x1720 - 0x171c];
    /* 0x1720 */ s8 field_0x1720;
    /* 0x1721 */ s8 field_0x1721;
    /* 0x1722 */ s8 field_0x1722;
    /* 0x1723 */ u8 field_0x1723[0x17c4 - 0x1723];
    /* 0x17C4 */ u32 field_0x17c4;
    /* 0x17C8 */ u8 field_0x17c8[0x17D0 - 0x17C8];
    /* 0x17D0 */ u32 field_0x17d0[4];
    /* 0x17E0 */ u8 field_0x17e0;
    /* 0x17E1 */ u8 field_0x17e1;
    /* 0x17E2 */ s16 mWaitRollAngle;
    /* 0x17E4 */ u8 field_0x17e4[0x17e8 - 0x17e4];
    /* 0x17E8 */ f32 mSpeedRate;
};

#endif /* D_A_E_WB_H */
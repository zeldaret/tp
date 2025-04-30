#ifndef D_A_HOZELDA_H
#define D_A_HOZELDA_H

#include "f_op/f_op_actor_mng.h"
#include "d/actor/d_a_player.h"
#include "JSystem/J3DGraphAnimator/J3DMaterialAnm.h"

class daHoZelda_matAnm_c : public J3DMaterialAnm {
public:
    daHoZelda_matAnm_c() {
        init();
    }

    /* 80845EAC */ void init();

    void setNowOffsetX(f32 i_offsetX) { mNowOffsetX = i_offsetX; }
    void setNowOffsetY(f32 i_offsetY) { mNowOffsetY = i_offsetY; }
    f32* getNowOffsetXP() { return &mNowOffsetX; }
    f32* getNowOffsetYP() { return &mNowOffsetY; }

    /* 80848D54 */ virtual ~daHoZelda_matAnm_c() {}
    /* 80845EDC */ virtual void calc(J3DMaterial*) const;

    static bool getEyeMoveFlg() { return mEyeMoveFlg; }
    static void offEyeMoveFlg() { mEyeMoveFlg = false; }
    static void onEyeMoveFlg() { mEyeMoveFlg = true; }

    static u8 getMorfFrame() { return mMorfFrame; }
    static void setMorfFrame(u8 i_frame) { mMorfFrame = i_frame; }
    static void decMorfFrame() { cLib_calcTimer<u8>(&mMorfFrame); }

    static bool mEyeMoveFlg;
    static u8 mMorfFrame;

    /* 0x0F4 */ f32 field_0xf4;
    /* 0x0F8 */ f32 field_0xf8;
    /* 0x0FC */ f32 mNowOffsetX;
    /* 0x100 */ f32 mNowOffsetY;
};

class daHoZelda_hio_c {
public:
};

/**
 * @ingroup actors-unsorted
 * @class daHoZelda_c
 * @brief Zelda (Horseback)
 *
 * @details
 *
 */
class daHoZelda_c : public fopAc_ac_c {
public:
    /* 80846000 */ int createHeap();
    /* 80846718 */ void modelCallBack(u16);
    /* 808469B0 */ int create();
    /* 80846DB0 */ ~daHoZelda_c();
    /* 80846F4C */ int setDoubleAnime(f32, f32, f32, u16, u16, f32);
    /* 8084718C */ int setUpperAnime(u16);
    /* 80847234 */ void resetUpperAnime();
    /* 808472C0 */ int setSingleAnime(u16, f32, f32, s16, f32);
    /* 80847430 */ void animePlay();
    /* 80847574 */ void setEyeBtp(u16);
    /* 808475F0 */ void setEyeBtk(u16, u8);
    /* 80847670 */ void setNormalFace();
    /* 808476B0 */ void setAnm();
    /* 80847E44 */ void setBowModel();
    /* 80847F54 */ void setMatrix();
    /* 80848058 */ void shootArrow();
    /* 80848090 */ void deleteArrow();
    /* 80848118 */ void setBowBck(u16);
    /* 8084819C */ void setRideOffset();
    /* 80848204 */ void clearEyeMove();
    /* 80848254 */ void setEyeMove(cXyz const*, s16, s16);
    /* 808484B8 */ void setNeckAngle();
    /* 80848774 */ void searchBodyAngle();
    /* 808489CC */ int execute();
    /* 80848B64 */ int draw();

    MtxP getRightHandMtx() { return mpZeldaModel->getAnmMtx(22); }
    MtxP getRightFingerMtx() { return mpZeldaModel->getAnmMtx(23); }

    u8 checkBowMode() const { return mBowMode; }
    void setDamageInit() { mDamageInit = 1; }
    u8 checkSingleRide() const { return mIsSingleRide; }

    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ J3DModel* mpZeldaModel;
    /* 0x574 */ J3DModel* mpBowModel;
    /* 0x578 */ mDoExt_btpAnm mEyeBtp;
    /* 0x590 */ mDoExt_btkAnm mEyeBtk;
    /* 0x5A8 */ mDoExt_MtxCalcAnmBlendTblOld* field_0x5a8;
    /* 0x5AC */ mDoExt_AnmRatioPack mAnmRatioPack[3];
    /* 0x5C4 */ mDoExt_MtxCalcOldFrame* field_0x5c4;
    /* 0x5C8 */ daPy_frameCtrl_c mFrameCtrl[3];
    /* 0x610 */ daHoZelda_matAnm_c* mpMatAnm[2];
    /* 0x618 */ Z2Creature mSound;
    /* 0x6A8 */ mDoExt_bckAnm mBowBck;
    /* 0x6C4 */ daPy_actorKeep_c mArrowAcKeep;
    /* 0x6CC */ daPy_actorKeep_c mGndAcKeep;
    /* 0x6D4 */ daHoZelda_hio_c* mpHIO;
    /* 0x6D8 */ u8 mBowMode;
    /* 0x6D9 */ u8 mAnmTimer;
    /* 0x6DA */ u8 field_0x6da;
    /* 0x6DB */ u8 mDamageInit;
    /* 0x6DC */ u8 field_0x6dc;
    /* 0x6DD */ u8 field_0x6dd;
    /* 0x6DE */ u8 field_0x6de;
    /* 0x6DF */ u8 mIsSingleRide;
    /* 0x6E0 */ s8 mReverb;
    /* 0x6E1 */ u8 field_0x6E1[0x6E4 - 0x6E1];
    /* 0x6E4 */ u16 field_0x6e4[2];
    /* 0x6E8 */ u16 mUpperAnmID;
    /* 0x6EA */ u16 mBowAnmID;
    /* 0x6EC */ csXyz mNeckAngle;
    /* 0x6F2 */ csXyz mBodyAngle;
    /* 0x6F8 */ cXyz field_0x6f8;
    /* 0x704 */ const Vec* mpRideOffset;
};

#endif /* D_A_HOZELDA_H */

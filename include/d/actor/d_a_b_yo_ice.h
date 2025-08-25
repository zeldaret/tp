#ifndef D_A_B_YO_ICE_H
#define D_A_B_YO_ICE_H

#include "SSystem/SComponent/c_phase.h"
#include "Z2AudioLib/Z2Creature.h"
#include "f_op/f_op_actor.h"
#include "d/d_bg_s_gnd_chk.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

class daB_YO_c;

/**
 * @ingroup actors-enemies
 * @class daB_YOI_c
 * @brief Blizzeta Second Phase Ice Block
 *
 * @details Snowpeak Ruins dungeon boss second phase ice blocks.
 *
 */
class daB_YOI_c : public fopEn_enemy_c {
public:
    /* 8063A17C */ int draw();
    /* 8063A2D8 */ void setActionMode(int, int);
    /* 8063A2E4 */ void damage_check();
    /* 8063A480 */ void setOperate(int);
    /* 8063A628 */ void setWeight(u8);
    /* 8063A638 */ void setBreakIceEffect();
    /* 8063A6F8 */ void setWallBreakIceEffect();
    /* 8063A79C */ void setApperEffect();
    /* 8063A824 */ void setApperEffect2();
    /* 8063A8C8 */ void setLandingEffect();
    /* 8063A96C */ void executeFirst();
    /* 8063ABC0 */ cXyz getSingleFallPos();
    /* 8063ACCC */ void executeRiseUp();
    /* 8063B238 */ void executeSingleFall();
    /* 8063BB40 */ void executeYose();
    /* 8063C3F0 */ void executeYoseFall();
    /* 8063C76C */ void executeDemoRevival();
    /* 8063C900 */ void executeDamage();
    /* 8063CC90 */ void executeDeath();
    /* 8063CD14 */ void crack_execute();
    /* 8063CD90 */ void action();
    /* 8063D0C8 */ void mtx_set();
    /* 8063D1B0 */ void cc_set();
    /* 8063D350 */ int execute();
    /* 8063D45C */ int _delete();
    /* 8063D4F8 */ int CreateHeap();
    /* 8063D5D0 */ cPhs__Step create();
    /* 8063D8FC */ daB_YOI_c();

    void setSubNumber(int i_subNumber) { mSubNumber = i_subNumber; }

private:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ J3DModel* mpModel;
    /* 0x5B8 */ Z2Creature mCreatureSound;
    /* 0x648 */ Z2SoundObjSimple mSoundObj;
    /* 0x668 */ daB_YO_c* mpBlizzeta;
    /* 0x66C */ cXyz mFallTarget;
    /* 0x678 */ csXyz mWobbleAngle;
    /* 0x680 */ f32 mScaleF;
    /* 0x684 */ f32 mYoseSpeed;
    /* 0x688 */ f32 mCcOffset;
    /* 0x68C */ int mIcicleNo;
    /* 0x690 */ int mSubNumber;
    /* 0x694 */ int mAction;
    /* 0x698 */ int mMode;
    /* 0x69C */ s16 mTargetAngleX;
    /* 0x69E */ s16 mAngleSpeedY;
    /* 0x6A0 */ u16 mIFrameTimer;
    /* 0x6A4 */ int mTimer1;
    /* 0x6A8 */ int mTimer2;
    /* 0x6AC */ u8 mInitAction;
    /* 0x6AD */ bool field_0x6ad;
    /* 0x6AE */ u8 mDeleteTimer;
    /* 0x6B0 */ J3DModel* mpCrackModel;
    /* 0x6B4 */ cXyz mpCrackPos;
    /* 0x6C0 */ f32 mCrackAlpha;
    /* 0x6C4 */ s16 mpCrackAngleY;
    /* 0x6C8 */ dBgS_GndChk mGndChk;
    /* 0x71C */ dCcD_Stts mCcStts;
    /* 0x758 */ dCcD_Cyl mCcCyl0;
    /* 0x894 */ dCcD_Cyl mCcCyl1;
    /* 0x9D0 */ dCcD_Cyl mCcCyl2;
    /* 0xB0C */ dCcU_AtInfo mAtInfo;
    /* 0xB30 */ u32 mParticleKey;
    /* 0xB34 */ u32 mAppearKey;
    /* 0xB38 */ bool mHIOInit;

    enum Action {
        /* 0 */ ACT_FIRST,
        /* 1 */ ACT_RISE_UP,
        /* 2 */ ACT_DEMO_REVIVAL,
        /* 3 */ ACT_SINGLE_FALL,
        /* 4 */ ACT_YOSE,
        /* 5 */ ACT_YOSE_FALL,
        /* 6 */ ACT_DAMAGE,
        /* 7 */ ACT_DEATH,
    };
};

STATIC_ASSERT(sizeof(daB_YOI_c) == 0xB3C);

#endif /* D_A_B_YO_ICE_H */

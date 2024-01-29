#ifndef D_S_D_S_PLAY_H
#define D_S_D_S_PLAY_H

#include "SSystem/SComponent/c_xyz.h"
#include "f_op/f_op_scene.h"

class mDoDvdThd_mountXArchive_c;
class mDoDvdThd_toMainRam_c;

class dScnPly_reg_childHIO_c {
public:
    /* 0x00 */ void* vtable;
    /* 0x04 */ f32 mFloatReg[30];
    /* 0x7C */ s16 mShortReg[10];
};

class dScnPly_reg_HIO_c {
public:
    /* 8025AD78 */ virtual ~dScnPly_reg_HIO_c() {}

    /* 0x4 */ u8 field_0x4[0x8 - 0x4];
#ifdef DEBUG
    /* 0x8 */ dScnPly_reg_childHIO_c mChildReg[26];
#endif
};

class mDoHIO_entry_c {
public:
    virtual ~mDoHIO_entry_c() {}
};

class dScnPly_preLoad_HIO_c : public mDoHIO_entry_c {
public:
    /* 8025ADC0 */ virtual ~dScnPly_preLoad_HIO_c() {}
};

class dScnPly_env_otherHIO_c {
public:
    /* 80259440 */ dScnPly_env_otherHIO_c();

    /* 8025AC0C */ virtual ~dScnPly_env_otherHIO_c() {}

    /* 0x4 */ f32 mShadowDensity;
    /* 0x8 */ u8 mLODBias;
    /* 0x9 */ u8 field_0x9;
    /* 0xA */ u8 mDispTransCylinder;
};

class dScnPly_env_debugHIO_c {
public:
    /* 80259468 */ dScnPly_env_debugHIO_c();

    /* 8025ABC4 */ virtual ~dScnPly_env_debugHIO_c() {}

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x08 */ cXyz mBoxCullMinSize;
    /* 0x14 */ cXyz mBoxCullMaxSize;
    /* 0x20 */ cXyz mSphereCullCenter;
    /* 0x2C */ f32 mSphereCullRadius;
};

class dScnPly_env_HIO_c {
public:
    /* 8025AD04 */ virtual ~dScnPly_env_HIO_c() {}

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ dScnPly_env_otherHIO_c mOther;
    /* 0x14 */ dScnPly_env_debugHIO_c mDebug;
};

extern s8 pauseTimer__9dScnPly_c;
extern s8 nextPauseTimer__9dScnPly_c;  // sPauseTimer

class dScnPly_c : public scene_class {
public:
    /* 80259400 */ s8 calcPauseTimer();
    /* 80259AC4 */ bool resetGame();
    /* 80259BFC */ void offReset();

    static bool isPause() { return pauseTimer == 0; }
    static void setPauseTimer(s8 time) { nextPauseTimer = time; }

    static s8 pauseTimer;
    static s8 nextPauseTimer;

    /* 0x1C4 */ request_of_phase_process_class field_0x1c4;
    /* 0x1CC */ mDoDvdThd_toMainRam_c* sceneCommand;
    /* 0x1D0 */ mDoDvdThd_mountXArchive_c* field_0x1d0;
    /* 0x1D4 */ u8 field_0x1d4;
};

extern dScnPly_env_HIO_c g_envHIO;
extern dScnPly_reg_HIO_c g_regHIO;

/**
 * === Register Usage ===
 * Short Reg(00-09) ... -32768 - +32768
 * Float Reg(00-19) ... -100000.0 - +100000.0
 * Float Reg(20-24) ... 0.0 - 1.0
 * Float Reg(25-29) ... -1.0 - +1.0
 */

#ifdef DEBUG
// Morita
#define TREG_F(i) g_regHIO.mChildReg[0].mFloatReg[i]
#define TREG_S(i) g_regHIO.mChildReg[0].mShortReg[i]

// Matsutani
#define DREG_F(i) g_regHIO.mChildReg[1].mFloatReg[i]
#define DREG_S(i) g_regHIO.mChildReg[1].mShortReg[i]

// Iwawaki
#define IREG_F(i) g_regHIO.mChildReg[2].mFloatReg[i]
#define IREG_S(i) g_regHIO.mChildReg[2].mShortReg[i]

// Sasa
#define SREG_F(i) g_regHIO.mChildReg[3].mFloatReg[i]
#define SREG_S(i) g_regHIO.mChildReg[3].mShortReg[i]

// Umemiya
#define UREG_F(i) g_regHIO.mChildReg[4].mFloatReg[i]
#define UREG_S(i) g_regHIO.mChildReg[4].mShortReg[i]

// Ogawa
#define OREG_F(i) g_regHIO.mChildReg[5].mFloatReg[i]
#define OREG_S(i) g_regHIO.mChildReg[5].mShortReg[i]

// Sakaguchi
#define YREG_F(i) g_regHIO.mChildReg[6].mFloatReg[i]
#define YREG_S(i) g_regHIO.mChildReg[6].mShortReg[i]

// Sakai
#define KREG_F(i) g_regHIO.mChildReg[7].mFloatReg[i]
#define KREG_S(i) g_regHIO.mChildReg[7].mShortReg[i]

// Hara
#define BREG_F(i) g_regHIO.mChildReg[8].mFloatReg[i]
#define BREG_S(i) g_regHIO.mChildReg[8].mShortReg[i]

// Sumiyoshi
#define MREG_F(i) g_regHIO.mChildReg[9].mFloatReg[i]
#define MREG_S(i) g_regHIO.mChildReg[9].mShortReg[i]

// Takeshita
#define AREG_F(i) g_regHIO.mChildReg[10].mFloatReg[i]
#define AREG_S(i) g_regHIO.mChildReg[10].mShortReg[i]

// Yoshida
#define PREG_F(i) g_regHIO.mChildReg[11].mFloatReg[i]
#define PREG_S(i) g_regHIO.mChildReg[11].mShortReg[i]

// Noma
#define NREG_F(i) g_regHIO.mChildReg[12].mFloatReg[i]
#define NREG_S(i) g_regHIO.mChildReg[12].mShortReg[i]

// Nishiwaki
#define WREG_F(i) g_regHIO.mChildReg[13].mFloatReg[i]
#define WREG_S(i) g_regHIO.mChildReg[13].mShortReg[i]

// Masaro
#define JREG_F(i) g_regHIO.mChildReg[14].mFloatReg[i]
#define JREG_S(i) g_regHIO.mChildReg[14].mShortReg[i]

// Hayakawa
#define HREG_F(i) g_regHIO.mChildReg[15].mFloatReg[i]
#define HREG_S(i) g_regHIO.mChildReg[15].mShortReg[i]

// Sadamoto
#define VREG_F(i) g_regHIO.mChildReg[16].mFloatReg[i]
#define VREG_S(i) g_regHIO.mChildReg[16].mShortReg[i]

// Nishikawa
#define XREG_F(i) g_regHIO.mChildReg[17].mFloatReg[i]
#define XREG_S(i) g_regHIO.mChildReg[17].mShortReg[i]

// Suzuki
#define ZREG_F(i) g_regHIO.mChildReg[18].mFloatReg[i]
#define ZREG_S(i) g_regHIO.mChildReg[18].mShortReg[i]

// Nakanishi
#define nREG_F(i) g_regHIO.mChildReg[19].mFloatReg[i]
#define nREG_S(i) g_regHIO.mChildReg[19].mShortReg[i]

// Kuwajima
#define kREG_F(i) g_regHIO.mChildReg[20].mFloatReg[i]
#define kREG_S(i) g_regHIO.mChildReg[20].mShortReg[i]

// Okajima
#define oREG_F(i) g_regHIO.mChildReg[21].mFloatReg[i]
#define oREG_S(i) g_regHIO.mChildReg[21].mShortReg[i]

// Yamazaki
#define yREG_F(i) g_regHIO.mChildReg[22].mFloatReg[i]
#define yREG_S(i) g_regHIO.mChildReg[22].mShortReg[i]

// Ashida
#define aREG_F(i) g_regHIO.mChildReg[23].mFloatReg[i]
#define aREG_S(i) g_regHIO.mChildReg[23].mShortReg[i]

// Okada
#define hREG_F(i) g_regHIO.mChildReg[24].mFloatReg[i]
#define hREG_S(i) g_regHIO.mChildReg[24].mShortReg[i]

// Takahashi
#define tREG_F(i) g_regHIO.mChildReg[25].mFloatReg[i]
#define tREG_S(i) g_regHIO.mChildReg[25].mShortReg[i]
#else
// Morita
#define TREG_F(i)
#define TREG_S(i)

// Matsutani
#define DREG_F(i)
#define DREG_S(i)

// Iwawaki
#define IREG_F(i)
#define IREG_S(i)

// Sasa
#define SREG_F(i)
#define SREG_S(i)

// Umemiya
#define UREG_F(i)
#define UREG_S(i)

// Ogawa
#define OREG_F(i)
#define OREG_S(i)

// Sakaguchi
#define YREG_F(i)
#define YREG_S(i)

// Sakai
#define KREG_F(i)
#define KREG_S(i)

// Hara
#define BREG_F(i)
#define BREG_S(i)

// Sumiyoshi
#define MREG_F(i)
#define MREG_S(i)

// Takeshita
#define AREG_F(i)
#define AREG_S(i)

// Yoshida
#define PREG_F(i)
#define PREG_S(i)

// Noma
#define NREG_F(i)
#define NREG_S(i)

// Nishiwaki
#define WREG_F(i)
#define WREG_S(i)

// Masaro
#define JREG_F(i)
#define JREG_S(i)

// Hayakawa
#define HREG_F(i)
#define HREG_S(i)

// Sadamoto
#define VREG_F(i)
#define VREG_S(i)

// Nishikawa
#define XREG_F(i)
#define XREG_S(i)

// Suzuki
#define ZREG_F(i)
#define ZREG_S(i)

// Nakanishi
#define nREG_F(i)
#define nREG_S(i)

// Kuwajima
#define kREG_F(i)
#define kREG_S(i)

// Okajima
#define oREG_F(i)
#define oREG_S(i)

// Yamazaki
#define yREG_F(i)
#define yREG_S(i)

// Ashida
#define aREG_F(i)
#define aREG_S(i)

// Okada
#define hREG_F(i)
#define hREG_S(i)

// Takahashi
#define tREG_F(i)
#define tREG_S(i)
#endif

#endif /* D_S_D_S_PLAY_H */

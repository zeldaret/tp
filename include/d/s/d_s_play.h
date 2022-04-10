#ifndef D_S_D_S_PLAY_H
#define D_S_D_S_PLAY_H

#include "d/com/d_com_inf_game.h"
#include "dolphin/types.h"
#include "f_op/f_op_scene.h"

class dScnPly_reg_HIO_c {
public:
    /* 8025AD78 */ virtual ~dScnPly_reg_HIO_c();
};

class mDoHIO_entry_c {
public:
    virtual ~mDoHIO_entry_c();
};

class dScnPly_preLoad_HIO_c : public mDoHIO_entry_c {
public:
    /* 8025ADC0 */ virtual ~dScnPly_preLoad_HIO_c();
};

class dScnPly_env_otherHIO_c {
public:
    /* 80259440 */ dScnPly_env_otherHIO_c();

    /* 8025AC0C */ virtual ~dScnPly_env_otherHIO_c();

private:
    /* 0x4 */ f32 mShadowDensity;
    /* 0x8 */ u8 mLODBias;
    /* 0x9 */ u8 field_0x9;
    /* 0xA */ u8 mDispTransCylinder;
};

class dScnPly_env_debugHIO_c {
public:
    /* 80259468 */ dScnPly_env_debugHIO_c();

    /* 8025ABC4 */ virtual ~dScnPly_env_debugHIO_c();

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x08 */ cXyz mBoxCullMinSize;
    /* 0x14 */ cXyz mBoxCullMaxSize;
    /* 0x20 */ cXyz mSphereCullCenter;
    /* 0x2C */ f32 mSphereCullRadius;
};

class dScnPly_env_HIO_c {
public:
    /* 8025AD04 */ virtual ~dScnPly_env_HIO_c();

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x08 */ dScnPly_env_otherHIO_c mOther;
    /* 0x14 */ dScnPly_env_debugHIO_c mDebug;
};

extern s8 struct_80451124;
extern s8 data_80451125;  // sPauseTimer

class dScnPly_c : public scene_class {
public:
    /* 80259400 */ s8 calcPauseTimer();
    /* 80259AC4 */ bool resetGame();
    /* 80259BFC */ void offReset();

    static bool isPause() { return struct_80451124 == 0; }
    static void setPauseTimer(s8 time) { data_80451125 = time; }

    /* 0x1D0 */ mDoDvdThd_mountXArchive_c* field_0x1d0;
    /* 0x1D4 */ u8 field_0x1d4;
};

#endif /* D_S_D_S_PLAY_H */

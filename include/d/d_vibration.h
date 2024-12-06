#ifndef D_D_VIBRATION_H
#define D_D_VIBRATION_H

#include "SSystem/SComponent/c_xyz.h"

struct vib_pattern {
    /* 0x0 */ u16 rounds;
    /* 0x2 */ u16 length;
    /* 0x4 */ u32 bits;
};

enum VIBMODE_SHOCK {
    VIBMODE_S_NONE = -1,
    VIBMODE_S_CUSTOM,
    VIBMODE_S_POWER1,
    VIBMODE_S_POWER2,
    VIBMODE_S_POWER3,
    VIBMODE_S_POWER4,
    VIBMODE_S_POWER5,
    VIBMODE_S_POWER6,
    VIBMODE_S_POWER7,
    VIBMODE_S_POWER8,
    VIBMODE_S_DOKUTT,
    VIBMODE_S_FOR2D,

    VIBMODE_S_MAX
};

enum VIBMODE_QUAKE {
    VIBMODE_Q_NONE = -1,
    VIBMODE_Q_CUSTOM,
    VIBMODE_Q_POWER1,
    VIBMODE_Q_POWER2,
    VIBMODE_Q_POWER3,
    VIBMODE_Q_POWER4,
    VIBMODE_Q_POWER5,
    VIBMODE_Q_POWER6,
    VIBMODE_Q_POWER7,
    VIBMODE_Q_POWER8,
    VIBMODE_Q_HORSE,

    VIBMODE_Q_MAX
};

class dVibration_c {
public:
    enum {
        MODE_PAUSE = -1,
        MODE_WAIT,
        MODE_RUN,
    };

    /* 8006F268 */ int Run();
    /* 8006FA24 */ bool StartShock(int i_vibmode, int i_flags, cXyz i_pos);
    /* 8006FC0C */ bool StartQuake(const u8* i_pattern, int i_rounds, int i_flags, cXyz i_pos);
    /* 8006FB10 */ bool StartQuake(int i_vibmode, int i_flags, cXyz i_pos);
    /* 8006FD94 */ int StopQuake(int i_flags);
    /* 8006FE00 */ void Kill();
    /* 8006FE5C */ bool CheckQuake();
    /* 8006FE84 */ void setDefault();
    /* 8006FF04 */ void Init();
    /* 8006FF38 */ void Pause();
    /* 8006FFF8 */ void Remove();

    static const vib_pattern MS_patt[VIBMODE_S_MAX];
    static const vib_pattern CS_patt[VIBMODE_S_MAX];
    static const vib_pattern MQ_patt[VIBMODE_Q_MAX];
    static const vib_pattern CQ_patt[VIBMODE_Q_MAX];

private:
    class {
    public:
        class {
        public:
            /* 0x00 */ u32 field_0x0; 
            /* 0x04 */ int mVibMode;
            /* 0x08 */ u32 mPattern;
            /* 0x0C */ s32 mLength;
            /* 0x10 */ s32 mRounds;
            /* 0x14 */ s32 mFlags;
            /* 0x18 */ cXyz mPos;
            /* 0x24 */ s32 mFrame;
        } mShock, mQuake;
    } /* 0x00 */ mCamera;
    class {
    public:
        class {
        public:
            /* 0x00 */ u32 field_0x0; 
            /* 0x04 */ int mVibMode;
            /* 0x08 */ u32 mPattern;
            /* 0x0C */ s32 mLength;
            /* 0x10 */ s32 mRounds;
            /* 0x14 */ s32 mFrame;
            /* 0x18 */ s32 mStopFrame;
        } mShock, mQuake;
    } /* 0x50 */ mMotor;
    /* 0x88 */ s32 mFrame;
    /* 0x8C */ s32 mMode;
};  // Size: 0x90

#endif /* D_D_VIBRATION_H */

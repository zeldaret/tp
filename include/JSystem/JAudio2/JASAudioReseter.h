#ifndef JASAUDIORESETER_H
#define JASAUDIORESETER_H

#include "dolphin/types.h"

struct JASAudioReseter {
    /* 8029D0B4 */ JASAudioReseter();
    /* 8029D0FC */ ~JASAudioReseter();
    /* 8029D138 */ bool start(u32, bool);
    /* 8029D1D4 */ void resume();
    /* 8029D1F8 */ s32 checkDone() const;
    /* 8029D200 */ s32 calc();
    /* 8029D2D4 */ static s32 callback(void*);

    /* 0x0 */ u32 field_0x0;
    /* 0x4 */ f32 mDSPLevel;
    /* 0x8 */ s32 mIsDone;
    /* 0xC */ bool field_0xc;
};  // Size: 0x10

#endif /* JASAUDIORESETER_H */

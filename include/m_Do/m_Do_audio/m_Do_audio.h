#ifndef __M_DO_AUDIO_H_
#define __M_DO_AUDIO_H_
#include "global.h"

class mDoAud_zelAudio_c{
public:
    void reset(void);
    ~mDoAud_zelAudio_c();
};

struct mResetData {
    u32 unk_1;
    u32 unk_2;
    u32 unk_3;
    s32 pad_index;
    u8 unk_4;
    u8 unk_5;
    u8 unk_6;
    u8 unk_7;
    u8 unk_8;
    u8 unk_9;
    u8 unk_10;
    u8 unk_11;
};

class JAISeCategoryMgr{
public:
    ~JAISeCategoryMgr();
};

void mDoAud_Create(void);
void mDoAud_Execute(void);

void mDoAud_setSceneName(const char *spot,long room,long layer);

bool mDoAud_load1stDynamicWave(void);

void mDoAud_setFadeOutStart(u8 param_1);

void mDoAud_setFadeInStart(u8 param_1);

void mDoAud_resetProcess(void);

bool mDoAud_resetRecover(void);

void init(void);

#endif
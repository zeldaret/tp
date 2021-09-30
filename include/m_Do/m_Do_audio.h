#ifndef M_DO_M_DO_AUDIO_H
#define M_DO_M_DO_AUDIO_H

#include "Z2AudioLib/Z2AudioMgr.h"
#include "dolphin/types.h"

// move/fix later
template <typename T>
class JASGlobalInstance {
public:
    T* getInstance() { return sInstance; };

    static T* sInstance;
};

extern bool struct_80450BB8;  // sInitFlag
extern bool sResetFlag;

class mDoAud_zelAudio_c {
public:
    void reset();
    ~mDoAud_zelAudio_c() {}

    static void onInitFlag() { struct_80450BB8 = true; }
    static bool isResetFlag() { return sResetFlag; }
    static void onResetFlag() { sResetFlag = true; }
    static void offResetFlag() { sResetFlag = false; }

    Z2AudioMgr mAudioMgr;
};

extern JKRSolidHeap* g_mDoAud_audioHeap;

#endif /* M_DO_M_DO_AUDIO_H */

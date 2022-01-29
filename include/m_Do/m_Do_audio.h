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

inline void mDoAud_bgmSetSwordUsing(s32 id) {
    Z2AudioMgr::getInterface()->mSeqMgr.bgmSetSwordUsing(id);
}

inline void mDoAud_setHour(s32 hour) {
    Z2AudioMgr::getInterface()->mStatusMgr.setHour(hour);
}

inline void mDoAud_setMinute(s32 min) {
    Z2AudioMgr::getInterface()->mStatusMgr.setMinute(min);
}

inline void mDoAud_setWeekday(s32 day) {
    Z2AudioMgr::getInterface()->mStatusMgr.setWeekday(day);
}

inline void mDoAud_seStart(u32 sfx_id, const Vec* param_1, u32 param_2, s8 param_3) {
    Z2AudioMgr::getInterface()->mSeMgr.seStart(sfx_id, param_1, param_2, param_3, 1.0f, 1.0f, -1.0f,
                                               -1.0f, 0);
}

#endif /* M_DO_M_DO_AUDIO_H */

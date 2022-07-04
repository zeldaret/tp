#ifndef M_DO_M_DO_AUDIO_H
#define M_DO_M_DO_AUDIO_H

#include "Z2AudioLib/Z2AudioMgr.h"
#include "Z2AudioLib/Z2EnvSeMgr.h"
#include "dolphin/types.h"

// move/fix later
template <typename T>
class JASGlobalInstance {
public:
    T* getInstance() { return sInstance; };

    static T* sInstance;
};

extern bool struct_80450BB8;  // sInitFlag

class mDoAud_zelAudio_c {
public:
    void reset();
    mDoAud_zelAudio_c() {}
    ~mDoAud_zelAudio_c() {}

    static void onInitFlag() { mInitFlag = true; }
    static bool isInitFlag() { return mInitFlag; }
    static bool isResetFlag() { return mResetFlag; }
    static void onResetFlag() { mResetFlag = true; }
    static void offResetFlag() { mResetFlag = false; }
    static bool isBgmSet() { return mBgmSet; }
    static void onBgmSet() { mBgmSet = true; }
    static void offBgmSet() { mBgmSet = false; }

    static bool mInitFlag;
    static bool mResetFlag;
    static bool mBgmSet;

    Z2AudioMgr mAudioMgr;
};

extern JKRSolidHeap* g_mDoAud_audioHeap;

void mDoAud_resetProcess();
bool mDoAud_resetRecover();
void mDoAud_setSceneName(char const* spot, s32 room, s32 layer);
s32 mDoAud_load1stDynamicWave();

inline void mDoAud_bgmSetSwordUsing(s32 id) {
    Z2AudioMgr::getInterface()->mSeqMgr.bgmSetSwordUsing(id);
}

inline void mDoAud_bgmStart(u32 id) {
    Z2AudioMgr::getInterface()->mSeqMgr.bgmStart(id, 0, 0);
}

inline void mDoAud_bgmStreamPrepare(u32 param_0) {
    Z2AudioMgr::getInterface()->mSeqMgr.bgmStreamPrepare(param_0);
}

inline void mDoAud_bgmStreamPlay() {
    Z2AudioMgr::getInterface()->mSeqMgr.bgmStreamPlay();
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

inline void mDoAud_setInDarkness(bool state) {
    Z2AudioMgr::getInterface()->mSceneMgr.setInDarkness(state);
}

inline void mDoAud_seStart(u32 sfx_id, const Vec* param_1, u32 param_2, s8 param_3) {
    Z2AudioMgr::getInterface()->mSeMgr.seStart(sfx_id, param_1, param_2, param_3, 1.0f, 1.0f, -1.0f,
                                               -1.0f, 0);
}

inline void i_mDoAud_seStartLevel(u32 sfx_id, const Vec* param_1, u32 param_2, s8 param_3) {
    Z2AudioMgr::getInterface()->mSeMgr.seStartLevel(sfx_id, param_1, param_2, param_3, 1.0f, 1.0f,
                                                    -1.0f, -1.0f, 0);
}

inline void mDoAud_messageSePlay(u16 param_0, Vec* position, s8 param_2) {
    Z2AudioMgr::getInterface()->mSeMgr.messageSePlay(param_0, position, param_2);
}

inline void mDoAud_sceneBgmStart() {
    Z2AudioMgr::getInterface()->mSceneMgr.sceneBgmStart();
}

inline void mDoAud_load2ndDynamicWave() {
    Z2AudioMgr::getInterface()->mSceneMgr.load2ndDynamicWave();
}

inline bool mDoAud_check1stDynamicWave() {
    return Z2AudioMgr::getInterface()->mSceneMgr.check1stDynamicWave();
}

inline void mDoAud_bgmStop(u32 param_0) {
    Z2AudioMgr::getInterface()->mSeqMgr.bgmStop(param_0, 0);
}

inline void mDoAud_rainPlay(s32 enable) {
    g_mEnvSeMgr.startRainSe(enable, 0);
}

inline void mDoAud_mEnvse_framework() {
    g_mEnvSeMgr.framework();
}

#endif /* M_DO_M_DO_AUDIO_H */

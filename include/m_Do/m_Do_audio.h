#ifndef M_DO_M_DO_AUDIO_H
#define M_DO_M_DO_AUDIO_H

#include "Z2AudioLib/Z2AudioMgr.h"
#include "Z2AudioLib/Z2EnvSeMgr.h"

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

void mDoAud_Execute();
void mDoAud_resetProcess();
bool mDoAud_resetRecover();
void mDoAud_setSceneName(char const* spot, s32 room, s32 layer);
s32 mDoAud_load1stDynamicWave();
static void mDoAud_setLinkGroupInfo(u8 param_0);
static void mDoAud_setLinkHp(s32 param_0, s32 param_1);
static void mDoAud_seStartLevel(u32 param_0, Vec const* param_1, u32 param_2, s8 param_3);

inline void mDoAud_bgmSetSwordUsing(s32 id) {
    Z2AudioMgr::getInterface()->mSeqMgr.bgmSetSwordUsing(id);
}

inline void mDoAud_bgmStart(u32 i_bgmID) {
    Z2AudioMgr::getInterface()->mSeqMgr.bgmStart(i_bgmID, 0, 0);
}

inline void mDoAud_subBgmStart(u32 i_bgmID) {
    Z2AudioMgr::getInterface()->mSeqMgr.subBgmStart(i_bgmID);
}

inline void mDoAud_bgmNowBattle(f32 param_0) {
    Z2AudioMgr::getInterface()->mSeqMgr.bgmNowBattle(param_0);
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

inline void mDoAud_seStart(u32 i_sfxID, const Vec* i_sePos, u32 param_2, s8 i_reverb) {
    Z2AudioMgr::getInterface()->mSeMgr.seStart(i_sfxID, i_sePos, param_2, i_reverb, 1.0f, 1.0f,
                                               -1.0f, -1.0f, 0);
}

inline void i_mDoAud_seStartLevel(u32 i_sfxID, const Vec* i_sePos, u32 param_2, s8 i_reverb) {
    Z2AudioMgr::getInterface()->mSeMgr.seStartLevel(i_sfxID, i_sePos, param_2, i_reverb, 1.0f, 1.0f,
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

inline void mDoAud_heartGaugeOn() {
    Z2AudioMgr::getInterface()->mStatusMgr.heartGaugeOn();
}

inline void mDoAud_mEnvse_framework() {
    g_mEnvSeMgr.framework();
}

inline void mDoAud_mEnvSe_startFarThunderSe(const Vec* param_0) {
    g_mEnvSeMgr.startFarThunderSe((Vec*)param_0, 0);
}

inline void mDoAud_mEnvse_initStrongWind() {
    g_mEnvSeMgr.initStrongWindSe();
}

inline void mDoAud_mEnvse_setWindDirection(Vec* i_direction) {
    g_mEnvSeMgr.setWindDirection(i_direction);
}

inline void mDoAud_mEnvse_startStrongWindSe(s8 i_reverb) {
    g_mEnvSeMgr.startStrongWindSe(i_reverb);
}

inline void mDoAud_mEnvse_setWindType(u8 i_type) {
    g_mEnvSeMgr.setWindType(i_type);
}

#endif /* M_DO_M_DO_AUDIO_H */

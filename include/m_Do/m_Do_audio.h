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
    Z2AudioMgr::getInterface()->bgmSetSwordUsing(id);
}

inline void mDoAud_bgmStart(u32 i_bgmID) {
    Z2AudioMgr::getInterface()->bgmStart(i_bgmID, 0, 0);
}

inline void mDoAud_subBgmStart(u32 i_bgmID) {
    Z2AudioMgr::getInterface()->subBgmStart(i_bgmID);
}

inline void mDoAud_bgmNowBattle(f32 param_0) {
    Z2AudioMgr::getInterface()->bgmNowBattle(param_0);
}

inline void mDoAud_bgmStreamPrepare(u32 param_0) {
    Z2AudioMgr::getInterface()->bgmStreamPrepare(param_0);
}

inline void mDoAud_bgmStreamPlay() {
    Z2AudioMgr::getInterface()->bgmStreamPlay();
}

inline void mDoAud_setHour(s32 hour) {
    Z2AudioMgr::getInterface()->setHour(hour);
}

inline void mDoAud_setMinute(s32 min) {
    Z2AudioMgr::getInterface()->setMinute(min);
}

inline void mDoAud_setWeekday(s32 day) {
    Z2AudioMgr::getInterface()->setWeekday(day);
}

inline void mDoAud_setInDarkness(bool state) {
    Z2AudioMgr::getInterface()->setInDarkness(state);
}

inline void mDoAud_seStart(u32 i_sfxID, const Vec* i_sePos, u32 param_2, s8 i_reverb) {
    Z2AudioMgr::getInterface()->seStart(i_sfxID, i_sePos, param_2, i_reverb, 1.0f, 1.0f,
                                               -1.0f, -1.0f, 0);
}

inline void i_mDoAud_seStartLevel(u32 i_sfxID, const Vec* i_sePos, u32 param_2, s8 i_reverb) {
    Z2AudioMgr::getInterface()->seStartLevel(i_sfxID, i_sePos, param_2, i_reverb, 1.0f, 1.0f,
                                                    -1.0f, -1.0f, 0);
}

inline void mDoAud_messageSePlay(u16 param_0, Vec* position, s8 param_2) {
    Z2AudioMgr::getInterface()->messageSePlay(param_0, position, param_2);
}

inline void mDoAud_sceneBgmStart() {
    Z2AudioMgr::getInterface()->sceneBgmStart();
}

inline void mDoAud_load2ndDynamicWave() {
    Z2AudioMgr::getInterface()->load2ndDynamicWave();
}

inline bool mDoAud_check1stDynamicWave() {
    return Z2AudioMgr::getInterface()->check1stDynamicWave();
}

inline void mDoAud_bgmStop(u32 param_0) {
    Z2AudioMgr::getInterface()->bgmStop(param_0, 0);
}

inline void mDoAud_rainPlay(s32 enable) {
    g_mEnvSeMgr.startRainSe(enable, 0);
}

inline void mDoAud_heartGaugeOn() {
    Z2AudioMgr::getInterface()->heartGaugeOn();
}

inline void mDoAud_setSnowPower(s8 i_power) {
    g_mEnvSeMgr.setSnowPower(i_power);
}

inline void mDoAud_setFogWipeWidth(f32 i_width) {
    g_mEnvSeMgr.setFogWipeWidth(i_width);
}

inline void mDoAud_startFogWipeTrigger(const Vec* param_0) {
    g_mEnvSeMgr.startFogWipeTrigger((Vec*)param_0);
}

inline void mDoAud_mEnvse_framework() {
    g_mEnvSeMgr.framework();
}

inline void mDoAud_mEnvse_resetScene() {
    g_mEnvSeMgr.resetScene();
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

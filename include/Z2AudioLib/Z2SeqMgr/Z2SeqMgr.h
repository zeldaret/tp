#ifndef Z2SEQMGR_H_
#define Z2SEQMGR_H_

#include "JSystem/JAudio2/JAISe/JAISe.h"
#include "JSystem/JAudio2/JAISound/JAISound.h"
#include "Z2AudioLib/Z2Param/Z2Param.h"
#include "global.h"

struct Z2SeqMgr {
    Z2SeqMgr(void);
    void bgmStart(u32, u32, s32);
    void bgmStop(u32, s32);
    void subBgmStart(u32);
    void subBgmStop(void);
    void subBgmStopInner(void);
    void bgmStreamPrepare(u32);
    int bgmStreamCheckReady(void);
    void bgmStreamPlay(void);
    void bgmStreamStop(u32);
    void changeBgmStatus(s32);
    void changeSubBgmStatus(s32);
    void onVariantBgmJumpEnd(bool);
    void changeFishingBgm(s32);
    void talkInBgm(void);
    void talkOutBgm(void);
    void menuInBgm(void);
    void menuOutBgm(void);
    void fanfareFramework(void);
    void stopWolfHowlSong(void);
    void setHeightVolMod(bool, u32);
    void setTimeProcVolMod(bool, u32);
    void processBgmFramework(void);
    void checkBgmIDPlaying(u32);
    void getChildTrackVolume(JAISoundHandle*, s32);
    void setChildTrackVolume(JAISoundHandle*, s32, float, u32, float, float);
    void resetBattleBgmParams(void);
    void setBattleBgmOff(bool);
    void setBattleSearched(bool);
    void setBattleDistIgnore(bool);
    void setBattleGhostMute(bool);
    void setBattleDistState(u8);
    void setBattleSeqState(u8);
    void setBattleLastHit(u8);
    void battleBgmFramework(void);
    void startBattleBgm(bool);
    void stopBattleBgm(u8, u8);
    void fieldBgmStart(void);
    void fieldRidingMute(void);
    void onFieldBgmJumpStart(void);
    void onFieldBgmJumpEnd(void);
    void fieldBgmFramework(void);
    void mbossBgmMuteProcess(void);
    void bgmSetSwordUsing(s32);
    void bgmNowBattle(float);
    void taktModeMute(void);
    void taktModelMuteOff(void);
    void setFieldBgmPlay(bool);

    u8 p1[0xD0];
    u8 unk_1;
};

extern "C" {
void Z2SeqMgr_NS_fieldBgmStart(void);
void JAIStreamMgr_NS_stop_X1_(void);
void JAISeqMgr_NS_stop_X1_(void);
void bgmStart__8Z2SeqMgrFUlUll(u32, u32, s32);
void bgmStop__8Z2SeqMgrFUll(u32, s32);
void bgmStreamCheckReady__8Z2SeqMgrFv(void);
void JAISoundHandle_NS_releaseSound(void);
void Z2SeqMgr_NS_subBgmStop(void);
void subBgmStop__8Z2SeqMgrFv(void);
void subBgmStopInner__8Z2SeqMgrFv(void);
void JAISoundStatus__NS_lockWhenPrepared();
void bgmStreamPrepare__8Z2SeqMgrFUl(u32);
void JAISound_NS_stop_X1_(void);
void JAISoundStatus__NS_unlockIfLocked(void);
void bgmStreamPlay__8Z2SeqMgrFv(void);
void bgmStreamStop__8Z2SeqMgrFUl(u32);
void subBgmStart__8Z2SeqMgrFUl(u32);
void Z2SeqMgr_NS_setChildTrackVolume(void);
void changeBgmStatus__8Z2SeqMgrFl(s32);
// void changeSubBgmStatus__8Z2SeqMgrFl(s32);
void JAISeqMgr_NS_mixOut(void);
void JAISeqMgr_NS_calc(void);
}

extern u8 lbl_8039BA08[0x280];  // Z2AudioLib stringBase0
extern u32 lbl_803C9DF8;
extern u32 lbl_803CA08C;
extern u32 lbl_803CA308;
extern u32 lbl_80450860;
extern u8 lbl_80450861;
extern u8 lbl_80450862;

extern float lbl_80455998;
extern float lbl_8045599C;
extern float lbl_804559A0;
extern double lbl_804559A8;
extern float lbl_804559B0;
extern float lbl_804559B4;
extern float lbl_804559B8;
extern float lbl_804559BC;
extern float lbl_804559C0;
extern float lbl_804559C4;
extern float lbl_804559C8;
extern float lbl_804559CC;
extern float lbl_804559D0;
extern float lbl_804559D4;
extern float lbl_804559D8;
extern float lbl_804559DC;
extern float lbl_804559E0;
extern double lbl_804559E8;

extern Z2SeqMgr* lbl_80450B84;  // Z2SeqMgr sInstance

#endif
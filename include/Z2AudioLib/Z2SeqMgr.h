#ifndef Z2SEQMGR_H
#define Z2SEQMGR_H

#include "JSystem/JAudio2/JAISound.h"
#include "dolphin/types.h"

// move TTransition / Z2SoundFader ?
struct TTransition {
    /* 0x0 */ float field_0x0;
    /* 0x4 */ float field_0x4;
    /* 0x8 */ u32 mCount;
};  // Size = 0xC

struct Z2SoundFader {
    void move(f32 vol, u32 count) {
        mIntensity = vol;
        mTransition.zero();
    }

    /* 0x0 */ float mIntensity;
    /* 0x4 */ JAISoundParamsTransition::TTransition mTransition;
};  // Size = 0x10

class Z2SeqMgr {
public:
    Z2SeqMgr();

    void bgmStart(u32, u32, s32);
    void bgmStop(u32, s32);
    void subBgmStart(u32);
    void subBgmStop();
    void subBgmStopInner();
    void bgmStreamPrepare(u32);
    int bgmStreamCheckReady();
    void bgmStreamPlay();
    void bgmStreamStop(u32);
    void changeBgmStatus(s32);
    void changeSubBgmStatus(s32);
    void onVariantBgmJumpEnd(bool);
    void changeFishingBgm(s32);
    void talkInBgm();
    void talkOutBgm();
    void menuInBgm();
    void menuOutBgm();
    void fanfareFramework();
    void stopWolfHowlSong();
    void setHeightVolMod(bool, u32);
    void setTimeProcVolMod(bool, u32);
    void processBgmFramework();
    void checkBgmIDPlaying(u32);
    void getChildTrackVolume(JAISoundHandle*, int);
    void setChildTrackVolume(JAISoundHandle*, int, float, u32, float, float);
    void resetBattleBgmParams();
    void setBattleBgmOff(bool);
    void setBattleSearched(bool);
    void setBattleDistIgnore(bool);
    void setBattleGhostMute(bool);
    void setBattleDistState(u8);
    void setBattleSeqState(u8);
    void setBattleLastHit(u8);
    void battleBgmFramework();
    void startBattleBgm(bool);
    void stopBattleBgm(u8, u8);
    void fieldBgmStart();
    void fieldRidingMute();
    void onFieldBgmJumpStart();
    void onFieldBgmJumpEnd();
    void fieldBgmFramework();
    void mbossBgmMuteProcess();
    void bgmSetSwordUsing(s32);
    void bgmNowBattle(float);
    void taktModeMute();
    void taktModeMuteOff();
    void setFieldBgmPlay(bool);
    /* 802B99AC */ void unMuteSceneBgm(u32);
    /* 802B9A24 */ void muteSceneBgm(u32, f32);
    /* 802B9AD0 */ void setTwilightGateVol(f32);
    /* 802B9AFC */ void setWindStoneVol(f32, u32);

    void i_setTwilightGateVol(f32 vol) { mTwilightGateVol = vol; }

    void i_setWindStoneVol(f32 vol, u32 count) { field_0x94.move(vol, count); }

    void i_bgmAllUnMute(u32 count) { field_0x74.move(1.0f, count); }

    void i_unMuteSceneBgm(u32 count) {
        field_0x34.move(1.0f, 0);
        field_0x44.move(1.0f, count);
    }

private:
    /* 0x00 */ JAISoundHandle mMainBgmHandle;
    /* 0x04 */ JAISoundHandle mSubBgmHandle;
    /* 0x08 */ JAISoundHandle field_0x08;
    /* 0x0C */ JAISoundHandle field_0x0c;
    /* 0x10 */ JAISoundID field_0x10;
    /* 0x14 */ Z2SoundFader field_0x14;
    /* 0x24 */ Z2SoundFader field_0x24;
    /* 0x34 */ Z2SoundFader field_0x34;
    /* 0x44 */ Z2SoundFader field_0x44;
    /* 0x54 */ Z2SoundFader field_0x54;
    /* 0x64 */ Z2SoundFader field_0x64;
    /* 0x74 */ Z2SoundFader field_0x74;
    /* 0x84 */ Z2SoundFader field_0x84;
    /* 0x94 */ Z2SoundFader field_0x94;
    /* 0xA4 */ Z2SoundFader field_0xa4;
    /* 0xB4 */ f32 mTwilightGateVol;
    /* 0xB8 */ u16 field_0xb8;
    /* 0xBA */ u8 field_0xba;
    /* 0xBB */ u8 field_0xbb;
    /* 0xBC */ u8 field_0xbc;
    /* 0xBD */ u8 field_0xbd;
    /* 0xBE */ u8 field_0xbe;
    /* 0xBF */ u8 field_0xbf;
    /* 0xC0 */ u8 field_0xc0;
    /* 0xC1 */ u8 field_0xc1;
    /* 0xC2 */ u8 field_0xc2;
    /* 0xC3 */ u8 field_0xc3;
    /* 0xC4 */ u8 field_0xc4;
    /* 0xC8 */ f32 field_0xc8;
    /* 0xCC */ f32 field_0xcc;
    /* 0xD0 */ u8 mFlags;
};  // Size = 0xD4

#endif /* Z2SEQMGR_H */

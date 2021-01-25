#ifndef __Z2SPEECHMGR2_H__
#define __Z2SPEECHMGR2_H__

#include "JSystem/JAudio2/JAISound/JAISound.h"
#include "JSystem/JMath/random.h"
#include "dolphin/types.h"

class Z2SpeechStarter {
public:
    Z2SpeechStarter();

private:
    void* __vt;  //! @todo vtable
};

class Z2SpeechMgr2 {
public:
    Z2SpeechMgr2();

private:
    JAISoundHandle mSoundHandle1;
    JAISoundHandle mSoundHandle2;
    JMath::TRandom_fast_ mRandom;
    Z2SpeechStarter mSpeechStarter;

    u16 field_0x10[500];
    s16 field_0x3f8;
    s16 mTextCount;
    u16 field_0x3fc;
    u8 field_0x3fe;
    u8 field_0x3ff;
    u8 field_0x400;
    u8 field_0x401;
    u8 field_0x402[64];
    u16 field_0x442;
};

//! @todo: we need to eventually figure out how to get JASGlobalInstance working once
//!        const placement is fixed.
extern Z2SpeechMgr2* lbl_80450B70;  // m_Do_main::JASGlobalInstance<Z2SpeechMgr2>::sInstance

// Additional symbols needed for Z2SpeechMgr2.cpp
extern "C" {
void __ct__15Z2SpeechStarterFv(void);

void __ct__12Z2SpeechMgr2Fv(void);
void Z2SpeechMgr2_NS_framework(void);
void Z2SpeechMgr2_NS_isMidnaSpeak(void);
void Z2SpeechMgr2_NS_isNonVerbal(void);
void Z2SpeechMgr2_NS_playOneShotVoice(void);
void Z2SpeechMgr2_NS_selectTail(void);
void Z2SpeechMgr2_NS_selectUnit(void);
void Z2SpeechMgr2_NS_setString(void);
void Z2SpeechMgr2_NS_setTextCount(void);
void Z2SpeechMgr2_NS_speakOneWord(void);

void func_802CCFF8(void);
void func_802CBCEC(void);
}

#endif
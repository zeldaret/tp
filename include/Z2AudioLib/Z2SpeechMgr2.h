#ifndef Z2SPEECHMGR2_H
#define Z2SPEECHMGR2_H

#include "Z2AudioLib/Z2SoundStarter.h"
#include "JSystem/JAudio2/JAISoundHandles.h"
#include "JSystem/JMath/random.h"
#include "dolphin/mtx/vec.h"
#include "dolphin/types.h"

struct Z2SpeechStarter : public Z2SoundStarter {
    /* 802CCFB8 */ Z2SpeechStarter();

    /* 802CBCEC */ virtual ~Z2SpeechStarter();
    /* 802CCFF8 */ virtual void startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*, u32,
                                   f32, f32, f32, f32, f32, u32);
};

struct Z2SpeechMgr2 {
    /* 802CBC60 */ Z2SpeechMgr2();
    /* 802CBD88 */ void setString(u16 const*, s16, u8, u16);
    /* 802CBF60 */ void setTextCount(s16);
    /* 802CC190 */ void speakOneWord(bool);
    /* 802CC2FC */ void isNonVerbal();
    /* 802CC4C0 */ void selectUnit(bool);
    /* 802CC738 */ void selectTail();
    /* 802CC9D0 */ void framework();
    /* 802CCA18 */ void playOneShotVoice(u8, u16, Vec*, s8);
    /* 802CCF88 */ void isMidnaSpeak();

    /* 0x000 */ JAISoundHandle field_0x0;
    /* 0x004 */ JAISoundHandle field_0x4;
    /* 0x008 */ JMath::TRandom_fast_ random;
    /* 0x00C */ Z2SpeechStarter mSpeech;
    /* 0x010 */ u16 field_0x10[500];
    /* 0x3F8 */ u16 field_0x3f8;
    /* 0x3FA */ u16 field_0x3fa;
    /* 0x3FC */ u16 field_0x3fc;
    /* 0x3FE */ u8 field_0x3fe;
    /* 0x3FF */ u8 field_0x3ff;
    /* 0x400 */ u8 field_0x400;
    /* 0x401 */ u8 field_0x401;
    /* 0x402 */ u8 field_0x402[64];
};  // Size: 0x444

STATIC_ASSERT(sizeof(Z2SpeechMgr2) == 0x444);

#endif /* Z2SPEECHMGR2_H */

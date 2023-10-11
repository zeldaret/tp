#ifndef Z2AUDIOMGR_H
#define Z2AUDIOMGR_H

#include "JSystem/JAudio2/JASAudioReseter.h"
#include "Z2AudioLib/Z2Audience.h"
#include "Z2AudioLib/Z2FxLineMgr.h"
#include "Z2AudioLib/Z2SceneMgr.h"
#include "Z2AudioLib/Z2SeMgr.h"
#include "Z2AudioLib/Z2SeqMgr.h"
#include "Z2AudioLib/Z2SoundInfo.h"
#include "Z2AudioLib/Z2SoundMgr.h"
#include "Z2AudioLib/Z2SoundObjMgr.h"
#include "Z2AudioLib/Z2SpeechMgr2.h"
#include "Z2AudioLib/Z2StatusMgr.h"
#include "dolphin/types.h"
#include "global.h"

class JKRArchive;
class JKRSolidHeap;

class Z2AudioMgr : public Z2SeMgr, public Z2SeqMgr, public Z2SceneMgr, public Z2StatusMgr, public Z2SoundObjMgr {
public:
    Z2AudioMgr();
    ~Z2AudioMgr() {}
    void init(JKRSolidHeap*, u32, void*, JKRArchive*);
    void setOutputMode(u32);
    void zeldaGFrameWork();
    void gframeProcess();
    void resetProcess(u32, bool);
    void resetRecover();
    bool hasReset() const;

    static Z2AudioMgr* getInterface() { return mAudioMgrPtr; }

    static Z2AudioMgr* mAudioMgrPtr;

    /* 0x0514 */ virtual int startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*);
    /* 0x0518 */ bool mResettingFlag;
    /* 0x0519 */ bool field_0x519;
    /* 0x051C */ JASAudioReseter mAudioReseter;
    /* 0x052C */ Z2SoundStarter mSoundStarter;
    /* 0x0530 */ Z2SoundMgr mSoundMgr;
    /* 0x0D40 */ Z2SoundInfo mSoundInfo;
    /* 0x0D4C */ Z2Audience mAudience;
    /* 0x0F2C */ Z2SpeechMgr2 mSpeechMgr;
    /* 0x1370 */ Z2FxLineMgr mFxLineMgr;
};  // Size: 0x138C

STATIC_ASSERT(sizeof(Z2AudioMgr) == 0x138C);

inline Z2AudioMgr* Z2GetAudioMgr() {
    return Z2AudioMgr::getInterface();
}

#endif /* Z2AUDIOMGR_H */

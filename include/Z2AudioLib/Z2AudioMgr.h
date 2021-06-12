#ifndef Z2AUDIOMGR_H
#define Z2AUDIOMGR_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "Z2AudioLib/Z2SceneMgr.h"
#include "Z2AudioLib/Z2SeMgr.h"
#include "Z2AudioLib/Z2SeqMgr.h"
#include "Z2AudioLib/Z2SoundStarter.h"
#include "Z2AudioLib/Z2StatusMgr.h"
#include "dolphin/types.h"

class Z2AudioMgr {
public:
    Z2AudioMgr();
    void init(JKRSolidHeap*, u32, void*, JKRArchive*);
    void setOutputMode(u32);
    void zeldaGFrameWork();
    void gframeProcess();
    void resetProcess(u32, bool);
    void resetRecover();
    void hasReset() const;
    void startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*);

    static Z2AudioMgr* mAudioMgrPtr;

private:
    /* 0x0000 */ Z2SeMgr mSeMgr;
    /* 0x03D0 */ Z2SeqMgr mSeqMgr;
    /* 0x04A4 */ Z2SceneMgr mSceneMgr;
    /* 0x04C4 */ Z2StatusMgr mStatusMgr;
    /* 0x04F4 */  // Z2SoundObjMgr mSoundObjMgr;
    /* 0x051C */  // JASAudioReseter mAudioReseter;
    /* 0x052C */ Z2SoundStarter mSoundStarter;
    /* 0x0530 */  // Z2SoundMgr mSoundMgr;
    /* 0x0D40 */  // JAISoundInfo mSoundInfo;
    /* 0x0D4C */  // Z2Audience mAudience;
    /* 0x0F2C */  // Z2SpeechMgr2 mSpeechMgr;
    /* 0x1370 */  // Z2FxLineMgr mFxLineMgr;
};

#endif /* Z2AUDIOMGR_H */

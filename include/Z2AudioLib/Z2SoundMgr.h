#ifndef Z2SOUNDMGR_H
#define Z2SOUNDMGR_H

#include "JSystem/JAudio2/JAISeMgr.h"
#include "JSystem/JAudio2/JAISeqMgr.h"
#include "JSystem/JAudio2/JAIStreamMgr.h"

u16 seqCallback(JASTrack* track, u16 command);

class Z2SoundMgr : public JASGlobalInstance<Z2SoundMgr> {
public:
    /* 802A9E80 */ Z2SoundMgr();
    /* 802AA1B0 */ void calc();
    /* 802AA270 */ void setIIR(JAISound* sound, const s16* iir);
    /* 802AA33C */ void setFilterOff(JAISound* sound);
    /* 802AA430 */ void resetFilterAll();
    /* 802AA528 */ void mixOut();
    /* 802AA67C */ void framework();
    /* 802AA6B0 */ void pauseAllGameSound(bool paused);
    /* 802AA7DC */ void stopSoundID(JAISoundID soundID);
    /* 802AA84C */ void stopSync();
    /* 802AA8C8 */ void stop();
    /* 802AA908 */ void initParams();
    /* 802AA9E8 */ void multiVolumeSoundID(JAISoundID soundID, f32 volume);
    /* 802AAAC4 */ bool isPlayingSoundID(JAISoundID soundID);

    /* 802A9EE8 */ virtual bool startSound(JAISoundID soundID, JAISoundHandle* handle, const JGeometry::TVec3<f32>* posPtr);

    JAISeMgr* getSeMgr() { return &seMgr_; }
    const JAISeMgr* getSeMgr() const { return &seMgr_; }
    JAISeqMgr* getSeqMgr() { return &seqMgr_; }
    const JAISeqMgr* getSeqMgr() const { return &seqMgr_; }
    JAIStreamMgr* getStreamMgr() { return &streamMgr_; }

private:
    /* 0x004 */ JAISeMgr seMgr_;
    /* 0x728 */ JAISeqMgr seqMgr_;
    /* 0x79C */ JAIStreamMgr streamMgr_;
    /* 0x80C */ JAISoundID soundID_;
};  // Size: 0x810

#if VERSION != VERSION_SHIELD_DEBUG
STATIC_ASSERT(sizeof(Z2SoundMgr) == 0x810);
#endif

inline Z2SoundMgr* Z2GetSoundMgr() {
    return JASGlobalInstance<Z2SoundMgr>::getInstance();
}

#endif /* Z2SOUNDMGR_H */

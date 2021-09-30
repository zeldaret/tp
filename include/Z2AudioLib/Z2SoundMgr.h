#ifndef Z2SOUNDMGR_H
#define Z2SOUNDMGR_H

#include "JSystem/JAudio2/JAISeMgr.h"
#include "JSystem/JAudio2/JAISeqMgr.h"
#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JAIStreamMgr.h"
#include "dolphin/types.h"

class Z2SoundMgr {
public:
    /* 802A9E80 */ Z2SoundMgr();
    /* 802AA1B0 */ void calc();
    /* 802AA270 */ void setIIR(JAISound*, s16 const*);
    /* 802AA33C */ void setFilterOff(JAISound*);
    /* 802AA430 */ void resetFilterAll();
    /* 802AA528 */ void mixOut();
    /* 802AA67C */ void framework();
    /* 802AA6B0 */ void pauseAllGameSound(bool);
    /* 802AA7DC */ void stopSoundID(JAISoundID);
    /* 802AA84C */ void stopSync();
    /* 802AA8C8 */ void stop();
    /* 802AA908 */ void initParams();
    /* 802AA9E8 */ void multiVolumeSoundID(JAISoundID, f32);
    /* 802AAAC4 */ void isPlayingSoundID(JAISoundID);

    /* 802A9EE8 */ /* virtual */ void startSound(JAISoundID, JAISoundHandle*,
                                                 JGeometry::TVec3<f32> const*);
    /* 0x000 */ void* vtable;  // remove later
private:
    /* 0x004 */ JAISeMgr mSeMgr;
    /* 0x728 */ JAISeqMgr mSeqMgr;
    /* 0x79C */ JAIStreamMgr mStreamMgr;
    /* 0x80C */ JAISoundID field_0x80c;
};  // Size: 0x810

STATIC_ASSERT(sizeof(Z2SoundMgr) == 0x810);

#endif /* Z2SOUNDMGR_H */

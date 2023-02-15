#ifndef Z2SOUNDSTARTER_H
#define Z2SOUNDSTARTER_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JAISoundStarter.h"
#include "dolphin/types.h"

struct Z2SoundStarter : public JAISoundStarter {
    Z2SoundStarter(bool);
    void setPortData(JAISoundHandle*, u32, u16, s8);
    void getPortData(JAISoundHandle*, u32, s8);

    virtual ~Z2SoundStarter();
    virtual void startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*);
    virtual void startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*, u32, float,
                            float, float, float, float, u32);
};

/**
 * this is supposed to be:
 * JASGlobalInstance<Z2SoundStarter>::sInstance
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>
 */
extern Z2SoundStarter* data_80450B74;

#endif /* Z2SOUNDSTARTER_H */

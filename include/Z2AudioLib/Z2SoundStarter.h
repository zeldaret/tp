#ifndef Z2SOUNDSTARTER_H
#define Z2SOUNDSTARTER_H

#include "JSystem/JAudio2/JAISoundStarter.h"

struct Z2SoundStarter : public JAISoundStarter, public JASGlobalInstance<Z2SoundStarter> {
    Z2SoundStarter(bool);
    void setPortData(JAISoundHandle*, u32, u16, s8);
    u16 getPortData(JAISoundHandle*, u32, s8);

    virtual ~Z2SoundStarter() {}
    virtual bool startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*);
    virtual bool startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*, u32, float,
                            float, float, float, float, u32);
};

inline Z2SoundStarter* Z2GetSoundStarter() {
    return JASGlobalInstance<Z2SoundStarter>::getInstance();
}

#endif /* Z2SOUNDSTARTER_H */

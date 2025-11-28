#ifndef Z2SOUNDSTARTER_H
#define Z2SOUNDSTARTER_H

#include "JSystem/JAudio2/JAISoundStarter.h"

struct Z2SoundStarter : public JAISoundStarter, public JASGlobalInstance<Z2SoundStarter> {
    Z2SoundStarter(bool setInstance);
    void setPortData(JAISoundHandle* handlePtr, u32 portNum, u16 data, s8 childIndex);
    u16 getPortData(JAISoundHandle* handlePtr, u32 portNum, s8 childIndex);

    virtual ~Z2SoundStarter() {}
    virtual bool startSound(JAISoundID soundID, JAISoundHandle* handlePtr, const JGeometry::TVec3<f32>* posPtr);
    virtual bool startSound(JAISoundID soundID, JAISoundHandle* handlePtr,
                            const JGeometry::TVec3<f32>* posPtr, u32 mapinfo, f32 fxMix,
                            f32 pitch, f32 volume, f32 pan, f32 dolby, u32 moveSteps);
};

inline Z2SoundStarter* Z2GetSoundStarter() {
    return JASGlobalInstance<Z2SoundStarter>::getInstance();
}

#endif /* Z2SOUNDSTARTER_H */

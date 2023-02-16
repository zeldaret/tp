#ifndef Z2SOUNDSTARTER_H
#define Z2SOUNDSTARTER_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JAISoundStarter.h"
#include "JSystem/JAudio2/JASGadget.h"

struct Z2SoundStarter : public JAISoundStarter, public JASGlobalInstance<Z2SoundStarter> {
    Z2SoundStarter(bool);
    void setPortData(JAISoundHandle*, u32, u16, s8);
    void getPortData(JAISoundHandle*, u32, s8);

    virtual ~Z2SoundStarter();
    virtual void startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*);
    virtual void startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*, u32, float,
                            float, float, float, float, u32);
};

#endif /* Z2SOUNDSTARTER_H */

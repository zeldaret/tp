#ifndef Z2SOUNDSTARTER_H_
#define Z2SOUNDSTARTER_H_

#include "JSystem/JAudio2/JAISound/JAISound.h"
#include "JSystem/JGeometry/JGeometry.h"

struct Z2SoundStarter_vtable {
    void* field_0x0;
    void* field_0x4;
    void* dtor;
    void* startSound1;
    void* startSound2;
};

struct Z2SoundStarter {
    // Z2SoundStarter_vtable* vtable;

    Z2SoundStarter(bool);
    virtual ~Z2SoundStarter();

    virtual void startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*);
    virtual void startSound(JAISoundID, JAISoundHandle*, JGeometry::TVec3<f32> const*, u32, float,
                            float, float, float, float, u32);

    void setPortData(JAISoundHandle*, u32, u16, s8);
    void getPortData(JAISoundHandle*, u32, s8);
};

extern Z2SoundStarter* lbl_80450B74;

#endif  // Z2SOUNDSTARTER_H_

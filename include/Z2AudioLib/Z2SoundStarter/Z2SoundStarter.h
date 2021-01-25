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

extern "C" {
void __ct__14Z2SoundStarterFb(void);
void __dt__14Z2SoundStarterFv(void);

void getPortData__14Z2SoundStarterFP14JAISoundHandleUlSc(void);
void setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc(void);
void startSound__14Z2SoundStarterF10JAISoundIDP14JAISoundHandlePCQ29JGeometry8TVec3_SUB_0f_SUB_1UlfffffUl(
    void);
}

#endif  // Z2SOUNDSTARTER_H_

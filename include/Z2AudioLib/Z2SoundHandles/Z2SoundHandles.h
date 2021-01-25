#ifndef __Z2SOUNDHANDLES_H__
#define __Z2SOUNDHANDLES_H__

#include "JSystem/JAudio2/JAISound/JAISound.h"
#include "JSystem/JGeometry/JGeometry.h"
#include "JSystem/JSupport/JSUList/JSUList.h"
#include "dolphin/types.h"

class Z2SoundHandlePool : public JAISoundHandle, JSULink<Z2SoundHandlePool> {};

class Z2SoundHandles : protected JSUList<Z2SoundHandlePool> {
public:
    Z2SoundHandles();
    ~Z2SoundHandles();

    void initHandlesPool(u8 pNumHandles);
    void deleteHandlesPool();

    bool isActive() const;

    JAISoundHandle* getHandleSoundID(JAISoundID pSoundId);
    JAISoundHandle* getHandleUserData(u32 pUserData);

    void stopAllSounds(u32 fadeout);

    void setPos(const JGeometry::TVec3<f32>& pos);

    u32 getNumHandles() const { return this->getNumLinks(); }

private:
    u8 mNumHandles;
};

extern "C" {
void __ct__14Z2SoundHandlesFv(void);
void __dt__14Z2SoundHandlesFv(void);
void isActive__14Z2SoundHandlesCFv(void);
void deleteHandlesPool__14Z2SoundHandlesFv(void);
void getHandleSoundID__14Z2SoundHandlesF10JAISoundID(void);
void getHandleUserData__14Z2SoundHandlesFUl(void);
void initHandlesPool__14Z2SoundHandlesFUc(void);
void stopAllSounds__14Z2SoundHandlesFUl(void);

void Z2SoundHandles_NS_dtor(void);
void Z2SoundHandles_NS_getFreeHandle(void);
void Z2SoundHandles_NS_getLowPrioSound(void);
void Z2SoundHandles_NS_setPos(void);
}

#endif
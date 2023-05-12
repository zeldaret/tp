#ifndef Z2SOUNDHANDLES_H
#define Z2SOUNDHANDLES_H

#include "JSystem/JAudio2/JAISound.h"
#include "JSystem/JAudio2/JAISoundHandles.h"
#include "JSystem/JSupport/JSUList.h"
#include "dolphin/types.h"

class Z2SoundHandlePool : public JAISoundHandle, JSULink<Z2SoundHandlePool> {};

class Z2SoundHandles : protected JSUList<Z2SoundHandlePool> {
public:
    Z2SoundHandles();
    ~Z2SoundHandles();

    void initHandlesPool(u8 pNumHandles);
    void deleteHandlesPool();
    void getFreeHandle();
    void getLowPrioSound(JAISoundID);

    bool isActive() const;

    JAISoundHandle* getHandleSoundID(JAISoundID pSoundId);
    JAISoundHandle* getHandleUserData(u32 pUserData);

    void stopAllSounds(u32 fadeout);

    void setPos(const JGeometry::TVec3<f32>& pos);

    u32 getNumHandles() const { return this->getNumLinks(); }

private:
    /* 0xC */ u8 mNumHandles;
};

#endif /* Z2SOUNDHANDLES_H */

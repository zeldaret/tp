#ifndef Z2SOUNDHANDLES_H
#define Z2SOUNDHANDLES_H

#include "JSystem/JAudio2/JAISoundHandles.h"
#include "JSystem/JAudio2/JASHeapCtrl.h"

class Z2SoundHandlePool : public JAISoundHandle, public JSULink<Z2SoundHandlePool>, public JASPoolAllocObject<Z2SoundHandlePool> {
public:
    Z2SoundHandlePool() : JAISoundHandle(), JSULink<Z2SoundHandlePool>(this) {}
};

class Z2SoundHandles : protected JSUList<Z2SoundHandlePool> {
public:
    Z2SoundHandles();
    ~Z2SoundHandles();

    void initHandlesPool(u8 pNumHandles);
    void deleteHandlesPool();
    Z2SoundHandlePool* getFreeHandle();
    Z2SoundHandlePool* getLowPrioSound(JAISoundID pSoundId);

    bool isActive() const;

    Z2SoundHandlePool* getHandleSoundID(JAISoundID pSoundId);
    Z2SoundHandlePool* getHandleUserData(u32 pUserData);

    void stopAllSounds(u32 fadeout);

    void stopSound(JAISoundID soundID, u32 param_1) {
        JAISoundHandle* phandle = getHandleSoundID(soundID);
        if (phandle != NULL) {
            (*phandle)->stop(param_1);
        }
    }

    void setPos(const JGeometry::TVec3<f32>& pos);

    int getNumHandles() const { return getNumLinks(); }
    Z2SoundHandlePool* getHandle(int index) { return (Z2SoundHandlePool*)getNth(index); }

private:
    /* 0xC */ u8 mNumHandles;
};

#endif /* Z2SOUNDHANDLES_H */

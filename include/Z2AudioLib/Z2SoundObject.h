#ifndef Z2SOUNDOBJECT_H
#define Z2SOUNDOBJECT_H

#include "Z2AudioLib/Z2SoundHandles.h"
#include "Z2AudioLib/Z2SoundStarter.h"
#include "dolphin/mtx/mtxvec.h"
#include "dolphin/types.h"

struct JAUSoundAnimationSound {};

class Z2SoundObjBase : protected Z2SoundHandles {
public:
    Z2SoundObjBase();
    ~Z2SoundObjBase();

    void deleteObject();
    void startCollisionSE(u32, u32, Z2SoundObjBase*);

    bool isAlive() const { return mIsInitialized; }

    virtual void temp();  // temp to build OK, remove later
    virtual void framework(u32, s8);
    virtual void dispose();
    virtual bool stopOK(Z2SoundHandlePool& pool);
    virtual void init(Vec* pSoundPos, u8 pNumHandles);
    virtual void startSound(JAISoundID, u32, s8);
    virtual void startLevelSound(JAISoundID, u32, s8);

    // Z2SoundObjBase_vtable* vtable;
    /* 0x14 */ Z2SoundStarter* mSoundStarter;
    /* 0x18 */ Vec* mSoundPos;
    /* 0x1C */ u16 field_0x1c;
    /* 0x1E */ u8 field_0x1e;
    /* 0x1F */ bool mIsInitialized;
};

class Z2SoundObjSimple : protected Z2SoundObjBase {
public:
    Z2SoundObjSimple();

    virtual void temp();  // temp to build OK, remove later
    virtual void init(Vec* pSoundPos, u8 pNumHandles);
    virtual void startSound(JAISoundID, u32, s8);
    virtual void startLevelSound(JAISoundID, u32, s8);
};

class Z2SoundObjAnime : protected Z2SoundObjBase {
public:
    /* 802BEB94 */ Z2SoundObjAnime();
    /* 802BEBFC */ void initAnime(void*, bool, f32, f32);
    /* 802BED68 */ void ageSounds_();
    /* 802BEED4 */ void updateAnime(f32, f32);
    /* 802BF304 */ void updateSoundLifeTime_(f32, f32);
    /* 802BF660 */ void startSoundInner(JGeometry::TVec3<f32> const&, f32, Z2SoundStarter*, u32,
                                        s8);
    /* 802BF890 */ void getSoundID(JAUSoundAnimationSound const*, JGeometry::TVec3<f32> const&,
                                   f32);
    /* 802BF898 */ void playsSound(JAUSoundAnimationSound const*, JGeometry::TVec3<f32> const&,
                                   f32);

    virtual void temp();  // temp to build OK, remove later
    /* 802BEBDC */ virtual void init(Vec*, u8);

    /* 0x20 */ void* field_0x20;  // JAUSoundAnimation*
    /* 0x24 */ int field_0x24;
    /* 0x28 */ float field_0x28;
    /* 0x2C */ float field_0x2c;
    /* 0x30 */ float field_0x30;
    /* 0x34 */ int field_0x34;
    /* 0x38 */ int field_0x38;
    /* 0x3C */ int field_0x3c;
    /* 0x40 */ int field_0x40;
    /* 0x44 */ bool field_0x44;
};

class Z2DopplerSoundObjBase : protected Z2SoundHandles {
    Z2DopplerSoundObjBase();
    ~Z2DopplerSoundObjBase();

    virtual void temp();  // temp to build OK, remove later
    virtual void framework(u32, s8);
    virtual void init(Vec*, u8);
    virtual void startSound(JAISoundID, u32, s8);
    virtual void startLevelSound(JAISoundID, u32, s8);
};

#endif /* Z2SOUNDOBJECT_H */

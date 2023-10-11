#ifndef Z2SOUNDOBJECT_H
#define Z2SOUNDOBJECT_H

#include "Z2AudioLib/Z2SoundHandles.h"
#include "dolphin/types.h"

struct Z2SoundStarter;

struct JAUSoundAnimationSound {};

class Z2SoundObjBase : protected Z2SoundHandles {
public:
    Z2SoundObjBase();
    ~Z2SoundObjBase();

    void deleteObject();
    void startCollisionSE(u32, u32, Z2SoundObjBase*);

    bool isAlive() const { return mIsInitialized; }
    void setSoundStarter(Z2SoundStarter* i_soundStarter) { mSoundStarter = i_soundStarter; }

    virtual void framework(u32, s8);
    virtual void dispose();
    virtual bool stopOK(Z2SoundHandlePool& pool);
    virtual void init(Vec* pSoundPos, u8 pNumHandles);
    virtual void startSound(JAISoundID, u32, s8);
    virtual void startLevelSound(JAISoundID, u32, s8);

    /* 0x14 */ Z2SoundStarter* mSoundStarter;
    /* 0x18 */ Vec* mSoundPos;
    /* 0x1C */ u16 field_0x1c;
    /* 0x1E */ u8 field_0x1e;
    /* 0x1F */ bool mIsInitialized;
};

class Z2SoundObjSimple : public Z2SoundObjBase {
public:
    Z2SoundObjSimple();
    ~Z2SoundObjSimple();

    virtual void temp();  // temp to build OK, remove later
    virtual void init(Vec* pSoundPos, u8 pNumHandles);
    virtual void startSound(JAISoundID, u32, s8);
    virtual void startLevelSound(JAISoundID, u32, s8);
};

class Z2SoundObjAnime : public Z2SoundObjBase {
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

    /* 802BEBDC */ virtual void init(Vec*, u8);

    void stopAnime() { animation_ = NULL; }

    /* 0x20 */ void* animation_;  // JAUSoundAnimation*
    /* 0x24 */ int field_0x24;
    /* 0x28 */ float field_0x28;
    /* 0x2C */ float field_0x2c;
    /* 0x30 */ float field_0x30;
    /* 0x34 */ int field_0x34;
    /* 0x38 */ int field_0x38;
    /* 0x3C */ int field_0x3c;
    /* 0x40 */ int curSoundIndex_;
    /* 0x44 */ bool field_0x44;
};

class Z2DopplerSoundObjBase : public Z2SoundHandles {
public:
    Z2DopplerSoundObjBase();
    ~Z2DopplerSoundObjBase();

    virtual void framework(u32, s8);
    virtual void init(Vec*, u8);
    virtual void startSound(JAISoundID, u32, s8);
    virtual void startLevelSound(JAISoundID, u32, s8);

    /* 0x14 */ Z2SoundStarter* field_0x14;
    /* 0x18 */ JGeometry::TVec3<f32>* field_0x18;
    /* 0x1C */ u16 field_0x1c;
    /* 0x1E */ u8 field_0x1e;
    /* 0x1F */ bool field_0x1f;
    /* 0x20 */ JGeometry::TVec3<f32> field_0x20;
    /* 0x2C */ JGeometry::TVec3<f32> field_0x2c;
};

class Z2SoundObjArrow : public Z2DopplerSoundObjBase {
public:
    /* 802BEB38 */ Z2SoundObjArrow();
    /* 802BEB74 */ virtual void init(Vec*, u8);
};

#endif /* Z2SOUNDOBJECT_H */

#ifndef Z2SOUNDOBJECT_H
#define Z2SOUNDOBJECT_H

#include "Z2AudioLib/Z2SoundHandles.h"
#include "JSystem/JAudio2/JAUSoundAnimator.h"
#include "dolphin/types.h"

class Z2SoundStarter;

class Z2SoundObjBase : protected Z2SoundHandles {
public:
    Z2SoundObjBase();
    ~Z2SoundObjBase();

    void deleteObject();
    JAISoundHandle* startCollisionSE(u32, u32, Z2SoundObjBase*);

    bool isAlive() const { return mIsInitialized; }
    void setSoundStarter(Z2SoundStarter* i_soundStarter) { mSoundStarter = i_soundStarter; }

    virtual void framework(u32, s8);
    virtual void dispose();
    virtual bool stopOK(Z2SoundHandlePool& pool);
    virtual void init(Vec* pSoundPos, u8 pNumHandles);
    virtual JAISoundHandle* startSound(JAISoundID, u32, s8);
    virtual JAISoundHandle* startLevelSound(JAISoundID, u32, s8);

    /* 0x14 */ Z2SoundStarter* mSoundStarter;
    /* 0x18 */ JGeometry::TVec3<f32>* mSoundPos;
    /* 0x1C */ u16 field_0x1c;
    /* 0x1E */ s8 field_0x1e;
    /* 0x1F */ bool mIsInitialized;
};

class Z2SoundObjSimple : public Z2SoundObjBase {
public:
    Z2SoundObjSimple();
    ~Z2SoundObjSimple();

    virtual void init(Vec* pSoundPos, u8 pNumHandles);
    virtual JAISoundHandle* startSound(JAISoundID, u32, s8);
    virtual JAISoundHandle* startLevelSound(JAISoundID, u32, s8);
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
    /* 802BF890 */ u32 getSoundID(JAUSoundAnimationSound const*,
                                         JGeometry::TVec3<f32> const&, f32);
    /* 802BF898 */ bool playsSound(JAUSoundAnimationSound const*, JGeometry::TVec3<f32> const&,
                                   f32);

    /* 802BEBDC */ virtual void init(Vec*, u8);

    void stopAnime() { mpAnimation = NULL; }
    void setLoopStartFrame(f32 i_frame) {
        mStartSoundFrame = i_frame;
        mStartSoundIndex = mpAnimation->getStartSoundIndex(i_frame);
    }
    void setLoopEndFrame(f32 i_frame) {
        mEndSoundFrame = i_frame;
        mEndSoundIndex = mpAnimation->getEndSoundIndex(i_frame);
    }
    void setLoopFrame(f32 i_startFrame, f32 i_endFrame) {
        setLoopStartFrame(i_startFrame);
        setLoopEndFrame(i_endFrame);
    }

    /* 0x20 */ JAUSoundAnimation* mpAnimation;
    /* 0x24 */ int field_0x24;
    /* 0x28 */ f32 mCurSoundFrame;
    /* 0x2C */ f32 mStartSoundFrame;
    /* 0x30 */ f32 mEndSoundFrame;
    /* 0x34 */ int mStartSoundIndex;
    /* 0x38 */ int mEndSoundIndex;
    /* 0x3C */ int field_0x3c;
    /* 0x40 */ int mCurSoundIndex;
    /* 0x44 */ bool mReverse;
};

class Z2DopplerSoundObjBase : public Z2SoundObjBase {
public:
    Z2DopplerSoundObjBase();
    ~Z2DopplerSoundObjBase();

    virtual void framework(u32, s8);
    virtual void init(Vec*, u8);
    virtual JAISoundHandle* startSound(JAISoundID, u32, s8);
    virtual JAISoundHandle* startLevelSound(JAISoundID, u32, s8);

    /* 0x20 */ JGeometry::TVec3<f32> field_0x20;
    /* 0x2C */ JGeometry::TVec3<f32> field_0x2c;
};

class Z2SoundObjArrow : public Z2DopplerSoundObjBase {
public:
    /* 802BEB38 */ Z2SoundObjArrow();
    /* 802BEB74 */ virtual void init(Vec*, u8);
};

#endif /* Z2SOUNDOBJECT_H */

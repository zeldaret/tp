#ifndef JPAFIELDBLOCK_H
#define JPAFIELDBLOCK_H

#include "JSystem/JGeometry.h"
#include "dolphin/types.h"

class JKRHeap;
class JPAEmitterWorkData;
class JPABaseParticle;
class JPAFieldBlock;

class JPAFieldBase {
public:
    /* 8027BDEC */ void calcAffect(JPAFieldBlock*, JPABaseParticle*);
    /* 8027BF18 */ f32 calcFadeAffect(JPAFieldBlock*, f32) const;

    /* 8027D3AC */ virtual ~JPAFieldBase() {}
    /* 80276A8C */ virtual void prepare(JPAEmitterWorkData*, JPAFieldBlock*) {}
    virtual void calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*) = 0;

    /* 0x04 */ JGeometry::TVec3<f32> mAccel;
};

class JPAFieldVortex : public JPAFieldBase {
public:
    /* 8027C56C */ void prepare(JPAEmitterWorkData*, JPAFieldBlock*);
    /* 8027C674 */ void calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*);
    /* 8027D564 */ ~JPAFieldVortex() {}

    /* 0x10 */ JGeometry::TVec3<f32> field_0x10;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
};

class JPAFieldSpin : public JPAFieldBase {
public:
    /* 8027CE64 */ void prepare(JPAEmitterWorkData*, JPAFieldBlock*);
    /* 8027CFA8 */ void calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*);
    /* 8027D3F4 */ ~JPAFieldSpin() {}

    /* 0x10 */ JGeometry::TVec3<f32> field_0x10;
    /* 0x1C */ JGeometry::TVec3<f32> field_0x1c;
    /* 0x28 */ JGeometry::TVec3<f32> field_0x28;
};

class JPAFieldRandom : public JPAFieldBase {
public:
    /* 8027CCCC */ void calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*);
    /* 8027D4AC */ ~JPAFieldRandom() {}
};

class JPAFieldNewton : public JPAFieldBase {
public:
    /* 8027C36C */ void prepare(JPAEmitterWorkData*, JPAFieldBlock*);
    /* 8027C3E0 */ void calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*);
    /* 8027D5C0 */ ~JPAFieldNewton() {}

    /* 0x10 */ JGeometry::TVec3<f32> mDir;
    /* 0x1C */ f32 mCutoff;
};

class JPAFieldMagnet : public JPAFieldBase {
public:
    /* 8027C24C */ void prepare(JPAEmitterWorkData*, JPAFieldBlock*);
    /* 8027C29C */ void calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*);
    /* 8027D61C */ ~JPAFieldMagnet() {}

    /* 0x10 */ JGeometry::TVec3<f32> mDir;
};

class JPAFieldGravity : public JPAFieldBase {
public:
    /* 8027BFB4 */ void prepare(JPAEmitterWorkData*, JPAFieldBlock*);
    /* 8027C054 */ void calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*);
    /* 8027D6D4 */ ~JPAFieldGravity() {}
};

class JPAFieldDrag : public JPAFieldBase {
public:
    /* 8027CDE4 */ void calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*);
    /* 8027D450 */ ~JPAFieldDrag() {}
};

class JPAFieldConvection : public JPAFieldBase {
public:
    /* 8027C814 */ void prepare(JPAEmitterWorkData*, JPAFieldBlock*);
    /* 8027CA94 */ void calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*);
    /* 8027D508 */ ~JPAFieldConvection() {}

    /* 0x10 */ JGeometry::TVec3<f32> field_0x10;
    /* 0x1C */ JGeometry::TVec3<f32> field_0x1c;
    /* 0x28 */ JGeometry::TVec3<f32> field_0x28;
};

class JPAFieldAir : public JPAFieldBase {
public:
    /* 8027C07C */ void prepare(JPAEmitterWorkData*, JPAFieldBlock*);
    /* 8027C1B8 */ void calc(JPAEmitterWorkData*, JPAFieldBlock*, JPABaseParticle*);
    /* 8027D678 */ ~JPAFieldAir() {}
};

// unknown name
class JPAFieldBlockData {
public:
    /* 0x00 */ u8 mMagic[4];
    /* 0x04 */ u32 mSize;
    /* 0x08 */ u32 mFlags;
    /* 0x0C */ JGeometry::TVec3<f32> mPos;
    /* 0x18 */ JGeometry::TVec3<f32> mDir;
    /* 0x24 */ f32 mMag;
    /* 0x28 */ f32 mMagRndm;
    /* 0x2C */ f32 mVal1;
    /* 0x30 */ f32 mFadeInTime;
    /* 0x34 */ f32 mFadeOutTime;
    /* 0x38 */ f32 mEnTime;
    /* 0x3C */ f32 mDisTime;
    /* 0x40 */ u8 mCycle;
};

class JPAFieldBlock {
public:
    /* 8027D088 */ JPAFieldBlock(u8 const*, JKRHeap*);
    /* 8027D0C0 */ void init(JKRHeap*);

    u32 getType() { return mpData->mFlags & 0xF; }
    u32 getAddType() { return (mpData->mFlags >> 8) & 3; }
    u32 getSttFlag() { return mpData->mFlags >> 16; }
    bool checkStatus(u16 flag) { return flag & getSttFlag(); }
    f32 getMagRndm() { return mpData->mMagRndm; }
    f32 getVal1() { return mpData->mVal1; }
    f32 getFadeInTime() { return mpData->mFadeInTime; }
    f32 getFadeOutTime() { return mpData->mFadeOutTime; }
    f32 getEnTime() { return mpData->mEnTime; }
    f32 getDisTime() { return mpData->mDisTime; }
    u8 getCycle() { return mpData->mCycle; }
    f32 getFadeInRate() { return mFadeInRate; }
    f32 getFadeOutRate() { return mFadeOutRate; }
    JGeometry::TVec3<f32>& getPos() { return mPos; }
    JGeometry::TVec3<f32>& getDir() { return mDir; }
    f32 getMag() { return mMag; }
    void getPosOrig(JGeometry::TVec3<f32>* pos) { pos->set(mpData->mPos); }
    void getDirOrig(JGeometry::TVec3<f32>* dir) { dir->set(mpData->mDir); }
    f32 getMagOrig() { return mpData->mMag; }
    void initOpParam() {
        getPosOrig(&mPos);
        getDirOrig(&mDir);
        mMag = getMagOrig();
    }
    void prepare(JPAEmitterWorkData* work) { mpField->prepare(work, this); }
    void calc(JPAEmitterWorkData* work, JPABaseParticle* ptcl) { mpField->calc(work, this, ptcl); }

private:
    /* 0x00 */ const JPAFieldBlockData* mpData;
    /* 0x04 */ JPAFieldBase* mpField;
    /* 0x08 */ f32 mFadeInRate;
    /* 0x0C */ f32 mFadeOutRate;
    /* 0x10 */ JGeometry::TVec3<f32> mPos;
    /* 0x1C */ JGeometry::TVec3<f32> mDir;
    /* 0x28 */ f32 mMag;

    enum Type {
        /* 0x0 */ FIELD_GRAVITY,
        /* 0x1 */ FIELD_AIR,
        /* 0x2 */ FIELD_MAGNET,
        /* 0x3 */ FIELD_NEWTON,
        /* 0x4 */ FIELD_VORTEX,
        /* 0x5 */ FIELD_RANDOM,
        /* 0x6 */ FIELD_DRAG,
        /* 0x7 */ FIELD_CONVECTION,
        /* 0x8 */ FIELD_SPIN,
    };
};

#endif /* JPAFIELDBLOCK_H */

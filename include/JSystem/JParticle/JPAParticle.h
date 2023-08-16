#ifndef JPAPARTICLE_H
#define JPAPARTICLE_H

#include "dolphin/gx/GXStruct.h"
#include "dolphin/types.h"

#include "JSystem/JGeometry.h"

#include "JSystem/JParticle/JPAList.h"

class JKRHeap;
class JPABaseEmitter;
class JPABaseParticle;
class JPAEmitterCallBack;
class JPAEmitterManager;
class JPAParticleCallBack;
class JPAResourceManager;
struct JPAEmitterWorkData;

class JPABaseParticle {
public:
    /* 8027EFEC */ void init_p(JPAEmitterWorkData*);
    /* 8027F8C8 */ void init_c(JPAEmitterWorkData*, JPABaseParticle*);
    /* 8027FFD0 */ void calc_p(JPAEmitterWorkData*);
    /* 80280260 */ void calc_c(JPAEmitterWorkData*);
    /* 802804C8 */ void canCreateChild(JPAEmitterWorkData*);
    /* 80280548 */ f32 getWidth(JPABaseEmitter const*) const;
    /* 80280568 */ f32 getHeight(JPABaseEmitter const*) const;
    int getAge() { return mAge; }
    void setOffsetPosition(const JGeometry::TVec3<f32>& pos) { mOffsetPosition.set(pos); }
    void setOffsetPosition(f32 x, f32 y, f32 z) { mOffsetPosition.set(x, y, z); }
    void getOffsetPosition(JGeometry::TVec3<f32>& pos) { pos.set(mOffsetPosition); }
    u16 getRotateAngle() const { return mRotateAngle; }
    void getGlobalPosition(JGeometry::TVec3<f32>& pos) const { pos.set(mPosition); }
    f32 getParticleScaleX() const { return mParticleScaleX; }
    f32 getParticleScaleY() const { return mParticleScaleY; }
    void setStatus(u32 flag) { mStatus |= flag; }
    u32 checkStatus(u32 flag) { return mStatus & flag; }
    void setInvisibleParticleFlag() { setStatus(8); }
    void setDeleteParticleFlag() { setStatus(2); }
    void getVelVec(JGeometry::TVec3<f32>& vec) const { vec.set(mVelocity); }
    void getLocalPosition(JGeometry::TVec3<f32>& vec) const { vec.set(mLocalPosition); }

public:
    /* 0x00 */ JGeometry::TVec3<f32> mPosition;
    /* 0x0C */ JGeometry::TVec3<f32> mLocalPosition;
    /* 0x18 */ JGeometry::TVec3<f32> mOffsetPosition;
    /* 0x24 */ JGeometry::TVec3<f32> mVelocity;
    /* 0x30 */ Vec mVelType1;
    /* 0x3C */ Vec mVelType0;
    /* 0x48 */ Vec mVelType2;
    /* 0x54 */ JGeometry::TVec3<f32> mBaseAxis;
    /* 0x60 */ f32 mParticleScaleX;
    /* 0x64 */ f32 mParticleScaleY;
    /* 0x68 */ f32 mScaleOut;
    /* 0x6C */ f32 mAlphaWaveRandom;
    /* 0x70 */ f32 mMoment;
    /* 0x74 */ f32 mDrag;
    /* 0x78 */ u32 field_0x78;
    /* 0x7C */ u32 mStatus;
    /* 0x80 */ s16 mAge;
    /* 0x82 */ u16 mLifeTime;
    /* 0x84 */ f32 mTime;
    /* 0x88 */ u16 mRotateAngle;
    /* 0x8A */ u16 mRotateSpeed;
    /* 0x8C */ GXColor mPrmClr;
    /* 0x90 */ GXColor mEnvClr;
    /* 0x94 */ u8 mTexAnmIdx;
    /* 0x95 */ u8 mAnmRandom;
    /* 0x96 */ u8 mPrmColorAlphaAnm;
};

class JPAParticleCallBack {
public:
    JPAParticleCallBack() {}
    virtual ~JPAParticleCallBack();
    virtual void execute(JPABaseEmitter*, JPABaseParticle*);
    virtual void draw(JPABaseEmitter*, JPABaseParticle*);
};

// not sure where this belongs
static inline u32 COLOR_MULTI(u32 a, u32 b) {
    return ((a * (b + 1)) * 0x10000) >> 24;
}

#endif /* JPAPARTICLE_H */

#ifndef JPAPARTICLE_H
#define JPAPARTICLE_H

#include "dolphin/gx/GX.h"
#include "dolphin/types.h"

#include "JSystem/JGeometry.h"
#include "JSystem/JSupport/JSUList.h"

#include "JSystem/JParticle/JPADynamicsBlock.h"
#include "JSystem/JParticle/JPAResource.h"
#include "JSystem/JParticle/JPAMath.h"

class JKRHeap;
class JPABaseEmitter;
class JPABaseParticle;
class JPADrawInfo;
class JPAEmitterCallBack;
class JPAEmitterManager;
class JPAParticleCallBack;
class JPAResource;
class JPAResourceManager;

class JPADrawInfo {
public:
    Mtx mCamMtx;
    Mtx mPrjMtx;

    void getCamMtx(Mtx* dst) const { PSMTXCopy(mCamMtx, *dst); }
    void getPrjMtx(Mtx* dst) const { PSMTXCopy(mPrjMtx, *dst); }
};

struct JPARandom {
public:
    JPARandom() { mSeed = 0; }
    void set_seed(u32 seed) { mSeed = seed; }

    u32 get_rndm_u() { return mSeed = mSeed * 0x19660du + 0x3c6ef35fu; }

    f32 get_rndm_f() {
        union {
            u32 u;
            f32 f;
        } a;
        a.u = ((get_rndm_u() >> 9) | 0x3f800000);
        return a.f - 1.0f;
    }

    f32 get_rndm_zp() {
        f32 f = get_rndm_f();
        return (f + f) - 1.0f;
    }

    f32 get_rndm_zh() {
        f32 f = get_rndm_f();
        return f - 0.5f;
    }

    s16 get_rndm_ss() { return (s16)(get_rndm_u() >> 16); }

public:
    u32 mSeed;
};

template <class T>
struct JPANode {
    JPANode<T>* mpPrev;
    JPANode<T>* mpNext;
    T mData;
};

template <class T>
struct JPAList {
    JPANode<T>* mpFirst;
    JPANode<T>* mpLast;
    u32 mNum;

    JPAList() : mpFirst(NULL), mpLast(NULL), mNum() {}

    JPANode<T>* getFirst() const { return mpFirst; }
    JPANode<T>* getLast() const { return mpLast; }
    u32 getNum() const { return mNum; }

    void push_front(JPANode<T>* node) {
        if (mpFirst != NULL) {
            node->mpPrev = NULL;
            node->mpNext = mpFirst;
            mpFirst->mpPrev = node;
            mpFirst = node;
        } else {
            mpLast = node;
            mpFirst = node;
            node->mpPrev = NULL;
            node->mpNext = NULL;
        }

        mNum++;
    }

    void push_back(JPANode<T>* node) {
        if (mpLast != NULL) {
            node->mpPrev = mpLast;
            node->mpNext = NULL;
            mpLast->mpNext = node;
            mpLast = node;
        } else {
            mpFirst = node;
            mpLast = node;
            node->mpPrev = NULL;
            node->mpNext = NULL;
        }

        mNum++;
    }

    JPANode<T>* pop_front() {
        JPANode<T>* ret = NULL;

        if (mNum == 1) {
            ret = mpFirst;
            mpLast = NULL;
            mpFirst = NULL;
            mNum--;
        } else if (mNum) {
            ret = mpFirst;
            ret->mpNext->mpPrev = NULL;
            mpFirst = ret->mpNext;
            mNum--;
        }

        return ret;
    }

    JPANode<T>* pop_back() {
        JPANode<T>* ret = NULL;

        if (mNum == 1) {
            ret = mpLast;
            mpLast = NULL;
            mpFirst = NULL;
            mNum--;
        } else if (mNum) {
            ret = mpLast;
            ret->mpPrev->mpNext = NULL;
            mpLast = ret->mpPrev;
            mNum--;
        }

        return ret;
    }
};

struct JPAEmitterWorkData {
    /* 0x00 */ JPABaseEmitter* mpEmtr;
    /* 0x04 */ JPAResource* mpRes;
    /* 0x08 */ JPAResourceManager* mpResMgr;
    /* 0x0C */ JPARandom mRndm;
    /* 0x10 */ JGeometry::TVec3<f32> mVolumePos;
    /* 0x1C */ JGeometry::TVec3<f32> mVelOmni;
    /* 0x28 */ JGeometry::TVec3<f32> mVelAxis;
    /* 0x34 */ f32 mVolumeSize;
    /* 0x38 */ f32 mVolumeMinRad;
    /* 0x3C */ f32 mVolumeSweep;
    /* 0x40 */ s32 mEmitCount;
    /* 0x44 */ s32 mVolumeEmitIdx;
    /* 0x48 */ Mtx mDirectionMtx;
    /* 0x78 */ Mtx mRotationMtx;
    /* 0xA8 */ Mtx mGlobalRot;
    /* 0xD8 */ Mtx mGlobalSR;
    /* 0x108 */ JGeometry::TVec3<f32> mEmitterPos;
    /* 0x114 */ JGeometry::TVec3<f32> mGlobalScl;
    /* 0x120 */ JGeometry::TVec3<f32> mGlobalEmtrDir;
    /* 0x12C */ JGeometry::TVec3<f32> mPublicScale;
    /* 0x138 */ JGeometry::TVec3<f32> mGlobalPos;
    /* 0x144 */ JGeometry::TVec2<f32> mGlobalPtclScl;
    /* 0x14C */ JGeometry::TVec2<f32> mPivot;
    /* 0x154 */ Mtx mYBBCamMtx;
    /* 0x184 */ Mtx mPosCamMtx;
    /* 0x1B4 */ Mtx mPrjMtx;
    /* 0x1E4 */ JPAList<JPABaseParticle>* mpAlivePtcl;
    /* 0x1E8 */ JPANode<JPABaseParticle>* mpCurNode;
    /* 0x1EC */ u32 mVolumeAngleNum;
    /* 0x1F0 */ u32 mVolumeAngleMax;
    /* 0x1F4 */ u32 mVolumeX;
    /* 0x1F8 */ u32 mDivNumber;
    /* 0x1FC */ f32 mScaleAnm;
    /* 0x200 */ u32 mDirType;
    /* 0x204 */ u32 mRotType;
    /* 0x208 */ u32 mPlaneType;
    /* 0x20C */ u32 mDLType;
    /* 0x210 */ u32 mPrjType;
    /* 0x214 */ s16 mClrKeyFrame;
    /* 0x216 */ u8 mDrawCount;
};

class JPAEmitterCallBack {
public:
    /* 80050368 */ virtual void execute(JPABaseEmitter*);
    /* 80050374 */ virtual void executeAfter(JPABaseEmitter*);
    /* 8005036C */ virtual void draw(JPABaseEmitter*);
    /* 80050370 */ virtual void drawAfter(JPABaseEmitter*);
    
    /* 8027E6A4 */ ~JPAEmitterCallBack();
};

enum {
    JPAEmtrStts_StopEmit = 0x01,
    JPAEmtrStts_StopCalc = 0x02,
    JPAEmtrStts_StopDraw = 0x04,
    JPAEmtrStts_FirstEmit = 0x10,
    JPAEmtrStts_RateStepEmit = 0x20,
    JPAEmtrStts_Immortal = 0x40,
};

class JPABaseEmitter {
public:
    /* 8027E5EC */ ~JPABaseEmitter();
    /* 8027E64C */ JPABaseEmitter();
    /* 8027E6EC */ void init(JPAEmitterManager*, JPAResource*);
    /* 8027EDD4 */ bool processTillStartFrame();
    /* 8027EE14 */ void processTermination();
    /* 8027EEB0 */ void calcEmitterGlobalPosition(JGeometry::TVec3<f32>*) const;
    /* 8027EC60 */ void deleteAllParticle();
    /* 8027EB60 */ JPABaseParticle* createChild(JPABaseParticle*);
    /* 8027EA40 */ JPABaseParticle* createParticle();
    /* 8027EF30 */ u32 getCurrentCreateNumber() const;
    /* 8027EF40 */ u8 getDrawCount() const;
    /* 8027EF50 */ bool loadTexture(u8, GXTexMapID);

    void setStatus(u32 status) { mStatus |= status; }
    void clearStatus(u32 status) { mStatus &= ~status; }
    bool checkStatus(u32 status) { return !!(mStatus & status); }
    bool checkFlag(u32 flag) { return !!(mpRes->getDyn()->getFlag() & flag); }
    u8 getResourceManagerID() const { return mResMgrID; }
    u8 getGroupID() const { return mGroupID; }
    u8 getDrawTimes() const { return mDrawTimes; }
    void setRate(f32 rate) { mRate = rate; }
    void setEmitterCallBackPtr(JPAEmitterCallBack* ptr) { mpEmtrCallBack = ptr; }
    void setGlobalRTMatrix(const Mtx m) { JPASetRMtxTVecfromMtx(m, mGlobalRot, &mGlobalTrs); }
    // void setGlobalScale(const JGeometry::TVec3<f32>& scale) {
    //     mGlobalScl = scale;
    //     mGlobalPScl = scale;
    // }

    f32 get_r_f() { return mRndm.get_rndm_f(); }
    f32 get_r_zp() { return mRndm.get_rndm_zp(); }
    f32 get_r_zh() { return mRndm.get_rndm_zh(); }
    s16 get_r_ss() { return mRndm.get_rndm_ss(); }

    void stopCreateParticle() { setStatus(JPAEmtrStts_StopEmit); }
    void becomeImmortalEmitter() { setStatus(JPAEmtrStts_Immortal); }
    void becomeContinuousParticle() { mMaxFrame = 0; }
    void becomeInvalidEmitter() {
        stopCreateParticle();
        mMaxFrame = 1;
    }

    void quitImmortalEmitter() { clearStatus(JPAEmtrStts_Immortal); }
    void stopCalcEmitter() { setStatus(JPAEmtrStts_StopCalc); }
    void playCalcEmitter() { clearStatus(JPAEmtrStts_StopCalc); }
    void stopDrawParticle() { setStatus(JPAEmtrStts_StopDraw); }

public:
    /* 0x00 */ Vec mLocalScl;
    /* 0x0C */ Vec mLocalTrs;
    /* 0x18 */ Vec mLocalDir;
    /* 0x24 */ s32 mMaxFrame;
    /* 0x28 */ f32 mRate;
    /* 0x2C */ f32 mVolumeSweep;
    /* 0x30 */ f32 mVolumeMinRad;
    /* 0x34 */ f32 mAwayFromCenterSpeed;
    /* 0x38 */ f32 mAwayFromAxisSpeed;
    /* 0x3C */ f32 mDirSpeed;
    /* 0x40 */ f32 mSpread;
    /* 0x44 */ f32 mRndmDirSpeed;
    /* 0x48 */ f32 mAirResist;
    /* 0x4C */ JGeometry::TVec3<s16> mLocalRot;
    /* 0x52 */ u16 mLifeTime;
    /* 0x54 */ u16 mVolumeSize;
    /* 0x56 */ u8 mRateStep;
    /* 0x58 */ JSULink<JPABaseEmitter> mLink;
    /* 0x68 */ Mtx mGlobalRot;
    /* 0x98 */ Vec mGlobalScl;
    /* 0xA4 */ JGeometry::TVec3<f32> mGlobalTrs;
    /* 0xB0 */ JGeometry::TVec2<f32> mGlobalPScl;
    /* 0xB8 */ GXColor mGlobalPrmClr;
    /* 0xBC */ GXColor mGlobalEnvClr;
    /* 0xC0 */ void* mpUserWork;
    /* 0xC4 */ JPARandom mRndm;
    /* 0xC8 */ JPAList<JPABaseParticle> mAlivePtclBase;
    /* 0xD4 */ JPAList<JPABaseParticle> mAlivePtclChld;
    /* 0xE0 */ JPAList<JPABaseParticle>* mpPtclPool;
    /* 0xE4 */ JPAEmitterManager* mpEmtrMgr;
    /* 0xE8 */ JPAResource* mpRes;
    /* 0xEC */ JPAEmitterCallBack* mpEmtrCallBack;
    /* 0xF0 */ JPAParticleCallBack* mpPtclCallBack;
    /* 0xF4 */ u32 mStatus;
    /* 0xF8 */ f32 mEmitCount;
    /* 0xFC */ f32 mScaleOut;
    /* 0x100 */ u32 mTick;
    /* 0x104 */ s16 mWaitTime;
    /* 0x106 */ s16 mRateStepTimer;
    /* 0x108 */ GXColor mPrmClr;
    /* 0x10C */ GXColor mEnvClr;
    /* 0x110 */ u8 mDrawTimes;
    /* 0x111 */ u8 mTexAnmIdx;
    /* 0x112 */ u8 mGroupID;
    /* 0x113 */ u8 mResMgrID;
};

class JPAParticleCallBack {
public:
    JPAParticleCallBack() {}
    virtual ~JPAParticleCallBack();
    virtual void execute(JPABaseEmitter*, JPABaseParticle*);
    virtual void draw(JPABaseEmitter*, JPABaseParticle*);
};

enum {
    JPAPtclStts_Invisible = 0x08,
};

class JPABaseParticle {
public:
    /* 8027EFEC */ void init_p(JPAEmitterWorkData*);
    /* 8027F8C8 */ void init_c(JPAEmitterWorkData*, JPABaseParticle*);
    /* 8027FFD0 */ void calc_p(JPAEmitterWorkData*);
    /* 80280260 */ void calc_c(JPAEmitterWorkData*);
    /* 802804C8 */ void canCreateChild(JPAEmitterWorkData*);
    /* 80280548 */ f32 getWidth(JPABaseEmitter const*) const;
    /* 80280568 */ f32 getHeight(JPABaseEmitter const*) const;

public:
    /* 0x00 */ Vec mPosition;
    /* 0x0C */ Vec mLocalPosition;
    /* 0x18 */ Vec mOffsetPosition;
    /* 0x24 */ Vec mVelocity;
    /* 0x30 */ Vec mVelType1;
    /* 0x3C */ Vec mVelType0;
    /* 0x48 */ Vec mVelType2;
    /* 0x54 */ Vec mBaseAxis;
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

class JPAEmitterManager {
public:
    /* 8027DCA0 */ JPAEmitterManager(u32, u32, JKRHeap*, u8, u8);
    /* 8027DEBC */ JPABaseEmitter* createSimpleEmitterID(JGeometry::TVec3<f32> const&, u16, u8, u8,
                                                         JPAEmitterCallBack*, JPAParticleCallBack*);
    /* 8027DFA0 */ void calc(u8);
    /* 8027E028 */ void draw(JPADrawInfo const*, u8);
    /* 8027E220 */ void forceDeleteAllEmitter();
    /* 8027E278 */ void forceDeleteGroupEmitter(u8);
    /* 8027E2D8 */ void forceDeleteEmitter(JPABaseEmitter*);
    /* 8027E344 */ void entryResourceManager(JPAResourceManager*, u8);
    /* 8027E354 */ void clearResourceManager(u8);
    /* 8027E3F4 */ void calcYBBCam();

public:
    /* 0x00 */ JSUList<JPABaseEmitter>* mpGrpEmtr;
    /* 0x04 */ JSUList<JPABaseEmitter> mFreeEmtrList;
    /* 0x10 */ JPAList<JPABaseParticle> mPtclPool;
    /* 0x1C */ JPAResourceManager** mpResMgrAry;
    /* 0x20 */ JPAEmitterWorkData* mpWorkData;
    /* 0x24 */ u32 mEmtrMax;
    /* 0x28 */ u32 mPtclMax;
    /* 0x2C */ u8 mGrpMax;
    /* 0x2D */ u8 mResMax;
};

// not sure where this belongs
static inline u32 COLOR_MULTI(u32 a, u32 b) {
    return ((a * (b + 1)) * 0x10000) >> 24;
}

#endif /* JPAPARTICLE_H */

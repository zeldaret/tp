#ifndef JPAEMITTER_H
#define JPAEMITTER_H

#include "dolphin/types.h"
#include "dolphin/gx/GXEnum.h"
#include "dolphin/gx/GXStruct.h"
#include "dolphin/mtx/mtx.h"
#include "JSystem/JGeometry.h"
#include "JSystem/JParticle/JPAResource.h"
#include "JSystem/JParticle/JPAList.h"
#include "JSystem/JParticle/JPARandom.h"
#include "JSystem/JParticle/JPAMath.h"
#include "JSystem/JParticle/JPADynamicsBlock.h"
#include "JSystem/JSupport/JSUList.h"

struct JPABaseEmitter;
struct JPAResourceManager;
struct JPABaseEmitter;
struct JPAEmitterManager;
struct JPAParticleCallBack;

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
    JPAEmtrStts_EnableDeleteEmitter = 0x08,
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
    /* 8027EE14 */ bool processTermination();
    /* 8027EEB0 */ void calcEmitterGlobalPosition(JGeometry::TVec3<f32>*) const;
    /* 8027EC60 */ void deleteAllParticle();
    /* 8027EB60 */ JPABaseParticle* createChild(JPABaseParticle*);
    /* 8027EA40 */ JPABaseParticle* createParticle();
    /* 8027EF30 */ u32 getCurrentCreateNumber() const;
    /* 8027EF40 */ u8 getDrawCount() const;
    /* 8027EF50 */ bool loadTexture(u8, GXTexMapID);

    void initStatus(u32 status) { mStatus = status; }
    void setStatus(u32 status) { mStatus |= status; }
    void clearStatus(u32 status) { mStatus &= ~status; }
    u32 checkStatus(u32 status) { return (mStatus & status); }
    bool checkFlag(u32 flag) { return !!(mpRes->getDyn()->getFlag() & flag); }
    u8 getResourceManagerID() const { return mResMgrID; }
    u8 getGroupID() const { return mGroupID; }
    u8 getDrawTimes() const { return mDrawTimes; }
    void setRate(f32 rate) { mRate = rate; }
    void setEmitterCallBackPtr(JPAEmitterCallBack* ptr) { mpEmtrCallBack = ptr; }
    void setGlobalRTMatrix(const Mtx m) { JPASetRMtxTVecfromMtx(m, mGlobalRot, &mGlobalTrs); }
    void setGlobalTranslation(f32 x, f32 y, f32 z) { mGlobalTrs.set(x, y, z); }
    void getLocalTranslation(JGeometry::TVec3<f32>& vec) { vec.set(mLocalTrs); }
    void setGlobalRotation(const JGeometry::TVec3<s16>& rot) {
        JPAGetXYZRotateMtx(rot.x, rot.y, rot.z, mGlobalRot); 
    }
    void setGlobalAlpha(u8 alpha) { mGlobalPrmClr.a = alpha; }
    u8 getGlobalAlpha() { return mGlobalPrmClr.a; }
    void getGlobalPrmColor(GXColor& color) { color = mGlobalPrmClr; }
    void setGlobalPrmColor(u8 r, u8 g, u8 b) { mGlobalPrmClr.r = r; mGlobalPrmClr.g = g; mGlobalPrmClr.b = b; }
    void setGlobalEnvColor(u8 r, u8 g, u8 b) { mGlobalEnvClr.r = r; mGlobalEnvClr.g = g; mGlobalEnvClr.b = b; }
    void setVolumeSize(u16 size) { mVolumeSize = size; }
    void setLifeTime(s16 lifetime) { mLifeTime = lifetime; }

    void setGlobalParticleScale(const JGeometry::TVec3<f32>& scale) {
        mGlobalPScl.set(scale.x, scale.y);
    }
    void getGlobalParticleScale(JGeometry::TVec3<f32>& scale) {
        scale.set(mGlobalPScl.x, mGlobalPScl.y, 1.0f);
    }
    void setGlobalScale(const JGeometry::TVec3<f32>& scale) {
        mGlobalScl.set(scale);
        mGlobalPScl.set(scale.x ,scale.y);
    }

    f32 get_r_f() { return mRndm.get_rndm_f(); }
    f32 get_r_zp() { return mRndm.get_rndm_zp(); }
    f32 get_r_zh() { return mRndm.get_rndm_zh(); }
    s16 get_r_ss() { return mRndm.get_rndm_ss(); }

    void stopCreateParticle() { setStatus(JPAEmtrStts_StopEmit); }
    void playCreateParticle() { clearStatus(JPAEmtrStts_StopEmit); }
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
    void playDrawParticle() { clearStatus(JPAEmtrStts_StopDraw); }

    u32 getUserWork() { return mpUserWork; }
    void setUserWork(u32 userWork) { mpUserWork = userWork; }
    u32 getParticleNumber() {
        return mAlivePtclBase.getNum() + mAlivePtclChld.getNum();
    }
    bool isEnableDeleteEmitter() {
        return checkStatus(JPAEmtrStts_EnableDeleteEmitter) && getParticleNumber() == 0;
    }
    void setDrawTimes(u8 drawTimes) { mDrawTimes = drawTimes; }
    void setParticleCallBackPtr(JPAParticleCallBack* cb) { mpPtclCallBack = cb; }
    JPAParticleCallBack* getParticleCallBackPtr() { return mpPtclCallBack; }
    JPAEmitterCallBack* getEmitterCallBackPtr() const { return mpEmtrCallBack; }

public:
    /* 0x00 */ JGeometry::TVec3<f32> mLocalScl;
    /* 0x0C */ JGeometry::TVec3<f32> mLocalTrs;
    /* 0x18 */ JGeometry::TVec3<f32> mLocalDir;
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
    /* 0x98 */ JGeometry::TVec3<f32> mGlobalScl;
    /* 0xA4 */ JGeometry::TVec3<f32> mGlobalTrs;
    /* 0xB0 */ JGeometry::TVec2<f32> mGlobalPScl;
    /* 0xB8 */ GXColor mGlobalPrmClr;
    /* 0xBC */ GXColor mGlobalEnvClr;
    /* 0xC0 */ s32 mpUserWork;
    /* 0xC4 */ JPARandom mRndm;
    /* 0xC8 */ JPAList<JPABaseParticle> mAlivePtclBase;
    /* 0xD4 */ JPAList<JPABaseParticle> mAlivePtclChld;
    /* 0xE0 */ JPAList<JPABaseParticle>* mpPtclPool;
    /* 0xE4 */ JPAEmitterManager* mpEmtrMgr;
    /* 0xE8 */ JPAResource* mpRes;
    /* 0xEC */ JPAEmitterCallBack* mpEmtrCallBack;
    /* 0xF0 */ JPAParticleCallBack* mpPtclCallBack;
    /* 0xF4 */ volatile u32 mStatus;
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

enum {
    JPAPtclStts_Invisible = 0x08,
};

#endif /* JPAEMITTER_H */

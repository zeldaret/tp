#ifndef JPAEMITTERMANAGER_H
#define JPAEMITTERMANAGER_H

#include "dolphin/types.h"
#include "JSystem/JParticle/JPAList.h"
#include "JSystem/JParticle/JPADrawInfo.h"
#include "JSystem/JSupport/JSUList.h"
#include "JSystem/JGeometry.h"

class JPAEmitterCallBack;
class JPAParticleCallBack;
class JPABaseEmitter;
class JPAResourceManager;
class JPABaseParticle;
class JKRHeap;
struct JPAEmitterWorkData;

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
    JPAResourceManager* getResourceManager(u16 idx) { return mpResMgrAry[idx]; }

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

#endif /* JPAEMITTERMANAGER_H */

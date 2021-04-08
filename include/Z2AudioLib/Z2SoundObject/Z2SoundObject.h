#ifndef __Z2SOUNDOBJECT_H__
#define __Z2SOUNDOBJECT_H__

#include "JSystem/JGeometry/JGeometry.h"
#include "Z2AudioLib/Z2SoundHandles/Z2SoundHandles.h"
#include "Z2AudioLib/Z2SoundStarter/Z2SoundStarter.h"
#include "global.h"
#include "mtx_vec.h"

/* struct Z2SoundObjBase_vtable {
    void* field_0x0;
    void* field_0x4;
    void* framework;
    void* dispose;
    void* stopOK;
    void* init;
    void* startSound;
    void* startLevelSound;
};
 */

class Z2SoundObjBase : protected Z2SoundHandles {
public:
    Z2SoundObjBase();
    ~Z2SoundObjBase();

    void deleteObject();

    bool isAlive() const { return mIsInitialized; }

    virtual void framework(u32, s8);
    virtual void dispose();
    virtual bool stopOK(Z2SoundHandlePool& pool);
    virtual void init(Vec* pSoundPos, u8 pNumHandles);

    // Z2SoundObjBase_vtable* vtable;
    /* 0x14 */ Z2SoundStarter* mSoundStarter;
    /* 0x18 */ Vec* mSoundPos;
    /* 0x1C */ u16 field_0x1c;
    /* 0x1E */ u8 field_0x1e;
    /* 0x1F */ bool mIsInitialized;
};

class Z2SoundObjSimple : protected Z2SoundObjBase {
public:
    virtual void init(Vec* pSoundPos, u8 pNumHandles);
};

class Z2SoundObjAnime : protected Z2SoundObjBase {
public:
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

class Z2DopplerSoundObjBase : protected Z2SoundHandles {};

extern "C" {
void __ct__14Z2SoundObjBaseFv(void);
void __dt__14Z2SoundObjBaseFv(void);
void deleteObject__14Z2SoundObjBaseFv(void);
void framework__14Z2SoundObjBaseFUlSc(void);
void init__14Z2SoundObjBaseFP3VecUc(void);
void stopOK__14Z2SoundObjBaseFR17Z2SoundHandlePool(void);

void __ct__15Z2SoundObjAnimeFv(void);
void ageSounds___15Z2SoundObjAnimeFv(void);
void Z2SoundObjAnime_NS_getSoundID(void);
void initAnime__15Z2SoundObjAnimeFPvbff(void);
void Z2SoundObjAnime_NS_playsSound(void);
void Z2SoundObjAnime_NS_startSoundInner(void);
void updateAnime__15Z2SoundObjAnimeFff(void);
void updateSoundLifeTime___15Z2SoundObjAnimeFff(void);

void startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase(void);
void startLevelSound__14Z2SoundObjBaseF10JAISoundIDUlSc(void);
void startSound__14Z2SoundObjBaseF10JAISoundIDUlSc(void);

void __ct__16Z2SoundObjSimpleFv(void);
void __dt__16Z2SoundObjSimpleFv(void);

void __ct__21Z2DopplerSoundObjBaseFv(void);

void startLevelSound__21Z2DopplerSoundObjBaseF10JAISoundIDUlSc(void);
void startSound__21Z2DopplerSoundObjBaseF10JAISoundIDUlSc(void);
void init__15Z2SoundObjArrowFP3VecUc(void);
void framework__21Z2DopplerSoundObjBaseFUlSc(void);
void func_802BE880(void);
void __ct__15Z2SoundObjArrowFv(void);
void startSound__16Z2SoundObjSimpleF10JAISoundIDUlSc(void);
void startLevelSound__16Z2SoundObjSimpleF10JAISoundIDUlSc(void);
void func_802BE65C(void);
void init__15Z2SoundObjAnimeFP3VecUc(void);
void __dt__21Z2DopplerSoundObjBaseFv(void);
}

#endif
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
    Z2SoundStarter* mSoundStarter;
    Vec* mSoundPos;
    u16 field_0x1c;
    u8 field_0x1e;
    bool mIsInitialized;
};

class Z2SoundObjSimple : protected Z2SoundHandles {
public:
    virtual void init(Vec* pSoundPos, u8 pNumHandles);
};

class Z2DopplerSoundObjBase : protected Z2SoundHandles {};

extern "C" {
void __ct__14Z2SoundObjBaseFv(void);
void __dt__14Z2SoundObjBaseFv(void);
void deleteObject__14Z2SoundObjBaseFv(void);
void framework__14Z2SoundObjBaseFUlSc(void);
void init__14Z2SoundObjBaseFP3VecUc(void);
void stopOK__14Z2SoundObjBaseFR17Z2SoundHandlePool(void);

void Z2SoundObjAnime(void);
void Z2SoundObjAnime_NS_ageSounds_(void);
void Z2SoundObjAnime_NS_getSoundID(void);
void Z2SoundObjAnime_NS_initAnime(void);
void Z2SoundObjAnime_NS_playsSound(void);
void Z2SoundObjAnime_NS_startSoundInner(void);
void Z2SoundObjAnime_NS_updateAnime(void);
void Z2SoundObjAnime_NS_updateSoundLifeTime_(void);

void Z2SoundObjBase_NS_startCollisionSE(void);
void Z2SoundObjBase_NS_startLevelSound(void);
void Z2SoundObjBase_NS_startSound(void);

void Z2SoundObjSimple(void);
void __dt__16Z2SoundObjSimpleFv(void);

void Z2DopplerSoundObjBase(void);

void func_802BE7AC(void);
void func_802BE714(void);
void func_802BEB74(void);
void func_802BE6B8(void);
void func_802BE880(void);
void func_802BEB38(void);
void func_802BE8A0(void);
void func_802BE9B0(void);
void func_802BE65C(void);
void func_802BEBDC(void);
void func_802BE5FC(void);
}

#endif
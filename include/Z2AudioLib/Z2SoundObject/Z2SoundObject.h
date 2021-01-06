#ifndef __Z2SOUNDOBJECT_H__
#define __Z2SOUNDOBJECT_H__

#include "global.h"
#include "Z2AudioLib/Z2SoundHandles/Z2SoundHandles.h"
#include "Z2AudioLib/Z2SoundStarter/Z2SoundStarter.h"
#include "JSystem/JGeometry/JGeometry.h"

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
    Z2SoundObjBase();

    virtual void framework(u32, s8);
    virtual void dispose(void);
    virtual u32 stopOK(Z2SoundHandlePool&);
    virtual void init(Vec* pVec, u8 pNumHandles);


    // Z2SoundObjBase_vtable* vtable;
    Z2SoundStarter* sound_starter;
    JGeometry::TVec3<f32>* sound_pos;
    u16 field_0x1c;
    u8 field_0x1e;
    bool mIsInitialized;
};

#endif
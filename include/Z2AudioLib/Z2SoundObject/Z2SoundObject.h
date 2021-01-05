#ifndef __Z2SOUNDOBJECT_H__
#define __Z2SOUNDOBJECT_H__

#include "global.h"

struct Z2SoundHandlePool;

class Z2SoundObjBase {
    Z2SoundObjBase();

    virtual void framework(u32, u8);
    virtual void dispose(void);
    virtual u32 stopOK(Z2SoundHandlePool&);
    virtual void init(Vec* pVec, u8 pNumHandles);
};

#endif
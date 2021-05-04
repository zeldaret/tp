#ifndef J3DUCLIPPER_H
#define J3DUCLIPPER_H

#include "dolphin/mtx/vec.h"
#include "dolphin/types.h"

class J3DUClipper {
public:
    J3DUClipper() { init(); }
    virtual ~J3DUClipper() {}
    /* 80273778 */ void init();
    /* 8027378C */ void calcViewFrustum();
    /* 802738FC */ void clip(f32 const (*)[4], Vec, f32) const;
    /* 80273A44 */ void clip(f32 const (*)[4], Vec*, Vec*) const;

private:
    Vec _04;
    Vec _10;
    Vec _1C;
    Vec _28;
    u8 _34[0x4C - 0x34];
    f32 mFovY;
    f32 mAspect;
    f32 mNear;
    f32 mFar;
};

#endif /* J3DUCLIPPER_H */

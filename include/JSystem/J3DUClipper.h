#ifndef JSYSTEM_J3DUCLIPPER_H_
#define JSYSTEM_J3DUCLIPPER_H_

#include "dolphin/types.h"
#include "mtx_vec.h"

class J3DUClipper {
private:
    void* vtable;
    Vec _4;
    Vec _10;
    Vec _1C;
    Vec _28;
    u8 _34[0x4C - 0x34];
    f32 mFovY;
    f32 mAspect;
    f32 mNear;
    f32 mFar;

public:
    u32 clip(const Mtx, Vec*, f32) const;
    u32 clip(const Mtx, Vec*, Vec*) const;
};

extern J3DUClipper lbl_803DD8E4;

extern "C" {
u32 clip__11J3DUClipperCFPA4_Cf3Vecf(const J3DUClipper*, const Mtx, Vec*, f32);
u32 clip__11J3DUClipperCFPA4_CfP3VecP3Vec(const J3DUClipper*, const Mtx, Vec*, Vec*);
}

#endif
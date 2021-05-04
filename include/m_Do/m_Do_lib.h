#ifndef M_DO_M_DO_LIB_H
#define M_DO_M_DO_LIB_H

#include "JSystem/J3DU/J3DUClipper.h"
#include "dolphin/types.h"

struct mDoLib_clipper {
    /* 8001528C */ void setup(f32, f32, f32, f32);

    static J3DUClipper mClipper;
    static f32 mSystemFar;
    static f32 mFovyRate;
};

#endif /* M_DO_M_DO_LIB_H */

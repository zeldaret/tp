#ifndef M_DO_M_DO_LIB_H
#define M_DO_M_DO_LIB_H

#include "JSystem/J3DU/J3DUClipper.h"
#include "dolphin/types.h"
#include "JSystem/JUtility/JUTTexture.h"

struct mDoLib_clipper {
    /* 8001528C */ void setup(f32, f32, f32, f32);

    static J3DUClipper mClipper;
    static f32 mSystemFar;
    static f32 mFovyRate;
};

void mDoLib_project(Vec* param_0, Vec* param_1);
bool mDoLib_setResTimgObj(ResTIMG const* res, GXTexObj* o_texObj, u32 param_2,
                          GXTlutObj* o_tlutObj);
void mDoLib_pos2camera(Vec* param_0, Vec* param_1);

#endif /* M_DO_M_DO_LIB_H */

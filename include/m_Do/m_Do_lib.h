#ifndef M_DO_M_DO_LIB_H
#define M_DO_M_DO_LIB_H

#include "JSystem/J3DU/J3DUClipper.h"

typedef struct _GXTexObj GXTexObj;
typedef struct _GXTlutObj GXTlutObj;
typedef struct Vec Vec;
struct ResTIMG;

struct mDoLib_clipper {
    /* 8001528C */ void setup(f32, f32, f32, f32);

    static void changeFar(f32 far) {
        mClipper.setFar(far);
        mClipper.calcViewFrustum();
    }

    static u32 clip(const Mtx m, const Vec* param_1, const Vec* param_2) {
        return mClipper.clip(m, (Vec*)param_1, (Vec*)param_2);
    }

    static u32 clip(const Mtx m, Vec param_1, f32 param_2) {
        return mClipper.clip(m, param_1, param_2);
    }

    static f32 getFar() { return mSystemFar; }
    static f32 getFovyRate() { return mFovyRate; }
    
    static void resetFar() {
        mClipper.setFar(mSystemFar);
        mClipper.calcViewFrustum();
    }

    static void setup(f32, f32, f32, f32);

    static J3DUClipper mClipper;
    static f32 mSystemFar;
    static f32 mFovyRate;
};

void mDoLib_project(Vec* src, Vec* dst);
u8 mDoLib_setResTimgObj(ResTIMG const* res, GXTexObj* o_texObj, u32 tlut_name,
                          GXTlutObj* o_tlutObj);
void mDoLib_pos2camera(Vec* src, Vec* dst);

inline u32 calcAlphaCmpID(u32 param_1, u32 param_2, u32 param_3) {
    return ((param_1 & 0xff) << 5) + ((param_2 & 0xff) << 3) + (param_3 & 0xff);
}

#endif /* M_DO_M_DO_LIB_H */

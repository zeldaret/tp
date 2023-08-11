#ifndef JPADRAWINFO_H
#define JPADRAWINFO_H

#include "dolphin/types.h"
#include "dolphin/mtx/mtx.h"

class JPADrawInfo {
public:
    JPADrawInfo(Mtx param_0, f32 fovY, f32 aspect) {
        PSMTXCopy(param_0, mCamMtx);
        C_MTXLightPerspective(mPrjMtx, fovY, aspect, 0.5f, -0.5f, 0.5f, 0.5f);
    }

    JPADrawInfo(Mtx param_0, f32 top, f32 bottom, f32 left, f32 right) {
        PSMTXCopy(param_0, mCamMtx);
        C_MTXLightOrtho(mPrjMtx, top, bottom, left, right, 0.5f, 0.5f, 0.5f, 0.5f);
    }

    Mtx mCamMtx;
    Mtx mPrjMtx;

    void getCamMtx(Mtx* dst) const { PSMTXCopy(mCamMtx, *dst); }
    void getPrjMtx(Mtx* dst) const { PSMTXCopy(mPrjMtx, *dst); }
};

#endif
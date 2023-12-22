/**
 * c_m3d_g_lin.cpp
 *
 */

#include "SSystem/SComponent/c_m3d_g_lin.h"

/* 8026F2A8-8026F2E8 0040+00 s=0 e=8 z=1  None .text      __ct__8cM3dGLinFRC4cXyzRC4cXyz */
cM3dGLin::cM3dGLin(const cXyz& start, const cXyz& end) : mStart(start), mEnd(end) {}

/* 8026F2E8-8026F31C 0034+00 s=0 e=8 z=10  None .text      SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz */
void cM3dGLin::SetStartEnd(const cXyz& start, const cXyz& end) {
    mStart = start;
    mEnd = end;
}

/* 8026F31C-8026F350 0034+00 s=0 e=7 z=4  None .text      SetStartEnd__8cM3dGLinFRC3VecRC3Vec */
void cM3dGLin::SetStartEnd(const Vec& start, const Vec& end) {
    mStart = start;
    mEnd = end;
}

/* 8026F350-8026F3C0 0070+00 s=0 e=3 z=0  None .text      CalcPos__8cM3dGLinCFP3Vecf */
void cM3dGLin::CalcPos(Vec* out, f32 scale) const {
    Vec tmp;
    VECSubtract(&mEnd, &mStart, &tmp);
    VECScale(&tmp, &tmp, scale);
    VECAdd(&tmp, &mStart, out);
}

/* 8026F3C0-8026F3DC 001C+00 s=0 e=1 z=0  None .text      SetEnd__8cM3dGLinFRC4cXyz */
void cM3dGLin::SetEnd(const cXyz& end) {
    mEnd = end;
}

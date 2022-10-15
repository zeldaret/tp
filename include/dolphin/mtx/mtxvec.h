#ifndef MTXVEC_H
#define MTXVEC_H

#include "dolphin/mtx/mtx.h"

#ifdef __cplusplus
extern "C" {
#endif

void PSMTXMultVec(const Mtx m, const Vec* src, Vec* dst);
void PSMTXMultVecSR(const Mtx m, const Vec* src, Vec* dst);
void PSMTXMultVecArray(const Mtx m, const Vec* srcBase, Vec* dstBase, u32 count);
void PSMTXMultVecArraySR(const Mtx m, const Vec* srcBase, Vec* dstBase, u32 count);

#ifdef __cplusplus
};
#endif

#endif /* MTXVEC_H */

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

/* When compiling in debug mode, use C implementations */
#ifdef DEBUG
// TODO: Add debug rom C implementations
/* #define MTXMultVec C_MTXMultVec
#define MTXMultVecSR C_MTXMultVecSR
#define MTXMultVecArray C_MTXMultVecArray
#define MTXMultVecArraySR C_MTXMultVecArraySR */

#define MTXMultVec PSMTXMultVec
#define MTXMultVecSR PSMTXMultVecSR
#define MTXMultVecArray PSMTXMultVecArray
#define MTXMultVecArraySR PSMTXMultVecArraySR
#else
#define MTXMultVec PSMTXMultVec
#define MTXMultVecSR PSMTXMultVecSR
#define MTXMultVecArray PSMTXMultVecArray
#define MTXMultVecArraySR PSMTXMultVecArraySR
#endif

#ifdef __cplusplus
};
#endif

#endif /* MTXVEC_H */

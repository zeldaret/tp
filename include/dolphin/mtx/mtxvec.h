#ifndef MTXVEC_H
#define MTXVEC_H

#include "dolphin/mtx/mtx.h"
#include "dolphin/mtx/vec.h"
#include "dolphin/types.h"

extern "C" {
void PSMTXMultVec(const Mtx matrix, const Vec* src, Vec* dst);
void PSMTXMultVecArray(const Mtx matrix, const Vec* src, Vec* dst, u32 count);
void PSMTXMultVecSR(const Mtx matrix, const Vec* src, Vec* dst);
void PSMTXMultVecArraySR(const Mtx matrix, const Vec* src, Vec* dst, u32 count);
}

#endif /* MTXVEC_H */

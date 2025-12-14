#ifndef RVL_SDK_HBM_COMMON_H
#define RVL_SDK_HBM_COMMON_H

#include <revolution/types.h>

#include <revolution/mem/allocator.h>

// .data (not .sdata; hbm is -sdata 0)
extern "C" MEMAllocator* spAllocator;

// library internals
extern "C++" void* HBMAllocMem(u32 size);
extern "C++" void HBMFreeMem(void* mem);

#endif  // RVL_SDK_HBM_COMMON_H

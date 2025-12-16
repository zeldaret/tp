#ifndef _REVOLUTION_MEM_HEAPCOMMON_H_
#define _REVOLUTION_MEM_HEAPCOMMON_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <revolution/mem/list.h>
#include <revolution/os.h>

typedef struct MEMiHeapHead MEMiHeapHead;

struct MEMiHeapHead {
    u32 signature;
    MEMLink link;
    MEMList childList;
    void* heapStart;
    void* heapEnd;
    OSMutex mutex;

    union {
        u32 val;

        struct {
            u32 reserved : 24;
            u32 optFlag : 8;
        } fields;
    } attribute;
};

typedef MEMiHeapHead* MEMHeapHandle;

typedef u32 UIntPtr;

static inline UIntPtr GetUIntPtr(const void* ptr) {
    return (UIntPtr)(ptr);
}

#ifdef __cplusplus
}
#endif

#endif  // _REVOLUTION_MEM_HEAPCOMMON_H_

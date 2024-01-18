#ifndef ARQ_H
#define ARQ_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

#define ARQ_CHUNK_SIZE_DEFAULT 4096

typedef void (*ARQCallback)(u32 request_address);

typedef enum _ARamType {
    ARAM_DIR_MRAM_TO_ARAM,
    ARAM_DIR_ARAM_TO_MRAM,
} ARamType;

typedef enum _ArqPriotity {
    ARQ_PRIORITY_LOW,
    ARQ_PRIORITY_HIGH,
} ArqPriotity;

typedef struct ARQRequest {
    struct ARQRequest* next;
    u32 owner;
    u32 type;
    u32 priority;
    u32 source;
    u32 destination;
    u32 length;
    ARQCallback callback;
} ARQRequest;

void ARQInit(void);
void ARQPostRequest(ARQRequest* task, u32 owner, u32 type, u32 priority, u32 source,
                    u32 destination, u32 length, ARQCallback callback);

#ifdef __cplusplus
};
#endif

#endif /* ARQ_H */

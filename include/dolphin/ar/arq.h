#ifndef ARQ_H
#define ARQ_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*ARQCallback)(u32 request_address);

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

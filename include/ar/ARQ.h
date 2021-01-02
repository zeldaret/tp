#ifndef __ARQ_H__
#define __ARQ_H__

#include "dolphin/types.h"

typedef void (*ARQCallback)(u32 request_address);

struct ARQRequest {
    ARQRequest* next;
    u32 owner;
    u32 type;
    u32 priority;
    u32 source;
    u32 destination;
    u32 length;
    ARQCallback callback;
};

extern "C" {
void ARQInit(void);
void ARQPostRequest(ARQRequest* task, u32 owner, u32 type, u32 priority, u32 source,
                    u32 destination, u32 length, ARQCallback callback);
}

#endif

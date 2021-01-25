#ifndef JSYSTEM_JUTILITY_RESOURCE_H
#define JSYSTEM_JUTILITY_RESOURCE_H

#include "dolphin/types.h"

struct JUTResReference {
    JUTResReference() : res(NULL) {}
    void* getResource(JSURandomInputStream* stream, u32 size, JKRArchive* archive);
    void* res;
};

#endif  // JSYSTEM_JUTILITY_RESOURCE_H
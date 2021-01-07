#ifndef JSYSTEM_JGADGET_BINARY_H
#define JSYSTEM_JGADGET_BINARY_H

#include "dolphin/types.h"

namespace JGadget {
namespace binary {

inline u32 align_roundUp(u32 arg0, u32 uAlign) {
    return (arg0 + uAlign - 1) & ~(uAlign - 1);
}

struct TParseData {
    TParseData(const void* pContent) : raw(pContent) {}

    const void* getRaw() const { return raw; }

    const void* raw;
};

template <int T>
struct TParseData_aligned : public TParseData {
    TParseData_aligned(const void* pContent) : TParseData(pContent) {}
};

// Base for header and/or block parsing
struct TParse_header_block {
    virtual ~TParse_header_block();

    virtual int parseHeader_next(const void** ppData_inout, u32* puBlock_out, u32 arg2) = 0;
    virtual int parseBlock_next(const void** ppData_inout, u32* puData_out, u32 arg2) = 0;
};

}  // namespace binary
}  // namespace JGadget

#endif

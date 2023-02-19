#ifndef BINARY_H
#define BINARY_H

#include "dolphin/types.h"

namespace JGadget {
namespace binary {

struct TEBit {
    u32 value;
};

const void* parseVariableUInt_16_32_following(const void* pu16, u32* pu32First, u32* pu32Second,
                                              TEBit* tebit);

inline u32 align_roundUp(u32 arg0, u32 uAlign) {
    return (arg0 + uAlign - 1) & ~(uAlign - 1);
}

struct TParseData {
    TParseData(const void* pContent) : raw(pContent) {}

    const void* getRaw() const { return raw; }
    void setRaw(const void* p) { raw = p; }

    /* 0x0 */ const void* raw;
};

template <int T>
struct TParseData_aligned : public TParseData {
    TParseData_aligned(const void* pContent) : TParseData(pContent) {}
    void setRaw(const void* p) {
        /* if ((u32)p % T != 0) {
            JUTWarn w;
            w << "misaligned : " << (u32)p;
        } */
        static_cast<TParseData*>(this)->setRaw(p);
    }
};

// Base for header and/or block parsing
struct TParse_header_block {
    virtual ~TParse_header_block();

    virtual bool parseHeader_next(const void** ppData_inout, u32* puBlock_out, u32 arg2) = 0;
    virtual bool parseBlock_next(const void** ppData_inout, u32* puData_out, u32 arg2) = 0;

    bool parse_next(const void** ppData_inout, u32 a2);

    bool parse(const void* ppData_inout, u32 a2) {
        return parse_next(&ppData_inout, a2);
    }
};

template <typename T>
struct TParseValue_raw_ {
    static T parse(const void* data) { return *(T*)data; }
};

template <typename T>
struct TParseValue_endian_big_ : public TParseValue_raw_<T> {
    static T parse(const void* data) { return TParseValue_raw_::parse(data); }
};

template <typename T, template <class> class Parser>
struct TParseValue : public Parser<T> {
    static T parse(const void* data) { return Parser<T>::parse(data); }

    static T parse(const void* data, s32 advanceNum) {
        return Parser<T>::parse(advance(data, advanceNum));
    }

    static const void* advance(const void* data, s32 advanceNum) {
        return (char*)data + (advanceNum * sizeof(T));
    }
};

}  // namespace binary
}  // namespace JGadget

#endif /* BINARY_H */

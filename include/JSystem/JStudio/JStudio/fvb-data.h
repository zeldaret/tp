#ifndef FVB_DATA_H
#define FVB_DATA_H

#include "JSystem/JGadget/binary.h"
#include "JSystem/JStudio/JStudio/functionvalue.h"

using namespace JGadget::binary;

namespace JStudio {
namespace fvb {
namespace data {

extern f32 ga4cSignature[1 + 1 /* padding */];

const int PARAGRAPH_DATA = 1;

typedef enum TEComposite {
    COMPOSITE_NONE = 0,
    COMPOSITE_RAW = 1,
    COMPOSITE_IDX = 2,
    COMPOSITE_PARAM = 3,
    COMPOSITE_ADD = 4,
    COMPOSITE_SUB = 5,
    COMPOSITE_MUL = 6,
    COMPOSITE_DIV = 7,
    COMPOSITE_ENUM_SIZE,
};

typedef const void* (*CompositeOperation)(TFunctionValue_composite::TData);

struct TBlock {
    /* 0x0 */ u32 size;
    /* 0x4 */ u16 type;
    /* 0x6 */ u16 id_size;
    /* 0x8 */ u8 id[0];
};

struct THeader {
    /* 0x00 */ char signature[4];
    /* 0x04 */ u16 byte_order;  // must be 0xFEFF
    /* 0x06 */ u16 version;     // 0-1 = obselete, 2-7 = OK
    /* 0x08 */ u32 _8;
    /* 0x0c */ u32 block_number;
    /* 0x10 */ u8 content[0];
};
// Parses a THeader
class TParse_THeader : public TParseData_aligned<4> {
public:
    TParse_THeader(const void* p) : TParseData_aligned<4>(p) {}

    const THeader* get() const { return (THeader*)getRaw(); }
    const void* getContent() const { return ((THeader*)getRaw())->content; }
    const char* get_signature() const { return get()->signature; }
    u16 get_byteOrder() const { return get()->byte_order; }
    u16 get_version() const { return get()->version; }
    u32 get_blockNumber() const { return get()->block_number; }
};

}  // namespace data
}  // namespace fvb
}  // namespace JStudio

#endif /* FVB_DATA_H */

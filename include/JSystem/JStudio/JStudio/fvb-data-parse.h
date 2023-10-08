#ifndef FVB_DATA_PARSE_H
#define FVB_DATA_PARSE_H

#include "JSystem/JStudio/JStudio/fvb-data.h"

namespace JStudio {
namespace fvb {
namespace data {

class TParse_TBlock : public TParseData_aligned<4> {
public:
    TParse_TBlock(const void* content) : TParseData_aligned<4>(content) {}

    const TBlock* get() const { return (TBlock*)getRaw(); }

    u32 get_size() const { return get()->size; }
    const void* getNext() const {
        u32 size = get_size();
        return (const void*)((u8*)getRaw() + size);
    }
    u16 get_type() const { return get()->type; }
    u16 get_IDSize() const { return get()->id_size; }
    const void* getBlockEnd_() const { return (u8*)getRaw() + sizeof(TBlock); }
    const void* get_ID() const {
        const void* ret = 0;
        if (get_IDSize())
            ret = getBlockEnd_();
        return ret;
    }
    const void* getContent() const {
        u32 size = align_roundUp(get_IDSize(), 4);
        return (const void*)((int)getBlockEnd_() + size);
    }
};

class TParse_TParagraph : public TParseData_aligned<4> {
public:
    struct TData {
        /* 0x04 */ u32 u32Size;
        /* 0x08 */ u32 u32Type;
        /* 0x0C */ const void* pContent;
        /* 0x10 */ const void* next;
    };
    TParse_TParagraph(const void* content) : TParseData_aligned<4>(content) {}

    /* 802850AC */ void getData(JStudio::fvb::data::TParse_TParagraph::TData*) const;
};

}  // namespace data
}  // namespace fvb
}  // namespace JStudio

#endif /* FVB_DATA_PARSE_H */

#ifndef JMESSAGE_DATA_H
#define JMESSAGE_DATA_H

#include "JSystem/JGadget/binary.h"

namespace JMessage {

/**
 * @ingroup jsystem-jmessage
 * 
 */
struct data {
    struct TParse_THeader : public JGadget::binary::TParseData_aligned<4> {
        TParse_THeader(const void* data) : TParseData_aligned(data) {}

        const void* getContent() const { return (char*)getRaw() + 0x20; }
        char* get() const { return (char*)getRaw(); }

        u32* get_signature() const { return (u32*)(get() + 0x0); }
        u32 get_type() const { return *(u32*)(get() + 0x4); }
        u32 get_blockNumber() const { return *(u32*)(get() + 0xC); }
        u8 get_encoding() const { return *(u8*)(get() + 0x10); }
    };

    struct TParse_TBlock : public JGadget::binary::TParseData_aligned<4> {
        TParse_TBlock(const void* data) : TParseData_aligned(data) {}
    };

    struct TParse_TBlock_info : public TParse_TBlock {
        TParse_TBlock_info(const void* data) : TParse_TBlock(data) {}

        char* get() const { return (char*)getRaw(); }

        char* getContent() const { return (char*)getRaw() + 0x10; }

        u16 get_messageEntrySize() const { return *(u16*)(get() + 0xA); }

        u16 get_messageEntryNumber() const { return *(u16*)(get() + 0x8); }

        u16 get_groupID() const { return *(u16*)(get() + 0xC); }
    };

    struct TParse_TBlock_messageID : public TParse_TBlock {
        TParse_TBlock_messageID(const void* data) : TParse_TBlock(data) {}
    };

    struct TParse_TBlock_color : public TParse_TBlock {
        TParse_TBlock_color(const void* data) : TParse_TBlock(data) {}
    };

    static u32 getTagCode(u32 tag) { return tag & 0xFFFF; }
    static u32 getTagGroup(u32 tag) { return (tag >> 0x10) & 0xFF; }

    static u32 ga4cSignature;

    static const int gcTagBegin = '\x1A';
};
};  // namespace JMessage

#endif /* JMESSAGE_DATA_H */

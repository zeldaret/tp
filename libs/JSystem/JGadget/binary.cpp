#include "JSystem/JGadget/binary.h"
#include "global.h"

extern "C" {
void parse_next__Q37JGadget6binary19TParse_header_blockFPPCvUl(void);
void parseVariableUInt_16_32_following__Q27JGadget6binaryFPCvPUlPUlPQ37JGadget6binary5TEBit(void);
void __dt__Q37JGadget6binary19TParse_header_blockFv(void);
}

extern u8 lbl_803C488C;

namespace JGadget {
namespace binary {

#ifdef NONMATCHING  // really small difference
const void* parseVariableUInt_16_32_following(const void* pu16, u32* pu32First, u32* pu32Second,
                                              TEBit* tebit) {
    JUT_ASSERT(pu_16 != NULL);
    JUT_ASSERT(pu32First != NULL);
    JUT_ASSERT(pu32Second != NULL);

    TEBit bit;

    if (tebit == NULL) {
        tebit = &bit;
    }

    const u16* u = static_cast<const u16*>(pu16);

    if (!(u[0] & 0x8000)) {
        tebit->value = 0x10;
        *pu32First = u[0];
        *pu32Second = u[1];
        return &u[2];
    } else {
        tebit->value = 0x20;

        const u32* u2 = static_cast<const u32*>(pu16);
        *pu32First = (u[0] << 16) | u[1];
        *pu32Second = u2[1];
        return &u[4];
    }
}
#else
asm const void* parseVariableUInt_16_32_following(const void* pu16, u32* pu32First, u32* pu32Second,
                                                  TEBit* tebit) {
    nofralloc
#include "JSystem/JGadget/asm/func_802DC864.s"
}
#endif

TParse_header_block::~TParse_header_block() {}

#ifdef NONMATCHING  // minor regalloc
bool TParse_header_block::parse_next(const void** ppData_inout, u32 a2) {
    bool result;
    u32 count;

    if (ppData_inout == NULL || *ppData_inout == NULL) {
        JUTWarn w;
        w << "data not specified";

        return false;
    }

    bool headerOK = false;
    if (parseHeader_next(ppData_inout, &count, a2)) {
        headerOK = true;
    }

    result = headerOK;

    if (!(a2 & 1) && !result) {
        return result;
    }

    for (; count != 0; --count) {
        bool blockOK = false;

        const void* p = *ppData_inout;

        if (parseBlock_next(ppData_inout, &count, a2) && result) {
            blockOK = true;
        }
        result = blockOK;

        JUT_ASSERT(std::uintptr_t(*ppData_inout) == std::uintptr_t(p) + uData);

        if (!(a2 & 2) && !blockOK) {
            return result;
        }
    }
    return result;
}
#else
asm bool TParse_header_block::parse_next(const void** ppData_inout, u32 a2) {
    nofralloc
#include "JSystem/JGadget/asm/func_802DC910.s"
}
#endif

}  // namespace binary
}  // namespace JGadget

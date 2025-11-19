#ifndef WEAK_BSS_1109_TO_1009_H
#define WEAK_BSS_1109_TO_1009_H

// Fake header.
// These are some kind of weak objects that get included in the .bss sections of several TUs.
// They each have size 1, and alignment 1 in TWW's debug maps, but alignment 4 in the non-debug maps.
// Their true source is currently unknown, so include this header in TUs that need them to match for now.

// A possible origin for one of these could be the constructor of TFunctionValueAttribute_refer in
// functionvalue.h. That constructor includes `JGadget::TAllocator<void*>()` in it, which produces
// one weak bss object that has the correct size and alignment. However, we need 16 of them, while
// that only creates one.

#include "JSystem/JStudio/JStudio/functionvalue.h" // IWYU pragma: keep

// They each have size 1, and alignment 1 in TWW's debug maps, but alignment 4 in the non-debug maps.
static inline void dummy_bss_1009_to_1109() {
    // JGadget::TAllocator<void*>(); // @1109 // Already covered by TFunctionValueAttribute_refer's ctor
    JGadget::TAllocator<void*>(); // @1107
    JGadget::TAllocator<void*>(); // @1105
    JGadget::TAllocator<void*>(); // @1104
    JGadget::TAllocator<void*>(); // @1099
    JGadget::TAllocator<void*>(); // @1097
    JGadget::TAllocator<void*>(); // @1095
    JGadget::TAllocator<void*>(); // @1094
    JGadget::TAllocator<void*>(); // @1057
    JGadget::TAllocator<void*>(); // @1055
    JGadget::TAllocator<void*>(); // @1053
    JGadget::TAllocator<void*>(); // @1052
    JGadget::TAllocator<void*>(); // @1014
    JGadget::TAllocator<void*>(); // @1012
    JGadget::TAllocator<void*>(); // @1010
    JGadget::TAllocator<void*>(); // @1009
}

#endif // WEAK_BSS_1109_TO_1009_H

#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "global.h"

asm JKRArchive::JKRArchive(long, JKRArchive::EMountMode) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D6294.s"
}

asm JKRArchive::~JKRArchive() {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D6334.s"
}

asm void JKRArchive::isSameName(JKRArchive::CArcName&, u32, unsigned short) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D6394.s"
}

asm void JKRArchive::findResType(u32) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D63E0.s"
}

asm void JKRArchive::findDirectory(char const*, u32) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D641C.s"
}

asm void JKRArchive::findTypeResource(u32, char const*) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D64F4.s"
}

asm void JKRArchive::findFsResource(char const*, u32) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D65A4.s"
}

asm void JKRArchive::findIdxResource(u32) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D6684.s"
}

asm void JKRArchive::findNameResource(char const*) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D66AC.s"
}

asm void JKRArchive::findPtrResource(void const*) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D6734.s"
}

asm void JKRArchive::findIdResource(unsigned short) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D6770.s"
}

asm void JKRArchive::CArcName::store(char const*) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D67F4.s"
}

asm const char* JKRArchive::CArcName::store(char const*, char) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D6884.s"
}

#if 0   
asm void JKRArchive::setExpandSize(JKRArchive::SDIFileEntry*, u32) {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D693C.s"
} 
  
asm void JKRArchive::getExpandSize(JKRArchive::SDIFileEntry*) const {
    nofralloc
#include "JSystem/JKernel/JKRArchive/asm/func_802D6978.s"
}
#endif
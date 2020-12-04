#include "JSystem/JKernel/JKRFileLoader/JKRFileLoader.h"
#include "global.h"

asm  JKRFileLoader::JKRFileLoader(void) {
    nofralloc
    #include "JSystem/JKernel/JKRFileLoader/asm/func_802D40F0.s"
}

asm  JKRFileLoader::~JKRFileLoader() {
    nofralloc
    #include "JSystem/JKernel/JKRFileLoader/asm/func_802D4148.s"
}

asm void JKRFileLoader::unmount(void) {
    nofralloc
    #include "JSystem/JKernel/JKRFileLoader/asm/func_802D41D4.s"
}

asm void JKRFileLoader::getGlbResource(char const *) {
    nofralloc
    #include "JSystem/JKernel/JKRFileLoader/asm/func_802D4224.s"
}

asm void JKRFileLoader::getGlbResource(char const *, JKRFileLoader *) {
    nofralloc
    #include "JSystem/JKernel/JKRFileLoader/asm/func_802D4270.s"
}

asm void JKRFileLoader::removeResource(void *, JKRFileLoader *) {
    nofralloc
    #include "JSystem/JKernel/JKRFileLoader/asm/func_802D4308.s"
}

asm void JKRFileLoader::detachResource(void *, JKRFileLoader *) {
    nofralloc
    #include "JSystem/JKernel/JKRFileLoader/asm/func_802D43A0.s"
}

asm void JKRFileLoader::findVolume(char const **) {
    nofralloc
    #include "JSystem/JKernel/JKRFileLoader/asm/func_802D4438.s"
}

#if 0
// JSystem\JKernel\JKRFileLoader\asm\func_802D44C4.s:18: illegal object reference in constant expression (lbl_804508C0)
// JSystem\JKernel\JKRFileLoader\asm\func_802D44C4.s:20: illegal object reference in constant expression (lbl_804508C0)
// JSystem\JKernel\JKRFileLoader\asm\func_802D44C4.s:57: illegal object reference in constant expression (lbl_804508C0)
asm void JKRFileLoader::fetchVolumeName(char *, long, char const *) {
    nofralloc
    #include "JSystem/JKernel/JKRFileLoader/asm/func_802D44C4.s"
}

#endif
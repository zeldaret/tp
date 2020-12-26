#include "JSystem/JKernel/JKRFileLoader/JKRFileLoader.h"
#include "global.h"

asm JKRFileLoader::JKRFileLoader(void) {
    nofralloc
#include "JSystem/JKernel/JKRFileLoader/asm/func_802D40F0.s"
}

asm JKRFileLoader::~JKRFileLoader() {
    nofralloc
#include "JSystem/JKernel/JKRFileLoader/asm/func_802D4148.s"
}

asm void JKRFileLoader::unmount(void) {
    nofralloc
#include "JSystem/JKernel/JKRFileLoader/asm/func_802D41D4.s"
}

asm void* JKRFileLoader::getGlbResource(char const*) {
    nofralloc
#include "JSystem/JKernel/JKRFileLoader/asm/func_802D4224.s"
}

asm void* JKRFileLoader::getGlbResource(char const*, JKRFileLoader*) {
    nofralloc
#include "JSystem/JKernel/JKRFileLoader/asm/func_802D4270.s"
}

asm bool JKRFileLoader::removeResource(void*, JKRFileLoader*) {
    nofralloc
#include "JSystem/JKernel/JKRFileLoader/asm/func_802D4308.s"
}

asm bool JKRFileLoader::detachResource(void*, JKRFileLoader*) {
    nofralloc
#include "JSystem/JKernel/JKRFileLoader/asm/func_802D43A0.s"
}

asm JKRFileLoader* JKRFileLoader::findVolume(char const**) {
    nofralloc
#include "JSystem/JKernel/JKRFileLoader/asm/func_802D4438.s"
}

asm char* JKRFileLoader::fetchVolumeName(char*, long, char const*) {
    nofralloc
#include "JSystem/JKernel/JKRFileLoader/asm/func_802D44C4.s"
}
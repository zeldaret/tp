#include "JSystem/JKernel/JKRFileCache/JKRFileCache.h"
#include "dvd/dvd.h"
#include "global.h"

asm void JKRFileCache::mount(char const*, JKRHeap*, char const*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D49B4.s"
}

asm JKRFileCache::JKRFileCache(char const*, char const*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D4AB4.s"
}

asm JKRFileCache::~JKRFileCache() {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D4C70.s"
}

asm void JKRFileCache::becomeCurrent(char const*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D4D44.s"
}

asm void* JKRFileCache::getResource(char const*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D4DD8.s"
}

asm void* JKRFileCache::getResource(unsigned long, char const*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D4EDC.s"
}

asm void JKRFileCache::readResource(void*, unsigned long, char const*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D4F64.s"
}

asm void JKRFileCache::readResource(void*, unsigned long, unsigned long, char const*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D503C.s"
}

asm void JKRFileCache::removeResourceAll(void) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D50D4.s"
}

asm bool JKRFileCache::removeResource(void*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D5164.s"
}

asm bool JKRFileCache::detachResource(void*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D51F8.s"
}

asm void JKRFileCache::getResSize(void const*) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D526C.s"
}

asm void JKRFileCache::countFile(char const*) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D52A0.s"
}

asm void JKRFileCache::getFirstFile(char const*) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D531C.s"
}

asm void JKRFileCache::findCacheBlock(void const*) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D53B8.s"
}

asm void JKRFileCache::findCacheBlock(unsigned long) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D53E4.s"
}

asm void JKRFileCache::findFile(char*, char const*) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D5410.s"
}

asm void JKRFileCache::getDvdPathName(char const*) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D551C.s"
}

asm void JKRFileCache::convStrLower(char*) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D5624.s"
}

asm JKRFileCache::CCacheBlock::CCacheBlock(unsigned long, unsigned long, void const*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D566C.s"
}

asm void JKRFileCache::getFsResource(char const*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D56C8.s"
}

asm void JKRFileCache::getNameResource(unsigned long, char const*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D56F4.s"
}

asm void JKRFileCache::readFsResource(void*, unsigned long, char const*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D5720.s"
}

asm void JKRFileCache::readNameResource(void*, unsigned long, unsigned long, char const*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D574C.s"
}

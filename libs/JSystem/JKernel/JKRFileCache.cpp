#include "JSystem/JKernel/JKRFileCache/JKRFileCache.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "dvd/dvd.h"
#include "global.h"

JKRFileCache* JKRFileCache::mount(const char* path, JKRHeap* heap, const char* param_3) {
    if (!path || *path != '/') {
        return NULL;
    }

    u32 pathLength = strlen(path);
    if (pathLength != 1 && path[pathLength - 1] == '/') {
        return NULL;
    }

    JSUList<JKRFileLoader>& volumeList = getVolumeList();
    JSUListIterator<JKRFileLoader> iterator;
    for (iterator = volumeList.getFirst(); iterator != volumeList.getEnd(); ++iterator) {
        if (iterator->getVolumeType() == 'CASH') {
            JKRFileCache* fileCache = (JKRFileCache*)iterator.getObject();
            if (fileCache->mRootPath) {
                if (strcmp(fileCache->mRootPath, path) == 0) {
                    fileCache->mMountCount++;
                    return fileCache;
                }
            }
        }
    }

    return new (heap, 0) JKRFileCache(path, param_3);
}

JKRFileCache::JKRFileCache(const char* path, const char* volume) : mCacheBlockList() {
    mParentHeap = JKRHeap::findFromRoot(this);
    mMountCount = 1;
    mVolumeType = 'CASH';

    u32 pathLength = strlen(path);
    mRootPath = (char*)JKRAllocFromHeap(mParentHeap, pathLength + 1, 1);
    mCurrentPath = (char*)JKRAllocFromSysHeap(pathLength + 2, 1);
    strcpy(mRootPath, path);
    strcpy(mCurrentPath, path);

    if (path[1] != '\0') {
        convStrLower(mRootPath);
        convStrLower(mCurrentPath);
        strcat(mCurrentPath, lbl_8039D158);  // "/"

        const char* volumePath = volume;
        if (!volume) {
            volumePath = strrchr(mRootPath, '/');
            volumePath++;
        }

        u32 volumeLength = strlen(volumePath) + 1;
        mVolumePath = (char*)JKRAllocFromSysHeap(volumeLength, 0);
        strcpy(mVolumePath, volumePath);
        convStrLower(mVolumePath);
        mVolumeName = mVolumePath;
    } else {
        const char* volumePath = volume;
        if (!volume) {
            volumePath = lbl_8039D158 + 0x2;  // "dvd"
        }

        u32 volumeLength = strlen(volumePath) + 1;
        mVolumePath = (char*)JKRAllocFromSysHeap(volumeLength, 0);
        strcpy(mVolumePath, volumePath);
        convStrLower(mVolumePath);
        mVolumeName = mVolumePath;
    }

    getVolumeList().prepend(&mFileLoaderLink);
    mIsMounted = true;
}

JKRFileCache::~JKRFileCache() {
    removeResourceAll();
    if (mRootPath)
        JKRFreeToHeap(mParentHeap, mRootPath);
    if (mCurrentPath)
        JKRFreeToSysHeap(mCurrentPath);
    if (mVolumePath)
        JKRFreeToSysHeap(mVolumePath);

    getVolumeList().remove(&mFileLoaderLink);
}

bool JKRFileCache::becomeCurrent(const char* path) {
    char* name = getDvdPathName(path);
    BOOL result = DVDChangeDir(name);
    bool didChangeDir = (result != 0);
    if (didChangeDir) {
        setCurrentVolume(this);
        JKRFreeToSysHeap(mCurrentPath);

        mCurrentPath = name;
        if (mCurrentPath[1]) {
            strcat(mCurrentPath, lbl_8039D158);  // "/"
        }
    } else {
        JKRFreeToSysHeap(name);
    }

    return didChangeDir;
}

asm void* JKRFileCache::getResource(const char*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D4DD8.s"
}

asm void* JKRFileCache::getResource(u32, const char*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D4EDC.s"
}

asm u32 JKRFileCache::readResource(void*, u32, const char*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D4F64.s"
}

asm u32 JKRFileCache::readResource(void*, u32, u32, const char*) {
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

asm u32 JKRFileCache::getResSize(const void*) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D526C.s"
}

asm u32 JKRFileCache::countFile(const char*) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D52A0.s"
}

asm JKRFileFinder* JKRFileCache::getFirstFile(const char*) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D531C.s"
}

asm JKRFileCache::CCacheBlock* JKRFileCache::findCacheBlock(const void*) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D53B8.s"
}

asm JKRFileCache::CCacheBlock* JKRFileCache::findCacheBlock(unsigned long) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D53E4.s"
}

asm void JKRFileCache::findFile(char*, const char*) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D5410.s"
}

asm char* JKRFileCache::getDvdPathName(const char*) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D551C.s"
}

asm void JKRFileCache::convStrLower(char*) const {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D5624.s"
}

asm JKRFileCache::CCacheBlock::CCacheBlock(u32, u32, const void*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D566C.s"
}

asm void* JKRFileCache::getFsResource(const char*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D56C8.s"
}

asm void* JKRFileCache::getNameResource(u32, const char*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D56F4.s"
}

asm void* JKRFileCache::readFsResource(void*, u32, const char*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D5720.s"
}

asm void* JKRFileCache::readNameResource(void*, u32, u32, const char*) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D574C.s"
}

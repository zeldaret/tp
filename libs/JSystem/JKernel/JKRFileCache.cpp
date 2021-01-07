#include "JSystem/JKernel/JKRFileCache/JKRFileCache.h"
#include "JSystem/JKernel/JKRDvdFile/JKRDvdFile.h"
#include "JSystem/JKernel/JKRFileFinder/JKRFileFinder.h"
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

// full match, except wrong use of one register
#ifdef NONMATCHING
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
#else
asm bool JKRFileCache::becomeCurrent(const char* path) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D4D44.s"
}
#endif

void* JKRFileCache::getResource(const char* path) {
    ASSERT(isMounted());

    void* buffer = NULL;
    char* name = getDvdPathName(path);
    JKRDvdFile dvdFile(name);
    if (dvdFile.isAvailable()) {
        CCacheBlock* cacheBlock = findCacheBlock(dvdFile.getFileID());
        if (!cacheBlock) {
            // dvdFile.getFileSize() not inlined
            u32 fileSize = dvdFile.getFileInfo().length;
            u32 alignedSize = ALIGN_NEXT(fileSize, 0x20);
            buffer = JKRAllocFromHeap(mParentHeap, alignedSize, 0x20);
            if (buffer) {
                dvdFile.read(buffer, alignedSize, 0);

                cacheBlock = new (JKRHeap::getSystemHeap(), 0)
                    CCacheBlock(dvdFile.getFileID(), dvdFile.getFileInfo().length, buffer);
                mCacheBlockList.append(&cacheBlock->mCacheBlockLink);
            }
        } else {
            cacheBlock->mReferenceCount++;
            buffer = cacheBlock->mMemoryPtr;
        }
    }

    JKRFreeToSysHeap(name);
    return buffer;
}

void* JKRFileCache::getResource(u32, const char* path) {
    ASSERT(isMounted());

    char finalPath[256];
    u32 rootLength = strlen(mRootPath);
    char* filePath = finalPath + rootLength;
    strcpy(finalPath, mRootPath);

    bool found = findFile(finalPath, path);
    if (!found)
        return NULL;

    return getResource(filePath);
}

u32 JKRFileCache::readResource(void* dst, u32 dstLength, const char* path) {
    ASSERT(isMounted());

    char* name = getDvdPathName(path);
    JKRDvdFile dvdFile(name);

    u32 resourceSize = 0;

// !@bug: (maybe?) Infinite Loop: Because dvdFile.isAvailable() is never updated in the loop-body
// will would never exit the loop.
loop:
    if (dvdFile.isAvailable()) {
        // dvdFile.getFileSize() not inlined
        u32 fileSize = dvdFile.getFileInfo().length;
        resourceSize = ALIGN_NEXT(fileSize, 0x20);
        dstLength = ALIGN_PREV(dstLength, 0x20);
        if (resourceSize > dstLength) {
            resourceSize = dstLength;
        }

        CCacheBlock* cacheBlock = findCacheBlock(dvdFile.getFileID());
        if (!cacheBlock) {
            dvdFile.read(dst, resourceSize, 0);
        } else {
            memcpy(dst, cacheBlock->mMemoryPtr, resourceSize);
        }
        goto loop;
    }

    JKRFreeToSysHeap(name);
    return resourceSize;
}

u32 JKRFileCache::readResource(void* dst, u32 dstLength, u32, const char* path) {
    ASSERT(isMounted());

    char finalPath[256];
    u32 rootLength = strlen(mRootPath);
    char* filePath = finalPath + rootLength;
    strcpy(finalPath, mRootPath);

    bool found = findFile(finalPath, path);
    if (!found)
        return NULL;

    return readResource(dst, dstLength, filePath);
}

#ifdef NONMATCHING
void JKRFileCache::removeResourceAll(void) {
    ASSERT(isMounted());

    JSUListIterator<CCacheBlock> iterator;
    iterator = mCacheBlockList.getFirst();
    while (iterator != mCacheBlockList.getEnd()) {
        JKRFreeToHeap(mParentHeap, iterator->mMemoryPtr);
        mCacheBlockList.remove(&iterator->mLink);
        JSUListIterator<CCacheBlock> next = iterator++;
        CCacheBlock* cacheBlock = next.getObject();
        delete cacheBlock;
    }
}
#else
asm void JKRFileCache::removeResourceAll(void) {
    nofralloc
#include "JSystem/JKernel/JKRFileCache/asm/func_802D50D4.s"
}
#endif

bool JKRFileCache::removeResource(void* resource) {
    ASSERT(isMounted());

    CCacheBlock* cacheBlock = findCacheBlock(resource);
    if (!cacheBlock)
        return false;

    u32 referenceCount = cacheBlock->mReferenceCount - 1;
    cacheBlock->mReferenceCount = referenceCount;
    if (referenceCount == 0) {
        JKRFreeToHeap(mParentHeap, resource);
        mCacheBlockList.remove(&cacheBlock->mCacheBlockLink);
        delete cacheBlock;
    }

    return true;
}

bool JKRFileCache::detachResource(void* resource) {
    ASSERT(isMounted());

    CCacheBlock* cacheBlock = findCacheBlock(resource);
    if (!cacheBlock)
        return false;

    mCacheBlockList.remove(&cacheBlock->mCacheBlockLink);
    delete cacheBlock;
    return true;
}

u32 JKRFileCache::getResSize(const void* resource) const {
    ASSERT(isMounted());

    CCacheBlock* cacheBlock = findCacheBlock(resource);
    if (cacheBlock == NULL) {
        return -1;
    } else {
        return cacheBlock->mFileSize;
    }
}

u32 JKRFileCache::countFile(const char* path) const {
    ASSERT(isMounted());

    DVDDirectory dir;
    DVDDirectoryEntry dirEntry;

    u32 count = 0;
    char* name = getDvdPathName(path);
    BOOL result = DVDOpenDir(name, &dir);
    if (result != 0) {
        while (result = DVDReadDir(&dir, &dirEntry), result != FALSE) {
            count = count + 1;
        }

        DVDCloseDir(&dir);
    }

    JKRFreeToSysHeap(name);
    return count;
}

JKRFileFinder* JKRFileCache::getFirstFile(const char* path) const {
    char* name = getDvdPathName(path);
    JKRHeap* systemHeap = JKRHeap::getSystemHeap();
    JKRDvdFinder* finder = new (systemHeap, 0) JKRDvdFinder(name);
    JKRFreeToSysHeap(name);

    if (finder->isAvailable() != true) {
        delete finder;
        return NULL;
    }

    return finder;
}

JKRFileCache::CCacheBlock* JKRFileCache::findCacheBlock(const void* resource) const {
    JSUListIterator<CCacheBlock> iterator;
    for (iterator = mCacheBlockList.getFirst(); iterator != mCacheBlockList.getEnd(); ++iterator) {
        if (iterator->mMemoryPtr == resource) {
            return iterator.getObject();
        }
    }

    return NULL;
}

JKRFileCache::CCacheBlock* JKRFileCache::findCacheBlock(u32 fileID) const {
    JSUListIterator<CCacheBlock> iterator;
    for (iterator = mCacheBlockList.getFirst(); iterator != mCacheBlockList.getEnd(); ++iterator) {
        if (iterator->mFileId == fileID) {
            return iterator.getObject();
        }
    }

    return NULL;
}

bool JKRFileCache::findFile(char* path, const char* fileName) const {
    DVDDirectory dir;
    DVDDirectoryEntry dirEntry;

    bool result = false;
    u32 pathLength = strlen(path);
    if (DVDOpenDir(path, &dir)) {
        while (DVDReadDir(&dir, &dirEntry)) {
            if (dirEntry.is_directory) {
                char* endOfPath = path + pathLength;
                *endOfPath = '/';
                strcpy(path + pathLength + 1, dirEntry.name);
                result = findFile(path, fileName);
                if (result)
                    break;
                *endOfPath = '\0';
            } else {
                result = (strcmp(fileName, dirEntry.name) == 0);
                if (result) {
                    strcat(path, lbl_8039D158);  // "/"
                    strcat(path, fileName);
                    break;
                }
            }
        }

        DVDCloseDir(&dir);
    }

    return result;
}

char* JKRFileCache::getDvdPathName(const char* path) const {
    char* newPath;
    if (path[0] == '/') {
        u32 length = strlen(mRootPath) + strlen(path) + 2;
        newPath = (char*)JKRAllocFromSysHeap(length, 1);
        strcpy(newPath, mRootPath);
        if (path[1]) {
            if (mRootPath[1] == 0) {
                strcat(newPath, path + 1);
            } else {
                strcat(newPath, path);
            }
        }
    } else {
        u32 length = strlen(mCurrentPath) + strlen(path) + 2;
        newPath = (char*)JKRAllocFromSysHeap(length, 1);
        strcpy(newPath, mCurrentPath);
        strcat(newPath, path);
    }

    convStrLower(newPath);
    return newPath;
}

void JKRFileCache::convStrLower(char* buffer) const {
    while (*buffer) {
        *buffer++ = tolower(*buffer);
    }
}

JKRFileCache::CCacheBlock::CCacheBlock(u32 fileId, u32 fileSize, const void* resource)
    : mCacheBlockLink(this) {
    mReferenceCount = 1;
    mFileId = fileId;
    mFileSize = fileSize;
    mMemoryPtr = (void*)resource;  // todo: don't cast away const
}

void* JKRFileCache::getFsResource(const char* path) {
    return getResource(path);
}

void* JKRFileCache::getNameResource(u32 type, const char* path) {
    return getResource(type, path);
}

u32 JKRFileCache::readFsResource(void* dst, u32 dstLength, const char* path) {
    return readResource(dst, dstLength, path);
}

u32 JKRFileCache::readNameResource(void* dst, u32 dstLength, u32 type, const char* path) {
    return readResource(dst, dstLength, type, path);
}

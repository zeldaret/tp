#include "JSystem/JKernel/JKRFileCache.h"
#include "JSystem/JKernel/JKRDvdFile.h"
#include "JSystem/JKernel/JKRFileFinder.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JUtility/JUTAssert.h"
#include "ctype.h"
#include "string.h"
#include "global.h"

/* 802D49B4-802D4AB4 2CF2F4 0100+00 0/0 2/2 0/0 .text mount__12JKRFileCacheFPCcP7JKRHeapPCc */
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

/* 802D4AB4-802D4C70 2CF3F4 01BC+00 1/1 0/0 0/0 .text            __ct__12JKRFileCacheFPCcPCc */
JKRFileCache::JKRFileCache(const char* path, const char* volume) {
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
        strcat(mCurrentPath, "/");

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
            volumePath = "dvd";
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

/* 802D4C70-802D4D44 2CF5B0 00D4+00 1/0 0/0 0/0 .text            __dt__12JKRFileCacheFv */
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

/* 802D4D44-802D4DD8 2CF684 0094+00 1/0 0/0 0/0 .text            becomeCurrent__12JKRFileCacheFPCc
 */
bool JKRFileCache::becomeCurrent(const char* path) {
    char* dvdPathName = getDvdPathName(path);

    bool result = DVDChangeDir(dvdPathName);
    if (result) {
        sCurrentVolume = this;
        JKRHeap::sSystemHeap->free(mCurrentPath);
        mCurrentPath = dvdPathName;
        if (mCurrentPath[1] != '\0') {
            strcat(mCurrentPath, "/");
        }
    } else {
        JKRHeap::sSystemHeap->free(dvdPathName);
    }

    return result;
}

/* 802D4DD8-802D4EDC 2CF718 0104+00 1/0 0/0 0/0 .text            getResource__12JKRFileCacheFPCc */
void* JKRFileCache::getResource(const char* path) {
    JUT_ASSERT(237, isMounted());

    void* buffer = NULL;
    char* name = getDvdPathName(path);

    JKRDvdFile dvdFile(name);
    if (dvdFile.isAvailable()) {
        CCacheBlock* cacheBlock = findCacheBlock(dvdFile.getFileID());
        if (!cacheBlock) {
            u32 fileSize = dvdFile.getFileInfo()->length;
            u32 alignedSize = ALIGN_NEXT(fileSize, 0x20);
            buffer = JKRAllocFromHeap(mParentHeap, alignedSize, 0x20);
            if (buffer) {
                dvdFile.read(buffer, alignedSize, 0);

                cacheBlock = new (JKRHeap::getSystemHeap(), 0)
                    CCacheBlock(dvdFile.getFileID(), dvdFile.getFileInfo()->length, buffer);
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

/* 802D4EDC-802D4F64 2CF81C 0088+00 1/0 0/0 0/0 .text            getResource__12JKRFileCacheFUlPCc
 */
void* JKRFileCache::getResource(u32, const char* path) {
    JUT_ASSERT(303, isMounted());

    char finalPath[256];
    u32 rootLength = strlen(mRootPath);
    char* filePath = finalPath + rootLength;
    strcpy(finalPath, mRootPath);

    bool found = findFile(finalPath, path);
    if (!found)
        return NULL;

    return getResource(filePath);
}

/* 802D4F64-802D503C 2CF8A4 00D8+00 1/0 0/0 0/0 .text readResource__12JKRFileCacheFPvUlPCc */
u32 JKRFileCache::readResource(void* dst, u32 dstLength, const char* path) {
    JUT_ASSERT(412, isMounted());

    char* name = getDvdPathName(path);
    JKRDvdFile dvdFile(name);

    u32 resourceSize = 0;

// !@bug: (maybe?) Infinite Loop: Because dvdFile.isAvailable() is never updated in the loop-body
// will would never exit the loop.
    while (true) {
        if (!dvdFile.isAvailable()) {
            break;
        }
        u32 fileSize = dvdFile.getFileInfo()->length;
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
    }

    JKRFreeToSysHeap(name);
    return resourceSize;
}

/* 802D503C-802D50D4 2CF97C 0098+00 1/0 0/0 0/0 .text readResource__12JKRFileCacheFPvUlUlPCc */
u32 JKRFileCache::readResource(void* dst, u32 dstLength, u32, const char* path) {
    JUT_ASSERT(344, isMounted());

    char finalPath[256];
    u32 rootLength = strlen(mRootPath);
    char* filePath = finalPath + rootLength;
    strcpy(finalPath, mRootPath);

    bool found = findFile(finalPath, path);
    if (!found)
        return NULL;

    return readResource(dst, dstLength, filePath);
}

/* 802D50D4-802D5164 2CFA14 0090+00 1/0 0/0 0/0 .text            removeResourceAll__12JKRFileCacheFv
 */
void JKRFileCache::removeResourceAll(void) {
    JUT_ASSERT(412, isMounted());

    JSUListIterator<CCacheBlock> iterator;
    iterator = mCacheBlockList.getFirst();
    while (iterator != mCacheBlockList.getEnd()) {
        JKRFreeToHeap(mParentHeap, iterator->mMemoryPtr);
        mCacheBlockList.remove(&iterator.getObject()->mCacheBlockLink);
        CCacheBlock* cacheBlock = (iterator++).getObject();
        delete cacheBlock;
    }
}

/* 802D5164-802D51F8 2CFAA4 0094+00 1/0 0/0 0/0 .text            removeResource__12JKRFileCacheFPv
 */
bool JKRFileCache::removeResource(void* resource) {
    JUT_ASSERT(463, isMounted());

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

/* 802D51F8-802D526C 2CFB38 0074+00 1/0 0/0 0/0 .text            detachResource__12JKRFileCacheFPv
 */
bool JKRFileCache::detachResource(void* resource) {
    JUT_ASSERT(490, isMounted());

    CCacheBlock* cacheBlock = findCacheBlock(resource);
    if (!cacheBlock)
        return false;

    mCacheBlockList.remove(&cacheBlock->mCacheBlockLink);
    delete cacheBlock;
    return true;
}

/* 802D526C-802D52A0 2CFBAC 0034+00 1/0 0/0 0/0 .text            getResSize__12JKRFileCacheCFPCv */
u32 JKRFileCache::getResSize(const void* resource) const {
    CCacheBlock* cacheBlock = findCacheBlock(resource);
    if (cacheBlock == NULL) {
        return -1;
    } else {
        return cacheBlock->mFileSize;
    }
}

/* 802D52A0-802D531C 2CFBE0 007C+00 1/0 0/0 0/0 .text            countFile__12JKRFileCacheCFPCc */
u32 JKRFileCache::countFile(const char* path) const {
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

/* 802D531C-802D53B8 2CFC5C 009C+00 1/0 0/0 0/0 .text            getFirstFile__12JKRFileCacheCFPCc
 */
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

/* 802D53B8-802D53E4 2CFCF8 002C+00 3/3 0/0 0/0 .text            findCacheBlock__12JKRFileCacheCFPCv
 */
JKRFileCache::CCacheBlock* JKRFileCache::findCacheBlock(const void* resource) const {
    JSUListIterator<CCacheBlock> iterator;
    for (iterator = mCacheBlockList.getFirst(); iterator != mCacheBlockList.getEnd(); ++iterator) {
        if (iterator->mMemoryPtr == resource) {
            return iterator.getObject();
        }
    }

    return NULL;
}

/* 802D53E4-802D5410 2CFD24 002C+00 2/2 0/0 0/0 .text            findCacheBlock__12JKRFileCacheCFUl
 */
JKRFileCache::CCacheBlock* JKRFileCache::findCacheBlock(u32 fileID) const {
    JSUListIterator<CCacheBlock> iterator;
    for (iterator = mCacheBlockList.getFirst(); iterator != mCacheBlockList.getEnd(); ++iterator) {
        if (iterator->mFileId == fileID) {
            return iterator.getObject();
        }
    }

    return NULL;
}

/* 802D5410-802D551C 2CFD50 010C+00 2/2 0/0 0/0 .text            findFile__12JKRFileCacheCFPcPCc */
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
                    strcat(path, "/");
                    strcat(path, fileName);
                    break;
                }
            }
        }

        DVDCloseDir(&dir);
    }

    return result;
}

/* 802D551C-802D5624 2CFE5C 0108+00 5/5 0/0 0/0 .text            getDvdPathName__12JKRFileCacheCFPCc
 */
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

/* 802D5624-802D566C 2CFF64 0048+00 2/2 0/0 0/0 .text            convStrLower__12JKRFileCacheCFPc */
void JKRFileCache::convStrLower(char* buffer) const {
    while (*buffer) {
        *buffer++ = tolower(*buffer);
    }
}

/* 802D566C-802D56C8 2CFFAC 005C+00 1/1 0/0 0/0 .text __ct__Q212JKRFileCache11CCacheBlockFUlUlPCv
 */
JKRFileCache::CCacheBlock::CCacheBlock(u32 fileId, u32 fileSize, const void* resource)
    : mCacheBlockLink(this) {
    mReferenceCount = 1;
    mFileId = fileId;
    mFileSize = fileSize;
    mMemoryPtr = (void*)resource;  // todo: don't cast away const
}

/* 802D56C8-802D56F4 2D0008 002C+00 1/0 0/0 0/0 .text            getFsResource__12JKRFileCacheFPCc
 */
void* JKRFileCache::getFsResource(const char* path) {
    return getResource(path);
}

/* 802D56F4-802D5720 2D0034 002C+00 1/0 0/0 0/0 .text getNameResource__12JKRFileCacheFUlPCc */
void* JKRFileCache::getNameResource(u32 type, const char* path) {
    return getResource(type, path);
}

/* 802D5720-802D574C 2D0060 002C+00 1/0 0/0 0/0 .text readFsResource__12JKRFileCacheFPvUlPCc */
u32 JKRFileCache::readFsResource(void* dst, u32 dstLength, const char* path) {
    return readResource(dst, dstLength, path);
}

/* 802D574C-802D5778 2D008C 002C+00 1/0 0/0 0/0 .text readNameResource__12JKRFileCacheFPvUlUlPCc
 */
u32 JKRFileCache::readNameResource(void* dst, u32 dstLength, u32 type, const char* path) {
    return readResource(dst, dstLength, type, path);
}
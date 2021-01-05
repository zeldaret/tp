#include "JSystem/JKernel/JKRAramArchive/JKRAramArchive.h"
#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "JSystem/JKernel/JKRCompArchive/JKRCompArchive.h"
#include "JSystem/JKernel/JKRDvdArchive/JKRDvdArchive.h"
#include "JSystem/JKernel/JKRFileFinder/JKRFileFinder.h"
#include "JSystem/JKernel/JKRFileLoader/JKRFileLoader.h"
#include "JSystem/JKernel/JKRMemArchive/JKRMemArchive.h"
#include "dvd/dvd.h"
#include "global.h"

JKRArchive* JKRArchive::check_mount_already(s32 entryNum, JKRHeap* heap) {
    if (heap == NULL) {
        heap = JKRHeap::getCurrentHeap();
    }

    JSUList<JKRFileLoader>& volumeList = getVolumeList();
    JSUListIterator<JKRFileLoader> iterator;
    for (iterator = volumeList.getFirst(); iterator != volumeList.getEnd(); ++iterator) {
        if (iterator->getVolumeType() == 'RARC') {
            JKRArchive* archive = (JKRArchive*)iterator.getObject();
            if (archive->mEntryNum == entryNum && archive->mHeap == heap) {
                archive->mMountCount++;
                return archive;
            }
        }
    }

    return NULL;
}

JKRArchive* JKRArchive::mount(const char* path, JKRArchive::EMountMode mountMode, JKRHeap* heap,
                              JKRArchive::EMountDirection mountDirection) {
    s32 entryNum = DVDConvertPathToEntrynum(path);
    if (entryNum < 0)
        return NULL;

    return mount(entryNum, mountMode, heap, mountDirection);
}

JKRArchive* JKRArchive::mount(void* ptr, JKRHeap* heap,
                              JKRArchive::EMountDirection mountDirection) {
    JKRArchive* archive = check_mount_already((s32)ptr, heap);
    if (archive)
        return archive;

    int alignment;
    if (mountDirection == JKRArchive::HEAD) {
        alignment = 4;
    } else {
        alignment = -4;
    }

    archive = new (heap, alignment) JKRMemArchive(ptr, 0xFFFF, JKRMEMBREAK_FLAG_UNKNOWN0);
    return archive;
}

JKRArchive* JKRArchive::mount(s32 entryNum, JKRArchive::EMountMode mountMode, JKRHeap* heap,
                              JKRArchive::EMountDirection mountDirection) {
    JKRArchive* archive = check_mount_already(entryNum, heap);
    if (archive != NULL) {
        return archive;
    } else {
        int alignment;
        if (mountDirection == JKRArchive::HEAD) {
            alignment = 4;
        } else {
            alignment = -4;
        }

        JKRArchive* archive;
        switch (mountMode) {
        case JKRArchive::MOUNT_MEM:
            archive = new (heap, alignment) JKRMemArchive(entryNum, mountDirection);
            break;
        case JKRArchive::MOUNT_ARAM:
            archive = new (heap, alignment) JKRAramArchive(entryNum, mountDirection);
            break;
        case JKRArchive::MOUNT_DVD:
            archive = new (heap, alignment) JKRDvdArchive(entryNum, mountDirection);
            break;
        case JKRArchive::MOUNT_COMP:
            archive = new (heap, alignment) JKRCompArchive(entryNum, mountDirection);
            break;
        }

        if (archive && archive->getMountMode() == JKRArchive::UNKNOWN_MOUNT_MODE) {
            delete archive;
            archive = NULL;
        }

        return archive;
    }
}

bool JKRArchive::becomeCurrent(const char* path) {
    SDirEntry* dirEntry;
    if (*path == '/') {
        path++;

        if (*path == '\0')
            path = NULL;
        dirEntry = findDirectory(path, 0);
    } else {
        dirEntry = findDirectory(path, getCurrentDirID());
    }

    bool found = dirEntry != NULL;
    if (found) {
        setCurrentVolume(this);
        setCurrentDirID(dirEntry - mNodes);
    }

    return found;
}

bool JKRArchive::getDirEntry(SDirEntry* dirEntry, u32 index) const {
    SDIFileEntry* fileEntry = findIdxResource(index);
    if (!fileEntry)
        return false;

    dirEntry->other.flags = fileEntry->getFlags();
    dirEntry->other.id = fileEntry->getFileID();
    dirEntry->name = mStringTable + fileEntry->getNameOffset();
    return true;
}

void* JKRArchive::getGlbResource(u32 param_1, const char* path, JKRArchive* archive) {
    void* resource = NULL;
    if (archive) {
        return archive->getResource(param_1, path);
    }

    JSUList<JKRFileLoader>& volumeList = getVolumeList();
    JSUListIterator<JKRFileLoader> iterator;
    for (iterator = volumeList.getFirst(); iterator != volumeList.getEnd(); ++iterator) {
        if (iterator->getVolumeType() == 'RARC') {
            resource = iterator->getResource(param_1, path);
            if (resource)
                break;
        }
    }

    return resource;
}

void* JKRArchive::getResource(const char* path) {
    SDIFileEntry* fileEntry;
    if (*path == '/') {
        fileEntry = findFsResource(path + 1, 0);
    } else {
        fileEntry = findFsResource(path, getCurrentDirID());
    }

    if (fileEntry) {
        return fetchResource(fileEntry, NULL);
    }

    return NULL;
}

void* JKRArchive::getResource(u32 type, const char* path) {
    SDIFileEntry* fileEntry;
    if (type == 0 || type == '????') {
        fileEntry = findNameResource(path);
    } else {
        fileEntry = findTypeResource(type, path);
    }

    if (fileEntry) {
        return fetchResource(fileEntry, NULL);
    }

    return NULL;
}

void* JKRArchive::getIdxResource(u32 index) {
    SDIFileEntry* fileEntry = findIdxResource(index);
    if (fileEntry) {
        return fetchResource(fileEntry, NULL);
    }

    return NULL;
}

void* JKRArchive::getResource(u16 id) {
    SDIFileEntry* fileEntry = findIdResource(id);
    if (fileEntry) {
        return fetchResource(fileEntry, NULL);
    }

    return NULL;
}

u32 JKRArchive::readResource(void* buffer, u32 bufferSize, u32 type, const char* path) {
    SDIFileEntry* fileEntry;
    if (type == 0 || type == '????') {
        fileEntry = findNameResource(path);
    } else {
        fileEntry = findTypeResource(type, path);
    }

    if (fileEntry) {
        u32 resourceSize;
        fetchResource(buffer, bufferSize, fileEntry, &resourceSize);
        return resourceSize;
    }

    return 0;
}

u32 JKRArchive::readResource(void* buffer, u32 bufferSize, const char* path) {
    SDIFileEntry* fileEntry;
    if (*path == '/') {
        fileEntry = findFsResource(path + 1, 0);
    } else {
        fileEntry = findFsResource(path, getCurrentDirID());
    }

    if (fileEntry) {
        u32 resourceSize;
        fetchResource(buffer, bufferSize, fileEntry, &resourceSize);
        return resourceSize;
    }

    return 0;
}

u32 JKRArchive::readIdxResource(void* buffer, u32 bufferSize, u32 index) {
    SDIFileEntry* fileEntry = findIdxResource(index);
    if (fileEntry) {
        u32 resourceSize;
        fetchResource(buffer, bufferSize, fileEntry, &resourceSize);
        return resourceSize;
    }

    return 0;
}

u32 JKRArchive::readResource(void* buffer, u32 bufferSize, u16 id) {
    SDIFileEntry* fileEntry = findIdResource(id);
    if (fileEntry) {
        u32 resourceSize;
        fetchResource(buffer, bufferSize, fileEntry, &resourceSize);
        return resourceSize;
    }

    return 0;
}

void JKRArchive::removeResourceAll(void) {
    if (mArcInfoBlock && mMountMode != MOUNT_MEM) {
        SDIFileEntry* fileEntry = mFiles;
        for (int i = 0; i < mArcInfoBlock->num_file_entries; fileEntry++, i++) {
            if (fileEntry->data) {
                JKRFreeToHeap(mHeap, fileEntry->data);
                fileEntry->data = NULL;
            }
        }
    }
}

bool JKRArchive::removeResource(void* resource) {
    SDIFileEntry* fileEntry = findPtrResource(resource);
    if (fileEntry == NULL)
        return false;

    fileEntry->data = NULL;
    JKRFreeToHeap(mHeap, resource);
    return true;
}

bool JKRArchive::detachResource(void* resource) {
    SDIFileEntry* fileEntry = findPtrResource(resource);
    if (fileEntry == NULL)
        return false;

    fileEntry->data = NULL;
    return true;
}

u32 JKRArchive::getResSize(const void* resource) const {
    SDIFileEntry* fileEntry = findPtrResource(resource);
    if (fileEntry == NULL)
        return -1;

    return fileEntry->data_size;
}

u32 JKRArchive::countResource(void) const {
    u32 count = 0;
    for (int i = 0; i < mArcInfoBlock->num_file_entries; i++) {
        if (mFiles[i].isUnknownFlag1()) {
            count++;
        }
    }
    return count;
}

u32 JKRArchive::countFile(const char* path) const {
    SDirEntry* dirEntry;
    if (*path == '/') {
        path++;

        if (*path == '\0')
            path = NULL;
        dirEntry = findDirectory(path, 0);
    } else {
        dirEntry = findDirectory(path, getCurrentDirID());
    }

    if (dirEntry) {
        return dirEntry->num_entries;
    }

    return 0;
}

JKRArcFinder* JKRArchive::getFirstFile(const char* path) const {
    SDirEntry* dirEntry;
    if (*path == '/') {
        path++;

        if (*path == '\0')
            path = NULL;
        dirEntry = findDirectory(path, 0);
    } else {
        dirEntry = findDirectory(path, getCurrentDirID());
    }

    if (dirEntry) {
        // don't know what is correct here... for now we're casting away const
        return new (JKRHeap::getSystemHeap(), 0)
            JKRArcFinder((JKRArchive*)this, dirEntry->first_file_index, (u32)dirEntry->num_entries);
    }

    return NULL;
}

u32 JKRArchive::getFileAttribute(u32 index) const {
    SDIFileEntry* fileEntry = findIdxResource(index);
    if (fileEntry) {
        return fileEntry->getFlags();
    }

    return 0;
}

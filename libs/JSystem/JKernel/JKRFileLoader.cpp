#include "JSystem/JKernel/JKRFileLoader.h"
#include "string.h"
#include "ctype.h"
#include "global.h"

/* ############################################################################################## */
/* 80451418-80451420 000918 0004+04 2/2 3/3 0/0 .sbss            sCurrentVolume__13JKRFileLoader */
JKRFileLoader* JKRFileLoader::sCurrentVolume;
/* 80434354-80434360 061074 000C+00 5/5 14/14 0/0 .bss             sVolumeList__13JKRFileLoader */
JSUList<JKRFileLoader> JKRFileLoader::sVolumeList;

/* 802D40F0-802D4148 2CEA30 0058+00 0/0 2/2 0/0 .text            __ct__13JKRFileLoaderFv */
JKRFileLoader::JKRFileLoader(void)
    : mFileLoaderLink(this), mVolumeName(NULL), mVolumeType(0), mMountCount(0) {}

/* 802D4148-802D41D4 2CEA88 008C+00 1/0 2/2 0/0 .text            __dt__13JKRFileLoaderFv */
JKRFileLoader::~JKRFileLoader() {
    if (getCurrentVolume() == this) {
        setCurrentVolume(NULL);
    }
}

/* 802D41D4-802D4224 2CEB14 0050+00 1/0 6/0 0/0 .text            unmount__13JKRFileLoaderFv */
void JKRFileLoader::unmount(void) {
    s32 count = mMountCount;
    if (mMountCount != 0) {
        count--;
        mMountCount = count;
        if (count == 0) {
            delete this;
        }
    }
}

/* 802D4224-802D4270 2CEB64 004C+00 0/0 2/2 0/0 .text            getGlbResource__13JKRFileLoaderFPCc
 */
void* JKRFileLoader::getGlbResource(const char* name) {
    const char* name_reference[1];
    name_reference[0] = name;

    JKRFileLoader* fileLoader = findVolume(name_reference);
    void* resource;
    if (fileLoader == NULL) {
        resource = NULL;
    } else {
        resource = fileLoader->getResource(name_reference[0]);
    }

    return resource;
}

/* 802D4270-802D4308 2CEBB0 0098+00 0/0 29/29 1/1 .text
 * getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader          */
void* JKRFileLoader::getGlbResource(const char* name, JKRFileLoader* fileLoader) {
    void* resource = NULL;
    if (fileLoader) {
        return fileLoader->getResource(0, name);
    }

    JSUList<JKRFileLoader>& volumeList = getVolumeList();
    JSUListIterator<JKRFileLoader> iterator;
    for (iterator = volumeList.getFirst(); iterator != volumeList.getEnd(); ++iterator) {
        resource = iterator->getResource(0, name);
        if (resource)
            break;
    }
    return resource;
}

/* 802D4308-802D43A0 2CEC48 0098+00 0/0 1/1 0/0 .text
 * removeResource__13JKRFileLoaderFPvP13JKRFileLoader           */
bool JKRFileLoader::removeResource(void* resource, JKRFileLoader* fileLoader) {
    if (fileLoader) {
        return fileLoader->removeResource(resource);
    }

    JSUList<JKRFileLoader>& volumeList = getVolumeList();
    JSUListIterator<JKRFileLoader> iterator;
    for (iterator = volumeList.getFirst(); iterator != volumeList.getEnd(); ++iterator) {
        if (iterator->removeResource(resource)) {
            return true;
        }
    }

    return false;
}

/* 802D43A0-802D4438 2CECE0 0098+00 0/0 2/2 0/0 .text
 * detachResource__13JKRFileLoaderFPvP13JKRFileLoader           */
bool JKRFileLoader::detachResource(void* resource, JKRFileLoader* fileLoader) {
    if (fileLoader) {
        return fileLoader->detachResource(resource);
    }

    JSUList<JKRFileLoader>& volumeList = getVolumeList();
    JSUListIterator<JKRFileLoader> iterator;
    for (iterator = volumeList.getFirst(); iterator != volumeList.getEnd(); ++iterator) {
        if (iterator->detachResource(resource)) {
            return true;
        }
    }

    return false;
}

/* 802D4438-802D44C4 2CED78 008C+00 1/1 0/0 0/0 .text            findVolume__13JKRFileLoaderFPPCc */
JKRFileLoader* JKRFileLoader::findVolume(const char** volumeName) {
    if (*volumeName[0] != '/') {
        return getCurrentVolume();
    }

    char volumeNameBuffer[0x101];
    *volumeName = fetchVolumeName(volumeNameBuffer, ARRAY_SIZE(volumeNameBuffer), *volumeName);

    JSUList<JKRFileLoader>& volumeList = getVolumeList();
    JSUListIterator<JKRFileLoader> iterator;
    for (iterator = volumeList.getFirst(); iterator != volumeList.getEnd(); ++iterator) {
        if (strcmp(volumeNameBuffer, iterator->mVolumeName) == 0) {
            return iterator.getObject();
        }
    }

    return NULL;
}

/* ############################################################################################## */

/* 804508C0-804508C8 000340 0002+06 1/1 0/0 0/0 .sdata           rootPath$2498 */
static char rootPath[2] = "/";

/* 802D44C4-802D45A0 2CEE04 00DC+00 1/1 0/0 0/0 .text fetchVolumeName__13JKRFileLoaderFPclPCc */
const char* JKRFileLoader::fetchVolumeName(char* buffer, s32 bufferSize, const char* path) {
    if (strcmp(path, "/") == 0) {
        strcpy(buffer, rootPath);
        return rootPath;
    }

    path++;
    while (*path != 0 && *path != '/') {
        if (1 < bufferSize) {
            int lower_char;
            int ch = (int)*path;
            if (ch == -1) {
                lower_char = -1;
            } else {
                lower_char = __lower_map[ch & 0xFF];
            }

            *buffer = lower_char;
            buffer++;
            bufferSize--;
        }
        path++;
    }

    *buffer = '\0';
    if (*path == '\0') {
        path = rootPath;
    }

    return path;
}

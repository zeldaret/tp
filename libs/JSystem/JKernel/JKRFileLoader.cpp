#include "JSystem/JKernel/JKRFileLoader/JKRFileLoader.h"
#include "global.h"

JKRFileLoader::JKRFileLoader(void) : mFileLoaderLink(this) {
    mVolumeName = NULL;
    mVolumeType = 0;
    mMountCount = 0;
}

JKRFileLoader::~JKRFileLoader() {
    // lbl_80451418 = JKRFileLoader::sCurrentVolume
    if (lbl_80451418 == this) {
        lbl_80451418 = NULL;
    }
}

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

void* JKRFileLoader::getGlbResource(const char* name, JKRFileLoader* fileLoader) {
    // lbl_80434354 = JKRFileLoader::sVolumeList

    void* resource = NULL;
    if (fileLoader) {
        return fileLoader->getResource(0, name);
    }

    JSUListIterator<JKRFileLoader> iterator;
    for (iterator = lbl_80434354.getFirst(); iterator != lbl_80434354.getEnd(); ++iterator) {
        resource = iterator->getResource(0, name);
        if (resource)
            break;
    }
    return resource;
}

bool JKRFileLoader::removeResource(void* resource, JKRFileLoader* fileLoader) {
    // lbl_80434354 = JKRFileLoader::sVolumeList

    if (fileLoader) {
        return fileLoader->removeResource(resource);
    }

    JSUListIterator<JKRFileLoader> iterator;
    for (iterator = lbl_80434354.getFirst(); iterator != lbl_80434354.getEnd(); ++iterator) {
        if (iterator->removeResource(resource)) {
            return true;
        }
    }

    return false;
}

bool JKRFileLoader::detachResource(void* resource, JKRFileLoader* fileLoader) {
    // lbl_80434354 = JKRFileLoader::sVolumeList

    if (fileLoader) {
        return fileLoader->detachResource(resource);
    }

    JSUListIterator<JKRFileLoader> iterator;
    for (iterator = lbl_80434354.getFirst(); iterator != lbl_80434354.getEnd(); ++iterator) {
        if (iterator->detachResource(resource)) {
            return true;
        }
    }

    return false;
}

JKRFileLoader* JKRFileLoader::findVolume(const char** volumeName) {
    // lbl_80451418 = JKRFileLoader::sCurrentVolume

    if (*volumeName[0] != '/') {
        return lbl_80451418;
    }

    char volumeNameBuffer[0x101];
    *volumeName = fetchVolumeName(volumeNameBuffer, ARRAY_SIZE(volumeNameBuffer), *volumeName);

    JSUListIterator<JKRFileLoader> iterator;
    for (iterator = lbl_80434354.getFirst(); iterator != lbl_80434354.getEnd(); ++iterator) {
        if (strcmp(volumeNameBuffer, iterator->mVolumeName) == 0) {
            return iterator.getObject();
        }
    }

    return NULL;
}

// matches, but lbl_804508C0 is accessed through r13
#ifdef NONMATCHING
const char* JKRFileLoader::fetchVolumeName(char* buffer, long bufferSize, const char* path) {
    // lbl_803D2D18 = MSL_C.PPCEABI.bare.H::__lower_map
    // lbl_8039D150 = JKernel::@stringBase0 "/"
    // lbl_804508C0 = JKernel::rootPath$2498 "/"
    // lbl_803D2D18 = MSL_C.PPCEABI.bare.H::__lower_map

    if (strcmp(path, lbl_8039D150) == 0) {
        strcpy(buffer, lbl_804508C0);
        return lbl_804508C0;
    }

    path++;
    while (*path != 0 && *path != '/') {
        if (1 < bufferSize) {
            u8 lower_char;
            int ch = (int)*path;
            if (ch == -1) {
                lower_char = -1;
            } else {
                lower_char = lbl_803D2D18[ch & 0xFF];
            }

            *buffer = lower_char;
            buffer++;
            bufferSize--;
        }
        path++;
    }

    *buffer = '\0';
    if (*path == '\0') {
        path = lbl_804508C0;
    }

    return path;
}
#else
asm const char* JKRFileLoader::fetchVolumeName(char* buffer, long bufferSize, const char* path) {
    nofralloc
#include "JSystem/JKernel/JKRFileLoader/asm/func_802D44C4.s"
}
#endif

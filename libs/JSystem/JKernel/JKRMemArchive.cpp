#include "JSystem/JKernel/JKRMemArchive/JKRMemArchive.h"
#include "JSystem/JKernel/JKRDvdRipper/JKRDvdRipper.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "global.h"
#include "msl_c/string.h"

extern "C" {
void DCInvalidateRange(void*, u32);
void findFromRoot__7JKRHeapFPv(void);
void panic_f__12JUTExceptionFPCciPCce(const char* filename, int line, const char* format, ...);
void loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl(
    void);
}

extern const char lbl_8039D160[16];  // "JKRMemArchive.cpp"

JKRMemArchive::JKRMemArchive(long entryNum, JKRArchive::EMountDirection mountDirection)
    : JKRArchive(entryNum, MOUNT_MEM) {
    mIsMounted = false;
    mMountDirection = mountDirection;
    if (!open(entryNum, mMountDirection)) {
        return;
    }

    mVolumeType = 'RARC';
    mVolumeName = mStringTable + (u32)mNodes->name;

    getVolumeList().prepend(&mFileLoaderLink);
    mIsMounted = true;
}

JKRMemArchive::JKRMemArchive(void* buffer, u32 bufferSize, JKRMemBreakFlag param_3)
    : JKRArchive((s32)buffer, MOUNT_MEM) {
    mIsMounted = false;
    if (!open(buffer, bufferSize, param_3)) {
        return;
    }

    mVolumeType = 'RARC';
    mVolumeName = mStringTable + (u32)mNodes->name;

    getVolumeList().prepend(&mFileLoaderLink);
    mIsMounted = true;
}

JKRMemArchive::~JKRMemArchive() {
    if (mIsMounted == true) {
        if (mIsOpen) {
            if (mArcHeader)
                JKRFreeToHeap(mHeap, mArcHeader);
        }

        getVolumeList().remove(&mFileLoaderLink);
        mIsMounted = false;
    }
}

// full match, except:
// mArchiveData = (u8*)(mArcHeader->file_data_offset + mArcHeader->header_length + (u32)mArcHeader);
// where the addition is swapped.
#ifdef NONMATCHING
bool JKRMemArchive::open(long entryNum, JKRArchive::EMountDirection mountDirection) {
    mArcHeader = NULL;
    mArcInfoBlock = NULL;
    mArchiveData = NULL;
    mNodes = NULL;
    mFiles = NULL;
    mStringTable = NULL;
    mIsOpen = false;
    mMountDirection = mountDirection;

    if (mMountDirection == JKRArchive::HEAD) {
        u32 loadedSize;
        mArcHeader = (SArcHeader*)JKRDvdRipper::loadToMainRAM(
            entryNum, NULL, EXPAND_SWITCH_UNKNOWN1, 0, mHeap, JKRDvdRipper::FORWARD, 0,
            &mCompression, &loadedSize);
        if (mArcHeader) {
            DCInvalidateRange(mArcHeader, loadedSize);
        }
    } else {
        u32 loadedSize;
        mArcHeader = (SArcHeader*)JKRDvdRipper::loadToMainRAM(
            entryNum, NULL, EXPAND_SWITCH_UNKNOWN1, 0, mHeap, JKRDvdRipper::BACKWARD, 0,
            &mCompression, &loadedSize);
        if (mArcHeader) {
            DCInvalidateRange(mArcHeader, loadedSize);
        }
    }

    if (!mArcHeader) {
        mMountMode = UNKNOWN_MOUNT_MODE;
    } else {
        ASSERT(mArcHeader->signature == 'RARC');
        mArcInfoBlock = (SArcDataInfo*)((u8*)mArcHeader + mArcHeader->header_length);
        mNodes = (SDirEntry*)((u8*)&mArcInfoBlock->num_nodes + mArcInfoBlock->node_offset);
        mFiles = (SDIFileEntry*)((u8*)&mArcInfoBlock->num_nodes + mArcInfoBlock->file_entry_offset);
        mStringTable = (char*)((u8*)&mArcInfoBlock->num_nodes + mArcInfoBlock->string_table_offset);

        mArchiveData =
            (u8*)(mArcHeader->file_data_offset + mArcHeader->header_length + (u32)mArcHeader);
        mIsOpen = true;
    }

    return mMountMode != UNKNOWN_MOUNT_MODE;
}
#else
asm bool JKRMemArchive::open(long entryNum, JKRArchive::EMountDirection mountDirection) {
    nofralloc
#include "JSystem/JKernel/JKRMemArchive/asm/func_802D6BCC.s"
}
#endif

// full match, except:
// mArchiveData = (u8*)(mArcHeader->file_data_offset + mArcHeader->header_length + (u32)mArcHeader);
// where the addition is swapped.
#ifdef NONMATCHING
bool JKRMemArchive::open(void* buffer, u32 bufferSize, JKRMemBreakFlag flag) {
    mArcHeader = (SArcHeader*)buffer;

    ASSERT(mArcHeader->signature == 'RARC');
    mArcInfoBlock = (SArcDataInfo*)((u8*)mArcHeader + mArcHeader->header_length);
    mNodes = (SDirEntry*)((u8*)&mArcInfoBlock->num_nodes + mArcInfoBlock->node_offset);
    mFiles = (SDIFileEntry*)((u8*)&mArcInfoBlock->num_nodes + mArcInfoBlock->file_entry_offset);
    mStringTable = (char*)((u8*)&mArcInfoBlock->num_nodes + mArcInfoBlock->string_table_offset);
    mArchiveData =
        (u8*)(mArcHeader->file_data_offset + mArcHeader->header_length + (u32)mArcHeader);
    mIsOpen = (flag == JKRMEMBREAK_FLAG_UNKNOWN1);
    mHeap = JKRHeap::findFromRoot(buffer);
    mCompression = JKRDecomp::NONE;
    return true;
}
#else
asm bool JKRMemArchive::open(void* buffer, u32 bufferSize, JKRMemBreakFlag flag) {
    nofralloc
#include "JSystem/JKernel/JKRMemArchive/asm/func_802D6D30.s"
}
#endif

void* JKRMemArchive::fetchResource(SDIFileEntry* fileEntry, u32* resourceSize) {
    if (!fileEntry->data) {
        fileEntry->data = mArchiveData + fileEntry->data_offset;
    }

    if (resourceSize) {
        *resourceSize = fileEntry->data_size;
    }

    return fileEntry->data;
}

void* JKRMemArchive::fetchResource(void* buffer, u32 bufferSize, SDIFileEntry* fileEntry,
                                   u32* resourceSize) {
    u32 srcLength = fileEntry->data_size;
    if (srcLength > bufferSize) {
        srcLength = bufferSize;
    }

    if (fileEntry->data != NULL) {
        memcpy(buffer, fileEntry->data, srcLength);
    } else {
        JKRCompression compression = JKRConvertAttrToCompressionType(fileEntry->getAttr());
        void* data = mArchiveData + fileEntry->data_offset;
        srcLength =
            fetchResource_subroutine((u8*)data, srcLength, (u8*)buffer, bufferSize, compression);
    }

    if (resourceSize) {
        *resourceSize = srcLength;
    }

    return buffer;
}

void JKRMemArchive::removeResourceAll(void) {
    ASSERT(isMounted());

    if (mArcInfoBlock == NULL)
        return;
    if (mMountMode == MOUNT_MEM)
        return;

    // !@bug: looping over file entries without incrementing the fileEntry pointer. Thus, only the
    // first fileEntry will clear/remove the resource data.
    SDIFileEntry* fileEntry = mFiles;
    for (int i = 0; i < mArcInfoBlock->num_file_entries; i++) {
        if (fileEntry->data) {
            fileEntry->data = NULL;
        }
    }
}

bool JKRMemArchive::removeResource(void* resource) {
    ASSERT(isMounted());

    SDIFileEntry* fileEntry = findPtrResource(resource);
    if (!fileEntry)
        return false;

    fileEntry->data = NULL;
    return true;
}

u32 JKRMemArchive::fetchResource_subroutine(u8* src, u32 srcLength, u8* dst, u32 dstLength,
                                            JKRCompression compression) {
    switch (compression) {
    case COMPRESSION_NONE:
        if (srcLength > dstLength) {
            srcLength = dstLength;
        }

        memcpy(dst, src, srcLength);
        return srcLength;

    case COMPRESSION_YAY0:
    case COMPRESSION_YAZ0:
        u32 expendedSize = JKRDecompExpandSize((SArcHeader*)src);
        srcLength = expendedSize;
        if (expendedSize > dstLength) {
            srcLength = dstLength;
        }

        JKRDecompress(src, dst, srcLength, 0);
        return srcLength;

    default: {
        const char* file = lbl_8039D160;               // "JKRMemArchive.cpp"
        const char* format = lbl_8039D160 + 0x12;      // "%s"
        const char* arg1 = lbl_8039D160 + 0x12 + 0x3;  // "??? bad sequence\n"
        panic_f__12JUTExceptionFPCciPCce(file, 0x2d3, format, arg1);
    } break;
    }

    return 0;
}

u32 JKRMemArchive::getExpandedResSize(const void* resource) {
    SDIFileEntry* fileEntry = findPtrResource(resource);
    if (fileEntry == NULL)
        return -1;

    if (fileEntry->isCompressed() == false) {
        return getResSize(resource);
    } else {
        return JKRDecompExpandSize((SArcHeader*)resource);
    }
}

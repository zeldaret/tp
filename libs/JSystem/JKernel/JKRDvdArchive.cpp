#include "JSystem/JKernel/JKRDvdArchive/JKRDvdArchive.h"
#include "JSystem/JKernel/JKRDvdFile/JKRDvdFile.h"
#include "JSystem/JKernel/JKRDvdRipper/JKRDvdRipper.h"
#include "global.h"

JKRDvdArchive::JKRDvdArchive(s32 entryNum, JKRArchive::EMountDirection mountDirection)
    : JKRArchive(entryNum, MOUNT_DVD), mMountDirection(mountDirection) {
    if (!open(entryNum))
        return;

    mVolumeType = 'RARC';
    mVolumeName = mStringTable + (u32)mNodes->name;
    getVolumeList().prepend(&mFileLoaderLink);
    mIsMounted = true;
}

JKRDvdArchive::~JKRDvdArchive() {
    if (mIsMounted == true) {
        if (mArcInfoBlock) {
            SDIFileEntry* fileEntry = mFiles;
            int i = 0;
            for (; i < mArcInfoBlock->num_file_entries; fileEntry++, i++) {
                if (fileEntry->data) {
                    JKRFreeToHeap(mHeap, fileEntry->data);
                }
            }

            JKRFreeToHeap(mHeap, mArcInfoBlock);
            mArcInfoBlock = NULL;
        }

        if (mExpandedSize) {
            JKRFree(mExpandedSize);
            mExpandedSize = NULL;
        }

        if (mDvdFile) {
            delete mDvdFile;
        }

        getVolumeList().remove(&mFileLoaderLink);
        mIsMounted = false;
    }
}

#ifndef NONMATCHING
bool JKRDvdArchive::open(s32 entryNum) {
    mArcInfoBlock = NULL;
    field_0x64 = NULL;
    mNodes = NULL;
    mFiles = NULL;
    mStringTable = NULL;

    mDvdFile = new (JKRHeap::getSystemHeap(), 0) JKRDvdFile(entryNum);
    if (!mDvdFile) {
        mMountMode = UNKNOWN_MOUNT_MODE;
        return false;
    }

    SArcHeader* arcHeader = (SArcHeader*)JKRAllocFromSysHeap(sizeof(SArcHeader), 0x20);
    if (!arcHeader) {
        mMountMode = UNKNOWN_MOUNT_MODE;
        return false;
    }

    JKRDvdToMainRam(entryNum, (u8*)arcHeader, EXPAND_SWITCH_UNKNOWN1, sizeof(SArcHeader), NULL,
                    JKRDvdRipper::ALLOC_DIRECTION_FORWARD, 0, &mCompression, NULL);
    DCInvalidateRange(arcHeader, sizeof(SArcHeader));

    int alignment;
    if (mMountDirection == MOUNT_DIRECTION_HEAD) {
        alignment = 0x20;
    } else {
        alignment = -0x20;
    }

    mArcInfoBlock = (SArcDataInfo*)JKRAllocFromHeap(mHeap, arcHeader->file_data_offset, alignment);
    if (!mArcInfoBlock) {
        mMountMode = UNKNOWN_MOUNT_MODE;
        return false;
    }

    JKRDvdToMainRam(entryNum, (u8*)mArcInfoBlock, EXPAND_SWITCH_UNKNOWN1,
                    arcHeader->file_data_offset, NULL, JKRDvdRipper::ALLOC_DIRECTION_FORWARD,
                    sizeof(SArcHeader), NULL, NULL);
    DCInvalidateRange(mArcInfoBlock, arcHeader->file_data_offset);

    mNodes = (SDirEntry*)((int)&mArcInfoBlock->num_nodes + mArcInfoBlock->node_offset);
    mFiles = (SDIFileEntry*)((int)&mArcInfoBlock->num_nodes + mArcInfoBlock->file_entry_offset);
    mStringTable = (char*)((int)&mArcInfoBlock->num_nodes + mArcInfoBlock->string_table_offset);
    mExpandedSize = NULL;

    bool useCompression = false;
    SDIFileEntry* fileEntry = mFiles;
    for (u32 i = 0; i < mArcInfoBlock->num_file_entries; fileEntry++, i++) {
        if (!fileEntry->isUnknownFlag1()) {
            useCompression |= fileEntry->isCompressed();
        }
    }

    if (useCompression) {
        mExpandedSize = (s32*)JKRAllocFromHeap(mHeap, sizeof(s32) * mArcInfoBlock->num_file_entries,
                                               abs(alignment));
        if (mExpandedSize) {
            // !@bug: mArcInfoBlock is allocated from mHeap but free'd to sSystemHeap. I don't know
            // what will happen if mHeap != sSystemHeap, but it's still a bug to free to the wrong
            // allocator.
            JKRFreeToSysHeap(mArcInfoBlock);
            mMountMode = UNKNOWN_MOUNT_MODE;
            return false;
        }

        memset(mExpandedSize, 0, sizeof(s32) * mArcInfoBlock->num_file_entries);
    }

    field_0x64 = arcHeader->header_length + arcHeader->file_data_offset;

    if (arcHeader) {
        JKRFreeToSysHeap(arcHeader);
    }

    if (mMountMode == UNKNOWN_MOUNT_MODE) {
        if(mDvdFile) {
            delete mDvdFile;
        }
        return false;
    } 

    return true;
}
#else
asm bool JKRDvdArchive::open(s32 entryNum) {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D7DB4.s"
}
#endif

void* JKRDvdArchive::fetchResource(SDIFileEntry* fileEntry, u32* returnSize) {
    u32 tempReturnSize;
    if (returnSize == NULL) {
        returnSize = &tempReturnSize;
    }

    JKRCompression fileCompression = JKRConvertAttrToCompressionType(fileEntry->getAttr());
    if (!fileEntry->data) {
        u8* resourcePtr;
        u32 resourceSize = fetchResource_subroutine(
            mEntryNum, this->field_0x64 + fileEntry->data_offset, fileEntry->data_size, mHeap,
            fileCompression, mCompression, &resourcePtr);
        *returnSize = resourceSize;
        if (resourceSize == 0) {
            return NULL;
        }
        fileEntry->data = resourcePtr;
        if (fileCompression == COMPRESSION_YAZ0) {
            setExpandSize(fileEntry, *returnSize);
        }
    } else {
        if (fileCompression == COMPRESSION_YAZ0) {
            u32 resourceSize = getExpandSize(fileEntry);
            *returnSize = resourceSize;
        } else {
            *returnSize = fileEntry->data_size;
        }
    }

    return fileEntry->data;
}

// ALIGN_PREV(bufferSize, 0x20) is "inlined" in the function parameter.
#ifdef NONMATCHING
void* JKRDvdArchive::fetchResource(void* buffer, u32 bufferSize, SDIFileEntry* fileEntry,
                                   u32* returnSize) {
    ASSERT(isMounted());
    u32 otherSize;
    u32 size = fileEntry->data_size;
    u32 dstSize = bufferSize;
    JKRCompression fileCompression = JKRConvertAttrToCompressionType(fileEntry->getAttr());

    if (!fileEntry->data) {
        dstSize = ALIGN_PREV(bufferSize, 0x20);
        size = fetchResource_subroutine(mEntryNum, field_0x64 + fileEntry->data_offset,
                                        fileEntry->data_size, (u8*)buffer, dstSize, fileCompression,
                                        mCompression);
    } else {
        if (fileCompression == COMPRESSION_YAZ0) {
            otherSize = getExpandSize(fileEntry);
            if (otherSize) {
                size = otherSize;
            }
        }

        if (size > bufferSize) {
            size = bufferSize;
        }

        JKRHeap::copyMemory(buffer, fileEntry->data, size);
    }

    if (returnSize) {
        *returnSize = size;
    }
    return buffer;
}
#else
asm void* JKRDvdArchive::fetchResource(void* buffer, u32 bufferSize, SDIFileEntry* fileEntry,
                                       u32* returnSize) {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D8168.s"
}
#endif

u32 JKRDvdArchive::fetchResource_subroutine(s32 entryNum, u32 offset, u32 size, u8* dst,
                                            u32 dstLength, JKRCompression fileCompression,
                                            JKRCompression archiveCompression) {
    u32 alignedSize = ALIGN_NEXT(size, 0x20);
    u32 alignedDstLength = ALIGN_PREV(dstLength, 0x20);

    switch (archiveCompression) {
    case COMPRESSION_NONE: {
        switch (fileCompression) {
        case COMPRESSION_NONE:
            if (alignedSize > alignedDstLength) {
                alignedSize = alignedDstLength;
            }

            JKRDvdToMainRam(entryNum, dst, EXPAND_SWITCH_UNKNOWN0, alignedSize, NULL,
                            JKRDvdRipper::ALLOC_DIRECTION_FORWARD, offset, NULL, NULL);
            DCInvalidateRange(dst, alignedSize);
            return alignedSize;
        case COMPRESSION_YAY0:
        case COMPRESSION_YAZ0:
            // The dst pointer to JKRDvdToMainRam should be aligned to 32 bytes. This will align
            // arcHeader to 32 bytes on the stack.
            char arcHeaderBuffer[64];
            SArcHeader* arcHeader = (SArcHeader*)ALIGN_NEXT((u32)arcHeaderBuffer, 0x20);
            JKRDvdToMainRam(entryNum, (u8*)arcHeader, EXPAND_SWITCH_UNKNOWN2, sizeof(SArcHeader),
                            NULL, JKRDvdRipper::ALLOC_DIRECTION_FORWARD, offset, NULL, NULL);
            DCInvalidateRange(arcHeader, sizeof(SArcHeader));

            u32 decompressedSize = JKRDecompExpandSize(arcHeader);
            u32 alignedDecompressedSize = ALIGN_NEXT(decompressedSize, 0x20);
            if (alignedDecompressedSize > alignedDstLength) {
                alignedDecompressedSize = alignedDstLength;
            }

            JKRDvdToMainRam(entryNum, dst, EXPAND_SWITCH_UNKNOWN1, alignedDecompressedSize, NULL,
                            JKRDvdRipper::ALLOC_DIRECTION_FORWARD, offset, NULL, NULL);
            DCInvalidateRange(dst, alignedDecompressedSize);
            return decompressedSize;
        }
    }

    case COMPRESSION_YAZ0: {
        if (size > alignedDstLength) {
            size = alignedDstLength;
        }

        JKRDvdToMainRam(entryNum, dst, EXPAND_SWITCH_UNKNOWN1, size, NULL,
                        JKRDvdRipper::ALLOC_DIRECTION_FORWARD, offset, NULL, NULL);
        DCInvalidateRange(dst, size);
        return size;
    }

    case COMPRESSION_YAY0: {
        const char* file = lbl_8039D1B0;           // "JKRDvdArchive.cpp"
        const char* format = lbl_8039D1B0 + 0x12;  // "%s"
        const char* arg1 = lbl_8039D1B0 + 0x15;    // "Sorry, not applied for SZP archive.\n"
        JUTException_NS_panic_f(file, 0x289, format, arg1);
    }

    default: {
        const char* file = lbl_8039D1B0;           // "JKRDvdArchive.cpp"
        const char* format = lbl_8039D1B0 + 0x12;  // "%s"
        const char* arg1 = lbl_8039D1B0 + 0x3A;    // "??? bad sequence\n"
        JUTException_NS_panic_f(file, 0x28d, format, arg1);
        return 0;
    }
    }
}

u32 JKRDvdArchive::fetchResource_subroutine(s32 entryNum, u32 offset, u32 size, JKRHeap* heap,
                                            JKRCompression fileCompression,
                                            JKRCompression archiveCompression,
                                            u8** returnResource) {
    u32 alignedSize = ALIGN_NEXT(size, 0x20);
    u8* buffer;

    switch (archiveCompression) {
    case COMPRESSION_NONE: {
        switch (fileCompression) {
        case COMPRESSION_NONE:
            buffer = (u8*)JKRAllocFromHeap(heap, alignedSize, sizeof(SArcHeader));
            ASSERT(buffer);

            JKRDvdToMainRam(entryNum, buffer, EXPAND_SWITCH_UNKNOWN0, alignedSize, NULL,
                            JKRDvdRipper::ALLOC_DIRECTION_FORWARD, offset, NULL, NULL);
            DCInvalidateRange(buffer, alignedSize);

            *returnResource = buffer;
            return alignedSize;
        case COMPRESSION_YAY0:
        case COMPRESSION_YAZ0:
            // The dst pointer to JKRDvdToMainRam should be aligned to 32 bytes. This will align
            // arcHeader to 32 bytes on the stack.
            char arcHeaderBuffer[64];
            SArcHeader* arcHeader = (SArcHeader*)ALIGN_NEXT((u32)arcHeaderBuffer, 0x20);
            JKRDvdToMainRam(entryNum, (u8*)arcHeader, EXPAND_SWITCH_UNKNOWN2, sizeof(SArcHeader),
                            NULL, JKRDvdRipper::ALLOC_DIRECTION_FORWARD, offset, NULL, NULL);
            DCInvalidateRange(arcHeader, sizeof(SArcHeader));

            alignedSize = JKRDecompExpandSize(arcHeader);
            buffer = (u8*)JKRAllocFromHeap(heap, alignedSize, sizeof(SArcHeader));
            ASSERT(buffer);
            JKRDvdToMainRam(entryNum, buffer, EXPAND_SWITCH_UNKNOWN1, alignedSize, NULL,
                            JKRDvdRipper::ALLOC_DIRECTION_FORWARD, offset, NULL, NULL);
            DCInvalidateRange(buffer, alignedSize);

            *returnResource = buffer;
            return alignedSize;
        }
    }

    case COMPRESSION_YAZ0: {
        buffer = (u8*)JKRAllocFromHeap(heap, alignedSize, sizeof(SArcHeader));
        ASSERT(buffer);

        JKRDvdToMainRam(entryNum, buffer, EXPAND_SWITCH_UNKNOWN1, size, NULL,
                        JKRDvdRipper::ALLOC_DIRECTION_FORWARD, offset, NULL, NULL);
        DCInvalidateRange(buffer, size);

        *returnResource = buffer;
        return alignedSize;
    }

    case COMPRESSION_YAY0: {
        const char* file = lbl_8039D1B0;           // "JKRDvdArchive.cpp"
        const char* format = lbl_8039D1B0 + 0x12;  // "%s"
        const char* arg1 = lbl_8039D1B0 + 0x4c;    // "Sorry, not applied SZP archive.\n"
        JUTException_NS_panic_f(file, 0x2f2, format, arg1);
    }

    default: {
        const char* file = lbl_8039D1B0;           // "JKRDvdArchive.cpp"
        const char* format = lbl_8039D1B0 + 0x12;  // "%s"
        const char* arg1 = lbl_8039D1B0 + 0x3A;    // "??? bad sequence\n"
        JUTException_NS_panic_f(file, 0x2f6, format, arg1);
        return 0;
    }
    }
}

u32 JKRDvdArchive::getExpandedResSize(const void* resource) {
    u32 resourceSize;
    if (!mExpandedSize) {
        return getResSize(resource);
    }

    SDIFileEntry* fileEntry = findPtrResource(resource);
    if (!fileEntry) {
        return -1;
    }

    if (!fileEntry->isCompressed()) {
        return getResSize(resource);
    }

    resourceSize = getExpandSize(fileEntry);
    if (resourceSize) {
        return resourceSize;
    }

    // The dst pointer to JKRDvdToMainRam should be aligned to 32 bytes. This will align arcHeader
    // to 32 bytes on the stack.
    char buffer[64];
    SArcHeader* arcHeader = (SArcHeader*)ALIGN_NEXT((u32)buffer, 0x20);
    JKRDvdToMainRam(mEntryNum, (u8*)arcHeader, EXPAND_SWITCH_UNKNOWN2, sizeof(*arcHeader), NULL,
                    JKRDvdRipper::ALLOC_DIRECTION_FORWARD,
                    this->field_0x64 + fileEntry->data_offset, NULL, NULL);
    DCInvalidateRange(arcHeader, sizeof(*arcHeader));

    resourceSize = JKRDecompExpandSize(arcHeader);
    setExpandSize(fileEntry, resourceSize);

    return resourceSize;
}

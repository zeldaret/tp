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

#if NONMATCHING
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

    JKRDvdRipper::loadToMainRAM(entryNum, (u8*)arcHeader, EXPAND_SWITCH_UNKNOWN1,
                                sizeof(SArcHeader), NULL, MOUNT_DIRECTION_HEAD, 0, &mCompression,
                                NULL);
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

    JKRDvdRipper::loadToMainRAM(entryNum, (u8*)mArcInfoBlock, EXPAND_SWITCH_UNKNOWN1, arcHeader->file_data_offset,
                  NULL, MOUNT_DIRECTION_HEAD, sizeof(SArcHeader), NULL, NULL);
    DCInvalidateRange(mArcInfoBlock, arcHeader->file_data_offset);

    mNodes = (SDirEntry*)((int)&mArcInfoBlock->num_nodes + mArcInfoBlock->node_offset);
    mFiles = (SDIFileEntry*)((int)&mArcInfoBlock->num_nodes + mArcInfoBlock->file_entry_offset);
    mStringTable = (char*)((int)&mArcInfoBlock->num_nodes + mArcInfoBlock->string_table_offset);
    mExpandedSize = NULL;

    bool useCompression = false;
    SDIFileEntry* fileEntry = mFiles;
    for(u32 i = 0; i < mArcInfoBlock->num_file_entries; fileEntry++, i++) {
        if (!fileEntry->isUnknownFlag1()) {
            useCompression |= fileEntry->isCompressed();
        }
    }

    if (useCompression) {
        alignment = abs(alignment);
        mExpandedSize = (s32*)JKRAllocFromHeap(mHeap, sizeof(s32) * mArcInfoBlock->num_file_entries, alignment);
        if (mExpandedSize) {
            free(sSystemHeap, (this->base).mArcInfoBlock);
            (this->base).mMountMode = MOUNT_UNKNOWN;
            goto LAB_802d7fe8;
        }
        memset(mExpandedSize, 0, sizeof(s32) * mArcInfoBlock->num_file_entries);
    }

    field_0x64 = arcHeader->header_length + arcHeader->file_data_offset;

LAB_802d7fe8:
    if (arcHeader != (SArcHeader*)0x0) {
        free(sSystemHeap, arcHeader);
    }
    if ((this->base).mMountMode == MOUNT_UNKNOWN) {
        dvdFile = this->mDvdFile;
        if ((dvdFile != (JKRDvdFile*)0x0) && (dvdFile != (JKRDvdFile*)0x0)) {
            (*(code*)dvdFile->vtable->dtor)(dvdFile, 1);
        }
        result = false;
    } else {
        result = true;
    }
    return result;
}
#else
asm bool JKRDvdArchive::open(s32 entryNum) {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D7DB4.s"
}
#endif

asm void* JKRDvdArchive::fetchResource(SDIFileEntry*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D8050.s"
}

asm void* JKRDvdArchive::fetchResource(void*, u32, SDIFileEntry*, u32*) {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D8168.s"
}

asm void JKRDvdArchive::fetchResource_subroutine(long, u32, u32, u8*, u32, int, int) {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D826C.s"
}

asm void JKRDvdArchive::fetchResource_subroutine(long, u32, u32, JKRHeap*, int, int, u8**) {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D8474.s"
}

asm u32 JKRDvdArchive::getExpandedResSize(void const*) const {
    nofralloc
#include "JSystem/JKernel/JKRDvdArchive/asm/func_802D8698.s"
}

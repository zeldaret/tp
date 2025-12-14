#include "binaryFileFormat.h"

#include <revolution/types.h>

#include "inlines.h"

namespace nw4hbm {
    namespace ut {

        bool IsValidBinaryFile(BinaryFileHeader const* header, u32 signature, u16 version,
                               u16 minBlocks) {
            if (header->signature != signature)
                return FALSE;

            // U+FEFF * BYTE ORDER MARK
            if (header->byteOrder != 0xFEFF)
                return FALSE;

            if (header->version != version)
                return FALSE;

            if (header->fileSize < sizeof *header + sizeof(BinaryBlockHeader) * minBlocks) {
                return FALSE;
            }

            if (header->dataBlocks < minBlocks)
                return FALSE;

            return TRUE;
        }

        bool IsReverseEndianBinaryFile(BinaryFileHeader const* fileHeader) {
            // U+FEFF * BYTE ORDER MARK
            return fileHeader->byteOrder != 0xFEFF;
        }

        BinaryBlockHeader* GetNextBinaryBlockHeader(BinaryFileHeader* fileHeader,
                                                    BinaryBlockHeader* blockHeader) {
            void* ptr;

            if (!IsReverseEndianBinaryFile(fileHeader)) {
                if (!blockHeader) {
                    if (fileHeader->dataBlocks == 0)
                        return NULL;

                    ptr = AddOffsetToPtr(fileHeader, fileHeader->headerSize);
                } else {
                    ptr = AddOffsetToPtr(blockHeader, blockHeader->size);
                }

                if (ptr >= AddOffsetToPtr(fileHeader, fileHeader->fileSize))
                    return NULL;
            } else {
                if (!blockHeader) {
                    if (fileHeader->dataBlocks == 0)
                        return NULL;

                    ptr = AddOffsetToPtr(fileHeader, ReverseEndian(fileHeader->headerSize));
                } else {
                    ptr = AddOffsetToPtr(blockHeader, ReverseEndian(blockHeader->size));
                }

                if (ptr >= AddOffsetToPtr(fileHeader, ReverseEndian(fileHeader->fileSize))) {
                    return NULL;
                }
            }

            return static_cast<BinaryBlockHeader*>(ptr);
        }

    }  // namespace ut
}  // namespace nw4hbm

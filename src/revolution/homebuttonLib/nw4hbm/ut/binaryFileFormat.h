#ifndef NW4HBM_UT_BINARY_FILE_HEADER_H
#define NW4HBM_UT_BINARY_FILE_HEADER_H

#include <revolution/types.h>

namespace nw4hbm {
    namespace ut {
        struct BinaryFileHeader {
            u32 signature;   // size 0x04, offset 0x00
            u16 byteOrder;   // size 0x02, offset 0x04
            u16 version;     // size 0x02, offset 0x06
            u32 fileSize;    // size 0x04, offset 0x08
            u16 headerSize;  // size 0x02, offset 0x0c
            u16 dataBlocks;  // size 0x02, offset 0x0e
        };  // size 0x10

        struct BinaryBlockHeader {
            u32 kind;  // size 0x04, offset 0x00
            u32 size;  // size 0x04, offset 0x04
        };  // size 0x08

        bool IsValidBinaryFile(BinaryFileHeader const* header, u32 signature, u16 version,
                               u16 minBlocks);
        bool IsReverseEndianBinaryFile(BinaryFileHeader const* fileHeader);
        BinaryBlockHeader* GetNextBinaryBlockHeader(BinaryFileHeader* fileHeader,
                                                    BinaryBlockHeader* blockHeader);

    }  // namespace ut
}  // namespace nw4hbm

#endif  // NW4HBM_UT_BINARY_FILE_HEADER_H

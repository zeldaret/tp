#include "ResFont.h"

#include "../macros.h"
#include "global.h"

#include <revolution/types.h>

#include "Font.h"
#include "binaryFileFormat.h"

namespace nw4hbm {
    namespace ut {
        namespace {
            template <typename T>
            inline void ResolveOffset(T*& ptr, void* base) {
                *reinterpret_cast<u32*>(&ptr) =
                    reinterpret_cast<u32>(base) + reinterpret_cast<u32>(ptr);
            }
        }  // namespace
    }  // namespace ut
}  // namespace nw4hbm

namespace nw4hbm {
    namespace ut {

        ResFont::ResFont() {}

        ResFont::~ResFont() {}

        bool ResFont::SetResource(void* brfnt) {
            FontInformation* pFontInfo = NULL;
            BinaryFileHeader* fileHeader = static_cast<BinaryFileHeader*>(brfnt);

            if (!IsManaging(NULL))
                return FALSE;

            if (fileHeader->signature == SIGNATURE_FONT_UNPACKED) {
                BinaryBlockHeader* blockHeader;
                int nBlocks = 0;

                blockHeader =
                    POINTER_ADD_TYPE(BinaryBlockHeader*, fileHeader, fileHeader->headerSize);

                while (nBlocks < fileHeader->dataBlocks) {
                    if (blockHeader->kind == SIGNATURE_FONT_INFO) {
                        pFontInfo =
                            POINTER_ADD_TYPE(FontInformation*, blockHeader, sizeof *blockHeader);

                        break;
                    }

                    blockHeader =
                        POINTER_ADD_TYPE(BinaryBlockHeader*, blockHeader, blockHeader->size);
                    ++nBlocks;
                }
            } else {
                if (fileHeader->version == FILE_VERSION) {
                    if (!IsValidBinaryFile(fileHeader, SIGNATURE_FONT, FILE_VERSION, 2))
                        return FALSE;
                } else {
                    if (!IsValidBinaryFile(fileHeader, SIGNATURE_FONT, NW4HBM_FILE_VERSION(1, 2),
                                           2))
                    {
                        return FALSE;
                    }
                }

                pFontInfo = Rebuild(fileHeader);
            }

            if (!pFontInfo)
                return FALSE;

            SetResourceBuffer(brfnt, pFontInfo);
            InitReaderFunc(GetEncoding());

            return TRUE;
        }

        void* ResFont::RemoveResource() {
            return RemoveResourceBuffer();
        }

        FontInformation* ResFont::Rebuild(BinaryFileHeader* fileHeader) {
            BinaryBlockHeader* blockHeader;
            FontInformation* info = NULL;
            int nBlocks = 0;

            blockHeader = POINTER_ADD_TYPE(BinaryBlockHeader*, fileHeader, fileHeader->headerSize);

            while (nBlocks < fileHeader->dataBlocks) {
                switch (blockHeader->kind) {
                case SIGNATURE_FONT_INFO: {
                    info = POINTER_ADD_TYPE(FontInformation*, blockHeader, sizeof *blockHeader);

                    // no check
                    ResolveOffset(info->pGlyph, fileHeader);

                    if (info->pWidth)
                        ResolveOffset(info->pWidth, fileHeader);

                    if (info->pMap)
                        ResolveOffset(info->pMap, fileHeader);
                } break;

                case SIGNATURE_FONT_TEX_GLYPH: {
                    FontTextureGlyph* glyph =
                        POINTER_ADD_TYPE(FontTextureGlyph*, blockHeader, sizeof *blockHeader);

                    // no check
                    ResolveOffset(glyph->sheetImage, fileHeader);
                } break;

                case SIGNATURE_FONT_CHAR_WIDTH: {
                    FontWidth* width =
                        POINTER_ADD_TYPE(FontWidth*, blockHeader, sizeof *blockHeader);

                    if (width->pNext)
                        ResolveOffset(width->pNext, fileHeader);
                } break;

                case SIGNATURE_FONT_CODE_MAP: {
                    FontCodeMap* map =
                        POINTER_ADD_TYPE(FontCodeMap*, blockHeader, sizeof *blockHeader);

                    if (map->pNext)
                        ResolveOffset(map->pNext, fileHeader);
                } break;

                case SIGNATURE_FONT_GLGR:
                    break;

                default:
                    return NULL;
                }

                blockHeader = POINTER_ADD_TYPE(BinaryBlockHeader*, blockHeader, blockHeader->size);
                ++nBlocks;
            }

            fileHeader->signature = SIGNATURE_FONT_UNPACKED;

            return info;
        }

    }  // namespace ut
}  // namespace nw4hbm

#include "ResFontBase.h"

#include <revolution/types.h>

#include "Font.h"

#include <revolution/gx/GXEnum.h>

struct CMapScanEntry {
    u16 ccode;                                          // size 0x02, offset 0x00
    nw4hbm::ut::detail::ResFontBase::GlyphIndex index;  // size 0x02, offset 0x02
};  // size 0x04

struct CMapInfoScan {
    u16 num;                  // size 0x02, offset 0x00
    CMapScanEntry entries[];  // flexible,  offset 0x02 (unit size 0x04)
};  // size 0x02 (flexible)

namespace nw4hbm {
    namespace ut {
        namespace detail {

            ResFontBase::ResFontBase() : mResource(NULL), mFontInfo(NULL) {}

            ResFontBase::~ResFontBase() {}

            void ResFontBase::SetResourceBuffer(void* pUserBuffer, FontInformation* pFontInfo) {
                mResource = pUserBuffer;
                mFontInfo = pFontInfo;
            }

            void* ResFontBase::RemoveResourceBuffer() {
                void* pUserData = mResource;

                mResource = NULL;
                mFontInfo = NULL;

                return pUserData;
            }

            int ResFontBase::GetWidth() const {
                return mFontInfo->width;
            }

            int ResFontBase::GetHeight() const {
                return mFontInfo->height;
            }

            int ResFontBase::GetAscent() const {
                return mFontInfo->ascent;
            }

            int ResFontBase::GetDescent() const {
                return mFontInfo->height - mFontInfo->ascent;
            }

            int ResFontBase::GetBaselinePos() const {
                return mFontInfo->pGlyph->baselinePos;
            }

            int ResFontBase::GetCellHeight() const {
                return mFontInfo->pGlyph->cellHeight;
            }

            int ResFontBase::GetCellWidth() const {
                return mFontInfo->pGlyph->cellWidth;
            }

            int ResFontBase::GetMaxCharWidth() const {
                return mFontInfo->pGlyph->maxCharWidth;
            }

            Font::Type ResFontBase::GetType() const {
                return TYPE_RESOURCE;
            }

            GXTexFmt ResFontBase::GetTextureFormat() const {
                return static_cast<GXTexFmt>(mFontInfo->pGlyph->sheetFormat);
            }

            int ResFontBase::GetLineFeed() const {
                return mFontInfo->linefeed;
            }

            CharWidths ResFontBase::GetDefaultCharWidths() const {
                return mFontInfo->defaultWidth;
            }

            void ResFontBase::SetDefaultCharWidths(CharWidths const& widths) {
                mFontInfo->defaultWidth = widths;
            }

            bool ResFontBase::SetAlternateChar(u16 c) {
                GlyphIndex index = FindGlyphIndex(c);

                if (index != GLYPH_INDEX_NOT_FOUND) {
                    mFontInfo->alterCharIndex = index;

                    return TRUE;
                } else {
                    return FALSE;
                }
            }

            void ResFontBase::SetLineFeed(int linefeed) {
                mFontInfo->linefeed = linefeed;
            }

            int ResFontBase::GetCharWidth(u16 c) const {
                return GetCharWidths(c).charWidth;
            }

            CharWidths ResFontBase::GetCharWidths(u16 c) const {
                GlyphIndex index = GetGlyphIndex(c);

                return GetCharWidthsFromIndex(index);
            }

            void ResFontBase::GetGlyph(Glyph* glyph, u16 c) const {
                GlyphIndex index = GetGlyphIndex(c);

                GetGlyphFromIndex(glyph, index);
            }

            FontEncoding ResFontBase::GetEncoding() const {
                return static_cast<FontEncoding>(mFontInfo->encoding);
            }

            ResFontBase::GlyphIndex ResFontBase::GetGlyphIndex(u16 c) const {
                GlyphIndex index = FindGlyphIndex(c);

                return index != GLYPH_INDEX_NOT_FOUND ? index : mFontInfo->alterCharIndex;
            }

            ResFontBase::GlyphIndex ResFontBase::FindGlyphIndex(u16 c) const {
                FontCodeMap* pMap;

                for (pMap = mFontInfo->pMap; pMap; pMap = pMap->pNext) {
                    if (pMap->ccodeBegin <= c && c <= pMap->ccodeEnd)
                        return FindGlyphIndex(pMap, c);
                }

                return GLYPH_INDEX_NOT_FOUND;
            }

            ResFontBase::GlyphIndex ResFontBase::FindGlyphIndex(FontCodeMap const* pMap,
                                                                u16 c) const {
                GlyphIndex index = GLYPH_INDEX_NOT_FOUND;

                switch (pMap->mappingMethod) {
                case FONT_MAPMETHOD_DIRECT: {
                    u16 offset = *pMap->mapInfo;

                    index = c - pMap->ccodeBegin + offset;
                } break;

                case FONT_MAPMETHOD_TABLE: {
                    int table_index = c - pMap->ccodeBegin;

                    index = pMap->mapInfo[table_index];
                } break;

                case FONT_MAPMETHOD_SCAN: {
                    CMapInfoScan const* scanInfo =
                        reinterpret_cast<CMapInfoScan const*>(pMap->mapInfo);

                    CMapScanEntry const* first = scanInfo->entries;
                    CMapScanEntry const* last = scanInfo->entries + (scanInfo->num - 1);

                    while (first <= last) {
                        CMapScanEntry const* mid = first + (last - first) / 2;

                        if (mid->ccode < c) {
                            first = mid + 1;
                        } else if (c < mid->ccode) {
                            last = mid - 1;
                        } else {
                            index = mid->index;
                            break;
                        }
                    }
                } break;

                default:
                    // stripped assert?
                    (void)0;

                    break;
                }

                return index;
            }

            CharWidths const& ResFontBase::GetCharWidthsFromIndex(GlyphIndex index) const {
                FontWidth const* pWidth;

                for (pWidth = mFontInfo->pWidth; pWidth; pWidth = pWidth->pNext) {
                    if (pWidth->indexBegin <= index && index <= pWidth->indexEnd)
                        return GetCharWidthsFromIndex(pWidth, index);
                }

                return mFontInfo->defaultWidth;
            }

            CharWidths const& ResFontBase::GetCharWidthsFromIndex(FontWidth const* pWidth,
                                                                  GlyphIndex index) const {
                return pWidth->widthTable[index - pWidth->indexBegin];
            }

            void ResFontBase::GetGlyphFromIndex(Glyph* glyph, GlyphIndex index) const {
                FontTextureGlyph const& tg = *mFontInfo->pGlyph;

                u32 cellsInASheet = tg.sheetRow * tg.sheetLine;
                u32 sheetNo = index / cellsInASheet;
                u32 cellNo = index % cellsInASheet;
                u32 cellUnitX = cellNo % tg.sheetRow;
                u32 cellUnitY = cellNo / tg.sheetRow;
                u32 cellPixelX = cellUnitX * (tg.cellWidth + 1);
                u32 cellPixelY = cellUnitY * (tg.cellHeight + 1);
                u32 offsetBytes = sheetNo * tg.sheetSize;
                void* pSheet = tg.sheetImage + offsetBytes;

                glyph->pTexture = pSheet;
                glyph->widths = GetCharWidthsFromIndex(index);
                glyph->height = tg.cellHeight;
                glyph->texFormat = static_cast<GXTexFmt>(tg.sheetFormat);
                glyph->texWidth = tg.sheetWidth;
                glyph->texHeight = tg.sheetHeight;
                glyph->cellX = cellPixelX + 1;
                glyph->cellY = cellPixelY + 1;
            }

        }  // namespace detail
    }  // namespace ut
}  // namespace nw4hbm

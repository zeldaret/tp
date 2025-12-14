#ifndef NW4HBM_UT_RES_FONT_BASE_H
#define NW4HBM_UT_RES_FONT_BASE_H

#include <revolution/types.h>

#include "Font.h"

#include <revolution/gx/GXEnum.h>

namespace nw4hbm {
    namespace ut {
        namespace detail {
            class ResFontBase : public Font {
                // typedefs
            public:
                typedef u16 GlyphIndex;
                static GlyphIndex const GLYPH_INDEX_NOT_FOUND = 0xffff;

                // methods
            public:
                // cdtors
                ResFontBase();
                virtual ~ResFontBase();

                // virtual function ordering
                // vtable Font
                virtual int GetWidth() const;
                virtual int GetHeight() const;
                virtual int GetAscent() const;
                virtual int GetDescent() const;
                virtual int GetBaselinePos() const;
                virtual int GetCellHeight() const;
                virtual int GetCellWidth() const;
                virtual int GetMaxCharWidth() const;
                virtual Type GetType() const;
                virtual GXTexFmt GetTextureFormat() const;
                virtual int GetLineFeed() const;
                virtual CharWidths GetDefaultCharWidths() const;
                virtual void SetDefaultCharWidths(CharWidths const& widths);
                virtual bool SetAlternateChar(u16 c);
                virtual void SetLineFeed(int linefeed);
                virtual int GetCharWidth(u16 c) const;
                virtual CharWidths GetCharWidths(u16 c) const;
                virtual void GetGlyph(Glyph* glyph, u16 c) const;
                virtual FontEncoding GetEncoding() const;

                // methods
                GlyphIndex GetGlyphIndex(u16 c) const;
                CharWidths const& GetCharWidthsFromIndex(GlyphIndex index) const;
                CharWidths const& GetCharWidthsFromIndex(FontWidth const* pWidth,
                                                         GlyphIndex index) const;
                void GetGlyphFromIndex(Glyph* glyph, GlyphIndex index) const;
                bool IsManaging(void const* ptr) const { return mResource == ptr; }

                void SetResourceBuffer(void* pUserBuffer, FontInformation* pFontInfo);
                void* RemoveResourceBuffer();

                GlyphIndex FindGlyphIndex(u16 c) const;
                GlyphIndex FindGlyphIndex(FontCodeMap const* pMap, u16 c) const;

                // members
            private:
                /* base Font */              // size 0x10, offset 0x00
                void* mResource;             // size 0x04, offset 0x10
                FontInformation* mFontInfo;  // size 0x04, offset 0x14
            };  // size 0x18
        }  // namespace detail
    }  // namespace ut
}  // namespace nw4hbm

#endif  // NW4HBM_UT_RES_FONT_BASE_H

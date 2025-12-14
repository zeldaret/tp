#ifndef NW4HBM_UT_ROM_FONT_H
#define NW4HBM_UT_ROM_FONT_H

#include <revolution/types.h>

#include "Font.h"

#include <revolution/gx/GXEnum.h>
#include <revolution/os/OSFont.h>

namespace nw4hbm {
    namespace ut {
        class RomFont : public Font {
            // methods
        public:
            // cdtors
            RomFont();
            virtual ~RomFont();

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
            u32 GetRequireBufferSize();

            bool Load(void* buffer);
            void* Unload();
            void MakeCharPtr(char* buffer, u16 c) const;
            u16 HandleUndefinedChar(u16 c) const;

            // static members
        private:
            static u16 mFontEncode;

            // members
        private:
            /* base Font */             // size 0x10, offset 0x00
            OSFontHeader* mFontHeader;  // size 0x04, offset 0x10
            CharWidths mDefaultWidths;  // size 0x03, offset 0x14
            /* 1 byte padding */
            u16 mAlternateChar;  // size 0x02, offset 0x18
                                 /* 2 bytes padding */
        };  // size 0x1c
    }  // namespace ut
}  // namespace nw4hbm

#endif  // NW4HBM_UT_ROM_FONT_H

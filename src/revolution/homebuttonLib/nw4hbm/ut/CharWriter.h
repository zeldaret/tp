#ifndef NW4HBM_UT_CHAR_WRITER_H
#define NW4HBM_UT_CHAR_WRITER_H

#include <revolution/gx/GXEnum.h>
#include <revolution/types.h>

#include "Color.h"

#include "../math/types.h"

// context declarations
namespace nw4hbm { namespace ut { class Font; }}
namespace nw4hbm { namespace ut { struct Glyph; }}

namespace nw4hbm {
    namespace ut {
        class CharWriter {
            // enums
        public:
            enum GradationMode {
                GRADMODE_NONE,
                GRADMODE_H,
                GRADMODE_V,

                NUM_OF_GRADMODE
            };

            // nested types
        private:
            struct ColorMapping {
                Color min;  // size 0x04, offset 0x00
                Color max;  // size 0x04, offset 0x04
            };  // size 0x08

            struct VertexColor {
                Color lu;  // size 0x04, offset 0x00
                Color ru;  // size 0x04, offset 0x04
                Color ld;  // size 0x04, offset 0x08
                Color rd;  // size 0x04, offset 0x0c
            };  // size 0x10

            struct TextColor {
                Color start;                  // size 0x04, offset 0x00
                Color end;                    // size 0x04, offset 0x04
                GradationMode gradationMode;  // size 0x04, offset 0x08
            };  // size 0x0c

            struct TextureFilter {
                // methods
            public:
                // operators
                bool operator!=(TextureFilter const& rhs) const {
                    return atSmall != rhs.atSmall || atLarge != rhs.atLarge;
                }

                // members
            public:
                GXTexFilter atSmall;  // size 0x04, offset 0x00
                GXTexFilter atLarge;  // size 0x04, offset 0x04
            };  // size 0x08

            struct LoadingTexture {
                // methods
            public:
                // operators
                bool operator!=(LoadingTexture const& rhs) const {
                    return slot != rhs.slot || texture != rhs.texture || filter != rhs.filter;
                }

                // methods
                void Reset() {
                    slot = GX_TEXMAP_NULL;
                    texture = NULL;
                }

                // members
            public:
                GXTexMapID slot;       // size 0x04, offset 0x00
                void* texture;         // size 0x04, offset 0x04
                TextureFilter filter;  // size 0x08, offset 0x08
            };  // size 0x10

            // methods
        public:
            // cdtors
            CharWriter();
            ~CharWriter();

            // methods
            Color GetColorMappingMin() const;
            Color GetColorMappingMax() const;
            Color GetTextColor() const;
            Color GetGradationStartColor() const;
            Color GetGradationEndColor() const;
            GradationMode GetGradationMode() const;
            f32 GetScaleH() const;
            f32 GetScaleV() const;
            f32 GetCursorX() const;
            f32 GetCursorY() const;
            f32 GetCursorZ() const;
            bool IsLinearFilterEnableAtSmall() const;
            bool IsLinearFilterEnableAtLarge() const;
            u8 GetAlpha() const;
            Font const* GetFont() const;

            void SetColorMapping(Color min, Color max);
            void SetScale(f32 hScale, f32 vScale);
            void SetScale(f32 scale);
            void SetCursor(f32 x, f32 y);
            void SetCursor(f32 x, f32 y, f32 z);
            void MoveCursor(f32 dx, f32 dy);
            void MoveCursor(f32 dx, f32 dy, f32 dz);
            void SetCursorX(f32 x);
            void SetCursorY(f32 y);
            void SetCursorZ(f32 z);
            void MoveCursorX(f32 dx);
            void MoveCursorY(f32 dy);
            void MoveCursorZ(f32 dz);
            void EnableLinearFilter(bool atSmall, bool atLarge);
            void EnableFixedWidth(bool isFixed);
            void SetFixedWidth(f32 width);
            void SetFont(Font const& font);

            f32 GetFontWidth() const;
            f32 GetFontHeight() const;
            f32 GetFontAscent() const;
            f32 GetFontDescent() const;
            bool IsWidthFixed() const;
            f32 GetFixedWidth() const;

            void SetGradationMode(GradationMode mode);
            void SetTextColor(Color color);
            void SetTextColor(Color start, Color end);
            void SetFontSize(f32 width, f32 height);
            void SetFontSize(f32 height);
            void SetAlpha(u8 alpha);

            void SetupGX();
            void ResetColorMapping();
            void ResetTextureCache();
            f32 Print(u16 code);
            void DrawGlyph(Glyph const& glyph);
            void PrintGlyph(f32 x, f32 y, f32 z, Glyph const& glyph);
            void LoadTexture(Glyph const& glyph, GXTexMapID slot);
            void UpdateVertexColor();

            // static methods
        private:
            static void SetupVertexFormat();

            static void SetupGXDefault();
            static void SetupGXWithColorMapping(Color min, Color max);
            static void SetupGXForI();
            static void SetupGXForRGBA();

            // static members
        private:
            static LoadingTexture mLoadingTexture;

            // members
        private:
            ColorMapping mColorMapping;  // size 0x08, offset 0x00
            VertexColor mVertexColor;    // size 0x10, offset 0x08
            TextColor mTextColor;        // size 0x0c, offset 0x18
            math::VEC2 mScale;           // size 0x08, offset 0x24
            math::VEC3 mCursorPos;       // size 0x0c, offset 0x2c
            TextureFilter mFilter;       // size 0x04, offset 0x38
            u8 padding_[2];
            u8 mAlpha;           // size 0x01, offset 0x42
            bool mIsWidthFixed;  // size 0x01, offset 0x43
            f32 mFixedWidth;     // size 0x04, offset 0x44
            Font const* mFont;   // size 0x04, offset 0x48
        };  // size 0x4c
    }  // namespace ut
}  // namespace nw4hbm

#endif  // NW4HBM_UT_CHAR_WRITER_H

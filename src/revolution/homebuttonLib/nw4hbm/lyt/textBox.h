#ifndef NW4HBM_LYT_TEXT_BOX_H
#define NW4HBM_LYT_TEXT_BOX_H

#include <revolution/types.h>

#include "../macros.h"

#include "common.h"
#include "pane.h"

#include "../ut/Color.h"
#include "../ut/Rect.h"

// context declarations
namespace nw4hbm { namespace lyt { struct ResBlockSet; }}
namespace nw4hbm { namespace ut { class Font; }}
namespace nw4hbm { namespace ut { template <typename> class TagProcessorBase; }}
namespace nw4hbm { namespace ut { template <typename> class TextWriterBase; }}
namespace nw4hbm { namespace ut { namespace detail { class RuntimeTypeInfo; }}}

namespace nw4hbm {
    namespace lyt {
        namespace res {
            struct Font {
                u32 nameStrOffset;  // size 0x04, offset 0x00
                u8 type;            // size 0x01, offset 0x04
                u8 padding[3];
            };  // size 0x08

            static u32 const SIGNATURE_TEXT_BOX_BLOCK = NW4HBM_FOUR_CHAR('t', 'x', 't', '1');

            struct TextBox : public Pane {
                /* base Pane */    // size 0x4c, offset 0x00
                u16 textBufBytes;  // size 0x02, offset 0x4c
                u16 textStrBytes;  // size 0x02, offset 0x4e
                u16 materialIdx;   // size 0x02, offset 0x50
                u16 fontIdx;       // size 0x02, offset 0x52
                u8 textPosition;   // size 0x01, offset 0x54
                u8 padding[3];
                u32 textStrOffset;  // size 0x04, offset 0x58
                u32 textCols[2];    // size 0x08, offset 0x5c
                Size fontSize;      // size 0x08, offset 0x64
                f32 charSpace;      // size 0x04, offset 0x6c
                f32 lineSpace;      // size 0x04, offset 0x70
            };  // size 0x74
        }  // namespace res

        class TextBox : public Pane {
            // methods
        public:
            // cdtors
            TextBox(u16 allocStrLen);
            TextBox(u16 allocStrLen, wchar_t const* str, ut::Font const* pFont);
            TextBox(u16 allocStrLen, wchar_t const* str, u16 strLen, ut::Font const* pFont);
            TextBox(res::TextBox const* pBlock, ResBlockSet const& resBlockSet);
            virtual ~TextBox();

            // virtual function ordering
            // vtable Pane
            virtual ut::detail::RuntimeTypeInfo const* GetRuntimeTypeInfo() const {
                return &typeInfo;
            }

            virtual void DrawSelf(DrawInfo const& drawInfo);
            virtual ut::Color GetVtxColor(u32 idx) const;
            virtual void SetVtxColor(u32 idx, ut::Color value);
            virtual u8 GetVtxColorElement(u32 idx) const;
            virtual void SetVtxColorElement(u32 idx, u8 value);

            // vtable TextBox
            virtual void AllocStringBuffer(u16 minLen);
            virtual void FreeStringBuffer();
            virtual u16 SetString(wchar_t const* str, u16 dstIdx);
            virtual u16 SetString(wchar_t const* str, u16 dstIdx, u16 strLen);

            // methods
            ut::Color GetTextColor(u32 type) const { return mTextColors[type]; }
            Size GetFontSize() const { return mFontSize; }

            void SetFontSize(Size const& fontSize) { mFontSize = fontSize; }
            void SetTagProcessor(ut::TagProcessorBase<wchar_t>* pTagProcessor) {
                mpTagProcessor = pTagProcessor;
            }

            void SetTextColor(u32 type, ut::Color value) { mTextColors[type] = value; }

            ut::Font const* GetFont() const;
            u16 GetStringBufferLength() const;
            ut::Rect GetTextDrawRect(ut::TextWriterBase<wchar_t>* pWriter) const;
            f32 GetTextMagH() const;
            f32 GetTextMagV() const;
            u8 GetTextPositionH() const { return detail::GetHorizontalPosition(mTextPosition); }

            u8 GetTextPositionV() const { return detail::GetVerticalPosition(mTextPosition); }

            ut::Rect GetTextDrawRect(DrawInfo const& drawInfo) const;

            void SetFont(ut::Font const* pFont);
            void SetTextPositionH(u8 pos) { detail::SetHorizontalPosition(&mTextPosition, pos); }

            void SetTextPositionV(u8 pos) { detail::SetVerticalPosition(&mTextPosition, pos); }

            void Init(u16 allocStrLen);

            // static members
        public:
            static ut::detail::RuntimeTypeInfo const typeInfo;

            // members
        private:
            /* base Pane */                                 // size 0xd4, offset 0x00
            wchar_t* mTextBuf;                              // size 0x04, offset 0xd4
            ut::Color mTextColors[2];                       // size 0x08, offset 0xd8
            ut::Font const* mpFont;                         // size 0x04, offset 0xe0
            Size mFontSize;                                 // size 0x08, offset 0xe4
            f32 mLineSpace;                                 // size 0x04, offset 0xec
            f32 mCharSpace;                                 // size 0x04, offset 0xf0
            ut::TagProcessorBase<wchar_t>* mpTagProcessor;  // size 0x04, offset 0xf4
            u16 mTextBufBytes;                              // size 0x02, offset 0xf8
            u16 mTextLen;                                   // size 0x02, offset 0xfa
            u8 mTextPosition;                               // size 0x01, offset 0xfc

            struct /* explicitly untagged */
            {
                u8 allocFont : 1;  // size 1, offset 0x00:0 // bool
                                   /* 7 bits padding */
            } mTextBoxFlag;        // size 0x01, offset 0xfd
                                   /* 2 bytes padding */
        };  // size 0x100
    }  // namespace lyt
}  // namespace nw4hbm

#endif  // NW4HBM_LYT_TEXT_BOX_H

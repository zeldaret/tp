#include "TagProcessorBase.h"

#include <revolution/types.h>

#include "Font.h"  // IWYU pragma: keep (text)
#include "Rect.h"
#include "TextWriterBase.h"

namespace nw4hbm {
    namespace ut {

        template <typename CharT>
        TagProcessorBase<CharT>::TagProcessorBase() {}

        template <typename CharT>
        TagProcessorBase<CharT>::~TagProcessorBase() {}

        template <typename CharT>
        Operation TagProcessorBase<CharT>::Process(u16 code, PrintContext<CharT>* context) {
            switch (code) {
            case L'\n':
                ProcessLinefeed(context);
                return OPERATION_NEXT_LINE;

            case L'\t':
                ProcessTab(context);
                return OPERATION_NO_CHAR_SPACE;

            default:
                return OPERATION_DEFAULT;
            }
        }

        template <typename CharT>
        Operation TagProcessorBase<CharT>::CalcRect(Rect* pRect, u16 code,
                                                    PrintContext<CharT>* context) {
            switch (code) {
            case L'\n': {
                TextWriterBase<CharT>& writer = *context->writer;

                pRect->right = writer.GetCursorX();
                pRect->top = writer.GetCursorY();

                ProcessLinefeed(context);

                pRect->left = writer.GetCursorX();
                pRect->bottom = writer.GetCursorY() + context->writer->GetFontHeight();

                pRect->Normalize();
            }
                return OPERATION_NEXT_LINE;

            case L'\t': {
                TextWriterBase<CharT>& writer = *context->writer;

                pRect->left = writer.GetCursorX();

                ProcessTab(context);

                pRect->right = writer.GetCursorX();
                pRect->top = writer.GetCursorY();
                pRect->bottom = pRect->top + writer.GetFontHeight();

                pRect->Normalize();
            }
                return OPERATION_NO_CHAR_SPACE;

            default:
                return OPERATION_DEFAULT;
            }
        }

        template <typename CharT>
        void TagProcessorBase<CharT>::ProcessLinefeed(PrintContext<CharT>* context) {
            TextWriterBase<CharT>& writer = *context->writer;

            f32 x = context->xOrigin;
            f32 y = writer.GetCursorY() + writer.GetLineHeight();

            writer.SetCursor(x, y);
        }

        template <typename CharT>
        void TagProcessorBase<CharT>::ProcessTab(PrintContext<CharT>* context) {
            TextWriterBase<CharT>& writer = *context->writer;
            int tabWidth = writer.GetTabWidth();

            if (tabWidth > 0) {
                f32 aCharWidth =
                    writer.IsWidthFixed() ? writer.GetFixedWidth() : writer.GetFontWidth();
                f32 dx = writer.GetCursorX() - context->xOrigin;
                f32 tabPixel = tabWidth * aCharWidth;
                int numTab = static_cast<int>(dx / tabPixel) + 1;
                f32 x = tabPixel * numTab + context->xOrigin;

                writer.SetCursorX(x);
            }
        }

    }  // namespace ut
}  // namespace nw4hbm

namespace nw4hbm {
    namespace ut {
        template class TagProcessorBase<char>;
        template class TagProcessorBase<wchar_t>;
    }  // namespace ut
}  // namespace nw4hbm

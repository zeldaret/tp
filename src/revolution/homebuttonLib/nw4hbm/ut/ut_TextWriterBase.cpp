#include "TextWriterBase.h"

#include "../macros.h"

#include <revolution/types.h>

#include "CharStrmReader.h"
#include "CharWriter.h"
#include "Font.h"
#include "Rect.h"
#include "TagProcessorBase.h"
#include "inlines.h"

namespace nw4hbm {
    namespace ut {
        // .data
        template <typename CharT>
        u32 TextWriterBase<CharT>::mFormatBufferSize = 0x100;

        // .bss
        template <typename CharT>
        CharT* TextWriterBase<CharT>::mFormatBuffer;

        template <typename CharT>
        TagProcessorBase<CharT> TextWriterBase<CharT>::mDefaultTagProcessor;
    }  // namespace ut
}  // namespace nw4hbm

namespace nw4hbm {
    namespace ut {

        template <typename CharT>
        TextWriterBase<CharT>::TextWriterBase()
            : mCharSpace(0.0f), mLineSpace(0.0f), mTabWidth(4), mDrawFlag(0),
              mTagProcessor(&mDefaultTagProcessor) {}

        template <typename CharT>
        TextWriterBase<CharT>::~TextWriterBase() {}

        template <typename CharT>
        void TextWriterBase<CharT>::SetLineHeight(f32 lineHeight) {
            Font const* font = GetFont();
            int linefeed = font ? font->GetLineFeed() : 0;

            mLineSpace = lineHeight - linefeed * GetScaleV();
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::GetLineHeight() const {
            Font const* font = GetFont();
            int linefeed = font ? font->GetLineFeed() : 0;

            return mLineSpace + linefeed * GetScaleV();
        }

        template <typename CharT>
        void TextWriterBase<CharT>::SetLineSpace(f32 lineSpace) {
            mLineSpace = lineSpace;
        }

        template <typename CharT>
        void TextWriterBase<CharT>::SetCharSpace(f32 charSpace) {
            mCharSpace = charSpace;
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::GetLineSpace() const {
            return mLineSpace;
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::GetCharSpace() const {
            return mCharSpace;
        }

        template <typename CharT>
        void TextWriterBase<CharT>::SetTabWidth(int tabWidth) {
            mTabWidth = tabWidth;
        }

        template <typename CharT>
        int TextWriterBase<CharT>::GetTabWidth() const {
            return mTabWidth;
        }

        template <typename CharT>
        void TextWriterBase<CharT>::SetDrawFlag(u32 flags) {
            mDrawFlag = flags;
        }

        template <typename CharT>
        u32 TextWriterBase<CharT>::GetDrawFlag() const {
            return mDrawFlag;
        }

        template <typename CharT>
        void TextWriterBase<CharT>::SetTagProcessor(TagProcessorBase<CharT>* tagProcessor) {
            mTagProcessor = tagProcessor;
        }

        template <typename CharT>
        void TextWriterBase<CharT>::ResetTagProcessor() {
            mTagProcessor = &mDefaultTagProcessor;
        }

        template <typename CharT>
        TagProcessorBase<CharT>& TextWriterBase<CharT>::GetTagProcessor() const {
            return *mTagProcessor;
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::CalcFormatStringWidth(CharT const* format, ...) const {
            Rect rect;
            std::va_list vargs;

            va_start(vargs, format);

            CalcVStringRect(&rect, format, vargs);

            va_end(vargs);

            return rect.GetWidth();
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::CalcFormatStringHeight(CharT const* format, ...) const {
            Rect rect;
            std::va_list vargs;

            va_start(vargs, format);

            CalcVStringRect(&rect, format, vargs);

            va_end(vargs);

            return rect.GetHeight();
        }

        template <typename CharT>
        void TextWriterBase<CharT>::CalcFormatStringRect(Rect* pRect, CharT const* format,
                                                         ...) const {
            std::va_list vargs;

            va_start(vargs, format);

            CalcVStringRect(pRect, format, vargs);

            va_end(vargs);
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::AdjustCursor(float* xOrigin, float* yOrigin, CharT const* str,
                                                int length) {
            f32 textWidth = 0.0f;
            f32 textHeight = 0.0f;

            if (!IsDrawFlagSet(0x333, 0x300) && !IsDrawFlagSet(0x333, 0x000)) {
                Rect textRect;

                CalcStringRect(&textRect, str, length);
                textWidth = textRect.left + textRect.right;
                textHeight = textRect.top + textRect.bottom;
            }

            if (IsDrawFlagSet(0x030, 0x010))
                *xOrigin -= textWidth / 2.0f;
            else if (IsDrawFlagSet(0x030, 0x020))
                *xOrigin -= textWidth;

            if (IsDrawFlagSet(0x300, 0x100))
                *yOrigin -= textHeight / 2.0f;
            else if (IsDrawFlagSet(0x300, 0x200))
                *yOrigin -= textHeight;

            if (IsDrawFlagSet(0x003, 0x001)) {
                f32 width = CalcLineWidth(str, length);
                f32 offset = (textWidth - width) / 2.0f;

                SetCursorX(*xOrigin + offset);
            } else if (IsDrawFlagSet(0x003, 0x002)) {
                f32 width = CalcLineWidth(str, length);
                f32 offset = textWidth - width;

                SetCursorX(*xOrigin + offset);
            } else {
                SetCursorX(*xOrigin);
            }

            if (IsDrawFlagSet(0x300, 0x300))
                SetCursorY(*yOrigin);
            else
                SetCursorY(*yOrigin + GetFontAscent());

            return textWidth;
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::PrintImpl(CharT const* str, int length) {
            f32 xOrigin = GetCursorX();
            f32 yOrigin = GetCursorY();
            f32 orgCursorX = xOrigin;
            f32 orgCursorY = yOrigin;
            f32 xCursorAdj = 0.0f;
            f32 yCursorAdj = 0.0f;
            f32 textWidth = 0.0f;
            bool bCharSpace = FALSE;

            textWidth = AdjustCursor(&xOrigin, &yOrigin, str, length);
            xCursorAdj = orgCursorX - GetCursorX();
            yCursorAdj = orgCursorY - GetCursorY();

            PrintContext<CharT> context = {this, str, xOrigin, yOrigin, 0};
            CharStrmReader reader = GetFont()->GetCharStrmReader();
            reader.Set(str);

            for (u16 code = reader.Next();
                 static_cast<CharT const*>(reader.GetCurrentPos()) - str <= length;
                 code = reader.Next())
            {
                if (code < (char)L' ')  // C0 control characters under space
                {
                    context.str = static_cast<CharT const*>(reader.GetCurrentPos());
                    context.flags = 0;
                    context.flags |= bCharSpace ? 0 : 1 << 0;

                    Operation operation = mTagProcessor->Process(code, &context);

                    if (operation == OPERATION_NEXT_LINE) {
                        if (IsDrawFlagSet(0x003, 0x001)) {
                            int remain = length - (context.str - str);
                            f32 width = CalcLineWidth(context.str, remain);
                            f32 offset = (textWidth - width) / 2.0f;

                            SetCursorX(context.xOrigin + offset);
                        } else if (IsDrawFlagSet(0x003, 0x002)) {
                            int remain = length - (context.str - str);
                            f32 width = CalcLineWidth(context.str, remain);
                            f32 offset = textWidth - width;

                            SetCursorX(context.xOrigin + offset);
                        } else {
                            f32 width = GetCursorX() - context.xOrigin;

                            textWidth = Max(textWidth, width);
                            SetCursorX(context.xOrigin);
                        }

                        bCharSpace = FALSE;
                    } else if (operation == OPERATION_NO_CHAR_SPACE) {
                        bCharSpace = FALSE;
                    } else if (operation == OPERATION_CHAR_SPACE) {
                        bCharSpace = TRUE;
                    } else if (operation == OPERATION_END_DRAW) {
                        break;
                    }

                    reader.Set(context.str);
                } else {
                    f32 baseY = GetCursorY();

                    if (bCharSpace)
                        MoveCursorX(GetCharSpace());

                    bCharSpace = TRUE;

                    {  // 0x1e3e wants lexical_block
                        Font const* pFont = GetFont();
                        f32 adj = -pFont->GetBaselinePos() * GetScaleV();

                        MoveCursorY(adj);
                    }

                    CharWriter::Print(code);
                    SetCursorY(baseY);
                }
            }

            if (IsDrawFlagSet(0x300, 0x100) || IsDrawFlagSet(0x300, 0x200))
                SetCursorY(orgCursorY);
            else
                MoveCursorY(yCursorAdj);

            return textWidth;
        }

        template <typename CharT>
        void TextWriterBase<CharT>::CalcStringRectImpl(Rect* pRect, CharT const* str, int length) {
            int remain = length;
            CharT const* pos = str;

            pRect->left = 0.0f;
            pRect->right = 0.0f;
            pRect->top = 0.0f;
            pRect->bottom = 0.0f;

            SetCursor(0.0f, 0.0f);

            do {
                Rect rect;
                int read = CalcLineRectImpl(&rect, pos, remain);

                pos += read;
                remain -= read;

                pRect->left = Min(pRect->left, rect.left);
                pRect->top = Min(pRect->top, rect.top);
                pRect->right = Max(pRect->right, rect.right);
                pRect->bottom = Max(pRect->bottom, rect.bottom);
            } while (remain > 0);
        }

        template <typename CharT>
        int TextWriterBase<CharT>::CalcLineRectImpl(Rect* pRect, CharT const* str, int length) {
            PrintContext<CharT> context = {this, str, 0.0f, 0.0f, 0};
            Font const* font = GetFont();
            f32 x = 0.0f;
            bool bCharSpace = FALSE;
            CharStrmReader reader = font->GetCharStrmReader();

            pRect->left = 0.0f;
            pRect->right = 0.0f;
            pRect->top = Min(0.0f, GetLineHeight());
            pRect->bottom = Max(0.0f, GetLineHeight());

            reader.Set(str);

            for (u16 code = reader.Next();
                 static_cast<CharT const*>(reader.GetCurrentPos()) - str <= length;
                 code = reader.Next())
            {
                if (code < ' ') {
                    Operation operation;
                    Rect rect(x, 0.0f, 0.0f, 0.0f);

                    context.str = static_cast<CharT const*>(reader.GetCurrentPos());
                    context.flags = 0;
                    context.flags |= bCharSpace ? 0 : 1 << 0;

                    SetCursorX(x);

                    operation = mTagProcessor->CalcRect(&rect, code, &context);
                    reader.Set(context.str);

                    pRect->left = Min(pRect->left, rect.left);
                    pRect->top = Min(pRect->top, rect.top);
                    pRect->right = Max(pRect->right, rect.right);
                    pRect->bottom = Max(pRect->bottom, rect.bottom);

                    x = GetCursorX();

                    if (operation == OPERATION_END_DRAW)
                        return length;
                    else if (operation == OPERATION_NO_CHAR_SPACE)
                        bCharSpace = FALSE;
                    else if (operation == OPERATION_CHAR_SPACE)
                        bCharSpace = TRUE;
                    else if (operation == OPERATION_NEXT_LINE)
                        break;
                } else {
                    if (bCharSpace)
                        x += GetCharSpace();

                    bCharSpace = TRUE;

                    if (IsWidthFixed())
                        x += GetFixedWidth();
                    else
                        x += GetFont()->GetCharWidth(code) * GetScaleH();

                    pRect->left = Min(pRect->left, x);
                    pRect->right = Max(pRect->right, x);
                }
            }

            return static_cast<CharT const*>(reader.GetCurrentPos()) - str;
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::CalcLineWidth(CharT const* str, int length) {
            Rect rect;
            TextWriterBase<CharT> myCopy = *this;

            myCopy.SetCursor(0.0f, 0.0f);
            myCopy.CalcLineRectImpl(&rect, str, length);

            return rect.GetWidth();
        }

        template <typename CharT>
        CharT* TextWriterBase<CharT>::GetBuffer() {
            return mFormatBuffer;
        }

        template <typename CharT>
        u32 TextWriterBase<CharT>::GetBufferSize() {
            return mFormatBufferSize;
        }

        template <typename CharT>
        CharT* TextWriterBase<CharT>::SetBuffer(u32 size) {
            CharT* oldBuffer = mFormatBuffer;

            mFormatBuffer = NULL;
            mFormatBufferSize = size;

            return oldBuffer;
        }

        template <typename CharT>
        CharT* TextWriterBase<CharT>::SetBuffer(CharT* buffer, u32 size) {
            CharT* oldBuffer = mFormatBuffer;

            mFormatBuffer = buffer;
            mFormatBufferSize = size;

            return oldBuffer;
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::Print(CharT const* str) {
            return Print(str, StrLen(str));
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::Print(CharT const* str, int length) {
            TextWriterBase<CharT> myCopy = *this;

            f32 width = myCopy.PrintImpl(str, length);
            SetCursor(myCopy.GetCursorX(), myCopy.GetCursorY());

            return width;
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::VPrintf(CharT const* format, std::va_list args) {
            CharT* buffer =
                mFormatBuffer ? mFormatBuffer : static_cast<CharT*>(__alloca(mFormatBufferSize));

            int length = VSNPrintf(buffer, mFormatBufferSize, format, args);
            f32 width = Print(buffer, length);
            return width;
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::Printf(CharT const* format, ...) {
            std::va_list vargs;

            va_start(vargs, format);

            f32 width = VPrintf(format, vargs);

            va_end(vlist);

            return width;
        }

        template <typename CharT>
        void TextWriterBase<CharT>::CalcStringRect(Rect* pRect, CharT const* str) const {
            CalcStringRect(pRect, str, StrLen(str));
        }

        template <typename CharT>
        void TextWriterBase<CharT>::CalcStringRect(Rect* pRect, CharT const* str,
                                                   int length) const {
            TextWriterBase<CharT> myCopy = *this;

            myCopy.CalcStringRectImpl(pRect, str, length);
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::CalcStringHeight(CharT const* str) const {
            return CalcStringHeight(str, StrLen(str));
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::CalcStringHeight(CharT const* str, int length) const {
            Rect rect;
            CalcStringRect(&rect, str, length);

            return rect.GetHeight();
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::CalcStringWidth(CharT const* str) const {
            return CalcStringWidth(str, StrLen(str));
        }

        template <typename CharT>
        f32 TextWriterBase<CharT>::CalcStringWidth(CharT const* str, int length) const {
            Rect rect;
            CalcStringRect(&rect, str, length);

            return rect.GetWidth();
        }

        template <typename CharT>
        void TextWriterBase<CharT>::CalcVStringRect(Rect* pRect, CharT const* format,
                                                    std::va_list args) const {
            CharT* buffer =
                mFormatBuffer ? mFormatBuffer : static_cast<CharT*>(__alloca(mFormatBufferSize));

            int length = VSNPrintf(buffer, mFormatBufferSize, format, args);
            CalcStringRect(pRect, buffer, length);
        }

    }  // namespace ut
}  // namespace nw4hbm

namespace nw4hbm {
    namespace ut {
        template class TextWriterBase<char>;
        template class TextWriterBase<wchar_t>;
    }  // namespace ut
}  // namespace nw4hbm

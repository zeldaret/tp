#include "textBox.h"

#include <cstring.h>
#include <new.h>

#include "../macros.h"

#include <revolution/types.h>

#include "common.h"
#include "drawInfo.h"
#include "layout.h"
#include "material.h"
#include "pane.h"
#include "resourceAccessor.h"
#include "types.h"

#include "../math/types.h"
#include "../ut/CharStrmReader.h"
#include "../ut/CharWriter.h"
#include "../ut/Color.h"
#include "../ut/Font.h"
#include "../ut/Rect.h"
#include "../ut/ResFont.h"
#include "../ut/RuntimeTypeInfo.h"
#include "../ut/TagProcessorBase.h"
#include "../ut/TextWriterBase.h"
#include "../ut/inlines.h"


#include <revolution/gx/GXStruct.h>

namespace {
    using namespace nw4hbm;
    using namespace nw4hbm::lyt;

    ut::Color GetColor(GXColorS10 const& src);
    u8 ClampColor(s16 colVal);

    template <typename CharT>
    int CalcLineStrNum(f32* pWidth, ut::TextWriterBase<CharT>* pTextWriter, CharT const* str,
                       int length, f32 maxWidth, bool* pbOver);

    template <typename CharT>
    int CalcLineRectImpl(ut::Rect* pRect, ut::TextWriterBase<CharT>* pTextWriter, CharT const* str,
                         int length, f32 maxWidth, bool* pbOver);

    template <typename CharT>
    void CalcStringRect(ut::Rect* pRect, ut::TextWriterBase<CharT>* pTextWriter, CharT const* str,
                        int length, f32 maxWidth);

    template <typename CharT>
    void CalcStringRectImpl(ut::Rect* pRect, ut::TextWriterBase<CharT>* pTextWriter,
                            CharT const* str, int length, f32 maxWidth);
}  // unnamed namespace

namespace nw4hbm {
    namespace lyt {
        // .bss
        ut::detail::RuntimeTypeInfo const TextBox::typeInfo(&Pane::typeInfo);
    }  // namespace lyt
}  // namespace nw4hbm

namespace {

    ut::Color GetColor(GXColorS10 const& src) {
        GXColor dst;

        dst.r = ClampColor(src.r);
        dst.g = ClampColor(src.g);
        dst.b = ClampColor(src.b);
        dst.a = ClampColor(src.a);

        return dst;
    }

    u8 ClampColor(s16 colVal) {
        return colVal < 0 ? 0 : colVal > 0xff ? 0xff : colVal;
    }

    template <typename CharT>
    int CalcLineStrNum(f32* pWidth, ut::TextWriterBase<CharT>* pTextWriter, CharT const* str,
                       int length, f32 maxWidth, bool* pbOver) {
        ut::Rect rect;
        ut::TextWriterBase<CharT> myCopy = *pTextWriter;
        myCopy.SetCursor(0.0f, 0.0f);

        int ret = CalcLineRectImpl(&rect, &myCopy, str, length, maxWidth, pbOver);

        *pWidth = rect.GetWidth();
        return ret;
    }

    template <typename CharT>
    int CalcLineRectImpl(ut::Rect* pRect, ut::TextWriterBase<CharT>* pTextWriter, CharT const* str,
                         int length, f32 maxWidth, bool* pbOver) {
        ut::PrintContext<CharT> context = {pTextWriter, str, 0.0f, 0.0f, 0};
        ut::Font const* font = pTextWriter->GetFont();

        f32 x = 0.0f;
        bool bCharSpace = FALSE;

        ut::CharStrmReader reader = font->GetCharStrmReader();
        CharT const* prStrPos = static_cast<CharT const*>(reader.GetCurrentPos());

        pRect->left = 0.0f;
        pRect->right = 0.0f;
        pRect->top = ut::Min(0.0f, pTextWriter->GetLineHeight());
        pRect->bottom = ut::Max(0.0f, pTextWriter->GetLineHeight());

        *pbOver = FALSE;
        reader.Set(str);

        ut::Rect prMaxRect = *pRect;

        for (u16 code = reader.Next();
             static_cast<CharT const*>(reader.GetCurrentPos()) - str <= length;
             prStrPos = static_cast<CharT const*>(reader.GetCurrentPos()), code = reader.Next(),
                 prMaxRect = *pRect)
        {
            if ((int)code < L' ') {
                ut::Operation operation;
                ut::Rect rect(x, 0.0f, 0.0f, 0.0f);

                context.str = static_cast<CharT const*>(reader.GetCurrentPos());
                context.flags = 0;

                context.flags |= (bCharSpace ? 0 : 1) << 0;

                pTextWriter->SetCursorX(x);

                operation = pTextWriter->GetTagProcessor().CalcRect(&rect, code, &context);

                reader.Set(context.str);

                pRect->left = ut::Min(pRect->left, rect.left);
                pRect->top = ut::Min(pRect->top, rect.top);
                pRect->right = ut::Max(pRect->right, rect.right);
                pRect->bottom = ut::Max(pRect->bottom, rect.bottom);

                x = pTextWriter->GetCursorX();

                if (pRect->GetWidth() > maxWidth) {
                    *pbOver = TRUE;
                    break;
                }

                if (operation == ut::OPERATION_END_DRAW)
                    return length;
                else if (operation == ut::OPERATION_NO_CHAR_SPACE)
                    bCharSpace = FALSE;
                else if (operation == ut::OPERATION_CHAR_SPACE)
                    bCharSpace = TRUE;
                else if (operation == ut::OPERATION_NEXT_LINE)
                    break;
            } else {
                if (bCharSpace)
                    x += pTextWriter->GetCharSpace();

                bCharSpace = TRUE;

                if (pTextWriter->IsWidthFixed()) {
                    x += pTextWriter->GetFixedWidth();
                } else {
                    x += pTextWriter->GetFont()->GetCharWidth(code) * pTextWriter->GetScaleH();
                }

                pRect->left = ut::Min(pRect->left, x);
                pRect->right = ut::Max(pRect->right, x);

                if (pRect->GetWidth() > maxWidth) {
                    *pbOver = TRUE;
                    break;
                }
            }
        }

        if (*pbOver && prStrPos) {
            *pRect = prMaxRect;

            return prStrPos - str;
        } else {
            return static_cast<CharT const*>(reader.GetCurrentPos()) - str;
        }
    }

    template <typename CharT>
    void CalcStringRect(ut::Rect* pRect, ut::TextWriterBase<CharT>* pTextWriter, CharT const* str,
                        int length, f32 maxWidth) {
        ut::TextWriterBase<CharT> myCopy = *pTextWriter;

        CalcStringRectImpl(pRect, &myCopy, str, length, maxWidth);
    }

    template <typename CharT>
    void CalcStringRectImpl(ut::Rect* pRect, ut::TextWriterBase<CharT>* pTextWriter,
                            CharT const* str, int length, f32 maxWidth) {
        int remain = length;
        CharT const* pos = str;

        pRect->left = 0.0f;
        pRect->right = 0.0f;
        pRect->top = 0.0f;
        pRect->bottom = 0.0f;

        pTextWriter->SetCursor(0.0f, 0.0f);

        do {
            ut::Rect rect;
            bool bOver;
            int read = CalcLineRectImpl(&rect, pTextWriter, pos, remain, maxWidth, &bOver);

            if (bOver)
                CalcLineRectImpl(&rect, pTextWriter, L"\n", 1, maxWidth, &bOver);

            pos += read;
            remain -= read;

            pRect->left = ut::Min(pRect->left, rect.left);
            pRect->top = ut::Min(pRect->top, rect.top);
            pRect->right = ut::Max(pRect->right, rect.right);
            pRect->bottom = ut::Max(pRect->bottom, rect.bottom);
        } while (remain > 0);
    }

}  // unnamed namespace

namespace nw4hbm {
    namespace lyt {

        TextBox::TextBox(u16 allocStrLen) {
            Init(allocStrLen);
        }

        TextBox::TextBox(u16 allocStrLen, wchar_t const* str, ut::Font const* pFont) {
            Init(allocStrLen);

            SetString(str, 0);
            SetFont(pFont);
        }

        TextBox::TextBox(u16 allocStrLen, wchar_t const* str, u16 strLen, ut::Font const* pFont) {
            Init(allocStrLen);

            SetString(str, 0, strLen);
            SetFont(pFont);
        }

        TextBox::TextBox(res::TextBox const* pBlock, ResBlockSet const& resBlockSet)
            : Pane(pBlock) {
            u16 allocStrBufLen = pBlock->textBufBytes / sizeof(wchar_t);
            if (allocStrBufLen != 0)
                allocStrBufLen -= 1;  // NOTE: Specifically not pre- or post-decrement

            Init(allocStrBufLen);

            if (pBlock->textStrBytes >= sizeof(wchar_t) * 1 && mTextBuf) {
                wchar_t const* pBlockText =
                    detail::ConvertOffsToPtr<wchar_t>(pBlock, pBlock->textStrOffset);
                u16 const resStrLen = pBlock->textStrBytes / sizeof(wchar_t) - 1;

                SetString(pBlockText, 0, resStrLen);
            }

            for (int i = 0; i < (int)ARRAY_SIZE(mTextColors); ++i)
                mTextColors[i] = pBlock->textCols[i];

            mFontSize = pBlock->fontSize;
            mTextPosition = pBlock->textPosition;
            mCharSpace = pBlock->charSpace;
            mLineSpace = pBlock->lineSpace;

            res::Font const* fonts = detail::ConvertOffsToPtr<res::Font>(
                resBlockSet.pFontList, sizeof *resBlockSet.pFontList);

            char const* fontName =
                detail::ConvertOffsToPtr<char>(fonts, fonts[pBlock->fontIdx].nameStrOffset);

            if (ut::Font const* pFont = resBlockSet.pResAccessor->GetFont(fontName)) {
                mpFont = pFont;
            } else if (void* fontRes = resBlockSet.pResAccessor->GetResource(
                           ResourceAccessor::SIGNATURE_FONT, fontName, NULL))
            {
                if (void* pMemFont = Layout::AllocMemory(sizeof(ut::ResFont))) {
                    ut::ResFont* pResFont = new (pMemFont) ut::ResFont;
                    bool bSuccess = pResFont->SetResource(fontRes);

                    mpFont = pResFont;
                    mTextBoxFlag.allocFont = TRUE;
                }
            }

            if (void* pMemMaterial = Layout::AllocMemory(sizeof(Material))) {
                u32 const* matOffsTbl = detail::ConvertOffsToPtr<u32>(
                    resBlockSet.pMaterialList, sizeof *resBlockSet.pMaterialList);

                res::Material const* pResMaterial = detail::ConvertOffsToPtr<res::Material>(
                    resBlockSet.pMaterialList, matOffsTbl[pBlock->materialIdx]);

                mpMaterial = new (pMemMaterial) Material(pResMaterial, resBlockSet);
            }
        }

        void TextBox::Init(u16 allocStrLen) {
            mTextBuf = NULL;
            mTextBufBytes = 0;
            mTextLen = 0;

            mpFont = NULL;
            mFontSize = Size(0.0f, 0.0f);

            SetTextPositionH(1);
            SetTextPositionV(1);

            mLineSpace = 0.0f;
            mCharSpace = 0.0f;
            mpTagProcessor = NULL;

            std::memset(&mTextBoxFlag, 0, sizeof mTextBoxFlag);

            if (allocStrLen != 0)
                AllocStringBuffer(allocStrLen);
        }

        TextBox::~TextBox() {
            /* NOTE: This function call generates an unpaired low-half relocation in an
             * unreachable code path on release because it was compiled without small
             * data sections. This is funny because when dtk unlinks objects and
             * reconstructs relocations, it cannot detect this one. It is also funny
             * because if this path were taken it would probably load garbage anyways.
             *
             * You are now cordially invited to Laugh and Smile with this relocation, so
             * as to make it feel welcomed into your decompilation, instead of alone and
             * rejected, for we welcome all bugs, errata, mistakes, and curiosities in
             * this small corner of the internet.
             */
            SetFont(NULL);

            if (mpMaterial && !mpMaterial->IsUserAllocated()) {
                mpMaterial->~Material();
                Layout::FreeMemory(mpMaterial);
                mpMaterial = NULL;
            }

            FreeStringBuffer();
        }

        ut::Color TextBox::GetVtxColor(u32 idx) const {
            return GetTextColor(idx / 2);
        }

        void TextBox::SetVtxColor(u32 idx, ut::Color value) {
            SetTextColor(idx / 2, value);
        }

        u8 TextBox::GetVtxColorElement(u32 idx) const {
            return reinterpret_cast<u8 const*>(mTextColors + idx / 8)[idx % 4];
        }

        void TextBox::SetVtxColorElement(u32 idx, u8 value) {
            reinterpret_cast<u8*>(mTextColors + idx / 8)[idx % 4] = value;
        }

        ut::Rect TextBox::GetTextDrawRect(DrawInfo const& drawInfo) const {
            ut::TextWriterBase<wchar_t> writer;
            writer.SetFont(*mpFont);
            writer.SetFontSize(mFontSize.width, mFontSize.height);
            writer.SetLineSpace(mLineSpace);
            writer.SetCharSpace(mCharSpace);

            if (mpTagProcessor)
                writer.SetTagProcessor(mpTagProcessor);

            ut::Rect rect = GetTextDrawRect(&writer);

            if (drawInfo.IsYAxisUp()) {
                rect.top = -rect.top;
                rect.bottom = -rect.bottom;
            }

            return rect;
        }

        void TextBox::DrawSelf(DrawInfo const& drawInfo) {
            if (!mTextBuf || !mpFont || !mpMaterial)
                return;

            LoadMtx(drawInfo);

            ut::TextWriterBase<wchar_t> writer;
            writer.SetFont(*mpFont);
            writer.SetFontSize(mFontSize.width, mFontSize.height);
            writer.SetLineSpace(mLineSpace);
            writer.SetCharSpace(mCharSpace);

            ut::Color topCol = detail::MultipleAlpha(mTextColors[0], mGlbAlpha);
            ut::Color btmCol = detail::MultipleAlpha(mTextColors[1], mGlbAlpha);
            writer.SetGradationMode(topCol != btmCol ? ut::CharWriter::GRADMODE_V :
                                                       ut::CharWriter::GRADMODE_NONE);

            writer.SetTextColor(topCol, btmCol);

            ut::Color minCol = GetColor(mpMaterial->GetTevColor(0));
            ut::Color maxCol = GetColor(mpMaterial->GetTevColor(1));
            writer.SetColorMapping(minCol, maxCol);

            if (mpTagProcessor)
                writer.SetTagProcessor(mpTagProcessor);

            writer.SetupGX();

            ut::Rect textRect = GetTextDrawRect(&writer);

            f32 hMag = GetTextMagH();
            wchar_t* strPos = mTextBuf;
            f32 textWidth = textRect.GetWidth();

            writer.SetCursor(textRect.left, textRect.top);

            for (int remain = mTextLen; remain > 0; /* requires lineStrNum */) {
                f32 lineWidth;
                bool bOver;
                int lineStrNum =
                    CalcLineStrNum(&lineWidth, &writer, strPos, remain, mSize.width, &bOver);
                f32 textPosX = hMag * (textWidth - lineWidth);

                writer.SetCursorX(textRect.left + textPosX);
                writer.Print(strPos, lineStrNum);

                if (bOver)
                    writer.Print(L"\n");

                strPos += lineStrNum;
                remain -= lineStrNum;
            }
        }

        u16 TextBox::GetStringBufferLength() const {
            if (mTextBufBytes == 0)
                return 0;

            return mTextBufBytes / sizeof(wchar_t) - 1;
        }

        void TextBox::AllocStringBuffer(u16 minLen) {
            if (minLen == 0)
                return;

            u16 allocBytes = sizeof(wchar_t) * (minLen + 1);
            if (allocBytes <= mTextBufBytes)
                return;

            FreeStringBuffer();

            mTextBuf = static_cast<wchar_t*>(Layout::AllocMemory(allocBytes));
            if (mTextBuf)
                mTextBufBytes = allocBytes;
        }

        void TextBox::FreeStringBuffer() {
            if (mTextBuf) {
                Layout::FreeMemory(mTextBuf);
                mTextBuf = NULL;
                mTextBufBytes = 0;
            }
        }

        u16 TextBox::SetString(wchar_t const* str, u16 dstIdx) {
            return SetString(str, dstIdx, std::wcslen(str));
        }

        u16 TextBox::SetString(wchar_t const* str, u16 dstIdx, u16 strLen) {
            if (!mTextBuf)
                return 0;

            u16 bufLen = GetStringBufferLength();
            if (dstIdx >= bufLen)
                return 0;

            u16 const cpLen = ut::Min<u16>(strLen, bufLen - dstIdx);
            std::memcpy(&mTextBuf[dstIdx], str, sizeof(wchar_t) * cpLen);

            mTextLen = dstIdx + cpLen;
            mTextBuf[mTextLen] = L'\0';

            return cpLen;
        }

        ut::Font const* TextBox::GetFont() const {
            return mpFont;
        }

        void TextBox::SetFont(ut::Font const* pFont) {
            if (mTextBoxFlag.allocFont) {
                mpFont->~Font();
                Layout::FreeMemory(const_cast<ut::Font*>(mpFont));
                mTextBoxFlag.allocFont = FALSE;
            }

            mpFont = pFont;

            if (mpFont)
                SetFontSize(Size(mpFont->GetWidth(), mpFont->GetHeight()));
            else
                SetFontSize(Size(0.0f, 0.0f));
        }

        ut::Rect TextBox::GetTextDrawRect(ut::TextWriterBase<wchar_t>* pWriter) const {
            ut::Rect textRect;

            pWriter->SetCursor(0.0f, 0.0f);
            CalcStringRect(&textRect, pWriter, mTextBuf, mTextLen, mSize.width);

            math::VEC2 basePt = GetVtxPos();

            textRect.MoveTo(basePt.x + (mSize.width - textRect.GetWidth()) * GetTextMagH(),
                            basePt.y + (mSize.height - textRect.GetHeight()) * GetTextMagV());

            return textRect;
        }

        f32 TextBox::GetTextMagH() const {
            f32 hMag = 0.0f;

            switch (GetTextPositionH()) {
            default:
            case 0:
                hMag = 0.0f;
                break;

            case 1:
                hMag = 0.5f;
                break;

            case 2:
                hMag = 1.0f;
                break;
            }

            return hMag;
        }

        f32 TextBox::GetTextMagV() const {
            f32 vMag = 0.0f;

            switch (GetTextPositionV()) {
            default:
            case 0:
                vMag = 0.0f;
                break;

            case 1:
                vMag = 0.5f;
                break;

            case 2:
                vMag = 1.0f;
                break;
            }

            return vMag;
        }

    }  // namespace lyt
}  // namespace nw4hbm

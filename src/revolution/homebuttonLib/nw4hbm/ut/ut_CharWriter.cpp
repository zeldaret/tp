#include "CharWriter.h"

#include <revolution/types.h>

#include "Color.h"
#include "Font.h"

#include "../math/types.h"

#include <revolution/gx.h>

namespace nw4hbm {
    static void SetupGXCommon();
}  // namespace nw4hbm

namespace nw4hbm {
    namespace ut {
// .bss
#if 0 /* data ordering */
	CharWriter::LoadingTexture CharWriter::mLoadingTexture;
#endif
    }  // namespace ut
}  // namespace nw4hbm

namespace nw4hbm {

    static void SetupGXCommon() {
        static ut::Color fog(0x00000000);

        GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, fog);
        GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
        GXSetZTexture(GX_ZT_DISABLE, GX_TF_Z8, 0);
        GXSetNumChans(1);
        GXSetChanCtrl(GX_COLOR0A0, FALSE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE,
                      GX_AF_NONE);
        GXSetChanCtrl(GX_COLOR1A1, FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE,
                      GX_AF_NONE);
        GXSetNumTexGens(1);
        GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 60);
        GXSetNumIndStages(0);
        GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_SET);
    }

    namespace ut {

        CharWriter::LoadingTexture CharWriter::mLoadingTexture;

        CharWriter::CharWriter()
            : mAlpha(0xff), mIsWidthFixed(FALSE), mFixedWidth(0.0f), mFont(NULL) {
            mLoadingTexture.Reset();
            ResetColorMapping();

            SetGradationMode(GRADMODE_NONE);
            SetTextColor(0xffffffff);
            SetScale(1.0f, 1.0f);
            SetCursor(0.0f, 0.0f, 0.0f);

            EnableLinearFilter(TRUE, TRUE);
        }

        CharWriter::~CharWriter() {}

        void CharWriter::SetFont(Font const& font) {
            mFont = &font;
        }

        Font const* CharWriter::GetFont() const {
            return mFont;
        }

        void CharWriter::SetupGX() {
            ResetTextureCache();

            if (mColorMapping.min != 0x00000000 || mColorMapping.max != 0xffffffff) {
                SetupGXWithColorMapping(mColorMapping.min, mColorMapping.max);
            } else if (mFont) {
                GXTexFmt format = mFont->GetTextureFormat();

                switch (format) {
                case GX_TF_I4:
                case GX_TF_I8:
                    SetupGXForI();
                    break;

                case GX_TF_IA4:
                case GX_TF_IA8:
                    SetupGXDefault();
                    break;

                case GX_TF_RGB565:
                case GX_TF_RGB5A3:
                case GX_TF_RGBA8:
                    SetupGXForRGBA();
                    break;

                default:
                    SetupGXDefault();
                    break;
                }
            } else {
                SetupGXDefault();
            }
        }

        void CharWriter::SetColorMapping(Color min, Color max) {
            mColorMapping.min = min;
            mColorMapping.max = max;
        }

        Color CharWriter::GetColorMappingMin() const {
            return mColorMapping.min;
        }

        Color CharWriter::GetColorMappingMax() const {
            return mColorMapping.max;
        }

        void CharWriter::ResetColorMapping() {
            SetColorMapping(0x00000000, 0xffffffff);
        }

        void CharWriter::ResetTextureCache() {
            mLoadingTexture.Reset();
        }

        void CharWriter::SetAlpha(u8 alpha) {
            mAlpha = alpha;

            UpdateVertexColor();
        }

        u8 CharWriter::GetAlpha() const {
            return mAlpha;
        }

        void CharWriter::SetGradationMode(GradationMode mode) {
            mTextColor.gradationMode = mode;

            UpdateVertexColor();
        }

        CharWriter::GradationMode CharWriter::GetGradationMode() const {
            return mTextColor.gradationMode;
        }

        void CharWriter::SetTextColor(Color color) {
            mTextColor.start = color;

            UpdateVertexColor();
        }

        void CharWriter::SetTextColor(Color start, Color end) {
            mTextColor.start = start;
            mTextColor.end = end;

            UpdateVertexColor();
        }

        Color CharWriter::GetTextColor() const {
            return mTextColor.start;
        }

        Color CharWriter::GetGradationStartColor() const {
            return mTextColor.start;
        }

        Color CharWriter::GetGradationEndColor() const {
            return mTextColor.end;
        }

        void CharWriter::SetScale(f32 hScale, f32 vScale) {
            mScale.x = hScale;
            mScale.y = vScale;
        }

        void CharWriter::SetScale(f32 scale) {
            mScale.x = scale;
            mScale.y = scale;
        }

        f32 CharWriter::GetScaleH() const {
            return mScale.x;
        }

        f32 CharWriter::GetScaleV() const {
            return mScale.y;
        }

        void CharWriter::SetFontSize(f32 width, f32 height) {
            SetScale(width / mFont->GetWidth(), height / mFont->GetHeight());
        }

        void CharWriter::SetFontSize(f32 height) {
            f32 scale = height / mFont->GetHeight();

            SetScale(scale);
        }

        f32 CharWriter::GetFontWidth() const {
            return mFont->GetWidth() * mScale.x;
        }

        f32 CharWriter::GetFontHeight() const {
            return mFont->GetHeight() * mScale.y;
        }

        f32 CharWriter::GetFontAscent() const {
            return mFont->GetAscent() * mScale.y;
        }

        f32 CharWriter::GetFontDescent() const {
            return mFont->GetDescent() * mScale.y;
        }

        void CharWriter::EnableLinearFilter(bool atSmall, bool atLarge) {
            mFilter.atSmall = atSmall ? GX_LINEAR : GX_NEAR;
            mFilter.atLarge = atLarge ? GX_LINEAR : GX_NEAR;
        }

        bool CharWriter::IsLinearFilterEnableAtSmall() const {
            return mFilter.atSmall == GX_LINEAR;
        }

        bool CharWriter::IsLinearFilterEnableAtLarge() const {
            return mFilter.atLarge == GX_LINEAR;
        }

        bool CharWriter::IsWidthFixed() const {
            return mIsWidthFixed;
        }

        void CharWriter::EnableFixedWidth(bool isFixed) {
            mIsWidthFixed = isFixed;
        }

        f32 CharWriter::GetFixedWidth() const {
            return mFixedWidth;
        }

        void CharWriter::SetFixedWidth(f32 width) {
            mFixedWidth = width;
        }

        f32 CharWriter::Print(u16 code) {
            Glyph glyph;
            f32 width;
            f32 left;

            mFont->GetGlyph(&glyph, code);

            CharWidths& widths = glyph.widths;

            if (mIsWidthFixed) {
                f32 margin = (mFixedWidth - widths.charWidth * mScale.x) / 2.0f;

                width = mFixedWidth;
                left = margin + widths.left * mScale.x;
            } else {
                width = widths.charWidth * mScale.x;
                left = widths.left * mScale.x;
            }

            PrintGlyph(mCursorPos.x + left, mCursorPos.y, mCursorPos.z, glyph);

            mCursorPos.x += width;
            return width;
        }

        void CharWriter::DrawGlyph(Glyph const& glyph) {
            PrintGlyph(mCursorPos.x, mCursorPos.y, mCursorPos.z, glyph);

            mCursorPos.x += glyph.widths.glyphWidth * mScale.x;
        }

        void CharWriter::SetCursor(f32 x, f32 y) {
            mCursorPos.x = x;
            mCursorPos.y = y;
        }

        void CharWriter::SetCursor(f32 x, f32 y, f32 z) {
            mCursorPos.x = x;
            mCursorPos.y = y;
            mCursorPos.z = z;
        }

        void CharWriter::MoveCursor(f32 dx, f32 dy) {
            mCursorPos.x += dx;
            mCursorPos.y += dy;
        }

        void CharWriter::MoveCursor(f32 dx, f32 dy, f32 dz) {
            mCursorPos.x += dx;
            mCursorPos.y += dy;
            mCursorPos.z += dz;
        }

        void CharWriter::SetCursorX(f32 x) {
            mCursorPos.x = x;
        }

        void CharWriter::SetCursorY(f32 y) {
            mCursorPos.y = y;
        }

        void CharWriter::SetCursorZ(f32 z) {
            mCursorPos.z = z;
        }

        void CharWriter::MoveCursorX(f32 dx) {
            mCursorPos.x += dx;
        }

        void CharWriter::MoveCursorY(f32 dy) {
            mCursorPos.y += dy;
        }

        void CharWriter::MoveCursorZ(f32 dz) {
            mCursorPos.z += dz;
        }

        f32 CharWriter::GetCursorX() const {
            return mCursorPos.x;
        }

        f32 CharWriter::GetCursorY() const {
            return mCursorPos.y;
        }

        f32 CharWriter::GetCursorZ() const {
            return mCursorPos.z;
        }

        void CharWriter::PrintGlyph(f32 x, f32 y, f32 z, Glyph const& glyph) {
            f32 posLeft = x;
            f32 posTop = y;
            f32 posRight = posLeft + glyph.widths.glyphWidth * mScale.x;
            f32 posBottom = posTop + glyph.height * mScale.y;
            f32 posZ = z;
            u16 texLeft = static_cast<u32>(glyph.cellX << 15) / glyph.texWidth;
            u16 texTop = static_cast<u32>(glyph.cellY << 15) / glyph.texHeight;
            u16 texRight =
                static_cast<u32>((glyph.cellX + glyph.widths.glyphWidth) << 15) / glyph.texWidth;
            u16 texBottom = static_cast<u32>((glyph.cellY + glyph.height) << 15) / glyph.texHeight;

            LoadTexture(glyph, GX_TEXMAP0);

            GXBegin(GX_QUADS, GX_VTXFMT0, 4);
            GXPosition3f32(posLeft, posTop, posZ);
            GXColor1u32(mVertexColor.lu);
            GXTexCoord2u16(texLeft, texTop);

            GXPosition3f32(posRight, posTop, posZ);
            GXColor1u32(mVertexColor.ru);
            GXTexCoord2u16(texRight, texTop);

            GXPosition3f32(posRight, posBottom, posZ);
            GXColor1u32(mVertexColor.rd);
            GXTexCoord2u16(texRight, texBottom);

            GXPosition3f32(posLeft, posBottom, posZ);
            GXColor1u32(mVertexColor.ld);
            GXTexCoord2u16(texLeft, texBottom);
            GXEnd();
        }

        void CharWriter::LoadTexture(Glyph const& glyph, GXTexMapID slot) {
            LoadingTexture loadInfo;
            loadInfo.slot = slot;
            loadInfo.texture = glyph.pTexture;
            loadInfo.filter = mFilter;

            if (loadInfo != mLoadingTexture) {
                GXTexObj tobj;

                GXInitTexObj(&tobj, glyph.pTexture, glyph.texWidth, glyph.texHeight,
                             glyph.texFormat, GX_CLAMP, GX_CLAMP, 0);
                GXInitTexObjLOD(&tobj, mFilter.atSmall, mFilter.atLarge, 0.0f, 0.0f, 0.0f, FALSE,
                                FALSE, GX_ANISO_1);
                GXLoadTexObj(&tobj, slot);

                mLoadingTexture = loadInfo;
            }
        }

        void CharWriter::UpdateVertexColor() {
            mVertexColor.lu = mTextColor.start;
            mVertexColor.ru =
                mTextColor.gradationMode != GRADMODE_H ? mTextColor.start : mTextColor.end;
            mVertexColor.ld =
                mTextColor.gradationMode != GRADMODE_V ? mTextColor.start : mTextColor.end;
            mVertexColor.rd =
                mTextColor.gradationMode == GRADMODE_NONE ? mTextColor.start : mTextColor.end;

            mVertexColor.lu.a = mVertexColor.lu.a * mAlpha / 255;
            mVertexColor.ru.a = mVertexColor.ru.a * mAlpha / 255;
            mVertexColor.ld.a = mVertexColor.ld.a * mAlpha / 255;
            mVertexColor.rd.a = mVertexColor.rd.a * mAlpha / 255;
        }

        void CharWriter::SetupVertexFormat() {
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);
            GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_TEX_ST, GX_U16, 15);

            GXClearVtxDesc();

            GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
            GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);
            GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
        }

        void CharWriter::SetupGXDefault() {
            SetupGXCommon();

            GXSetNumTevStages(1);
            GXSetTevDirect(GX_TEVSTAGE0);
            GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
            GXSetTevOp(GX_TEVSTAGE0, GX_MODULATE);

            SetupVertexFormat();
        }

        void CharWriter::SetupGXWithColorMapping(Color min, Color max) {
            SetupGXCommon();

            GXSetNumTevStages(2);
            GXSetTevDirect(GX_TEVSTAGE0);
            GXSetTevDirect(GX_TEVSTAGE1);
            GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
            GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP0, GX_TEV_SWAP0);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
            GXSetTevColor(GX_TEVREG0, min);
            GXSetTevColor(GX_TEVREG1, max);
            GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_C0, GX_CC_C1, GX_CC_TEXC, GX_CC_ZERO);
            GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_A0, GX_CA_A1, GX_CA_TEXA, GX_CA_ZERO);
            GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);
            GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);
            GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
            GXSetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_CPREV, GX_CC_RASC, GX_CC_ZERO);
            GXSetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_APREV, GX_CA_RASA, GX_CA_ZERO);
            GXSetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);
            GXSetTevAlphaOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);

            SetupVertexFormat();
        }

        void CharWriter::SetupGXForI() {
            SetupGXCommon();

            GXSetNumTevStages(1);
            GXSetTevDirect(GX_TEVSTAGE0);
            GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
            GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR0A0);
            GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_RASC);
            GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_TEXA, GX_CA_RASA, GX_CA_ZERO);
            GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);
            GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);

            SetupVertexFormat();
        }

        void CharWriter::SetupGXForRGBA() {
            SetupGXDefault();
        }

    }  // namespace ut

}  // namespace nw4hbm

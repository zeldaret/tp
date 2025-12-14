#include "common.h"

#include <cstring.h>

#include "../macros.h"

#include <revolution/types.h>

#include "layout.h"

#include "../math/types.h"
#include "../ut/Color.h"
#include "../ut/inlines.h"

#include <revolution/gx.h>
#include <revolution/tpl.h>

namespace nw4hbm {
    namespace lyt {
        namespace detail {

            // sizeof(Pane::mName) == 16
            bool EqualsPaneName(char const* name1, char const* name2) {
                return std::strncmp(name1, name2, 16) == 0;
            }

            // sizeof(Pane::mName) == 16
            bool EqualsPaneName(u8 const* name1, u8 const* name2) {
                return std::strncmp(reinterpret_cast<char const*>(name1),
                                    reinterpret_cast<char const*>(name2), 16) == 0;
            }

            // sizeof(Material::mName) == 20
            bool EqualsMaterialName(char const* name1, char const* name2) {
                return std::strncmp(name1, name2, 20) == 0;
            }

            // U+FEFF * BYTE ORDER MARK
            bool TestFileHeader(res::BinaryFileHeader const& fileHeader) {
                return fileHeader.byteOrder == 0xFEFF && fileHeader.version == 8;
            }

            bool TestFileHeader(res::BinaryFileHeader const& fileHeader, u32 testSig) {
                return static_cast<u32>(GetSignatureInt(fileHeader.signature)) == testSig &&
                       TestFileHeader(fileHeader);
            }

            TexCoordAry::TexCoordAry() : mCap(0), mNum(0), mpData(NULL) {}

            void TexCoordAry::Free() {
                if (mpData) {
                    Layout::FreeMemory(mpData);
                    mpData = NULL;

                    mCap = 0;
                    mNum = 0;
                }
            }

            void TexCoordAry::Reserve(u8 num) {
                if (mCap < num) {
                    Free();
                    mpData = static_cast<TexCoords*>(Layout::AllocMemory(sizeof *mpData * num));

                    if (mpData)
                        mCap = num;
                }
            }

            void TexCoordAry::SetSize(u8 num) {
                if (mpData && num <= mCap) {
                    static TexCoords texCoords = {math::VEC2(0.0f, 0.0f), math::VEC2(1.0f, 0.0f),
                                                  math::VEC2(0.0f, 1.0f), math::VEC2(1.0f, 1.0f)};

                    for (int j = mNum; j < num; ++j) {
                        for (int i = 0; i < (int)ARRAY_SIZE(mpData[j]); ++i)
                            mpData[j][i] = texCoords[i];
                    }

                    mNum = num;
                }
            }

            void TexCoordAry::GetCoord(u32 idx, math::VEC2* coord) const {
                for (int i = 0; i < (int)ARRAY_SIZE(mpData[idx]); ++i)
                    coord[i] = mpData[idx][i];
            }

            void TexCoordAry::SetCoord(u32 idx, math::VEC2 const* coord) {
                for (int i = 0; i < (int)ARRAY_SIZE(mpData[idx]); ++i)
                    mpData[idx][i] = coord[i];
            }

            void TexCoordAry::Copy(void const* pResTexCoord, u8 texCoordNum) {
                mNum = ut::Max(mNum, texCoordNum);
                TexCoords const* src = static_cast<TexCoords const*>(pResTexCoord);

                for (int j = 0; j < texCoordNum; ++j) {
                    for (int i = 0; i < (int)ARRAY_SIZE(mpData[j]); ++i)
                        mpData[j][i] = src[j][i];
                }
            }

            bool IsModulateVertexColor(ut::Color* vtxColors, u8 glbAlpha) {
                if (glbAlpha != 0xff)
                    return TRUE;

                if (vtxColors) {
                    if (vtxColors[0] != 0xffffffff || vtxColors[1] != 0xffffffff ||
                        vtxColors[2] != 0xffffffff || vtxColors[3] != 0xffffffff)
                    {
                        return TRUE;
                    }
                }

                return FALSE;
            }

            ut::Color MultipleAlpha(ut::Color const col, u8 alpha) {
                ut::Color ret = col;

                if (alpha != 0xff)
                    ret.a = col.a * alpha / 255;

                return ret;
            }

            void MultipleAlpha(ut::Color* dst, ut::Color const* src, u8 alpha) {
                /* ARRAY_SIZE(VtxColors) */
                for (int i = 0; i < 4; ++i)
                    dst[i] = MultipleAlpha(src[i], alpha);
            }

            void SetVertexFormat(bool bModulate, u8 texCoordNum) {
                GXClearVtxDesc();

                GXSetVtxDesc(GX_VA_POS, GX_DIRECT);

                if (bModulate)
                    GXSetVtxDesc(GX_VA_CLR0, GX_DIRECT);

                for (int i = 0; i < texCoordNum; ++i)
                    GXSetVtxDesc(static_cast<GXAttr>(GX_VA_TEX0 + i), GX_DIRECT);

                GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGB, GX_F32, 0);

                if (bModulate)
                    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_CLR0, GX_CLR_RGBA, GX_RGBA8, 0);

                for (int i = 0; i < texCoordNum; ++i) {
                    GXSetVtxAttrFmt(GX_VTXFMT0, static_cast<GXAttr>(GX_VA_TEX0 + i), GX_CLR_RGBA,
                                    GX_F32, 0);
                }
            }

            void DrawQuad(math::VEC2 const& polLT, math::VEC2 const& polRB, math::VEC2 const& texLT,
                          math::VEC2 const& texRB, ut::Color const* vtxColors) {
                // start at top left, go clockwise

                GXBegin(GX_QUADS, GX_VTXFMT0, 4);

                GXPosition2f32(polLT.x, polLT.y);

                if (vtxColors)
                    GXColor1u32(vtxColors[0]);

                GXTexCoord2f32(texLT.x, texLT.y);

                GXPosition2f32(polRB.x, polLT.y);

                if (vtxColors)
                    GXColor1u32(vtxColors[1]);

                GXTexCoord2f32(texRB.x, texLT.y);

                GXPosition2f32(polRB.x, polRB.y);

                if (vtxColors)
                    GXColor1u32(vtxColors[3]);

                GXTexCoord2f32(texRB.x, texRB.y);

                GXPosition2f32(polLT.x, polRB.y);

                if (vtxColors)
                    GXColor1u32(vtxColors[2]);

                GXTexCoord2f32(texLT.x, texRB.y);

                GXEnd();
            }

            void DrawQuad(math::VEC2 const& basePt, Size const& size, u8 texCoordNum,
                          TexCoords const* texCoords, ut::Color const* vtxColors) {
                // same here

                GXBegin(GX_QUADS, GX_VTXFMT0, 4);

                GXPosition2f32(basePt.x, basePt.y);

                if (vtxColors)
                    GXColor1u32(vtxColors[0]);

                for (int i = 0; i < texCoordNum; ++i)
                    GXTexCoord2f32(texCoords[i][0].x, texCoords[i][0].y);

                GXPosition2f32(basePt.x + size.width, basePt.y);

                if (vtxColors)
                    GXColor1u32(vtxColors[1]);

                for (int i = 0; i < texCoordNum; ++i)
                    GXTexCoord2f32(texCoords[i][1].x, texCoords[i][1].y);

                GXPosition2f32(basePt.x + size.width, basePt.y + size.height);

                if (vtxColors)
                    GXColor1u32(vtxColors[3]);

                for (int i = 0; i < texCoordNum; ++i)
                    GXTexCoord2f32(texCoords[i][3].x, texCoords[i][3].y);

                GXPosition2f32(basePt.x, basePt.y + size.height);

                if (vtxColors)
                    GXColor1u32(vtxColors[2]);

                for (int i = 0; i < texCoordNum; ++i)
                    GXTexCoord2f32(texCoords[i][2].x, texCoords[i][2].y);

                GXEnd();
            }

            void DrawQuad(math::VEC2 const& basePt, Size const& size, u8 texCoordNum,
                          TexCoords const* texCoords, ut::Color const* vtxColors, u8 alpha) {
                ut::Color wkVtxColors[4];

                if (vtxColors)
                    MultipleAlpha(wkVtxColors, vtxColors, alpha);

                DrawQuad(basePt, size, texCoordNum, texCoords, vtxColors ? wkVtxColors : NULL);
            }

            void DrawLine(math::VEC2 const& pos, Size const& size, ut::Color color) {
                GXClearVtxDesc();

                GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
                GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XY, GX_F32, 0);

                GXSetNumChans(1);
                GXSetChanCtrl(GX_COLOR0A0, FALSE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE,
                              GX_AF_NONE);

                GXSetChanMatColor(GX_COLOR0A0, color);
                GXSetNumTexGens(0);
                GXSetNumTevStages(1);
                GXSetNumIndStages(0);

                GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
                GXSetTevOp(GX_TEVSTAGE0, GX_PASSCLR);
                GXSetTevDirect(GX_TEVSTAGE0);

                GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
                GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE,
                                      GX_CH_ALPHA);

                GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_AND, GX_ALWAYS, 0);
                GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_SET);

                GXSetLineWidth(6, GX_TO_ZERO);

                // start at top left, go clockwise

                GXBegin(GX_LINESTRIP, GX_VTXFMT0, 5);
                GXPosition2f32(pos.x, pos.y);
                GXPosition2f32(pos.x + size.width, pos.y);
                GXPosition2f32(pos.x + size.width, pos.y + size.height);
                GXPosition2f32(pos.x, pos.y + size.height);
                GXPosition2f32(pos.x, pos.y);
                GXEnd();
            }

            void InitGXTexObjFromTPL(GXTexObj* to, TPLPalette* pal, u32 id) {
                // TODO: What is the meaning of this check? Is this some sort of macro?
                if (pal->descriptorArray < (TPLDescriptor*)0x80000000)  // ?
                    TPLBind(pal);

                TPLDescriptor* tdp = TPLGet(pal, id);

                GXBool const mipMap =
                    tdp->textureHeader->minLOD != tdp->textureHeader->maxLOD ? GX_TRUE : GX_FALSE;

                if (tdp->CLUTHeader) {
                    GXInitTexObjCI(to, tdp->textureHeader->data, tdp->textureHeader->width,
                                   tdp->textureHeader->height,
                                   static_cast<GXCITexFmt>(tdp->textureHeader->format),
                                   tdp->textureHeader->wrapS, tdp->textureHeader->wrapT, mipMap, 0);

                    GXInitTexObjUserData(to, tdp->CLUTHeader);
                } else {
                    GXInitTexObj(to, tdp->textureHeader->data, tdp->textureHeader->width,
                                 tdp->textureHeader->height,
                                 static_cast<GXTexFmt>(tdp->textureHeader->format),
                                 tdp->textureHeader->wrapS, tdp->textureHeader->wrapT, mipMap);
                }

                GXInitTexObjLOD(to, tdp->textureHeader->minFilter, tdp->textureHeader->magFilter,
                                tdp->textureHeader->minLOD, tdp->textureHeader->maxLOD,
                                tdp->textureHeader->LODBias, FALSE,
                                tdp->textureHeader->edgeLODEnable, GX_ANISO_1);
            }

        }  // namespace detail
    }  // namespace lyt
}  // namespace nw4hbm

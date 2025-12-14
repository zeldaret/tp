#include "material.h"

/* TODO: Many loose constants and odd expressions. Clean them up and make more
 * sense out of them. ogws uses a lot of GX constants here; it may be helpful
 * to wait until after that library interface is done to clean this file up.
 */

#include <cstring.h>

#include "../macros.h"

#include <revolution/types.h>

#include "animation.h"
#include "common.h"
#include "layout.h"
#include "resourceAccessor.h"
#include "types.h"

#include "../math/arithmetic.h"
#include "../math/triangular.h"
#include "../math/types.h"
#include "../ut/Color.h"
#include "../ut/LinkList.h"
#include "../ut/inlines.h"


#include <revolution/gx.h>
#include <revolution/tpl.h>

namespace {
    using namespace nw4hbm;
    using namespace nw4hbm::lyt;

    bool operator==(GXColorS10 const& a, GXColorS10 const& b);
    bool operator!=(GXColorS10 const& a, GXColorS10 const& b);

    void CalcTextureMtx(math::MTX34* pMtx, TexSRT const& texSRT);
    void CalcIndTexMtx(f32 mtx[2][3], TexSRT const& texSRT);
    void CalcTexRatio(u8* dstTexRatios, float const* srcTexRatios, int texNum);

    u8 GetColorComponentValue(ut::Color const col, u32 compIdx);

    void SetColorComponentValue(ut::Color* pCol, u32 compIdx, s16 value);
    void SetIndTexMtx(GXIndTexMtxID id, const f32 mtx[2][3]);

    void InitTexSRT(TexSRT* texSRTs, u32 num);

    u32 CalcOffsetTexSRTAry(detail::BitGXNums const& bitGXNums);
    u32 CalcOffsetTexCoordGenAry(detail::BitGXNums const& bitGXNums);
    u32 CalcOffsetChanCtrlAry(detail::BitGXNums const& bitGXNums);
    u32 CalcOffsetMatColAry(detail::BitGXNums const& bitGXNums);
    u32 CalcOffsetTevSwapAry(detail::BitGXNums const& bitGXNums);
    u32 CalcOffsetGetAlphaCompare(detail::BitGXNums const& bitGXNums);
    u32 CalcOffsetBlendMode(detail::BitGXNums const& bitGXNums);
    u32 CalcOffsetIndirectStageAry(detail::BitGXNums const& bitGXNums);
    u32 CalcOffsetIndTexSRTAry(detail::BitGXNums const& bitGXNums);
    u32 CalcOffsetTevStageAry(detail::BitGXNums const& bitGXNums);

    void CopyGXTexObj(GXTexObj* pDst, GXTexObj const* pSrc);

    // ?
    inline u32 GetTexMtx(u32 texMtxIdx) {
        return texMtxIdx * 3 + 30;
    }

    inline u32 GetTexMtxIdx(u32 texMtx) {
        return (texMtx - 30) / 3;
    }
}  // unnamed namespace

// .rodata
static GXColorS10 const DefaultBlackColor = {0x0000, 0x0000, 0x0000, 0x0000};
static GXColorS10 const DefaultWhiteColor = {0x00ff, 0x00ff, 0x00ff, 0x00ff};

namespace {

    bool operator==(GXColorS10 const& a, GXColorS10 const& b) {
        return a.r == b.r && a.g == b.g && a.b == b.b && a.a == b.a;
    }

    bool operator!=(GXColorS10 const& a, GXColorS10 const& b) {
        return !operator==(a, b);
    }

    void CalcTextureMtx(math::MTX34* pMtx, TexSRT const& texSRT) {
        math::VEC2 center(0.5f, 0.5f);

        f32 cosR = math::CosDeg(texSRT.rotate);
        f32 sinR = math::SinDeg(texSRT.rotate);

        f32 a0 = cosR * texSRT.scale.x, a1 = -sinR * texSRT.scale.y;
        pMtx->_00 = a0;
        pMtx->_01 = a1;
        pMtx->_02 = 0.0f;
        pMtx->_03 = texSRT.translate.x + center.x + a0 * -center.x + a1 * -center.y;

        a0 = sinR * texSRT.scale.x;
        a1 = cosR * texSRT.scale.y;
        pMtx->_10 = a0;
        pMtx->_11 = a1;
        pMtx->_12 = 0.0f;
        pMtx->_13 = texSRT.translate.y + center.y + a0 * -center.x + a1 * -center.y;

        pMtx->_20 = 0.0f;
        pMtx->_21 = 0.0f;
        pMtx->_22 = 1.0f;
        pMtx->_23 = 0.0f;
    }

    void CalcIndTexMtx(f32 mtx[2][3], TexSRT const& texSRT) {
        f32 cosR = math::CosDeg(texSRT.rotate);
        f32 sinR = math::SinDeg(texSRT.rotate);

        mtx[0][0] = cosR * texSRT.scale.x;
        mtx[0][1] = -sinR * texSRT.scale.y;
        mtx[0][2] = texSRT.translate.x;

        mtx[1][0] = sinR * texSRT.scale.x;
        mtx[1][1] = cosR * texSRT.scale.y;
        mtx[1][2] = texSRT.translate.y;
    }

    void CalcTexRatio(u8* dstTexRatios, float const* srcTexRatios, int texNum) {
        float ratioTotal = 0.0f;

        for (int i = 0; i < texNum; ++i)
            ratioTotal += srcTexRatios[i];

        for (int i = 0; i < texNum; ++i)
            dstTexRatios[i] = srcTexRatios[i] * 255.0f / ratioTotal;
    }

    u8 GetColorComponentValue(ut::Color const col, u32 compIdx) {
        switch (compIdx) {
        case 0:
            return col.r;

        case 1:
            return col.g;

        case 2:
            return col.b;

        case 3:
            return col.a;
        }

        return 0xff;
    }

    void SetColorComponentValue(ut::Color* pCol, u32 compIdx, s16 value) {
        u8 const u8Val = ut::Min<s16>(ut::Max<s16>(value, 0), 0xff);

        switch (compIdx) {
        case 0:
            pCol->r = u8Val;
            break;

        case 1:
            pCol->g = u8Val;
            break;

        case 2:
            pCol->b = u8Val;
            break;

        case 3:
            pCol->a = u8Val;
            break;
        }
    }

    void SetIndTexMtx(GXIndTexMtxID id, const f32 mtx[2][3]) {
        /* NOTE: we know the declarations are stacked like this due to
         * [SC5PGN]/build/libs/Debug/slamWiiD.a:lyt_material.o(1)::.debug_info::0x4031 [original
         * object] so I just kept the theme going
         */
        f32 m00, m01, m02;
        f32 m10, m11, m12;

        f32 a00, a01, a02;
        f32 a10, a11, a12;

        s8 scaleExp = 0;

        // tripled expressions
        m00 = mtx[0][0];
        m01 = mtx[0][1];
        m02 = mtx[0][2];
        m10 = mtx[1][0];
        m11 = mtx[1][1];
        m12 = mtx[1][2];

        a00 = math::FAbs(m00);
        a01 = math::FAbs(m01);
        a02 = math::FAbs(m02);
        a10 = math::FAbs(m10);
        a11 = math::FAbs(m11);
        a12 = math::FAbs(m12);

        if (a00 >= 1.0f || a01 >= 1.0f || a02 >= 1.0f || a10 >= 1.0f || a11 >= 1.0f || a12 >= 1.0f)
        {
            do {
                // Why is this different?
                if (scaleExp >= 46)
                    break;

                ++scaleExp;

                // tripled expressions
                m00 /= 2.0f;
                m01 /= 2.0f;
                m02 /= 2.0f;
                m10 /= 2.0f;
                m11 /= 2.0f;
                m12 /= 2.0f;

                a00 /= 2.0f;
                a01 /= 2.0f;
                a02 /= 2.0f;
                a10 /= 2.0f;
                a11 /= 2.0f;
                a12 /= 2.0f;
            } while (a00 >= 1.0f || a01 >= 1.0f || a02 >= 1.0f || a10 >= 1.0f || a11 >= 1.0f ||
                     a12 >= 1.0f);
        } else if (a00 < 0.5f && a01 < 0.5f && a02 < 0.5f && a10 < 0.5f && a11 < 0.5f && a12 < 0.5f)
        {
            do {
                --scaleExp;

                // tripled expressions
                m00 *= 2.0f;
                m01 *= 2.0f;
                m02 *= 2.0f;
                m10 *= 2.0f;
                m11 *= 2.0f;
                m12 *= 2.0f;

                a00 *= 2.0f;
                a01 *= 2.0f;
                a02 *= 2.0f;
                a10 *= 2.0f;
                a11 *= 2.0f;
                a12 *= 2.0f;
            } while (a00 < 0.5f && a01 < 0.5f && a02 < 0.5f && a10 < 0.5f && a11 < 0.5f &&
                     a12 < 0.5f && scaleExp > -17);
        }

        Mtx23 outMtx = {{m00, m01, m02}, {m10, m11, m12}};

        GXSetIndTexMtx(id, outMtx, scaleExp);
    }

    void InitTexSRT(TexSRT* texSRTs, u32 num) {
        for (u32 i = 0; i < num; ++i) {
            texSRTs[i].translate = math::VEC2(0.0f, 0.0f);
            texSRTs[i].rotate = 0.0f;
            texSRTs[i].scale = math::VEC2(1.0f, 1.0f);
        }
    }

/* extracting the previous bitfield to get the entity count then multiplying by
 * sizeof(thing) to get total size and therefore offset to start of next entity
 * group
 */

// First in the set
#define CalcOffsetTexMapAry(bitGXNums) 0ul

    // also is Ary supposed to be Array? if so thats a shit abbreviation just use Array
    u32 CalcOffsetTexSRTAry(detail::BitGXNums const& bitGXNums) {
        return CalcOffsetTexMapAry(bitGXNums) + sizeof(GXTexObj) * bitGXNums.texMap;
    }

    u32 CalcOffsetTexCoordGenAry(detail::BitGXNums const& bitGXNums) {
        return CalcOffsetTexSRTAry(bitGXNums) + sizeof(TexSRT) * bitGXNums.texSRT;
    }

    u32 CalcOffsetChanCtrlAry(detail::BitGXNums const& bitGXNums) {
        return CalcOffsetTexCoordGenAry(bitGXNums) + sizeof(TexCoordGen) * bitGXNums.texCoordGen;
    }

    u32 CalcOffsetMatColAry(detail::BitGXNums const& bitGXNums) {
        return CalcOffsetChanCtrlAry(bitGXNums) + sizeof(ChanCtrl) * bitGXNums.chanCtrl;
    }

    u32 CalcOffsetTevSwapAry(detail::BitGXNums const& bitGXNums) {
        return CalcOffsetMatColAry(bitGXNums) + sizeof(ut::Color) * bitGXNums.matCol;
    }

    u32 CalcOffsetGetAlphaCompare(detail::BitGXNums const& bitGXNums) {
        return CalcOffsetTevSwapAry(bitGXNums) +
               (sizeof(TevSwapMode) + 3) * bitGXNums.tevSwap;  // padding, i think
    }

    u32 CalcOffsetBlendMode(detail::BitGXNums const& bitGXNums) {
        return CalcOffsetGetAlphaCompare(bitGXNums) + sizeof(AlphaCompare) * bitGXNums.alpComp;
    }

    u32 CalcOffsetIndirectStageAry(detail::BitGXNums const& bitGXNums) {
        return CalcOffsetBlendMode(bitGXNums) + sizeof(BlendMode) * bitGXNums.blendMode;
    }

    u32 CalcOffsetIndTexSRTAry(detail::BitGXNums const& bitGXNums) {
        return CalcOffsetIndirectStageAry(bitGXNums) + sizeof(IndirectStage) * bitGXNums.indStage;
    }

    u32 CalcOffsetTevStageAry(detail::BitGXNums const& bitGXNums) {
        return CalcOffsetIndTexSRTAry(bitGXNums) + sizeof(TexSRT) * bitGXNums.indSRT;
    }

    void CopyGXTexObj(GXTexObj* pDst, GXTexObj const* pSrc) {
        *pDst = *pSrc;
        GXInitTexObjUserData(pDst, NULL);
    }

}  // unnamed namespace

namespace nw4hbm {
    namespace lyt {

        Material::Material() {
            Init();
            std::memset(mName, 0, sizeof mName);
        }

        Material::Material(res::Material const* pRes, ResBlockSet const& resBlockSet) {
            Init();
            SetName(pRes->name);

            for (int i = 0; i < (int)ARRAY_SIZE(mTevCols); ++i)
                mTevCols[i] = pRes->tevCols[i];

            for (int i = 0; i < (int)ARRAY_SIZE(mTevKCols); ++i)
                mTevKCols[i] = pRes->tevKCols[i];

            u32 resOffs = sizeof *pRes;

            res::TexMap const* pResTexMap = detail::ConvertOffsToPtr<res::TexMap>(pRes, resOffs);
            resOffs += sizeof *pResTexMap * pRes->resNum.GetTexMapNum();

            TexSRT const* resTexSRTs = detail::ConvertOffsToPtr<TexSRT>(pRes, resOffs);
            resOffs += sizeof *resTexSRTs * pRes->resNum.GetTexSRTNum();

            TexCoordGen const* resTexCoordGens =
                detail::ConvertOffsToPtr<TexCoordGen>(pRes, resOffs);
            resOffs += sizeof *resTexCoordGens * pRes->resNum.GetTexCoordGenNum();

            u8 texMapNum = ut::Min<u8>(pRes->resNum.GetTexMapNum(), 8);
            u8 texSRTNum = ut::Min<u8>(pRes->resNum.GetTexSRTNum(), 10);
            u8 texCoordGenNum = ut::Min<u8>(pRes->resNum.GetTexCoordGenNum(), 8);
            bool allocChanCtrl = pRes->resNum.GetChanCtrlNum() != 0;
            bool allocMatCol = pRes->resNum.GetMatColNum() != 0;
            bool allocTevSwap = pRes->resNum.HasTevSwapTable();
            bool allocAlpComp = pRes->resNum.HasAlphaCompare();
            bool allocBlendMode = pRes->resNum.HasBlendMode();
            u8 indTexSRTNum = ut::Min<u8>(pRes->resNum.GetIndTexSRTNum(), 3);
            u8 indStageNum = ut::Min<u8>(pRes->resNum.GetIndTexStageNum(), 4);
            u8 tevStageNum = ut::Min<u8>(pRes->resNum.GetTevStageNum(), 16);

            ReserveGXMem(texMapNum, texSRTNum, texCoordGenNum, tevStageNum, allocTevSwap,
                         indStageNum, indTexSRTNum, allocChanCtrl, allocMatCol, allocAlpComp,
                         allocBlendMode);

            if (mpGXMem) {
                SetTextureNum(texMapNum);

                if (texMapNum != 0) {
                    res::Texture const* textures = detail::ConvertOffsToPtr<res::Texture>(
                        resBlockSet.pTextureList, sizeof *resBlockSet.pTextureList);

                    GXTexObj* texMaps = GetTexMapAry();

                    for (u8 i = 0; i < mGXMemNum.texMap; ++i) {
                        char const* fileName = detail::ConvertOffsToPtr<char>(
                            textures, textures[pResTexMap[i].texIdx].nameStrOffset);

                        void* pTplRes = resBlockSet.pResAccessor->GetResource(
                            ResourceAccessor::SIGNATURE_TEXTURE_IMAGE, fileName, NULL);

                        SetTexture(i, static_cast<TPLPalette*>(pTplRes));

                        GXInitTexObjWrapMode(&texMaps[i],
                                             static_cast<GXTexWrapMode>(pResTexMap[i].wrapS),
                                             static_cast<GXTexWrapMode>(pResTexMap[i].wrapT));
                    }
                }

                TexSRT* texSRTs = GetTexSRTAry();
                for (int i = 0; i < texSRTNum; ++i) {
                    texSRTs[i].translate = resTexSRTs[i].translate;
                    texSRTs[i].rotate = resTexSRTs[i].rotate;
                    texSRTs[i].scale = resTexSRTs[i].scale;
                }

                TexCoordGen* texCoordGens = GetTexCoordGenAry();
                SetTexCoordGenNum(texCoordGenNum);
                for (int i = 0; i < mGXMemNum.texCoordGen; ++i)
                    texCoordGens[i] = resTexCoordGens[i];

                if (allocChanCtrl) {
                    ChanCtrl const* pResChanCtrl =
                        detail::ConvertOffsToPtr<ChanCtrl>(pRes, resOffs);

                    *GetChanCtrlAry() = *pResChanCtrl;
                    resOffs += sizeof *pResChanCtrl;
                }

                if (allocMatCol) {
                    ut::Color const* pResMatCol =
                        detail::ConvertOffsToPtr<ut::Color>(pRes, resOffs);

                    *GetMatColAry() = *pResMatCol;
                    resOffs += sizeof *pResMatCol;
                }

                if (allocTevSwap) {
                    TevSwapMode const* pResTevSwap =
                        detail::ConvertOffsToPtr<TevSwapMode>(pRes, resOffs);

                    TevSwapMode* tevSwaps = GetTevSwapAry();

                    for (int i = 0; i < GX_MAX_TEVSWAP; ++i)
                        tevSwaps[i] = pResTevSwap[i];

                    // probably that padding from before
                    resOffs += sizeof *pResTevSwap + 3;
                }

                if (indTexSRTNum) {
                    TexSRT* indTexSRTs = GetIndTexSRTAry();
                    TexSRT const* pResIndMtx = detail::ConvertOffsToPtr<TexSRT>(pRes, resOffs);

                    for (int i = 0; i < indTexSRTNum; ++i)
                        indTexSRTs[i] = pResIndMtx[i];
                }

                // skip unconditionally; pResIndMtx has gone out of scope
                resOffs += sizeof(TexSRT) * pRes->resNum.GetIndTexSRTNum();

                if (indStageNum) {
                    SetIndStageNum(indStageNum);

                    IndirectStage* indirectStages = GetIndirectStageAry();
                    IndirectStage const* pResIndStg =
                        detail::ConvertOffsToPtr<IndirectStage>(pRes, resOffs);

                    for (int i = 0; i < indStageNum; ++i)
                        indirectStages[i] = pResIndStg[i];
                }

                // skip unconditionally; pResIndStg has gone out of scope
                resOffs += sizeof(IndirectStage) * pRes->resNum.GetIndTexStageNum();

                if (tevStageNum) {
                    SetTevStageNum(tevStageNum);

                    TevStage* tevStages = GetTevStageAry();
                    TevStage const* pResTevStg = detail::ConvertOffsToPtr<TevStage>(pRes, resOffs);

                    for (int i = 0; i < tevStageNum; ++i)
                        tevStages[i] = pResTevStg[i];
                }

                // skip unconditionally; pResTevStg has gone out of scope
                resOffs += sizeof(TevStage) * pRes->resNum.GetTevStageNum();

                if (allocAlpComp) {
                    AlphaCompare const* pResAlphaCompare =
                        detail::ConvertOffsToPtr<AlphaCompare>(pRes, resOffs);

                    *GetAlphaComparePtr() = *pResAlphaCompare;
                    resOffs += sizeof *pResAlphaCompare;
                }

                if (allocBlendMode) {
                    BlendMode const* pResBlendMode =
                        detail::ConvertOffsToPtr<BlendMode>(pRes, resOffs);

                    *GetBlendModePtr() = *pResBlendMode;
                    resOffs += sizeof *pResBlendMode;
                }
            }
        }

        void Material::Init() {
            mTevCols[0] = DefaultBlackColor;
            mTevCols[1] = DefaultWhiteColor;
            mTevCols[2] = DefaultWhiteColor;

            InitBitGXNums(&mGXMemCap);
            InitBitGXNums(&mGXMemNum);

            mbUserAllocated = FALSE;
            mpGXMem = NULL;
        }

        Material::~Material() {
            UnbindAllAnimation();

            if (mpGXMem) {
                Layout::FreeMemory(mpGXMem);
                mpGXMem = NULL;
            }
        }

        void Material::InitBitGXNums(detail::BitGXNums* ptr) {
            ptr->texMap = 0;
            ptr->texSRT = 0;
            ptr->texCoordGen = 0;
            ptr->indSRT = 0;
            ptr->indStage = 0;
            ptr->tevSwap = FALSE;
            ptr->tevStage = 0;
            ptr->chanCtrl = FALSE;
            ptr->matCol = FALSE;
            ptr->alpComp = FALSE;
            ptr->blendMode = 0;
        }

        void Material::ReserveGXMem(u8 texMapNum, u8 texSRTNum, u8 texCoordGenNum, u8 tevStageNum,
                                    bool allocTevSwap, u8 indStageNum, u8 indSRTNum,
                                    bool allocChanCtrl, bool allocMatCol, bool allocAlpComp,
                                    bool allocBlendMode) {
            // result is a count of items, not a boolean value
            int tevSwapNum = allocTevSwap ? 1 : 0;
            int chanCtrlNum = allocChanCtrl ? 1 : 0;
            int matColNum = allocMatCol ? 1 : 0;
            int alpCompNum = allocAlpComp ? 1 : 0;
            int blendModeNum = allocBlendMode ? 1 : 0;

            if (mGXMemCap.texMap >= texMapNum && mGXMemCap.texSRT >= texSRTNum &&
                mGXMemCap.texCoordGen >= texCoordGenNum && mGXMemCap.tevStage >= tevStageNum &&
                mGXMemCap.tevSwap >= tevSwapNum && mGXMemCap.indStage >= indStageNum &&
                mGXMemCap.indSRT >= indSRTNum && mGXMemCap.chanCtrl >= chanCtrlNum &&
                mGXMemCap.matCol >= matColNum && mGXMemCap.alpComp >= alpCompNum &&
                mGXMemCap.blendMode >= blendModeNum)
            {
                return;
            }

            if (mpGXMem) {
                Layout::FreeMemory(mpGXMem);
                mpGXMem = NULL;

                InitBitGXNums(&mGXMemCap);
                InitBitGXNums(&mGXMemNum);
            }

            /* NOTE: The first 7 numbers are actually all added together before being
             * multiplied by 4, because they are all the same size (well, except for
             * TevSwapMode, but you know)
             */
            mpGXMem = Layout::AllocMemory(
                sizeof(ut::Color) * (matColNum + /*  sizeof(ChanCtrl)         * */ chanCtrlNum +
                                     /*  sizeof(TexCoordGen)      * */ texCoordGenNum +
                                     /* (sizeof(TevSwapMode) + 3) * */ tevSwapNum +
                                     /*  sizeof(AlphaCompare)     * */ alpCompNum +
                                     /*  sizeof(BlendMode)        * */ blendModeNum +
                                     /*  sizeof(IndirectStage)    * */ indStageNum) +
                sizeof(TexSRT) * texSRTNum + sizeof(GXTexObj) * texMapNum +
                sizeof(TexSRT) * indSRTNum + sizeof(TevStage) * tevStageNum);

            if (!mpGXMem)
                return;

            mGXMemCap.texMap = texMapNum;
            mGXMemCap.texSRT = texSRTNum;
            mGXMemCap.texCoordGen = texCoordGenNum;
            mGXMemCap.indSRT = indSRTNum;
            mGXMemCap.indStage = indStageNum;
            mGXMemCap.tevSwap = tevSwapNum;
            mGXMemCap.tevStage = tevStageNum;
            mGXMemCap.chanCtrl = chanCtrlNum;
            mGXMemCap.matCol = matColNum;
            mGXMemCap.alpComp = alpCompNum;
            mGXMemCap.blendMode = blendModeNum;

            mGXMemNum.texSRT = mGXMemCap.texSRT;
            InitTexSRT(GetTexSRTAry(), mGXMemNum.texSRT);

            mGXMemNum.indSRT = mGXMemCap.indSRT;
            InitTexSRT(GetIndTexSRTAry(), mGXMemNum.indSRT);

            mGXMemNum.chanCtrl = mGXMemCap.chanCtrl;
            if (mGXMemNum.chanCtrl)
                *GetChanCtrlAry() = ChanCtrl();

            mGXMemNum.matCol = mGXMemCap.matCol;
            if (mGXMemNum.matCol)
                *GetMatColAry() = 0xffffffff;

            mGXMemNum.tevSwap = mGXMemCap.tevSwap;
            if (mGXMemNum.tevSwap) {
                TevSwapMode* tevSwaps = GetTevSwapAry();

                tevSwaps[0].Set(GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
                tevSwaps[1].Set(GX_CH_RED, GX_CH_RED, GX_CH_RED, GX_CH_ALPHA);
                tevSwaps[2].Set(GX_CH_GREEN, GX_CH_GREEN, GX_CH_GREEN, GX_CH_ALPHA);
                tevSwaps[3].Set(GX_CH_BLUE, GX_CH_BLUE, GX_CH_BLUE, GX_CH_ALPHA);
            }

            mGXMemNum.alpComp = mGXMemCap.alpComp;
            if (mGXMemNum.alpComp)
                *GetAlphaComparePtr() = AlphaCompare();

            mGXMemNum.blendMode = mGXMemCap.blendMode;
            if (mGXMemNum.blendMode)
                *GetBlendModePtr() = BlendMode();
        }

        GXTexObj const* Material::GetTexMapAry() const {
            return detail::ConvertOffsToPtr<GXTexObj>(mpGXMem, CalcOffsetTexMapAry(mGXMemCap));
        }

        GXTexObj* Material::GetTexMapAry() {
            return detail::ConvertOffsToPtr<GXTexObj>(mpGXMem, CalcOffsetTexMapAry(mGXMemCap));
        }

        TexSRT const* Material::GetTexSRTAry() const {
            return detail::ConvertOffsToPtr<TexSRT>(mpGXMem, CalcOffsetTexSRTAry(mGXMemCap));
        }

        TexSRT* Material::GetTexSRTAry() {
            return detail::ConvertOffsToPtr<TexSRT>(mpGXMem, CalcOffsetTexSRTAry(mGXMemCap));
        }

        TexCoordGen const* Material::GetTexCoordGenAry() const {
            return detail::ConvertOffsToPtr<TexCoordGen>(mpGXMem,
                                                         CalcOffsetTexCoordGenAry(mGXMemCap));
        }

        TexCoordGen* Material::GetTexCoordGenAry() {
            return detail::ConvertOffsToPtr<TexCoordGen>(mpGXMem,
                                                         CalcOffsetTexCoordGenAry(mGXMemCap));
        }

        ChanCtrl const* Material::GetChanCtrlAry() const {
            return detail::ConvertOffsToPtr<ChanCtrl>(mpGXMem, CalcOffsetChanCtrlAry(mGXMemCap));
        }

        ChanCtrl* Material::GetChanCtrlAry() {
            return detail::ConvertOffsToPtr<ChanCtrl>(mpGXMem, CalcOffsetChanCtrlAry(mGXMemCap));
        }

        ut::Color const* Material::GetMatColAry() const {
            return detail::ConvertOffsToPtr<ut::Color>(mpGXMem, CalcOffsetMatColAry(mGXMemCap));
        }

        ut::Color* Material::GetMatColAry() {
            return detail::ConvertOffsToPtr<ut::Color>(mpGXMem, CalcOffsetMatColAry(mGXMemCap));
        }

        TevSwapMode const* Material::GetTevSwapAry() const {
            return detail::ConvertOffsToPtr<TevSwapMode>(mpGXMem, CalcOffsetTevSwapAry(mGXMemCap));
        }

        TevSwapMode* Material::GetTevSwapAry() {
            return detail::ConvertOffsToPtr<TevSwapMode>(mpGXMem, CalcOffsetTevSwapAry(mGXMemCap));
        }

        AlphaCompare const* Material::GetAlphaComparePtr() const {
            return detail::ConvertOffsToPtr<AlphaCompare>(mpGXMem,
                                                          CalcOffsetGetAlphaCompare(mGXMemCap));
        }

        AlphaCompare* Material::GetAlphaComparePtr() {
            return detail::ConvertOffsToPtr<AlphaCompare>(mpGXMem,
                                                          CalcOffsetGetAlphaCompare(mGXMemCap));
        }

        BlendMode const* Material::GetBlendModePtr() const {
            return detail::ConvertOffsToPtr<BlendMode>(mpGXMem, CalcOffsetBlendMode(mGXMemCap));
        }

        BlendMode* Material::GetBlendModePtr() {
            return detail::ConvertOffsToPtr<BlendMode>(mpGXMem, CalcOffsetBlendMode(mGXMemCap));
        }

        IndirectStage const* Material::GetIndirectStageAry() const {
            return detail::ConvertOffsToPtr<IndirectStage>(mpGXMem,
                                                           CalcOffsetIndirectStageAry(mGXMemCap));
        }

        IndirectStage* Material::GetIndirectStageAry() {
            return detail::ConvertOffsToPtr<IndirectStage>(mpGXMem,
                                                           CalcOffsetIndirectStageAry(mGXMemCap));
        }

        TexSRT const* Material::GetIndTexSRTAry() const {
            return detail::ConvertOffsToPtr<TexSRT>(mpGXMem, CalcOffsetIndTexSRTAry(mGXMemCap));
        }

        TexSRT* Material::GetIndTexSRTAry() {
            return detail::ConvertOffsToPtr<TexSRT>(mpGXMem, CalcOffsetIndTexSRTAry(mGXMemCap));
        }

        TevStage const* Material::GetTevStageAry() const {
            return detail::ConvertOffsToPtr<TevStage>(mpGXMem, CalcOffsetTevStageAry(mGXMemCap));
        }

        TevStage* Material::GetTevStageAry() {
            return detail::ConvertOffsToPtr<TevStage>(mpGXMem, CalcOffsetTevStageAry(mGXMemCap));
        }

        void Material::SetName(char const* name) {
            std::strncpy(mName, name, sizeof mName);
        }

        void Material::SetTextureNum(u8 num) {
            if (num != 0) {
                GXTexObj* texMaps = GetTexMapAry();

                for (u32 i = mGXMemNum.texMap; i < num; ++i)
                    std::memset(&texMaps[i], 0, sizeof *texMaps);

                mGXMemNum.texMap = num;
            }
        }

        void Material::SetTexCoordGenNum(u8 num) {
            if (num != 0) {
                TexCoordGen* texCoordGens = GetTexCoordGenAry();

                for (u32 i = mGXMemNum.texCoordGen; i < num; ++i)
                    texCoordGens[i] = TexCoordGen();

                mGXMemNum.texCoordGen = num;
            }
        }

        void Material::SetTevStageNum(u8 num) {
            if (num != 0) {
                TevStage* tevStages = GetTevStageAry();

                for (u32 i = mGXMemNum.tevStage; i < num; ++i)
                    tevStages[i] = TevStage();

                mGXMemNum.tevStage = num;
            }
        }

        void Material::SetIndStageNum(u8 num) {
            if (num != 0) {
                IndirectStage* indStages = GetIndirectStageAry();

                for (u32 i = mGXMemNum.indStage; i < num; ++i)
                    indStages[i] = IndirectStage();

                mGXMemNum.indStage = num;
            }
        }

        void Material::GetTexture(GXTexObj* pTexObj, u8 texMapIdx) const {
            CopyGXTexObj(pTexObj, &GetTexMapAry()[texMapIdx]);
        }

        void Material::SetTexture(u8 texMapIdx, TPLPalette* pTplRes) {
            GXTexObj* pDstTexObj = &GetTexMapAry()[texMapIdx];

            detail::InitGXTexObjFromTPL(pDstTexObj, pTplRes, 0);
        }

        void Material::SetTextureNoWrap(u8 texMapIdx, TPLPalette* pTplRes) {
            GXTexObj* pDstTexObj = &GetTexMapAry()[texMapIdx];
            GXTexWrapMode wrapS = GXGetTexObjWrapS(pDstTexObj);
            GXTexWrapMode wrapT = GXGetTexObjWrapT(pDstTexObj);

            detail::InitGXTexObjFromTPL(pDstTexObj, pTplRes, 0);
            GXInitTexObjWrapMode(pDstTexObj, wrapS, wrapT);
        }

        void Material::SetTexture(u8 texMapIdx, GXTexObj const& texObj) {
            GXTexObj* pDstTexObj = &GetTexMapAry()[texMapIdx];

            CopyGXTexObj(pDstTexObj, &texObj);
        }

        void Material::SetTextureNoWrap(u8 texMapIdx, GXTexObj const& texObj) {
            GXTexObj* pDstTexObj = &GetTexMapAry()[texMapIdx];
            GXTexWrapMode wrapS = GXGetTexObjWrapS(pDstTexObj);
            GXTexWrapMode wrapT = GXGetTexObjWrapT(pDstTexObj);

            CopyGXTexObj(pDstTexObj, &texObj);
            GXInitTexObjWrapMode(pDstTexObj, wrapS, wrapT);
        }

        s16 Material::GetColorElement(u32 colorType) const {
            switch (colorType) {
            case 0 ... 3:
                if (mGXMemNum.matCol >= 1) {
                    ut::Color const* matCols = GetMatColAry();

                    return GetColorComponentValue(*matCols, colorType & 3);
                }

                break;

            case 4 ... 15: {
                u32 regIdx = (colorType - 4) >> 2;

                switch ((colorType - 4) & 3) {
                case 0:
                    return mTevCols[regIdx].r;

                case 1:
                    return mTevCols[regIdx].g;

                case 2:
                    return mTevCols[regIdx].b;

                case 3:
                    return mTevCols[regIdx].a;
                }
            } break;

            case 16 ... 31: {
                u32 regIdx = (colorType - 16) >> 2;

                return GetColorComponentValue(mTevKCols[regIdx], (colorType - 16) & 3);
            }
                /* break; */
            }

            return 0xff;
        }

        void Material::SetColorElement(u32 colorType, s16 value) {
            switch (colorType) {
            case 0 ... 3:
                if (mGXMemNum.matCol >= 1) {
                    ut::Color* matCols = GetMatColAry();

                    SetColorComponentValue(matCols, colorType & 3, value);
                }

                break;

            case 4 ... 15: {
                u32 regIdx = (colorType - 4) >> 2;

                switch ((colorType - 4) & 3) {
                case 0:
                    mTevCols[regIdx].r = value;
                    break;

                case 1:
                    mTevCols[regIdx].g = value;
                    break;

                case 2:
                    mTevCols[regIdx].b = value;
                    break;

                case 3:
                    mTevCols[regIdx].a = value;
                    break;
                }
            } break;

            case 16 ... 31: {
                u32 regIdx = (colorType - 16) >> 2;

                SetColorComponentValue(&mTevKCols[regIdx], (colorType - 16) & 3, value);
            } break;
            }
        }

        bool Material::SetupGX(bool bModVtxCol, u8 alpha) {
            static GXTevKColorSel kColSels[8] = {
                GX_TEV_KCSEL_K3_A, GX_TEV_KCSEL_K3_B, GX_TEV_KCSEL_K3_G, GX_TEV_KCSEL_K3_R,
                GX_TEV_KCSEL_K2_A, GX_TEV_KCSEL_K2_B, GX_TEV_KCSEL_K2_G, GX_TEV_KCSEL_K2_R};

            static GXTevKAlphaSel kAlpSels[8] = {
                GX_TEV_KASEL_K3_A, GX_TEV_KASEL_K3_B, GX_TEV_KASEL_K3_G, GX_TEV_KASEL_K3_R,
                GX_TEV_KASEL_K2_A, GX_TEV_KASEL_K2_B, GX_TEV_KASEL_K2_G, GX_TEV_KASEL_K2_R};

            bool bUseVtxCol = TRUE;
            bool bUseMatCol = FALSE;

            GXSetNumChans(1);

            if (IsChanCtrlCap()) {
                ChanCtrl* chanCtrls = GetChanCtrlAry();

                GXSetChanCtrl(GX_COLOR0, FALSE, GX_SRC_REG, chanCtrls->GetColorSrc(), GX_LIGHT_NULL,
                              GX_DF_NONE, GX_AF_NONE);
                GXSetChanCtrl(GX_ALPHA0, FALSE, GX_SRC_REG, chanCtrls->GetAlphaSrc(), GX_LIGHT_NULL,
                              GX_DF_NONE, GX_AF_NONE);

                bUseVtxCol = chanCtrls->GetColorSrc() == GX_SRC_VTX ||
                             chanCtrls->GetAlphaSrc() == GX_SRC_VTX;
                bUseMatCol = chanCtrls->GetColorSrc() == GX_SRC_REG ||
                             chanCtrls->GetAlphaSrc() == GX_SRC_REG;
            } else {
                GXSetChanCtrl(GX_COLOR0A0, FALSE, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE,
                              GX_AF_NONE);
            }

            bool bUseRasStage = FALSE;

            if (bUseVtxCol)
                bUseRasStage = bUseRasStage || bModVtxCol;

            if (bUseMatCol) {
                ut::Color matCol(0xffffffff);

                if (IsMatColorCap())
                    matCol = *GetMatColAry();

                matCol = detail::MultipleAlpha(matCol, alpha);
                GXSetChanMatColor(GX_COLOR0A0, matCol);

                bUseRasStage = bUseRasStage || matCol != 0xffffffff;
            }

            bool bSetTexMtx = FALSE;
            bool bUseTexMtx[10];

            for (int i = 0; i < (int)ARRAY_SIZE(bUseTexMtx); ++i)
                bUseTexMtx[i] = FALSE;

            GXSetNumTexGens(mGXMemNum.texCoordGen);

            if (mGXMemNum.texCoordGen) {
                TexCoordGen* texCoordGens = GetTexCoordGenAry();

                for (int i = 0; i < mGXMemNum.texCoordGen; ++i) {
                    u32 texMtx = texCoordGens[i].GetTexMtx();

                    if (texCoordGens[i].GetTexGenType() == 1 && texMtx != 60) {
                        bUseTexMtx[GetTexMtxIdx(texMtx)] = TRUE;
                        bSetTexMtx = TRUE;
                    }

                    GXSetTexCoordGen(static_cast<GXTexCoordID>(i), texCoordGens[i].GetTexGenType(),
                                     texCoordGens[i].GetTexGenSrc(), texMtx);
                }
            }

            if (bSetTexMtx) {
                TexSRT* texSRTs = GetTexSRTAry();
                for (u8 i = 0; i < mGXMemNum.texSRT; ++i) {
                    if (bUseTexMtx[i]) {
                        math::MTX34 texMtx;
                        CalcTextureMtx(&texMtx, texSRTs[i]);

                        GXLoadTexMtxImm(texMtx, GetTexMtx(i), GX_MTX2x4);
                    }
                }
            }

            if (mGXMemNum.texMap) {
                u32 tlutName = 0;
                GXTexObj* texMaps = GetTexMapAry();

                for (int i = 0; i < mGXMemNum.texMap; ++i) {
                    GXTexObj texMap = texMaps[i];
                    int texFmt = GXGetTexObjFmt(&texMap);

                    // TODO: What are 8 and 9?
                    if (texFmt == 8 || texFmt == 9) {
                        TPLClutHeader* pClutHeader =
                            static_cast<TPLClutHeader*>(GXGetTexObjUserData(&texMap));

                        if (pClutHeader) {
                            GXTlutObj tlutObj;

                            GXInitTlutObj(&tlutObj, pClutHeader->data, pClutHeader->format,
                                          pClutHeader->numEntries);
                            GXLoadTlut(&tlutObj, tlutName);
                            GXInitTexObjTlut(&texMap, tlutName);

                            ++tlutName;
                        }
                    }

                    GXLoadTexObj(&texMap, (GXTexMapID)i);
                }
            }

            GXSetTevColorS10(GX_TEVREG0, mTevCols[0]);
            GXSetTevColorS10(GX_TEVREG1, mTevCols[1]);
            GXSetTevColorS10(GX_TEVREG2, mTevCols[2]);

            GXSetTevKColor(GX_KCOLOR0, mTevKCols[0]);
            GXSetTevKColor(GX_KCOLOR1, mTevKCols[1]);
            GXSetTevKColor(GX_KCOLOR2, mTevKCols[2]);
            GXSetTevKColor(GX_KCOLOR3, mTevKCols[3]);

            if (IsTevSwapCap()) {
                TevSwapMode* tevSwaps = GetTevSwapAry();

                for (int i = 0; i < 4; ++i) {
                    GXSetTevSwapModeTable(static_cast<GXTevSwapSel>(i), tevSwaps[i].GetR(),
                                          tevSwaps[i].GetG(), tevSwaps[i].GetB(),
                                          tevSwaps[i].GetA());
                }
            } else {
                GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE,
                                      GX_CH_ALPHA);
                GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_RED, GX_CH_RED, GX_CH_RED, GX_CH_ALPHA);
                GXSetTevSwapModeTable(GX_TEV_SWAP2, GX_CH_GREEN, GX_CH_GREEN, GX_CH_GREEN,
                                      GX_CH_ALPHA);
                GXSetTevSwapModeTable(GX_TEV_SWAP3, GX_CH_BLUE, GX_CH_BLUE, GX_CH_BLUE,
                                      GX_CH_ALPHA);
            }

            bool bSetIndTexMtx = FALSE;
            bool bUseIndTexMtx[3];

            for (int i = 0; i < (int)ARRAY_SIZE(bUseIndTexMtx); ++i)
                bUseIndTexMtx[i] = FALSE;

            if (mGXMemNum.tevStage) {
                GXSetNumTevStages(mGXMemNum.tevStage);

                TevStage* tevStages = GetTevStageAry();
                for (int i = 0; i < mGXMemNum.tevStage; ++i) {
                    GXTevStageID tevStage = static_cast<GXTevStageID>(i);

                    GXSetTevOrder(tevStage, tevStages[i].GetTexCoordGen(), tevStages[i].GetTexMap(),
                                  tevStages[i].GetColorChan());

                    GXSetTevSwapMode(tevStage, tevStages[i].GetRasSwapSel(),
                                     tevStages[i].GetTexSwapSel());

                    GXSetTevColorIn(tevStage, tevStages[i].GetColorInA(),
                                    tevStages[i].GetColorInB(), tevStages[i].GetColorInC(),
                                    tevStages[i].GetColorInD());

                    GXSetTevColorOp(tevStage, tevStages[i].GetColorOp(),
                                    tevStages[i].GetColorBias(), tevStages[i].GetColorScale(),
                                    tevStages[i].IsColorClamp(), tevStages[i].GetColorOutReg());

                    GXSetTevKColorSel(tevStage, tevStages[i].GetKColorSel());

                    GXSetTevAlphaIn(tevStage, tevStages[i].GetAlphaInA(),
                                    tevStages[i].GetAlphaInB(), tevStages[i].GetAlphaInC(),
                                    tevStages[i].GetAlphaInD());

                    GXSetTevAlphaOp(tevStage, tevStages[i].GetAlphaOp(),
                                    tevStages[i].GetAlphaBias(), tevStages[i].GetAlphaScale(),
                                    tevStages[i].IsAlphaClamp(), tevStages[i].GetAlphaOutReg());

                    GXSetTevKAlphaSel(tevStage, tevStages[i].GetKAlphaSel());

                    GXIndTexMtxID indMtxSel = tevStages[i].GetIndMtxSel();
                    GXSetTevIndirect(tevStage, tevStages[i].GetIndStage(),
                                     tevStages[i].GetIndFormat(), tevStages[i].GetIndBiasSel(),
                                     indMtxSel, tevStages[i].GetIndWrapS(),
                                     tevStages[i].GetIndWrapT(), tevStages[i].IsIndAddPrev(),
                                     tevStages[i].IsIndUtcLod(), tevStages[i].GetIndAlphaSel());

                    if (GX_ITM_0 <= indMtxSel && indMtxSel <= GX_ITM_2) {
                        bUseIndTexMtx[indMtxSel - 1] = TRUE;
                        bSetIndTexMtx = TRUE;
                    }
                }

                bUseRasStage = TRUE;
            } else {
                u8 tevStageID = 0;

                if (mGXMemNum.texMap == 0) {
                    GXTevStageID tevStage = static_cast<GXTevStageID>(tevStageID);

                    GXSetTevOrder(tevStage, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
                    GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_C1, GX_CC_RASC, GX_CC_ZERO);
                    GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_A1, GX_CA_RASA, GX_CA_ZERO);

                    ++tevStageID;
                    bUseRasStage = TRUE;
                } else {
                    if (mGXMemNum.texMap == 1) {
                        GXTevStageID tevStage = static_cast<GXTevStageID>(tevStageID);

                        GXSetTevOrder(tevStage, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
                        GXSetTevColorIn(tevStage, GX_CC_C0, GX_CC_C1, GX_CC_TEXC, GX_CC_ZERO);
                        GXSetTevAlphaIn(tevStage, GX_CA_A0, GX_CA_A1, GX_CA_TEXA, GX_CA_ZERO);

                        ++tevStageID;
                    } else {
                        if (mGXMemNum.texMap == 2) {
                            GXTevStageID tevStage;

                            tevStage = static_cast<GXTevStageID>(tevStageID);
                            GXSetTevOrder(tevStage, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
                            GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO,
                                            GX_CC_TEXC);
                            GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                                            GX_CA_TEXA);

                            ++tevStageID;

                            tevStage = static_cast<GXTevStageID>(tevStageID);
                            GXSetTevOrder(tevStage, GX_TEXCOORD1, GX_TEXMAP1, GX_COLOR_NULL);
                            GXSetTevColorIn(tevStage, GX_CC_TEXC, GX_CC_CPREV, GX_CC_KONST,
                                            GX_CC_ZERO);
                            GXSetTevAlphaIn(tevStage, GX_CA_TEXA, GX_CA_APREV, GX_CA_KONST,
                                            GX_CA_ZERO);

                            GXSetTevKColorSel(tevStage, kColSels[0]);
                            GXSetTevKAlphaSel(tevStage, kAlpSels[0]);

                            ++tevStageID;
                        } else {
                            for (int i = 0; i < mGXMemNum.texMap; ++i) {
                                GXTevStageID tevStage = static_cast<GXTevStageID>(tevStageID);

                                GXSetTevOrder(tevStage, static_cast<GXTexCoordID>(i),
                                              static_cast<GXTexMapID>(i), GX_COLOR_NULL);

                                GXTevColorArg colDIn = i == 0 ? GX_CC_ZERO : GX_CC_CPREV;
                                GXTevAlphaArg alpDIn = i == 0 ? GX_CA_ZERO : GX_CA_APREV;

                                GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST,
                                                colDIn);
                                GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_TEXA, GX_CA_KONST,
                                                alpDIn);

                                GXSetTevKColorSel(tevStage, kColSels[i]);
                                GXSetTevKAlphaSel(tevStage, kAlpSels[i]);

                                ++tevStageID;
                            }
                        }

                        if (mTevCols[0] != DefaultBlackColor || mTevCols[1] != DefaultWhiteColor) {
                            GXTevStageID tevStage = static_cast<GXTevStageID>(tevStageID);

                            GXSetTevOrder(tevStage, GX_TEXCOORD_NULL, GX_TEXMAP_NULL,
                                          GX_COLOR_NULL);
                            GXSetTevColorIn(tevStage, GX_CC_C0, GX_CC_C1, GX_CC_CPREV, GX_CC_ZERO);
                            GXSetTevAlphaIn(tevStage, GX_CA_A0, GX_CA_A1, GX_CA_APREV, GX_CA_ZERO);

                            ++tevStageID;
                        }
                    }

                    if (bUseRasStage) {
                        GXTevStageID tevStage = static_cast<GXTevStageID>(tevStageID);

                        GXSetTevOrder(tevStage, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
                        GXSetTevColorIn(tevStage, GX_CC_ZERO, GX_CC_CPREV, GX_CC_RASC, GX_CC_ZERO);
                        GXSetTevAlphaIn(tevStage, GX_CA_ZERO, GX_CA_APREV, GX_CA_RASA, GX_CA_ZERO);

                        ++tevStageID;
                    }
                }

                u8 const tevStageNum = tevStageID;
                for (u8 id = 0; id < tevStageNum; ++id) {
                    GXTevStageID tevStage = static_cast<GXTevStageID>(id);

                    GXSetTevColorOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);
                    GXSetTevAlphaOp(tevStage, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);

                    GXSetTevDirect(tevStage);
                    GXSetTevSwapMode(tevStage, GX_TEV_SWAP0, GX_TEV_SWAP0);
                }

                GXSetNumTevStages(tevStageNum);
            }

            if (bSetIndTexMtx) {
                TexSRT* indTexSRTs = GetIndTexSRTAry();

                for (int i = 0; i < mGXMemNum.indSRT; ++i) {
                    if (bUseIndTexMtx[i]) {
                        Mtx23 mtx;

                        CalcIndTexMtx(mtx, indTexSRTs[i]);
                        SetIndTexMtx(static_cast<GXIndTexMtxID>(i + 1), mtx);
                    }
                }
            }

            GXSetNumIndStages(mGXMemNum.indStage);

            if (mGXMemNum.indStage) {
                IndirectStage* indirectStages = GetIndirectStageAry();

                for (int i = 0; i < mGXMemNum.indStage; ++i) {
                    GXIndTexStageID indStage = static_cast<GXIndTexStageID>(i);

                    GXSetIndTexOrder(indStage, indirectStages[i].GetTexCoordGen(),
                                     indirectStages[i].GetTexMap());

                    GXSetIndTexCoordScale(indStage, indirectStages[i].GetScaleS(),
                                          indirectStages[i].GetScaleT());
                }
            }

            if (IsAlphaCompareCap()) {
                AlphaCompare* pAlpComp = GetAlphaComparePtr();

                GXSetAlphaCompare(pAlpComp->GetComp0(), pAlpComp->GetRef0(), pAlpComp->GetOp(),
                                  pAlpComp->GetComp1(), pAlpComp->GetRef1());
            } else {
                GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_AND, GX_ALWAYS, 0);
            }

            if (IsBlendModeCap()) {
                BlendMode* pBlendMode = GetBlendModePtr();

                GXSetBlendMode(pBlendMode->GetType(), pBlendMode->GetSrcFactor(),
                               pBlendMode->GetDstFactor(), pBlendMode->GetOp());
            } else {
                GXSetBlendMode(GX_BM_BLEND, GX_BL_SRCALPHA, GX_BL_INVSRCALPHA, GX_LO_SET);
            }

            return bUseRasStage && bUseVtxCol;
        }

        void Material::BindAnimation(AnimTransform* pAnimTrans) {
            pAnimTrans->Bind(this);
        }

        void Material::UnbindAnimation(AnimTransform* pAnimTrans) {
            NW4HBM_RANGE_FOR_NO_AUTO_INC(it, mAnimList) {
                decltype(it) currIt = it++;

                // NULL is for Layout::UnbindAllAnimation
                if (pAnimTrans == NULL || currIt->GetAnimTransform() == pAnimTrans) {
                    mAnimList.Erase(currIt);
                    currIt->Reset();
                }
            }
        }

        void Material::UnbindAllAnimation() {
            UnbindAnimation(NULL);
        }

        void Material::Animate() {
            NW4HBM_RANGE_FOR(it, mAnimList) {
                if (it->IsEnable()) {
                    AnimTransform* animTrans = it->GetAnimTransform();

                    animTrans->Animate(it->GetIndex(), this);
                }
            }
        }

        void Material::AddAnimationLink(AnimationLink* pAnimationLink) {
            mAnimList.PushBack(pAnimationLink);
        }

        AnimationLink* Material::FindAnimationLink(AnimTransform* pAnimTrans) {
            return detail::FindAnimationLink(&mAnimList, pAnimTrans);
        }

        void Material::SetAnimationEnable(AnimTransform* pAnimTrans, bool bEnable) {
            if (AnimationLink* pAnimLink = FindAnimationLink(pAnimTrans))
                pAnimLink->SetEnable(bEnable);
        }

        Size detail::GetTextureSize(Material* pMaterial, u8 texMapIdx) {
            if (texMapIdx >= pMaterial->GetTextureNum())
                return Size(0.0f, 0.0f);

            GXTexObj texObj;
            pMaterial->GetTexture(&texObj, texMapIdx);

            return Size(GXGetTexObjWidth(&texObj), GXGetTexObjHeight(&texObj));
        }

    }  // namespace lyt
}  // namespace nw4hbm

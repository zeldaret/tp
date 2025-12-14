#include "animation.h"

#include <cstring.h>
#include <new.h>


#include <revolution/types.h>

#include "common.h"
#include "layout.h"
#include "material.h"
#include "pane.h"
#include "resourceAccessor.h"
#include "types.h"

#include "../ut/LinkList.h"
#include "../ut/inlines.h"

#include <revolution/tpl.h>

namespace {
    using namespace nw4hbm;
    using namespace nw4hbm::lyt;

    inline bool RIsSame(f32 const a, f32 const b, f32 const tolerance) {
        f32 const c = a - b;

        return -tolerance < c && c < tolerance;
    }

    u16 GetStepCurveValue(f32 frame, res::StepKey const* keyArray, u32 keySize);
    f32 GetHermiteCurveValue(f32 frame, res::HermiteKey const* keyArray, u32 keySize);

    void AnimatePainSRT(Pane* pPane, res::AnimationInfo const* pAnimInfo,
                        u32 const* animTargetOffsets, f32 frame);
    void AnimateVisibility(Pane* pPane, res::AnimationInfo const* pAnimInfo,
                           u32 const* animTargetOffsets, f32 frame);
    void AnimateVertexColor(Pane* pPane, res::AnimationInfo const* pAnimInfo,
                            u32 const* animTargetOffsets, f32 frame);
    void AnimateMaterialColor(Material* pMaterial, res::AnimationInfo const* pAnimInfo,
                              u32 const* animTargetOffsets, f32 frame);
    void AnimateTextureSRT(Material* pMaterial, res::AnimationInfo const* pAnimInfo,
                           u32 const* animTargetOffsets, f32 frame);
    void AnimateTexturePattern(Material* pMaterial, res::AnimationInfo const* pAnimInfo,
                               u32 const* animTargetOffsets, f32 frame, void** tpls);
    void AnimateIndTexSRT(Material* pMaterial, res::AnimationInfo const* pAnimInfo,
                          u32 const* animTargetOffsets, f32 frame);
}  // unnamed namespace

namespace {

    u16 GetStepCurveValue(f32 frame, res::StepKey const* keyArray, u32 keySize) {
        if (keySize == 1 || frame <= keyArray[0].frame)
            return keyArray[0].value;

        if (frame >= keyArray[keySize - 1].frame)
            return keyArray[keySize - 1].value;

        int ikeyL = 0;
        int ikeyR = keySize - 1;

        while (ikeyL != ikeyR - 1 && ikeyL != ikeyR) {
            int ikeyCenter = (ikeyL + ikeyR) / 2;
            res::StepKey const& centerKey = keyArray[ikeyCenter];

            if (frame < centerKey.frame)
                ikeyR = ikeyCenter;
            else
                ikeyL = ikeyCenter;
        }

        if (RIsSame(frame, keyArray[ikeyR].frame, 1e-3f))
            return keyArray[ikeyR].value;
        else
            return keyArray[ikeyL].value;
    }

    f32 GetHermiteCurveValue(f32 frame, res::HermiteKey const* keyArray, u32 keySize) {
        if (keySize == 1 || frame <= keyArray[0].frame)
            return keyArray[0].value;

        if (frame >= keyArray[keySize - 1].frame)
            return keyArray[keySize - 1].value;

        int ikeyL = 0;
        int ikeyR = keySize - 1;

        while (ikeyL != ikeyR - 1 && ikeyL != ikeyR) {
            int ikeyCenter = (ikeyL + ikeyR) / 2;

            if (frame <= keyArray[ikeyCenter].frame)
                ikeyR = ikeyCenter;
            else
                ikeyL = ikeyCenter;
        }

        res::HermiteKey const& key0 = keyArray[ikeyL];
        res::HermiteKey const& key1 = keyArray[ikeyR];

        if (RIsSame(frame, key1.frame, 1e-3f)) {
            if (ikeyR < keySize - 1 && keyArray[ikeyR + 1].frame == key1.frame)
                return keyArray[ikeyR + 1].value;
            else
                return key1.value;
        }

        f32 t1 = frame - key0.frame;
        f32 t2 = 1.0f / (key1.frame - key0.frame);
        f32 v0 = key0.value;
        f32 v1 = key1.value;
        f32 s0 = key0.slope;
        f32 s1 = key1.slope;

        f32 t1t1t2 = t1 * t1 * t2;
        f32 t1t1t2t2 = t1t1t2 * t2;
        f32 t1t1t1t2t2 = t1 * t1t1t2t2;
        f32 t1t1t1t2t2t2 = t1t1t1t2t2 * t2;

        // Does anyone know what this means? Because I don't
        return v0 * (2.0f * t1t1t1t2t2t2 - 3.0f * t1t1t2t2 + 1.0f) +
               v1 * (-2.0f * t1t1t1t2t2t2 + 3.0f * t1t1t2t2) +
               s0 * (t1t1t1t2t2 - 2.0f * t1t1t2 + t1) + s1 * (t1t1t1t2t2 - t1t1t2);
    }

    void AnimatePainSRT(Pane* pPane, res::AnimationInfo const* pAnimInfo,
                        u32 const* animTargetOffsets, f32 frame) {
        for (int i = 0; i < pAnimInfo->num; ++i) {
            res::AnimationTarget const* pAnimTarget =
                detail::ConvertOffsToPtr<res::AnimationTarget>(pAnimInfo, animTargetOffsets[i]);

            res::HermiteKey const* keys =
                detail::ConvertOffsToPtr<res::HermiteKey>(pAnimTarget, pAnimTarget->keysOffset);

            pPane->SetSRTElement(pAnimTarget->target,
                                 GetHermiteCurveValue(frame, keys, pAnimTarget->keyNum));
        }
    }

    void AnimateVisibility(Pane* pPane, res::AnimationInfo const* pAnimInfo,
                           u32 const* animTargetOffsets, f32 frame) {
        for (int i = 0; i < pAnimInfo->num; ++i) {
            res::AnimationTarget const* pAnimTarget =
                detail::ConvertOffsToPtr<res::AnimationTarget>(pAnimInfo, animTargetOffsets[i]);

            res::StepKey const* keys =
                detail::ConvertOffsToPtr<res::StepKey>(pAnimTarget, pAnimTarget->keysOffset);

            pPane->SetVisible(GetStepCurveValue(frame, keys, pAnimTarget->keyNum) != 0);
        }
    }

    void AnimateVertexColor(Pane* pPane, res::AnimationInfo const* pAnimInfo,
                            u32 const* animTargetOffsets, f32 frame) {
        for (int i = 0; i < pAnimInfo->num; ++i) {
            res::AnimationTarget const* pAnimTarget =
                detail::ConvertOffsToPtr<res::AnimationTarget>(pAnimInfo, animTargetOffsets[i]);

            res::HermiteKey const* keys =
                detail::ConvertOffsToPtr<res::HermiteKey>(pAnimTarget, pAnimTarget->keysOffset);

            f32 value = GetHermiteCurveValue(frame, keys, pAnimTarget->keyNum);
            value += 0.5f;

            u8 u8Val;
            OSf32tou8(&value, &u8Val);

            // TODO(FAKE): What (release)
            pPane->SetColorElement(pAnimTarget->target, *static_cast<u8*>(&u8Val));
        }
    }

    void AnimateMaterialColor(Material* pMaterial, res::AnimationInfo const* pAnimInfo,
                              u32 const* animTargetOffsets, f32 frame) {
        for (int i = 0; i < pAnimInfo->num; ++i) {
            res::AnimationTarget const* pAnimTarget =
                detail::ConvertOffsToPtr<res::AnimationTarget>(pAnimInfo, animTargetOffsets[i]);

            res::HermiteKey const* keys =
                detail::ConvertOffsToPtr<res::HermiteKey>(pAnimTarget, pAnimTarget->keysOffset);

            f32 value = GetHermiteCurveValue(frame, keys, pAnimTarget->keyNum);
            value += 0.5f;

            s16 s16Val;
            OSf32tos16(&value, &s16Val);
            s16Val = ut::Min<s16>(ut::Max<s16>(s16Val, -1024), 1023);

            pMaterial->SetColorElement(pAnimTarget->target, s16Val);
        }
    }

    void AnimateTextureSRT(Material* pMaterial, res::AnimationInfo const* pAnimInfo,
                           u32 const* animTargetOffsets, f32 frame) {
        for (int i = 0; i < pAnimInfo->num; ++i) {
            res::AnimationTarget const* pAnimTarget =
                detail::ConvertOffsToPtr<res::AnimationTarget>(pAnimInfo, animTargetOffsets[i]);

            if (pAnimTarget->id < pMaterial->GetTexSRTCap()) {
                res::HermiteKey const* keys =
                    detail::ConvertOffsToPtr<res::HermiteKey>(pAnimTarget, pAnimTarget->keysOffset);

                pMaterial->SetTexSRTElement(pAnimTarget->id, pAnimTarget->target,
                                            GetHermiteCurveValue(frame, keys, pAnimTarget->keyNum));
            }
        }
    }

    void AnimateTexturePattern(Material* pMaterial, res::AnimationInfo const* pAnimInfo,
                               u32 const* animTargetOffsets, f32 frame, void** tpls) {
        for (int j = 0; j < pAnimInfo->num; ++j)  // not i? idk. but also idc
        {
            res::AnimationTarget const* pAnimTarget =
                detail::ConvertOffsToPtr<res::AnimationTarget>(pAnimInfo, animTargetOffsets[j]);

            if (pAnimTarget->id < pMaterial->GetTextureNum() && !pAnimTarget->target) {
                res::StepKey const* keys =
                    detail::ConvertOffsToPtr<res::StepKey>(pAnimTarget, pAnimTarget->keysOffset);

                u16 fileIdx = GetStepCurveValue(frame, keys, pAnimTarget->keyNum);

                pMaterial->SetTextureNoWrap(pAnimTarget->id,
                                            static_cast<TPLPalette*>(tpls[fileIdx]));
            }
        }
    }

    void AnimateIndTexSRT(Material* pMaterial, res::AnimationInfo const* pAnimInfo,
                          u32 const* animTargetOffsets, f32 frame) {
        for (int i = 0; i < pAnimInfo->num; ++i) {
            res::AnimationTarget const* pAnimTarget =
                detail::ConvertOffsToPtr<res::AnimationTarget>(pAnimInfo, animTargetOffsets[i]);

            if (pAnimTarget->id < pMaterial->GetIndTexSRTCap()) {
                res::HermiteKey const* keys =
                    detail::ConvertOffsToPtr<res::HermiteKey>(pAnimTarget, pAnimTarget->keysOffset);

                pMaterial->SetIndTexSRTElement(
                    pAnimTarget->id, pAnimTarget->target,
                    GetHermiteCurveValue(frame, keys, pAnimTarget->keyNum));
            }
        }
    }

}  // unnamed namespace

namespace nw4hbm {
    namespace lyt {

        AnimTransform::AnimTransform() : mpRes(NULL), mFrame(0.0f) {}

        AnimTransform::~AnimTransform() {}

        u16 AnimTransform::GetFrameSize() const {
            return mpRes->frameSize;
        }

        /* New! */
        bool AnimTransform::IsLoopData() const {
            return mpRes->loop;
        }

        AnimTransformBasic::AnimTransformBasic()
            : mpFileResAry(NULL), mAnimLinkAry(NULL), mAnimLinkNum(0) {}

        AnimTransformBasic::~AnimTransformBasic() {
            if (mAnimLinkAry)
                Layout::FreeMemory(mAnimLinkAry);

            if (mpFileResAry)
                Layout::FreeMemory(mpFileResAry);
        }

        void AnimTransformBasic::SetResource(res::AnimationBlock const* pRes,
                                             ResourceAccessor* pResAccessor) {
            mpRes = pRes;
            mpFileResAry = NULL;

            if (pRes->fileNum) {
                mpFileResAry =
                    static_cast<void**>(Layout::AllocMemory(sizeof *mpFileResAry * pRes->fileNum));

                if (mpFileResAry) {
                    u32 const* fileNameOffsets =
                        detail::ConvertOffsToPtr<u32>(mpRes, sizeof *mpRes);

                    for (int i = 0; i < mpRes->fileNum; ++i) {
                        mpFileResAry[i] = pResAccessor->GetResource(
                            ResourceAccessor::SIGNATURE_TEXTURE_IMAGE,
                            detail::GetStrTableStr(fileNameOffsets, i), NULL);
                    }
                }
            }

            mAnimLinkAry = static_cast<AnimationLink*>(
                Layout::AllocMemory(sizeof *mAnimLinkAry * pRes->animContNum));

            if (mAnimLinkAry) {
                mAnimLinkNum = pRes->animContNum;

                /* NOTE: AnimationLink is not trivially copyable because it has a member
                 * that inherits from NonCopyable; however, clangd told me I can silence
                 * the warning by explicitly casting it to void *.
                 */

                /* TODO: Is this code problematic in practice?
                 *
                 * Probably not, since this is std::memset, not std::memcpy
                 */
                std::memset(reinterpret_cast<void*>(mAnimLinkAry), 0,
                            sizeof *mAnimLinkAry * pRes->animContNum);

                for (u16 i = 0; i < pRes->animContNum; ++i)
                    new (&mAnimLinkAry[i]) AnimationLink;
            }
        }

        void AnimTransformBasic::Bind(Pane* pPane, bool bRecursive) {
            u32 const* animContOffsets =
                detail::ConvertOffsToPtr<u32>(mpRes, mpRes->animContOffsetsOffset);

            for (u16 i = 0; i < mpRes->animContNum; ++i) {
                res::AnimationContent const* pAnimCont =
                    detail::ConvertOffsToPtr<res::AnimationContent>(mpRes, animContOffsets[i]);

                if (pAnimCont->type == res::AnimationContent::ACType_Pane) {
                    Pane* pFindPane = pPane->FindPaneByName(pAnimCont->name, bRecursive);

                    if (pFindPane) {
                        mAnimLinkAry[i].SetAnimTransform(this, i);
                        pFindPane->AddAnimationLink(&mAnimLinkAry[i]);
                    }
                } else {
                    Material* pFindMat = pPane->FindMaterialByName(pAnimCont->name, bRecursive);

                    if (pFindMat) {
                        mAnimLinkAry[i].SetAnimTransform(this, i);
                        pFindMat->AddAnimationLink(&mAnimLinkAry[i]);
                    }
                }
            }
        }

        void AnimTransformBasic::Bind(Material* pMaterial) {
            u32 const* animContOffsets =
                detail::ConvertOffsToPtr<u32>(mpRes, mpRes->animContOffsetsOffset);

            for (u16 i = 0; i < mpRes->animContNum; ++i) {
                res::AnimationContent const* pAnimCont =
                    detail::ConvertOffsToPtr<res::AnimationContent>(mpRes, animContOffsets[i]);

                if (pAnimCont->type == res::AnimationContent::ACType_Material &&
                    detail::EqualsMaterialName(pMaterial->GetName(), pAnimCont->name))
                {
                    mAnimLinkAry[i].SetAnimTransform(this, i);
                    pMaterial->AddAnimationLink(&mAnimLinkAry[i]);
                }
            }
        }

        void AnimTransformBasic::Animate(u32 idx, Pane* pPane) {
            u32 animContOffsets =
                detail::ConvertOffsToPtr<u32>(mpRes, mpRes->animContOffsetsOffset)[idx];

            res::AnimationContent const* pAnimCont =
                detail::ConvertOffsToPtr<res::AnimationContent>(mpRes, animContOffsets);

            u32 const* animInfoOffsets =
                detail::ConvertOffsToPtr<u32>(pAnimCont, sizeof *pAnimCont);

            for (int i = 0; i < pAnimCont->num; ++i) {
                res::AnimationInfo const* pAnimInfo =
                    detail::ConvertOffsToPtr<res::AnimationInfo>(pAnimCont, animInfoOffsets[i]);

                u32 const* animTargetOffsets =
                    detail::ConvertOffsToPtr<u32>(pAnimInfo, sizeof *pAnimInfo);

                switch (pAnimInfo->kind) {
                case res::AnimationInfo::SIGNATURE_PANE_PAIN_SRT_INFO:
                    AnimatePainSRT(pPane, pAnimInfo, animTargetOffsets, mFrame);
                    break;

                case res::AnimationInfo::SIGNATURE_PANE_VISIBILITY_INFO:
                    AnimateVisibility(pPane, pAnimInfo, animTargetOffsets, mFrame);
                    break;

                case res::AnimationInfo::SIGNATURE_PANE_VERTEX_COLOR_INFO:
                    AnimateVertexColor(pPane, pAnimInfo, animTargetOffsets, mFrame);
                    break;
                }
            }
        }

        void AnimTransformBasic::Animate(u32 idx, Material* pMaterial) {
            u32 animContOffsets =
                detail::ConvertOffsToPtr<u32>(mpRes, mpRes->animContOffsetsOffset)[idx];

            res::AnimationContent const* pAnimCont =
                detail::ConvertOffsToPtr<res::AnimationContent>(mpRes, animContOffsets);

            u32 const* animInfoOffsets =
                detail::ConvertOffsToPtr<u32>(pAnimCont, sizeof *pAnimCont);

            for (int i = 0; i < pAnimCont->num; ++i) {
                res::AnimationInfo const* pAnimInfo =
                    detail::ConvertOffsToPtr<res::AnimationInfo>(pAnimCont, animInfoOffsets[i]);

                u32 const* animTargetOffsets =
                    detail::ConvertOffsToPtr<u32>(pAnimInfo, sizeof *pAnimInfo);

                switch (pAnimInfo->kind) {
                case res::AnimationInfo::SIGNATURE_MATERIAL_COLOR_INFO:
                    AnimateMaterialColor(pMaterial, pAnimInfo, animTargetOffsets, mFrame);
                    break;

                case res::AnimationInfo::SIGNATURE_MATERIAL_TEXTURE_SRT_INFO:
                    AnimateTextureSRT(pMaterial, pAnimInfo, animTargetOffsets, mFrame);
                    break;

                case res::AnimationInfo::SIGNATURE_MATERIAL_TEXTURE_PATTERN_INFO:
                    if (mpFileResAry) {
                        AnimateTexturePattern(pMaterial, pAnimInfo, animTargetOffsets, mFrame,
                                              mpFileResAry);
                    }

                    break;

                case res::AnimationInfo::SIGNATURE_MATERIAL_IND_TEX_SRT_INFO:
                    AnimateIndTexSRT(pMaterial, pAnimInfo, animTargetOffsets, mFrame);
                    break;
                }
            }
        }

        namespace detail {

            AnimationLink* FindAnimationLink(AnimationLink::LinkList* pAnimList,
                                             AnimTransform* pAnimTrans) {
                NW4HBM_RANGE_FOR(it, *pAnimList) {
                    if (pAnimTrans == it->GetAnimTransform())
                        return &(*it);
                }

                return NULL;
            }

        }  // namespace detail

    }  // namespace lyt
}  // namespace nw4hbm

#include "pane.h"

#include <cstring.h>

#include "../macros.h"

#include <revolution/types.h>

#include "animation.h"
#include "common.h"
#include "drawInfo.h"
#include "layout.h"
#include "material.h"
#include "types.h"

#include "../math/constants.h"
#include "../math/types.h"
#include "../ut/Color.h"
#include "../ut/LinkList.h"
#include "../ut/Rect.h"
#include "../ut/RuntimeTypeInfo.h"

#include <revolution/gx/GXTransform.h>
#include <revolution/mtx.h>

namespace {
    using namespace nw4hbm;
    using namespace nw4hbm::lyt;

    void ReverseYAxis(math::MTX34* pMtx);
}  // unnamed namespace

namespace nw4hbm {
    namespace lyt {
        // .bss
        ut::detail::RuntimeTypeInfo const Pane::typeInfo(NULL);
    }  // namespace lyt
}  // namespace nw4hbm

namespace {

    void ReverseYAxis(math::MTX34* pMtx) {
        pMtx->_01 = -pMtx->_01;
        pMtx->_11 = -pMtx->_11;
        pMtx->_21 = -pMtx->_21;
    }

}  // unnamed namespace

namespace nw4hbm {
    namespace lyt {

        namespace detail {

            PaneBase::PaneBase() {}

            PaneBase::~PaneBase() {}

        }  // namespace detail

        Pane::Pane() {
            Init();

            mBasePosition = 4;
            std::memset(mName, 0, sizeof mName);
            std::memset(mUserData, 0, sizeof mUserData);
            mTranslate = math::VEC3(0.0f, 0.0f, 0.0f);
            mRotate = math::VEC3(0.0f, 0.0f, 0.0f);
            mScale = math::VEC2(1.0f, 1.0f);
            mSize = Size(0.0f, 0.0f);
            mAlpha = 0xff;
            mGlbAlpha = mAlpha;
            detail::SetBit(&mFlag, 0, TRUE);
        }

        Pane::Pane(res::Pane const* pBlock) {
            Init();

            mBasePosition = pBlock->basePosition;
            SetName(pBlock->name);
            SetUserData(pBlock->userData);
            mTranslate = pBlock->translate;
            mRotate = pBlock->rotate;
            mScale = pBlock->scale;
            mSize = pBlock->size;
            mAlpha = pBlock->alpha;
            mGlbAlpha = mAlpha;
            mFlag = pBlock->flag;
        }

        void Pane::Init() {
            mpParent = NULL;
            mpMaterial = NULL;
            mbUserAllocated = FALSE;
        }

        Pane::~Pane() {
            NW4HBM_RANGE_FOR_NO_AUTO_INC(it, mChildList) {
                decltype(it) currIt = it++;

                mChildList.Erase(currIt);

                if (!currIt->IsUserAllocated()) {
                    currIt->~Pane();
                    Layout::FreeMemory(&(*currIt));
                }
            }

            UnbindAnimationSelf(NULL);

            if (mpMaterial && !mpMaterial->IsUserAllocated()) {
                mpMaterial->~Material();
                Layout::FreeMemory(mpMaterial);
            }
        }

        void Pane::SetName(char const* name) {
            std::strncpy(mName, name, sizeof mName);
        }

        void Pane::SetUserData(char const* userData) {
            std::strncpy(mUserData, userData, sizeof mUserData);
        }

        void Pane::AppendChild(Pane* pChild) {
            InsertChild(mChildList.GetEndIter(), pChild);
        }

        void Pane::PrependChild(Pane* pChild) {
            InsertChild(mChildList.GetBeginIter(), pChild);
        }

        void Pane::InsertChild(Pane* pNext, Pane* pChild) {
            InsertChild(LinkList::GetIteratorFromPointer(pNext), pChild);
        }

        void Pane::InsertChild(LinkList::Iterator next, Pane* pChild) {
            mChildList.Insert(next, pChild);
            pChild->mpParent = this;
        }

        void Pane::RemoveChild(Pane* pChild) {
            mChildList.Erase(pChild);
            pChild->mpParent = NULL;
        }

        ut::Rect Pane::GetPaneRect(DrawInfo const& drawInfo) const {
            ut::Rect ret;
            math::VEC2 basePt = GetVtxPos();

            ret.left = basePt.x;
            ret.top = basePt.y;
            ret.right = ret.left + mSize.width;
            ret.bottom = ret.top + mSize.height;

            if (drawInfo.IsYAxisUp()) {
                ret.top = -ret.top;
                ret.bottom = -ret.bottom;
            }

            return ret;
        }

        ut::Color Pane::GetVtxColor(u32) const {
            return 0xffffffff;
        }

        void Pane::SetVtxColor(u32, ut::Color) {
            /* ... */
        }

        u8 Pane::GetColorElement(u32 idx) const {
            switch (idx) {
            case 16:
                return mAlpha;

            default:
                return GetVtxColorElement(idx);
            }
        }

        void Pane::SetColorElement(u32 idx, u8 value) {
            switch (idx) {
            case 16:
                mAlpha = value;
                break;

            default:
                SetVtxColorElement(idx, value);
                break;
            }
        }

        u8 Pane::GetVtxColorElement(u32) const {
            return 0xff;
        }

        void Pane::SetVtxColorElement(u32, u8) {
            /* ... */
        }

        Pane* Pane::FindPaneByName(char const* findName, bool bRecursive) {
            if (detail::EqualsPaneName(mName, findName))
                return this;

            if (bRecursive) {
                NW4HBM_RANGE_FOR(it, mChildList) {
                    if (Pane* pPane = it->FindPaneByName(findName, TRUE))
                        return pPane;
                }
            }

            return NULL;
        }

        Material* Pane::FindMaterialByName(char const* findName, bool bRecursive) {
            if (mpMaterial && detail::EqualsMaterialName(mpMaterial->GetName(), findName)) {
                return mpMaterial;
            }

            if (bRecursive) {
                NW4HBM_RANGE_FOR(it, mChildList) {
                    if (Material* pMat = it->FindMaterialByName(findName, TRUE))
                        return pMat;
                }
            }

            return NULL;
        }

        void Pane::CalculateMtx(DrawInfo const& drawInfo) {
            f32 const invAlpha = 1.0f / 255.0f;

            if (!detail::TestBit(mFlag, 0) && !drawInfo.IsInvisiblePaneCalculateMtx())
                return;

            {  // 0x3921 wants lexical_block
                math::MTX34 mtx1;
                math::MTX34 mtx2;
                math::MTX34 rotateMtx;

                {  // 0x3970 wants lexical_block
                    math::VEC2 scale(mScale);

                    if (drawInfo.IsLocationAdjust() && detail::TestBit(mFlag, 2)) {
                        scale.x *= drawInfo.GetLocationAdjustScale().x;
                        scale.y *= drawInfo.GetLocationAdjustScale().y;
                    }

                    MTXScale(mtx2, scale.x, scale.y, 1.0f);
                }

                MTXRotRad(rotateMtx, 'x', mRotate.x * math::convert::Deg2Rad);
                MTXConcat(rotateMtx, mtx2, mtx1);

                MTXRotRad(rotateMtx, 'y', mRotate.y * math::convert::Deg2Rad);
                MTXConcat(rotateMtx, mtx1, mtx2);

                MTXRotRad(rotateMtx, 'z', mRotate.z * math::convert::Deg2Rad);
                MTXConcat(rotateMtx, mtx2, mtx1);

                MTXTransApply(mtx1, mMtx, mTranslate.x, mTranslate.y, mTranslate.z);
            }

            if (mpParent)
                math::MTX34Mult(&mGlbMtx, &mpParent->mGlbMtx, &mMtx);
            else if (drawInfo.IsMultipleViewMtxOnDraw())
                mGlbMtx = mMtx;
            else
                math::MTX34Mult(&mGlbMtx, &drawInfo.GetViewMtx(), &mMtx);

            if (drawInfo.IsInfluencedAlpha() && mpParent)
                mGlbAlpha = mAlpha * drawInfo.GetGlobalAlpha();
            else
                mGlbAlpha = mAlpha;

            // cr = const ref? const retainer?
            f32 crGlobalAlpha = drawInfo.GetGlobalAlpha();
            bool bCrInfluenced = drawInfo.IsInfluencedAlpha();

            bool bModDrawInfo = detail::TestBit(mFlag, 1) && mAlpha != 0xff;

            if (bModDrawInfo) {
                // mt = mutable, probably
                DrawInfo& mtDrawInfo = const_cast<DrawInfo&>(drawInfo);

                mtDrawInfo.SetGlobalAlpha(crGlobalAlpha * mAlpha * invAlpha);
                mtDrawInfo.SetInfluencedAlpha(TRUE);
            }

            CalculateMtxChild(drawInfo);

            // restore changed values if applicable
            if (bModDrawInfo) {
                DrawInfo& mtDrawInfo = const_cast<DrawInfo&>(drawInfo);

                mtDrawInfo.SetGlobalAlpha(crGlobalAlpha);
                mtDrawInfo.SetInfluencedAlpha(bCrInfluenced);
            }
        }

        void Pane::CalculateMtxChild(DrawInfo const& drawInfo) {
            NW4HBM_RANGE_FOR(it, mChildList)
            it->CalculateMtx(drawInfo);
        }

        void Pane::Draw(DrawInfo const& drawInfo) {
            if (detail::TestBit(mFlag, 0)) {
                DrawSelf(drawInfo);

                NW4HBM_RANGE_FOR(it, mChildList)
                it->Draw(drawInfo);
            }
        }

        void Pane::DrawSelf(DrawInfo const& drawInfo) {
            if (mpParent && drawInfo.IsDebugDrawMode()) {
                LoadMtx(drawInfo);
                detail::DrawLine(GetVtxPos(), mSize, 0x00ff00ff);  // green
            }
        }

        void Pane::Animate(u32 option) {
            AnimateSelf(option);

            if (detail::TestBit(mFlag, 0) || !(option & 1)) {
                NW4HBM_RANGE_FOR(it, mChildList)
                it->Animate(option);
            }
        }

        void Pane::AnimateSelf(u32 option) {
            NW4HBM_RANGE_FOR(it, mAnimList) {
                if (it->IsEnable()) {
                    AnimTransform* animTrans = it->GetAnimTransform();

                    animTrans->Animate(it->GetIndex(), this);
                }
            }

            if ((detail::TestBit(mFlag, 0) || !(option & 1)) && mpMaterial)
                mpMaterial->Animate();
        }

        void Pane::BindAnimation(AnimTransform* pAnimTrans, bool bRecursive) {
            pAnimTrans->Bind(this, bRecursive);
        }

        void Pane::UnbindAnimation(AnimTransform* pAnimTrans, bool bRecursive) {
            UnbindAnimationSelf(pAnimTrans);

            if (bRecursive) {
                NW4HBM_RANGE_FOR(it, mChildList)
                it->UnbindAnimation(pAnimTrans, bRecursive);
            }
        }

        void Pane::UnbindAllAnimation(bool bRecursive) {
            UnbindAnimation(NULL, bRecursive);
        }

        void Pane::UnbindAnimationSelf(AnimTransform* pAnimTrans) {
            if (mpMaterial)
                mpMaterial->UnbindAnimation(pAnimTrans);

            NW4HBM_RANGE_FOR_NO_AUTO_INC(it, mAnimList) {
                decltype(it) currIt = it++;

                // NULL is for UnbindAllAnimation
                if (pAnimTrans == NULL || currIt->GetAnimTransform() == pAnimTrans) {
                    mAnimList.Erase(currIt);
                    currIt->Reset();
                }
            }
        }

        void Pane::AddAnimationLink(AnimationLink* pAnimationLink) {
            mAnimList.PushBack(pAnimationLink);
        }

        AnimationLink* Pane::FindAnimationLink(AnimTransform* pAnimTrans) {
            if (AnimationLink* ret = detail::FindAnimationLink(&mAnimList, pAnimTrans))
                return ret;

            if (mpMaterial) {
                if (AnimationLink* ret = mpMaterial->FindAnimationLink(pAnimTrans))
                    return ret;
            }

            return NULL;
        }

        void Pane::SetAnimationEnable(AnimTransform* pAnimTrans, bool bEnable, bool bRecursive) {
            if (AnimationLink* pAnimLink = detail::FindAnimationLink(&mAnimList, pAnimTrans)) {
                pAnimLink->SetEnable(bEnable);
            }

            if (mpMaterial)
                mpMaterial->SetAnimationEnable(pAnimTrans, bEnable);

            if (bRecursive) {
                NW4HBM_RANGE_FOR(it, mChildList)
                it->SetAnimationEnable(pAnimTrans, bEnable, bRecursive);
            }
        }

        void Pane::LoadMtx(DrawInfo const& drawInfo) {
            math::MTX34 mtx;
            MtxPtr mtxPtr = NULL;

            if (drawInfo.IsMultipleViewMtxOnDraw()) {
                math::MTX34Mult(&mtx, &drawInfo.GetViewMtx(), &mGlbMtx);

                if (drawInfo.IsYAxisUp())
                    ReverseYAxis(&mtx);

                mtxPtr = mtx;
            } else if (drawInfo.IsYAxisUp()) {
                math::MTX34Copy(&mtx, &mGlbMtx);
                ReverseYAxis(&mtx);
                mtxPtr = mtx;
            } else {
                mtxPtr = mGlbMtx;
            }

            /* TODO? I don't really know GX that much, I haven't played around with it
             * a lot
             */
            GXLoadPosMtxImm(mtxPtr, 0);
            GXSetCurrentMtx(0);
        }

        math::VEC2 Pane::GetVtxPos() const {
            math::VEC2 basePt(0.0f, 0.0f);

            // TODO: name switch cases?
            switch (mBasePosition % 3) {
            default:
            case 0:
                basePt.x = 0.0f;
                break;

            case 1:
                basePt.x = -mSize.width / 2.0f;
                break;

            case 2:
                basePt.x = -mSize.width;
                break;
            }

            switch (mBasePosition / 3) {
            default:
            case 0:
                basePt.y = 0.0f;
                break;

            case 1:
                basePt.y = -mSize.height / 2.0f;
                break;

            case 2:
                basePt.y = -mSize.height;
                break;
            }

            return basePt;
        }

        Material* Pane::GetMaterial() const {
            return mpMaterial;
        }

    }  // namespace lyt
}  // namespace nw4hbm

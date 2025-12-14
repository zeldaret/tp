#include "picture.h"

#include <new.h>

#include "../macros.h"

#include <revolution/types.h>

#include "common.h"
#include "layout.h"
#include "material.h"
#include "types.h"

#include "../math/types.h"
#include "../ut/Color.h"
#include "../ut/RuntimeTypeInfo.h"
#include "../ut/inlines.h"


#include <revolution/gx/GXStruct.h>
#include <revolution/tpl.h>

namespace nw4hbm {
    namespace lyt {
        // .bss
        ut::detail::RuntimeTypeInfo const Picture::typeInfo(&Pane::typeInfo);
    }  // namespace lyt
}  // namespace nw4hbm

namespace nw4hbm {
    namespace lyt {

        Picture::Picture(u8 texNum) {
            Init(texNum);

            if (void* pMemMaterial = Layout::AllocMemory(sizeof *mpMaterial)) {
                mpMaterial = new (pMemMaterial) Material;
                mpMaterial->ReserveGXMem(texNum, texNum, texNum, 0, FALSE, 0, 0, FALSE, FALSE,
                                         FALSE, FALSE);
            }
        }

        Picture::Picture(TPLPalette* pTplRes) {
            int const texNum = 1;

            Init(texNum);

            if (void* pMemMaterial = Layout::AllocMemory(sizeof *mpMaterial)) {
                mpMaterial = new (pMemMaterial) Material;
                mpMaterial->ReserveGXMem(texNum, texNum, texNum, 0, FALSE, 0, 0, FALSE, FALSE,
                                         FALSE, FALSE);

                Append(pTplRes);
            }
        }

        Picture::Picture(GXTexObj const& texObj) {
            int const texNum = 1;

            Init(texNum);

            if (void* pMemMaterial = Layout::AllocMemory(sizeof *mpMaterial)) {
                mpMaterial = new (pMemMaterial) Material;
                mpMaterial->ReserveGXMem(texNum, texNum, texNum, 0, FALSE, 0, 0, FALSE, FALSE,
                                         FALSE, FALSE);

                Append(texObj);
            }
        }

        Picture::Picture(res::Picture const* pResPic, ResBlockSet const& resBlockSet)
            : Pane(pResPic) {
            u8 texCoordNum = ut::Min<u8>(pResPic->texCoordNum, 8);

            Init(texCoordNum);

            for (int i = 0; i < (int)ARRAY_SIZE(mVtxColors); ++i)
                mVtxColors[i] = pResPic->vtxCols[i];

            if (texCoordNum != 0 && !mTexCoordAry.IsEmpty())
                mTexCoordAry.Copy(pResPic + 1, texCoordNum);

            if (Material* pMemMaterial =
                    static_cast<Material*>(Layout::AllocMemory(sizeof *pMemMaterial)))
            {
                u32 const* matOffsTbl = detail::ConvertOffsToPtr<u32>(
                    resBlockSet.pMaterialList, sizeof *resBlockSet.pMaterialList);
                res::Material const* pResMaterial = detail::ConvertOffsToPtr<res::Material>(
                    resBlockSet.pMaterialList, matOffsTbl[pResPic->materialIdx]);

                mpMaterial = new (pMemMaterial) Material(pResMaterial, resBlockSet);
            }
        }

        void Picture::Init(u8 texNum) {
            if (texNum != 0)
                ReserveTexCoord(texNum);
        }

        Picture::~Picture() {
            if (mpMaterial && !mpMaterial->IsUserAllocated()) {
                mpMaterial->~Material();
                Layout::FreeMemory(mpMaterial);
                mpMaterial = NULL;
            }

            mTexCoordAry.Free();
        }

        void Picture::Append(TPLPalette* pTplRes) {
            GXTexObj texObj;
            detail::InitGXTexObjFromTPL(&texObj, pTplRes, 0);

            Append(texObj);
        }

        void Picture::Append(GXTexObj const& texObj) {
            if (mpMaterial->GetTextureNum() >= mpMaterial->GetTextureCap() ||
                mpMaterial->GetTextureNum() >= mpMaterial->GetTexCoordGenCap())
            {
                return;
            }

            u8 texIdx = mpMaterial->GetTextureNum();

            mpMaterial->SetTextureNum(texIdx + 1);
            mpMaterial->SetTexture(texIdx, texObj);
            mpMaterial->SetTexCoordGenNum(mpMaterial->GetTextureNum());
            mpMaterial->SetTexCoordGen(texIdx, TexCoordGen());

            SetTexCoordNum(mpMaterial->GetTextureNum());

            if (mSize == Size(0.0f, 0.0f) && mpMaterial->GetTextureNum() == 1)
                mSize = detail::GetTextureSize(mpMaterial, 0);
        }

        void Picture::ReserveTexCoord(u8 num) {
            mTexCoordAry.Reserve(num);
        }

        u8 Picture::GetTexCoordNum() const {
            return mTexCoordAry.GetSize();
        }

        void Picture::SetTexCoordNum(u8 num) {
            mTexCoordAry.SetSize(num);
        }

        void Picture::GetTexCoord(u32 idx, math::VEC2* coords) const {
            mTexCoordAry.GetCoord(idx, coords);
        }

        void Picture::SetTexCoord(u32 idx, math::VEC2 const* coords) {
            mTexCoordAry.SetCoord(idx, coords);
        }

        ut::Color Picture::GetVtxColor(u32 idx) const {
            return mVtxColors[idx];
        }

        void Picture::SetVtxColor(u32 idx, ut::Color value) {
            mVtxColors[idx] = value;
        }

        u8 Picture::GetVtxColorElement(u32 idx) const {
            return detail::GetVtxColorElement(mVtxColors, idx);
        }

        void Picture::SetVtxColorElement(u32 idx, u8 value) {
            detail::SetVtxColorElement(mVtxColors, idx, value);
        }

        void Picture::DrawSelf(DrawInfo const& drawInfo) {
            if (!mpMaterial)
                return;

            LoadMtx(drawInfo);

            bool bUseVtxCol = mpMaterial->SetupGX(
                detail::IsModulateVertexColor(mVtxColors, mGlbAlpha), mGlbAlpha);

            detail::SetVertexFormat(bUseVtxCol, mTexCoordAry.GetSize());

            detail::DrawQuad(GetVtxPos(), mSize, mTexCoordAry.GetSize(), mTexCoordAry.GetArray(),
                             bUseVtxCol ? mVtxColors : NULL, mGlbAlpha);
        }

    }  // namespace lyt
}  // namespace nw4hbm

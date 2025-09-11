#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/J3DGraphAnimator/J3DSkinDeform.h"
#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "JSystem/JKernel/JKRHeap.h"
#include <string.h>

/* 8032C6E4-8032C704 327024 0020+00 1/1 0/0 0/0 .text            __ct__12J3DSkinNListFv */
J3DSkinNList::J3DSkinNList() {
    field_0x0 = NULL;
    field_0x4 = NULL;
    field_0x8 = NULL;
    field_0xc = NULL;
    field_0x10 = 0;
    field_0x12 = 0;
}

/* 8032C704-8032C7BC 327044 00B8+00 1/1 0/0 0/0 .text J3DPSWeightMTXMultVec__FPA4_ffP3VecP3Vec */
static void J3DPSWeightMTXMultVec(f32 (*param_0)[4], f32 param_1, Vec* param_2, Vec* param_3) {
    f32 f4 = param_0[0][3] + param_0[0][0] * param_2->x;
    f32 f5 = param_0[1][3] + param_0[1][0] * param_2->x;
    f32 f3 = param_0[2][3] + param_0[2][0] * param_2->x;
    f4 += param_0[0][1] * param_2->y;
    f5 += param_0[1][1] * param_2->y;
    f3 += param_0[2][1] * param_2->y;
    f4 += param_0[0][2] * param_2->z;
    f5 += param_0[1][2] * param_2->z;
    f3 += param_0[2][2] * param_2->z;
    param_3->x += f4 * param_1;
    param_3->y += f5 * param_1;
    param_3->z += f3 * param_1;
}

/* 8032C7BC-8032C85C 3270FC 00A0+00 1/1 0/0 0/0 .text J3DPSWeightMTXMultVecSR__FPA4_ffP3VecP3Vec
 */
static void J3DPSWeightMTXMultVecSR(f32 (*param_0)[4], f32 param_1, Vec* param_2,
                                    Vec* param_3) {
    f32 f4 = param_0[0][0] * param_2->x;
    f32 f5 = param_0[1][0] * param_2->x;
    f32 f3 = param_0[2][0] * param_2->x;
    f4 += param_0[0][1] * param_2->y;
    f5 += param_0[1][1] * param_2->y;
    f3 += param_0[2][1] * param_2->y;
    f4 += param_0[0][2] * param_2->z;
    f5 += param_0[1][2] * param_2->z;
    f3 += param_0[2][2] * param_2->z;
    param_3->x += f4 * param_1;
    param_3->y += f5 * param_1;
    param_3->z += f3 * param_1;
}

/* 8032C85C-8032C8E4 32719C 0088+00 1/1 0/0 0/0 .text calcSkin_VtxPosF32__12J3DSkinNListFPA4_fPvPv
 */
void J3DSkinNList::calcSkin_VtxPosF32(f32 (*param_0)[4], void* param_1, void* param_2) {
    int r29 = field_0x10;
    for (int i = 0; i < r29; i++) {
        Vec* pVec1 = (Vec*)param_1 + field_0x0[i];
        Vec* pVec2 = (Vec*)param_2 + field_0x0[i];
        f32 weight = field_0x8[i];
        J3DPSWeightMTXMultVec(param_0, weight, pVec1, pVec2);
    }
}

/* 8032C8E4-8032C96C 327224 0088+00 1/1 0/0 0/0 .text calcSkin_VtxNrmF32__12J3DSkinNListFPA4_fPvPv
 */
void J3DSkinNList::calcSkin_VtxNrmF32(f32 (*param_0)[4], void* param_1, void* param_2) {
    int r29 = field_0x12;
    for (int i = 0; i < r29; i++) {
        Vec* pVec1 = (Vec*)param_1 + field_0x4[i];
        Vec* pVec2 = (Vec*)param_2 + field_0x4[i];
        f32 weight = field_0xc[i];
        J3DPSWeightMTXMultVecSR(param_0, weight, pVec1, pVec2);
    }
}

/* 8032C96C-8032C9B0 3272AC 0044+00 0/0 0/0 2/2 .text            __ct__13J3DSkinDeformFv */
J3DSkinDeform::J3DSkinDeform() {
    mPosData = NULL;
    mNrmData = NULL;
    mPosMtx = NULL;
    mNrmMtx = NULL;
    mFlags = 3;
    field_0x18 = 1;
    field_0x19 = 0;
    field_0x1c = 0;
    field_0x20 = 0;
    mSkinNList = NULL;
}

/* 80437218-80438218 063F38 1000+00 1/1 0/0 0/0 .bss sWorkArea_WEvlpMixMtx__13J3DSkinDeform */
u16* J3DSkinDeform::sWorkArea_WEvlpMixMtx[1024];

/* 80438218-80439218 064F38 1000+00 1/1 0/0 0/0 .bss sWorkArea_WEvlpMixWeight__13J3DSkinDeform */
f32* J3DSkinDeform::sWorkArea_WEvlpMixWeight[1024];

/* 8032C9B0-8032CF44 3272F0 0594+00 0/0 1/1 0/0 .text
 * initSkinInfo__13J3DSkinDeformFP12J3DModelData                */
void J3DSkinDeform::initSkinInfo(J3DModelData* pModelData) {
    J3D_ASSERT_NULLPTR(322, pModelData != NULL);

    int vtxNum = pModelData->getVtxNum();
    int wevlpMtxNum = pModelData->getWEvlpMtxNum();
    u16* wevlpMtxIndex = pModelData->getWEvlpMixMtxIndex();
    f32* wevlpMixWeights = pModelData->getWEvlpMixWeight();
    int currentOffset = 0;

    for (int i = 0; i < wevlpMtxNum; i++) {
        sWorkArea_WEvlpMixMtx[i] = wevlpMtxIndex + currentOffset;
        sWorkArea_WEvlpMixWeight[i] = wevlpMixWeights + currentOffset;
        currentOffset += pModelData->getWEvlpMixMtxNum(i);
    }

    if (pModelData->getJointNum() != 0) {
        mSkinNList = new J3DSkinNList[pModelData->getJointNum()];
    }

    for (int i = 0; i < pModelData->getVtxNum(); i++) {
        u16 uVar8 = mPosData[i];
        if (uVar8 != 0xffff) {
            if (!pModelData->getDrawMtxFlag(uVar8)) {
                u16 drawMtxIndex = pModelData->getDrawMtxIndex(uVar8);
                mSkinNList[drawMtxIndex].field_0x10++;
            } else {
                u16 drawMtxIndex = pModelData->getDrawMtxIndex(uVar8);
                int wevlpMtxNum = pModelData->getWEvlpMixMtxNum(drawMtxIndex);
                u16* indices = sWorkArea_WEvlpMixMtx[drawMtxIndex];
                for (int j = 0; j < wevlpMtxNum; j++) {
                    mSkinNList[indices[j]].field_0x10++;
                }
            }
        }
    }

    for (int i = 0; i < pModelData->getNrmNum(); i++) {
        u16 uVar8 = mNrmData[i];
        if (uVar8 != 0xffff) {
            if (!pModelData->getDrawMtxFlag(uVar8)) {
                u16 drawMtxIndex = pModelData->getDrawMtxIndex(uVar8);
                mSkinNList[drawMtxIndex].field_0x12++;
            } else {
                u16 drawMtxIndex = pModelData->getDrawMtxIndex(uVar8);
                int wevlpMtxNum = pModelData->getWEvlpMixMtxNum(drawMtxIndex);
                u16* indices = sWorkArea_WEvlpMixMtx[drawMtxIndex];
                for (int j = 0; j < wevlpMtxNum; j++) {
                    mSkinNList[indices[j]].field_0x12++;
                }
            }
        }
    }

    for (u16 i = 0; i < pModelData->getJointNum(); i++) {
        if (mSkinNList[i].field_0x10) {
            mSkinNList[i].field_0x0 = new u16[mSkinNList[i].field_0x10];
            mSkinNList[i].field_0x8 = new f32[mSkinNList[i].field_0x10];
            mSkinNList[i].field_0x10 = 0;
        }
        if (mSkinNList[i].field_0x12) {
            mSkinNList[i].field_0x4 = new u16[mSkinNList[i].field_0x12];
            mSkinNList[i].field_0xc = new f32[mSkinNList[i].field_0x12];
            mSkinNList[i].field_0x12 = 0;
        }
    }

    for (int i = 0; i < pModelData->getVtxNum(); i++) {
        u16 uVar8 = mPosData[i];
        if (uVar8 != 0xffff) {
            if (!pModelData->getDrawMtxFlag(uVar8)) {
                u16 drawMtxIndex = pModelData->getDrawMtxIndex(uVar8);
                int uVar9 = mSkinNList[drawMtxIndex].field_0x10++;
                mSkinNList[drawMtxIndex].field_0x0[uVar9] = i;
                mSkinNList[drawMtxIndex].field_0x8[uVar9] = 1.0f;
            } else {
                u16 drawMtxIndex = pModelData->getDrawMtxIndex(uVar8);
                int wevlpMtxNum = pModelData->getWEvlpMixMtxNum(drawMtxIndex);
                u16* indices = sWorkArea_WEvlpMixMtx[drawMtxIndex];
                f32* weights = sWorkArea_WEvlpMixWeight[drawMtxIndex];
                for (int j = 0; j < wevlpMtxNum; j++) {
                    int uVar9 = mSkinNList[indices[j]].field_0x10++;
                    mSkinNList[indices[j]].field_0x0[uVar9] = i;
                    mSkinNList[indices[j]].field_0x8[uVar9] = weights[j];
                }
            }
        }
    }

    for (int i = 0; i < pModelData->getNrmNum(); i++) {
        u16 uVar8 = mNrmData[i];
        if (uVar8 != 0xffff) {
            if (!pModelData->getDrawMtxFlag(uVar8)) {
                u16 drawMtxIndex = pModelData->getDrawMtxIndex(uVar8);
                int uVar9 = mSkinNList[drawMtxIndex].field_0x12++;
                mSkinNList[drawMtxIndex].field_0x4[uVar9] = i;
                mSkinNList[drawMtxIndex].field_0xc[uVar9] = 1.0f;
            } else {
                u16 drawMtxIndex = pModelData->getDrawMtxIndex(uVar8);
                int wevlpMtxNum = pModelData->getWEvlpMixMtxNum(drawMtxIndex);
                u16* indices = sWorkArea_WEvlpMixMtx[drawMtxIndex];
                f32* weights = sWorkArea_WEvlpMixWeight[drawMtxIndex];
                for (int j = 0; j < wevlpMtxNum; j++) {
                    int uVar9 = mSkinNList[indices[j]].field_0x12++;
                    mSkinNList[indices[j]].field_0x4[uVar9] = i;
                    mSkinNList[indices[j]].field_0xc[uVar9] = weights[j];
                }
            }
        }
    }
}

/* 80439218-80439A20 065F38 0800+08 1/1 0/0 0/0 .bss             sWorkArea_MtxReg__13J3DSkinDeform
 */
u16 J3DSkinDeform::sWorkArea_MtxReg[1024];

/* 8032CF44-8032D378 327884 0434+00 0/0 1/1 0/0 .text
 * initMtxIndexArray__13J3DSkinDeformFP12J3DModelData           */
// NONMATCHING - matches debug, not retail
int J3DSkinDeform::initMtxIndexArray(J3DModelData* pModelData) {
    J3D_ASSERT_NULLPTR(507, pModelData != NULL);
    if (mPosData != NULL && mNrmData != NULL) {
        return kJ3DError_Success;
    }

    mPosData = new u16[pModelData->getVtxNum()];
    if (mPosData == NULL) {
        return kJ3DError_Alloc;
    }

    for (int i = 0; i < pModelData->getVtxNum(); i++) {
        mPosData[i] = 0xffff;
    }

    if (pModelData->getNrmNum()) {
        mNrmData = new u16[pModelData->getNrmNum()];
        if (mNrmData == NULL) {
            return kJ3DError_Alloc;
        }
        for (int i = 0; i < pModelData->getNrmNum(); i++) {
            mNrmData[i] = 0;
        }
    } else {
        mNrmData = NULL;
    }

    mPosMtx = new Mtx[pModelData->getJointNum()];
    mNrmMtx = new (32) Mtx33[pModelData->getDrawMtxNum()];
    if (mPosMtx == NULL) {
        return kJ3DError_Alloc;
    }
    if (mNrmMtx == NULL) {
        return kJ3DError_Alloc;
    }

    for (u16 i = 0; i < pModelData->getShapeNum(); i++) {
        u32 kSize[4] = {0, 1, 1, 2};
        int pnmtx_num = -1;
        int vtx_num = -1;
        int nrm_num = -1;
        int tex_num = -1;
        int r23 = 0;
        for (GXVtxDescList* vtxDesc = pModelData->getShapeNodePointer(i)->getVtxDesc(); vtxDesc->attr != 0xff; vtxDesc++) {
            switch (vtxDesc->attr) {
            case GX_VA_PNMTXIDX:
                pnmtx_num = r23;
                break;
            case GX_VA_POS:
                vtx_num = r23;
                if (vtxDesc->type != GX_INDEX16) {
                    OSReport(" Invlid Data : CPU Pipeline process GX_INDEX16 Data Only\n");
                    return 6;
                }
                break;
            case GX_VA_NRM:
                nrm_num = r23;
                if (vtxDesc->type != GX_INDEX16) {
                    OSReport(" Invlid Data : CPU Pipeline process GX_INDEX16 Data Only\n");
                    return 6;
                }
                break;
            case GX_VA_TEX0:
                tex_num = r23;
                if (vtxDesc->type != GX_INDEX16) {
                    OSReport(" Invlid Data : CPU Pipeline process GX_INDEX16 Data Only\n");
                    return 6;
                }
                break;
            }
            r23 += kSize[(int)vtxDesc->type];
        }

        for (u16 j = 0; j < (u16)pModelData->getShapeNodePointer(i)->getMtxGroupNum(); j++) {
            J3DShapeMtx* pShapeMtx = pModelData->getShapeNodePointer(i)->getShapeMtx(j);
            u8* pDList = pModelData->getShapeNodePointer(i)->getShapeDraw(j)->getDisplayList();
            u8* pDListPos = pDList;
            int uVar13;
            for (;
                (int)pDListPos - (int)pDList < pModelData->getShapeNodePointer(i)->getShapeDraw(j)->getDisplayListSize();
                pDListPos += r23 * uVar13)
            {
                u8 command = *pDListPos;
                pDListPos++;
                if (command != GX_TRIANGLEFAN && command != GX_TRIANGLESTRIP) {
                    break;
                }
                
                uVar13 = *(u16*)pDListPos;
                pDListPos += 2;
                for (int local_60 = 0; local_60 < uVar13; local_60++) {
                    u8* iVar5 = pDListPos + r23 * local_60;
                    u8 bVar3 = *(iVar5 + pnmtx_num) / 3U;
                    u16 vtx_idx = *(u16*)(iVar5 + vtx_num);
                    u16 nrm_idx = *(u16*)(iVar5 + nrm_num);
                    u16 uVar3 = *(u16*)(iVar5 + tex_num);
                    u16 local_76 = pShapeMtx->getUseMtxIndex(bVar3);
                    if (local_76 == 0xffff) {
                        local_76 = sWorkArea_MtxReg[bVar3];
                    } else if (pnmtx_num != -1) {
                        sWorkArea_MtxReg[bVar3] = local_76;
                    }

                    J3D_ASSERT_RANGE(673, local_76 < pModelData->getDrawMtxNum());
                    J3D_ASSERT_RANGE(674, vtx_idx < pModelData->getVtxNum());
                    mPosData[vtx_idx] = local_76;

                    if (nrm_num != -1) {
                        J3D_ASSERT_RANGE(680, nrm_idx < pModelData->getNrmNum());
                        mNrmData[nrm_idx] = local_76;
                    }
                }
            }

            if (nrm_num == -1) {
                pModelData->getShapeNodePointer(i)->onFlag(J3DShpFlag_EnableLod);
                pModelData->getShapeNodePointer(i)->offFlag(J3DShpFlag_SkinNrmCpu);
            }
        }
    }

    for (int i = 0; i < pModelData->getVtxNum(); i++) {
        if (mPosData[i] == 0xffff) {
            field_0x18 = 0x0;
            mPosData[i] = 0;
            OS_REPORT("Error : Invalid Positon Data Exists!.");
            OS_REPORT("Error : Invalid Positon Index = %d\n", i);
        }
    }

    return kJ3DError_Success;
}

/* 8032D378-8032D5C4 327CB8 024C+00 0/0 1/1 0/0 .text
 * changeFastSkinDL__13J3DSkinDeformFP12J3DModelData            */
// NONMATCHING - regalloc, display list access issues
void J3DSkinDeform::changeFastSkinDL(J3DModelData* pModelData) {
    J3D_ASSERT_NULLPTR(740, pModelData != NULL);
    for (u16 i = 0; i < pModelData->getShapeNum(); i++) {
        u32 kSize[4] = {0,1,1,2};
        int local_30 = -1;
        int local_34 = 0;
        J3DShape* pShapeNode = pModelData->getShapeNodePointer(i);
        for (GXVtxDescList* vtxDesc = pShapeNode->getVtxDesc(); vtxDesc->attr != GX_VA_NULL; vtxDesc++) {
            if (vtxDesc->attr == GX_VA_PNMTXIDX) {
                local_30 = local_34;
            }
            local_34 += kSize[vtxDesc->type];
        }

        if (local_30 != -1) {
            for (u16 j = 0; j < (u16)pShapeNode->getMtxGroupNum(); j++) {
                u8* pDList = pShapeNode->getShapeDraw(j)->getDisplayList();
                u8* local_44 = pDList;
                u8* puVar10 = pDList;
                while (local_44 - pDList < pShapeNode->getShapeDraw(j)->getDisplayListSize()) {
                    u8 command = *local_44;
                    local_44++;
                    *puVar10++ = command;
                    if (command != GX_TRIANGLEFAN && command != GX_TRIANGLESTRIP)
                        break;

                    int uVar9 = *(u16*)local_44;
                    local_44 += 2;
                    *(u16*)puVar10 = uVar9;
                    puVar10 += 2;
                    for (int local_4c = 0; local_4c < uVar9; local_4c++) {
                        u8* dst = &local_44[local_34 * local_4c];
                        memcpy(puVar10, dst + 1, local_34 - 1);
                        puVar10 = ((local_34 + puVar10) - 1);
                    }
                    local_44 += local_34 * uVar9;
                }

                int dlistSize = ((int)puVar10 - (int)pDList + 0x1f) & ~0x1f;
                while ((int)puVar10 - (int)pDList < pShapeNode->getShapeDraw(j)->getDisplayListSize()) {
                    *puVar10++ = 0;
                }

                pShapeNode->getShapeDraw(j)->setDisplayListSize(dlistSize);
                DCStoreRange(pDList, pShapeNode->getShapeDraw(j)->getDisplayListSize());
            }
        }
    }

    for (u16 i = 0; i < pModelData->getShapeNum(); i++) {
        J3DShape* pShape = pModelData->getShapeNodePointer(i);
        GXVtxDescList* local_5c = pShape->getVtxDesc();
        GXVtxDescList* local_60 = local_5c;
        for (; local_5c->attr != GX_VA_NULL; local_5c++) {
            if (local_5c->attr != GX_VA_PNMTXIDX) {
                local_60->attr = local_5c->attr;
                local_60->type = local_5c->type;
                local_60++;
            }
        }
        local_60->attr = GX_VA_NULL;
        local_60->type = GX_NONE;
        pShape->makeVcdVatCmd();
    }
}

/* 8032D5C4-8032D738 327F04 0174+00 1/1 0/0 0/0 .text calcNrmMtx__13J3DSkinDeformFP12J3DMtxBuffer
 */
void J3DSkinDeform::calcNrmMtx(J3DMtxBuffer* pMtxBuffer) {
    J3DJointTree* jointTree = pMtxBuffer->getJointTree();
    u16 drawMtxNum = jointTree->getDrawMtxNum();
    for (u16 i = 0; i < drawMtxNum; i++) {
        if (jointTree->getDrawMtxFlag(i) == 0) {
            if (pMtxBuffer->getScaleFlag(jointTree->getDrawMtxIndex(i)) == 1) {
                setNrmMtx(i, pMtxBuffer->getAnmMtx(jointTree->getDrawMtxIndex(i)));
            } else {
                J3DPSCalcInverseTranspose(pMtxBuffer->getAnmMtx(jointTree->getDrawMtxIndex(i)), getNrmMtx(i));
            }
        } else {
            if (pMtxBuffer->getEnvScaleFlag(jointTree->getDrawMtxIndex(i)) == 1) {
                setNrmMtx(i, pMtxBuffer->getWeightAnmMtx(jointTree->getDrawMtxIndex(i)));
            } else {
                J3DPSCalcInverseTranspose(pMtxBuffer->getWeightAnmMtx(jointTree->getDrawMtxIndex(i)), getNrmMtx(i));
            }
        }
    }
}

/* 8032D738-8032D87C 328078 0144+00 0/0 1/1 0/0 .text
 * transformVtxPosNrm__13J3DSkinDeformFP12J3DModelData          */
void J3DSkinDeform::transformVtxPosNrm(J3DModelData* pModelData) {
    if (pModelData->getWEvlpMtxNum() != 0 && field_0x19 == 0) {
        int vtmNum = pModelData->getVtxNum();
        int nrmNum = pModelData->getNrmNum();

        for (int i = 0; i < vtmNum; i++) {
            u16 posIndex = mPosData[i];
            if (pModelData->getDrawMtxFlag(posIndex) == 0) {
                u16 drawMtxIndex = pModelData->getDrawMtxIndex(posIndex);
                Vec* pos = ((Vec*)pModelData->getVtxPosArray()) + i;
                Mtx invMtx;
                MTXInverse(pModelData->getInvJointMtx(drawMtxIndex), invMtx);
                MTXMultVec(invMtx, pos, pos);
            }
        }

        for (int i = 0; i < nrmNum; i++) {
            u16 nrmIndex = mNrmData[i];
            if (pModelData->getDrawMtxFlag(nrmIndex) == 0) {
                u16 drawMtxIndex = pModelData->getDrawMtxIndex(nrmIndex);
                Vec* nrm = ((Vec*)pModelData->getVtxNrmArray()) + i;
                Mtx invMtx;
                MTXInverse(pModelData->getInvJointMtx(drawMtxIndex), invMtx);
                MTXMultVecSR(invMtx, nrm, nrm);
            }
        }

        field_0x19 = 1;
    }
}

/* 8032D87C-8032D8F4 3281BC 0078+00 1/1 0/0 0/0 .text
 * calcAnmInvJointMtx__13J3DSkinDeformFP12J3DMtxBuffer          */
void J3DSkinDeform::calcAnmInvJointMtx(J3DMtxBuffer* pMtxBuffer) {
    J3D_ASSERT_NULLPTR(978, pMtxBuffer != NULL);

    if (pMtxBuffer->getJointTree()->getWEvlpMtxNum() != 0) {
        int jointNum = pMtxBuffer->getJointTree()->getJointNum();
        Mtx* anmMtx = (Mtx*)pMtxBuffer->getAnmMtx(0);
        Mtx* invJointMtx = &pMtxBuffer->getJointTree()->getInvJointMtx(0);
        Mtx* posMtx = mPosMtx;
        for (int i = 0; i < jointNum; i++) {
            MTXConcat(anmMtx[i], invJointMtx[i], posMtx[i]);
        }
    }
}

/* 8032D8F4-8032DA1C 328234 0128+00 1/1 0/0 0/0 .text
 * deformFastVtxPos_F32__13J3DSkinDeformCFP15J3DVertexBufferP12J3DMtxBuffer */
void J3DSkinDeform::deformFastVtxPos_F32(J3DVertexBuffer* pVtxBuffer, J3DMtxBuffer* pMtxBuffer) const {
    pVtxBuffer->swapTransformedVtxPos();
    J3DJointTree* jointTree = pMtxBuffer->getJointTree();
    u32 vtxNum = pVtxBuffer->getVertexData()->getVtxNum();
    int sp14 = jointTree->getDrawMtxNum();
    void* currentVtxPos = pVtxBuffer->getCurrentVtxPos();
    void* transformedVtxPos = pVtxBuffer->getTransformedVtxPos(0);

    J3DFillZero32B(transformedVtxPos, OSRoundUp32B(vtxNum * sizeof(Vec)));

    if (jointTree->getWEvlpMtxNum() != 0) {
        u16 jointNum = jointTree->getJointNum();
        for (u16 i = 0; i < jointNum; i++) {
            J3DSkinNList* skinList = mSkinNList + i;
            skinList->calcSkin_VtxPosF32(mPosMtx[i], currentVtxPos, transformedVtxPos);
        }
    } else {
        u16 jointNum = jointTree->getJointNum();
        for (u16 i = 0; i < jointNum; i++) {
            J3DSkinNList* skinList = mSkinNList + i;
            skinList->calcSkin_VtxPosF32(pMtxBuffer->getAnmMtx(i), currentVtxPos, transformedVtxPos);
        }
    }

    DCStoreRange(pVtxBuffer->getTransformedVtxPos(0), pVtxBuffer->getVertexData()->getVtxNum() * sizeof(Vec));
    pVtxBuffer->setCurrentVtxPos(transformedVtxPos);
}

/* 8032DA1C-8032DB50 32835C 0134+00 1/1 0/0 0/0 .text
 * deformFastVtxNrm_F32__13J3DSkinDeformCFP15J3DVertexBufferP12J3DMtxBuffer */
void J3DSkinDeform::deformFastVtxNrm_F32(J3DVertexBuffer* pVtxBuffer, J3DMtxBuffer* pMtxBuffer) const {
    pVtxBuffer->swapTransformedVtxNrm();
    J3DJointTree* jointTree = pMtxBuffer->getJointTree();
    int nrmNum = pVtxBuffer->getVertexData()->getNrmNum();
    int sp18 = jointTree->getDrawMtxNum();
    void* currentVtxNrm = pVtxBuffer->getCurrentVtxNrm();
    void* transformedVtxNrm = pVtxBuffer->getTransformedVtxNrm(0);

    for (int i = 0; i < nrmNum; i++) {
        ((f32*)transformedVtxNrm)[(i * 3) + 0] = 0.0f;
        ((f32*)transformedVtxNrm)[(i * 3) + 1] = 0.0f;
        ((f32*)transformedVtxNrm)[(i * 3) + 2] = 0.0f;
    }

    if (jointTree->getWEvlpMtxNum() != 0) {
        u16 jointNum = jointTree->getJointNum();
        for (u16 i = 0; i < jointNum; i++) {
            J3DSkinNList* skinList = mSkinNList + i;
            skinList->calcSkin_VtxNrmF32(mPosMtx[i], currentVtxNrm, transformedVtxNrm);
        }
    } else {
        u16 jointNum = jointTree->getJointNum();
        for (u16 i = 0; i < jointNum; i++) {
            J3DSkinNList* skinList = mSkinNList + i;
            skinList->calcSkin_VtxNrmF32(pMtxBuffer->getAnmMtx(i), currentVtxNrm, transformedVtxNrm);
        }
    }

    DCStoreRange(pVtxBuffer->getTransformedVtxNrm(0), pVtxBuffer->getVertexData()->getNrmNum() * sizeof(Vec));
    pVtxBuffer->setCurrentVtxNrm(transformedVtxNrm);
}

/* 8032DB50-8032DC74 328490 0124+00 1/1 0/0 0/0 .text
 * deformVtxPos_F32__13J3DSkinDeformCFP15J3DVertexBufferP12J3DMtxBuffer */
// NONMATCHING - J3DPSMulMtxVec regalloc
void J3DSkinDeform::deformVtxPos_F32(J3DVertexBuffer* pVtxBuffer, J3DMtxBuffer* pMtxBuffer) const {
    Mtx* anmMtx = NULL;
    Mtx* anmMtxs[2];
    anmMtxs[0] = (Mtx*)pMtxBuffer->getAnmMtx(0);
    anmMtxs[1] = (Mtx*)pMtxBuffer->getWeightAnmMtx(0);
    pVtxBuffer->swapTransformedVtxPos();

    J3DJointTree* jointTree = pMtxBuffer->getJointTree();
    int vtxNum = pVtxBuffer->getVertexData()->getVtxNum();
    int sp8 = jointTree->getDrawMtxNum();
    void* currentVtxPos = pVtxBuffer->getCurrentVtxPos();
    void* transformedVtxPos = pVtxBuffer->getTransformedVtxPos(0);

    for (int i = 0; i < vtxNum; i++) {
        anmMtx = anmMtxs[jointTree->getDrawMtxFlag(mPosData[i])];
        J3DPSMulMtxVec(anmMtx[jointTree->getDrawMtxIndex(mPosData[i])], (Vec*)(((f32*)currentVtxPos) + (i * 3)), (Vec*)(((f32*)transformedVtxPos) + (i * 3)));
    }

    DCStoreRange(pVtxBuffer->getTransformedVtxPos(0), pVtxBuffer->getVertexData()->getVtxNum() * sizeof(Vec));
    pVtxBuffer->setCurrentVtxPos(transformedVtxPos);
}

/* 8032DC74-8032DDB8 3285B4 0144+00 1/1 0/0 0/0 .text
 * deformVtxPos_S16__13J3DSkinDeformCFP15J3DVertexBufferP12J3DMtxBuffer */
// NONMATCHING - J3DPSMulMtxVec regalloc
void J3DSkinDeform::deformVtxPos_S16(J3DVertexBuffer* pVtxBuffer, J3DMtxBuffer* pMtxBuffer) const {
    Mtx* anmMtx = NULL;
    Mtx* anmMtxs[2];
    anmMtxs[0] = (Mtx*)pMtxBuffer->getAnmMtx(0);
    anmMtxs[1] = (Mtx*)pMtxBuffer->getWeightAnmMtx(0);
    int vtxPosFrac = pVtxBuffer->getVertexData()->getVtxPosFrac();
    J3DGQRSetup7(vtxPosFrac, 7, vtxPosFrac, 7);
    pVtxBuffer->swapTransformedVtxPos();

    J3DJointTree* jointTree = pMtxBuffer->getJointTree();
    int vtxNum = pVtxBuffer->getVertexData()->getVtxNum();
    int sp8 = jointTree->getDrawMtxNum();
    void* currentVtxPos = pVtxBuffer->getCurrentVtxPos();
    void* transformedVtxPos = pVtxBuffer->getTransformedVtxPos(0);

    for (int i = 0; i < vtxNum; i++) {
        anmMtx = anmMtxs[jointTree->getDrawMtxFlag(mPosData[i])];
        J3DPSMulMtxVec(anmMtx[jointTree->getDrawMtxIndex(mPosData[i])], (S16Vec*)(((s16*)currentVtxPos) + (i * 3)), (S16Vec*)(((s16*)transformedVtxPos) + (i * 3)));
    }

    DCStoreRange(pVtxBuffer->getTransformedVtxPos(0), pVtxBuffer->getVertexData()->getVtxNum() * sizeof(S16Vec));
    pVtxBuffer->setCurrentVtxPos(transformedVtxPos);
}

/* 8032DDB8-8032DEBC 3286F8 0104+00 1/1 0/0 0/0 .text
 * deformVtxNrm_F32__13J3DSkinDeformCFP15J3DVertexBuffer        */
// NONMATCHING - J3DPSMulMtxVec regalloc
void J3DSkinDeform::deformVtxNrm_F32(J3DVertexBuffer* pVtxBuffer) const {
    pVtxBuffer->swapTransformedVtxNrm();
    int nrmNum = pVtxBuffer->getVertexData()->getNrmNum();
    void* currentVtxNrm = pVtxBuffer->getCurrentVtxNrm();
    void* transformedVtxNrm = pVtxBuffer->getTransformedVtxNrm(0);

    for (int i = 0; i < nrmNum; i++) {
        J3DPSMulMtxVec(mNrmMtx[mNrmData[i]], (Vec*)((u8*)currentVtxNrm + i * 3 * 4), (Vec*)((u8*)transformedVtxNrm + i * 3 * 4));
    }

    DCStoreRange(pVtxBuffer->getTransformedVtxNrm(0), pVtxBuffer->getVertexData()->getNrmNum() * sizeof(Vec));
    pVtxBuffer->setCurrentVtxNrm(transformedVtxNrm);
}

/* 8032DEBC-8032DFDC 3287FC 0120+00 1/1 0/0 0/0 .text
 * deformVtxNrm_S16__13J3DSkinDeformCFP15J3DVertexBuffer        */
// NONMATCHING - J3DPSMulMtxVec regalloc
void J3DSkinDeform::deformVtxNrm_S16(J3DVertexBuffer* pVtxBuffer) const {
    int vtxNrmFrac = pVtxBuffer->getVertexData()->getVtxNrmFrac();
    J3DGQRSetup7(vtxNrmFrac, 7, vtxNrmFrac, 7);
    pVtxBuffer->swapTransformedVtxNrm();

    int nrmNum = pVtxBuffer->getVertexData()->getNrmNum();
    void* currentVtxNrm = pVtxBuffer->getCurrentVtxNrm();
    void* transformedVtxNrm = pVtxBuffer->getTransformedVtxNrm(0);

    for (int i = 0; i < nrmNum; i++) {
        J3DPSMulMtxVec(mNrmMtx[mNrmData[i]], (S16Vec*)(((s16*)currentVtxNrm) + (i * 3)), (S16Vec*)(((s16*)transformedVtxNrm) + (i * 3)));
    }

    DCStoreRange(pVtxBuffer->getTransformedVtxNrm(0), pVtxBuffer->getVertexData()->getNrmNum() * sizeof(S16Vec));
    pVtxBuffer->setCurrentVtxNrm(transformedVtxNrm);
}

/* 8032DFDC-8032E064 32891C 0088+00 0/0 1/1 0/0 .text            deform__13J3DSkinDeformFP8J3DModel
 */
void J3DSkinDeform::deform(J3DModel* pModel) {
    J3D_ASSERT_NULLPTR(1270, pModel != NULL);

    if (pModel->checkFlag(J3DMdlFlag_SkinPosCpu)) {
        onFlag(2);
    } else {
        offFlag(2);
    }
    
    if (pModel->checkFlag(J3DMdlFlag_SkinNrmCpu)) {
        onFlag(1);
    } else {
        offFlag(1);
    }

    deform(pModel->getVertexBuffer(), pModel->getMtxBuffer());
}

/* 8032E064-8032E180 3289A4 011C+00 1/0 0/0 0/0 .text
 * deform__13J3DSkinDeformFP15J3DVertexBufferP12J3DMtxBuffer    */
void J3DSkinDeform::deform(J3DVertexBuffer* pVtxBuffer, J3DMtxBuffer* pMtxBuffer) {
    J3D_ASSERT_NULLPTR(1299, pVtxBuffer != NULL);
    J3D_ASSERT_NULLPTR(1300, pMtxBuffer != NULL);

    if (pMtxBuffer->getJointTree()->checkFlag(0x100)) {
        calcAnmInvJointMtx(pMtxBuffer);
    }

    if (checkFlag(2) != 0) {
        if (pMtxBuffer->getJointTree()->checkFlag(0x100)) {
            deformFastVtxPos_F32(pVtxBuffer, pMtxBuffer);
        } else {
            if (pVtxBuffer->getVertexData()->getVtxPosType() == 4) {
                deformVtxPos_F32(pVtxBuffer, pMtxBuffer);
            } else {
                deformVtxPos_S16(pVtxBuffer, pMtxBuffer);
            }
        }
    }

    if (checkFlag(1)) {
        if (pMtxBuffer->getJointTree()->checkFlag(0x100)) {
            deformFastVtxNrm_F32(pVtxBuffer, pMtxBuffer);
        } else {
            calcNrmMtx(pMtxBuffer);
            if (pVtxBuffer->getVertexData()->getVtxNrmType() == 4) {
                deformVtxNrm_F32(pVtxBuffer);
            } else {
                deformVtxNrm_S16(pVtxBuffer);
            }
        }
    }
}

/* 8032E180-8032E1B0 328AC0 0030+00 0/0 1/1 0/0 .text            calc__15J3DVtxColorCalcFP8J3DModel
 */
void J3DVtxColorCalc::calc(J3DModel* pModel) {
    J3D_ASSERT_NULLPTR(1351, pModel != NULL);
    calc(pModel->getVertexBuffer());
}

/* 8032E1B0-8032E1F8 328AF0 0048+00 1/0 0/0 0/0 .text            __dt__13J3DSkinDeformFv */
J3DSkinDeform::~J3DSkinDeform() {}

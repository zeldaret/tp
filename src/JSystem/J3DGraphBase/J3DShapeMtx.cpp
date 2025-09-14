#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/J3DGraphBase/J3DShapeMtx.h"
#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "JSystem/J3DGraphBase/J3DFifo.h"
#include "JSystem/J3DGraphBase/J3DMatBlock.h"
#include "JSystem/J3DGraphBase/J3DTexture.h"

/* 80434C80-80434C98 0619A0 0014+04 2/2 0/0 0/0 .bss             sMtxLoadCache__11J3DShapeMtx */
u16 J3DShapeMtx::sMtxLoadCache[10];

/* 803130A8-803130E4 30D9E8 003C+00 0/0 1/1 0/0 .text            resetMtxLoadCache__11J3DShapeMtxFv
 */
void J3DShapeMtx::resetMtxLoadCache() {
    sMtxLoadCache[0] =
    sMtxLoadCache[1] =
    sMtxLoadCache[2] =
    sMtxLoadCache[3] =
    sMtxLoadCache[4] =
    sMtxLoadCache[5] =
    sMtxLoadCache[6] =
    sMtxLoadCache[7] =
    sMtxLoadCache[8] =
    sMtxLoadCache[9] = 0xFFFF;
}

/* 803130E4-80313128 30DA24 0044+00 1/0 0/0 0/0 .text loadMtxIndx_PNGP__11J3DShapeMtxCFiUs */
void J3DShapeMtx::loadMtxIndx_PNGP(int slot, u16 indx) const {
    // J3DFifoLoadPosMtxIndx(indx, slot * 3);  // matches debug, but not retail 
    J3DFifoLoadIndx(GX_LOAD_INDX_A, indx, 0xB000 | ((u16)(slot * 0x0C)));
    J3DFifoLoadNrmMtxIndx3x3(indx, slot * 3);
}

/* 80313128-80313188 30DA68 0060+00 1/0 0/0 0/0 .text loadMtxIndx_PCPU__11J3DShapeMtxCFiUs */
void J3DShapeMtx::loadMtxIndx_PCPU(int slot, u16 indx) const {
    J3DFifoLoadPosMtxImm(*j3dSys.getShapePacket()->getBaseMtxPtr(), slot * 3);
    j3dSys.loadNrmMtxIndx(slot, indx);
}

/* 80313188-803131D4 30DAC8 004C+00 1/0 0/0 0/0 .text loadMtxIndx_NCPU__11J3DShapeMtxCFiUs */
void J3DShapeMtx::loadMtxIndx_NCPU(int slot, u16 indx) const {
    j3dSys.loadPosMtxIndx(slot, indx);
    J3DFifoLoadNrmMtxImm(*j3dSys.getShapePacket()->getBaseMtxPtr(), slot * 3);
}

/* 803131D4-8031322C 30DB14 0058+00 1/0 0/0 0/0 .text loadMtxIndx_PNCPU__11J3DShapeMtxCFiUs */
void J3DShapeMtx::loadMtxIndx_PNCPU(int slot, u16 indx) const {
    J3DFifoLoadPosMtxImm(*j3dSys.getShapePacket()->getBaseMtxPtr(), slot * 3);
    J3DFifoLoadNrmMtxImm(*j3dSys.getShapePacket()->getBaseMtxPtr(), slot * 3);
}

/* 803CD9C0-803CD9F0 02AAE0 0030+00 2/3 0/0 0/0 .data            sMtxLoadPipeline__11J3DShapeMtx */
J3DShapeMtx_LoadFunc J3DShapeMtx::sMtxLoadPipeline[4] = {
    &J3DShapeMtx::loadMtxIndx_PNGP,
    &J3DShapeMtx::loadMtxIndx_PCPU,
    &J3DShapeMtx::loadMtxIndx_NCPU,
    &J3DShapeMtx::loadMtxIndx_PNCPU,
};

/* 803CDA20-803CDA50 02AB40 0030+00 2/3 0/0 0/0 .data sMtxLoadPipeline__21J3DShapeMtxConcatView */
J3DShapeMtxConcatView_LoadFunc J3DShapeMtxConcatView::sMtxLoadPipeline[4] = {
    &J3DShapeMtxConcatView::loadMtxConcatView_PNGP,
    &J3DShapeMtxConcatView::loadMtxConcatView_PCPU,
    &J3DShapeMtxConcatView::loadMtxConcatView_NCPU,
    &J3DShapeMtxConcatView::loadMtxConcatView_PNCPU,
};

/* 803CDA80-803CDAB0 02ABA0 0030+00 1/2 0/0 0/0 .data sMtxLoadLODPipeline__21J3DShapeMtxConcatView
 */
J3DShapeMtxConcatView_LoadFunc J3DShapeMtxConcatView::sMtxLoadLODPipeline[4] = {
    &J3DShapeMtxConcatView::loadMtxConcatView_PNGP_LOD,
    &J3DShapeMtxConcatView::loadMtxConcatView_PCPU,
    &J3DShapeMtxConcatView::loadMtxConcatView_NCPU,
    &J3DShapeMtxConcatView::loadMtxConcatView_PNCPU,
};

/* 804515A8-804515AC 000AA8 0004+00 4/4 2/2 0/0 .sbss            sCurrentPipeline__11J3DShapeMtx */
u32 J3DShapeMtx::sCurrentPipeline;

/* 804515AC-804515B0 000AAC 0004+00 3/3 1/1 0/0 .sbss            sCurrentScaleFlag__11J3DShapeMtx */
u8* J3DShapeMtx::sCurrentScaleFlag;

// This below is technically part of J3DScaleFlag.
/* 804515B0 0001+00 data_804515B0 None */
bool J3DShapeMtx::sNBTFlag;

/* 804515B1 0003+00 data_804515B1 None */
bool J3DShapeMtx::sLODFlag;

/* 804515B4-804515B8 000AB4 0004+00 4/4 1/1 0/0 .sbss            sTexMtxLoadType__11J3DShapeMtx */
u32 J3DShapeMtx::sTexMtxLoadType;

/* 804515B8-804515C0 000AB8 0008+00 2/2 0/0 0/0 .sbss            sMtxPtrTbl__21J3DShapeMtxConcatView
 */
MtxP J3DShapeMtxConcatView::sMtxPtrTbl[2];

/* 804515C0-804515C4 000AC0 0004+00 6/6 2/2 0/0 .sbss            sTexGenBlock__17J3DDifferedTexMtx
 */
J3DTexGenBlock* J3DDifferedTexMtx::sTexGenBlock;

/* 804515C4-804515C8 000AC4 0004+00 1/1 2/2 0/0 .sbss            sTexMtxObj__17J3DDifferedTexMtx */
J3DTexMtxObj* J3DDifferedTexMtx::sTexMtxObj;

/* 8031322C-80313828 30DB6C 05FC+00 7/5 0/0 0/0 .text loadExecute__17J3DDifferedTexMtxFPA4_Cf */
void J3DDifferedTexMtx::loadExecute(f32 const (*param_0)[4]) {
    static Mtx qMtx = {
        {0.5f, 0.0f, 0.5f, 0.0f},
        {0.0f, -0.5f, 0.5f, 0.0f},
        {0.0f, 0.0f, 1.0f, 0.0f},
    };

    static Mtx qMtx2 = {
        {0.5f, 0.0f, 0.0f, 0.5f},
        {0.0f, -0.5f, 0.0f, 0.5f},
        {0.0f, 0.0f, 1.0f, 0.0f}
    };

    Mtx* mtx; // sp_64
    Mtx sp_e8;
    Mtx44 sp_a8, sp_68;

    J3DTexGenBlock* tex_gen_block = sTexGenBlock; // sp_60
    J3D_ASSERT_NULLPTR(195, tex_gen_block != NULL);

    J3DTexMtxObj* tex_mtx_obj = sTexMtxObj; // sp_5c
    J3D_ASSERT_NULLPTR(198, tex_mtx_obj != NULL);

    J3DTexMtxInfo* tex_mtx_info_1; // sp_58
    int tex_gen_type; // sp_54
    J3DTexMtx* tex_mtx_2; // sp_50

    u16 tex_mtx_num = tex_mtx_obj->getNumTexMtx();

    if (j3dSys.checkFlag(J3DSysFlag_PostTexMtx)) {
        for (u16 i = 0; i < tex_mtx_num; i++) {
            tex_gen_type = tex_gen_block->getTexCoord(i)->getTexGenType();
            if (tex_gen_type == 1 || tex_gen_type == 0) {
                tex_mtx_2 = tex_gen_block->getTexMtx(i);
                J3D_ASSERT_NULLPTR(215, tex_mtx_2 != NULL);
                tex_mtx_info_1 = &tex_mtx_2->getTexMtxInfo();

                u32 sp_4c = tex_mtx_info_1->mInfo & 0x3f;
                switch (sp_4c) {
                case 3:
                case 9: {
                    mtx = &tex_mtx_obj->getMtx(i);
                    break;
                }
                case 1:
                case 6:
                case 7: {
                    mtx = &tex_mtx_obj->getMtx(i);
                    break;
                }
                case 2:
                case 8: {
                    MTXInverse(j3dSys.getViewMtx(), sp_e8);
                    MTXConcat(tex_mtx_obj->getMtx(i), sp_e8, sp_e8);
                    mtx = &sp_e8;
                    break;
                }
                case 5: {
                    J3DTexMtxInfo* tex_mtx_info_2 = &tex_mtx_2->getTexMtxInfo(); // sp_48
                    u32 sp_44 = (u32)(tex_mtx_info_2->mInfo & 0x80) >> 7;
                    if (sp_44 == 0) {
                        J3DGetTextureMtxOld(tex_mtx_info_2->mSRT, tex_mtx_info_2->mCenter, sp_68);
                    } else if (sp_44 == 1) {
                        J3DGetTextureMtxMayaOld(tex_mtx_info_2->mSRT, sp_68);
                    }
                    J3DMtxProjConcat(sp_68, tex_mtx_obj->getEffectMtx(i), sp_e8);
                    MTXInverse(j3dSys.getViewMtx(), sp_a8);
                    MTXConcat(sp_e8, sp_a8, sp_e8);
                    sp_e8[0][3] = sp_e8[1][3] = sp_e8[2][3] = 0.0f;
                    mtx = &sp_e8;
                    break;
                }
                case 11: {
                    J3DTexMtxInfo* tex_mtx_info_2 = &tex_mtx_2->getTexMtxInfo(); // sp_40
                    u32 sp_3c = (u32)(tex_mtx_info_2->mInfo & 0x80) >> 7;
                    if (sp_3c == 0) {
                        J3DGetTextureMtx(tex_mtx_info_2->mSRT, tex_mtx_info_2->mCenter, sp_68);
                    } else if (sp_3c == 1) {
                        J3DGetTextureMtxMaya(tex_mtx_info_2->mSRT, sp_68);
                    }

                    MTXConcat(sp_68, qMtx, sp_68);
                    J3DMtxProjConcat(sp_68, tex_mtx_obj->getEffectMtx(i), sp_e8);
                    MTXInverse(j3dSys.getViewMtx(), sp_a8);
                    MTXConcat(sp_e8, sp_a8, sp_e8);
                    sp_e8[0][3] = sp_e8[1][3] = sp_e8[2][3] = 0.0f;
                    mtx = &sp_e8;
                    break;
                }
                case 10: {
                    J3DTexMtxInfo* tex_mtx_info_2 = &tex_mtx_2->getTexMtxInfo(); // sp_38
                    u32 sp_34 = (u32)(tex_mtx_info_2->mInfo & 0x80) >> 7;
                    if (sp_34 == 0) {
                        J3DGetTextureMtx(tex_mtx_info_2->mSRT, tex_mtx_info_2->mCenter, sp_68);
                    } else if (sp_34 == 1) {
                        J3DGetTextureMtxMaya(tex_mtx_info_2->mSRT, sp_68);
                    }

                    MTXConcat(sp_68, qMtx2, sp_68);
                    J3DMtxProjConcat(sp_68, tex_mtx_obj->getEffectMtx(i), sp_e8);
                    MTXInverse(j3dSys.getViewMtx(), sp_a8);
                    MTXConcat(sp_e8, sp_a8, sp_e8);
                    sp_e8[0][3] = sp_e8[1][3] = sp_e8[2][3] = 0.0f;
                    mtx = &sp_e8;
                    break;
                }
                case 0:
                case 4:
                default: {
                    mtx = &tex_mtx_obj->getMtx(i);
                }
                }
                GXLoadTexMtxImm(*mtx, i * 3 + 0x40, GX_MTX3x4);
            }
        }
    } else {
        for (u16 i = 0; i < tex_mtx_num; i++) {
            int tex_gen_type = tex_gen_block->getTexCoord(i)->getTexGenType();
            if (tex_gen_type == 1 || tex_gen_type == 0) {
                J3DTexMtx* tex_mtx = tex_gen_block->getTexMtx(i); // sp_2c
                J3D_ASSERT_NULLPTR(325, tex_mtx != NULL);
                tex_mtx_info_1 = &tex_mtx->getTexMtxInfo();

                u32 tex_gen_src = tex_mtx_info_1->mInfo & 0x3f; // sp_28
                switch (tex_gen_src) {
                case 3:
                case 9:
                    MTXConcat(tex_mtx_obj->getMtx(i), param_0, sp_e8);
                    mtx = &sp_e8;
                    break;
                case 1:
                case 6:
                case 7:
                    MTXCopy(param_0, sp_a8);
                    sp_a8[0][3] = sp_a8[1][3] = sp_a8[2][3] = 0.0f;
                    MTXConcat(tex_mtx_obj->getMtx(i), sp_a8, sp_e8);
                    mtx = &sp_e8;
                    break;
                case 2:
                case 8:
                    mtx = &tex_mtx_obj->getMtx(i);
                    break;
                case 5: {
                    J3DTexMtxInfo* tex_mtx_info_2 = &tex_mtx->getTexMtxInfo(); // sp_24
                    u32 sp_24 = (u32)(tex_mtx_info_2->mInfo & 0x80) >> 7;
                    if (sp_24 == 0) {
                        J3DGetTextureMtxOld(tex_mtx_info_2->mSRT, tex_mtx_info_2->mCenter, sp_68);
                    } else if (sp_24 == 1) {
                        J3DGetTextureMtxMayaOld(tex_mtx_info_2->mSRT, sp_68);
                    }

                    J3DMtxProjConcat(sp_68, tex_mtx_obj->getEffectMtx(i), sp_e8);
                    MTXInverse(j3dSys.getViewMtx(), sp_a8);
                    MTXConcat(sp_e8, sp_a8, sp_e8);
                    MTXConcat(sp_e8, param_0, sp_e8);
                    sp_e8[0][3] = sp_e8[1][3] = sp_e8[2][3] = 0.0f;
                    mtx = &sp_e8;
                    break;
                }
                case 11: {
                    J3DTexMtxInfo* tex_mtx_info_2 = &tex_mtx->getTexMtxInfo(); // sp_1c
                    u32 sp_18 = (u32)(tex_mtx_info_2->mInfo & 0x80) >> 7;
                    if (sp_18 == 0) {
                        J3DGetTextureMtx(tex_mtx_info_2->mSRT, tex_mtx_info_2->mCenter, sp_68);
                    } else if (sp_18 == 1) {
                        J3DGetTextureMtxMaya(tex_mtx_info_2->mSRT, sp_68);
                    }

                    MTXConcat(sp_68, qMtx, sp_68);
                    J3DMtxProjConcat(sp_68, tex_mtx_obj->getEffectMtx(i), sp_e8);
                    MTXInverse(j3dSys.getViewMtx(), sp_a8);
                    MTXConcat(sp_e8, sp_a8, sp_e8);
                    MTXConcat(sp_e8, param_0, sp_e8);
                    sp_e8[0][3] = sp_e8[1][3] = sp_e8[2][3] = 0.0f;
                    mtx = &sp_e8;
                    break;
                }
                case 10: {
                    J3DTexMtxInfo* tex_mtx_info_2 = &tex_mtx->getTexMtxInfo(); // sp_14
                    u32 sp_10 = (u32)(tex_mtx_info_2->mInfo & 0x80) >> 7;
                    if (sp_10 == 0) {
                        J3DGetTextureMtx(tex_mtx_info_2->mSRT, tex_mtx_info_2->mCenter, sp_68);
                    } else if (sp_10 == 1) {
                        J3DGetTextureMtxMaya(tex_mtx_info_2->mSRT, sp_68);
                    }

                    MTXConcat(sp_68, qMtx2, sp_68);
                    J3DMtxProjConcat(sp_68, tex_mtx_obj->getEffectMtx(i), sp_e8);
                    MTXInverse(j3dSys.getViewMtx(), sp_a8);
                    MTXConcat(sp_e8, sp_a8, sp_e8);
                    MTXConcat(sp_e8, param_0, sp_e8);
                    sp_e8[2][3] = 0.0f;
                    sp_e8[1][3] = 0.0f;
                    sp_e8[0][3] = 0.0f;
                    mtx = &sp_e8;
                    break;
                }
                case 0:
                case 4:
                default: {
                    mtx = &tex_mtx_obj->getMtx(i);
                    break;
                }
                }
                GXLoadTexMtxImm(*mtx, i * 3 + 30, (GXTexMtxType)tex_mtx_info_1->mProjection);
            }
        }
    }
}

/* 80313828-803138C8 30E168 00A0+00 1/0 0/0 0/0 .text
 * loadMtxConcatView_PNGP__21J3DShapeMtxConcatViewCFiUs         */
void J3DShapeMtxConcatView::loadMtxConcatView_PNGP(int slot, u16 drw) const {
    Mtx m;
    MTXConcat(*j3dSys.getShapePacket()->getBaseMtxPtr(), j3dSys.getModelDrawMtx(drw), m);
    J3DDifferedTexMtx::load(m);
    J3DFifoLoadPosMtxImm(m, slot * 3);
    loadNrmMtx(slot, drw, m);
}

/* 803138C8-8031396C 30E208 00A4+00 2/0 0/0 0/0 .text
 * loadMtxConcatView_PCPU__21J3DShapeMtxConcatViewCFiUs         */
void J3DShapeMtxConcatView::loadMtxConcatView_PCPU(int slot, u16 drw) const {
    Mtx m;
    MTXConcat(*j3dSys.getShapePacket()->getBaseMtxPtr(), j3dSys.getModelDrawMtx(drw), m);
    J3DDifferedTexMtx::load(m);
    J3DFifoLoadPosMtxImm(*j3dSys.getShapePacket()->getBaseMtxPtr(), slot * 3);
    loadNrmMtx(slot, drw, m);
}

/* 8031396C-80313A14 30E2AC 00A8+00 2/0 0/0 0/0 .text
 * loadMtxConcatView_NCPU__21J3DShapeMtxConcatViewCFiUs         */
void J3DShapeMtxConcatView::loadMtxConcatView_NCPU(int slot, u16 drw) const {
    Mtx m;
    MTXConcat(*j3dSys.getShapePacket()->getBaseMtxPtr(), j3dSys.getModelDrawMtx(drw), m);
    J3DDifferedTexMtx::load(m);
    J3DFifoLoadPosMtxImm(m, slot * 3);
    J3DFifoLoadNrmMtxImm(*j3dSys.getShapePacket()->getBaseMtxPtr(), slot * 3);

    if (J3DShapeMtx::sTexMtxLoadType == 0x2000)
        J3DFifoLoadNrmMtxToTexMtx(*j3dSys.getShapePacket()->getBaseMtxPtr(), slot * 3 + GX_TEXMTX0);
}

/* 80313A14-80313AC8 30E354 00B4+00 2/0 0/0 0/0 .text
 * loadMtxConcatView_PNCPU__21J3DShapeMtxConcatViewCFiUs        */
void J3DShapeMtxConcatView::loadMtxConcatView_PNCPU(int slot, u16 drw) const {
    if (J3DDifferedTexMtx::sTexGenBlock != NULL) {
        Mtx m;
        MTXConcat(*j3dSys.getShapePacket()->getBaseMtxPtr(), j3dSys.getModelDrawMtx(drw), m);
        J3DDifferedTexMtx::loadExecute(m);
    }

    J3DFifoLoadPosMtxImm(*j3dSys.getShapePacket()->getBaseMtxPtr(), slot * 3);
    J3DFifoLoadNrmMtxImm(*j3dSys.getShapePacket()->getBaseMtxPtr(), slot * 3);

    if (J3DShapeMtx::sTexMtxLoadType == 0x2000)
        J3DFifoLoadNrmMtxToTexMtx(*j3dSys.getShapePacket()->getBaseMtxPtr(), slot * 3 + GX_TEXMTX0);
}

/* 80313AC8-80313B94 30E408 00CC+00 1/0 0/0 0/0 .text
 * loadMtxConcatView_PNGP_LOD__21J3DShapeMtxConcatViewCFiUs     */
void J3DShapeMtxConcatView::loadMtxConcatView_PNGP_LOD(int slot, u16 drw) const {
    Mtx m;
    MTXConcat(*j3dSys.getShapePacket()->getBaseMtxPtr(), j3dSys.getModelDrawMtx(drw), m);
    MTXConcat(m, j3dSys.getModel()->getModelData()->getInvJointMtx(drw), m);
    J3DDifferedTexMtx::load(m);
    J3DFifoLoadPosMtxImm(m, slot * 3);
    loadNrmMtx(slot, drw, m);
}

/* 80313B94-80313BF0 30E4D4 005C+00 1/0 0/0 0/0 .text            load__11J3DShapeMtxCFv */
void J3DShapeMtx::load() const {
    J3DShapeMtx_LoadFunc func = sMtxLoadPipeline[sCurrentPipeline];
    (this->*func)(0, mUseMtxIndex);
}

/* 80313BF0-80313C54 30E530 0064+00 5/0 0/0 0/0 .text
 * calcNBTScale__11J3DShapeMtxFRC3VecPA3_A3_fPA3_A3_f           */
void J3DShapeMtx::calcNBTScale(Vec const& param_0, Mtx33* param_1, Mtx33* param_2) {
    J3DPSMtx33Copy(param_1[mUseMtxIndex], param_2[mUseMtxIndex]);
    J3DScaleNrmMtx33(param_2[mUseMtxIndex], param_0);
}

/* 80313C54-80313D28 30E594 00D4+00 1/0 0/0 0/0 .text            load__21J3DShapeMtxConcatViewCFv */
void J3DShapeMtxConcatView::load() const {
    sMtxPtrTbl[0] = j3dSys.getModel()->getMtxBuffer()->getUserAnmMtx(0);
    sMtxPtrTbl[1] = j3dSys.getModel()->getWeightAnmMtx(0);
    J3DShapeMtxConcatView_LoadFunc func = sMtxLoadPipeline[sCurrentPipeline];

    j3dSys.setModelDrawMtx((Mtx*)sMtxPtrTbl[j3dSys.getModel()->getModelData()->getDrawMtxFlag(mUseMtxIndex)]);

    u16 draw_mtx_index = j3dSys.getModel()->getModelData()->getDrawMtxIndex(mUseMtxIndex);
    (this->*func)(0, draw_mtx_index);
}

/* 80313D28-80313E4C 30E668 0124+00 3/0 0/0 0/0 .text
 * loadNrmMtx__21J3DShapeMtxConcatViewCFiUsPA4_f                */
void J3DShapeMtxConcatView::loadNrmMtx(int param_0, u16 param_1, MtxP param_2) const {
    if (sCurrentScaleFlag[param_1] == 1) {
        if (sTexMtxLoadType == 0x2000) {
            J3DFifoLoadNrmMtxToTexMtx(param_2, 0x1e);
        }

        if (!sNBTFlag) {
            J3DFifoLoadNrmMtxImm(param_2, 0);
        } else {
            Mtx33 mtx;
            Vec* scale = j3dSys.getNBTScale();
            J3DPSMtx33CopyFrom34(param_2, mtx);
            J3DScaleNrmMtx33(mtx, *scale);
            J3DFifoLoadNrmMtxImm3x3(mtx, 0);
        }
    } else {
        Mtx33 mtx;
        J3DPSCalcInverseTranspose(param_2, mtx);
        if (sTexMtxLoadType == 0x2000) {
            J3DFifoLoadNrmMtxToTexMtx3x3(mtx, 0x1e);
        }

        if (!sNBTFlag) {
            J3DFifoLoadNrmMtxImm3x3(mtx, 0);
        } else {
            Vec* scale = j3dSys.getNBTScale();
            J3DScaleNrmMtx33(mtx, *scale);
            J3DFifoLoadNrmMtxImm3x3(mtx, 0);
        }
    }
}

/* 80313E4C-80313EEC 30E78C 00A0+00 1/0 0/0 0/0 .text            load__16J3DShapeMtxMultiCFv */
void J3DShapeMtxMulti::load() const {
    J3DShapeMtx_LoadFunc func = sMtxLoadPipeline[sCurrentPipeline];

    int use_mtx_num = mUseMtxNum;
    for (int i = 0; i < use_mtx_num; i++) {
        if (mUseMtxIndexTable[i] != 0xffff) {
            (this->*func)(i, mUseMtxIndexTable[i]);
        }
    }
}

/* 80313EEC-80313FA4 30E82C 00B8+00 1/0 0/0 0/0 .text
 * calcNBTScale__16J3DShapeMtxMultiFRC3VecPA3_A3_fPA3_A3_f      */
void J3DShapeMtxMulti::calcNBTScale(Vec const& param_0, Mtx33* param_1, Mtx33* param_2) {
    int use_mtx_num = mUseMtxNum;
    for (int i = 0; i < use_mtx_num; i++) {
        if (mUseMtxIndexTable[i] != 0xffff) {
            J3DPSMtx33Copy(param_1[mUseMtxIndexTable[i]], param_2[mUseMtxIndexTable[i]]);
            J3DScaleNrmMtx33(param_2[mUseMtxIndexTable[i]], param_0);
        }
    }
}

/* 80313FA4-8031419C 30E8E4 01F8+00 1/0 0/0 0/0 .text load__26J3DShapeMtxMultiConcatViewCFv */
void J3DShapeMtxMultiConcatView::load() const {
    sMtxPtrTbl[0] = j3dSys.getModel()->getMtxBuffer()->getUserAnmMtx(0);
    sMtxPtrTbl[1] = j3dSys.getModel()->getWeightAnmMtx(0);

    if (!sLODFlag) {
        J3DShapeMtxConcatView_LoadFunc func = sMtxLoadPipeline[sCurrentPipeline];
        int use_mtx_num = mUseMtxNum;
        for (int i = 0; i < use_mtx_num; i++) {
            if (mUseMtxIndexTable[i] != 0xffff) {
                u16 draw_mtx_index = j3dSys.getModel()->getModelData()->getDrawMtxIndex(mUseMtxIndexTable[i]);
                j3dSys.setModelDrawMtx((Mtx*)sMtxPtrTbl[j3dSys.getModel()->getModelData()->getDrawMtxFlag(mUseMtxIndexTable[i])]);
                (this->*func)(i, draw_mtx_index);
            }
        }
    } else {
        u16* important_mtx_indices = j3dSys.getModel()->getModelData()->getWEvlpImportantMtxIndex();
        j3dSys.setModelDrawMtx((Mtx*)sMtxPtrTbl[0]);

        int use_mtx_num = mUseMtxNum;
        for (int i = 0; i < use_mtx_num; i++) {
            u32 current_pipeline = sCurrentPipeline;
            J3DShapeMtxConcatView_LoadFunc func = sMtxLoadLODPipeline[current_pipeline];

            if (mUseMtxIndexTable[i] != 0xffff) {
                u16 important_mtx_index = important_mtx_indices[mUseMtxIndexTable[i]];
                if (important_mtx_index != sMtxLoadCache[i]) {
                    if (j3dSys.getModel()->getModelData()->getDrawMtxFlag(mUseMtxIndexTable[i]) == 0) {
                        func = sMtxLoadPipeline[sCurrentPipeline];
                    }

                    (this->*func)(i, important_mtx_index);
                    sMtxLoadCache[i] = important_mtx_index;
                }
            }
        }
    }
}

/* 8031419C-803142D4 30EADC 0138+00 1/0 0/0 0/0 .text
 * loadNrmMtx__26J3DShapeMtxMultiConcatViewCFiUsPA4_f           */
void J3DShapeMtxMultiConcatView::loadNrmMtx(int param_0, u16 param_1, MtxP param_2) const {
    Mtx33 mtx1, mtx2;
    if (sCurrentScaleFlag[param_1] == 1) {
        if (sTexMtxLoadType == 0x2000) {
            J3DFifoLoadNrmMtxToTexMtx(param_2, param_0 * 3 + 0x1e);
        }
        if (!sNBTFlag) {
            J3DFifoLoadNrmMtxImm(param_2, param_0 * 3);
        } else {
            Vec* nbt_scale = j3dSys.getNBTScale();
            J3DPSMtx33CopyFrom34(param_2, mtx1);
            J3DScaleNrmMtx33(mtx1, *nbt_scale);
            J3DFifoLoadNrmMtxImm3x3(mtx1, 0);
        }
    } else {
        J3DPSCalcInverseTranspose(param_2, mtx2);
        if (sTexMtxLoadType == 0x2000) {
            J3DFifoLoadNrmMtxToTexMtx3x3(mtx2, param_0 * 3 + 0x1e);
        }
        if (!sNBTFlag) {
            J3DFifoLoadNrmMtxImm3x3(mtx2, param_0 * 3);
        } else {
            Vec* nbt_scale = j3dSys.getNBTScale();
            J3DScaleNrmMtx33(mtx2, *nbt_scale);
            J3DFifoLoadNrmMtxImm3x3(mtx2, param_0 * 3);
        }
    }
}

/* 803142D4-803143E4 30EC14 0110+00 1/0 0/0 0/0 .text load__27J3DShapeMtxBBoardConcatViewCFv */
void J3DShapeMtxBBoardConcatView::load() const {
    Mtx mtx;
    u16 draw_mtx_index = j3dSys.getModel()->getModelData()->getDrawMtxIndex(mUseMtxIndex);

    if (j3dSys.getModel()->getModelData()->getDrawMtxFlag(mUseMtxIndex) == 0) {
        MTXConcat(j3dSys.getViewMtx(), j3dSys.getModel()->getMtxBuffer()->getUserAnmMtx(draw_mtx_index), mtx);
    } else {
        MTXConcat(j3dSys.getViewMtx(), j3dSys.getModel()->getWeightAnmMtx(draw_mtx_index), mtx);
    }

    J3DCalcBBoardMtx(mtx);
    J3DFifoLoadPosMtxImm(mtx, 0);

    mtx[0][0] = 1.0f / mtx[0][0];
    mtx[1][1] = 1.0f / mtx[1][1];
    mtx[2][2] = 1.0f / mtx[2][2];
    mtx[0][3] = 0.0f;
    mtx[1][3] = 0.0f;
    mtx[2][3] = 0.0f;

    
    if (!sNBTFlag) {
        J3DFifoLoadNrmMtxImm(mtx, 0);
    } else {
        Vec* nbt_scale = j3dSys.getNBTScale();
        J3DScaleNrmMtx(mtx, *nbt_scale);
        J3DFifoLoadNrmMtxImm(mtx, 0);
    }
}

/* 803143E4-80314520 30ED24 013C+00 1/0 0/0 0/0 .text load__28J3DShapeMtxYBBoardConcatViewCFv */
void J3DShapeMtxYBBoardConcatView::load() const {
    Mtx mtx1;
    Mtx33 mtx2;
    u16 draw_mtx_index = j3dSys.getModel()->getModelData()->getDrawMtxIndex(mUseMtxIndex);

    if (j3dSys.getModel()->getModelData()->getDrawMtxFlag(mUseMtxIndex) == 0) {
        MTXConcat(j3dSys.getViewMtx(), j3dSys.getModel()->getMtxBuffer()->getUserAnmMtx(draw_mtx_index), mtx1);
    } else {
        MTXConcat(j3dSys.getViewMtx(), j3dSys.getModel()->getWeightAnmMtx(draw_mtx_index), mtx1);
    }

    J3DCalcYBBoardMtx(mtx1);
    J3DFifoLoadPosMtxImm(mtx1, 0);

    if (sCurrentScaleFlag[mUseMtxIndex] == 1) {
        if (!sNBTFlag) {
            J3DFifoLoadNrmMtxImm(mtx1, 0);
        } else {
            Vec* nbt_scale = j3dSys.getNBTScale();
            J3DScaleNrmMtx(mtx1, *nbt_scale);
            J3DFifoLoadNrmMtxImm(mtx1, 0);
        }
    } else {
        J3DPSCalcInverseTranspose(mtx1, mtx2);
        if (!sNBTFlag) {
            J3DFifoLoadNrmMtxImm3x3(mtx2, 0);
        } else {
            Vec* nbt_scale = j3dSys.getNBTScale();
            J3DScaleNrmMtx33(mtx2, *nbt_scale);
            J3DFifoLoadNrmMtxImm3x3(mtx2, 0);
        }
    }
}

static void dummy() {
    static u8 mtxCache[20] = {
        0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
        0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    };
}

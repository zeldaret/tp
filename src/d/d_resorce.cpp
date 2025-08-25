#include "d/dolzel.h"

#include "d/d_resorce.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "JSystem/J3DGraphAnimator/J3DMaterialAnm.h"
#include "JSystem/J3DGraphLoader/J3DAnmLoader.h"
#include "JSystem/J3DGraphLoader/J3DClusterLoader.h"
#include "JSystem/J3DGraphLoader/J3DModelLoader.h"
#include "JSystem/JKernel/JKRMemArchive.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "JSystem/JUtility/JUTConsole.h"
#include "JSystem/JUtility/JUTAssert.h"
#include "d/d_bg_w_kcol.h"
#include "d/d_com_inf_game.h"
#include "m_Do/m_Do_graphic.h"
#include <stdio.h>

/* 8003A260-8003A280 034BA0 0020+00 0/0 1/1 0/0 .text            __ct__11dRes_info_cFv */
dRes_info_c::dRes_info_c() {
    mCount = 0;
    mDMCommand = NULL;
    mArchive = NULL;
    heap = NULL;
    mDataHeap = NULL;
    mRes = NULL;
}

/* 8003A280-8003A348 034BC0 00C8+00 3/3 1/1 0/0 .text            __dt__11dRes_info_cFv */
dRes_info_c::~dRes_info_c() {
    if (mDMCommand != NULL) {
        delete mDMCommand;
        mDMCommand = NULL;
    } else if (mArchive != NULL) {
        deleteArchiveRes();
        if (mDataHeap != NULL) {
            mDoExt_destroySolidHeap(mDataHeap);
            mDataHeap = NULL;
            mArchive->unmount();
        }
        mRes = NULL;
        mArchive = NULL;
    }
}

/* 8003A348-8003A3F0 034C88 00A8+00 1/1 0/0 0/0 .text set__11dRes_info_cFPCcPCcUcP7JKRHeap */
int dRes_info_c::set(char const* i_arcName, char const* i_path, u8 i_mountDirection, JKRHeap* i_heap) {
    char path[40];

    JUT_ASSERT(120, strlen(i_arcName) <= NAME_MAX);

    if (*i_path != NULL) {
        snprintf(path, sizeof(path), "%s%s.arc", i_path, i_arcName);
        mDMCommand = mDoDvdThd_mountArchive_c::create(path, i_mountDirection, i_heap);

        if (mDMCommand == NULL) {
            return false;
        }
    }

    strncpy(mArchiveName, i_arcName, sizeof(mArchiveName) - 1);
    return true;
}

/* 8003A3F0-8003A490 034D30 00A0+00 1/1 0/0 0/0 .text            setAlpha__FP16J3DMaterialTable */
static void setAlpha(J3DMaterialTable* i_matTable) {
    for (u16 i = 0; i < i_matTable->getMaterialNum(); i++) {
        J3DMaterial* mat = i_matTable->getMaterialNodePointer(i);
        J3DTevBlock* tevBlock = mat->getTevBlock();

        if (tevBlock != NULL) {
            GXColorS10* tevColor = tevBlock->getTevColor(3);
            if (tevColor != NULL) {
                u8 tevStageNum = tevBlock->getTevStageNum();
                tevColor->a = tevStageNum;
            }
        }
    }
}

/* 8003A490-8003A81C 034DD0 038C+00 1/1 0/0 0/0 .text            setIndirectTex__FP12J3DModelData */
static void setIndirectTex(J3DModelData* i_modelData) {
    const char* textureName;
    J3DMaterialTable& materialTable = i_modelData->getMaterialTable();
    J3DTexture* texture = materialTable.getTexture();
    if (texture == NULL)
        return;

    JUTNameTab* nameTab = materialTable.getTextureName();
    if (nameTab == NULL)
        return;

    for (u16 i = 0; i < texture->getNum(); i++) {
        textureName = nameTab->getName(i);
        if (memcmp(textureName, "fbtex_dummy", 0xc) == 0) {
            texture->setResTIMG(i, *mDoGph_gInf_c::getFrameBufferTimg());
        }
        if (memcmp(textureName, "dummy", 6) == 0) {
            texture->setResTIMG(i, *mDoGph_gInf_c::getFrameBufferTimg());
        }
        if (memcmp(textureName, "Zbuffer", 8) == 0) {
            texture->setResTIMG(i, *mDoGph_gInf_c::getZbufferTimg());
        }
    }
}

/* 8003A81C-8003A840 03515C 0024+00 1/1 0/0 0/0 .text            setAlpha__FP12J3DModelData */
static void setAlpha(J3DModelData* i_modelData) {
    setAlpha(&i_modelData->getMaterialTable());
}

/* 80379840-803798A4 005EA0 0064+00 2/2 0/0 0/0 .rodata          l_texMtxInfo */
static const J3DTexMtxInfo l_texMtxInfo = {
    0x00,
    0x08, 0x00, 0x00,
    {0.5f, 0.5f, 0.0f},
    {0.1f, 0.1f, 0, 0.0f, 0.0f},
    {
        {0.5f, 0.0f, 0.0f, 0.5f},
        {0.0f, 0.5f, 0.0f, 0.5f},
        {0.0f, 0.0f, 0.0f, 1.0f},
        {0.0f, 0.0f, 0.0f, 1.0f},
    },
};

/* 8003A840-8003AACC 035180 028C+00 1/1 0/0 0/0 .text            addWarpMaterial__FP12J3DModelData
 */
// NONMATCHING l_alphaCompInfo needs to be placed in .sdata2, but the function breaks if it is declared const
// Also see J3DAlphaComp::setAlphaCompInfo in J3DMatBlock.h
static void addWarpMaterial(J3DModelData* i_modelData) {
    static J3DTevStageInfo const l_tevStageInfo = {
        0x05, 0x0F, 0x08, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x01, 0x00,
        0x07, 0x04, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01, 0x00,
    };
    static J3DTexCoordInfo l_texCoordInfo = {0x00, 0x00, 0x27};
    static J3DTevOrderInfo l_tevOrderInfo = {0x00, 0x03, 0xFF, 0x00};

    ResTIMG* resTimg = (ResTIMG*)dComIfG_getObjectRes("Always", 0x5d);
    JUT_ASSERT(0x117, resTimg != 0);

    J3DTexture* texture = i_modelData->getTexture();
    u16 textureNum = texture->getNum();
    texture->addResTIMG(1, resTimg - textureNum);

    J3DTexMtx* newTexMtx = new J3DTexMtx(l_texMtxInfo);
    JUT_ASSERT(0x11D, newTexMtx != 0);

    for (u16 i = 0; i < i_modelData->getMaterialNum(); i++) {
        J3DMaterial* material = i_modelData->getMaterialNodePointer(i);
        J3DTexGenBlock* texGenBlock = material->getTexGenBlock();
        u32 texGenNum = texGenBlock->getTexGenNum();
        JUT_ASSERT(0x122, texGenNum < 4);

        J3DTexCoord* coord = texGenBlock->getTexCoord(texGenNum);
        l_texCoordInfo.mTexGenMtx = texGenNum * 3 + 0x1e;
        coord->setTexCoordInfo(l_texCoordInfo);
        coord->resetTexMtxReg();
        
        texGenBlock->setTexGenNum(texGenNum + 1);
        texGenBlock->setTexMtx(texGenNum, newTexMtx);
        J3DTevBlock* tevBlock = material->getTevBlock();
        u8 tevStageNum = tevBlock->getTevStageNum();
        JUT_ASSERT(299, tevStageNum < 4);
        l_tevOrderInfo.mTexCoord = texGenNum;
        JUT_ASSERT(301, tevBlock->getTexNo(3) == 0xffff);
        tevBlock->setTexNo(3, textureNum);
        tevBlock->setTevOrder(tevStageNum, J3DTevOrder(l_tevOrderInfo));
        tevBlock->setTevStage(tevStageNum, J3DTevStage(l_tevStageInfo));
        tevBlock->setTevStageNum(tevStageNum + 1);

        J3DShape* shape = material->getShape();
        GXAttr attr = (GXAttr)(texGenNum + 1);
        shape->addTexMtxIndexInDL(attr, 0);
        shape->addTexMtxIndexInVcd(attr);

        J3DPEBlock* peBlock = material->getPEBlock();
        J3DAlphaComp* alphaComp = peBlock->getAlphaComp();
        static J3DAlphaCompInfo l_alphaCompInfo = {0x04, 0x80, 0x00, 0x03, 0xFF, 0, 0, 0};
        alphaComp->setAlphaCompInfo(l_alphaCompInfo);
        peBlock->setZCompLoc((u8)0);
    }
}

/* 8003AB30-8003AC1C 035470 00EC+00 0/0 2/1 0/0 .text
 * onWarpMaterial__11dRes_info_cFP12J3DModelData                */
void dRes_info_c::onWarpMaterial(J3DModelData* i_modelData) {
    for (u16 i = 0; i < i_modelData->getMaterialNum(); i++) {
        J3DMaterial* material = i_modelData->getMaterialNodePointer(i);
        J3DTevBlock* tevBlock = material->getTevBlock();
        u8 tevStageNum = tevBlock->getTevStageNum();
        J3DTevOrder* tevorder = tevBlock->getTevOrder(tevStageNum - 1);
        if (tevorder->getTexMap() == 3) {
            break;
        }

        tevBlock->setTevStageNum(tevStageNum + 1);
        J3DTexGenBlock* texGenBlock = material->getTexGenBlock();
        texGenBlock->setTexGenNum(texGenBlock->getTexGenNum() + 1);
    }
}

/* 8003AC1C-8003AD08 03555C 00EC+00 0/0 2/1 0/0 .text
 * offWarpMaterial__11dRes_info_cFP12J3DModelData               */
void dRes_info_c::offWarpMaterial(J3DModelData* i_modelData) {
    for (u16 i = 0; i < i_modelData->getMaterialNum(); i++) {
        J3DMaterial* material = i_modelData->getMaterialNodePointer(i);
        J3DTevBlock* tevBlock = material->getTevBlock();
        u8 tevStageNum = tevBlock->getTevStageNum();
        J3DTevOrder* tevorder = tevBlock->getTevOrder(tevStageNum - 1);
        if (tevorder->getTexMap() != 3) {
            break;
        }
        tevBlock->setTevStageNum(tevStageNum - 1);
        J3DTexGenBlock* texGenBlock = material->getTexGenBlock();
        texGenBlock->setTexGenNum(texGenBlock->getTexGenNum() - 1);
    }
}

/* 8003AD08-8003AE14 035648 010C+00 0/0 1/1 0/0 .text
 * setWarpSRT__11dRes_info_cFP12J3DModelDataRC4cXyzff           */
void dRes_info_c::setWarpSRT(J3DModelData* i_modelData, const cXyz& i_pos, f32 i_transX,
                             f32 i_transY) {
    J3DMaterial* material = i_modelData->getMaterialNodePointer(0);
    J3DTexGenBlock* texGenBlock = material->getTexGenBlock();
    u32 texGenNum = texGenBlock->getTexGenNum();
    J3DTexMtx* texMtx = texGenBlock->getTexMtx(texGenNum - 1);
    J3DTexMtxInfo& texMtxInfo = texMtx->getTexMtxInfo();
    texMtxInfo.mSRT.mTranslationX = i_transX;
    texMtxInfo.mSRT.mTranslationY = i_transY;

    mDoMtx_stack_c::transS(-i_pos.x, -i_pos.y, -i_pos.z);
    s16 angleY = fopCamM_GetAngleY(dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0)));
    mDoMtx_stack_c::YrotM(angleY);
    cMtx_concat(l_texMtxInfo.mEffectMtx, mDoMtx_stack_c::get(), texMtxInfo.mEffectMtx);
}

/* 8003AE14-8003B150 035754 033C+00 2/1 1/1 0/0 .text            loaderBasicBmd__11dRes_info_cFUlPv
 */
J3DModelData* dRes_info_c::loaderBasicBmd(u32 i_tag, void* i_data) {
    u32 flags = 0x59020010;
    u16 i;
    J3DMaterial* material;
    J3DModelData* modelData;
    u8 lightMask;

    if (i_tag == 'BMDE' || i_tag == 'BMDV') {
        flags |= 0x20;
    } else if (i_tag == 'BMWR' || i_tag == 'BMWE') {
        flags ^= 0x60020;
    }

    i_data = J3DModelLoaderDataBase::load(i_data, flags);
    if (i_data == NULL) {
        return NULL;
    }

    modelData = (J3DModelData*)i_data;

    if (i_tag == 'BMDE' || i_tag == 'BMDV' || i_tag == 'BMWE') {
        for (i = 0; i < modelData->getShapeNum(); i++) {
           J3DShape* shape = modelData->getShapeNodePointer(i);
            shape->setTexMtxLoadType(0x2000);
        }
    }

    for (i = 0; i < modelData->getMaterialNum(); i++) {
        material = modelData->getMaterialNodePointer(i);
        lightMask = material->getColorChan(0)->getLightMask();
        switch (g_env_light.light_mask_type) {
        case 1:
            lightMask &= 0x4;
            break;
        case 2:
            lightMask &= 0xC;
            break;
        case 3:
            lightMask &= 0xD;
            break;
        case 4:
            lightMask &= 0xF;
            break;
        case 5:
            lightMask &= 0x1F;
            break;
        case 6:
            lightMask &= 0x3F;
            break;
        case 7:
            lightMask &= 0x7F;
        }

        material->getColorChan(0)->setLightMask(lightMask);
        material->change();

        J3DMaterialAnm* materialAnm = new J3DMaterialAnm();
        if (materialAnm == NULL) {
            return NULL;
        }

        material->setMaterialAnm(materialAnm);
    }

    setIndirectTex(modelData);

    if (i_tag == 'BMWR' || i_tag == 'BMWE') {
        addWarpMaterial(modelData);
    }

    if (i_tag == 'BMDR' || i_tag == 'BMWR') {
        if (modelData->newSharedDisplayList(0x40000) != 0) {
            return NULL;
        } else {
            modelData->simpleCalcMaterial(0, (MtxP)j3dDefaultMtx);
            modelData->makeSharedDL();
        }
    }

    return (J3DModelData*)i_data;
}

/* 8003B30C-8003B8D0 035C4C 05C4+00 2/2 0/0 0/0 .text            loadResource__11dRes_info_cFv */
int dRes_info_c::loadResource() {
    JUT_ASSERT(0x2C5, mRes == 0);

    s32 countFile = mArchive->countFile();
    mRes = new void*[countFile];
    if (mRes == NULL) {
        OSReport_Error("<%s.arc> setRes: res pointer buffer nothing !!\n", mArchiveName);
        return -1;
    }

    for (int i = 0; i < countFile; i++) {
        mRes[i] = NULL;
    }
    JKRArchive::SDIDirEntry* node = mArchive->mNodes;

    for (int i = 0; i < mArchive->countDirectory(); i++) {
        u32 nodeType = node->type;
        u32 fileIndex = node->first_file_index;
        J3DModelData* modelData;
        void* result;

        for (int j = 0; j < node->num_entries; j++) {
            if (mArchive->isFileEntry(fileIndex)) {
                result = mArchive->getIdxResource(fileIndex);

                if (result == NULL) {
                    OSReport_Error("<%s> res == NULL !!\n",
                        mArchive->mStringTable +
                        (mArchive->findIdxResource(fileIndex)->type_flags_and_name_offset & 0xFFFFFF));
                } else if (nodeType == 'ARC ') {
                    JKRArchive::SDIFileEntry* entry = mArchive->findIdxResource(fileIndex);
                    JUT_ASSERT(0x2FD, entry != 0);

                    const char* name_p = mArchive->mStringTable + entry->getNameOffset();
                    size_t resNameLen = strlen(name_p) - 4;
                    JUT_ASSERT(0x301, resNameLen <= NAME_MAX);

                    char arcName[9];
                    strncpy(arcName, name_p, resNameLen);
                    arcName[resNameLen] = '\0';

                    JKRExpHeap* parentHeap = (JKRExpHeap*)JKRHeap::findFromRoot(JKRHeap::getCurrentHeap());
                    JUT_ASSERT(0x308, parentHeap != 0 && (parentHeap == mDoExt_getGameHeap() || parentHeap == mDoExt_getArchiveHeap()));
#ifdef DEBUG
                    char* heapName;
                    if (parentHeap == mDoExt_getGameHeap()) {
                        heapName = "GameHeap";
                    } else {
                        heapName = "ArchiveHeap";
                    }

                    // ">>>>>>>>>>>>>>>>>> Pack Archive<%s> <%s>\n"
                    OSReport(">>>>>>>>>>>>>>>>>> パックアーカイブ<%s> <%s>\n", arcName, heapName);
#endif
                    if (parentHeap == (JKRExpHeap*)mDoExt_getGameHeap()) {
                        parentHeap = NULL;
                    }

                    int rt = dComIfG_setObjectRes(arcName, result, entry->data_size);
                    JUT_ASSERT(0x314, rt);
                } else if (nodeType == 'BMDP') {
                    result = (J3DModelData*)J3DModelLoaderDataBase::load(result, 0x59020030);
                    if (result == NULL) {
                        return -1;
                    }

                    modelData = (J3DModelData*)result;
                    for (u16 k = 0; k < modelData->getMaterialNum(); k++) {
                        J3DMaterial* material_p = modelData->getMaterialNodePointer(k);
                        material_p->change();

                        J3DMaterialAnm* materialAnm = new J3DMaterialAnm();
                        if (materialAnm == NULL) {
                            return -1;
                        }

                        material_p->setMaterialAnm(materialAnm);
                    }

                    setAlpha(modelData);
                    if (modelData->newSharedDisplayList(0x40000) != 0) {
                        return -1;
                    }

                    modelData->simpleCalcMaterial(0, (MtxP)j3dDefaultMtx);
                    modelData->makeSharedDL();
                } else if (nodeType == 'BMDR' || nodeType == 'BMDV' || nodeType == 'BMDE' ||
                           nodeType == 'BMWR' || nodeType == 'BMWE')
                {
                    result = loaderBasicBmd(nodeType, result);
                    if (result == NULL) {
                        return -1;
                    }
                } else if (nodeType == 'BMDG') {
                    result = (J3DModelData*)J3DModelLoaderDataBase::load(result, 0x59020010);
                    if (result == NULL) {
                        return -1;
                    }

                    modelData = (J3DModelData*)result;
#ifdef DEBUG
                    J3DMaterial* materialp = modelData->getMaterialNodePointer(0);
                    if (materialp->isDrawModeOpaTexEdge()) {
                        // "BMDG:Translucent model can't be drawn!!\n"
                        OSReport_Error("BMDG:半透明モデルは描画できません！！\n");
                        return -1;
                    }
#endif
                    if (modelData->newSharedDisplayList(0x40000) != 0) {
                        return -1;
                    }

                    modelData->simpleCalcMaterial(0, (MtxP)j3dDefaultMtx);
                    modelData->makeSharedDL();
                } else if (nodeType == 'BMDA') {
                    result = (J3DModelData*)J3DModelLoaderDataBase::load(result, 0x59020010);
                    if (result == NULL) {
                        return -1;
                    }

                    modelData = (J3DModelData*)result;
                    if (modelData->newSharedDisplayList(0x40000) != 0) {
                        return -1;
                    }

                    modelData->simpleCalcMaterial(0, (MtxP)j3dDefaultMtx);
                    modelData->makeSharedDL();
                } else if (nodeType == 'BLS ') {
                    result = J3DClusterLoaderDataBase::load(result);
                    if (result == NULL) {
                        return -1;
                    }
                } else if (nodeType == 'BCKS' || nodeType == 'BCK ') {
                    struct J3DUnkChunk {
                        u8 unk_data[0x1C];
                        u32 some_data_offset;
                    };
                    J3DUnkChunk* chunk = (J3DUnkChunk*)result;
                    void* bas;

                    if (chunk->some_data_offset != 0xFFFFFFFF) {
                        bas = (void*)(chunk->some_data_offset + (u32)result);
                    } else {
                        bas = NULL;
                    }

                    mDoExt_transAnmBas* transAnmBas = new mDoExt_transAnmBas(bas);
                    if (transAnmBas == NULL) {
                        return -1;
                    }

                    J3DAnmLoaderDataBase::setResource(transAnmBas, result);
                    result = transAnmBas;
                } else if (nodeType == 'BTP ' || nodeType == 'BTK ' || nodeType == 'BPK ' ||
                           nodeType == 'BRK ' || nodeType == 'BLK ' || nodeType == 'BVA ' ||
                           nodeType == 'BXA ')
                {
                    result = J3DAnmLoaderDataBase::load(result, J3DLOADER_UNK_FLAG0);
                    if (result == NULL) {
                        return -1;
                    }
                } else if (nodeType == 'DZB ') {
                    result = cBgS::ConvDzb(result);
                } else if (nodeType == 'KCL ') {
                    result = dBgWKCol::initKCollision(result);
                }

                JUT_ASSERT(0x444, fileIndex < countFile);
                mRes[fileIndex] = result;
            }
            fileIndex++;
        }
        node++;
    }

    return 0;
}

/* 8003B998-8003BA9C 0362D8 0104+00 1/1 0/0 0/0 .text            deleteArchiveRes__11dRes_info_cFv
 */
void dRes_info_c::deleteArchiveRes() {
    JUT_ASSERT(0x45E, mArchive != 0);

    JKRArchive::SDIDirEntry* nodes = mArchive->mNodes;
    for (int i = 0; i < mArchive->countDirectory(); nodes++, i++) {
        if (nodes->type == 'ARC ') {
            u32 fileIndex = nodes->first_file_index;
            for (int j = 0; j < nodes->num_entries; j++) {
                if (mArchive->isFileEntry(fileIndex)) {
                    JKRArchive::SDIFileEntry* fileEntry = mArchive->findIdxResource(fileIndex);
                    u32 nameOffset = fileEntry->getNameOffset();
                    char* fileName = mArchive->mStringTable + nameOffset;
                    size_t resNameLen = strlen(fileName) - 4;
                    JUT_ASSERT(0x46C, resNameLen <= NAME_MAX);

                    char nameBuffer[12];
                    strncpy(nameBuffer, fileName, resNameLen);
                    nameBuffer[resNameLen] = '\0';
                    
                    int rt = dComIfG_deleteObjectResMain(nameBuffer);
                    JUT_ASSERT(0x470, rt);
                }
                fileIndex++;
            }
        }
    }
}

/* 8003BA9C-8003BAC4 0363DC 0028+00 2/2 0/0 0/0 .text            getArcHeader__FP10JKRArchive */
static SArcHeader* getArcHeader(JKRArchive* i_archive) {
    if (i_archive != NULL) {
        switch (i_archive->getMountMode()) {
        case JKRArchive::MOUNT_MEM:
            return ((JKRMemArchive*)i_archive)->getArcHeader();
        }
    }

    return NULL;
}

/* 8003BAC4-8003BAF8 036404 0034+00 1/1 0/0 0/0 .text setRes__11dRes_info_cFP10JKRArchiveP7JKRHeap
 */
int dRes_info_c::setRes(JKRArchive* i_archive, JKRHeap* i_heap) {
    JUT_ASSERT(0x4AD, mArchive == 0);
    mArchive = i_archive;
    heap = i_heap;
    mDataHeap = NULL;

    int rt = loadResource();
    JUT_ASSERT(0x4B4, rt >= 0);
    return rt >> 0x1F;
}

/* 8003BAF8-8003BC98 036438 01A0+00 2/2 0/0 0/0 .text            setRes__11dRes_info_cFv */
int dRes_info_c::setRes() {
    if (mArchive == NULL) {
        if (mDMCommand == NULL) {
            return -1;
        }
        if ((int)mDMCommand->mIsDone == 0) {
            return 1;
        }

        mArchive = mDMCommand->getArchive();
        heap = mDMCommand->getHeap();

        delete mDMCommand;
        mDMCommand = NULL;

        if (mArchive == NULL) {
            OSReport_Error("<%s.arc> setRes: archive mount error !!\n", mArchiveName);
            return -1;
        }

        if (heap != NULL) {
            heap->lock();
            mDataHeap = mDoExt_createSolidHeapToCurrent(0, heap, 0x20);
            JUT_ASSERT(0x4EC, mDataHeap != 0);

            int rt = loadResource();
            mDoExt_restoreCurrentHeap();
            mDoExt_adjustSolidHeap(mDataHeap);
            heap->unlock();

            JUT_ASSERT(0x4F6, rt >= 0);
            if (rt < 0) {
                return -1;
            }
        } else {
            mDataHeap = mDoExt_createSolidHeapFromGameToCurrent(0, 0);
            if (mDataHeap == NULL) {
                OSReport_Error("<%s.arc> mDMCommandsetRes: can't alloc memory\n", mArchiveName);
                return -1;
            }
            int rt = loadResource();
            mDoExt_restoreCurrentHeap();
            mDoExt_adjustSolidHeap(mDataHeap);

            JUT_ASSERT(0x509, rt >= 0);
            if (rt < 0) {
                return -1;
            }
        }

        u32 heapSize = mDataHeap->getHeapSize();
        void* heapStartAddr = mDataHeap->getStartAddr();
        DCStoreRangeNoSync(heapStartAddr, heapSize);
    }

    return 0;
}

/* 8003BC98-8003BD00 0365D8 0068+00 1/1 0/0 0/0 .text            myGetMemBlockSize__FPv */
static s32 myGetMemBlockSize(void* i_data) {
    JKRHeap* heap = JKRHeap::findFromRoot(i_data);
    if (heap->getHeapType() == 'EXPH') {
        return JKRHeap::getSize(i_data, heap);
    }
    
    return -1;
}

/* 8003BD00-8003BD2C 036640 002C+00 1/1 0/0 0/0 .text            myGetMemBlockSize0__FPv */
static s32 myGetMemBlockSize0(void* i_data) {
    s32 size = myGetMemBlockSize(i_data);
    if (size < 0) {
        size = 0;
    }
    return size;
}

// Fixes string data and float literal order
f32 dummy(int x) {
    DEAD_STRING("%5.1f %5x %5.1f %5x %3d %s\n");
    return x;
}

/* 8003BD2C-8003BE38 03666C 010C+00 1/1 0/0 0/0 .text dump_long__11dRes_info_cFP11dRes_info_ci */
void dRes_info_c::dump_long(dRes_info_c* i_resInfo, int i_infoNum) {
    int i;
    void* header;
    int blockSize1;
    int blockSize2;
    JKRArchive* archive;
    JKRSolidHeap* dataHeap;

    JUTReportConsole_f("dRes_info_c::dump_long %08x %d\n", i_resInfo, i_infoNum);
    JUTReportConsole_f("No Command Archive  ArcHeader(size) SolidHeap(size) Resource Cnt ArchiveName\n");

    for (i = 0; i < i_infoNum; i++) {
        if (i_resInfo->getCount() != 0) {
            archive = i_resInfo->getArchive();
            header = NULL;
            blockSize1 = 0;

            if (archive != NULL) {
                header = getArcHeader(archive);
                blockSize1 = myGetMemBlockSize0(header);
            }

            dataHeap = i_resInfo->mDataHeap;
            blockSize2 = 0;
            if (dataHeap != NULL) {
                blockSize2 = myGetMemBlockSize0((void*)dataHeap);
            }

            JUTReportConsole_f("%2d %08x %08x %08x(%6x) %08x(%5x) %08x %3d %s\n",
                               i,
                               i_resInfo->getDMCommand(),
                               archive,
                               header,
                               blockSize1,
                               dataHeap,
                               blockSize2,
                               i_resInfo->mRes,
                               i_resInfo->getCount(),
                               i_resInfo->getArchiveName());
        }
        i_resInfo++;
    }
}

/* 8003BE38-8003BFB0 036778 0178+00 1/1 0/0 0/0 .text            dump__11dRes_info_cFP11dRes_info_ci
 */
void dRes_info_c::dump(dRes_info_c* i_resInfo, int i_infoNum) {
    int totalArcHeaderSize;
    int totalHeapSize;
    int arcHeaderSize;
    int heapSize;
    char* archiveName;

    JUTReportConsole_f("dRes_info_c::dump %08x %d\n", i_resInfo, i_infoNum);
    JUTReportConsole_f("No ArchiveSize(KB) SolidHeapSize(KB) Cnt ArchiveName\n");

    totalArcHeaderSize = 0;
    totalHeapSize = 0;

    for (int i = 0; i < i_infoNum; i++) {
        if (i_resInfo->getCount() != 0) {
            arcHeaderSize = JKRGetMemBlockSize(NULL, getArcHeader(i_resInfo->getArchive()));
            heapSize = JKRGetMemBlockSize(NULL, i_resInfo->mDataHeap);
            archiveName = i_resInfo->getArchiveName();
            JUTReportConsole_f("%2d %6.1f %6x %6.1f %6x %3d %s\n",
                               i,
                               arcHeaderSize / 1024.0f,
                               arcHeaderSize,
                               heapSize / 1024.0f,
                               heapSize,
                               i_resInfo->getCount(),
                               archiveName);
            totalArcHeaderSize += arcHeaderSize;
            totalHeapSize += heapSize;
        }
        i_resInfo++;
    }

    JUTReportConsole_f("----------------------------------------------\n   %6.1f %6x %6.1f %6x   Total\n\n",
                       totalArcHeaderSize / 1024.0f,
                       totalArcHeaderSize,
                       totalHeapSize / 1024.0f,
                       totalHeapSize);
}

/* 8003BFB0-8003C078 0368F0 00C8+00 0/0 1/1 0/0 .text            __dt__14dRes_control_cFv */
dRes_control_c::~dRes_control_c() {
    for (int i = 0; i < (int)ARRAY_SIZE(mObjectInfo); i++) {
        mObjectInfo[i].~dRes_info_c();
    }

    for (int i = 0; i < (int)ARRAY_SIZE(mStageInfo); i++) {
        mStageInfo[i].~dRes_info_c();
    }
}

/* 8003C078-8003C160 0369B8 00E8+00 2/2 8/8 0/0 .text
 * setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap    */
int dRes_control_c::setRes(char const* i_arcName, dRes_info_c* i_resInfo, int i_infoNum,
                           char const* i_path, u8 i_mountDirection, JKRHeap* i_heap) {
    dRes_info_c* resInfo = getResInfo(i_arcName, i_resInfo, i_infoNum);

    if (resInfo == NULL) {
        resInfo = newResInfo(i_resInfo, i_infoNum);

        if (resInfo == NULL) {
            // "<%s.arc> dRes_control_c::setRes: There isn't a free Resource Info pointer\n"
            OSReport_Error("<%s.arc> dRes_control_c::setRes: 空きリソース情報ポインタがありません\n", i_arcName);
            resInfo->~dRes_info_c();
            return 0;
        }

        int rt = resInfo->set(i_arcName, i_path, i_mountDirection, i_heap);
        if (rt == 0) {
            OSReport_Error("<%s.arc> dRes_control_c::setRes: res info set error !!\n", i_arcName);
            resInfo->~dRes_info_c();
            return 0;
        }
    }

    resInfo->incCount();
    return 1;
}

/* 8003C160-8003C194 036AA0 0034+00 0/0 10/10 1/1 .text
 * syncRes__14dRes_control_cFPCcP11dRes_info_ci                 */
int dRes_control_c::syncRes(char const* i_arcName, dRes_info_c* i_resInfo, int i_infoNum) {
    dRes_info_c* resInfo = getResInfo(i_arcName, i_resInfo, i_infoNum);

    if (resInfo == NULL) {
#ifdef DEBUG
        if (i_arcName[0] == 'R' ||
            (i_arcName[0] == 'S' && i_arcName[1] == 't' && i_arcName[2] == 'g' && i_arcName[3] == '_' && i_arcName[4] == '0' && i_arcName[5] == '0') ||
            strncmp(i_arcName, "Pack", 4) == 0)
        {
            // "<%s.arc> syncRes: Resource not registered (No Error)\n"
            OS_REPORT("\x1b[34m<%s.arc> syncRes: リソース未登録(問題無し)\n\x1b[m", i_arcName);
        } else {
            // "<%s.arc> syncRes: Resource not registered!!\n"
            OS_REPORT_ERROR("<%s.arc> syncRes: リソース未登録!!\n", i_arcName);
        }
#endif
        return -1;
    } else {
        return resInfo->setRes();
    }
}

/* 8003C194-8003C1E4 036AD4 0050+00 1/1 7/7 0/0 .text
 * deleteRes__14dRes_control_cFPCcP11dRes_info_ci               */
int dRes_control_c::deleteRes(char const* i_arcName, dRes_info_c* i_resInfo, int i_infoNum) {
    dRes_info_c* resInfo = getResInfo(i_arcName, i_resInfo, i_infoNum);

    if (resInfo == NULL) {
#ifdef DEBUG
    if (strcmp(i_arcName, "Xtg_00") == 0) {
        // "<%s.arc> deleteRes: res nothing !!\n(Detected deleting an unregistered resource! Please fix.)\n"
        OS_REPORT_ERROR("<%s.arc> deleteRes: res nothing !!\n(未登録のリソースを削除してるのを発見しました！修正してください。)\n", i_arcName);   
    }
#endif
        return 0;
    }

    if (resInfo->decCount() == 0) {
        resInfo->~dRes_info_c();
    }
    return 1;
}

/* 8003C1E4-8003C260 036B24 007C+00 5/5 5/5 3/3 .text
 * getResInfo__14dRes_control_cFPCcP11dRes_info_ci              */
dRes_info_c* dRes_control_c::getResInfo(char const* i_arcName, dRes_info_c* i_resInfo, int i_infoNum) {
    for (int i = 0; i < i_infoNum; i++) {
        if (i_resInfo->getCount() != 0) {
            if (!stricmp(i_arcName, i_resInfo->getArchiveName())) {
                return i_resInfo;
            }
        }
        i_resInfo++;
    }

    return NULL;
}

/* 8003C260-8003C288 036BA0 0028+00 1/1 0/0 0/0 .text newResInfo__14dRes_control_cFP11dRes_info_ci
 */
dRes_info_c* dRes_control_c::newResInfo(dRes_info_c* i_resInfo, int i_infoNum) {
    for (int i = 0; i < i_infoNum; i++) {
        if (i_resInfo->getCount() == 0) {
            return i_resInfo;
        }
        i_resInfo++;
    }

    return NULL;
}

/* 8003C288-8003C2EC 036BC8 0064+00 4/4 0/0 0/0 .text
 * getResInfoLoaded__14dRes_control_cFPCcP11dRes_info_ci        */
dRes_info_c* dRes_control_c::getResInfoLoaded(char const* i_arcName, dRes_info_c* i_resInfo,
                                              int i_infoNum) {
    dRes_info_c* resInfo = getResInfo(i_arcName, i_resInfo, i_infoNum);

    if (resInfo == NULL) {
#ifdef DEBUG
    if (stricmp(i_arcName, "Xtg_00") == 0) {
        OS_REPORT("\x1b[35m<%s.arc> getRes: res nothing !!\n\x1b[m", i_arcName);   
    }
#endif
        resInfo = NULL;
    } else if (resInfo->getArchive() == NULL) {
        OSReport_Warning("<%s.arc> getRes: res during reading !!\n", i_arcName);
        resInfo = NULL;
    }

    return resInfo;
}

/* 8003C2EC-8003C37C 036C2C 0090+00 1/1 54/54 894/894 .text
 * getRes__14dRes_control_cFPCclP11dRes_info_ci                 */
void* dRes_control_c::getRes(char const* i_arcName, s32 i_index, dRes_info_c* i_resInfo, int i_infoNum) {
    dRes_info_c* resInfo = getResInfoLoaded(i_arcName, i_resInfo, i_infoNum);
    if (resInfo == NULL) {
        return resInfo;
    }

    JKRArchive* archive = resInfo->getArchive();
    int count = archive->countFile();

    if (i_index >= count) {
        OSReport_Error("<%s.arc> getRes: res index over !! index=%d count=%d\n", i_arcName, i_index,
                       count);
        return NULL;
    }

    return resInfo->getRes(i_index);
}

/* 8003C37C-8003C400 036CBC 0084+00 0/0 18/18 109/109 .text
 * getRes__14dRes_control_cFPCcPCcP11dRes_info_ci               */
void* dRes_control_c::getRes(char const* i_arcName, char const* i_resName, dRes_info_c* i_resInfo,
                             int i_infoNum) {
    dRes_info_c* resInfo = getResInfoLoaded(i_arcName, i_resInfo, i_infoNum);
    if (resInfo == NULL) {
        return resInfo;
    }

    JKRArchive* archive = resInfo->getArchive();
    JKRArchive::SDIFileEntry* entry = archive->findNameResource(i_resName);

    if (entry != NULL) {
        return resInfo->getRes(entry - archive->mFiles);
    } else {
        OS_REPORT("\x1b[34m%s not found in %s.arc\n\x1b[m", i_resName, i_arcName);
        return NULL;
    }
}

/* 8003C400-8003C470 036D40 0070+00 0/0 7/7 4/4 .text
 * getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci              */
void* dRes_control_c::getIDRes(char const* i_arcName, u16 i_resID, dRes_info_c* i_resInfo, int i_infoNum) {
    dRes_info_c* resInfo = getResInfoLoaded(i_arcName, i_resInfo, i_infoNum);
    if (resInfo == NULL) {
        return resInfo;
    }

    JKRArchive* archive = resInfo->getArchive();
    int index = mDoExt_resIDToIndex(archive, i_resID);
    if (index < 0) {
        return 0;
    }

    return resInfo->getRes(index);
}

/* 8003C470-8003C4E4 036DB0 0074+00 0/0 3/3 0/0 .text syncAllRes__14dRes_control_cFP11dRes_info_ci
 */
int dRes_control_c::syncAllRes(dRes_info_c* i_resInfo, int i_infoNum) {
    for (int i = 0; i < i_infoNum; i++) {
        if (i_resInfo->getDMCommand() != NULL && i_resInfo->setRes() > 0) {
            return 1;
        }
        i_resInfo++;
    }

    return 0;
}

/* 8003C4E4-8003C5BC 036E24 00D8+00 1/1 0/0 0/0 .text
 * setObjectRes__14dRes_control_cFPCcPvUlP7JKRHeap              */
int dRes_control_c::setObjectRes(char const* i_arcName, void* i_archiveRes, u32 i_bufferSize,
                                 JKRHeap* i_heap) {
    JUT_ASSERT(0x7A3, i_archiveRes != 0);

#ifdef DEBUG
    dRes_info_c* nowInfo = getResInfo(i_arcName, mObjectInfo, ARRAY_SIZE(mObjectInfo));
    JUT_ASSERT(0x7A6, nowInfo == 0);
#endif

    if (!setRes(i_arcName, mObjectInfo, ARRAY_SIZE(mObjectInfo), "", mDoDvd_MOUNT_DIRECTION_HEAD, NULL)) {
        return 0;
    }

    JKRMemArchive* memArchive = new JKRMemArchive(i_archiveRes, i_bufferSize, JKRMEMBREAK_FLAG_UNKNOWN0);
    if (memArchive == NULL || !memArchive->isMounted()) {
        return 0;
    }

    dRes_info_c* info = getResInfo(i_arcName, mObjectInfo, ARRAY_SIZE(mObjectInfo));
    JUT_ASSERT(0x7B7, info != 0);

    int rt = info->setRes(memArchive, i_heap);
    if (rt == 0) {
        return 1;
    }

    return 0;
}

/* 8003C5BC-8003C638 036EFC 007C+00 0/0 2/2 0/0 .text setStageRes__14dRes_control_cFPCcP7JKRHeap
 */
int dRes_control_c::setStageRes(char const* i_arcName, JKRHeap* i_heap) {
    char path[20];

    snprintf(path, sizeof(path), "/res/Stage/%s/", dComIfGp_getStartStageName());
    return setRes(i_arcName, mStageInfo, ARRAY_SIZE(mStageInfo), path, mDoDvd_MOUNT_DIRECTION_TAIL, i_heap);
}

/* 8003C638-8003C6B8 036F78 0080+00 0/0 2/2 0/0 .text            dump__14dRes_control_cFv */
void dRes_control_c::dump() {
    JUTReportConsole_f("\ndRes_control_c::dump mObjectInfo\n");
    dRes_info_c::dump(mObjectInfo, ARRAY_SIZE(mObjectInfo));
    dRes_info_c::dump_long(mObjectInfo, ARRAY_SIZE(mObjectInfo));

    JUTReportConsole_f("\ndRes_control_c::dump mStageInfo\n");
    dRes_info_c::dump(mStageInfo, ARRAY_SIZE(mStageInfo));
    dRes_info_c::dump_long(mStageInfo, ARRAY_SIZE(mStageInfo));
}

/* 8003C6B8-8003C734 036FF8 007C+00 0/0 0/0 32/32 .text
 * getObjectResName2Index__14dRes_control_cFPCcPCc              */
int dRes_control_c::getObjectResName2Index(char const* i_arcName, char const* i_resName) {
    dRes_info_c* info = getResInfoLoaded(i_arcName, mObjectInfo, ARRAY_SIZE(mObjectInfo));

    if (info == NULL) {
        return -1;
    } else if (i_resName == NULL) {
        return -1;
    }

    JKRArchive* archive = info->getArchive();
    JKRArchive::SDIFileEntry* entry = archive->findNameResource(i_resName);
    if (entry != NULL) {
        return entry->file_id;
    }

    return -1;
}

/**
 * m_Do_ext.cpp
 * Model, Animation, and Heap Functions
 */

#include "m_Do/m_Do_ext.h"
#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"
#include "JSystem/J3DGraphAnimator/J3DMaterialAnm.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "JSystem/JKernel/JKRAssertHeap.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "JSystem/JUtility/JUTResFont.h"
#include "JSystem/JUtility/JUTCacheFont.h"
#include "stdio.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
#include "dolphin/gx/GXDraw.h"
#include <dolphin/gf/GFPixel.h>
#include "global.h"
#include "m_Do/m_Do_mtx.h"

/* 8000D0AC-8000D320 0079EC 0274+00 5/5 0/0 0/0 .text
 * mDoExt_setJ3DData__FPA4_fPC16J3DTransformInfoUs              */
static void mDoExt_setJ3DData(Mtx mtx, const J3DTransformInfo* transformInfo, u16 param_2) {
    bool local_28;
    if (cM3d_IsZero(transformInfo->mScale.x - 1.0f) && cM3d_IsZero(transformInfo->mScale.y - 1.0f) && cM3d_IsZero(transformInfo->mScale.z - 1.0f)) {
        j3dSys.getModel()->setScaleFlag(param_2, 1);
        local_28 = true;
    } else {
        j3dSys.getModel()->setScaleFlag(param_2, 0);
        local_28 = false;
    }
    mtx[0][3] = transformInfo->mTranslate.x;
    mtx[1][3] = transformInfo->mTranslate.y;
    mtx[2][3] = transformInfo->mTranslate.z;

    if (!local_28) {
        mtx[0][0] *= transformInfo->mScale.x;
        mtx[0][1] *= transformInfo->mScale.y;
        mtx[0][2] *= transformInfo->mScale.z;
        mtx[1][0] *= transformInfo->mScale.x;
        mtx[1][1] *= transformInfo->mScale.y;
        mtx[1][2] *= transformInfo->mScale.z;
        mtx[2][0] *= transformInfo->mScale.x;
        mtx[2][1] *= transformInfo->mScale.y;
        mtx[2][2] *= transformInfo->mScale.z;
    }
    if (j3dSys.getModel()->getModelData()->getJointNodePointer(param_2)->getScaleCompensate() == 1) {
        f32 x = 1.0f / J3DSys::mParentS.x;
        f32 y = 1.0f / J3DSys::mParentS.y;
        f32 z = 1.0f / J3DSys::mParentS.z;
        mtx[0][0] *= x;
        mtx[0][1] *= x;
        mtx[0][2] *= x;
        mtx[1][0] *= y;
        mtx[1][1] *= y;
        mtx[1][2] *= y;
        mtx[2][0] *= z;
        mtx[2][1] *= z;
        mtx[2][2] *= z;
    }
    mDoMtx_concat(J3DSys::mCurrentMtx, mtx, J3DSys::mCurrentMtx);
    j3dSys.getModel()->setAnmMtx(param_2, J3DSys::mCurrentMtx);
    J3DSys::mParentS.x = transformInfo->mScale.x;
    J3DSys::mParentS.y = transformInfo->mScale.y;
    J3DSys::mParentS.z = transformInfo->mScale.z;
}

/* 8000D320-8000D428 007C60 0108+00 6/6 0/0 0/0 .text            initPlay__14mDoExt_baseAnmFsifss */
int mDoExt_baseAnm::initPlay(s16 i_frameMax, int i_attribute, f32 i_rate, s16 i_startF,
                             s16 i_endF) {
    mFrameCtrl.setStart(i_startF);

    if (i_endF < 0) {
        mFrameCtrl.init(i_frameMax);
    } else {
        mFrameCtrl.init(i_endF);
    }

    mFrameCtrl.setAttribute(i_attribute);
    mFrameCtrl.setRate(i_rate);

    if (i_rate >= 0.0f) {
        mFrameCtrl.setFrame(i_startF);
    } else {
        mFrameCtrl.setFrame(mFrameCtrl.getEnd());
    }

    mFrameCtrl.setLoop(mFrameCtrl.getFrame());

    return 1;
}

/* 8000D428-8000D47C 007D68 0054+00 0/0 12/12 198/198 .text            play__14mDoExt_baseAnmFv */
int mDoExt_baseAnm::play() {
    mFrameCtrl.update();
    return isStop();
}

/* 8000D47C-8000D518 007DBC 009C+00 0/0 3/3 6/6 .text
 * init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss */
int mDoExt_bpkAnm::init(J3DMaterialTable* i_matTable, J3DAnmColor* i_bpk, int i_anmPlay,
                        int i_attribute, f32 i_rate, s16 i_startF, s16 i_endF) {
    mpAnm = i_bpk;
    mpAnm->searchUpdateMaterialID(i_matTable);

    if (i_anmPlay) {
        int attribute;
        if (i_attribute < 0) {
            attribute = mpAnm->getAttribute();
        } else {
            attribute = i_attribute;
        }

        return initPlay(mpAnm->getFrameMax(), attribute, i_rate, i_startF, i_endF);
    }

    return 1;
}

/* 8000D518-8000D54C 007E58 0034+00 0/0 3/3 6/6 .text entry__13mDoExt_bpkAnmFP16J3DMaterialTablef
 */
void mDoExt_bpkAnm::entry(J3DMaterialTable* i_matTable, f32 i_frame) {
    mpAnm->setFrame(i_frame);
    i_matTable->entryMatColorAnimator(mpAnm);
}

/* 8000D54C-8000D5E8 007E8C 009C+00 0/0 5/5 28/28 .text
 * init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss */
int mDoExt_btpAnm::init(J3DMaterialTable* i_matTable, J3DAnmTexPattern* i_btp, int i_anmPlay,
                        int i_attribute, f32 i_rate, s16 i_startF, s16 i_endF) {
    mpAnm = i_btp;
    mpAnm->searchUpdateMaterialID(i_matTable);

    if (i_anmPlay) {
        int attribute;
        if (i_attribute < 0) {
            attribute = mpAnm->getAttribute();
        } else {
            attribute = i_attribute;
        }

        return initPlay(mpAnm->getFrameMax(), attribute, i_rate, i_startF, i_endF);
    }

    return 1;
}

/* 8000D5E8-8000D63C 007F28 0054+00 0/0 5/5 28/28 .text
 * entry__13mDoExt_btpAnmFP16J3DMaterialTables                  */
void mDoExt_btpAnm::entry(J3DMaterialTable* i_matTable, s16 i_frame) {
    mpAnm->setFrame(i_frame);
    i_matTable->entryTexNoAnimator(mpAnm);
}

/* 8000D63C-8000D6D8 007F7C 009C+00 0/0 6/6 137/137 .text
 * init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss */
int mDoExt_btkAnm::init(J3DMaterialTable* i_matTable, J3DAnmTextureSRTKey* i_btk, int i_anmPlay,
                        int i_attribute, f32 i_rate, s16 i_startF, s16 i_endF) {
    mpAnm = i_btk;
    mpAnm->searchUpdateMaterialID(i_matTable);

    if (i_anmPlay) {
        int attribute;
        if (i_attribute < 0) {
            attribute = mpAnm->getAttribute();
        } else {
            attribute = i_attribute;
        }

        return initPlay(mpAnm->getFrameMax(), attribute, i_rate, i_startF, i_endF);
    }

    return 1;
}

/* 8000D6D8-8000D70C 008018 0034+00 0/0 7/7 117/117 .text
 * entry__13mDoExt_btkAnmFP16J3DMaterialTablef                  */
void mDoExt_btkAnm::entry(J3DMaterialTable* i_matTable, f32 i_frame) {
    mpAnm->setFrame(i_frame);
    i_matTable->entryTexMtxAnimator(mpAnm);
}

/* 8000D70C-8000D7A8 00804C 009C+00 0/0 8/8 112/112 .text
 * init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss */
int mDoExt_brkAnm::init(J3DMaterialTable* i_matTable, J3DAnmTevRegKey* i_brk, int i_anmPlay,
                        int i_attribute, f32 i_rate, s16 i_startF, s16 i_endF) {
    mpAnm = i_brk;
    mpAnm->searchUpdateMaterialID(i_matTable);

    if (i_anmPlay) {
        int attribute;
        if (i_attribute < 0) {
            attribute = mpAnm->getAttribute();
        } else {
            attribute = i_attribute;
        }

        return initPlay(mpAnm->getFrameMax(), attribute, i_rate, i_startF, i_endF);
    }

    return 1;
}

/* 8000D7A8-8000D7DC 0080E8 0034+00 0/0 8/8 96/96 .text
 * entry__13mDoExt_brkAnmFP16J3DMaterialTablef                  */
void mDoExt_brkAnm::entry(J3DMaterialTable* i_matTable, f32 i_frame) {
    mpAnm->setFrame(i_frame);
    i_matTable->entryTevRegAnimator(mpAnm);
}

/* 8000D7DC-8000D8E4 00811C 0108+00 0/0 18/18 85/85 .text
 * init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb               */
int mDoExt_bckAnm::init(J3DAnmTransform* i_bck, int i_play, int i_attr, f32 i_rate,
                        s16 i_startF, s16 i_endF, bool i_modify) {
    JUT_ASSERT(614, (i_modify || isCurrentSolidHeap()) && i_bck != 0);
    mAnm = i_bck;
    if (!i_modify) {
        mpMtxCalc = new J3DMtxCalcAnimation<J3DMtxCalcAnimationAdaptorDefault<J3DMtxCalcCalcTransformMaya>, J3DMtxCalcJ3DSysInitMaya>(mAnm);
        if (!mpMtxCalc) {
            return 0;
        }
    } else {
        mpMtxCalc->setAnmTransform(mAnm);
    }
    if (i_play) {
        i_attr = i_attr < 0 ? mAnm->getAttribute() : i_attr;
        return initPlay(mAnm->getFrameMax(), i_attr, i_rate, i_startF, i_endF);
    }
    return 1;
}

/* 8000D990-8000D9CC 0082D0 003C+00 0/0 5/5 31/31 .text
 * changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform            */
void mDoExt_bckAnm::changeBckOnly(J3DAnmTransform* i_bck) {
    mAnm = i_bck;
    mpMtxCalc->setAnmTransform(mAnm);
}

/* 8000D9CC-8000D9E8 00830C 001C+00 0/0 11/11 59/59 .text entry__13mDoExt_bckAnmFP12J3DModelDataf
 */
void mDoExt_bckAnm::entry(J3DModelData* i_modelData, f32 i_frame) {
    mAnm->setFrame(i_frame);
    i_modelData->getJointNodePointer(0)->setMtxCalc(mpMtxCalc);
}

/* 8000D9E8-8000DA08 008328 0020+00 0/0 1/1 1/1 .text
 * entryJoint__13mDoExt_bckAnmFP12J3DModelDataUsf               */
void mDoExt_bckAnm::entryJoint(J3DModelData* i_modelData, u16 i_jntNo, f32 i_frame) {
    mAnm->setFrame(i_frame);
    i_modelData->getJointNodePointer(i_jntNo)->setMtxCalc(mpMtxCalc);
}

/* 8000DA08-8000DAA8 008348 00A0+00 0/0 1/1 3/3 .text
 * init__13mDoExt_blkAnmFP13J3DDeformDataP13J3DAnmClusteriifss  */
int mDoExt_blkAnm::init(J3DDeformData* i_deformData, J3DAnmCluster* i_blk, int i_anmPlay,
                        int i_attribute, f32 i_rate, s16 i_start, s16 param_6) {
    mpAnm = i_blk;
    i_deformData->setAnm(mpAnm);

    if (i_anmPlay) {
        int attribute;
        if (i_attribute < 0) {
            attribute = mpAnm->getAttribute();
        } else {
            attribute = i_attribute;
        }

        return initPlay(mpAnm->getFrameMax(), attribute, i_rate, i_start, param_6);
    }

    return 1;
}

/* 8000DAA8-8000DB10 0083E8 0068+00 3/3 0/0 0/0 .text            mDoExt_changeMaterial__FP8J3DModel
 */
static void mDoExt_changeMaterial(J3DModel* i_model) {
    J3DModelData* model_data = i_model->getModelData();

    for (u16 i = 0; i < model_data->getMaterialNum(); i++) {
        model_data->getMaterialNodePointer(i)->change();
    }
}

/* 8000DB10-8000DBC8 008450 00B8+00 0/0 0/0 1/1 .text mDoExt_modelTexturePatch__FP12J3DModelData
 */
void mDoExt_modelTexturePatch(J3DModelData* i_modelData) {
    j3dSys.setTexture(i_modelData->getTexture());

    for (u16 i = 0; i < i_modelData->getMaterialNum(); i++) {
        J3DMaterial* mat = i_modelData->getMaterialNodePointer(i);
        J3DTevBlock* tev = mat->getTevBlock();
        J3DDisplayListObj* dlObj = mat->getSharedDisplayListObj();

        BOOL ret = OSDisableInterrupts();
        GDInitGDLObj(&J3DDisplayListObj::sGDLObj, dlObj->getDisplayList(0),
                     dlObj->getDisplayListSize());
        GDSetCurrent(&J3DDisplayListObj::sGDLObj);
        tev->patchTexNoAndTexCoordScale();
        OSRestoreInterrupts(ret);
        GDSetCurrent(NULL);
    }
}

/* 8000DBD8-8000DC2C 008518 0054+00 3/3 0/0 0/0 .text            mDoExt_modelDiff__FP8J3DModel */
static void mDoExt_modelDiff(J3DModel* i_model) {
    i_model->calcMaterial();
    i_model->diff();
    i_model->entry();
}

/* 8000DC2C-8000DCC4 00856C 0098+00 0/0 0/0 8/8 .text            mDoExt_modelUpdate__FP8J3DModel */
void mDoExt_modelUpdate(J3DModel* i_model) {
    J3DModelData* model_data = i_model->getModelData();

    if (model_data->getMaterialNodePointer(0)->getSharedDisplayListObj() != NULL &&
        !model_data->isLocked())
    {
        i_model->calc();
        mDoExt_modelDiff(i_model);
    } else {
        i_model->update();
        i_model->lock();
    }

    i_model->viewCalc();
}

/* 8000DCC4-8000DD64 008604 00A0+00 1/1 12/12 414/414 .text mDoExt_modelUpdateDL__FP8J3DModel */
void mDoExt_modelUpdateDL(J3DModel* i_model) {
    J3DModelData* model_data = i_model->getModelData();

    if (model_data->getMaterialNodePointer(0)->getSharedDisplayListObj() != NULL &&
        !model_data->isLocked())
    {
        i_model->calc();
        mDoExt_modelDiff(i_model);
    } else {
        i_model->unlock();
        i_model->update();
        i_model->lock();
    }

    i_model->viewCalc();
}

/* 8000DD64-8000DDF0 0086A4 008C+00 4/4 3/3 10/10 .text            mDoExt_modelEntryDL__FP8J3DModel
 */
void mDoExt_modelEntryDL(J3DModel* i_model) {
    J3DModelData* model_data = i_model->getModelData();

    if (model_data->getMaterialNodePointer(0)->getSharedDisplayListObj() != NULL &&
        !model_data->isLocked())
    {
        mDoExt_modelDiff(i_model);
    } else {
        i_model->unlock();
        i_model->entry();
        i_model->lock();
    }

    i_model->viewCalc();
}

/* 8000DDF0-8000DE8C 008730 009C+00 0/0 0/0 14/14 .text mDoExt_btkAnmRemove__FP12J3DModelData */
void mDoExt_btkAnmRemove(J3DModelData* i_modelData) {
    for (u16 i = 0; i < i_modelData->getMaterialNum(); i++) {
        J3DMaterialAnm* matAnm = i_modelData->getMaterialNodePointer(i)->getMaterialAnm();

        if (matAnm != NULL) {
            for (u16 j = 0; (int)j < 8; j++) {
                matAnm->setTexMtxAnm(j, NULL);
            }
        }
    }
}

/* 8000DE8C-8000DF3C 0087CC 00B0+00 0/0 0/0 7/7 .text mDoExt_brkAnmRemove__FP12J3DModelData */
void mDoExt_brkAnmRemove(J3DModelData* i_modelData) {
    for (u16 i = 0; i < i_modelData->getMaterialNum(); i++) {
        J3DMaterialAnm* matAnm = i_modelData->getMaterialNodePointer(i)->getMaterialAnm();

        if (matAnm != NULL) {
            for (u16 j = 0; (int)j < 4; j++) {
                matAnm->setTevColorAnm(j, NULL);
                matAnm->setTevKColorAnm(j, NULL);
            }
        }
    }
}

/* 8000E53C-8000E5F8 008E7C 00BC+00 0/0 0/0 19/19 .text
 * create__21mDoExt_invisibleModelFP8J3DModelUc                 */
int mDoExt_invisibleModel::create(J3DModel* i_model, u8 param_1) {
    J3DModelData* model_data = i_model->getModelData();

    mpPackets = new mDoExt_invJntPacket[model_data->getJointNum()];
    if (mpPackets == NULL) {
        return 0;
    }

    mModel = i_model;
    mDoExt_invJntPacket* packet = mpPackets;

    for (u16 i = 0; i < model_data->getJointNum(); i++) {
        packet->setJoint(mModel, i, param_1);
        packet++;
    }

    return 1;
}

/* 8000E6C8-8000E7C0 009008 00F8+00 1/1 0/0 0/0 .text entryJoint__21mDoExt_invisibleModelFP4cXyz
 */
void mDoExt_invisibleModel::entryJoint(cXyz* param_0) {
    J3DModelData* modelData = mModel->getModelData();
    mDoExt_invJntPacket* packet = mpPackets;

    if (param_0 == NULL) {
        cXyz tmp;
        for (u16 i = 0; i < modelData->getJointNum(); i++) {
            MtxP anmMtx = mModel->getAnmMtx(i);
            tmp.set(anmMtx[0][3], anmMtx[1][3], anmMtx[2][3]);
            dComIfGd_entryZSortListZxlu(packet, tmp);
            packet++;
        }
    } else {
        for (u16 i = 0; i < modelData->getJointNum(); i++) {
            dComIfGd_entryZSortListZxlu(packet, *param_0);
            packet++;
        }
    }
}

/* 8000E7C0-8000E834 009100 0074+00 0/0 0/0 17/17 .text entryDL__21mDoExt_invisibleModelFP4cXyz */
void mDoExt_invisibleModel::entryDL(cXyz* param_0) {
    J3DDrawBuffer* buffer0 = j3dSys.getDrawBuffer(0);
    J3DDrawBuffer* buffer1 = j3dSys.getDrawBuffer(1);
    dComIfGd_setListZxlu();
    mDoExt_modelEntryDL(mModel);
    entryJoint(param_0);
    j3dSys.setDrawBuffer(buffer0, 0);
    j3dSys.setDrawBuffer(buffer1, 1);
}

/* 8000E834-8000EA80 009174 024C+00 0/0 0/0 7/7 .text
 * mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData    */
void mDoExt_setupShareTexture(J3DModelData* i_modelData, J3DModelData* i_shareModelData) {
    JUT_ASSERT(1547, i_modelData != 0 && i_shareModelData != 0);
    J3DTexture* texture = i_modelData->getTexture();
    JUT_ASSERT(1549, texture != 0);
    JUTNameTab* textureName = i_modelData->getTextureName();
    JUT_ASSERT(1551, textureName != 0);
    J3DTexture* shareTexture = i_shareModelData->getTexture();
    JUT_ASSERT(1553, shareTexture != 0);
    JUTNameTab* shareTextureName = i_shareModelData->getTextureName();
    JUT_ASSERT(1555, shareTextureName != 0)

    bool bvar = false;
    for (u16 i = 0; i < texture->getNum(); i++) {
        ResTIMG* res = texture->getResTIMG(i);
        if (res->imageOffset == 0) {
            for (u16 j = 0; j < shareTexture->getNum(); j++) {
                if (!strcmp(textureName->getName(i), shareTextureName->getName(j))) {
                    JUT_ASSERT(1564, shareTexture->getResTIMG(j)->imageOffset != 0);
                    texture->setResTIMG(i, *shareTexture->getResTIMG(j));
                    bvar = true;
                }
            }
        }
    }

    if (bvar) {
        j3dSys.setTexture(texture);

        for (u16 i = 0; i < i_modelData->getMaterialNum(); i++) {
            J3DMaterial* mat = i_modelData->getMaterialNodePointer(i);
            J3DTevBlock* tevBlock = mat->getTevBlock();
            JUT_ASSERT(1577, tevBlock != 0);
            J3DDisplayListObj* dlObj = mat->getSharedDisplayListObj();

            BOOL ret = OSDisableInterrupts();
            GDInitGDLObj(&J3DDisplayListObj::sGDLObj, dlObj->getDisplayList(0),
                         dlObj->getDisplayListSize());
            GDSetCurrent(&J3DDisplayListObj::sGDLObj);
            tevBlock->patchTexNoAndTexCoordScale();
            OSRestoreInterrupts(ret);
            GDSetCurrent(NULL);
        }
    }
}

/* ############################################################################################## */
/* 803740FC-803740FC 00075C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
// MWCC ignores mapping of some japanese characters using the
// byte 0x5C (ASCII '\'). This is why this string is hex-encoded.

// "ソリッドヒープちゃうがな！\n"
// "This isn't a solid heap! \n"
SECTION_DEAD static char const* const stringBase_803740FC =
    "\x83\x5C\x83\x8A\x83\x62\x83\x68\x83\x71\x81\x5B\x83\x76\x82\xBF\x82\xE1\x82\xA4\x82\xAA\x82"
    "\xC8\x81\x49\x0A";
#pragma pop

/* 8000EA80-8000ECC0 0093C0 0240+00 0/0 0/0 6/6 .text mDoExt_setupStageTexture__FP12J3DModelData
 */
void mDoExt_setupStageTexture(J3DModelData* i_modelData) {
    J3DTexture* texture_p = i_modelData->getTexture();

    if (texture_p != NULL) {
        JUTNameTab* tex_name_p = i_modelData->getTextureName();
        if (tex_name_p != NULL) {
            bool set_timg = false;

            for (u16 i = 0; i < texture_p->getNum(); i++) {
                ResTIMG* img = texture_p->getResTIMG(i);
                if (img->imageOffset == 0) {
                    char res_name[64];
                    snprintf(res_name, sizeof(res_name), "%s.bti", tex_name_p->getName(i));

                    ResTIMG* timg = (ResTIMG*)dComIfG_getStageRes(res_name);
                    texture_p->setResTIMG(i, *timg);
                    set_timg = true;
                }
            }

            if (set_timg) {
                j3dSys.setTexture(texture_p);

                for (u16 i = 0; i < i_modelData->getMaterialNum(); i++) {
                    J3DMaterial* mat_p = i_modelData->getMaterialNodePointer(i);
                    J3DTevBlock* block_p = mat_p->getTevBlock();

                    if (block_p != NULL) {
                        J3DDisplayListObj* dlObj_p = mat_p->getSharedDisplayListObj();

                        if (dlObj_p != NULL) {
                            BOOL state = OSDisableInterrupts();

                            GDInitGDLObj(&J3DDisplayListObj::sGDLObj, dlObj_p->getDisplayList(0),
                                         dlObj_p->getDisplayListSize());
                            GDSetCurrent(&J3DDisplayListObj::sGDLObj);
                            block_p->patchTexNoAndTexCoordScale();

                            OSRestoreInterrupts(state);
                            GDSetCurrent(NULL);
                        }
                    }
                }
            }
        }
    }
}

/* 80450C20-80450C24 000120 0004+00 2/1 0/0 0/0 .sbss            AssertHeap */
static JKRAssertHeap* AssertHeap;

/* 8000ECC0-8000ECE4 009600 0024+00 0/0 1/1 0/0 .text            mDoExt_createAssertHeap__FP7JKRHeap
 */
JKRAssertHeap* mDoExt_createAssertHeap(JKRHeap* i_heap) {
    return AssertHeap = JKRAssertHeap::create(i_heap);
}

/* 8000ECE4-8000ECEC -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getAssertHeap__Fv */
JKRAssertHeap* mDoExt_getAssertHeap() {
    return AssertHeap;
}

/* 80450C24-80450C28 000124 0004+00 2/1 0/0 0/0 .sbss            DbPrintHeap */
static JKRExpHeap* DbPrintHeap;

/* 8000ECEC-8000ED14 00962C 0028+00 0/0 1/1 0/0 .text mDoExt_createDbPrintHeap__FUlP7JKRHeap */
JKRExpHeap* mDoExt_createDbPrintHeap(u32 heapSize, JKRHeap* i_heap) {
    return DbPrintHeap = JKRExpHeap::create(heapSize, i_heap, true);
}

/* 8000ED14-8000ED1C -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getDbPrintHeap__Fv */
JKRExpHeap* mDoExt_getDbPrintHeap() {
    return DbPrintHeap;
}

/* 80450C28-80450C2C 000128 0004+00 2/1 3/3 0/0 .sbss            gameHeap */
JKRExpHeap* gameHeap;

/* 8000ED1C-8000ED50 00965C 0034+00 0/0 1/1 0/0 .text            mDoExt_createGameHeap__FUlP7JKRHeap
 */
JKRExpHeap* mDoExt_createGameHeap(u32 heapSize, JKRHeap* i_heap) {
    gameHeap = JKRExpHeap::create(heapSize, i_heap, true);
    gameHeap->setAllocationMode(JKRExpHeap::ALLOC_MODE_1);
    return gameHeap;
}

/* 8000ED50-8000ED58 -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getGameHeap__Fv */
JKRExpHeap* mDoExt_getGameHeap() {
    return gameHeap;
}

/* 80450C2C-80450C30 00012C 0004+00 2/1 3/3 0/0 .sbss            zeldaHeap */
JKRExpHeap* zeldaHeap;

/* 8000ED58-8000ED80 009698 0028+00 0/0 1/1 0/0 .text mDoExt_createZeldaHeap__FUlP7JKRHeap */
JKRExpHeap* mDoExt_createZeldaHeap(u32 heapSize, JKRHeap* i_heap) {
    return zeldaHeap = JKRExpHeap::create(heapSize, i_heap, true);
}

/* 8000ED80-8000ED88 -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getZeldaHeap__Fv */
JKRExpHeap* mDoExt_getZeldaHeap() {
    return zeldaHeap;
}

/* 80450C30-80450C34 000130 0004+00 2/1 1/1 0/0 .sbss            commandHeap */
JKRExpHeap* commandHeap;

/* 8000ED88-8000EDB0 0096C8 0028+00 0/0 1/1 0/0 .text mDoExt_createCommandHeap__FUlP7JKRHeap */
JKRExpHeap* mDoExt_createCommandHeap(u32 heapSize, JKRHeap* i_heap) {
    return commandHeap = JKRExpHeap::create(heapSize, i_heap, true);
}

/* 8000EDB0-8000EDB8 -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getCommandHeap__Fv */
JKRExpHeap* mDoExt_getCommandHeap() {
    return commandHeap;
}

/* 80450C34-80450C38 000134 0004+00 3/1 5/5 0/0 .sbss            archiveHeap */
JKRExpHeap* archiveHeap;

/* 8000EDB8-8000EDEC 0096F8 0034+00 0/0 1/1 0/0 .text mDoExt_createArchiveHeap__FUlP7JKRHeap */
JKRExpHeap* mDoExt_createArchiveHeap(u32 heapSize, JKRHeap* i_heap) {
    archiveHeap = JKRExpHeap::create(heapSize, i_heap, true);
    archiveHeap->setAllocationMode(JKRExpHeap::ALLOC_MODE_1);
    return archiveHeap;
}

/* 8000EDEC-8000EDF4 -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getArchiveHeap__Fv */
JKRExpHeap* mDoExt_getArchiveHeap() {
    return archiveHeap;
}

/* 8000EDF4-8000EDFC -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getArchiveHeapPtr__Fv */
JKRExpHeap* mDoExt_getArchiveHeapPtr() {
    return archiveHeap;
}

/* 80450C38-80450C3C 000138 0004+00 2/1 0/0 0/0 .sbss            j2dHeap */
static JKRExpHeap* j2dHeap;

/* 8000EDFC-8000EE30 00973C 0034+00 0/0 1/1 0/0 .text            mDoExt_createJ2dHeap__FUlP7JKRHeap
 */
JKRExpHeap* mDoExt_createJ2dHeap(u32 heapSize, JKRHeap* i_heap) {
    j2dHeap = JKRExpHeap::create(heapSize, i_heap, true);
    j2dHeap->setAllocationMode(JKRExpHeap::ALLOC_MODE_1);
    return j2dHeap;
}

/* 8000EE30-8000EE38 -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getJ2dHeap__Fv */
JKRExpHeap* mDoExt_getJ2dHeap() {
    return j2dHeap;
}

/* 80450C3C-80450C40 00013C 0004+00 1/0 0/0 0/0 .sbss            HostIOHeap */
static JKRExpHeap* HostIOHeap;

/* 8000EE38-8000EE40 -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getHostIOHeap__Fv */
JKRExpHeap* mDoExt_getHostIOHeap() {
    return HostIOHeap;
}

/* 8000EE40-8000EED8 009780 0098+00 3/3 0/0 0/0 .text mDoExt_createSolidHeap__FUlP7JKRHeapUl */
static JKRSolidHeap* mDoExt_createSolidHeap(u32 i_size, JKRHeap* i_heap, u32 i_alignment) {
    if (i_heap == NULL) {
        i_heap = JKRHeap::getCurrentHeap();
    }

    JKRSolidHeap* createdHeap;
    if (i_size == 0 || i_size == 0xFFFFFFFF) {
        createdHeap = JKRSolidHeap::create(0xFFFFFFFFFF, i_heap, false);
    } else {
        i_size = ALIGN_NEXT(i_size, 0x10);
        i_size += 0x80;

        if (0x10 < i_alignment) {
            i_size = (i_alignment - 0x10 + i_size);
        }
        createdHeap = JKRSolidHeap::create(i_size, i_heap, false);
    }

    if (createdHeap != NULL) {
        createdHeap->setErrorFlag(true);
    }

    return createdHeap;
}

/* 8000EED8-8000EF20 009818 0048+00 0/0 2/2 0/0 .text mDoExt_createSolidHeapFromGame__FUlUl */
JKRSolidHeap* mDoExt_createSolidHeapFromGame(u32 i_size, u32 i_alignment) {
    return mDoExt_createSolidHeap(i_size, mDoExt_getGameHeap(), i_alignment);
}

/* 8000EF20-8000EF68 009860 0048+00 0/0 1/1 0/0 .text mDoExt_createSolidHeapFromSystem__FUlUl */
JKRSolidHeap* mDoExt_createSolidHeapFromSystem(u32 i_size, u32 i_alignment) {
    return mDoExt_createSolidHeap(i_size, mDoExt_getZeldaHeap(), i_alignment);
}

/* 8000EF68-8000EFBC 0098A8 0054+00 2/2 0/0 0/0 .text
 * mDoExt_createSolidHeapToCurrent__FPP7JKRHeapUlP7JKRHeapUl    */
JKRSolidHeap* mDoExt_createSolidHeapToCurrent(JKRHeap** o_heap, u32 i_size, JKRHeap* i_parent,
                                              u32 i_alignment) {
    if (o_heap != NULL) {
        *o_heap = JKRHeap::getCurrentHeap();
    }

    JKRSolidHeap* resultHeap = mDoExt_createSolidHeap(i_size, i_parent, i_alignment);
    if (resultHeap != NULL) {
        mDoExt_setCurrentHeap(resultHeap);
    }

    return resultHeap;
}

/* 80450C40-80450C44 000140 0004+00 2/2 0/0 0/0 .sbss            mDoExt_SaveCurrentHeap */
static JKRHeap* mDoExt_SaveCurrentHeap;

/* 8000EFBC-8000EFF4 0098FC 0038+00 1/1 3/3 0/0 .text
 * mDoExt_createSolidHeapToCurrent__FUlP7JKRHeapUl              */
JKRSolidHeap* mDoExt_createSolidHeapToCurrent(u32 i_size, JKRHeap* i_parent, u32 i_alignment) {
    return mDoExt_createSolidHeapToCurrent(&mDoExt_SaveCurrentHeap, i_size, i_parent, i_alignment);
}

/* 8000EFF4-8000F044 009934 0050+00 0/0 2/2 0/0 .text
 * mDoExt_createSolidHeapFromGameToCurrent__FPP7JKRHeapUlUl     */
JKRSolidHeap* mDoExt_createSolidHeapFromGameToCurrent(JKRHeap** o_heap, u32 i_size,
                                                      u32 i_alignment) {
    return mDoExt_createSolidHeapToCurrent(o_heap, i_size, mDoExt_getGameHeap(), i_alignment);
}

/* 8000F044-8000F08C 009984 0048+00 0/0 7/7 0/0 .text
 * mDoExt_createSolidHeapFromGameToCurrent__FUlUl               */
JKRSolidHeap* mDoExt_createSolidHeapFromGameToCurrent(u32 i_size, u32 i_alignment) {
    return mDoExt_createSolidHeapToCurrent(i_size, mDoExt_getGameHeap(), i_alignment);
}

/* 8000F08C-8000F158 0099CC 00CC+00 1/1 11/11 0/0 .text mDoExt_adjustSolidHeap__FP12JKRSolidHeap
 */
u32 mDoExt_adjustSolidHeap(JKRSolidHeap* i_heap) {
    if (i_heap == NULL) {
        return -1;
    }

    JKRHeap* parentHeap = i_heap->getParent();
    if (parentHeap == NULL || parentHeap->getHeapType() != 'EXPH') {
        // "Can't adjust because parent heap isn't Exp %08x %08x\n"
        OSReport_Error("親ヒープがExpでないのでアジャストできません %08x %08x\n", i_heap,
                       parentHeap);
        return -1;
    }

    s32 result = i_heap->adjustSize();
    if (result < 0) {
        // "adjustSize failure %08x\n"
        OSReport_Error("adjustSize失敗 %08x\n", i_heap);
        return -1;
    }

    // this probably indicates that 0x80 is some constant, maybe from a sizeof(JKRSolidHeap)
    // with alignment?
    if (result >= (u32)0x80) {
        result -= 0x80;
    }

    return result;
}

/* 8000F158-8000F18C 009A98 0034+00 0/0 1/1 0/0 .text
 * mDoExt_adjustSolidHeapToSystem__FP12JKRSolidHeap             */
u32 mDoExt_adjustSolidHeapToSystem(JKRSolidHeap* i_heap) {
    u32 result = mDoExt_adjustSolidHeap(i_heap);
    mDoExt_restoreCurrentHeap();
    return result;
}

/* 8000F18C-8000F1AC 009ACC 0020+00 0/0 13/13 0/0 .text mDoExt_destroySolidHeap__FP12JKRSolidHeap
 */
void mDoExt_destroySolidHeap(JKRSolidHeap* i_heap) {
    i_heap->destroy();
}

/* 8000F1AC-8000F1CC 009AEC 0020+00 0/0 7/7 0/0 .text mDoExt_destroyExpHeap__FP10JKRExpHeap */
void mDoExt_destroyExpHeap(JKRExpHeap* i_heap) {
    i_heap->destroy();
}

/* 8000F1CC-8000F1EC 009B0C 0020+00 1/1 78/78 2/2 .text            mDoExt_setCurrentHeap__FP7JKRHeap
 */
JKRHeap* mDoExt_setCurrentHeap(JKRHeap* heap) {
    return heap->becomeCurrentHeap();
}

/* 8000F1EC-8000F1F4 -00001 0008+00 0/0 0/0 0/0 .text            mDoExt_getCurrentHeap__Fv */
JKRHeap* mDoExt_getCurrentHeap() {
    return JKRHeap::getCurrentHeap();
}

/* 8000F1F4-8000F220 009B34 002C+00 1/1 9/9 0/0 .text            mDoExt_restoreCurrentHeap__Fv */
void mDoExt_restoreCurrentHeap() {
    mDoExt_SaveCurrentHeap->becomeCurrentHeap();
    mDoExt_SaveCurrentHeap = NULL;
}

/* 8000F220-8000F26C 009B60 004C+00 0/0 1/1 0/0 .text mDoExt_resIDToIndex__FP10JKRArchiveUs */
int mDoExt_resIDToIndex(JKRArchive* p_archive, u16 id) {
    JKRArchive::SDIFileEntry* res = p_archive->findIdResource(id);

    if (res == NULL) {
        return -1;
    }

    return res - p_archive->mFiles;
}

/* 8000F26C-8000F4B0 009BAC 0244+00 1/0 0/0 0/0 .text            calc__25mDoExt_MtxCalcAnmBlendTblFv
 */
void mDoExt_MtxCalcAnmBlendTbl::calc() {
    u16 jntNo = getJoint()->getJntNo();
    j3dSys.setCurrentMtxCalc(this);
    if (mNum == 1) {
        J3DTransformInfo info1;
        mAnmRatio->getAnmTransform()->getTransform(jntNo, &info1);
        J3DMtxCalcCalcTransformMaya::calcTransform(info1);
        return;
    }
    J3DTransformInfo info2;
    Quaternion quat1;
    Quaternion quat2;
    Quaternion quat3;
    mAnmRatio->getAnmTransform()->getTransform(jntNo, &info2);
    JMAEulerToQuat(info2.mRotation.x, info2.mRotation.y, info2.mRotation.z, &quat1);
    quat3 = quat1;
    for (int i = 1; i < mNum; i++) {
        J3DAnmTransform* transform = mAnmRatio[i].getAnmTransform();
        if (transform) {
            J3DTransformInfo info3;
            transform->getTransform(jntNo, &info3);
            f32 ratio = mAnmRatio[i].getRatio();
            f32 f30 = 1.0f - ratio;
            JMAEulerToQuat(info3.mRotation.x, info3.mRotation.y, info3.mRotation.z, &quat2);
            JMAQuatLerp(&quat1, &quat2, ratio, &quat3);
            quat1 = quat3;
            info2.mTranslate.x = info2.mTranslate.x * f30 + info3.mTranslate.x * ratio;
            info2.mTranslate.y = info2.mTranslate.y * f30 + info3.mTranslate.y * ratio;
            info2.mTranslate.z = info2.mTranslate.z * f30 + info3.mTranslate.z * ratio;
            info2.mScale.x = info2.mScale.x * f30 + info3.mScale.x * ratio;
            info2.mScale.y = info2.mScale.y * f30 + info3.mScale.y * ratio;
            info2.mScale.z = info2.mScale.z * f30 + info3.mScale.z * ratio;
        }
    }
    Mtx mtx;
    MTXQuat(mtx, (PSQuaternion*)&quat3);
    mDoExt_setJ3DData(mtx, &info2, jntNo);
}


/* 8000F4B0-8000F848 009DF0 0398+00 1/0 0/0 0/0 .text calc__28mDoExt_MtxCalcAnmBlendTblOldFv */
void mDoExt_MtxCalcAnmBlendTblOld::calc() {
    u16 jntNo = getJoint()->getJntNo();
    j3dSys.setCurrentMtxCalc(this);
    J3DModelData* modelData = j3dSys.getModel()->getModelData();
    J3DTransformInfo info1;
    Quaternion quat1;
    Quaternion quat2;
    Quaternion quat3;
    mAnmRatio->getAnmTransform()->getTransform(jntNo, &info1);
    JMAEulerToQuat(info1.mRotation.x, info1.mRotation.y, info1.mRotation.z, &quat1);
    quat3 = quat1;
    for (int i = 1; i < mNum; i++) {
        if (mAnmRatio[i].getAnmTransform()) {
            J3DAnmTransform* transform = mAnmRatio[i].getAnmTransform();
            J3DTransformInfo info2;
            transform->getTransform(jntNo, &info2);
            f32 ratio = mAnmRatio[i].getRatio();
            f32 f30 = 1.0f - ratio;
            JMAEulerToQuat(info2.mRotation.x, info2.mRotation.y, info2.mRotation.z, &quat2);
            JMAQuatLerp(&quat1, &quat2, ratio, &quat3);
            quat1 = quat3;
            info1.mTranslate.x = info1.mTranslate.x * f30 + info2.mTranslate.x * ratio;
            info1.mTranslate.y = info1.mTranslate.y * f30 + info2.mTranslate.y * ratio;
            info1.mTranslate.z = info1.mTranslate.z * f30 + info2.mTranslate.z * ratio;
            info1.mScale.x = info1.mScale.x * f30 + info2.mScale.x * ratio;
            info1.mScale.y = info1.mScale.y * f30 + info2.mScale.y * ratio;
            info1.mScale.z = info1.mScale.z * f30 + info2.mScale.z * ratio;
        }
    }

    J3DTransformInfo* oldTransInfo = mOldFrame->getOldFrameTransInfo(jntNo);
    Quaternion* oldQuat = mOldFrame->getOldFrameQuaternion(jntNo);
    if (mOldFrame->getOldFrameFlg()) {
        if (mOldFrame->getOldFrameRate() > 0.0f && mOldFrame->getOldFrameStartJoint() <= jntNo && mOldFrame->getOldFrameEndJoint() > jntNo) {
            f32 oldFrameRate = mOldFrame->getOldFrameRate();
            f32 f31 = 1.0f - oldFrameRate;
            JMAQuatLerp(oldQuat, &quat1, f31, &quat3);
            info1.mTranslate.x = info1.mTranslate.x * f31 + oldTransInfo->mTranslate.x * oldFrameRate;
            info1.mTranslate.y = info1.mTranslate.y * f31 + oldTransInfo->mTranslate.y * oldFrameRate;
            info1.mTranslate.z = info1.mTranslate.z * f31 + oldTransInfo->mTranslate.z * oldFrameRate;
            info1.mScale.x = info1.mScale.x * f31 + oldTransInfo->mScale.x * oldFrameRate;
            info1.mScale.y = info1.mScale.y * f31 + oldTransInfo->mScale.y * oldFrameRate;
            info1.mScale.z = info1.mScale.z * f31 + oldTransInfo->mScale.z * oldFrameRate;
        }
    } else if (jntNo == modelData->getJointNum() - 1) {
        mOldFrame->onOldFrameFlg();
    }
    Mtx mtx;
    mDoMtx_quat(mtx, &quat3);
    mDoExt_setJ3DData(mtx, &info1, jntNo);
    *oldQuat = quat3;
    *oldTransInfo = info1;
    if (jntNo == modelData->getJointNum() - 1) {
        mOldFrame->decOldFrameMorfCounter();
    }
}

/* 8000F848-8000F8CC 00A188 0084+00 0/0 26/26 8/8 .text
 * initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs             */
void mDoExt_MtxCalcOldFrame::initOldFrameMorf(f32 param_0, u16 frameStartJoint, u16 frameEndJoint) {
    if (param_0 > 0.0f) {
        mOldFrameMorfCounter = param_0;
        field_0x8 = 1.0f / param_0;
        mOldFrameRate = 1.0f;
        field_0x10 = 1.0f;
        field_0x14 = 1.0f;
        decOldFrameMorfCounter();
    } else {
        mOldFrameMorfCounter = 0.0f;
        field_0x8 = 0.0f;
        mOldFrameRate = 0.0f;
        field_0x10 = 0.0f;
        field_0x14 = 0.0f;
    }

    mOldFrameStartJoint = frameStartJoint;
    mOldFrameEndJoint = frameEndJoint;
}

/* 8000F8CC-8000F950 00A20C 0084+00 2/2 0/0 0/0 .text
 * decOldFrameMorfCounter__22mDoExt_MtxCalcOldFrameFv           */
void mDoExt_MtxCalcOldFrame::decOldFrameMorfCounter() {
    if (mOldFrameMorfCounter > 0.0f) {

        mOldFrameMorfCounter -= 1.0f;
        if (mOldFrameMorfCounter <= 0.0f) {
            mOldFrameMorfCounter = 0.0f;
            field_0x8 = 0.0f;
            mOldFrameRate = 0.0f;
        }

        field_0x14 = field_0x10;
        field_0x10 = mOldFrameMorfCounter * field_0x8;

        if (field_0x14 > 0.0f) {
            mOldFrameRate = 1.0f - (field_0x14 - field_0x10) / field_0x14;
        } else {
            mOldFrameRate = 0.0f;
        }
    }
}

/* 8000F950-8000F9D8 00A290 0088+00 3/3 0/0 0/0 .text            __ct__13mDoExt_morf_cFv */
mDoExt_morf_c::mDoExt_morf_c() {
    mpModel = NULL;
    mpAnm = NULL;
    mpTransformInfo = NULL;
    mpQuat = NULL;
}

/* 8000FAE8-8000FB7C 00A428 0094+00 4/3 0/0 0/0 .text            __dt__13mDoExt_morf_cFv */
mDoExt_morf_c::~mDoExt_morf_c() {
    /* empty function */
}

/* 8000FB7C-8000FBC0 00A4BC 0044+00 3/3 4/4 20/20 .text            setMorf__13mDoExt_morf_cFf */
void mDoExt_morf_c::setMorf(f32 i_morf) {
    if (mPrevMorf < 0.0f || i_morf == 0.0f) {
        mCurMorf = 1.0f;
    } else {
        mCurMorf = 0.0f;
        mMorfStep = 0.0f;
        field_0x34 = 1.0f / i_morf;
    }

    mPrevMorf = mCurMorf;
}

/* 8000FBC0-8000FC4C 00A500 008C+00 3/3 0/0 0/0 .text            frameUpdate__13mDoExt_morf_cFv */
void mDoExt_morf_c::frameUpdate() {
    if (mCurMorf < 1.0f) {
        mPrevMorf = mCurMorf;

        if (field_0x34 < 0.0f) {
            cLib_chaseF(&mMorfStep, 1.0f, -field_0x34);
            mCurMorf += mMorfStep * ((1.0f - mCurMorf) * mMorfStep);
        } else {
            cLib_chaseF(&mCurMorf, 1.0f, field_0x34);
        }
    }

    mFrameCtrl.update();
}

/* 8000FC4C-8000FD10 00A58C 00C4+00 0/0 0/0 34/34 .text
 * __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
 */
mDoExt_McaMorf::mDoExt_McaMorf(J3DModelData* modelData, mDoExt_McaMorfCallBack1_c* callback1,
                                   mDoExt_McaMorfCallBack2_c* callback2, J3DAnmTransform* anmTransform,
                                   int param_4, f32 param_5, int param_6, int param_7, int param_8,
                                   void* param_9, u32 param_10, u32 param_11) {
    field_0x50 = false;
    field_0x51 = false;
    field_0x52 = false;
    create(modelData, callback1, callback2, anmTransform, param_4, param_5, param_6, param_7, param_8, param_9, param_10, param_11);
}

/* 8000FD10-8000FD94 00A650 0084+00 1/0 0/0 0/0 .text            __dt__14mDoExt_McaMorfFv */
mDoExt_McaMorf::~mDoExt_McaMorf() {
    if (field_0x50 && mpSound != NULL) {
        mpSound->stopAnime();
    }
}

/* 8000FD94-80010074 00A6D4 02E0+00 1/1 0/0 0/0 .text
 * create__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
 */
int mDoExt_McaMorf::create(J3DModelData* modelData, mDoExt_McaMorfCallBack1_c* callback1,
                           mDoExt_McaMorfCallBack2_c* callback2, J3DAnmTransform* anmTransform,
                           int param_4, f32 param_5, int param_6, int param_7, int param_8,
                           void* param_9, u32 param_10, u32 param_11) {
    mpModel = NULL;
    mpSound = NULL;
    mpTransformInfo = NULL;
    mpQuat = NULL;
    if (!modelData) {
        return 0;
    }
    if (modelData->getMaterialNodePointer(0)->getSharedDisplayListObj() && param_10 == 0) {
        if (param_10 = modelData->isLocked()) {
            param_10 = 0x20000;
        } else {
            param_10 = 0x80000;
        }
    }
    mpModel = mDoExt_J3DModel__create(modelData, param_10, param_11);
    if (!mpModel) {
        return 0;
    }
    if (param_10 != 0x80000) {
        mDoExt_changeMaterial(mpModel);
    }
    if (param_9 == NULL && anmTransform) {
        param_9 = ((mDoExt_transAnmBas*)anmTransform)->getBas();
        if (param_9) {
            param_8 = 1;
        }
    }
    if (param_8) {
        mpSound = new mDoExt_zelAnime();
        if (!mpSound) {
            goto cleanup;
        }
    }
    setAnm(anmTransform, param_4, 0.0f, param_5, param_6, param_7, param_9);
    mPrevMorf = -1.0f;
    mpTransformInfo = new J3DTransformInfo[modelData->getJointNum()];
    if (!mpTransformInfo) {
        goto cleanup;
    }
    mpQuat = new Quaternion[modelData->getJointNum()];
    if (!mpQuat) {
        goto cleanup;
    }
    J3DTransformInfo* info = mpTransformInfo;
    Quaternion* quat = mpQuat;
    J3DModelData* r23 = mpModel->getModelData();
    u16 jointNum = r23->getJointNum();
    for (int i = 0; i < jointNum; i++) {
        *info = r23->getJointNodePointer(i)->getTransformInfo();
        JMAEulerToQuat(info->mRotation.x, info->mRotation.y, info->mRotation.z, quat);
        info++;
        quat++;
    }
    mpCallback1 = callback1;
    mpCallback2 = callback2;
    return 1;
    cleanup:
    if (mpSound) {
        mpSound->stopAnime();
        mpSound = NULL;
    }
    if (mpTransformInfo) {
        mpTransformInfo = NULL;
    }
    if (mpQuat) {
        mpQuat = NULL;
    }
    if (mpModel) {
        mpModel = NULL;
    }
    return 0;
}

/* 80010074-8001037C 00A9B4 0308+00 1/0 0/0 0/0 .text            calc__14mDoExt_McaMorfFv */
// NONMATCHING regalloc
void mDoExt_McaMorf::calc() {
    if (mpModel == NULL) {
        return;
    }

    u16 jntNo = getJoint()->getJntNo();
    j3dSys.setCurrentMtxCalc(this);

    Mtx sp68;
    J3DTransformInfo sp48;
    J3DTransformInfo sp28;
    J3DTransformInfo* var_r29;
    if (mpTransformInfo == NULL) {
        var_r29 = &sp48;
    } else {
        var_r29 = &mpTransformInfo[jntNo];
    }

    Quaternion sp18;
    Quaternion* var_r27;
    if (mpQuat == NULL) {
        var_r27 = &sp18;
    } else {
        var_r27 = &mpQuat[jntNo];
    }

    if (mpAnm == NULL) {
        *var_r29 = mpModel->getModelData()->getJointNodePointer(jntNo)->getTransformInfo();
        if (mpCallback1 != NULL) {
            mpCallback1->execute(jntNo, var_r29);
        }

        JMAEulerToQuat(var_r29->mRotation.x, var_r29->mRotation.y, var_r29->mRotation.z, var_r27);
        J3DMtxCalcCalcTransformMaya::calcTransform(*var_r29);
    } else if (mCurMorf >= 1.0f || mpTransformInfo == NULL || mpQuat == NULL) {
        getTransform(jntNo, var_r29);
        if (mpCallback1 != NULL) {
            mpCallback1->execute(jntNo, var_r29);
        }
        JMAEulerToQuat(var_r29->mRotation.x, var_r29->mRotation.y, var_r29->mRotation.z, var_r27);
        J3DMtxCalcCalcTransformMaya::calcTransform(*var_r29);
    } else {
        f32 var_f31;
        if (field_0x52) {
            var_f31 = 1.0f;
        } else {
            var_f31 = (mCurMorf - mPrevMorf) / (1.0f - mPrevMorf);
        }
        f32 var_f30 = 1.0f - var_f31;

        Quaternion sp8;
        getTransform(jntNo, &sp28);

        if (mpCallback1 != NULL) {
            mpCallback1->execute(jntNo, &sp28);
        }

        JMAEulerToQuat(sp28.mRotation.x, sp28.mRotation.y, sp28.mRotation.z, &sp8);
        JMAQuatLerp(var_r27, &sp8, var_f31, var_r27);

        mDoMtx_quat(sp68, var_r27);

        var_r29->mTranslate.x = var_r29->mTranslate.x * var_f30 + sp28.mTranslate.x * var_f31;
        var_r29->mTranslate.y = var_r29->mTranslate.y * var_f30 + sp28.mTranslate.y * var_f31;
        var_r29->mTranslate.z = var_r29->mTranslate.z * var_f30 + sp28.mTranslate.z * var_f31;
        var_r29->mScale.x = var_r29->mScale.x * var_f30 + sp28.mScale.x * var_f31;
        var_r29->mScale.y = var_r29->mScale.y * var_f30 + sp28.mScale.y * var_f31;
        var_r29->mScale.z = var_r29->mScale.z * var_f30 + sp28.mScale.z * var_f31;
        mDoExt_setJ3DData(sp68, var_r29, jntNo);
    }

    if (mpCallback2 != NULL) {
        mpCallback2->execute(jntNo);
    }
}

/* 8001037C-800105C8 00ACBC 024C+00 1/1 1/1 29/29 .text
 * setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv           */
void mDoExt_McaMorf::setAnm(J3DAnmTransform* param_0, int param_1, f32 param_2, f32 param_3,
                                f32 param_4, f32 param_5, void* param_6) {
    mpAnm = param_0;
    setStartFrame(param_4);
    if (param_5 < 0.0f) {
        if (!mpAnm) {
            mFrameCtrl.init(0);
        } else {
            mFrameCtrl.init(mpAnm->getFrameMax());
        }
    } else {
        mFrameCtrl.init(param_5);
    }
    if (param_0 && param_1 < 0) {
        param_1 = param_0->getAttribute();
    }
    setPlayMode(param_1);
    setPlaySpeed(param_3);
    if (param_3 >= 0.0f) {
        setFrame(param_4);
    } else {
        setFrame(getEndFrame());
    }
    setLoopFrame(getFrame());
    setMorf(param_2);
    if (mpSound) {
        if (param_6 == NULL && param_0) {
            param_6 = ((mDoExt_transAnmBas*)param_0)->getBas();
        }
        mpSound->field_0x48 = param_6;
        if (mpSound->field_0x48) {
            mpSound->initAnime(param_6, getPlaySpeed() >= 0.0f, getLoopFrame(), 0.0f);
        } else {
            mpSound->stopAnime();
        }
    }
}

/* 800105C8-80010680 00AF08 00B8+00 0/0 1/1 37/37 .text            play__14mDoExt_McaMorfFP3VecUlSc
 */
u32 mDoExt_McaMorf::play(Vec* param_0, u32 param_1, s8 param_2) {
    frameUpdate();
    if (mpSound != NULL && mpSound->field_0x48 != NULL && param_0 != NULL) {
        mpSound->updateAnime(getFrame(), getPlaySpeed());
        mpSound->framework(param_1, param_2);
        field_0x50 = true;
    }
    return isStop();
}

/* 80010680-800106AC 00AFC0 002C+00 0/0 0/0 33/33 .text            entryDL__14mDoExt_McaMorfFv */
void mDoExt_McaMorf::entryDL() {
    if (mpModel != NULL) {
        mDoExt_modelEntryDL(mpModel);
    }
}

/* 800106AC-80010710 00AFEC 0064+00 0/0 0/0 37/37 .text            modelCalc__14mDoExt_McaMorfFv */
void mDoExt_McaMorf::modelCalc() {
    if (mpModel != NULL) {
        if (mpAnm != NULL) {
            mpAnm->setFrame(mFrameCtrl.getFrame());
        }

        mpModel->getModelData()->getJointNodePointer(0)->setMtxCalc((J3DMtxCalc*)this);
        mpModel->calc();
    }
}

/* 80010710-800107D0 00B050 00C0+00 1/1 0/0 0/0 .text
 * getTransform__14mDoExt_McaMorfFUsP16J3DTransformInfo         */
void mDoExt_McaMorf::getTransform(u16 param_0, J3DTransformInfo* param_1) {
    mpAnm->getTransform(param_0, param_1);
    if (field_0x51) {
        if (param_0 == 0) {
            param_1->mTranslate.x *= mTranslateScale.x;
            param_1->mTranslate.y *= mTranslateScale.y;
            param_1->mTranslate.z *= mTranslateScale.z;
        } else {
            J3DTransformInfo& info = mpModel->getModelData()->getJointNodePointer(param_0)->getTransformInfo();
            param_1->mTranslate.x = info.mTranslate.x;
            param_1->mTranslate.y = info.mTranslate.y;
            param_1->mTranslate.z = info.mTranslate.z;
        }
    }
}

/* 800107D0-80010888 00B110 00B8+00 0/0 2/2 222/222 .text
 * __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
 */
mDoExt_McaMorfSO::mDoExt_McaMorfSO(J3DModelData* param_0, mDoExt_McaMorfCallBack1_c* param_1,
                                   mDoExt_McaMorfCallBack2_c* param_2, J3DAnmTransform* param_3,
                                   int param_4, f32 param_5, int param_6, int param_7,
                                   Z2Creature* param_8, u32 param_9, u32 param_10) {
    mTranslate = false;
    mMorfNone = false;
    create(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9,
           param_10);
}

/* 80010888-800108F0 00B1C8 0068+00 1/0 0/0 0/0 .text            __dt__16mDoExt_McaMorfSOFv */
mDoExt_McaMorfSO::~mDoExt_McaMorfSO() {
    stopZelAnime();
}

/* 800108F0-80010B68 00B230 0278+00 1/1 0/0 0/0 .text
 * create__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
 */
int mDoExt_McaMorfSO::create(J3DModelData* i_modelData, mDoExt_McaMorfCallBack1_c* param_1,
                             mDoExt_McaMorfCallBack2_c* param_2, J3DAnmTransform* param_3,
                             int param_4, f32 param_5, int param_6, int param_7,
                             Z2Creature* i_sound, u32 param_9, u32 param_10) {
    mpModel = NULL;
    mpTransformInfo = NULL;
    mpQuat = NULL;
    mpSound = NULL;

    if (i_modelData == NULL) {
        return 0;
    }

    if (i_modelData->getMaterialNodePointer(0)->getSharedDisplayListObj() != NULL && param_9 == 0) {
        if (i_modelData->isLocked()) {
            param_9 = 0x20000;
        } else {
            param_9 = 0x80000;
        }
    }

    mpModel = mDoExt_J3DModel__create(i_modelData, param_9, param_10);
    if (mpModel == NULL) {
        return 0;
    }

    if (param_9 != 0x80000) {
        mDoExt_changeMaterial(mpModel);
    }

    mpSound = i_sound;

    if (param_3 != NULL) {
        mpBas = ((mDoExt_transAnmBas*)param_3)->getBas();
    }

    setAnm(param_3, param_4, 0.0f, param_5, param_6, param_7);
    mPrevMorf = -1.0f;

    mpTransformInfo = new J3DTransformInfo[i_modelData->getJointNum()];
    if (mpTransformInfo != NULL) {
        mpQuat = new Quaternion[i_modelData->getJointNum()];

        if (mpQuat != NULL) {
            J3DTransformInfo* transInfo = mpTransformInfo;
            Quaternion* quat = mpQuat;
            J3DModelData* modelData = mpModel->getModelData();
            u16 jointNum = modelData->getJointNum();

            for (int i = 0; i < jointNum; i++) {
                *transInfo = modelData->getJointNodePointer(i)->getTransformInfo();
                JMAEulerToQuat(transInfo->mRotation.x, transInfo->mRotation.y,
                               transInfo->mRotation.z, quat);

                transInfo++;
                quat++;
            }

            mpCallback1 = param_1;
            mpCallback2 = param_2;
            return 1;
        }
    }

    if (mpTransformInfo != NULL) {
        mpTransformInfo = NULL;
    }

    if (mpQuat != NULL) {
        mpQuat = NULL;
    }

    if (mpModel != NULL) {
        mpModel = NULL;
    }

    return 0;
}

/* 80010B68-80010E70 00B4A8 0308+00 1/0 0/0 0/0 .text            calc__16mDoExt_McaMorfSOFv */
// NONMATCHING regalloc
void mDoExt_McaMorfSO::calc() {
    if (mpModel != NULL) {
        u16 jnt_no = J3DMtxCalc::getJoint()->getJntNo();
        j3dSys.setCurrentMtxCalc(this);

        J3DTransformInfo trans;
        J3DTransformInfo* trans_p;
        if (mpTransformInfo == NULL) {
            trans_p = &trans;
        } else {
            trans_p = &mpTransformInfo[jnt_no];
        }

        Quaternion quat;
        Quaternion* quat_p;
        if (mpQuat == NULL) {
            quat_p = &quat;
        } else {
            quat_p = &mpQuat[jnt_no];
        }

        if (mpAnm == NULL) {
            *trans_p = mpModel->getModelData()->getJointNodePointer(jnt_no)->getTransformInfo();

            if (mpCallback1 != NULL) {
                mpCallback1->execute(jnt_no, trans_p);
            }

            JMAEulerToQuat(trans_p->mRotation.x, trans_p->mRotation.y, trans_p->mRotation.z,
                           quat_p);
            J3DMtxCalcCalcTransformMaya::calcTransform(*trans_p);
        } else if (mCurMorf >= 1.0f || mpTransformInfo == NULL || mpQuat == NULL) {
            getTransform(jnt_no, trans_p);

            if (mpCallback1 != NULL) {
                mpCallback1->execute(jnt_no, trans_p);
            }

            JMAEulerToQuat(trans_p->mRotation.x, trans_p->mRotation.y, trans_p->mRotation.z,
                           quat_p);
            J3DMtxCalcCalcTransformMaya::calcTransform(*trans_p);
        } else {
            f32 lerp_factor;
            if (mMorfNone) {
                lerp_factor = 1.0f;
            } else {
                lerp_factor = (mCurMorf - mPrevMorf) / (1.0f - mPrevMorf);
            }
            f32 inv_lerp_factor = 1.0f - lerp_factor;

            J3DTransformInfo trans2;
            getTransform(jnt_no, &trans2);

            if (mpCallback1 != NULL) {
                mpCallback1->execute(jnt_no, &trans2);
            }

            Quaternion quat2;
            JMAEulerToQuat(trans2.mRotation.x, trans2.mRotation.y, trans2.mRotation.z, &quat2);
            JMAQuatLerp(quat_p, &quat2, lerp_factor, quat_p);

            Mtx mtx;
            mDoMtx_quat(mtx, quat_p);

            trans_p->mTranslate.x = trans_p->mTranslate.x * inv_lerp_factor
                                    + trans2.mTranslate.x * lerp_factor;
            trans_p->mTranslate.y = trans_p->mTranslate.y * inv_lerp_factor
                                    + trans2.mTranslate.y * lerp_factor;
            trans_p->mTranslate.z = trans_p->mTranslate.z * inv_lerp_factor
                                    + trans2.mTranslate.z * lerp_factor;
            trans_p->mScale.x = trans_p->mScale.x * inv_lerp_factor
                                + trans2.mScale.x * lerp_factor;
            trans_p->mScale.y = trans_p->mScale.y * inv_lerp_factor
                                + trans2.mScale.y * lerp_factor;
            trans_p->mScale.z = trans_p->mScale.z * inv_lerp_factor
                                + trans2.mScale.z * lerp_factor;

            mDoExt_setJ3DData(mtx, trans_p, jnt_no);
        }

        if (mpCallback2 != NULL) {
            mpCallback2->execute(jnt_no);
        }
    }
}

/* 80010E70-800110B0 00B7B0 0240+00 1/1 5/5 208/208 .text
 * setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff           */
void mDoExt_McaMorfSO::setAnm(J3DAnmTransform* i_anm, int i_attr, f32 i_morf, f32 i_rate,
                              f32 i_start, f32 i_end) {
    mpAnm = i_anm;
    setStartFrame(i_start);

    if (i_end < 0.0f) {
        if (mpAnm == NULL) {
            mFrameCtrl.init(0);
        } else {
            mFrameCtrl.init(mpAnm->getFrameMax());
        }
    } else {
        mFrameCtrl.init(i_end);
    }

    if (i_anm != NULL && i_attr < 0) {
        i_attr = i_anm->getAttribute();
    }

    setPlayMode(i_attr);
    setPlaySpeed(i_rate);
    
    if (i_rate >= 0.0f) {
        setFrame(i_start);
    } else {
        setFrame(mFrameCtrl.getEnd());
    }

    setLoopFrame(getFrame());
    setMorf(i_morf);

    if (mpSound != NULL) {
        if (i_anm != NULL) {
            mpBas = static_cast<mDoExt_transAnmBas*>(i_anm)->getBas();
        } else {
            mpBas = NULL;
        }

        if (mpBas != NULL) {
            mpSound->initAnime(mpBas, getPlaySpeed() >= 0.0f, getLoopFrame(), getFrame());
        }
    }
}

/* 800110B0-80011154 00B9F0 00A4+00 0/0 5/5 143/143 .text            play__16mDoExt_McaMorfSOFUlSc
 */
int mDoExt_McaMorfSO::play(u32 param_0, s8 param_1) {
    frameUpdate();

    if (mpSound != NULL) {
        mpSound->framework(param_0, param_1);

        if (mpBas != NULL) {
            mpSound->updateAnime(getFrame(), getPlaySpeed());
        }
    }

    return isStop();
}

/* 80011154-800111C0 00BA94 006C+00 0/0 0/0 4/4 .text            updateDL__16mDoExt_McaMorfSOFv */
void mDoExt_McaMorfSO::updateDL() {
    if (mpModel != NULL) {
        if (mpAnm != NULL) {
            mpAnm->setFrame(mFrameCtrl.getFrame());
        }

        mpModel->getModelData()->getJointNodePointer(0)->setMtxCalc((J3DMtxCalc*)this);
        mDoExt_modelUpdateDL(mpModel);
        mPrevMorf = mCurMorf;
    }
}

/* 800111C0-800111EC 00BB00 002C+00 0/0 5/5 137/137 .text            entryDL__16mDoExt_McaMorfSOFv
 */
void mDoExt_McaMorfSO::entryDL() {
    if (mpModel != NULL) {
        mDoExt_modelEntryDL(mpModel);
    }
}

/* 800111EC-80011250 00BB2C 0064+00 0/0 4/4 174/174 .text            modelCalc__16mDoExt_McaMorfSOFv
 */
void mDoExt_McaMorfSO::modelCalc() {
    if (mpModel != NULL) {
        if (mpAnm != NULL) {
            mpAnm->setFrame(mFrameCtrl.getFrame());
        }

        mpModel->getModelData()->getJointNodePointer(0)->setMtxCalc((J3DMtxCalc*)this);
        mpModel->calc();
    }
}

/* 80011250-80011310 00BB90 00C0+00 1/1 0/0 1/1 .text
 * getTransform__16mDoExt_McaMorfSOFUsP16J3DTransformInfo       */
void mDoExt_McaMorfSO::getTransform(u16 param_0, J3DTransformInfo* param_1) {
    mpAnm->getTransform(param_0, param_1);
    if (mTranslate) {
        if (param_0 == 0) {
            param_1->mTranslate.x *= mTranslateScale.x;
            param_1->mTranslate.y *= mTranslateScale.y;
            param_1->mTranslate.z *= mTranslateScale.z;
        } else {
            J3DTransformInfo& info = mpModel->getModelData()->getJointNodePointer(param_0)->getTransformInfo();
            param_1->mTranslate.x = info.mTranslate.x;
            param_1->mTranslate.y = info.mTranslate.y;
            param_1->mTranslate.z = info.mTranslate.z;
        }
    }
}

/* 80011310-80011348 00BC50 0038+00 1/1 2/2 260/260 .text stopZelAnime__16mDoExt_McaMorfSOFv */
void mDoExt_McaMorfSO::stopZelAnime() {
    if (mpSound != NULL) {
        mpSound->deleteObject();
    }
}

/* 80011348-800113FC 00BC88 00B4+00 0/0 0/0 1/1 .text
 * __ct__15mDoExt_McaMorf2FP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformP15J3DAnmTransformifiiP10Z2CreatureUlUl
 */
mDoExt_McaMorf2::mDoExt_McaMorf2(J3DModelData* param_0, mDoExt_McaMorfCallBack1_c* param_1,
                                 mDoExt_McaMorfCallBack2_c* param_2, J3DAnmTransform* param_3,
                                 J3DAnmTransform* param_4, int param_5, f32 param_6, int param_7,
                                 int param_8, Z2Creature* param_9, u32 param_10, u32 param_11) {
    create(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8, param_9,
           param_10, param_11);
}

/* 800113FC-80011464 00BD3C 0068+00 1/0 0/0 0/0 .text            __dt__15mDoExt_McaMorf2Fv */
mDoExt_McaMorf2::~mDoExt_McaMorf2() {
    stopZelAnime();
}

/* 80011464-800116B4 00BDA4 0250+00 1/1 0/0 0/0 .text
 * create__15mDoExt_McaMorf2FP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformP15J3DAnmTransformifiiP10Z2CreatureUlUl
 */
 int mDoExt_McaMorf2::create(J3DModelData* param_0, mDoExt_McaMorfCallBack1_c* param_1,
                                 mDoExt_McaMorfCallBack2_c* param_2, J3DAnmTransform* param_3,
                                 J3DAnmTransform* param_4, int param_5, f32 param_6, int param_7,
                                 int param_8, Z2Creature* param_9, u32 param_10, u32 param_11) {
    mpModel = NULL;
    mpTransformInfo = NULL;
    mpQuat = NULL;
    mpSound = NULL;

    if (param_0 == NULL) {
        return 0;
    }

    if (param_0->getMaterialNodePointer(0)->getSharedDisplayListObj() != NULL && param_10 == 0) {
        if (param_0->isLocked()) {
            param_10 = 0x20000;
        } else {
            param_10 = 0x80000;
        }
    }

    mpModel = mDoExt_J3DModel__create(param_0, param_10, param_11);
    if (mpModel == NULL) {
        return 0;
    }

    if (param_10 != 0x80000) {
        mDoExt_changeMaterial(mpModel);
    }

    mpSound = param_9;

    setAnm(param_3, param_4, 0.0f, param_5, 0.0f, param_6, param_7, param_8);
    mPrevMorf = -1.0f;

    mpTransformInfo = new J3DTransformInfo[param_0->getJointNum()];
    if (mpTransformInfo == NULL) {
        ERROR_EXIT();
        return 0;
    }

    mpQuat = new Quaternion[param_0->getJointNum()];
    if (mpQuat == NULL) {
        ERROR_EXIT();
        return 0;
    }

    J3DTransformInfo* var_r29 = mpTransformInfo;
    Quaternion* var_r26 = mpQuat;
    J3DModelData* model_data = mpModel->getModelData();
    int sp3C = model_data->getJointNum();

    for (int i = 0; i < sp3C; i++) {
        J3DJoint* sp30 = model_data->getJointNodePointer(i);
        J3DTransformInfo* sp2C = &sp30->getTransformInfo();

        *var_r29 = *sp2C;
        JMAEulerToQuat(var_r29->mRotation.x, var_r29->mRotation.y, var_r29->mRotation.z, var_r26);
        
        var_r29++;
        var_r26++;
    }

    mpCallback1 = param_1;
    mpCallback2 = param_2;
    return 1;
}

/* 800116B4-800116F4 00BFF4 0040+00 1/1 0/0 0/0 .text            ERROR_EXIT__15mDoExt_McaMorf2Fv */
void mDoExt_McaMorf2::ERROR_EXIT() {
    if (mpTransformInfo != NULL) {
        mpTransformInfo = NULL;
    }

    if (mpQuat != NULL) {
        mpQuat = NULL;
    }

    if (mpModel != NULL) {
        mpModel = NULL;
    }
}

/* 800116F4-80011D70 00C034 067C+00 1/0 0/0 0/0 .text            calc__15mDoExt_McaMorf2Fv */
// NONMATCHING - float regswap, equivalent
void mDoExt_McaMorf2::calc() {
    if (mpModel != NULL) {
        u16 jnt_no = J3DMtxCalc::getJoint()->getJntNo();
        j3dSys.setCurrentMtxCalc(this);

        J3DTransformInfo spF0[2];
        Mtx spC0;

        J3DTransformInfo spA0;
        J3DTransformInfo sp80;
        J3DTransformInfo* var_r30;
        if (mpTransformInfo == NULL) {
            var_r30 = &spA0;
        } else {
            var_r30 = &mpTransformInfo[jnt_no];
        }

        Quaternion sp60[2];
        Quaternion sp40[2];

        Quaternion sp30;
        Quaternion sp20;
        Quaternion* var_r27;
        if (mpQuat == NULL) {
            var_r27 = &sp30;
        } else {
            var_r27 = &mpQuat[jnt_no];
        }

        if (mpAnm == NULL) {
            *var_r30 = mpModel->getModelData()->getJointNodePointer(jnt_no)->getTransformInfo();

            if (mpCallback1 != NULL) {
                mpCallback1->execute(jnt_no, var_r30);
            }

            JMAEulerToQuat(var_r30->mRotation.x, var_r30->mRotation.y, var_r30->mRotation.z,
                           var_r27);
            J3DMtxCalcCalcTransformMaya::calcTransform(*var_r30);
        } else if (mCurMorf >= 1.0f || mpTransformInfo == NULL || mpQuat == NULL) {
            mpAnm->getTransform(jnt_no, &spF0[0]);
            if (field_0x40 == NULL) {
                if (mpCallback1 != NULL) {
                    mpCallback1->execute(jnt_no, &spF0[0]);
                }
    
                JMAEulerToQuat(spF0[0].mRotation.x, spF0[0].mRotation.y, spF0[0].mRotation.z,
                               var_r27);
                J3DMtxCalcCalcTransformMaya::calcTransform(spF0[0]);
                *var_r30 = spF0[0];
            } else {
                field_0x40->getTransform(jnt_no, &spF0[1]);

                f32 sp1C;
                f32 sp18;
                sp18 = 1.0f - field_0x44;
                sp1C = field_0x44;

                var_r30->mScale.x = spF0[0].mScale.x * sp18
                                    + spF0[1].mScale.x * sp1C;
                var_r30->mScale.y = spF0[0].mScale.y * sp18
                                    + spF0[1].mScale.y * sp1C;
                var_r30->mScale.z = spF0[0].mScale.z * sp18
                                    + spF0[1].mScale.z * sp1C;
                var_r30->mTranslate.x = spF0[0].mTranslate.x * sp18
                                    + spF0[1].mTranslate.x * sp1C;
                var_r30->mTranslate.y = spF0[0].mTranslate.y * sp18
                                        + spF0[1].mTranslate.y * sp1C;
                var_r30->mTranslate.z = spF0[0].mTranslate.z * sp18
                                        + spF0[1].mTranslate.z * sp1C;

                for (int i = 0; i < 2; i++) {
                    JMAEulerToQuat(spF0[i].mRotation.x, spF0[i].mRotation.y, spF0[i].mRotation.z, &sp60[i]);
                }

                f32 var_f29 = sp1C / (sp18 + sp1C);

                JMAQuatLerp(&sp60[0], &sp60[1], var_f29, var_r27);
                mDoMtx_quat(spC0, var_r27);
                mDoExt_setJ3DData(spC0, var_r30, jnt_no);
            }
        } else if (field_0x40 == NULL) {
            f32 var_f31 = (mCurMorf - mPrevMorf) / (1.0f - mPrevMorf);
            f32 var_f30 = 1.0f - var_f31;

            mpAnm->getTransform(jnt_no, &sp80);
            if (mpCallback1 != NULL) {
                mpCallback1->execute(jnt_no, &sp80);
            }

            JMAEulerToQuat(sp80.mRotation.x, sp80.mRotation.y, sp80.mRotation.z, &sp20);
            JMAQuatLerp(var_r27, &sp20, var_f31, var_r27);
            mDoMtx_quat(spC0, var_r27);

            var_r30->mTranslate.x = var_r30->mTranslate.x * var_f30
                                    + sp80.mTranslate.x * var_f31;
            var_r30->mTranslate.y = var_r30->mTranslate.y * var_f30
                                    + sp80.mTranslate.y * var_f31;
            var_r30->mTranslate.z = var_r30->mTranslate.z * var_f30
                                    + sp80.mTranslate.z * var_f31;
            var_r30->mScale.x = var_r30->mScale.x * var_f30
                                + sp80.mScale.x * var_f31;
            var_r30->mScale.y = var_r30->mScale.y * var_f30
                                + sp80.mScale.y * var_f31;
            var_r30->mScale.z = var_r30->mScale.z * var_f30
                                + sp80.mScale.z * var_f31;

            mDoExt_setJ3DData(spC0, var_r30, jnt_no);
        } else {
            mpAnm->getTransform(jnt_no, &spF0[0]);
            field_0x40->getTransform(jnt_no, &spF0[1]);

            f32 sp14, sp10;
            sp10 = 1.0f - field_0x44;
            sp14 = field_0x44;

            sp80.mScale.x = spF0[0].mScale.x * sp10
                                + spF0[1].mScale.x * sp14;
            sp80.mScale.y = spF0[0].mScale.y * sp10
                                + spF0[1].mScale.y * sp14;
            sp80.mScale.z = spF0[0].mScale.z * sp10
                                + spF0[1].mScale.z * sp14;
            sp80.mTranslate.x = spF0[0].mTranslate.x * sp10
                                + spF0[1].mTranslate.x * sp14;
            sp80.mTranslate.y = spF0[0].mTranslate.y * sp10
                                    + spF0[1].mTranslate.y * sp14;
            sp80.mTranslate.z = spF0[0].mTranslate.z * sp10
                                    + spF0[1].mTranslate.z * sp14;

            for (int i = 0; i < 2; i++) {
                JMAEulerToQuat(spF0[i].mRotation.x, spF0[i].mRotation.y, spF0[i].mRotation.z, &sp40[i]);
            }

            f32 var_f31 = sp14 / (sp10 + sp14);
            JMAQuatLerp(&sp40[0], &sp40[1], var_f31, &sp20);

            var_f31 = (mCurMorf - mPrevMorf) / (1.0f - mPrevMorf);
            f32 var_f30 = 1.0f - var_f31;
            JMAQuatLerp(var_r27, &sp20, var_f31, var_r27);

            var_r30->mTranslate.x = var_r30->mTranslate.x * var_f30
                                    + sp80.mTranslate.x * var_f31;
            var_r30->mTranslate.y = var_r30->mTranslate.y * var_f30
                                    + sp80.mTranslate.y * var_f31;
            var_r30->mTranslate.z = var_r30->mTranslate.z * var_f30
                                    + sp80.mTranslate.z * var_f31;
            var_r30->mScale.x = var_r30->mScale.x * var_f30
                                + sp80.mScale.x * var_f31;
            var_r30->mScale.y = var_r30->mScale.y * var_f30
                                + sp80.mScale.y * var_f31;
            var_r30->mScale.z = var_r30->mScale.z * var_f30
                                + sp80.mScale.z * var_f31;

            mDoMtx_quat(spC0, var_r27);
            mDoExt_setJ3DData(spC0, var_r30, jnt_no);
        }

        if (mpCallback2 != NULL) {
            mpCallback2->execute(jnt_no);
        }
    }
}

/* 80011D70-80011FCC 00C6B0 025C+00 1/1 0/0 2/2 .text
 * setAnm__15mDoExt_McaMorf2FP15J3DAnmTransformP15J3DAnmTransformfiffff */
void mDoExt_McaMorf2::setAnm(J3DAnmTransform* param_0, J3DAnmTransform* param_1, f32 param_2,
                             int i_attr, f32 i_morf, f32 i_speed, f32 i_start, f32 i_end) {
    mpAnm = param_0;
    field_0x40 = param_1;
    field_0x44 = param_2;

    setStartFrame(i_start);

    if (i_end < 0.0f) {
        if (mpAnm == NULL) {
            mFrameCtrl.init(0);
        } else {
            mFrameCtrl.init(mpAnm->getFrameMax());
        }
    } else {
        mFrameCtrl.init(i_end);
    }

    if (i_attr < 0) {
        i_attr = param_0->getAttribute();
    }

    setPlayMode(i_attr);
    setPlaySpeed(i_speed);
    
    if (i_speed >= 0.0f) {
        setFrame(i_start);
    } else {
        setFrame(mFrameCtrl.getEnd());
    }

    setLoopFrame(getFrame());
    setMorf(i_morf);

    if (mpSound != NULL) {
        if (param_2 < 0.5f) {
            mpBas = ((mDoExt_transAnmBas*)param_0)->getBas();
        } else {
            mpBas = ((mDoExt_transAnmBas*)param_1)->getBas();
        }

        if (mpBas != NULL) {
            mpSound->initAnime(mpBas, getPlaySpeed() >= 0.0f, getLoopFrame(), getFrame());
        }
    }
}

/* 80011FCC-800120A0 00C90C 00D4+00 0/0 0/0 2/2 .text            setAnmRate__15mDoExt_McaMorf2Ff */
void mDoExt_McaMorf2::setAnmRate(f32 param_0) {
    void* pBas = NULL;
    field_0x44 = param_0;
    if (mpSound != NULL) {
        if (field_0x44 < 0.5f) {
            if (mpAnm != NULL) {
                pBas = ((mDoExt_transAnmBas*)mpAnm)->getBas();
            }
        } else if (field_0x40 != NULL) {
            pBas = ((mDoExt_transAnmBas*)field_0x40)->getBas();
        }
        if (pBas != mpBas) {
            if (pBas != NULL) {
                mpBas = pBas;
                mpSound->initAnime(mpBas, getPlaySpeed() >= 0.0f, getLoopFrame(), getFrame());
            } else {
                mpBas = NULL;
            }
        }
    }
}

/* 800120A0-80012144 00C9E0 00A4+00 0/0 0/0 1/1 .text            play__15mDoExt_McaMorf2FUlSc */
int mDoExt_McaMorf2::play(u32 param_0, s8 param_1) {
    frameUpdate();

    if (mpSound != NULL) {
        mpSound->framework(param_0, param_1);

        if (mpBas != NULL) {
            mpSound->updateAnime(getFrame(), getPlaySpeed());
        }
    }

    return isStop();
}

/* 80012144-80012170 00CA84 002C+00 0/0 0/0 1/1 .text            entryDL__15mDoExt_McaMorf2Fv */
void mDoExt_McaMorf2::entryDL() {
    if (mpModel != NULL) {
        mDoExt_modelEntryDL(mpModel);
    }
}

/* 80012170-800121E8 00CAB0 0078+00 0/0 0/0 1/1 .text            modelCalc__15mDoExt_McaMorf2Fv */
void mDoExt_McaMorf2::modelCalc() {
    if (mpModel != NULL) {
        if (mpAnm != NULL) {
            mpAnm->setFrame(mFrameCtrl.getFrame());
        }

        if (field_0x40 != NULL) {
            field_0x40->setFrame(mFrameCtrl.getFrame());
        }

        mpModel->getModelData()->getJointNodePointer(0)->setMtxCalc((J3DMtxCalc*)this);
        mpModel->calc();
    }
}

/* 800121E8-80012220 00CB28 0038+00 1/1 0/0 1/1 .text            stopZelAnime__15mDoExt_McaMorf2Fv
 */
void mDoExt_McaMorf2::stopZelAnime() {
    if (mpSound != NULL) {
        mpSound->deleteObject();
    }
}

/* 80012220-800123D0 00CB60 01B0+00 1/0 0/0 0/0 .text            draw__19mDoExt_invJntPacketFv */
void mDoExt_invJntPacket::draw() {
    J3DShape::resetVcdVatCache();

    if (field_0x16) {
        J3DModelData* sp20 = field_0x10->getModelData();
        J3DJoint* sp1C = sp20->getJointNodePointer(field_0x14);

        for (J3DMaterial* mesh = sp1C->getMesh(); mesh != NULL; mesh = mesh->getNext()) {
            mesh->load();
            J3DMatPacket* sp18 = field_0x10->getMatPacket(mesh->getIndex());
            sp18->callDL();
            GFSetZMode(1, GX_LEQUAL, 1);
            GFSetBlendModeEtc(GX_BM_NONE, GX_BL_ZERO, GX_BL_ZERO, GX_LO_CLEAR, 0, 0, 1);

            J3DShapePacket* shapePkt = sp18->getShapePacket();
            JUT_ASSERT(0x1393, shapePkt != 0);
            shapePkt->getShape()->loadPreDrawSetting();

            do {
                if (!shapePkt->getShape()->checkFlag(1)) {
                    if (shapePkt->getDisplayListObj() != NULL) {
                        shapePkt->getDisplayListObj()->callDL();
                    }

                    shapePkt->drawFast();
                }

                shapePkt = (J3DShapePacket*)shapePkt->getNextPacket();
            } while (shapePkt != NULL);
        }
    } else {
        static u8 l_invisibleMat[] ALIGN_DECL(32) = {
            0x10, 0x00, 0x00, 0x10, 0x0E, 0x00, 0x00, 0x04, 0x00, 0x10, 0x00, 0x00, 0x10, 0x10, 0x00,
            0x00, 0x04, 0x00, 0x61, 0x28, 0x38, 0x00, 0x00, 0x61, 0xC0, 0x08, 0xFF, 0xFC, 0x61, 0xC1,
            0x08, 0xFF, 0xF0, 0x61, 0xF3, 0x7F, 0x00, 0x00, 0x61, 0x43, 0x00, 0x00, 0x41, 0x61, 0x40,
            0x00, 0x00, 0x17, 0x61, 0xEE, 0x00, 0x00, 0x00, 0x61, 0xEF, 0x00, 0x00, 0x00, 0x61, 0xF0,
            0x00, 0x00, 0x00, 0x61, 0xF1, 0x00, 0x00, 0x00, 0x61, 0xF2, 0x00, 0x00, 0x00, 0x61, 0x41,
            0x00, 0x00, 0x04, 0x10, 0x00, 0x00, 0x10, 0x3F, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00,
            0x10, 0x09, 0x00, 0x00, 0x00, 0x01, 0x61, 0x00, 0x00, 0x40, 0x10, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
        };

        GXCallDisplayList(l_invisibleMat, 0x80);

        J3DModelData* sp14 = field_0x10->getModelData();
        J3DJoint* sp10 = sp14->getJointNodePointer(field_0x14);
        J3DMaterial* mesh = sp10->getMesh();

        sp14->getShapeNodePointer(0)->loadPreDrawSetting();

        for (; mesh != NULL; mesh = mesh->getNext()) {
            J3DShape* spC = mesh->getShape();
            if (!spC->checkFlag(1)) {
                J3DShapePacket* shapePkt = field_0x10->getShapePacket(spC->getIndex());
                shapePkt->drawFast();
            }
        }
    }

    J3DShape::resetVcdVatCache();
    GFSetBlendModeEtc(GX_BM_NONE, GX_BL_ZERO, GX_BL_ZERO, GX_LO_CLEAR, 1, 0, 1);
}

/* 800123D0-800125DC 00CD10 020C+00 2/2 0/0 0/0 .text            init__15mDoExt_3Dline_cFUsii */
// NONMATCHING - regalloc, probably some types are wrong
int mDoExt_3Dline_c::init(u16 param_0, int param_1, int param_2) {
    field_0x0 = new cXyz[param_0];
    if (field_0x0 == NULL) {
        return 0;
    }

    if (param_1 != 0) {
        field_0x4 = new f32[param_1];
        if (field_0x4 == NULL) {
            return 0;
        }
    } else {
        field_0x4 = NULL;
    }

    int sp20 = param_0 * 2;

    field_0x8 = new cXyz[sp20];
    if (field_0x8 == NULL) {
        return 0;
    }

    field_0xc = new cXyz[sp20];
    if (field_0xc == NULL) {
        return 0;
    }

    field_0x10 = new u8[param_0 * 3];
    if (field_0x10 == NULL) {
        return 0;
    }

    field_0x14 = new u8[param_0 * 3];
    if (field_0x14 == NULL) {
        return 0;
    }

    if (param_2 != 0) {
        field_0x18 = new f32[sp20];
        if (field_0x18 == NULL) {
            return 0;
        }

        field_0x1c = new f32[sp20];
        if (field_0x1c == NULL) {
            return 0;
        }

        f32* var_r28 = field_0x18;
        f32* var_r27 = field_0x1c;
        for (int i = 0; i < param_0; i++) {
            var_r28[0] = 0.0f;
            var_r27[0] = 0.0f;

            var_r28[2] = 1.0f;
            var_r27[2] = 1.0f;

            var_r28 += 4;
            var_r27 += 4;
        }
    }

    return 1;
}

/* 800125E0-800126BC 00CF20 00DC+00 0/0 0/0 12/12 .text            init__19mDoExt_3DlineMat0_cFUsUsi
 */
int mDoExt_3DlineMat0_c::init(u16 param_0, u16 param_1, int param_2) {
    field_0x10 = param_0;
    field_0x12 = param_1;

    field_0x18 = new mDoExt_3Dline_c[param_0];
    if (field_0x18 == NULL) {
        return 0;
    }

    for (int i = 0; i < param_0; i++) {
        if (!field_0x18[i].init(param_1, param_2, 0)) {
            return 0;
        }
    }

    field_0x4 = NULL;
    field_0x16 = 0;
    return 1;
}

/* 800126BC-800126C0 00CFFC 0004+00 2/2 0/0 0/0 .text            __ct__15mDoExt_3Dline_cFv */
mDoExt_3Dline_c::mDoExt_3Dline_c() {}

/* 803A30C0-803A3160 0001E0 0084+1C 1/1 0/0 0/0 .data            l_matDL */
static u8 l_matDL[132] ALIGN_DECL(32) = {
    0x08, 0x30, 0x3C, 0xF3, 0xCF, 0x00, 0x10, 0x00, 0x00, 0x10, 0x18, 0x3C, 0xF3, 0xCF, 0x00,
    0x10, 0x00, 0x00, 0x10, 0x0E, 0x00, 0x00, 0x7F, 0x32, 0x10, 0x00, 0x00, 0x10, 0x10, 0x00,
    0x00, 0x05, 0x00, 0x10, 0x00, 0x00, 0x10, 0x0C, 0xFF, 0xFF, 0xFF, 0xFF, 0x61, 0x28, 0x38,
    0x00, 0x00, 0x61, 0xC0, 0x28, 0xF6, 0xAF, 0x61, 0xC1, 0x08, 0xFF, 0xE0, 0x61, 0x43, 0x00,
    0x00, 0x41, 0x61, 0x40, 0x00, 0x00, 0x17, 0x61, 0x41, 0x00, 0x00, 0x0C, 0x61, 0xF3, 0x7F,
    0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x3F, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10,
    0x09, 0x00, 0x00, 0x00, 0x01, 0x61, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803A3160-803A31F0 000280 008D+03 1/1 0/0 0/0 .data            l_mat1DL */
static u8 l_mat1DL[141] ALIGN_DECL(32) = {
    0x10, 0x00, 0x00, 0x10, 0x40, 0xFF, 0xFF, 0x42, 0x80, 0x08, 0x30, 0x3C, 0xF3, 0xCF, 0x00, 0x10,
    0x00, 0x00, 0x10, 0x18, 0x3C, 0xF3, 0xCF, 0x00, 0x10, 0x00, 0x00, 0x10, 0x0E, 0x00, 0x00, 0x7F,
    0x32, 0x10, 0x00, 0x00, 0x10, 0x10, 0x00, 0x00, 0x05, 0x00, 0x10, 0x00, 0x00, 0x10, 0x0C, 0xFF,
    0xFF, 0xFF, 0xFF, 0x61, 0x28, 0x38, 0x00, 0x40, 0x61, 0xC0, 0x28, 0xFA, 0x8F, 0x61, 0xC1, 0x08,
    0xFF, 0xF0, 0x61, 0x43, 0x00, 0x00, 0x41, 0x61, 0x40, 0x00, 0x00, 0x17, 0x61, 0x41, 0x00, 0x00,
    0x0C, 0x61, 0xF3, 0x7F, 0x00, 0x00, 0x10, 0x00, 0x00, 0x10, 0x3F, 0x00, 0x00, 0x00, 0x01, 0x10,
    0x00, 0x00, 0x10, 0x09, 0x00, 0x00, 0x00, 0x01, 0x61, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 800126C0-80012774 00D000 00B4+00 1/0 0/0 0/0 .text setMaterial__19mDoExt_3DlineMat0_cFv */
void mDoExt_3DlineMat0_c::setMaterial() {
    j3dSys.reinitGX();
    GXSetNumIndStages(0);
    dKy_setLight_again();
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_INDEX16);
    GXSetVtxDesc(GX_VA_NRM, GX_INDEX16);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_CLR_RGB, GX_RGB8, 6);
    dKy_GxFog_set();
    GXCallDisplayList(l_matDL, 0x80);
    GXLoadPosMtxImm(j3dSys.getViewMtx(), GX_PNMTX0);
    GXLoadNrmMtxImm(g_mDoMtx_identity, GX_PNMTX0);
}

/* 80012774-80012874 00D0B4 0100+00 1/0 0/0 0/0 .text            draw__19mDoExt_3DlineMat0_cFv */
// NONMATCHING - issues with the iterators
void mDoExt_3DlineMat0_c::draw() {
    GXSetTevColor(GX_TEVREG2, field_0x8);

    if (field_0xc != NULL) {
        dKy_Global_amb_set(field_0xc);
    }

    mDoExt_3Dline_c* var_r28 = field_0x18;
    int var_r26 = (field_0x14 & 0x7FFF) << 1;

    for (int i = 0; i < field_0x10; i++) {
        GXSetArray(GX_VA_POS, var_r28[field_0x16].field_0x8, sizeof(cXyz));
        GXSetArray(GX_VA_NRM, var_r28[field_0x16].field_0x10, 3);

        GXBegin(GX_TRIANGLESTRIP, GX_VTXFMT0, var_r26);
        for (u16 j = 0; j < (u16)var_r26;) {
            GXPosition1x16(j);
            GXNormal1x16(j);
            j++;

            GXPosition1x16(j);
            GXNormal1x16(j);
            j++;
        }
        GXEnd();
        var_r28++;
    }

    field_0x16 ^= 1;
}

/* 80012874-80012E3C 00D1B4 05C8+00 0/0 0/0 2/2 .text
 * update__19mDoExt_3DlineMat0_cFifR8_GXColorUsP12dKy_tevstr_c  */
void mDoExt_3DlineMat0_c::update(int param_0, f32 param_1, GXColor& param_2, u16 param_3,
                                     dKy_tevstr_c* param_4) {
    // NONMATCHING
}

/* 80012E3C-80013360 00D77C 0524+00 0/0 0/0 9/9 .text
 * update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c     */
// NONMATCHING
void mDoExt_3DlineMat0_c::update(int param_0, GXColor& param_1, dKy_tevstr_c* param_2) {
    field_0x8 = param_1;
    field_0xc = param_2;

    if (param_0 < 0) {
        field_0x14 = field_0x12;
    } else if (param_0 > field_0x12) {
        field_0x14 = field_0x12;
    } else {
        field_0x14 = param_0;
    }

    view_class* view_p = dComIfGd_getView();
    mDoExt_3Dline_c* sp30 = field_0x18;
    int sp2C = field_0x14 * 2;
    int sp28 = field_0x14 * 12;

    cXyz sp134;
    cXyz sp128;
    cXyz sp11C;
    cXyz sp110;

    for (int i = 0; i < field_0x10; i++) {
        cXyz* pos_p = sp30->field_0x0;
        f32* size_p = sp30->field_0x4;
        JUT_ASSERT(0x1545, size_p != 0);

        cXyz* sp20 = &sp30->field_0x8[field_0x16];
        cXyz* sp24 = sp20;

        u8* sp1C = &sp30->field_0x10[field_0x16];

        u8* var_r30 = sp1C;
        u8* var_r29 = var_r30 + 3;

        sp128 = pos_p[1] - pos_p[0];
        sp134 = pos_p[0] - view_p->lookat.eye;
        sp128 = sp128.outprod(sp134);
        sp128.normalizeZP();

        var_r30[0] = sp128.x * 64.0f;
        var_r30[1] = sp128.y * 64.0f;
        var_r30[2] = sp128.z * 64.0f;
        var_r29[0] = -sp1C[0];
        var_r29[1] = -sp1C[1];
        var_r29[2] = -sp1C[2];

        sp128 *= *size_p;
        sp20[0] = pos_p[0] + sp128;
        sp20[1] = pos_p[0] - sp128;
        
        pos_p++;

        sp11C = pos_p[0] + sp128;
        sp110 = pos_p[0] - sp128;

        for (int sp10 = field_0x14 - 2; sp10 > 0; sp10--) {
            sp128 = pos_p[1] - pos_p[0];
            sp134 = pos_p[0] - view_p->lookat.eye;
            sp128 = sp128.outprod(sp134);
            sp128.normalizeZP();

            var_r30 += 6;
            var_r29 += 6;

            var_r30[0] = sp128.x * 64.0f;
            var_r30[1] = sp128.y * 64.0f;
            var_r30[2] = sp128.z * 64.0f;
            var_r29[0] = -sp1C[0];
            var_r29[1] = -sp1C[1];
            var_r29[2] = -sp1C[2];

            sp128 *= *size_p;
            sp11C += pos_p[0] + sp128;
            sp110 += pos_p[0] - sp128;
            *sp24 = sp11C * 0.5f;
            *sp20 = sp110 * 0.5f;
            
            pos_p++;

            sp11C = pos_p[0] + sp128;
            sp110 = pos_p[0] - sp128;
        }

        var_r29 += 3;

        var_r29[0] = var_r30[0];
        var_r29[1] = var_r30[1];
        var_r29[2] = var_r30[2];

        var_r30 += 3;
        var_r29 += 3;

        var_r29[0] = var_r30[0];
        var_r29[1] = var_r30[1];
        var_r29[2] = var_r30[2];

        *sp24 = sp11C;
        *sp20 = sp110;

        DCStoreRangeNoSync(sp20, sp2C);
        DCStoreRangeNoSync(sp1C, sp28);
    }
}

/* 80013360-800134F8 00DCA0 0198+00 0/0 0/0 19/19 .text init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
 */
int mDoExt_3DlineMat1_c::init(u16 param_0, u16 param_1, ResTIMG* param_2, int param_3) {
    // NONMATCHING
}

/* 800134F8-800135D0 00DE38 00D8+00 1/0 0/0 0/0 .text setMaterial__19mDoExt_3DlineMat1_cFv */
void mDoExt_3DlineMat1_c::setMaterial() {
    j3dSys.reinitGX();
    GXSetNumIndStages(0);
    dKy_setLight_again();
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_INDEX16);
    GXSetVtxDesc(GX_VA_NRM, GX_INDEX16);
    GXSetVtxDesc(GX_VA_TEX0, GX_INDEX16);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_NRM, GX_CLR_RGB, GX_RGB8, 6);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_F32, 0);
    dKy_GxFog_set();
    GXCallDisplayList(l_mat1DL, 0x80);
    GXLoadPosMtxImm(j3dSys.getViewMtx(), GX_PNMTX0);
    GXLoadNrmMtxImm(g_mDoMtx_identity, GX_PNMTX0);
}

/* 800135D0-8001373C 00DF10 016C+00 1/0 0/0 0/0 .text            draw__19mDoExt_3DlineMat1_cFv */
// NONMATCHING- some smaller issues
void mDoExt_3DlineMat1_c::draw() {
    GXLoadTexObj(&mTextureObject, GX_TEXMAP0);
    GXSetTexCoordScaleManually(GX_TEXCOORD0, 1, GXGetTexObjWidth(&mTextureObject), GXGetTexObjHeight(&mTextureObject));
    GXSetTevColor(GX_TEVREG2, mColor);
    if (mpTevStr != NULL) {
        dKy_Global_amb_set(mpTevStr);
    }
    mDoExt_3Dline_c* lines = mpLines;
    s32 vert_num = (field_0x34 & 0x7fff) << 1;
    for (s32 i = 0; i < mNumLines; i++) {
        GXSetArray(GX_VA_POS, lines[mIsDrawn].field_0x8, 0xC);
        GXSetArray(GX_VA_NRM, lines[mIsDrawn].field_0x10, 0x3);
        GXSetArray(GX_VA_TEX0, lines[mIsDrawn].field_0x18, 0x8);
        GXBegin(GX_TRIANGLESTRIP, GX_VTXFMT0, vert_num);

        s16 tempJ;
        for (u32 j = 0; j < (u32)field_0x34; j += 1) {
            GXPosition1x16(j);
            GXNormal1x16(j);
            GXTexCoord1x16(j);
            tempJ = j + 1;
            GXPosition1x16(tempJ);
            GXNormal1x16(tempJ);
            GXTexCoord1x16(tempJ);
        }
        GXEnd();
        lines++;
    }
    GXSetTexCoordScaleManually(GX_TEXCOORD0, 0, 0, 0);
    mIsDrawn ^= 1;
}

/* 8001373C-80013FB0 00E07C 0874+00 0/0 0/0 6/6 .text
 * update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c  */
void mDoExt_3DlineMat1_c::update(int param_0, f32 param_1, _GXColor& param_2, u16 param_3,
                                     dKy_tevstr_c* param_4) {
    // NONMATCHING
}

/* 80013FB0-80014738 00E8F0 0788+00 0/0 0/0 14/14 .text
 * update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c     */
void mDoExt_3DlineMat1_c::update(int param_0, _GXColor& param_1, dKy_tevstr_c* param_2) {
    // NONMATCHING
}

/* 80014738-8001479C 00F078 0064+00 0/0 0/0 29/29 .text
 * setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c   */
void mDoExt_3DlineMatSortPacket::setMat(mDoExt_3DlineMat_c* i_3DlineMat) {
    if (mp3DlineMat == NULL) {
        dComIfGd_getListPacket()->entryImm(this, 0);
    }
    i_3DlineMat->field_0x4 = mp3DlineMat;
    mp3DlineMat = i_3DlineMat;
}

/* 8001479C-80014804 00F0DC 0068+00 1/0 0/0 0/0 .text draw__26mDoExt_3DlineMatSortPacketFv */
void mDoExt_3DlineMatSortPacket::draw() {
    mp3DlineMat->setMaterial();
    mDoExt_3DlineMat_c* lineMat = mp3DlineMat;
    do {
        lineMat->draw();
        lineMat = lineMat->field_0x4;
    } while (lineMat != NULL);
    J3DShape::resetVcdVatCache();
}

#ifdef DEBUG
void drawCube(MtxP mtx, cXyz* pos, const GXColor& color) {
    GXSetArray(GX_VA_POS, pos, sizeof(cXyz));
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_POS_XYZ, GX_F32, 0);
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_INDEX8);
    GXSetNumChans(1);
    GXSetChanCtrl(GX_COLOR0, GX_DISABLE, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_CLAMP,
                  GX_AF_NONE);
    GXSetNumTexGens(0);
    GXSetNumTevStages(1);
    GXSetTevColor(GX_TEVREG0, color);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_ENABLE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A0);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_ENABLE, GX_TEVPREV);
    GXSetZMode(GX_ENABLE, GX_LEQUAL, GX_ENABLE);
    GXSetBlendMode(GX_BM_BLEND, GX_BL_SRC_ALPHA, GX_BL_INV_SRC_ALPHA, GX_LO_CLEAR);
    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
    GXSetCullMode(GX_CULL_BACK);
    GXSetClipMode(GX_CLIP_ENABLE);
    GXLoadPosMtxImm(mtx, 0);
    GXSetCurrentMtx(0);

    GXBegin(GX_TRIANGLESTRIP, GX_VTXFMT0, 14);
    GXPosition1x8(4);
    GXPosition1x8(6);
    GXPosition1x8(5);
    GXPosition1x8(7);
    GXPosition1x8(3);
    GXPosition1x8(6);
    GXPosition1x8(2);
    GXPosition1x8(4);
    GXPosition1x8(0);
    GXPosition1x8(5);
    GXPosition1x8(1);
    GXPosition1x8(3);
    GXPosition1x8(0);
    GXPosition1x8(2);
    GXEnd();
}

void mDoExt_cubePacket::draw() {
    static cXyz l_pos[8] = {
        cXyz(-1.0f, 1.0f, -1.0f), cXyz(1.0f, 1.0f, -1.0f),   cXyz(-1.0f, 1.0f, 1.0f),
        cXyz(1.0f, 1.0f, 1.0f),   cXyz(-1.0f, -1.0f, -1.0f), cXyz(1.0f, -1.0f, -1.0f),
        cXyz(-1.0f, -1.0f, 1.0f), cXyz(1.0f, -1.0f, 1.0f),
    };

    mDoMtx_stack_c::transS(mPosition.x, mPosition.y, mPosition.z);
    mDoMtx_stack_c::XYZrotM(mAngle.x, mAngle.y, mAngle.z);
    mDoMtx_stack_c::scaleM(mSize.x, mSize.y, mSize.z);
    mDoMtx_stack_c::revConcat(j3dSys.getViewMtx());
    drawCube(mDoMtx_stack_c::get(), l_pos, mColor);
}

void mDoExt_cylinderPacket::draw() {
    GXSetNumChans(1);
    GXSetChanCtrl(GX_COLOR0, GX_ENABLE, GX_SRC_REG, GX_SRC_REG, 1, GX_DF_CLAMP, GX_AF_NONE);
    GXSetNumTexGens(0);
    GXSetNumTevStages(1);
    GXSetTevColor(GX_TEVREG0, mColor);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_RASC, GX_CC_C0, GX_CC_ZERO);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A0);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);

    if (field_0x28) {
        GXSetZMode(GX_ENABLE, GX_LEQUAL, GX_ENABLE);
    } else {
        GXSetZMode(GX_DISABLE, GX_LEQUAL, GX_DISABLE);
    }

    GXSetBlendMode(GX_BM_BLEND, GX_BL_SRC_ALPHA, GX_BL_INV_SRC_ALPHA, GX_LO_CLEAR);
    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
    GXSetCullMode(GX_CULL_BACK);
    GXSetClipMode(GX_CLIP_ENABLE);

    mDoMtx_stack_c::copy(j3dSys.getViewMtx());
    mDoMtx_stack_c::transM(mPosition.x, mPosition.y + mHeight * 0.5f, mPosition.z);
    mDoMtx_stack_c::scaleM(mRadius, mRadius * 0.5f, mRadius);
    mDoMtx_stack_c::XrotM(0x4000);

    GXLoadPosMtxImm(mDoMtx_stack_c::get(), 0);
    mDoMtx_stack_c::inverseTranspose();

    GXLoadNrmMtxImm(mDoMtx_stack_c::get(), 0);
    GXSetCurrentMtx(0);
    GXDrawCylinder(8);
}
#endif

/* 80014804-8001494C 00F144 0148+00 3/3 0/0 0/0 .text
 * mDoExt_initFontCommon__FPP7JUTFontPP7ResFONTP7JKRHeapPCcP10JKRArchiveUcUlUl */
static void mDoExt_initFontCommon(JUTFont** mDoExt_font, ResFONT** mDoExt_resfont, JKRHeap* param_2,
                                  char const* param_3, JKRArchive* param_4, u8 param_5,
                                  u32 param_6, u32 param_7) {
    JUT_ASSERT(7141, mDoExt_font == 0);
    JUT_ASSERT(7142, mDoExt_resfont == 0);
    *mDoExt_resfont = (ResFONT*)JKRGetResource('ROOT', param_3, param_4);
    JUT_ASSERT(7144, *mDoExt_resfont != 0);
    if (param_5 == 0) {
        u32 cacheSize = JUTCacheFont::calcCacheSize(param_7, param_6);
        JUTCacheFont* cacheFont = new (param_2, 0) JUTCacheFont(*mDoExt_resfont, cacheSize, param_2);
        if (cacheFont->isValid()) {
            *mDoExt_font = cacheFont;
            cacheFont->setPagingType(JUTCacheFont::PAGE_TYPE_1);
        }
        JKRRemoveResource(*mDoExt_resfont, NULL);
        *mDoExt_resfont = NULL;
    } else {
        JUTResFont* local_28 = new JUTResFont(*mDoExt_resfont, param_2);
        *mDoExt_font = local_28;
    }
    if (*mDoExt_font != NULL && !(*mDoExt_font)->isValid()) {
        // Failed to create cache font class
        OSReport_FatalError("\nキャッシュフォントクラス作成に失敗しました\n");
        delete *mDoExt_font;
        *mDoExt_font = NULL;
    }
    JUT_ASSERT(7183, mDoExt_font != 0);
}

/* 80450C44-80450C48 000144 0004+00 3/3 0/0 0/0 .sbss            mDoExt_font0 */
static JUTFont* mDoExt_font0;

/* 80450C48-80450C4C 000148 0004+00 2/2 0/0 0/0 .sbss            mDoExt_font0_getCount */
static int mDoExt_font0_getCount;

/* 80450C4C-80450C50 00014C 0004+00 2/2 0/0 0/0 .sbss            mDoExt_resfont0 */
static ResFONT* mDoExt_resfont0;

/* 80014994-800149F0 00F2D4 005C+00 1/1 0/0 0/0 .text            mDoExt_initFont0__Fv */
static void mDoExt_initFont0() {
    static char const fontdata[] = "rodan_b_24_22.bfn";
    mDoExt_initFontCommon(&mDoExt_font0, &mDoExt_resfont0, mDoExt_getZeldaHeap(),
                          fontdata, dComIfGp_getFontArchive(), 1, 0, 0);
}

/* 800149F0-80014A2C 00F330 003C+00 0/0 51/51 2/2 .text            mDoExt_getMesgFont__Fv */
JUTFont* mDoExt_getMesgFont() {
    if (mDoExt_font0 == NULL) {
        mDoExt_initFont0();
    }

    mDoExt_font0_getCount++;
    return mDoExt_font0;
}

/* 80014A2C-80014AA4 00F36C 0078+00 0/0 6/6 0/0 .text            mDoExt_removeMesgFont__Fv */
void mDoExt_removeMesgFont() {
    JUT_ASSERT(7238, mDoExt_font0_getCount > 0);
    if (mDoExt_font0_getCount > 0) {
        mDoExt_font0_getCount--;
        JUT_ASSERT(7241, mDoExt_font0_getCount > 0);
        if (mDoExt_font0_getCount == 0) {
            delete mDoExt_font0;
            mDoExt_font0 = NULL;
            if (mDoExt_resfont0 != NULL) {
                JKRFree(mDoExt_resfont0);
                mDoExt_resfont0 = NULL;
            }
        }
    }
}

/* 80450C50-80450C54 000150 0004+00 2/2 0/0 0/0 .sbss            mDoExt_font1 */
static JUTFont* mDoExt_font1;

/* 80450C54-80450C58 000154 0004+00 1/1 0/0 0/0 .sbss            mDoExt_font1_getCount */
static int mDoExt_font1_getCount;

/* 80450C58-80450C5C 000158 0004+00 1/1 0/0 0/0 .sbss            mDoExt_resfont1 */
static ResFONT* mDoExt_resfont1;

/* 80014AA4-80014B04 00F3E4 0060+00 1/1 0/0 0/0 .text            mDoExt_initFont1__Fv */
static void mDoExt_initFont1() {
    static char const fontdata[] = "reishotai_24_22.bfn";
    mDoExt_initFontCommon(&mDoExt_font1, &mDoExt_resfont1, mDoExt_getZeldaHeap(),
                          fontdata, dComIfGp_getRubyArchive(), 1, 1, 0x8000);
}

/* 80014B04-80014B40 00F444 003C+00 0/0 8/8 0/0 .text            mDoExt_getRubyFont__Fv */
JUTFont* mDoExt_getRubyFont() {
    if (mDoExt_font1 == NULL) {
        mDoExt_initFont1();
    }

    mDoExt_font1_getCount++;
    return mDoExt_font1;
}

/* 80450C5C-80450C60 00015C 0004+00 3/3 0/0 0/0 .sbss            mDoExt_font2 */
static JUTFont* mDoExt_font2;

/* 80450C60-80450C64 000160 0004+00 2/2 0/0 0/0 .sbss            mDoExt_font2_getCount */
static int mDoExt_font2_getCount;

/* 80450C64-80450C68 000164 0004+00 2/2 0/0 0/0 .sbss            mDoExt_resfont2 */
static ResFONT* mDoExt_resfont2;

/* 80014B40-80014BA0 00F480 0060+00 1/1 0/0 0/0 .text            mDoExt_initFont2__Fv */
static void mDoExt_initFont2() {
    static char const fontdata[] = "reishotai_24_22.bfn";
    mDoExt_initFontCommon(&mDoExt_font2, &mDoExt_resfont2, mDoExt_getZeldaHeap(),
                          fontdata, dComIfGp_getRubyArchive(), 1, 1, 0x8000);
}

/* 80014BA0-80014BDC 00F4E0 003C+00 0/0 11/11 0/0 .text            mDoExt_getSubFont__Fv */
JUTFont* mDoExt_getSubFont() {
    if (mDoExt_font2 == NULL) {
        mDoExt_initFont2();
    }

    mDoExt_font2_getCount++;
    return mDoExt_font2;
}

/* 80014BDC-80014C54 00F51C 0078+00 0/0 2/2 0/0 .text            mDoExt_removeSubFont__Fv */
void mDoExt_removeSubFont() {
    JUT_ASSERT(7354, mDoExt_font2_getCount > 0);
    if (mDoExt_font2_getCount > 0) {
        mDoExt_font2_getCount--;
        JUT_ASSERT(7357, mDoExt_font2_getCount > 0);
        if (mDoExt_font2_getCount == 0) {
            delete mDoExt_font2;
            mDoExt_font2 = NULL;
            if (mDoExt_resfont2 != NULL) {
                JKRFree(mDoExt_resfont2);
                mDoExt_resfont2 = NULL;
            }
        }
    }
}

/* 80014C54-80014D5C 00F594 0108+00 3/3 14/14 445/445 .text
 * mDoExt_J3DModel__create__FP12J3DModelDataUlUl                */
J3DModel* mDoExt_J3DModel__create(J3DModelData* i_modelData, u32 i_modelFlag, u32 i_differedDlistFlag) {
    if (i_modelData != NULL) {
        J3DModel* model = new J3DModel();

        if (model != NULL) {
            // Update the modelFlag if the model data passed in has a shared dlist object
            if (i_modelData->getMaterialNodePointer(0)->getSharedDisplayListObj() != NULL) {
                if (i_modelData->isLocked()) {
                    i_modelFlag = J3DMdlFlag_Unk20000;
                } else if (i_modelFlag == J3DMdlFlag_Unk20000) {
                    i_modelFlag |= J3DMdlFlag_Unk40000;
                } else {
                    i_modelFlag = J3DMdlFlag_Unk80000;
                }
            }

            // Set up the model
            if (!model->entryModelData(i_modelData, i_modelFlag, 1)) {
                if (i_modelFlag == J3DMdlFlag_Unk80000 &&
                    model->newDifferedDisplayList(i_differedDlistFlag))
                {
                    return NULL;
                }

                model->lock();
                return model;
            }
        }
    }

    return NULL;
}

/* 80450C68-80450C70 000168 0004+04 1/1 0/0 0/0 .sbss            aram_cache_size */
static u32 aram_cache_size;

/* 80014D5C-80014D64 00F69C 0008+00 0/0 1/1 0/0 .text            mDoExt_setAraCacheSize__FUl */
void mDoExt_setAraCacheSize(u32 size) {
    aram_cache_size = size;
}

/* 80014D64-80014D9C 00F6A4 0038+00 0/0 2/2 0/0 .text            mDoExt_GetCurrentRunningThread__Fv
 */
OSThread* mDoExt_GetCurrentRunningThread() {
    OSThread* thread = OSGetCurrentThread();
    if (thread != NULL && thread->state != 2) {
        thread = NULL;
    }

    return thread;
}

/* 80014E20-80014E7C 00F760 005C+00 1/0 2/2 0/0 .text __dt__26mDoExt_3DlineMatSortPacketFv */
mDoExt_3DlineMatSortPacket::~mDoExt_3DlineMatSortPacket() {
    // NONMATCHING
}

/* 80014E7C-80014E84 00F7BC 0008+00 1/0 0/0 0/0 .text getMaterialID__19mDoExt_3DlineMat1_cFv */
int mDoExt_3DlineMat1_c::getMaterialID() {
    return 1;
}

/* 80014E84-80014E8C 00F7C4 0008+00 1/0 0/0 0/0 .text getMaterialID__19mDoExt_3DlineMat0_cFv */
int mDoExt_3DlineMat0_c::getMaterialID() {
    return 0;
}

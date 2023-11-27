/**
 * d_a_alink_swindow.inc
 * Pause Menu Player Display
 */

/* 8013FF28-8013FF90 13A868 0068+00 2/2 0/0 0/0 .text            setArcName__9daAlink_cFi */
void daAlink_c::setArcName(int isWolf) {
    if (isWolf) {
        mArcName = l_wArcName;
        return;
    }

    if (checkCasualWearFlg()) {
        mArcName = l_bArcName;
        return;
    }

    if (checkZoraWearFlg()) {
        mArcName = l_zArcName;
        return;
    }

    if (checkMagicArmorWearFlg()) {
        mArcName = l_mArcName;
        return;
    }

    mArcName = l_kArcName;
}

inline bool checkCarvingWoodShieldEquip() {
    return dComIfGs_getSelectEquipShield() == WOOD_SHIELD;
}

inline bool checkShopWoodShieldEquip() {
    return dComIfGs_getSelectEquipShield() == SHIELD;
}

/* 8013FF90-8013FFD8 13A8D0 0048+00 2/2 0/0 0/0 .text            setShieldArcName__9daAlink_cFv */
void daAlink_c::setShieldArcName() {
    if (checkCarvingWoodShieldEquip() || !i_checkShieldGet()) {
        mShieldArcName = l_cWShdArcName;
        return;
    }

    if (checkShopWoodShieldEquip()) {
        mShieldArcName = l_sWShdArcName;
        return;
    }

    mShieldArcName = l_hyShdArcName;
}

/* 8013FFD8-80140038 13A918 0060+00 1/1 0/0 0/0 .text setOriginalHeap__9daAlink_cFPP10JKRExpHeapUl
 */
void daAlink_c::setOriginalHeap(JKRExpHeap** p_heap, u32 param_1) {
    if (*p_heap == NULL) {
        *p_heap =
            JKRExpHeap::create((param_1 + 0xF & 0xFFFFFFF0) + 0xA0, mDoExt_getGameHeap(), true);
    }
}

/* 80140038-80140064 13A978 002C+00 1/0 0/0 0/0 .text            setClothesChange__9daAlink_cFi */
void daAlink_c::setClothesChange(int param_0) {
    if (i_checkWolf()) {
        return;
    }

    mClothesChangeWaitTimer = 4;
    if (param_0 == 0) {
        return;
    }

    i_onNoResetFlg2(FLG2_UNK_200000);
}

/* 80140064-80140070 13A9A4 000C+00 0/0 1/1 0/0 .text            setShieldChange__9daAlink_cFv */
void daAlink_c::setShieldChange() {
    mShieldChangeWaitTimer = 4;
}

/* 80140070-801401F8 13A9B0 0188+00 3/3 0/0 0/0 .text            loadModelDVD__9daAlink_cFv */
int daAlink_c::loadModelDVD() {
    if (mClothesChangeWaitTimer != 0) {
        mClothesChangeWaitTimer--;

        if (mClothesChangeWaitTimer == 2) {
            mEyeHL1.remove();
            mEyeHL2.remove();
            mpWlMidnaModel = NULL;
            mpWlMidnaMaskModel = NULL;
            mpWlMidnaHandModel = NULL;
            mpWlMidnaHairModel = NULL;

            if (!i_checkNoResetFlg2(FLG2_UNK_280000)) {
                dComIfG_resDelete(&mPhaseReq, mArcName);
                cPhs_Reset(&mPhaseReq);
                field_0x0638->freeAll();

                if (mProcID == PROC_METAMORPHOSE || mProcID == PROC_METAMORPHOSE_ONLY) {
                    setArcName(!i_checkWolf());
                } else {
                    setArcName(i_checkWolf());
                }
            }
        } else if (mClothesChangeWaitTimer == 1) {
            if (i_checkNoResetFlg2(FLG2_UNK_280000)) {
                mClothesChangeWaitTimer = 0;
                changeLink(1);
            } else {
                if (dComIfG_resLoad(&mPhaseReq, mArcName, field_0x0638) == cPhs_COMPLEATE_e) {
                    mClothesChangeWaitTimer = 0;

                    if (mProcID == PROC_METAMORPHOSE || mProcID == PROC_METAMORPHOSE_ONLY) {
                        if (i_checkWolf()) {
                            changeLink(0);
                        } else {
                            changeWolf();
                        }
                    } else {
                        changeLink(1);
                    }

                    return 1;
                }
                mClothesChangeWaitTimer = 2;
            }
        }
    } else {
        return 1;
    }

    return 0;
}

/* 801401F8-80140274 13AB38 007C+00 2/2 0/0 0/0 .text            setShieldModel__9daAlink_cFv */
void daAlink_c::setShieldModel() {
    JKRHeap* heap = mAnmHeap4.setAnimeHeap();
    mShieldModel = initModel((J3DModelData*)dComIfG_getObjectRes(mShieldArcName, 3), 0);

    mDoExt_setCurrentHeap(heap);
}

/* 80140274-80140338 13ABB4 00C4+00 2/2 0/0 0/0 .text            loadShieldModelDVD__9daAlink_cFv */
int daAlink_c::loadShieldModelDVD() {
    if (mShieldChangeWaitTimer != 0) {
        mShieldChangeWaitTimer--;

        if (mShieldChangeWaitTimer == 2) {
            mShieldModel = NULL;
            dComIfG_resDelete(&mShieldPhaseReq, mShieldArcName);
            cPhs_Reset(&mShieldPhaseReq);
            field_0x0648->freeAll();
            setShieldArcName();
        } else if (mShieldChangeWaitTimer == 1) {
            if (dComIfG_resLoad(&mShieldPhaseReq, mShieldArcName, field_0x0648) == cPhs_COMPLEATE_e)
            {
                mShieldChangeWaitTimer = 0;
                setShieldModel();
            } else {
                mShieldChangeWaitTimer = 2;
            }
        }
    } else {
        return 1;
    }

    return 0;
}

/* 80140338-80140550 13AC78 0218+00 3/3 0/0 0/0 .text            changeModelDataDirect__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeModelDataDirect(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/changeModelDataDirect__9daAlink_cFi.s"
}
#pragma pop

/* 80140550-801406A8 13AE90 0158+00 3/3 0/0 0/0 .text changeModelDataDirectWolf__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeModelDataDirectWolf(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/changeModelDataDirectWolf__9daAlink_cFi.s"
}
#pragma pop

/* 801406A8-80140888 13AFE8 01E0+00 0/0 1/1 0/0 .text            initStatusWindow__9daAlink_cFv */
// regalloc
#ifdef NONMATCHING
void daAlink_c::initStatusWindow() {
    u16 var_r28;
    u16 var_r30;
    u16 var_r31;

    i_onNoResetFlg2(FLG2_STATUS_WINDOW_DRAW);
    
    void* tmpBuffer = new (0x20) void*[0x500];

    if (i_checkWolf()) {
        var_r28 = 0x2FF;
        var_r31 = 0x408;
        var_r30 = 0x3A7;
        changeModelDataDirectWolf(0);
    } else {
        var_r28 = 0x26A;
        var_r31 = 0x3AF;
        var_r30 = 0x32C;

        if (checkZoraWearAbility() && !checkZoraWearMaskDraw()) {
            field_0x06f0->hide();
        }
        changeModelDataDirect(0);
    }

    dComIfGp_getAnmArchive()->readIdxResource(tmpBuffer, 0x1400, var_r28);
    m_sWindowBck = new mDoExt_bckAnm();
    J3DAnmTransform* bck = (J3DAnmTransform*)J3DAnmLoaderDataBase::load(tmpBuffer, J3DLOADER_UNK_FLAG0);
    m_sWindowBck->init(bck, 1, 2, 1.0f, 0, -1, false);

    tmpBuffer = new (0x20) void*[0x100];

    dComIfGp_getAnmArchive()->readIdxResource(tmpBuffer, 0x400, var_r31);
    J3DAnmTexPattern* btp = (J3DAnmTexPattern*)J3DAnmLoaderDataBase::load(tmpBuffer, J3DLOADER_UNK_FLAG0);
    btp->setFrame(0.0f);
    btp->searchUpdateMaterialID(field_0x06c0);
    field_0x06c0->entryTexNoAnimator(btp);

    tmpBuffer = new (0x20) void*[0x100];

    dComIfGp_getAnmArchive()->readIdxResource(tmpBuffer, 0x400, var_r30);
    J3DAnmTextureSRTKey* btk = (J3DAnmTextureSRTKey*)J3DAnmLoaderDataBase::load(tmpBuffer, J3DLOADER_UNK_FLAG0);
    btk->setFrame(0.0f);
    btk->searchUpdateMaterialID(field_0x06c0);
    field_0x06c0->entryTexMtxAnimator(btk);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::initStatusWindow() {
    nofralloc
#include "asm/d/a/d_a_alink/initStatusWindow__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80140888-80140984 13B1C8 00FC+00 0/0 1/1 0/0 .text statusWindowExecute__9daAlink_cFPC4cXyzs */
void daAlink_c::statusWindowExecute(cXyz const* param_0, s16 param_1) {
    if (loadModelDVD()) {
        if (mSwordChangeWaitTimer != 0) {
            mSwordChangeWaitTimer--;
        }
        loadShieldModelDVD();
        setSelectEquipItem(1);
        
        if (mSwordChangeWaitTimer >= 30) {
            mSwordChangeWaitTimer = 0;
        }

        mDoMtx_stack_c::transS(*param_0);
        mDoMtx_stack_c::YrotM(param_1);
        mpLinkModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
        m_sWindowBck->play();
        m_sWindowBck->entry(field_0x064C);
        mpLinkModel->calc();

        if (i_checkWolf()) {
            setWolfItemMatrix();
        } else {
            setItemMatrix(1);
        }
    }
}

/* 80140984-80140AC8 13B2C4 0144+00 0/0 1/1 0/0 .text            statusWindowDraw__9daAlink_cFv */
void daAlink_c::statusWindowDraw() {
    if (mClothesChangeWaitTimer == 0) {
        g_env_light.settingTevStruct(12, &current.pos, &mTevStr);
        initTevCustomColor();

        if (!i_checkWolf()) {
            setWaterDropColor((J3DGXColorS10*)&waterColor);
            setDrawHand();
        }

        basicModelDraw(mpLinkModel);

        if (!i_checkWolf()) {
            basicModelDraw(mpLinkHandModel);
            basicModelDraw(mpLinkHatModel);
            basicModelDraw(mpLinkFaceModel);

            if (i_checkEquipHeavyBoots()) {
                for (int i = 0; i < 2; i++) {
                    basicModelDraw(mpLinkBootModels[i]);
                }
            }
        }

        if (checkSwordDraw()) {
            basicModelDraw(mSwordModel);
            if (!checkWoodSwordEquip()) {
                basicModelDraw(mSheathModel);
            }
        }

        if (checkShieldDraw()) {
            basicModelDraw(mShieldModel);
        }
    }
}

/* 80140AC8-80140B88 13B408 00C0+00 0/0 1/1 0/0 .text            resetStatusWindow__9daAlink_cFv */
void daAlink_c::resetStatusWindow() {
    i_offNoResetFlg2(FLG2_STATUS_WINDOW_DRAW);

    if (i_checkWolf()) {
        changeModelDataDirectWolf(1);
    } else {
        changeModelDataDirect(1);
    }

    setMatrix();
    mpLinkModel->calc();
    i_onNoResetFlg2(FLG2_STATUS_WINDOW_DRAW);
    setSelectEquipItem(0);

    if (i_checkWolf()) {
        setWolfItemMatrix();
    } else {
        setItemMatrix(0);
    }

    i_offNoResetFlg2(FLG2_STATUS_WINDOW_DRAW);
    m_sWindowBck = NULL;
}
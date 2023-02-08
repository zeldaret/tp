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
            basicModelDraw(field_0x065c);
            basicModelDraw(mpLinkHatModel);
            basicModelDraw(mpLinkFaceModel);

            if (i_checkEquipHeavyBoots()) {
                for (int i = 0; i < 2; i++) {
                    basicModelDraw(field_0x784[i]);
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
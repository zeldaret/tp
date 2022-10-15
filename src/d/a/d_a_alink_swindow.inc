/* 801406A8-80140888 13AFE8 01E0+00 0/0 1/1 0/0 .text            initStatusWindow__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::initStatusWindow() {
    nofralloc
#include "asm/d/a/d_a_alink/initStatusWindow__9daAlink_cFv.s"
}
#pragma pop

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
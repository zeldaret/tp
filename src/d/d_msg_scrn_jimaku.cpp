/**
 * d_msg_scrn_jimaku.cpp
 *
 */

#include "d/d_msg_scrn_jimaku.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J2DGraph/J2DTextBox.h"
#include "d/d_com_inf_game.h"
#include "d/d_msg_object.h"
#include "d/d_msg_scrn_light.h"
#include "d/d_pane_class.h"

extern "C" extern dMsgObject_HIO_c g_MsgObject_HIO_c;

/* 80244558-80244A74 23EE98 051C+00 0/0 1/1 0/0 .text __ct__16dMsgScrnJimaku_cFUcP10JKRExpHeap */
dMsgScrnJimaku_c::dMsgScrnJimaku_c(u8 param_0, JKRExpHeap* i_heap) {
    if (i_heap != NULL) {
        heap = i_heap;
    } else {
        heap = dComIfGp_getSubHeap2D(7);
    }

    init();

    mpScreen = new J2DScreen();
    JUT_ASSERT(0, mpScreen != 0);

    bool fg = mpScreen->setPriority("zelda_jimaku_message_text.blo", 0x20000,
                                    dComIfGp_getMsgCommonArchive());
    JUT_ASSERT(0, fg != false);
    dPaneClass_showNullPane(mpScreen);

    mpLight_c = new dMsgScrnLight_c(0, param_0);
    JUT_ASSERT(0, mpLight_c != 0);

    void* mpBuf = heap->alloc(0x106A, 0x20);
    JUT_ASSERT(0, mpBuf != 0);
    memset(mpBuf, 0, 0x106A);
    mCharInfoPtr = (CharInfo_c*)mpBuf;

    mpPmP_c = new CPaneMgr(mpScreen, 'mg_null', 3, NULL);
    JUT_ASSERT(0, mpPmP_c != 0);
    mpPmP_c->scale(g_MsgObject_HIO_c.mSubtitleScaleX, g_MsgObject_HIO_c.mSubtitleScaleY);
    field_0xcc = g_MsgObject_HIO_c.mBoxPos[0][5];
    mpPmP_c->paneTrans(0.0f, field_0xcc);

    mpTm_c[0] = new CPaneMgr(mpScreen, 'mg_e4lin', 0, NULL);
    JUT_ASSERT(0, mpTm_c[0] != 0);

    mpTm_c[1] = new CPaneMgr(mpScreen, 't4_s', 0, NULL);
    JUT_ASSERT(0, mpTm_c[1] != 0);

    mpScreen->search('n_3line')->hide();
    mpScreen->search('n_3fline')->hide();
    mpScreen->search('n_e4line')->show();

    for (int i = 0; i < 2; i++) {
        ((J2DTextBox*)mpTm_c[i]->getPanePtr())->setFont(mDoExt_getMesgFont());
        ((J2DTextBox*)mpTm_c[i]->getPanePtr())->setString(0x200, "");
        mpTm_c[i]->setBlackWhite(g_MsgObject_HIO_c.mBoxStartBlack[i][4],
                                 g_MsgObject_HIO_c.mBoxStartWhite[i][4]);

        if (mpTmr_c[i] != NULL) {
            ((J2DTextBox*)mpTmr_c[i]->getPanePtr())->setFont(mDoExt_getMesgFont());
            ((J2DTextBox*)mpTmr_c[i]->getPanePtr())->setString(0x200, "");
            mpTmr_c[i]->setBlackWhite(g_MsgObject_HIO_c.mBoxStartBlack[i][4],
                                      g_MsgObject_HIO_c.mBoxStartWhite[i][4]);
        }
    }

    ((J2DTextBox*)mpTm_c[0]->getPanePtr())->getFontSize(mFontSize);
    mTBoxWidth = mpTm_c[0]->getSizeX();
    mTBoxHeight = mpTm_c[0]->getSizeY();
    mLineSpace = ((J2DTextBox*)mpTm_c[0]->getPanePtr())->getLineSpace();
    mCharSpace = ((J2DTextBox*)mpTm_c[0]->getPanePtr())->getCharSpace();

    for (int i = 0; i < 2; i++) {
        ((J2DTextBox*)mpTm_c[i]->getPanePtr())->setLineSpace(mLineSpace);
        mpTm_c[i]->resize(mpTm_c[i]->getSizeX() * 1.2f, mpTm_c[i]->getSizeY());
    }

    mTextBoxPosX = mpTm_c[0]->getGlobalPosX();
    mTextBoxPosY = mpTm_c[0]->getGlobalPosY();

    for (int i = 0; i < 2; i++) {
        if (mpTmr_c[i] != NULL) {
            ((J2DTextBox*)mpTmr_c[i]->getPanePtr())->setLineSpace(mLineSpace);

            if (i == 0) {
                J2DTextBox::TFontSize font_size;
                ((J2DTextBox*)mpTmr_c[0]->getPanePtr())->getFontSize(font_size);
                mRubySize = font_size.mSizeX;
                mRubyCharSpace = ((J2DTextBox*)mpTmr_c[0]->getPanePtr())->getCharSpace();
            }

            mpTmr_c[i]->resize(mpTmr_c[i]->getSizeX() * 1.2f, mpTmr_c[i]->getSizeY());
        }
    }
}

/* 80244A74-80244C2C 23F3B4 01B8+00 1/0 0/0 0/0 .text            __dt__16dMsgScrnJimaku_cFv */
dMsgScrnJimaku_c::~dMsgScrnJimaku_c() {
    delete mpScreen;
    mpScreen = NULL;

    delete mpLight_c;
    mpLight_c = NULL;

    if (mCharInfoPtr != NULL) {
        heap->free(mCharInfoPtr);
        mCharInfoPtr = NULL;
    }

    delete mpPmP_c;
    mpPmP_c = NULL;

    for (int i = 0; i < 2; i++) {
        delete mpTm_c[i];
        mpTm_c[i] = NULL;

        if (mpTmr_c[i] != NULL) {
            delete mpTmr_c[i];
            mpTmr_c[i] = NULL;
        }
    }

    dComIfGp_getMsgArchive(0)->removeResourceAll();
    dComIfGp_getMsgArchive(1)->removeResourceAll();
    dComIfGp_getMsgCommonArchive()->removeResourceAll();
}

/* 80244C2C-80244D34 23F56C 0108+00 1/0 0/0 0/0 .text            exec__16dMsgScrnJimaku_cFv */
void dMsgScrnJimaku_c::exec() {
    if (isTalkNow()) {
        fukiAlpha(1.0f);
    }

    mpPmP_c->scale(g_MsgObject_HIO_c.mSubtitleScaleX, g_MsgObject_HIO_c.mSubtitleScaleY);

    for (int i = 0; i < 2; i++) {
        mpTm_c[i]->setBlackWhite(g_MsgObject_HIO_c.mBoxStartBlack[i][4],
                                 g_MsgObject_HIO_c.mBoxStartWhite[i][4]);

        if (mpTmr_c[i] != NULL) {
            mpTmr_c[i]->setBlackWhite(g_MsgObject_HIO_c.mBoxStartBlack[i][4],
                                      g_MsgObject_HIO_c.mBoxStartWhite[i][4]);
        }
    }
}

/* 80244D34-80244D8C 23F674 0058+00 1/0 0/0 0/0 .text            drawSelf__16dMsgScrnJimaku_cFv */
void dMsgScrnJimaku_c::drawSelf() {
    dComIfGp_getCurrentGrafPort()->setup2D();
    drawOutFont(0.0f, 0.0f, 1.0f);
}

/* 80244D8C-80244E2C 23F6CC 00A0+00 1/0 0/0 0/0 .text            fukiAlpha__16dMsgScrnJimaku_cFf */
void dMsgScrnJimaku_c::fukiAlpha(f32 i_alpha) {
    mpPmP_c->setAlphaRate(i_alpha * g_MsgObject_HIO_c.mSubtitleAlphaP);

    for (int i = 0; i < 2; i++) {
        mpTm_c[i]->setAlphaRate(i_alpha * mCharAlphaRate);

        if (mpTmr_c[i] != NULL) {
            mpTmr_c[i]->setAlphaRate(i_alpha * mCharAlphaRate);
        }
    }
}

/* 80244E2C-80244E30 23F76C 0004+00 1/0 0/0 0/0 .text            fukiScale__16dMsgScrnJimaku_cFf */
void dMsgScrnJimaku_c::fukiScale(f32 i_scale) {}

/* 80244E30-80244E34 23F770 0004+00 1/0 0/0 0/0 .text            fukiTrans__16dMsgScrnJimaku_cFff */
void dMsgScrnJimaku_c::fukiTrans(f32 i_posX, f32 i_posY) {}

/* 80244E34-80244E38 23F774 0004+00 1/0 0/0 0/0 .text            fontAlpha__16dMsgScrnJimaku_cFf */
void dMsgScrnJimaku_c::fontAlpha(f32 i_alpha) {}

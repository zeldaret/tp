//
// d_msg_scrn_kanban
//

#include "d/msg/d_msg_scrn_kanban.h"
#include "JSystem/J2DGraph/J2DAnmLoader.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J2DGraph/J2DTextBox.h"
#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRFileLoader.h"
#include "d/com/d_com_inf_game.h"
#include "d/msg/d_msg_object.h"
#include "d/msg/d_msg_out_font.h"
#include "d/pane/d_pane_class.h"

extern dMsgObject_HIO_c g_MsgObject_HIO_c;

/* 80244E38-8024534C 23F778 0514+00 0/0 1/1 0/0 .text __ct__16dMsgScrnKanban_cFP10JKRExpHeap */
dMsgScrnKanban_c::dMsgScrnKanban_c(JKRExpHeap* param_0) {
    static u64 const t_tag[3] = {'mg_e4lin', 'f4_w', 't4_s'};

    if (param_0 != NULL) {
        field_0xd4 = param_0;
    } else {
        field_0xd4 = dComIfGp_getSubHeap2D(7);
    }

    s32 uVar14 = field_0xd4->getTotalFreeSize();
    init();

    mpScreen = new J2DScreen();
    JUT_ASSERT(43, mpScreen != 0);
    bool fg =
        mpScreen->setPriority("zelda_kanban_stone_a.blo", 0x1020000, dComIfGp_getMsgArchive(2));
    JUT_ASSERT(45, fg != false);
    dPaneClass_showNullPane(mpScreen);

    OSInitFastCast();

    field_0xcc = (J2DAnmTransform*)J2DAnmLoaderDataBase::load(
        JKRGetNameResource("zelda_kanban_stone_a.bck", dComIfGp_getMsgArchive(2)));
    field_0xd0 = (J2DAnmTextureSRTKey*)J2DAnmLoaderDataBase::load(
        JKRGetNameResource("zelda_kanban_stone_a.btk", dComIfGp_getMsgArchive(2)));
    field_0xd0->searchUpdateMaterialID(mpScreen);
    field_0xd8 = 0.0f;

    mpPmp_c = new CPaneMgr(mpScreen, 'n_size', 2, NULL);
    JUT_ASSERT(60, mpPmp_c != 0);
    mpPmp_c->getPanePtr()->setAnimation(field_0xcc);

    field_0xcc->setFrame(1.0f);
    mpPmp_c->getPanePtr()->animationTransform();
    mpPmp_c->getPanePtr()->setAnimation((J2DAnmTransform*)NULL);
    mpPmp_c->scale(g_MsgObject_HIO_c.mBoxStoneScaleX, g_MsgObject_HIO_c.mBoxStoneScaleY);

    mpBack_c = new CPaneMgr(mpScreen, 'back_b', 0, NULL);
    JUT_ASSERT(68, mpBack_c != 0);

    mpSpot_c = new CPaneMgr(mpScreen, 'spot00', 0, NULL);
    JUT_ASSERT(72, mpSpot_c != 0);

    mpSpot_c->getPanePtr()->setAnimation(field_0xd0);
    for (int i = 0; i < 3; i++) {
        mpTm_c[i] = new CPaneMgr(mpScreen, t_tag[i], 0, NULL);
        JUT_ASSERT(81, mpTm_c[i] != 0);
        ((J2DTextBox*)mpTm_c[i]->getPanePtr())->setFont(mDoExt_getMesgFont());
    }

    mpScreen->search('n_3line')->hide();
    mpScreen->search('n_3fline')->hide();
    mpScreen->search('n_e4line')->show();

    ((J2DTextBox*)mpTm_c[0]->getPanePtr())->getFontSize(mFontSize);
    mTBoxWidth = mpTm_c[0]->getSizeX();
    mTBoxHeight = mpTm_c[0]->getSizeY();
    mLineSpace = ((J2DTextBox*)mpTm_c[0]->getPanePtr())->getLineSpace();
    mCharSpace = ((J2DTextBox*)mpTm_c[0]->getPanePtr())->getCharSpace();
    for (int i = 0; i < 3; i = i + 1) {
        ((J2DTextBox*)mpTm_c[i]->getPanePtr())->setLineSpace(mLineSpace);
        mpTm_c[i]->resize(1.2f * mpTm_c[i]->getSizeX(), mpTm_c[i]->getSizeY());
    }

    mTextBoxPosX = mpTm_c[0]->getGlobalPosX();
    mTextBoxPosY = mpTm_c[0]->CPaneMgr::getGlobalPosY();
    mTextBoxPosOffsetY = 0.0f;

    for (int i = 0; i < 3; i++) {
        if (mpTmr_c[i] != NULL) {
            ((J2DTextBox*)mpTmr_c[i]->getPanePtr())->setLineSpace(mLineSpace);
            if (i == 0) {
                J2DTextBox::TFontSize fontSize;
                ((J2DTextBox*)mpTmr_c[0]->getPanePtr())->getFontSize(fontSize);
                mRubySize = fontSize.mSizeX;
                mRubyCharSpace = ((J2DTextBox*)mpTmr_c[0]->getPanePtr())->getCharSpace();
            }
            mpTmr_c[i]->resize(1.2f * mpTmr_c[i]->getSizeX(), mpTmr_c[i]->getSizeY());
        }
    }

    OS_REPORT("remain ===> %d\n", uVar14 - field_0xd4->getTotalFreeSize());
}

/* 8024534C-80245528 23FC8C 01DC+00 1/0 0/0 0/0 .text            __dt__16dMsgScrnKanban_cFv */
dMsgScrnKanban_c::~dMsgScrnKanban_c() {
    delete mpScreen;
    mpScreen = NULL;

    delete field_0xcc;
    field_0xcc = NULL;

    delete field_0xd0;
    field_0xd0 = NULL;

    delete mpPmp_c;
    mpPmp_c = NULL;

    delete mpBack_c;
    mpBack_c = NULL;

    delete mpSpot_c;
    mpSpot_c = NULL;

    for (int i = 0; i < 3; i++) {
        delete mpTm_c[i];
        mpTm_c[i] = NULL;
        if (mpTmr_c[i] != NULL) {
            delete mpTmr_c[i];
            mpTmr_c[i] = NULL;
        }
    }

    dComIfGp_getMsgArchive(2)->removeResourceAll();
}

/* 80245528-80245618 23FE68 00F0+00 1/0 0/0 0/0 .text            exec__16dMsgScrnKanban_cFv */
void dMsgScrnKanban_c::exec() {
    field_0xd8 += 1.0f;
    if (field_0xd8 >= field_0xd0->getFrameMax()) {
        field_0xd8 -= field_0xd0->getFrameMax();
    }

    field_0xd0->setFrame(field_0xd8);
    mpScreen->animation();

    if (isTalkNow()) {
        fukiAlpha(1.0f);
    }

    mpPmp_c->scale(g_MsgObject_HIO_c.mBoxStoneScaleX, g_MsgObject_HIO_c.mBoxStoneScaleY);
}

/* 80245618-802456A0 23FF58 0088+00 1/0 0/0 0/0 .text            draw__16dMsgScrnKanban_cFv */
void dMsgScrnKanban_c::draw() {
    J2DGrafContext* grafContext = dComIfGp_getCurrentGrafPort();
    grafContext->setup2D();
    mpScreen->draw(0.0f, 0.0f, grafContext);
    mpOutFont->draw(NULL, 0.0f, 0.0f, 1.0f);
}

/* 802456A0-80245754 23FFE0 00B4+00 1/0 0/0 0/0 .text            fukiAlpha__16dMsgScrnKanban_cFf */
void dMsgScrnKanban_c::fukiAlpha(f32 param_0) {
    mpBack_c->setAlphaRate(param_0);
    mpPmp_c->setAlphaRate(param_0 * g_MsgObject_HIO_c.mBoxStoneAlphaP);
    mpSpot_c->setAlphaRate(param_0);

    for (int i = 0; i < 3; i++) {
        mpTm_c[i]->setAlphaRate(param_0 * mCharAlphaRate);
        if (mpTmr_c[i] != NULL) {
            mpTmr_c[i]->setAlphaRate(param_0 * mCharAlphaRate);
        }
    }
}
/* 80245754-80245758 240094 0004+00 1/0 0/0 0/0 .text            fukiScale__16dMsgScrnKanban_cFf */
void dMsgScrnKanban_c::fukiScale(f32 param_0) {}

/* 80245758-8024575C 240098 0004+00 1/0 0/0 0/0 .text            fukiTrans__16dMsgScrnKanban_cFff */
void dMsgScrnKanban_c::fukiTrans(f32 param_0, f32 param_1) {}

#include "d/dolzel.h"

#include "d/d_msg_scrn_boss.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "d/d_msg_object.h"
#include "d/d_pane_class.h"

extern "C" extern dMsgObject_HIO_c g_MsgObject_HIO_c;

/* 8023C5C8-8023C928 236F08 0360+00 0/0 1/1 0/0 .text            __ct__14dMsgScrnBoss_cFv */
dMsgScrnBoss_c::dMsgScrnBoss_c() {
    static u64 t_tag[7] = {
        'sfontb0', 'sfontb1', 'sfontb2', 'sfontl0', 'sfontl1', 'sfontl2', 'sfont00',
    };

    init();

    mpScreen = new J2DScreen();
    mpScreen->setPriority("zelda_boss_name.blo", 0x20000, dComIfGp_getMsgArchive(4));
    dPaneClass_showNullPane(mpScreen);

    mpPmP_c = new CPaneMgr(mpScreen, 'n_all', 2, NULL);
    mpPmP_c->scale(g_MsgObject_HIO_c.mBossNameScaleX, g_MsgObject_HIO_c.mBossNameScaleY);

    mpFontParent = new CPaneMgr(mpScreen, 's_font_n', 0, NULL);
    mpFontParent->scale(g_MsgObject_HIO_c.mBossNameCharSizeX, g_MsgObject_HIO_c.mBossNameCharSizeY);
    mpFontParent->paneTrans(g_MsgObject_HIO_c.mBossNameCharPosX,
                            g_MsgObject_HIO_c.mBossNameCharPosY);

    mpBaseParent = new CPaneMgr(mpScreen, 'base_n', 2, NULL);
    mpBaseParent->scale(g_MsgObject_HIO_c.mBossNameBaseSizeX, g_MsgObject_HIO_c.mBossNameBaseSizeY);
    mpBaseParent->paneTrans(g_MsgObject_HIO_c.mBossNameBasePosX,
                            g_MsgObject_HIO_c.mBossNameBasePosY);

    for (int i = 0; i < 7; i++) {
        mpTm_c[i] = new CPaneMgr(mpScreen, t_tag[i], 0, NULL);
        ((J2DTextBox*)mpTm_c[i]->getPanePtr())->setFont(mDoExt_getRubyFont());
        ((J2DTextBox*)mpTm_c[i]->getPanePtr())->setCharSpace(1.0f);
        ((J2DTextBox*)mpTm_c[i]->getPanePtr())->setString(0x100, "");
    }

    ((J2DTextBox*)mpTm_c[0]->getPanePtr())->getFontSize(mFontSize);
    mTBoxWidth = mpTm_c[0]->getSizeX();
    mTBoxHeight = mpTm_c[0]->getSizeY();
    mLineSpace = ((J2DTextBox*)mpTm_c[0]->getPanePtr())->getLineSpace();
    mCharSpace = ((J2DTextBox*)mpTm_c[0]->getPanePtr())->getCharSpace();

    for (int i = 0; i < 7; i++) {
        ((J2DTextBox*)mpTm_c[i]->getPanePtr())->setLineSpace(mLineSpace);
    }

    mTextBoxPosX = mpTm_c[0]->getGlobalPosX();
    mTextBoxPosY = mpTm_c[0]->getGlobalPosY();
}

/* 8023C928-8023CA88 237268 0160+00 1/0 0/0 0/0 .text            __dt__14dMsgScrnBoss_cFv */
dMsgScrnBoss_c::~dMsgScrnBoss_c() {
    delete mpScreen;
    mpScreen = NULL;

    delete mpPmP_c;
    mpPmP_c = NULL;

    delete mpFontParent;
    mpFontParent = NULL;

    delete mpBaseParent;
    mpBaseParent = NULL;

    for (int i = 0; i < 7; i++) {
        delete mpTm_c[i];
        mpTm_c[i] = NULL;
    }

    dComIfGp_getMsgArchive(4)->removeResourceAll();
}

/* 8023CA88-8023CB98 2373C8 0110+00 1/0 0/0 0/0 .text            exec__14dMsgScrnBoss_cFv */
void dMsgScrnBoss_c::exec() {
    mpPmP_c->scale(g_MsgObject_HIO_c.mBossNameScaleX, g_MsgObject_HIO_c.mBossNameScaleY);

    mpFontParent->scale(g_MsgObject_HIO_c.mBossNameCharSizeX, g_MsgObject_HIO_c.mBossNameCharSizeY);
    mpFontParent->paneTrans(g_MsgObject_HIO_c.mBossNameCharPosX,
                            g_MsgObject_HIO_c.mBossNameCharPosY);

    mpBaseParent->scale(g_MsgObject_HIO_c.mBossNameBaseSizeX, g_MsgObject_HIO_c.mBossNameBaseSizeY);
    mpBaseParent->paneTrans(g_MsgObject_HIO_c.mBossNameBasePosX,
                            g_MsgObject_HIO_c.mBossNameBasePosY);

    if (isTalkNow()) {
        fukiAlpha(1.0f);
    }
}

/* 8023CB98-8023CBF0 2374D8 0058+00 1/0 0/0 0/0 .text            drawSelf__14dMsgScrnBoss_cFv */
void dMsgScrnBoss_c::drawSelf() {
    J2DGrafContext* ctx = dComIfGp_getCurrentGrafPort();
    ctx->setup2D();
    drawOutFont(0.0f, 0.0f, 1.0f);
}

/* 8023CBF0-8023CC7C 237530 008C+00 1/0 0/0 0/0 .text            fukiAlpha__14dMsgScrnBoss_cFf */
void dMsgScrnBoss_c::fukiAlpha(f32 i_alpha) {
    mpPmP_c->setAlphaRate(i_alpha);
    mpBaseParent->setAlphaRate(i_alpha * g_MsgObject_HIO_c.mBossNameBaseAlpha);

    for (int i = 0; i < 7; i++) {
        mpTm_c[i]->setAlphaRate(i_alpha);
    }
}

/* 8023CC7C-8023CC80 2375BC 0004+00 1/0 0/0 0/0 .text            fukiScale__14dMsgScrnBoss_cFf */
void dMsgScrnBoss_c::fukiScale(f32) {}

/* 8023CC80-8023CC84 2375C0 0004+00 1/0 0/0 0/0 .text            fukiTrans__14dMsgScrnBoss_cFff */
void dMsgScrnBoss_c::fukiTrans(f32, f32) {}

/* 8023CC84-8023CC88 2375C4 0004+00 1/0 0/0 0/0 .text            fontAlpha__14dMsgScrnBoss_cFf */
void dMsgScrnBoss_c::fontAlpha(f32) {}

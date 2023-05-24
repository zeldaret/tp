// Translation Unit: msg/scrn/d_msg_scrn_arrow

#include "msg/scrn/d_msg_scrn_arrow.h"
#include "JSystem/J2DGraph/J2DAnmLoader.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "d/com/d_com_inf_game.h"
#include "d/pane/d_pane_class.h"
#include "dolphin/os/OS.h"
#include "dolphin/types.h"

/* 8023B9B4-8023BC78 2362F4 02C4+00 0/0 4/4 0/0 .text __ct__15dMsgScrnArrow_cFv */
dMsgScrnArrow_c::dMsgScrnArrow_c() {
    mScreen = new J2DScreen();
    mScreen->setPriority("zelda_window_yajirushi.blo", 0x20000, dComIfGp_getMsgArchive(0));
    dPaneClass_showNullPane(mScreen);
    i_OSInitFastCast();

    mAnmBck = (J2DAnmTransform*)J2DAnmLoaderDataBase::load(
        JKRFileLoader::getGlbResource("zelda_window_yajirushi.bck", dComIfGp_getMsgArchive(0)));
    mBckFrame = 0.0f;

    mAnmBpk = (J2DAnmColor*)J2DAnmLoaderDataBase::load(
        JKRFileLoader::getGlbResource("zelda_window_yajirushi.bpk", dComIfGp_getMsgArchive(0)));
    mAnmBpk->searchUpdateMaterialID(mScreen);
    mBpkFrame = 0.0f;

    mPaneMgr0 = new CPaneMgr(mScreen, 'set_ya_n', 0, NULL);
    mPaneMgr1 = new CPaneMgr(mScreen, '\0ya_next', 0, NULL);
    mPaneMgr1->hide();
    mPaneMgr1->mPane->setAnimation(mAnmBck);
    mScreen->search('\0yajnext')->setAnimation(mAnmBpk);
    mScreen->search('yajinexl')->setAnimation(mAnmBpk);

    mPaneMgr2 = new CPaneMgr(mScreen, 'ya_end', 0, NULL);
    mPaneMgr2->hide();
    mScreen->search('\0yaj_end')->setAnimation(mAnmBpk);
    mScreen->search('yajiendl')->setAnimation(mAnmBpk);
}

/* 8023BC78-8023BDC0 2365B8 0148+00 1/0 0/0 0/0 .text __dt__15dMsgScrnArrow_cFv */
dMsgScrnArrow_c::~dMsgScrnArrow_c() {
    delete mScreen;
    mScreen = NULL;

    delete mAnmBck;
    mAnmBck = NULL;

    delete mAnmBpk;
    mAnmBpk = NULL;

    delete mPaneMgr0;
    mPaneMgr0 = NULL;

    delete mPaneMgr1;
    mPaneMgr1 = NULL;

    delete mPaneMgr2;
    mPaneMgr2 = NULL;
}

/* 8023BDC0-8023BDF8 236700 0038+00 0/0 5/5 0/0 .text draw__15dMsgScrnArrow_cFv */
void dMsgScrnArrow_c::draw() {
    J2DGrafContext* ctx = dComIfGp_getCurrentGrafPort();
    mScreen->draw(0.0f, 0.0f, ctx);
}

/* 8023BDF8-8023BE34 236738 003C+00 0/0 5/5 0/0 .text setPos__15dMsgScrnArrow_cFff */
void dMsgScrnArrow_c::setPos(f32 x, f32 y) {
    mPaneMgr0->translate(x, y);
}

/* 8023BE34-8023BE90 236774 005C+00 0/0 9/9 0/0 .text arwAnimeInit__15dMsgScrnArrow_cFv */
void dMsgScrnArrow_c::arwAnimeInit() {
    mPaneMgr1->hide();
    mBckFrame = 0.0f;
    mAnmBck->setFrame(mBckFrame);
    mBpkFrame = 0.0f;
    mAnmBpk->setFrame(mBpkFrame);
    mScreen->animation();
}

/* 8023BE90-8023BFC4 2367D0 0134+00 0/0 4/4 0/0 .text arwAnimeMove__15dMsgScrnArrow_cFv */
void dMsgScrnArrow_c::arwAnimeMove() {
    if (!mPaneMgr1->isVisible()) {
        mPaneMgr1->show();
    }
    if (mPaneMgr2->isVisible() == true) {
        mPaneMgr2->hide();
    }
    mBckFrame += 1.0f;
    if (mBckFrame >= (f32)mAnmBck->getFrameMax()) {
        mBckFrame -= (f32)mAnmBck->getFrameMax();
    }
    mAnmBck->setFrame(mBckFrame);
    mBpkFrame += 1.0f;
    if (mBpkFrame >= (f32)mAnmBpk->getFrameMax()) {
        mBpkFrame -= (f32)mAnmBpk->getFrameMax();
    }
    mAnmBpk->setFrame(mBpkFrame);
    mScreen->animation();
}

/* 8023BFC4-8023C010 236904 004C+00 0/0 3/3 0/0 .text dotAnimeInit__15dMsgScrnArrow_cFv */
void dMsgScrnArrow_c::dotAnimeInit() {
    mPaneMgr2->hide();
    mBpkFrame = 0.0f;
    mAnmBpk->setFrame(mBpkFrame);
    mScreen->animation();
}

/* 8023C010-8023C0DC 236950 00CC+00 0/0 3/3 0/0 .text dotAnimeMove__15dMsgScrnArrow_cFv */
void dMsgScrnArrow_c::dotAnimeMove() {
    if (mPaneMgr1->isVisible() == true) {
        mPaneMgr1->hide();
    }
    if (!mPaneMgr2->isVisible()) {
        mPaneMgr2->show();
    }
    mBpkFrame += 1.0f;
    if (mBpkFrame >= (f32)mAnmBpk->getFrameMax()) {
        mBpkFrame -= (f32)mAnmBpk->getFrameMax();
    }
    mAnmBpk->setFrame(mBpkFrame);
    mScreen->animation();
}

/* 803998A0-803998A0 025F00 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

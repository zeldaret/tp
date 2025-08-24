#include "d/dolzel.h"

#include "d/d_msg_scrn_arrow.h"
#include "JSystem/J2DGraph/J2DAnmLoader.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "d/d_com_inf_game.h"
#include "d/d_pane_class.h"

/* 8023B9B4-8023BC78 2362F4 02C4+00 0/0 4/4 0/0 .text __ct__15dMsgScrnArrow_cFv */
dMsgScrnArrow_c::dMsgScrnArrow_c() {
    mpScreen = new J2DScreen();
    JUT_ASSERT(0, mpScreen != 0);
    bool fg =
        mpScreen->setPriority("zelda_window_yajirushi.blo", 0x20000, dComIfGp_getMsgArchive(0));
    JUT_ASSERT(0, fg != false);
    dPaneClass_showNullPane(mpScreen);

    OSInitFastCast();

    mpBck = (J2DAnmTransform*)J2DAnmLoaderDataBase::load(
        JKRGetNameResource("zelda_window_yajirushi.bck", dComIfGp_getMsgArchive(0)));
    mBckFrame = 0.0f;

    mpBpk = (J2DAnmColor*)J2DAnmLoaderDataBase::load(
        JKRGetNameResource("zelda_window_yajirushi.bpk", dComIfGp_getMsgArchive(0)));
    mpBpk->searchUpdateMaterialID(mpScreen);
    mBpkFrame = 0.0f;

    mpParent_c = new CPaneMgr(mpScreen, 'set_ya_n', 0, NULL);
    JUT_ASSERT(0, mpParent_c != 0);

    mpArw_c = new CPaneMgr(mpScreen, 'ya_next', 0, NULL);
    JUT_ASSERT(0, mpArw_c != 0);

    mpArw_c->hide();
    mpArw_c->mPane->setAnimation(mpBck);
    mpScreen->search('yajnext')->setAnimation(mpBpk);
    mpScreen->search('yajinexl')->setAnimation(mpBpk);

    mpDot_c = new CPaneMgr(mpScreen, 'ya_end', 0, NULL);
    JUT_ASSERT(0, mpDot_c != 0);

    mpDot_c->hide();
    mpScreen->search('yaj_end')->setAnimation(mpBpk);
    mpScreen->search('yajiendl')->setAnimation(mpBpk);
}

/* 8023BC78-8023BDC0 2365B8 0148+00 1/0 0/0 0/0 .text __dt__15dMsgScrnArrow_cFv */
dMsgScrnArrow_c::~dMsgScrnArrow_c() {
    delete mpScreen;
    mpScreen = NULL;

    delete mpBck;
    mpBck = NULL;

    delete mpBpk;
    mpBpk = NULL;

    delete mpParent_c;
    mpParent_c = NULL;

    delete mpArw_c;
    mpArw_c = NULL;

    delete mpDot_c;
    mpDot_c = NULL;
}

/* 8023BDC0-8023BDF8 236700 0038+00 0/0 5/5 0/0 .text draw__15dMsgScrnArrow_cFv */
void dMsgScrnArrow_c::draw() {
    J2DGrafContext* graf_ctx = dComIfGp_getCurrentGrafPort();
    mpScreen->draw(0.0f, 0.0f, graf_ctx);
}

/* 8023BDF8-8023BE34 236738 003C+00 0/0 5/5 0/0 .text setPos__15dMsgScrnArrow_cFff */
void dMsgScrnArrow_c::setPos(f32 i_posX, f32 i_posY) {
    mpParent_c->translate(i_posX, i_posY);
}

/* 8023BE34-8023BE90 236774 005C+00 0/0 9/9 0/0 .text arwAnimeInit__15dMsgScrnArrow_cFv */
void dMsgScrnArrow_c::arwAnimeInit() {
    mpArw_c->hide();

    mBckFrame = 0.0f;
    mpBck->setFrame(mBckFrame);

    mBpkFrame = 0.0f;
    mpBpk->setFrame(mBpkFrame);

    mpScreen->animation();
}

/* 8023BE90-8023BFC4 2367D0 0134+00 0/0 4/4 0/0 .text arwAnimeMove__15dMsgScrnArrow_cFv */
void dMsgScrnArrow_c::arwAnimeMove() {
    if (!mpArw_c->isVisible()) {
        mpArw_c->show();
    }

    if (mpDot_c->isVisible() == true) {
        mpDot_c->hide();
    }

    mBckFrame += 1.0f;
    if (mBckFrame >= (f32)mpBck->getFrameMax()) {
        mBckFrame -= (f32)mpBck->getFrameMax();
    }
    mpBck->setFrame(mBckFrame);

    mBpkFrame += 1.0f;
    if (mBpkFrame >= (f32)mpBpk->getFrameMax()) {
        mBpkFrame -= (f32)mpBpk->getFrameMax();
    }
    mpBpk->setFrame(mBpkFrame);

    mpScreen->animation();
}

/* 8023BFC4-8023C010 236904 004C+00 0/0 3/3 0/0 .text dotAnimeInit__15dMsgScrnArrow_cFv */
void dMsgScrnArrow_c::dotAnimeInit() {
    mpDot_c->hide();

    mBpkFrame = 0.0f;
    mpBpk->setFrame(mBpkFrame);

    mpScreen->animation();
}

/* 8023C010-8023C0DC 236950 00CC+00 0/0 3/3 0/0 .text dotAnimeMove__15dMsgScrnArrow_cFv */
void dMsgScrnArrow_c::dotAnimeMove() {
    if (mpArw_c->isVisible() == true) {
        mpArw_c->hide();
    }

    if (!mpDot_c->isVisible()) {
        mpDot_c->show();
    }

    mBpkFrame += 1.0f;
    if (mBpkFrame >= (f32)mpBpk->getFrameMax()) {
        mBpkFrame -= (f32)mpBpk->getFrameMax();
    }

    mpBpk->setFrame(mBpkFrame);
    mpScreen->animation();
}

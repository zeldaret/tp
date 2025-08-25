/**
 * d_msg_scrn_staff.cpp
 *
 */

#include "d/dolzel.h"

#include "d/d_msg_scrn_staff.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "d/d_msg_object.h"
#include "d/d_pane_class.h"

extern "C" extern dMsgObject_HIO_c g_MsgObject_HIO_c;

/* 803C1340-803C1370 01E460 0030+00 1/1 0/0 0/0 .data            t_tag$3752 */
static u64 t_tag[6] = {
    'right_s', 'right', 'center_s', 'center', 'left_s', 'left',
};

/* 80246B34-80246DD8 241474 02A4+00 0/0 1/1 0/0 .text            __ct__15dMsgScrnStaff_cFUc */
dMsgScrnStaff_c::dMsgScrnStaff_c(u8 unused) {
    init();

    field_0xd0 = 0.0f;
    field_0xcc = 0.0f;

    mpScreen = new J2DScreen();
    mpScreen->setPriority("zelda_staff_roll.blo", 0x20000, dComIfGp_getMsgArchive(6));
    dPaneClass_showNullPane(mpScreen);

    mpPmP_c = new CPaneMgr(mpScreen, 'ROOT', 2, NULL);
    mpScreen->search('left_n')->hide();
    mpScreen->search('right_n')->hide();

    for (int i = 0; i < 6; i++) {
        mpTm_c[i] = new CPaneMgr(mpScreen, t_tag[i], NULL, NULL);
        ((J2DTextBox*)mpTm_c[i]->getPanePtr())->setFont(mDoExt_getMesgFont());
        ((J2DTextBox*)mpTm_c[i]->getPanePtr())->setString(0x200, "");
    }

    ((J2DTextBox*)mpTm_c[0]->getPanePtr())->getFontSize(mFontSize);
    mTBoxWidth = mpTm_c[0]->getSizeX();
    mTBoxHeight = mpTm_c[0]->getSizeY();
    mLineSpace = ((J2DTextBox*)mpTm_c[0]->getPanePtr())->getLineSpace();
    mCharSpace = ((J2DTextBox*)mpTm_c[0]->getPanePtr())->getCharSpace();

    for (int i = 0; i < 6; i++) {
        ((J2DTextBox*)mpTm_c[i]->getPanePtr())->setLineSpace(mLineSpace);
        ((J2DTextBox*)mpTm_c[i]->getPanePtr())
            ->resize(mpTm_c[i]->getSizeX(), mpTm_c[i]->getSizeY());
    }

    mTextBoxPosX = mpTm_c[0]->getGlobalPosX();
    mTextBoxPosY = mpTm_c[0]->getGlobalPosY();
}

/* 80246DD8-80246EE8 241718 0110+00 1/0 0/0 0/0 .text            __dt__15dMsgScrnStaff_cFv */
dMsgScrnStaff_c::~dMsgScrnStaff_c() {
    delete mpScreen;
    mpScreen = NULL;

    delete mpPmP_c;
    mpPmP_c = NULL;

    for (int i = 0; i < 6; i++) {
        delete mpTm_c[i];
        mpTm_c[i] = 0;
    }

    dComIfGp_getMsgArchive(6)->removeResourceAll();
}

/* 80246EE8-80246F68 241828 0080+00 1/0 0/0 0/0 .text            exec__15dMsgScrnStaff_cFv */
void dMsgScrnStaff_c::exec() {
    mpPmP_c->scale(g_MsgObject_HIO_c.mStageTitleScaleX, g_MsgObject_HIO_c.mStageTitleScaleY);
    if (isTalkNow()) {
        fukiAlpha(1.0f);
    }
}

/* 80246F68-80246FC0 2418A8 0058+00 1/0 0/0 0/0 .text            drawSelf__15dMsgScrnStaff_cFv */
void dMsgScrnStaff_c::drawSelf() {
    J2DGrafContext* grafContext = dComIfGp_getCurrentGrafPort();
    grafContext->setup2D();
    drawOutFont(0.0f, 0.0f, 1.0f);
}

/* 80246FC0-80246FE4 241900 0024+00 1/0 0/0 0/0 .text            fukiAlpha__15dMsgScrnStaff_cFf */
void dMsgScrnStaff_c::fukiAlpha(f32 i_rate) {
    mpPmP_c->setAlphaRate(i_rate);
}

/* 80246FE4-80246FE8 241924 0004+00 1/0 0/0 0/0 .text            fukiScale__15dMsgScrnStaff_cFf */
void dMsgScrnStaff_c::fukiScale(f32 param_0) {}

/* 80246FE8-80246FEC 241928 0004+00 1/0 0/0 0/0 .text            fukiTrans__15dMsgScrnStaff_cFff */
void dMsgScrnStaff_c::fukiTrans(f32 param_0, f32 param_1) {}

/* 80246FEC-80246FF0 24192C 0004+00 1/0 0/0 0/0 .text            fontAlpha__15dMsgScrnStaff_cFf */
void dMsgScrnStaff_c::fontAlpha(f32 param_0) {}

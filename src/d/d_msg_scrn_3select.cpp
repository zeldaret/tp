/**
 * d_msg_scrn_3select.cpp
 * 3-way Select Message Screen
 */

#include "d/dolzel.h"

#include "d/d_msg_scrn_3select.h"
#include "JSystem/J2DGraph/J2DAnmLoader.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J2DGraph/J2DTextBox.h"
#include "cstring.h"
#include "d/d_com_inf_game.h"
#include "d/d_select_cursor.h"
#include "d/d_msg_object.h"
#include "d/d_pane_class.h"

/* 803C0C54-803C0CA0 01DD74 0048+04 2/3 0/0 0/0 .data            process */
typedef void (dMsgScrn3Select_c::*processFn)();
processFn process[] = {
    &dMsgScrn3Select_c::open1Proc,  &dMsgScrn3Select_c::open2Proc,  &dMsgScrn3Select_c::waitProc,
    &dMsgScrn3Select_c::selectProc, &dMsgScrn3Select_c::changeProc, &dMsgScrn3Select_c::closeProc,
};

/* 802390B4-802398CC 2339F4 0818+00 0/0 4/4 0/0 .text            __ct__17dMsgScrn3Select_cFv */
dMsgScrn3Select_c::dMsgScrn3Select_c() {
    static u64 const tag_name[3][12] = {
        // A
        'a_n', 'a_g', 'a_gr', 'a_m', 'w_yes_00', 'w_yes_01', 'w_yes_02', 'w_yes_03', 'w_yes_04',
        'sel_po00', 'a_kahen', 'a_cursor',

        // B
        'b_n', 'b_g', 'b_gr', 'b_m', 'w_yes_07', 'w_yes_06', 'w_yes_05', 'w_yes_08', 'w_yes_09',
        'sel_po01', 'b_kahen', 'b_cursor',

        // C
        'c_n', 'c_g', 'c_gr', 'c_m', 'w_yes_12', 'w_yes_11', 'w_yes_10', 'w_yes_13', 'w_yes_14',
        'sel_po02', 'c_kahen', 'c_cursor'
    };

    // tag_n and following data are unused so unsure how this data is properly setup
    static u64 tag_n[] = {'a_t', 'b_t', 'c_t'};
    static u32 unkdata[9] = {0};

    mpScreen = new J2DScreen();
    JUT_ASSERT(0, mpScreen != 0);

    bool fg = mpScreen->setPriority("zelda_window_3menu.blo", 0x20000, dComIfGp_getMsgArchive(0));
    JUT_ASSERT(0, fg != false);
    dPaneClass_showNullPane(mpScreen);

    OSInitFastCast();

    mpAnmBck = (J2DAnmTransform*)J2DAnmLoaderDataBase::load(
        JKRGetNameResource("zelda_window_3menu.bck", dComIfGp_getMsgArchive(0)));
    mBckFrame = 0.0f;
    mBckFrame = 190.0f;
    mOffsetX = 0.0f;

    mpAnmBpk = (J2DAnmColorKey*)J2DAnmLoaderDataBase::load(
        JKRGetNameResource("zelda_window_3menu.bpk", dComIfGp_getMsgArchive(0)));
    mpAnmBpk->searchUpdateMaterialID(mpScreen);
    mBpkFrame = 0.0f;

    mpAnmBtk = (J2DAnmTextureSRTKey*)J2DAnmLoaderDataBase::load(
        JKRGetNameResource("zelda_window_3menu.btk", dComIfGp_getMsgArchive(0)));
    mpAnmBtk->searchUpdateMaterialID(mpScreen);
    mBtkFrame = 0.0f;

    mpSelectCursor = new dSelect_cursor_c(0, 1.0f, NULL);
    JUT_ASSERT(0, mpSelectCursor != 0);
    mpSelectCursor->setAlphaRate(0.0f);

    mpParent = new CPaneMgr(mpScreen, 'abc_n', 0, NULL);
    JUT_ASSERT(0, mpParent != 0);

    for (int i = 0; i < 3; i++) {
        mCursorPos[i].x = 0.0f;
        mCursorPos[i].y = 0.0f;
        mCursorPos[i].z = 0.0f;

        mpSel_c[i] = new CPaneMgr(mpScreen, tag_name[i][0], 0, NULL);
        JUT_ASSERT(0, mpSel_c[i] != 0);
        mpSel_c[i]->hide();

        mpSelCld_c[i] = new CPaneMgr(mpScreen, tag_name[i][1], 0, NULL);
        JUT_ASSERT(0, mpSelCld_c[i] != 0);
        mpSelCld_c[i]->getPanePtr()->setAnimation(mpAnmBtk);

        mpSelCldr_c[i] = new CPaneMgr(mpScreen, tag_name[i][2], 0, NULL);
        JUT_ASSERT(0, mpSelCldr_c[i] != 0);
        mpSelCldr_c[i]->getPanePtr()->setAnimation(mpAnmBtk);

        mpSelCldm_c[i] = new CPaneMgr(mpScreen, tag_name[i][3], 0, NULL);
        JUT_ASSERT(0, mpSelCldm_c[i] != 0);
        mpSelCldm_c[i]->getPanePtr()->setAnimation(mpAnmBpk);

        for (int j = 0; j < 5; j++) {
            mpSelCldw_c[j][i] = new CPaneMgr(mpScreen, tag_name[i][4 + j], 0, NULL);
            JUT_ASSERT(0, mpSelCldw_c[j][i] != 0);
        }

        mpSelPo_c[i] = new CPaneMgr(mpScreen, tag_name[i][9], 0, NULL);
        JUT_ASSERT(0, mpSelPo_c[i] != 0);
        mpSelPo_c[i]->hide();

        mpKahen_c[i] = new CPaneMgr(mpScreen, tag_name[i][10], 0, NULL);
        JUT_ASSERT(0, mpKahen_c[i] != 0);

        mpCursor_c[i] = new CPaneMgr(mpScreen, tag_name[i][11], 0, NULL);
        JUT_ASSERT(0, mpCursor_c[i] != 0);
        mCursorPos[i] = mpCursor_c[i]->getGlobalVtxCenter(true, 0);
    }

    mpTmSel_c[0] = new CPaneMgr(mpScreen, 'a_t_e', 0, NULL);
    JUT_ASSERT(0, mpTmSel_c[0] != 0);

    mpTmSel_c[1] = new CPaneMgr(mpScreen, 'b_t_e', 0, NULL);
    JUT_ASSERT(0, mpTmSel_c[1] != 0);

    mpTmSel_c[2] = new CPaneMgr(mpScreen, 'c_t_e', 0, NULL);
    JUT_ASSERT(0, mpTmSel_c[2] != 0);

    for (int i = 0; i < 3; i++) {
        ((J2DTextBox*)(mpTmSel_c[i]->getPanePtr()))->setString(64, "");
        ((J2DTextBox*)(mpTmSel_c[i]->getPanePtr()))->setFont(mDoExt_getMesgFont());
        mpTmrSel_c[i] = NULL;
    }

    mpScreen->search('a_t_e')->show();
    mpScreen->search('b_t_e')->show();
    mpScreen->search('c_t_e')->show();
    mpScreen->search('a_tf')->hide();
    mpScreen->search('b_tf')->hide();
    mpScreen->search('c_tf')->hide();
    mpScreen->search('a_tf_f')->hide();
    mpScreen->search('b_tf_f')->hide();
    mpScreen->search('c_tf_f')->hide();
    mpScreen->search('a_t')->hide();
    mpScreen->search('b_t')->hide();
    mpScreen->search('c_t')->hide();

    mSelMsgCol = static_cast<J2DTextBox*>(mpTmSel_c[0]->getPanePtr())->getWhite();

    mBaseWidth = 0.0f;
    mWidth = 1.0f;
    field_0x108 = 0;
    mSelNo = 0;
    mLastSelNo = 0;
    field_0x110 = 0;
    mSelNum = 0;
    mSelWaitTimer = 0;
    field_0x10c = 0;
    field_0x112 = 0;
    mProcess = PROC_MAX_e;
    field_0x115 = 0xFF;
    field_0x116 = 0xFF;
    field_0x117 = 0;

    mSelMsgInactiveCol.set(0xFF, 0xFF, 0xFF, 0xFF);
}

/* 802398CC-80239BE0 23420C 0314+00 1/0 0/0 0/0 .text            __dt__17dMsgScrn3Select_cFv */
dMsgScrn3Select_c::~dMsgScrn3Select_c() {
    delete mpScreen;
    mpScreen = NULL;

    delete mpAnmBck;
    mpAnmBck = NULL;

    delete mpAnmBpk;
    mpAnmBpk = NULL;

    delete mpAnmBtk;
    mpAnmBtk = NULL;

    delete mpSelectCursor;
    mpSelectCursor = NULL;

    delete mpParent;
    mpParent = NULL;

    for (int i = 0; i < 3; i++) {
        delete mpSel_c[i];
        mpSel_c[i] = NULL;

        delete mpSelCld_c[i];
        mpSelCld_c[i] = NULL;

        delete mpSelCldr_c[i];
        mpSelCldr_c[i] = NULL;

        delete mpSelCldm_c[i];
        mpSelCldm_c[i] = NULL;

        delete mpTmSel_c[i];
        mpTmSel_c[i] = NULL;

        delete mpKahen_c[i];
        mpKahen_c[i] = NULL;

        delete mpCursor_c[i];
        mpCursor_c[i] = NULL;

        if (mpTmrSel_c[i] != NULL) {
            delete mpTmrSel_c[i];
            mpTmrSel_c[i] = NULL;
        }

        for (int j = 0; j < 5; j++) {
            delete mpSelCldw_c[j][i];
            mpSelCldw_c[j][i] = NULL;
        }

        delete mpSelPo_c[i];
        mpSelPo_c[i] = NULL;
    }
}

/* 80239C64-80239C78 2345A4 0014+00 0/0 5/5 0/0 .text            isSelect__17dMsgScrn3Select_cFv */
bool dMsgScrn3Select_c::isSelect() {
    return mProcess == PROC_SELECT_e ? TRUE : FALSE;
}

/* 80239C78-80239D08 2345B8 0090+00 0/0 5/5 0/0 .text setString__17dMsgScrn3Select_cFPcPcPc */
void dMsgScrn3Select_c::setString(char* mpText0, char* mpText1, char* mpText2) {
    if (mpTmSel_c[0] != NULL) {
        JUT_ASSERT(0, ((J2DTextBox*)(mpTmSel_c[0]->getPanePtr()))->getStringAllocByte() >
                   strlen(mpText0));
    }

    if (mpTmSel_c[1] != NULL) {
        JUT_ASSERT(0, ((J2DTextBox*)(mpTmSel_c[1]->getPanePtr()))->getStringAllocByte() >
                   strlen(mpText1));
    }

    if (mpTmSel_c[2] != NULL) {
        JUT_ASSERT(0, ((J2DTextBox*)(mpTmSel_c[2]->getPanePtr()))->getStringAllocByte() >
                   strlen(mpText2));
    }

    if (mpTmSel_c[0] != NULL) {
        strcpy(((J2DTextBox*)(mpTmSel_c[0]->getPanePtr()))->getStringPtr(), mpText0);
    }

    if (mpTmSel_c[1] != NULL) {
        strcpy(((J2DTextBox*)(mpTmSel_c[1]->getPanePtr()))->getStringPtr(), mpText1);
    }

    if (mpTmSel_c[2] != NULL) {
        strcpy(((J2DTextBox*)(mpTmSel_c[2]->getPanePtr()))->getStringPtr(), mpText2);
    }
}

/* 80239D08-80239D98 234648 0090+00 0/0 5/5 0/0 .text setRubyString__17dMsgScrn3Select_cFPcPcPc */
void dMsgScrn3Select_c::setRubyString(char* pText0, char* pText1, char* pText2) {
    if (mpTmrSel_c[0] != NULL) {
        JUT_ASSERT(0, ((J2DTextBox*)(mpTmrSel_c[0]->getPanePtr()))->getStringAllocByte() >
                   strlen(pText0));
    }

    if (mpTmrSel_c[1] != NULL) {
        JUT_ASSERT(0, ((J2DTextBox*)(mpTmrSel_c[1]->getPanePtr()))->getStringAllocByte() >
                   strlen(pText1));
    }

    if (mpTmrSel_c[2] != NULL) {
        JUT_ASSERT(0, ((J2DTextBox*)(mpTmrSel_c[2]->getPanePtr()))->getStringAllocByte() >
                   strlen(pText2));
    }

    if (mpTmrSel_c[0] != NULL) {
        strcpy(((J2DTextBox*)(mpTmrSel_c[0]->getPanePtr()))->getStringPtr(), pText0);
    }

    if (mpTmrSel_c[1] != NULL) {
        strcpy(((J2DTextBox*)(mpTmrSel_c[1]->getPanePtr()))->getStringPtr(), pText1);
    }

    if (mpTmrSel_c[2] != NULL) {
        strcpy(((J2DTextBox*)(mpTmrSel_c[2]->getPanePtr()))->getStringPtr(), pText2);
    }
}

/* 80239D98-80239DD4 2346D8 003C+00 0/0 5/5 0/0 .text            translate__17dMsgScrn3Select_cFff
 */
void dMsgScrn3Select_c::translate(f32 i_x, f32 i_y) {
    mpParent->translate(i_x, i_y);
}

/* 80239DD4-8023A094 234714 02C0+00 0/0 5/5 0/0 .text            draw__17dMsgScrn3Select_cFff */
void dMsgScrn3Select_c::draw(f32 i_xPos, f32 i_yPos) {
    J2DGrafContext* port = dComIfGp_getCurrentGrafPort();
    port->setup2D();

    if (mSelMsgInactiveCol.r != g_MsgObject_HIO_c.mSelMsgInactiveCol.r ||
        mSelMsgInactiveCol.g != g_MsgObject_HIO_c.mSelMsgInactiveCol.g ||
        mSelMsgInactiveCol.b != g_MsgObject_HIO_c.mSelMsgInactiveCol.b)
    {
        mSelMsgInactiveCol.r = g_MsgObject_HIO_c.mSelMsgInactiveCol.r;
        mSelMsgInactiveCol.g = g_MsgObject_HIO_c.mSelMsgInactiveCol.g;
        mSelMsgInactiveCol.b = g_MsgObject_HIO_c.mSelMsgInactiveCol.b;

        for (int i = 0; i < 3; i++) {
            if (i == mSelNo) {
                ((J2DTextBox*)(mpTmSel_c[i]->getPanePtr()))->setWhite(mSelMsgCol);

                if (mpTmrSel_c[i] != NULL) {
                    ((J2DTextBox*)(mpTmrSel_c[i]->getPanePtr()))->setWhite(mSelMsgCol);
                }
            } else {
                ((J2DTextBox*)(mpTmSel_c[i]->getPanePtr()))->setWhite(mSelMsgInactiveCol);

                if (mpTmrSel_c[i] != NULL) {
                    ((J2DTextBox*)(mpTmrSel_c[i]->getPanePtr()))->setWhite(mSelMsgInactiveCol);
                }
            }
        }
    }

    mpScreen->draw(i_xPos, i_yPos, port);

    if (field_0x110 != 0xFF && mSelNo != 0xFF && field_0x117 != 0) {
        f32 var_f31 = (mWidth - 1.0f) * (mpCursor_c[mSelNo]->getInitCenterPosX() -
                                              mpSelCldw_c[1][mSelNo]->getInitPosX());
        if (mWidth == 1.0f) {
            var_f31 -= 3.0f;
        }

        Vec center = mpCursor_c[mSelNo]->getGlobalVtxCenter(true, 0);
        mpSelectCursor->setPos(mOffsetX + (mCursorPos[mSelNo].x + var_f31), center.y,
                               mpCursor_c[mSelNo]->getPanePtr(), true);
        mpSelectCursor->setParam(0.9f, 0.7f, 0.05f, 0.5f, 0.5f);
        mpSelectCursor->draw();
    }
}

/* 8023A094-8023A398 2349D4 0304+00 0/0 5/5 0/0 .text selAnimeInit__17dMsgScrn3Select_cFUcUcUcfUc
 */
void dMsgScrn3Select_c::selAnimeInit(u8 i_selNum, u8 i_selNo, u8 param_2, f32 i_width, u8 param_4) {
    mSelNo = i_selNo;
    field_0x110 = i_selNo;
    mSelNum = i_selNum;
    mLastSelNo = mSelNo;
    field_0x114 = 0;
    mSelWaitTimer = 0;
    field_0x10c = 0;
    field_0x112 = param_4;

    for (int i = 0; i < 3; i++) {
        mpKahen_c[i]->paneScale(1.0f, 1.0f);
        mpCursor_c[i]->paneScale(1.0f, 1.0f);
        mpSelCldw_c[2][i]->paneScale(1.0f, 1.0f);
        mpSelCldw_c[3][i]->paneScale(1.0f, 1.0f);
        mpSelCld_c[i]->paneScale(1.0f, 1.0f);
        mpSelCldr_c[i]->paneScale(1.0f, 1.0f);
        mpSelCldm_c[i]->paneScale(1.0f, 1.0f);
        mpTmSel_c[i]->paneScale(1.0f, 1.0f);

        if (mpTmrSel_c[i] != NULL) {
            mpTmrSel_c[i]->paneScale(1.0f, 1.0f);
        }
    }

    mBaseWidth = i_width;
    if (mBaseWidth > mpTmSel_c[0]->getInitSizeX()) {
        mWidth = mBaseWidth / mpTmSel_c[0]->getInitSizeX();
    } else {
        mWidth = 1.0f;
    }

    switch (i_selNum) {
    case 2:
        mpSel_c[0]->hide();
        mpSel_c[1]->show();
        mpSel_c[2]->show();

        if (param_2 == 1) {
            mpParent->paneTrans(0.0f, mpSel_c[0]->getInitPosY() - mpSel_c[1]->getInitPosY());
        } else {
            mpParent->paneTrans(0.0f, 0.0f);
        }
        break;
    case 3:
        mpSel_c[0]->show();
        mpSel_c[1]->show();
        mpSel_c[2]->show();
        mpParent->paneTrans(0.0f, 0.0f);
        break;
    }

    mBckFrame = 190.0f;

    for (int i = 0; i < 3; i++) {
        selectAnimeTransform(i);
    }

    selectScale();
    selectTrans();

    for (int i = 0; i < 3; i++) {
        if (i == mSelNo) {
            ((J2DTextBox*)(mpTmSel_c[i]->getPanePtr()))->setWhite(mSelMsgCol);

            if (mpTmrSel_c[i] != NULL) {
                ((J2DTextBox*)(mpTmrSel_c[i]->getPanePtr()))->setWhite(mSelMsgCol);
            }
        } else {
            ((J2DTextBox*)(mpTmSel_c[i]->getPanePtr()))->setWhite(mSelMsgInactiveCol);

            if (mpTmrSel_c[i] != NULL) {
                ((J2DTextBox*)(mpTmrSel_c[i]->getPanePtr()))->setWhite(mSelMsgInactiveCol);
            }
        }
    }

    mProcess = PROC_OPEN1_e;
}

/* 8023A398-8023A680 234CD8 02E8+00 0/0 5/5 0/0 .text selAnimeMove__17dMsgScrn3Select_cFUcUcb */
bool dMsgScrn3Select_c::selAnimeMove(u8 i_selNum, u8 param_1, bool param_2) {
    field_0x110 = param_1;
    mSelNum = i_selNum;
    field_0x114 = 0;
    field_0x108 = param_2;

    (this->*process[mProcess])();

    mBpkFrame++;
    if (mBpkFrame >= mpAnmBpk->getFrameMax()) {
        mBpkFrame -= mpAnmBpk->getFrameMax();
    }
    mpAnmBpk->setFrame(mBpkFrame);

    mBtkFrame++;
    if (mBtkFrame >= mpAnmBtk->getFrameMax()) {
        mBtkFrame -= mpAnmBtk->getFrameMax();
    }
    mpAnmBtk->setFrame(mBtkFrame);

    mpScreen->animation();

    for (int i = 0; i < 3; i++) {
        if (i == mSelNo) {
            mpSelCld_c[i]->getPanePtr()->scale(1.0f, 1.0f);
            mpSelCldr_c[i]->getPanePtr()->scale(1.0f, 1.0f);
        } else {
            mpSelCld_c[i]->getPanePtr()->scale(0.0f, 0.0f);
            mpSelCldr_c[i]->getPanePtr()->scale(0.0f, 0.0f);
        }
    }

    selectTrans();

    for (int i = 0; i < 3; i++) {
        if (i == mSelNo) {
            ((J2DTextBox*)(mpTmSel_c[i]->getPanePtr()))->setWhite(mSelMsgCol);

            if (mpTmrSel_c[i] != NULL) {
                ((J2DTextBox*)(mpTmrSel_c[i]->getPanePtr()))->setWhite(mSelMsgCol);
            }
        } else {
            ((J2DTextBox*)(mpTmSel_c[i]->getPanePtr()))->setWhite(mSelMsgInactiveCol);

            if (mpTmrSel_c[i] != NULL) {
                ((J2DTextBox*)(mpTmrSel_c[i]->getPanePtr()))->setWhite(mSelMsgInactiveCol);
            }
        }
    }

    return mProcess == PROC_SELECT_e ? TRUE : FALSE;
}

/* 8023A680-8023A934 234FC0 02B4+00 0/0 9/9 0/0 .text            selAnimeEnd__17dMsgScrn3Select_cFv
 */
bool dMsgScrn3Select_c::selAnimeEnd() {
    if (mProcess == PROC_MAX_e) {
        return true;
    }

    field_0x114 = 0;

    if (mProcess != PROC_CLOSE_e) {
        mBckFrame = 199.0f;

        for (int i = 0; i < 3; i++) {
            f32 scale_x = mpSel_c[i]->getPanePtr()->getScaleX();
            f32 scale_y = mpSel_c[i]->getPanePtr()->getScaleY();

            selectAnimeTransform(i);
            mpSel_c[i]->getPanePtr()->scale(scale_x, scale_y);
        }

        mProcess = PROC_CLOSE_e;
        field_0x117 = 0;
    }

    (this->*process[mProcess])();

    mBpkFrame++;
    if (mBpkFrame >= mpAnmBpk->getFrameMax()) {
        mBpkFrame -= mpAnmBpk->getFrameMax();
    }
    mpAnmBpk->setFrame(mBpkFrame);

    mBtkFrame++;
    if (mBtkFrame >= mpAnmBtk->getFrameMax()) {
        mBtkFrame -= mpAnmBtk->getFrameMax();
    }
    mpAnmBtk->setFrame(mBtkFrame);

    mpScreen->animation();

    for (int i = 0; i < 3; i++) {
        if (i == mSelNo) {
            mpSelCld_c[i]->getPanePtr()->scale(1.0f, 1.0f);
            mpSelCldr_c[i]->getPanePtr()->scale(1.0f, 1.0f);
        } else {
            mpSelCld_c[i]->getPanePtr()->scale(0.0f, 0.0f);
            mpSelCldr_c[i]->getPanePtr()->scale(0.0f, 0.0f);
        }
    }

    selectTrans();
    return mProcess == PROC_MAX_e ? TRUE : FALSE;
}

/* 8023A934-8023A94C 235274 0018+00 0/0 5/5 0/0 .text getTextBoxWidth__17dMsgScrn3Select_cFv */
f32 dMsgScrn3Select_c::getTextBoxWidth() {
    return mpTmSel_c[0]->getSizeX();
}

/* 8023A94C-8023A95C 23528C 0010+00 0/0 5/5 0/0 .text            getFontSize__17dMsgScrn3Select_cFv
 */
f32 dMsgScrn3Select_c::getFontSize() {
    J2DTextBox::TFontSize font_size;
    ((J2DTextBox*)mpTmSel_c[0]->getPanePtr())->getFontSize(font_size);
    return font_size.mSizeX;
}

/* 8023A95C-8023A97C 23529C 0020+00 0/0 2/2 0/0 .text getRubyFontSize__17dMsgScrn3Select_cFv */
f32 dMsgScrn3Select_c::getRubyFontSize() {
    if (mpTmrSel_c[0] != NULL) {
        J2DTextBox::TFontSize font_size;
        ((J2DTextBox*)mpTmrSel_c[0]->getPanePtr())->getFontSize(font_size);
        return font_size.mSizeX;
    }

    return 0.0f;
}

/* 8023A97C-8023A98C 2352BC 0010+00 0/0 5/5 0/0 .text            getCharSpace__17dMsgScrn3Select_cFv
 */
f32 dMsgScrn3Select_c::getCharSpace() {
    return ((J2DTextBox*)mpTmSel_c[0]->getPanePtr())->getCharSpace();
}

/* 8023A98C-8023A9AC 2352CC 0020+00 0/0 2/2 0/0 .text getRubyCharSpace__17dMsgScrn3Select_cFv */
f32 dMsgScrn3Select_c::getRubyCharSpace() {
    if (mpTmrSel_c[0] != NULL) {
        return ((J2DTextBox*)mpTmrSel_c[0]->getPanePtr())->getCharSpace();
    }

    return 0.0f;
}

/* 8023A9AC-8023A9D8 2352EC 002C+00 0/0 2/2 0/0 .text getTextBoxGlobalPosX__17dMsgScrn3Select_cFi
 */
f32 dMsgScrn3Select_c::getTextBoxGlobalPosX(int i_sel) {
    return mpTmSel_c[i_sel]->getGlobalPosX();
}

/* 8023A9D8-8023AA04 235318 002C+00 0/0 2/2 0/0 .text getTextBoxGlobalPosY__17dMsgScrn3Select_cFi
 */
f32 dMsgScrn3Select_c::getTextBoxGlobalPosY(int i_sel) {
    return mpTmSel_c[i_sel]->getGlobalPosY();
}

/* 8023AA04-8023AAF4 235344 00F0+00 1/0 0/0 0/0 .text            open1Proc__17dMsgScrn3Select_cFv */
void dMsgScrn3Select_c::open1Proc() {
    f32 sel_anm_frame[3] = {204.0f, 304.0f, 404.0f};

    if (mSelNo != 0xFF) {
        mBckFrame = sel_anm_frame[mSelNo];

        for (int i = 0; i < 3; i++) {
            f32 x = mpSel_c[i]->getPosX();
            selectAnimeTransform(i);

            mpSel_c[i]->move(x, mpSel_c[i]->getPosY());
        }
    }

    mBckFrame = 190.0f;
    mProcess = PROC_OPEN2_e;
}

/* 8023AAF4-8023AC14 235434 0120+00 1/0 0/0 0/0 .text            open2Proc__17dMsgScrn3Select_cFv */
void dMsgScrn3Select_c::open2Proc() {
    f32 sel_anm_frame[3] = {204.0f, 304.0f, 404.0f};

    mBckFrame++;
    mpSelectCursor->setAlphaRate(1.0f);

    if (mBckFrame >= 199.0f) {
        if (mSelNo != 0xFF) {
            mBckFrame = sel_anm_frame[mSelNo];
        }

        field_0x117 = 1;
        mProcess = PROC_WAIT_e;
    }

    for (int i = 0; i < 3; i++) {
        f32 scale_x = mpSel_c[i]->getPanePtr()->getScaleX();
        f32 scale_y = mpSel_c[i]->getPanePtr()->getScaleY();

        selectAnimeTransform(i);
        mpSel_c[i]->getPanePtr()->scale(scale_x, scale_y);
    }
}

/* 8023AC14-8023AC44 235554 0030+00 1/0 0/0 0/0 .text            waitProc__17dMsgScrn3Select_cFv */
void dMsgScrn3Select_c::waitProc() {
    mSelWaitTimer++;

    if (mSelWaitTimer > g_MsgObject_HIO_c.mSelWaitFrame) {
        mProcess = PROC_SELECT_e;
    }
}

/* 8023AC44-8023AE68 235584 0224+00 1/0 0/0 0/0 .text            selectProc__17dMsgScrn3Select_cFv
 */
void dMsgScrn3Select_c::selectProc() {
    if (mSelNo != field_0x110) {
        mLastSelNo = mSelNo;
        mSelNo = field_0x110;

        switch (mLastSelNo) {
        case 0:
            if (mSelNo == 1) {
                mBckFrame = 303.0f;
                selectAnimeTransform(1);

                mBckFrame = 300.0f;
                selectAnimeTransform(0);
            } else if (mSelNo == 2) {
                mBckFrame = 403.0f;
                selectAnimeTransform(2);

                mBckFrame = 400.0f;
                selectAnimeTransform(0);
            }
            break;
        case 1:
            if (mSelNo == 0) {
                mBckFrame = 300.0f;
                selectAnimeTransform(0);

                mBckFrame = 303.0f;
                selectAnimeTransform(1);
            } else if (mSelNo == 2) {
                mBckFrame = 403.0f;
                selectAnimeTransform(2);

                mBckFrame = 400.0f;
                selectAnimeTransform(1);
            }
            break;
        case 2:
            if (mSelNo == 1) {
                mBckFrame = 400.0f;
                selectAnimeTransform(1);

                mBckFrame = 403.0f;
                selectAnimeTransform(2);
            } else if (mSelNo == 0) {
                mBckFrame = 300.0f;
                selectAnimeTransform(0);

                mBckFrame = 303.0f;
                selectAnimeTransform(2);
            }
            break;
        case 0xFF:
            if (mSelNo == 0) {
                mBckFrame = 300.0f;
            } else if (mSelNo == 1) {
                mBckFrame = 303.0f;
            } else if (mSelNo == 2) {
                mBckFrame = 403.0f;
            }

            for (int i = 0; i < 3; i++) {
                selectAnimeTransform(i);
            }
            break;
        }

        if (mLastSelNo != 0xFF) {
            field_0x10c = 0;
            mProcess = PROC_CHANGE_e;
        } else {
            mProcess = PROC_SELECT_e;
        }
    }
}

/* 8023AE68-8023B148 2357A8 02E0+00 1/0 0/0 0/0 .text            changeProc__17dMsgScrn3Select_cFv
 */
void dMsgScrn3Select_c::changeProc() {
    if (mSelNo == 0xFF) {
        if (mLastSelNo == 0) {
            mBckFrame = 303.0f;
            selectAnimeTransform(0);
        } else if (mLastSelNo == 1) {
            mBckFrame = 300.0f;
            selectAnimeTransform(1);
        } else if (mLastSelNo == 2) {
            mBckFrame = 400.0f;
            selectAnimeTransform(2);
        }

        mProcess = PROC_SELECT_e;
    } else {
        switch (mLastSelNo) {
        case 0:
            if (mSelNo == 1) {
                if (field_0x108 != 0) {
                    mBckFrame = 303.0f;
                } else {
                    mBckFrame++;
                }

                selectAnimeTransform(0);

                if (mBckFrame >= 303.0f) {
                    mProcess = PROC_SELECT_e;
                }
            } else if (mSelNo == 2) {
                if (field_0x108 != 0) {
                    mBckFrame = 403.0f;
                } else {
                    mBckFrame++;
                }

                selectAnimeTransform(0);

                if (mBckFrame >= 403.0f) {
                    mProcess = PROC_SELECT_e;
                }
            }
            break;
        case 1:
            if (mSelNo == 0) {
                if (field_0x108 != 0) {
                    mBckFrame = 300.0f;
                } else {
                    mBckFrame--;
                }

                selectAnimeTransform(1);

                if (mBckFrame <= 300.0f) {
                    mProcess = PROC_SELECT_e;
                }
            } else if (mSelNo == 2) {
                if (field_0x108 != 0) {
                    mBckFrame = 403.0f;
                } else {
                    mBckFrame++;
                }

                selectAnimeTransform(1);

                if (mBckFrame >= 403.0f) {
                    mProcess = PROC_SELECT_e;
                }
            }
            break;
        case 2:
            if (mSelNo == 1) {
                if (field_0x108 != 0) {
                    mBckFrame = 400.0f;
                } else {
                    mBckFrame--;
                }

                selectAnimeTransform(2);

                if (mBckFrame <= 400.0f) {
                    mProcess = PROC_SELECT_e;
                }
            } else if (mSelNo == 0) {
                if (field_0x108 != 0) {
                    mBckFrame = 300.0f;
                } else {
                    mBckFrame--;
                }

                selectAnimeTransform(2);

                if (mBckFrame <= 300.0f) {
                    mProcess = PROC_SELECT_e;
                }
            }
            break;
        }
    }
}

/* 8023B148-8023B228 235A88 00E0+00 1/0 0/0 0/0 .text            closeProc__17dMsgScrn3Select_cFv */
void dMsgScrn3Select_c::closeProc() {
    mpSelectCursor->setAlphaRate(0.0f);
    mBckFrame--;

    for (int i = 0; i < 3; i++) {
        f32 scale_x = mpSel_c[i]->getPanePtr()->getScaleX();
        f32 scale_y = mpSel_c[i]->getPanePtr()->getScaleY();

        selectAnimeTransform(i);
        mpSel_c[i]->getPanePtr()->scale(scale_x, scale_y);
    }

    if (mBckFrame <= 190.0f) {
        mProcess = PROC_MAX_e;
    }
}

/* 8023B228-8023B4AC 235B68 0284+00 1/1 0/0 0/0 .text            selectScale__17dMsgScrn3Select_cFv
 */
void dMsgScrn3Select_c::selectScale() {
    if (mWidth != 1.0f) {
        for (int i = 0; i < 3; i++) {
            f32 x;
            f32 y;

            mpKahen_c[i]->paneScale(mWidth, 1.0f);

            x = (mWidth * mpCursor_c[i]->getSizeX()) / mpCursor_c[i]->getInitSizeX();
            y = mpCursor_c[i]->getSizeY() / mpCursor_c[i]->getInitSizeY();
            mpCursor_c[i]->paneScale(x, y);

            x = (mWidth * mpSelCldw_c[2][i]->getSizeX()) / mpSelCldw_c[2][i]->getInitSizeX();
            y = mpSelCldw_c[2][i]->getSizeY() / mpSelCldw_c[2][i]->getInitSizeY();
            mpSelCldw_c[2][i]->paneScale(x, y);

            f32 temp = (mWidth - 1.0f) *
                       (mpSelCldw_c[0][i]->getInitSizeX() + mpSelCldw_c[1][i]->getInitSizeX());
            x = ((mWidth * mpSelCldw_c[3][i]->getSizeX()) - temp) /
                mpSelCldw_c[3][i]->getInitSizeX();
            y = mpSelCldw_c[3][i]->getSizeY() / mpSelCldw_c[3][i]->getInitSizeY();
            mpSelCldw_c[3][i]->paneScale(x, y);

            x = (mWidth * mpSelCld_c[i]->getSizeX()) / mpSelCld_c[i]->getInitSizeX();
            y = mpSelCld_c[i]->getSizeY() / mpSelCld_c[i]->getInitSizeY();
            mpSelCld_c[i]->paneScale(x, y);

            x = (mWidth * mpSelCldr_c[i]->getSizeX()) / mpSelCldr_c[i]->getInitSizeX();
            y = mpSelCldr_c[i]->getSizeY() / mpSelCldr_c[i]->getInitSizeY();
            mpSelCldr_c[i]->paneScale(x, y);

            x = (mWidth * mpSelCldm_c[i]->getSizeX()) / mpSelCldm_c[i]->getInitSizeX();
            y = mpSelCldm_c[i]->getSizeY() / mpSelCldm_c[i]->getInitSizeY();
            mpSelCldm_c[i]->paneScale(x, y);

            x = (mWidth * mpTmSel_c[i]->getSizeX()) / mpTmSel_c[i]->getInitSizeX();
            y = mpTmSel_c[i]->getSizeY() / mpTmSel_c[i]->getInitSizeY();
            mpTmSel_c[i]->paneScale(x, y);

            if (mpTmrSel_c[i] != NULL) {
                x = (mWidth * mpTmrSel_c[i]->getSizeX()) / mpTmrSel_c[i]->getInitSizeX();
                y = mpTmrSel_c[i]->getSizeY() / mpTmrSel_c[i]->getInitSizeY();
                mpTmrSel_c[i]->paneScale(x, y);
            }
        }
    }
}

/* 8023B4AC-8023B870 235DEC 03C4+00 3/3 0/0 0/0 .text            selectTrans__17dMsgScrn3Select_cFv
 */
void dMsgScrn3Select_c::selectTrans() {
    J2DTextBox::TFontSize font_size;
    ((J2DTextBox*)mpTmSel_c[0]->getPanePtr())->getFontSize(font_size);
    f32 var_f31 = (mpTmSel_c[0]->getSizeY() - font_size.mSizeY) * 0.5f;

    f32 sp68[3];
    for (int i = 0; i < 3; i++) {
        sp68[i] = 0.0f;
    }

    if (mWidth == 1.0f) {
        for (int i = 0; i < 3; i++) {
            if (isAnimeUpdate(i)) {
                mpTmSel_c[i]->paneTrans(0.0f, var_f31 + sp68[i]);

                if (mpTmrSel_c[i] != NULL) {
                    mpTmrSel_c[i]->paneTrans(0.0f, var_f31 + sp68[i]);
                }
            }
        }
    } else {
        for (int i = 0; i < 3; i++) {
            if (isAnimeUpdate(i)) {
                f32 temp_f30 = (1.0f - mWidth) * mpKahen_c[i]->getInitSizeX();
                mpKahen_c[i]->paneTrans(0.5f * temp_f30, 0.0f);

                f32 temp_f28 = ((mWidth - 1.0f) * (mpCursor_c[i]->getInitCenterPosX() -
                                                        mpSelCldw_c[1][i]->getInitPosX()));
                mpCursor_c[i]->paneTrans(temp_f28 - temp_f30, 0.0f);

                f32 temp_f28_2 = ((mWidth - 1.0f) * (mpSelCldw_c[2][i]->getInitPosX() -
                                                          mpSelCldw_c[1][i]->getInitPosX()));
                temp_f28_2 = temp_f28_2;  // probably fake, but fixes instruction order
                mpSelCldw_c[0][i]->paneTrans(temp_f28_2 - temp_f30, 0.0f);

                f32 temp_f28_3 = ((mWidth - 1.0f) * (mpSelCldw_c[2][i]->getInitCenterPosX() -
                                                          mpSelCldw_c[1][i]->getInitPosX()));
                mpSelCldw_c[2][i]->paneTrans(temp_f28_3 - temp_f30, 0.0f);

                f32 temp_f28_4 =
                    (((1.0f - mWidth) * (0.5f * mpSelCldw_c[3][i]->getInitSizeX())) +
                     ((mWidth - 1.0f) * mpSelCldw_c[1][i]->getInitSizeX()));
                mpSelCldw_c[3][i]->paneTrans(temp_f28_4 - temp_f30, 0.0f);

                f32 temp_f28_5 = ((mWidth - 1.0f) * (mpSelCld_c[i]->getInitCenterPosX() -
                                                          mpSelCldw_c[1][i]->getInitPosX()));
                mpSelCld_c[i]->paneTrans(temp_f28_5 - temp_f30, 0.0f);

                f32 temp_f28_6 = ((mWidth - 1.0f) * (mpSelCldm_c[i]->getInitCenterPosX() -
                                                          mpSelCldw_c[1][i]->getInitPosX()));
                mpSelCldm_c[i]->paneTrans(temp_f28_6 - temp_f30, 0.0f);

                f32 temp_f28_7 = ((mWidth - 1.0f) * (mpTmSel_c[i]->getInitCenterPosX() -
                                                          mpSelCldw_c[1][i]->getInitPosX()));
                mpTmSel_c[i]->paneTrans(temp_f28_7 - temp_f30, var_f31 + sp68[i]);

                if (mpTmrSel_c[i] != NULL) {
                    f32 temp_f28_8 = ((mWidth - 1.0f) * (mpTmrSel_c[i]->getInitCenterPosX() -
                                                              mpSelCldw_c[1][i]->getInitPosX()));
                    mpTmrSel_c[i]->paneTrans(temp_f28_8 - temp_f30, var_f31 + sp68[i]);
                }

                f32 temp_f0 = mpSelCldw_c[0][i]->getPosX();
                temp_f0 -= mpSelCldw_c[0][i]->getInitPosX();
                mpSelPo_c[i]->paneTrans(temp_f0 - temp_f30, 0.0f);

                offAnimeUpdate(i);
            }
        }
    }
}

/* 8023B870-8023B914 2361B0 00A4+00 7/7 0/0 0/0 .text selectAnimeTransform__17dMsgScrn3Select_cFi
 */
void dMsgScrn3Select_c::selectAnimeTransform(int i_sel) {
    mpAnmBck->setFrame(mBckFrame);
    mpSel_c[i_sel]->getPanePtr()->setAnimation(mpAnmBck);
    mpSel_c[i_sel]->getPanePtr()->animationTransform();
    mpSel_c[i_sel]->getPanePtr()->setAnimation((J2DAnmTransform*)NULL);

    onAnimeUpdate(i_sel);
}

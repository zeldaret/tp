/**
 * @file d_a_balloon_2D.cpp
 * 
*/

#include "d/actor/d_a_balloon_2D.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J2DGraph/J2DTextBox.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_meter2_info.h"
#include "d/d_msg_object.h"
#include "d/d_pane_class.h"
#include "m_Do/m_Do_graphic.h"
#include "m_Do/m_Do_lib.h"

/* 806534CC-80653518 0000EC 004C+00 1/0 0/0 0/0 .text            draw__Q213daBalloon2D_c6c_listFv */
void daBalloon2D_c::c_list::draw() {
    dComIfGp_getCurrentGrafPort()->setup2D();
    mBalloon->drawMeter();
}

/* 80653518-80653538 000138 0020+00 1/1 0/0 0/0 .text daBalloon2D_createHeap__FP10fopAc_ac_c */
static int daBalloon2D_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daBalloon2D_c*>(i_this)->createHeap();
}

/* 806556D4-806556D8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Balloon2D";

/* 80653538-80653D24 000158 07EC+00 1/1 0/0 0/0 .text            createHeap__13daBalloon2D_cFv */
int daBalloon2D_c::createHeap() {
    mScreen = new J2DScreen();
    if (mScreen == NULL) {
        return  0;
    }
    dRes_info_c* resInfo = dComIfG_getObjectResInfo(l_arcName);
    JUT_ASSERT(445, resInfo != 0);
    JKRArchive* arc = resInfo->getArchive();
    mScreen->setPriority("zelda_balloon_game.blo", 0x20000, arc);
    dPaneClass_showNullPane(mScreen);
    field_0x578 = new CPaneMgr(mScreen, 'n_all', 2, NULL);
    field_0x57c = new CPaneMgr(mScreen, 'score_tn', 0, NULL);
    field_0x580 = new CPaneMgr(mScreen, 'suji_n', 2, NULL);
    field_0x584 = new CPaneMgr(mScreen, 's_set_n', 0, NULL);
    field_0x588 = new CPaneMgr(mScreen, 'tas_n', 0, NULL);
    field_0x58c = new CPaneMgr(mScreen, 'combo_tn', 0, NULL);
    field_0x590 = new CPaneMgr(mScreen, 'num_n', 0, NULL);
    field_0x594 = new CPaneMgr(mScreen, 'co_set_n', 2, NULL);
    field_0x598 = new CPaneMgr(mScreen, 'bal_3_n', 2, NULL);
    field_0x59c = new CPaneMgr(mScreen, 'bal_2_n', 2, NULL);
    field_0x5a0 = new CPaneMgr(mScreen, 'bal_1_n', 2, NULL);
    field_0x5a4 = new CPaneMgr(mScreen, 'ba_com_n', 2, NULL);
    field_0x578->setAlphaRate(0.0f);
    field_0x5a4->setAlphaRate(0.0f);
    for (s32 i = 0; i < 10; i++) {
        ResTIMG* resTimg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', dMeter2Info_getNumberTextureName(i));
        field_0x5c4[i] = new J2DPicture(resTimg);
    }
    ResTIMG* resTimg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', dMeter2Info_getPlusTextureName());
    field_0x5ec = new J2DPicture(resTimg);
    if (field_0x578 == NULL || field_0x57c == NULL || field_0x580 == NULL ||
        field_0x584 == NULL ||field_0x588 == NULL || field_0x58c == NULL ||
        field_0x590 == NULL || field_0x594 == NULL || field_0x598 == NULL ||
        field_0x59c == NULL || field_0x5a0 == NULL || field_0x5a4 == NULL || field_0x5c4[0] == NULL || field_0x5c4[1] == NULL || field_0x5c4[2] == NULL ||
        field_0x5c4[3] == NULL || field_0x5c4[4] == NULL || field_0x5c4[5] == NULL ||
        field_0x5c4[6] == NULL || field_0x5c4[7] == NULL || field_0x5c4[8] == NULL ||
        field_0x5c4[9] == NULL || field_0x5ec == NULL)
    {
        return 0;
    }
    J2DTextBox* combos[2];
    J2DTextBox* scores[2];
    combos[0] = (J2DTextBox*)mScreen->search('combo_ts');
    combos[1] = (J2DTextBox*)mScreen->search('combo_t');
    scores[0] = (J2DTextBox*)mScreen->search('score_ts');
    scores[1] = (J2DTextBox*)mScreen->search('score_t');
    field_0x5a8[0] = (J2DPicture*)mScreen->search('suji_4');
    field_0x5a8[1] = (J2DPicture*)mScreen->search('suji_3');
    field_0x5a8[2] = (J2DPicture*)mScreen->search('suji_2');
    field_0x5a8[3] = (J2DPicture*)mScreen->search('suji_1');
    field_0x5a8[4] = (J2DPicture*)mScreen->search('suji_0');
    field_0x5a8[5] = (J2DPicture*)mScreen->search('num_1');
    field_0x5a8[6] = (J2DPicture*)mScreen->search('num_0');
    for (int i = 0; i < 2; i++) {
        combos[i]->setString(32, "");
        scores[i]->setString(32, "");
        dMeter2Info_getStringKanji(0x53f, combos[i]->getStringPtr(), 0);
        dMeter2Info_getStringKanji(0x53e, scores[i]->getStringPtr(), 0);
        combos[i]->setFont(mDoExt_getMesgFont());
        scores[i]->setFont(mDoExt_getMesgFont());
    }
    setComboNum(0);
    setBalloonSize(0);
    setScoreNum(0);
    field_0x5f0.set(this);
    if ((fopAcM_GetParam(this) & 1)) {
        show();
    } else {
        hide();
    }
    return 1;
}

/* 8065577C-80655844 000014 00C8+00 3/3 0/0 0/0 .bss             l_HOSTIO */
daBalloon2D_HIO_c l_HOSTIO;

/* 80655844-80655848 0000DC 0004+00 2/2 0/0 0/0 .bss             myclass__13daBalloon2D_c */
daBalloon2D_c* daBalloon2D_c::myclass;

/* 80653D24-80653DB4 000944 0090+00 1/1 0/0 0/0 .text            create__13daBalloon2D_cFv */
int daBalloon2D_c::create() {
    int rv = dComIfG_resLoad(this, l_arcName);
    if (rv == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, daBalloon2D_createHeap, 0)) {
            return cPhs_ERROR_e;
        }
        JUT_ASSERT(566, daBalloon2D_c::myclass == 0);
        myclass = this;
        setHIO(true);
    }
    return rv;
}

/* 80653DB4-80653E10 0009D4 005C+00 1/1 0/0 0/0 .text            destroy__13daBalloon2D_cFv */
int daBalloon2D_c::destroy() {
    dComIfG_resDelete(this, l_arcName);
    myclass = NULL;
    dMeter2Info_offSub2DStatus(1);
    return 1;
}

/* 80653E10-80653EC0 000A30 00B0+00 1/1 0/0 0/0 .text            draw__13daBalloon2D_cFv */
int daBalloon2D_c::draw() {
    if (isVisible() && !dComIfGp_isPauseFlag() &&
        !dMsgObject_isTalkNowCheck())
    {
        dComIfGd_set2DOpa(&field_0x5f0);
        dMeter2Info_onSub2DStatus(1);
    } else {
        dMeter2Info_offSub2DStatus(1);
    }
    return 1;
}


/* 80653EC0-80653F04 000AE0 0044+00 1/1 0/0 0/0 .text            execute__13daBalloon2D_cFv */
int daBalloon2D_c::execute() {
    setAllAlpha();
    setComboAlpha();
    setHIO(false);
    return 1;
}

/* 80653F04-80653F58 000B24 0054+00 1/1 0/0 0/0 .text            drawMeter__13daBalloon2D_cFv */
void daBalloon2D_c::drawMeter() {
    update();
    mScreen->draw(0.0f, 0.0f, dComIfGp_getCurrentGrafPort());
    drawAddScore();
}


/* 80653F58-80653FC0 000B78 0068+00 0/0 0/0 1/1 .text            setComboCount__13daBalloon2D_cFUcUc
 */
void daBalloon2D_c::setComboCount(u8 size, u8 comboNum) {
    if (mComboNum != comboNum) {
        setComboNum(comboNum);
    }
    if (mBalloonSize != size) {
        setBalloonSize(size);
    }
}

/* 80653FC0-80653FEC 000BE0 002C+00 0/0 0/0 2/2 .text            setScoreCount__13daBalloon2D_cFUl
 */
void daBalloon2D_c::setScoreCount(u32 scoreCount) {
    if (mScoreCount != scoreCount) {
        setScoreNum(scoreCount);
    }
}

/* 80653FEC-806540B4 000C0C 00C8+00 0/0 0/0 1/1 .text addScoreCount__13daBalloon2D_cFP4cXyzUlUc */
void daBalloon2D_c::addScoreCount(cXyz* param_1, u32 param_2, u8 param_3) {
    for (int i = 0; i < 19; i++) {
        int current = 19 - i;
        int prev = current - 1;
        field_0x5f8[current].field_0x0.set(field_0x5f8[prev].field_0x0);
        field_0x5f8[current].field_0xc = field_0x5f8[prev].field_0xc;
        field_0x5f8[current].field_0xe = field_0x5f8[prev].field_0xe;
        field_0x5f8[current].field_0xf = field_0x5f8[prev].field_0xf;
    }
    cXyz acStack_2c;
    mDoLib_project(param_1, &acStack_2c);
    field_0x5f8[0].field_0x0.set(acStack_2c);
    field_0x5f8[0].field_0xc = param_2;
    field_0x5f8[0].field_0xe = 60;
    field_0x5f8[0].field_0xf = param_3;
}

/* 806540B4-806540B8 000CD4 0004+00 1/1 0/0 0/0 .text            initiate__13daBalloon2D_cFv */
void daBalloon2D_c::initiate() {
}

/* 806540B8-806540BC 000CD8 0004+00 1/1 0/0 0/0 .text            update__13daBalloon2D_cFv */
void daBalloon2D_c::update() {
}

/* 806540BC-806541B4 000CDC 00F8+00 2/2 0/0 0/0 .text            setComboNum__13daBalloon2D_cFUc */
void daBalloon2D_c::setComboNum(u8 comboNum) {
    if (comboNum > 99) {
        comboNum = 99;
    }
    mComboNum = comboNum;
    ResTIMG* resTimg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', dMeter2Info_getNumberTextureName(comboNum / 10));
    field_0x5a8[5]->changeTexture(resTimg, 0);
    resTimg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', dMeter2Info_getNumberTextureName(comboNum % 10));
    field_0x5a8[6]->changeTexture(resTimg, 0);
    setComboAlpha();
}

/* 806541B4-80654258 000DD4 00A4+00 2/2 0/0 0/0 .text            setBalloonSize__13daBalloon2D_cFUc
 */
void daBalloon2D_c::setBalloonSize(u8 balloonSize) {
    mBalloonSize = balloonSize;
    switch(balloonSize) {
    case 0:
        field_0x598->show();
        field_0x59c->hide();
        field_0x5a0->hide();
        break;
    case 1:
        field_0x598->hide();
        field_0x59c->show();
        field_0x5a0->hide();
        break;
    case 2:
        field_0x598->hide();
        field_0x59c->hide();
        field_0x5a0->show();
        break;
    }
}

/* 80654258-80654440 000E78 01E8+00 2/2 0/0 0/0 .text            setScoreNum__13daBalloon2D_cFi */
void daBalloon2D_c::setScoreNum(int scoreNum) {
    if (scoreNum > 99999) {
        scoreNum = 99999;
    }
    mScoreCount = scoreNum;
    int digit = scoreNum / 10000;
    int num = scoreNum % 10000;
    ResTIMG* resTimg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', dMeter2Info_getNumberTextureName(digit));
    field_0x5a8[0]->changeTexture(resTimg, 0);
    digit = num / 1000;
    int num2 = num % 1000;
    resTimg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', dMeter2Info_getNumberTextureName(digit));
    field_0x5a8[1]->changeTexture(resTimg, 0);
    digit = num2 / 100;
    int num3 = num2 % 100;
    resTimg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', dMeter2Info_getNumberTextureName(digit));
    field_0x5a8[2]->changeTexture(resTimg, 0);
    digit = num3 / 10;
    num3 %= 10;
    resTimg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', dMeter2Info_getNumberTextureName(digit));
    field_0x5a8[3]->changeTexture(resTimg, 0);
    resTimg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', dMeter2Info_getNumberTextureName(num3));
    field_0x5a8[4]->changeTexture(resTimg, 0);
}

/* 80654440-8065464C 001060 020C+00 1/1 0/0 0/0 .text            setAllAlpha__13daBalloon2D_cFv */
void daBalloon2D_c::setAllAlpha() {
    mAllAlpha = field_0x578->getAlphaRate();
    if (isVisible()) {
        if (mAllAlpha != 1.0f) {
            cLib_addCalc2(&mAllAlpha, 1.0f, 0.4f, 0.5f);
            if (fabsf(mAllAlpha - 1.0f) < 0.1f) {
                mAllAlpha = 1.0f;
            }
            field_0x578->setAlphaRate(mAllAlpha);
            field_0x580->setAlphaRate(l_HOSTIO.m.m5DNumberAlpha * mAllAlpha);
            field_0x594->setAlphaRate(l_HOSTIO.m.m2DNumberComboAlpha * mAllAlpha);
            field_0x598->setAlphaRate(l_HOSTIO.m.mBalloonLargeAlpha * mAllAlpha);
            field_0x59c->setAlphaRate(l_HOSTIO.m.mBalloonMedAlpha * mAllAlpha);
            field_0x5a0->setAlphaRate(l_HOSTIO.m.mBalloonSmallAlpha * mAllAlpha);
        }
    } else if (mAllAlpha != 1.0f) {
        cLib_addCalc2(&mAllAlpha, 0.0f, 0.4f, 0.5f);
        if (fabsf(mAllAlpha) < 0.1f) {
            mAllAlpha = 0.0f;
        }
        field_0x578->setAlphaRate(mAllAlpha);
        field_0x580->setAlphaRate(l_HOSTIO.m.m5DNumberAlpha * mAllAlpha);
        field_0x594->setAlphaRate(l_HOSTIO.m.m2DNumberComboAlpha * mAllAlpha);
        field_0x598->setAlphaRate(l_HOSTIO.m.mBalloonLargeAlpha * mAllAlpha);
        field_0x59c->setAlphaRate(l_HOSTIO.m.mBalloonMedAlpha * mAllAlpha);
        field_0x5a0->setAlphaRate(l_HOSTIO.m.mBalloonSmallAlpha * mAllAlpha);
    }
}


/* 8065464C-80654730 00126C 00E4+00 2/2 0/0 0/0 .text            setComboAlpha__13daBalloon2D_cFv */
void daBalloon2D_c::setComboAlpha() {
    mComboAlpha = field_0x5a4->getAlphaRate() * field_0x578->getAlphaRate();
    if (mComboNum != 0) {
        if (mComboAlpha != 1.0f) {
            cLib_addCalc2(&mComboAlpha, 1.0f, 0.4f, 0.5f);
            if (fabsf(mComboAlpha - 1.0f) < 0.1f) {
                mComboAlpha = 1.0f;
            }
            field_0x5a4->setAlphaRate(mComboAlpha);
        }
    } else if (mComboAlpha != 0.0f) {
        mComboAlpha = 0.0f;
        field_0x5a4->setAlphaRate(mComboAlpha);
    }
}

/* 80654730-80654E8C 001350 075C+00 1/1 0/0 0/0 .text            drawAddScore__13daBalloon2D_cFv */
// NONMATCHING - field_0x0.x, regalloc
void daBalloon2D_c::drawAddScore() {
    for (s32 i = 19; i >= 0; i--) {
        if (field_0x5f8[i].field_0xe != 0) {
            field_0x5f8[i].field_0xe--;
            s32 score3;
            s32 score2;
            s32 score = field_0x5f8[i].field_0xc;
            s16 temp0 = (field_0x5f8[i].field_0xe % 60) * 1024;
            u8 local_88 = 0xff;
            f32 dVar11 = 30.0f;
            f32 dVar9 = 30.0f;
            field_0x5f8[i].field_0x0.x += cM_ssin(temp0) * 0.3f;
            field_0x5f8[i].field_0x0.y -= 1.0f;
            if (field_0x5f8[i].field_0xe < 10) {
                f32 fVar5 = field_0x5f8[i].field_0xe / 10.0f;
                local_88 = fVar5 * 255.0f;
                dVar11 *= fVar5;
                dVar9 *= fVar5;
            }
            for (s32 j = 0; j < 10; j++) {
                field_0x5c4[j]->setAlpha(local_88);
            }
            field_0x5ec->setAlpha(local_88);
            f32 dVar8 = (field_0x5f8[i].field_0x0.y - (dVar9 / 2.0f));
            s32 digit;
            if (score >= 10000) {
                f32 dVar10 = (field_0x5f8[i].field_0x0.x -
                                  (dVar11 / 2.0f) * 6.0f);
                field_0x5ec->draw(dVar10, dVar8, dVar11, dVar9, false, false, false);
                digit = score / 10000;
                score = score % 10000;
                field_0x5c4[digit]->draw(dVar10 + dVar11, dVar8, dVar11, dVar9, false, false, false);
                digit = score / 1000;
                score %= 1000;
                field_0x5c4[digit]->draw(dVar10 + dVar11 * 2.0f, dVar8, dVar11, dVar9, false, false, false);
                digit = score / 100;
                score %= 100;
                field_0x5c4[digit]->draw(dVar10 + dVar11 * 3.0f, dVar8, dVar11, dVar9, false, false, false);
                digit = score / 10;
                score %= 10;
                field_0x5c4[digit]->draw(dVar10 + dVar11 * 4.0f, dVar8, dVar11, dVar9, false, false, false);
                field_0x5c4[score]->draw(dVar10 + dVar11 * 5.0f, dVar8, dVar11, dVar9, false, false, false);
            } else if (score >= 1000) {
                f32 dVar10 = (field_0x5f8[i].field_0x0.x -
                                    (dVar11 / 2.0f) * 5.0f);
                field_0x5ec->draw(dVar10, dVar8, dVar11, dVar9, false, false, false);
                digit = score / 1000;
                score2 = score % 1000;
                field_0x5c4[digit]->draw(dVar10 + dVar11, dVar8, dVar11, dVar9, false, false, false);
                digit = score2 / 100;
                score2 %= 100;
                field_0x5c4[digit]->draw(dVar10 + dVar11 * 2.0f, dVar8, dVar11, dVar9, false, false, false);
                digit = score2 / 10;
                score2 %= 10;
                field_0x5c4[digit]->draw(dVar10 + dVar11 * 3.0f, dVar8, dVar11, dVar9, false, false, false);
                field_0x5c4[score2]->draw(dVar10 + dVar11 * 4.0f, dVar8, dVar11, dVar9, false, false, false);
            } else if (score >= 100) {
                f32 dVar10 = (field_0x5f8[i].field_0x0.x -
                                    (dVar11 / 2.0f) * 4.0f);
                field_0x5ec->draw(dVar10, dVar8, dVar11, dVar9, false, false, false);
                digit = score / 100;
                score3 = score % 100;
                field_0x5c4[digit]->draw(dVar10 + dVar11, dVar8, dVar11, dVar9, false, false, false);
                digit = score3 / 10;
                score3 %= 10;
                field_0x5c4[digit]->draw(dVar10 + dVar11 * 2.0f, dVar8, dVar11, dVar9, false, false, false);
                field_0x5c4[score3]->draw(dVar10 + dVar11 * 3.0f, dVar8, dVar11, dVar9, false, false, false);
            } else if (score >= 10) {
                f32 dVar10 = (field_0x5f8[i].field_0x0.x -
                                    (dVar11 / 2.0f) * 3.0f);
                field_0x5ec->draw(dVar10, dVar8, dVar11, dVar9, false, false, false);
                digit = score / 10;
                score3 = score % 10;
                field_0x5c4[digit]->draw(dVar10 + dVar11, dVar8, dVar11, dVar9, false, false, false);
                field_0x5c4[score3]->draw(dVar10 + dVar11 * 2.0f, dVar8, dVar11, dVar9, false, false, false);
            } else {
                f32 dVar10 = (field_0x5f8[i].field_0x0.x -
                                    (dVar11 / 2.0f) * 2.0f);
                field_0x5ec->draw(dVar10, dVar8, dVar11, dVar9, false, false, false);
                field_0x5c4[score]->draw(dVar10 + dVar11, dVar8, dVar11, dVar9, false, false, false);
            }
        }
    }
}

/* 80654E8C-80655250 001AAC 03C4+00 2/2 0/0 0/0 .text            setHIO__13daBalloon2D_cFb */
void daBalloon2D_c::setHIO(bool param_1) {
    if ((l_HOSTIO.m.mAdjustmentToggle != 0) || param_1) {
#if DEBUG
        if (l_HOSTIO.m.mOverheadScoreToggle != 0) {
            daPy_py_c* player = daPy_getPlayerActorClass();
            cXyz acStack_28;
            acStack_28.set(player->getHeadTopPos());
            addScoreCount(&acStack_28, l_HOSTIO.m.mOverheadScore, 0);
            l_HOSTIO.resetAddScoreSetFlag();
        }
#endif

        field_0x57c->paneTrans(l_HOSTIO.m.mScorePosX, l_HOSTIO.m.mScorePosY);
        field_0x57c->scale(l_HOSTIO.m.mScoreSize, l_HOSTIO.m.mScoreSize);
        field_0x580->paneTrans(l_HOSTIO.m.m5DNumberPosX, l_HOSTIO.m.m5DNumberPosY);
        field_0x580->scale(l_HOSTIO.m.m5DNumberSizeX, l_HOSTIO.m.m5DNumberSizeY);
        field_0x580->setAlphaRate(l_HOSTIO.m.m5DNumberAlpha * mAllAlpha);
        field_0x584->paneTrans(l_HOSTIO.m.m5DNumber2PosX, l_HOSTIO.m.m5DNumber2PosY);
        field_0x584->scale(l_HOSTIO.m.m5DNumber2Size, l_HOSTIO.m.m5DNumber2Size);
        field_0x588->paneTrans(l_HOSTIO.m.mUnkPosX, l_HOSTIO.m.mUnkPosY);
        field_0x588->scale(l_HOSTIO.m.mUnkSize, l_HOSTIO.m.mUnkSize);
        field_0x58c->paneTrans(l_HOSTIO.m.mComboPosX, l_HOSTIO.m.mComboPosY);
        field_0x58c->scale(l_HOSTIO.m.mComboSize, l_HOSTIO.m.mComboSize);
        field_0x590->paneTrans(l_HOSTIO.m.m2DNumberPosX, l_HOSTIO.m.m2DNumberPosY);
        field_0x590->scale(l_HOSTIO.m.m2DNumberSizeX, l_HOSTIO.m.m2DNumberSizeY);
        field_0x594->paneTrans(l_HOSTIO.m.m2DNumberComboPosX, l_HOSTIO.m.m2DNumberComboPosY);
        field_0x594->scale(l_HOSTIO.m.m2DNumberComboSize, l_HOSTIO.m.m2DNumberComboSize);
        field_0x594->setAlphaRate(l_HOSTIO.m.m2DNumberComboAlpha * mAllAlpha);
        field_0x598->paneTrans(l_HOSTIO.m.mBalloonLargePosX, l_HOSTIO.m.mBalloonLargePosY);
        field_0x598->scale(l_HOSTIO.m.mBalloonLargeSize, l_HOSTIO.m.mBalloonLargeSize);
        field_0x598->setAlphaRate(l_HOSTIO.m.mBalloonLargeAlpha * mAllAlpha);
        field_0x59c->paneTrans(l_HOSTIO.m.mBalloonMedPosX, l_HOSTIO.m.mBalloonMedPosY);
        field_0x59c->scale(l_HOSTIO.m.mBalloonMedSize, l_HOSTIO.m.mBalloonMedSize);
        field_0x59c->setAlphaRate(l_HOSTIO.m.mBalloonMedAlpha * mAllAlpha);
        field_0x5a0->paneTrans(l_HOSTIO.m.mBalloonSmallPosX, l_HOSTIO.m.mBalloonSmallPosY);
        field_0x5a0->scale(l_HOSTIO.m.mBalloonSmallSize, l_HOSTIO.m.mBalloonSmallSize);
        field_0x5a0->setAlphaRate(l_HOSTIO.m.mBalloonSmallAlpha * mAllAlpha);
#if DEBUG
        if (mDoGph_gInf_c::isWide()) {
            field_0x5a4->paneTrans(l_HOSTIO.m.m2DNumberCombo2PosX, l_HOSTIO.m.m2DNumberCombo2PosY);
        } else {
            field_0x5a4->paneTrans(l_HOSTIO.m.m2DNumberCombo2PosX43, l_HOSTIO.m.m2DNumberCombo2PosY);
        }
#else
        field_0x5a4->paneTrans(l_HOSTIO.m.m2DNumberCombo2PosX, l_HOSTIO.m.m2DNumberCombo2PosY);
#endif
        field_0x5a4->scale(l_HOSTIO.m.m2DNumberCombo2Size, l_HOSTIO.m.m2DNumberCombo2Size);
    }
}

daBalloon2D_HIO_c::daBalloon2D_HIO_c() {
    static param aParam = {
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0.0f,
        1.0f,
        0.0f,
        -10.0f,
        0.8f,
        0.0f,
        -13.0f,
        1.1f,
        0.9f,
        0.7f,
        0.0f,
        18.0f,
        1.0f,
        -6.6f,
        6.6f,
        1.3f,
        -1.3f,
        9.2f,
        1.0f,
        0.0f,
        6.6f,
        1.1f,
        0.9f,
        1.0f,
        3.9f,
        -9.2f,
        0.85f,
        0.8f,
        6.6f,
        1.3f,
        0.75f,
        0.9f,
        3.9f,
        0.0f,
        0.85f,
        0.9f,
        3.9f,
        0.0f,
        0.95f,
        0.9f,
        22.0f,
        -17.0f,
        1.0f,
        20.0f,
    };
    memcpy(&m, &aParam, sizeof(aParam));
}

void daBalloon2D_HIO_c::resetAddScoreSetFlag() {
    JORMContext* ctx = attachJORMContext(8);
    ctx->startUpdateNode(this);
    m.mOverheadScoreToggle = 0x0;
    ctx->updateCheckBox(2, &m.mOverheadScoreToggle, 1, 0);
    ctx->endUpdateNode();
    releaseJORMContext(ctx);
}

/* 80655250-80655304 001E70 00B4+00 1/0 0/0 0/0 .text daBalloon2D_create__FP13daBalloon2D_c */
// NONMATCHING - vtable
static int daBalloon2D_create(daBalloon2D_c* i_this) {
    fopAcM_SetupActor(i_this, daBalloon2D_c);
    return i_this->create();
}

/* 80655304-80655340 001F24 003C+00 2/2 0/0 0/0 .text __dt__Q213daBalloon2D_c10CHeadScoreFv */
daBalloon2D_c::CHeadScore::~CHeadScore() {
}

/* 80655340-80655344 001F60 0004+00 1/1 0/0 0/0 .text __ct__Q213daBalloon2D_c10CHeadScoreFv */
daBalloon2D_c::CHeadScore::CHeadScore() {
}

/* 80655344-80655364 001F64 0020+00 1/0 0/0 0/0 .text daBalloon2D_destroy__FP13daBalloon2D_c */
static int daBalloon2D_destroy(daBalloon2D_c* i_this) {
    return i_this->destroy();
}

/* 80655364-80655384 001F84 0020+00 1/0 0/0 0/0 .text daBalloon2D_execute__FP13daBalloon2D_c */
static int daBalloon2D_execute(daBalloon2D_c* i_this) {
    return i_this->execute();
}

/* 80655384-806553A4 001FA4 0020+00 1/0 0/0 0/0 .text            daBalloon2D_draw__FP13daBalloon2D_c
 */
static int daBalloon2D_draw(daBalloon2D_c* i_this) {
    return i_this->draw();
}

/* 806553A8-80655404 001FC8 005C+00 2/1 0/0 0/0 .text            __dt__17daBalloon2D_HIO_cFv */
daBalloon2D_HIO_c::~daBalloon2D_HIO_c() {
    // NONMATCHING
}

#if DEBUG
void daBalloon2D_HIO_c::genMessage(JORMContext* ctx) {
    ctx->genCheckBox("調整ＯＮ", &m.mAdjustmentToggle, 1, 0, NULL, 0xffff,
                               0xffff, 0x200, 0x18);
    ctx->genSlider("スコア", &m.mScore, 0, 99999, 0, NULL, 0xffff, 0xffff, 0x200,
                             0x18);
    ctx->genSlider("コンボ数", &m.mComboCount, 0, 99, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->startComboBox("風船のサイズ", &m.mBalloonSize, 0, NULL, 0xffff, 0xffff, 0x100,
                                 0x1a);
    ctx->genComboBoxItem("大", 0); // large
    ctx->genComboBoxItem("中", 1); // medium
    ctx->genComboBoxItem("小", 2); // small
    ctx->endComboBox();
    ctx->genCheckBox("頭上スコアＯＮ", &m.mOverheadScoreToggle, 1, 0, NULL, 0xffff, 0xffff,
                               0x200, 0x18);
    ctx->genSlider("頭上スコア", &m.mOverheadScore, 0, 99999, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genLabel("*****「SCORE」（score_tn）*****", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    ctx->genSlider("位置Ｘ", &m.mScorePosX, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("位置Ｙ", &m.mScorePosY, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("サイズ", &m.mScoreSize, 0.0, 3.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    // 5-digit number
    ctx->genLabel("*****５ケタの数字（suji_n）*****", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    ctx->genSlider("位置Ｘ", &m.m5DNumberPosX, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("位置Ｙ", &m.m5DNumberPosY, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("サイズＸ", &m.m5DNumberSizeX, 0.0, 3.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("サイズＹ", &m.m5DNumberSizeY, 0.0, 3.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("アルファ", &m.m5DNumberAlpha, 0.0, 1.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    // "SCORE" & 5-digit number
    ctx->genLabel("*****「SCORE」＆５ケタの数字（suji_n）*****", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    ctx->genSlider("位置Ｘ", &m.m5DNumber2PosX, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("位置Ｙ", &m.m5DNumber2PosY, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("サイズ", &m.m5DNumber2Size, 0.0, 3.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genLabel("*****「＋」（tas_n）*****", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    ctx->genSlider("位置Ｘ", &m.mUnkPosX, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("位置Ｙ", &m.mUnkPosY, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("サイズ", &m.mUnkSize, 0.0, 3.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genLabel("*****「COMBO」\u3000（combo_tn）*****", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    ctx->genSlider("位置Ｘ", &m.mComboPosX, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("位置Ｙ", &m.mComboPosY, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("サイズ", &m.mComboSize, 0.0, 3.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genLabel("*****２ケタの数字（num_n）*****", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    ctx->genSlider("位置Ｘ", &m.m2DNumberPosX, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("位置Ｙ", &m.m2DNumberPosY, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("サイズＸ", &m.m2DNumberSizeX, 0.0, 3.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("サイズＹ", &m.m2DNumberSizeY, 0.0, 3.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    // "+" & 2-digit number & "COMBO"
    ctx->genLabel("*****「＋」＆２ケタの数字＆「COMBO」（co_set_n）*****", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    ctx->genSlider("位置Ｘ", &m.m2DNumberComboPosX, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("位置Ｙ", &m.m2DNumberComboPosY, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("サイズ", &m.m2DNumberComboSize, 0.0, 3.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("アルファ", &m.m2DNumberComboAlpha, 0.0, 1.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    // balloon "large"
    ctx->genLabel("*****風船「大」（bal_1_n）*****", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    ctx->genSlider("位置Ｘ", &m.mBalloonLargePosX, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("位置Ｙ", &m.mBalloonLargePosY, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("サイズ", &m.mBalloonLargeSize, 0.0, 3.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("アルファ", &m.mBalloonLargeAlpha, 0.0, 1.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    // balloon "medium"
    ctx->genLabel("*****風船「中」（bal_2_n）*****", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    ctx->genSlider("位置Ｘ", &m.mBalloonMedPosX, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("位置Ｙ", &m.mBalloonMedPosY, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("サイズ", &m.mBalloonMedSize, 0.0, 3.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("アルファ", &m.mBalloonMedAlpha, 0.0, 1.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    // balloon "small"
    ctx->genLabel("*****風船「小」（bal_3_n）*****", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    ctx->genSlider("位置Ｘ", &m.mBalloonSmallPosX, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("位置Ｙ", &m.mBalloonSmallPosY, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("サイズ", &m.mBalloonSmallSize, 0.0, 3.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("アルファ", &m.mBalloonSmallAlpha, 0.0, 1.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    // "Balloon" & "+" & two-digit number & "COMBO"
    ctx->genLabel("*****「風船」＆「＋」＆２ケタの数字＆「COMBO」（ba_com_n）*****", 0, 0, NULL, 0xffff, 0xffff, 0x200,
                            0x18);
    ctx->genSlider("位置Ｘ", &m.m2DNumberCombo2PosX, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("位置Ｘ(4:3)", &m.m2DNumberCombo2PosX43, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("位置Ｙ", &m.m2DNumberCombo2PosY, -300.0, 300.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
    ctx->genSlider("サイズ", &m.m2DNumberCombo2Size, 0.0, 3.0, 0, NULL, 0xffff, 0xffff,
                             0x200, 0x18);
}
#endif

/* 80655494-80655524 0020B4 0090+00 1/0 0/0 0/0 .text            __dt__13daBalloon2D_cFv */
daBalloon2D_c::~daBalloon2D_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806556D8-806556F8 -00001 0020+00 1/0 0/0 0/0 .data            daBalloon2D_METHODS */
static actor_method_class daBalloon2D_METHODS = {
    (process_method_func)daBalloon2D_create,
    (process_method_func)daBalloon2D_destroy,
    (process_method_func)daBalloon2D_execute,
    0,
    (process_method_func)daBalloon2D_draw,
};

/* 806556F8-80655728 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_BALLOON2D */
extern actor_process_profile_definition g_profile_BALLOON2D = {
    fpcLy_CURRENT_e,        // mLayerID
    3,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_BALLOON2D,         // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daBalloon2D_c), // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    765,                    // mPriority
    &daBalloon2D_METHODS,   // sub_method
    0x00040000,             // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_0_e,      // cullType
  };

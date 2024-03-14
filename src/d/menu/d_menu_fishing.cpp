/**
 * d_menu_fishing.cpp
 * Menu - Fishing Journal
 */

#include "d/menu/d_menu_fishing.h"
#include "JSystem/J2DGraph/J2DTextBox.h"
#include "JSystem/JKernel/JKRMemArchive.h"
#include "d/com/d_com_inf_game.h"
#include "d/menu/d_menu_dmap.h"
#include "d/meter/d_meter2_info.h"
#include "d/meter/d_meter_HIO.h"
#include "d/msg/d_msg_string.h"
#include "dol2asm.h"
#include "m_Do/m_Do_controller_pad.h"
#include "m_Do/m_Do_graphic.h"

/* 803BD038-803BD044 01A158 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803BD050-803BD05C 01A170 000C+00 2/3 0/0 0/0 .data            map_init_process */
typedef void (dMenu_Fishing_c::*initFunc)();
initFunc map_init_process[] = {
    &dMenu_Fishing_c::wait_init,
};

/* 803BD068-803BD074 01A188 000C+00 1/2 0/0 0/0 .data            map_move_process */
typedef void (dMenu_Fishing_c::*moveFunc)();
moveFunc map_move_process[] = {
    &dMenu_Fishing_c::wait_move,
};

/* 801C4D54-801C4D98 1BF694 0044+00 0/0 2/2 0/0 .text
 * __ct__15dMenu_Fishing_cFP10JKRExpHeapP9STControlP10CSTControl */
dMenu_Fishing_c::dMenu_Fishing_c(JKRExpHeap* heap, STControl* stControl, CSTControl* cstControl) {
    mpHeap = heap;
    mpArchive = 0;
    mpMount = 0;
    mpStick = stControl;
    mpCStick = cstControl;
    mStatus = 1;
    field_0x1fb = 0;
    field_0x1f8 = 0;
}

/* 801C4D98-801C504C 1BF6D8 02B4+00 1/0 0/0 0/0 .text            __dt__15dMenu_Fishing_cFv */
dMenu_Fishing_c::~dMenu_Fishing_c() {
    delete mpString;
    mpString = NULL;

    delete mpBlackTex;
    mpBlackTex = NULL;

    delete mpScreen;
    mpScreen = NULL;

    delete mpParent;
    mpParent = NULL;

    for (int i = 0; i < 6; i++) {
        delete mpFishParent[i];
        mpFishParent[i] = NULL;

        for (int j = 0; j < 6; j++) {
            delete mpFishParts[j][i];
            mpFishParts[j][i] = NULL;
        }
    }

    for (int i = 0; i < 2; i++) {
        delete mpFishInfoParent[i];
        mpFishInfoParent[i] = NULL;
    }

    delete mpIconScreen;
    mpIconScreen = NULL;

    for (int i = 0; i < 2; i++) {
        if (mpButtonAB[i]) {
            delete mpButtonAB[i];
            mpButtonAB[i] = NULL;
        }
        if (mpButtonText[i]) {
            delete mpButtonText[i];
            mpButtonText[i] = NULL;
        }
    }

    if (mpMount) {
        mpMount->getArchive()->unmount();
        mpMount->destroy();
        mpMount = NULL;
    }

    if (mpArchive) {
        mpArchive->unmount();
        mpArchive = NULL;
    }
}

/* 801C504C-801C50B4 1BF98C 0068+00 1/1 0/0 0/0 .text            _create__15dMenu_Fishing_cFv */
void dMenu_Fishing_c::_create() {
    mpString = new dMsgString_c();
    screenSetBase();
    screenSetDoIcon();
    setHIO(true);
    init();
}

/* 801C50B4-801C514C 1BF9F4 0098+00 0/0 2/2 0/0 .text            _move__15dMenu_Fishing_cFv */
void dMenu_Fishing_c::_move() {
    JKRHeap* heap = mDoExt_setCurrentHeap((JKRHeap*)mpHeap);
    u8 uVar = field_0x1fb;
    (this->*map_move_process[field_0x1fb])();
    if (uVar != field_0x1fb) {
        (this->*map_init_process[field_0x1fb])();
    }
    setHIO(false);
    mDoExt_setCurrentHeap((JKRHeap*)heap);
}

/* 801C514C-801C5204 1BFA8C 00B8+00 1/1 1/1 0/0 .text            _draw__15dMenu_Fishing_cFv */
void dMenu_Fishing_c::_draw() {
    if (mpArchive) {
        J2DGrafContext* grafPort = dComIfGp_getCurrentGrafPort();
        mpBlackTex->setAlpha(0xff);
        mpBlackTex->draw(0.0f, 0.0f, 608.0f, 448.0f, 0, 0, 0);
        mpScreen->draw(0.0f, 0.0f, grafPort);
        mpIconScreen->draw(0.0f, 0.0f, grafPort);
    }
}

/* 801C5204-801C522C 1BFB44 0028+00 0/0 2/2 0/0 .text            isSync__15dMenu_Fishing_cFv */
bool dMenu_Fishing_c::isSync() {
    if (mpMount && !mpMount->sync()) {
        return false;
    }
    return true;
}

/* 801C522C-801C52E4 1BFB6C 00B8+00 1/1 0/0 0/0 .text            init__15dMenu_Fishing_cFv */
void dMenu_Fishing_c::init() {
    for (int i = 0; i < 6; i++) {
        if (dComIfGs_getFishNum(i) != 0) {
            setFishParam(i, dComIfGs_getFishNum(i), dComIfGs_getFishSize(i));
            mpFishParent[i]->show();
        } else {
            mpFishParent[i]->hide();
        }
    }
    (this->*map_init_process[field_0x1fb])();
}

/* 801C52E4-801C5470 1BFC24 018C+00 0/0 2/2 0/0 .text            _open__15dMenu_Fishing_cFv */
int dMenu_Fishing_c::_open() {
    if (!mpMount) {
        mpMount = mDoDvdThd_mountArchive_c::create("/res/Layout/fishres.arc", 0, NULL);
    }
    if (!mpArchive) {
        if (mpMount->sync() != 0) {
            if (!mpArchive) {
                mpArchive = (JKRArchive*)mpMount->getArchive();
                delete mpMount;
                mpMount = NULL;
                _create();
            }
        } else {
            return 0;
        }
    }
    s16 openFrames = g_drawHIO.mFishListScreen.mOpenFrames;
    s16 closeFrames = g_drawHIO.mFishListScreen.mCloseFrames;
    field_0x1f8 = g_drawHIO.mFishListScreen.mOpenFrames;
    if (field_0x1f8 >= openFrames) {
        field_0x1f8 = closeFrames;
        mStatus = 2;
        mpParent->scale(1.0f, 1.0f);
        mpParent->setAlphaRate(1.0f);
        return 1;
    } else {
        f32 div = field_0x1f8 / (f32)openFrames;
        mpParent->scale(div, div);
        mpParent->setAlphaRate(div);
        return 0;
    }
}

/* 801C5470-801C556C 1BFDB0 00FC+00 0/0 1/1 0/0 .text            _close__15dMenu_Fishing_cFv */
int dMenu_Fishing_c::_close() {
    s16 closeFrames = g_drawHIO.mFishListScreen.mCloseFrames;
    field_0x1f8 = 0;
    if (field_0x1f8 <= 0) {
        field_0x1f8 = 0;
        mStatus = 0;
        mpParent->scale(0.0f, 0.0f);
        mpParent->setAlphaRate(0.0f);
        return 1;
    } else {
        f32 div = field_0x1f8 / (f32)closeFrames;
        mpParent->scale(div, div);
        mpParent->setAlphaRate(div);
        return 0;
    }
    return field_0x1f8 <= 0;
}

/* 801C556C-801C55A8 1BFEAC 003C+00 1/0 0/0 0/0 .text            wait_init__15dMenu_Fishing_cFv */
void dMenu_Fishing_c::wait_init() {
    setAButtonString(0);
    setBButtonString(0x3f9);
}

/* 801C55A8-801C55D8 1BFEE8 0030+00 1/0 0/0 0/0 .text            wait_move__15dMenu_Fishing_cFv */
void dMenu_Fishing_c::wait_move() {
    if (mDoGph_gInf_c::getFader()->getStatus() == 1 && mDoCPd_c::getTrigB(PAD_1)) {
        mStatus = 3;
    }
}

/* 801C55D8-801C5D3C 1BFF18 0764+00 1/1 0/0 0/0 .text            screenSetBase__15dMenu_Fishing_cFv
 */
void dMenu_Fishing_c::screenSetBase() {
    static const u64 fish_n[6] = {
        'fish_n_6', 'fish_n_5', 'fish_n_3', 'fish_n_1', 'fish_n_2', 'fish_n_4',
    };

    static const u64 fish_p0[6] = {
        'fi_pa_6n', 'fi_pa_5n', 'fi_pa_3n', 'fi_pa_1n', 'fi_pa_2n', 'fi_pa_4n',
    };

    static const u64 fish_p1[6] = {
        'fi_na_6n', 'fi_na_5n', 'fi_na_3n', 'fi_na_1n', 'fi_na_2n', 'fi_na_4n',
    };

    static const u64 fish_p2[6] = {'fi_li_6n', 'fi_li_5n', 'fi_li_3n',
                                   'fi_li_1n', 'fi_li_2n', 'fi_li_4n'};

    static const u64 fish_p3[6] = {
        'b_box_6n', 'b_box_5n', 'b_box_3n', 'b_box_1n', 'b_box_2n', 'b_box_4n',
    };

    static const u64 fish_p4[6] = {
        'r_box_6n', 'r_box_5n', 'r_box_3n', 'r_box_1n', 'r_box_2n', 'r_box_4n',
    };

    static const u64 fish_p5[6] = {
        'info_6_n', 'info_5_n', 'info_3_n', 'info_1_n', 'info_2_n', 'info_4_n',
    };

    static const u64 size_1[6] = {
        'size_t_6', 'size_t_5', 'size_t_3', 'size_t_1', 'size_t_2', 'size_t_4',
    };

    static const u64 size_unit_1[6] = {
        'cm_t_6', 'cm_t_5', 'cm_t_3', 'cm_t_1', 'cm_t_2', 'cm_t_4',
    };

    static const u64 count_1[6] = {
        'count_t6', 'count_t5', 'count_t3', 'count_t1', 'count_t2', 'count_t4',
    };

    static const u64 count_unit_1[6] = {
        'cou_t_6', 'cou_t_5', 'cou_t_3', 'cou_t_1', 'cou_t_2', 'cou_t_4',
    };

    static const u64 name_0[6] = {
        'name_6', 'name_5', 'name_3', 'name_1', 'name_2', 'name_4',
    };

    static const u64 fname_0[6] = {
        'f_name_6', 'f_name_5', 'f_name_3', 'f_name_1', 'f_name_2', 'f_name_4',
    };

    static const u32 name_id[6] = {
        0x59E, 0x59D, 0x59B, 0x599, 0x59A, 0x59C,
    };

    ResTIMG* TIMG = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', "tt_block8x8.bti");
    mpBlackTex = new J2DPicture(TIMG);

    mpBlackTex->setBlackWhite(JUtility::TColor(0, 0, 0, 0), JUtility::TColor(0, 0, 0, 0xff));
    mpScreen = new J2DScreen();
    mpScreen->setPriority("zelda_fish_window.blo", 0x20000, mpArchive);
    dPaneClass_showNullPane(mpScreen);
    mpParent = new CPaneMgr(mpScreen, 'n_all', 2, NULL);
    mpParent->setAlphaRate(0.0f);
    for (int i = 0; i < 6; i++) {
        mpFishParent[i] = new CPaneMgr(mpScreen, fish_n[i], 0, NULL);
        mpFishParts[0][i] = new CPaneMgr(mpScreen, fish_p0[i], 0, NULL);
        mpFishParts[1][i] = new CPaneMgr(mpScreen, fish_p1[i], 0, NULL);
        mpFishParts[2][i] = new CPaneMgr(mpScreen, fish_p2[i], 0, NULL);
        mpFishParts[3][i] = new CPaneMgr(mpScreen, fish_p3[i], 0, NULL);
        mpFishParts[4][i] = new CPaneMgr(mpScreen, fish_p4[i], 0, NULL);
        mpFishParts[5][i] = new CPaneMgr(mpScreen, fish_p5[i], 0, NULL);
    }
    mpFishInfoParent[0] = new CPaneMgr(mpScreen, 'info_blu', 0, NULL);
    mpFishInfoParent[1] = new CPaneMgr(mpScreen, 'info_red', 0, NULL);
    J2DTextBox* textBox = (J2DTextBox*)mpScreen->search('f_t00');
    mpScreen->search('t_t00')->hide();
    textBox->setFont(mDoExt_getSubFont());
    textBox->setString(0x200, "");
    mpString->getString(0x5a1, textBox, NULL, NULL, NULL, 0);
    for (int i = 0; i < 6; i++) {
        field_0x10c[1][i] = (J2DTextBox*)mpScreen->search(size_1[i]);
        field_0x10c[1][i]->setFont(mDoExt_getSubFont());
        field_0x10c[1][i]->setString(0x20, "");

        field_0x16c[1][i] = (J2DTextBox*)mpScreen->search(size_unit_1[i]);
        field_0x16c[1][i]->setFont(mDoExt_getSubFont());
        field_0x16c[1][i]->setString(0x20, "");

        field_0x13c[1][i] = (J2DTextBox*)mpScreen->search(count_1[i]);
        field_0x13c[1][i]->setFont(mDoExt_getSubFont());
        field_0x13c[1][i]->setString(0x20, "");

        field_0x19c[1][i] = (J2DTextBox*)mpScreen->search(count_unit_1[i]);
        field_0x19c[1][i]->setFont(mDoExt_getSubFont());
        field_0x19c[1][i]->setString(0x20, "");

        field_0x1cc[i] = (J2DTextBox*)mpScreen->search(name_0[i]);
        mpScreen->search(fname_0[i])->hide();
        field_0x1cc[i]->setFont(mDoExt_getSubFont());
        field_0x1cc[i]->setString(0x20, "");
        dMeter2Info_getStringKanji(name_id[i], field_0x1cc[i]->getStringPtr(), NULL);
    }
    field_0x1e4 = (J2DTextBox*)mpScreen->search('inf_size');
    field_0x1e8 = (J2DTextBox*)mpScreen->search('inf_cou');
    field_0x1e4->setFont(mDoExt_getMesgFont());
    field_0x1e8->setFont(mDoExt_getMesgFont());
    field_0x1e4->setString(0x20, "");
    dMeter2Info_getStringKanji(0x59f, field_0x1e4->getStringPtr(), NULL);
    field_0x1e8->setString(0x20, "");
    dMeter2Info_getStringKanji(0x5a0, field_0x1e8->getStringPtr(), NULL);
}

/* 801C5D3C-801C5EB8 1C067C 017C+00 1/1 0/0 0/0 .text screenSetDoIcon__15dMenu_Fishing_cFv */
void dMenu_Fishing_c::screenSetDoIcon() {
    static const u64 text_a_tag[5] = {'atext1_1', 'atext1_2', 'atext1_3', 'atext1_4', 'atext1_5'};
    static const u64 text_b_tag[5] = {'btext1_1', 'btext1_2', 'btext1_3', 'btext1_4', 'btext1_5'};

    mpIconScreen = new J2DScreen();
    mpIconScreen->setPriority("zelda_collect_soubi_do_icon_parts.blo", 0x20000, mpArchive);
    for (int i = 0; i < 2; i++) {
        mpButtonAB[i] = NULL;
        mpButtonText[i] = NULL;
    }
    dPaneClass_showNullPane(mpIconScreen);
    for (int i = 0; i < 5; i++) {
        mpAButtonString[i] = (J2DTextBox*)mpIconScreen->search(text_a_tag[i]);
        mpBButtonString[i] = (J2DTextBox*)mpIconScreen->search(text_b_tag[i]);
        mpAButtonString[i]->setFont(mDoExt_getMesgFont());
        mpBButtonString[i]->setFont(mDoExt_getMesgFont());
        mpAButtonString[i]->setString(0x20, "");
        mpBButtonString[i]->setString(0x20, "");
    }
}

/* 801C5EB8-801C5F68 1C07F8 00B0+00 1/1 0/0 0/0 .text setAButtonString__15dMenu_Fishing_cFUs */
void dMenu_Fishing_c::setAButtonString(u16 i_stringID) {
    if (i_stringID == 0) {
        for (int i = 0; i < 5; i++) {
            strcpy(mpAButtonString[i]->getStringPtr(), "");
        }
    } else {
        for (int i = 0; i < 5; i++) {
            dMeter2Info_getStringKanji(i_stringID, mpAButtonString[i]->getStringPtr(), NULL);
        }
    }
}

/* 801C5F68-801C6018 1C08A8 00B0+00 1/1 0/0 0/0 .text setBButtonString__15dMenu_Fishing_cFUs */
void dMenu_Fishing_c::setBButtonString(u16 i_stringID) {
    if (i_stringID == 0) {
        for (int i = 0; i < 5; i++) {
            strcpy(mpBButtonString[i]->getStringPtr(), "");
        }
    } else {
        for (int i = 0; i < 5; i++) {
            dMeter2Info_getStringKanji(i_stringID, mpBButtonString[i]->getStringPtr(), NULL);
        }
    }
}

/* 801C6018-801C605C 1C0958 0044+00 1/1 0/0 0/0 .text            getFigure__15dMenu_Fishing_cFi */
u8 dMenu_Fishing_c::getFigure(int param_0) {
    if (param_0 < 0) {
        param_0 *= -1;
    }
    if (1000 <= param_0) {
        param_0 = 999;
    }
    if (100 <= param_0) {
        return 3;
    }
    if (param_0 >= 10) {
        return 2;
    }
    return 1;
}

/* 801C605C-801C6210 1C099C 01B4+00 1/1 0/0 0/0 .text setFishParam__15dMenu_Fishing_cFiUsUc */
void dMenu_Fishing_c::setFishParam(int param_0, u16 param_1, u8 param_2) {
    u8 figure1 = getFigure(param_1);
    u8 figure2 = getFigure(param_2);
    char strBuff1[32];
    char strBuff2[32];
    for (int j = 1; j < 2; j++) {
        // part one, param_2
        dComIfGp_setMessageCountNumber(param_2);
        mpString->getString(0x597, field_0x10c[j][param_0], NULL, NULL, NULL, 0);
        char* x = field_0x10c[j][param_0]->getStringPtr();
        strcpy(strBuff1, x);
        int i;
        for (i = 0; strBuff1[i + figure2] != 0; i++) {
            strBuff2[i] = strBuff1[i + figure2];
        }
        strBuff2[i] = 0;
        strBuff1[figure2] = 0;
        strcpy(field_0x10c[j][param_0]->getStringPtr(), strBuff1);
        strcpy(field_0x16c[j][param_0]->getStringPtr(), strBuff2);

        // part two, param_1
        dComIfGp_setMessageCountNumber(param_1);
        mpString->getString(0x598, field_0x13c[j][param_0], NULL, NULL, NULL, 0);
        x = field_0x13c[j][param_0]->getStringPtr();
        strcpy(strBuff1, x);
        int k;
        for (k = 0; strBuff1[k + figure1] != 0; k++) {
            strBuff2[k] = strBuff1[k + figure1];
        }
        strBuff2[k] = 0;
        strBuff1[figure1] = 0;
        strcpy(field_0x13c[j][param_0]->getStringPtr(), strBuff1);
        strcpy(field_0x19c[j][param_0]->getStringPtr(), strBuff2);
    }
}

/* 801C6210-801C659C 1C0B50 038C+00 2/2 0/0 0/0 .text            setHIO__15dMenu_Fishing_cFb */
void dMenu_Fishing_c::setHIO(bool param_0) {
    if (param_0 || g_drawHIO.mFishListScreen.mDebug != 0) {
        for (int i = 0; i < 6; i++) {
            mpFishParent[i]->paneTrans(g_drawHIO.mFishListScreen.mFishInfoPosX[i],
                                       g_drawHIO.mFishListScreen.mFishInfoPosY[i]);
            mpFishParent[i]->scale(g_drawHIO.mFishListScreen.mFishInfoScale[i],
                                   g_drawHIO.mFishListScreen.mFishInfoScale[i]);

            mpFishParts[0][i]->paneTrans(g_drawHIO.mFishListScreen.mFishIconPosX[i],
                                         g_drawHIO.mFishListScreen.mFishIconPosY[i]);
            mpFishParts[0][i]->scale(g_drawHIO.mFishListScreen.mFishIconScale[i],
                                     g_drawHIO.mFishListScreen.mFishIconScale[i]);

            mpFishParts[1][i]->paneTrans(g_drawHIO.mFishListScreen.mFishNamePosX[i],
                                         g_drawHIO.mFishListScreen.mFishNamePosY[i]);
            mpFishParts[1][i]->scale(g_drawHIO.mFishListScreen.mFishNameScale[i],
                                     g_drawHIO.mFishListScreen.mFishNameScale[i]);

            mpFishParts[2][i]->paneTrans(g_drawHIO.mFishListScreen.mFishLinePosX[i],
                                         g_drawHIO.mFishListScreen.mFishLinePosY[i]);
            mpFishParts[2][i]->scale(g_drawHIO.mFishListScreen.mFishLineScale[i],
                                     g_drawHIO.mFishListScreen.mFishLineScale[i]);

            mpFishParts[3][i]->paneTrans(g_drawHIO.mFishListScreen.mFishSizePosX[i],
                                         g_drawHIO.mFishListScreen.mFishSizePosY[i]);
            mpFishParts[3][i]->scale(g_drawHIO.mFishListScreen.mFishSizeScale[i],
                                     g_drawHIO.mFishListScreen.mFishSizeScale[i]);

            mpFishParts[4][i]->paneTrans(g_drawHIO.mFishListScreen.mFishCountPosX[i],
                                         g_drawHIO.mFishListScreen.mFishCountPosY[i]);
            mpFishParts[4][i]->scale(g_drawHIO.mFishListScreen.mFishCountScale[i],
                                     g_drawHIO.mFishListScreen.mFishCountScale[i]);

            mpFishParts[5][i]->paneTrans(g_drawHIO.mFishListScreen.mFishCountSizePosX[i],
                                         g_drawHIO.mFishListScreen.mFishCountSizePosY[i]);
            mpFishParts[5][i]->scale(g_drawHIO.mFishListScreen.mFishCountSizeScale[i],
                                     g_drawHIO.mFishListScreen.mFishCountSizeScale[i]);
        }
        for (int i = 0; i < 2; i++) {
            mpFishInfoParent[i]->paneTrans(g_drawHIO.mFishListScreen.mPosX[i],
                                           g_drawHIO.mFishListScreen.mPosY[i]);
            mpFishInfoParent[i]->scale(g_drawHIO.mFishListScreen.mScale[i],
                                       g_drawHIO.mFishListScreen.mScale[i]);
        }
    }
    if (g_drawHIO.mCollectScreen.mButtonDebugON != false || param_0) {
        if (mpButtonAB[0] != NULL) {
            mpButtonAB[0]->paneTrans(g_drawHIO.mCollectScreen.mButtonAPosX,
                                     g_drawHIO.mCollectScreen.mButtonAPosY);
            mpButtonAB[0]->scale(g_drawHIO.mCollectScreen.mButtonAScale,
                                 g_drawHIO.mCollectScreen.mButtonAScale);
        }
        if (mpButtonAB[1] != NULL) {
            mpButtonAB[1]->paneTrans(g_drawHIO.mCollectScreen.mButtonBPosX,
                                     g_drawHIO.mCollectScreen.mButtonBPosY);
            mpButtonAB[1]->scale(g_drawHIO.mCollectScreen.mButtonBScale,
                                 g_drawHIO.mCollectScreen.mButtonBScale);
        }
        if (mpButtonText[0] != NULL) {
            mpButtonText[0]->paneTrans(g_drawHIO.mCollectScreen.mButtonATextPosX,
                                       g_drawHIO.mCollectScreen.mButtonATextPosY);
            mpButtonText[0]->scale(g_drawHIO.mCollectScreen.mButtonATextScale,
                                   g_drawHIO.mCollectScreen.mButtonATextScale);
        }
        if (mpButtonText[1] != NULL) {
            mpButtonText[1]->paneTrans(g_drawHIO.mCollectScreen.mButtonBTextPosX,
                                       g_drawHIO.mCollectScreen.mButtonBTextPosY);
            mpButtonText[1]->scale(g_drawHIO.mCollectScreen.mButtonBTextScale,
                                   g_drawHIO.mCollectScreen.mButtonBTextScale);
        }
    }
}

/**
 * d_menu_fishing.cpp
 * Fish Journal
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

//
// Forward References:
//

extern "C" void __ct__15dMenu_Fishing_cFP10JKRExpHeapP9STControlP10CSTControl();
extern "C" void __dt__15dMenu_Fishing_cFv();
extern "C" void _create__15dMenu_Fishing_cFv();
extern "C" void _move__15dMenu_Fishing_cFv();
extern "C" void _draw__15dMenu_Fishing_cFv();
extern "C" void isSync__15dMenu_Fishing_cFv();
extern "C" void init__15dMenu_Fishing_cFv();
extern "C" void _open__15dMenu_Fishing_cFv();
extern "C" void _close__15dMenu_Fishing_cFv();
extern "C" void wait_init__15dMenu_Fishing_cFv();
extern "C" void wait_move__15dMenu_Fishing_cFv();
extern "C" void screenSetBase__15dMenu_Fishing_cFv();
extern "C" void screenSetDoIcon__15dMenu_Fishing_cFv();
extern "C" void setAButtonString__15dMenu_Fishing_cFUs();
extern "C" void setBButtonString__15dMenu_Fishing_cFUs();
extern "C" void getFigure__15dMenu_Fishing_cFi();
extern "C" void setFishParam__15dMenu_Fishing_cFiUsUc();
extern "C" void setHIO__15dMenu_Fishing_cFb();
extern "C" void draw__15dMenu_Fishing_cFv();
extern "C" void __sinit_d_menu_fishing_cpp();
extern "C" extern char const* const d_menu_d_menu_fishing__stringBase0;

//
// External References:
//

extern "C" void mDoExt_setCurrentHeap__FP7JKRHeap();
extern "C" void mDoExt_getMesgFont__Fv();
extern "C" void mDoExt_getSubFont__Fv();
extern "C" void create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap();
extern "C" void getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c();
extern "C" void __ct__12dMsgString_cFv();
extern "C" void __dt__12dMsgString_cFv();
extern "C" void __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap();
extern "C" void paneTrans__8CPaneMgrFff();
extern "C" void dPaneClass_showNullPane__FP9J2DScreen();
extern "C" void show__13CPaneMgrAlphaFv();
extern "C" void hide__13CPaneMgrAlphaFv();
extern "C" void setAlphaRate__13CPaneMgrAlphaFf();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __ct__9J2DScreenFv();
extern "C" void setPriority__9J2DScreenFPCcUlP10JKRArchive();
extern "C" void draw__9J2DScreenFffPC14J2DGrafContext();
extern "C" void __ct__10J2DPictureFPC7ResTIMG();
extern "C" void getStringPtr__10J2DTextBoxCFv();
extern "C" void setString__10J2DTextBoxFsPCce();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_18();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_18();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__12dDlst_base_c[3];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];

extern "C" u8 mFader__13mDoGph_gInf_c[4];

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

/* 803BD074-803BD090 01A194 0010+0C 2/2 0/0 0/0 .data            __vt__15dMenu_Fishing_c */
SECTION_DATA extern void* __vt__15dMenu_Fishing_c[4 + 3 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__15dMenu_Fishing_cFv,
    (void*)__dt__15dMenu_Fishing_cFv,
    /* padding */
    NULL,
    NULL,
    NULL,
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
        J2DPane* pane = mpParent->getPanePtr();
        pane->mScaleX = 1.0f;
        pane->mScaleY = 1.0f;
        pane->calcMtx();
        mpParent->setAlphaRate(1.0f);
        return 1;
    } else {
        f32 div = field_0x1f8 / (f32)openFrames;
        J2DPane* pane = mpParent->getPanePtr();
        pane->mScaleX = div;
        pane->mScaleY = div;
        pane->calcMtx();
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
        J2DPane* pane = mpParent->getPanePtr();
        pane->mScaleX = 0.0f;
        pane->mScaleY = 0.0f;
        pane->calcMtx();
        mpParent->setAlphaRate(0.0f);
        return 1;
    } else {
        f32 div = field_0x1f8 / (f32)closeFrames;
        J2DPane* pane = mpParent->getPanePtr();
        pane->mScaleX = div;
        pane->mScaleY = div;
        pane->calcMtx();
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
    if (mDoGph_gInf_c::getFader()->getStatus() == 1 && mDoCPd_c::getTrigB(0)) {
        mStatus = 3;
    }
}

/* 80395D90-80395DC0 0223F0 0030+00 1/1 0/0 0/0 .rodata          fish_n$4060 */
static const u64 fish_n[6] = {
    'fish_n_6', 'fish_n_5', 'fish_n_3', 'fish_n_1', 'fish_n_2', 'fish_n_4',
};

/* 80395DC0-80395DF0 022420 0030+00 0/1 0/0 0/0 .rodata          fish_p0$4061 */
#pragma push
#pragma force_active on
static const u64 fish_p0[6] = {
    'fi_pa_6n', 'fi_pa_5n', 'fi_pa_3n', 'fi_pa_1n', 'fi_pa_2n', 'fi_pa_4n',
};
#pragma pop

/* 80395DF0-80395E20 022450 0030+00 0/1 0/0 0/0 .rodata          fish_p1$4062 */
#pragma push
#pragma force_active on
static const u64 fish_p1[6] = {
    'fi_na_6n', 'fi_na_5n', 'fi_na_3n', 'fi_na_1n', 'fi_na_2n', 'fi_na_4n',
};
#pragma pop

/* 80395E20-80395E50 022480 0030+00 0/1 0/0 0/0 .rodata          fish_p2$4063 */
#pragma push
#pragma force_active on
static const u64 fish_p2[6] = {'fi_li_6n', 'fi_li_5n', 'fi_li_3n',
                               'fi_li_1n', 'fi_li_2n', 'fi_li_4n'};
#pragma pop

/* 80395E50-80395E80 0224B0 0030+00 0/1 0/0 0/0 .rodata          fish_p3$4064 */
#pragma push
#pragma force_active on
static const u64 fish_p3[6] = {
    'b_box_6n', 'b_box_5n', 'b_box_3n', 'b_box_1n', 'b_box_2n', 'b_box_4n',
};
#pragma pop

/* 80395E80-80395EB0 0224E0 0030+00 0/1 0/0 0/0 .rodata          fish_p4$4065 */
#pragma push
#pragma force_active on
static const u64 fish_p4[6] = {
    'r_box_6n', 'r_box_5n', 'r_box_3n', 'r_box_1n', 'r_box_2n', 'r_box_4n',
};
#pragma pop

/* 80395EB0-80395EE0 022510 0030+00 0/1 0/0 0/0 .rodata          fish_p5$4066 */
#pragma push
#pragma force_active on
static const u64 fish_p5[6] = {
    'info_6_n', 'info_5_n', 'info_3_n', 'info_1_n', 'info_2_n', 'info_4_n',
};
#pragma pop

/* 80395EE0-80395F10 022540 0030+00 0/1 0/0 0/0 .rodata          size_1$4081 */
#pragma push
#pragma force_active on
static const u64 size_1[6] = {
    'size_t_6', 'size_t_5', 'size_t_3', 'size_t_1', 'size_t_2', 'size_t_4',
};
#pragma pop

/* 80395F10-80395F40 022570 0030+00 0/1 0/0 0/0 .rodata          size_unit_1$4082 */
#pragma push
#pragma force_active on
static const u64 size_unit_1[6] = {
    'cm_t_6', 'cm_t_5', 'cm_t_3', 'cm_t_1', 'cm_t_2', 'cm_t_4',
};
#pragma pop

/* 80395F40-80395F70 0225A0 0030+00 0/1 0/0 0/0 .rodata          count_1$4083 */
#pragma push
#pragma force_active on
static const u64 count_1[6] = {
    'count_t6', 'count_t5', 'count_t3', 'count_t1', 'count_t2', 'count_t4',
};
#pragma pop

/* 80395F70-80395FA0 0225D0 0030+00 0/1 0/0 0/0 .rodata          count_unit_1$4084 */
#pragma push
#pragma force_active on
static const u64 count_unit_1[6] = {
    'cou_t_6', 'cou_t_5', 'cou_t_3', 'cou_t_1', 'cou_t_2', 'cou_t_4',
};
#pragma pop

/* 80395FA0-80395FD0 022600 0030+00 0/1 0/0 0/0 .rodata          name_0$4085 */
#pragma push
#pragma force_active on
static const u64 name_0[6] = {
    'name_6', 'name_5', 'name_3', 'name_1', 'name_2', 'name_4',
};
#pragma pop

/* 80395FD0-80396000 022630 0030+00 0/1 0/0 0/0 .rodata          fname_0$4086 */
#pragma push
#pragma force_active on
static const u64 fname_0[6] = {
    'f_name_6', 'f_name_5', 'f_name_3', 'f_name_1', 'f_name_2', 'f_name_4',
};
#pragma pop

/* 80396000-80396018 022660 0018+00 0/1 0/0 0/0 .rodata          name_id$4087 */
#pragma push
#pragma force_active on
static const u32 name_id[6] = {
    0x59E, 0x59D, 0x59B, 0x599, 0x59A, 0x59C,
};
#pragma pop

/* 801C55D8-801C5D3C 1BFF18 0764+00 1/1 0/0 0/0 .text            screenSetBase__15dMenu_Fishing_cFv
 */
void dMenu_Fishing_c::screenSetBase() {
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
        field_0x124[i] = (J2DTextBox*)mpScreen->search(size_1[i]);
        field_0x124[i]->setFont(mDoExt_getSubFont());
        field_0x124[i]->setString(0x20, "");

        field_0x184[i] = (J2DTextBox*)mpScreen->search(size_unit_1[i]);
        field_0x184[i]->setFont(mDoExt_getSubFont());
        field_0x184[i]->setString(0x20, "");

        field_0x154[i] = (J2DTextBox*)mpScreen->search(count_1[i]);
        field_0x154[i]->setFont(mDoExt_getSubFont());
        field_0x154[i]->setString(0x20, "");

        field_0x1b4[i] = (J2DTextBox*)mpScreen->search(count_unit_1[i]);
        field_0x1b4[i]->setFont(mDoExt_getSubFont());
        field_0x1b4[i]->setString(0x20, "");

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

/* 80396018-80396040 022678 0028+00 1/1 0/0 0/0 .rodata          text_a_tag$4167 */
static const u64 text_a_tag[5] = {'atext1_1', 'atext1_2', 'atext1_3', 'atext1_4', 'atext1_5'};

/* 80396040-80396068 0226A0 0028+00 1/1 0/0 0/0 .rodata          text_b_tag$4168 */
static const u64 text_b_tag[5] = {'btext1_1', 'btext1_2', 'btext1_3', 'btext1_4', 'btext1_5'};

/* 801C5D3C-801C5EB8 1C067C 017C+00 1/1 0/0 0/0 .text screenSetDoIcon__15dMenu_Fishing_cFv */
void dMenu_Fishing_c::screenSetDoIcon() {
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
#ifdef NONMATCHING
// regalloc
void dMenu_Fishing_c::setFishParam(int param_0, u16 param_1, u8 param_2) {
    u8 figure1 = getFigure(param_1);
    u8 figure2 = getFigure(param_2);
    char strBuff1[32];
    char strBuff2[32];
    for (int j = 1; j < 2; j++) {
        // part one, param_2
        dComIfGp_setMessageCountNumber(param_2);
        mpString->getString(0x597, field_0x124[param_0], NULL, NULL, NULL, 0);
        strcpy(strBuff1, field_0x124[param_0]->getStringPtr());
        int i;
        for (i = 0; strBuff1[i + figure2] != 0; i++) {
            strBuff2[i] = strBuff1[i + figure2];
        }
        strBuff2[i] = 0;
        strBuff1[figure2] = 0;
        strcpy(field_0x124[param_0]->getStringPtr(), strBuff1);
        strcpy(field_0x184[param_0]->getStringPtr(), strBuff2);

        // part two, param_1
        dComIfGp_setMessageCountNumber(param_1);
        mpString->getString(0x598, field_0x154[param_0], NULL, NULL, NULL, 0);
        strcpy(strBuff1, field_0x154[param_0]->getStringPtr());
        int k;
        for (k = 0; strBuff1[k + figure1] != 0; k++) {
            strBuff2[k] = strBuff1[k + figure1];
        }
        strBuff2[k] = 0;
        strBuff1[figure1] = 0;
        strcpy(field_0x154[param_0]->getStringPtr(), strBuff1);
        strcpy(field_0x1b4[param_0]->getStringPtr(), strBuff2);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Fishing_c::setFishParam(int param_0, u16 param_1, u8 param_2) {
    nofralloc
#include "asm/d/menu/d_menu_fishing/setFishParam__15dMenu_Fishing_cFiUsUc.s"
}
#pragma pop
#endif

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
            mpButtonAB[0]->paneTrans(g_drawHIO.mCollectScreen.mAButtonPosX,
                                     g_drawHIO.mCollectScreen.mAButtonPosY);
            mpButtonAB[0]->scale(g_drawHIO.mCollectScreen.mAButtonScale,
                                 g_drawHIO.mCollectScreen.mAButtonScale);
        }
        if (mpButtonAB[1] != NULL) {
            mpButtonAB[1]->paneTrans(g_drawHIO.mCollectScreen.mBButtonPosX,
                                     g_drawHIO.mCollectScreen.mBButtonPosY);
            mpButtonAB[1]->scale(g_drawHIO.mCollectScreen.mBButtonScale,
                                 g_drawHIO.mCollectScreen.mBButtonScale);
        }
        if (mpButtonText[0] != NULL) {
            mpButtonText[0]->paneTrans(g_drawHIO.mCollectScreen.mAButtonTextPosX,
                                       g_drawHIO.mCollectScreen.mAButtonTextPosY);
            mpButtonText[0]->scale(g_drawHIO.mCollectScreen.mAButtonTextScale,
                                   g_drawHIO.mCollectScreen.mAButtonTextScale);
        }
        if (mpButtonText[1] != NULL) {
            mpButtonText[1]->paneTrans(g_drawHIO.mCollectScreen.mBButtonTextPosX,
                                       g_drawHIO.mCollectScreen.mBButtonTextPosY);
            mpButtonText[1]->scale(g_drawHIO.mCollectScreen.mBButtonTextScale,
                                   g_drawHIO.mCollectScreen.mBButtonTextScale);
        }
    }
}

/* 801C659C-801C65BC 1C0EDC 0020+00 1/0 0/0 0/0 .text            draw__15dMenu_Fishing_cFv */
#ifdef NONMATCHING
// Matches but TU has to be finished and
// cleaned up with every other function
void dMenu_Fishing_c::draw() {
    _draw();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dMenu_Fishing_c::draw() {
extern "C" asm void draw__15dMenu_Fishing_cFv() {
    nofralloc
#include "asm/d/menu/d_menu_fishing/draw__15dMenu_Fishing_cFv.s"
}
#pragma pop
#endif

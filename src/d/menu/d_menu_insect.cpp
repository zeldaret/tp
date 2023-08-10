/**
 * d_menu_insect.cpp
 * Menu - Insect List
 */

#include "d/menu/d_menu_insect.h"
#include "JSystem/J2DGraph/J2DTextBox.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JKernel/JKRMemArchive.h"
#include "JSystem/JUtility/TColor.h"
#include "MSL_C/stdio.h"
#include "MSL_C/string.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_lib.h"
#include "d/d_select_cursor.h"
#include "d/meter/d_meter2_info.h"
#include "d/meter/d_meter_HIO.h"
#include "d/msg/d_msg_class.h"
#include "d/msg/d_msg_string.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_controller_pad.h"
#include "m_Do/m_Do_graphic.h"
#include "msg/scrn/d_msg_scrn_3select.h"

//
// Forward References:
//

extern "C" void __ct__14dMenu_Insect_cFP10JKRExpHeapP9STControlP10CSTControlUc();
extern "C" void __dt__14dMenu_Insect_cFv();
extern "C" void _create__14dMenu_Insect_cFv();
extern "C" void _move__14dMenu_Insect_cFv();
extern "C" void _draw__14dMenu_Insect_cFv();
extern "C" void isSync__14dMenu_Insect_cFv();
extern "C" void init__14dMenu_Insect_cFv();
extern "C" void _open__14dMenu_Insect_cFv();
extern "C" void _close__14dMenu_Insect_cFv();
extern "C" void wait_init__14dMenu_Insect_cFv();
extern "C" void wait_move__14dMenu_Insect_cFv();
extern "C" void explain_open_init__14dMenu_Insect_cFv();
extern "C" void explain_open_move__14dMenu_Insect_cFv();
extern "C" void explain_move_init__14dMenu_Insect_cFv();
extern "C" void explain_move_move__14dMenu_Insect_cFv();
extern "C" void select_move_init__14dMenu_Insect_cFv();
extern "C" void select_move_move__14dMenu_Insect_cFv();
extern "C" void explain_close_init__14dMenu_Insect_cFv();
extern "C" void explain_close_move__14dMenu_Insect_cFv();
extern "C" void screenSetBase__14dMenu_Insect_cFv();
extern "C" void screenSetExplain__14dMenu_Insect_cFv();
extern "C" void screenSetDoIcon__14dMenu_Insect_cFv();
extern "C" void getGetInsectNum__14dMenu_Insect_cFv();
extern "C" void getInsectItemID__14dMenu_Insect_cFii();
extern "C" void isGetInsect__14dMenu_Insect_cFii();
extern "C" void isGiveInsect__14dMenu_Insect_cFii();
extern "C" void isCatchInsect__14dMenu_Insect_cFUc();
extern "C" void isGiveInsect__14dMenu_Insect_cFUc();
extern "C" void isCatchNotGiveInsect__14dMenu_Insect_cFUc();
extern "C" void cursorMove__14dMenu_Insect_cFv();
extern "C" void setCursorPos__14dMenu_Insect_cFv();
extern "C" bool dpdMove__14dMenu_Insect_cFv();
extern "C" void setAButtonString__14dMenu_Insect_cFUs();
extern "C" void setBButtonString__14dMenu_Insect_cFUs();
extern "C" void setHIO__14dMenu_Insect_cFb();
extern "C" void draw__14dMenu_Insect_cFv();
extern "C" void __sinit_d_menu_insect_cpp();
extern "C" extern char const* const d_menu_d_menu_insect__stringBase0;

//
// External References:
//

extern "C" void mDoExt_setCurrentHeap__FP7JKRHeap();
extern "C" void mDoExt_getMesgFont__Fv();
extern "C" void mDoExt_getSubFont__Fv();
extern "C" void create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap();
extern "C" void checkTrigger__9STControlFv();
extern "C" void checkLeftTrigger__9STControlFv();
extern "C" void checkRightTrigger__9STControlFv();
extern "C" void checkUpTrigger__9STControlFv();
extern "C" void checkDownTrigger__9STControlFv();
extern "C" void isFirstBit__21dSv_player_get_item_cCFUc();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void __ct__16dSelect_cursor_cFUcfP10JKRArchive();
extern "C" void setPos__16dSelect_cursor_cFffP7J2DPaneb();
extern "C" void setParam__16dSelect_cursor_cFfffff();
extern "C" void setScale__16dSelect_cursor_cFf();
extern "C" void setAlphaRate__16dSelect_cursor_cFf();
extern "C" void getString__13dMeter2Info_cFUlPcP14JMSMesgEntry_c();
extern "C" void getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c();
extern "C" void getStringLength__13dMeter2Info_cFP7JUTFontffPc();
extern "C" void
readItemTexture__13dMeter2Info_cFUcPvP10J2DPicturePvP10J2DPicturePvP10J2DPicturePvP10J2DPicturei();
extern "C" void dMeter2Info_set2DVibration__Fv();
extern "C" void __ct__17dMsgScrn3Select_cFv();
extern "C" void isSelect__17dMsgScrn3Select_cFv();
extern "C" void setString__17dMsgScrn3Select_cFPcPcPc();
extern "C" void setRubyString__17dMsgScrn3Select_cFPcPcPc();
extern "C" void translate__17dMsgScrn3Select_cFff();
extern "C" void draw__17dMsgScrn3Select_cFff();
extern "C" void selAnimeInit__17dMsgScrn3Select_cFUcUcUcfUc();
extern "C" void selAnimeMove__17dMsgScrn3Select_cFUcUcb();
extern "C" void selAnimeEnd__17dMsgScrn3Select_cFv();
extern "C" void getTextBoxWidth__17dMsgScrn3Select_cFv();
extern "C" void getFontSize__17dMsgScrn3Select_cFv();
extern "C" void getCharSpace__17dMsgScrn3Select_cFv();
extern "C" void __ct__12dMsgString_cFv();
extern "C" void __dt__12dMsgString_cFv();
extern "C" void __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap();
extern "C" void paneTrans__8CPaneMgrFff();
extern "C" void getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs();
extern "C" void dPaneClass_showNullPane__FP9J2DScreen();
extern "C" void show__13CPaneMgrAlphaFv();
extern "C" void hide__13CPaneMgrAlphaFv();
extern "C" void setAlphaRate__13CPaneMgrAlphaFf();
extern "C" void getAlphaRate__13CPaneMgrAlphaFv();
extern "C" void alphaAnime__13CPaneMgrAlphaFsUcUcUc();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void alloc__7JKRHeapFUli();
extern "C" void free__7JKRHeapFPv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __ct__9J2DScreenFv();
extern "C" void setPriority__9J2DScreenFPCcUlP10JKRArchive();
extern "C" void draw__9J2DScreenFffPC14J2DGrafContext();
extern "C" void __ct__10J2DPictureFPC7ResTIMG();
extern "C" void getStringPtr__10J2DTextBoxCFv();
extern "C" void setString__10J2DTextBoxFsPCce();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__12dDlst_base_c[3];
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 mFader__13mDoGph_gInf_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 803968C0-803968C0 022F20 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803968C0 = "tt_block8x8.bti";
#pragma pop

/* 803BD780-803BD78C 01A8A0 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

typedef void (dMenu_Insect_c::*initFunc)();
static initFunc map_init_process[] = {
    &dMenu_Insect_c::wait_init,          &dMenu_Insect_c::explain_open_init,
    &dMenu_Insect_c::explain_move_init,  &dMenu_Insect_c::select_move_init,
    &dMenu_Insect_c::explain_close_init,
};

typedef void (dMenu_Insect_c::*moveFunc)();
static moveFunc map_move_process[] = {
    &dMenu_Insect_c::wait_move,          &dMenu_Insect_c::explain_open_move,
    &dMenu_Insect_c::explain_move_move,  &dMenu_Insect_c::select_move_move,
    &dMenu_Insect_c::explain_close_move,
};

/* 803BD87C-803BD894 01A99C 0018+00 1/1 0/0 0/0 .data            l_itemno$4346 */
static u8 l_itemno_4346[24] = {
    0xC0, 0xC1, 0xC2, 0xC3, 0xC4, 0xC5, 0xC6, 0xC7, 0xC8, 0xC9, 0xCA, 0xCB,
    0xCC, 0xCD, 0xCE, 0xCF, 0xD0, 0xD1, 0xD2, 0xD3, 0xD4, 0xD5, 0xD6, 0xD7,
};

/* 803BD894-803BD8AC 01A9B4 0018+00 1/1 0/0 0/0 .data            l_itemno$4364 */
static u8 l_itemno_4364[24] = {
    0xD4, 0xD5, 0xD6, 0xD7, 0xC0, 0xC1, 0xCC, 0xCD, 0xC4, 0xC5, 0xCA, 0xCB,
    0xC2, 0xC3, 0xCE, 0xCF, 0xD0, 0xD1, 0xC8, 0xC9, 0xC6, 0xC7, 0xD2, 0xD3,
};

/* 803BD8AC-803BD8C8 01A9CC 0010+0C 2/2 0/0 0/0 .data            __vt__14dMenu_Insect_c */
SECTION_DATA extern void* __vt__14dMenu_Insect_c[4 + 3 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__14dMenu_Insect_cFv,
    (void*)__dt__14dMenu_Insect_cFv,
    /* padding */
    NULL,
    NULL,
    NULL,
};

/* 80454238-8045423C 002838 0004+00 6/6 0/0 0/0 .sdata2          @3834 */
SECTION_SDATA2 static f32 lit_3834 = 1.0f;

/* 8045423C-80454240 00283C 0004+00 1/1 0/0 0/0 .sdata2          @3835 */
SECTION_SDATA2 static f32 lit_3835 = 1.0f / 10.0f;

/* 80454240-80454244 002840 0004+00 1/1 0/0 0/0 .sdata2          @3836 */
SECTION_SDATA2 static f32 lit_3836 = 7.0f / 10.0f;

/* 80454244-80454248 002844 0004+00 5/5 0/0 0/0 .sdata2          @3837 */
SECTION_SDATA2 static u8 lit_3837[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 801D8114-801D82F4 1D2A54 01E0+00 0/0 2/2 0/0 .text
 * __ct__14dMenu_Insect_cFP10JKRExpHeapP9STControlP10CSTControlUc */
#ifdef NONMATCHING
// Matches with literals
dMenu_Insect_c::dMenu_Insect_c(JKRExpHeap* i_heap, STControl* i_stick, CSTControl* i_cstick,
                               u8 param_3) {
    mpHeap = i_heap;
    mpArchive = NULL;
    mpMount = NULL;
    mpStick = i_stick;
    mpCStick = i_cstick;
    mStatus = 1;
    field_0xf3 = 0;
    field_0xf0 = 0;
    field_0xf4 = 0;
    field_0xf5 = 0;
    field_0xf6 = param_3;
    field_0xf8 = 0xff;
    field_0xf9 = 0xff;
    field_0xfa = 0xff;
    field_0xfb = 0xff;
    field_0xf7 = 1;
    ResTIMG* image = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', "tt_block8x8.bti");
    mpBlackTex = new J2DPicture(image);
    mpBlackTex->setBlackWhite(JUtility::TColor(0, 0, 0, 0), JUtility::TColor(0, 0, 0, 0xff));
    field_0xfc = 0;
    mpDrawCursor = new dSelect_cursor_c(2, 1.0f, NULL);
    mpDrawCursor->setParam(1.0f, 1.0f, 0.1f, 0.7f, 0.7f);
    mpDrawCursor->setAlphaRate(0.0f);
    mpDrawCursor->setScale(0.0f);
    mpDrawCursor->offPlayAnime(0);
    mpSelect_c = new dMsgScrn3Select_c();
    mpExpItemTex = mpHeap->alloc(0xc00, 0x20);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dMenu_Insect_c::dMenu_Insect_c(JKRExpHeap* param_0, STControl* param_1, CSTControl* param_2,
                                   u8 param_3) {
    nofralloc
#include "asm/d/menu/d_menu_insect/__ct__14dMenu_Insect_cFP10JKRExpHeapP9STControlP10CSTControlUc.s"
}
#pragma pop
#endif

/* 801D82F4-801D8658 1D2C34 0364+00 1/0 0/0 0/0 .text            __dt__14dMenu_Insect_cFv */
dMenu_Insect_c::~dMenu_Insect_c() {
    delete mpBlackTex;
    mpBlackTex = NULL;

    delete mpDrawCursor;
    mpDrawCursor = NULL;

    delete mpSelect_c;
    mpSelect_c = NULL;

    mpHeap->free(mpExpItemTex);
    mpExpItemTex = NULL;

    delete mpString;
    mpString = NULL;

    delete mpScreen;
    mpScreen = NULL;

    delete mpParent;
    mpParent = NULL;

    for (int i = 0; i < 24; i++) {
        delete mpINSParent[i];
        mpINSParent[i] = NULL;
    }

    delete mpExpScreen;
    mpExpScreen = NULL;

    delete mpExpParent;
    mpExpParent = NULL;

    for (int i = 0; i < 2; i++) {
        delete mpExpSubWin[i];
        mpExpSubWin[i] = NULL;
    }

    delete mpInfoText;
    mpInfoText = NULL;

    delete mpIconScreen;
    mpIconScreen = NULL;

    for (int i = 0; i < 2; i++) {
        if (mpButtonAB[i] != NULL) {
            delete mpButtonAB[i];
            mpButtonAB[i] = NULL;
        }

        if (mpButtonText[i] != NULL) {
            delete mpButtonText[i];
            mpButtonText[i] = NULL;
        }
    }

    if (mpMount != NULL) {
        mpMount->getArchive()->unmount();
        delete mpMount;
        mpMount = NULL;
    }

    if (mpArchive != NULL) {
        mpArchive->unmount();
        mpArchive = NULL;
    }

    dComIfGp_getMsgArchive(0)->removeResourceAll();
}

/* 801D8658-801D86C8 1D2F98 0070+00 1/1 0/0 0/0 .text            _create__14dMenu_Insect_cFv */
void dMenu_Insect_c::_create() {
    mpString = new dMsgString_c();
    screenSetBase();
    screenSetExplain();
    screenSetDoIcon();
    setHIO(true);
    init();
}

/* 801D86C8-801D8760 1D3008 0098+00 0/0 3/3 0/0 .text            _move__14dMenu_Insect_cFv */
void dMenu_Insect_c::_move() {
    JKRHeap* heap = mDoExt_setCurrentHeap((JKRHeap*)mpHeap);
    u8 process = field_0xf3;
    (this->*map_move_process[field_0xf3])();
    if (process != field_0xf3) {
        (this->*map_init_process[field_0xf3])();
    }
    setHIO(false);
    mDoExt_setCurrentHeap(heap);
}

/* ############################################################################################## */
/* 80454248-8045424C 002848 0004+00 1/1 0/0 0/0 .sdata2          @3961 */
SECTION_SDATA2 static f32 lit_3961 = 608.0f;

/* 8045424C-80454250 00284C 0004+00 1/1 0/0 0/0 .sdata2          @3962 */
SECTION_SDATA2 static f32 lit_3962 = 448.0f;

/* 80454250-80454254 002850 0004+00 1/1 0/0 0/0 .sdata2          @3963 */
SECTION_SDATA2 static f32 lit_3963 = 150.0f;

/* 80454254-80454258 002854 0004+00 1/1 0/0 0/0 .sdata2          @3964 */
SECTION_SDATA2 static f32 lit_3964 = 486.0f;

/* 80454258-80454260 002858 0004+04 1/1 0/0 0/0 .sdata2          @3965 */
SECTION_SDATA2 static f32 lit_3965[1 + 1 /* padding */] = {
    209.0f,
    /* padding */
    0.0f,
};

/* 801D8760-801D88EC 1D30A0 018C+00 1/1 1/1 0/0 .text            _draw__14dMenu_Insect_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Insect_c::_draw() {
    nofralloc
#include "asm/d/menu/d_menu_insect/_draw__14dMenu_Insect_cFv.s"
}
#pragma pop

/* 801D88EC-801D8914 1D322C 0028+00 0/0 3/3 0/0 .text            isSync__14dMenu_Insect_cFv */
bool dMenu_Insect_c::isSync() {
    if (mpMount != NULL && mpMount->sync() == false) {
        return 0;
    }
    return 1;
}

/* 801D8914-801D894C 1D3254 0038+00 1/1 0/0 0/0 .text            init__14dMenu_Insect_cFv */
void dMenu_Insect_c::init() {
    (this->*map_init_process[field_0xf3])();
}

/* ############################################################################################## */
/* 803968C0-803968C0 022F20 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803968D0 = "/res/Layout/insectRes.arc";
#pragma pop

/* 80454260-80454268 002860 0008+00 2/2 0/0 0/0 .sdata2          @4020 */
SECTION_SDATA2 static f64 lit_4020 = 4503601774854144.0 /* cast s32 to float */;

/* 801D894C-801D8B2C 1D328C 01E0+00 0/0 3/3 0/0 .text            _open__14dMenu_Insect_cFv */
#ifdef NONMATCHING
// Matches with literals
int dMenu_Insect_c::_open() {
    if (!mpMount) {
        mpMount = mDoDvdThd_mountArchive_c::create("/res/Layout/insectRes.arc", 0, NULL);
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

    s16 openFrame = g_drawHIO.mInsectListScreen.mOpenFrame;
    s16 closeFrame = g_drawHIO.mInsectListScreen.mCloseFrame;
    field_0xf0 = g_drawHIO.mInsectListScreen.mOpenFrame;
    if (field_0xf0 >= openFrame) {
        field_0xf0 = closeFrame;
        mStatus = 2;
        J2DPane* pane = mpParent->getPanePtr();
        pane->mScaleX = 1.0f;
        pane->mScaleY = 1.0f;
        pane->calcMtx();
        mpParent->setAlphaRate(1.0f);
        setCursorPos();
        mpDrawCursor->setAlphaRate(1.0f);
        mpDrawCursor->setScale(1.0f);
        mpDrawCursor->onPlayAnime(0);
        return 1;
    } else {
        f32 div = (f32)field_0xf0 / (f32)openFrame;
        J2DPane* pane = mpParent->getPanePtr();
        pane->mScaleX = div;
        pane->mScaleY = div;
        pane->calcMtx();
        mpParent->setAlphaRate(div);
        setCursorPos();
        mpDrawCursor->setAlphaRate(div);
        mpDrawCursor->setScale(div);
        return 0;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int dMenu_Insect_c::_open() {
    nofralloc
#include "asm/d/menu/d_menu_insect/_open__14dMenu_Insect_cFv.s"
}
#pragma pop
#endif

/* 801D8B2C-801D8C68 1D346C 013C+00 0/0 1/1 0/0 .text            _close__14dMenu_Insect_cFv */
#ifdef NONMATCHING
// Matches with literals
int dMenu_Insect_c::_close() {
    s16 closeFrame = g_drawHIO.mInsectListScreen.mCloseFrame;
    field_0xf0 = 0;
    if (field_0xf0 <= 0) {
        field_0xf0 = 0;
        mStatus = 0;
        J2DPane* pane = mpParent->getPanePtr();
        pane->mScaleX = 0.0f;
        pane->mScaleY = 0.0f;
        pane->calcMtx();
        mpParent->setAlphaRate(0.0f);
        setCursorPos();
        mpDrawCursor->setAlphaRate(0.0f);
        mpDrawCursor->setScale(0.0f);
        return 1;
    } else {
        f32 div = (f32)field_0xf0 / (f32)closeFrame;
        J2DPane* pane = mpParent->getPanePtr();
        pane->mScaleX = div;
        pane->mScaleY = div;
        pane->calcMtx();
        mpParent->setAlphaRate(div);
        setCursorPos();
        mpDrawCursor->setAlphaRate(div);
        mpDrawCursor->setScale(div);
        return 0;
    }
    return field_0xf0 <= 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int dMenu_Insect_c::_close() {
    nofralloc
#include "asm/d/menu/d_menu_insect/_close__14dMenu_Insect_cFv.s"
}
#pragma pop
#endif

/* 801D8C68-801D8CCC 1D35A8 0064+00 1/0 0/0 0/0 .text            wait_init__14dMenu_Insect_cFv */
void dMenu_Insect_c::wait_init() {
    if (isGetInsect(field_0xf4, field_0xf5) != 0) {
        setAButtonString(0x368);
    } else {
        setAButtonString(0);
    }
    setBButtonString(0x3f9);
}

/* ############################################################################################## */
/* 80454268-8045426C 002868 0004+00 4/4 0/0 0/0 .sdata2          @4089 */
SECTION_SDATA2 static f32 lit_4089 = -1.0f;

/* 801D8CCC-801D8E00 1D360C 0134+00 1/0 0/0 0/0 .text            wait_move__14dMenu_Insect_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Insect_c::wait_move() {
    nofralloc
#include "asm/d/menu/d_menu_insect/wait_move__14dMenu_Insect_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 803968C0-803968C0 022F20 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803968EA = ""
                                                            "\x1B"
                                                            "CR[%d]";
SECTION_DEAD static char const* const stringBase_803968F2 = "";
#pragma pop

/* 8045426C-80454270 00286C 0004+00 1/1 0/0 0/0 .sdata2          @4135 */
SECTION_SDATA2 static f32 lit_4135 = 48.0f;

/* 80454270-80454278 002870 0004+04 1/1 0/0 0/0 .sdata2          @4136 */
SECTION_SDATA2 static f32 lit_4136[1 + 1 /* padding */] = {
    0.5f,
    /* padding */
    0.0f,
};

/* 80454278-80454280 002878 0008+00 1/1 0/0 0/0 .sdata2          @4138 */
SECTION_SDATA2 static f64 lit_4138 = 4503599627370496.0 /* cast u32 to float */;

/* 801D8E00-801D91E4 1D3740 03E4+00 1/0 0/0 0/0 .text explain_open_init__14dMenu_Insect_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Insect_c::explain_open_init() {
    nofralloc
#include "asm/d/menu/d_menu_insect/explain_open_init__14dMenu_Insect_cFv.s"
}
#pragma pop

/* 801D91E4-801D9264 1D3B24 0080+00 1/0 0/0 0/0 .text explain_open_move__14dMenu_Insect_cFv */
void dMenu_Insect_c::explain_open_move() {
    if (mpExpParent->alphaAnime(10, 0, 0xff, 1)) {
        if (field_0xf6 == 1 && isGiveInsect(field_0xf4, field_0xf5) == 0) {
            field_0xf3 = 3;
        } else {
            field_0xf3 = 2;
        }
    }
}

/* 801D9264-801D9268 1D3BA4 0004+00 1/0 0/0 0/0 .text explain_move_init__14dMenu_Insect_cFv */
void dMenu_Insect_c::explain_move_init() {
    /* empty function */
}

/* 801D9268-801D9290 1D3BA8 0028+00 1/0 0/0 0/0 .text explain_move_move__14dMenu_Insect_cFv */
void dMenu_Insect_c::explain_move_move() {
    if (mDoCPd_c::getTrigA(0) == 0 && (mDoCPd_c::getTrig(0) & 0x200) == 0) {
        return;
    }
    field_0xf3 = 4;
}

/* 801D9290-801D92DC 1D3BD0 004C+00 1/0 0/0 0/0 .text select_move_init__14dMenu_Insect_cFv */
void dMenu_Insect_c::select_move_init() {
    dMeter2Info_setInsectSelectType(0xff);
    setAButtonString(0x40c);
    setBButtonString(0x3f9);
}

/* 801D92DC-801D9504 1D3C1C 0228+00 1/0 0/0 0/0 .text select_move_move__14dMenu_Insect_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Insect_c::select_move_move() {
    nofralloc
#include "asm/d/menu/d_menu_insect/select_move_move__14dMenu_Insect_cFv.s"
}
#pragma pop

/* 801D9504-801D95AC 1D3E44 00A8+00 1/0 0/0 0/0 .text explain_close_init__14dMenu_Insect_cFv */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Insect_c::explain_close_init() {
    setAButtonString(0);
    setBButtonString(0x3f9);
    if (field_0xf6 == 1) {
        dMeter2Info_setInsectSelectType(getInsectItemID(field_0xf4, field_0xf5));
    }
    Z2GetAudioMgr()->mSeMgr.seStart(Z2SE_SY_EXP_WIN_CLOSE, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    dMeter2Info_set2DVibration();
    mpExpParent->alphaAnimeStart(0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Insect_c::explain_close_init() {
    nofralloc
#include "asm/d/menu/d_menu_insect/explain_close_init__14dMenu_Insect_cFv.s"
}
#pragma pop
#endif

/* 801D95AC-801D9644 1D3EEC 0098+00 1/0 0/0 0/0 .text explain_close_move__14dMenu_Insect_cFv */
void dMenu_Insect_c::explain_close_move() {
    bool alphaAnime = mpExpParent->alphaAnime(10, 0xff, 0, 1);
    bool cVar2;
    if (field_0xf6 == 1 && isGiveInsect(field_0xf4, field_0xf5) == 0) {
        cVar2 = mpSelect_c->selAnimeEnd();
    } else {
        cVar2 = 1;
    }
    if (alphaAnime && cVar2 != 0) {
        field_0xf3 = 0;
    }
}

/* 80396690-80396750 022CF0 00C0+00 1/1 0/0 0/0 .rodata          insect_tag$4249 */
static const u64 insect_tag[24] = {
    'ari_os',  'ari_ms',   'kag_os',  'kag_ms',   'kab_os', 'kab_ms',  'kam_os',  'kam_mes',
    'kuwa_os', 'kuwa_mes', 'dan_os',  'dan_mes',  'cho_os', 'cho_ms',  'tent_os', 'tent_mes',
    'kata_os', 'kata_mes', 'nana_os', 'nana_mes', 'bat_os', 'bat_mes', 'tonb_os', 'tonb_mes',
};

/* 80396750-80396810 022DB0 00C0+00 1/1 0/0 0/0 .rodata          ageha_tag$4250 */
static const u64 ageha_tag[24] = {
    'ageha00', 'ageha01', 'ageha02', 'ageha03', 'ageha04', 'ageha05', 'ageha06', 'ageha07',
    'ageha08', 'ageha09', 'ageha10', 'ageha11', 'ageha12', 'ageha13', 'ageha14', 'ageha15',
    'ageha16', 'ageha17', 'ageha18', 'ageha19', 'ageha20', 'ageha21', 'ageha22', 'ageha23',
};

/* 803968C0-803968C0 022F20 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803968F3 = "zelda_gold_insects.blo";
#pragma pop

/* 801D9644-801D98F0 1D3F84 02AC+00 1/1 0/0 0/0 .text            screenSetBase__14dMenu_Insect_cFv
 */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Insect_c::screenSetBase() {
    mpScreen = new J2DScreen();
    mpScreen->setPriority("zelda_gold_insects.blo", 0x20000, mpArchive);
    dPaneClass_showNullPane(mpScreen);
    mpParent = new CPaneMgr(mpScreen, 'n_all', 2, NULL);
    mpParent->setAlphaRate(0.0f);
    for (int i = 0; i < 24; i++) {
        mpINSParent[i] = new CPaneMgr(mpScreen, insect_tag[i], 0, NULL);
    }
    for (int i = 0; i < 6; i++) {
        for (int j = 0; j < 4; j++) {
            int iterateSum = i + j * 6;
            if (isGetInsect(i, j) != 0) {
                mpINSParent[iterateSum]->show();
            } else {
                mpINSParent[iterateSum]->hide();
            }
            if (isGiveInsect(i, j) != 0) {
                mpScreen->search(ageha_tag[iterateSum])->show();
            } else {
                mpScreen->search(ageha_tag[iterateSum])->hide();
            }
        }
    }
    J2DTextBox* textBox = (J2DTextBox*)mpScreen->search('f_t00');
    mpScreen->search('t_t00')->hide();
    textBox->setFont(mDoExt_getSubFont());
    textBox->setString(0x200, "");
    mpString->getString(0x5ba, textBox, NULL, NULL, NULL, 0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Insect_c::screenSetBase() {
    nofralloc
#include "asm/d/menu/d_menu_insect/screenSetBase__14dMenu_Insect_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 803968C0-803968C0 022F20 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8039690A = "zelda_gold_insects_info.blo";
#pragma pop

/* 801D98F0-801D9BD0 1D4230 02E0+00 1/1 0/0 0/0 .text screenSetExplain__14dMenu_Insect_cFv */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Insect_c::screenSetExplain() {
    mpExpScreen = new J2DScreen();
    mpExpScreen->setPriority("zelda_gold_insects_info.blo", 0x20000, mpArchive);
    dPaneClass_showNullPane(mpExpScreen);
    mpExpParent = new CPaneMgr(mpExpScreen, 'n_all', 2, NULL);
    mpExpParent->setAlphaRate(0.0f);
    mpExpSubWin[0] = new CPaneMgr(mpExpScreen, 'in_win_n', 0, NULL);
    mpExpSubWin[1] = new CPaneMgr(mpExpScreen, 'w_d_mo_n', 0, NULL);
    if (field_0xf6 == 0) {
        mpExpSubWin[1]->hide();
    }
    mpInfoText = new CPaneMgr(mpExpScreen, 'mg_e4lin', 0, NULL);
    mpExpScreen->search('n_3line')->hide();
    field_0x5c = (J2DTextBox*)mpExpScreen->search('ms_for_2');
    mpExpScreen->search('w_msg_jp')->hide();
    mpExpScreen->search('ms_for_3')->hide();
    field_0x54 = (J2DTextBox*)mpExpScreen->search('insects');
    field_0x58 = (J2DTextBox*)mpExpScreen->search('insectss');
    J2DTextBox* textBox = (J2DTextBox*)mpInfoText->getPanePtr();
    textBox->setFont(mDoExt_getMesgFont());
    J2DTextBox* textBox2 = (J2DTextBox*)mpInfoText->getPanePtr();
    textBox2->setString(0x200, "");
    field_0x5c->setFont(mDoExt_getMesgFont());
    field_0x5c->setString(0x100, "");
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Insect_c::screenSetExplain() {
    nofralloc
#include "asm/d/menu/d_menu_insect/screenSetExplain__14dMenu_Insect_cFv.s"
}
#pragma pop
#endif

/* 80396810-80396838 022E70 0028+00 1/1 0/0 0/0 .rodata          text_a_tag$4328 */
static const u64 text_a_tag[5] = {
    'atext1_1', 'atext1_2', 'atext1_3', 'atext1_4', 'atext1_5',
};

/* 80396838-80396860 022E98 0028+00 1/1 0/0 0/0 .rodata          text_b_tag$4329 */
static const u64 text_b_tag[5] = {
    'btext1_1', 'btext1_2', 'btext1_3', 'btext1_4', 'btext1_5',
};

/* 801D9BD0-801D9D4C 1D4510 017C+00 1/1 0/0 0/0 .text            screenSetDoIcon__14dMenu_Insect_cFv
 */
void dMenu_Insect_c::screenSetDoIcon() {
    mpIconScreen = new J2DScreen();
    mpIconScreen->setPriority("zelda_collect_soubi_do_icon_parts.blo", 0x20000, mpArchive);
    for (int i = 0; i < 2; i++) {
        mpButtonAB[i] = 0;
        mpButtonText[i] = 0;
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

/* 801D9D4C-801D9DCC 1D468C 0080+00 0/0 1/1 0/0 .text            getGetInsectNum__14dMenu_Insect_cFv
 */
u8 dMenu_Insect_c::getGetInsectNum() {
    u8 insectNum = 0;
    u8* insectList = l_itemno_4346;
    for (u32 i = 0; i < 24; i++) {
        u8 insectId = *insectList;
        insectList++;

        if (i_dComIfGs_isItemFirstBit(insectId) != 0) {
            insectNum++;
        }
    }
    return insectNum;
}

/* 801D9DCC-801D9DE4 1D470C 0018+00 3/3 0/0 0/0 .text getInsectItemID__14dMenu_Insect_cFii */
u8 dMenu_Insect_c::getInsectItemID(int param_0, int param_1) {
    int index = param_0 + param_1 * 6;
    return l_itemno_4364[index];
}

/* 801D9DE4-801D9E20 1D4724 003C+00 4/4 0/0 0/0 .text            isGetInsect__14dMenu_Insect_cFii */
bool dMenu_Insect_c::isGetInsect(int param_0, int param_1) {
    return i_dComIfGs_isItemFirstBit(getInsectItemID(param_0, param_1)) != 0;
}

/* 80396860-803968C0 022EC0 0060+00 1/1 0/0 0/0 .rodata          i_evtID$4383 */
static const u32 i_evtID[24] = {
    0x1A5, 0x1A6, 0x1A7, 0x1A8, 0x191, 0x192, 0x19D, 0x19E, 0x195, 0x196, 0x19B, 0x19C,
    0x193, 0x194, 0x19F, 0x1A0, 0x1A1, 0x1A2, 0x199, 0x19A, 0x197, 0x198, 0x1A3, 0x1A4,
};

/* 801D9E20-801D9E7C 1D4760 005C+00 4/4 0/0 0/0 .text            isGiveInsect__14dMenu_Insect_cFii
 */
bool dMenu_Insect_c::isGiveInsect(int param_0, int param_1) {
    return i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[i_evtID[param_0 + param_1 * 6]]) !=
           0;
}

/* 801D9E7C-801D9ED4 1D47BC 0058+00 1/1 0/0 0/0 .text            isCatchInsect__14dMenu_Insect_cFUc
 */
bool dMenu_Insect_c::isCatchInsect(u8 i_insectID) {
    if (i_insectID >= M_BEETLE && i_insectID <= F_MAYFLY) {
        return i_dComIfGs_isItemFirstBit(i_insectID);
    }
    return false;
}

/* 801D9ED4-801D9F3C 1D4814 0068+00 1/1 0/0 0/0 .text            isGiveInsect__14dMenu_Insect_cFUc
 */
bool dMenu_Insect_c::isGiveInsect(u8 i_insectID) {
    if (i_insectID >= M_BEETLE && i_insectID <= F_MAYFLY) {
        int label = i_insectID + 0xd1;
        return i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[label]);
    }
    return false;
}

/* 801D9F3C-801D9F8C 1D487C 0050+00 0/0 1/1 12/12 .text isCatchNotGiveInsect__14dMenu_Insect_cFUc
 */
u8 dMenu_Insect_c::isCatchNotGiveInsect(u8 param_0) {
    if (isCatchInsect(param_0) != 0 && isGiveInsect(param_0) == 0) {
        return 1;
    }
    return 0;
}

/* ############################################################################################## */
/* 80454280-80454288 002880 0004+04 1/1 0/0 0/0 .sdata2          @4474 */
SECTION_SDATA2 static f32 lit_4474[1 + 1 /* padding */] = {
    0.75f,
    /* padding */
    0.0f,
};

/* 801D9F8C-801DA1EC 1D48CC 0260+00 1/1 0/0 0/0 .text            cursorMove__14dMenu_Insect_cFv */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Insect_c::cursorMove() {
    u8 oldF4 = field_0xf4;
    u8 oldF5 = field_0xf5;
    u8 dpd = 0;
    mpStick->checkTrigger();
    if (mpStick->checkRightTrigger()) {
        if (field_0xf4 < 5) {
            field_0xf4++;
        }
    } else if (mpStick->checkLeftTrigger()) {
        if (field_0xf4 != 0) {
            field_0xf4--;
        }
    }
    if (mpStick->checkUpTrigger()) {
        if (field_0xf5 != 0) {
            field_0xf5--;
        }
    } else if (mpStick->checkDownTrigger()) {
        if (field_0xf5 < 3) {
            field_0xf5++;
        }
    }
    if (oldF4 == field_0xf4 && oldF5 == field_0xf5) {
        field_0xf8 = 0xff;
        field_0xf9 = 0xff;
        if (mpStick->getValueStick() <= 0.75f) {
            dpd = dpdMove();
        }
        if (field_0xf8 != 0xff && field_0xf9 != 0xff) {
            if (field_0xf8 != field_0xfa || field_0xf9 != field_0xfb) {
                if (field_0xf8 != field_0xf4 || field_0xf9 != field_0xf5) {
                    field_0xf4 = field_0xf8;
                    field_0xf5 = field_0xf9;
                    field_0xfa = field_0xf8;
                    field_0xfb = field_0xf9;
                }
            }
        }
    }
    if (oldF4 == field_0xf4 && oldF5 == field_0xf5) {
        return;
    }
    setCursorPos();
    if (isGetInsect(field_0xf4, field_0xf5) != 0) {
        setAButtonString(0x368);
    } else {
        setAButtonString(0);
    }
    if (dpd != 0) {
        Z2GetAudioMgr()->mSeMgr.seStart(Z2SE_SY_CURSOR_ITEM, NULL, 1, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                        0);
        dMeter2Info_set2DVibration();
    } else {
        Z2GetAudioMgr()->mSeMgr.seStart(Z2SE_SY_CURSOR_ITEM, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                        0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Insect_c::cursorMove() {
    nofralloc
#include "asm/d/menu/d_menu_insect/cursorMove__14dMenu_Insect_cFv.s"
}
#pragma pop
#endif

/* 801DA1EC-801DA2FC 1D4B2C 0110+00 3/3 0/0 0/0 .text            setCursorPos__14dMenu_Insect_cFv */
void dMenu_Insect_c::setCursorPos() {
    int index = field_0xf4 + field_0xf5 * 6;
    Vec pos = mpINSParent[index]->getGlobalVtxCenter(false, 0);
    mpDrawCursor->setPos(pos.x, pos.y, mpINSParent[index]->getPanePtr(), false);
    for (int i = 0; i < 24; i++) {
        if (i == index) {
            mpINSParent[i]->scale(g_drawHIO.mInsectListScreen.mSelectInsectScale,
                                  g_drawHIO.mInsectListScreen.mSelectInsectScale);
        } else {
            mpINSParent[i]->scale(g_drawHIO.mInsectListScreen.mUnselectInsectScale,
                                  g_drawHIO.mInsectListScreen.mUnselectInsectScale);
        }
    }
}

/* 801DA2FC-801DA304 1D4C3C 0008+00 1/1 0/0 0/0 .text            dpdMove__14dMenu_Insect_cFv */
u8 dMenu_Insect_c::dpdMove() {
    return 0;
}

/* 801DA304-801DA3B4 1D4C44 00B0+00 5/5 0/0 0/0 .text setAButtonString__14dMenu_Insect_cFUs */
void dMenu_Insect_c::setAButtonString(u16 i_stringID) {
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

/* 801DA3B4-801DA464 1D4CF4 00B0+00 4/4 0/0 0/0 .text setBButtonString__14dMenu_Insect_cFUs */
void dMenu_Insect_c::setBButtonString(u16 i_stringID) {
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

/* 801DA464-801DA630 1D4DA4 01CC+00 2/2 0/0 0/0 .text            setHIO__14dMenu_Insect_cFb */
void dMenu_Insect_c::setHIO(bool i_useHIO) {
    if (i_useHIO || g_drawHIO.mInsectListScreen.mDebugON) {
        mpExpSubWin[0]->paneTrans(g_drawHIO.mInsectListScreen.mDescWindowPosX,
                                  g_drawHIO.mInsectListScreen.mDescWindowPosY);
        mpExpSubWin[1]->paneTrans(g_drawHIO.mInsectListScreen.mGiveOptionPosX_4x3,
                                  g_drawHIO.mInsectListScreen.mGiveOptionPosY_4x3);
    }
    if (g_drawHIO.mCollectScreen.mButtonDebugON != false || i_useHIO) {
        if (mpButtonAB[0]) {
            mpButtonAB[0]->paneTrans(g_drawHIO.mCollectScreen.mAButtonPosX,
                                     g_drawHIO.mCollectScreen.mAButtonPosY);
            mpButtonAB[0]->scale(g_drawHIO.mCollectScreen.mAButtonScale,
                                 g_drawHIO.mCollectScreen.mAButtonScale);
        }
        if (mpButtonAB[1]) {
            mpButtonAB[1]->paneTrans(g_drawHIO.mCollectScreen.mBButtonPosX,
                                     g_drawHIO.mCollectScreen.mBButtonPosY);
            mpButtonAB[1]->scale(g_drawHIO.mCollectScreen.mBButtonScale,
                                 g_drawHIO.mCollectScreen.mBButtonScale);
        }
        if (mpButtonText[0]) {
            mpButtonText[0]->paneTrans(g_drawHIO.mCollectScreen.mAButtonTextPosX,
                                       g_drawHIO.mCollectScreen.mAButtonTextPosY);
            mpButtonText[0]->scale(g_drawHIO.mCollectScreen.mAButtonTextScale,
                                   g_drawHIO.mCollectScreen.mAButtonTextScale);
        }
        if (mpButtonText[1]) {
            mpButtonText[1]->paneTrans(g_drawHIO.mCollectScreen.mBButtonTextPosX,
                                       g_drawHIO.mCollectScreen.mBButtonTextPosY);
            mpButtonText[1]->scale(g_drawHIO.mCollectScreen.mBButtonTextScale,
                                   g_drawHIO.mCollectScreen.mBButtonTextScale);
        }
    }
}

/* 801DA630-801DA650 1D4F70 0020+00 1/0 0/0 0/0 .text            draw__14dMenu_Insect_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dMenu_Insect_c::draw() {
extern "C" asm void draw__14dMenu_Insect_cFv() {
    nofralloc
#include "asm/d/menu/d_menu_insect/draw__14dMenu_Insect_cFv.s"
}
#pragma pop

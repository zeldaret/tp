/**
 * @file d_a_balloon_2D.cpp
 * 
*/

#include "rel/d/a/d_a_balloon_2D/d_a_balloon_2D.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "JSystem/J2DGraph/J2DTextBox.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "SSystem/SComponent/c_math.h"
#include "d/com/d_com_inf_game.h"
#include "d/pane/d_pane_class.h"
#include "d/meter/d_meter2_info.h"
#include "d/msg/d_msg_object.h"
#include "m_Do/m_Do_lib.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void draw__Q213daBalloon2D_c6c_listFv();
extern "C" static void daBalloon2D_createHeap__FP10fopAc_ac_c();
extern "C" void createHeap__13daBalloon2D_cFv();
extern "C" void create__13daBalloon2D_cFv();
extern "C" void destroy__13daBalloon2D_cFv();
extern "C" void draw__13daBalloon2D_cFv();
extern "C" void execute__13daBalloon2D_cFv();
extern "C" void drawMeter__13daBalloon2D_cFv();
extern "C" void setComboCount__13daBalloon2D_cFUcUc();
extern "C" void setScoreCount__13daBalloon2D_cFUl();
extern "C" void addScoreCount__13daBalloon2D_cFP4cXyzUlUc();
extern "C" void initiate__13daBalloon2D_cFv();
extern "C" void update__13daBalloon2D_cFv();
extern "C" void setComboNum__13daBalloon2D_cFUc();
extern "C" void setBalloonSize__13daBalloon2D_cFUc();
extern "C" void setScoreNum__13daBalloon2D_cFi();
extern "C" void setAllAlpha__13daBalloon2D_cFv();
extern "C" void setComboAlpha__13daBalloon2D_cFv();
extern "C" void drawAddScore__13daBalloon2D_cFv();
extern "C" void setHIO__13daBalloon2D_cFb();
extern "C" static void daBalloon2D_create__FP13daBalloon2D_c();
extern "C" void __dt__Q213daBalloon2D_c10CHeadScoreFv();
extern "C" void __ct__Q213daBalloon2D_c10CHeadScoreFv();
extern "C" static void daBalloon2D_destroy__FP13daBalloon2D_c();
extern "C" static void daBalloon2D_execute__FP13daBalloon2D_c();
extern "C" static void daBalloon2D_draw__FP13daBalloon2D_c();
extern "C" void draw__12dDlst_base_cFv();
extern "C" void __dt__17daBalloon2D_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void __dt__Q213daBalloon2D_c6c_listFv();
extern "C" void __dt__13daBalloon2D_cFv();
extern "C" void __sinit_d_a_balloon_2D_cpp();
extern "C" extern char const* const d_a_balloon_2D__stringBase0;
extern "C" u8 myclass__13daBalloon2D_c[4];

//
// External References:
//

extern "C" void mDoExt_getMesgFont__Fv();
extern "C" void mDoLib_project__FP3VecP3Vec();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getResInfo__14dRes_control_cFPCcP11dRes_info_ci();
extern "C" void set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c();
extern "C" void getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c();
extern "C" void dMeter2Info_getNumberTextureName__Fi();
extern "C" void dMeter2Info_getPlusTextureName__Fv();
extern "C" void getStatus__12dMsgObject_cFv();
extern "C" void __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap();
extern "C" void paneTrans__8CPaneMgrFff();
extern "C" void dPaneClass_showNullPane__FP9J2DScreen();
extern "C" void show__13CPaneMgrAlphaFv();
extern "C" void hide__13CPaneMgrAlphaFv();
extern "C" void setAlphaRate__13CPaneMgrAlphaFf();
extern "C" void getAlphaRate__13CPaneMgrAlphaFv();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __ct__9J2DScreenFv();
extern "C" void setPriority__9J2DScreenFPCcUlP10JKRArchive();
extern "C" void draw__9J2DScreenFffPC14J2DGrafContext();
extern "C" void __ct__10J2DPictureFPC7ResTIMG();
extern "C" void getStringPtr__10J2DTextBoxCFv();
extern "C" void setString__10J2DTextBoxFsPCce();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_23();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 806534CC-80653518 0000EC 004C+00 1/0 0/0 0/0 .text            draw__Q213daBalloon2D_c6c_listFv */
void daBalloon2D_c::c_list::draw() {
    dComIfGp_getCurrentGrafPort()->setup2D();
    mBalloon->drawMeter();
}

/* 80653518-80653538 000138 0020+00 1/1 0/0 0/0 .text daBalloon2D_createHeap__FP10fopAc_ac_c */
static int daBalloon2D_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daBalloon2D_c*>(i_this)->createHeap();
}

/* ############################################################################################## */
/* 806555AC-806555B0 000000 0004+00 5/5 0/0 0/0 .rodata          @3896 */
SECTION_RODATA static u8 const lit_3896[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806555AC, &lit_3896);

/* 806555EC-806555EC 000040 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806555EC = "Balloon2D";
SECTION_DEAD static char const* const stringBase_806555F6 = "zelda_balloon_game.blo";
SECTION_DEAD static char const* const stringBase_8065560D = "";
#pragma pop

/* 80655610-806556D4 000000 00C4+00 1/1 0/0 0/0 .data
 * aParam$localstatic3$__ct__17daBalloon2D_HIO_cFv              */
SECTION_DATA static u8 data_80655610[196] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xC1, 0x20, 0x00, 0x00, 0x3F, 0x4C, 0xCC, 0xCD, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x50, 0x00, 0x00,
    0x3F, 0x8C, 0xCC, 0xCD, 0x3F, 0x66, 0x66, 0x66, 0x3F, 0x33, 0x33, 0x33, 0x00, 0x00, 0x00, 0x00,
    0x41, 0x90, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0xC0, 0xD3, 0x33, 0x33, 0x40, 0xD3, 0x33, 0x33,
    0x3F, 0xA6, 0x66, 0x66, 0xBF, 0xA6, 0x66, 0x66, 0x41, 0x13, 0x33, 0x33, 0x3F, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x40, 0xD3, 0x33, 0x33, 0x3F, 0x8C, 0xCC, 0xCD, 0x3F, 0x66, 0x66, 0x66,
    0x3F, 0x80, 0x00, 0x00, 0x40, 0x79, 0x99, 0x9A, 0xC1, 0x13, 0x33, 0x33, 0x3F, 0x59, 0x99, 0x9A,
    0x3F, 0x4C, 0xCC, 0xCD, 0x40, 0xD3, 0x33, 0x33, 0x3F, 0xA6, 0x66, 0x66, 0x3F, 0x40, 0x00, 0x00,
    0x3F, 0x66, 0x66, 0x66, 0x40, 0x79, 0x99, 0x9A, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x59, 0x99, 0x9A,
    0x3F, 0x66, 0x66, 0x66, 0x40, 0x79, 0x99, 0x9A, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x73, 0x33, 0x33,
    0x3F, 0x66, 0x66, 0x66, 0x41, 0xB0, 0x00, 0x00, 0xC1, 0x88, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0x41, 0xA0, 0x00, 0x00,
};

/* 806556D4-806556D8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Balloon2D";

/* 80653538-80653D24 000158 07EC+00 1/1 0/0 0/0 .text            createHeap__13daBalloon2D_cFv */
// Matches with literals
#ifdef NONMATCHING
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daBalloon2D_c::createHeap() {
    nofralloc
#include "asm/rel/d/a/d_a_balloon_2D/d_a_balloon_2D/createHeap__13daBalloon2D_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80655770-8065577C 000008 000C+00 1/1 0/0 0/0 .bss             @3779 */
static u8 lit_3779[12];

/* 8065577C-80655844 000014 00C8+00 3/3 0/0 0/0 .bss             l_HOSTIO */
#ifdef NONMATCHING
daBalloon2D_HIO_c l_HOSTIO;
#else
static u8 l_HOSTIO[200];
#endif

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
// Matches with virtual
#ifdef NONMATCHING
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daBalloon2D_c::draw() {
    nofralloc
#include "asm/rel/d/a/d_a_balloon_2D/d_a_balloon_2D/draw__13daBalloon2D_cFv.s"
}
#pragma pop
#endif

/* 80653EC0-80653F04 000AE0 0044+00 1/1 0/0 0/0 .text            execute__13daBalloon2D_cFv */
int daBalloon2D_c::execute() {
    setAllAlpha();
    setComboAlpha();
    setHIO(false);
    return 1;
}

/* 80653F04-80653F58 000B24 0054+00 1/1 0/0 0/0 .text            drawMeter__13daBalloon2D_cFv */
// Matches with literals
#ifdef NONMATCHING
void daBalloon2D_c::drawMeter() {
    update();
    mScreen->draw(0.0f, 0.0f, dComIfGp_getCurrentGrafPort());
    drawAddScore();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBalloon2D_c::drawMeter() {
    nofralloc
#include "asm/rel/d/a/d_a_balloon_2D/d_a_balloon_2D/drawMeter__13daBalloon2D_cFv.s"
}
#pragma pop
#endif

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

/* ############################################################################################## */
/* 806555B0-806555B4 000004 0004+00 0/3 0/0 0/0 .rodata          @4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4064 = 1.0f;
COMPILER_STRIP_GATE(0x806555B0, &lit_4064);
#pragma pop

/* 806555B4-806555B8 000008 0004+00 0/2 0/0 0/0 .rodata          @4065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4065 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x806555B4, &lit_4065);
#pragma pop

/* 806555B8-806555BC 00000C 0004+00 0/3 0/0 0/0 .rodata          @4066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4066 = 0.5f;
COMPILER_STRIP_GATE(0x806555B8, &lit_4066);
#pragma pop

/* 806555BC-806555C0 000010 0004+00 0/2 0/0 0/0 .rodata          @4067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4067 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806555BC, &lit_4067);
#pragma pop

/* 80654440-8065464C 001060 020C+00 1/1 0/0 0/0 .text            setAllAlpha__13daBalloon2D_cFv */
// Matches with literals
#ifdef NONMATCHING
void daBalloon2D_c::setAllAlpha() {
    mAllAlpha = field_0x578->getAlphaRate();
    if (isVisible()) {
        if (mAllAlpha != 1.0f) {
            cLib_addCalc2(&mAllAlpha, 1.0f, 0.4f, 0.5f);
            if (fabsf(mAllAlpha - 1.0f) < 0.1f) {
                mAllAlpha = 1.0f;
            }
            field_0x578->setAlphaRate(mAllAlpha);
            field_0x580->setAlphaRate(l_HOSTIO.field_0x3c * mAllAlpha);
            field_0x594->setAlphaRate(l_HOSTIO.field_0x84 * mAllAlpha);
            field_0x598->setAlphaRate(l_HOSTIO.field_0x94 * mAllAlpha);
            field_0x59c->setAlphaRate(l_HOSTIO.field_0xa4 * mAllAlpha);
            field_0x5a0->setAlphaRate(l_HOSTIO.field_0xb4 * mAllAlpha);
        }
    } else if (mAllAlpha != 1.0f) {
        cLib_addCalc2(&mAllAlpha, 0.0f, 0.4f, 0.5f);
        if (fabsf(mAllAlpha) < 0.1f) {
            mAllAlpha = 0.0f;
        }
        field_0x578->setAlphaRate(mAllAlpha);
        field_0x580->setAlphaRate(l_HOSTIO.field_0x3c * mAllAlpha);
        field_0x594->setAlphaRate(l_HOSTIO.field_0x84 * mAllAlpha);
        field_0x598->setAlphaRate(l_HOSTIO.field_0x94 * mAllAlpha);
        field_0x59c->setAlphaRate(l_HOSTIO.field_0xa4 * mAllAlpha);
        field_0x5a0->setAlphaRate(l_HOSTIO.field_0xb4 * mAllAlpha);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBalloon2D_c::setAllAlpha() {
    nofralloc
#include "asm/rel/d/a/d_a_balloon_2D/d_a_balloon_2D/setAllAlpha__13daBalloon2D_cFv.s"
}
#pragma pop
#endif

/* 8065464C-80654730 00126C 00E4+00 2/2 0/0 0/0 .text            setComboAlpha__13daBalloon2D_cFv */
// Matches with literals
#ifdef NONMATCHING
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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBalloon2D_c::setComboAlpha() {
    nofralloc
#include "asm/rel/d/a/d_a_balloon_2D/d_a_balloon_2D/setComboAlpha__13daBalloon2D_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 806555C0-806555C4 000014 0004+00 0/1 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165 = 30.0f;
COMPILER_STRIP_GATE(0x806555C0, &lit_4165);
#pragma pop

/* 806555C4-806555C8 000018 0004+00 0/1 0/0 0/0 .rodata          @4166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4166 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x806555C4, &lit_4166);
#pragma pop

/* 806555C8-806555CC 00001C 0004+00 0/1 0/0 0/0 .rodata          @4167 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4167 = 10.0f;
COMPILER_STRIP_GATE(0x806555C8, &lit_4167);
#pragma pop

/* 806555CC-806555D0 000020 0004+00 0/1 0/0 0/0 .rodata          @4168 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4168 = 255.0f;
COMPILER_STRIP_GATE(0x806555CC, &lit_4168);
#pragma pop

/* 806555D0-806555D4 000024 0004+00 0/1 0/0 0/0 .rodata          @4169 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4169 = 6.0f;
COMPILER_STRIP_GATE(0x806555D0, &lit_4169);
#pragma pop

/* 806555D4-806555D8 000028 0004+00 0/1 0/0 0/0 .rodata          @4170 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4170 = 2.0f;
COMPILER_STRIP_GATE(0x806555D4, &lit_4170);
#pragma pop

/* 806555D8-806555DC 00002C 0004+00 0/1 0/0 0/0 .rodata          @4171 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4171 = 3.0f;
COMPILER_STRIP_GATE(0x806555D8, &lit_4171);
#pragma pop

/* 806555DC-806555E0 000030 0004+00 0/1 0/0 0/0 .rodata          @4172 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4172 = 4.0f;
COMPILER_STRIP_GATE(0x806555DC, &lit_4172);
#pragma pop

/* 806555E0-806555E4 000034 0004+00 0/1 0/0 0/0 .rodata          @4173 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4173 = 5.0f;
COMPILER_STRIP_GATE(0x806555E0, &lit_4173);
#pragma pop

/* 806555E4-806555EC 000038 0008+00 0/1 0/0 0/0 .rodata          @4175 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4175[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806555E4, &lit_4175);
#pragma pop

/* 80654730-80654E8C 001350 075C+00 1/1 0/0 0/0 .text            drawAddScore__13daBalloon2D_cFv */
// field_0x0.x, regalloc
#ifdef NONMATCHING
void daBalloon2D_c::drawAddScore() {
    for (int i = 19; i >= 0; i--) {
        if (field_0x5f8[i].field_0xe != 0) {
            field_0x5f8[i].field_0xe--;
            int uVar7 = field_0x5f8[i].field_0xc;
            u8 local_88 = 0xff;
            f32 dVar11 = 30.0f;
            f32 dVar9 = 30.0f;
            field_0x5f8[i].field_0x0.x += 0.3f * cM_ssin((field_0x5f8[i].field_0xe % 60) * 1024);
            field_0x5f8[i].field_0x0.y -= 1.0f;
            if (field_0x5f8[i].field_0xe < 10) {
                f32 fVar5 = field_0x5f8[i].field_0xe / 10.0f;
                local_88 = fVar5 * 255.0f;
                dVar11 *= fVar5;
                dVar9 *= fVar5;
            }
            for (int j = 0; j < 10; j++) {
                field_0x5c4[j]->setAlpha(local_88);
            }
            field_0x5ec->setAlpha(local_88);
            f32 dVar8 = (field_0x5f8[i].field_0x0.y - (dVar9 / 2.0f));
            int digit;
            if (uVar7 >= 10000) {
                f32 dVar10 = (field_0x5f8[i].field_0x0.x -
                                  (dVar11 / 2.0f) * 6.0f);
                field_0x5ec->draw(dVar10, dVar8, dVar11, dVar9, false, false, false);
                digit = uVar7 / 10000;
                uVar7 = uVar7 % 10000;
                field_0x5c4[digit]->draw(dVar10 + dVar11, dVar8, dVar11, dVar9, false, false, false);
                digit = uVar7 / 1000;
                uVar7 %= 1000;
                field_0x5c4[digit]->draw(dVar10 + dVar11 * 2.0f, dVar8, dVar11, dVar9, false, false, false);
                digit = uVar7 / 100;
                uVar7 %= 100;
                field_0x5c4[digit]->draw(dVar10 + dVar11 * 3.0f, dVar8, dVar11, dVar9, false, false, false);
                digit = uVar7 / 10;
                uVar7 %= 10;
                field_0x5c4[digit]->draw(dVar10 + dVar11 * 4.0f, dVar8, dVar11, dVar9, false, false, false);
                field_0x5c4[uVar7]->draw(dVar10 + dVar11 * 5.0f, dVar8, dVar11, dVar9, false, false, false);
            } else if (uVar7 >= 1000) {
                f32 dVar10 = (field_0x5f8[i].field_0x0.x -
                                    (dVar11 / 2.0f) * 5.0f);
                field_0x5ec->draw(dVar10, dVar8, dVar11, dVar9, false, false, false);
                digit = uVar7 / 1000;
                uVar7 %= 1000;
                field_0x5c4[digit]->draw(dVar10 + dVar11, dVar8, dVar11, dVar9, false, false, false);
                digit = uVar7 / 100;
                uVar7 %= 100;
                field_0x5c4[digit]->draw(dVar10 + dVar11 * 2.0f, dVar8, dVar11, dVar9, false, false, false);
                digit = uVar7 / 10;
                uVar7 %= 10;
                field_0x5c4[digit]->draw(dVar10 + dVar11 * 3.0f, dVar8, dVar11, dVar9, false, false, false);
                field_0x5c4[uVar7]->draw(dVar10 + dVar11 * 4.0f, dVar8, dVar11, dVar9, false, false, false);
            } else if (uVar7 >= 100) {
                f32 dVar10 = (field_0x5f8[i].field_0x0.x -
                                    (dVar11 / 2.0f) * 4.0f);
                field_0x5ec->draw(dVar10, dVar8, dVar11, dVar9, false, false, false);
                digit = uVar7 / 100;
                uVar7 %= 100;
                field_0x5c4[digit]->draw(dVar10 + dVar11, dVar8, dVar11, dVar9, false, false, false);
                digit = uVar7 / 10;
                uVar7 %= 10;
                field_0x5c4[digit]->draw(dVar10 + dVar11 * 2.0f, dVar8, dVar11, dVar9, false, false, false);
                field_0x5c4[uVar7]->draw(dVar10 + dVar11 * 3.0f, dVar8, dVar11, dVar9, false, false, false);
            } else if (uVar7 >= 10) {
                f32 dVar10 = (field_0x5f8[i].field_0x0.x -
                                    (dVar11 / 2.0f) * 3.0f);
                field_0x5ec->draw(dVar10, dVar8, dVar11, dVar9, false, false, false);
                digit = uVar7 / 10;
                uVar7 %= 10;
                field_0x5c4[digit]->draw(dVar10 + dVar11, dVar8, dVar11, dVar9, false, false, false);
                field_0x5c4[uVar7]->draw(dVar10 + dVar11 * 2.0f, dVar8, dVar11, dVar9, false, false, false);
            } else {
                f32 dVar10 = (field_0x5f8[i].field_0x0.x -
                                    (dVar11 / 2.0f) * 2.0f);
                field_0x5ec->draw(dVar10, dVar8, dVar11, dVar9, false, false, false);
                field_0x5c4[uVar7]->draw(dVar10 + dVar11, dVar8, dVar11, dVar9, false, false, false);
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBalloon2D_c::drawAddScore() {
    nofralloc
#include "asm/rel/d/a/d_a_balloon_2D/d_a_balloon_2D/drawAddScore__13daBalloon2D_cFv.s"
}
#pragma pop
#endif

/* 80654E8C-80655250 001AAC 03C4+00 2/2 0/0 0/0 .text            setHIO__13daBalloon2D_cFb */
// Matches with vtables
#ifdef NONMATCHING
void daBalloon2D_c::setHIO(bool param_1) {
    if ((l_HOSTIO.field_0x04 != 0) || param_1) {
        field_0x57c->paneTrans(l_HOSTIO.field_0x20, l_HOSTIO.field_0x24);
        field_0x57c->scale(l_HOSTIO.field_0x28, l_HOSTIO.field_0x28);
        field_0x580->paneTrans(l_HOSTIO.field_0x2c, l_HOSTIO.field_0x30);
        field_0x580->scale(l_HOSTIO.field_0x34, l_HOSTIO.field_0x38);
        field_0x580->setAlphaRate(l_HOSTIO.field_0x3c * mAllAlpha);
        field_0x584->paneTrans(l_HOSTIO.field_0x40, l_HOSTIO.field_0x44);
        field_0x584->scale(l_HOSTIO.field_0x48, l_HOSTIO.field_0x48);
        field_0x588->paneTrans(l_HOSTIO.field_0x4c, l_HOSTIO.field_0x50);
        field_0x588->scale(l_HOSTIO.field_0x54, l_HOSTIO.field_0x54);
        field_0x58c->paneTrans(l_HOSTIO.field_0x58, l_HOSTIO.field_0x5c);
        field_0x58c->scale(l_HOSTIO.field_0x60, l_HOSTIO.field_0x60);
        field_0x590->paneTrans(l_HOSTIO.field_0x64, l_HOSTIO.field_0x68);
        field_0x590->scale(l_HOSTIO.field_0x6c, l_HOSTIO.field_0x70);
        field_0x594->paneTrans(l_HOSTIO.field_0x78, l_HOSTIO.field_0x7c);
        field_0x594->scale(l_HOSTIO.field_0x80, l_HOSTIO.field_0x80);
        field_0x594->setAlphaRate(l_HOSTIO.field_0x84 * mAllAlpha);
        field_0x598->paneTrans(l_HOSTIO.field_0x88, l_HOSTIO.field_0x8c);
        field_0x598->scale(l_HOSTIO.field_0x90, l_HOSTIO.field_0x90);
        field_0x598->setAlphaRate(l_HOSTIO.field_0x94 * mAllAlpha);
        field_0x59c->paneTrans(l_HOSTIO.field_0x98, l_HOSTIO.field_0x9c);
        field_0x59c->scale(l_HOSTIO.field_0xa0, l_HOSTIO.field_0xa0);
        field_0x59c->setAlphaRate(l_HOSTIO.field_0xa4 * mAllAlpha);
        field_0x5a0->paneTrans(l_HOSTIO.field_0xa8, l_HOSTIO.field_0xac);
        field_0x5a0->scale(l_HOSTIO.field_0xb0, l_HOSTIO.field_0xb0);
        field_0x5a0->setAlphaRate(l_HOSTIO.field_0xb4 * mAllAlpha);
        field_0x5a4->paneTrans(l_HOSTIO.field_0xb8, l_HOSTIO.field_0xbc);
        field_0x5a4->scale(l_HOSTIO.field_0xc0, l_HOSTIO.field_0xc0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daBalloon2D_c::setHIO(bool param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_balloon_2D/d_a_balloon_2D/setHIO__13daBalloon2D_cFb.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 806556D8-806556F8 -00001 0020+00 1/0 0/0 0/0 .data            daBalloon2D_METHODS */
static actor_method_class daBalloon2D_METHODS = {
    (process_method_func)daBalloon2D_create__FP13daBalloon2D_c,
    (process_method_func)daBalloon2D_destroy__FP13daBalloon2D_c,
    (process_method_func)daBalloon2D_execute__FP13daBalloon2D_c,
    0,
    (process_method_func)daBalloon2D_draw__FP13daBalloon2D_c,
};

/* 806556F8-80655728 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_BALLOON2D */
extern actor_process_profile_definition g_profile_BALLOON2D = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_BALLOON2D,         // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(JMSMesgEntry_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  765,                    // mPriority
  &daBalloon2D_METHODS,   // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_0_e,      // cullType
};

/* 80655728-80655734 000118 000C+00 1/1 0/0 0/0 .data            __vt__12dDlst_base_c */
SECTION_DATA extern void* __vt__12dDlst_base_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__12dDlst_base_cFv,
};

/* 80655734-80655740 000124 000C+00 2/2 0/0 0/0 .data            __vt__13daBalloon2D_c */
SECTION_DATA extern void* __vt__13daBalloon2D_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daBalloon2D_cFv,
};

/* 80655740-80655750 000130 0010+00 3/3 0/0 0/0 .data            __vt__Q213daBalloon2D_c6c_list */
SECTION_DATA extern void* __vt__Q213daBalloon2D_c6c_list[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__Q213daBalloon2D_c6c_listFv,
    (void*)__dt__Q213daBalloon2D_c6c_listFv,
};

/* 80655250-80655304 001E70 00B4+00 1/0 0/0 0/0 .text daBalloon2D_create__FP13daBalloon2D_c */
#ifdef NONMATCHING
static int daBalloon2D_create(daBalloon2D_c* i_this) {
    fopAcM_SetupActor(i_this, daBalloon2D_c);
    return i_this->create();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daBalloon2D_create(daBalloon2D_c* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_balloon_2D/d_a_balloon_2D/daBalloon2D_create__FP13daBalloon2D_c.s"
}
#pragma pop
#endif

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

/* 806553A4-806553A8 001FC4 0004+00 1/0 0/0 0/0 .text            draw__12dDlst_base_cFv */
void draw__12dDlst_base_cFv() {
    /* empty function */
}

/* ############################################################################################## */
/* 80655750-8065575C 000140 000C+00 2/2 0/0 0/0 .data            __vt__17daBalloon2D_HIO_c */
SECTION_DATA extern void* __vt__17daBalloon2D_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daBalloon2D_HIO_cFv,
};

/* 8065575C-80655768 00014C 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 806553A8-80655404 001FC8 005C+00 2/1 0/0 0/0 .text            __dt__17daBalloon2D_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daBalloon2D_HIO_c::~daBalloon2D_HIO_c() {
    nofralloc
#include "asm/rel/d/a/d_a_balloon_2D/d_a_balloon_2D/__dt__17daBalloon2D_HIO_cFv.s"
}
#pragma pop

/* 80655404-8065544C 002024 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __dt__14mDoHIO_entry_cFv() {
//asm mDoHIO_entry_c::~mDoHIO_entry_c() {
    nofralloc
#include "asm/rel/d/a/d_a_balloon_2D/d_a_balloon_2D/__dt__14mDoHIO_entry_cFv.s"
}
#pragma pop

/* 8065544C-80655494 00206C 0048+00 1/0 0/0 0/0 .text            __dt__Q213daBalloon2D_c6c_listFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daBalloon2D_c::c_list::~c_list() {
    nofralloc
#include "asm/rel/d/a/d_a_balloon_2D/d_a_balloon_2D/__dt__Q213daBalloon2D_c6c_listFv.s"
}
#pragma pop

/* 80655494-80655524 0020B4 0090+00 1/0 0/0 0/0 .text            __dt__13daBalloon2D_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daBalloon2D_c::~daBalloon2D_c() {
    nofralloc
#include "asm/rel/d/a/d_a_balloon_2D/d_a_balloon_2D/__dt__13daBalloon2D_cFv.s"
}
#pragma pop

/* 80655524-80655598 002144 0074+00 0/0 1/0 0/0 .text            __sinit_d_a_balloon_2D_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_balloon_2D_cpp() {
    nofralloc
#include "asm/rel/d/a/d_a_balloon_2D/d_a_balloon_2D/__sinit_d_a_balloon_2D_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80655524, __sinit_d_a_balloon_2D_cpp);
#pragma pop

/* 806555EC-806555EC 000040 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/**
 * d_menu_ring.cpp
 * Menu - Item Wheel
 */

// the stringbase doesn't generate the required padding
// might be that some weak functions after the ctor break the match too

// #define NONMATCHING

#include "d/menu/d_menu_ring.h"
#include "JSystem/J2DGraph/J2DOrthoGraph.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J2DGraph/J2DTextBox.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "SSystem/SComponent/c_math.h"
#include "d/a/d_a_alink.h"
#include "d/d_item_data.h"
#include "d/d_kantera_icon_meter.h"
#include "d/d_lib.h"
#include "d/d_select_cursor.h"
#include "d/menu/d_menu_item_explain.h"
#include "d/menu/d_menu_window.h"
#include "d/meter/d_meter2.h"
#include "d/meter/d_meter2_draw.h"
#include "d/meter/d_meter2_info.h"
#include "d/meter/d_meter_HIO.h"
#include "d/msg/d_msg_string.h"
#include "d/pane/d_pane_class.h"
#include "dol2asm.h"
#include "m_Do/m_Do_controller_pad.h"
#include "m_Do/m_Do_graphic.h"
#include "string.h"

//
// Forward References:
//

extern "C" void __ct__12dMenu_Ring_cFP10JKRExpHeapP9STControlP10CSTControlUc();
extern "C" void __dt__12dMenu_Ring_cFv();
extern "C" void _create__12dMenu_Ring_cFv();
extern "C" void _delete__12dMenu_Ring_cFv();
extern "C" void _move__12dMenu_Ring_cFv();
extern "C" void _draw__12dMenu_Ring_cFv();
extern "C" void setKanteraPos__12dMenu_Ring_cFff();
extern "C" void isOpen__12dMenu_Ring_cFv();
extern "C" void isMoveEnd__12dMenu_Ring_cFv();
extern "C" void isClose__12dMenu_Ring_cFv();
extern "C" void getStickInfo__12dMenu_Ring_cFP9STControl();
extern "C" void calcStickAngle__12dMenu_Ring_cFP9STControlUc();
extern "C" void setRotate__12dMenu_Ring_cFv();
extern "C" void setItemScale__12dMenu_Ring_cFif();
extern "C" void setButtonScale__12dMenu_Ring_cFif();
extern "C" void setItem__12dMenu_Ring_cFv();
extern "C" void setJumpItem__12dMenu_Ring_cFb();
extern "C" void setScale__12dMenu_Ring_cFv();
extern "C" void setNameString__12dMenu_Ring_cFUl();
extern "C" void setActiveCursor__12dMenu_Ring_cFv();
extern "C" void setMixItem__12dMenu_Ring_cFv();
extern "C" void drawItem__12dMenu_Ring_cFv();
extern "C" void drawItem2__12dMenu_Ring_cFv();
extern "C" void stick_wait_init__12dMenu_Ring_cFv();
extern "C" void stick_wait_proc__12dMenu_Ring_cFv();
extern "C" void stick_move_init__12dMenu_Ring_cFv();
extern "C" void stick_move_proc__12dMenu_Ring_cFv();
extern "C" void stick_explain_init__12dMenu_Ring_cFv();
extern "C" void stick_explain_force_init__12dMenu_Ring_cFv();
extern "C" void stick_explain_proc__12dMenu_Ring_cFv();
extern "C" void stick_explain_force_proc__12dMenu_Ring_cFv();
extern "C" void setSelectItem__12dMenu_Ring_cFiUc();
extern "C" void drawSelectItem__12dMenu_Ring_cFv();
extern "C" void setSelectItemForce__12dMenu_Ring_cFi();
extern "C" void getCursorPos__12dMenu_Ring_cFUc();
extern "C" void getItemNum__12dMenu_Ring_cFUc();
extern "C" void getItemMaxNum__12dMenu_Ring_cFUc();
extern "C" void checkExplainForce__12dMenu_Ring_cFv();
extern "C" bool checkCombineBomb__12dMenu_Ring_cFi();
extern "C" void setCombineBomb__12dMenu_Ring_cFi();
extern "C" void drawNumber__12dMenu_Ring_cFiiff();
extern "C" void getItem__12dMenu_Ring_cFiUc();
extern "C" void setDoStatus__12dMenu_Ring_cFUc();
extern "C" void isMixItemOn__12dMenu_Ring_cFv();
extern "C" void isMixItemOff__12dMenu_Ring_cFv();
extern "C" void setMixMessage__12dMenu_Ring_cFv();
extern "C" void textScaleHIO__12dMenu_Ring_cFv();
extern "C" void textCentering__12dMenu_Ring_cFv();
extern "C" void clacEllipseFunction__12dMenu_Ring_cFfff();
extern "C" void calcDistance__12dMenu_Ring_cFffff();
extern "C" void clacEllipsePlotAverage__12dMenu_Ring_cFiff();
extern "C" bool dpdMove__12dMenu_Ring_cFv();
extern "C" void openExplain__12dMenu_Ring_cFUc();
extern "C" void draw__12dMenu_Ring_cFv();
extern "C" void __sinit_d_menu_ring_cpp();
extern "C" extern char const* const d_menu_d_menu_ring__stringBase0;

//
// External References:
//

extern "C" void mDoExt_getMesgFont__Fv();
extern "C" void dComIfGs_setSelectItemIndex__FiUc();
extern "C" void dComIfGs_setMixItemIndex__FiUc();
extern "C" void dComIfGs_getMixItemIndex__Fi();
extern "C" s32 dComIfGs_getBottleMax__Fv();
extern "C" void getSelectItemIndex__21dSv_player_status_a_cCFi();
extern "C" void getItem__17dSv_player_item_cCFib();
extern "C" void getLineUpItem__17dSv_player_item_cCFi();
extern "C" void getBombNum__24dSv_player_item_record_cCFUc();
extern "C" void getBottleNum__24dSv_player_item_record_cCFUc();
extern "C" void getBombNum__21dSv_player_item_max_cCFUc();
extern "C" void __ct__16dSelect_cursor_cFUcfP10JKRArchive();
extern "C" void setParam__16dSelect_cursor_cFfffff();
extern "C" void setScale__16dSelect_cursor_cFf();
extern "C" void setAlphaRate__16dSelect_cursor_cFf();
extern "C" void __ct__15dKantera_icon_cFv();
extern "C" void setAlphaRate__15dKantera_icon_cFf();
extern "C" void setPos__15dKantera_icon_cFff();
extern "C" void setScale__15dKantera_icon_cFff();
extern "C" void setNowGauge__15dKantera_icon_cFUsUs();
extern "C" void __ct__19dMenu_ItemExplain_cFP10JKRExpHeapP10JKRArchiveP9STControlb();
extern "C" void move__19dMenu_ItemExplain_cFv();
extern "C" void draw__19dMenu_ItemExplain_cFP13J2DOrthoGraph();
extern "C" void openExplain__19dMenu_ItemExplain_cFUcUcUcb();
extern "C" void openExplainTx__19dMenu_ItemExplain_cFUlUl();
extern "C" void getAlphaRatio__19dMenu_ItemExplain_cFv();
extern "C" void dMw_UP_TRIGGER__Fv();
extern "C" void dMw_DOWN_TRIGGER__Fv();
extern "C" void dMw_A_TRIGGER__Fv();
extern "C" void dMw_B_TRIGGER__Fv();
extern "C" void
drawPikari__13dMeter2Draw_cFffPffQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorfUc();
extern "C" void warpInProc__13dMeter2Info_cFv();
extern "C" void
readItemTexture__13dMeter2Info_cFUcPvP10J2DPicturePvP10J2DPicturePvP10J2DPicturePvP10J2DPicturei();
extern "C" void
setItemColor__13dMeter2Info_cFUcP10J2DPictureP10J2DPictureP10J2DPictureP10J2DPicture();
extern "C" void dMeter2Info_getNumberTextureName__Fi();
extern "C" void dMeter2Info_set2DVibration__Fv();
extern "C" void dMeter2Info_set2DVibrationM__Fv();
extern "C" void __ct__12dMsgString_cFv();
extern "C" void __dt__12dMsgString_cFv();
extern "C" void __ct__8CPaneMgrFv();
extern "C" void __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap();
extern "C" void __dt__8CPaneMgrFv();
extern "C" void paneTrans__8CPaneMgrFff();
extern "C" void getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs();
extern "C" void dPaneClass_showNullPane__FP9J2DScreen();
extern "C" void dPaneClass_setPriority__FPPvP7JKRHeapP9J2DScreenPCcUlP10JKRArchive();
extern "C" void __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap();
extern "C" void show__13CPaneMgrAlphaFv();
extern "C" void hide__13CPaneMgrAlphaFv();
extern "C" void isVisible__13CPaneMgrAlphaFv();
extern "C" void setAlphaRate__13CPaneMgrAlphaFf();
extern "C" void getAlphaRate__13CPaneMgrAlphaFv();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cLib_addCalcPosXZ__FP4cXyzRC4cXyzfff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void alloc__7JKRHeapFUli();
extern "C" void free__7JKRHeapFPv();
extern "C" void getTotalFreeSize__7JKRHeapFv();
extern "C" void* __nw__FUl();
extern "C" void* __nwa__FUl();
extern "C" void __dl__FPv();
extern "C" void __dla__FPv();
extern "C" void J2DDrawFrame__FffffQ28JUtility6TColorUc();
extern "C" void setBasePosition__7J2DPaneF15J2DBasePosition();
extern "C" void __ct__9J2DScreenFv();
extern "C" void draw__9J2DScreenFffPC14J2DGrafContext();
extern "C" void __ct__10J2DPictureFPC7ResTIMG();
extern "C" void getStringPtr__10J2DTextBoxCFv();
extern "C" void setString__10J2DTextBoxFsPCce();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_17();
extern "C" void _savegpr_18();
extern "C" void _savegpr_20();
extern "C" void _savegpr_21();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_17();
extern "C" void _restgpr_18();
extern "C" void _restgpr_20();
extern "C" void _restgpr_21();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__12dDlst_base_c[3];
extern "C" void* item_resource__10dItem_data[1530];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

#ifdef NONMATCHING
#else
/* 80397738-80397760 023D98 0028+00 1/1 0/0 0/0 .rodata          xy_text$4015 */
static const u64 xy_text[5] = {
    'yx_text', 'yx_te_s1', 'yx_te_s2', 'yx_te_s3', 'yx_te_s4',
};

/* 80397760-80397788 023DC0 0028+00 0/1 0/0 0/0 .rodata          fxy_text$4016 */
#pragma push
#pragma force_active on
static const u64 fxy_text[5] = {
    'fyx_tex', 'fyx_te_1', 'fyx_te_2', 'fyx_te_3', 'fyx_te_4',
};
#pragma pop

/* 80397788-803977B0 023DE8 0028+00 0/1 0/0 0/0 .rodata          c_text$4022 */
#pragma push
#pragma force_active on
static const u64 c_text[5] = {
    'c_text', 'c_te_s1', 'c_te_s2', 'c_te_s3', 'c_te_s4',
};
#pragma pop

/* 803977B0-803977D8 023E10 0028+00 0/1 0/0 0/0 .rodata          fc_text$4023 */
#pragma push
#pragma force_active on
static const u64 fc_text[5] = {
    'fc_text', 'fc_te_s1', 'fc_te_s2', 'fc_te_s3', 'fc_te_s4',
};
#pragma pop

/* 803977D8-80397800 023E38 0028+00 0/1 0/0 0/0 .rodata          c_text1$4029 */
#pragma push
#pragma force_active on
static const u64 c_text1[5] = {
    'c_text1', 'c_texs1', 'c_texs2', 'c_texs3', 'c_texs4',
};
#pragma pop

/* 80397800-80397828 023E60 0028+00 0/1 0/0 0/0 .rodata          fc_text1$4030 */
#pragma push
#pragma force_active on
static const u64 fc_text1[5] = {
    'fc_text1', 'fc_texs1', 'fc_texs2', 'fc_texs3', 'fc_texs4',
};
#pragma pop

/* 80397828-80397850 023E88 0028+00 0/1 0/0 0/0 .rodata          t_on$4036 */
#pragma push
#pragma force_active on
static const u64 t_on[5] = {
    'gr_t_on', 'g_tof_s5', 'g_tof_s6', 'g_tof_s7', 'g_tof_s8',
};
#pragma pop

/* 80397850-80397878 023EB0 0028+00 0/1 0/0 0/0 .rodata          ft_on$4037 */
#pragma push
#pragma force_active on
static const u64 ft_on[5] = {
    'fr_t_on', 'f_tof_s5', 'f_tof_s6', 'f_tof_s7', 'f_tof_s8',
};
#pragma pop

/* 80397878-803978A0 023ED8 0028+00 0/1 0/0 0/0 .rodata          t_off$4043 */
#pragma push
#pragma force_active on
static const u64 t_off[5] = {
    'gr_t_of', 'g_tof_s1', 'g_tof_s2', 'g_tof_s3', 'g_tof_s4',
};
#pragma pop

/* 803978A0-803978C8 023F00 0028+00 0/1 0/0 0/0 .rodata          ft_off$4044 */
#pragma push
#pragma force_active on
static const u64 ft_off[5] = {
    'fr_t_of', 'f_tof_s1', 'f_tof_s2', 'f_tof_s3', 'f_tof_s4',
};
#pragma pop

#endif

#ifdef NONMATCHING
#else
/* 803978C8-803978C8 023F28 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803978C8 =
    "SCRN/zelda_item_select_icon_message_ver2.blo";
SECTION_DEAD static char const* const stringBase_803978F5 = "";
SECTION_DEAD static char const* const stringBase_803978F6 = "tt_block8x8.bti";
SECTION_DEAD static char const* const stringBase_80397906 = "SCRN/zelda_item_select_icon3_spot.blo";
SECTION_DEAD static char const* const stringBase_8039792C =
    "SCRN/zelda_item_select_icon3_center_parts.blo";
/* @stringBase0 padding */
SECTION_DEAD static char const* const pad_8039795A = "\0\0\0\0\0";
#pragma pop
#endif

/* 803BDE70-803BDE7C 01AF90 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

#ifdef NONMATCHING
/* 803BDEAC-803BDEDC 01AFCC 0030+00 3/4 0/0 0/0 .data            stick_init */
typedef void (dMenu_Ring_c::*initFunc)();
static initFunc stick_init[] = {
    &dMenu_Ring_c::stick_wait_init,
    &dMenu_Ring_c::stick_move_init,
    &dMenu_Ring_c::stick_explain_init,
    &dMenu_Ring_c::stick_explain_force_init,
};

/* 803BDF0C-803BDF3C 01B02C 0030+00 1/2 0/0 0/0 .data            stick_proc */
typedef void (dMenu_Ring_c::*procFunc)();
static procFunc stick_proc[] = {
    &dMenu_Ring_c::stick_wait_proc,
    &dMenu_Ring_c::stick_move_proc,
    &dMenu_Ring_c::stick_explain_proc,
    &dMenu_Ring_c::stick_explain_force_proc,
};
#else
/* 803BDE7C-803BDE88 -00001 000C+00 0/1 0/0 0/0 .data            @3862 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3862[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)stick_wait_init__12dMenu_Ring_cFv,
};
#pragma pop

/* 803BDE88-803BDE94 -00001 000C+00 0/1 0/0 0/0 .data            @3863 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3863[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)stick_move_init__12dMenu_Ring_cFv,
};
#pragma pop

/* 803BDE94-803BDEA0 -00001 000C+00 0/1 0/0 0/0 .data            @3864 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3864[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)stick_explain_init__12dMenu_Ring_cFv,
};
#pragma pop

/* 803BDEA0-803BDEAC -00001 000C+00 0/1 0/0 0/0 .data            @3865 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3865[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)stick_explain_force_init__12dMenu_Ring_cFv,
};
#pragma pop

/* 803BDEAC-803BDEDC 01AFCC 0030+00 3/4 0/0 0/0 .data            stick_init */
SECTION_DATA static u8 stick_init[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803BDEDC-803BDEE8 -00001 000C+00 0/1 0/0 0/0 .data            @3866 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3866[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)stick_wait_proc__12dMenu_Ring_cFv,
};
#pragma pop

/* 803BDEE8-803BDEF4 -00001 000C+00 0/1 0/0 0/0 .data            @3867 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3867[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)stick_move_proc__12dMenu_Ring_cFv,
};
#pragma pop

/* 803BDEF4-803BDF00 -00001 000C+00 0/1 0/0 0/0 .data            @3868 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3868[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)stick_explain_proc__12dMenu_Ring_cFv,
};
#pragma pop

/* 803BDF00-803BDF0C -00001 000C+00 0/1 0/0 0/0 .data            @3869 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3869[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)stick_explain_force_proc__12dMenu_Ring_cFv,
};
#pragma pop

/* 803BDF0C-803BDF3C 01B02C 0030+00 1/2 0/0 0/0 .data            stick_proc */
SECTION_DATA static u8 stick_proc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#endif

#ifdef NONMATCHING
#else
/* 803BDF3C-803BDF5C -00001 0020+00 1/1 0/0 0/0 .data            @4795 */
SECTION_DATA static void* lit_4795[8] = {
    (void*)(((char*)calcStickAngle__12dMenu_Ring_cFP9STControlUc) + 0x4C),
    (void*)(((char*)calcStickAngle__12dMenu_Ring_cFP9STControlUc) + 0x60),
    (void*)(((char*)calcStickAngle__12dMenu_Ring_cFP9STControlUc) + 0x8C),
    (void*)(((char*)calcStickAngle__12dMenu_Ring_cFP9STControlUc) + 0x78),
    (void*)(((char*)calcStickAngle__12dMenu_Ring_cFP9STControlUc) + 0x58),
    (void*)(((char*)calcStickAngle__12dMenu_Ring_cFP9STControlUc) + 0x68),
    (void*)(((char*)calcStickAngle__12dMenu_Ring_cFP9STControlUc) + 0x70),
    (void*)(((char*)calcStickAngle__12dMenu_Ring_cFP9STControlUc) + 0x80),
};
#endif

#ifdef NONMATCHING
#else
/* 803BDF5C-803BDF78 01B07C 0010+0C 2/2 0/0 0/0 .data            __vt__12dMenu_Ring_c */
SECTION_DATA extern void* __vt__12dMenu_Ring_c[4 + 3 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__12dMenu_Ring_cFv,
    (void*)__dt__12dMenu_Ring_cFv,
    /* padding */
    NULL,
    NULL,
    NULL,
};
#endif

#ifdef NONMATCHING
#else
/* 80454388-8045438C 002988 0004+00 9/9 0/0 0/0 .sdata2          @4300 */
SECTION_SDATA2 static u8 lit_4300[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 8045438C-80454390 00298C 0004+00 3/3 0/0 0/0 .sdata2          @4301 */
SECTION_SDATA2 static f32 lit_4301 = 448.0f;

/* 80454390-80454394 002990 0004+00 3/3 0/0 0/0 .sdata2          @4302 */
SECTION_SDATA2 static f32 lit_4302 = -448.0f;

/* 80454394-80454398 002994 0004+00 3/3 0/0 0/0 .sdata2          @4303 */
SECTION_SDATA2 static f32 lit_4303 = 608.0f;

/* 80454398-8045439C 002998 0004+00 3/3 0/0 0/0 .sdata2          @4304 */
SECTION_SDATA2 static f32 lit_4304 = -608.0f;

/* 8045439C-804543A0 00299C 0004+00 18/18 0/0 0/0 .sdata2          @4305 */
SECTION_SDATA2 static f32 lit_4305 = 1.0f;

/* 804543A0-804543A4 0029A0 0004+00 2/2 0/0 0/0 .sdata2          @4306 */
SECTION_SDATA2 static f32 lit_4306 = 100.0f;

/* 804543A4-804543A8 0029A4 0004+00 5/5 0/0 0/0 .sdata2          @4307 */
SECTION_SDATA2 static f32 lit_4307 = 48.0f;

/* 804543A8-804543AC 0029A8 0004+00 4/4 0/0 0/0 .sdata2          @4308 */
SECTION_SDATA2 static f32 lit_4308 = 1.0f / 10.0f;

/* 804543AC-804543B0 0029AC 0004+00 4/4 0/0 0/0 .sdata2          @4309 */
SECTION_SDATA2 static f32 lit_4309 = 3.0f / 5.0f;

/* 804543B0-804543B8 0029B0 0004+04 7/7 0/0 0/0 .sdata2          @4310 */
SECTION_SDATA2 static f32 lit_4310[1 + 1 /* padding */] = {
    0.5f,
    /* padding */
    0.0f,
};

/* 804543B8-804543C0 0029B8 0008+00 5/5 0/0 0/0 .sdata2          @4312 */
SECTION_SDATA2 static f64 lit_4312 = 4503599627370496.0 /* cast u32 to float */;
#endif

/* 801E9118-801EA708 1E3A58 15F0+00 0/0 1/1 0/0 .text
 * __ct__12dMenu_Ring_cFP10JKRExpHeapP9STControlP10CSTControlUc */
// literals
#ifdef NONMATCHING
dMenu_Ring_c::dMenu_Ring_c(JKRExpHeap* i_heap, STControl* i_stick, CSTControl* i_cStick,
                           u8 param_3) {
    static const u64 xy_text[5] = {
        'yx_text', 'yx_te_s1', 'yx_te_s2', 'yx_te_s3', 'yx_te_s4',
    };
    static const u64 fxy_text[5] = {
        'fyx_tex', 'fyx_te_1', 'fyx_te_2', 'fyx_te_3', 'fyx_te_4',
    };
    static const u64 c_text[5] = {
        'c_text', 'c_te_s1', 'c_te_s2', 'c_te_s3', 'c_te_s4',
    };
    static const u64 fc_text[5] = {
        'fc_text', 'fc_te_s1', 'fc_te_s2', 'fc_te_s3', 'fc_te_s4',
    };
    static const u64 c_text1[5] = {
        'c_text1', 'c_texs1', 'c_texs2', 'c_texs3', 'c_texs4',
    };
    static const u64 fc_text1[5] = {
        'fc_text1', 'fc_texs1', 'fc_texs2', 'fc_texs3', 'fc_texs4',
    };
    static const u64 t_on[5] = {
        'gr_t_on', 'g_tof_s5', 'g_tof_s6', 'g_tof_s7', 'g_tof_s8',
    };
    static const u64 ft_on[5] = {
        'fr_t_on', 'f_tof_s5', 'f_tof_s6', 'f_tof_s7', 'f_tof_s8',
    };
    static const u64 t_off[5] = {
        'gr_t_of', 'g_tof_s1', 'g_tof_s2', 'g_tof_s3', 'g_tof_s4',
    };
    static const u64 ft_off[5] = {
        'fr_t_of', 'f_tof_s1', 'f_tof_s2', 'f_tof_s3', 'f_tof_s4',
    };

    mpHeap = i_heap;
    mpStick = i_stick;
    mpCStick = i_cStick;
    field_0x6bc = param_3;
    dMeter2Info_setItemExplainWindowStatus(0);
    mpHeap->getTotalFreeSize();
    field_0x570 = 0.0f;
    if (field_0x6bc == 0) {
        field_0x568 = 0.0f;
        field_0x56c = 448.0f;
    } else if (field_0x6bc == 2) {
        field_0x568 = 0.0f;
        field_0x56c = -448.0f;
    }
    if (field_0x6bc == 3) {
        field_0x568 = 608.0f;
        field_0x56c = 0.0f;
    } else if (field_0x6bc == 1) {
        field_0x568 = -608.0f;
        field_0x56c = 0.0f;
    } else {
        field_0x568 = 0.0f;
        field_0x56c = 0.0f;
    }
    field_0x58c = 0.0f;
    field_0x590 = 0.0f;
    field_0x594 = 1.0f;
    for (int i = 0; i < 10; i++) {
        field_0x598[i] = 0.0f;
        field_0x5c0[i] = 0.0f;
        field_0x5e8[i] = 1.0f;
    }
    field_0x610 = 1.0f;
    field_0x614 = 0.0f;
    field_0x618 = 0.0f;
    field_0x61c = 1.0f;
    field_0x620 = 1.0f;
    field_0x624 = 1.0f;
    mPlayerIsWolf = daPy_py_c::i_checkNowWolf();
    mNameStringID = 0;
    field_0x63a = 0;
    field_0x63c = 0;
    field_0x638 = 0;
    mStatus = 0;
    field_0x6b1 = 0;
    field_0x6b2 = 0;
    field_0x672 = 0;
    field_0x380.set(0.0f, 0.0f, 0.0f);
    field_0x6a8 = 0;
    field_0x6a9 = 0;
    field_0x6aa = 0xff;
    field_0x6ab = 0xff;
    field_0x6ac = 0xff;
    field_0x6ad = 0xff;
    field_0x670 = 0;
    field_0x67e = 0;
    field_0x6b3 = 0;
    field_0x514 = 0.0f;
    mDrawFlag = 0;
    field_0x6af = 0;
    field_0x67c = 4;
    field_0x6c5 = 0;
    field_0x680 = 0;
    field_0x684 = 0;
    field_0x6c6 = 0;
    field_0x6c4 = 0xff;
    field_0x6cc = 0;
    field_0x6cb = 0xff;
    field_0x6cd = 0xff;
    field_0x6ce = 0;
    field_0x68e = 0;
    field_0x6cf = 0xff;
    field_0x6d0 = 0xff;
    field_0x6d1 = 0xff;
    field_0x6d2 = 0xff;
    field_0x6d3 = 0xff;
    int i;
    for (int i = 0; i < 3; i++) {
        field_0x580[i] = 0.0f;
        field_0x574[i] = 0.0f;
    }
    field_0x6c3 = 0xff;
    field_0x6c2 = 0;
    for (int i = 0; i < 3; i++) {
        field_0x374[i] = NULL;
    }
    for (int i = 0; i < 4; i++) {
        field_0x6c7[i] = 0xff;
    }
    switch (field_0x6bc) {
    case 0:
        field_0x682 = 0x8000;
        break;
    case 1:
        field_0x682 = 0x4000;
        break;
    case 2:
        field_0x682 = 0;
        break;
    default:
        field_0x682 = 0xc000;
        break;
    }
    for (int i = 0; i < 4; i++) {
        field_0x674[i] = 0;
        field_0x518[i] = 0.0f;
        field_0x528[i] = 0.0f;
        field_0x538[i] = 0.0f;
        field_0x6b4[i] = 0;
        field_0x6b8[i] = 0xff;
        mpSelectItemTex[i][0] = NULL;
        mpSelectItemTex[i][1] = NULL;
        mpSelectItemTex[i][2] = NULL;
        field_0x686[i] = 0;
    }
    for (int i = 0; i < MAX_ITEM_SLOTS; i++) {
        field_0x3ec[i] = 0.0f;
        field_0x38c[i] = 0.0f;
        for (int j = 0; j < 3; j++) {
            mpItemTex[i][j] = NULL;
            mpItemBuf[i][j] = NULL;
        }
        field_0x690[i] = 0;
        field_0x63e[i] = 0;
        field_0x4ac[i] = 0.0f;
        field_0x44c[i] = 0.0f;
    }
    for (int i = 0; i < MAX_ITEM_SLOTS; i++) {
        if (dComIfGs_getLineUpItem(i) != 0xff) {
            field_0x6af++;
        }
    }
    if (field_0x6af < 1) {
        field_0x6ae = 1;
    } else {
        field_0x6ae = field_0x6af;
    }
    for (int i = 0; i < MAX_ITEM_SLOTS; i++) {
        field_0x690[i] = dComIfGs_getLineUpItem(i);
    }
    for (int i = 0; i < field_0x6ae; i++) {
        field_0x690[i] = dComIfGs_getLineUpItem(i);
        if (dComIfGs_getSelectItemIndex(0) == dComIfGs_getLineUpItem(i)) {
            field_0x6aa = i;
        }
        if (dComIfGs_getSelectItemIndex(1) == dComIfGs_getLineUpItem(i)) {
            field_0x6ab = i;
        }
        if (dComIfGs_getSelectItemIndex(2) == dComIfGs_getWolfAbility(i)) {
            field_0x6ac = i;
        }
    }
    field_0x50c = g_ringHIO.mRingRadiusH;
    field_0x510 = g_ringHIO.mRingRadiusV;
    field_0x66e = 0x8000;
    field_0x634 = 0x10000 / field_0x6ae;
    for (int i = 0; i < MAX_SELECT_ITEM; i++) {
        for (int j = 0; j < 3; j++) {
            for (int k = 0; k < SELECT_ITEM_NUM; k++) {
                mpSelectItemTexBuf[i][j][k] = (ResTIMG*)mpHeap->alloc(0xC00, 0x20);
            }
        }
        field_0x6be[i] = 0;
        if (i == 2) {
            setSelectItem(i, 0);
        } else {
            setSelectItem(i, 0x43);
        }
        for (int j = 0; j < 3; j++) {
            mpSelectItemTex[i][j] = new J2DPicture(mpSelectItemTexBuf[i][field_0x6be[i]][0]);
            mpSelectItemTex[i][j]->setBasePosition(J2DBasePosition_4);
        }
        field_0x548[i] = 0.0f;
        field_0x558[i] = 0.0f;
    }
    ResTIMG* timg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource(
        'TIMG', dMeter2Info_getNumberTextureName(0));
    for (int i = 0; i < 3; i++) {
        mpItemNumTex[i] = new J2DPicture(timg);
    }
    mpKanteraMeter = new dKantera_icon_c();
    mpScreen = new J2DScreen();
    dPaneClass_setPriority(&field_0x374[0], mpHeap, mpScreen,
                           "SCRN/zelda_item_select_icon_message_ver2.blo", 0x20000,
                           dComIfGp_getRingResArchive());
    dPaneClass_showNullPane(mpScreen);
    mpMessageParent = new CPaneMgrAlpha(mpScreen, 'n_all', 2, NULL);
    mpTextParent[0] = new CPaneMgr(mpScreen, 'r_n', 0, NULL);
    mpTextParent[1] = new CPaneMgr(mpScreen, 'c_n', 2, NULL);
    mpTextParent[1]->setAlphaRate(1.0f);
    mpTextParent[2] = NULL;
    mpTextParent[3] = new CPaneMgr(mpScreen, 'c_sen_n', 2, NULL);
    mpTextParent[4] = new CPaneMgr(mpScreen, 'gr_n', 2, NULL);
    mpTextParent[4]->hide();
    for (int i = 5; i < 10; i++) {
        mpTextParent[i] = NULL;
    }
    for (int i = 0; i < field_0x6af; i++) {
        for (int j = 0; j < 3; j++) {
            mpItemBuf[i][j] = (ResTIMG*)mpHeap->alloc(0xC00, 0x20);
        }
        u8 item = dComIfGs_getItem(field_0x690[i], false);
        if (item != NO_ITEM) {
            if (item == 0x53) {
                item = 0x43;
            }
            s32 i_textureNum =
                dMeter2Info_readItemTexture(item, mpItemBuf[i][0], NULL, mpItemBuf[i][1], NULL,
                                            mpItemBuf[i][2], NULL, NULL, NULL, -1);
            for (int k = 0; k < i_textureNum; k++) {
                mpItemTex[i][k] = new J2DPicture(mpItemBuf[i][k]);
                mpItemTex[i][k]->setBasePosition(J2DBasePosition_4);
            }
            dMeter2Info_setItemColor(item, mpItemTex[i][0], mpItemTex[i][1], mpItemTex[i][2], NULL);
            u8 texScale = dItem_data::getTexScale(item);
            f32 fVar1 = (texScale / 100.0f);
            f32 fVar2 = (mpItemBuf[i][0]->width / 48.0f);
            fVar1 = fVar2 * fVar1;
            field_0x44c[i] = fVar1;
            field_0x4ac[i] = (mpItemBuf[i][0]->height / 48.0f * (texScale / 100.0f));
        }
    }
    mpScreen->search('r_btn_n')->hide();
    if (mPlayerIsWolf != 0) {
        mpScreen->search('yx_te_s1')->hide();
        mpScreen->search('yx_te_s2')->hide();
        mpScreen->search('yx_te_s3')->hide();
        mpScreen->search('yx_te_s4')->hide();
        mpScreen->search('yx_text')->hide();
        mpScreen->search('fyx_te_1')->hide();
        mpScreen->search('fyx_te_2')->hide();
        mpScreen->search('fyx_te_3')->hide();
        mpScreen->search('fyx_te_4')->hide();
        mpScreen->search('fyx_tex')->hide();
        mpScreen->search('x_btn_n')->hide();
        mpScreen->search('y_btn_n')->hide();
    }
    mpString = new dMsgString_c();
    for (i = 0; i < 5; i++) {
        J2DTextBox* fxy_TextBox = (J2DTextBox*)mpScreen->search(fxy_text[i]);
        mpScreen->search(xy_text[i])->hide();
        fxy_TextBox->setFont(mDoExt_getMesgFont());
        fxy_TextBox->setString(0x40, "");
        field_0x580[0] = mpString->getString(0x380, fxy_TextBox, NULL, NULL, NULL, 0);
    }
    for (i = 0; i < 5; i++) {
        J2DTextBox* fc_TextBox = (J2DTextBox*)mpScreen->search(fc_text[i]);
        mpScreen->search(c_text[i])->hide();
        fc_TextBox->setFont(mDoExt_getMesgFont());
        fc_TextBox->setString(0x40, "");
        field_0x580[1] = mpString->getString(0x37F, fc_TextBox, NULL, NULL, NULL, 0);
    }
    for (i = 0; i < 5; i++) {
        J2DTextBox* fc1_TextBox = (J2DTextBox*)mpScreen->search(fc_text1[i]);
        mpScreen->search(c_text1[i])->hide();
        fc1_TextBox->setFont(mDoExt_getMesgFont());
        fc1_TextBox->setString(0x40, "");
        field_0x580[2] = mpString->getString(0x4CD, fc1_TextBox, NULL, NULL, NULL, 0);
    }
    for (int i = 0; i < 5; i++) {
        field_0x1c8[i] = (J2DTextBox*)mpScreen->search(ft_on[i]);
        mpScreen->search(t_on[i])->hide();
        field_0x1c8[i]->setString(0x40, "");
        field_0x1c8[i]->setFont(mDoExt_getMesgFont());
        mpString->getString(0x4D2, field_0x1c8[i], NULL, NULL, NULL, 0);
    }
    for (int i = 0; i < 5; i++) {
        field_0x1dc[i] = (J2DTextBox*)mpScreen->search(ft_off[i]);
        mpScreen->search(t_off[i])->hide();
        field_0x1dc[i]->setString(0x40, "");
        field_0x1dc[i]->setFont(mDoExt_getMesgFont());
        mpString->getString(0x4D3, field_0x1dc[i], NULL, NULL, NULL, 0);
    }
    mpHeap->getTotalFreeSize();
    timg = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', "tt_block8x8.bti");
    mpBlackTex = new J2DPicture(timg);
    mpBlackTex->setBlackWhite(JUtility::TColor(0, 0, 0, 0), JUtility::TColor(0, 0, 0, 0xff));
    mpBlackTex->setAlpha(0);
    mpSpotScreen = new J2DScreen();
    dPaneClass_setPriority(&field_0x374[1], mpHeap, mpSpotScreen,
                           "SCRN/zelda_item_select_icon3_spot.blo", 0x20000,
                           dComIfGp_getRingResArchive());
    dPaneClass_showNullPane(mpSpotScreen);
    mpSpotParent = new CPaneMgrAlpha(mpSpotScreen, 'n_all', 2, NULL);
    mpCenterScreen = new J2DScreen();
    dPaneClass_setPriority(&field_0x374[2], mpHeap, mpCenterScreen,
                           "SCRN/zelda_item_select_icon3_center_parts.blo", 0x20000,
                           dComIfGp_getRingResArchive());
    dPaneClass_showNullPane(mpCenterScreen);
    mpCenterParent = new CPaneMgrAlpha(mpCenterScreen, 'center_n', 2, NULL);
    mpNameParent = new CPaneMgr(mpCenterScreen, 'label_n', 1, NULL);
    mpCircle = new CPaneMgr(mpCenterScreen, 'circle_n', 2, NULL);
    J2DTextBox* textBox[4];
    textBox[0] = (J2DTextBox*)mpCenterScreen->search('fitem_n1');
    textBox[1] = (J2DTextBox*)mpCenterScreen->search('fitem_n2');
    textBox[2] = (J2DTextBox*)mpCenterScreen->search('fitem_n3');
    textBox[3] = (J2DTextBox*)mpCenterScreen->search('fitem_n4');
    mpCenterScreen->search('item_n04');
    mpCenterScreen->search('item_n05');
    mpCenterScreen->search('item_n06');
    mpCenterScreen->search('item_n07');
    for (int i = 0; i < 4; i++) {
        textBox[i]->setFont(mDoExt_getMesgFont());
        textBox[i]->setString(0x40, "");
    }
    textCentering();
    mpDrawCursor = new dSelect_cursor_c(2, g_ringHIO.mCursorScale, dComIfGp_getMain2DArchive());
    mpDrawCursor->setAlphaRate(1.0f);
    mpItemExplain = new dMenu_ItemExplain_c(mpHeap, dComIfGp_getRingResArchive(), i_stick, true);
    setRotate();
    mpDrawCursor->setPos(field_0x38c[0] + field_0x568, field_0x3ec[0] + field_0x56c);
    if (dComIfGs_getItem(field_0x690[0], false) != NO_ITEM) {
        mpDrawCursor->setParam(field_0x44c[0], field_0x4ac[0], 0.1f, 0.6f, 0.5f);
    } else {
        mpDrawCursor->setParam(1.0f, 1.0f, 0.1f, 0.6f, 0.5f);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dMenu_Ring_c::dMenu_Ring_c(JKRExpHeap* param_0, STControl* param_1, CSTControl* param_2,
                               u8 param_3) {
    nofralloc
#include "asm/d/menu/d_menu_ring/__ct__12dMenu_Ring_cFP10JKRExpHeapP9STControlP10CSTControlUc.s"
}
#pragma pop
#endif

/* 801EA708-801EAB7C 1E5048 0474+00 1/0 0/0 0/0 .text            __dt__12dMenu_Ring_cFv */
dMenu_Ring_c::~dMenu_Ring_c() {
    mpHeap->getTotalFreeSize();
    dMeter2Info_setItemExplainWindowStatus(0);
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 3; j++) {
            for (int k = 0; k < 2; k++) {
                mpHeap->free(mpSelectItemTexBuf[i][j][k]);
                mpSelectItemTexBuf[i][j][k] = NULL;
            }
            if (mpSelectItemTex[i][j] != NULL) {
                delete mpSelectItemTex[i][j];
                mpSelectItemTex[i][j] = NULL;
            }
        }
    }

    for (int i = 0; i < 3; i++) {
        if (mpItemNumTex[i] != NULL) {
            delete mpItemNumTex[i];
            mpItemNumTex[i] = NULL;
        }
    }

    delete mpKanteraMeter;
    mpKanteraMeter = NULL;

    delete mpScreen;
    mpScreen = NULL;

    delete mpMessageParent;
    mpMessageParent = NULL;

    for (int i = 0; i < 10; i++) {
        if (mpTextParent[i] != NULL) {
            delete mpTextParent[i];
            mpTextParent[i] = NULL;
        }
    }

    for (int i = 0; i < MAX_ITEM_SLOTS; i++) {
        for (int j = 0; j < 3; j++) {
            if (mpItemTex[i][j] != NULL) {
                delete mpItemTex[i][j];
                mpItemTex[i][j] = NULL;
            }

            if (mpItemBuf[i][j] != NULL) {
                mpHeap->free(mpItemBuf[i][j]);
                mpItemBuf[i][j] = NULL;
            }
        }
    }

    delete mpString;
    mpString = NULL;

    mpHeap->getTotalFreeSize();

    delete mpBlackTex;
    mpBlackTex = NULL;

    delete mpSpotScreen;
    mpSpotScreen = NULL;

    delete mpSpotParent;
    mpSpotParent = NULL;

    delete mpCenterScreen;
    mpCenterScreen = NULL;

    for (int i = 0; i < 3; i++) {
        if (field_0x374[i] != NULL) {
            mpHeap->free(field_0x374[i]);
            field_0x374[i] = NULL;
        }
    }

    delete mpCenterParent;
    mpCenterParent = NULL;

    delete mpNameParent;
    mpNameParent = NULL;

    delete mpCircle;
    mpCircle = NULL;

    delete mpDrawCursor;
    mpDrawCursor = NULL;

    delete mpItemExplain;
    mpItemExplain = NULL;

    dComIfGp_getRingResArchive()->removeResourceAll();
}

#ifdef NONMATCHING
#else
/* ############################################################################################## */
/* 804543C0-804543C8 0029C0 0004+04 8/8 0/0 0/0 .sdata2          @4465 */
SECTION_SDATA2 static f32 lit_4465[1 + 1 /* padding */] = {
    -1.0f,
    /* padding */
    0.0f,
};
#endif

/* 801EAB7C-801EABE8 1E54BC 006C+00 0/0 1/1 0/0 .text            _create__12dMenu_Ring_cFv */
#ifdef NONMATCHING
// Matches with sinit and literals
void dMenu_Ring_c::_create() {
    (this->*stick_init[mStatus])();
    Z2GetAudioMgr()->seStart(Z2SE_ITEM_RING_IN, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::_create() {
    nofralloc
#include "asm/d/menu/d_menu_ring/_create__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801EABE8-801EABEC 1E5528 0004+00 0/0 1/1 0/0 .text            _delete__12dMenu_Ring_cFv */
void dMenu_Ring_c::_delete() {
    /* empty function */
}

/* 801EABEC-801EACC8 1E552C 00DC+00 0/0 1/1 0/0 .text            _move__12dMenu_Ring_cFv */
#ifdef NONMATCHING
// Matches with sinit
void dMenu_Ring_c::_move() {
    field_0x50c = g_ringHIO.mRingRadiusH;
    field_0x510 = g_ringHIO.mRingRadiusV;
    field_0x6b1 = mStatus;
    mpItemExplain->move();
    (this->*stick_proc[mStatus])();
    if (mStatus != field_0x6b1) {
        (this->*stick_init[mStatus])();
    }
    setScale();
    setActiveCursor();
    setMixMessage();
    if (field_0x610 != g_ringHIO.mCursorScale) {
        field_0x610 = g_ringHIO.mCursorScale;
        mpDrawCursor->setScale(g_ringHIO.mCursorScale);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::_move() {
    nofralloc
#include "asm/d/menu/d_menu_ring/_move__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801EACC8-801EB080 1E5608 03B8+00 1/1 0/0 0/0 .text            _draw__12dMenu_Ring_cFv */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Ring_c::_draw() {
    J2DGrafContext* grafPort = dComIfGp_getCurrentGrafPort();
    grafPort->setup2D();
    if (mDrawFlag == 0) {
        mpSpotParent->setAlphaRate(field_0x514 * g_ringHIO.mOverlayAlpha);
        mpSpotScreen->draw(0.0f, 0.0f, grafPort);
        if (field_0x594 != g_ringHIO.mItemNameScale) {
            field_0x594 = g_ringHIO.mItemNameScale;
            mpNameParent->scale(field_0x594, field_0x594);
        }
        if (field_0x58c != g_ringHIO.mItemNamePosX || field_0x590 != g_ringHIO.mItemNamePosY) {
            field_0x58c = g_ringHIO.mItemNamePosX;
            field_0x590 = g_ringHIO.mItemNamePosY;
            mpNameParent->paneTrans(field_0x58c, field_0x590);
        }
        if (field_0x614 != g_ringHIO.mRingPosX || field_0x618 != g_ringHIO.mRingPosY) {
            field_0x614 = g_ringHIO.mRingPosX;
            field_0x618 = g_ringHIO.mRingPosY;
            mpCircle->paneTrans(field_0x614, field_0x618);
        }
        if (field_0x61c != g_ringHIO.mRingScaleH || field_0x620 != g_ringHIO.mRingScaleV) {
            field_0x61c = g_ringHIO.mRingScaleH;
            field_0x620 = g_ringHIO.mRingScaleV;
            mpCircle->scale(field_0x61c, field_0x620);
        }
        f32 ringAlpha = mPlayerIsWolf != 0 ? g_ringHIO.mRingAlpha_Wolf : g_ringHIO.mRingAlpha;
        if (field_0x624 != ringAlpha) {
            field_0x624 = ringAlpha;
            mpCircle->setAlphaRate(field_0x624);
        }
        mpCenterParent->setAlphaRate(field_0x514);
        mpCenterScreen->draw(field_0x568, field_0x56c, grafPort);
        drawItem();
        textScaleHIO();
        f32 alphaRate = mpTextParent[1]->getAlphaRate();
        mpMessageParent->setAlphaRate(field_0x514);
        if (mStatus == 2) {
            mpTextParent[1]->setAlphaRate(alphaRate * field_0x514);
        }
        mpScreen->draw(field_0x568, field_0x56c, grafPort);
        if (mStatus != 2 && field_0x570 > 0.0f) {
            Vec pos;
            CPaneMgr paneMgr;
            pos = paneMgr.getGlobalVtxCenter(mpScreen->search('gr_btn'), true, 0);
            dMeter2Info_getMeterClass()->getMeterDrawPtr()->drawPikari(
                pos.x, pos.y, &field_0x570, g_ringHIO.mPikariScale, g_ringHIO.mPikariFrontOuter,
                g_ringHIO.mPikariFrontInner, g_ringHIO.mPikariBackOuter, g_ringHIO.mPikariBackInner,
                g_ringHIO.mPikariAnimSpeed, 2);
        }
        mDrawFlag = 1;
    } else {
        drawSelectItem();
        drawItem2();
        mpDrawCursor->draw();
        mpItemExplain->trans(field_0x568, field_0x56c);
        mpItemExplain->draw((J2DOrthoGraph*)grafPort);
        drawFlag0();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::_draw() {
    nofralloc
#include "asm/d/menu/d_menu_ring/_draw__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801EB080-801EB0A4 1E59C0 0024+00 2/2 0/0 0/0 .text            setKanteraPos__12dMenu_Ring_cFff */
void dMenu_Ring_c::setKanteraPos(f32 i_posX, f32 i_posY) {
    mpKanteraMeter->setPos(i_posX, i_posY);
}

#ifdef NONMATCHING
#else
/* ############################################################################################## */
/* 804543C8-804543D0 0029C8 0008+00 6/6 0/0 0/0 .sdata2          @4596 */
SECTION_SDATA2 static f64 lit_4596 = 4503601774854144.0 /* cast s32 to float */;
#endif

/* 801EB0A4-801EB2B4 1E59E4 0210+00 0/0 1/1 0/0 .text            isOpen__12dMenu_Ring_cFv */
#ifdef NONMATCHING
// Matches with literals
bool dMenu_Ring_c::isOpen() {
    bool opened = 0;
    if (field_0x638 == 0) {
        dMeter2Info_set2DVibrationM();
    }
    field_0x638++;
    field_0x514 = (f32)field_0x638 / (f32)g_ringHIO.mOpenFrames;
    if (field_0x6bc == 0) {
        field_0x568 = 0.0f;
        field_0x56c = (1.0f - field_0x514) * 448.0f;
    } else if (field_0x6bc == 2) {
        field_0x568 = 0.0f;
        field_0x56c = (1.0f - field_0x514) * -448.0f;
    } else if (field_0x6bc == 3) {
        field_0x568 = (1.0f - field_0x514) * 608.0f;
        field_0x56c = 0.0f;
    } else if (field_0x6bc == 1) {
        field_0x568 = (1.0f - field_0x514) * -608.0f;
        field_0x56c = 0.0f;
    }
    if (field_0x638 >= g_ringHIO.mOpenFrames) {
        field_0x638 = g_ringHIO.mCloseFrames;
        field_0x514 = 1.0f;
        field_0x568 = 0.0f;
        field_0x56c = 0.0f;
        opened = 1;
    }
    setScale();
    mpDrawCursor->setPos(field_0x38c[0] + field_0x568, field_0x3ec[0] + field_0x56c);
    if (dComIfGs_getItem(field_0x690[0], false) != NO_ITEM) {
        mpDrawCursor->setParam(field_0x44c[0], field_0x4ac[0], 0.1f, 0.6f, 0.5f);
    } else {
        mpDrawCursor->setParam(1.0f, 1.0f, 0.1f, 0.6f, 0.5f);
    }
    return opened;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dMenu_Ring_c::isOpen() {
    nofralloc
#include "asm/d/menu/d_menu_ring/isOpen__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801EB2B4-801EB3CC 1E5BF4 0118+00 0/0 1/1 0/0 .text            isMoveEnd__12dMenu_Ring_cFv */
#ifdef NONMATCHING
// Matches with literals
bool dMenu_Ring_c::isMoveEnd() {
    bool ret = 0;
    if (mStatus == 0 && field_0x6b1 != 3 && field_0x6b1 != 2) {
        if (dMw_UP_TRIGGER() || dMw_DOWN_TRIGGER() || dMw_B_TRIGGER() ||
            dMeter2Info_getWarpStatus() == 2 || dMeter2Info_getWarpStatus() == 1 ||
            dMeter2Info_isTouchKeyCheck(0x4000) != 0)
        {
            if (dMw_UP_TRIGGER()) {
                field_0x6bc = 0;
            } else if (dMw_DOWN_TRIGGER()) {
                field_0x6bc = 2;
            } else {
                field_0x6bc = 0xff;
            }
            Z2GetAudioMgr()->seStart(Z2SE_ITEM_RING_OUT, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            dMeter2Info_set2DVibrationM();
            ret = 1;
        }
    }
    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dMenu_Ring_c::isMoveEnd() {
    nofralloc
#include "asm/d/menu/d_menu_ring/isMoveEnd__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801EB3CC-801EB624 1E5D0C 0258+00 0/0 1/1 0/0 .text            isClose__12dMenu_Ring_cFv */
#ifdef NONMATCHING
// Matches with literals
bool dMenu_Ring_c::isClose() {
    bool closed = 1;
    if (field_0x674[0] != 0 || field_0x674[1] != 0 || field_0x674[2] != 0 || field_0x674[3] != 0) {
        return 0;
    }
    field_0x638--;
    field_0x514 = (f32)field_0x638 / (f32)g_ringHIO.mCloseFrames;
    if (field_0x638 <= 0) {
        for (int i = 0; i < 4; i++) {
            setSelectItemForce(i);
        }
        field_0x638 = 0;
        field_0x514 = 0.0f;
    } else {
        closed = 0;
    }
    if (field_0x6bc == 0) {
        field_0x568 = 0.0f;
        field_0x56c = (1.0f - field_0x514) * -448.0f;
    } else if (field_0x6bc == 2) {
        field_0x568 = 0.0f;
        field_0x56c = (1.0f - field_0x514) * 448.0f;
    } else if (field_0x6bc == 3) {
        field_0x568 = (1.0f - field_0x514) * -608.0f;
        field_0x56c = 0.0f;
    } else if (field_0x6bc == 1) {
        field_0x568 = (1.0f - field_0x514) * 608.0f;
        field_0x56c = 0.0f;
    }
    mpDrawCursor->setPos(field_0x38c[field_0x6a8] + field_0x568,
                         field_0x3ec[field_0x6a8] + field_0x56c);
    if (dComIfGs_getItem(field_0x690[field_0x6a8], false) != NO_ITEM) {
        mpDrawCursor->setParam(field_0x44c[field_0x6a8], field_0x4ac[field_0x6a8], 0.1f, 0.6f,
                               0.5f);
    } else {
        mpDrawCursor->setParam(1.0f, 1.0f, 0.1f, 0.6f, 0.5f);
    }

    return closed;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool dMenu_Ring_c::isClose() {
    nofralloc
#include "asm/d/menu/d_menu_ring/isClose__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

#ifdef NONMATCHING
#else
/* ############################################################################################## */
/* 804543D0-804543D4 0029D0 0004+00 1/1 0/0 0/0 .sdata2          @4739 */
SECTION_SDATA2 static f32 lit_4739 = 0.75f;
#endif

/* 801EB624-801EB8C0 1E5F64 029C+00 1/1 0/0 0/0 .text getStickInfo__12dMenu_Ring_cFP9STControl */
// Matches with literals
#ifdef NONMATCHING
u8 dMenu_Ring_c::getStickInfo(STControl* i_stick) {
    field_0x6c2 = 0xff;
    if (i_stick->getValueStick() >= 0.75f) {
        s16 stick_angle = i_stick->getAngleStick();
        s16 abs_stick_angle = stick_angle + 0x8000;
        int something_stick = abs_stick_angle + 0x8000;

        s32 temp;
        u32 uVar3 = field_0x6ae / 2;
        u8 val2 = uVar3;
        int val = field_0x6ae;

        if ((val % 2) != 0) {
            temp = field_0x634;
        } else {
            temp = (s16)(field_0x634 / 2);
        }

        for (s32 i = 0; i < val; i++) {
            if (something_stick < temp) {
                break;
            }
            temp += field_0x634;

            if (val2 <= 0) {
                val2 = val - 1;
            } else {
                val2--;
            }
        }

        if (field_0x6a8 != val2) {
            if (mDoCPd_c::getHoldL(PAD_1)) {
                field_0x380.x = field_0x38c[field_0x6a8];
                field_0x380.z = field_0x3ec[field_0x6a8];
                field_0x6a8 = val2;
                field_0x6ce = 1;
            } else if (field_0x6a8 >= uVar3) {
                if (val2 >= (u8)(field_0x6a8 - uVar3) && val2 < field_0x6a8) {
                    if (field_0x6a8 == 0) {
                        field_0x6a8 = field_0x6ae - 1;
                    } else {
                        field_0x6a8--;
                    }
                } else if (field_0x6a8 == (u8)(field_0x6ae - 1)) {
                    field_0x6a8 = 0;
                } else {
                    field_0x6a8++;
                }
            } else {
                u8 max = field_0x6a8 + uVar3;
                if (val2 > field_0x6a8 && val2 <= max) {
                    if (field_0x6a8 == (u8)(field_0x6ae - 1)) {
                        field_0x6a8 = 0;
                    } else {
                        field_0x6a8++;
                    }
                } else if (field_0x6a8 == 0) {
                    field_0x6a8 = field_0x6ae - 1;
                } else {
                    field_0x6a8--;
                }
            }
            field_0x670 = field_0x63e[field_0x6a8];
            if (field_0x6ae == 2 && stick_angle < 0) {
                if (field_0x6a8 == 0) {
                    field_0x6d3 = 0;
                } else {
                    field_0x6d3 = 1;
                }
            }
            return 1;
        }
    } else {
        field_0x680 = 0;
        dpdMove();
        if (field_0x6c2 != 0xff) {
            return 0;
        }
    }
    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm u8 dMenu_Ring_c::getStickInfo(STControl* i_stick) {
    nofralloc
#include "asm/d/menu/d_menu_ring/getStickInfo__12dMenu_Ring_cFP9STControl.s"
}
#pragma pop
#endif

/* 801EB8C0-801EB960 1E6200 00A0+00 1/0 0/0 0/0 .text calcStickAngle__12dMenu_Ring_cFP9STControlUc
 */
#ifdef NONMATCHING
// Matches with literals (lit_4795)
s16 dMenu_Ring_c::calcStickAngle(STControl* i_stick, u8 param_1) {
    s16 directionTrig = i_stick->getAngleStick();
    switch (param_1) {
    case 0:
        directionTrig += 0x8000;
        break;
    case 1:
        directionTrig -= 0x6000;
        break;
    case 2:
        break;
    case 3:
        directionTrig -= 0x4000;
        break;
    case 4:
        directionTrig -= 0x2000;
        break;
    case 5:
        directionTrig += 0x2000;
        break;
    case 6:
        directionTrig += 0x4000;
        break;
    case 7:
        directionTrig += 0x6000;
        break;
    default:
        directionTrig += 0x4000;
    }
    return directionTrig;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s16 dMenu_Ring_c::calcStickAngle(STControl* param_0, u8 param_1) {
    nofralloc
#include "asm/d/menu/d_menu_ring/calcStickAngle__12dMenu_Ring_cFP9STControlUc.s"
}
#pragma pop
#endif

#ifdef NONMATCHING
#else
/* ############################################################################################## */
/* 804543D4-804543D8 0029D4 0004+00 2/2 0/0 0/0 .sdata2          @4810 */
SECTION_SDATA2 static f32 lit_4810 = 304.0f;

/* 804543D8-804543DC 0029D8 0004+00 2/2 0/0 0/0 .sdata2          @4811 */
SECTION_SDATA2 static f32 lit_4811 = 224.0f;
#endif

/* 801EB960-801EBA38 1E62A0 00D8+00 1/1 0/0 0/0 .text            setRotate__12dMenu_Ring_cFv */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Ring_c::setRotate() {
    clacEllipsePlotAverage(field_0x6ae, g_ringHIO.mItemRingPosX + 304.0f,
                           g_ringHIO.mItemRingPosY + 224.0f);
    for (int i = 0; i < field_0x6ae; i++) {
        field_0x63e[i] = cM_atan2s(field_0x38c[i] - (304.0f + g_ringHIO.mItemRingPosX),
                                   field_0x3ec[i] - (224.0f + g_ringHIO.mItemRingPosY));
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::setRotate() {
    nofralloc
#include "asm/d/menu/d_menu_ring/setRotate__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801EBA38-801EBAB8 1E6378 0080+00 1/1 0/0 0/0 .text            setItemScale__12dMenu_Ring_cFif */
void dMenu_Ring_c::setItemScale(int i_idx, f32 i_scale) {
    for (int i = 0; i < 3; i++) {
        if (mpItemTex[i_idx][i] != NULL) {
            mpItemTex[i_idx][i]->scale(i_scale, i_scale);
        }
    }
}

/* 801EBAB8-801EBB10 1E63F8 0058+00 2/2 0/0 0/0 .text            setButtonScale__12dMenu_Ring_cFif
 */
void dMenu_Ring_c::setButtonScale(int i_idx, f32 i_scale) {
    i_idx += 8;
    if (mpTextParent[i_idx] != NULL) {
        f32 buttonScale = i_scale * field_0x5e8[i_idx];
        mpTextParent[i_idx]->scale(buttonScale, buttonScale);
    }
}

/* 801EBB10-801EBE58 1E6450 0348+00 1/1 0/0 0/0 .text            setItem__12dMenu_Ring_cFv */
void dMenu_Ring_c::setItem() {
    u8 uVar1;
    u8 uVar2;
    u8 uVar3;
    u8 uVar4;

    if (field_0x6aa != NO_ITEM) {
        uVar1 = field_0x690[field_0x6aa];
    } else {
        uVar1 = NO_ITEM;
    }
    if (field_0x6ab != NO_ITEM) {
        uVar2 = field_0x690[field_0x6ab];
    } else {
        uVar2 = NO_ITEM;
    }
    if (field_0x6ac != NO_ITEM) {
        uVar3 = field_0x690[field_0x6ac];
    } else {
        uVar3 = NO_ITEM;
    }
    if (field_0x6ad != NO_ITEM) {
        uVar4 = field_0x690[field_0x6ad];
    } else {
        uVar4 = NO_ITEM;
    }

    u8 mixItemIndex0 = dComIfGs_getMixItemIndex(0);
    u8 mixItemIndex1 = dComIfGs_getMixItemIndex(1);

    for (int i = 0; i < 4; i++) {
        setSelectItemForce(i);
    }

    checkExplainForce();
    if (field_0x6b3 == 0) {
        uVar1 = dComIfGs_getSelectItemIndex(1);
        if (field_0x690[field_0x6a8] == uVar1) {
            uVar2 = dComIfGs_getSelectItemIndex(0);
            mixItemIndex1 = dComIfGs_getMixItemIndex(0);
            if (uVar2 == NO_ITEM) {
                field_0x6ab = NO_ITEM;
            } else {
                field_0x6ab = field_0x6aa;
            }
            field_0x6aa = field_0x6a8;
            uVar1 = field_0x690[field_0x6aa];
            mixItemIndex0 = NO_ITEM;
        } else {
            if (dComIfGs_getMixItemIndex(1) == field_0x690[field_0x6a8]) {
                uVar2 = dComIfGs_getSelectItemIndex(0);
                mixItemIndex1 = NO_ITEM;
                if (uVar2 == NO_ITEM) {
                    field_0x6ab = NO_ITEM;
                } else {
                    field_0x6ab = field_0x6aa;
                }
                field_0x6aa = field_0x6a8;
                uVar1 = field_0x690[field_0x6aa];
                mixItemIndex0 = NO_ITEM;
            } else {
                field_0x6aa = field_0x6a8;
                uVar1 = field_0x690[field_0x6aa];
                mixItemIndex0 = NO_ITEM;
            }
        }
    } else if (field_0x6b3 == 1) {
        if (field_0x690[field_0x6a8] == dComIfGs_getSelectItemIndex(0)) {
            u8 temp = dComIfGs_getSelectItemIndex(1);
            uVar1 = temp;
            mixItemIndex0 = dComIfGs_getMixItemIndex(1);
            if (temp == NO_ITEM) {
                field_0x6aa = NO_ITEM;
            } else {
                field_0x6aa = field_0x6ab;
            }
            field_0x6ab = field_0x6a8;
            uVar2 = field_0x690[field_0x6ab];
            mixItemIndex1 = NO_ITEM;
        } else {
            if (dComIfGs_getMixItemIndex(0) == field_0x690[field_0x6a8]) {
                uVar1 = dComIfGs_getSelectItemIndex(1);
                mixItemIndex0 = NO_ITEM;
                if (uVar1 == NO_ITEM) {
                    field_0x6aa = NO_ITEM;
                } else {
                    field_0x6aa = field_0x6ab;
                }
                field_0x6ab = field_0x6a8;
                uVar2 = field_0x690[field_0x6ab];
                mixItemIndex1 = NO_ITEM;
            } else {
                field_0x6ab = field_0x6a8;
                uVar2 = field_0x690[field_0x6ab];
                mixItemIndex1 = NO_ITEM;
            }
        }
    }
    field_0x6b4[0] = uVar1;
    field_0x6b4[1] = uVar2;
    field_0x6b4[2] = uVar3;
    field_0x6b4[3] = uVar4;
    field_0x6b8[0] = mixItemIndex0;
    field_0x6b8[1] = mixItemIndex1;
    field_0x6b8[2] = NO_ITEM;
    field_0x6b8[3] = NO_ITEM;
    field_0x6cd = NO_ITEM;
    setJumpItem(true);
}

/* 801EBE58-801EC20C 1E6798 03B4+00 2/2 0/0 0/0 .text            setJumpItem__12dMenu_Ring_cFb */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Ring_c::setJumpItem(bool i_useVibrationM) {
    for (int i = 0; i < 4; i++) {
        if (i == 2) {
            setSelectItem(i, field_0x6b4[i]);
        } else if (i == field_0x6cd) {
            setSelectItem(i, getItem(field_0x6cb, 0));
        } else {
            setSelectItem(i, getItem(field_0x6b4[i], field_0x6b8[i]));
        }
    }
    if (field_0x6aa != NO_ITEM) {
        field_0x518[0] = field_0x38c[field_0x6aa];
        field_0x528[0] = field_0x3ec[field_0x6aa];
    }
    if (field_0x6ab != NO_ITEM) {
        field_0x518[1] = field_0x38c[field_0x6ab];
        field_0x528[1] = field_0x3ec[field_0x6ab];
    }
    if (field_0x6ac != NO_ITEM) {
        field_0x518[2] = field_0x38c[field_0x6ac];
        field_0x528[2] = field_0x3ec[field_0x6ac];
    }
    if (field_0x6ad != NO_ITEM) {
        field_0x518[3] = field_0x38c[field_0x6ad];
        field_0x528[3] = field_0x3ec[field_0x6ad];
    }
    if (field_0x6b3 == 0) {
        field_0x538[0] = g_ringHIO.mSelectItemScale;
        field_0x538[1] = g_ringHIO.mUnselectItemScale;
        if (field_0x6b4[0] != dComIfGs_getSelectItemIndex(0) ||
            field_0x6b8[0] != dComIfGs_getMixItemIndex(0))
        {
            field_0x674[0] = 1;
        }
    } else if (field_0x6b3 == 1) {
        field_0x538[0] = g_ringHIO.mUnselectItemScale;
        field_0x538[1] = g_ringHIO.mSelectItemScale;
        if (field_0x6b4[1] != dComIfGs_getSelectItemIndex(1) ||
            field_0x6b8[1] != dComIfGs_getMixItemIndex(1))
        {
            field_0x674[1] = 1;
        }
    }
    if (field_0x674[0] == 1) {
        if (i_useVibrationM) {
            dMeter2Info_set2DVibrationM();
        }
        Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_SET_X, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    } else if (field_0x674[1] == 1) {
        if (i_useVibrationM) {
            dMeter2Info_set2DVibrationM();
        }
        Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_SET_X, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    } else if (field_0x674[2] == 1) {
        if (i_useVibrationM) {
            dMeter2Info_set2DVibrationM();
        }
        Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_SET_X, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    } else if (field_0x674[3] == 1) {
        if (i_useVibrationM) {
            dMeter2Info_set2DVibrationM();
        }
        Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_SET_B, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    } else {
        Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::setJumpItem(bool param_0) {
    nofralloc
#include "asm/d/menu/d_menu_ring/setJumpItem__12dMenu_Ring_cFb.s"
}
#pragma pop
#endif

/* 801EC20C-801EC3B0 1E6B4C 01A4+00 2/2 0/0 0/0 .text            setScale__12dMenu_Ring_cFv */
void dMenu_Ring_c::setScale() {
    u32 itemId;
    for (int i = 0; i < field_0x6ae; i++) {
        if (field_0x6cf != 0xff) {
            itemId = 0;
            switch (field_0x6cf) {
            case 0:
                itemId = 0x4DE;
                break;
            case 1:
                itemId = 0x4E0;
                break;
            }
            setNameString(itemId);
            setItemScale(i, g_ringHIO.mUnselectItemScale);
            for (int j = 0; j < 2; j++) {
                if (j == field_0x6cf) {
                    setButtonScale(j, g_ringHIO.mSelectButtonScale);
                } else {
                    setButtonScale(j, g_ringHIO.mUnselectButtonScale);
                }
            }
        } else {
            if (i == field_0x6a8 && (mStatus == 0 || mStatus == 2 || mStatus == 3)) {
                itemId = dComIfGs_getItem(field_0x690[i], false) + 0x165;
                if (dMeter2Info_getRentalBombBag() != 0xff &&
                    field_0x690[i] == dMeter2Info_getRentalBombBag() + 0xf)
                {
                    itemId = 0x16D;
                }
                setNameString(itemId);
                setItemScale(i, g_ringHIO.mSelectItemScale);
            } else {
                setItemScale(i, g_ringHIO.mUnselectItemScale);
            }
            for (int j = 0; j < 2; j++) {
                setButtonScale(j, g_ringHIO.mUnselectButtonScale);
            }
        }
    }
}

/* 801EC3B0-801EC504 1E6CF0 0154+00 1/1 0/0 0/0 .text            setNameString__12dMenu_Ring_cFUl */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Ring_c::setNameString(u32 i_stringID) {
    J2DTextBox* textBox[4];
    textBox[0] = (J2DTextBox*)mpCenterScreen->search('fitem_n1');
    textBox[1] = (J2DTextBox*)mpCenterScreen->search('fitem_n2');
    textBox[2] = (J2DTextBox*)mpCenterScreen->search('fitem_n3');
    textBox[3] = (J2DTextBox*)mpCenterScreen->search('fitem_n4');
    if (mNameStringID != i_stringID) {
        for (int i = 0; i < 4; i++) {
            if (i_stringID == 0) {
                strcpy(textBox[i]->getStringPtr(), "");
            } else {
                mpString->getString(i_stringID, textBox[i], NULL, NULL, NULL, 0);
            }
        }
        mNameStringID = i_stringID;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::setNameString(u32 param_0) {
    nofralloc
#include "asm/d/menu/d_menu_ring/setNameString__12dMenu_Ring_cFUl.s"
}
#pragma pop
#endif

/* 801EC504-801EC754 1E6E44 0250+00 1/1 0/0 0/0 .text            setActiveCursor__12dMenu_Ring_cFv
 */
#ifdef NONMATCHING
// Matches with sinit and literals
void dMenu_Ring_c::setActiveCursor() {
    u8 item = dComIfGs_getItem(field_0x690[field_0x6a8], false);
    if (mStatus == 0 && field_0x6b1 != 3 && field_0x6b1 != 2 && mpItemExplain->getStatus() == 0) {
        if (mDoCPd_c::getTrigR(PAD_1) && mPlayerIsWolf == 0 && item != NO_ITEM) {
            for (int i = 0; i < MAX_SELECT_ITEM; i++) {
                setSelectItemForce(i);
            }
            setMixItem();
        } else if (mDoCPd_c::getTrigX(PAD_1) && mPlayerIsWolf == 0 && item != NO_ITEM) {
            for (int i = 0; i < MAX_SELECT_ITEM; i++) {
                setSelectItemForce(i);
            }
            field_0x6b3 = 0;
            if (!checkCombineBomb(field_0x6b3)) {
                setItem();
                if (mpItemExplain->getStatus() == 0) {
                    setStatus(0);
                    (this->*stick_init[mStatus])();
                }
            }
        } else if (mDoCPd_c::getTrigY(PAD_1) && mPlayerIsWolf == 0 && item != NO_ITEM) {
            for (int i = 0; i < MAX_SELECT_ITEM; i++) {
                setSelectItemForce(i);
            }
            field_0x6b3 = 1;
            if (!checkCombineBomb(field_0x6b3)) {
                setItem();
                if (mpItemExplain->getStatus() == 0) {
                    setStatus(0);
                    (this->*stick_init[mStatus])();
                }
            }
        } else if (mDoCPd_c::getTrigX(PAD_1) || mDoCPd_c::getTrigY(PAD_1)) {
            Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::setActiveCursor() {
    nofralloc
#include "asm/d/menu/d_menu_ring/setActiveCursor__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

#ifdef NONMATCHING
#else
/* ############################################################################################## */
/* 804543DC-804543E0 0029DC 0004+00 1/1 0/0 0/0 .sdata2          @5171 */
SECTION_SDATA2 static u32 lit_5171 = 0xFFFFFFFF;
#endif

/* 801EC754-801ECB14 1E7094 03C0+00 1/1 0/0 0/0 .text            setMixItem__12dMenu_Ring_cFv */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Ring_c::setMixItem() {
    u8 item = dComIfGs_getItem(field_0x690[field_0x6a8], false);
    bool bVar1 = false;
    u8 selectItemIndex0 = dComIfGs_getSelectItemIndex(0);
    u8 selectItemIndex1 = dComIfGs_getSelectItemIndex(1);
    u8 local_28[4] = {NO_ITEM, NO_ITEM, NO_ITEM, NO_ITEM};

    if (dComIfGs_getMixItemIndex(0) == 4 &&
        field_0x690[field_0x6a8] == dComIfGs_getSelectItemIndex(0))
    {
        Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_COMBINE_OFF, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        field_0x6cb = selectItemIndex0;
        selectItemIndex0 = 4;
        local_28[0] = getCursorPos(4);
        field_0x6b8[0] = 0xff;
        field_0x6b3 = 0;
        field_0x6cd = 0;
        bVar1 = true;
    } else if (dComIfGs_getMixItemIndex(1) == 4 &&
               field_0x690[field_0x6a8] == dComIfGs_getSelectItemIndex(1))
    {
        Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_COMBINE_OFF, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        field_0x6cb = selectItemIndex1;
        selectItemIndex1 = 4;
        local_28[1] = getCursorPos(4);
        field_0x6b8[1] = 0xff;
        field_0x6b3 = 1;
        field_0x6cd = 1;
        bVar1 = true;
    } else {
        switch (item) {
        case NORMAL_BOMB:
        case WATER_BOMB:
        case POKE_BOMB:
        case HAWK_EYE:
            if ((dComIfGs_getSelectItemIndex(0) == 4 && dComIfGs_getMixItemIndex(0) == NO_ITEM) ||
                (dComIfGs_getMixItemIndex(0) == 4))
            {
                Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_COMBINE_ON, NULL, 0, 0, 1.0f, 1.0f, -1.0f,
                                         -1.0f, 0);
                selectItemIndex0 = field_0x690[field_0x6a8];
                field_0x6b8[0] = 4;
                field_0x6b3 = 0;
                field_0x6aa = field_0x6a8;
                field_0x6cd = 0xff;
                bVar1 = true;
                if (selectItemIndex1 == field_0x690[field_0x6a8]) {
                    selectItemIndex1 = 0xff;
                    field_0x6ab = 0xff;
                }
            } else if ((dComIfGs_getSelectItemIndex(1) == 4 &&
                        dComIfGs_getMixItemIndex(1) == NO_ITEM) ||
                       (dComIfGs_getMixItemIndex(1) == 4))
            {
                Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_COMBINE_ON, NULL, 0, 0, 1.0f, 1.0f, -1.0f,
                                         -1.0f, 0);
                selectItemIndex1 = field_0x690[field_0x6a8];
                field_0x6b8[1] = 4;
                field_0x6b3 = 1;
                field_0x6ab = field_0x6a8;
                field_0x6cd = 0xff;
                bVar1 = true;
                if (selectItemIndex0 == field_0x690[field_0x6a8]) {
                    selectItemIndex0 = 0xff;
                    field_0x6aa = 0xff;
                }
            }
            break;
        }
    }
    if (bVar1) {
        field_0x6b4[0] = selectItemIndex0;
        field_0x6b4[1] = selectItemIndex1;
        setJumpItem(false);
        if (local_28[0] != NO_ITEM) {
            field_0x6aa = local_28[0];
        }
        if (local_28[1] != NO_ITEM) {
            field_0x6ab = local_28[1];
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::setMixItem() {
    nofralloc
#include "asm/d/menu/d_menu_ring/setMixItem__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

#ifdef NONMATCHING
#else
/* ############################################################################################## */
/* 804543E0-804543E4 0029E0 0004+00 2/2 0/0 0/0 .sdata2          @5366 */
SECTION_SDATA2 static f32 lit_5366 = 24.0f;

/* 804543E4-804543E8 0029E4 0004+00 3/3 0/0 0/0 .sdata2          @5367 */
SECTION_SDATA2 static f32 lit_5367 = 255.0f;

/* 804543E8-804543EC 0029E8 0004+00 2/2 0/0 0/0 .sdata2          @5368 */
SECTION_SDATA2 static f32 lit_5368 = 15.0f;

/* 804543EC-804543F0 0029EC 0004+00 3/3 0/0 0/0 .sdata2          @5369 */
SECTION_SDATA2 static f32 lit_5369 = 10.0f;

/* 804543F0-804543F4 0029F0 0004+00 2/2 0/0 0/0 .sdata2          @5370 */
SECTION_SDATA2 static f32 lit_5370 = 16.0f / 25.0f;
#endif

/* 801ECB14-801ECF9C 1E7454 0488+00 1/1 0/0 0/0 .text            drawItem__12dMenu_Ring_cFv */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Ring_c::drawItem() {
    field_0x684++;
    if (field_0x684 >= g_ringHIO.mItemAlphaFlashDuration) {
        field_0x684 = 0;
    }
    s32 halfFlashDuration = g_ringHIO.mItemAlphaFlashDuration / 2;
    f32 fVar16;
    if (field_0x684 < halfFlashDuration) {
        fVar16 = field_0x684 / (f32)halfFlashDuration;
    } else {
        fVar16 = (g_ringHIO.mItemAlphaFlashDuration - field_0x684) / (f32)halfFlashDuration;
    }
    f32 ringAlpha =
        (g_ringHIO.mItemAlphaMin + fVar16 * (g_ringHIO.mItemAlphaMax - g_ringHIO.mItemAlphaMin));
    for (int i = 0; i < field_0x6ae; i++) {
        if (i != field_0x6a8 || (mStatus != 0 && mStatus != 2 && mStatus != 3)) {
            J2DDrawFrame(field_0x38c[i] - 24.0f + field_0x568, field_0x3ec[i] - 24.0f + field_0x56c,
                         48.0f, 48.0f, g_ringHIO.mItemFrame[g_ringHIO.UNSELECT_FRAME], 6);
            f32 fVar17 = 1.0f;
            if (i != field_0x6a8) {
                fVar17 = ringAlpha / 255.0f;
            }
            for (int j = 0; j < 3; j++) {
                if (mpItemTex[i][j] != NULL) {
                    if (mPlayerIsWolf) {
                        mpItemTex[i][j]->setAlpha(g_ringHIO.mItemIconAlpha_Wolf * field_0x514);
                    } else {
                        mpItemTex[i][j]->setAlpha(g_ringHIO.mItemIconAlpha * field_0x514 * fVar17);
                    }
                    f32 f0 = field_0x44c[i] * 48.0f;
                    f32 f1 = field_0x4ac[i] * 48.0f;
                    f32 x = (48.0f - f0) * 0.5f + (field_0x38c[i] - 24.0f + field_0x568);
                    f32 y = (48.0f - f1) * 0.5f + (field_0x3ec[i] - 24.0f + field_0x56c);
                    mpItemTex[i][j]->draw(x, y, f0, f1, 0, 0, 0);
                    u8 item = dComIfGs_getItem(field_0x690[i], false);
                    if ((j == 0 && item != BEE_CHILD) || (j == 2 && item == BEE_CHILD)) {
                        u8 itemNum = getItemNum(field_0x690[i]);
                        u8 itemMaxNum = getItemMaxNum(field_0x690[i]);
                        if (itemMaxNum != 0) {
                            drawNumber(itemNum, itemMaxNum, x + 24.0f, y + 48.0f);
                        }
                    }
                    if (j == 0 && item == KANTERA) {
                        setKanteraPos(x + 24.0f + 15.0f, y + 48.0f + 10.0f);
                        mpKanteraMeter->setScale(0.64f, 0.64f);
                        mpKanteraMeter->setNowGauge(dComIfGs_getMaxOil(), dComIfGs_getOil());
                        u8 alpha = mpItemTex[i][j]->getAlpha();
                        mpKanteraMeter->setAlphaRate(alpha / 255.0f);
                        mpKanteraMeter->drawSelf();
                    }
                }
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::drawItem() {
    nofralloc
#include "asm/d/menu/d_menu_ring/drawItem__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801ECF9C-801ED2BC 1E78DC 0320+00 1/1 0/0 0/0 .text            drawItem2__12dMenu_Ring_cFv */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Ring_c::drawItem2() {
    s32 idx = field_0x6a8;
    if (mStatus == 0 || mStatus == 2 || mStatus == 3) {
        J2DDrawFrame(field_0x38c[idx] - 24.0f + field_0x568, field_0x3ec[idx] - 24.0f + field_0x56c,
                     48.0f, 48.0f, g_ringHIO.mItemFrame[g_ringHIO.SELECT_FRAME], 6);

        for (int i = 0; i < 3; i++) {
            if (mpItemTex[idx][i] != NULL) {
                if (mPlayerIsWolf != 0) {
                    mpItemTex[idx][i]->setAlpha(g_ringHIO.mItemIconAlpha_Wolf * field_0x514);
                } else {
                    mpItemTex[idx][i]->setAlpha(field_0x514 * 255.0f);
                }

                f32 f0 = field_0x44c[idx] * 48.0f;
                f32 f1 = field_0x4ac[idx] * 48.0f;
                f32 x = (48.0f - f0) * 0.5f + (field_0x38c[idx] - 24.0f + field_0x568);
                f32 y = (48.0f - f1) * 0.5f + (field_0x3ec[idx] - 24.0f + field_0x56c);
                mpItemTex[idx][i]->draw(x, y, f0, f1, 0, 0, 0);
                u8 item = dComIfGs_getItem(field_0x690[idx], false);
                if ((i == 0 && item != BEE_CHILD) || (i == 2 && item == BEE_CHILD)) {
                    u8 itemNum = getItemNum(field_0x690[idx]);
                    u8 itemMaxNum = getItemMaxNum(field_0x690[idx]);
                    if (itemMaxNum != 0) {
                        drawNumber(itemNum, itemMaxNum, x + 24.0f, y + 48.0f);
                    }
                }
                if (i == 0 && item == KANTERA) {
                    setKanteraPos(x + 24.0f + 15.0f, y + 48.0f + 10.0f);
                    mpKanteraMeter->setScale(0.64f, 0.64f);
                    mpKanteraMeter->setNowGauge(dComIfGs_getMaxOil(), dComIfGs_getOil());
                    u8 alpha = mpItemTex[idx][i]->getAlpha();
                    mpKanteraMeter->setAlphaRate(alpha / 255.0f);
                    mpKanteraMeter->drawSelf();
                }
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::drawItem2() {
    nofralloc
#include "asm/d/menu/d_menu_ring/drawItem2__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801ED2BC-801ED31C 1E7BFC 0060+00 1/0 0/0 0/0 .text            stick_wait_init__12dMenu_Ring_cFv
 */
void dMenu_Ring_c::stick_wait_init() {
    if (mDoCPd_c::getHoldL(PAD_1) != 0) {
        if (field_0x6ce != 0) {
            field_0x672 = g_ringHIO.mDirectSelectWaitFrames;
        } else {
            field_0x672 = 0;
        }
    } else {
        field_0x672 = g_ringHIO.mCursorChangeWaitFrames;
    }
    field_0x63a = 0;
    field_0x6ce = 0;
}

/* 801ED31C-801ED490 1E7C5C 0174+00 1/0 0/0 0/0 .text            stick_wait_proc__12dMenu_Ring_cFv
 */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Ring_c::stick_wait_proc() {
    u8 item = dComIfGs_getItem(field_0x690[field_0x6a8], false);

    if (item != NO_ITEM) {
        setDoStatus(0x24);
    } else {
        setDoStatus(0);
    }
    if (dMw_A_TRIGGER() && !dMeter2Info_isTouchKeyCheck(0x4000) && openExplain(item)) {
        dMeter2Info_setItemExplainWindowStatus(1);
        field_0x6c4 = field_0x6a8;
        setStatus(2);
        dMeter2Info_set2DVibration();
        setDoStatus(0);
        return;
    }
    if (dMw_A_TRIGGER() && !dMeter2Info_isTouchKeyCheck(0x4000)) {
        Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    }
    if (field_0x672 > 0) {
        field_0x672--;
    } else if (getStickInfo(mpStick) != 0) {
        setStatus(1);
        field_0x6b2 = 0;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::stick_wait_proc() {
    nofralloc
#include "asm/d/menu/d_menu_ring/stick_wait_proc__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801ED490-801ED53C 1E7DD0 00AC+00 1/0 0/0 0/0 .text            stick_move_init__12dMenu_Ring_cFv
 */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Ring_c::stick_move_init() {
    if (field_0x680 == 0) {
        field_0x680 = g_ringHIO.mCursorInitSpeed;
    } else if (field_0x680 < g_ringHIO.mCursorMax) {
        field_0x680 += g_ringHIO.mCursorAccel;
        if (field_0x680 > g_ringHIO.mCursorMax) {
            field_0x680 = g_ringHIO.mCursorMax;
        }
    }
    field_0x63a = 0;
    Z2GetAudioMgr()->seStart(Z2SE_ITEM_RING_ROLL, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::stick_move_init() {
    nofralloc
#include "asm/d/menu/d_menu_ring/stick_move_init__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

#ifdef NONMATCHING
#else
/* ############################################################################################## */
/* 804543F4-804543F8 0029F4 0004+00 1/1 0/0 0/0 .sdata2          @5648 */
SECTION_SDATA2 static f32 lit_5648 = 70.0f;

/* 804543F8-80454400 0029F8 0008+00 1/1 0/0 0/0 .sdata2          @5649 */
SECTION_SDATA2 static f64 lit_5649 = 0.5;

/* 80454400-80454408 002A00 0008+00 1/1 0/0 0/0 .sdata2          @5650 */
SECTION_SDATA2 static f64 lit_5650 = 3.0;

/* 80454408-80454410 002A08 0008+00 1/1 0/0 0/0 .sdata2          @5651 */
SECTION_SDATA2 static u8 lit_5651[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#endif

/* 801ED53C-801ED934 1E7E7C 03F8+00 1/0 0/0 0/0 .text            stick_move_proc__12dMenu_Ring_cFv
 */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Ring_c::stick_move_proc() {
    setDoStatus(0x24);
    if (field_0x6ce != 0) {
        cXyz target;
        target.set(field_0x38c[field_0x6a8], 0.0f, field_0x3ec[field_0x6a8]);
        cLib_addCalcPosXZ(&field_0x380, target, 1.0f, 70.0f, 1.0f);
        cXyz sub = field_0x380 - target;
        if (sub.abs() < 0.5f) {
            field_0x380.set(target);
            field_0x66e = field_0x670;
            mpDrawCursor->setPos(field_0x38c[field_0x6a8], field_0x3ec[field_0x6a8]);
            u8 item = dComIfGs_getItem(field_0x690[field_0x6a8], false);
            if (item != NO_ITEM) {
                mpDrawCursor->setParam(field_0x44c[field_0x6a8], field_0x4ac[field_0x6a8], 0.1f,
                                       0.6f, 0.5f);
            } else {
                mpDrawCursor->setParam(1.0f, 1.0f, 0.1f, 0.6f, 0.5f);
            }
            setStatus(field_0x6b2);
        } else {
            mpDrawCursor->setParam(1.0f, 1.0f, 0.1f, 0.6f, 0.5f);
            mpDrawCursor->setPos(field_0x380.x, field_0x380.z);
        }
    } else {
        if (field_0x6d3 == 0xff) {
            cLib_addCalcAngleS(&field_0x66e, field_0x670, 4, 0x7FFF, field_0x680);
        } else {
            if (field_0x6d3 == 0) {
                field_0x66e = -0x2007;
            } else {
                field_0x66e = -0x6003;
            }
            field_0x6d3 = 0xff;
        }
        s16 subtract = field_0x670 - field_0x66e;
        if (abs(subtract) < 0x80) {
            field_0x66e = field_0x670;
            mpDrawCursor->setPos(field_0x38c[field_0x6a8], field_0x3ec[field_0x6a8]);
            u8 item = dComIfGs_getItem(field_0x690[field_0x6a8], false);
            if (item != NO_ITEM) {
                mpDrawCursor->setParam(field_0x44c[field_0x6a8], field_0x4ac[field_0x6a8], 0.1f,
                                       0.6f, 0.5f);
            } else {
                mpDrawCursor->setParam(1.0f, 1.0f, 0.1f, 0.6f, 0.5f);
            }
            setStatus(field_0x6b2);
        } else {
            f32 itemRingPosX =
                g_ringHIO.mItemRingPosX + 304.0f + field_0x50c * cM_ssin(field_0x66e);
            f32 itemRingPosY =
                g_ringHIO.mItemRingPosY + 224.0f + field_0x510 * cM_scos(field_0x66e);
            mpDrawCursor->setPos(itemRingPosX, itemRingPosY);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::stick_move_proc() {
    nofralloc
#include "asm/d/menu/d_menu_ring/stick_move_proc__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801ED934-801ED938 1E8274 0004+00 1/0 0/0 0/0 .text stick_explain_init__12dMenu_Ring_cFv */
void dMenu_Ring_c::stick_explain_init() {
    /* empty function */
}

/* 801ED938-801ED93C 1E8278 0004+00 1/0 0/0 0/0 .text stick_explain_force_init__12dMenu_Ring_cFv
 */
void dMenu_Ring_c::stick_explain_force_init() {
    /* empty function */
}

#ifdef NONMATCHING
#else
/* ############################################################################################## */
/* 80454410-80454414 002A10 0004+00 2/2 0/0 0/0 .sdata2          @5683 */
SECTION_SDATA2 static f32 lit_5683 = 150.0f;
#endif

/* 801ED93C-801EDA0C 1E827C 00D0+00 1/0 0/0 0/0 .text stick_explain_proc__12dMenu_Ring_cFv */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Ring_c::stick_explain_proc() {
    mpItemExplain->move();
    if (mpItemExplain->getStatus() == 0) {
        if (dMeter2Info_getWarpStatus() == 1) {
            dMeter2Info_warpInProc();
        } else if (dMeter2Info_getWarpStatus() == 2) {
            dMeter2Info_warpInProc();
        }
        dMeter2Info_setItemExplainWindowStatus(0);
        setStatus(0);
    }
    f32 alphaRatio = mpItemExplain->getAlphaRatio();
    mpTextParent[1]->setAlphaRate(alphaRatio);
    mpBlackTex->setAlpha((1.0f - alphaRatio) * 150.0f);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::stick_explain_proc() {
    nofralloc
#include "asm/d/menu/d_menu_ring/stick_explain_proc__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801EDA0C-801EDB14 1E834C 0108+00 1/0 0/0 0/0 .text stick_explain_force_proc__12dMenu_Ring_cFv
 */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Ring_c::stick_explain_force_proc() {
    mpItemExplain->move();
    u8 endButton = mpItemExplain->checkEndButton();
    if (endButton == 1) {
        setCombineBomb(field_0x6b3);
    } else if (endButton == 2) {
        u8 itemMaxNum = getItemMaxNum(field_0x690[field_0x6a8]);
        u8 itemNum = getItemNum(field_0x690[field_0x6a8]);
        mpItemExplain->openExplain(field_0x690[field_0x6a8], itemNum, itemMaxNum, true);
        setStatus(0);
    }
    f32 alphaRatio = mpItemExplain->getAlphaRatio();
    mpTextParent[1]->setAlphaRate(alphaRatio);
    mpBlackTex->setAlpha((1.0f - alphaRatio) * 150.0f);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::stick_explain_force_proc() {
    nofralloc
#include "asm/d/menu/d_menu_ring/stick_explain_force_proc__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801EDB14-801EDC98 1E8454 0184+00 2/2 0/0 0/0 .text            setSelectItem__12dMenu_Ring_cFiUc
 */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Ring_c::setSelectItem(int i_idx, u8 i_itemNo) {
    f32 texScale = 1.0f;

    if (i_itemNo != NO_ITEM) {
        if (field_0x6be[i_idx] == 0) {
            field_0x6be[i_idx] = 1;
        } else {
            field_0x6be[i_idx] = 0;
        }
        field_0x686[i_idx] = dMeter2Info_readItemTexture(
            i_itemNo, mpSelectItemTexBuf[i_idx][field_0x6be[i_idx]][0], mpSelectItemTex[i_idx][0],
            mpSelectItemTexBuf[i_idx][field_0x6be[i_idx]][1], mpSelectItemTex[i_idx][1],
            mpSelectItemTexBuf[i_idx][field_0x6be[i_idx]][2], mpSelectItemTex[i_idx][2], NULL, NULL,
            -1);
        texScale = dItem_data::getTexScale(i_itemNo) / 100.0f;
    }
    field_0x548[i_idx] = mpSelectItemTexBuf[i_idx][field_0x6be[i_idx]][0]->width / 48.0f * texScale;
    field_0x558[i_idx] =
        mpSelectItemTexBuf[i_idx][field_0x6be[i_idx]][0]->height / 48.0f * texScale;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::setSelectItem(int param_0, u8 param_1) {
    nofralloc
#include "asm/d/menu/d_menu_ring/setSelectItem__12dMenu_Ring_cFiUc.s"
}
#pragma pop
#endif

#ifdef NONMATCHING
#else
/* #e#############################################################################################
 */
/* 80454414-80454418 002A14 0004+00 1/1 0/0 0/0 .sdata2          @5811 */
SECTION_SDATA2 static f32 lit_5811 = 17.0f / 10.0f;
#endif

/* 801EDC98-801EDF2C 1E85D8 0294+00 1/1 0/0 0/0 .text            drawSelectItem__12dMenu_Ring_cFv */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Ring_c::drawSelectItem() {
    for (int i = 0; i < 4; i++) {
        if (field_0x674[i] != 0) {
            if (field_0x674[i] < 10) {
                f32 initSizeX = dMeter2Info_getMeterItemPanePtr(i)->getInitSizeX() * 1.7f;
                f32 initSizeY = dMeter2Info_getMeterItemPanePtr(i)->getInitSizeY() * 1.7f;
                f32 initScaleX = dMeter2Info_getMeterItemPanePtr(i)->getInitScaleX();
                f32 initScaleY = dMeter2Info_getMeterItemPanePtr(i)->getInitScaleY();
                Vec pos = dMeter2Info_getMeterItemPanePtr(i)->getGlobalVtxCenter(
                    dMeter2Info_getMeterItemPanePtr(i)->mPane, true, 0);

                f32 fVar14 = field_0x674[i] / 10.0f;
                if (field_0x6cd != 0xff) {
                    fVar14 = 1.0f - fVar14;
                }
                initSizeX = (initSizeX - 48.0f) * fVar14 + 48.0f;
                initSizeY = (initSizeY - 48.0f) * fVar14 + 48.0f;
                f32 fVar3 = field_0x538[i] + fVar14 * (initScaleX - field_0x538[i]);
                f32 fVar4 = field_0x538[i] + fVar14 * (initScaleY - field_0x538[i]);
                f32 fVar5 = field_0x518[i] + fVar14 * (pos.x - field_0x518[i]);
                f32 fVar6 = field_0x528[i] + fVar14 * (pos.y - field_0x528[i]);

                for (int j = 0; j < field_0x686[i]; j++) {
                    if (mpSelectItemTex[i][j] != NULL) {
                        mpSelectItemTex[i][j]->setAlpha(field_0x514 * 255.0f);
                        f32 f3 = field_0x548[i] * initSizeX * fVar3;
                        f32 f4 = field_0x558[i] * initSizeY * fVar4;
                        mpSelectItemTex[i][j]->draw(fVar5 + (initSizeX - f3) * 0.5f,
                                                    fVar6 + (initSizeY - f4) * 0.5f, f3, f4, 0, 0,
                                                    0);
                    }
                }
                field_0x674[i]++;
            } else {
                setSelectItemForce(i);
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::drawSelectItem() {
    nofralloc
#include "asm/d/menu/d_menu_ring/drawSelectItem__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801EDF2C-801EDFDC 1E886C 00B0+00 4/4 0/0 0/0 .text setSelectItemForce__12dMenu_Ring_cFi */
void dMenu_Ring_c::setSelectItemForce(int i_idx) {
    if (i_idx == 2) {
        if (field_0x674[i_idx] != 0) {
            dComIfGs_setSelectItemIndex(i_idx, field_0x6b4[i_idx]);
            field_0x674[i_idx] = 0;
        }
    } else if (field_0x674[i_idx] != 0) {
        for (int i = 0; i < 2; i++) {
            dComIfGs_setMixItemIndex(i, field_0x6b8[i]);
            dComIfGs_setSelectItemIndex(i, field_0x6b4[i]);
        }
        field_0x674[i_idx] = 0;
    }
}

/* 801EDFDC-801EE058 1E891C 007C+00 1/1 0/0 0/0 .text            getCursorPos__12dMenu_Ring_cFUc */
s32 dMenu_Ring_c::getCursorPos(u8 param_0) {
    for (s32 i = 0; i < field_0x6ae; i++) {
        if (param_0 == dComIfGs_getLineUpItem(i)) {
            return i & 0xff;
        }
    }
    return 0xff;
}

/* 801EE058-801EE15C 1E8998 0104+00 4/4 0/0 0/0 .text            getItemNum__12dMenu_Ring_cFUc */
u8 dMenu_Ring_c::getItemNum(u8 i_slotNo) {
    u8 item = dComIfGs_getItem(i_slotNo, false);
    u8 ret = 0;

    switch (item) {
    case BOMB_BAG_LV1:
        ret = 0;
        break;
    case NORMAL_BOMB:
    case WATER_BOMB:
    case POKE_BOMB:
        ret = dComIfGs_getBombNum(i_slotNo - 0xF);
        break;

    case BEE_CHILD:
        ret = dComIfGs_getBottleNum(i_slotNo - 0xB);
        break;
    case BOW:
    case LIGHT_ARROW:
    case ARROW_LV1:
    case ARROW_LV2:
    case ARROW_LV3:
        ret = dComIfGs_getArrowNum();
        break;
    case PACHINKO:
        ret = dComIfGs_getPachinkoNum();
        break;
    }
    return ret;
}

/* 801EE15C-801EE228 1E8A9C 00CC+00 4/4 0/0 0/0 .text            getItemMaxNum__12dMenu_Ring_cFUc */
u8 dMenu_Ring_c::getItemMaxNum(u8 i_slotNo) {
    u8 item = dComIfGs_getItem(i_slotNo, false);
    u8 ret = 0;

    switch (item) {
    case BOMB_BAG_LV1:
        ret = 1;
        break;
    case NORMAL_BOMB:
    case WATER_BOMB:
    case POKE_BOMB:
        ret = dComIfGs_getBombMax(item);
        break;

    case BEE_CHILD:
        ret = dComIfGs_getBottleMax();
        break;
    case BOW:
    case LIGHT_ARROW:
    case ARROW_LV1:
    case ARROW_LV2:
    case ARROW_LV3:
        ret = dComIfGs_getArrowMax();
        break;
    case PACHINKO:
        ret = dComIfGs_getPachinkoMax();
        break;
    }
    return ret;
}

/* 801EE228-801EE63C 1E8B68 0414+00 1/1 0/0 0/0 .text            checkExplainForce__12dMenu_Ring_cFv
 */
bool dMenu_Ring_c::checkExplainForce() {
    u8 local_18[4];

    u8 item0 = dComIfGs_getItem(dComIfGs_getSelectItemIndex(0), false);
    u8 item1 = dComIfGs_getItem(dComIfGs_getSelectItemIndex(1), false);
    u8 item2 = dComIfGs_getItem(dComIfGs_getSelectItemIndex(2), false);
    u8 item3 = dComIfGs_getItem(dComIfGs_getSelectItemIndex(3), false);
    u8 item = dComIfGs_getItem(field_0x690[field_0x6a8], true);

    for (int i = 0; i < 4; i++) {
        local_18[i] = NO_ITEM;
    }

    switch (item) {
    case BOW:
        switch (item0) {
        case NORMAL_BOMB:
        case WATER_BOMB:
        case POKE_BOMB:
            local_18[0] = BOMB_ARROW;
            break;
        case HAWK_EYE:
            local_18[0] = HAWK_ARROW;
            break;
        }
        switch (item1) {
        case NORMAL_BOMB:
        case WATER_BOMB:
        case POKE_BOMB:
            local_18[1] = BOMB_ARROW;
            break;
        case HAWK_EYE:
            local_18[1] = HAWK_ARROW;
            break;
        }
        break;
    case NORMAL_BOMB:
    case WATER_BOMB:
    case POKE_BOMB:
        if (item0 == BOW) {
            local_18[0] = BOMB_ARROW;
        } else if (item1 == BOW) {
            local_18[1] = BOMB_ARROW;
        }
        break;
    case HAWK_EYE:
        if (item0 == BOW) {
            local_18[0] = HAWK_ARROW;
        } else if (item1 == BOW) {
            local_18[1] = HAWK_ARROW;
        }
        break;
    case BEE_CHILD:
        if (item0 == FISHING_ROD_1) {
            local_18[0] = BEE_ROD;
        } else if (item1 == FISHING_ROD_1) {
            local_18[1] = BEE_ROD;
        }
        break;
    case WORM:
        if (item0 == FISHING_ROD_1) {
            local_18[0] = WORM_ROD;
        } else if (item1 == FISHING_ROD_1) {
            local_18[1] = WORM_ROD;
        }
        break;
    case ZORAS_JEWEL:
        if (item0 == FISHING_ROD_1) {
            local_18[0] = JEWEL_ROD;
        } else if (item1 == FISHING_ROD_1) {
            local_18[1] = JEWEL_ROD;
        }
        break;
    case FISHING_ROD_1:
        if (item0 == BEE_CHILD) {
            local_18[0] = BEE_ROD;
        } else if (item1 == BEE_CHILD) {
            local_18[1] = BEE_ROD;
        } else if (item0 == ZORAS_JEWEL) {
            local_18[0] = JEWEL_ROD;
        } else if (item1 == ZORAS_JEWEL) {
            local_18[1] = JEWEL_ROD;
        } else if (item0 == WORM) {
            local_18[0] = WORM_ROD;
        } else if (item1 == WORM) {
            local_18[1] = WORM_ROD;
        }
        break;
    }

    if (local_18[0] != NO_ITEM && local_18[1] == NO_ITEM && local_18[2] == NO_ITEM && local_18[3] == NO_ITEM &&
        dComIfGs_getMixItemIndex(0) == NO_ITEM)
    {
        field_0x6c7[0] = local_18[0];
        field_0x6c7[1] = NO_ITEM;
        field_0x6c7[2] = NO_ITEM;
        field_0x6c7[3] = NO_ITEM;
    } else if (local_18[0] == NO_ITEM && local_18[1] != NO_ITEM && local_18[2] == NO_ITEM &&
               local_18[3] == NO_ITEM && dComIfGs_getMixItemIndex(1) == NO_ITEM)
    {
        field_0x6c7[0] = NO_ITEM;
        field_0x6c7[1] = local_18[1];
        field_0x6c7[2] = NO_ITEM;
        field_0x6c7[3] = NO_ITEM;
    } else {
        field_0x6c7[0] = NO_ITEM;
        field_0x6c7[1] = NO_ITEM;
        field_0x6c7[2] = NO_ITEM;
        field_0x6c7[3] = NO_ITEM;
    }
    return 0;
}

/* 801EE63C-801EE644 1E8F7C 0008+00 1/1 0/0 0/0 .text            checkCombineBomb__12dMenu_Ring_cFi
 */
bool dMenu_Ring_c::checkCombineBomb(int param_0) {
    return false;
}

/* 801EE644-801EE648 1E8F84 0004+00 1/1 0/0 0/0 .text            setCombineBomb__12dMenu_Ring_cFi */
void dMenu_Ring_c::setCombineBomb(int param_0) {
    /* empty function */
}

#ifdef NONMATCHING
#else
/* ############################################################################################## */
/* 80454418-8045441C 002A18 0004+00 1/1 0/0 0/0 .sdata2          @6143 */
SECTION_SDATA2 static f32 lit_6143 = 16.0f;
#endif

/* 801EE648-801EEA84 1E8F88 043C+00 2/2 0/0 0/0 .text            drawNumber__12dMenu_Ring_cFiiff */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Ring_c::drawNumber(int param_0, int param_1, f32 param_2, f32 param_3) {
    if (param_0 > 100) {
        param_0 = 100;
    }

    JUtility::TColor colorBlack;
    JUtility::TColor colorWhite;
    if (param_0 == param_1) {
        colorBlack.set(30, 30, 30, 0);
        colorWhite.set(0xff, 200, 50, 0xff);
    } else if (param_0 == 0) {
        colorBlack.set(30, 30, 30, 0);
        colorWhite.set(180, 180, 180, 0xff);
    } else {
        colorBlack.set(0, 0, 0, 0);
        colorWhite.set(0xff, 0xff, 0xff, 0xff);
    }
    for (int i = 0; i < 3; i++) {
        mpItemNumTex[i]->setBlackWhite(colorBlack, colorWhite);
    }
    if (param_0 < 100) {
        ResTIMG* texture = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource(
            'TIMG', dMeter2Info_getNumberTextureName(param_0 / 10));
        mpItemNumTex[0]->changeTexture(texture, 0);
        texture = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource(
            'TIMG', dMeter2Info_getNumberTextureName(param_0 % 10));
        mpItemNumTex[1]->changeTexture(texture, 0);
        mpItemNumTex[2]->hide();
    } else {
        ResTIMG* texture = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource(
            'TIMG', dMeter2Info_getNumberTextureName(param_0 / 100));
        mpItemNumTex[0]->changeTexture(texture, 0);
        param_0 = (u8)(param_0 % 100);
        texture = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource(
            'TIMG', dMeter2Info_getNumberTextureName(param_0 / 10));
        mpItemNumTex[1]->changeTexture(texture, 0);
        texture = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource(
            'TIMG', dMeter2Info_getNumberTextureName(param_0 % 10));
        mpItemNumTex[2]->changeTexture(texture, 0);
        mpItemNumTex[2]->show();
    }
    u8 itemIconAlpha =
        mPlayerIsWolf != 0 ? g_ringHIO.mItemIconAlpha_Wolf : g_ringHIO.mItemIconAlpha;
    for (int i = 0; i < 3; i++) {
        mpItemNumTex[i]->setAlpha(itemIconAlpha * field_0x514);
        mpItemNumTex[i]->draw(param_2 + i * 16.0f, param_3 - 16.0f, 16.0f, 16.0f, 0, 0, 0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::drawNumber(int param_0, int param_1, f32 param_2, f32 param_3) {
    nofralloc
#include "asm/d/menu/d_menu_ring/drawNumber__12dMenu_Ring_cFiiff.s"
}
#pragma pop
#endif

/* 801EEA84-801EEAE4 1E93C4 0060+00 1/1 0/0 0/0 .text            getItem__12dMenu_Ring_cFiUc */
u8 dMenu_Ring_c::getItem(int i_slot_no, u8 i_slot_no2) {
    u8 item = dComIfGs_getItem(i_slot_no, 0);
    dComIfGs_getItem(i_slot_no2, 0);
    return item;
}

/* 801EEAE4-801EEB58 1E9424 0074+00 2/2 0/0 0/0 .text            setDoStatus__12dMenu_Ring_cFUc */
void dMenu_Ring_c::setDoStatus(u8 param_0) {
    if (param_0 == 0 && field_0x6cc == 0x24) {
        if (field_0x68e > 0) {
            field_0x68e--;
            if (field_0x68e == 0) {
                field_0x6cc = 0;
            }
        } else {
            field_0x68e = 10;
        }
    } else {
        field_0x6cc = param_0;
        field_0x68e = 0;
    }
    dComIfGp_setDoStatusForce(field_0x6cc, 0);
}

/* 801EEB58-801EEC98 1E9498 0140+00 1/1 0/0 0/0 .text            isMixItemOn__12dMenu_Ring_cFv */
bool dMenu_Ring_c::isMixItemOn() {
    if (mPlayerIsWolf == 0 && dComIfGs_getItem(field_0x690[field_0x6a8], 0) != NO_ITEM) {
        u8 item = dComIfGs_getItem(field_0x690[field_0x6a8], 0);
        switch (item) {
        case HAWK_EYE:
        case NORMAL_BOMB:
        case WATER_BOMB:
        case POKE_BOMB:
            if ((dComIfGs_getSelectItemIndex(0) == 4) && (dComIfGs_getMixItemIndex(0) == NO_ITEM) ||
                (dComIfGs_getMixItemIndex(0) == 4))
            {
                return 1;
            }
            if ((dComIfGs_getSelectItemIndex(1) == 4) && (dComIfGs_getMixItemIndex(1) == NO_ITEM) ||
                (dComIfGs_getMixItemIndex(1) == 4))
            {
                return 1;
            }
            break;
        }
    }
    return 0;
}

/* 801EEC98-801EED84 1E95D8 00EC+00 1/1 0/0 0/0 .text            isMixItemOff__12dMenu_Ring_cFv */
bool dMenu_Ring_c::isMixItemOff() {
    if ((!mPlayerIsWolf) && (dComIfGs_getItem(field_0x690[field_0x6a8], 0) != NO_ITEM)) {
        if ((dComIfGs_getMixItemIndex(0) == 4) &&
            (field_0x690[field_0x6a8] == dComIfGs_getSelectItemIndex(0)))
        {
            return 1;
        }
        if ((dComIfGs_getMixItemIndex(1) == 4) &&
            (field_0x690[field_0x6a8] == dComIfGs_getSelectItemIndex(1)))
        {
            return 1;
        }
    }
    return 0;
}

#ifdef NONMATCHING
#else
/* ############################################################################################## */
/* 8045441C-80454420 002A1C 0004+00 1/1 0/0 0/0 .sdata2          @6308 */
SECTION_SDATA2 static f32 lit_6308 = 18.0f;
#endif

/* 801EED84-801EEF14 1E96C4 0190+00 1/1 0/0 0/0 .text            setMixMessage__12dMenu_Ring_cFv */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Ring_c::setMixMessage() {
    if (mpTextParent[4] != NULL) {
        if (isMixItemOff()) {
            for (int i = 0; i < 5; i++) {
                field_0x1c8[i]->hide();
                field_0x1dc[i]->show();
            }
            if (!mpTextParent[4]->isVisible()) {
                field_0x570 = 18.0f - g_ringHIO.mPikariAnimSpeed;
                Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_COMBINE_ICON, NULL, 0, 0, 1.0f, 1.0f, -1.0f,
                                         -1.0f, 0);
            }
            mpTextParent[4]->show();
        } else if (isMixItemOn()) {
            for (int i = 0; i < 5; i++) {
                field_0x1c8[i]->show();
                field_0x1dc[i]->hide();
            }
            if (!mpTextParent[4]->isVisible()) {
                field_0x570 = 18.0f - g_ringHIO.mPikariAnimSpeed;
                Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_COMBINE_ICON, NULL, 0, 0, 1.0f, 1.0f, -1.0f,
                                         -1.0f, 0);
            }
            mpTextParent[4]->show();
        } else {
            mpTextParent[4]->hide();
            field_0x570 = 0.0f;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::setMixMessage() {
    nofralloc
#include "asm/d/menu/d_menu_ring/setMixMessage__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801EEF14-801EF11C 1E9854 0208+00 2/2 0/0 0/0 .text            textScaleHIO__12dMenu_Ring_cFv */
void dMenu_Ring_c::textScaleHIO() {
    for (int i = 0; i < 10; i++) {
        if (mpTextParent[i] != NULL && i != 2) {
            if (field_0x598[i] != g_ringHIO.mGuidePosX[i] ||
                field_0x5c0[i] != g_ringHIO.mGuidePosY[i])
            {
                field_0x598[i] = g_ringHIO.mGuidePosX[i];
                field_0x5c0[i] = g_ringHIO.mGuidePosY[i];
                if (i == 8) {
                    mpTextParent[i]->paneTrans(field_0x598[i] + field_0x574[0], field_0x5c0[i]);
                } else if (i == 9) {
                    mpTextParent[i]->paneTrans(field_0x598[i] + field_0x574[1], field_0x5c0[i]);
                } else {
                    mpTextParent[i]->paneTrans(field_0x598[i], field_0x5c0[i]);
                }
                if (mpTextParent[2] != NULL && i == 1) {
                    mpTextParent[2]->paneTrans(field_0x598[i], field_0x5c0[i]);
                }
            }
            if (field_0x5e8[i] != g_ringHIO.mGuideScale[i]) {
                field_0x5e8[i] = g_ringHIO.mGuideScale[i];
                if (i == 8 || i == 9) {
                    if (field_0x6cf == i - 8) {
                        setButtonScale(i - 8, g_ringHIO.mSelectButtonScale);
                    } else {
                        setButtonScale(i - 8, g_ringHIO.mUnselectButtonScale);
                    }
                } else if (i == 5 || i == 7) {
                    mpTextParent[i]->scale(field_0x5e8[i], field_0x5e8[i]);
                }
                if (mpTextParent[2] != NULL && i == 1) {
                    mpTextParent[2]->scale(field_0x5e8[i], field_0x5e8[i]);
                }
                if (i < 5 && mpTextParent[i] != NULL) {
                    mpTextParent[i]->scale(field_0x5e8[i], field_0x5e8[i]);
                }
            }
        }
    }
}

/* 801EF11C-801EF13C 1E9A5C 0020+00 1/1 0/0 0/0 .text            textCentering__12dMenu_Ring_cFv */
void dMenu_Ring_c::textCentering() {
    textScaleHIO();
}

/* 801EF13C-801EF174 1E9A7C 0038+00 1/1 0/0 0/0 .text clacEllipseFunction__12dMenu_Ring_cFfff */
#ifdef NONMATCHING
// Matches with literals
f32 dMenu_Ring_c::clacEllipseFunction(f32 param_0, f32 param_1, f32 param_2) {
    return -JMAFastSqrt(param_2 * param_2 * (1.0f - (param_0 * param_0) / (param_1 * param_1)));
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm f32 dMenu_Ring_c::clacEllipseFunction(f32 param_0, f32 param_1, f32 param_2) {
    nofralloc
#include "asm/d/menu/d_menu_ring/clacEllipseFunction__12dMenu_Ring_cFfff.s"
}
#pragma pop
#endif

/* 801EF174-801EF1A0 1E9AB4 002C+00 1/1 0/0 0/0 .text            calcDistance__12dMenu_Ring_cFffff
 */
#ifdef NONMATCHING
// Matches with literals
f32 dMenu_Ring_c::calcDistance(f32 param_0, f32 param_1, f32 param_2, f32 param_3) {
    return JMAFastSqrt((param_2 - param_0) * (param_2 - param_0) +
                       (param_3 - param_1) * (param_3 - param_1));
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm f32 dMenu_Ring_c::calcDistance(f32 param_0, f32 param_1, f32 param_2, f32 param_3) {
    nofralloc
#include "asm/d/menu/d_menu_ring/calcDistance__12dMenu_Ring_cFffff.s"
}
#pragma pop
#endif

#ifdef NONMATCHING
#else
/* ############################################################################################## */
/* 80454420-80454424 002A20 0004+00 1/1 0/0 0/0 .sdata2          @6454 */
SECTION_SDATA2 static f32 lit_6454 = 1000.0f;
#endif

/* 801EF1A0-801EF484 1E9AE0 02E4+00 1/1 0/0 0/0 .text clacEllipsePlotAverage__12dMenu_Ring_cFiff
 */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Ring_c::clacEllipsePlotAverage(int param_0, f32 param_1, f32 param_2) {
    f32 f50c = field_0x50c;
    f32 f510 = field_0x510;
    f32 fVar8 = 0.0f;
    f32 temp2;
    f32 fVar3;

    f32* ptr = (f32*)operator new[](16000);
    f32* ptr_00 = (f32*)operator new[](16000);
    f32* ptr_01 = (f32*)operator new[](16000);

    f32 fVar9 = 0.0f;
    for (int i = 0; i <= 0x3E8; i++) {
        ptr[i] = fVar8;
        ptr_00[i] = clacEllipseFunction(fVar8, f50c, f510);
        fVar8 += f50c / 1000.0f;
        ptr[i + 2000] = -ptr[i];
        ptr_00[i + 2000] = -ptr_00[i];
        if (i > 0) {
            ptr_01[i - 1] = calcDistance(ptr[i - 1], ptr_00[i - 1], ptr[i], ptr_00[i]);
            ptr_01[2000 - i] = ptr_01[i - 1];
            ptr_01[i + 1999] = ptr_01[i - 1];
            ptr_01[4000 - i] = ptr_01[i - 1];
            fVar9 = fVar9 + ptr_01[2000 - i] + ptr_01[i + 1999] + ptr_01[4000 - i] + ptr_01[i - 1];

            if (i < 1000) {
                ptr[2000 - i] = ptr[i];
                ptr_00[2000 - i] = -ptr_00[i];
                ptr[4000 - i] = -ptr[i];
                ptr_00[4000 - i] = ptr_00[i];
            }
        }
    }

    fVar8 = fVar9 / param_0;
    fVar3 = 0.0f;
    temp2 = 0.0f;
    s32 j = 0;
    field_0x38c[0] = ptr[0] + param_1;
    field_0x3ec[0] = ptr_00[0] + param_2;

    for (int i = 0; i < 4000; i++) {
        f510 = ptr_01[i];
        fVar3 += f510;
        if (fVar8 >= temp2 && fVar8 < fVar3) {
            j++;
            if (fVar8 - temp2 <= fVar3 - fVar8) {
                fVar3 = ptr_01[i];
                field_0x38c[j] = param_1 + ptr[i - 1];
                field_0x3ec[j] = param_2 + ptr_00[i - 1];
            } else {
                fVar3 = 0.0f;
                field_0x38c[j] = param_1 + ptr[i];
                field_0x3ec[j] = param_2 + ptr_00[i];
            }
        }
        f50c = fVar8;
        temp2 = fVar3;
        if (j >= param_0 - 1)
            break;
    }
    operator delete[](ptr);
    operator delete[](ptr_00);
    operator delete[](ptr_01);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Ring_c::clacEllipsePlotAverage(int param_0, f32 param_1, f32 param_2) {
    nofralloc
#include "asm/d/menu/d_menu_ring/clacEllipsePlotAverage__12dMenu_Ring_cFiff.s"
}
#pragma pop
#endif

/* 801EF484-801EF48C 1E9DC4 0008+00 1/1 0/0 0/0 .text            dpdMove__12dMenu_Ring_cFv */
bool dMenu_Ring_c::dpdMove() {
    return false;
}

/* 801EF48C-801EF560 1E9DCC 00D4+00 1/1 0/0 0/0 .text            openExplain__12dMenu_Ring_cFUc */
u8 dMenu_Ring_c::openExplain(u8 param_0) {
    if (field_0x6cf == 0xff && field_0x6d0 == 0xff) {
        if (param_0 != 0xff) {
            return mpItemExplain->openExplain(field_0x690[field_0x6a8],
                                              getItemNum(field_0x690[field_0x6a8]),
                                              getItemMaxNum(field_0x690[field_0x6a8]), false);
        }
        return 0;
    }
    u8 idx = field_0x6d0 != 0xff ? field_0x6d0 : field_0x6cf;
    static const u32 i_nameID[2] = {0x4DE, 0x4E0};
    static const u32 i_expID[2] = {0x4DF, 0x4E1};
    return mpItemExplain->openExplainTx(i_nameID[idx], i_expID[idx]);
}

#ifdef NONMATCHING
#else
/* 801EF560-801EF580 1E9EA0 0020+00 1/0 0/0 0/0 .text            draw__12dMenu_Ring_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dMenu_Ring_c::draw() {
extern "C" asm void draw__12dMenu_Ring_cFv() {
    nofralloc
#include "asm/d/menu/d_menu_ring/draw__12dMenu_Ring_cFv.s"
}
#pragma pop
#endif

/* 801EF580-801EF654 1E9EC0 00D4+00 0/0 1/0 0/0 .text            __sinit_d_menu_ring_cpp */
#ifdef NONMATCHING
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_menu_ring_cpp(){nofralloc
#include "asm/d/menu/d_menu_ring/__sinit_d_menu_ring_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x801EF580, __sinit_d_menu_ring_cpp);
#pragma pop
#endif

/* ############################################################################################## */
/* 80454434-80454438 -00001 0004+00 0/0 0/0 0/0 .sdata2          None */
#pragma push
#pragma force_active on
SECTION_SDATA2 static u8 pad_80454434[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
#pragma pop

/**
 * d_menu_collect.cpp
 * Collection Menu
 */

#include "d/menu/d_menu_collect.h"
#include "JSystem/J2DGraph/J2DTextBox.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "d/a/d_a_alink.h"
#include "d/d_select_cursor.h"
#include "d/menu/d_menu_fishing.h"
#include "d/menu/d_menu_insect.h"
#include "d/menu/d_menu_letter.h"
#include "d/menu/d_menu_option.h"
#include "d/menu/d_menu_save.h"
#include "d/menu/d_menu_skill.h"
#include "d/meter/d_meter_HIO.h"
#include "d/msg/d_msg_class.h"
#include "d/msg/d_msg_object.h"
#include "d/msg/d_msg_string.h"
#include "d/pane/d_pane_class.h"
#include "dol2asm.h"
#include "dolphin/os.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_graphic.h"
#include "m_Do/m_Do_mtx.h"

extern "C" void __ct__17dMenu_Collect2D_cFP10JKRExpHeapP9STControlP10CSTControl();
extern "C" void __dt__17dMenu_Collect2D_cFv();
extern "C" void _create__17dMenu_Collect2D_cFv();
extern "C" void _delete__17dMenu_Collect2D_cFv();
extern "C" void initialize__17dMenu_Collect2D_cFv();
extern "C" void isFishIconVisible__17dMenu_Collect2D_cFv();
extern "C" void isSkillIconVisible__17dMenu_Collect2D_cFv();
extern "C" void isInsectIconVisible__17dMenu_Collect2D_cFv();
extern "C" void screenSet__17dMenu_Collect2D_cFv();
extern "C" void animationSet__17dMenu_Collect2D_cFv();
extern "C" void btkAnimeLoop0__17dMenu_Collect2D_cFP19J2DAnmTextureSRTKey();
extern "C" void setBackAlpha__17dMenu_Collect2D_cFv();
extern "C" void cursorMove__17dMenu_Collect2D_cFv();
extern "C" void cursorPosSet__17dMenu_Collect2D_cFv();
extern "C" void changeSword__17dMenu_Collect2D_cFv();
extern "C" void changeShield__17dMenu_Collect2D_cFv();
extern "C" void changeClothe__17dMenu_Collect2D_cFv();
extern "C" void setArrowMaxNum__17dMenu_Collect2D_cFUc();
extern "C" void setWalletMaxNum__17dMenu_Collect2D_cFUs();
extern "C" void setSmellType__17dMenu_Collect2D_cFv();
extern "C" void setHeartPiece__17dMenu_Collect2D_cFv();
extern "C" void setPohMaxNum__17dMenu_Collect2D_cFUc();
extern "C" void setEquipItemFrameColorSword__17dMenu_Collect2D_cFi();
extern "C" void setEquipItemFrameColorShield__17dMenu_Collect2D_cFi();
extern "C" void setEquipItemFrameColorClothes__17dMenu_Collect2D_cFi();
extern "C" void setHIO__17dMenu_Collect2D_cFb();
extern "C" void getItemTag__17dMenu_Collect2D_cFiib();
extern "C" void wait_init__17dMenu_Collect2D_cFv();
extern "C" void wait_proc__17dMenu_Collect2D_cFv();
extern "C" void save_open_init__17dMenu_Collect2D_cFv();
extern "C" void save_open_proc__17dMenu_Collect2D_cFv();
extern "C" void save_move_init__17dMenu_Collect2D_cFv();
extern "C" void save_move_proc__17dMenu_Collect2D_cFv();
extern "C" void save_close_init__17dMenu_Collect2D_cFv();
extern "C" void save_close_proc__17dMenu_Collect2D_cFv();
extern "C" void option_open_init__17dMenu_Collect2D_cFv();
extern "C" void option_open_proc__17dMenu_Collect2D_cFv();
extern "C" void option_move_init__17dMenu_Collect2D_cFv();
extern "C" void option_move_proc__17dMenu_Collect2D_cFv();
extern "C" void option_close_init__17dMenu_Collect2D_cFv();
extern "C" void option_close_proc__17dMenu_Collect2D_cFv();
extern "C" void letter_open_init__17dMenu_Collect2D_cFv();
extern "C" void letter_open_proc__17dMenu_Collect2D_cFv();
extern "C" void letter_move_init__17dMenu_Collect2D_cFv();
extern "C" void letter_move_proc__17dMenu_Collect2D_cFv();
extern "C" void letter_close_init__17dMenu_Collect2D_cFv();
extern "C" void letter_close_proc__17dMenu_Collect2D_cFv();
extern "C" void fishing_open_init__17dMenu_Collect2D_cFv();
extern "C" void fishing_open_proc__17dMenu_Collect2D_cFv();
extern "C" void fishing_move_init__17dMenu_Collect2D_cFv();
extern "C" void fishing_move_proc__17dMenu_Collect2D_cFv();
extern "C" void fishing_close_init__17dMenu_Collect2D_cFv();
extern "C" void fishing_close_proc__17dMenu_Collect2D_cFv();
extern "C" void skill_open_init__17dMenu_Collect2D_cFv();
extern "C" void skill_open_proc__17dMenu_Collect2D_cFv();
extern "C" void skill_move_init__17dMenu_Collect2D_cFv();
extern "C" void skill_move_proc__17dMenu_Collect2D_cFv();
extern "C" void skill_close_init__17dMenu_Collect2D_cFv();
extern "C" void skill_close_proc__17dMenu_Collect2D_cFv();
extern "C" void insect_open_init__17dMenu_Collect2D_cFv();
extern "C" void insect_open_proc__17dMenu_Collect2D_cFv();
extern "C" void insect_move_init__17dMenu_Collect2D_cFv();
extern "C" void insect_move_proc__17dMenu_Collect2D_cFv();
extern "C" void insect_close_init__17dMenu_Collect2D_cFv();
extern "C" void insect_close_proc__17dMenu_Collect2D_cFv();
extern "C" void _move__17dMenu_Collect2D_cFv();
extern "C" void _draw__17dMenu_Collect2D_cFv();
extern "C" void drawTop__17dMenu_Collect2D_cFv();
extern "C" void isKeyCheck__17dMenu_Collect2D_cFv();
extern "C" bool isOutCheck__17dMenu_Collect2D_cFv();
extern "C" void setAButtonString__17dMenu_Collect2D_cFUs();
extern "C" void setBButtonString__17dMenu_Collect2D_cFUs();
extern "C" void setItemNameString__17dMenu_Collect2D_cFUcUc();
extern "C" void setItemNameStringNull__17dMenu_Collect2D_cFv();
extern "C" void __ct__17dMenu_Collect3D_cFP10JKRExpHeapP17dMenu_Collect2D_cP10CSTControl();
extern "C" void __dt__17dMenu_Collect3D_cFv();
extern "C" void _create__17dMenu_Collect3D_cFv();
extern "C" void _delete__17dMenu_Collect3D_cFv();
extern "C" void _move__17dMenu_Collect3D_cFUcUc();
extern "C" void draw__17dMenu_Collect3D_cFv();
extern "C" void setJ3D__17dMenu_Collect3D_cFPCcPCcPCc();
extern "C" void set_mtx__17dMenu_Collect3D_cFv();
extern "C" void animePlay__17dMenu_Collect3D_cFv();
extern "C" void animeEntry__17dMenu_Collect3D_cFv();
extern "C" void createMaskModel__17dMenu_Collect3D_cFv();
extern "C" void createMirrorModel__17dMenu_Collect3D_cFv();
extern "C" void getCrystalNum__17dMenu_Collect3D_cFv();
extern "C" void getMirrorNum__17dMenu_Collect3D_cFv();
extern "C" void getMaskMdlVisible__17dMenu_Collect3D_cFv();
extern "C" void setupItem3D__17dMenu_Collect3D_cFPA4_f();
extern "C" void toItem3Dpos__17dMenu_Collect3D_cFfffP4cXyz();
extern "C" void calcViewMtx__17dMenu_Collect3D_cFPA4_f();
extern "C" void draw__20dMenu_Collect2DTop_cFv();
extern "C" void __ct__15dMenu_Collect_cFP10JKRExpHeapP9STControlP10CSTControl();
extern "C" void __dt__15dMenu_Collect_cFv();
extern "C" void _create__15dMenu_Collect_cFv();
extern "C" void _delete__15dMenu_Collect_cFv();
extern "C" void _move__15dMenu_Collect_cFv();
extern "C" void draw__15dMenu_Collect_cFv();
extern "C" void __sinit_d_menu_collect_cpp();
extern "C" void __dt__20dMenu_Collect2DTop_cFv();
extern "C" void draw__17dMenu_Collect2D_cFv();
extern "C" extern char const* const d_menu_d_menu_collect__stringBase0;
extern "C" f32 mViewOffsetY__17dMenu_Collect3D_c[1 + 1 /* padding */];

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb();
extern "C" void entry__13mDoExt_bckAnmFP12J3DModelDataf();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_createSolidHeapToCurrent__FUlP7JKRHeapUl();
extern "C" void mDoExt_destroySolidHeap__FP12JKRSolidHeap();
extern "C" void mDoExt_destroyExpHeap__FP10JKRExpHeap();
extern "C" void mDoExt_setCurrentHeap__FP7JKRHeap();
extern "C" void mDoExt_restoreCurrentHeap__Fv();
extern "C" void mDoExt_getMesgFont__Fv();
extern "C" void mDoExt_getRubyFont__Fv();
extern "C" void __ct__11J3DLightObjFv();
extern "C" void checkTrigger__9STControlFv();
extern "C" void checkLeftTrigger__9STControlFv();
extern "C" void checkRightTrigger__9STControlFv();
extern "C" void checkUpTrigger__9STControlFv();
extern "C" void checkDownTrigger__9STControlFv();
extern "C" void getRupeeMax__21dSv_player_status_a_cCFv();
extern "C" void isFirstBit__21dSv_player_get_item_cCFUc();
extern "C" void isCollectCrystal__20dSv_player_collect_cCFUc();
extern "C" void isCollectMirror__20dSv_player_collect_cCFUc();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void __dt__15J3DTevKColorAnmFv();
extern "C" void __ct__15J3DTevKColorAnmFv();
extern "C" void __dt__14J3DTevColorAnmFv();
extern "C" void __ct__14J3DTevColorAnmFv();
extern "C" void __dt__11J3DTexNoAnmFv();
extern "C" void __ct__11J3DTexNoAnmFv();
extern "C" void __dt__12J3DTexMtxAnmFv();
extern "C" void __ct__12J3DTexMtxAnmFv();
extern "C" void __dt__14J3DMatColorAnmFv();
extern "C" void __ct__14J3DMatColorAnmFv();
extern "C" void set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c();
extern "C" void checkItemGet__FUci();
extern "C" void setShieldChange__9daAlink_cFv();
extern "C" void initStatusWindow__9daAlink_cFv();
extern "C" void statusWindowExecute__9daAlink_cFPC4cXyzs();
extern "C" void statusWindowDraw__9daAlink_cFv();
extern "C" void resetStatusWindow__9daAlink_cFv();
extern "C" void __ct__16dSelect_cursor_cFUcfP10JKRArchive();
extern "C" void setPos__16dSelect_cursor_cFffP7J2DPaneb();
extern "C" void setParam__16dSelect_cursor_cFfffff();
extern "C" void setAlphaRate__16dSelect_cursor_cFf();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_tevstr_init__FP12dKy_tevstr_cScUc();
extern "C" void __ct__15dMenu_Fishing_cFP10JKRExpHeapP9STControlP10CSTControl();
extern "C" void _move__15dMenu_Fishing_cFv();
extern "C" void _draw__15dMenu_Fishing_cFv();
extern "C" void _open__15dMenu_Fishing_cFv();
extern "C" void _close__15dMenu_Fishing_cFv();
extern "C" void __ct__14dMenu_Insect_cFP10JKRExpHeapP9STControlP10CSTControlUc();
extern "C" void _move__14dMenu_Insect_cFv();
extern "C" void _draw__14dMenu_Insect_cFv();
extern "C" void _open__14dMenu_Insect_cFv();
extern "C" void _close__14dMenu_Insect_cFv();
extern "C" void getGetInsectNum__14dMenu_Insect_cFv();
extern "C" void __ct__14dMenu_Letter_cFP10JKRExpHeapP9STControlP10CSTControl();
extern "C" void _move__14dMenu_Letter_cFv();
extern "C" void _draw__14dMenu_Letter_cFv();
extern "C" void _open__14dMenu_Letter_cFv();
extern "C" void _close__14dMenu_Letter_cFv();
extern "C" void __ct__14dMenu_Option_cFP10JKRArchiveP9STControl();
extern "C" void _delete__14dMenu_Option_cFv();
extern "C" void _move__14dMenu_Option_cFv();
extern "C" void _draw__14dMenu_Option_cFv();
extern "C" void _open__14dMenu_Option_cFv();
extern "C" void _close__14dMenu_Option_cFv();
extern "C" void initialize__14dMenu_Option_cFv();
extern "C" void __ct__12dMenu_save_cFv();
extern "C" void _create__12dMenu_save_cFv();
extern "C" void initialize__12dMenu_save_cFv();
extern "C" void _open__12dMenu_save_cFv();
extern "C" void _close__12dMenu_save_cFv();
extern "C" void _delete__12dMenu_save_cFv();
extern "C" void _move__12dMenu_save_cFv();
extern "C" void _draw__12dMenu_save_cFv();
extern "C" void __ct__13dMenu_Skill_cFP10JKRExpHeapP9STControlP10CSTControl();
extern "C" void _move__13dMenu_Skill_cFv();
extern "C" void _draw__13dMenu_Skill_cFv();
extern "C" void _open__13dMenu_Skill_cFv();
extern "C" void _close__13dMenu_Skill_cFv();
extern "C" void dMw_A_TRIGGER__Fv();
extern "C" void getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c();
extern "C" void dMeter2Info_getNumberTextureName__Fi();
extern "C" void dMeter2Info_setCloth__FUcb();
extern "C" void dMeter2Info_setSword__FUcb();
extern "C" void dMeter2Info_setShield__FUcb();
extern "C" void dMeter2Info_getRecieveLetterNum__Fv();
extern "C" void dMeter2Info_set2DVibration__Fv();
extern "C" void dMeter2Info_set2DVibrationM__Fv();
extern "C" void getSmellTypeMessageID__12dMsgObject_cFv();
extern "C" void __ct__12dMsgString_cFv();
extern "C" void __dt__12dMsgString_cFv();
extern "C" void __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap();
extern "C" void paneTrans__8CPaneMgrFff();
extern "C" void getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs();
extern "C" void dPaneClass_showNullPane__FP9J2DScreen();
extern "C" void setAlphaRate__13CPaneMgrAlphaFf();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void freeAll__7JKRHeapFv();
extern "C" void getTotalFreeSize__7JKRHeapFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void create__10JKRExpHeapFUlP7JKRHeapb();
extern "C" void adjustSize__12JKRSolidHeapFv();
extern "C" void getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader();
extern "C" void __ct__9J2DScreenFv();
extern "C" void setPriority__9J2DScreenFPCcUlP10JKRArchive();
extern "C" void draw__9J2DScreenFffPC14J2DGrafContext();
extern "C" void animation__9J2DScreenFv();
extern "C" void __ct__10J2DPictureFPC7ResTIMG();
extern "C" void getStringPtr__10J2DTextBoxCFv();
extern "C" void setString__10J2DTextBoxFsPCce();
extern "C" void load__20J2DAnmLoaderDataBaseFPCv();
extern "C" void init__15J3DVertexBufferFv();
extern "C" void __as__12J3DLightInfoFRC12J3DLightInfo();
extern "C" void initialize__8J3DModelFv();
extern "C" void entryModelData__8J3DModelFP12J3DModelDataUlUl();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void load__22J3DModelLoaderDataBaseFPCvUl();
extern "C" void load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_17();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_17();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__12J3DFrameCtrl[3];
extern "C" extern void* __vt__12dDlst_base_c[3];
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8J3DModel[9];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 mFader__13mDoGph_gInf_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80395330-80395330 021990 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80395330 = "zelda_collect_soubi_screen.blo";
SECTION_DEAD static char const* const stringBase_8039534F = "zelda_collect_soubi_do_icon_parts.blo";
SECTION_DEAD static char const* const stringBase_80395375 = "tt_block8x8.bti";
SECTION_DEAD static char const* const stringBase_80395385 = "";
SECTION_DEAD static char const* const stringBase_80395386 = "zelda_collect_soubi_screen.btk";
SECTION_DEAD static char const* const stringBase_803953A5 = "md_mask_parts_spin_1.bck";
SECTION_DEAD static char const* const stringBase_803953BE = "md_mask_parts_spin_2.bck";
SECTION_DEAD static char const* const stringBase_803953D7 = "md_mask_parts_spin_3.bck";
SECTION_DEAD static char const* const stringBase_803953F0 = "md_mask_parts_spin_4.bck";
SECTION_DEAD static char const* const stringBase_80395409 = "md_mask_parts_spin_1.brk";
SECTION_DEAD static char const* const stringBase_80395422 = "md_mask_parts_spin_2_3.brk";
SECTION_DEAD static char const* const stringBase_8039543D = "md_mask_parts_spin_4.brk";
SECTION_DEAD static char const* const stringBase_80395456 = "md_mask_UI.bmd";
SECTION_DEAD static char const* const stringBase_80395465 = "kageri_mirrer_spin_1.bck";
SECTION_DEAD static char const* const stringBase_8039547E = "kageri_mirrer_spin_2.bck";
SECTION_DEAD static char const* const stringBase_80395497 = "kageri_mirrer_spin_3.bck";
SECTION_DEAD static char const* const stringBase_803954B0 = "kageri_mirrer_spin_4.bck";
SECTION_DEAD static char const* const stringBase_803954C9 = "kageri_mirrer_spin_1.brk";
SECTION_DEAD static char const* const stringBase_803954E2 = "kageri_mirrer_spin_2_3_4.brk";
#pragma pop

/* 803BC380-803BC38C 0194A0 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

#ifdef NONMATCHING
typedef void (dMenu_Collect2D_c::*initFunc)();
static initFunc init[] = {
    &dMenu_Collect2D_c::wait_init,          &dMenu_Collect2D_c::save_open_init,
    &dMenu_Collect2D_c::save_move_init,     &dMenu_Collect2D_c::save_close_init,
    &dMenu_Collect2D_c::option_open_init,   &dMenu_Collect2D_c::option_move_init,
    &dMenu_Collect2D_c::option_close_init,  &dMenu_Collect2D_c::letter_open_init,
    &dMenu_Collect2D_c::letter_move_init,   &dMenu_Collect2D_c::letter_close_init,
    &dMenu_Collect2D_c::fishing_open_init,  &dMenu_Collect2D_c::fishing_move_init,
    &dMenu_Collect2D_c::fishing_close_init, &dMenu_Collect2D_c::skill_open_init,
    &dMenu_Collect2D_c::skill_move_init,    &dMenu_Collect2D_c::skill_close_init,
    &dMenu_Collect2D_c::insect_open_init,   &dMenu_Collect2D_c::insect_move_init,
    &dMenu_Collect2D_c::insect_close_init};

typedef void (dMenu_Collect2D_c::*processFunc)();
static processFunc process[] = {
    &dMenu_Collect2D_c::wait_proc,          &dMenu_Collect2D_c::save_open_proc,
    &dMenu_Collect2D_c::save_move_proc,     &dMenu_Collect2D_c::save_close_proc,
    &dMenu_Collect2D_c::option_open_proc,   &dMenu_Collect2D_c::option_move_proc,
    &dMenu_Collect2D_c::option_close_proc,  &dMenu_Collect2D_c::letter_open_proc,
    &dMenu_Collect2D_c::letter_move_proc,   &dMenu_Collect2D_c::letter_close_proc,
    &dMenu_Collect2D_c::fishing_open_proc,  &dMenu_Collect2D_c::fishing_move_proc,
    &dMenu_Collect2D_c::fishing_close_proc, &dMenu_Collect2D_c::skill_open_proc,
    &dMenu_Collect2D_c::skill_move_proc,    &dMenu_Collect2D_c::skill_close_proc,
    &dMenu_Collect2D_c::insect_open_proc,   &dMenu_Collect2D_c::insect_move_proc,
    &dMenu_Collect2D_c::insect_close_proc,
};
#else
/* 803BC38C-803BC398 -00001 000C+00 0/1 0/0 0/0 .data            @4422 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4422[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC398-803BC3A4 -00001 000C+00 0/1 0/0 0/0 .data            @4423 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4423[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)save_open_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC3A4-803BC3B0 -00001 000C+00 0/1 0/0 0/0 .data            @4424 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4424[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)save_move_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC3B0-803BC3BC -00001 000C+00 0/1 0/0 0/0 .data            @4425 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4425[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)save_close_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC3BC-803BC3C8 -00001 000C+00 0/1 0/0 0/0 .data            @4426 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4426[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)option_open_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC3C8-803BC3D4 -00001 000C+00 0/1 0/0 0/0 .data            @4427 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4427[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)option_move_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC3D4-803BC3E0 -00001 000C+00 0/1 0/0 0/0 .data            @4428 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4428[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)option_close_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC3E0-803BC3EC -00001 000C+00 0/1 0/0 0/0 .data            @4429 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4429[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)letter_open_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC3EC-803BC3F8 -00001 000C+00 0/1 0/0 0/0 .data            @4430 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4430[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)letter_move_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC3F8-803BC404 -00001 000C+00 0/1 0/0 0/0 .data            @4431 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4431[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)letter_close_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC404-803BC410 -00001 000C+00 0/1 0/0 0/0 .data            @4432 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4432[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fishing_open_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC410-803BC41C -00001 000C+00 0/1 0/0 0/0 .data            @4433 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4433[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fishing_move_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC41C-803BC428 -00001 000C+00 0/1 0/0 0/0 .data            @4434 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4434[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fishing_close_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC428-803BC434 -00001 000C+00 0/1 0/0 0/0 .data            @4435 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4435[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)skill_open_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC434-803BC440 -00001 000C+00 0/1 0/0 0/0 .data            @4436 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4436[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)skill_move_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC440-803BC44C -00001 000C+00 0/1 0/0 0/0 .data            @4437 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4437[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)skill_close_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC44C-803BC458 -00001 000C+00 0/1 0/0 0/0 .data            @4438 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4438[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)insect_open_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC458-803BC464 -00001 000C+00 0/1 0/0 0/0 .data            @4439 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4439[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)insect_move_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC464-803BC470 -00001 000C+00 0/1 0/0 0/0 .data            @4440 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4440[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)insect_close_init__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC470-803BC554 019590 00E4+00 2/3 0/0 0/0 .data            init */
SECTION_DATA static u8 init[228] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};

/* 803BC554-803BC560 -00001 000C+00 0/1 0/0 0/0 .data            @4441 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4441[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC560-803BC56C -00001 000C+00 0/1 0/0 0/0 .data            @4442 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4442[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)save_open_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC56C-803BC578 -00001 000C+00 0/1 0/0 0/0 .data            @4443 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4443[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)save_move_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC578-803BC584 -00001 000C+00 0/1 0/0 0/0 .data            @4444 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4444[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)save_close_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC584-803BC590 -00001 000C+00 0/1 0/0 0/0 .data            @4445 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4445[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)option_open_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC590-803BC59C -00001 000C+00 0/1 0/0 0/0 .data            @4446 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4446[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)option_move_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC59C-803BC5A8 -00001 000C+00 0/1 0/0 0/0 .data            @4447 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4447[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)option_close_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC5A8-803BC5B4 -00001 000C+00 0/1 0/0 0/0 .data            @4448 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4448[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)letter_open_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC5B4-803BC5C0 -00001 000C+00 0/1 0/0 0/0 .data            @4449 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4449[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)letter_move_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC5C0-803BC5CC -00001 000C+00 0/1 0/0 0/0 .data            @4450 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4450[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)letter_close_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC5CC-803BC5D8 -00001 000C+00 0/1 0/0 0/0 .data            @4451 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4451[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fishing_open_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC5D8-803BC5E4 -00001 000C+00 0/1 0/0 0/0 .data            @4452 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4452[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fishing_move_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC5E4-803BC5F0 -00001 000C+00 0/1 0/0 0/0 .data            @4453 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4453[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fishing_close_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC5F0-803BC5FC -00001 000C+00 0/1 0/0 0/0 .data            @4454 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4454[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)skill_open_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC5FC-803BC608 -00001 000C+00 0/1 0/0 0/0 .data            @4455 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4455[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)skill_move_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC608-803BC614 -00001 000C+00 0/1 0/0 0/0 .data            @4456 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4456[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)skill_close_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC614-803BC620 -00001 000C+00 0/1 0/0 0/0 .data            @4457 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4457[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)insect_open_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC620-803BC62C -00001 000C+00 0/1 0/0 0/0 .data            @4458 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4458[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)insect_move_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC62C-803BC638 -00001 000C+00 0/1 0/0 0/0 .data            @4459 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4459[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)insect_close_proc__17dMenu_Collect2D_cFv,
};
#pragma pop

/* 803BC638-803BC71C 019758 00E4+00 1/2 0/0 0/0 .data            process */
SECTION_DATA static u8 process[228] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};
#endif

/* 803BC71C-803BC72C -00001 0010+00 1/1 0/0 0/0 .data            bck_name$7583 */
SECTION_DATA static void* bck_name_7583[4] = {
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0x75),
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0x8E),
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0xA7),
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0xC0),
};

/* 803BC72C-803BC73C -00001 0010+00 1/1 0/0 0/0 .data            brk_name$7584 */
SECTION_DATA static void* brk_name_7584[4] = {
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0xD9),
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0xF2),
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0xF2),
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0x10D),
};

/* 803BC73C-803BC74C -00001 0010+00 1/1 0/0 0/0 .data            bck_name$7687 */
SECTION_DATA static void* bck_name_7687[4] = {
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0x135),
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0x14E),
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0x167),
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0x180),
};

/* 803BC74C-803BC75C -00001 0010+00 1/1 0/0 0/0 .data            brk_name$7688 */
SECTION_DATA static void* brk_name_7688[4] = {
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0x199),
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0x1B2),
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0x1B2),
    (void*)(((char*)&d_menu_d_menu_collect__stringBase0) + 0x1B2),
};

/* 803BC75C-803BC768 01987C 000C+00 2/2 0/0 0/0 .data            __vt__15dMenu_Collect_c */
SECTION_DATA extern void* __vt__15dMenu_Collect_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15dMenu_Collect_cFv,
};

/* 803BC768-803BC790 019888 0010+18 2/2 0/0 0/0 .data            __vt__20dMenu_Collect2DTop_c */
SECTION_DATA extern void* __vt__20dMenu_Collect2DTop_c[4 + 6 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__20dMenu_Collect2DTop_cFv,
    (void*)__dt__20dMenu_Collect2DTop_cFv,
    /* padding */
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

/* 803BC790-803BC7C4 0198B0 000C+28 2/2 0/0 0/0 .data            __vt__17dMenu_Collect3D_c */
SECTION_DATA extern void* __vt__17dMenu_Collect3D_c[3 + 10 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dMenu_Collect3D_cFv,
    /* padding */
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

/* 803BC7C4-803BC7E0 0198E4 0010+0C 2/2 0/0 0/0 .data            __vt__17dMenu_Collect2D_c */
SECTION_DATA extern void* __vt__17dMenu_Collect2D_c[4 + 3 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__17dMenu_Collect2D_cFv,
    (void*)__dt__17dMenu_Collect2D_cFv,
    /* padding */
    NULL,
    NULL,
    NULL,
};

/* 80453F28-80453F2C 002528 0004+00 14/14 0/0 0/0 .sdata2          @4481 */
SECTION_SDATA2 static u8 lit_4481[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 80453F2C-80453F30 00252C 0004+00 15/15 0/0 0/0 .sdata2          @4482 */
SECTION_SDATA2 static f32 lit_4482 = 1.0f;

/* 801AFD48-801AFE34 1AA688 00EC+00 1/1 0/0 0/0 .text
 * __ct__17dMenu_Collect2D_cFP10JKRExpHeapP9STControlP10CSTControl */
// matches with literals
#ifdef NONMATCHING
dMenu_Collect2D_c::dMenu_Collect2D_c(JKRExpHeap* param_0, STControl* param_1, CSTControl* param_2) {
    mpHeap = param_0;
    mpStick = param_1;
    mpCStick = param_2;
    field_0xc = NULL;
    mIsWolf = daPy_py_c::i_checkNowWolf();
    mLinkGlobalCenterPos.set(0.0f, 0.0f, 0.0f);
    for (int i = 0; i < 2; i++) {
        field_0x44[i] = 1.0f;
        field_0x4c[i] = 1.0f;
    }
    mBlueSmokePosX = 0.0f;
    mBlueSmokePosY = 0.0f;
    mBlueSmokeScale = 1.0f;
    mBlueSmokeAlpha = 1.0f;
    mHeartVesselPosX = 0.0f;
    mHeartVesselPosY = 0.0f;
    mHeartVesselScale = 1.0f;
    mHeartPiecePosX = 0.0f;
    mHeartPiecePosY = 0.0f;
    mHeartPieceScale = 1.0f;
    mpSubHeap = JKRCreateExpHeap(0x00046000, mpHeap, 0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dMenu_Collect2D_c::dMenu_Collect2D_c(JKRExpHeap* param_0, STControl* param_1,
                                         CSTControl* param_2) {
    nofralloc
#include "asm/d/menu/d_menu_collect/__ct__17dMenu_Collect2D_cFP10JKRExpHeapP9STControlP10CSTControl.s"
}
#pragma pop
#endif

/* 801AFE34-801AFEA4 1AA774 0070+00 1/0 0/0 0/0 .text            __dt__17dMenu_Collect2D_cFv */
dMenu_Collect2D_c::~dMenu_Collect2D_c() {
    if (mpSubHeap) {
        mDoExt_destroyExpHeap(mpSubHeap);
        mpSubHeap = NULL;
    }
}

/* 801AFEA4-801B0100 1AA7E4 025C+00 1/1 0/0 0/0 .text            _create__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::_create() {
    mpHeap->getTotalFreeSize();
    mpScreen = new J2DScreen();
    mpScreen->setPriority("zelda_collect_soubi_screen.blo", 0x1020000,
                          dComIfGp_getCollectResArchive());
    dPaneClass_showNullPane(mpScreen);
    mpScreenIcon = new J2DScreen();
    mpScreenIcon->setPriority("zelda_collect_soubi_do_icon_parts.blo", 0x20000,
                              dComIfGp_getCollectResArchive());
    for (int i = 0; i < 2; i++) {
        mpButtonAB[i] = NULL;
        mpButtonText[i] = NULL;
    }
    dPaneClass_showNullPane(mpScreenIcon);
    mpDraw2DTop = new dMenu_Collect2DTop_c(this);
    ResTIMG* image = (ResTIMG*)dComIfGp_getMain2DArchive()->getResource('TIMG', "tt_block8x8.bti");
    mpBlackTex = new J2DPicture(image);
    mpBlackTex->setBlackWhite(JUtility::TColor(0, 0, 0, 0), JUtility::TColor(0, 0, 0, 255));
    mpBlackTex->setAlpha(0);
    mpDrawCursor = new dSelect_cursor_c(2, lit_4482, NULL);
    mpString = new dMsgString_c();
    mpSaveScrn = NULL;
    mpOptionScrn = NULL;
    mpLetterScrn = NULL;
    mpFishingScrn = NULL;
    mpSkillScrn = NULL;
    mpInsectScrn = NULL;
    mProcess = 0;
    animationSet();
    screenSet();
    initialize();
    setHIO(true);
}

/* 801B0100-801B0570 1AAA40 0470+00 1/1 0/0 0/0 .text            _delete__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::_delete() {
    mpHeap->getTotalFreeSize();
    dMeter2Info_setCollectCursorPosXY(mCursorX, mCursorY);
    delete mpScreen;
    mpScreen = NULL;
    delete mpScreenIcon;
    mpScreenIcon = NULL;
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
    delete mpDraw2DTop;
    mpDraw2DTop = NULL;
    delete mpBlackTex;
    mpBlackTex = NULL;
    delete mpDrawCursor;
    mpDrawCursor = NULL;
    delete mpString;
    mpString = NULL;
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpSaveScrn) {
        mpSaveScrn->_delete();
        delete mpSaveScrn;
        mpSaveScrn = NULL;
        mpSubHeap->freeAll();
    }
    if (mpOptionScrn) {
        mpOptionScrn->_delete();
        delete mpOptionScrn;
        mpOptionScrn = NULL;
        mpSubHeap->freeAll();
    }
    if (mpLetterScrn) {
        delete mpLetterScrn;
        mpLetterScrn = NULL;
        mpSubHeap->freeAll();
    }
    if (mpFishingScrn) {
        delete mpFishingScrn;
        mpFishingScrn = NULL;
        mpSubHeap->freeAll();
    }
    if (mpSkillScrn) {
        delete mpSkillScrn;
        mpSkillScrn = NULL;
        mpSubHeap->freeAll();
    }
    if (mpInsectScrn) {
        delete mpInsectScrn;
        mpInsectScrn = NULL;
        mpSubHeap->freeAll();
    }
    mDoExt_setCurrentHeap(heap);
    delete mpAnmKey;
    mpAnmKey = NULL;
    for (int i = 0; i < 7; i++) {
        for (int j = 0; j < 6; j++) {
            if (mpSelPm[i][j]) {
                delete mpSelPm[i][j];
                mpSelPm[i][j] = NULL;
            }
        }
    }
    delete mpLinkPm;
    mpLinkPm = NULL;
    delete mpMaskPm;
    mpMaskPm = NULL;
    delete mpModelBg;
    mpModelBg = NULL;
    delete mpHeartParent;
    mpHeartParent = NULL;
    delete mpHeartPiece;
    mpHeartPiece = NULL;
    dComIfGp_getCollectResArchive()->removeResourceAll();
}

/* 801B0570-801B05A8 1AAEB0 0038+00 1/1 0/0 0/0 .text            initialize__17dMenu_Collect2D_cFv
 */
// Matches with sinit
#ifdef NONMATCHING
void dMenu_Collect2D_c::initialize() {
    (this->*init[mProcess])();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect2D_c::initialize() {
    nofralloc
#include "asm/d/menu/d_menu_collect/initialize__17dMenu_Collect2D_cFv.s"
}
#pragma pop
#endif

/* 801B05A8-801B061C 1AAEE8 0074+00 2/2 0/0 0/0 .text isFishIconVisible__17dMenu_Collect2D_cFv */
bool dMenu_Collect2D_c::isFishIconVisible() {
    if (dComIfGs_getFishNum(0) || dComIfGs_getFishNum(1) || dComIfGs_getFishNum(2) ||
        dComIfGs_getFishNum(3) || dComIfGs_getFishNum(4) || dComIfGs_getFishNum(5) ||
        g_drawHIO.mFishListScreen.mDebug)
    {
        return true;
    }
    return false;
}

/* 801B061C-801B071C 1AAF5C 0100+00 2/2 0/0 0/0 .text isSkillIconVisible__17dMenu_Collect2D_cFv */
bool dMenu_Collect2D_c::isSkillIconVisible() {
    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[338]) ||
        dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[339]) ||
        dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[340]) ||
        dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[341]) ||
        dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[342]) ||
        dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[343]) ||
        dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[344]))
    {
        return true;
    }
    return false;
}

/* 801B071C-801B074C 1AB05C 0030+00 2/2 0/0 0/0 .text isInsectIconVisible__17dMenu_Collect2D_cFv
 */
bool dMenu_Collect2D_c::isInsectIconVisible() {
    return dMenu_Insect_c::getGetInsectNum();
}

/* ############################################################################################## */
/* 80394F78-80394F88 0215D8 000C+04 3/3 0/0 0/0 .rodata          @3778 */
SECTION_RODATA static u8 const lit_3778[12 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80394F78, &lit_3778);

/* 80394F88-80394FA0 0215E8 0018+00 0/1 0/0 0/0 .rodata          text_sv$4768 */
#pragma push
#pragma force_active on
static const u64 text_sv[3] = {
    'sav_0',
    'sav_1',
    'sav_2',
};
#pragma pop

/* 80394FA0-80394FB8 021600 0018+00 0/1 0/0 0/0 .rodata          text_op$4769 */
#pragma push
#pragma force_active on
static const u64 text_op[3] = {
    'opt_0',
    'opt_1',
    'opt_2',
};
#pragma pop

/* 80394FB8-80394FD0 021618 0018+00 0/1 0/0 0/0 .rodata          ftext_sv$4770 */
#pragma push
#pragma force_active on
static const u64 ftext_sv[3] = {
    'f_sav_0',
    'f_sav_1',
    'f_sav_2',
};
#pragma pop

/* 80394FD0-80394FE8 021630 0018+00 0/1 0/0 0/0 .rodata          ftext_op$4771 */
#pragma push
#pragma force_active on
static const u64 ftext_op[3] = {
    'f_opt_0',
    'f_opt_1',
    'f_opt_2',
};
#pragma pop

/* 80394FE8-80395010 021648 0028+00 0/1 0/0 0/0 .rodata          text_a_tag$4777 */
#pragma push
#pragma force_active on
static const u64 text_a_tag_4777[5] = {
    'atext1_1', 'atext1_2', 'atext1_3', 'atext1_4', 'atext1_5',
};
#pragma pop

/* 80395010-80395038 021670 0028+00 0/1 0/0 0/0 .rodata          text_b_tag$4778 */
#pragma push
#pragma force_active on
static const u64 text_b_tag_4778[5] = {
    'btext1_1', 'btext1_2', 'btext1_3', 'btext1_4', 'btext1_5',
};
#pragma pop

/* 80453F30-80453F34 002530 0004+00 2/2 0/0 0/0 .sdata2          @5173 */
SECTION_SDATA2 static f32 lit_5173 = 0.5f;

/* 80453F34-80453F38 002534 0004+00 2/2 0/0 0/0 .sdata2          @5174 */
SECTION_SDATA2 static f32 lit_5174 = -1000.0f;

/* 801B074C-801B1C3C 1AB08C 14F0+00 1/1 0/0 0/0 .text            screenSet__17dMenu_Collect2D_cFv */
// issues with addi instructions
#ifdef NONMATCHING
void dMenu_Collect2D_c::screenSet() {
    static_cast<J2DTextBox*>(mpScreen->search('f_t00'))->setFont(mDoExt_getRubyFont());
    static_cast<J2DTextBox*>(mpScreen->search('f_t00'))->setString(0x20, "");
    dMeter2Info_getStringKanji(
        0x3E1, static_cast<J2DTextBox*>(mpScreen->search('f_t00'))->getStringPtr(), NULL);
    mpScreen->search('t_t00')->hide();

    for (int i = 0; i < 3; i++) {
        static_cast<J2DTextBox*>(mpScreen->search(ftext_sv[i]))->setFont(mDoExt_getMesgFont());
        static_cast<J2DTextBox*>(mpScreen->search(ftext_op[i]))->setFont(mDoExt_getMesgFont());
        static_cast<J2DTextBox*>(mpScreen->search(ftext_sv[i]))->setString(0x20, "");
        static_cast<J2DTextBox*>(mpScreen->search(ftext_op[i]))->setString(0x20, "");
        dMeter2Info_getStringKanji(
            0x60, static_cast<J2DTextBox*>(mpScreen->search(ftext_sv[i]))->getStringPtr(), NULL);
        dMeter2Info_getStringKanji(
            0x5F, static_cast<J2DTextBox*>(mpScreen->search(ftext_op[i]))->getStringPtr(), NULL);
        mpScreen->search(ftext_sv[i])->hide();
        mpScreen->search(ftext_op[i])->hide();
    }

    for (int i = 0; i < 5; i++) {
        static_cast<J2DTextBox*>(mpScreenIcon->search(text_a_tag_4777[i]))
            ->setFont(mDoExt_getMesgFont());
        static_cast<J2DTextBox*>(mpScreenIcon->search(text_b_tag_4778[i]))
            ->setFont(mDoExt_getMesgFont());
        static_cast<J2DTextBox*>(mpScreenIcon->search(text_a_tag_4777[i]))->setString(0x20, "");
        static_cast<J2DTextBox*>(mpScreenIcon->search(text_b_tag_4778[i]))->setString(0x20, "");
    }

    static_cast<J2DTextBox*>(mpScreen->search('item_n04'))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search('item_n05'))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search('item_n06'))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search('item_n07'))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search('item_n04'))->setString(0x20, "");
    static_cast<J2DTextBox*>(mpScreen->search('item_n05'))->setString(0x20, "");
    static_cast<J2DTextBox*>(mpScreen->search('item_n06'))->setString(0x20, "");
    static_cast<J2DTextBox*>(mpScreen->search('item_n07'))->setString(0x20, "");
    static_cast<J2DTextBox*>(mpScreen->search('f_text1'))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search('f_text0'))->setFont(mDoExt_getMesgFont());
    static_cast<J2DTextBox*>(mpScreen->search('f_text1'))->setString(0x100, "");
    static_cast<J2DTextBox*>(mpScreen->search('f_text0'))->setString(0x100, "");

    mpScreen->search('item_n00')->hide();
    mpScreen->search('item_n01')->hide();
    mpScreen->search('item_n02')->hide();
    mpScreen->search('item_n03')->hide();
    mpScreen->search('i_text1')->hide();
    mpScreen->search('i_text0')->hide();

    field_0x22d[0][0] = 0;
    field_0x22d[1][0] = 0;
    field_0x22d[2][0] = 0;
    field_0x22d[3][0] = dComIfGs_isItemFirstBit(0x28) ||
                                (dComIfGs_isItemFirstBit(0x3F) && !dComIfGs_isEventBit(0x302)) ?
                            true :
                            false;

    if (field_0x22d[3][0] != 0) {
        if (dComIfGs_isItemFirstBit(0x28)) {
            mpScreen->search('ken_00')->hide();
            mpScreen->search('ken_01')->show();
        } else if (dComIfGs_isItemFirstBit(0x3F) && !dComIfGs_isEventBit(0x302)) {
            mpScreen->search('ken_00')->show();
            mpScreen->search('ken_01')->hide();
        }
    }

    field_0x22d[4][0] =
        dComIfGs_isItemFirstBit(0x29) || dComIfGs_isItemFirstBit(0x49) ? true : false;
    if (dComIfGs_getMaxLife() > 15) {
        field_0x22d[5][0] = 1;
    } else {
        field_0x22d[5][0] = 0;
    }
    field_0x22d[6][0] = dMenu_Collect3D_c::getMaskMdlVisible();
    field_0x22d[0][1] = 0;
    field_0x22d[1][1] = 0;
    field_0x22d[2][1] = 0;

    field_0x22d[3][1] =
        dComIfGs_isItemFirstBit(0x2B) || dComIfGs_isItemFirstBit(0x2A) ? true : false;
    if (field_0x22d[3][1] != 0) {
        if (dComIfGs_isItemFirstBit(0x2B)) {
            mpScreen->search('tate_00')->show();
            mpScreen->search('tate_01')->hide();
        } else if (dComIfGs_isItemFirstBit(0x2A)) {
            mpScreen->search('tate_00')->hide();
            mpScreen->search('tate_01')->show();
        }
    }
    field_0x22d[4][1] = dComIfGs_isItemFirstBit(0x2C);
    field_0x22d[5][1] = 0;
    field_0x22d[6][1] = 0;
    field_0x22d[0][2] = 0;
    field_0x22d[1][2] = 0;
    field_0x22d[2][2] = 0;
    if (dComIfGs_getSelectEquipClothes() == WEAR_CASUAL) {
        field_0x22d[3][2] = 0;
        field_0x22d[4][2] = 0;
        field_0x22d[5][2] = 0;
    } else {
        field_0x22d[3][2] = dComIfGs_isItemFirstBit(0x2F);
        field_0x22d[4][2] = dComIfGs_isItemFirstBit(0x31);
        field_0x22d[5][2] = dComIfGs_isItemFirstBit(0x30);
    }
    field_0x22d[6][2] = 0;
    field_0x22d[0][3] = 1;
    if (checkItemGet(BOW, 1)) {
        field_0x22d[1][3] = 1;
    } else {
        field_0x22d[1][3] = 0;
    }
    if (isInsectIconVisible()) {
        field_0x22d[2][3] = 1;
    } else {
        field_0x22d[2][3] = 0;
    }
    field_0x22d[3][3] = isSkillIconVisible();
    field_0x22d[4][3] = 0;
    field_0x22d[5][3] = 0;
    field_0x22d[6][3] = 0;
    if (dComIfGs_getCollectSmell() != NO_ITEM) {
        field_0x22d[0][4] = 1;
    } else {
        field_0x22d[0][4] = 0;
    }
    field_0x22d[1][4] = dComIfGs_getPohSpiritNum();
    if (isFishIconVisible()) {
        field_0x22d[2][4] = 1;
    } else {
        field_0x22d[2][4] = 0;
    }
    if (g_drawHIO.mLetterSelectScreen.mLetterNum > 0) {
        field_0x22d[3][4] = 1;
    } else {
        if (dMeter2Info_getRecieveLetterNum()) {
            field_0x22d[3][4] = 1;
        } else {
            field_0x22d[3][4] = 0;
        }
    }
    field_0x22d[4][4] = 0;
    field_0x22d[5][4] = 0;
    field_0x22d[6][4] = 0;
    field_0x22d[0][5] = 1;
    field_0x22d[1][5] = 1;
    field_0x22d[2][5] = 0;
    field_0x22d[3][5] = 0;
    field_0x22d[4][5] = 0;
    field_0x22d[5][5] = 0;
    field_0x22d[6][5] = 0;
    field_0x184[0][0] = 0;
    field_0x184[1][0] = 0;
    field_0x184[2][0] = 0;
    if (dComIfGs_isItemFirstBit(0x28)) {
        field_0x184[3][0] = 0x18d;
    } else {
        field_0x184[3][0] = 0x1a4;
    }
    if (dComIfGs_isItemFirstBit(0x49)) {
        field_0x184[4][0] = 0x1ae;
    } else {
        field_0x184[4][0] = 0x18e;
    }
    field_0x184[5][0] = 0x186;
    if (field_0x22d[6][0] == 2) {
        if (dMenu_Collect3D_c::getMirrorNum() >= 4) {
            field_0x184[6][0] = 0x20c;
        } else {
            if (dMenu_Collect3D_c::getMirrorNum() >= 2) {
                field_0x184[6][0] = 0x20b;
            } else {
                field_0x184[6][0] = 0x20a;
            }
        }
    } else {
        if (dMenu_Collect3D_c::getCrystalNum() <= 1) {
            field_0x184[6][0] = 0x5aa;
        } else {
            field_0x184[6][0] = 0x5ab;
        }
    }
    field_0x184[0][1] = 0;
    field_0x184[1][1] = 0;
    field_0x184[2][1] = 0;
    if (dComIfGs_isItemFirstBit(0x2B)) {
        field_0x184[3][1] = 0x190;
    } else {
        field_0x184[3][1] = 0x18f;
    }
    field_0x184[4][1] = 0x191;
    field_0x184[5][1] = 0x192;
    field_0x184[6][1] = 0;
    field_0x184[0][2] = 0;
    field_0x184[1][2] = 0;
    field_0x184[2][2] = 0;
    field_0x184[3][2] = 0x194;
    field_0x184[4][2] = 0x196;
    field_0x184[5][2] = 0x195;
    field_0x184[6][2] = 0;
    if (dComIfGs_getRupeeMax() == WALLET_MAX) {
        field_0x184[0][3] = 0x199;
    } else if (dComIfGs_getRupeeMax() == BIG_WALLET_MAX) {
        field_0x184[0][3] = 0x19a;
    } else {
        field_0x184[0][3] = 0x19b;
    }
    if (dComIfGs_getArrowMax() == QUIVER_MAX) {
        field_0x184[1][3] = 0x1b9;
    } else if (dComIfGs_getArrowMax() == BIG_QUIVER_MAX) {
        field_0x184[1][3] = 0x1ba;
    } else {
        field_0x184[1][3] = 0x1bb;
    }
    field_0x184[2][3] = 0x5b8;
    field_0x184[3][3] = 0x5b0;
    field_0x184[4][3] = 0;
    field_0x184[5][3] = 0;
    field_0x184[6][3] = 0;
    field_0x184[0][4] = dMsgObject_getSmellTypeMessageID();
    field_0x184[1][4] = 0x245;
    field_0x184[2][4] = 0x5a1;
    field_0x184[3][4] = 0x4c8;
    field_0x184[4][4] = 0;
    field_0x184[5][4] = 0;
    field_0x184[6][4] = 0;
    field_0x184[0][5] = 0x60;
    field_0x184[1][5] = 0x5f;
    field_0x184[2][5] = 0;
    field_0x184[3][5] = 0;
    field_0x184[4][5] = 0;
    field_0x184[5][5] = 0;
    field_0x184[6][5] = 0;
    field_0x1d8[0][0] = 0;
    field_0x1d8[1][0] = 0;
    field_0x1d8[2][0] = 0;
    field_0x1d8[3][0] = field_0x184[3][0] + 0x100;
    field_0x1d8[4][0] = field_0x184[4][0] + 0x100;
    field_0x1d8[5][0] = field_0x184[5][0] + 0x100;
    if (field_0x22d[6][0] == 2) {
        if (dMenu_Collect3D_c::getMirrorNum() >= 4) {
            field_0x1d8[6][0] = 0x30c;
        } else {
            if (dMenu_Collect3D_c::getMirrorNum() >= 2) {
                field_0x1d8[6][0] = 0x30b;
            } else {
                field_0x1d8[6][0] = 0x30a;
            }
        }
    } else {
        if (dMenu_Collect3D_c::getCrystalNum() <= 1) {
            field_0x1d8[6][0] = 0x5ac;
        } else {
            field_0x1d8[6][0] = 0x5ad;
        }
    }
    field_0x1d8[0][1] = 0;
    field_0x1d8[1][1] = 0;
    field_0x1d8[2][1] = 0;
    field_0x1d8[3][1] = field_0x184[3][1] + 0x100;
    field_0x1d8[4][1] = field_0x184[4][1] + 0x100;
    field_0x1d8[5][1] = field_0x184[5][1] + 0x100;
    field_0x1d8[6][1] = 0;
    field_0x1d8[0][2] = 0;
    field_0x1d8[1][2] = 0;
    field_0x1d8[2][2] = 0;
    field_0x1d8[3][2] = field_0x184[3][2] + 0x100;
    field_0x1d8[4][2] = field_0x184[4][2] + 0x100;
    field_0x1d8[5][2] = field_0x184[5][2] + 0x100;
    field_0x1d8[6][2] = 0;
    field_0x1d8[0][3] = field_0x184[0][3] + 0x100;
    field_0x1d8[1][3] = field_0x184[1][3] + 0x100;
    field_0x1d8[2][3] = 0x5b9;
    field_0x1d8[2][3] = 0x5b1;
    field_0x1d8[3][3] = 0;
    field_0x1d8[5][3] = 0;
    field_0x1d8[6][3] = 0;
    field_0x1d8[0][4] = dMsgObject_getSmellTypeMessageID() + 0x100;
    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[456])) {
        field_0x1d8[1][4] = 0x12d8;
    } else {
        field_0x1d8[1][4] = field_0x184[1][4] + 0x100;
    }
    field_0x1d8[2][4] = 0x5a2;
    field_0x1d8[3][4] = 0x4c9;
    field_0x1d8[4][4] = 0;
    field_0x1d8[5][4] = 0;
    field_0x1d8[6][4] = 0;
    field_0x1d8[0][5] = 0x4c5;
    field_0x1d8[1][5] = 0x4c6;
    field_0x1d8[2][5] = 0;
    field_0x1d8[3][5] = 0;
    field_0x1d8[4][5] = 0;
    field_0x1d8[5][5] = 0;
    field_0x1d8[6][5] = 0;
    mCursorX = dMeter2Info_getCollectCursorPosX();
    mCursorY = dMeter2Info_getCollectCursorPosY();
    if (dMenu_Collect3D_c::getMaskMdlVisible() == 0) {
        if (mCursorX == 6 && mCursorY == 0) {
            mCursorX = 3;
            mCursorY = 0;
        }
    }
    field_0x259 = mCursorX;
    field_0x25a = mCursorY;
    mCurrentAString = 0;
    mCurrentBString = 0;
    field_0x180 = 0;
    mItemNameString = 0;
    mEquippedSword = 0xff;
    mEquippedShield = 0xff;
    mEquippedClothes = 0xff;
    mSubWindowOpenCheck = 0;
    field_0x25f = 0;
    field_0x260 = 0xff;
    field_0x261 = 0xff;
    setEquipItemFrameColorSword(-1);
    setEquipItemFrameColorShield(-1);
    setEquipItemFrameColorClothes(-1);
    u8 i_copy;
    u8 j_copy;
    bool bVar18 = false;
    bool bVar2 = false;
    for (int i = 0; i < 7; i++) {
        for (int j = 0; j < 6; j++) {
            if (getItemTag(i, j, true)) {
                mpSelPm[i][j] = new CPaneMgr(mpScreen, getItemTag(i, j, true), 0, NULL);
                if (!bVar18) {
                    i_copy = i;
                    j_copy = j;
                    bVar18 = true;
                }
                if (!bVar2) {
                    if (mCursorX == i && mCursorY == j) {
                        bVar2 = true;
                    }
                }
            } else {
                mpSelPm[i][j] = NULL;
            }
            if (getItemTag(i, j, false)) {
                if (field_0x22d[i][j] != 0 || (i == 5 && j == 0)) {
                    mpScreen->search(getItemTag(i, j, false))->show();
                } else {
                    mpScreen->search(getItemTag(i, j, false))->hide();
                }
            }
        }
    }
    if (!bVar2) {
        mCursorX = i_copy;
        mCursorY = j_copy;
    }
    mpLinkPm = new CPaneMgr(mpScreen, 'linki_n', 0, NULL);
    mLinkGlobalCenterPos.x = mpLinkPm->getInitGlobalCenterPosX();
    mLinkGlobalCenterPos.y = mpLinkPm->getInitGlobalCenterPosY();
    mLinkGlobalCenterPos.z = -1000.0f;
    mpMaskPm = new CPaneMgr(mpScreen, 'kamen_n', 0, NULL);
    mpModelBg = new CPaneMgr(mpScreen, 'modelbgn', 2, NULL);
    mpHeartParent = new CPaneMgr(mpScreen, 'heart_n', 0, NULL);
    mpHeartPiece = new CPaneMgr(mpScreen, 'heart_kn', 0, NULL);
    setAButtonString(mCurrentAString);
    setBButtonString(mCurrentBString);
    setItemNameString(mCursorX, mCursorY);
    cursorPosSet();
    setArrowMaxNum(dComIfGs_getArrowMax());
    setWalletMaxNum(dComIfGs_getRupeeMax());
    setSmellType();
    setHeartPiece();
    setPohMaxNum(dComIfGs_getPohSpiritNum());
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect2D_c::screenSet() {
    nofralloc
#include "asm/d/menu/d_menu_collect/screenSet__17dMenu_Collect2D_cFv.s"
}
#pragma pop
#endif

/* 801B1C3C-801B1CE0 1AC57C 00A4+00 1/1 0/0 0/0 .text            animationSet__17dMenu_Collect2D_cFv
 */
// matches with literals
#ifdef NONMATCHING
void dMenu_Collect2D_c::animationSet() {
    OSInitFastCast();
    void* resource =
        JKRGetNameResource("zelda_collect_soubi_screen_revo.btk", dComIfGp_getCollectResArchive());
    mpAnmKey = (J2DAnmTextureSRTKey*)J2DAnmLoaderDataBase::load(resource);
    mpAnmKey->searchUpdateMaterialID(mpScreen);
    field_0x34 = 0.0f;
    mFrame = 0.0f;
    field_0x3c = 0.0f;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect2D_c::animationSet() {
    nofralloc
#include "asm/d/menu/d_menu_collect/animationSet__17dMenu_Collect2D_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80453F38-80453F40 002538 0008+00 2/2 0/0 0/0 .sdata2          @5199 */
SECTION_SDATA2 static f64 lit_5199 = 4503601774854144.0 /* cast s32 to float */;

/* 801B1CE0-801B1EDC 1AC620 01FC+00 1/1 0/0 0/0 .text
 * btkAnimeLoop0__17dMenu_Collect2D_cFP19J2DAnmTextureSRTKey    */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Collect2D_c::btkAnimeLoop0(J2DAnmTextureSRTKey* i_SRTKey) {
    if (i_SRTKey != NULL) {
        mFrame++;
        if (mFrame >= i_SRTKey->getFrameMax()) {
            mFrame -= i_SRTKey->getFrameMax();
        }
        i_SRTKey->setFrame(mFrame);
    } else {
        mFrame = 0.0f;
    }
    static_cast<J2DTextBox*>(mpScreen->search('modelbg0'))->setAnimation(i_SRTKey);
    static_cast<J2DTextBox*>(mpScreen->search('modelbg1'))->setAnimation(i_SRTKey);
    static_cast<J2DTextBox*>(mpScreen->search('modelbg2'))->setAnimation(i_SRTKey);
    static_cast<J2DTextBox*>(mpScreen->search('modelbg3'))->setAnimation(i_SRTKey);
    static_cast<J2DTextBox*>(mpScreen->search('modelbg4'))->setAnimation(i_SRTKey);
    static_cast<J2DTextBox*>(mpScreen->search('modelbg5'))->setAnimation(i_SRTKey);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect2D_c::btkAnimeLoop0(J2DAnmTextureSRTKey* param_0) {
    nofralloc
#include "asm/d/menu/d_menu_collect/btkAnimeLoop0__17dMenu_Collect2D_cFP19J2DAnmTextureSRTKey.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80453F40-80453F44 002540 0004+00 1/1 0/0 0/0 .sdata2          @5268 */
SECTION_SDATA2 static f32 lit_5268 = 150.0f;

/* 80453F44-80453F48 002544 0004+00 1/1 0/0 0/0 .sdata2          @5269 */
SECTION_SDATA2 static f32 lit_5269 = 1.0f / 5.0f;

/* 80453F48-80453F50 002548 0008+00 1/1 0/0 0/0 .sdata2          @5271 */
SECTION_SDATA2 static f64 lit_5271 = 4503599627370496.0 /* cast u32 to float */;

/* 801B1EDC-801B1FAC 1AC81C 00D0+00 1/1 0/0 0/0 .text            setBackAlpha__17dMenu_Collect2D_cFv
 */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Collect2D_c::setBackAlpha() {
    f32 alpha = mpBlackTex->getAlpha() / 150.0f;

    switch (mProcess) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
        if (alpha < 1.0f) {
            alpha += 0.2f;
        }
        if (alpha > 1.0f) {
            alpha = 1.0f;
        }
        break;

    default:
        if (alpha > 0.0f) {
            alpha -= 0.2f;
        }
        if (alpha < 0.0f) {
            alpha = 0.0f;
        }
        break;
    }

    mpBlackTex->setAlpha(alpha * 150.0f);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect2D_c::setBackAlpha() {
    nofralloc
#include "asm/d/menu/d_menu_collect/setBackAlpha__17dMenu_Collect2D_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80395038-80395044 021698 0009+03 1/1 0/0 0/0 .rodata          @5343 */
SECTION_RODATA static u8 const lit_5343[9 + 3 /* padding */] = {
    0x03,
    0x03,
    0x04,
    0x03,
    0x04,
    0x05,
    0x04,
    0x05,
    0x05,
    /* padding */
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80395038, &lit_5343);

/* 80395044-80395050 0216A4 0009+03 1/1 0/0 0/0 .rodata          @5344 */
SECTION_RODATA static u8 const lit_5344[9 + 3 /* padding */] = {
    0x02,
    0x01,
    0x02,
    0x00,
    0x01,
    0x02,
    0x00,
    0x01,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80395044, &lit_5344);

/* 80453F50-80453F54 002550 0004+00 1/1 0/0 0/0 .sdata2          @5402 */
SECTION_SDATA2 static u32 lit_5402 = 0x03020301;

/* 80453F54-80453F58 002554 0004+00 1/1 0/0 0/0 .sdata2          None */
SECTION_SDATA2 static u32 data_80453F54 = 0x02000100;

/* 80453F58-80453F5C 002558 0004+00 1/1 0/0 0/0 .sdata2          @5403 */
SECTION_SDATA2 static u32 lit_5403 = 0x03030403;

/* 80453F5C-80453F60 00255C 0004+00 1/1 0/0 0/0 .sdata2          None */
SECTION_SDATA2 static u32 data_80453F5C = 0x04030404;

/* 80453F60-80453F64 002560 0004+00 6/6 0/0 0/0 .sdata2          @5531 */
SECTION_SDATA2 static f32 lit_5531 = -1.0f;

/* 801B1FAC-801B27EC 1AC8EC 0840+00 1/1 0/0 0/0 .text            cursorMove__17dMenu_Collect2D_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect2D_c::cursorMove() {
    nofralloc
#include "asm/d/menu/d_menu_collect/cursorMove__17dMenu_Collect2D_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80453F64-80453F68 002564 0004+00 1/1 0/0 0/0 .sdata2          @5611 */
SECTION_SDATA2 static f32 lit_5611 = 11.0f / 10.0f;

/* 80453F68-80453F6C 002568 0004+00 1/1 0/0 0/0 .sdata2          @5612 */
SECTION_SDATA2 static f32 lit_5612 = 17.0f / 20.0f;

/* 80453F6C-80453F70 00256C 0004+00 1/1 0/0 0/0 .sdata2          @5613 */
SECTION_SDATA2 static f32 lit_5613 = 1.0f / 20.0f;

/* 80453F70-80453F74 002570 0004+00 1/1 0/0 0/0 .sdata2          @5614 */
SECTION_SDATA2 static f32 lit_5614 = 3.0f / 5.0f;

/* 80453F74-80453F78 002574 0004+00 1/1 0/0 0/0 .sdata2          @5615 */
SECTION_SDATA2 static f32 lit_5615 = 3.0f / 100.0f;

/* 80453F78-80453F7C 002578 0004+00 1/1 0/0 0/0 .sdata2          @5616 */
SECTION_SDATA2 static f32 lit_5616 = 1.0f / 10.0f;

/* 80453F7C-80453F80 00257C 0004+00 1/1 0/0 0/0 .sdata2          @5617 */
SECTION_SDATA2 static f32 lit_5617 = 7.0f / 10.0f;

/* 801B27EC-801B2A74 1AD12C 0288+00 2/2 0/0 0/0 .text            cursorPosSet__17dMenu_Collect2D_cFv
 */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Collect2D_c::cursorPosSet() {
    for (int i = 0; i < 7; i++) {
        for (int j = 0; j < 6; j++) {
            if (getItemTag(i, j, true) != 0) {
                J2DPane* itemTag = mpScreen->search(getItemTag(i, j, true));
                if ((i != 0 || j != 0) && (i != 6 || j != 0)) {
                    if (j == 5) {
                        if (i == mCursorX && j == mCursorY) {
                            itemTag->scale(g_drawHIO.mCollectScreen.mSelectSaveOptionScale,
                                           g_drawHIO.mCollectScreen.mSelectSaveOptionScale);
                        } else {
                            itemTag->scale(g_drawHIO.mCollectScreen.mUnselectSaveOptionScale,
                                           g_drawHIO.mCollectScreen.mUnselectSaveOptionScale);
                        }
                    } else if (i == mCursorX && j == mCursorY) {
                        itemTag->scale(g_drawHIO.mCollectScreen.mSelectItemScale,
                                       g_drawHIO.mCollectScreen.mSelectItemScale);
                    } else {
                        itemTag->scale(g_drawHIO.mCollectScreen.mUnselectItemScale,
                                       g_drawHIO.mCollectScreen.mUnselectItemScale);
                    }
                }
            }
        }
    }

    mpDrawCursor->setAlphaRate(1.0f);
    Vec pos = mpSelPm[mCursorX][mCursorY]->getGlobalVtxCenter(false, 0);
    mpDrawCursor->setPos(pos.x, pos.y, mpSelPm[mCursorX][mCursorY]->getPanePtr(), false);
    if (mCursorY == 5) {
        mpDrawCursor->setParam(1.1f, 0.85f, 0.05f, 0.5f, 0.5f);
    } else if (mCursorX == 6 && mCursorY == 0) {
        mpDrawCursor->setParam(0.6f, 0.85f, 0.03f, 0.6f, 0.6f);
    } else {
        mpDrawCursor->setParam(1.0f, 1.0f, 0.1f, 0.7f, 0.7f);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect2D_c::cursorPosSet() {
    nofralloc
#include "asm/d/menu/d_menu_collect/cursorPosSet__17dMenu_Collect2D_cFv.s"
}
#pragma pop
#endif

/* 801B2A74-801B2D00 1AD3B4 028C+00 1/1 0/0 0/0 .text            changeSword__17dMenu_Collect2D_cFv
 */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Collect2D_c::changeSword() {
    switch (mCursorX) {
    case 3:
        if (dComIfGs_isItemFirstBit(SWORD)) {
            if (dComIfGs_getSelectEquipSword() != SWORD) {
                dMeter2Info_setSword(SWORD, false);
                setEquipItemFrameColorSword(0);
                mDoAud_seStart(Z2SE_SY_ITEM_SET_X, NULL, 0, 0);
                dMeter2Info_set2DVibration();
            }
        } else if (dComIfGs_getSelectEquipSword() != WOOD_STICK) {
            dMeter2Info_setSword(WOOD_STICK, false);
            setEquipItemFrameColorSword(0);
            Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_SET_X, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            dMeter2Info_set2DVibration();
        }
        break;
    case 4:
        if (dComIfGs_isItemFirstBit(LIGHT_SWORD)) {
            if (dComIfGs_getSelectEquipSword() != LIGHT_SWORD) {
                dMeter2Info_setSword(LIGHT_SWORD, false);
                setEquipItemFrameColorSword(1);
                Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_SET_X, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                         0);
                dMeter2Info_set2DVibration();
            }
        } else if (dComIfGs_getSelectEquipSword() != MASTER_SWORD) {
            dMeter2Info_setSword(MASTER_SWORD, false);
            setEquipItemFrameColorSword(1);
            Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_SET_X, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            dMeter2Info_set2DVibration();
        }
        break;
    case 5:
        if (dComIfGs_getSelectEquipSword() != LIGHT_SWORD) {
            dMeter2Info_setSword(LIGHT_SWORD, false);
            setEquipItemFrameColorSword(2);
            Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_SET_X, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            dMeter2Info_set2DVibration();
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect2D_c::changeSword() {
    nofralloc
#include "asm/d/menu/d_menu_collect/changeSword__17dMenu_Collect2D_cFv.s"
}
#pragma pop
#endif

/* 801B2D00-801B2EE4 1AD640 01E4+00 1/1 0/0 0/0 .text            changeShield__17dMenu_Collect2D_cFv
 */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Collect2D_c::changeShield() {
    switch (mCursorX) {
    case 3:
        if (dComIfGs_isItemFirstBit(SHIELD)) {
            if (dComIfGs_getSelectEquipShield() != SHIELD) {
                dMeter2Info_setShield(SHIELD, false);
                setEquipItemFrameColorShield(0);
                daAlink_getAlinkActorClass()->setShieldChange();
                Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_SET_X, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                         0);
                dMeter2Info_set2DVibration();
            }
        } else if (dComIfGs_isItemFirstBit(WOOD_SHIELD)) {
            if (dComIfGs_getSelectEquipShield() != WOOD_SHIELD) {
                dMeter2Info_setShield(WOOD_SHIELD, false);
                setEquipItemFrameColorShield(0);
                daAlink_getAlinkActorClass()->setShieldChange();
                Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_SET_X, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                         0);
                dMeter2Info_set2DVibration();
            }
        }
        break;
    case 4:
        if (dComIfGs_getSelectEquipShield() != HYLIA_SHIELD) {
            dMeter2Info_setShield(HYLIA_SHIELD, false);
            setEquipItemFrameColorShield(1);
            daAlink_getAlinkActorClass()->setShieldChange();
            Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_SET_X, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            dMeter2Info_set2DVibration();
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect2D_c::changeShield() {
    nofralloc
#include "asm/d/menu/d_menu_collect/changeShield__17dMenu_Collect2D_cFv.s"
}
#pragma pop
#endif

/* 801B2EE4-801B30C8 1AD824 01E4+00 1/1 0/0 0/0 .text            changeClothe__17dMenu_Collect2D_cFv
 */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Collect2D_c::changeClothe() {
    switch (mCursorX) {
    case 3:
        if (dComIfGs_getSelectEquipClothes() != WEAR_KOKIRI) {
            dMeter2Info_setCloth(WEAR_KOKIRI, false);
            setEquipItemFrameColorClothes(0);
            daPy_getPlayerActorClass()->setClothesChange(0);
            Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_SET_X, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            dMeter2Info_set2DVibration();
        }
        break;
    case 4:
        if (dComIfGs_getSelectEquipClothes() != WEAR_ZORA) {
            dMeter2Info_setCloth(WEAR_ZORA, false);
            setEquipItemFrameColorClothes(1);
            daPy_getPlayerActorClass()->setClothesChange(0);
            Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_SET_X, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            dMeter2Info_set2DVibration();
        }
        break;
    case 5:
        if (dComIfGs_getSelectEquipClothes() != ARMOR) {
            dMeter2Info_setCloth(ARMOR, false);
            setEquipItemFrameColorClothes(2);
            daPy_getPlayerActorClass()->setClothesChange(0);
            Z2GetAudioMgr()->seStart(Z2SE_SY_ITEM_SET_X, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            dMeter2Info_set2DVibration();
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect2D_c::changeClothe() {
    nofralloc
#include "asm/d/menu/d_menu_collect/changeClothe__17dMenu_Collect2D_cFv.s"
}
#pragma pop
#endif

/* 801B30C8-801B3340 1ADA08 0278+00 1/1 0/0 0/0 .text setArrowMaxNum__17dMenu_Collect2D_cFUc */
void dMenu_Collect2D_c::setArrowMaxNum(u8 param_0) {
    switch (param_0) {
    case 0:
        mpScreen->search('item_0_0')->hide();
        mpScreen->search('item_0_1')->hide();
        mpScreen->search('item_0_2')->hide();
        break;
    case 30:
        mpScreen->search('item_0_0')->show();
        mpScreen->search('item_0_1')->hide();
        mpScreen->search('item_0_2')->hide();
        break;
    case 60:
        mpScreen->search('item_0_0')->hide();
        mpScreen->search('item_0_1')->show();
        mpScreen->search('item_0_2')->hide();
        break;
    case 100:
        mpScreen->search('item_0_0')->hide();
        mpScreen->search('item_0_1')->hide();
        mpScreen->search('item_0_2')->show();
        break;
    }
}

/* 801B3340-801B3524 1ADC80 01E4+00 1/1 0/0 0/0 .text setWalletMaxNum__17dMenu_Collect2D_cFUs */
void dMenu_Collect2D_c::setWalletMaxNum(u16 i_walletSize) {
    switch (i_walletSize) {
    case 300:
        mpScreen->search('item_1_0')->show();
        mpScreen->search('item_1_1')->hide();
        mpScreen->search('item_1_2')->hide();
        break;
    case 600:
        mpScreen->search('item_1_0')->hide();
        mpScreen->search('item_1_1')->show();
        mpScreen->search('item_1_2')->hide();
        break;
    case 1000:
        mpScreen->search('item_1_0')->hide();
        mpScreen->search('item_1_1')->hide();
        mpScreen->search('item_1_2')->show();
        break;
    }
}

/* 801B3524-801B3640 1ADE64 011C+00 1/1 0/0 0/0 .text            setSmellType__17dMenu_Collect2D_cFv
 */
void dMenu_Collect2D_c::setSmellType() {
    static const u64 smell_tag[5] = {
        'wolf_med', 'wolf_chi', 'wolf_fis', 'wolf_iri', 'wolf_pou',
    };
    s32 smellType = -1;
    switch (dComIfGs_getCollectSmell()) {
    case SMELL_YELIA_POUCH:
        smellType = 3;
        break;
    case SMELL_POH:
        smellType = 4;
        break;
    case SMELL_FISH:
        smellType = 2;
        break;
    case SMELL_CHILDREN:
        smellType = 1;
        break;
    case SMELL_MEDICINE:
        smellType = 0;
        break;
    }
    for (int i = 0; i < 5; i++) {
        if (i == smellType) {
            mpScreen->search(smell_tag[i])->show();
        } else {
            mpScreen->search(smell_tag[i])->hide();
        }
    }
}

/* 801B3640-801B370C 1ADF80 00CC+00 1/1 0/0 0/0 .text setHeartPiece__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::setHeartPiece() {
    static const u64 heart_tag[4] = {
        'heart_1n',
        'heart_2n',
        'heart_3n',
        'heart_4n',
    };
    s32 life = dComIfGs_getMaxLife() % 5;
    for (int i = 0; i < MAX_VISIBLE_HEARTPIECES; i++) {
        if (i < life) {
            mpScreen->search(heart_tag[i])->show();
        } else {
            mpScreen->search(heart_tag[i])->hide();
        }
    }
}

/* 801B370C-801B39D0 1AE04C 02C4+00 1/1 0/0 0/0 .text setPohMaxNum__17dMenu_Collect2D_cFUc */
void dMenu_Collect2D_c::setPohMaxNum(u8 i_pohNum) {
    if (i_pohNum > MAX_POH_NUM) {
        i_pohNum = MAX_POH_NUM;
    }
    if (field_0x22d[0][3] != 0) {
        int div = i_pohNum / 100;
        s32 index = i_pohNum % 100;
        u8 check = 0;
        if (div > 0) {
            JKRArchive* archive = dComIfGp_getMain2DArchive();
            const char* textureName = dMeter2Info_getNumberTextureName(div);
            ResTIMG* timg = (ResTIMG*)archive->getResource('TIMG', textureName);
            static_cast<J2DPicture*>(mpScreen->search('item2_3'))->changeTexture(timg, 0);
            check = 1;
        } else {
            mpScreen->search('item2_3')->hide();
        }
        div = index / 10;
        index = index % 10;
        if (div != 0 || check != 0) {
            JKRArchive* archive = dComIfGp_getMain2DArchive();
            const char* textureName2 = dMeter2Info_getNumberTextureName(div);
            ResTIMG* timg2 = (ResTIMG*)archive->getResource('TIMG', textureName2);
            static_cast<J2DPicture*>(mpScreen->search('item2_2'))->changeTexture(timg2, 0);
        } else {
            mpScreen->search('item2_2')->hide();
        }
        JKRArchive* archive = dComIfGp_getMain2DArchive();
        const char* textureName3 = dMeter2Info_getNumberTextureName(index);
        ResTIMG* timg3 = (ResTIMG*)archive->getResource('TIMG', textureName3);
        static_cast<J2DPicture*>(mpScreen->search('item2_1'))->changeTexture(timg3, 0);
    } else {
        mpScreen->search('item2_3')->hide();
        mpScreen->search('item2_2')->hide();
        mpScreen->search('item2_1')->hide();
    }
}

/* 801B39D0-801B3CF4 1AE310 0324+00 2/2 0/0 0/0 .text
 * setEquipItemFrameColorSword__17dMenu_Collect2D_cFi           */
void dMenu_Collect2D_c::setEquipItemFrameColorSword(int i_frame) {
    static const u64 tag[2] = {
        'ken_g_0',
        'ken_g_1',
    };

    if (i_frame == -1) {
        if (mEquippedSword != dComIfGs_getSelectEquipSword()) {
            mEquippedSword = dComIfGs_getSelectEquipSword();

            switch (mEquippedSword) {
            case SWORD:
                i_frame = 0;
                break;

            case WOOD_STICK:
                i_frame = 0;
                break;

            case MASTER_SWORD:
                i_frame = 1;
                break;

            case LIGHT_SWORD:
                if (dComIfGs_isItemFirstBit(LIGHT_SWORD)) {
                    i_frame = 1;
                }
                break;
            }

            for (int i = 0; i < 2; i++) {
                if (i == i_frame && field_0x22d[i + 3][0] != 0) {
                    static_cast<J2DPicture*>(mpScreen->search(tag[i]))
                        ->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                                        JUtility::TColor(255, 255, 0, 255));
                } else {
                    static_cast<J2DPicture*>(mpScreen->search(tag[i]))
                        ->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                                        JUtility::TColor(107, 107, 107, 255));
                }
            }
        }
    } else {
        for (int i = 0; i < 2; i++) {
            if (i == i_frame && field_0x22d[i + 3][0] != 0) {
                static_cast<J2DPicture*>(mpScreen->search(tag[i]))
                    ->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                                    JUtility::TColor(255, 255, 0, 255));
            } else {
                static_cast<J2DPicture*>(mpScreen->search(tag[i]))
                    ->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                                    JUtility::TColor(107, 107, 107, 255));
            }
        }
    }
}

/* 801B3CF4-801B3FDC 1AE634 02E8+00 2/2 0/0 0/0 .text
 * setEquipItemFrameColorShield__17dMenu_Collect2D_cFi          */
void dMenu_Collect2D_c::setEquipItemFrameColorShield(int i_frame) {
    static const u64 tag[2] = {
        'tate_g_0',
        'tate_g_1',
    };

    if (i_frame == -1) {
        if (mEquippedShield != dComIfGs_getSelectEquipShield()) {
            mEquippedShield = dComIfGs_getSelectEquipShield();

            switch (mEquippedShield) {
            case SHIELD:
            case WOOD_SHIELD:
                i_frame = 0;
                break;

            case HYLIA_SHIELD:
                i_frame = 1;
                break;
            }

            for (int i = 0; i < 2; i++) {
                if (i == i_frame && field_0x22d[i + 3][1] != 0) {
                    static_cast<J2DPicture*>(mpScreen->search(tag[i]))
                        ->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                                        JUtility::TColor(255, 255, 0, 255));
                } else {
                    static_cast<J2DPicture*>(mpScreen->search(tag[i]))
                        ->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                                        JUtility::TColor(107, 107, 107, 255));
                }
            }
        }
    } else {
        for (int i = 0; i < 2; i++) {
            if (i == i_frame && field_0x22d[i + 3][1] != 0) {
                static_cast<J2DPicture*>(mpScreen->search(tag[i]))
                    ->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                                    JUtility::TColor(255, 255, 0, 255));
            } else {
                static_cast<J2DPicture*>(mpScreen->search(tag[i]))
                    ->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                                    JUtility::TColor(107, 107, 107, 255));
            }
        }
    }
}

/* 801B3FDC-801B42D8 1AE91C 02FC+00 2/2 0/0 0/0 .text
 * setEquipItemFrameColorClothes__17dMenu_Collect2D_cFi         */
void dMenu_Collect2D_c::setEquipItemFrameColorClothes(int i_frame) {
    static const u64 tag[3] = {
        'fuku_g_0',
        'fuku_g_1',
        'fuku_g_2',
    };

    if (i_frame == -1) {
        if (mEquippedClothes != dComIfGs_getSelectEquipClothes()) {
            mEquippedClothes = dComIfGs_getSelectEquipClothes();

            switch (mEquippedClothes) {
            case WEAR_KOKIRI:
                i_frame = 0;
                break;

            case WEAR_ZORA:
                i_frame = 1;
                break;

            case ARMOR:
                i_frame = 2;
                break;
            }

            for (int i = 0; i < 3; i++) {
                if (i == i_frame && field_0x22d[i + 3][2] != 0) {
                    static_cast<J2DPicture*>(mpScreen->search(tag[i]))
                        ->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                                        JUtility::TColor(255, 255, 0, 255));
                } else {
                    static_cast<J2DPicture*>(mpScreen->search(tag[i]))
                        ->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                                        JUtility::TColor(107, 107, 107, 255));
                }
            }
        }
    } else {
        for (int i = 0; i < 3; i++) {
            if (i == i_frame && field_0x22d[i + 3][2] != 0) {
                static_cast<J2DPicture*>(mpScreen->search(tag[i]))
                    ->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                                    JUtility::TColor(255, 255, 0, 255));
            } else {
                static_cast<J2DPicture*>(mpScreen->search(tag[i]))
                    ->setBlackWhite(JUtility::TColor(0, 0, 0, 0),
                                    JUtility::TColor(107, 107, 107, 255));
            }
        }
    }
}

/* 801B42D8-801B46FC 1AEC18 0424+00 2/2 0/0 0/0 .text            setHIO__17dMenu_Collect2D_cFb */
void dMenu_Collect2D_c::setHIO(bool i_useHIO) {
    static const u64 kaz_n[9] = {
        'uzu_00', 'uzu_01', 'uzu_02', 'uzu_03', 'uzu_04', 'uzu_05', 'uzu_06', 'uzu_07', 'hishi',
    };

    if (mBlueSmokePosX != g_drawHIO.mCollectScreen.mBlueSmokePosX ||
        mBlueSmokePosY != g_drawHIO.mCollectScreen.mBlueSmokePosY)
    {
        mBlueSmokePosX = g_drawHIO.mCollectScreen.mBlueSmokePosX;
        mBlueSmokePosY = g_drawHIO.mCollectScreen.mBlueSmokePosY;
        mpModelBg->paneTrans(mBlueSmokePosX, mBlueSmokePosY);
    }

    if (mBlueSmokeScale != g_drawHIO.mCollectScreen.mBlueSmokeScale) {
        mBlueSmokeScale = g_drawHIO.mCollectScreen.mBlueSmokeScale;
        mpModelBg->scale(mBlueSmokeScale, mBlueSmokeScale);
    }

    if (mBlueSmokeAlpha != g_drawHIO.mCollectScreen.mBlueSmokeAlpha) {
        mBlueSmokeAlpha = g_drawHIO.mCollectScreen.mBlueSmokeAlpha;
        mpModelBg->setAlphaRate(mBlueSmokeAlpha);
    }

    if (mHeartVesselPosX != g_drawHIO.mCollectScreen.mHeartVesselPosX ||
        mHeartVesselPosY != g_drawHIO.mCollectScreen.mHeartVesselPosY)
    {
        mHeartVesselPosX = g_drawHIO.mCollectScreen.mHeartVesselPosX;
        mHeartVesselPosY = g_drawHIO.mCollectScreen.mHeartVesselPosY;
        mpHeartParent->paneTrans(mHeartVesselPosX, mHeartVesselPosY);
    }

    if (mHeartVesselScale != g_drawHIO.mCollectScreen.mHeartVesselScale) {
        mHeartVesselScale = g_drawHIO.mCollectScreen.mHeartVesselScale;
        mpHeartParent->scale(mHeartVesselScale, mHeartVesselScale);
    }

    if (mHeartPiecePosX != g_drawHIO.mCollectScreen.mHeartPiecePosX ||
        mHeartPiecePosY != g_drawHIO.mCollectScreen.mHeartPiecePosY)
    {
        mHeartPiecePosX = g_drawHIO.mCollectScreen.mHeartPiecePosX;
        mHeartPiecePosY = g_drawHIO.mCollectScreen.mHeartPiecePosY;
        mpHeartPiece->paneTrans(mHeartPiecePosX, mHeartPiecePosY);
    }

    if (mHeartPieceScale != g_drawHIO.mCollectScreen.mHeartPieceScale) {
        mHeartPieceScale = g_drawHIO.mCollectScreen.mHeartPieceScale;
        mpHeartPiece->scale(mHeartPieceScale, mHeartPieceScale);
    }

    if (g_drawHIO.mCollectScreen.mColorDebugON) {
        J2DPicture* basePicture = (J2DPicture*)mpScreen->search('nht_base');
        basePicture->setBlackWhite(g_drawHIO.mCollectScreen.mVesselBack[0],
                                   g_drawHIO.mCollectScreen.mVesselFront[0]);

        for (int i = 0; i < 9; i++) {
            J2DPicture* kazPicture = (J2DPicture*)mpScreen->search(kaz_n[i]);
            kazPicture->setBlackWhite(g_drawHIO.mCollectScreen.mVesselBack[1],
                                      g_drawHIO.mCollectScreen.mVesselFront[1]);
        }
    }

    if (g_drawHIO.mCollectScreen.mButtonDebugON || i_useHIO) {
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

/* 801B46FC-801B473C 1AF03C 0040+00 3/3 0/0 0/0 .text            getItemTag__17dMenu_Collect2D_cFiib
 */
u64 dMenu_Collect2D_c::getItemTag(int i_tag1, int i_tag2, bool param_3) {
    static const u64 itemTag[6][7] = {
        {0, 0, 0, 'ken_n0', 'ken_n1', 'heart_kn', 'kamen_n'},
        {0, 0, 0, 'tate_n0', 'tate_n1'},
        {
            0,
            0,
            0,
            'fuku_n0',
            'fuku_n1',
            'fuku_n2',
        },
        {
            'item_1_n',
            'item_0_n',
            'kabu_6n',
            'maki_5_n',
        },
        {
            'wolf_n',
            'item_2_n',
            'fish_3_n',
            'lett_4_n',
        },
        {'save_n', 'option_n'},
    };

    if (i_tag2 == 5 && !param_3) {
        return 0;
    }
    return itemTag[i_tag2][i_tag1];
}

/* 801B473C-801B48D0 1AF07C 0194+00 1/0 0/0 0/0 .text            wait_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::wait_init() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);

    if (mpSaveScrn != NULL) {
        mpSaveScrn->_delete();
        delete mpSaveScrn;
        mpSaveScrn = NULL;
        mpSubHeap->freeAll();
    }

    if (mpOptionScrn != NULL) {
        mpOptionScrn->_delete();
        delete mpOptionScrn;
        mpOptionScrn = NULL;
        mpSubHeap->freeAll();
    }

    if (mpLetterScrn != NULL) {
        delete mpLetterScrn;
        mpLetterScrn = NULL;
        mpSubHeap->freeAll();
    }

    if (mpFishingScrn != NULL) {
        delete mpFishingScrn;
        mpFishingScrn = NULL;
        mpSubHeap->freeAll();
    }

    if (mpSkillScrn != NULL) {
        delete mpSkillScrn;
        mpSkillScrn = NULL;
        mpSubHeap->freeAll();
    }

    if (mpInsectScrn != NULL) {
        delete mpInsectScrn;
        mpInsectScrn = NULL;
        mpSubHeap->freeAll();
    }

    mDoExt_setCurrentHeap(heap);
}

/* 801B48D0-801B4E14 1AF210 0544+00 1/0 0/0 0/0 .text            wait_proc__17dMenu_Collect2D_cFv */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Collect2D_c::wait_proc() {
    if (dMw_A_TRIGGER()) {
        if (mCursorX == 0 && mCursorY == 5) {
            if (mDoGph_gInf_c::getFader()->mStatus == 1) {
                mSubWindowOpenCheck = 1;
                Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_CHANGE_WINDOW, NULL, 0, 0, 1.0f, 1.0f, -1.0f,
                                         -1.0f, 0);
                dMeter2Info_set2DVibrationM();
            }
        } else if (mCursorX == 1 && mCursorY == 5) {
            if (mDoGph_gInf_c::getFader()->mStatus == 1) {
                mSubWindowOpenCheck = 2;
                Z2GetAudioMgr()->seStart(Z2SE_SY_MENU_CHANGE_WINDOW, NULL, 0, 0, 1.0f, 1.0f, -1.0f,
                                         -1.0f, 0);
                dMeter2Info_set2DVibrationM();
            }
        } else if (mCursorX == 3 && mCursorY == 4) {
            if (field_0x22d[3][4] != 0 && mDoGph_gInf_c::getFader()->mStatus == 1) {
                mSubWindowOpenCheck = 3;
                dMeter2Info_set2DVibration();
            }
        } else if (mCursorX == 2 && mCursorY == 4) {
            if (isFishIconVisible() && mDoGph_gInf_c::getFader()->mStatus == 1) {
                mSubWindowOpenCheck = 4;
                dMeter2Info_set2DVibration();
            }
        } else if (mCursorX == 3 && mCursorY == 3) {
            if (isSkillIconVisible() && mDoGph_gInf_c::getFader()->mStatus == 1) {
                mSubWindowOpenCheck = 5;
                dMeter2Info_set2DVibration();
            }
        } else if (mCursorX == 2 && mCursorY == 3) {
            if (isInsectIconVisible() && mDoGph_gInf_c::getFader()->mStatus == 1) {
                mSubWindowOpenCheck = 6;
                dMeter2Info_set2DVibration();
            }
        } else {
            if (field_0x22d[mCursorX][mCursorY] != 0 && !mIsWolf) {
                if ((mCursorX >= 3 && mCursorX <= 4) || (mCursorX == 5 && mCursorY == 2)) {
                    u8 cursorY = mCursorY;
                    if (cursorY == 0) {
                        if (daPy_getPlayerActorClass()->getSwordChangeWaitTimer() == 0) {
                            changeSword();
                        }
                    } else if (cursorY == 1) {
                        if (daPy_getPlayerActorClass()->getShieldChangeWaitTimer() == 0) {
                            changeShield();
                        }
                    } else if (cursorY == 2 &&
                               daPy_getPlayerActorClass()->getClothesChangeWaitTimer() == 0)
                    {
                        changeClothe();
                    }
                }
            }
        }
    } else {
        if (daPy_getPlayerActorClass()->getSwordChangeWaitTimer() == 0 &&
            daPy_getPlayerActorClass()->getShieldChangeWaitTimer() == 0 &&
            daPy_getPlayerActorClass()->getClothesChangeWaitTimer() == 0)
        {
            cursorMove();
        }
        if (mCursorX >= 3 && mCursorX <= 4 && mCursorY <= 2 || (mCursorX == 5 && mCursorY == 2)) {
            if (field_0x22d[mCursorX][mCursorY] != 0 && !mIsWolf) {
                setAButtonString(0x436);
            } else {
                setAButtonString(0);
            }
        } else if ((mCursorX == 0 && mCursorY == 5) || (mCursorX == 1 && mCursorY == 5)) {
            setAButtonString(0x40C);
        } else {
            if (field_0x22d[mCursorX][mCursorY] != 0) {
                if (mCursorX == 3 && mCursorY == 4) {
                    if (field_0x22d[3][4] != 0) {
                        setAButtonString(0x3EE);
                    }
                } else if (mCursorX == 2 && mCursorY == 4) {
                    if (isFishIconVisible()) {
                        setAButtonString(0x3EE);
                    }
                } else if (mCursorX == 3 && mCursorY == 3) {
                    if (isSkillIconVisible()) {
                        setAButtonString(0x3EE);
                    }
                } else if (mCursorX == 2 && mCursorY == 3) {
                    if (isInsectIconVisible()) {
                        setAButtonString(0x3EE);
                    }
                } else if (mCursorX < 3 && mCursorY < 3) {
                    setAButtonString(0x40C);
                } else {
                    setAButtonString(0);
                }
            } else {
                setAButtonString(0);
            }
        }
        setBButtonString(0x3F9);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect2D_c::wait_proc() {
    nofralloc
#include "asm/d/menu/d_menu_collect/wait_proc__17dMenu_Collect2D_cFv.s"
}
#pragma pop
#endif

/* 801B4E14-801B4EC0 1AF754 00AC+00 1/0 0/0 0/0 .text save_open_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::save_open_init() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (!mpSaveScrn) {
        mpSaveScrn = new dMenu_save_c();
    }
    mpSaveScrn->setUseType(1);
    mpSaveScrn->_create();
    mpSaveScrn->initialize();
    setAButtonString(0);
    setBButtonString(0);
    mpDrawCursor->offPlayAllAnime();
    mDoExt_setCurrentHeap(heap);
}

/* 801B4EC0-801B4F30 1AF800 0070+00 1/0 0/0 0/0 .text save_open_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::save_open_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpSaveScrn->getSaveStatus() == 1) {
        mpSaveScrn->_open();
    }
    if (mpSaveScrn->getSaveStatus() == 2) {
        mProcess = 2;
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B4F30-801B4F6C 1AF870 003C+00 1/0 0/0 0/0 .text save_move_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::save_move_init() {
    setAButtonString(0x040c);
    setBButtonString(0);
}

/* 801B4F6C-801B4FDC 1AF8AC 0070+00 1/0 0/0 0/0 .text save_move_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::save_move_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpSaveScrn->getSaveStatus() == 2) {
        mpSaveScrn->_move();
    }
    if (mpSaveScrn->getSaveStatus() == 3) {
        mProcess = 3;
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B4FDC-801B5018 1AF91C 003C+00 1/0 0/0 0/0 .text save_close_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::save_close_init() {
    setAButtonString(0);
    setBButtonString(0);
}

/* 801B5018-801B5094 1AF958 007C+00 1/0 0/0 0/0 .text save_close_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::save_close_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpSaveScrn->getSaveStatus() == 3) {
        mpSaveScrn->_close();
    }
    if (mpSaveScrn->getSaveStatus() == 0) {
        mProcess = 0;
        mpDrawCursor->onPlayAllAnime();
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B5094-801B513C 1AF9D4 00A8+00 1/0 0/0 0/0 .text option_open_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::option_open_init() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (!mpOptionScrn) {
        mpOptionScrn = new dMenu_Option_c(dComIfGp_getCollectResArchive(), mpStick);
    }
    mpOptionScrn->initialize();
    setAButtonString(0);
    setBButtonString(0);
    mpDrawCursor->offPlayAllAnime();
    mDoExt_setCurrentHeap(heap);
}

/* 801B513C-801B51AC 1AFA7C 0070+00 1/0 0/0 0/0 .text option_open_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::option_open_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpOptionScrn->getQuitStatus() == 1) {
        mpOptionScrn->_open();
    }
    if (mpOptionScrn->getQuitStatus() == 2) {
        mProcess = 5;
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B51AC-801B51E8 1AFAEC 003C+00 1/0 0/0 0/0 .text option_move_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::option_move_init() {
    setAButtonString(0x040c);
    setBButtonString(0x03f9);
}

/* 801B51E8-801B5258 1AFB28 0070+00 1/0 0/0 0/0 .text option_move_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::option_move_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpOptionScrn->getQuitStatus() == 2) {
        mpOptionScrn->_move();
    }
    if (mpOptionScrn->getQuitStatus() == 3) {
        mProcess = 6;
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B5258-801B5294 1AFB98 003C+00 1/0 0/0 0/0 .text option_close_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::option_close_init() {
    setAButtonString(0);
    setBButtonString(0);
}

/* 801B5294-801B5310 1AFBD4 007C+00 1/0 0/0 0/0 .text option_close_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::option_close_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpOptionScrn->getQuitStatus() == 3) {
        mpOptionScrn->_close();
    }
    if (mpOptionScrn->getQuitStatus() == 0) {
        mProcess = 0;
        mpDrawCursor->onPlayAllAnime();
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B5310-801B53AC 1AFC50 009C+00 1/0 0/0 0/0 .text letter_open_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::letter_open_init() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (!mpLetterScrn) {
        mpLetterScrn = new dMenu_Letter_c(mpSubHeap, mpStick, mpCStick);
    }
    setAButtonString(0);
    setBButtonString(0);
    mpDrawCursor->offPlayAllAnime();
    mDoExt_setCurrentHeap(heap);
}

/* 801B53AC-801B541C 1AFCEC 0070+00 1/0 0/0 0/0 .text letter_open_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::letter_open_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpLetterScrn->getStatus() == 1) {
        mpLetterScrn->_open();
    }
    if (mpLetterScrn->getStatus() == 2) {
        mProcess = 8;
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B541C-801B5458 1AFD5C 003C+00 1/0 0/0 0/0 .text letter_move_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::letter_move_init() {
    setAButtonString(0x040c);
    setBButtonString(0x03f9);
}

/* 801B5458-801B54C8 1AFD98 0070+00 1/0 0/0 0/0 .text letter_move_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::letter_move_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpLetterScrn->getStatus() == 2) {
        mpLetterScrn->_move();
    }
    if (mpLetterScrn->getStatus() == 3) {
        mProcess = 9;
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B54C8-801B5504 1AFE08 003C+00 1/0 0/0 0/0 .text letter_close_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::letter_close_init() {
    setAButtonString(0);
    setBButtonString(0);
}

/* 801B5504-801B5580 1AFE44 007C+00 1/0 0/0 0/0 .text letter_close_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::letter_close_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpLetterScrn->getStatus() == 3) {
        mpLetterScrn->_close();
    }
    if (mpLetterScrn->getStatus() == 0) {
        mProcess = 0;
        mpDrawCursor->onPlayAllAnime();
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B5580-801B561C 1AFEC0 009C+00 1/0 0/0 0/0 .text fishing_open_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::fishing_open_init() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (!mpFishingScrn) {
        mpFishingScrn = new dMenu_Fishing_c(mpSubHeap, mpStick, mpCStick);
    }
    setAButtonString(0);
    setBButtonString(0);
    mpDrawCursor->offPlayAllAnime();
    mDoExt_setCurrentHeap(heap);
}

/* 801B561C-801B568C 1AFF5C 0070+00 1/0 0/0 0/0 .text fishing_open_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::fishing_open_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpFishingScrn->getStatus() == 1) {
        mpFishingScrn->_open();
    }
    if (mpFishingScrn->getStatus() == 2) {
        mProcess = 11;
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B568C-801B56C8 1AFFCC 003C+00 1/0 0/0 0/0 .text fishing_move_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::fishing_move_init() {
    setAButtonString(0x040c);
    setBButtonString(0x03f9);
}

/* 801B56C8-801B5738 1B0008 0070+00 1/0 0/0 0/0 .text fishing_move_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::fishing_move_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpFishingScrn->getStatus() == 2) {
        mpFishingScrn->_move();
    }
    if (mpFishingScrn->getStatus() == 3) {
        mProcess = 12;
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B5738-801B5774 1B0078 003C+00 1/0 0/0 0/0 .text fishing_close_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::fishing_close_init() {
    setAButtonString(0);
    setBButtonString(0);
}

/* 801B5774-801B57F0 1B00B4 007C+00 1/0 0/0 0/0 .text fishing_close_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::fishing_close_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpFishingScrn->getStatus() == 3) {
        mpFishingScrn->_close();
    }
    if (mpFishingScrn->getStatus() == 0) {
        mProcess = 0;
        mpDrawCursor->onPlayAllAnime();
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B57F0-801B588C 1B0130 009C+00 1/0 0/0 0/0 .text skill_open_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::skill_open_init() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (!mpSkillScrn) {
        mpSkillScrn = new dMenu_Skill_c(mpSubHeap, mpStick, mpCStick);
    }
    setAButtonString(0);
    setBButtonString(0);
    mpDrawCursor->offPlayAllAnime();
    mDoExt_setCurrentHeap(heap);
}

/* 801B588C-801B58FC 1B01CC 0070+00 1/0 0/0 0/0 .text skill_open_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::skill_open_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpSkillScrn->getStatus() == 1) {
        mpSkillScrn->_open();
    }
    if (mpSkillScrn->getStatus() == 2) {
        mProcess = 14;
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B58FC-801B5938 1B023C 003C+00 1/0 0/0 0/0 .text skill_move_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::skill_move_init() {
    setAButtonString(0x040c);
    setBButtonString(0x03f9);
}

/* 801B5938-801B59A8 1B0278 0070+00 1/0 0/0 0/0 .text skill_move_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::skill_move_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpSkillScrn->getStatus() == 2) {
        mpSkillScrn->_move();
    }
    if (mpSkillScrn->getStatus() == 3) {
        mProcess = 15;
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B59A8-801B59E4 1B02E8 003C+00 1/0 0/0 0/0 .text skill_close_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::skill_close_init() {
    setAButtonString(0);
    setBButtonString(0);
}

/* 801B59E4-801B5A60 1B0324 007C+00 1/0 0/0 0/0 .text skill_close_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::skill_close_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpSkillScrn->getStatus() == 3) {
        mpSkillScrn->_close();
    }
    if (mpSkillScrn->getStatus() == 0) {
        mProcess = 0;
        mpDrawCursor->onPlayAllAnime();
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B5A60-801B5B00 1B03A0 00A0+00 1/0 0/0 0/0 .text insect_open_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::insect_open_init() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (!mpInsectScrn) {
        mpInsectScrn = new dMenu_Insect_c(mpSubHeap, mpStick, mpCStick, 0);
    }
    setAButtonString(0);
    setBButtonString(0);
    mpDrawCursor->offPlayAllAnime();
    mDoExt_setCurrentHeap(heap);
}

/* 801B5B00-801B5B70 1B0440 0070+00 1/0 0/0 0/0 .text insect_open_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::insect_open_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpInsectScrn->getStatus() == 1) {
        mpInsectScrn->_open();
    }
    if (mpInsectScrn->getStatus() == 2) {
        mProcess = 17;
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B5B70-801B5BAC 1B04B0 003C+00 1/0 0/0 0/0 .text insect_move_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::insect_move_init() {
    setAButtonString(0x040c);
    setBButtonString(0x03f9);
}

/* 801B5BAC-801B5C1C 1B04EC 0070+00 1/0 0/0 0/0 .text insect_move_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::insect_move_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpInsectScrn->getStatus() == 2) {
        mpInsectScrn->_move();
    }
    if (mpInsectScrn->getStatus() == 3) {
        mProcess = 18;
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B5C1C-801B5C58 1B055C 003C+00 1/0 0/0 0/0 .text insect_close_init__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::insect_close_init() {
    setAButtonString(0);
    setBButtonString(0);
}

/* 801B5C58-801B5CD4 1B0598 007C+00 1/0 0/0 0/0 .text insect_close_proc__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::insect_close_proc() {
    JKRHeap* heap = mDoExt_setCurrentHeap(mpSubHeap);
    if (mpInsectScrn->getStatus() == 3) {
        mpInsectScrn->_close();
    }
    if (mpInsectScrn->getStatus() == 0) {
        mProcess = 0;
        mpDrawCursor->onPlayAllAnime();
    }
    mDoExt_setCurrentHeap(heap);
}

/* 801B5CD4-801B5D70 1B0614 009C+00 1/1 0/0 0/0 .text            _move__17dMenu_Collect2D_cFv */
// Matches with sinit
#ifdef NONMATCHING
void dMenu_Collect2D_c::_move() {
    u8 last_process = mProcess;
    (this->*process[last_process])();
    if (mProcess != last_process) {
        (this->*init[mProcess])();
    }
    btkAnimeLoop0(mpAnmKey);
    mpScreen->animation();
    setBackAlpha();
    setHIO(false);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect2D_c::_move() {
    nofralloc
#include "asm/d/menu/d_menu_collect/_move__17dMenu_Collect2D_cFv.s"
}
#pragma pop
#endif

/* 801B5D70-801B5F48 1B06B0 01D8+00 1/1 0/0 0/0 .text            _draw__17dMenu_Collect2D_cFv */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Collect2D_c::_draw() {
    J2DGrafContext* grafPort = dComIfGp_getCurrentGrafPort();
    grafPort->setup2D();
    mpScreen->draw(0.0f, 0.0f, grafPort);

    if (mItemNameString == 0) {
        char* stringPtr1 = static_cast<J2DTextBox*>(mpScreen->search('f_text1'))->getStringPtr();
        strcpy(stringPtr1, "");

        char* stringPtr0 = static_cast<J2DTextBox*>(mpScreen->search('f_text0'))->getStringPtr();
        strcpy(stringPtr0, "");
    } else {
        J2DTextBox* textBox1 = static_cast<J2DTextBox*>(mpScreen->search('f_text1'));
        mpString->getString(mItemNameString, textBox1, NULL, NULL, NULL, 0);

        J2DTextBox* textBox0 = static_cast<J2DTextBox*>(mpScreen->search('f_text0'));
        mpString->getString(mItemNameString, textBox0, NULL, NULL, NULL, 0);

        textBox0 = static_cast<J2DTextBox*>(mpScreen->search('f_text0'));
        mpString->drawOutFontLocal(textBox0, -1.0f);
    }
    mpDrawCursor->draw();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect2D_c::_draw() {
    nofralloc
#include "asm/d/menu/d_menu_collect/_draw__17dMenu_Collect2D_cFv.s"
}
#pragma pop
#endif

/* 801B5F48-801B5F84 1B0888 003C+00 1/1 0/0 0/0 .text            drawTop__17dMenu_Collect2D_cFv */
void dMenu_Collect2D_c::drawTop() {
    dComIfGd_set2DOpaTop(mpDraw2DTop);
}

/* 801B5F84-801B5FAC 1B08C4 0028+00 0/0 1/1 0/0 .text            isKeyCheck__17dMenu_Collect2D_cFv
 */
bool dMenu_Collect2D_c::isKeyCheck() {
    if (mProcess || field_0x25f) {
        return true;
    }
    return false;
}

/* 801B5FAC-801B5FB4 1B08EC 0008+00 0/0 1/1 0/0 .text            isOutCheck__17dMenu_Collect2D_cFv
 */
bool dMenu_Collect2D_c::isOutCheck() {
    return false;
}

/* 801B5FB4-801B60B8 1B08F4 0104+00 20/20 0/0 0/0 .text setAButtonString__17dMenu_Collect2D_cFUs
 */
void dMenu_Collect2D_c::setAButtonString(u16 i_stringID) {
    static const u64 text_a_tag[5] = {
        'atext1_1', 'atext1_2', 'atext1_3', 'atext1_4', 'atext1_5',
    };

    if (i_stringID != mCurrentAString) {
        mCurrentAString = i_stringID;

        if (i_stringID == 0) {
            for (int i = 0; i < 5; i++) {
                char* stringPtr =
                    static_cast<J2DTextBox*>(mpScreenIcon->search(text_a_tag[i]))->getStringPtr();
                strcpy(stringPtr, "");
            }
        } else {
            for (int i = 0; i < 5; i++) {
                char* stringPtr =
                    static_cast<J2DTextBox*>(mpScreenIcon->search(text_a_tag[i]))->getStringPtr();
                dMeter2Info_getStringKanji(i_stringID, stringPtr, NULL);
            }
        }
    }
}

/* 801B60B8-801B61BC 1B09F8 0104+00 20/20 0/0 0/0 .text setBButtonString__17dMenu_Collect2D_cFUs
 */
void dMenu_Collect2D_c::setBButtonString(u16 i_stringID) {
    static const u64 text_b_tag[5] = {
        'btext1_1', 'btext1_2', 'btext1_3', 'btext1_4', 'btext1_5',
    };

    if (i_stringID != mCurrentBString) {
        mCurrentBString = i_stringID;

        if (i_stringID == 0) {
            for (int i = 0; i < 5; i++) {
                char* stringPtr =
                    static_cast<J2DTextBox*>(mpScreenIcon->search(text_b_tag[i]))->getStringPtr();
                strcpy(stringPtr, "");
            }
        } else {
            for (int i = 0; i < 5; i++) {
                char* stringPtr =
                    static_cast<J2DTextBox*>(mpScreenIcon->search(text_b_tag[i]))->getStringPtr();
                dMeter2Info_getStringKanji(i_stringID, stringPtr, NULL);
            }
        }
    }
}

/* 801B61BC-801B6344 1B0AFC 0188+00 2/2 0/0 0/0 .text setItemNameString__17dMenu_Collect2D_cFUcUc
 */
void dMenu_Collect2D_c::setItemNameString(u8 param_0, u8 param_1) {
    if (field_0x22d[param_0][param_1] == 0) {
        setItemNameStringNull();
    } else {
        u32 uVar6 = field_0x184[param_0][param_1];
        mItemNameString = field_0x1d8[param_0][param_1];
        field_0x180 = uVar6;
        if (uVar6 == 0) {
            setItemNameStringNull();
        } else {
            char* stringPtr =
                static_cast<J2DTextBox*>(mpScreen->search('item_n04'))->getStringPtr();
            dMeter2Info_getStringKanji(uVar6, stringPtr, NULL);
            stringPtr = static_cast<J2DTextBox*>(mpScreen->search('item_n05'))->getStringPtr();
            dMeter2Info_getStringKanji(uVar6, stringPtr, NULL);
            stringPtr = static_cast<J2DTextBox*>(mpScreen->search('item_n06'))->getStringPtr();
            dMeter2Info_getStringKanji(uVar6, stringPtr, NULL);
            stringPtr = static_cast<J2DTextBox*>(mpScreen->search('item_n07'))->getStringPtr();
            dMeter2Info_getStringKanji(uVar6, stringPtr, NULL);
        }
    }
}

/* 801B6344-801B6454 1B0C84 0110+00 1/1 0/0 0/0 .text setItemNameStringNull__17dMenu_Collect2D_cFv
 */
void dMenu_Collect2D_c::setItemNameStringNull() {
    mItemNameString = 0;
    J2DTextBox* textBox = (J2DTextBox*)mpScreen->search('item_n04');
    strcpy(textBox->getStringPtr(), "");
    textBox = (J2DTextBox*)mpScreen->search('item_n05');
    strcpy(textBox->getStringPtr(), "");
    textBox = (J2DTextBox*)mpScreen->search('item_n06');
    strcpy(textBox->getStringPtr(), "");
    textBox = (J2DTextBox*)mpScreen->search('item_n07');
    strcpy(textBox->getStringPtr(), "");
}

/* 801B6454-801B6538 1B0D94 00E4+00 1/1 0/0 0/0 .text
 * __ct__17dMenu_Collect3D_cFP10JKRExpHeapP17dMenu_Collect2D_cP10CSTControl */
// matches with literals
#ifdef NONMATCHING
dMenu_Collect3D_c::dMenu_Collect3D_c(JKRExpHeap* param_0, dMenu_Collect2D_c* param_1,
                                     CSTControl* param_2) {
    mIsWolf = daPy_py_c::i_checkNowWolf();
    mpHeap = param_0;
    mpSolidHeap = NULL;
    mpCStick = param_2;
    mpCollect2D = param_1;
    if (mIsWolf) {
        mLinkAngle = -20748;
    } else {
        mLinkAngle = -23324;
    }
    mMaskMirrorAnmFrameBrk = 0.0f;
    mMaskMirrorAnmFrameBck = 0.0f;
    mMaskMirrorOffsetY = 0.0f;
    mMaskMirrorOffsetX = 0.0f;
    mMaskMirrorScale = 1.0f;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dMenu_Collect3D_c::dMenu_Collect3D_c(JKRExpHeap* param_0, dMenu_Collect2D_c* param_1,
                                         CSTControl* param_2) {
    nofralloc
#include "asm/d/menu/d_menu_collect/__ct__17dMenu_Collect3D_cFP10JKRExpHeapP17dMenu_Collect2D_cP10CSTControl.s"
}
#pragma pop
#endif

/* 801B6538-801B65A8 1B0E78 0070+00 1/0 0/0 0/0 .text            __dt__17dMenu_Collect3D_cFv */
// matches with vtable data
#ifdef NONMATCHING
dMenu_Collect3D_c::~dMenu_Collect3D_c() {
    if (mpSolidHeap) {
        mDoExt_destroySolidHeap(mpSolidHeap);
        mpSolidHeap = NULL;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dMenu_Collect3D_c::~dMenu_Collect3D_c() {
extern "C" asm void __dt__17dMenu_Collect3D_cFv() {
    nofralloc
#include "asm/d/menu/d_menu_collect/__dt__17dMenu_Collect3D_cFv.s"
}
#pragma pop
#endif

/* 801B65A8-801B6694 1B0EE8 00EC+00 1/1 0/0 0/0 .text            _create__17dMenu_Collect3D_cFv */
void dMenu_Collect3D_c::_create() {
    mpHeap->getTotalFreeSize();
    mpSolidHeap = mDoExt_createSolidHeapToCurrent(0x25800, mpHeap, 0x20);
    mDoExt_setCurrentHeap((JKRHeap*)mpSolidHeap);
    daAlink_c* linkActor = daAlink_getAlinkActorClass();
    if (linkActor != NULL) {
        linkActor->initStatusWindow();
    }
    u8 maskMdl = getMaskMdlVisible();
    if (maskMdl == 2) {
        createMirrorModel();
    } else if (maskMdl == 1) {
        createMaskModel();
    } else {
        mpModel = NULL;
        mpBckAnm = NULL;
        mpBrkAnm = NULL;
    }
    mpSolidHeap->adjustSize();
    mDoExt_restoreCurrentHeap();
    if (mpModel != NULL) {
        dKy_tevstr_init(&mTevStr, -1, 0xff);
        set_mtx();
    }
    _move(mpCollect2D->getCursorX(), mpCollect2D->getCursorY());
}

/* 801B6694-801B66C8 1B0FD4 0034+00 1/1 0/0 0/0 .text            _delete__17dMenu_Collect3D_cFv */
void dMenu_Collect3D_c::_delete() {
    if (daAlink_getAlinkActorClass()) {
        daAlink_getAlinkActorClass()->resetStatusWindow();
    }
}

/* ############################################################################################## */
/* 80453F80-80453F84 002580 0004+00 1/1 0/0 0/0 .sdata2          @7324 */
SECTION_SDATA2 static f32 lit_7324 = 60.0f;

/* 80453F84-80453F88 002584 0004+00 1/1 0/0 0/0 .sdata2          @7325 */
SECTION_SDATA2 static f32 lit_7325 = 580.0f;

/* 80453F88-80453F8C 002588 0004+00 1/1 0/0 0/0 .sdata2          @7326 */
SECTION_SDATA2 static f32 lit_7326 = 90.0f;

/* 80453F8C-80453F90 00258C 0004+00 1/1 0/0 0/0 .sdata2          @7327 */
SECTION_SDATA2 static f32 lit_7327 = 550.0f;

/* 80453F90-80453F94 002590 0004+00 1/1 0/0 0/0 .sdata2          @7328 */
SECTION_SDATA2 static f32 lit_7328 = 450.0f;

/* 80453F94-80453F98 002594 0004+00 1/1 0/0 0/0 .sdata2          @7329 */
SECTION_SDATA2 static f32 lit_7329 = -3.0f;

/* 80453F98-80453F9C 002598 0004+00 1/1 0/0 0/0 .sdata2          @7330 */
SECTION_SDATA2 static f32 lit_7330 = -5.0f;

/* 80453F9C-80453FA0 00259C 0004+00 1/1 0/0 0/0 .sdata2          @7331 */
SECTION_SDATA2 static f32 lit_7331 = 16.0f;

/* 80453FA0-80453FA4 0025A0 0004+00 1/1 0/0 0/0 .sdata2          @7332 */
SECTION_SDATA2 static f32 lit_7332 = 8.0f;

/* 80453FA4-80453FA8 0025A4 0004+00 2/2 0/0 0/0 .sdata2          @7333 */
SECTION_SDATA2 static f32 lit_7333 = 2.0f;

/* 80453FA8-80453FAC 0025A8 0004+00 1/1 0/0 0/0 .sdata2          @7334 */
SECTION_SDATA2 static f32 lit_7334 = -4.0f;

/* 80453FAC-80453FB0 0025AC 0004+00 1/1 0/0 0/0 .sdata2          @7335 */
SECTION_SDATA2 static f32 lit_7335 = -10.0f;

/* 80453FB0-80453FB4 0025B0 0004+00 1/1 0/0 0/0 .sdata2          @7336 */
SECTION_SDATA2 static f32 lit_7336 = 600.0f;

/* 801B66C8-801B696C 1B1008 02A4+00 2/2 0/0 0/0 .text            _move__17dMenu_Collect3D_cFUcUc */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Collect3D_c::_move(u8 param_0, u8 param_1) {
    cXyz itemPos;
    Vec linkPos = mpCollect2D->getpLink()->getGlobalVtxCenter(false, 0);
    f32 posY;
    f32 posZ;
    if (mIsWolf != 0) {
        posY = linkPos.y + 60.0f;
        posZ = 580.0f;
    } else {
        posY = linkPos.y + 90.0f;
        posZ = 550.0f;
    }
    toItem3Dpos(linkPos.x, posY, posZ, &itemPos);
    if (param_0 == 0 && param_1 == 0) {
        f32 temp = 450.0f;
        mLinkAngle += (s16)temp;
    } else {
        s16 target = mIsWolf != 0 ? (s16)-0x510C : (s16)-0x5B1C;
        cLib_addCalcAngleS(&mLinkAngle, target, 4, 0x800, 0x80);
    }
    if (daAlink_getAlinkActorClass() != NULL) {
        daAlink_getAlinkActorClass()->statusWindowExecute(&itemPos, mLinkAngle);
    }
    if (mpModel != NULL) {
        cXyz modelPos;
        Vec maskPos = mpCollect2D->getpMask()->getGlobalVtxCenter(false, 0);
        f32 offsetX = 0.0f;
        f32 offsetY = 0.0f;

        if (getMaskMdlVisible() == 2) {
            u8 mirrorNum = getMirrorNum();
            if (mirrorNum == 1 || mirrorNum == 2 || mirrorNum == 3 || mirrorNum == 4) {
                offsetX = -3.0f;
                offsetY = -5.0f;
            }
        } else {
            u8 crystalNum = getCrystalNum();
            if (crystalNum == 1) {
                offsetX = 16.0f;
                offsetY = 0.0f;
            } else if (crystalNum == 2) {
                offsetX = 8.0f;
                offsetY = -3.0f;
            } else if (crystalNum == 3) {
                offsetX = 2.0f;
                offsetY = -4.0f;
            } else if (crystalNum == 4) {
                offsetX = -5.0f;
                offsetY = -10.0f;
            }
        }
        f32 offsetPosX =
            maskPos.x + g_drawHIO.mCollectScreen.mMaskMirrorPos.x + mMaskMirrorOffsetX + offsetX;
        f32 offsetPosY =
            maskPos.y + g_drawHIO.mCollectScreen.mMaskMirrorPos.y + mMaskMirrorOffsetY + offsetY;
        toItem3Dpos(offsetPosX, offsetPosY, 600.0f, &modelPos);
        mMaskMirrorPos.set(modelPos);
        mMaskMirrorAngle.set(g_drawHIO.mCollectScreen.mMaskMirrorAngle.x,
                        g_drawHIO.mCollectScreen.mMaskMirrorAngle.y,
                        g_drawHIO.mCollectScreen.mMaskMirrorAngle.z);
        animePlay();
        set_mtx();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect3D_c::_move(u8 param_0, u8 param_1) {
    nofralloc
#include "asm/d/menu/d_menu_collect/_move__17dMenu_Collect3D_cFUcUc.s"
}
#pragma pop
#endif

/* 801B696C-801B6A30 1B12AC 00C4+00 1/1 0/0 0/0 .text            draw__17dMenu_Collect3D_cFv */
void dMenu_Collect3D_c::draw() {
    dComIfGd_setListItem3D();
    if (daAlink_getAlinkActorClass()) {
        daAlink_getAlinkActorClass()->statusWindowDraw();
    }
    if (mpModel) {
        g_env_light.settingTevStruct(13, &mMaskMirrorPos, &mTevStr);
        g_env_light.setLightTevColorType_MAJI(mpModel, &mTevStr);
        animeEntry();
        mDoExt_modelUpdateDL(mpModel);
    }
    dComIfGd_setList();
}

/* 801B6A30-801B6D30 1B1370 0300+00 2/2 0/0 0/0 .text setJ3D__17dMenu_Collect3D_cFPCcPCcPCc */
// regalloc
#ifdef NONMATCHING
void dMenu_Collect3D_c::setJ3D(const char* param_0, const char* param_1, const char* param_2) {
    JKRArchive* resArchive = dComIfGp_getCollectResArchive();
    J3DModelData* modelData = (J3DModelData*)J3DModelLoaderDataBase::load(
        resArchive->getResource('BMD ', param_0), 0x51020010);

    for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
        J3DMaterialAnm* matAnm = new J3DMaterialAnm();
        modelData->getMaterialNodePointer(i)->change();
        modelData->getMaterialNodePointer(i)->setMaterialAnm(matAnm);
    }
    mpModel = new J3DModel(modelData, 0, 1);
    if (param_1 != NULL) {
        J3DAnmTransform* pbck = (J3DAnmTransform*)J3DAnmLoaderDataBase::load(
            resArchive->getResource('BCK ', param_1), J3DLOADER_UNK_FLAG0);
        mpBckAnm = new mDoExt_bckAnm();
        if (mpBckAnm == NULL || !mpBckAnm->init(pbck, 1, 2, 1.0f, 0, -1, false)) {
            return;
        }
    }
    if (param_2 != NULL) {
        J3DAnmTevRegKey* pbrk = (J3DAnmTevRegKey*)J3DAnmLoaderDataBase::load(
            resArchive->getResource('BRK ', param_2), J3DLOADER_UNK_FLAG0);
        pbrk->searchUpdateMaterialID(modelData);
        mpBrkAnm = new mDoExt_brkAnm();
        if (mpBrkAnm == NULL || !mpBrkAnm->init(modelData, pbrk, -1, 2, 1.0f, 0, -1)) {
            return;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect3D_c::setJ3D(const char* param_0, const char* param_1, const char* param_2) {
    nofralloc
#include "asm/d/menu/d_menu_collect/setJ3D__17dMenu_Collect3D_cFPCcPCcPCc.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80453FB4-80453FB8 0025B4 0004+00 1/1 0/0 0/0 .sdata2          @7505 */
SECTION_SDATA2 static f32 lit_7505 = -1.0f / 10.0f;

/* 80453FB8-80453FBC 0025B8 0004+00 1/1 0/0 0/0 .sdata2          @7506 */
SECTION_SDATA2 static f32 lit_7506 = -3.0f / 5.0f;

/* 80453FBC-80453FC0 0025BC 0004+00 1/1 0/0 0/0 .sdata2          @7507 */
SECTION_SDATA2 static f32 lit_7507 = -2.0f / 5.0f;

/* 80453FC0-80453FC4 0025C0 0004+00 1/1 0/0 0/0 .sdata2          @7508 */
SECTION_SDATA2 static f32 lit_7508 = -3.0f / 10.0f;

/* 801B6D30-801B6E70 1B1670 0140+00 2/2 0/0 0/0 .text            set_mtx__17dMenu_Collect3D_cFv */
// Matches with literals
#ifdef NONMATCHING
void dMenu_Collect3D_c::set_mtx() {
    f32 scale = 0.0f;
    if (getMaskMdlVisible() == 2) {
        u8 mirrorNum = getMirrorNum();
        if (mirrorNum == 2 || mirrorNum == 3 || mirrorNum == 4) {
            scale = -0.1f;
        }
    } else {
        u8 crystalNum = getCrystalNum();
        if (crystalNum == 1 || crystalNum == 2) {
            scale = -0.6f;
        } else if (crystalNum == 3) {
            scale = -0.4f;
        } else if (crystalNum == 4) {
            scale = -0.3f;
        }
    }
    f32 finalScale = g_drawHIO.mCollectScreen.mMaskMirrorScale + scale + mMaskMirrorScale;
    cXyz baseScale;
    baseScale.z = finalScale;
    baseScale.y = finalScale;
    baseScale.x = finalScale;
    mpModel->setBaseScale(baseScale);
    mDoMtx_stack_c::transS(mMaskMirrorPos.x, mMaskMirrorPos.y, mMaskMirrorPos.z);
    mDoMtx_stack_c::YrotM(mMaskMirrorAngle.y);
    mDoMtx_stack_c::XrotM(mMaskMirrorAngle.x);
    mDoMtx_stack_c::ZrotM(mMaskMirrorAngle.z);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect3D_c::set_mtx() {
    nofralloc
#include "asm/d/menu/d_menu_collect/set_mtx__17dMenu_Collect3D_cFv.s"
}
#pragma pop
#endif

/* 801B6E70-801B6FB0 1B17B0 0140+00 1/1 0/0 0/0 .text            animePlay__17dMenu_Collect3D_cFv */
#ifdef NONMATCHING
// matches with literals
void dMenu_Collect3D_c::animePlay() {
    if (mpBrkAnm != NULL) {
        mMaskMirrorAnmFrameBrk += g_drawHIO.mCollectScreen.mMaskMirrorAnimSpeed;
        if (mMaskMirrorAnmFrameBrk >= mpBrkAnm->getEndFrame()) {
            mMaskMirrorAnmFrameBrk -= mpBrkAnm->getEndFrame();
        }
        mpBrkAnm->setFrame(mMaskMirrorAnmFrameBrk);
        mpBrkAnm->play();
    }
    if (mpBckAnm != NULL) {
        mMaskMirrorAnmFrameBck += g_drawHIO.mCollectScreen.mMaskMirrorAnimSpeed;
        if (mMaskMirrorAnmFrameBck >= mpBckAnm->getEndFrame()) {
            mMaskMirrorAnmFrameBck -= mpBckAnm->getEndFrame();
        }
        mpBckAnm->setFrame(mMaskMirrorAnmFrameBck);
        mpBckAnm->play();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect3D_c::animePlay() {
    nofralloc
#include "asm/d/menu/d_menu_collect/animePlay__17dMenu_Collect3D_cFv.s"
}
#pragma pop
#endif

/* 801B6FB0-801B7014 1B18F0 0064+00 1/1 0/0 0/0 .text            animeEntry__17dMenu_Collect3D_cFv
 */
void dMenu_Collect3D_c::animeEntry() {
    if (mpBrkAnm != NULL) {
        mpBrkAnm->entry(mpModel->getModelData());
    }
    if (mpBckAnm != NULL) {
        mpBckAnm->entry(mpModel->getModelData());
    }
}

/* 803952B8-803952CC 021918 0014+00 0/1 0/0 0/0 .rodata          m_kamen_offset_x$7578 */
#pragma push
#pragma force_active on
static const f32 m_kamen_offset_x[5] = {
    -14.0f, -14.0f, -14.0f, 1.3f, 6.5f,
};
#pragma pop

/* 803952CC-803952E0 02192C 0014+00 0/1 0/0 0/0 .rodata          m_kamen_offset_y$7579 */
#pragma push
#pragma force_active on
static const f32 m_kamen_offset_y[5] = {
    0.0f, 0.0f, 0.0f, 22.0f, 30.0f,
};
#pragma pop

/* 803952E0-803952F4 021940 0014+00 0/1 0/0 0/0 .rodata          m_kamen_scale$7580 */
#pragma push
#pragma force_active on
static const f32 m_kamen_scale[5] = {
    2.6f, 2.6f, 2.2f, 1.8f, 1.8f,
};
#pragma pop

/* 801B7014-801B71C4 1B1954 01B0+00 1/1 0/0 0/0 .text createMaskModel__17dMenu_Collect3D_cFv */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Collect3D_c::createMaskModel() {
    static char* bck_name[4] = {
        "md_mask_parts_spin_1.bck",
        "md_mask_parts_spin_2.bck",
        "md_mask_parts_spin_3.bck",
        "md_mask_parts_spin_4.bck",
    };
    static char* brk_name[4] = {
        "md_mask_parts_spin_1.brk",
        "md_mask_parts_spin_2_3.brk",
        "md_mask_parts_spin_2_3.brk",
        "md_mask_parts_spin_4.brk",
    };

    u8 crystalNum = getCrystalNum();
    mMaskMirrorOffsetX = m_kamen_offset_x[crystalNum];
    mMaskMirrorOffsetY = m_kamen_offset_y[crystalNum];
    mMaskMirrorScale = m_kamen_scale[crystalNum];
    mMaskMirrorPos.set(0.0f, 0.0f, 0.0f);
    mMaskMirrorAngle.set(0, 0, 0);
    mpModel = NULL;
    mpBckAnm = NULL;
    mpBrkAnm = NULL;
    if (crystalNum != 0) {
        setJ3D("md_mask_UI.bmd", bck_name[crystalNum - 1], brk_name[crystalNum - 1]);
        switch (crystalNum) {
        case 1:
            mpModel->getModelData()->getMaterialNodePointer(0)->getShape()->hide();
            mpModel->getModelData()->getMaterialNodePointer(1)->getShape()->hide();
        case 2:
            mpModel->getModelData()->getMaterialNodePointer(2)->getShape()->hide();
            mpModel->getModelData()->getMaterialNodePointer(3)->getShape()->hide();
        case 3:
            mpModel->getModelData()->getMaterialNodePointer(6)->getShape()->hide();
            mpModel->getModelData()->getMaterialNodePointer(7)->getShape()->hide();
            break;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect3D_c::createMaskModel() {
    nofralloc
#include "asm/d/menu/d_menu_collect/createMaskModel__17dMenu_Collect3D_cFv.s"
}
#pragma pop
#endif

/* 803952F4-80395308 021954 0014+00 0/1 0/0 0/0 .rodata          m_mirror_offset_x$7682 */
#pragma push
#pragma force_active on
static const f32 m_mirror_offset_x[5] = {
    0.0f, 0.0f, 0.0f, 0.0f, 0.0f,
};
#pragma pop

/* 80395308-8039531C 021968 0014+00 0/1 0/0 0/0 .rodata          m_mirror_offset_y$7683 */
#pragma push
#pragma force_active on
static const f32 m_mirror_offset_y[5] = {
    4.0f, 4.0f, 4.0f, 4.0f, 4.0f,
};
#pragma pop

/* 8039531C-80395330 02197C 0014+00 0/1 0/0 0/0 .rodata          m_mirror_scale$7684 */
#pragma push
#pragma force_active on
static const f32 m_mirror_scale[5] = {
    0.6f, 0.6f, 0.6f, 0.6f, 0.6f,
};
#pragma pop

/* 80395330-80395330 021990 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803954FF = "kageri_mirrer_UI.bmd";
/* @stringBase0 padding */
SECTION_DEAD static char const* const pad_80395514 = "\0\0\0";
#pragma pop

/* 801B71C4-801B7434 1B1B04 0270+00 1/1 0/0 0/0 .text createMirrorModel__17dMenu_Collect3D_cFv */
#ifdef NONMATCHING
// Matches with literals
void dMenu_Collect3D_c::createMirrorModel() {
    static char* bck_name[4] = {
        "kageri_mirrer_spin_1.bck",
        "kageri_mirrer_spin_2.bck",
        "kageri_mirrer_spin_3.bck",
        "kageri_mirrer_spin_4.bck",
    };
    static char* brk_name[4] = {
        "kageri_mirrer_spin_1.brk",
        "kageri_mirrer_spin_2_3_4.brk",
        "kageri_mirrer_spin_2_3_4.brk",
        "kageri_mirrer_spin_2_3_4.brk",
    };

    u8 mirrorNum = getMirrorNum();
    mMaskMirrorOffsetX = m_mirror_offset_x[mirrorNum];
    mMaskMirrorOffsetY = m_mirror_offset_y[mirrorNum];
    mMaskMirrorScale = m_mirror_scale[mirrorNum];
    mMaskMirrorPos.set(0.0f, 0.0f, 0.0f);
    mMaskMirrorAngle.set(0, 0, 0);
    mpModel = NULL;
    mpBckAnm = NULL;
    mpBrkAnm = NULL;
    if (mirrorNum != 0) {
        setJ3D("kageri_mirrer_UI.bmd", bck_name[mirrorNum - 1], brk_name[mirrorNum - 1]);
        switch (mirrorNum) {
        case 1:
            mpModel->getModelData()->getMaterialNodePointer(4)->getShape()->hide();
            mpModel->getModelData()->getMaterialNodePointer(5)->getShape()->hide();
            mpModel->getModelData()->getMaterialNodePointer(6)->getShape()->hide();
            mpModel->getModelData()->getMaterialNodePointer(7)->getShape()->hide();
        case 2:
            mpModel->getModelData()->getMaterialNodePointer(8)->getShape()->hide();
            mpModel->getModelData()->getMaterialNodePointer(9)->getShape()->hide();
            mpModel->getModelData()->getMaterialNodePointer(10)->getShape()->hide();
            mpModel->getModelData()->getMaterialNodePointer(11)->getShape()->hide();
        case 3:
            mpModel->getModelData()->getMaterialNodePointer(12)->getShape()->hide();
            mpModel->getModelData()->getMaterialNodePointer(13)->getShape()->hide();
            mpModel->getModelData()->getMaterialNodePointer(14)->getShape()->hide();
            mpModel->getModelData()->getMaterialNodePointer(15)->getShape()->hide();
            break;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect3D_c::createMirrorModel() {
    nofralloc
#include "asm/d/menu/d_menu_collect/createMirrorModel__17dMenu_Collect3D_cFv.s"
}
#pragma pop
#endif

/* 801B7434-801B749C 1B1D74 0068+00 5/5 0/0 0/0 .text getCrystalNum__17dMenu_Collect3D_cFv */
u8 dMenu_Collect3D_c::getCrystalNum() {
    u8 count = 0;
    for (int i = 0; i < 4; i++) {
        if (!dComIfGs_isCollectCrystal(i)) {
            break;
        }
        count++;
    }
    return count;
}

/* 801B749C-801B7504 1B1DDC 0068+00 5/5 0/0 0/0 .text            getMirrorNum__17dMenu_Collect3D_cFv
 */
u8 dMenu_Collect3D_c::getMirrorNum() {
    u8 count = 0;
    for (int i = 0; i < 4; i++) {
        if (!dComIfGs_isCollectMirror(i)) {
            break;
        }
        count++;
    }
    return count;
}

/* 801B7504-801B75E8 1B1E44 00E4+00 4/4 0/0 0/0 .text getMaskMdlVisible__17dMenu_Collect3D_cFv */
u8 dMenu_Collect3D_c::getMaskMdlVisible() {
    if ((getCrystalNum() == 0 && getMirrorNum() == 0) ||
        (dComIfGs_isEventBit(0xC01) && !dComIfGs_isCollectMirror(0)) ||
        (dComIfGs_isEventBit(0x2B08) && !dComIfGs_isCollectCrystal(3)))
    {
        return 0;
    }
    if (dComIfGs_isCollectCrystal(3) || getMirrorNum() == 0) {
        return 1;
    }
    return 2;
}

/* ############################################################################################## */
/* 80450720-80450728 0001A0 0004+04 1/1 0/0 1/1 .sdata           mViewOffsetY__17dMenu_Collect3D_c
 */
f32 dMenu_Collect3D_c::mViewOffsetY = -100.0f;

/* 80453FC4-80453FC8 0025C4 0004+00 3/3 0/0 0/0 .sdata2          @7944 */
SECTION_SDATA2 static f32 lit_7944 = 608.0f;

/* 80453FC8-80453FCC 0025C8 0004+00 3/3 0/0 0/0 .sdata2          @7945 */
SECTION_SDATA2 static f32 lit_7945 = 448.0f;

/* 80453FCC-80453FD0 0025CC 0004+00 2/2 0/0 0/0 .sdata2          @7946 */
SECTION_SDATA2 static f32 lit_7946 = -100.0f;

/* 80453FD0-80453FD4 0025D0 0004+00 1/1 0/0 0/0 .sdata2          @7947 */
SECTION_SDATA2 static f32 lit_7947 = 45.0f;

/* 80453FD4-80453FD8 0025D4 0004+00 2/2 0/0 0/0 .sdata2          @7948 */
SECTION_SDATA2 static f32 lit_7948 = 19.0f / 14.0f;

/* 80453FD8-80453FE0 0025D8 0004+04 1/1 0/0 0/0 .sdata2          @7949 */
SECTION_SDATA2 static f32 lit_7949[1 + 1 /* padding */] = {
    100000.0f,
    /* padding */
    0.0f,
};

/* 801B75E8-801B7660 1B1F28 0078+00 0/0 1/1 0/0 .text setupItem3D__17dMenu_Collect3D_cFPA4_f */
// matches with literals
#ifdef NONMATCHING
void dMenu_Collect3D_c::setupItem3D(Mtx param_0) {
    GXSetViewport(0.0, mViewOffsetY, 608.0, 448.0, 0.0, 1.0);
    mViewOffsetY = -100.0;
    Mtx44 projection;
    C_MTXPerspective(projection, 45.0, mDoGph_gInf_c::getAspect(), 1.0, 100000.0);
    GXSetProjection(projection, GX_PERSPECTIVE);
    calcViewMtx(param_0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect3D_c::setupItem3D(Mtx param_0) {
    nofralloc
#include "asm/d/menu/d_menu_collect/setupItem3D__17dMenu_Collect3D_cFPA4_f.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80453FE0-80453FE8 0025E0 0008+00 1/1 0/0 0/0 .sdata2          @7963 */
SECTION_SDATA2 static f64 lit_7963 = 0.39269909262657166;

/* 801B7660-801B774C 1B1FA0 00EC+00 1/1 0/0 0/0 .text toItem3Dpos__17dMenu_Collect3D_cFfffP4cXyz
 */
// This is mostly matching like this using O2 but still regalloc (f29/f31)
#ifdef NONMATCHING
#pragma push
#pragma optimization_level 2
void dMenu_Collect3D_c::toItem3Dpos(f32 param_0, f32 param_1, f32 param_2, cXyz* param_3) {
    Mtx adStack_98;
    Mtx auStack_c8;
    f32 dVar7 =
        (2.0f * ((param_0 - mDoGph_gInf_c::getMinXF()) / mDoGph_gInf_c::getWidthF()) - 1.0f);
    f32 dVar11 = (2.0f * ((param_1 - 100.0f) / 448.0f) - 1.0f);
    calcViewMtx(adStack_98);
    MTXInverse(adStack_98, auStack_c8);
    f32 tangent = tan(0.39269909262657166);
    f32 dVar12 = -param_2;
    cXyz cStack_d4((dVar7 * param_2) * (tangent * mDoGph_gInf_c::getAspect()),
                   (tangent * (dVar11 * dVar12)), dVar12);
    MTXMultVec(auStack_c8, &cStack_d4, param_3);
}
#pragma pop
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect3D_c::toItem3Dpos(f32 param_0, f32 param_1, f32 param_2, cXyz* param_3) {
    nofralloc
#include "asm/d/menu/d_menu_collect/toItem3Dpos__17dMenu_Collect3D_cFfffP4cXyz.s"
}
#pragma pop
#endif

/* 801B774C-801B77A4 1B208C 0058+00 2/2 0/0 0/0 .text calcViewMtx__17dMenu_Collect3D_cFPA4_f */
// matches with literals
#ifdef NONMATCHING
void dMenu_Collect3D_c::calcViewMtx(Mtx param_0) {
    mDoMtx_lookAt(param_0, &cXyz(0.0f, 0.0f, -1000.0f), &cXyz::Zero, &cXyz(0.0f, 1.0f, 0.0f), 0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Collect3D_c::calcViewMtx(Mtx param_0) {
    nofralloc
#include "asm/d/menu/d_menu_collect/calcViewMtx__17dMenu_Collect3D_cFPA4_f.s"
}
#pragma pop
#endif

/* 801B77A4-801B78C0 1B20E4 011C+00 1/0 0/0 0/0 .text            draw__20dMenu_Collect2DTop_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dMenu_Collect2DTop_c::draw() {
extern "C" asm void draw__20dMenu_Collect2DTop_cFv() {
    nofralloc
#include "asm/d/menu/d_menu_collect/draw__20dMenu_Collect2DTop_cFv.s"
}
#pragma pop

/* 801B78C0-801B795C 1B2200 009C+00 0/0 1/1 0/0 .text
 * __ct__15dMenu_Collect_cFP10JKRExpHeapP9STControlP10CSTControl */
dMenu_Collect_c::dMenu_Collect_c(JKRExpHeap* param_0, STControl* param_1, CSTControl* param_2) {
    mpCollect2D = new dMenu_Collect2D_c(param_0, param_1, param_2);
    mpCollect3D = new dMenu_Collect3D_c(param_0, mpCollect2D, param_2);
}

/* 801B795C-801B7A0C 1B229C 00B0+00 1/0 0/0 0/0 .text            __dt__15dMenu_Collect_cFv */
// matches with vtable data
#ifdef NONMATCHING
dMenu_Collect_c::~dMenu_Collect_c() {
    if (mpCollect2D) {
        delete mpCollect2D;
        mpCollect2D = NULL;
    }
    if (mpCollect3D) {
        delete mpCollect3D;
        mpCollect3D = NULL;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dMenu_Collect_c::~dMenu_Collect_c() {
extern "C" asm void __dt__15dMenu_Collect_cFv() {
    nofralloc
#include "asm/d/menu/d_menu_collect/__dt__15dMenu_Collect_cFv.s"
}
#pragma pop
#endif

/* 801B7A0C-801B7A44 1B234C 0038+00 0/0 1/1 0/0 .text            _create__15dMenu_Collect_cFv */
void dMenu_Collect_c::_create() {
    mpCollect2D->_create();
    mpCollect3D->_create();
}

/* 801B7A44-801B7A7C 1B2384 0038+00 0/0 1/1 0/0 .text            _delete__15dMenu_Collect_cFv */
void dMenu_Collect_c::_delete() {
    mpCollect2D->_delete();
    mpCollect3D->_delete();
}

/* 801B7A7C-801B7AC0 1B23BC 0044+00 0/0 1/1 0/0 .text            _move__15dMenu_Collect_cFv */
void dMenu_Collect_c::_move() {
    mpCollect2D->_move();
    mpCollect3D->_move(mpCollect2D->getCursorX(), mpCollect2D->getCursorY());
}

/* 801B7AC0-801B7B14 1B2400 0054+00 0/0 1/1 0/0 .text            draw__15dMenu_Collect_cFv */
void dMenu_Collect_c::draw() {
    dComIfGd_set2DOpa(mpCollect2D);
    mpCollect3D->draw();
    mpCollect2D->drawTop();
}

/* 801B7B14-801B7EB8 1B2454 03A4+00 0/0 1/0 0/0 .text            __sinit_d_menu_collect_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_menu_collect_cpp(){nofralloc
#include "asm/d/menu/d_menu_collect/__sinit_d_menu_collect_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x801B7B14, __sinit_d_menu_collect_cpp);
#pragma pop

/* 801B7EB8-801B7F00 1B27F8 0048+00 1/0 0/0 0/0 .text            __dt__20dMenu_Collect2DTop_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dMenu_Collect2DTop_c::~dMenu_Collect2DTop_c() {
    nofralloc
#include "asm/d/menu/d_menu_collect/__dt__20dMenu_Collect2DTop_cFv.s"
}
#pragma pop

/* 801B7F00-801B7F20 1B2840 0020+00 1/0 0/0 0/0 .text            draw__17dMenu_Collect2D_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dMenu_Collect2D_c::draw() {
extern "C" asm void draw__17dMenu_Collect2D_cFv() {
    nofralloc
#include "asm/d/menu/d_menu_collect/draw__17dMenu_Collect2D_cFv.s"
}
#pragma pop

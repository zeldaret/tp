/**
 * @file d_a_mg_fish.cpp
 * 
*/

#include "d/actor/d_a_mg_fish.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void __ct__15daMg_Fish_HIO_cFv();
extern "C" static void hit_vib_set__FP13mg_fish_class();
extern "C" void __dt__4cXyzFv();
extern "C" static void sibuki_set__FP13mg_fish_classf4cXyz();
extern "C" static void s_hitfish_sub__FPvPv();
extern "C" static void pl_check__FP13mg_fish_classf();
extern "C" static void anm_init__FP13mg_fish_classifUcf();
extern "C" static void mouth_open__FP13mg_fish_class();
extern "C" static void mouth_close__FP13mg_fish_class();
extern "C" static void s_lure_sub__FPvPv();
extern "C" static void s_esa_sub__FPvPv();
extern "C" static void s_bait_sub__FPvPv();
extern "C" static void s_other_search_sub__FPvPv();
extern "C" static void search_lure__FP13mg_fish_classi();
extern "C" static void s_other_bait_sub__FPvPv();
extern "C" static void search_bait__FP13mg_fish_class();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void nodeCallBack2__FP8J3DJointi();
extern "C" static void nodeCallBackLH__FP8J3DJointi();
extern "C" static void nodeCallBackBB__FP8J3DJointi();
extern "C" static void s_bt_sub__FPvPv();
extern "C" static void s_sp_sub__FPvPv();
extern "C" static void s_lh_sub__FPvPv();
extern "C" static void s_bin_sub__FPvPv();
extern "C" static void s_kn_sub__FPvPv();
extern "C" static void s_ed_sub__FPvPv();
extern "C" static void s_sy_sub__FPvPv();
extern "C" static void s_bb_sub__FPvPv();
extern "C" static void s_bb2_sub__FPvPv();
extern "C" static void s_sg_sub__FPvPv();
extern "C" static void daMg_Fish_Draw__FP13mg_fish_class();
extern "C" static void get_surface_y__FP13mg_fish_classP4cXyz();
extern "C" static void get_ground_y__FP13mg_fish_classP4cXyz();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void mf_swim__FP13mg_fish_class();
extern "C" static void pos_bg_check__FP4cXyzP4cXyz();
extern "C" static void path_search__FP13mg_fish_class();
extern "C" static void mf_swim_p__FP13mg_fish_class();
extern "C" static void mf_swim_s__FP13mg_fish_class();
extern "C" static void mf_stay__FP13mg_fish_class();
extern "C" static void mf_away__FP13mg_fish_class();
extern "C" static void ri_swim__FP13mg_fish_class();
extern "C" static void dmcalc__FP13mg_fish_class();
extern "C" static void mf_lure_search__FP13mg_fish_class();
extern "C" static void mf_bait_search__FP13mg_fish_class();
extern "C" static void mf_hit__FP13mg_fish_class();
extern "C" static void mf_jump__FP13mg_fish_class();
extern "C" static void pota_set__FP13mg_fish_class();
extern "C" static void mf_catch__FP13mg_fish_class();
extern "C" static void mf_esa_search__FP13mg_fish_class();
extern "C" static void mf_esa_hit__FP13mg_fish_class();
extern "C" static void mf_esa_catch__FP13mg_fish_class();
extern "C" static void mf_aqua__FP13mg_fish_class();
extern "C" static void ri_aqua__FP13mg_fish_class();
extern "C" static void mf_aqua_tilt__FP13mg_fish_class();
extern "C" static void action__FP13mg_fish_class();
extern "C" static void ke_control__FP13mg_fish_classP7mf_ke_s();
extern "C" static void ke_move__FP13mg_fish_classP7mf_ke_si();
extern "C" static void daMg_Fish_Execute__FP13mg_fish_class();
extern "C" static bool daMg_Fish_IsDelete__FP13mg_fish_class();
extern "C" static void daMg_Fish_Delete__FP13mg_fish_class();
extern "C" static void useHeapInit2__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapImg_fisht__FP10fopAc_ac_c();
extern "C" static void daMg_Fish_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__7mf_ke_sFv();
extern "C" void __ct__7mf_ke_sFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__15daMg_Fish_HIO_cFv();
extern "C" void __sinit_d_a_mg_fish_cpp();
extern "C" static void func_8053612C();
extern "C" static void func_80536134();
extern "C" static void func_8053613C();
extern "C" static void func_80536144();
extern "C" static void func_8053614C();
extern "C" extern char const* const d_a_mg_fish__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void init__19mDoExt_3DlineMat0_cFUsUsi();
extern "C" void update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void setEventReg__11dSv_event_cFUsUc();
extern "C" void getEventReg__11dSv_event_cCFUs();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void setLookPos__9daPy_py_cFP4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_Sound_set__F4cXyziUii();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxScale__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void changeBgmStatus__8Z2SeqMgrFl();
extern "C" void changeFishingBgm__8Z2SeqMgrFl();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_20();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_20();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat0_c[5];
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern u8 g_Counter[12 + 4 /* padding */];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80536168-8053616C 000000 0004+00 36/36 0/0 0/0 .rodata          @3679 */
SECTION_RODATA static f32 const lit_3679 = 1.0f;
COMPILER_STRIP_GATE(0x80536168, &lit_3679);

/* 8053616C-80536170 000004 0004+00 0/5 0/0 0/0 .rodata          @3680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3680 = 5.0f;
COMPILER_STRIP_GATE(0x8053616C, &lit_3680);
#pragma pop

/* 80536170-80536174 000008 0004+00 0/8 0/0 0/0 .rodata          @3681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3681 = 300.0f;
COMPILER_STRIP_GATE(0x80536170, &lit_3681);
#pragma pop

/* 80536174-80536178 00000C 0004+00 0/4 0/0 0/0 .rodata          @3682 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3682 = 400.0f;
COMPILER_STRIP_GATE(0x80536174, &lit_3682);
#pragma pop

/* 805364A4-805364B0 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 805364B0-805364C4 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 805364C4-805364CC 000020 0008+00 0/1 0/0 0/0 .data            check_kind */
#pragma push
#pragma force_active on
SECTION_DATA static u8 check_kind[8] = {
    0xF5, 0x7F, 0xF4, 0x7F, 0xF3, 0x7F, 0xF2, 0x7F,
};
#pragma pop

/* 805364CC-805364DC 000028 0010+00 1/1 0/0 0/0 .data            vib_p$3694 */
SECTION_DATA static u8 vib_p[16] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};

/* 805364DC-805364E4 000038 0005+03 1/1 0/0 0/0 .data            learn_d$3913 */
SECTION_DATA static u8 learn_d[5 + 3 /* padding */] = {
    0x01,
    0x02,
    0x04,
    0x08,
    0x10,
    /* padding */
    0x00,
    0x00,
    0x00,
};

/* 805364E4-80536794 000040 02B0+00 2/2 0/0 0/0 .data            swim_path127 */
SECTION_DATA static u8 swim_path127[688] = {
    0x00, 0x00, 0x00, 0x00, 0xC4, 0xAE, 0x40, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x44, 0x0B, 0xC0, 0x00,
    0x00, 0x01, 0x00, 0x00, 0xC5, 0x11, 0x70, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x44, 0x9B, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0xC5, 0x3B, 0xA0, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x44, 0xB9, 0x20, 0x00,
    0x00, 0x03, 0x00, 0x00, 0xC5, 0x85, 0x60, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x44, 0xD7, 0x60, 0x00,
    0x00, 0x04, 0x00, 0x00, 0xC5, 0x9F, 0xD0, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x44, 0xDF, 0x40, 0x00,
    0x00, 0x05, 0x00, 0x00, 0xC5, 0xC0, 0x98, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x45, 0x0B, 0x60, 0x00,
    0x00, 0x06, 0x00, 0x00, 0xC5, 0xD8, 0x60, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x45, 0x21, 0xF0, 0x00,
    0x00, 0x07, 0x00, 0x00, 0xC5, 0xF5, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x45, 0x1B, 0xE0, 0x00,
    0x00, 0x08, 0x00, 0x00, 0xC6, 0x02, 0x5C, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x45, 0x04, 0x80, 0x00,
    0x00, 0x09, 0x00, 0x00, 0xC5, 0xFB, 0xE0, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x44, 0xAA, 0x20, 0x00,
    0x00, 0x0A, 0x00, 0x00, 0xC5, 0xF2, 0x50, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x44, 0x41, 0x40, 0x00,
    0x00, 0x0B, 0x00, 0x00, 0xC5, 0xE6, 0x98, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x44, 0x00, 0xC0, 0x00,
    0x00, 0x0C, 0x00, 0x00, 0xC5, 0xD4, 0xB8, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x44, 0x09, 0x40, 0x00,
    0x00, 0x0D, 0x00, 0x00, 0xC5, 0xC2, 0x70, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x44, 0x07, 0x00, 0x00,
    0x00, 0x0E, 0x00, 0x00, 0xC5, 0xA6, 0xF8, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x41, 0xA8, 0x00, 0x00,
    0x00, 0x0F, 0x00, 0x00, 0xC5, 0x9A, 0xB8, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC4, 0x08, 0xC0, 0x00,
    0x00, 0x10, 0x00, 0x00, 0xC5, 0x96, 0xC8, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC4, 0x8B, 0x00, 0x00,
    0x00, 0x11, 0x00, 0x00, 0xC5, 0x81, 0x20, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC4, 0xC5, 0x40, 0x00,
    0x00, 0x12, 0x00, 0x00, 0xC5, 0x5E, 0x90, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC4, 0xEC, 0x60, 0x00,
    0x00, 0x13, 0x00, 0x00, 0xC5, 0x4C, 0xA0, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC5, 0x30, 0x80, 0x00,
    0x00, 0x14, 0x00, 0x00, 0xC5, 0x28, 0x50, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC5, 0x56, 0xA0, 0x00,
    0x00, 0x15, 0x00, 0x00, 0xC4, 0xEF, 0x60, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC5, 0x60, 0x20, 0x00,
    0x00, 0x16, 0x00, 0x00, 0xC4, 0xAA, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC5, 0x6D, 0x80, 0x00,
    0x00, 0x17, 0x00, 0x00, 0xC2, 0x3C, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC5, 0x75, 0x10, 0x00,
    0x00, 0x18, 0x00, 0x00, 0x44, 0x33, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC5, 0x46, 0xC0, 0x00,
    0x00, 0x19, 0x00, 0x00, 0x44, 0x2E, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC5, 0x1B, 0xA0, 0x00,
    0x00, 0x1A, 0x00, 0x00, 0xC3, 0xC3, 0x80, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC4, 0x87, 0xC0, 0x00,
    0x00, 0x1B, 0x00, 0x00, 0xC4, 0x9C, 0x40, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x43, 0xA9, 0x00, 0x00,
    0x00, 0x1C, 0x00, 0x00, 0xC4, 0xB7, 0x20, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x44, 0x96, 0x60, 0x00,
    0x00, 0x1D, 0x00, 0x00, 0xC4, 0xC2, 0x20, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x45, 0x14, 0xC0, 0x00,
    0x00, 0x1E, 0x00, 0x00, 0xC3, 0xF6, 0x80, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x45, 0x42, 0x20, 0x00,
    0x00, 0x1F, 0x00, 0x00, 0x43, 0xA5, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x45, 0x54, 0xB0, 0x00,
    0x00, 0x20, 0x00, 0x00, 0x44, 0xC9, 0xE0, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x45, 0x52, 0x10, 0x00,
    0x00, 0x21, 0x00, 0x00, 0x45, 0x55, 0xE0, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x45, 0x19, 0xC0, 0x00,
    0x00, 0x22, 0x00, 0x00, 0x45, 0x51, 0x30, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x44, 0x96, 0x60, 0x00,
    0x00, 0x23, 0x00, 0x00, 0x45, 0x44, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x44, 0x51, 0xC0, 0x00,
    0x00, 0x24, 0x00, 0x00, 0x45, 0x2C, 0x20, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x43, 0x74, 0x00, 0x00,
    0x00, 0x25, 0x00, 0x00, 0x45, 0x03, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC2, 0xFE, 0x00, 0x00,
    0x00, 0x26, 0x00, 0x00, 0x44, 0xB5, 0x80, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC4, 0x71, 0x00, 0x00,
    0x00, 0x27, 0x00, 0x00, 0x43, 0x7C, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC4, 0xC2, 0x80, 0x00,
    0x00, 0x28, 0x00, 0x00, 0xC3, 0x57, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0xC4, 0x99, 0x60, 0x00,
    0x00, 0x29, 0x00, 0x00, 0xC4, 0x8F, 0xA0, 0x00, 0xC2, 0xA0, 0x00, 0x00, 0x43, 0x88, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80536794-805367A0 0002F0 000C+00 1/0 0/0 0/0 .data            joint_offset_LM$5310 */
SECTION_DATA static u8 joint_offset_LM[12] = {
    0x41, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
};

/* 805367A0-805367A8 0002FC 0008+00 1/0 0/0 0/0 .data            joint_offset_BG$5311 */
SECTION_DATA static u8 joint_offset_BG[8] = {
    0x41, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
};

/* 805367A8-805367C0 000304 0018+00 1/0 0/0 0/0 .data            joint_offset_NP$5312 */
SECTION_DATA static u8 joint_offset_NP[24] = {
    0x41, 0x78, 0x00, 0x00, 0x41, 0x78, 0x00, 0x00, 0x41, 0x78, 0x00, 0x00,
    0x41, 0x20, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
};

/* 805367C0-805367D8 00031C 0018+00 1/0 0/0 0/0 .data            joint_offset_KS$5313 */
SECTION_DATA static u8 joint_offset_KS[24] = {
    0x41, 0x78, 0x00, 0x00, 0x41, 0x78, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00,
    0x40, 0xA0, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
};

/* 805367D8-805367F0 000334 0018+00 1/0 0/0 0/0 .data            joint_offset_CF$5314 */
SECTION_DATA static u8 joint_offset_CF[24] = {
    0x41, 0x70, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
    0x41, 0x70, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
};

/* 805367F0-80536808 00034C 0018+00 1/0 0/0 0/0 .data            joint_offset_RI$5315 */
SECTION_DATA static u8 joint_offset_RI[24] = {
    0x41, 0x84, 0x00, 0x00, 0x41, 0xB0, 0x00, 0x00, 0x41, 0xB0, 0x00, 0x00,
    0x41, 0x20, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
};

/* 80536808-80536810 000364 0006+02 0/1 0/0 0/0 .data            b_id$6145 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 b_id[6 + 2 /* padding */] = {
    0x87,
    0x3A,
    0x87,
    0x3B,
    0x87,
    0x3C,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 80536810-80536828 00036C 0016+02 0/1 0/0 0/0 .data            h_id$6156 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 h_id[22 + 2 /* padding */] = {
    0x87,
    0x38,
    0x87,
    0x39,
    0x87,
    0x39,
    0x87,
    0x37,
    0x87,
    0x39,
    0x87,
    0x36,
    0x87,
    0x38,
    0x87,
    0x39,
    0x87,
    0x39,
    0x87,
    0x37,
    0x87,
    0x39,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 80536828-80536854 000384 002C+00 0/1 0/0 0/0 .data            h_jnt$6157 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 h_jnt[44] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,
    0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
};
#pragma pop

/* 80536854-80536978 -00001 0124+00 1/1 0/0 0/0 .data            @7242 */
SECTION_DATA static void* lit_7242[73] = {
    (void*)(((char*)action__FP13mg_fish_class) + 0x1E4),
    (void*)(((char*)action__FP13mg_fish_class) + 0x200),
    (void*)(((char*)action__FP13mg_fish_class) + 0x234),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x244),
    (void*)(((char*)action__FP13mg_fish_class) + 0x258),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x274),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x2A4),
    (void*)(((char*)action__FP13mg_fish_class) + 0x2B8),
    (void*)(((char*)action__FP13mg_fish_class) + 0x2CC),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x2E0),
    (void*)(((char*)action__FP13mg_fish_class) + 0x2F0),
    (void*)(((char*)action__FP13mg_fish_class) + 0x300),
    (void*)(((char*)action__FP13mg_fish_class) + 0x310),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x324),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x374),
    (void*)(((char*)action__FP13mg_fish_class) + 0x33C),
    (void*)(((char*)action__FP13mg_fish_class) + 0x350),
    (void*)(((char*)action__FP13mg_fish_class) + 0x360),
};

/* 80536978-805369A4 0004D4 002C+00 1/1 0/0 0/0 .data            mouth_idx$7453 */
SECTION_DATA static u8 mouth_idx[44] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x07, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x09,
};

/* 805369A4-805369D0 000500 002C+00 1/1 0/0 0/0 .data            fish_bmd$8228 */
SECTION_DATA static u8 fish_bmd[44] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,
    0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00,
    0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};

/* 805369D0-805369FC 00052C 002C+00 1/1 0/0 0/0 .data            fish_joint$8229 */
SECTION_DATA static u8 fish_joint[44] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00,
    0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06,
};

/* 805369FC-80536A40 000558 0044+00 0/1 0/0 0/0 .data            cc_cyl_src$8395 */
#pragma push
#pragma force_active on
static dCcD_SrcCyl cc_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        35.0f, // mRadius
        35.0f // mHeight
    } // mCyl
};
#pragma pop

/* 80536A40-80536A6C 00059C 002C+00 0/1 0/0 0/0 .data            fish_max$8453 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 fish_max[44] = {
    0x3F, 0x53, 0xF7, 0xCF, 0x3F, 0x7F, 0x7C, 0xEE, 0x3F, 0x7F, 0x7C, 0xEE, 0x3F, 0x7F, 0x7C,
    0xEE, 0x3F, 0x35, 0x3F, 0x7D, 0x3E, 0xDB, 0x22, 0xD1, 0x3E, 0xE5, 0x60, 0x42, 0x3F, 0x16,
    0x87, 0x2B, 0x3F, 0x16, 0x87, 0x2B, 0x3F, 0x0C, 0x49, 0xBA, 0x3F, 0x35, 0x3F, 0x7D,
};
#pragma pop

/* 80536A6C-80536A8C -00001 0020+00 1/0 0/0 0/0 .data            l_daMg_Fish_Method */
static actor_method_class l_daMg_Fish_Method = {
    (process_method_func)daMg_Fish_Create__FP10fopAc_ac_c,
    (process_method_func)daMg_Fish_Delete__FP13mg_fish_class,
    (process_method_func)daMg_Fish_Execute__FP13mg_fish_class,
    (process_method_func)daMg_Fish_IsDelete__FP13mg_fish_class,
    (process_method_func)daMg_Fish_Draw__FP13mg_fish_class,
};

/* 80536A8C-80536ABC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_MG_FISH */
extern actor_process_profile_definition g_profile_MG_FISH = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_MG_FISH,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  0x00000C50,             // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  720,                    // mPriority
  &l_daMg_Fish_Method,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80536ABC-80536AC8 000618 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80536AC8-80536AD4 000624 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80536AD4-80536AE0 000630 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80536AE0-80536AEC 00063C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80536AEC-80536AF8 000648 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80536AF8-80536B1C 000654 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8053614C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80536144,
};

/* 80536B1C-80536B30 000678 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 80536B30-80536B3C 00068C 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80536B3C-80536B6C 000698 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8053612C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8053613C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80536134,
};

/* 80536B6C-80536B78 0006C8 000C+00 2/2 0/0 0/0 .data            __vt__15daMg_Fish_HIO_c */
SECTION_DATA extern void* __vt__15daMg_Fish_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daMg_Fish_HIO_cFv,
};

/* 80529D2C-80529D7C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__15daMg_Fish_HIO_cFv */
daMg_Fish_HIO_c::daMg_Fish_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80536178-8053617C 000010 0004+00 0/3 0/0 0/0 .rodata          @3713 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3713 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x80536178, &lit_3713);
#pragma pop

/* 8053617C-80536180 000014 0004+00 0/19 0/0 0/0 .rodata          @3714 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3714 = 100.0f;
COMPILER_STRIP_GATE(0x8053617C, &lit_3714);
#pragma pop

/* 80536180-80536184 000018 0004+00 5/31 0/0 0/0 .rodata          @3715 */
SECTION_RODATA static u8 const lit_3715[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80536180, &lit_3715);

/* 80529D7C-80529E4C 00013C 00D0+00 3/3 0/0 0/0 .text            hit_vib_set__FP13mg_fish_class */
static void hit_vib_set(mg_fish_class* param_0) {
    // NONMATCHING
}

/* 80529E4C-80529E88 00020C 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80536184-80536188 00001C 0004+00 1/5 0/0 0/0 .rodata          @3723 */
SECTION_RODATA static f32 const lit_3723 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80536184, &lit_3723);

/* 80536188-8053618C 000020 0004+00 1/10 0/0 0/0 .rodata          @3724 */
SECTION_RODATA static f32 const lit_3724 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80536188, &lit_3724);

/* 80529E88-80529F10 000248 0088+00 6/6 0/0 0/0 .text            sibuki_set__FP13mg_fish_classf4cXyz
 */
static void sibuki_set(mg_fish_class* param_0, f32 param_1, cXyz param_2) {
    // NONMATCHING
}

/* 80529F10-80529F68 0002D0 0058+00 1/1 0/0 0/0 .text            s_hitfish_sub__FPvPv */
static void s_hitfish_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053618C-80536190 000024 0004+00 0/12 0/0 0/0 .rodata          @3759 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3759 = 30.0f;
COMPILER_STRIP_GATE(0x8053618C, &lit_3759);
#pragma pop

/* 80536190-80536198 000028 0004+04 0/10 0/0 0/0 .rodata          @3812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3812[1 + 1 /* padding */] = {
    10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80536190, &lit_3812);
#pragma pop

/* 80536198-805361A0 000030 0008+00 0/15 0/0 0/0 .rodata          @3813 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3813[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80536198, &lit_3813);
#pragma pop

/* 805361A0-805361A8 000038 0008+00 0/15 0/0 0/0 .rodata          @3814 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3814[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805361A0, &lit_3814);
#pragma pop

/* 805361A8-805361B0 000040 0008+00 0/15 0/0 0/0 .rodata          @3815 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3815[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805361A8, &lit_3815);
#pragma pop

/* 80529F68-8052A114 000328 01AC+00 2/2 0/0 0/0 .text            pl_check__FP13mg_fish_classf */
static void pl_check(mg_fish_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805361B0-805361B4 000048 0004+00 1/5 0/0 0/0 .rodata          @3823 */
SECTION_RODATA static f32 const lit_3823 = -1.0f;
COMPILER_STRIP_GATE(0x805361B0, &lit_3823);

/* 8052A114-8052A1C0 0004D4 00AC+00 2/2 0/0 0/0 .text            anm_init__FP13mg_fish_classifUcf */
static void anm_init(mg_fish_class* param_0, int param_1, f32 param_2, u8 param_3,
                         f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805361B4-805361B8 00004C 0004+00 2/8 0/0 0/0 .rodata          @3833 */
SECTION_RODATA static f32 const lit_3833 = 2.0f;
COMPILER_STRIP_GATE(0x805361B4, &lit_3833);

/* 8052A1C0-8052A21C 000580 005C+00 3/3 0/0 0/0 .text            mouth_open__FP13mg_fish_class */
static void mouth_open(mg_fish_class* param_0) {
    // NONMATCHING
}

/* 8052A21C-8052A278 0005DC 005C+00 6/6 0/0 0/0 .text            mouth_close__FP13mg_fish_class */
static void mouth_close(mg_fish_class* param_0) {
    // NONMATCHING
}

/* 8052A278-8052A2F4 000638 007C+00 1/1 0/0 0/0 .text            s_lure_sub__FPvPv */
static void s_lure_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805361B8-805361BC 000050 0004+00 1/9 0/0 0/0 .rodata          @3869 */
SECTION_RODATA static f32 const lit_3869 = 20.0f;
COMPILER_STRIP_GATE(0x805361B8, &lit_3869);

/* 8052A2F4-8052A380 0006B4 008C+00 1/1 0/0 0/0 .text            s_esa_sub__FPvPv */
static void s_esa_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8052A380-8052A3EC 000740 006C+00 1/1 0/0 0/0 .text            s_bait_sub__FPvPv */
static void s_bait_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80536B80-80536B84 000008 0001+03 2/2 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80536B84-80536B88 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80536B88-80536B8C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80536B8C-80536B90 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80536B90-80536B94 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80536B94-80536B98 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80536B98-80536B9C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80536B9C-80536BA0 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80536BA0-80536BA4 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80536BA4-80536BA8 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80536BA8-80536BAC 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80536BAC-80536BB0 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80536BB0-80536BB4 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80536BB4-80536BB8 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80536BB8-80536BBC 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80536BBC-80536BC0 -00001 0004+00 1/2 0/0 0/0 .bss             None */
/* 80536BBC 0001+01 data_80536BBC @1009 */
/* 80536BBE 0002+00 data_80536BBE None */
static u8 struct_80536BBC[4];

/* 80536BC0-80536BCC 000048 000C+00 1/1 0/0 0/0 .bss             @3674 */
static u8 lit_3674[12];

/* 80536BCC-80536BE8 000054 001C+00 4/5 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 80536BE8-80536BEC 000070 0004+00 2/2 0/0 0/0 .bss             s_fish_ct */
static u8 s_fish_ct[4];

/* 8052A3EC-8052A464 0007AC 0078+00 1/1 0/0 0/0 .text            s_other_search_sub__FPvPv */
static void s_other_search_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805361BC-805361C0 000054 0004+00 0/11 0/0 0/0 .rodata          @3987 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3987 = 1000.0f;
COMPILER_STRIP_GATE(0x805361BC, &lit_3987);
#pragma pop

/* 805361C0-805361C4 000058 0004+00 0/12 0/0 0/0 .rodata          @3988 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3988 = 1.5f;
COMPILER_STRIP_GATE(0x805361C0, &lit_3988);
#pragma pop

/* 805361C4-805361C8 00005C 0004+00 0/12 0/0 0/0 .rodata          @3989 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3989 = 0.5f;
COMPILER_STRIP_GATE(0x805361C4, &lit_3989);
#pragma pop

/* 805361C8-805361CC 000060 0004+00 0/1 0/0 0/0 .rodata          @3990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3990 = -80.0f;
COMPILER_STRIP_GATE(0x805361C8, &lit_3990);
#pragma pop

/* 805361CC-805361D0 000064 0004+00 0/3 0/0 0/0 .rodata          @3991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3991 = 60.0f;
COMPILER_STRIP_GATE(0x805361CC, &lit_3991);
#pragma pop

/* 8052A464-8052A7BC 000824 0358+00 1/1 0/0 0/0 .text            search_lure__FP13mg_fish_classi */
static void search_lure(mg_fish_class* param_0, int param_1) {
    // NONMATCHING
}

/* 8052A7BC-8052A838 000B7C 007C+00 1/2 0/0 0/0 .text            s_other_bait_sub__FPvPv */
static void s_other_bait_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8052A838-8052A9F0 000BF8 01B8+00 1/1 0/0 0/0 .text            search_bait__FP13mg_fish_class */
static void search_bait(mg_fish_class* param_0) {
    // NONMATCHING
}

/* 8052A9F0-8052ADBC 000DB0 03CC+00 2/2 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8052ADBC-8052AFA0 00117C 01E4+00 2/2 0/0 0/0 .text            nodeCallBack2__FP8J3DJointi */
static void nodeCallBack2(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8052AFA0-8052B070 001360 00D0+00 1/1 0/0 0/0 .text            nodeCallBackLH__FP8J3DJointi */
static void nodeCallBackLH(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8052B070-8052B148 001430 00D8+00 1/1 0/0 0/0 .text            nodeCallBackBB__FP8J3DJointi */
static void nodeCallBackBB(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8052B148-8052B1A0 001508 0058+00 3/3 0/0 0/0 .text            s_bt_sub__FPvPv */
static void s_bt_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8052B1A0-8052B1F8 001560 0058+00 2/2 0/0 0/0 .text            s_sp_sub__FPvPv */
static void s_sp_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8052B1F8-8052B264 0015B8 006C+00 2/2 0/0 0/0 .text            s_lh_sub__FPvPv */
static void s_lh_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8052B264-8052B2BC 001624 0058+00 2/2 0/0 0/0 .text            s_bin_sub__FPvPv */
static void s_bin_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8052B2BC-8052B314 00167C 0058+00 2/2 0/0 0/0 .text            s_kn_sub__FPvPv */
static void s_kn_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8052B314-8052B36C 0016D4 0058+00 2/3 0/0 0/0 .text            s_ed_sub__FPvPv */
static void s_ed_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8052B36C-8052B3C4 00172C 0058+00 2/2 0/0 0/0 .text            s_sy_sub__FPvPv */
static void s_sy_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8052B3C4-8052B41C 001784 0058+00 3/3 0/0 0/0 .text            s_bb_sub__FPvPv */
static void s_bb_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8052B41C-8052B468 0017DC 004C+00 1/1 0/0 0/0 .text            s_bb2_sub__FPvPv */
static void s_bb2_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8052B468-8052B4B4 001828 004C+00 1/1 0/0 0/0 .text            s_sg_sub__FPvPv */
static void s_sg_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805361D0-805361D4 000068 0004+00 0/5 0/0 0/0 .rodata          @4523 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4523 = 10000.0f;
COMPILER_STRIP_GATE(0x805361D0, &lit_4523);
#pragma pop

/* 805361D4-805361D8 00006C 0004+00 0/13 0/0 0/0 .rodata          @4524 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4524 = 50.0f;
COMPILER_STRIP_GATE(0x805361D4, &lit_4524);
#pragma pop

/* 805361D8-805361DC 000070 0004+00 0/2 0/0 0/0 .rodata          @4525 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4525 = 600.0f;
COMPILER_STRIP_GATE(0x805361D8, &lit_4525);
#pragma pop

/* 8052B4B4-8052B928 001874 0474+00 1/1 0/0 0/0 .text            daMg_Fish_Draw__FP13mg_fish_class
 */
static void daMg_Fish_Draw(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805361DC-805361E0 000074 0004+00 2/7 0/0 0/0 .rodata          @4538 */
SECTION_RODATA static f32 const lit_4538 = 1500.0f;
COMPILER_STRIP_GATE(0x805361DC, &lit_4538);

/* 805361E0-805361E4 000078 0004+00 1/1 0/0 0/0 .rodata          @4539 */
SECTION_RODATA static f32 const lit_4539 = -100000.0f;
COMPILER_STRIP_GATE(0x805361E0, &lit_4539);

/* 8052B928-8052B9CC 001CE8 00A4+00 1/1 0/0 0/0 .text get_surface_y__FP13mg_fish_classP4cXyz */
static void get_surface_y(mg_fish_class* param_0, cXyz* param_1) {
    // NONMATCHING
}

/* 8052B9CC-8052BAB8 001D8C 00EC+00 7/7 0/0 0/0 .text get_ground_y__FP13mg_fish_classP4cXyz */
static void get_ground_y(mg_fish_class* param_0, cXyz* param_1) {
    // NONMATCHING
}

/* 8052BAB8-8052BB30 001E78 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805361E4-805361E8 00007C 0004+00 0/10 0/0 0/0 .rodata          @4647 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4647 = 2000.0f;
COMPILER_STRIP_GATE(0x805361E4, &lit_4647);
#pragma pop

/* 805361E8-805361EC 000080 0004+00 0/14 0/0 0/0 .rodata          @4648 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4648 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x805361E8, &lit_4648);
#pragma pop

/* 8052BB30-8052BF68 001EF0 0438+00 1/1 0/0 0/0 .text            mf_swim__FP13mg_fish_class */
static void mf_swim(mg_fish_class* param_0) {
    // NONMATCHING
}

/* 8052BF68-8052BFF8 002328 0090+00 1/1 0/0 0/0 .text            pos_bg_check__FP4cXyzP4cXyz */
static void pos_bg_check(cXyz* param_0, cXyz* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805361EC-805361F0 000084 0004+00 0/6 0/0 0/0 .rodata          @4738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4738 = 500.0f;
COMPILER_STRIP_GATE(0x805361EC, &lit_4738);
#pragma pop

/* 805361F0-805361F4 000088 0004+00 0/3 0/0 0/0 .rodata          @4739 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4739 = 7000.0f;
COMPILER_STRIP_GATE(0x805361F0, &lit_4739);
#pragma pop

/* 8052BFF8-8052C230 0023B8 0238+00 1/1 0/0 0/0 .text            path_search__FP13mg_fish_class */
static void path_search(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805361F4-805361F8 00008C 0004+00 0/8 0/0 0/0 .rodata          @4806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4806 = 200.0f;
COMPILER_STRIP_GATE(0x805361F4, &lit_4806);
#pragma pop

/* 805361F8-805361FC 000090 0004+00 0/5 0/0 0/0 .rodata          @4807 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4807 = 40.0f;
COMPILER_STRIP_GATE(0x805361F8, &lit_4807);
#pragma pop

/* 8052C230-8052C574 0025F0 0344+00 1/1 0/0 0/0 .text            mf_swim_p__FP13mg_fish_class */
static void mf_swim_p(mg_fish_class* param_0) {
    // NONMATCHING
}

/* 8052C574-8052CAA0 002934 052C+00 1/1 0/0 0/0 .text            mf_swim_s__FP13mg_fish_class */
static void mf_swim_s(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805361FC-80536200 000094 0004+00 0/5 0/0 0/0 .rodata          @4976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4976 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x805361FC, &lit_4976);
#pragma pop

/* 8052CAA0-8052CD68 002E60 02C8+00 1/1 0/0 0/0 .text            mf_stay__FP13mg_fish_class */
static void mf_stay(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80536200-80536204 000098 0004+00 0/1 0/0 0/0 .rodata          @5103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5103 = 14000.0f;
COMPILER_STRIP_GATE(0x80536200, &lit_5103);
#pragma pop

/* 80536204-80536208 00009C 0004+00 0/6 0/0 0/0 .rodata          @5104 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5104 = 150.0f;
COMPILER_STRIP_GATE(0x80536204, &lit_5104);
#pragma pop

/* 80536208-8053620C 0000A0 0004+00 1/6 0/0 0/0 .rodata          @5105 */
SECTION_RODATA static f32 const lit_5105 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80536208, &lit_5105);

/* 8052CD68-8052D3BC 003128 0654+00 1/1 0/0 0/0 .text            mf_away__FP13mg_fish_class */
static void mf_away(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053620C-80536210 0000A4 0004+00 0/2 0/0 0/0 .rodata          @5280 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5280 = 8000.0f;
COMPILER_STRIP_GATE(0x8053620C, &lit_5280);
#pragma pop

/* 80536210-80536214 0000A8 0004+00 0/4 0/0 0/0 .rodata          @5281 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5281 = 0.25f;
COMPILER_STRIP_GATE(0x80536210, &lit_5281);
#pragma pop

/* 80536214-80536218 0000AC 0004+00 0/4 0/0 0/0 .rodata          @5282 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5282 = 65536.0f;
COMPILER_STRIP_GATE(0x80536214, &lit_5282);
#pragma pop

/* 80536218-8053621C 0000B0 0004+00 0/3 0/0 0/0 .rodata          @5283 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5283 = -30.0f;
COMPILER_STRIP_GATE(0x80536218, &lit_5283);
#pragma pop

/* 8053621C-80536220 0000B4 0004+00 0/9 0/0 0/0 .rodata          @5284 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5284 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8053621C, &lit_5284);
#pragma pop

/* 80536220-80536224 0000B8 0004+00 0/2 0/0 0/0 .rodata          @5285 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5285 = -10.0f;
COMPILER_STRIP_GATE(0x80536220, &lit_5285);
#pragma pop

/* 80536224-80536228 0000BC 0004+00 0/4 0/0 0/0 .rodata          @5286 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5286 = -1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80536224, &lit_5286);
#pragma pop

/* 80536228-8053622C 0000C0 0004+00 0/2 0/0 0/0 .rodata          @5287 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5287 = 0x3B03126F;
COMPILER_STRIP_GATE(0x80536228, &lit_5287);
#pragma pop

/* 8053622C-80536230 0000C4 0004+00 0/3 0/0 0/0 .rodata          @5288 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5288 = 1300.0f;
COMPILER_STRIP_GATE(0x8053622C, &lit_5288);
#pragma pop

/* 8052D3BC-8052DAE4 00377C 0728+00 1/1 0/0 0/0 .text            ri_swim__FP13mg_fish_class */
static void ri_swim(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80536794-805367A0 0002F0 000C+00 1/0 0/0 0/0 .data            joint_offset_LM$5310 */
extern "C" u8 joint_offset_LM[12];

/* 805367A0-805367A8 0002FC 0008+00 1/0 0/0 0/0 .data            joint_offset_BG$5311 */
extern "C" u8 joint_offset_BG[8];

/* 805367A8-805367C0 000304 0018+00 1/0 0/0 0/0 .data            joint_offset_NP$5312 */
extern "C" u8 joint_offset_NP[24];

/* 805367C0-805367D8 00031C 0018+00 1/0 0/0 0/0 .data            joint_offset_KS$5313 */
extern "C" u8 joint_offset_KS[24];

/* 805367D8-805367F0 000334 0018+00 1/0 0/0 0/0 .data            joint_offset_CF$5314 */
extern "C" u8 joint_offset_CF[24];

/* 805367F0-80536808 00034C 0018+00 1/0 0/0 0/0 .data            joint_offset_RI$5315 */
extern "C" u8 joint_offset_RI[24];

/* 80536230-8053625C -00001 002C+00 0/1 0/0 0/0 .rodata          @5316 */
#pragma push
#pragma force_active on
SECTION_RODATA static void* const lit_5316[11] = {
    (void*)&joint_offset_LM, (void*)&joint_offset_RI, (void*)&joint_offset_NP,
    (void*)&joint_offset_CF, (void*)&joint_offset_KS, (void*)&joint_offset_BG,
    (void*)&joint_offset_LM, (void*)&joint_offset_RI, (void*)&joint_offset_NP,
    (void*)&joint_offset_CF, (void*)&joint_offset_KS,
};
COMPILER_STRIP_GATE(0x80536230, &lit_5316);
#pragma pop

/* 8053625C-80536260 0000F4 0004+00 0/4 0/0 0/0 .rodata          @5379 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5379 = 7.0f;
COMPILER_STRIP_GATE(0x8053625C, &lit_5379);
#pragma pop

/* 80536260-80536264 0000F8 0004+00 0/6 0/0 0/0 .rodata          @5380 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5380 = 3.0f;
COMPILER_STRIP_GATE(0x80536260, &lit_5380);
#pragma pop

/* 80536264-80536268 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5381 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5381 = 2.75f;
COMPILER_STRIP_GATE(0x80536264, &lit_5381);
#pragma pop

/* 80536268-8053626C 000100 0004+00 0/3 0/0 0/0 .rodata          @5382 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5382 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x80536268, &lit_5382);
#pragma pop

/* 8052DAE4-8052DEB8 003EA4 03D4+00 1/1 0/0 0/0 .text            dmcalc__FP13mg_fish_class */
static void dmcalc(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053626C-80536270 000104 0004+00 0/1 0/0 0/0 .rodata          @5632 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5632 = 1.0f / 40.0f;
COMPILER_STRIP_GATE(0x8053626C, &lit_5632);
#pragma pop

/* 80536270-80536274 000108 0004+00 0/4 0/0 0/0 .rodata          @5633 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5633 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80536270, &lit_5633);
#pragma pop

/* 80536274-80536278 00010C 0004+00 0/7 0/0 0/0 .rodata          @5634 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5634 = 15.0f;
COMPILER_STRIP_GATE(0x80536274, &lit_5634);
#pragma pop

/* 80536278-8053627C 000110 0004+00 0/1 0/0 0/0 .rodata          @5635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5635 = 1.75f;
COMPILER_STRIP_GATE(0x80536278, &lit_5635);
#pragma pop

/* 8053627C-80536280 000114 0004+00 0/2 0/0 0/0 .rodata          @5636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5636 = 12.0f;
COMPILER_STRIP_GATE(0x8053627C, &lit_5636);
#pragma pop

/* 80536280-80536284 000118 0004+00 0/6 0/0 0/0 .rodata          @5637 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5637 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80536280, &lit_5637);
#pragma pop

/* 80536284-80536288 00011C 0004+00 0/2 0/0 0/0 .rodata          @5638 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5638 = 25.0f;
COMPILER_STRIP_GATE(0x80536284, &lit_5638);
#pragma pop

/* 80536288-8053628C 000120 0004+00 0/5 0/0 0/0 .rodata          @5639 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5639 = 2.5f;
COMPILER_STRIP_GATE(0x80536288, &lit_5639);
#pragma pop

/* 8053628C-80536290 000124 0004+00 0/1 0/0 0/0 .rodata          @5640 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5640 = -3.0f / 20.0f;
COMPILER_STRIP_GATE(0x8053628C, &lit_5640);
#pragma pop

/* 8052DEB8-8052EAA0 004278 0BE8+00 1/1 0/0 0/0 .text            mf_lure_search__FP13mg_fish_class
 */
static void mf_lure_search(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80536290-80536294 000128 0004+00 0/5 0/0 0/0 .rodata          @5781 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5781 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80536290, &lit_5781);
#pragma pop

/* 8052EAA0-8052F120 004E60 0680+00 1/1 0/0 0/0 .text            mf_bait_search__FP13mg_fish_class
 */
static void mf_bait_search(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80536294-80536298 00012C 0004+00 0/6 0/0 0/0 .rodata          @5957 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5957 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80536294, &lit_5957);
#pragma pop

/* 80536298-8053629C 000130 0004+00 0/3 0/0 0/0 .rodata          @5958 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5958 = 7.0f / 20.0f;
COMPILER_STRIP_GATE(0x80536298, &lit_5958);
#pragma pop

/* 8053629C-805362A0 000134 0004+00 0/1 0/0 0/0 .rodata          @5959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5959 = 11.0f / 20.0f;
COMPILER_STRIP_GATE(0x8053629C, &lit_5959);
#pragma pop

/* 805362A0-805362A4 000138 0004+00 0/1 0/0 0/0 .rodata          @5960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5960 = 13.0f;
COMPILER_STRIP_GATE(0x805362A0, &lit_5960);
#pragma pop

/* 805362A4-805362A8 00013C 0004+00 0/1 0/0 0/0 .rodata          @5961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5961 = 13.0f / 20.0f;
COMPILER_STRIP_GATE(0x805362A4, &lit_5961);
#pragma pop

/* 805362A8-805362AC 000140 0004+00 0/1 0/0 0/0 .rodata          @5962 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5962 = 45.0f;
COMPILER_STRIP_GATE(0x805362A8, &lit_5962);
#pragma pop

/* 805362AC-805362B0 000144 0004+00 0/2 0/0 0/0 .rodata          @5963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5963 = 11.0f;
COMPILER_STRIP_GATE(0x805362AC, &lit_5963);
#pragma pop

/* 805362B0-805362B4 000148 0004+00 0/1 0/0 0/0 .rodata          @5964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5964 = 9.0f;
COMPILER_STRIP_GATE(0x805362B0, &lit_5964);
#pragma pop

/* 805362B4-805362B8 00014C 0004+00 0/2 0/0 0/0 .rodata          @5965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5965 = 8.0f;
COMPILER_STRIP_GATE(0x805362B4, &lit_5965);
#pragma pop

/* 805362B8-805362BC 000150 0004+00 0/2 0/0 0/0 .rodata          @5966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5966 = 6.0f;
COMPILER_STRIP_GATE(0x805362B8, &lit_5966);
#pragma pop

/* 805362BC-805362C0 000154 0004+00 0/1 0/0 0/0 .rodata          @5967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5967 = 90.0f;
COMPILER_STRIP_GATE(0x805362BC, &lit_5967);
#pragma pop

/* 805362C0-805362C4 000158 0004+00 0/5 0/0 0/0 .rodata          @5968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5968 = 4000.0f;
COMPILER_STRIP_GATE(0x805362C0, &lit_5968);
#pragma pop

/* 8052F120-8052FA4C 0054E0 092C+00 1/1 0/0 0/0 .text            mf_hit__FP13mg_fish_class */
static void mf_hit(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805362C4-805362C8 00015C 0004+00 0/1 0/0 0/0 .rodata          @6132 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6132 = 16384.0f;
COMPILER_STRIP_GATE(0x805362C4, &lit_6132);
#pragma pop

/* 805362C8-805362CC 000160 0004+00 0/1 0/0 0/0 .rodata          @6133 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6133 = 384.0f;
COMPILER_STRIP_GATE(0x805362C8, &lit_6133);
#pragma pop

/* 805362CC-805362D0 000164 0004+00 0/1 0/0 0/0 .rodata          @6134 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6134 = 23.0f;
COMPILER_STRIP_GATE(0x805362CC, &lit_6134);
#pragma pop

/* 805362D0-805362D4 000168 0004+00 0/1 0/0 0/0 .rodata          @6135 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6135 = -0.5f;
COMPILER_STRIP_GATE(0x805362D0, &lit_6135);
#pragma pop

/* 805362D4-805362D8 00016C 0004+00 0/1 0/0 0/0 .rodata          @6136 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6136 = 13000.0f;
COMPILER_STRIP_GATE(0x805362D4, &lit_6136);
#pragma pop

/* 8052FA4C-8053036C 005E0C 0920+00 1/1 0/0 0/0 .text            mf_jump__FP13mg_fish_class */
static void mf_jump(mg_fish_class* param_0) {
    // NONMATCHING
}

/* 8053036C-8053055C 00672C 01F0+00 2/2 0/0 0/0 .text            pota_set__FP13mg_fish_class */
static void pota_set(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805362D8-805362DC 000170 0004+00 0/3 0/0 0/0 .rodata          @6293 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6293 = 3000.0f;
COMPILER_STRIP_GATE(0x805362D8, &lit_6293);
#pragma pop

/* 8053055C-80530924 00691C 03C8+00 1/1 0/0 0/0 .text            mf_catch__FP13mg_fish_class */
static void mf_catch(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805362DC-805362E0 000174 0004+00 0/1 0/0 0/0 .rodata          @6455 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6455 = 80.0f;
COMPILER_STRIP_GATE(0x805362DC, &lit_6455);
#pragma pop

/* 805362E0-805362E4 000178 0004+00 0/1 0/0 0/0 .rodata          @6456 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6456 = 0xBB03126F;
COMPILER_STRIP_GATE(0x805362E0, &lit_6456);
#pragma pop

/* 805362E4-805362E8 00017C 0004+00 0/1 0/0 0/0 .rodata          @6457 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6457 = -1.0f / 5.0f;
COMPILER_STRIP_GATE(0x805362E4, &lit_6457);
#pragma pop

/* 805362E8-805362EC 000180 0004+00 0/1 0/0 0/0 .rodata          @6458 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6458 = 14.0f;
COMPILER_STRIP_GATE(0x805362E8, &lit_6458);
#pragma pop

/* 805362EC-805362F0 000184 0004+00 0/1 0/0 0/0 .rodata          @6459 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6459 = 32768.0f;
COMPILER_STRIP_GATE(0x805362EC, &lit_6459);
#pragma pop

/* 80530924-8053109C 006CE4 0778+00 1/1 0/0 0/0 .text            mf_esa_search__FP13mg_fish_class */
static void mf_esa_search(mg_fish_class* param_0) {
    // NONMATCHING
}

/* 8053109C-805313D8 00745C 033C+00 1/1 0/0 0/0 .text            mf_esa_hit__FP13mg_fish_class */
static void mf_esa_hit(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805362F0-805362F4 000188 0004+00 0/1 0/0 0/0 .rodata          @6648 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6648 = 5000.0f;
COMPILER_STRIP_GATE(0x805362F0, &lit_6648);
#pragma pop

/* 805362F4-805362F8 00018C 0004+00 0/1 0/0 0/0 .rodata          @6649 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6649 = 700.0f;
COMPILER_STRIP_GATE(0x805362F4, &lit_6649);
#pragma pop

/* 805362F8-805362FC 000190 0004+00 0/3 0/0 0/0 .rodata          @6650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6650 = 180.0f;
COMPILER_STRIP_GATE(0x805362F8, &lit_6650);
#pragma pop

/* 805362FC-80536300 000194 0004+00 0/1 0/0 0/0 .rodata          @6651 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6651 = 160.0f;
COMPILER_STRIP_GATE(0x805362FC, &lit_6651);
#pragma pop

/* 80536300-80536304 000198 0004+00 0/1 0/0 0/0 .rodata          @6652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6652 = 58.0f;
COMPILER_STRIP_GATE(0x80536300, &lit_6652);
#pragma pop

/* 80536304-80536308 00019C 0004+00 0/1 0/0 0/0 .rodata          @6653 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6653 = 0x3BA3D70A;
COMPILER_STRIP_GATE(0x80536304, &lit_6653);
#pragma pop

/* 805313D8-8053198C 007798 05B4+00 1/1 0/0 0/0 .text            mf_esa_catch__FP13mg_fish_class */
static void mf_esa_catch(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80536308-8053630C 0001A0 0004+00 0/4 0/0 0/0 .rodata          @6722 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6722 = 70.0f;
COMPILER_STRIP_GATE(0x80536308, &lit_6722);
#pragma pop

/* 8053630C-80536310 0001A4 0004+00 0/1 0/0 0/0 .rodata          @6723 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6723 = 190.0f;
COMPILER_STRIP_GATE(0x8053630C, &lit_6723);
#pragma pop

/* 80536310-80536314 0001A8 0004+00 0/4 0/0 0/0 .rodata          @6724 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6724 = -720.0f;
COMPILER_STRIP_GATE(0x80536310, &lit_6724);
#pragma pop

/* 80536314-80536318 0001AC 0004+00 0/1 0/0 0/0 .rodata          @6725 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6725 = 0x3B83126F;
COMPILER_STRIP_GATE(0x80536314, &lit_6725);
#pragma pop

/* 8053198C-80531CD4 007D4C 0348+00 1/1 0/0 0/0 .text            mf_aqua__FP13mg_fish_class */
static void mf_aqua(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80536318-8053631C 0001B0 0004+00 0/1 0/0 0/0 .rodata          @6847 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6847 = 120.0f;
COMPILER_STRIP_GATE(0x80536318, &lit_6847);
#pragma pop

/* 8053631C-80536320 0001B4 0004+00 0/1 0/0 0/0 .rodata          @6848 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6848 = 140.0f;
COMPILER_STRIP_GATE(0x8053631C, &lit_6848);
#pragma pop

/* 80536320-80536324 0001B8 0004+00 0/1 0/0 0/0 .rodata          @6849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6849 = 220.0f;
COMPILER_STRIP_GATE(0x80536320, &lit_6849);
#pragma pop

/* 80531CD4-805322E0 008094 060C+00 1/1 0/0 0/0 .text            ri_aqua__FP13mg_fish_class */
static void ri_aqua(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80536324-80536328 0001BC 0004+00 0/1 0/0 0/0 .rodata          @6893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6893 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80536324, &lit_6893);
#pragma pop

/* 805322E0-805324D8 0086A0 01F8+00 1/1 0/0 0/0 .text            mf_aqua_tilt__FP13mg_fish_class */
static void mf_aqua_tilt(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80536328-8053632C 0001C0 0004+00 0/1 0/0 0/0 .rodata          @7221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7221 = 4500.0f;
COMPILER_STRIP_GATE(0x80536328, &lit_7221);
#pragma pop

/* 8053632C-80536330 0001C4 0004+00 0/1 0/0 0/0 .rodata          @7222 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7222 = 27.0f / 10.0f;
COMPILER_STRIP_GATE(0x8053632C, &lit_7222);
#pragma pop

/* 80536438-80536438 0002D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80536438 = "F_SP127";
#pragma pop

/* 805324D8-80533268 008898 0D90+00 2/1 0/0 0/0 .text            action__FP13mg_fish_class */
static void action(mg_fish_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80536330-80536334 0001C8 0004+00 0/1 0/0 0/0 .rodata          @7223 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7223 = 0x38D1B717;
COMPILER_STRIP_GATE(0x80536330, &lit_7223);
#pragma pop

/* 80536334-80536338 0001CC 0004+00 0/0 0/0 0/0 .rodata          @7224 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7224 = 0x391D4952;
COMPILER_STRIP_GATE(0x80536334, &lit_7224);
#pragma pop

/* 80536338-8053633C 0001D0 0004+00 0/0 0/0 0/0 .rodata          @7225 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7225 = 0x3951B717;
COMPILER_STRIP_GATE(0x80536338, &lit_7225);
#pragma pop

/* 8053633C-80536340 0001D4 0004+00 0/0 0/0 0/0 .rodata          @7226 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7226 = 0x399D4952;
COMPILER_STRIP_GATE(0x8053633C, &lit_7226);
#pragma pop

/* 80536340-80536344 0001D8 0004+00 0/0 0/0 0/0 .rodata          @7227 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7227 = 0x39D1B717;
COMPILER_STRIP_GATE(0x80536340, &lit_7227);
#pragma pop

/* 80536344-80536348 0001DC 0004+00 0/0 0/0 0/0 .rodata          @7228 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7228 = 0x3983126F;
COMPILER_STRIP_GATE(0x80536344, &lit_7228);
#pragma pop

/* 80536348-8053634C 0001E0 0004+00 0/1 0/0 0/0 .rodata          @7229 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7229 = 35.0f;
COMPILER_STRIP_GATE(0x80536348, &lit_7229);
#pragma pop

/* 8053634C-80536350 0001E4 0004+00 0/0 0/0 0/0 .rodata          @7230 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7230 = -9000.0f;
COMPILER_STRIP_GATE(0x8053634C, &lit_7230);
#pragma pop

/* 80536350-80536354 0001E8 0004+00 0/0 0/0 0/0 .rodata          @7231 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7231 = -1000.0f;
COMPILER_STRIP_GATE(0x80536350, &lit_7231);
#pragma pop

/* 80536354-80536358 0001EC 0004+00 0/0 0/0 0/0 .rodata          @7232 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7232 = 2500.0f;
COMPILER_STRIP_GATE(0x80536354, &lit_7232);
#pragma pop

/* 80536358-8053635C 0001F0 0004+00 0/0 0/0 0/0 .rodata          @7233 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7233 = 4.5f;
COMPILER_STRIP_GATE(0x80536358, &lit_7233);
#pragma pop

/* 8053635C-80536360 0001F4 0004+00 0/1 0/0 0/0 .rodata          @7234 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7234 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x8053635C, &lit_7234);
#pragma pop

/* 80536360-80536364 0001F8 0004+00 0/0 0/0 0/0 .rodata          @7235 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7235 = -675.0f;
COMPILER_STRIP_GATE(0x80536360, &lit_7235);
#pragma pop

/* 80536364-80536368 0001FC 0004+00 0/0 0/0 0/0 .rodata          @7236 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7236 = -765.0f;
COMPILER_STRIP_GATE(0x80536364, &lit_7236);
#pragma pop

/* 80536368-8053636C 000200 0004+00 0/0 0/0 0/0 .rodata          @7237 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7237 = 290.0f;
COMPILER_STRIP_GATE(0x80536368, &lit_7237);
#pragma pop

/* 8053636C-80536370 000204 0004+00 0/0 0/0 0/0 .rodata          @7238 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7238 = -150.0f;
COMPILER_STRIP_GATE(0x8053636C, &lit_7238);
#pragma pop

/* 80536370-80536374 000208 0004+00 0/0 0/0 0/0 .rodata          @7239 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7239 = 3500.0f;
COMPILER_STRIP_GATE(0x80536370, &lit_7239);
#pragma pop

/* 80536374-80536378 00020C 0004+00 0/0 0/0 0/0 .rodata          @7240 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7240 = 23333.0f;
COMPILER_STRIP_GATE(0x80536374, &lit_7240);
#pragma pop

/* 80536378-8053637C 000210 0004+00 0/0 0/0 0/0 .rodata          @7241 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7241 = 800.0f;
COMPILER_STRIP_GATE(0x80536378, &lit_7241);
#pragma pop

/* 8053637C-80536380 000214 0004+00 0/2 0/0 0/0 .rodata          @7288 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7288 = -3.0f;
COMPILER_STRIP_GATE(0x8053637C, &lit_7288);
#pragma pop

/* 80533268-80533484 009628 021C+00 1/1 0/0 0/0 .text ke_control__FP13mg_fish_classP7mf_ke_s */
static void ke_control(mg_fish_class* param_0, mf_ke_s* param_1) {
    // NONMATCHING
}

/* 80533484-80533540 009844 00BC+00 1/1 0/0 0/0 .text ke_move__FP13mg_fish_classP7mf_ke_si */
static void ke_move(mg_fish_class* param_0, mf_ke_s* param_1, int param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80536380-8053638C 000218 000C+00 0/1 0/0 0/0 .rodata          @7384 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7384[12] = {
    0x3F, 0x80, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x40, 0x60, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80536380, &lit_7384);
#pragma pop

/* 8053638C-80536398 000224 000C+00 0/1 0/0 0/0 .rodata          @7398 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7398[12] = {
    0x3F, 0x80, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x40, 0x60, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8053638C, &lit_7398);
#pragma pop

/* 80536398-8053639C 000230 0004+00 0/1 0/0 0/0 .rodata          @8029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8029 = -5.0f;
COMPILER_STRIP_GATE(0x80536398, &lit_8029);
#pragma pop

/* 8053639C-805363A0 000234 0004+00 0/1 0/0 0/0 .rodata          @8030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8030 = -100.0f;
COMPILER_STRIP_GATE(0x8053639C, &lit_8030);
#pragma pop

/* 805363A0-805363A4 000238 0004+00 0/1 0/0 0/0 .rodata          @8031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8031 = 28.0f / 25.0f;
COMPILER_STRIP_GATE(0x805363A0, &lit_8031);
#pragma pop

/* 805363A4-805363A8 00023C 0004+00 0/1 0/0 0/0 .rodata          @8032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8032 = -25.0f;
COMPILER_STRIP_GATE(0x805363A4, &lit_8032);
#pragma pop

/* 805363A8-805363AC 000240 0004+00 0/1 0/0 0/0 .rodata          @8033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8033 = -15.0f;
COMPILER_STRIP_GATE(0x805363A8, &lit_8033);
#pragma pop

/* 805363AC-805363B0 000244 0004+00 0/1 0/0 0/0 .rodata          @8034 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8034 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x805363AC, &lit_8034);
#pragma pop

/* 805363B0-805363B4 000248 0004+00 0/1 0/0 0/0 .rodata          @8035 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8035 = 29.0f;
COMPILER_STRIP_GATE(0x805363B0, &lit_8035);
#pragma pop

/* 805363B4-805363B8 00024C 0004+00 0/1 0/0 0/0 .rodata          @8036 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8036 = 9.0f / 25.0f;
COMPILER_STRIP_GATE(0x805363B4, &lit_8036);
#pragma pop

/* 805363B8-805363BC 000250 0004+00 0/1 0/0 0/0 .rodata          @8037 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8037 = -40.0f;
COMPILER_STRIP_GATE(0x805363B8, &lit_8037);
#pragma pop

/* 805363BC-805363C0 000254 0004+00 0/1 0/0 0/0 .rodata          @8038 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8038 = 17.0f;
COMPILER_STRIP_GATE(0x805363BC, &lit_8038);
#pragma pop

/* 805363C0-805363C4 000258 0004+00 0/1 0/0 0/0 .rodata          @8039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8039 = -9.0f;
COMPILER_STRIP_GATE(0x805363C0, &lit_8039);
#pragma pop

/* 805363C4-805363C8 00025C 0004+00 0/1 0/0 0/0 .rodata          @8040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8040 = 2600.0f;
COMPILER_STRIP_GATE(0x805363C4, &lit_8040);
#pragma pop

/* 805363C8-805363CC 000260 0004+00 0/1 0/0 0/0 .rodata          @8041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8041 = -8.0f;
COMPILER_STRIP_GATE(0x805363C8, &lit_8041);
#pragma pop

/* 805363CC-805363D0 000264 0004+00 0/1 0/0 0/0 .rodata          @8042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8042 = -14.0f;
COMPILER_STRIP_GATE(0x805363CC, &lit_8042);
#pragma pop

/* 805363D0-805363D4 000268 0004+00 0/1 0/0 0/0 .rodata          @8043 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8043 = -19.0f;
COMPILER_STRIP_GATE(0x805363D0, &lit_8043);
#pragma pop

/* 805363D4-805363D8 00026C 0004+00 0/1 0/0 0/0 .rodata          @8044 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8044 = -2.0f;
COMPILER_STRIP_GATE(0x805363D4, &lit_8044);
#pragma pop

/* 805363D8-805363DC 000270 0004+00 0/1 0/0 0/0 .rodata          @8045 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8045 = 12.0f / 25.0f;
COMPILER_STRIP_GATE(0x805363D8, &lit_8045);
#pragma pop

/* 805363DC-805363E0 000274 0004+00 0/1 0/0 0/0 .rodata          @8046 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8046 = -45.0f;
COMPILER_STRIP_GATE(0x805363DC, &lit_8046);
#pragma pop

/* 805363E0-805363E4 000278 0004+00 0/1 0/0 0/0 .rodata          @8047 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8047 = -35.0f;
COMPILER_STRIP_GATE(0x805363E0, &lit_8047);
#pragma pop

/* 80536BEC-80536BFC 000074 000C+04 0/1 0/0 0/0 .bss             @7455 */
#pragma push
#pragma force_active on
static u8 lit_7455[12 + 4 /* padding */];
#pragma pop

/* 80536BFC-80536C08 000084 000C+00 0/1 0/0 0/0 .bss             @7458 */
#pragma push
#pragma force_active on
static u8 lit_7458[12];
#pragma pop

/* 80536C08-80536C14 000090 000C+00 0/1 0/0 0/0 .bss             @7459 */
#pragma push
#pragma force_active on
static u8 lit_7459[12];
#pragma pop

/* 80536C14-80536C20 00009C 000C+00 0/1 0/0 0/0 .bss             @7460 */
#pragma push
#pragma force_active on
static u8 lit_7460[12];
#pragma pop

/* 80536C20-80536C2C 0000A8 000C+00 0/1 0/0 0/0 .bss             @7461 */
#pragma push
#pragma force_active on
static u8 lit_7461[12];
#pragma pop

/* 80536C2C-80536C38 0000B4 000C+00 0/1 0/0 0/0 .bss             @7462 */
#pragma push
#pragma force_active on
static u8 lit_7462[12];
#pragma pop

/* 80536C38-80536C44 0000C0 000C+00 0/1 0/0 0/0 .bss             @7463 */
#pragma push
#pragma force_active on
static u8 lit_7463[12];
#pragma pop

/* 80536C44-80536C50 0000CC 000C+00 0/1 0/0 0/0 .bss             @7464 */
#pragma push
#pragma force_active on
static u8 lit_7464[12];
#pragma pop

/* 80536C50-80536C5C 0000D8 000C+00 0/1 0/0 0/0 .bss             @7465 */
#pragma push
#pragma force_active on
static u8 lit_7465[12];
#pragma pop

/* 80536C5C-80536C68 0000E4 000C+00 0/1 0/0 0/0 .bss             @7466 */
#pragma push
#pragma force_active on
static u8 lit_7466[12];
#pragma pop

/* 80536C68-80536C74 0000F0 000C+00 0/1 0/0 0/0 .bss             @7467 */
#pragma push
#pragma force_active on
static u8 lit_7467[12];
#pragma pop

/* 80536C74-80536CF8 0000FC 0084+00 0/1 0/0 0/0 .bss             mouth_off$7454 */
#pragma push
#pragma force_active on
static u8 mouth_off[132];
#pragma pop

/* 80533540-80534964 009900 1424+00 2/1 0/0 0/0 .text daMg_Fish_Execute__FP13mg_fish_class */
static void daMg_Fish_Execute(mg_fish_class* param_0) {
    // NONMATCHING
}

/* 80534964-8053496C 00AD24 0008+00 1/0 0/0 0/0 .text daMg_Fish_IsDelete__FP13mg_fish_class */
static bool daMg_Fish_IsDelete(mg_fish_class* param_0) {
    return true;
}

/* 8053496C-805349DC 00AD2C 0070+00 1/0 0/0 0/0 .text            daMg_Fish_Delete__FP13mg_fish_class
 */
static void daMg_Fish_Delete(mg_fish_class* param_0) {
    // NONMATCHING
}

/* 805349DC-80534E90 00AD9C 04B4+00 1/1 0/0 0/0 .text            useHeapInit2__FP10fopAc_ac_c */
static void useHeapInit2(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80534E90-80534ED8 00B250 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80534ED8-80535138 00B298 0260+00 1/1 0/0 0/0 .text            useHeapImg_fisht__FP10fopAc_ac_c */
static void useHeapImg_fisht(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805363E4-805363E8 00027C 0004+00 0/1 0/0 0/0 .rodata          @8763 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8763 = -200.0f;
COMPILER_STRIP_GATE(0x805363E4, &lit_8763);
#pragma pop

/* 805363E8-805363EC 000280 0004+00 0/1 0/0 0/0 .rodata          @8764 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8764 = 127.0f / 50.0f;
COMPILER_STRIP_GATE(0x805363E8, &lit_8764);
#pragma pop

/* 805363EC-805363F0 000284 0004+00 0/1 0/0 0/0 .rodata          @8765 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8765 = 0x3D5A7B0B;
COMPILER_STRIP_GATE(0x805363EC, &lit_8765);
#pragma pop

/* 805363F0-805363F4 000288 0004+00 0/1 0/0 0/0 .rodata          @8766 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8766 = 0x3CAC0831;
COMPILER_STRIP_GATE(0x805363F0, &lit_8766);
#pragma pop

/* 805363F4-805363F8 00028C 0004+00 0/1 0/0 0/0 .rodata          @8767 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8767 = 7.0f / 25.0f;
COMPILER_STRIP_GATE(0x805363F4, &lit_8767);
#pragma pop

/* 805363F8-805363FC 000290 0004+00 0/1 0/0 0/0 .rodata          @8768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8768 = 67.0f / 100.0f;
COMPILER_STRIP_GATE(0x805363F8, &lit_8768);
#pragma pop

/* 805363FC-80536400 000294 0004+00 0/1 0/0 0/0 .rodata          @8769 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8769 = 0x3D1FBE77;
COMPILER_STRIP_GATE(0x805363FC, &lit_8769);
#pragma pop

/* 80536400-80536404 000298 0004+00 0/1 0/0 0/0 .rodata          @8770 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8770 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x80536400, &lit_8770);
#pragma pop

/* 80536404-80536408 00029C 0004+00 0/1 0/0 0/0 .rodata          @8771 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8771 = 0x3CE6F71A;
COMPILER_STRIP_GATE(0x80536404, &lit_8771);
#pragma pop

/* 80536408-8053640C 0002A0 0004+00 0/1 0/0 0/0 .rodata          @8772 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8772 = 0x3C35DCC6;
COMPILER_STRIP_GATE(0x80536408, &lit_8772);
#pragma pop

/* 8053640C-80536410 0002A4 0004+00 0/1 0/0 0/0 .rodata          @8773 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8773 = 17.0f / 20.0f;
COMPILER_STRIP_GATE(0x8053640C, &lit_8773);
#pragma pop

/* 80536410-80536414 0002A8 0004+00 0/1 0/0 0/0 .rodata          @8774 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8774 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80536410, &lit_8774);
#pragma pop

/* 80536414-80536418 0002AC 0004+00 0/1 0/0 0/0 .rodata          @8775 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8775 = 21.0f / 50.0f;
COMPILER_STRIP_GATE(0x80536414, &lit_8775);
#pragma pop

/* 80536418-8053641C 0002B0 0004+00 0/1 0/0 0/0 .rodata          @8776 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8776 = 20000.0f;
COMPILER_STRIP_GATE(0x80536418, &lit_8776);
#pragma pop

/* 8053641C-80536420 0002B4 0004+00 0/1 0/0 0/0 .rodata          @8777 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8777 = 110.0f;
COMPILER_STRIP_GATE(0x8053641C, &lit_8777);
#pragma pop

/* 80536420-80536424 0002B8 0004+00 0/1 0/0 0/0 .rodata          @8778 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8778 = 200000.0f;
COMPILER_STRIP_GATE(0x80536420, &lit_8778);
#pragma pop

/* 80536424-80536428 0002BC 0004+00 0/1 0/0 0/0 .rodata          @8779 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8779 = 100000.0f;
COMPILER_STRIP_GATE(0x80536424, &lit_8779);
#pragma pop

/* 80536428-80536430 0002C0 0008+00 0/1 0/0 0/0 .rodata          @8781 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_8781[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80536428, &lit_8781);
#pragma pop

/* 80536430-80536438 0002C8 0008+00 0/1 0/0 0/0 .rodata          @8782 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_8782[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80536430, &lit_8782);
#pragma pop

/* 80536438-80536438 0002D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80536440 = "Mg_f_lm";
SECTION_DEAD static char const* const stringBase_80536448 = "Mg_f_np";
SECTION_DEAD static char const* const stringBase_80536450 = "Mg_f_cf";
SECTION_DEAD static char const* const stringBase_80536458 = "Mg_f_ri";
SECTION_DEAD static char const* const stringBase_80536460 = "Mg_f_ks";
SECTION_DEAD static char const* const stringBase_80536468 = "Mg_f_bg";
SECTION_DEAD static char const* const stringBase_80536470 = "Mg_f_bt";
SECTION_DEAD static char const* const stringBase_80536478 = "Mg_f_sp";
SECTION_DEAD static char const* const stringBase_80536480 = "Mg_f_bb";
SECTION_DEAD static char const* const stringBase_80536488 = "Mg_f_lh";
SECTION_DEAD static char const* const stringBase_80536490 = "O_gD_bott";
SECTION_DEAD static char const* const stringBase_8053649A = "R_SP127";
#pragma pop

/* 80535138-80535DA8 00B4F8 0C70+00 1/0 0/0 0/0 .text            daMg_Fish_Create__FP10fopAc_ac_c */
static void daMg_Fish_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80535DA8-80535DF0 00C168 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80535DF0-80535E38 00C1B0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80535E38-80535E94 00C1F8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80535E94-80535F04 00C254 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80535F04-80535F74 00C2C4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80535F74-80535FD4 00C334 0060+00 1/1 0/0 0/0 .text            __dt__7mf_ke_sFv */
mf_ke_s::~mf_ke_s() {
    // NONMATCHING
}

/* 80535FD4-8053601C 00C394 0048+00 1/1 0/0 0/0 .text            __ct__7mf_ke_sFv */
mf_ke_s::mf_ke_s() {
    // NONMATCHING
}

/* 8053601C-80536058 00C3DC 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80536058-8053605C 00C418 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 8053605C-80536060 00C41C 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80536060-805360A8 00C420 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 805360A8-805360F0 00C468 0048+00 2/1 0/0 0/0 .text            __dt__15daMg_Fish_HIO_cFv */
daMg_Fish_HIO_c::~daMg_Fish_HIO_c() {
    // NONMATCHING
}

/* 805360F0-8053612C 00C4B0 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_mg_fish_cpp */
void __sinit_d_a_mg_fish_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x805360F0, __sinit_d_a_mg_fish_cpp);
#pragma pop

/* 8053612C-80536134 00C4EC 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_8053612C() {
    // NONMATCHING
}

/* 80536134-8053613C 00C4F4 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_80536134() {
    // NONMATCHING
}

/* 8053613C-80536144 00C4FC 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_8053613C() {
    // NONMATCHING
}

/* 80536144-8053614C 00C504 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80536144() {
    // NONMATCHING
}

/* 8053614C-80536154 00C50C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8053614C() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80536CF8-80536CFC 000180 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80536CF8[4];
#pragma pop

/* 80536CFC-80536D00 000184 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80536CFC[4];
#pragma pop

/* 80536D00-80536D04 000188 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80536D00[4];
#pragma pop

/* 80536D04-80536D08 00018C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80536D04[4];
#pragma pop

/* 80536D08-80536D0C 000190 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80536D08[4];
#pragma pop

/* 80536D0C-80536D10 000194 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80536D0C[4];
#pragma pop

/* 80536D10-80536D14 000198 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80536D10[4];
#pragma pop

/* 80536D14-80536D18 00019C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80536D14[4];
#pragma pop

/* 80536D18-80536D1C 0001A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80536D18[4];
#pragma pop

/* 80536D1C-80536D20 0001A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80536D1C[4];
#pragma pop

/* 80536D20-80536D24 0001A8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80536D20[4];
#pragma pop

/* 80536D24-80536D28 0001AC 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80536D24[4];
#pragma pop

/* 80536D28-80536D2C 0001B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80536D28[4];
#pragma pop

/* 80536D2C-80536D30 0001B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80536D2C[4];
#pragma pop

/* 80536D30-80536D34 0001B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80536D30[4];
#pragma pop

/* 80536D34-80536D38 0001BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80536D34[4];
#pragma pop

/* 80536D38-80536D3C 0001C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80536D38[4];
#pragma pop

/* 80536D3C-80536D40 0001C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80536D3C[4];
#pragma pop

/* 80536D40-80536D44 0001C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80536D40[4];
#pragma pop

/* 80536D44-80536D48 0001CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80536D44[4];
#pragma pop

/* 80536D48-80536D4C 0001D0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80536D48[4];
#pragma pop

/* 80536D4C-80536D50 0001D4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80536D4C[4];
#pragma pop

/* 80536D50-80536D54 0001D8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80536D50[4];
#pragma pop

/* 80536D54-80536D58 0001DC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80536D54[4];
#pragma pop

/* 80536D58-80536D5C 0001E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80536D58[4];
#pragma pop

/* 80536438-80536438 0002D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/**
 * @file d_a_npc_ks.cpp
 * 
*/

#include "d/actor/d_a_npc_ks.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"


//
// Forward References:
//

extern "C" void __ct__14daNpc_Ks_HIO_cFv();
extern "C" static void setPlayerPosAndAngle__FP4cXyzs();
extern "C" static void checkDoorDemo__Fv();
extern "C" static void otherBgCheck__FP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void __dt__4cXyzFv();
extern "C" static void anm_init__FP12npc_ks_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daNpc_Ks_Draw__FP12npc_ks_class();
extern "C" static void s_resq_sub__FPvPv();
extern "C" static void s_b_sub__FPvPv();
extern "C" static void search_bomb__FP12npc_ks_classi();
extern "C" static void bomb_view_check__FP12npc_ks_class();
extern "C" static void bomb_check__FP12npc_ks_class();
extern "C" static void s_e_sub__FPvPv();
extern "C" static void search_enemy__FP12npc_ks_classif();
extern "C" static void enemy_view_check__FP12npc_ks_classf();
extern "C" static void enemy_check__FP12npc_ks_classf();
extern "C" static void s_en_sub__FPvPv();
extern "C" static void en_search_test__FP12npc_ks_class();
extern "C" static void s_ori_sub__FPvPv();
extern "C" static void npc_ks_pole_ori__FP12npc_ks_class();
extern "C" static void npc_ks_ori__FP12npc_ks_class();
extern "C" static void shot_bo_sub__FPvPv();
extern "C" static void npc_ks_ori2__FP12npc_ks_class();
extern "C" static void npc_ks_home__FP12npc_ks_class();
extern "C" static void s_sw_sub__FPvPv();
extern "C" static void s_ha_sub__FPvPv();
extern "C" static void s_01_sub__FPvPv();
extern "C" static void npc_ks_demo_02__FP12npc_ks_class();
extern "C" static void s_dn_sub__FPvPv();
extern "C" static void npc_ks_demo_022__FP12npc_ks_class();
extern "C" static void npc_ks_demo_04__FP12npc_ks_class();
extern "C" static void npc_ks_to_hang__FP12npc_ks_class();
extern "C" static void s_next_do_sub__FPvPv();
extern "C" static void s_next_get_sub__FPvPv();
extern "C" static void order_set__Fi();
extern "C" static void all_carry_finish__Fi();
extern "C" static void hang_end_check__FP12npc_ks_class();
extern "C" static void npc_ks_hang__FP12npc_ks_class();
extern "C" static void npc_ks_hang_s__FP12npc_ks_class();
extern "C" static void npc_ks_e_hang__FP12npc_ks_class();
extern "C" static void all_move_check__Fii();
extern "C" static void go_jump_check__Fi();
extern "C" static void npc_ks_e_jump__FP12npc_ks_class();
extern "C" static void get_move_saru__FP12npc_ks_classi();
extern "C" static void all_hang_check__FP12npc_ks_classi();
extern "C" static void cam_3d_morf__FP12npc_ks_classf();
extern "C" static void s_fs_sub__FPvPv();
extern "C" static void s_fsdown_sub__FPvPv();
extern "C" static void demo_camera__FP12npc_ks_class();
extern "C" static void saru_count_check__FP12npc_ks_class();
extern "C" static void action_check__FP12npc_ks_class();
extern "C" static void water_check__FP12npc_ks_class4cXyzf();
extern "C" static void npc_ks_option__FP12npc_ks_class();
extern "C" static void npc_ks_awaydoor__FP12npc_ks_class();
extern "C" static void npc_ks_guide_00__FP12npc_ks_class();
extern "C" static void npc_ks_guide_00_2__FP12npc_ks_class();
extern "C" static void npc_ks_guide_00_3__FP12npc_ks_class();
extern "C" static void npc_ks_guide_01__FP12npc_ks_class();
extern "C" static void npc_ks_guide_02__FP12npc_ks_class();
extern "C" static void npc_ks_guide_22__FP12npc_ks_class();
extern "C" static void npc_ks_guide_09__FP12npc_ks_class();
extern "C" static void npc_ks_demo_12__FP12npc_ks_class();
extern "C" static void npc_ks_guide_0409__FP12npc_ks_class();
extern "C" static void path_search__FP12npc_ks_class();
extern "C" static void npc_ks_mori__FP12npc_ks_class();
extern "C" static void npc_ks_fsdemo__FP12npc_ks_class();
extern "C" static void npc_ks_kago__FP12npc_ks_class();
extern "C" static void anm_se_set__FP12npc_ks_class();
extern "C" static void action__FP12npc_ks_class();
extern "C" static void s_kago_sub__FPvPv();
extern "C" static void kantera_sub__FP12npc_ks_class();
extern "C" static void daNpc_Ks_Execute__FP12npc_ks_class();
extern "C" static bool daNpc_Ks_IsDelete__FP12npc_ks_class();
extern "C" static void daNpc_Ks_Delete__FP12npc_ks_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void start_check__FP12npc_ks_class();
extern "C" static void s_check_sub__FPvPv();
extern "C" static void daNpc_Ks_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__14daNpc_Ks_HIO_cFv();
extern "C" void __sinit_d_a_npc_ks_cpp();
extern "C" static void func_80A5DB30();
extern "C" static void func_80A5DB38();
extern "C" void cancelOriginalDemo__9daPy_py_cFv();
extern "C" static void dComIfGp_event_reset__Fv();
extern "C" void __ct__4cXyzFRC4cXyz();
extern "C" static void dComIfGp_setItemOilCount__Fl();
extern "C" static void dComIfGs_getMaxOil__Fv();
extern "C" static void daPy_getPlayerActorClass__Fv();
extern "C" static void dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz();
extern "C" void changeDemoPos0__9daPy_py_cFPC4cXyz();
extern "C" void __apl__4cXyzFRC3Vec();
extern "C" void fabsf__3stdFf();
extern "C" void set__4cXyzFfff();
extern "C" void __as__4cXyzFRC4cXyz();
extern "C" void changeDemoParam0__9daPy_py_cFi(daPy_py_c*, int);
extern "C" void changeDemoMode__9daPy_py_cFUliis();
extern "C" void changeOriginalDemo__9daPy_py_cFv();
extern "C" void onCondition__11dEvt_info_cFUs();
extern "C" void checkCommandDemoAccrpt__11dEvt_info_cFv();
extern "C" static void dComIfGp_getCamera__Fi();
extern "C" static void dComIfGp_getPlayerCameraID__Fi();
extern "C" static void dComIfGp_getPlayer__Fi();
extern "C" void checkShadowReturnEnd__9daMidna_cCFv();
extern "C" void changeDemoMode__9daMidna_cFUl(daMidna_c*, u32);
extern "C" void changeOriginalDemo__9daMidna_cFv();
extern "C" static void dComIfGp_getVibration__Fv();
extern "C" void __ct__4cXyzFfff();
extern "C" static void dMeter2Info_setOilGaugeBackUp__FUs();
extern "C" static void dComIfGs_getOil__Fv();
extern "C" static void dComIfGs_setItem__FiUc();
extern "C" void __ct__10JAISoundIDFUl();
extern "C" static void mDoAud_seStart__FUlPC3VecUlSc();
extern "C" static void dComIfGs_onEventBit__FUs();
extern "C" extern char const* const d_a_npc_ks__stringBase0;

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
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void cDmrNowMidnaTalk__Fv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_setStageLayer__FPv();
extern "C" void fopAcM_setRoomLayer__FPvi();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_getTalkEventPartner__FPC10fopAc_ac_c();
extern "C" void fopAcM_cancelCarryNow__FP10fopAc_ac_c();
extern "C" void fopAcM_otoCheck__FPC10fopAc_ac_cf();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void dComIfGs_shake_kandelaar__Fv();
extern "C" void dComIfGs_shake_kandelaar_check__Fv();
extern "C" void setItem__17dSv_player_item_cFiUc();
extern "C" void onTbox__12dSv_memBit_cFi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LockonTarget__12dAttention_cFl();
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
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyzfs();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_Sound_get__Fv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void getNowMsgNo__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void setBattleBgmOff__8Z2SeqMgrFb();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void JUTReport__FiiPCce();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_19();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 struct_80450C98[4];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A5DEFC-80A5DF00 000000 0004+00 44/44 0/0 0/0 .rodata          @4030 */
SECTION_RODATA static f32 const lit_4030 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A5DEFC, &lit_4030);

/* 80A5DF00-80A5DF04 000004 0004+00 0/10 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = 200.0f;
COMPILER_STRIP_GATE(0x80A5DF00, &lit_4031);
#pragma pop

/* 80A5DF04-80A5DF08 000008 0004+00 0/10 0/0 0/0 .rodata          @4032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4032 = 10.0f;
COMPILER_STRIP_GATE(0x80A5DF04, &lit_4032);
#pragma pop

/* 80A5DF08-80A5DF0C 00000C 0004+00 0/3 0/0 0/0 .rodata          @4033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4033 = 25.0f;
COMPILER_STRIP_GATE(0x80A5DF08, &lit_4033);
#pragma pop

/* 80A5DF0C-80A5DF10 000010 0004+00 0/12 0/0 0/0 .rodata          @4034 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4034 = 20.0f;
COMPILER_STRIP_GATE(0x80A5DF0C, &lit_4034);
#pragma pop

/* 80A5DF10-80A5DF14 000014 0004+00 0/12 0/0 0/0 .rodata          @4035 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4035 = 300.0f;
COMPILER_STRIP_GATE(0x80A5DF10, &lit_4035);
#pragma pop

/* 80A5DF14-80A5DF18 000018 0004+00 0/1 0/0 0/0 .rodata          @4036 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4036 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A5DF14, &lit_4036);
#pragma pop

/* 80A5DF18-80A5DF1C 00001C 0004+00 0/6 0/0 0/0 .rodata          @4037 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4037 = 600.0f;
COMPILER_STRIP_GATE(0x80A5DF18, &lit_4037);
#pragma pop

/* 80A5E458-80A5E464 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A5E464-80A5E478 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80A5E478-80A5E498 000020 0020+00 13/13 0/0 0/0 .data            saru_p */
SECTION_DATA static u8 saru_p[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A5E498-80A5E4D0 -00001 0038+00 1/1 0/0 0/0 .data            @4808 */
SECTION_DATA static void* lit_4808[14] = {
    (void*)(((char*)npc_ks_ori__FP12npc_ks_class) + 0x48),
    (void*)(((char*)npc_ks_ori__FP12npc_ks_class) + 0x88),
    (void*)(((char*)npc_ks_ori__FP12npc_ks_class) + 0x174),
    (void*)(((char*)npc_ks_ori__FP12npc_ks_class) + 0x4A4),
    (void*)(((char*)npc_ks_ori__FP12npc_ks_class) + 0x4A4),
    (void*)(((char*)npc_ks_ori__FP12npc_ks_class) + 0x4A4),
    (void*)(((char*)npc_ks_ori__FP12npc_ks_class) + 0x4A4),
    (void*)(((char*)npc_ks_ori__FP12npc_ks_class) + 0x4A4),
    (void*)(((char*)npc_ks_ori__FP12npc_ks_class) + 0x4A4),
    (void*)(((char*)npc_ks_ori__FP12npc_ks_class) + 0x4A4),
    (void*)(((char*)npc_ks_ori__FP12npc_ks_class) + 0x1D8),
    (void*)(((char*)npc_ks_ori__FP12npc_ks_class) + 0x298),
    (void*)(((char*)npc_ks_ori__FP12npc_ks_class) + 0x31C),
    (void*)(((char*)npc_ks_ori__FP12npc_ks_class) + 0x470),
};

/* 80A5E4D0-80A5E63C 000078 016C+00 1/1 0/0 0/0 .data            guide_path_04 */
SECTION_DATA static u8 guide_path_04[364] = {
    0x00, 0x00, 0x00, 0x00, 0xC5, 0x8E, 0x50, 0x00, 0x45, 0x73, 0x50, 0x00, 0xC5, 0x14, 0x90, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC5, 0x53, 0x30, 0x00, 0x45, 0x76, 0x80, 0x00,
    0xC5, 0x10, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC4, 0xEB, 0xE0, 0x00,
    0x45, 0x76, 0x80, 0x00, 0xC5, 0x08, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0xC4, 0x64, 0x00, 0x00, 0x45, 0x74, 0x30, 0x00, 0xC5, 0x0C, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x45, 0x73, 0xC0, 0x00, 0xC5, 0x1E, 0x80, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x44, 0x01, 0xC0, 0x00, 0x45, 0x8F, 0x70, 0x00,
    0xC5, 0x34, 0x90, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A5E63C-80A5E67C -00001 0040+00 1/1 0/0 0/0 .data            @5080 */
SECTION_DATA static void* lit_5080[16] = {
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0xAB4),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0x1AC),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0x2FC),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0x3D8),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0x4AC),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0x50C),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0x540),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0x640),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0xAB4),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0xAB4),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0x658),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0x688),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0x794),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0xAB4),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0xAB4),
    (void*)(((char*)npc_ks_ori2__FP12npc_ks_class) + 0xA3C),
};

/* 80A5E67C-80A5E780 000224 0104+00 1/1 0/0 0/0 .data            move_path_02 */
SECTION_DATA static u8 move_path_02[260] = {
    0x00, 0x00, 0x00, 0x00, 0x46, 0x2A, 0x78, 0x00, 0x45, 0x6A, 0x40, 0x00, 0x45, 0x90, 0xB0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x2B, 0xE8, 0x00, 0x45, 0x6A, 0x40, 0x00,
    0x45, 0x7F, 0x50, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x33, 0x48, 0x00,
    0x45, 0x6A, 0x40, 0x00, 0x45, 0x67, 0xD0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x46, 0x3B, 0x9C, 0x00, 0x45, 0x67, 0x20, 0x00, 0x45, 0x5E, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x46, 0x3D, 0x1C, 0x00, 0x45, 0x44, 0xC0, 0x00, 0x45, 0x94, 0xC0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};

/* 80A5E780-80A5E7D4 -00001 0054+00 1/1 0/0 0/0 .data            @5572 */
SECTION_DATA static void* lit_5572[21] = {
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0xD0),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0xF8),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0x144),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0xE78),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0xE78),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0xE78),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0xE78),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0xE78),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0xE78),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0xE78),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0x2F0),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0x340),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0x468),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0x644),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0x784),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0x864),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0x8B4),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0xA60),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0xCA4),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0xD94),
    (void*)(((char*)npc_ks_demo_02__FP12npc_ks_class) + 0xDEC),
};

/* 80A5E7D4-80A5E838 -00001 0064+00 1/1 0/0 0/0 .data            @5678 */
SECTION_DATA static void* lit_5678[25] = {
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x6C),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x94),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0xE4),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x114),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x1D4),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x454),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x254),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x26C),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x2B8),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x3B8),
    (void*)(((char*)npc_ks_demo_022__FP12npc_ks_class) + 0x430),
};

/* 80A5E838-80A5E894 -00001 005C+00 1/1 0/0 0/0 .data            @5772 */
SECTION_DATA static void* lit_5772[23] = {
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x5C),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x4BC),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x7C),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0xB8),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x18C),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x1F4),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x20C),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x228),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x270),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x298),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x304),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x368),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x3AC),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x4BC),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x4BC),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x4BC),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x4BC),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x4BC),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x4BC),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x4BC),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x3E0),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x3FC),
    (void*)(((char*)npc_ks_demo_04__FP12npc_ks_class) + 0x434),
};

/* 80A5E894-80A5E8C0 -00001 002C+00 1/1 0/0 0/0 .data            @6229 */
SECTION_DATA static void* lit_6229[11] = {
    (void*)(((char*)npc_ks_hang__FP12npc_ks_class) + 0x198),
    (void*)(((char*)npc_ks_hang__FP12npc_ks_class) + 0x1B0),
    (void*)(((char*)npc_ks_hang__FP12npc_ks_class) + 0x450),
    (void*)(((char*)npc_ks_hang__FP12npc_ks_class) + 0x460),
    (void*)(((char*)npc_ks_hang__FP12npc_ks_class) + 0x4F4),
    (void*)(((char*)npc_ks_hang__FP12npc_ks_class) + 0x65C),
    (void*)(((char*)npc_ks_hang__FP12npc_ks_class) + 0x6E4),
    (void*)(((char*)npc_ks_hang__FP12npc_ks_class) + 0x718),
    (void*)(((char*)npc_ks_hang__FP12npc_ks_class) + 0x718),
    (void*)(((char*)npc_ks_hang__FP12npc_ks_class) + 0x718),
    (void*)(((char*)npc_ks_hang__FP12npc_ks_class) + 0x718),
};

/* 80A5E8C0-80A5E914 -00001 0054+00 1/1 0/0 0/0 .data            @6633 */
SECTION_DATA static void* lit_6633[21] = {
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0x50),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0xFC),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0xB18),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0xB18),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0xB18),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0x17C),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0x20C),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0x24C),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0xB18),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0xB18),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0x54C),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0x658),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0x8B4),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0xB18),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0xB18),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0xB18),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0xB18),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0xB18),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0xB18),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0xB18),
    (void*)(((char*)npc_ks_e_jump__FP12npc_ks_class) + 0x930),
};

/* 80A5E914-80A5E948 -00001 0034+00 1/1 0/0 0/0 .data            @7658 */
SECTION_DATA static void* lit_7658[13] = {
    (void*)(((char*)action_check__FP12npc_ks_class) + 0x70),
    (void*)(((char*)action_check__FP12npc_ks_class) + 0x554),
    (void*)(((char*)action_check__FP12npc_ks_class) + 0x5F8),
    (void*)(((char*)action_check__FP12npc_ks_class) + 0xAEC),
    (void*)(((char*)action_check__FP12npc_ks_class) + 0x5F8),
    (void*)(((char*)action_check__FP12npc_ks_class) + 0xAEC),
    (void*)(((char*)action_check__FP12npc_ks_class) + 0xAEC),
    (void*)(((char*)action_check__FP12npc_ks_class) + 0xAEC),
    (void*)(((char*)action_check__FP12npc_ks_class) + 0xAEC),
    (void*)(((char*)action_check__FP12npc_ks_class) + 0x9D8),
    (void*)(((char*)action_check__FP12npc_ks_class) + 0xAEC),
    (void*)(((char*)action_check__FP12npc_ks_class) + 0xAEC),
    (void*)(((char*)action_check__FP12npc_ks_class) + 0xA98),
};

/* 80A5E948-80A5E94C 0004F0 0004+00 1/1 0/0 0/0 .data            yuka_jump_x */
SECTION_DATA static f32 yuka_jump_x = 80.0f;

/* 80A5E94C-80A5E954 0004F4 0008+00 1/1 0/0 0/0 .data            w_eff_id$7873 */
SECTION_DATA static u8 w_eff_id[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 80A5E954-80A5EA24 -00001 00D0+00 1/1 0/0 0/0 .data            @8135 */
SECTION_DATA static void* lit_8135[52] = {
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x240),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x290),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x398),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x42C),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x4BC),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x4D8),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x4F8),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x5FC),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x62C),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x694),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x71C),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x758),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x784),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x7CC),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x824),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x878),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xD20),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0x930),
    (void*)(((char*)npc_ks_option__FP12npc_ks_class) + 0xAB0),
};

/* 80A5EA24-80A5EC2C 0005CC 0208+00 1/1 0/0 0/0 .data            guide_path_00 */
SECTION_DATA static u8 guide_path_00[520] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0x58, 0x00, 0x00, 0x45, 0x4E, 0x40, 0x00, 0x45, 0xA6, 0x80, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x1C, 0x00, 0x00, 0x45, 0x4E, 0x40, 0x00,
    0x45, 0xAE, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
    0x45, 0x4C, 0xC0, 0x00, 0x45, 0xB6, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0x00, 0x00, 0x00, 0x45, 0x4A, 0x20, 0x00, 0x45, 0xBF, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x45, 0x47, 0xE0, 0x00, 0x45, 0xC7, 0x20, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x45, 0x45, 0xA0, 0x00,
    0x45, 0xCE, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x38, 0x00, 0x00,
    0x45, 0x44, 0xE0, 0x00, 0x45, 0xD6, 0xE8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x43, 0x1F, 0x00, 0x00, 0x45, 0x44, 0xE0, 0x00, 0x45, 0xDD, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x43, 0x92, 0x00, 0x00, 0x45, 0x44, 0xE0, 0x00, 0x45, 0xE1, 0x98, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A5EC2C-80A5ED98 0007D4 016C+00 1/1 0/0 0/0 .data            guide_path_00_2 */
SECTION_DATA static u8 guide_path_00_2[364] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x44, 0xE0, 0x00, 0x45, 0xD3, 0xB8, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x10, 0x00, 0x00, 0x45, 0x47, 0xB0, 0x00,
    0x45, 0xC9, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
    0x45, 0x4B, 0x70, 0x00, 0x45, 0xBC, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00, 0x45, 0x4E, 0x40, 0x00, 0x45, 0xAF, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x45, 0x4E, 0x40, 0x00, 0x45, 0x9F, 0xA0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A5ED98-80A5EED0 000940 0138+00 1/1 0/0 0/0 .data            guide_path_00_3 */
SECTION_DATA static u8 guide_path_00_3[312] = {
    0x00, 0x00, 0x00, 0x00, 0xC2, 0xA2, 0x00, 0x00, 0x45, 0x44, 0xE0, 0x00, 0x45, 0xCA, 0xE0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0xAE, 0x00, 0x00, 0x45, 0x48, 0x00, 0x00,
    0x45, 0xC1, 0x78, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0xF2, 0x00, 0x00,
    0x45, 0x4B, 0x20, 0x00, 0x45, 0xB7, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x43, 0x20, 0x00, 0x00, 0x45, 0x4E, 0x40, 0x00, 0x45, 0xAF, 0xB0, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0x40, 0x00, 0x00, 0x45, 0x4E, 0x40, 0x00, 0x45, 0x99, 0x50, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A5EED0-80A5F140 000A78 0270+00 1/1 0/0 0/0 .data            guide_path_01 */
SECTION_DATA static u8 guide_path_01[624] = {
    0x00, 0x00, 0x00, 0x00, 0x45, 0xA4, 0x70, 0x00, 0x45, 0x48, 0xD0, 0x00, 0x45, 0xF0, 0xF0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0xBA, 0x80, 0x00, 0x45, 0x4B, 0x20, 0x00,
    0x45, 0xDF, 0xF8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0xC3, 0x50, 0x00,
    0x45, 0x4F, 0x80, 0x00, 0x45, 0xD0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x45, 0xC5, 0x88, 0x00, 0x45, 0x55, 0xC0, 0x00, 0x45, 0xC9, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x45, 0xCB, 0x50, 0x00, 0x45, 0x55, 0xC0, 0x00, 0x45, 0xBA, 0x50, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x45, 0xD8, 0x90, 0x00, 0x45, 0x55, 0xF0, 0x00,
    0x45, 0xAB, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x45, 0xDB, 0xA8, 0x00,
    0x45, 0x51, 0xC0, 0x00, 0x45, 0x96, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x45, 0xF5, 0x38, 0x00, 0x45, 0x52, 0xD0, 0x00, 0x45, 0x8D, 0xD0, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x46, 0x03, 0x68, 0x00, 0x45, 0x59, 0x50, 0x00, 0x45, 0x8D, 0x90, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x0F, 0xC0, 0x00, 0x45, 0x57, 0xD0, 0x00,
    0x45, 0x97, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x20, 0x00, 0x00,
    0x45, 0x6A, 0x70, 0x00, 0x45, 0x98, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A5F140-80A5F584 000CE8 0444+00 1/1 0/0 0/0 .data            guide_path_02 */
SECTION_DATA static u8 guide_path_02[1092] = {
    0x00, 0x00, 0x00, 0x00, 0x46, 0x40, 0x4C, 0x00, 0x45, 0x45, 0x00, 0x00, 0x45, 0xA3, 0xA8, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x4A, 0x04, 0x00, 0x45, 0x45, 0x00, 0x00,
    0x45, 0xAC, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x52, 0xC8, 0x00,
    0x45, 0x48, 0x20, 0x00, 0x45, 0xAA, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x46, 0x58, 0xF4, 0x00, 0x45, 0x51, 0x80, 0x00, 0x45, 0xA0, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x46, 0x5B, 0x94, 0x00, 0x45, 0x54, 0xA0, 0x00, 0x45, 0x95, 0xE0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x5B, 0x10, 0x00, 0x45, 0x5A, 0x60, 0x00,
    0x45, 0x87, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x56, 0x34, 0x00,
    0x45, 0x5F, 0xB0, 0x00, 0x45, 0x72, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x46, 0x52, 0x84, 0x00, 0x45, 0x66, 0xF0, 0x00, 0x45, 0x64, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x46, 0x4C, 0x60, 0x00, 0x45, 0x6A, 0x80, 0x00, 0x45, 0x57, 0xF0, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x49, 0x64, 0x00, 0x45, 0x6B, 0x40, 0x00,
    0x45, 0x4C, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x46, 0x47, 0x30, 0x00, 0x45, 0x45, 0x00, 0x00, 0x45, 0x98, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x46, 0x4C, 0xA4, 0x00, 0x45, 0x45, 0x00, 0x00, 0x45, 0xA5, 0x10, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x54, 0x48, 0x00, 0x45, 0x48, 0x20, 0x00,
    0x45, 0xAE, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x59, 0x9C, 0x00,
    0x45, 0x4E, 0x60, 0x00, 0x45, 0xA9, 0x68, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x46, 0x5E, 0x08, 0x00, 0x45, 0x54, 0xA0, 0x00, 0x45, 0x99, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x46, 0x5C, 0x80, 0x00, 0x45, 0x5A, 0x60, 0x00, 0x45, 0x83, 0xC8, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x55, 0x84, 0x00, 0x45, 0x64, 0x80, 0x00,
    0x45, 0x60, 0x90, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x50, 0x74, 0x00,
    0x45, 0x69, 0x70, 0x00, 0x45, 0x52, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x46, 0x4B, 0x6C, 0x00, 0x45, 0x6A, 0x80, 0x00, 0x45, 0x56, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};

/* 80A5F584-80A5F6BC 00112C 0138+00 1/1 0/0 0/0 .data            guide_path_22 */
SECTION_DATA static u8 guide_path_22[312] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x13, 0x20, 0x00, 0x46, 0x4A, 0x34, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x45, 0x3B, 0x80, 0x00,
    0x46, 0x49, 0x3C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x45, 0x44, 0xE0, 0x00, 0x46, 0x44, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x45, 0x44, 0xE0, 0x00, 0x46, 0x3E, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x44, 0xE0, 0x00, 0x46, 0x36, 0xBC, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A5F6BC-80A5F890 001264 01D4+00 1/1 0/0 0/0 .data            guide_path_09 */
SECTION_DATA static u8 guide_path_09[468] = {
    0x00, 0x00, 0x00, 0x00, 0x45, 0xE7, 0x18, 0x00, 0x45, 0x4C, 0x90, 0x00, 0xC5, 0x98, 0x10, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0xE7, 0x60, 0x00, 0x45, 0x4C, 0x90, 0x00,
    0xC5, 0xAC, 0xB8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0xE7, 0x60, 0x00,
    0x45, 0x49, 0x90, 0x00, 0xC5, 0xC3, 0x58, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x45, 0xE7, 0xB8, 0x00, 0x45, 0x49, 0x90, 0x00, 0xC5, 0xCD, 0x90, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x45, 0xE6, 0xD0, 0x00, 0x45, 0x54, 0xF0, 0x00, 0xC5, 0xD1, 0x18, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0xE5, 0x38, 0x00, 0x45, 0x5C, 0x10, 0x00,
    0xC5, 0xDA, 0xE8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0xE1, 0xE8, 0x00,
    0x45, 0x61, 0x00, 0x00, 0xC5, 0xF1, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x45, 0xE4, 0xB8, 0x00, 0x45, 0x61, 0x20, 0x00, 0xC6, 0x03, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};

/* 80A5F890-80A5F994 001438 0104+00 1/1 0/0 0/0 .data            guide_path_12 */
SECTION_DATA static u8 guide_path_12[260] = {
    0x00, 0x00, 0x00, 0x00, 0x45, 0xE6, 0x50, 0x00, 0x45, 0x61, 0x00, 0x00, 0xC6, 0x14, 0x04, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0xEA, 0x60, 0x00, 0x45, 0x67, 0x20, 0x00,
    0xC6, 0x1A, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x45, 0xFE, 0x10, 0x00,
    0x45, 0x53, 0x20, 0x00, 0xC6, 0x28, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x46, 0x08, 0xB8, 0x00, 0x45, 0x65, 0xB0, 0x00, 0xC6, 0x27, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};

/* 80A5F994-80A5FA98 00153C 0104+00 1/1 0/0 0/0 .data            guide_path_0409 */
SECTION_DATA static u8 guide_path_0409[260] = {
    0x00, 0x00, 0x00, 0x00, 0x45, 0xD8, 0xD8, 0x00, 0x45, 0x58, 0x60, 0x00, 0xC3, 0x66, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0xDD, 0x28, 0x00, 0x45, 0x5B, 0xE0, 0x00,
    0xC4, 0x58, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0xDE, 0x80, 0x00,
    0x45, 0x60, 0x70, 0x00, 0xC4, 0xC7, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x45, 0xE3, 0xE0, 0x00, 0x45, 0x61, 0xD0, 0x00, 0xC5, 0x24, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00,
};

/* 80A5FA98-80A5FC04 001640 016C+00 1/1 0/0 0/0 .data            guide_path_fs */
SECTION_DATA static u8 guide_path_fs[364] = {
    0x00, 0x00, 0x00, 0x01, 0xC7, 0x17, 0x82, 0x00, 0x44, 0x8E, 0x80, 0x00, 0xC6, 0xB6, 0x32, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xC7, 0x15, 0x33, 0x00, 0x44, 0x3B, 0x80, 0x00,
    0xC6, 0xB0, 0xF4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC7, 0x14, 0x41, 0x00,
    0x44, 0x2D, 0x80, 0x00, 0xC6, 0xAB, 0xFE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xC7, 0x12, 0xE6, 0x00, 0x44, 0x08, 0x40, 0x00, 0xC6, 0xA9, 0xE8, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xC7, 0x11, 0x26, 0x00, 0x43, 0x99, 0x00, 0x00, 0xC6, 0xA8, 0xF8, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC7, 0x0E, 0xC4, 0x00, 0x43, 0xAE, 0x00, 0x00,
    0xC6, 0xA7, 0x6A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A5FC04-80A5FCB0 -00001 00AC+00 1/1 0/0 0/0 .data            @9872 */
SECTION_DATA static void* lit_9872[43] = {
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x80),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x170),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x274),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x540),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x588),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x648),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x654),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x670),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x73C),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x894),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x75C),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x79C),
    (void*)(((char*)npc_ks_fsdemo__FP12npc_ks_class) + 0x880),
};

/* 80A5FCB0-80A5FCBC 001858 000C+00 0/0 0/0 0/0 .data            dx$11146 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 dx[12] = {
    0x45, 0xE3, 0x20, 0x00, 0x45, 0xA1, 0x70, 0x00, 0x46, 0x10, 0x44, 0x00,
};
#pragma pop

/* 80A5FCBC-80A5FCC8 001864 000C+00 0/0 0/0 0/0 .data            dy$11147 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 dy[12] = {
    0x45, 0x61, 0x00, 0x00, 0x45, 0x4E, 0x40, 0x00, 0x45, 0x4E, 0x40, 0x00,
};
#pragma pop

/* 80A5FCC8-80A5FCD4 001870 000C+00 0/0 0/0 0/0 .data            dz$11148 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 dz[12] = {
    0xC5, 0x53, 0xD0, 0x00, 0xC5, 0xA6, 0x78, 0x00, 0xC5, 0xA6, 0x58, 0x00,
};
#pragma pop

/* 80A5FCD4-80A5FD30 -00001 005C+00 1/1 0/0 0/0 .data            @11379 */
SECTION_DATA static void* lit_11379[23] = {
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x148),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x274),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x3A0),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x490),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x580),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x770),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x7E0),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x850),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x960),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x960),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x8C0),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x960),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x960),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x960),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x960),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x960),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x960),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x960),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x960),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x960),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x8CC),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x8F0),
    (void*)(((char*)start_check__FP12npc_ks_class) + 0x928),
};

/* 80A5FD30-80A5FD74 0018D8 0044+00 1/1 0/0 0/0 .data            cc_cyl_src$11445 */
static dCcD_SrcCyl cc_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fafd3f, 0x3}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        30.0f, // mRadius
        20.0f // mHeight
    } // mCyl
};

/* 80A5FD74-80A5FD94 -00001 0020+00 1/0 0/0 0/0 .data            l_daNpc_Ks_Method */
static actor_method_class l_daNpc_Ks_Method = {
    (process_method_func)daNpc_Ks_Create__FP10fopAc_ac_c,
    (process_method_func)daNpc_Ks_Delete__FP12npc_ks_class,
    (process_method_func)daNpc_Ks_Execute__FP12npc_ks_class,
    (process_method_func)daNpc_Ks_IsDelete__FP12npc_ks_class,
    (process_method_func)daNpc_Ks_Draw__FP12npc_ks_class,
};

/* 80A5FD94-80A5FDC4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KS */
extern actor_process_profile_definition g_profile_NPC_KS = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_KS,            // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(npc_ks_class),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  701,                    // mPriority
  &l_daNpc_Ks_Method,     // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80A5FDC4-80A5FDD0 00196C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A5FDD0-80A5FDDC 001978 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A5FDDC-80A5FDE8 001984 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A5FDE8-80A5FDF4 001990 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A5FDF4-80A5FE00 00199C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A5FE00-80A5FE24 0019A8 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A5DB38,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A5DB30,
};

/* 80A5FE24-80A5FE30 0019CC 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A5FE30-80A5FE3C 0019D8 000C+00 2/2 0/0 0/0 .data            __vt__14daNpc_Ks_HIO_c */
SECTION_DATA extern void* __vt__14daNpc_Ks_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daNpc_Ks_HIO_cFv,
};

/* 80A48F8C-80A49000 0000EC 0074+00 1/1 0/0 0/0 .text            __ct__14daNpc_Ks_HIO_cFv */
daNpc_Ks_HIO_c::daNpc_Ks_HIO_c() {
    // NONMATCHING
}

/* 80A49000-80A49054 000160 0054+00 2/2 0/0 0/0 .text            setPlayerPosAndAngle__FP4cXyzs */
static void setPlayerPosAndAngle(cXyz* param_0, s16 param_1) {
    // NONMATCHING
}

/* 80A49054-80A49088 0001B4 0034+00 14/14 0/0 0/0 .text            checkDoorDemo__Fv */
static void checkDoorDemo() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5DF1C-80A5DF20 000020 0004+00 1/18 0/0 0/0 .rodata          @4096 */
SECTION_RODATA static f32 const lit_4096 = 100.0f;
COMPILER_STRIP_GATE(0x80A5DF1C, &lit_4096);

/* 80A5DF20-80A5DF24 000024 0004+00 1/2 0/0 0/0 .rodata          @4097 */
SECTION_RODATA static f32 const lit_4097 = 120.0f;
COMPILER_STRIP_GATE(0x80A5DF20, &lit_4097);

/* 80A49088-80A49168 0001E8 00E0+00 1/1 0/0 0/0 .text otherBgCheck__FP10fopAc_ac_cP10fopAc_ac_c */
static void otherBgCheck(fopAc_ac_c* param_0, fopAc_ac_c* param_1) {
    // NONMATCHING
}

/* 80A49168-80A491A4 0002C8 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5DF24-80A5DF28 000028 0004+00 4/36 0/0 0/0 .rodata          @4146 */
SECTION_RODATA static f32 const lit_4146 = 1.0f;
COMPILER_STRIP_GATE(0x80A5DF24, &lit_4146);

/* 80A5DF28-80A5DF2C 00002C 0004+00 0/8 0/0 0/0 .rodata          @4147 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4147 = 0.5f;
COMPILER_STRIP_GATE(0x80A5DF28, &lit_4147);
#pragma pop

/* 80A5DF2C-80A5DF30 000030 0004+00 1/38 0/0 0/0 .rodata          @4148 */
SECTION_RODATA static u8 const lit_4148[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A5DF2C, &lit_4148);

/* 80A5DF30-80A5DF34 000034 0004+00 1/4 0/0 0/0 .rodata          @4149 */
SECTION_RODATA static f32 const lit_4149 = -1.0f;
COMPILER_STRIP_GATE(0x80A5DF30, &lit_4149);

/* 80A491A4-80A4932C 000304 0188+00 29/29 0/0 0/0 .text            anm_init__FP12npc_ks_classifUcf
 */
static void anm_init(npc_ks_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 80A4932C-80A49660 00048C 0334+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5DF34-80A5DF38 000038 0004+00 0/5 0/0 0/0 .rodata          @4307 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4307 = 1000.0f;
COMPILER_STRIP_GATE(0x80A5DF34, &lit_4307);
#pragma pop

/* 80A5E438-80A5E438 00053C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A5E438 = "Npc_kst";
#pragma pop

/* 80A49660-80A49848 0007C0 01E8+00 1/0 0/0 0/0 .text            daNpc_Ks_Draw__FP12npc_ks_class */
static void daNpc_Ks_Draw(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5DF38-80A5DF3C 00003C 0004+00 1/1 0/0 0/0 .rodata          @4317 */
SECTION_RODATA static f32 const lit_4317 = 220.0f;
COMPILER_STRIP_GATE(0x80A5DF38, &lit_4317);

/* 80A5DF3C-80A5DF40 000040 0004+00 1/10 0/0 0/0 .rodata          @4318 */
SECTION_RODATA static f32 const lit_4318 = 50.0f;
COMPILER_STRIP_GATE(0x80A5DF3C, &lit_4318);

/* 80A49848-80A498B4 0009A8 006C+00 2/2 0/0 0/0 .text            s_resq_sub__FPvPv */
static void s_resq_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5FE48-80A5FE4C 000008 0001+03 9/9 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80A5FE4C-80A5FE50 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80A5FE50-80A5FE54 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80A5FE54-80A5FE58 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80A5FE58-80A5FE5C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80A5FE5C-80A5FE60 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80A5FE60-80A5FE64 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80A5FE64-80A5FE68 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80A5FE68-80A5FE6C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80A5FE6C-80A5FE70 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80A5FE70-80A5FE74 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80A5FE74-80A5FE78 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80A5FE78-80A5FE7C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80A5FE7C-80A5FE80 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80A5FE80-80A5FE84 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80A5FE84-80A5FE88 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80A5FE88-80A5FE94 000048 000C+00 0/1 0/0 0/0 .bss             @4022 */
#pragma push
#pragma force_active on
static u8 lit_4022[12];
#pragma pop

/* 80A5FE94-80A5FEA0 000054 000C+00 1/5 0/0 0/0 .bss             obj_pos */
static u8 obj_pos[12];

/* 80A5FEA0-80A5FEA4 000060 0004+00 4/9 0/0 0/0 .bss             leader */
static u8 leader[4];

/* 80A5FEA4-80A5FEA8 000064 0004+00 7/9 0/0 0/0 .bss             call_pt */
static u8 call_pt[4];

/* 80A5FEA8-80A5FEAC 000068 0004+00 1/2 0/0 0/0 .bss             None */
static u8 data_80A5FEA8[4];

/* 80A5FEAC-80A5FEB8 00006C 000C+00 0/1 0/0 0/0 .bss             @4025 */
#pragma push
#pragma force_active on
static u8 lit_4025[12];
#pragma pop

/* 80A5FEB8-80A5FEF0 000078 0038+00 16/22 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[56];

/* 80A5FEF0-80A5FF18 0000B0 0028+00 4/6 0/0 0/0 .bss             target_info */
static u8 target_info[40];

/* 80A5FF18-80A5FF1C 0000D8 0004+00 4/6 0/0 0/0 .bss             target_info_count */
static u8 target_info_count[4];

/* 80A498B4-80A49930 000A14 007C+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
static void s_b_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5DF40-80A5DF44 000044 0004+00 0/2 0/0 0/0 .rodata          @4408 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4408 = 1500.0f;
COMPILER_STRIP_GATE(0x80A5DF40, &lit_4408);
#pragma pop

/* 80A5FF1C-80A5FF44 0000DC 0028+00 0/2 0/0 0/0 .bss             target_bgc */
#pragma push
#pragma force_active on
static u8 target_bgc[40];
#pragma pop

/* 80A49930-80A49B48 000A90 0218+00 2/2 0/0 0/0 .text            search_bomb__FP12npc_ks_classi */
static void search_bomb(npc_ks_class* param_0, int param_1) {
    // NONMATCHING
}

/* 80A49B48-80A49B6C 000CA8 0024+00 1/1 0/0 0/0 .text            bomb_view_check__FP12npc_ks_class
 */
static void bomb_view_check(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A49B6C-80A49B90 000CCC 0024+00 1/1 0/0 0/0 .text            bomb_check__FP12npc_ks_class */
static void bomb_check(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A49B90-80A49C00 000CF0 0070+00 1/1 0/0 0/0 .text            s_e_sub__FPvPv */
static void s_e_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5DF44-80A5DF4C 000048 0004+04 0/4 0/0 0/0 .rodata          @4511 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4511[1 + 1 /* padding */] = {
    800.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80A5DF44, &lit_4511);
#pragma pop

/* 80A49C00-80A49E78 000D60 0278+00 2/2 0/0 0/0 .text            search_enemy__FP12npc_ks_classif */
static void search_enemy(npc_ks_class* param_0, int param_1, f32 param_2) {
    // NONMATCHING
}

/* 80A49E78-80A49E9C 000FD8 0024+00 7/7 0/0 0/0 .text            enemy_view_check__FP12npc_ks_classf
 */
static void enemy_view_check(npc_ks_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* 80A49E9C-80A49EC0 000FFC 0024+00 8/8 0/0 0/0 .text            enemy_check__FP12npc_ks_classf */
static void enemy_check(npc_ks_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* 80A49EC0-80A49F30 001020 0070+00 1/1 0/0 0/0 .text            s_en_sub__FPvPv */
static void s_en_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5DF4C-80A5DF54 000050 0008+00 0/15 0/0 0/0 .rodata          @4594 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4594[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A5DF4C, &lit_4594);
#pragma pop

/* 80A5DF54-80A5DF5C 000058 0008+00 0/15 0/0 0/0 .rodata          @4595 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4595[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A5DF54, &lit_4595);
#pragma pop

/* 80A5DF5C-80A5DF64 000060 0008+00 0/15 0/0 0/0 .rodata          @4596 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4596[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A5DF5C, &lit_4596);
#pragma pop

/* 80A5DF64-80A5DF68 000068 0004+00 0/2 0/0 0/0 .rodata          @4597 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4597 = 350.0f;
COMPILER_STRIP_GATE(0x80A5DF64, &lit_4597);
#pragma pop

/* 80A49F30-80A4A164 001090 0234+00 1/1 0/0 0/0 .text            en_search_test__FP12npc_ks_class */
static void en_search_test(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A4A164-80A4A1B0 0012C4 004C+00 2/2 0/0 0/0 .text            s_ori_sub__FPvPv */
static void s_ori_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5DF68-80A5DF6C 00006C 0004+00 0/24 0/0 0/0 .rodata          @4687 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4687 = 5.0f;
COMPILER_STRIP_GATE(0x80A5DF68, &lit_4687);
#pragma pop

/* 80A5DF6C-80A5DF70 000070 0004+00 0/7 0/0 0/0 .rodata          @4688 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4688 = 400.0f;
COMPILER_STRIP_GATE(0x80A5DF6C, &lit_4688);
#pragma pop

/* 80A5DF70-80A5DF74 000074 0004+00 0/2 0/0 0/0 .rodata          @4689 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4689 = 11497.0f;
COMPILER_STRIP_GATE(0x80A5DF70, &lit_4689);
#pragma pop

/* 80A5DF74-80A5DF78 000078 0004+00 0/2 0/0 0/0 .rodata          @4690 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4690 = 3764.0f;
COMPILER_STRIP_GATE(0x80A5DF74, &lit_4690);
#pragma pop

/* 80A5DF78-80A5DF7C 00007C 0004+00 0/2 0/0 0/0 .rodata          @4691 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4691 = 3810.0f;
COMPILER_STRIP_GATE(0x80A5DF78, &lit_4691);
#pragma pop

/* 80A4A1B0-80A4A544 001310 0394+00 1/1 0/0 0/0 .text            npc_ks_pole_ori__FP12npc_ks_class
 */
static void npc_ks_pole_ori(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A4A544-80A4AAC8 0016A4 0584+00 2/1 0/0 0/0 .text            npc_ks_ori__FP12npc_ks_class */
static void npc_ks_ori(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A4AAC8-80A4AC68 001C28 01A0+00 1/1 0/0 0/0 .text            shot_bo_sub__FPvPv */
static void shot_bo_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5DF7C-80A5DF80 000080 0004+00 0/0 0/0 0/0 .rodata          @4799 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4799 = 99.0f;
COMPILER_STRIP_GATE(0x80A5DF7C, &lit_4799);
#pragma pop

/* 80A5DF80-80A5DF84 000084 0004+00 0/8 0/0 0/0 .rodata          @4800 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4800 = 40.0f;
COMPILER_STRIP_GATE(0x80A5DF80, &lit_4800);
#pragma pop

/* 80A5DF84-80A5DF88 000088 0004+00 0/3 0/0 0/0 .rodata          @4801 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4801 = 60.0f;
COMPILER_STRIP_GATE(0x80A5DF84, &lit_4801);
#pragma pop

/* 80A5DF88-80A5DF8C 00008C 0004+00 0/0 0/0 0/0 .rodata          @4802 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4802 = -20.0f;
COMPILER_STRIP_GATE(0x80A5DF88, &lit_4802);
#pragma pop

/* 80A5DF8C-80A5DF90 000090 0004+00 1/21 0/0 0/0 .rodata          @4803 */
SECTION_RODATA static f32 const lit_4803 = 3.0f;
COMPILER_STRIP_GATE(0x80A5DF8C, &lit_4803);

/* 80A5DF90-80A5DF94 000094 0004+00 0/8 0/0 0/0 .rodata          @4804 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4804 = 2.0f;
COMPILER_STRIP_GATE(0x80A5DF90, &lit_4804);
#pragma pop

/* 80A5DF94-80A5DF98 000098 0004+00 0/0 0/0 0/0 .rodata          @4805 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4805 = 35.0f;
COMPILER_STRIP_GATE(0x80A5DF94, &lit_4805);
#pragma pop

/* 80A5DF98-80A5DF9C 00009C 0004+00 0/1 0/0 0/0 .rodata          @4806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4806 = -5.0f;
COMPILER_STRIP_GATE(0x80A5DF98, &lit_4806);
#pragma pop

/* 80A5DF9C-80A5DFA0 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4807 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4807 = -10.0f;
COMPILER_STRIP_GATE(0x80A5DF9C, &lit_4807);
#pragma pop

/* 80A5DFA0-80A5DFA4 0000A4 0004+00 0/1 0/0 0/0 .rodata          @5077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5077 = 46.0f;
COMPILER_STRIP_GATE(0x80A5DFA0, &lit_5077);
#pragma pop

/* 80A4AC68-80A4B7BC 001DC8 0B54+00 2/1 0/0 0/0 .text            npc_ks_ori2__FP12npc_ks_class */
static void npc_ks_ori2(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5DFA4-80A5DFA8 0000A8 0004+00 0/1 0/0 0/0 .rodata          @5078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5078 = -200.0f;
COMPILER_STRIP_GATE(0x80A5DFA4, &lit_5078);
#pragma pop

/* 80A5DFA8-80A5DFAC 0000AC 0004+00 0/9 0/0 0/0 .rodata          @5079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5079 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A5DFA8, &lit_5079);
#pragma pop

/* 80A5DFAC-80A5DFB0 0000B0 0004+00 0/2 0/0 0/0 .rodata          @5155 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5155 = -100.0f;
COMPILER_STRIP_GATE(0x80A5DFAC, &lit_5155);
#pragma pop

/* 80A5DFB0-80A5DFB4 0000B4 0004+00 0/2 0/0 0/0 .rodata          @5156 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5156 = -50.0f;
COMPILER_STRIP_GATE(0x80A5DFB0, &lit_5156);
#pragma pop

/* 80A4B7BC-80A4BA14 00291C 0258+00 1/1 0/0 0/0 .text            npc_ks_home__FP12npc_ks_class */
static void npc_ks_home(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A4BA14-80A4BA90 002B74 007C+00 3/3 0/0 0/0 .text            s_sw_sub__FPvPv */
static void s_sw_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A4BA90-80A4BADC 002BF0 004C+00 1/1 0/0 0/0 .text            s_ha_sub__FPvPv */
static void s_ha_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A4BADC-80A4BB34 002C3C 0058+00 1/1 0/0 0/0 .text            s_01_sub__FPvPv */
static void s_01_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5DFB4-80A5DFB8 0000B8 0004+00 0/0 0/0 0/0 .rodata          @5565 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5565 = 90.0f;
COMPILER_STRIP_GATE(0x80A5DFB4, &lit_5565);
#pragma pop

/* 80A5DFB8-80A5DFBC 0000BC 0004+00 0/1 0/0 0/0 .rodata          @5566 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5566 = 55.0f;
COMPILER_STRIP_GATE(0x80A5DFB8, &lit_5566);
#pragma pop

/* 80A5DFBC-80A5DFC0 0000C0 0004+00 0/13 0/0 0/0 .rodata          @5567 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5567 = 30.0f;
COMPILER_STRIP_GATE(0x80A5DFBC, &lit_5567);
#pragma pop

/* 80A5DFC0-80A5DFC4 0000C4 0004+00 0/0 0/0 0/0 .rodata          @5568 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5568 = 17.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A5DFC0, &lit_5568);
#pragma pop

/* 80A5DFC4-80A5DFC8 0000C8 0004+00 0/0 0/0 0/0 .rodata          @5569 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5569 = -15.0f;
COMPILER_STRIP_GATE(0x80A5DFC4, &lit_5569);
#pragma pop

/* 80A5DFC8-80A5DFCC 0000CC 0004+00 0/5 0/0 0/0 .rodata          @5570 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5570 = 4.0f;
COMPILER_STRIP_GATE(0x80A5DFC8, &lit_5570);
#pragma pop

/* 80A4BB34-80A4CA70 002C94 0F3C+00 2/1 0/0 0/0 .text            npc_ks_demo_02__FP12npc_ks_class */
static void npc_ks_demo_02(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A4CA70-80A4CABC 003BD0 004C+00 1/1 0/0 0/0 .text            s_dn_sub__FPvPv */
static void s_dn_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A4CABC-80A4CF40 003C1C 0484+00 2/1 0/0 0/0 .text            npc_ks_demo_022__FP12npc_ks_class
 */
static void npc_ks_demo_022(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A4CF40-80A4D438 0040A0 04F8+00 2/1 0/0 0/0 .text            npc_ks_demo_04__FP12npc_ks_class */
static void npc_ks_demo_04(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5DFCC-80A5DFD0 0000D0 0004+00 0/0 0/0 0/0 .rodata          @5571 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5571 = -8.0f;
COMPILER_STRIP_GATE(0x80A5DFCC, &lit_5571);
#pragma pop

/* 80A5DFD0-80A5DFD4 0000D4 0004+00 0/8 0/0 0/0 .rodata          @5675 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5675 = 80.0f;
COMPILER_STRIP_GATE(0x80A5DFD0, &lit_5675);
#pragma pop

/* 80A5DFD4-80A5DFDC 0000D8 0004+04 0/2 0/0 0/0 .rodata          @5676 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5676[1 + 1 /* padding */] = {
    70.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80A5DFD4, &lit_5676);
#pragma pop

/* 80A5DFDC-80A5DFE4 0000E0 0008+00 0/0 0/0 0/0 .rodata          @5679 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5679[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A5DFDC, &lit_5679);
#pragma pop

/* 80A5DFE4-80A5DFE8 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5768 = 3300.0f;
COMPILER_STRIP_GATE(0x80A5DFE4, &lit_5768);
#pragma pop

/* 80A5DFE8-80A5DFEC 0000EC 0004+00 0/0 0/0 0/0 .rodata          @5769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5769 = 4393.0f;
COMPILER_STRIP_GATE(0x80A5DFE8, &lit_5769);
#pragma pop

/* 80A5DFEC-80A5DFF0 0000F0 0004+00 0/0 0/0 0/0 .rodata          @5770 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5770 = 37.0f;
COMPILER_STRIP_GATE(0x80A5DFEC, &lit_5770);
#pragma pop

/* 80A5DFF0-80A5DFF4 0000F4 0004+00 0/0 0/0 0/0 .rodata          @5771 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5771 = -2.0f;
COMPILER_STRIP_GATE(0x80A5DFF0, &lit_5771);
#pragma pop

/* 80A5DFF4-80A5DFF8 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5956 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5956 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A5DFF4, &lit_5956);
#pragma pop

/* 80A4D438-80A4DBF8 004598 07C0+00 1/1 0/0 0/0 .text            npc_ks_to_hang__FP12npc_ks_class */
static void npc_ks_to_hang(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A4DBF8-80A4DC80 004D58 0088+00 1/1 0/0 0/0 .text            s_next_do_sub__FPvPv */
static void s_next_do_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5DFF8-80A5DFFC 0000FC 0004+00 0/2 0/0 0/0 .rodata          @5986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5986 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A5DFF8, &lit_5986);
#pragma pop

/* 80A4DC80-80A4DD70 004DE0 00F0+00 1/1 0/0 0/0 .text            s_next_get_sub__FPvPv */
static void s_next_get_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A4DD70-80A4DDF8 004ED0 0088+00 1/1 0/0 0/0 .text            order_set__Fi */
static void order_set(int param_0) {
    // NONMATCHING
}

/* 80A4DDF8-80A4DE34 004F58 003C+00 2/2 0/0 0/0 .text            all_carry_finish__Fi */
static void all_carry_finish(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5DFFC-80A5E000 000100 0004+00 0/1 0/0 0/0 .rodata          @6069 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6069 = 2500.0f;
COMPILER_STRIP_GATE(0x80A5DFFC, &lit_6069);
#pragma pop

/* 80A4DE34-80A4E000 004F94 01CC+00 2/2 0/0 0/0 .text            hang_end_check__FP12npc_ks_class */
static void hang_end_check(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E000-80A5E004 000104 0004+00 0/1 0/0 0/0 .rodata          @6221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6221 = 2800.0f;
COMPILER_STRIP_GATE(0x80A5E000, &lit_6221);
#pragma pop

/* 80A5E004-80A5E008 000108 0004+00 0/4 0/0 0/0 .rodata          @6222 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6222 = 550.0f;
COMPILER_STRIP_GATE(0x80A5E004, &lit_6222);
#pragma pop

/* 80A5E008-80A5E00C 00010C 0004+00 0/4 0/0 0/0 .rodata          @6223 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6223 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A5E008, &lit_6223);
#pragma pop

/* 80A5E00C-80A5E010 000110 0004+00 0/11 0/0 0/0 .rodata          @6224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6224 = 150.0f;
COMPILER_STRIP_GATE(0x80A5E00C, &lit_6224);
#pragma pop

/* 80A5E010-80A5E014 000114 0004+00 0/3 0/0 0/0 .rodata          @6225 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6225 = -150.0f;
COMPILER_STRIP_GATE(0x80A5E010, &lit_6225);
#pragma pop

/* 80A5E014-80A5E018 000118 0004+00 0/3 0/0 0/0 .rodata          @6226 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6226 = -400.0f;
COMPILER_STRIP_GATE(0x80A5E014, &lit_6226);
#pragma pop

/* 80A5E018-80A5E01C 00011C 0004+00 0/2 0/0 0/0 .rodata          @6227 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6227 = 3.0f / 40.0f;
COMPILER_STRIP_GATE(0x80A5E018, &lit_6227);
#pragma pop

/* 80A5E01C-80A5E020 000120 0004+00 0/3 0/0 0/0 .rodata          @6228 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6228 = 8000.0f;
COMPILER_STRIP_GATE(0x80A5E01C, &lit_6228);
#pragma pop

/* 80A5FF44-80A5FF48 000104 0002+02 0/1 0/0 0/0 .bss             start_pya$6091 */
#pragma push
#pragma force_active on
static u8 start_pya[2 + 2 /* padding */];
#pragma pop

/* 80A4E000-80A4E800 005160 0800+00 2/1 0/0 0/0 .text            npc_ks_hang__FP12npc_ks_class */
static void npc_ks_hang(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A4E800-80A4EE18 005960 0618+00 1/1 0/0 0/0 .text            npc_ks_hang_s__FP12npc_ks_class */
static void npc_ks_hang_s(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E020-80A5E024 000124 0004+00 0/1 0/0 0/0 .rodata          @6371 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6371 = 4000.0f;
COMPILER_STRIP_GATE(0x80A5E020, &lit_6371);
#pragma pop

/* 80A5E024-80A5E028 000128 0004+00 0/1 0/0 0/0 .rodata          @6372 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6372 = 7.0f;
COMPILER_STRIP_GATE(0x80A5E024, &lit_6372);
#pragma pop

/* 80A4EE18-80A4F170 005F78 0358+00 1/1 0/0 0/0 .text            npc_ks_e_hang__FP12npc_ks_class */
static void npc_ks_e_hang(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A4F170-80A4F1D8 0062D0 0068+00 1/1 0/0 0/0 .text            all_move_check__Fii */
static void all_move_check(int param_0, int param_1) {
    // NONMATCHING
}

/* 80A4F1D8-80A4F228 006338 0050+00 1/1 0/0 0/0 .text            go_jump_check__Fi */
static void go_jump_check(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E028-80A5E02C 00012C 0004+00 0/1 0/0 0/0 .rodata          @6629 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6629 = 180.0f;
COMPILER_STRIP_GATE(0x80A5E028, &lit_6629);
#pragma pop

/* 80A5E02C-80A5E030 000130 0004+00 0/1 0/0 0/0 .rodata          @6630 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6630 = -180.0f;
COMPILER_STRIP_GATE(0x80A5E02C, &lit_6630);
#pragma pop

/* 80A4F228-80A4FD7C 006388 0B54+00 2/1 0/0 0/0 .text            npc_ks_e_jump__FP12npc_ks_class */
static void npc_ks_e_jump(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A4FD7C-80A4FE4C 006EDC 00D0+00 1/1 0/0 0/0 .text            get_move_saru__FP12npc_ks_classi */
static void get_move_saru(npc_ks_class* param_0, int param_1) {
    // NONMATCHING
}

/* 80A4FE4C-80A4FEF0 006FAC 00A4+00 1/1 0/0 0/0 .text            all_hang_check__FP12npc_ks_classi
 */
static void all_hang_check(npc_ks_class* param_0, int param_1) {
    // NONMATCHING
}

/* 80A4FEF0-80A4FFD4 007050 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP12npc_ks_classf */
static void cam_3d_morf(npc_ks_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* 80A4FFD4-80A50028 007134 0054+00 1/1 0/0 0/0 .text            s_fs_sub__FPvPv */
static void s_fs_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A50028-80A50094 007188 006C+00 1/1 0/0 0/0 .text            s_fsdown_sub__FPvPv */
static void s_fsdown_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E030-80A5E034 000134 0004+00 0/0 0/0 0/0 .rodata          @6631 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6631 = -183.0f;
COMPILER_STRIP_GATE(0x80A5E030, &lit_6631);
#pragma pop

/* 80A5E034-80A5E038 000138 0004+00 0/2 0/0 0/0 .rodata          @6632 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6632 = 15.0f;
COMPILER_STRIP_GATE(0x80A5E034, &lit_6632);
#pragma pop

/* 80A5E038-80A5E03C 00013C 0004+00 0/7 0/0 0/0 .rodata          @7089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7089 = 500.0f;
COMPILER_STRIP_GATE(0x80A5E038, &lit_7089);
#pragma pop

/* 80A5E03C-80A5E040 000140 0004+00 0/2 0/0 0/0 .rodata          @7090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7090 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A5E03C, &lit_7090);
#pragma pop

/* 80A5E040-80A5E044 000144 0004+00 0/1 0/0 0/0 .rodata          @7091 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7091 = 250.0f;
COMPILER_STRIP_GATE(0x80A5E040, &lit_7091);
#pragma pop

/* 80A5E044-80A5E048 000148 0004+00 0/1 0/0 0/0 .rodata          @7092 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7092 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A5E044, &lit_7092);
#pragma pop

/* 80A5E048-80A5E04C 00014C 0004+00 0/1 0/0 0/0 .rodata          @7093 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7093 = 0x3BA3D70A;
COMPILER_STRIP_GATE(0x80A5E048, &lit_7093);
#pragma pop

/* 80A5E04C-80A5E050 000150 0004+00 0/1 0/0 0/0 .rodata          @7094 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7094 = -250.0f;
COMPILER_STRIP_GATE(0x80A5E04C, &lit_7094);
#pragma pop

/* 80A5E050-80A5E054 000154 0004+00 0/3 0/0 0/0 .rodata          @7095 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7095 = 10000.0f;
COMPILER_STRIP_GATE(0x80A5E050, &lit_7095);
#pragma pop

/* 80A5E054-80A5E058 000158 0004+00 0/1 0/0 0/0 .rodata          @7096 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7096 = 3150.0f;
COMPILER_STRIP_GATE(0x80A5E054, &lit_7096);
#pragma pop

/* 80A5E058-80A5E05C 00015C 0004+00 0/1 0/0 0/0 .rodata          @7097 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7097 = 65.0f;
COMPILER_STRIP_GATE(0x80A5E058, &lit_7097);
#pragma pop

/* 80A5E05C-80A5E060 000160 0004+00 0/1 0/0 0/0 .rodata          @7098 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7098 = -4786.0f;
COMPILER_STRIP_GATE(0x80A5E05C, &lit_7098);
#pragma pop

/* 80A5E060-80A5E064 000164 0004+00 0/1 0/0 0/0 .rodata          @7099 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7099 = 3982.0f;
COMPILER_STRIP_GATE(0x80A5E060, &lit_7099);
#pragma pop

/* 80A5E064-80A5E068 000168 0004+00 0/1 0/0 0/0 .rodata          @7100 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7100 = -1843.0f;
COMPILER_STRIP_GATE(0x80A5E064, &lit_7100);
#pragma pop

/* 80A5E068-80A5E06C 00016C 0004+00 0/1 0/0 0/0 .rodata          @7101 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7101 = -3232.0f;
COMPILER_STRIP_GATE(0x80A5E068, &lit_7101);
#pragma pop

/* 80A5E06C-80A5E070 000170 0004+00 0/1 0/0 0/0 .rodata          @7102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7102 = 4137.0f;
COMPILER_STRIP_GATE(0x80A5E06C, &lit_7102);
#pragma pop

/* 80A5E070-80A5E074 000174 0004+00 0/1 0/0 0/0 .rodata          @7103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7103 = -1425.0f;
COMPILER_STRIP_GATE(0x80A5E070, &lit_7103);
#pragma pop

/* 80A5E074-80A5E078 000178 0004+00 0/1 0/0 0/0 .rodata          @7104 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7104 = -2459.0f;
COMPILER_STRIP_GATE(0x80A5E074, &lit_7104);
#pragma pop

/* 80A5E078-80A5E07C 00017C 0004+00 0/1 0/0 0/0 .rodata          @7105 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7105 = 4199.0f;
COMPILER_STRIP_GATE(0x80A5E078, &lit_7105);
#pragma pop

/* 80A5E07C-80A5E080 000180 0004+00 0/1 0/0 0/0 .rodata          @7106 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7106 = -2752.0f;
COMPILER_STRIP_GATE(0x80A5E07C, &lit_7106);
#pragma pop

/* 80A5E080-80A5E084 000184 0004+00 0/1 0/0 0/0 .rodata          @7107 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7107 = 103.0f;
COMPILER_STRIP_GATE(0x80A5E080, &lit_7107);
#pragma pop

/* 80A5E084-80A5E088 000188 0004+00 0/1 0/0 0/0 .rodata          @7108 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7108 = 4025.0f;
COMPILER_STRIP_GATE(0x80A5E084, &lit_7108);
#pragma pop

/* 80A5E088-80A5E08C 00018C 0004+00 0/1 0/0 0/0 .rodata          @7109 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7109 = -1930.0f;
COMPILER_STRIP_GATE(0x80A5E088, &lit_7109);
#pragma pop

/* 80A5E08C-80A5E090 000190 0004+00 0/1 0/0 0/0 .rodata          @7110 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7110 = -112.0f;
COMPILER_STRIP_GATE(0x80A5E08C, &lit_7110);
#pragma pop

/* 80A5E090-80A5E094 000194 0004+00 0/1 0/0 0/0 .rodata          @7111 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7111 = 2420.0f;
COMPILER_STRIP_GATE(0x80A5E090, &lit_7111);
#pragma pop

/* 80A5E094-80A5E098 000198 0004+00 0/1 0/0 0/0 .rodata          @7112 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7112 = 13414.0f;
COMPILER_STRIP_GATE(0x80A5E094, &lit_7112);
#pragma pop

/* 80A5E098-80A5E09C 00019C 0004+00 0/1 0/0 0/0 .rodata          @7113 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7113 = 145.0f;
COMPILER_STRIP_GATE(0x80A5E098, &lit_7113);
#pragma pop

/* 80A5E09C-80A5E0A0 0001A0 0004+00 0/1 0/0 0/0 .rodata          @7114 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7114 = 2354.0f;
COMPILER_STRIP_GATE(0x80A5E09C, &lit_7114);
#pragma pop

/* 80A5E0A0-80A5E0A4 0001A4 0004+00 0/1 0/0 0/0 .rodata          @7115 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7115 = 13179.0f;
COMPILER_STRIP_GATE(0x80A5E0A0, &lit_7115);
#pragma pop

/* 80A5E0A4-80A5E0A8 0001A8 0004+00 0/1 0/0 0/0 .rodata          @7116 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7116 = 3.0f / 25.0f;
COMPILER_STRIP_GATE(0x80A5E0A4, &lit_7116);
#pragma pop

/* 80A5E0A8-80A5E0AC 0001AC 0004+00 0/1 0/0 0/0 .rodata          @7117 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7117 = 8486.0f;
COMPILER_STRIP_GATE(0x80A5E0A8, &lit_7117);
#pragma pop

/* 80A5E0AC-80A5E0B0 0001B0 0004+00 0/1 0/0 0/0 .rodata          @7118 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7118 = 4143.0f;
COMPILER_STRIP_GATE(0x80A5E0AC, &lit_7118);
#pragma pop

/* 80A5E0B0-80A5E0B4 0001B4 0004+00 0/1 0/0 0/0 .rodata          @7119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7119 = -10114.0f;
COMPILER_STRIP_GATE(0x80A5E0B0, &lit_7119);
#pragma pop

/* 80A5E0B4-80A5E0B8 0001B8 0004+00 0/1 0/0 0/0 .rodata          @7120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7120 = 8364.0f;
COMPILER_STRIP_GATE(0x80A5E0B4, &lit_7120);
#pragma pop

/* 80A5E0B8-80A5E0BC 0001BC 0004+00 0/1 0/0 0/0 .rodata          @7121 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7121 = 4325.0f;
COMPILER_STRIP_GATE(0x80A5E0B8, &lit_7121);
#pragma pop

/* 80A5E0BC-80A5E0C0 0001C0 0004+00 0/1 0/0 0/0 .rodata          @7122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7122 = -9756.0f;
COMPILER_STRIP_GATE(0x80A5E0BC, &lit_7122);
#pragma pop

/* 80A5E0C0-80A5E0C4 0001C4 0004+00 0/1 0/0 0/0 .rodata          @7123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7123 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80A5E0C0, &lit_7123);
#pragma pop

/* 80A5E0C4-80A5E0C8 0001C8 0004+00 0/1 0/0 0/0 .rodata          @7124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7124 = 6899.0f;
COMPILER_STRIP_GATE(0x80A5E0C4, &lit_7124);
#pragma pop

/* 80A5E0C8-80A5E0CC 0001CC 0004+00 0/1 0/0 0/0 .rodata          @7125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7125 = 3867.0f;
COMPILER_STRIP_GATE(0x80A5E0C8, &lit_7125);
#pragma pop

/* 80A5E0CC-80A5E0D0 0001D0 0004+00 0/1 0/0 0/0 .rodata          @7126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7126 = -8870.0f;
COMPILER_STRIP_GATE(0x80A5E0CC, &lit_7126);
#pragma pop

/* 80A5E0D0-80A5E0D4 0001D4 0004+00 0/1 0/0 0/0 .rodata          @7127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7127 = 8222.0f;
COMPILER_STRIP_GATE(0x80A5E0D0, &lit_7127);
#pragma pop

/* 80A5E0D4-80A5E0D8 0001D8 0004+00 0/1 0/0 0/0 .rodata          @7128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7128 = 3896.0f;
COMPILER_STRIP_GATE(0x80A5E0D4, &lit_7128);
#pragma pop

/* 80A5E0D8-80A5E0DC 0001DC 0004+00 0/1 0/0 0/0 .rodata          @7129 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7129 = -9579.0f;
COMPILER_STRIP_GATE(0x80A5E0D8, &lit_7129);
#pragma pop

/* 80A5E0DC-80A5E0E0 0001E0 0004+00 0/3 0/0 0/0 .rodata          @7130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7130 = -500.0f;
COMPILER_STRIP_GATE(0x80A5E0DC, &lit_7130);
#pragma pop

/* 80A5E0E0-80A5E0E4 0001E4 0004+00 0/1 0/0 0/0 .rodata          @7131 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7131 = 3681.0f;
COMPILER_STRIP_GATE(0x80A5E0E0, &lit_7131);
#pragma pop

/* 80A5E0E4-80A5E0E8 0001E8 0004+00 0/1 0/0 0/0 .rodata          @7132 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7132 = 7485.0f;
COMPILER_STRIP_GATE(0x80A5E0E4, &lit_7132);
#pragma pop

/* 80A5E0E8-80A5E0EC 0001EC 0004+00 0/1 0/0 0/0 .rodata          @7133 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7133 = -333.0f;
COMPILER_STRIP_GATE(0x80A5E0E8, &lit_7133);
#pragma pop

/* 80A5E0EC-80A5E0F0 0001F0 0004+00 0/1 0/0 0/0 .rodata          @7134 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7134 = 3316.0f;
COMPILER_STRIP_GATE(0x80A5E0EC, &lit_7134);
#pragma pop

/* 80A5E0F0-80A5E0F4 0001F4 0004+00 0/1 0/0 0/0 .rodata          @7135 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7135 = 7149.0f;
COMPILER_STRIP_GATE(0x80A5E0F0, &lit_7135);
#pragma pop

/* 80A5E0F4-80A5E0F8 0001F8 0004+00 0/1 0/0 0/0 .rodata          @7136 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7136 = -531.0f;
COMPILER_STRIP_GATE(0x80A5E0F4, &lit_7136);
#pragma pop

/* 80A5E0F8-80A5E0FC 0001FC 0004+00 0/1 0/0 0/0 .rodata          @7137 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7137 = 3295.0f;
COMPILER_STRIP_GATE(0x80A5E0F8, &lit_7137);
#pragma pop

/* 80A5E0FC-80A5E100 000200 0004+00 0/1 0/0 0/0 .rodata          @7138 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7138 = 7381.0f;
COMPILER_STRIP_GATE(0x80A5E0FC, &lit_7138);
#pragma pop

/* 80A5E100-80A5E104 000204 0004+00 0/1 0/0 0/0 .rodata          @7139 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7139 = 162.0f;
COMPILER_STRIP_GATE(0x80A5E100, &lit_7139);
#pragma pop

/* 80A5E104-80A5E108 000208 0004+00 0/1 0/0 0/0 .rodata          @7140 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7140 = 3354.0f;
COMPILER_STRIP_GATE(0x80A5E104, &lit_7140);
#pragma pop

/* 80A5E108-80A5E10C 00020C 0004+00 0/1 0/0 0/0 .rodata          @7141 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7141 = 6881.0f;
COMPILER_STRIP_GATE(0x80A5E108, &lit_7141);
#pragma pop

/* 80A5E10C-80A5E110 000210 0004+00 0/1 0/0 0/0 .rodata          @7142 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7142 = 263.0f;
COMPILER_STRIP_GATE(0x80A5E10C, &lit_7142);
#pragma pop

/* 80A5E110-80A5E114 000214 0004+00 0/1 0/0 0/0 .rodata          @7143 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7143 = 3374.0f;
COMPILER_STRIP_GATE(0x80A5E110, &lit_7143);
#pragma pop

/* 80A5E114-80A5E118 000218 0004+00 0/1 0/0 0/0 .rodata          @7144 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7144 = 7168.0f;
COMPILER_STRIP_GATE(0x80A5E114, &lit_7144);
#pragma pop

/* 80A5E118-80A5E11C 00021C 0004+00 0/1 0/0 0/0 .rodata          @7145 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7145 = 59.0f;
COMPILER_STRIP_GATE(0x80A5E118, &lit_7145);
#pragma pop

/* 80A5E11C-80A5E120 000220 0004+00 0/1 0/0 0/0 .rodata          @7146 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7146 = 12899.0f;
COMPILER_STRIP_GATE(0x80A5E11C, &lit_7146);
#pragma pop

/* 80A5E120-80A5E124 000224 0004+00 0/1 0/0 0/0 .rodata          @7147 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7147 = 3767.0f;
COMPILER_STRIP_GATE(0x80A5E120, &lit_7147);
#pragma pop

/* 80A5E124-80A5E128 000228 0004+00 0/1 0/0 0/0 .rodata          @7148 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7148 = 3364.0f;
COMPILER_STRIP_GATE(0x80A5E124, &lit_7148);
#pragma pop

/* 80A5E128-80A5E12C 00022C 0004+00 0/1 0/0 0/0 .rodata          @7149 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7149 = 11821.0f;
COMPILER_STRIP_GATE(0x80A5E128, &lit_7149);
#pragma pop

/* 80A5E12C-80A5E130 000230 0004+00 0/1 0/0 0/0 .rodata          @7150 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7150 = 3889.0f;
COMPILER_STRIP_GATE(0x80A5E12C, &lit_7150);
#pragma pop

/* 80A5E130-80A5E134 000234 0004+00 0/1 0/0 0/0 .rodata          @7151 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7151 = 4033.0f;
COMPILER_STRIP_GATE(0x80A5E130, &lit_7151);
#pragma pop

/* 80A5E134-80A5E138 000238 0004+00 0/1 0/0 0/0 .rodata          @7152 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7152 = 11710.0f;
COMPILER_STRIP_GATE(0x80A5E134, &lit_7152);
#pragma pop

/* 80A5E138-80A5E13C 00023C 0004+00 0/1 0/0 0/0 .rodata          @7153 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7153 = 3936.0f;
COMPILER_STRIP_GATE(0x80A5E138, &lit_7153);
#pragma pop

/* 80A5E13C-80A5E140 000240 0004+00 0/1 0/0 0/0 .rodata          @7154 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7154 = 4253.0f;
COMPILER_STRIP_GATE(0x80A5E13C, &lit_7154);
#pragma pop

/* 80A5E140-80A5E144 000244 0004+00 0/1 0/0 0/0 .rodata          @7155 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7155 = 12772.0f;
COMPILER_STRIP_GATE(0x80A5E140, &lit_7155);
#pragma pop

/* 80A5E144-80A5E148 000248 0004+00 0/1 0/0 0/0 .rodata          @7156 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7156 = 3940.0f;
COMPILER_STRIP_GATE(0x80A5E144, &lit_7156);
#pragma pop

/* 80A5E148-80A5E14C 00024C 0004+00 0/1 0/0 0/0 .rodata          @7157 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7157 = 3565.0f;
COMPILER_STRIP_GATE(0x80A5E148, &lit_7157);
#pragma pop

/* 80A5E14C-80A5E150 000250 0004+00 0/1 0/0 0/0 .rodata          @7158 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7158 = 13003.0f;
COMPILER_STRIP_GATE(0x80A5E14C, &lit_7158);
#pragma pop

/* 80A5E150-80A5E154 000254 0004+00 0/1 0/0 0/0 .rodata          @7159 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7159 = 4022.0f;
COMPILER_STRIP_GATE(0x80A5E150, &lit_7159);
#pragma pop

/* 80A5E154-80A5E158 000258 0004+00 0/1 0/0 0/0 .rodata          @7160 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7160 = 3613.0f;
COMPILER_STRIP_GATE(0x80A5E154, &lit_7160);
#pragma pop

/* 80A5E158-80A5E15C 00025C 0004+00 0/1 0/0 0/0 .rodata          @7161 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7161 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x80A5E158, &lit_7161);
#pragma pop

/* 80A5E15C-80A5E160 000260 0004+00 0/1 0/0 0/0 .rodata          @7162 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7162 = 0x3A83126F;
COMPILER_STRIP_GATE(0x80A5E15C, &lit_7162);
#pragma pop

/* 80A5E160-80A5E164 000264 0004+00 0/1 0/0 0/0 .rodata          @7163 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7163 = 12626.0f;
COMPILER_STRIP_GATE(0x80A5E160, &lit_7163);
#pragma pop

/* 80A5E164-80A5E168 000268 0004+00 0/1 0/0 0/0 .rodata          @7164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7164 = 12714.0f;
COMPILER_STRIP_GATE(0x80A5E164, &lit_7164);
#pragma pop

/* 80A5E168-80A5E16C 00026C 0004+00 0/1 0/0 0/0 .rodata          @7165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7165 = -23451.0f;
COMPILER_STRIP_GATE(0x80A5E168, &lit_7165);
#pragma pop

/* 80A5E16C-80A5E170 000270 0004+00 0/1 0/0 0/0 .rodata          @7166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7166 = 262.0f;
COMPILER_STRIP_GATE(0x80A5E16C, &lit_7166);
#pragma pop

/* 80A5E170-80A5E174 000274 0004+00 0/1 0/0 0/0 .rodata          @7167 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7167 = -15980.0f;
COMPILER_STRIP_GATE(0x80A5E170, &lit_7167);
#pragma pop

/* 80A5E174-80A5E178 000278 0004+00 0/1 0/0 0/0 .rodata          @7168 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7168 = -22325.0f;
COMPILER_STRIP_GATE(0x80A5E174, &lit_7168);
#pragma pop

/* 80A5E178-80A5E17C 00027C 0004+00 0/1 0/0 0/0 .rodata          @7169 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7169 = 275.0f;
COMPILER_STRIP_GATE(0x80A5E178, &lit_7169);
#pragma pop

/* 80A5E17C-80A5E180 000280 0004+00 0/1 0/0 0/0 .rodata          @7170 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7170 = -15119.0f;
COMPILER_STRIP_GATE(0x80A5E17C, &lit_7170);
#pragma pop

/* 80A5E180-80A5E184 000284 0004+00 0/1 0/0 0/0 .rodata          @7171 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7171 = -22672.0f;
COMPILER_STRIP_GATE(0x80A5E180, &lit_7171);
#pragma pop

/* 80A5E184-80A5E188 000288 0004+00 0/1 0/0 0/0 .rodata          @7172 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7172 = 311.0f;
COMPILER_STRIP_GATE(0x80A5E184, &lit_7172);
#pragma pop

/* 80A5E188-80A5E18C 00028C 0004+00 0/1 0/0 0/0 .rodata          @7173 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7173 = -15080.0f;
COMPILER_STRIP_GATE(0x80A5E188, &lit_7173);
#pragma pop

/* 80A5E18C-80A5E190 000290 0004+00 0/1 0/0 0/0 .rodata          @7174 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7174 = -22343.0f;
COMPILER_STRIP_GATE(0x80A5E18C, &lit_7174);
#pragma pop

/* 80A5E190-80A5E194 000294 0004+00 0/1 0/0 0/0 .rodata          @7175 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7175 = 273.0f;
COMPILER_STRIP_GATE(0x80A5E190, &lit_7175);
#pragma pop

/* 80A5E194-80A5E198 000298 0004+00 0/1 0/0 0/0 .rodata          @7176 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7176 = -15017.0f;
COMPILER_STRIP_GATE(0x80A5E194, &lit_7176);
#pragma pop

/* 80A5E198-80A5E19C 00029C 0004+00 0/1 0/0 0/0 .rodata          @7177 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7177 = -22177.0f;
COMPILER_STRIP_GATE(0x80A5E198, &lit_7177);
#pragma pop

/* 80A5E19C-80A5E1A0 0002A0 0004+00 0/1 0/0 0/0 .rodata          @7178 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7178 = 213.0f;
COMPILER_STRIP_GATE(0x80A5E19C, &lit_7178);
#pragma pop

/* 80A5E1A0-80A5E1A4 0002A4 0004+00 0/1 0/0 0/0 .rodata          @7179 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7179 = -14705.0f;
COMPILER_STRIP_GATE(0x80A5E1A0, &lit_7179);
#pragma pop

/* 80A5E1A4-80A5E1A8 0002A8 0004+00 0/1 0/0 0/0 .rodata          @7180 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7180 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x80A5E1A4, &lit_7180);
#pragma pop

/* 80A5E1A8-80A5E1AC 0002AC 0004+00 0/1 0/0 0/0 .rodata          @7181 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7181 = 0x38D1B717;
COMPILER_STRIP_GATE(0x80A5E1A8, &lit_7181);
#pragma pop

/* 80A5E1AC-80A5E1B0 0002B0 0004+00 0/1 0/0 0/0 .rodata          @7182 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7182 = -22613.0f;
COMPILER_STRIP_GATE(0x80A5E1AC, &lit_7182);
#pragma pop

/* 80A5E1B0-80A5E1B4 0002B4 0004+00 0/1 0/0 0/0 .rodata          @7183 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7183 = -15097.0f;
COMPILER_STRIP_GATE(0x80A5E1B0, &lit_7183);
#pragma pop

/* 80A5E1B4-80A5E1B8 0002B8 0004+00 0/1 0/0 0/0 .rodata          @7184 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7184 = -22275.0f;
COMPILER_STRIP_GATE(0x80A5E1B4, &lit_7184);
#pragma pop

/* 80A5E1B8-80A5E1BC 0002BC 0004+00 0/1 0/0 0/0 .rodata          @7185 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7185 = -15092.0f;
COMPILER_STRIP_GATE(0x80A5E1B8, &lit_7185);
#pragma pop

/* 80A5E1BC-80A5E1C0 0002C0 0004+00 0/1 0/0 0/0 .rodata          @7186 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7186 = -23371.0f;
COMPILER_STRIP_GATE(0x80A5E1BC, &lit_7186);
#pragma pop

/* 80A5E1C0-80A5E1C4 0002C4 0004+00 0/1 0/0 0/0 .rodata          @7187 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7187 = 380.0f;
COMPILER_STRIP_GATE(0x80A5E1C0, &lit_7187);
#pragma pop

/* 80A5E1C4-80A5E1C8 0002C8 0004+00 0/1 0/0 0/0 .rodata          @7188 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7188 = -15901.0f;
COMPILER_STRIP_GATE(0x80A5E1C4, &lit_7188);
#pragma pop

/* 80A5E1C8-80A5E1CC 0002CC 0004+00 0/1 0/0 0/0 .rodata          @7189 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7189 = -23163.0f;
COMPILER_STRIP_GATE(0x80A5E1C8, &lit_7189);
#pragma pop

/* 80A5E1CC-80A5E1D0 0002D0 0004+00 0/1 0/0 0/0 .rodata          @7190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7190 = 474.0f;
COMPILER_STRIP_GATE(0x80A5E1CC, &lit_7190);
#pragma pop

/* 80A5E1D0-80A5E1D4 0002D4 0004+00 0/1 0/0 0/0 .rodata          @7191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7191 = -15653.0f;
COMPILER_STRIP_GATE(0x80A5E1D0, &lit_7191);
#pragma pop

/* 80A5E1D4-80A5E1D8 0002D8 0004+00 0/1 0/0 0/0 .rodata          @7192 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7192 = -22650.0f;
COMPILER_STRIP_GATE(0x80A5E1D4, &lit_7192);
#pragma pop

/* 80A5E1D8-80A5E1DC 0002DC 0004+00 0/1 0/0 0/0 .rodata          @7193 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7193 = 334.0f;
COMPILER_STRIP_GATE(0x80A5E1D8, &lit_7193);
#pragma pop

/* 80A5E1DC-80A5E1E0 0002E0 0004+00 0/1 0/0 0/0 .rodata          @7194 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7194 = -15147.0f;
COMPILER_STRIP_GATE(0x80A5E1DC, &lit_7194);
#pragma pop

/* 80A5E1E0-80A5E1E4 0002E4 0004+00 0/1 0/0 0/0 .rodata          @7195 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7195 = -22277.0f;
COMPILER_STRIP_GATE(0x80A5E1E0, &lit_7195);
#pragma pop

/* 80A5E1E4-80A5E1E8 0002E8 0004+00 0/1 0/0 0/0 .rodata          @7196 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7196 = 355.0f;
COMPILER_STRIP_GATE(0x80A5E1E4, &lit_7196);
#pragma pop

/* 80A5E1E8-80A5E1EC 0002EC 0004+00 0/1 0/0 0/0 .rodata          @7197 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7197 = -15077.0f;
COMPILER_STRIP_GATE(0x80A5E1E8, &lit_7197);
#pragma pop

/* 80A5E1EC-80A5E1F0 0002F0 0004+00 0/1 0/0 0/0 .rodata          @7198 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7198 = -30827.0f;
COMPILER_STRIP_GATE(0x80A5E1EC, &lit_7198);
#pragma pop

/* 80A5E1F0-80A5E1F4 0002F4 0004+00 0/1 0/0 0/0 .rodata          @7199 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7199 = 411.0f;
COMPILER_STRIP_GATE(0x80A5E1F0, &lit_7199);
#pragma pop

/* 80A5E1F4-80A5E1F8 0002F8 0004+00 0/2 0/0 0/0 .rodata          @7200 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7200 = -17200.0f;
COMPILER_STRIP_GATE(0x80A5E1F4, &lit_7200);
#pragma pop

/* 80A5E1F8-80A5E1FC 0002FC 0004+00 0/1 0/0 0/0 .rodata          @7201 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7201 = -30601.0f;
COMPILER_STRIP_GATE(0x80A5E1F8, &lit_7201);
#pragma pop

/* 80A5E1FC-80A5E200 000300 0004+00 0/1 0/0 0/0 .rodata          @7202 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7202 = 388.0f;
COMPILER_STRIP_GATE(0x80A5E1FC, &lit_7202);
#pragma pop

/* 80A5E200-80A5E204 000304 0004+00 0/1 0/0 0/0 .rodata          @7203 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7203 = -17465.0f;
COMPILER_STRIP_GATE(0x80A5E200, &lit_7203);
#pragma pop

/* 80A5E204-80A5E208 000308 0004+00 0/1 0/0 0/0 .rodata          @7204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7204 = -30496.0f;
COMPILER_STRIP_GATE(0x80A5E204, &lit_7204);
#pragma pop

/* 80A5E208-80A5E20C 00030C 0004+00 0/1 0/0 0/0 .rodata          @7205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7205 = -17449.0f;
COMPILER_STRIP_GATE(0x80A5E208, &lit_7205);
#pragma pop

/* 80A5E20C-80A5E210 000310 0004+00 0/1 0/0 0/0 .rodata          @7206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7206 = -30844.0f;
COMPILER_STRIP_GATE(0x80A5E20C, &lit_7206);
#pragma pop

/* 80A5E210-80A5E214 000314 0004+00 0/1 0/0 0/0 .rodata          @7207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7207 = 298.0f;
COMPILER_STRIP_GATE(0x80A5E210, &lit_7207);
#pragma pop

/* 80A5E214-80A5E218 000318 0004+00 0/1 0/0 0/0 .rodata          @7208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7208 = -17007.0f;
COMPILER_STRIP_GATE(0x80A5E214, &lit_7208);
#pragma pop

/* 80A5E218-80A5E21C 00031C 0004+00 0/1 0/0 0/0 .rodata          @7209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7209 = -30653.0f;
COMPILER_STRIP_GATE(0x80A5E218, &lit_7209);
#pragma pop

/* 80A5E21C-80A5E220 000320 0004+00 0/1 0/0 0/0 .rodata          @7210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7210 = 357.0f;
COMPILER_STRIP_GATE(0x80A5E21C, &lit_7210);
#pragma pop

/* 80A5E220-80A5E224 000324 0004+00 0/1 0/0 0/0 .rodata          @7211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7211 = -17289.0f;
COMPILER_STRIP_GATE(0x80A5E220, &lit_7211);
#pragma pop

/* 80A5E224-80A5E228 000328 0004+00 0/1 0/0 0/0 .rodata          @7212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7212 = -30887.0f;
COMPILER_STRIP_GATE(0x80A5E224, &lit_7212);
#pragma pop

/* 80A5E228-80A5E22C 00032C 0004+00 0/1 0/0 0/0 .rodata          @7213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7213 = 429.0f;
COMPILER_STRIP_GATE(0x80A5E228, &lit_7213);
#pragma pop

/* 80A5E22C-80A5E230 000330 0004+00 0/1 0/0 0/0 .rodata          @7214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7214 = -17181.0f;
COMPILER_STRIP_GATE(0x80A5E22C, &lit_7214);
#pragma pop

/* 80A5E230-80A5E234 000334 0004+00 0/1 0/0 0/0 .rodata          @7215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7215 = -30870.0f;
COMPILER_STRIP_GATE(0x80A5E230, &lit_7215);
#pragma pop

/* 80A5E234-80A5E238 000338 0004+00 0/1 0/0 0/0 .rodata          @7216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7216 = 471.0f;
COMPILER_STRIP_GATE(0x80A5E234, &lit_7216);
#pragma pop

/* 80A5E238-80A5E23C 00033C 0004+00 0/1 0/0 0/0 .rodata          @7217 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7217 = -17527.0f;
COMPILER_STRIP_GATE(0x80A5E238, &lit_7217);
#pragma pop

/* 80A5E23C-80A5E240 000340 0004+00 0/1 0/0 0/0 .rodata          @7218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7218 = -37509.0f;
COMPILER_STRIP_GATE(0x80A5E23C, &lit_7218);
#pragma pop

/* 80A5E240-80A5E244 000344 0004+00 0/1 0/0 0/0 .rodata          @7219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7219 = 805.0f;
COMPILER_STRIP_GATE(0x80A5E240, &lit_7219);
#pragma pop

/* 80A5E244-80A5E248 000348 0004+00 0/1 0/0 0/0 .rodata          @7220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7220 = -22416.0f;
COMPILER_STRIP_GATE(0x80A5E244, &lit_7220);
#pragma pop

/* 80A5E248-80A5E24C 00034C 0004+00 0/1 0/0 0/0 .rodata          @7221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7221 = -36523.0f;
COMPILER_STRIP_GATE(0x80A5E248, &lit_7221);
#pragma pop

/* 80A5E24C-80A5E250 000350 0004+00 0/1 0/0 0/0 .rodata          @7222 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7222 = 335.0f;
COMPILER_STRIP_GATE(0x80A5E24C, &lit_7222);
#pragma pop

/* 80A5E250-80A5E254 000354 0004+00 0/1 0/0 0/0 .rodata          @7223 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7223 = -20500.0f;
COMPILER_STRIP_GATE(0x80A5E250, &lit_7223);
#pragma pop

/* 80A5E254-80A5E258 000358 0004+00 0/1 0/0 0/0 .rodata          @7224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7224 = -37817.0f;
COMPILER_STRIP_GATE(0x80A5E254, &lit_7224);
#pragma pop

/* 80A5E258-80A5E25C 00035C 0004+00 0/1 0/0 0/0 .rodata          @7225 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7225 = -21442.0f;
COMPILER_STRIP_GATE(0x80A5E258, &lit_7225);
#pragma pop

/* 80A5E25C-80A5E260 000360 0004+00 0/1 0/0 0/0 .rodata          @7226 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7226 = -36666.0f;
COMPILER_STRIP_GATE(0x80A5E25C, &lit_7226);
#pragma pop

/* 80A5E260-80A5E264 000364 0004+00 0/1 0/0 0/0 .rodata          @7227 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7227 = -22213.0f;
COMPILER_STRIP_GATE(0x80A5E260, &lit_7227);
#pragma pop

/* 80A5E264-80A5E268 000368 0004+00 0/1 0/0 0/0 .rodata          @7228 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7228 = -36489.0f;
COMPILER_STRIP_GATE(0x80A5E264, &lit_7228);
#pragma pop

/* 80A5E268-80A5E26C 00036C 0004+00 0/1 0/0 0/0 .rodata          @7229 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7229 = 399.0f;
COMPILER_STRIP_GATE(0x80A5E268, &lit_7229);
#pragma pop

/* 80A5E26C-80A5E270 000370 0004+00 0/1 0/0 0/0 .rodata          @7230 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7230 = -20932.0f;
COMPILER_STRIP_GATE(0x80A5E26C, &lit_7230);
#pragma pop

/* 80A5E270-80A5E274 000374 0004+00 0/1 0/0 0/0 .rodata          @7231 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7231 = -36574.0f;
COMPILER_STRIP_GATE(0x80A5E270, &lit_7231);
#pragma pop

/* 80A5E274-80A5E278 000378 0004+00 0/1 0/0 0/0 .rodata          @7232 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7232 = 421.0f;
COMPILER_STRIP_GATE(0x80A5E274, &lit_7232);
#pragma pop

/* 80A5E278-80A5E27C 00037C 0004+00 0/1 0/0 0/0 .rodata          @7233 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7233 = -21554.0f;
COMPILER_STRIP_GATE(0x80A5E278, &lit_7233);
#pragma pop

/* 80A5E27C-80A5E280 000380 0004+00 0/1 0/0 0/0 .rodata          @7234 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7234 = -36397.0f;
COMPILER_STRIP_GATE(0x80A5E27C, &lit_7234);
#pragma pop

/* 80A5E280-80A5E284 000384 0004+00 0/1 0/0 0/0 .rodata          @7235 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7235 = 374.0f;
COMPILER_STRIP_GATE(0x80A5E280, &lit_7235);
#pragma pop

/* 80A5E284-80A5E288 000388 0004+00 0/1 0/0 0/0 .rodata          @7236 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7236 = -20263.0f;
COMPILER_STRIP_GATE(0x80A5E284, &lit_7236);
#pragma pop

/* 80A5E288-80A5E28C 00038C 0004+00 0/1 0/0 0/0 .rodata          @7237 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7237 = -36581.0f;
COMPILER_STRIP_GATE(0x80A5E288, &lit_7237);
#pragma pop

/* 80A5E28C-80A5E290 000390 0004+00 0/1 0/0 0/0 .rodata          @7238 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7238 = 412.0f;
COMPILER_STRIP_GATE(0x80A5E28C, &lit_7238);
#pragma pop

/* 80A5E290-80A5E294 000394 0004+00 0/1 0/0 0/0 .rodata          @7239 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7239 = -21418.0f;
COMPILER_STRIP_GATE(0x80A5E290, &lit_7239);
#pragma pop

/* 80A5E294-80A5E298 000398 0004+00 0/1 0/0 0/0 .rodata          @7240 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7240 = -36509.0f;
COMPILER_STRIP_GATE(0x80A5E294, &lit_7240);
#pragma pop

/* 80A5E298-80A5E29C 00039C 0004+00 0/1 0/0 0/0 .rodata          @7241 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7241 = -21127.0f;
COMPILER_STRIP_GATE(0x80A5E298, &lit_7241);
#pragma pop

/* 80A5E29C-80A5E2A0 0003A0 0004+00 0/1 0/0 0/0 .rodata          @7242 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7242 = -38113.0f;
COMPILER_STRIP_GATE(0x80A5E29C, &lit_7242);
#pragma pop

/* 80A5E2A0-80A5E2A4 0003A4 0004+00 0/1 0/0 0/0 .rodata          @7243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7243 = 1234.0f;
COMPILER_STRIP_GATE(0x80A5E2A0, &lit_7243);
#pragma pop

/* 80A5E2A4-80A5E2A8 0003A8 0004+00 0/1 0/0 0/0 .rodata          @7244 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7244 = -22897.0f;
COMPILER_STRIP_GATE(0x80A5E2A4, &lit_7244);
#pragma pop

/* 80A5E2A8-80A5E2AC 0003AC 0004+00 0/1 0/0 0/0 .rodata          @7245 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7245 = -37882.0f;
COMPILER_STRIP_GATE(0x80A5E2A8, &lit_7245);
#pragma pop

/* 80A5E2AC-80A5E2B0 0003B0 0004+00 0/1 0/0 0/0 .rodata          @7246 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7246 = 1182.0f;
COMPILER_STRIP_GATE(0x80A5E2AC, &lit_7246);
#pragma pop

/* 80A5E2B0-80A5E2B4 0003B4 0004+00 0/1 0/0 0/0 .rodata          @7247 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7247 = -22713.0f;
COMPILER_STRIP_GATE(0x80A5E2B0, &lit_7247);
#pragma pop

/* 80A5E2B4-80A5E2B8 0003B8 0004+00 0/1 0/0 0/0 .rodata          @7248 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7248 = -36540.0f;
COMPILER_STRIP_GATE(0x80A5E2B4, &lit_7248);
#pragma pop

/* 80A5E2B8-80A5E2BC 0003BC 0004+00 0/1 0/0 0/0 .rodata          @7249 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7249 = -20870.0f;
COMPILER_STRIP_GATE(0x80A5E2B8, &lit_7249);
#pragma pop

/* 80A5E2BC-80A5E2C0 0003C0 0004+00 0/1 0/0 0/0 .rodata          @7250 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7250 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80A5E2BC, &lit_7250);
#pragma pop

/* 80A5E2C0-80A5E2C4 0003C4 0004+00 0/1 0/0 0/0 .rodata          @7251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7251 = -36467.0f;
COMPILER_STRIP_GATE(0x80A5E2C0, &lit_7251);
#pragma pop

/* 80A5E2C4-80A5E2C8 0003C8 0004+00 0/1 0/0 0/0 .rodata          @7252 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7252 = 426.0f;
COMPILER_STRIP_GATE(0x80A5E2C4, &lit_7252);
#pragma pop

/* 80A5E2C8-80A5E2CC 0003CC 0004+00 0/1 0/0 0/0 .rodata          @7253 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7253 = -20914.0f;
COMPILER_STRIP_GATE(0x80A5E2C8, &lit_7253);
#pragma pop

/* 80A5E2CC-80A5E2D0 0003D0 0004+00 0/1 0/0 0/0 .rodata          @7254 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7254 = -36244.0f;
COMPILER_STRIP_GATE(0x80A5E2CC, &lit_7254);
#pragma pop

/* 80A5E2D0-80A5E2D4 0003D4 0004+00 0/1 0/0 0/0 .rodata          @7255 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7255 = 409.0f;
COMPILER_STRIP_GATE(0x80A5E2D0, &lit_7255);
#pragma pop

/* 80A5E2D4-80A5E2D8 0003D8 0004+00 0/1 0/0 0/0 .rodata          @7256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7256 = -20714.0f;
COMPILER_STRIP_GATE(0x80A5E2D4, &lit_7256);
#pragma pop

/* 80A5E438-80A5E438 00053C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A5E440 = " PL IN %d";
#pragma pop

/* 80A50094-80A5280C 0071F4 2778+00 1/1 0/0 0/0 .text            demo_camera__FP12npc_ks_class */
static void demo_camera(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A5280C-80A52898 00996C 008C+00 3/3 0/0 0/0 .text            saru_count_check__FP12npc_ks_class
 */
static void saru_count_check(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E2D8-80A5E2DC 0003DC 0004+00 0/1 0/0 0/0 .rodata          @7645 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7645 = 5274.0f;
COMPILER_STRIP_GATE(0x80A5E2D8, &lit_7645);
#pragma pop

/* 80A5E2DC-80A5E2E0 0003E0 0004+00 0/1 0/0 0/0 .rodata          @7646 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7646 = 3250.0f;
COMPILER_STRIP_GATE(0x80A5E2DC, &lit_7646);
#pragma pop

/* 80A5E2E0-80A5E2E4 0003E4 0004+00 0/1 0/0 0/0 .rodata          @7647 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7647 = 6500.0f;
COMPILER_STRIP_GATE(0x80A5E2E0, &lit_7647);
#pragma pop

/* 80A5E2E4-80A5E2E8 0003E8 0004+00 0/2 0/0 0/0 .rodata          @7648 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7648 = 3000.0f;
COMPILER_STRIP_GATE(0x80A5E2E4, &lit_7648);
#pragma pop

/* 80A5E2E8-80A5E2EC 0003EC 0004+00 0/1 0/0 0/0 .rodata          @7649 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7649 = 7211.0f;
COMPILER_STRIP_GATE(0x80A5E2E8, &lit_7649);
#pragma pop

/* 80A5E2EC-80A5E2F0 0003F0 0004+00 0/3 0/0 0/0 .rodata          @7650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7650 = 450.0f;
COMPILER_STRIP_GATE(0x80A5E2EC, &lit_7650);
#pragma pop

/* 80A52898-80A533B4 0099F8 0B1C+00 2/1 0/0 0/0 .text            action_check__FP12npc_ks_class */
static void action_check(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A533B4-80A5352C 00A514 0178+00 1/1 0/0 0/0 .text            water_check__FP12npc_ks_class4cXyzf
 */
static void water_check(npc_ks_class* param_0, cXyz param_1, f32 param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E2F0-80A5E2F4 0003F4 0004+00 0/0 0/0 0/0 .rodata          @7651 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7651 = 5334.0f;
COMPILER_STRIP_GATE(0x80A5E2F0, &lit_7651);
#pragma pop

/* 80A5E2F4-80A5E2F8 0003F8 0004+00 0/0 0/0 0/0 .rodata          @7652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7652 = 7609.0f;
COMPILER_STRIP_GATE(0x80A5E2F4, &lit_7652);
#pragma pop

/* 80A5E2F8-80A5E2FC 0003FC 0004+00 0/8 0/0 0/0 .rodata          @7653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7653 = 700.0f;
COMPILER_STRIP_GATE(0x80A5E2F8, &lit_7653);
#pragma pop

/* 80A5E2FC-80A5E300 000400 0004+00 0/0 0/0 0/0 .rodata          @7654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7654 = -3900.0f;
COMPILER_STRIP_GATE(0x80A5E2FC, &lit_7654);
#pragma pop

/* 80A5E300-80A5E304 000404 0004+00 0/0 0/0 0/0 .rodata          @7655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7655 = 7275.0f;
COMPILER_STRIP_GATE(0x80A5E300, &lit_7655);
#pragma pop

/* 80A5E304-80A5E308 000408 0004+00 0/0 0/0 0/0 .rodata          @7656 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7656 = 3373.0f;
COMPILER_STRIP_GATE(0x80A5E304, &lit_7656);
#pragma pop

/* 80A5E308-80A5E30C 00040C 0004+00 0/0 0/0 0/0 .rodata          @7657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7657 = -4790.0f;
COMPILER_STRIP_GATE(0x80A5E308, &lit_7657);
#pragma pop

/* 80A5E30C-80A5E310 000410 0004+00 0/2 0/0 0/0 .rodata          @8130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8130 = 8.0f;
COMPILER_STRIP_GATE(0x80A5E30C, &lit_8130);
#pragma pop

/* 80A5352C-80A548E4 00A68C 13B8+00 2/1 0/0 0/0 .text            npc_ks_option__FP12npc_ks_class */
static void npc_ks_option(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A548E4-80A54A14 00BA44 0130+00 1/1 0/0 0/0 .text            npc_ks_awaydoor__FP12npc_ks_class
 */
static void npc_ks_awaydoor(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A54A14-80A55174 00BB74 0760+00 1/1 0/0 0/0 .text            npc_ks_guide_00__FP12npc_ks_class
 */
static void npc_ks_guide_00(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E310-80A5E314 000414 0004+00 0/1 0/0 0/0 .rodata          @8131 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8131 = 130.0f;
COMPILER_STRIP_GATE(0x80A5E310, &lit_8131);
#pragma pop

/* 80A5E314-80A5E318 000418 0004+00 0/0 0/0 0/0 .rodata          @8132 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8132 = 4096.0f;
COMPILER_STRIP_GATE(0x80A5E314, &lit_8132);
#pragma pop

/* 80A5E318-80A5E31C 00041C 0004+00 0/0 0/0 0/0 .rodata          @8133 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8133 = 1.5f;
COMPILER_STRIP_GATE(0x80A5E318, &lit_8133);
#pragma pop

/* 80A5E31C-80A5E320 000420 0004+00 0/3 0/0 0/0 .rodata          @8356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8356 = 900.0f;
COMPILER_STRIP_GATE(0x80A5E31C, &lit_8356);
#pragma pop

/* 80A5E320-80A5E324 000424 0004+00 0/1 0/0 0/0 .rodata          @8357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8357 = 750.0f;
COMPILER_STRIP_GATE(0x80A5E320, &lit_8357);
#pragma pop

/* 80A55174-80A5546C 00C2D4 02F8+00 1/1 0/0 0/0 .text            npc_ks_guide_00_2__FP12npc_ks_class
 */
static void npc_ks_guide_00_2(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A5546C-80A559B4 00C5CC 0548+00 1/1 0/0 0/0 .text            npc_ks_guide_00_3__FP12npc_ks_class
 */
static void npc_ks_guide_00_3(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E324-80A5E328 000428 0004+00 0/1 0/0 0/0 .rodata          @8644 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8644 = 9200.0f;
COMPILER_STRIP_GATE(0x80A5E324, &lit_8644);
#pragma pop

/* 80A5E328-80A5E32C 00042C 0004+00 0/1 0/0 0/0 .rodata          @8645 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8645 = 4839.0f;
COMPILER_STRIP_GATE(0x80A5E328, &lit_8645);
#pragma pop

/* 80A559B4-80A562EC 00CB14 0938+00 1/1 0/0 0/0 .text            npc_ks_guide_01__FP12npc_ks_class
 */
static void npc_ks_guide_01(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A562EC-80A56A1C 00D44C 0730+00 1/1 0/0 0/0 .text            npc_ks_guide_02__FP12npc_ks_class
 */
static void npc_ks_guide_02(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E32C-80A5E330 000430 0004+00 0/1 0/0 0/0 .rodata          @8912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8912 = 110.0f;
COMPILER_STRIP_GATE(0x80A5E32C, &lit_8912);
#pragma pop

/* 80A56A1C-80A57124 00DB7C 0708+00 1/1 0/0 0/0 .text            npc_ks_guide_22__FP12npc_ks_class
 */
static void npc_ks_guide_22(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A57124-80A57998 00E284 0874+00 1/1 0/0 0/0 .text            npc_ks_guide_09__FP12npc_ks_class
 */
static void npc_ks_guide_09(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A57998-80A57ED4 00EAF8 053C+00 1/1 0/0 0/0 .text            npc_ks_demo_12__FP12npc_ks_class */
static void npc_ks_demo_12(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E330-80A5E334 000434 0004+00 0/1 0/0 0/0 .rodata          @9260 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9260 = 7280.0f;
COMPILER_STRIP_GATE(0x80A5E330, &lit_9260);
#pragma pop

/* 80A5E334-80A5E338 000438 0004+00 0/1 0/0 0/0 .rodata          @9261 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9261 = -2709.0f;
COMPILER_STRIP_GATE(0x80A5E334, &lit_9261);
#pragma pop

/* 80A57ED4-80A58274 00F034 03A0+00 1/1 0/0 0/0 .text            npc_ks_guide_0409__FP12npc_ks_class
 */
static void npc_ks_guide_0409(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A58274-80A58410 00F3D4 019C+00 1/1 0/0 0/0 .text            path_search__FP12npc_ks_class */
static void path_search(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E338-80A5E33C 00043C 0004+00 0/1 0/0 0/0 .rodata          @9545 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9545 = -27426.0f;
COMPILER_STRIP_GATE(0x80A5E338, &lit_9545);
#pragma pop

/* 80A5E33C-80A5E340 000440 0004+00 0/1 0/0 0/0 .rodata          @9546 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9546 = -20000.0f;
COMPILER_STRIP_GATE(0x80A5E33C, &lit_9546);
#pragma pop

/* 80A5E340-80A5E344 000444 0004+00 0/1 0/0 0/0 .rodata          @9547 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9547 = 7500.0f;
COMPILER_STRIP_GATE(0x80A5E340, &lit_9547);
#pragma pop

/* 80A5E344-80A5E348 000448 0004+00 0/1 0/0 0/0 .rodata          @9548 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9548 = 6.0f;
COMPILER_STRIP_GATE(0x80A5E344, &lit_9548);
#pragma pop

/* 80A5E348-80A5E34C 00044C 0004+00 0/1 0/0 0/0 .rodata          @9549 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9549 = 1.25f;
COMPILER_STRIP_GATE(0x80A5E348, &lit_9549);
#pragma pop

/* 80A5E34C-80A5E350 000450 0004+00 0/1 0/0 0/0 .rodata          @9550 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9550 = -30900.0f;
COMPILER_STRIP_GATE(0x80A5E34C, &lit_9550);
#pragma pop

/* 80A5E350-80A5E354 000454 0004+00 0/1 0/0 0/0 .rodata          @9551 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9551 = -15756.0f;
COMPILER_STRIP_GATE(0x80A5E350, &lit_9551);
#pragma pop

/* 80A5E354-80A5E358 000458 0004+00 0/1 0/0 0/0 .rodata          @9552 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9552 = 1300.0f;
COMPILER_STRIP_GATE(0x80A5E354, &lit_9552);
#pragma pop

/* 80A5E358-80A5E35C 00045C 0004+00 0/1 0/0 0/0 .rodata          @9553 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9553 = -31872.0f;
COMPILER_STRIP_GATE(0x80A5E358, &lit_9553);
#pragma pop

/* 80A5E35C-80A5E360 000460 0004+00 0/1 0/0 0/0 .rodata          @9554 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9554 = -15490.0f;
COMPILER_STRIP_GATE(0x80A5E35C, &lit_9554);
#pragma pop

/* 80A58410-80A58FE0 00F570 0BD0+00 1/1 0/0 0/0 .text            npc_ks_mori__FP12npc_ks_class */
static void npc_ks_mori(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E360-80A5E364 000464 0004+00 0/1 0/0 0/0 .rodata          @9862 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9862 = -39906.0f;
COMPILER_STRIP_GATE(0x80A5E360, &lit_9862);
#pragma pop

/* 80A5E364-80A5E368 000468 0004+00 0/1 0/0 0/0 .rodata          @9863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9863 = 21962.0f;
COMPILER_STRIP_GATE(0x80A5E364, &lit_9863);
#pragma pop

/* 80A5E368-80A5E36C 00046C 0004+00 0/1 0/0 0/0 .rodata          @9864 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9864 = -24243.0f;
COMPILER_STRIP_GATE(0x80A5E368, &lit_9864);
#pragma pop

/* 80A5E36C-80A5E370 000470 0004+00 0/1 0/0 0/0 .rodata          @9865 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9865 = -21000.0f;
COMPILER_STRIP_GATE(0x80A5E36C, &lit_9865);
#pragma pop

/* 80A5E370-80A5E374 000474 0004+00 0/1 0/0 0/0 .rodata          @9866 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9866 = 1962.0f;
COMPILER_STRIP_GATE(0x80A5E370, &lit_9866);
#pragma pop

/* 80A58FE0-80A599D8 010140 09F8+00 2/1 0/0 0/0 .text            npc_ks_fsdemo__FP12npc_ks_class */
static void npc_ks_fsdemo(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A599D8-80A59A90 010B38 00B8+00 1/1 0/0 0/0 .text            npc_ks_kago__FP12npc_ks_class */
static void npc_ks_kago(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E374-80A5E378 000478 0004+00 0/0 0/0 0/0 .rodata          @9867 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9867 = -37799.0f;
COMPILER_STRIP_GATE(0x80A5E374, &lit_9867);
#pragma pop

/* 80A5E378-80A5E37C 00047C 0004+00 0/0 0/0 0/0 .rodata          @9868 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9868 = 815.0f;
COMPILER_STRIP_GATE(0x80A5E378, &lit_9868);
#pragma pop

/* 80A5E37C-80A5E380 000480 0004+00 0/0 0/0 0/0 .rodata          @9869 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9869 = -22323.0f;
COMPILER_STRIP_GATE(0x80A5E37C, &lit_9869);
#pragma pop

/* 80A5E380-80A5E384 000484 0004+00 0/0 0/0 0/0 .rodata          @9870 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9870 = 57.0f;
COMPILER_STRIP_GATE(0x80A5E380, &lit_9870);
#pragma pop

/* 80A5E384-80A5E388 000488 0004+00 0/1 0/0 0/0 .rodata          @10197 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10197 = 16.0f;
COMPILER_STRIP_GATE(0x80A5E384, &lit_10197);
#pragma pop

/* 80A5E388-80A5E38C 00048C 0004+00 0/1 0/0 0/0 .rodata          @10198 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10198 = 9.0f;
COMPILER_STRIP_GATE(0x80A5E388, &lit_10198);
#pragma pop

/* 80A5E38C-80A5E390 000490 0004+00 0/1 0/0 0/0 .rodata          @10199 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10199 = 24.0f;
COMPILER_STRIP_GATE(0x80A5E38C, &lit_10199);
#pragma pop

/* 80A5E390-80A5E394 000494 0004+00 0/2 0/0 0/0 .rodata          @10200 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10200 = 11.0f;
COMPILER_STRIP_GATE(0x80A5E390, &lit_10200);
#pragma pop

/* 80A5E394-80A5E398 000498 0004+00 0/1 0/0 0/0 .rodata          @10201 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10201 = 19.0f;
COMPILER_STRIP_GATE(0x80A5E394, &lit_10201);
#pragma pop

/* 80A5E398-80A5E39C 00049C 0004+00 0/1 0/0 0/0 .rodata          @10202 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10202 = 36.0f;
COMPILER_STRIP_GATE(0x80A5E398, &lit_10202);
#pragma pop

/* 80A5E39C-80A5E3A0 0004A0 0004+00 0/1 0/0 0/0 .rodata          @10203 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10203 = 54.0f;
COMPILER_STRIP_GATE(0x80A5E39C, &lit_10203);
#pragma pop

/* 80A5E3A0-80A5E3A4 0004A4 0004+00 0/1 0/0 0/0 .rodata          @10204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10204 = 47.0f;
COMPILER_STRIP_GATE(0x80A5E3A0, &lit_10204);
#pragma pop

/* 80A5E3A4-80A5E3A8 0004A8 0004+00 0/1 0/0 0/0 .rodata          @10205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10205 = 22.0f;
COMPILER_STRIP_GATE(0x80A5E3A4, &lit_10205);
#pragma pop

/* 80A5E3A8-80A5E3AC 0004AC 0004+00 0/1 0/0 0/0 .rodata          @10206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10206 = 17.0f;
COMPILER_STRIP_GATE(0x80A5E3A8, &lit_10206);
#pragma pop

/* 80A5E3AC-80A5E3B0 0004B0 0004+00 0/1 0/0 0/0 .rodata          @10207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10207 = 18.0f;
COMPILER_STRIP_GATE(0x80A5E3AC, &lit_10207);
#pragma pop

/* 80A5E3B0-80A5E3B4 0004B4 0004+00 0/1 0/0 0/0 .rodata          @10208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10208 = 38.0f;
COMPILER_STRIP_GATE(0x80A5E3B0, &lit_10208);
#pragma pop

/* 80A5E3B4-80A5E3B8 0004B8 0004+00 0/1 0/0 0/0 .rodata          @10209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10209 = 51.0f;
COMPILER_STRIP_GATE(0x80A5E3B4, &lit_10209);
#pragma pop

/* 80A5E3B8-80A5E3BC 0004BC 0004+00 0/1 0/0 0/0 .rodata          @10210 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_10210 = 0x3CB020C5;
COMPILER_STRIP_GATE(0x80A5E3B8, &lit_10210);
#pragma pop

/* 80A5E3BC-80A5E3C0 0004C0 0004+00 0/1 0/0 0/0 .rodata          @10211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10211 = 127.0f;
COMPILER_STRIP_GATE(0x80A5E3BC, &lit_10211);
#pragma pop

/* 80A59A90-80A5A7D8 010BF0 0D48+00 1/1 0/0 0/0 .text            anm_se_set__FP12npc_ks_class */
static void anm_se_set(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E3C0-80A5E3C4 0004C4 0004+00 0/1 0/0 0/0 .rodata          @10479 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10479 = -300.0f;
COMPILER_STRIP_GATE(0x80A5E3C0, &lit_10479);
#pragma pop

/* 80A5E3C4-80A5E3C8 0004C8 0004+00 0/1 0/0 0/0 .rodata          @10480 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10480 = -90.0f;
COMPILER_STRIP_GATE(0x80A5E3C4, &lit_10480);
#pragma pop

/* 80A5E3C8-80A5E3CC 0004CC 0004+00 0/1 0/0 0/0 .rodata          @10481 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10481 = 2000.0f;
COMPILER_STRIP_GATE(0x80A5E3C8, &lit_10481);
#pragma pop

/* 80A5E3CC-80A5E3D0 0004D0 0004+00 0/1 0/0 0/0 .rodata          @10482 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10482 = -70.0f;
COMPILER_STRIP_GATE(0x80A5E3CC, &lit_10482);
#pragma pop

/* 80A5E3D0-80A5E3D4 0004D4 0004+00 0/1 0/0 0/0 .rodata          @10483 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10483 = 0.75f;
COMPILER_STRIP_GATE(0x80A5E3D0, &lit_10483);
#pragma pop

/* 80A5A7D8-80A5B544 011938 0D6C+00 1/1 0/0 0/0 .text            action__FP12npc_ks_class */
static void action(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A5B544-80A5B614 0126A4 00D0+00 1/1 0/0 0/0 .text            s_kago_sub__FPvPv */
static void s_kago_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E3D4-80A5E3D8 0004D8 0004+00 0/1 0/0 0/0 .rodata          @10567 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10567 = 44.0f;
COMPILER_STRIP_GATE(0x80A5E3D4, &lit_10567);
#pragma pop

/* 80A5E3D8-80A5E3DC 0004DC 0004+00 0/1 0/0 0/0 .rodata          @10568 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10568 = 144.5f;
COMPILER_STRIP_GATE(0x80A5E3D8, &lit_10568);
#pragma pop

/* 80A5E3DC-80A5E3E0 0004E0 0004+00 0/1 0/0 0/0 .rodata          @10569 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10569 = -30715.0f;
COMPILER_STRIP_GATE(0x80A5E3DC, &lit_10569);
#pragma pop

/* 80A5E3E0-80A5E3E4 0004E4 0004+00 0/1 0/0 0/0 .rodata          @10570 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10570 = 338.0f;
COMPILER_STRIP_GATE(0x80A5E3E0, &lit_10570);
#pragma pop

/* 80A5E3E4-80A5E3EC 0004E8 0004+04 0/1 0/0 0/0 .rodata          @10571 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10571[1 + 1 /* padding */] = {
    14500.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80A5E3E4, &lit_10571);
#pragma pop

/* 80A5E3EC-80A5E3F4 0004F0 0008+00 0/2 0/0 0/0 .rodata          @10573 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_10573[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A5E3EC, &lit_10573);
#pragma pop

/* 80A5B614-80A5B8FC 012774 02E8+00 1/1 0/0 0/0 .text            kantera_sub__FP12npc_ks_class */
static void kantera_sub(npc_ks_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E3F4-80A5E3F8 0004F8 0004+00 0/1 0/0 0/0 .rodata          @10878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10878 = 32768.0f;
COMPILER_STRIP_GATE(0x80A5E3F4, &lit_10878);
#pragma pop

/* 80A5E3F8-80A5E3FC 0004FC 0004+00 0/1 0/0 0/0 .rodata          @10879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10879 = -60.0f;
COMPILER_STRIP_GATE(0x80A5E3F8, &lit_10879);
#pragma pop

/* 80A5E3FC-80A5E400 000500 0004+00 0/1 0/0 0/0 .rodata          @10880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10880 = -0.0f;
COMPILER_STRIP_GATE(0x80A5E3FC, &lit_10880);
#pragma pop

/* 80A5E400-80A5E404 000504 0004+00 0/1 0/0 0/0 .rodata          @10881 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10881 = -3.0f;
COMPILER_STRIP_GATE(0x80A5E400, &lit_10881);
#pragma pop

/* 80A5FF48-80A5FF58 000108 000C+04 0/0 0/0 0/0 .bss             @7870 */
#pragma push
#pragma force_active on
static u8 lit_7870[12 + 4 /* padding */];
#pragma pop

/* 80A5FF58-80A5FF64 000118 000C+00 0/0 0/0 0/0 .bss             sc$7869 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 80A5FF64-80A5FF68 000124 0004+00 0/2 0/0 0/0 .bss             c_start */
#pragma push
#pragma force_active on
static u8 c_start[4];
#pragma pop

/* 80A5B8FC-80A5C3E4 012A5C 0AE8+00 2/1 0/0 0/0 .text            daNpc_Ks_Execute__FP12npc_ks_class
 */
static void daNpc_Ks_Execute(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A5C3E4-80A5C3EC 013544 0008+00 1/0 0/0 0/0 .text            daNpc_Ks_IsDelete__FP12npc_ks_class
 */
static bool daNpc_Ks_IsDelete(npc_ks_class* param_0) {
    return true;
}

/* 80A5C3EC-80A5C450 01354C 0064+00 1/0 0/0 0/0 .text            daNpc_Ks_Delete__FP12npc_ks_class
 */
static void daNpc_Ks_Delete(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A5C450-80A5C768 0135B0 0318+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A5C768-80A5C7B0 0138C8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E404-80A5E408 000508 0004+00 0/1 0/0 0/0 .rodata          @11370 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11370 = 4620.0f;
COMPILER_STRIP_GATE(0x80A5E404, &lit_11370);
#pragma pop

/* 80A5C7B0-80A5D2BC 013910 0B0C+00 2/1 0/0 0/0 .text            start_check__FP12npc_ks_class */
static void start_check(npc_ks_class* param_0) {
    // NONMATCHING
}

/* 80A5D2BC-80A5D354 01441C 0098+00 1/1 0/0 0/0 .text            s_check_sub__FPvPv */
static void s_check_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5E408-80A5E40C 00050C 0004+00 0/0 0/0 0/0 .rodata          @11371 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11371 = 6854.0f;
COMPILER_STRIP_GATE(0x80A5E408, &lit_11371);
#pragma pop

/* 80A5E40C-80A5E410 000510 0004+00 0/0 0/0 0/0 .rodata          @11372 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11372 = 3458.0f;
COMPILER_STRIP_GATE(0x80A5E40C, &lit_11372);
#pragma pop

/* 80A5E410-80A5E414 000514 0004+00 0/0 0/0 0/0 .rodata          @11373 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11373 = 440.0f;
COMPILER_STRIP_GATE(0x80A5E410, &lit_11373);
#pragma pop

/* 80A5E414-80A5E418 000518 0004+00 0/0 0/0 0/0 .rodata          @11374 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11374 = 6836.0f;
COMPILER_STRIP_GATE(0x80A5E414, &lit_11374);
#pragma pop

/* 80A5E418-80A5E41C 00051C 0004+00 0/0 0/0 0/0 .rodata          @11375 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11375 = 3585.0f;
COMPILER_STRIP_GATE(0x80A5E418, &lit_11375);
#pragma pop

/* 80A5E41C-80A5E420 000520 0004+00 0/0 0/0 0/0 .rodata          @11376 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11376 = 7025.0f;
COMPILER_STRIP_GATE(0x80A5E41C, &lit_11376);
#pragma pop

/* 80A5E420-80A5E424 000524 0004+00 0/0 0/0 0/0 .rodata          @11377 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11377 = 3355.0f;
COMPILER_STRIP_GATE(0x80A5E420, &lit_11377);
#pragma pop

/* 80A5E424-80A5E428 000528 0004+00 0/0 0/0 0/0 .rodata          @11378 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11378 = 4500.0f;
COMPILER_STRIP_GATE(0x80A5E424, &lit_11378);
#pragma pop

/* 80A5E428-80A5E42C 00052C 0004+00 0/1 0/0 0/0 .rodata          @11581 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11581 = -5370.0f;
COMPILER_STRIP_GATE(0x80A5E428, &lit_11581);
#pragma pop

/* 80A5E42C-80A5E430 000530 0004+00 0/1 0/0 0/0 .rodata          @11582 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11582 = 3950.0f;
COMPILER_STRIP_GATE(0x80A5E42C, &lit_11582);
#pragma pop

/* 80A5E430-80A5E434 000534 0004+00 0/1 0/0 0/0 .rodata          @11583 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11583 = -2330.0f;
COMPILER_STRIP_GATE(0x80A5E430, &lit_11583);
#pragma pop

/* 80A5E434-80A5E438 000538 0004+00 0/1 0/0 0/0 .rodata          @11584 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11584 = 65536.0f;
COMPILER_STRIP_GATE(0x80A5E434, &lit_11584);
#pragma pop

/* 80A5E438-80A5E438 00053C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A5E44A = "Npc_ks";
SECTION_DEAD static char const* const stringBase_80A5E451 = "D_MN05";
#pragma pop

/* 80A5D354-80A5D87C 0144B4 0528+00 1/0 0/0 0/0 .text            daNpc_Ks_Create__FP10fopAc_ac_c */
static void daNpc_Ks_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A5D87C-80A5D8C4 0149DC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A5D8C4-80A5D90C 014A24 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A5D90C-80A5D968 014A6C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A5D968-80A5D9D8 014AC8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A5D9D8-80A5DA48 014B38 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A5DA48-80A5DA90 014BA8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A5DA90-80A5DAD8 014BF0 0048+00 2/1 0/0 0/0 .text            __dt__14daNpc_Ks_HIO_cFv */
daNpc_Ks_HIO_c::~daNpc_Ks_HIO_c() {
    // NONMATCHING
}

/* 80A5DAD8-80A5DB30 014C38 0058+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_ks_cpp */
void __sinit_d_a_npc_ks_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A5DAD8, __sinit_d_a_npc_ks_cpp);
#pragma pop

/* 80A5DB30-80A5DB38 014C90 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A5DB30() {
    // NONMATCHING
}

/* 80A5DB38-80A5DB40 014C98 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A5DB38() {
    // NONMATCHING
}

/* 80A5DB40-80A5DB54 014CA0 0014+00 1/1 0/0 0/0 .text            cancelOriginalDemo__9daPy_py_cFv */
// void daPy_py_c::cancelOriginalDemo() {
extern "C" void cancelOriginalDemo__9daPy_py_cFv() {
    // NONMATCHING
}

/* 80A5DB54-80A5DB80 014CB4 002C+00 1/1 0/0 0/0 .text            dComIfGp_event_reset__Fv */
// static void dComIfGp_event_reset() {
extern "C" static asm void dComIfGp_event_reset__Fv() {
    // NONMATCHING
}

/* 80A5DB80-80A5DB9C 014CE0 001C+00 1/1 0/0 0/0 .text            __ct__4cXyzFRC4cXyz */
// cXyz::cXyz(cXyz const& param_0) {
extern "C" void __ct__4cXyzFRC4cXyz() {
    // NONMATCHING
}

/* 80A5DB9C-80A5DBB4 014CFC 0018+00 1/1 0/0 0/0 .text            dComIfGp_setItemOilCount__Fl */
// static void dComIfGp_setItemOilCount(s32 param_0) {
extern "C" static asm void dComIfGp_setItemOilCount__Fl() {
    // NONMATCHING
}

/* 80A5DBB4-80A5DBC4 014D14 0010+00 1/1 0/0 0/0 .text            dComIfGs_getMaxOil__Fv */
// static void dComIfGs_getMaxOil() {
extern "C" static asm void dComIfGs_getMaxOil__Fv() {
    // NONMATCHING
}

/* 80A5DBC4-80A5DBD4 014D24 0010+00 1/1 0/0 0/0 .text            daPy_getPlayerActorClass__Fv */
// static void daPy_getPlayerActorClass() {
extern "C" static asm void daPy_getPlayerActorClass__Fv() {
    // NONMATCHING
}

/* 80A5DBD4-80A5DC48 014D34 0074+00 1/1 0/0 0/0 .text
 * dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz             */
// static void dComIfGp_particle_set(u16 param_0, cXyz const* param_1, csXyz const* param_2,
//                                       cXyz const* param_3) {
extern "C" static asm void dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz() {
    // NONMATCHING
}

/* 80A5DC48-80A5DC64 014DA8 001C+00 1/1 0/0 0/0 .text            changeDemoPos0__9daPy_py_cFPC4cXyz
 */
// void daPy_py_c::changeDemoPos0(cXyz const* param_0) {
extern "C" void changeDemoPos0__9daPy_py_cFPC4cXyz() {
    // NONMATCHING
}

/* 80A5DC64-80A5DC98 014DC4 0034+00 1/1 0/0 0/0 .text            __apl__4cXyzFRC3Vec */
// void cXyz::operator+=(Vec const& param_0) {
extern "C" void __apl__4cXyzFRC3Vec() {
    // NONMATCHING
}

/* 80A5DC98-80A5DCA4 014DF8 000C+00 1/1 0/0 0/0 .text            fabsf__3stdFf */
// void std::fabsf(f32 param_0) {
extern "C" void fabsf__3stdFf() {
    // NONMATCHING
}

/* 80A5DCA4-80A5DCB4 014E04 0010+00 1/1 0/0 0/0 .text            set__4cXyzFfff */
// void cXyz::set(f32 param_0, f32 param_1, f32 param_2) {
extern "C" void set__4cXyzFfff() {
    // NONMATCHING
}

/* 80A5DCB4-80A5DCD0 014E14 001C+00 1/1 0/0 0/0 .text            __as__4cXyzFRC4cXyz */
// void cXyz::operator=(cXyz const& param_0) {
extern "C" void __as__4cXyzFRC4cXyz() {
    // NONMATCHING
}

/* 80A5DCD0-80A5DCD8 -00001 0008+00 0/0 0/0 0/0 .text            changeDemoParam0__9daPy_py_cFi */
// void daPy_py_c::changeDemoParam0(int param_0) {
extern "C" void changeDemoParam0__9daPy_py_cFi(daPy_py_c* param_0, int param_1) {
    *(u32*)(((u8*)param_0) + 1548) /* this->field_0x60c */ = (u32)(param_1);
}

/* 80A5DCD8-80A5DCEC 014E38 0014+00 1/1 0/0 0/0 .text            changeDemoMode__9daPy_py_cFUliis */
// void daPy_py_c::changeDemoMode(u32 param_0, int param_1, int param_2, s16 param_3) {
extern "C" void changeDemoMode__9daPy_py_cFUliis() {
    // NONMATCHING
}

/* 80A5DCEC-80A5DD00 014E4C 0014+00 1/1 0/0 0/0 .text            changeOriginalDemo__9daPy_py_cFv */
// void daPy_py_c::changeOriginalDemo() {
extern "C" void changeOriginalDemo__9daPy_py_cFv() {
    // NONMATCHING
}

/* 80A5DD00-80A5DD10 014E60 0010+00 1/1 0/0 0/0 .text            onCondition__11dEvt_info_cFUs */
// void dEvt_info_c::onCondition(u16 param_0) {
extern "C" void onCondition__11dEvt_info_cFUs() {
    // NONMATCHING
}

/* 80A5DD10-80A5DD24 014E70 0014+00 1/1 0/0 0/0 .text checkCommandDemoAccrpt__11dEvt_info_cFv */
// void dEvt_info_c::checkCommandDemoAccrpt() {
extern "C" void checkCommandDemoAccrpt__11dEvt_info_cFv() {
    // NONMATCHING
}

/* 80A5DD24-80A5DD3C 014E84 0018+00 1/1 0/0 0/0 .text            dComIfGp_getCamera__Fi */
// static void dComIfGp_getCamera(int param_0) {
extern "C" static asm void dComIfGp_getCamera__Fi() {
    // NONMATCHING
}

/* 80A5DD3C-80A5DD58 014E9C 001C+00 1/1 0/0 0/0 .text            dComIfGp_getPlayerCameraID__Fi */
// static void dComIfGp_getPlayerCameraID(int param_0) {
extern "C" static asm void dComIfGp_getPlayerCameraID__Fi() {
    // NONMATCHING
}

/* 80A5DD58-80A5DD70 014EB8 0018+00 1/1 0/0 0/0 .text            dComIfGp_getPlayer__Fi */
// static void dComIfGp_getPlayer(int param_0) {
extern "C" void dComIfGp_getPlayer__Fi() {
    // NONMATCHING
}

/* 80A5DD70-80A5DDC0 014ED0 0050+00 1/1 0/0 0/0 .text            checkShadowReturnEnd__9daMidna_cCFv
 */
// void daMidna_c::checkShadowReturnEnd() const {
extern "C" void checkShadowReturnEnd__9daMidna_cCFv() {
    // NONMATCHING
}

/* 80A5DDC0-80A5DDC8 -00001 0008+00 0/0 0/0 0/0 .text            changeDemoMode__9daMidna_cFUl */
// void daMidna_c::changeDemoMode(u32 param_0) {
extern "C" void changeDemoMode__9daMidna_cFUl(daMidna_c* param_0, u32 param_1) {
    *(u32*)(((u8*)param_0) + 2240) /* this->field_0x8c0 */ = (u32)(param_1);
}

/* 80A5DDC8-80A5DDD4 014F28 000C+00 1/1 0/0 0/0 .text            changeOriginalDemo__9daMidna_cFv */
// void daMidna_c::changeOriginalDemo() {
extern "C" void changeOriginalDemo__9daMidna_cFv() {
    // NONMATCHING
}

/* 80A5DDD4-80A5DDE4 014F34 0010+00 1/1 0/0 0/0 .text            dComIfGp_getVibration__Fv */
// static void dComIfGp_getVibration() {
extern "C" static asm void dComIfGp_getVibration__Fv() {
    // NONMATCHING
}

/* 80A5DDE4-80A5DDF4 014F44 0010+00 1/1 0/0 0/0 .text            __ct__4cXyzFfff */
// cXyz::cXyz(f32 param_0, f32 param_1, f32 param_2) {
extern "C" void __ct__4cXyzFfff() {
    // NONMATCHING
}

/* 80A5DDF4-80A5DE04 014F54 0010+00 1/1 0/0 0/0 .text            dMeter2Info_setOilGaugeBackUp__FUs
 */
// static void dMeter2Info_setOilGaugeBackUp(u16 param_0) {
extern "C" static asm void dMeter2Info_setOilGaugeBackUp__FUs() {
    // NONMATCHING
}

/* 80A5DE04-80A5DE14 014F64 0010+00 1/1 0/0 0/0 .text            dComIfGs_getOil__Fv */
// static void dComIfGs_getOil() {
extern "C" static asm void dComIfGs_getOil__Fv() {
    // NONMATCHING
}

/* 80A5DE14-80A5DE4C 014F74 0038+00 1/1 0/0 0/0 .text            dComIfGs_setItem__FiUc */
// static void dComIfGs_setItem(int param_0, u8 param_1) {
extern "C" static asm void dComIfGs_setItem__FiUc() {
    // NONMATCHING
}

/* 80A5DE4C-80A5DE54 -00001 0008+00 0/0 0/0 0/0 .text            __ct__10JAISoundIDFUl */
// JAISoundID::JAISoundID(u32 param_0) {
void __ct__10JAISoundIDFUl() {
    // *(u32*)this = (u32)(param_0);
    asm {
        stw r4, 0x0(r3)
    }
}

/* 80A5DE54-80A5DEB8 014FB4 0064+00 1/1 0/0 0/0 .text            mDoAud_seStart__FUlPC3VecUlSc */
// static void mDoAud_seStart(u32 param_0, Vec const* param_1, u32 param_2, s8 param_3) {
extern "C" static asm void mDoAud_seStart__FUlPC3VecUlSc() {
    // NONMATCHING
}

/* 80A5DEB8-80A5DEE8 015018 0030+00 1/1 0/0 0/0 .text            dComIfGs_onEventBit__FUs */
// static void dComIfGs_onEventBit(u16 param_0) {
extern "C" static asm void dComIfGs_onEventBit__FUs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A5FF68-80A5FF6C 000128 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80A5FF68[4];
#pragma pop

/* 80A5FF6C-80A5FF70 00012C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80A5FF6C[4];
#pragma pop

/* 80A5FF70-80A5FF74 000130 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A5FF70[4];
#pragma pop

/* 80A5FF74-80A5FF78 000134 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A5FF74[4];
#pragma pop

/* 80A5FF78-80A5FF7C 000138 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A5FF78[4];
#pragma pop

/* 80A5FF7C-80A5FF80 00013C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A5FF7C[4];
#pragma pop

/* 80A5FF80-80A5FF84 000140 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80A5FF80[4];
#pragma pop

/* 80A5FF84-80A5FF88 000144 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80A5FF84[4];
#pragma pop

/* 80A5FF88-80A5FF8C 000148 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80A5FF88[4];
#pragma pop

/* 80A5FF8C-80A5FF90 00014C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80A5FF8C[4];
#pragma pop

/* 80A5FF90-80A5FF94 000150 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A5FF90[4];
#pragma pop

/* 80A5FF94-80A5FF98 000154 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A5FF94[4];
#pragma pop

/* 80A5FF98-80A5FF9C 000158 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80A5FF98[4];
#pragma pop

/* 80A5FF9C-80A5FFA0 00015C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A5FF9C[4];
#pragma pop

/* 80A5FFA0-80A5FFA4 000160 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A5FFA0[4];
#pragma pop

/* 80A5FFA4-80A5FFA8 000164 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80A5FFA4[4];
#pragma pop

/* 80A5FFA8-80A5FFAC 000168 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80A5FFA8[4];
#pragma pop

/* 80A5FFAC-80A5FFB0 00016C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A5FFAC[4];
#pragma pop

/* 80A5FFB0-80A5FFB4 000170 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80A5FFB0[4];
#pragma pop

/* 80A5FFB4-80A5FFB8 000174 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A5FFB4[4];
#pragma pop

/* 80A5FFB8-80A5FFBC 000178 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80A5FFB8[4];
#pragma pop

/* 80A5FFBC-80A5FFC0 00017C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A5FFBC[4];
#pragma pop

/* 80A5FFC0-80A5FFC4 000180 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A5FFC0[4];
#pragma pop

/* 80A5FFC4-80A5FFC8 000184 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A5FFC4[4];
#pragma pop

/* 80A5FFC8-80A5FFCC 000188 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A5FFC8[4];
#pragma pop

/* 80A5E438-80A5E438 00053C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
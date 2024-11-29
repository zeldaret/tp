/**
 * @file d_a_e_rdy.cpp
 * 
*/

#include "d/actor/d_a_e_rdy.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"


//
// Forward References:
//

extern "C" void __ct__13daE_RDY_HIO_cFv();
extern "C" static void anm_init__FP11e_rdy_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void nodeCallBack_bow__FP8J3DJointi();
extern "C" static void daE_RDY_Draw__FP11e_rdy_class();
extern "C" static void other_bg_check__FP11e_rdy_classP10fopAc_ac_c();
extern "C" static void s_b_sub__FPvPv();
extern "C" static void search_bomb__FP11e_rdy_classi();
extern "C" static void way_bg_check__FP11e_rdy_classf();
extern "C" static void ride_off__FP11e_rdy_class();
extern "C" static void pl_check__FP11e_rdy_classfs();
extern "C" static void bomb_view_check__FP11e_rdy_class();
extern "C" static void bomb_check__FP11e_rdy_class();
extern "C" static void move_gake_check__FP11e_rdy_classf();
extern "C" static void way_check__FP11e_rdy_class();
extern "C" static void path_check__FP11e_rdy_class();
extern "C" static void e_rdy_normal__FP11e_rdy_class();
extern "C" static void e_rdy_fight_run__FP11e_rdy_class();
extern "C" static void at_hit_check__FP11e_rdy_class();
extern "C" static void e_rdy_fight__FP11e_rdy_class();
extern "C" static void e_rdy_bow_run__FP11e_rdy_class();
extern "C" static void e_rdy_bow__FP11e_rdy_class();
extern "C" static void s_command3_sub__FPvPv();
extern "C" static void e_rdy_bow2__FP11e_rdy_class();
extern "C" static void e_rdy_bow_ikki2__FP11e_rdy_class();
extern "C" static void e_rdy_avoid__FP11e_rdy_class();
extern "C" static void s_kusa_sub__FPvPv();
extern "C" static void e_rdy_tkusa__FP11e_rdy_class();
extern "C" static void e_rdy_yc_ride__FP11e_rdy_class();
extern "C" static void e_rdy_bomb_action__FP11e_rdy_class();
extern "C" static void e_rdy_s_damage__FP11e_rdy_class();
extern "C" static void kado_check__FP11e_rdy_class();
extern "C" static void rd_disappear__FP11e_rdy_class();
extern "C" static void body_gake__FP11e_rdy_class();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void e_rdy_damage__FP11e_rdy_class();
extern "C" static void gake_check__FP11e_rdy_classf();
extern "C" static void s_bikkuri_sub__FPvPv();
extern "C" static void e_rdy_drop__FP11e_rdy_class();
extern "C" static void e_rdy_a_damage__FP11e_rdy_class();
extern "C" static void e_rdy_stand__FP11e_rdy_class();
extern "C" static void e_rdy_bow3__FP11e_rdy_class();
extern "C" static void s_command2_sub__FPvPv();
extern "C" static void s_command4_sub__FPvPv();
extern "C" static void e_rdy_commander__FP11e_rdy_class();
extern "C" static void e_rdy_excite__FP11e_rdy_class();
extern "C" static void e_rdy_water__FP11e_rdy_class();
extern "C" static void e_rdy_jyunkai__FP11e_rdy_class();
extern "C" static void wolfkick_damage__FP11e_rdy_class();
extern "C" static void big_damage__FP11e_rdy_class();
extern "C" static void small_damage__FP11e_rdy_classi();
extern "C" static void damage_check__FP11e_rdy_class();
extern "C" static void action__FP11e_rdy_class();
extern "C" static void fire_eff_set__FP11e_rdy_class();
extern "C" static void cam_3d_morf__FP11e_rdy_classf();
extern "C" static void s_adel_sub__FPvPv();
extern "C" static void demo_camera__FP11e_rdy_class();
extern "C" static void daE_RDY_Execute__FP11e_rdy_class();
extern "C" static bool daE_RDY_IsDelete__FP11e_rdy_class();
extern "C" static void daE_RDY_Delete__FP11e_rdy_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_RDY_Create__FP10fopAc_ac_c();
extern "C" void __ct__11e_rdy_classFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__11J3DLightObjFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__13daE_RDY_HIO_cFv();
extern "C" void __sinit_d_a_e_rdy_cpp();
extern "C" static void func_80779920();
extern "C" static void func_80779928();
extern "C" static void func_80779930();
extern "C" static void func_80779938();
extern "C" static void func_80779940();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void changeDemoMode__9daPy_py_cFUliis();
extern "C" extern char const* const d_a_e_rdy__stringBase0;

//
// External References:
//

extern "C" void fadeOut__13mDoGph_gInf_cFfR8_GXColor();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
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
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_getTalkEventPartner__FPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_setCarryNow__FP10fopAc_ac_ci();
extern "C" void fopAcM_otoCheck__FPC10fopAc_ac_cf();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void dComIfGs_offOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void checkStateCarry__7dBomb_cFv();
extern "C" void offEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void __ct__9dJntCol_cFv();
extern "C" void init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
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
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void cc_pl_cut_bit_get__Fv();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzsf();
extern "C" void Reset__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_Sound_set__F4cXyziUii();
extern "C" void dKy_Sound_get__Fv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void getStatus__12dMsgObject_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void cM_rndF2__Ff();
extern "C" void cM_rndFX2__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxScale__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void MtxPush__Fv();
extern "C" void MtxPull__Fv();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void bgmStart__8Z2SeqMgrFUlUll();
extern "C" void bgmStop__8Z2SeqMgrFUll();
extern "C" void setBattleBgmOff__8Z2SeqMgrFb();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __as__12J3DLightInfoFRC12J3DLightInfo();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_21();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_21();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 const tempBitLabels__20dSv_event_tmp_flag_c[370 + 2 /* padding */];
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u32 g_blackColor;
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80779DFC-80779E00 000000 0004+00 43/43 0/0 0/0 .rodata          @4018 */
SECTION_RODATA static f32 const lit_4018 = 100.0f;
COMPILER_STRIP_GATE(0x80779DFC, &lit_4018);

/* 80779E00-80779E04 000004 0004+00 2/34 0/0 0/0 .rodata          @4019 */
SECTION_RODATA static u8 const lit_4019[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80779E00, &lit_4019);

/* 80779E04-80779E0C 000008 0004+04 1/28 0/0 0/0 .rodata          @4020 */
SECTION_RODATA static f32 const lit_4020[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80779E04, &lit_4020);

/* 80779E0C-80779E14 000010 0008+00 0/6 0/0 0/0 .rodata          @4021 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4021[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80779E0C, &lit_4021);
#pragma pop

/* 80779E14-80779E1C 000018 0008+00 0/6 0/0 0/0 .rodata          @4022 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4022[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80779E14, &lit_4022);
#pragma pop

/* 80779E1C-80779E24 000020 0008+00 0/6 0/0 0/0 .rodata          @4023 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4023[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80779E1C, &lit_4023);
#pragma pop

/* 80779E24-80779E28 000028 0004+00 0/1 0/0 0/0 .rodata          @4024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4024 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80779E24, &lit_4024);
#pragma pop

/* 80779E28-80779E2C 00002C 0004+00 0/1 0/0 0/0 .rodata          @4039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4039 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80779E28, &lit_4039);
#pragma pop

/* 80779E2C-80779E30 000030 0004+00 0/1 0/0 0/0 .rodata          @4040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4040 = 3.5f;
COMPILER_STRIP_GATE(0x80779E2C, &lit_4040);
#pragma pop

/* 80779E30-80779E34 000034 0004+00 0/1 0/0 0/0 .rodata          @4041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4041 = 14.0f;
COMPILER_STRIP_GATE(0x80779E30, &lit_4041);
#pragma pop

/* 80779E34-80779E38 000038 0004+00 0/1 0/0 0/0 .rodata          @4042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4042 = 250.0f;
COMPILER_STRIP_GATE(0x80779E34, &lit_4042);
#pragma pop

/* 80779E38-80779E3C 00003C 0004+00 0/5 0/0 0/0 .rodata          @4043 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4043 = 300.0f;
COMPILER_STRIP_GATE(0x80779E38, &lit_4043);
#pragma pop

/* 80779E3C-80779E40 000040 0004+00 0/1 0/0 0/0 .rodata          @4044 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4044 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x80779E3C, &lit_4044);
#pragma pop

/* 80779E40-80779E44 000044 0004+00 0/2 0/0 0/0 .rodata          @4045 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4045 = 1300.0f;
COMPILER_STRIP_GATE(0x80779E40, &lit_4045);
#pragma pop

/* 80779E44-80779E48 000048 0004+00 0/2 0/0 0/0 .rodata          @4046 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4046 = 2000.0f;
COMPILER_STRIP_GATE(0x80779E44, &lit_4046);
#pragma pop

/* 80779E48-80779E4C 00004C 0004+00 0/10 0/0 0/0 .rodata          @4047 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4047 = 3.0f;
COMPILER_STRIP_GATE(0x80779E48, &lit_4047);
#pragma pop

/* 80779E4C-80779E50 000050 0004+00 0/1 0/0 0/0 .rodata          @4048 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4048 = 75.0f;
COMPILER_STRIP_GATE(0x80779E4C, &lit_4048);
#pragma pop

/* 80779E50-80779E54 000054 0004+00 0/13 0/0 0/0 .rodata          @4049 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4049 = 5.0f;
COMPILER_STRIP_GATE(0x80779E50, &lit_4049);
#pragma pop

/* 80779E54-80779E58 000058 0004+00 1/17 0/0 0/0 .rodata          @4050 */
SECTION_RODATA static f32 const lit_4050 = 10.0f;
COMPILER_STRIP_GATE(0x80779E54, &lit_4050);

/* 80779E58-80779E5C 00005C 0004+00 0/1 0/0 0/0 .rodata          @4051 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4051 = 33.0f;
COMPILER_STRIP_GATE(0x80779E58, &lit_4051);
#pragma pop

/* 8077A0DC-8077A0E8 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8077A0E8-8077A0FC 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 8077A0FC-8077A104 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3897 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 8077A104-8077A10C 000028 0008+00 0/1 0/0 0/0 .data            e_env$3898 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 8077A10C-8077A114 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3906 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_id[6 + 2 /* padding */] = {
    0x02,
    0x9D,
    0x02,
    0x9E,
    0x02,
    0x9F,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 8077A114-8077A17C -00001 0068+00 1/1 0/0 0/0 .data            @5017 */
SECTION_DATA static void* lit_5017[26] = {
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x114),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x174),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x1B8),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x1D0),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x23C),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x274),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x2B4),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x310),
    (void*)(((char*)e_rdy_fight_run__FP11e_rdy_class) + 0x2D8),
};

/* 8077A17C-8077A1D8 -00001 005C+00 1/1 0/0 0/0 .data            @5218 */
SECTION_DATA static void* lit_5218[23] = {
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x80),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0xE0),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x124),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x264),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x144),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x1F8),
    (void*)(((char*)e_rdy_bow_run__FP11e_rdy_class) + 0x244),
};

/* 8077A1D8-8077A1F8 -00001 0020+00 1/1 0/0 0/0 .data            @5517 */
SECTION_DATA static void* lit_5517[8] = {
    (void*)(((char*)e_rdy_bow_ikki2__FP11e_rdy_class) + 0x64),
    (void*)(((char*)e_rdy_bow_ikki2__FP11e_rdy_class) + 0x94),
    (void*)(((char*)e_rdy_bow_ikki2__FP11e_rdy_class) + 0xC0),
    (void*)(((char*)e_rdy_bow_ikki2__FP11e_rdy_class) + 0xCC),
    (void*)(((char*)e_rdy_bow_ikki2__FP11e_rdy_class) + 0xF8),
    (void*)(((char*)e_rdy_bow_ikki2__FP11e_rdy_class) + 0x158),
    (void*)(((char*)e_rdy_bow_ikki2__FP11e_rdy_class) + 0x1F4),
    (void*)(((char*)e_rdy_bow_ikki2__FP11e_rdy_class) + 0x274),
};

/* 8077A1F8-8077A230 -00001 0038+00 1/1 0/0 0/0 .data            @5899 */
SECTION_DATA static void* lit_5899[14] = {
    (void*)(((char*)e_rdy_tkusa__FP11e_rdy_class) + 0x148),
    (void*)(((char*)e_rdy_tkusa__FP11e_rdy_class) + 0x1DC),
    (void*)(((char*)e_rdy_tkusa__FP11e_rdy_class) + 0x238),
    (void*)(((char*)e_rdy_tkusa__FP11e_rdy_class) + 0x314),
    (void*)(((char*)e_rdy_tkusa__FP11e_rdy_class) + 0x474),
    (void*)(((char*)e_rdy_tkusa__FP11e_rdy_class) + 0x4A4),
    (void*)(((char*)e_rdy_tkusa__FP11e_rdy_class) + 0x584),
    (void*)(((char*)e_rdy_tkusa__FP11e_rdy_class) + 0x6DC),
    (void*)(((char*)e_rdy_tkusa__FP11e_rdy_class) + 0x80C),
    (void*)(((char*)e_rdy_tkusa__FP11e_rdy_class) + 0x884),
    (void*)(((char*)e_rdy_tkusa__FP11e_rdy_class) + 0x91C),
    (void*)(((char*)e_rdy_tkusa__FP11e_rdy_class) + 0x988),
    (void*)(((char*)e_rdy_tkusa__FP11e_rdy_class) + 0x9C8),
    (void*)(((char*)e_rdy_tkusa__FP11e_rdy_class) + 0xA6C),
};

/* 8077A230-8077A24C -00001 001C+00 1/1 0/0 0/0 .data            @6169 */
SECTION_DATA static void* lit_6169[7] = {
    (void*)(((char*)e_rdy_bomb_action__FP11e_rdy_class) + 0x98),
    (void*)(((char*)e_rdy_bomb_action__FP11e_rdy_class) + 0xD8),
    (void*)(((char*)e_rdy_bomb_action__FP11e_rdy_class) + 0x124),
    (void*)(((char*)e_rdy_bomb_action__FP11e_rdy_class) + 0x210),
    (void*)(((char*)e_rdy_bomb_action__FP11e_rdy_class) + 0x3F4),
    (void*)(((char*)e_rdy_bomb_action__FP11e_rdy_class) + 0x250),
    (void*)(((char*)e_rdy_bomb_action__FP11e_rdy_class) + 0x2DC),
};

/* 8077A24C-8077A254 000170 0008+00 1/1 0/0 0/0 .data            kado_bit$6208 */
SECTION_DATA static u8 kado_bit[8] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02,
};

/* 8077A254-8077A25C 000178 0008+00 1/1 0/0 0/0 .data            kado_check_x$6209 */
SECTION_DATA static u8 kado_check_x[8] = {
    0x42, 0xA0, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00,
};

/* 8077A25C-8077A2DC -00001 0080+00 1/1 0/0 0/0 .data            @6638 */
SECTION_DATA static void* lit_6638[32] = {
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0x11C),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0x1E0),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0x43C),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0x5F4),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0x700),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0x7E8),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0x884),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0x8D4),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0xA14),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0x92C),
    (void*)(((char*)e_rdy_damage__FP11e_rdy_class) + 0x9E8),
};

/* 8077A2DC-8077A314 -00001 0038+00 1/1 0/0 0/0 .data            @6943 */
SECTION_DATA static void* lit_6943[14] = {
    (void*)(((char*)e_rdy_bow3__FP11e_rdy_class) + 0xD4),
    (void*)(((char*)e_rdy_bow3__FP11e_rdy_class) + 0xFC),
    (void*)(((char*)e_rdy_bow3__FP11e_rdy_class) + 0x3C0),
    (void*)(((char*)e_rdy_bow3__FP11e_rdy_class) + 0x104),
    (void*)(((char*)e_rdy_bow3__FP11e_rdy_class) + 0x3C0),
    (void*)(((char*)e_rdy_bow3__FP11e_rdy_class) + 0x11C),
    (void*)(((char*)e_rdy_bow3__FP11e_rdy_class) + 0x3C0),
    (void*)(((char*)e_rdy_bow3__FP11e_rdy_class) + 0x3C0),
    (void*)(((char*)e_rdy_bow3__FP11e_rdy_class) + 0x3C0),
    (void*)(((char*)e_rdy_bow3__FP11e_rdy_class) + 0x3C0),
    (void*)(((char*)e_rdy_bow3__FP11e_rdy_class) + 0x184),
    (void*)(((char*)e_rdy_bow3__FP11e_rdy_class) + 0x1FC),
    (void*)(((char*)e_rdy_bow3__FP11e_rdy_class) + 0x2B8),
    (void*)(((char*)e_rdy_bow3__FP11e_rdy_class) + 0x360),
};

/* 8077A314-8077A344 -00001 0030+00 1/1 0/0 0/0 .data            @7053 */
SECTION_DATA static void* lit_7053[12] = {
    (void*)(((char*)e_rdy_commander__FP11e_rdy_class) + 0x8C),
    (void*)(((char*)e_rdy_commander__FP11e_rdy_class) + 0x98),
    (void*)(((char*)e_rdy_commander__FP11e_rdy_class) + 0xEC),
    (void*)(((char*)e_rdy_commander__FP11e_rdy_class) + 0x3F0),
    (void*)(((char*)e_rdy_commander__FP11e_rdy_class) + 0x3F0),
    (void*)(((char*)e_rdy_commander__FP11e_rdy_class) + 0x140),
    (void*)(((char*)e_rdy_commander__FP11e_rdy_class) + 0x16C),
    (void*)(((char*)e_rdy_commander__FP11e_rdy_class) + 0x214),
    (void*)(((char*)e_rdy_commander__FP11e_rdy_class) + 0x3F0),
    (void*)(((char*)e_rdy_commander__FP11e_rdy_class) + 0x3F0),
    (void*)(((char*)e_rdy_commander__FP11e_rdy_class) + 0x2F4),
    (void*)(((char*)e_rdy_commander__FP11e_rdy_class) + 0x368),
};

/* 8077A344-8077A35C 000268 0016+02 1/1 0/0 0/0 .data            j_spd$7550 */
SECTION_DATA static u8 j_spd[22 + 2 /* padding */] = {
    0x40,
    0x00,
    0x40,
    0x00,
    0x40,
    0x00,
    0x10,
    0x00,
    0x10,
    0x00,
    0x10,
    0x00,
    0x10,
    0x00,
    0x40,
    0x00,
    0x40,
    0x00,
    0x40,
    0x00,
    0x40,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 8077A35C-8077A364 000280 0006+02 1/1 0/0 0/0 .data            w_eff_name$7595 */
SECTION_DATA static u8 w_eff_name[6 + 2 /* padding */] = {
    0x82,
    0x58,
    0x82,
    0x59,
    0x82,
    0x5A,
    /* padding */
    0x00,
    0x00,
};

/* 8077A364-8077A434 -00001 00D0+00 1/1 0/0 0/0 .data            @7918 */
SECTION_DATA static void* lit_7918[52] = {
    (void*)(((char*)action__FP11e_rdy_class) + 0xEC),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0xFC),
    (void*)(((char*)action__FP11e_rdy_class) + 0x10C),
    (void*)(((char*)action__FP11e_rdy_class) + 0x11C),
    (void*)(((char*)action__FP11e_rdy_class) + 0x12C),
    (void*)(((char*)action__FP11e_rdy_class) + 0x13C),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x150),
    (void*)(((char*)action__FP11e_rdy_class) + 0x160),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x16C),
    (void*)(((char*)action__FP11e_rdy_class) + 0x178),
    (void*)(((char*)action__FP11e_rdy_class) + 0x184),
    (void*)(((char*)action__FP11e_rdy_class) + 0x190),
    (void*)(((char*)action__FP11e_rdy_class) + 0x19C),
    (void*)(((char*)action__FP11e_rdy_class) + 0x1A8),
    (void*)(((char*)action__FP11e_rdy_class) + 0x1B8),
    (void*)(((char*)action__FP11e_rdy_class) + 0x1C8),
    (void*)(((char*)action__FP11e_rdy_class) + 0x1DC),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x1E8),
    (void*)(((char*)action__FP11e_rdy_class) + 0x1F8),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x204),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x218),
    (void*)(((char*)action__FP11e_rdy_class) + 0x210),
};

/* 8077A434-8077A5C8 -00001 0194+00 1/1 0/0 0/0 .data            @8596 */
SECTION_DATA static void* lit_8596[101] = {
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x94),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x180),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x180),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x180),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x25C),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x304),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x460),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x544),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x5D4),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x654),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x704),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x778),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x7E0),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x898),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x960),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x9C4),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0xB74),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0xC74),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0xDC0),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0xE9C),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0xFA0),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0xFE4),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x1054),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x10A4),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x1148),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x1198),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x11F0),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E8),
    (void*)(((char*)demo_camera__FP11e_rdy_class) + 0x12E4),
};

/* 8077A5C8-8077A62C 0004EC 0064+00 1/1 0/0 0/0 .data            time_scale$8695 */
SECTION_DATA static u8 time_scale[100] = {
    0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x8C, 0xCC, 0xCD, 0x3F, 0x80, 0x00,
    0x00, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x19, 0x99, 0x9A, 0x3E, 0xCC, 0xCC, 0xCD, 0x3E, 0x4C,
    0xCC, 0xCD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3E, 0x4C, 0xCC,
    0xCD, 0x3F, 0x00, 0x00, 0x00, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x99,
    0x99, 0x9A, 0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x99, 0x99, 0x9A,
};

/* 8077A62C-8077A638 000550 000C+00 1/0 0/0 0/0 .data            jv_offset */
SECTION_DATA static u8 jv_offset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8077A638-8077A6BC -00001 0084+00 1/1 0/0 0/0 .data            jc_data */
SECTION_DATA static void* jc_data[33] = {
    (void*)0x00010001, (void*)0x41F00000, (void*)&jv_offset, (void*)0x0001000B, (void*)0x41C80000,
    (void*)&jv_offset, (void*)0x0001000C, (void*)0x41A00000, (void*)&jv_offset, (void*)0x00010011,
    (void*)0x41700000, (void*)&jv_offset, (void*)0x00010012, (void*)0x41200000, (void*)&jv_offset,
    (void*)0x00010016, (void*)0x41700000, (void*)&jv_offset, (void*)0x00010017, (void*)0x41200000,
    (void*)&jv_offset, (void*)0x00010003, (void*)0x41200000, (void*)&jv_offset, (void*)0x00010004,
    (void*)0x40A00000, (void*)&jv_offset, (void*)0x00010008, (void*)0x41200000, (void*)&jv_offset,
    (void*)0x00010009, (void*)0x40A00000, (void*)&jv_offset,
};

/* 8077A6BC-8077A6FC 0005E0 0040+00 1/1 0/0 0/0 .data            cc_sph_src$9405 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8077A6FC-8077A73C 000620 0040+00 1/1 0/0 0/0 .data            at_sph_src$9406 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};

/* 8077A73C-8077A75C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_RDY_Method */
static actor_method_class l_daE_RDY_Method = {
    (process_method_func)daE_RDY_Create__FP10fopAc_ac_c,
    (process_method_func)daE_RDY_Delete__FP11e_rdy_class,
    (process_method_func)daE_RDY_Execute__FP11e_rdy_class,
    (process_method_func)daE_RDY_IsDelete__FP11e_rdy_class,
    (process_method_func)daE_RDY_Draw__FP11e_rdy_class,
};

/* 8077A75C-8077A78C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_RDY */
extern actor_process_profile_definition g_profile_E_RDY = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_RDY,             // mProcName
  &g_fpcLf_Method.base,  // sub_method
  0x0000142C,             // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  157,                    // mPriority
  &l_daE_RDY_Method,      // sub_method
  0x00044000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8077A78C-8077A798 0006B0 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8077A798-8077A7A4 0006BC 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8077A7A4-8077A7B0 0006C8 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8077A7B0-8077A7BC 0006D4 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8077A7BC-8077A7C8 0006E0 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8077A7C8-8077A7EC 0006EC 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80779940,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80779938,
};

/* 8077A7EC-8077A81C 000710 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80779920,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80779930,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80779928,
};

/* 8077A81C-8077A828 000740 000C+00 2/2 0/0 0/0 .data            __vt__13daE_RDY_HIO_c */
SECTION_DATA extern void* __vt__13daE_RDY_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daE_RDY_HIO_cFv,
};

/* 8076BDCC-8076BE80 0000EC 00B4+00 1/1 0/0 0/0 .text            __ct__13daE_RDY_HIO_cFv */
daE_RDY_HIO_c::daE_RDY_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779E5C-80779E60 000060 0004+00 1/8 0/0 0/0 .rodata          @4074 */
SECTION_RODATA static f32 const lit_4074 = -1.0f;
COMPILER_STRIP_GATE(0x80779E5C, &lit_4074);

/* 80779E60-80779E64 000064 0004+00 0/6 0/0 0/0 .rodata          @4075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4075 = 30.0f;
COMPILER_STRIP_GATE(0x80779E60, &lit_4075);
#pragma pop

/* 80779E64-80779E6C 000068 0008+00 1/5 0/0 0/0 .rodata          @4078 */
SECTION_RODATA static u8 const lit_4078[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80779E64, &lit_4078);

/* 8076BE80-8076BF6C 0001A0 00EC+00 23/23 0/0 0/0 .text            anm_init__FP11e_rdy_classifUcf */
static void anm_init(e_rdy_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779E6C-80779E70 000070 0004+00 1/2 0/0 0/0 .rodata          @4246 */
SECTION_RODATA static f32 const lit_4246 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80779E6C, &lit_4246);

/* 8076BF6C-8076C484 00028C 0518+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8076C484-8076C54C 0007A4 00C8+00 1/1 0/0 0/0 .text            nodeCallBack_bow__FP8J3DJointi */
static void nodeCallBack_bow(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779E70-80779E74 000074 0004+00 0/1 0/0 0/0 .rodata          @4408 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4408 = 1200.0f;
COMPILER_STRIP_GATE(0x80779E70, &lit_4408);
#pragma pop

/* 8076C54C-8076C9D0 00086C 0484+00 1/0 0/0 0/0 .text            daE_RDY_Draw__FP11e_rdy_class */
static void daE_RDY_Draw(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779E74-80779E78 000078 0004+00 1/2 0/0 0/0 .rodata          @4442 */
SECTION_RODATA static f32 const lit_4442 = 130.0f;
COMPILER_STRIP_GATE(0x80779E74, &lit_4442);

/* 8076C9D0-8076CAA8 000CF0 00D8+00 3/3 0/0 0/0 .text other_bg_check__FP11e_rdy_classP10fopAc_ac_c
 */
static void other_bg_check(e_rdy_class* param_0, fopAc_ac_c* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8077A830-8077A834 000008 0001+03 3/3 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 8077A834-8077A838 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 8077A838-8077A83C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8077A83C-8077A840 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 8077A840-8077A844 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8077A844-8077A848 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 8077A848-8077A84C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8077A84C-8077A850 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 8077A850-8077A854 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 8077A854-8077A858 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 8077A858-8077A85C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8077A85C-8077A860 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 8077A860-8077A864 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 8077A864-8077A868 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 8077A868-8077A86C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8077A86C-8077A870 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 8077A870-8077A874 000048 0004+00 1/1 0/0 0/0 .bss             boss */
static u8 boss[4];

/* 8077A874-8077A878 00004C 0004+00 1/2 0/0 0/0 .bss             None */
static u8 data_8077A874[4];

/* 8077A878-8077A884 000050 000C+00 0/1 0/0 0/0 .bss             @4034 */
#pragma push
#pragma force_active on
static u8 lit_4034[12];
#pragma pop

/* 8077A884-8077A8D4 00005C 0050+00 15/18 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[80];

/* 8077A8D4-8077A8D8 0000AC 0002+02 4/5 0/0 0/0 .bss             S_find */
static u8 S_find[2 + 2 /* padding */];

/* 8077A8D8-8077A8E4 0000B0 000C+00 0/1 0/0 0/0 .bss             @4052 */
#pragma push
#pragma force_active on
static u8 lit_4052[12];
#pragma pop

/* 8077A8E4-8077A8F0 0000BC 000C+00 2/3 0/0 0/0 .bss             S_find_pos */
static u8 S_find_pos[12];

/* 8077A8F0-8077A918 0000C8 0028+00 2/2 0/0 0/0 .bss             target_info */
static u8 target_info[40];

/* 8077A918-8077A91C 0000F0 0004+00 2/2 0/0 0/0 .bss             target_info_count */
static u8 target_info_count[4];

/* 8076CAA8-8076CB24 000DC8 007C+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
static void s_b_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779E78-80779E7C 00007C 0004+00 1/11 0/0 0/0 .rodata          @4576 */
SECTION_RODATA static f32 const lit_4576 = 50.0f;
COMPILER_STRIP_GATE(0x80779E78, &lit_4576);

/* 80779E7C-80779E80 000080 0004+00 0/1 0/0 0/0 .rodata          @4577 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4577 = 500.0f;
COMPILER_STRIP_GATE(0x80779E7C, &lit_4577);
#pragma pop

/* 80779E80-80779E84 000084 0004+00 0/1 0/0 0/0 .rodata          @4578 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4578 = -125.0f;
COMPILER_STRIP_GATE(0x80779E80, &lit_4578);
#pragma pop

/* 80779E84-80779E88 000088 0004+00 0/1 0/0 0/0 .rodata          @4579 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4579 = 1500.0f;
COMPILER_STRIP_GATE(0x80779E84, &lit_4579);
#pragma pop

/* 8076CB24-8076CE10 000E44 02EC+00 2/2 0/0 0/0 .text            search_bomb__FP11e_rdy_classi */
static void search_bomb(e_rdy_class* param_0, int param_1) {
    // NONMATCHING
}

/* 8076CE10-8076CF1C 001130 010C+00 3/3 0/0 0/0 .text            way_bg_check__FP11e_rdy_classf */
static void way_bg_check(e_rdy_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* 8076CF1C-8076D004 00123C 00E8+00 1/1 0/0 0/0 .text            ride_off__FP11e_rdy_class */
static void ride_off(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779E88-80779E8C 00008C 0004+00 1/4 0/0 0/0 .rodata          @4663 */
SECTION_RODATA static f32 const lit_4663 = 10000.0f;
COMPILER_STRIP_GATE(0x80779E88, &lit_4663);

/* 8076D004-8076D114 001324 0110+00 6/6 0/0 0/0 .text            pl_check__FP11e_rdy_classfs */
static void pl_check(e_rdy_class* param_0, f32 param_1, s16 param_2) {
    // NONMATCHING
}

/* 8076D114-8076D138 001434 0024+00 3/3 0/0 0/0 .text            bomb_view_check__FP11e_rdy_class */
static void bomb_view_check(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 8076D138-8076D15C 001458 0024+00 1/1 0/0 0/0 .text            bomb_check__FP11e_rdy_class */
static void bomb_check(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 8076D15C-8076D24C 00147C 00F0+00 6/6 0/0 0/0 .text            move_gake_check__FP11e_rdy_classf
 */
static void move_gake_check(e_rdy_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779E8C-80779E90 000090 0004+00 0/2 0/0 0/0 .rodata          @4740 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4740 = 65535.0f;
COMPILER_STRIP_GATE(0x80779E8C, &lit_4740);
#pragma pop

/* 80779E90-80779E94 000094 0004+00 0/4 0/0 0/0 .rodata          @4741 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4741 = 1000.0f;
COMPILER_STRIP_GATE(0x80779E90, &lit_4741);
#pragma pop

/* 80779E94-80779E98 000098 0004+00 0/1 0/0 0/0 .rodata          @4742 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4742 = 150.0f;
COMPILER_STRIP_GATE(0x80779E94, &lit_4742);
#pragma pop

/* 8076D24C-8076D3C4 00156C 0178+00 1/1 0/0 0/0 .text            way_check__FP11e_rdy_class */
static void way_check(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779E98-80779E9C 00009C 0004+00 0/3 0/0 0/0 .rodata          @4813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4813 = 0.5f;
COMPILER_STRIP_GATE(0x80779E98, &lit_4813);
#pragma pop

/* 8077A91C-8077AA1C 0000F4 00FF+01 1/1 0/0 0/0 .bss             check_index$4747 */
static u8 check_index[255 + 1 /* padding */];

/* 8076D3C4-8076D5F0 0016E4 022C+00 1/1 0/0 0/0 .text            path_check__FP11e_rdy_class */
static void path_check(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779E9C-80779EA0 0000A0 0004+00 0/7 0/0 0/0 .rodata          @4901 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4901 = 2.0f;
COMPILER_STRIP_GATE(0x80779E9C, &lit_4901);
#pragma pop

/* 80779EA0-80779EA4 0000A4 0004+00 0/7 0/0 0/0 .rodata          @4902 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4902 = 200.0f;
COMPILER_STRIP_GATE(0x80779EA0, &lit_4902);
#pragma pop

/* 80779EA4-80779EA8 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4903 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4903 = 4000.0f;
COMPILER_STRIP_GATE(0x80779EA4, &lit_4903);
#pragma pop

/* 8076D5F0-8076DA3C 001910 044C+00 1/1 0/0 0/0 .text            e_rdy_normal__FP11e_rdy_class */
static void e_rdy_normal(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 8076DA3C-8076E00C 001D5C 05D0+00 2/1 0/0 0/0 .text            e_rdy_fight_run__FP11e_rdy_class */
static void e_rdy_fight_run(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 8076E00C-8076E06C 00232C 0060+00 1/1 0/0 0/0 .text            at_hit_check__FP11e_rdy_class */
static void at_hit_check(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779EA8-80779EAC 0000AC 0004+00 0/2 0/0 0/0 .rodata          @5011 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5011 = 7.0f;
COMPILER_STRIP_GATE(0x80779EA8, &lit_5011);
#pragma pop

/* 80779EAC-80779EB0 0000B0 0004+00 0/4 0/0 0/0 .rodata          @5012 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5012 = 15.0f;
COMPILER_STRIP_GATE(0x80779EAC, &lit_5012);
#pragma pop

/* 80779EB0-80779EB4 0000B4 0004+00 0/2 0/0 0/0 .rodata          @5013 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5013 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80779EB0, &lit_5013);
#pragma pop

/* 80779EB4-80779EB8 0000B8 0004+00 0/2 0/0 0/0 .rodata          @5014 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5014 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80779EB4, &lit_5014);
#pragma pop

/* 80779EB8-80779EBC 0000BC 0004+00 0/9 0/0 0/0 .rodata          @5015 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5015 = 20.0f;
COMPILER_STRIP_GATE(0x80779EB8, &lit_5015);
#pragma pop

/* 80779EBC-80779EC0 0000C0 0004+00 0/2 0/0 0/0 .rodata          @5138 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5138 = 6.0f;
COMPILER_STRIP_GATE(0x80779EBC, &lit_5138);
#pragma pop

/* 80779EC0-80779EC4 0000C4 0004+00 0/1 0/0 0/0 .rodata          @5139 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5139 = 44.0f;
COMPILER_STRIP_GATE(0x80779EC0, &lit_5139);
#pragma pop

/* 8076E06C-8076E418 00238C 03AC+00 1/1 0/0 0/0 .text            e_rdy_fight__FP11e_rdy_class */
static void e_rdy_fight(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 8076E418-8076E81C 002738 0404+00 2/1 0/0 0/0 .text            e_rdy_bow_run__FP11e_rdy_class */
static void e_rdy_bow_run(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779EC4-80779EC8 0000C8 0004+00 0/3 0/0 0/0 .rodata          @5297 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5297 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80779EC4, &lit_5297);
#pragma pop

/* 80779EC8-80779ECC 0000CC 0004+00 0/5 0/0 0/0 .rodata          @5298 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5298 = 4.0f;
COMPILER_STRIP_GATE(0x80779EC8, &lit_5298);
#pragma pop

/* 80779ECC-80779ED0 0000D0 0004+00 0/2 0/0 0/0 .rodata          @5299 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5299 = -100.0f;
COMPILER_STRIP_GATE(0x80779ECC, &lit_5299);
#pragma pop

/* 8076E81C-8076EB4C 002B3C 0330+00 1/1 0/0 0/0 .text            e_rdy_bow__FP11e_rdy_class */
static void e_rdy_bow(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 8076EB4C-8076EBB8 002E6C 006C+00 1/1 0/0 0/0 .text            s_command3_sub__FPvPv */
static void s_command3_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779ED0-80779ED4 0000D4 0004+00 0/3 0/0 0/0 .rodata          @5429 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5429 = 60.0f;
COMPILER_STRIP_GATE(0x80779ED0, &lit_5429);
#pragma pop

/* 80779ED4-80779ED8 0000D8 0004+00 0/8 0/0 0/0 .rodata          @5430 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5430 = 40.0f;
COMPILER_STRIP_GATE(0x80779ED4, &lit_5430);
#pragma pop

/* 80779ED8-80779EDC 0000DC 0004+00 0/3 0/0 0/0 .rodata          @5431 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5431 = -200.0f;
COMPILER_STRIP_GATE(0x80779ED8, &lit_5431);
#pragma pop

/* 8076EBB8-8076F0E0 002ED8 0528+00 1/1 0/0 0/0 .text            e_rdy_bow2__FP11e_rdy_class */
static void e_rdy_bow2(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779EDC-80779EE0 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5508 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5508 = -92938.0f;
COMPILER_STRIP_GATE(0x80779EDC, &lit_5508);
#pragma pop

/* 80779EE0-80779EE4 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5509 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5509 = 49992.0f;
COMPILER_STRIP_GATE(0x80779EE0, &lit_5509);
#pragma pop

/* 8076F0E0-8076F438 003400 0358+00 2/1 0/0 0/0 .text            e_rdy_bow_ikki2__FP11e_rdy_class */
static void e_rdy_bow_ikki2(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779EE4-80779EE8 0000E8 0004+00 0/0 0/0 0/0 .rodata          @5510 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5510 = 35000.0f;
COMPILER_STRIP_GATE(0x80779EE4, &lit_5510);
#pragma pop

/* 80779EE8-80779EEC 0000EC 0004+00 0/0 0/0 0/0 .rodata          @5511 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5511 = -93658.0f;
COMPILER_STRIP_GATE(0x80779EE8, &lit_5511);
#pragma pop

/* 80779EEC-80779EF0 0000F0 0004+00 0/0 0/0 0/0 .rodata          @5512 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5512 = 49894.0f;
COMPILER_STRIP_GATE(0x80779EEC, &lit_5512);
#pragma pop

/* 80779EF0-80779EF4 0000F4 0004+00 0/0 0/0 0/0 .rodata          @5513 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5513 = -93666.0f;
COMPILER_STRIP_GATE(0x80779EF0, &lit_5513);
#pragma pop

/* 80779EF4-80779EF8 0000F8 0004+00 0/0 0/0 0/0 .rodata          @5514 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5514 = -1000.0f;
COMPILER_STRIP_GATE(0x80779EF4, &lit_5514);
#pragma pop

/* 80779EF8-80779EFC 0000FC 0004+00 0/0 0/0 0/0 .rodata          @5515 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5515 = 5400.0f;
COMPILER_STRIP_GATE(0x80779EF8, &lit_5515);
#pragma pop

/* 80779EFC-80779F00 000100 0004+00 0/2 0/0 0/0 .rodata          @5553 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5553 = -30.0f;
COMPILER_STRIP_GATE(0x80779EFC, &lit_5553);
#pragma pop

/* 8076F438-8076F59C 003758 0164+00 1/1 0/0 0/0 .text            e_rdy_avoid__FP11e_rdy_class */
static void e_rdy_avoid(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 8076F59C-8076F71C 0038BC 0180+00 1/1 0/0 0/0 .text            s_kusa_sub__FPvPv */
static void s_kusa_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8076F71C-807701F4 003A3C 0AD8+00 2/1 0/0 0/0 .text            e_rdy_tkusa__FP11e_rdy_class */
static void e_rdy_tkusa(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 807701F4-8077089C 004514 06A8+00 1/1 0/0 0/0 .text            e_rdy_yc_ride__FP11e_rdy_class */
static void e_rdy_yc_ride(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 8077089C-80770CF8 004BBC 045C+00 2/1 0/0 0/0 .text            e_rdy_bomb_action__FP11e_rdy_class
 */
static void e_rdy_bomb_action(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80770CF8-80770E48 005018 0150+00 1/1 0/0 0/0 .text            e_rdy_s_damage__FP11e_rdy_class */
static void e_rdy_s_damage(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F00-80779F04 000104 0004+00 0/0 0/0 0/0 .rodata          @5893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5893 = 160.0f;
COMPILER_STRIP_GATE(0x80779F00, &lit_5893);
#pragma pop

/* 80779F04-80779F08 000108 0004+00 0/0 0/0 0/0 .rodata          @5894 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5894 = 1100.0f;
COMPILER_STRIP_GATE(0x80779F04, &lit_5894);
#pragma pop

/* 80779F08-80779F0C 00010C 0004+00 0/0 0/0 0/0 .rodata          @5895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5895 = 1050.0f;
COMPILER_STRIP_GATE(0x80779F08, &lit_5895);
#pragma pop

/* 80779F0C-80779F10 000110 0004+00 0/0 0/0 0/0 .rodata          @5896 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5896 = -1100.0f;
COMPILER_STRIP_GATE(0x80779F0C, &lit_5896);
#pragma pop

/* 80779F10-80779F14 000114 0004+00 0/0 0/0 0/0 .rodata          @5897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5897 = -27.0f;
COMPILER_STRIP_GATE(0x80779F10, &lit_5897);
#pragma pop

/* 80779F14-80779F18 000118 0004+00 0/0 0/0 0/0 .rodata          @6168 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6168 = 600.0f;
COMPILER_STRIP_GATE(0x80779F14, &lit_6168);
#pragma pop

/* 80779F18-80779F1C 00011C 0004+00 0/2 0/0 0/0 .rodata          @6243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6243 = 70.0f;
COMPILER_STRIP_GATE(0x80779F18, &lit_6243);
#pragma pop

/* 80779F1C-80779F20 000120 0004+00 0/1 0/0 0/0 .rodata          @6244 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6244 = -150.0f;
COMPILER_STRIP_GATE(0x80779F1C, &lit_6244);
#pragma pop

/* 80770E48-80770FFC 005168 01B4+00 1/1 0/0 0/0 .text            kado_check__FP11e_rdy_class */
static void kado_check(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80770FFC-807710DC 00531C 00E0+00 3/3 0/0 0/0 .text            rd_disappear__FP11e_rdy_class */
static void rd_disappear(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 807710DC-80771230 0053FC 0154+00 1/1 0/0 0/0 .text            body_gake__FP11e_rdy_class */
static void body_gake(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80771230-807712A8 005550 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F20-80779F24 000124 0004+00 0/2 0/0 0/0 .rodata          @6634 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6634 = 8000.0f;
COMPILER_STRIP_GATE(0x80779F20, &lit_6634);
#pragma pop

/* 807712A8-80771DA4 0055C8 0AFC+00 2/1 0/0 0/0 .text            e_rdy_damage__FP11e_rdy_class */
static void e_rdy_damage(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80771DA4-80771F50 0060C4 01AC+00 1/1 0/0 0/0 .text            gake_check__FP11e_rdy_classf */
static void gake_check(e_rdy_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F24-80779F28 000128 0004+00 0/1 0/0 0/0 .rodata          @6635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6635 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80779F24, &lit_6635);
#pragma pop

/* 80779F28-80779F2C 00012C 0004+00 0/1 0/0 0/0 .rodata          @6636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6636 = -20.0f;
COMPILER_STRIP_GATE(0x80779F28, &lit_6636);
#pragma pop

/* 80779F2C-80779F30 000130 0004+00 0/2 0/0 0/0 .rodata          @6637 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6637 = 35.0f;
COMPILER_STRIP_GATE(0x80779F2C, &lit_6637);
#pragma pop

/* 80779F30-80779F34 000134 0004+00 0/1 0/0 0/0 .rodata          @6727 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6727 = 350.0f;
COMPILER_STRIP_GATE(0x80779F30, &lit_6727);
#pragma pop

/* 80779F34-80779F38 000138 0004+00 0/2 0/0 0/0 .rodata          @6728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6728 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x80779F34, &lit_6728);
#pragma pop

/* 80771F50-80772128 006270 01D8+00 1/1 0/0 0/0 .text            s_bikkuri_sub__FPvPv */
static void s_bikkuri_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80772128-807724A0 006448 0378+00 1/1 0/0 0/0 .text            e_rdy_drop__FP11e_rdy_class */
static void e_rdy_drop(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 807724A0-80772580 0067C0 00E0+00 1/1 0/0 0/0 .text            e_rdy_a_damage__FP11e_rdy_class */
static void e_rdy_a_damage(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80772580-807726F0 0068A0 0170+00 1/1 0/0 0/0 .text            e_rdy_stand__FP11e_rdy_class */
static void e_rdy_stand(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F38-80779F3C 00013C 0004+00 0/1 0/0 0/0 .rodata          @6940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6940 = 80.0f;
COMPILER_STRIP_GATE(0x80779F38, &lit_6940);
#pragma pop

/* 807726F0-80772B0C 006A10 041C+00 2/1 0/0 0/0 .text            e_rdy_bow3__FP11e_rdy_class */
static void e_rdy_bow3(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80772B0C-80772B98 006E2C 008C+00 1/1 0/0 0/0 .text            s_command2_sub__FPvPv */
static void s_command2_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80772B98-80772C04 006EB8 006C+00 1/1 0/0 0/0 .text            s_command4_sub__FPvPv */
static void s_command4_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80772C04-80773070 006F24 046C+00 2/1 0/0 0/0 .text            e_rdy_commander__FP11e_rdy_class */
static void e_rdy_commander(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80773070-80773474 007390 0404+00 1/1 0/0 0/0 .text            e_rdy_excite__FP11e_rdy_class */
static void e_rdy_excite(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F3C-80779F40 000140 0004+00 0/1 0/0 0/0 .rodata          @7142 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7142 = 1.5f;
COMPILER_STRIP_GATE(0x80779F3C, &lit_7142);
#pragma pop

/* 80773474-807735A8 007794 0134+00 1/1 0/0 0/0 .text            e_rdy_water__FP11e_rdy_class */
static void e_rdy_water(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 807735A8-80773A8C 0078C8 04E4+00 1/1 0/0 0/0 .text            e_rdy_jyunkai__FP11e_rdy_class */
static void e_rdy_jyunkai(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80773A8C-80773B24 007DAC 0098+00 1/1 0/0 0/0 .text            wolfkick_damage__FP11e_rdy_class */
static void wolfkick_damage(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F40-80779F44 000144 0004+00 0/1 0/0 0/0 .rodata          @7294 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7294 = 3000.0f;
COMPILER_STRIP_GATE(0x80779F40, &lit_7294);
#pragma pop

/* 80773B24-80773D2C 007E44 0208+00 1/1 0/0 0/0 .text            big_damage__FP11e_rdy_class */
static void big_damage(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80773D2C-80773E5C 00804C 0130+00 1/1 0/0 0/0 .text            small_damage__FP11e_rdy_classi */
static void small_damage(e_rdy_class* param_0, int param_1) {
    // NONMATCHING
}

/* 80773E5C-8077424C 00817C 03F0+00 1/1 0/0 0/0 .text            damage_check__FP11e_rdy_class */
static void damage_check(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 8077424C-8077582C 00856C 15E0+00 2/1 0/0 0/0 .text            action__FP11e_rdy_class */
static void action(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F44-80779F48 000148 0004+00 0/0 0/0 0/0 .rodata          @7912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7912 = -5.0f;
COMPILER_STRIP_GATE(0x80779F44, &lit_7912);
#pragma pop

/* 80779F48-80779F4C 00014C 0004+00 0/1 0/0 0/0 .rodata          @7913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7913 = -60.0f;
COMPILER_STRIP_GATE(0x80779F48, &lit_7913);
#pragma pop

/* 80779F4C-80779F50 000150 0004+00 0/0 0/0 0/0 .rodata          @7914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7914 = 4.5f;
COMPILER_STRIP_GATE(0x80779F4C, &lit_7914);
#pragma pop

/* 80779F50-80779F54 000154 0004+00 0/0 0/0 0/0 .rodata          @7915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7915 = 110.0f;
COMPILER_STRIP_GATE(0x80779F50, &lit_7915);
#pragma pop

/* 80779F54-80779F58 000158 0004+00 0/0 0/0 0/0 .rodata          @7916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7916 = 12000.0f;
COMPILER_STRIP_GATE(0x80779F54, &lit_7916);
#pragma pop

/* 80779F58-80779F5C 00015C 0004+00 0/1 0/0 0/0 .rodata          @7917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7917 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80779F58, &lit_7917);
#pragma pop

/* 80779F5C-80779F60 000160 0004+00 0/1 0/0 0/0 .rodata          @7976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7976 = 90.0f;
COMPILER_STRIP_GATE(0x80779F5C, &lit_7976);
#pragma pop

/* 8077582C-80775A20 009B4C 01F4+00 1/1 0/0 0/0 .text            fire_eff_set__FP11e_rdy_class */
static void fire_eff_set(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 80775A20-80775B04 009D40 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP11e_rdy_classf */
static void cam_3d_morf(e_rdy_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* 80775B04-80775B50 009E24 004C+00 1/1 0/0 0/0 .text            s_adel_sub__FPvPv */
static void s_adel_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F60-80779F64 000164 0004+00 0/1 0/0 0/0 .rodata          @8521 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8521 = 55.0f;
COMPILER_STRIP_GATE(0x80779F60, &lit_8521);
#pragma pop

/* 80775B50-80777330 009E70 17E0+00 2/1 0/0 0/0 .text            demo_camera__FP11e_rdy_class */
static void demo_camera(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80779F64-80779F68 000168 0004+00 0/0 0/0 0/0 .rodata          @8522 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8522 = -300.0f;
COMPILER_STRIP_GATE(0x80779F64, &lit_8522);
#pragma pop

/* 80779F68-80779F6C 00016C 0004+00 0/0 0/0 0/0 .rodata          @8523 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8523 = -102687.0f;
COMPILER_STRIP_GATE(0x80779F68, &lit_8523);
#pragma pop

/* 80779F6C-80779F70 000170 0004+00 0/0 0/0 0/0 .rodata          @8524 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8524 = -23441.5f;
COMPILER_STRIP_GATE(0x80779F6C, &lit_8524);
#pragma pop

/* 80779F70-80779F74 000174 0004+00 0/0 0/0 0/0 .rodata          @8525 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8525 = 38942.0f;
COMPILER_STRIP_GATE(0x80779F70, &lit_8525);
#pragma pop

/* 80779F74-80779F78 000178 0004+00 0/0 0/0 0/0 .rodata          @8526 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8526 = -102677.0f;
COMPILER_STRIP_GATE(0x80779F74, &lit_8526);
#pragma pop

/* 80779F78-80779F7C 00017C 0004+00 0/0 0/0 0/0 .rodata          @8527 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8527 = -23375.0f;
COMPILER_STRIP_GATE(0x80779F78, &lit_8527);
#pragma pop

/* 80779F7C-80779F80 000180 0004+00 0/0 0/0 0/0 .rodata          @8528 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8528 = 38866.0f;
COMPILER_STRIP_GATE(0x80779F7C, &lit_8528);
#pragma pop

/* 80779F80-80779F84 000184 0004+00 0/0 0/0 0/0 .rodata          @8529 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8529 = -102392.0f;
COMPILER_STRIP_GATE(0x80779F80, &lit_8529);
#pragma pop

/* 80779F84-80779F88 000188 0004+00 0/0 0/0 0/0 .rodata          @8530 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8530 = -23393.0f;
COMPILER_STRIP_GATE(0x80779F84, &lit_8530);
#pragma pop

/* 80779F88-80779F8C 00018C 0004+00 0/0 0/0 0/0 .rodata          @8531 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8531 = 39031.0f;
COMPILER_STRIP_GATE(0x80779F88, &lit_8531);
#pragma pop

/* 80779F8C-80779F90 000190 0004+00 0/0 0/0 0/0 .rodata          @8532 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8532 = -102520.0f;
COMPILER_STRIP_GATE(0x80779F8C, &lit_8532);
#pragma pop

/* 80779F90-80779F94 000194 0004+00 0/0 0/0 0/0 .rodata          @8533 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8533 = -23416.0f;
COMPILER_STRIP_GATE(0x80779F90, &lit_8533);
#pragma pop

/* 80779F94-80779F98 000198 0004+00 0/0 0/0 0/0 .rodata          @8534 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8534 = 38021.0f;
COMPILER_STRIP_GATE(0x80779F94, &lit_8534);
#pragma pop

/* 80779F98-80779F9C 00019C 0004+00 0/1 0/0 0/0 .rodata          @8535 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8535 = -50.0f;
COMPILER_STRIP_GATE(0x80779F98, &lit_8535);
#pragma pop

/* 80779F9C-80779FA0 0001A0 0004+00 0/0 0/0 0/0 .rodata          @8536 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8536 = 420.0f;
COMPILER_STRIP_GATE(0x80779F9C, &lit_8536);
#pragma pop

/* 80779FA0-80779FA4 0001A4 0004+00 0/0 0/0 0/0 .rodata          @8537 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8537 = 170.0f;
COMPILER_STRIP_GATE(0x80779FA0, &lit_8537);
#pragma pop

/* 80779FA4-80779FA8 0001A8 0004+00 0/0 0/0 0/0 .rodata          @8538 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8538 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x80779FA4, &lit_8538);
#pragma pop

/* 80779FA8-80779FAC 0001AC 0004+00 0/0 0/0 0/0 .rodata          @8539 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8539 = 210.0f;
COMPILER_STRIP_GATE(0x80779FA8, &lit_8539);
#pragma pop

/* 80779FAC-80779FB0 0001B0 0004+00 0/0 0/0 0/0 .rodata          @8540 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8540 = 400.0f;
COMPILER_STRIP_GATE(0x80779FAC, &lit_8540);
#pragma pop

/* 80779FB0-80779FB4 0001B4 0004+00 0/0 0/0 0/0 .rodata          @8541 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8541 = -350.0f;
COMPILER_STRIP_GATE(0x80779FB0, &lit_8541);
#pragma pop

/* 80779FB4-80779FB8 0001B8 0004+00 0/1 0/0 0/0 .rodata          @8542 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8542 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x80779FB4, &lit_8542);
#pragma pop

/* 80779FB8-80779FBC 0001BC 0004+00 0/0 0/0 0/0 .rodata          @8543 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8543 = -93806.0f;
COMPILER_STRIP_GATE(0x80779FB8, &lit_8543);
#pragma pop

/* 80779FBC-80779FC0 0001C0 0004+00 0/0 0/0 0/0 .rodata          @8544 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8544 = -5894.0f;
COMPILER_STRIP_GATE(0x80779FBC, &lit_8544);
#pragma pop

/* 80779FC0-80779FC4 0001C4 0004+00 0/0 0/0 0/0 .rodata          @8545 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8545 = 42791.0f;
COMPILER_STRIP_GATE(0x80779FC0, &lit_8545);
#pragma pop

/* 80779FC4-80779FC8 0001C8 0004+00 0/0 0/0 0/0 .rodata          @8546 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8546 = -93532.0f;
COMPILER_STRIP_GATE(0x80779FC4, &lit_8546);
#pragma pop

/* 80779FC8-80779FCC 0001CC 0004+00 0/0 0/0 0/0 .rodata          @8547 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8547 = -5824.0f;
COMPILER_STRIP_GATE(0x80779FC8, &lit_8547);
#pragma pop

/* 80779FCC-80779FD0 0001D0 0004+00 0/0 0/0 0/0 .rodata          @8548 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8548 = 43075.0f;
COMPILER_STRIP_GATE(0x80779FCC, &lit_8548);
#pragma pop

/* 80779FD0-80779FD4 0001D4 0004+00 0/0 0/0 0/0 .rodata          @8549 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8549 = -93705.0f;
COMPILER_STRIP_GATE(0x80779FD0, &lit_8549);
#pragma pop

/* 80779FD4-80779FD8 0001D8 0004+00 0/0 0/0 0/0 .rodata          @8550 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8550 = -5951.0f;
COMPILER_STRIP_GATE(0x80779FD4, &lit_8550);
#pragma pop

/* 80779FD8-80779FDC 0001DC 0004+00 0/0 0/0 0/0 .rodata          @8551 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8551 = 42867.0f;
COMPILER_STRIP_GATE(0x80779FD8, &lit_8551);
#pragma pop

/* 80779FDC-80779FE0 0001E0 0004+00 0/0 0/0 0/0 .rodata          @8552 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8552 = -93860.0f;
COMPILER_STRIP_GATE(0x80779FDC, &lit_8552);
#pragma pop

/* 80779FE0-80779FE4 0001E4 0004+00 0/0 0/0 0/0 .rodata          @8553 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8553 = -5786.0f;
COMPILER_STRIP_GATE(0x80779FE0, &lit_8553);
#pragma pop

/* 80779FE4-80779FE8 0001E8 0004+00 0/0 0/0 0/0 .rodata          @8554 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8554 = 42701.0f;
COMPILER_STRIP_GATE(0x80779FE4, &lit_8554);
#pragma pop

/* 80779FE8-80779FEC 0001EC 0004+00 0/0 0/0 0/0 .rodata          @8555 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8555 = -93644.0f;
COMPILER_STRIP_GATE(0x80779FE8, &lit_8555);
#pragma pop

/* 80779FEC-80779FF0 0001F0 0004+00 0/0 0/0 0/0 .rodata          @8556 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8556 = -5908.0f;
COMPILER_STRIP_GATE(0x80779FEC, &lit_8556);
#pragma pop

/* 80779FF0-80779FF4 0001F4 0004+00 0/0 0/0 0/0 .rodata          @8557 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8557 = 43016.0f;
COMPILER_STRIP_GATE(0x80779FF0, &lit_8557);
#pragma pop

/* 80779FF4-80779FF8 0001F8 0004+00 0/0 0/0 0/0 .rodata          @8558 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8558 = -93614.0f;
COMPILER_STRIP_GATE(0x80779FF4, &lit_8558);
#pragma pop

/* 80779FF8-80779FFC 0001FC 0004+00 0/0 0/0 0/0 .rodata          @8559 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8559 = -5879.0f;
COMPILER_STRIP_GATE(0x80779FF8, &lit_8559);
#pragma pop

/* 80779FFC-8077A000 000200 0004+00 0/0 0/0 0/0 .rodata          @8560 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8560 = 43003.0f;
COMPILER_STRIP_GATE(0x80779FFC, &lit_8560);
#pragma pop

/* 8077A000-8077A004 000204 0004+00 0/0 0/0 0/0 .rodata          @8561 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8561 = -93593.0f;
COMPILER_STRIP_GATE(0x8077A000, &lit_8561);
#pragma pop

/* 8077A004-8077A008 000208 0004+00 0/0 0/0 0/0 .rodata          @8562 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8562 = -5871.0f;
COMPILER_STRIP_GATE(0x8077A004, &lit_8562);
#pragma pop

/* 8077A008-8077A00C 00020C 0004+00 0/0 0/0 0/0 .rodata          @8563 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8563 = 42603.0f;
COMPILER_STRIP_GATE(0x8077A008, &lit_8563);
#pragma pop

/* 8077A00C-8077A010 000210 0004+00 0/0 0/0 0/0 .rodata          @8564 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8564 = -93660.0f;
COMPILER_STRIP_GATE(0x8077A00C, &lit_8564);
#pragma pop

/* 8077A010-8077A014 000214 0004+00 0/0 0/0 0/0 .rodata          @8565 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8565 = -5873.0f;
COMPILER_STRIP_GATE(0x8077A010, &lit_8565);
#pragma pop

/* 8077A014-8077A018 000218 0004+00 0/0 0/0 0/0 .rodata          @8566 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8566 = 49831.0f;
COMPILER_STRIP_GATE(0x8077A014, &lit_8566);
#pragma pop

/* 8077A018-8077A01C 00021C 0004+00 0/0 0/0 0/0 .rodata          @8567 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8567 = -93551.0f;
COMPILER_STRIP_GATE(0x8077A018, &lit_8567);
#pragma pop

/* 8077A01C-8077A020 000220 0004+00 0/0 0/0 0/0 .rodata          @8568 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8568 = -5926.0f;
COMPILER_STRIP_GATE(0x8077A01C, &lit_8568);
#pragma pop

/* 8077A020-8077A024 000224 0004+00 0/0 0/0 0/0 .rodata          @8569 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8569 = 49449.0f;
COMPILER_STRIP_GATE(0x8077A020, &lit_8569);
#pragma pop

/* 8077A024-8077A028 000228 0004+00 0/0 0/0 0/0 .rodata          @8570 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8570 = -92666.0f;
COMPILER_STRIP_GATE(0x8077A024, &lit_8570);
#pragma pop

/* 8077A028-8077A02C 00022C 0004+00 0/0 0/0 0/0 .rodata          @8571 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8571 = -5540.0f;
COMPILER_STRIP_GATE(0x8077A028, &lit_8571);
#pragma pop

/* 8077A02C-8077A030 000230 0004+00 0/0 0/0 0/0 .rodata          @8572 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8572 = 43878.0f;
COMPILER_STRIP_GATE(0x8077A02C, &lit_8572);
#pragma pop

/* 8077A030-8077A034 000234 0004+00 0/0 0/0 0/0 .rodata          @8573 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8573 = 39000.0f;
COMPILER_STRIP_GATE(0x8077A030, &lit_8573);
#pragma pop

/* 8077A034-8077A038 000238 0004+00 0/0 0/0 0/0 .rodata          @8574 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8574 = -93539.0f;
COMPILER_STRIP_GATE(0x8077A034, &lit_8574);
#pragma pop

/* 8077A038-8077A03C 00023C 0004+00 0/0 0/0 0/0 .rodata          @8575 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8575 = -5857.0f;
COMPILER_STRIP_GATE(0x8077A038, &lit_8575);
#pragma pop

/* 8077A03C-8077A040 000240 0004+00 0/0 0/0 0/0 .rodata          @8576 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8576 = 30480.0f;
COMPILER_STRIP_GATE(0x8077A03C, &lit_8576);
#pragma pop

/* 8077A040-8077A044 000244 0004+00 0/0 0/0 0/0 .rodata          @8577 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8577 = -4469.0f;
COMPILER_STRIP_GATE(0x8077A040, &lit_8577);
#pragma pop

/* 8077A044-8077A048 000248 0004+00 0/0 0/0 0/0 .rodata          @8578 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8578 = -92006.0f;
COMPILER_STRIP_GATE(0x8077A044, &lit_8578);
#pragma pop

/* 8077A048-8077A04C 00024C 0004+00 0/1 0/0 0/0 .rodata          @8579 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8579 = 30000.0f;
COMPILER_STRIP_GATE(0x8077A048, &lit_8579);
#pragma pop

/* 8077A04C-8077A050 000250 0004+00 0/0 0/0 0/0 .rodata          @8580 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8580 = -92787.0f;
COMPILER_STRIP_GATE(0x8077A04C, &lit_8580);
#pragma pop

/* 8077A050-8077A054 000254 0004+00 0/0 0/0 0/0 .rodata          @8581 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8581 = -5256.0f;
COMPILER_STRIP_GATE(0x8077A050, &lit_8581);
#pragma pop

/* 8077A054-8077A058 000258 0004+00 0/0 0/0 0/0 .rodata          @8582 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8582 = 46550.0f;
COMPILER_STRIP_GATE(0x8077A054, &lit_8582);
#pragma pop

/* 8077A058-8077A05C 00025C 0004+00 0/0 0/0 0/0 .rodata          @8583 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8583 = -92609.0f;
COMPILER_STRIP_GATE(0x8077A058, &lit_8583);
#pragma pop

/* 8077A05C-8077A060 000260 0004+00 0/0 0/0 0/0 .rodata          @8584 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8584 = -5139.0f;
COMPILER_STRIP_GATE(0x8077A05C, &lit_8584);
#pragma pop

/* 8077A060-8077A064 000264 0004+00 0/0 0/0 0/0 .rodata          @8585 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8585 = 46210.0f;
COMPILER_STRIP_GATE(0x8077A060, &lit_8585);
#pragma pop

/* 8077A064-8077A068 000268 0004+00 0/0 0/0 0/0 .rodata          @8586 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8586 = -103242.0f;
COMPILER_STRIP_GATE(0x8077A064, &lit_8586);
#pragma pop

/* 8077A068-8077A06C 00026C 0004+00 0/0 0/0 0/0 .rodata          @8587 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8587 = -22894.0f;
COMPILER_STRIP_GATE(0x8077A068, &lit_8587);
#pragma pop

/* 8077A06C-8077A070 000270 0004+00 0/0 0/0 0/0 .rodata          @8588 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8588 = 38097.0f;
COMPILER_STRIP_GATE(0x8077A06C, &lit_8588);
#pragma pop

/* 8077A070-8077A074 000274 0004+00 0/0 0/0 0/0 .rodata          @8589 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8589 = -93652.0f;
COMPILER_STRIP_GATE(0x8077A070, &lit_8589);
#pragma pop

/* 8077A074-8077A078 000278 0004+00 0/0 0/0 0/0 .rodata          @8590 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8590 = -5875.0f;
COMPILER_STRIP_GATE(0x8077A074, &lit_8590);
#pragma pop

/* 8077A078-8077A07C 00027C 0004+00 0/0 0/0 0/0 .rodata          @8591 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8591 = 46674.0f;
COMPILER_STRIP_GATE(0x8077A078, &lit_8591);
#pragma pop

/* 8077A07C-8077A080 000280 0004+00 0/0 0/0 0/0 .rodata          @8592 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8592 = -93659.0f;
COMPILER_STRIP_GATE(0x8077A07C, &lit_8592);
#pragma pop

/* 8077A080-8077A084 000284 0004+00 0/0 0/0 0/0 .rodata          @8593 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8593 = 32500.0f;
COMPILER_STRIP_GATE(0x8077A080, &lit_8593);
#pragma pop

/* 8077A084-8077A088 000288 0004+00 0/0 0/0 0/0 .rodata          @8594 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8594 = -250.0f;
COMPILER_STRIP_GATE(0x8077A084, &lit_8594);
#pragma pop

/* 8077A088-8077A08C 00028C 0004+00 0/0 0/0 0/0 .rodata          @8595 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8595 = 120.0f;
COMPILER_STRIP_GATE(0x8077A088, &lit_8595);
#pragma pop

/* 8077A08C-8077A090 000290 0004+00 0/1 0/0 0/0 .rodata          @9184 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9184 = -1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8077A08C, &lit_9184);
#pragma pop

/* 8077A090-8077A094 000294 0004+00 0/1 0/0 0/0 .rodata          @9185 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9185 = 38.0f;
COMPILER_STRIP_GATE(0x8077A090, &lit_9185);
#pragma pop

/* 8077A094-8077A098 000298 0004+00 0/1 0/0 0/0 .rodata          @9186 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9186 = 0x3A83126F;
COMPILER_STRIP_GATE(0x8077A094, &lit_9186);
#pragma pop

/* 8077A098-8077A09C 00029C 0004+00 0/1 0/0 0/0 .rodata          @9187 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9187 = -6.0f;
COMPILER_STRIP_GATE(0x8077A098, &lit_9187);
#pragma pop

/* 8077A09C-8077A0A0 0002A0 0004+00 0/1 0/0 0/0 .rodata          @9188 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9188 = -20000.0f;
COMPILER_STRIP_GATE(0x8077A09C, &lit_9188);
#pragma pop

/* 8077A0A0-8077A0A4 0002A4 0004+00 0/1 0/0 0/0 .rodata          @9189 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9189 = 200000.0f;
COMPILER_STRIP_GATE(0x8077A0A0, &lit_9189);
#pragma pop

/* 8077A0A4-8077A0A8 0002A8 0004+00 0/1 0/0 0/0 .rodata          @9190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9190 = -10.0f;
COMPILER_STRIP_GATE(0x8077A0A4, &lit_9190);
#pragma pop

/* 8077A0A8-8077A0AC 0002AC 0004+00 0/1 0/0 0/0 .rodata          @9191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9191 = -200000.0f;
COMPILER_STRIP_GATE(0x8077A0A8, &lit_9191);
#pragma pop

/* 8077A0AC-8077A0B0 0002B0 0004+00 0/1 0/0 0/0 .rodata          @9192 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9192 = -500.0f;
COMPILER_STRIP_GATE(0x8077A0AC, &lit_9192);
#pragma pop

/* 8077A0B0-8077A0B4 0002B4 0004+00 0/1 0/0 0/0 .rodata          @9193 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9193 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x8077A0B0, &lit_9193);
#pragma pop

/* 8077A0BC-8077A0BC 0002C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8077A0BC = "F_SP121";
#pragma pop

/* 8077AA1C-8077AA24 0001F4 0004+04 0/2 0/0 0/0 .bss             c_start */
#pragma push
#pragma force_active on
static u8 c_start[4 + 4 /* padding */];
#pragma pop

/* 80777330-8077892C 00B650 15FC+00 2/1 0/0 0/0 .text            daE_RDY_Execute__FP11e_rdy_class */
static void daE_RDY_Execute(e_rdy_class* param_0) {
    // NONMATCHING
}

/* 8077892C-80778934 00CC4C 0008+00 1/0 0/0 0/0 .text            daE_RDY_IsDelete__FP11e_rdy_class
 */
static bool daE_RDY_IsDelete(e_rdy_class* param_0) {
    return true;
}

/* 80778934-80778998 00CC54 0064+00 1/0 0/0 0/0 .text            daE_RDY_Delete__FP11e_rdy_class */
static void daE_RDY_Delete(e_rdy_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8077A0BC-8077A0BC 0002C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8077A0C4 = "J_Tobi";
#pragma pop

/* 80778998-80778D90 00CCB8 03F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8077A0B4-8077A0B8 0002B8 0004+00 0/1 0/0 0/0 .rodata          @9541 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9541 = 5000.0f;
COMPILER_STRIP_GATE(0x8077A0B4, &lit_9541);
#pragma pop

/* 8077A0B8-8077A0BC 0002BC 0004+00 0/1 0/0 0/0 .rodata          @9542 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9542 = 100000.0f;
COMPILER_STRIP_GATE(0x8077A0B8, &lit_9542);
#pragma pop

/* 8077A0BC-8077A0BC 0002C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8077A0CB = "E_rdy";
SECTION_DEAD static char const* const stringBase_8077A0D1 = "F_SP115";
#pragma pop

/* 80778D90-80779340 00D0B0 05B0+00 1/0 0/0 0/0 .text            daE_RDY_Create__FP10fopAc_ac_c */
static void daE_RDY_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80779340-807794E0 00D660 01A0+00 1/1 0/0 0/0 .text            __ct__11e_rdy_classFv */
e_rdy_class::e_rdy_class() {
    // NONMATCHING
}

/* 807794E0-80779528 00D800 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80779528-80779570 00D848 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80779570-8077963C 00D890 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 8077963C-807796C0 00D95C 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 807796C0-8077971C 00D9E0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8077971C-8077978C 00DA3C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8077978C-807797FC 00DAAC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 807797FC-80779800 00DB1C 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80779800-80779838 00DB20 0038+00 1/1 0/0 0/0 .text            __ct__11J3DLightObjFv */
// J3DLightObj::J3DLightObj() {
extern "C" void __ct__11J3DLightObjFv() {
    // NONMATCHING
}

/* 80779838-80779880 00DB58 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80779880-807798C8 00DBA0 0048+00 2/1 0/0 0/0 .text            __dt__13daE_RDY_HIO_cFv */
daE_RDY_HIO_c::~daE_RDY_HIO_c() {
    // NONMATCHING
}

/* 807798C8-80779920 00DBE8 0058+00 0/0 1/0 0/0 .text            __sinit_d_a_e_rdy_cpp */
void __sinit_d_a_e_rdy_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807798C8, __sinit_d_a_e_rdy_cpp);
#pragma pop

/* 80779920-80779928 00DC40 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_80779920() {
    // NONMATCHING
}

/* 80779928-80779930 00DC48 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_80779928() {
    // NONMATCHING
}

/* 80779930-80779938 00DC50 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_80779930() {
    // NONMATCHING
}

/* 80779938-80779940 00DC58 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80779938() {
    // NONMATCHING
}

/* 80779940-80779948 00DC60 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80779940() {
    // NONMATCHING
}

/* 80779948-80779D5C 00DC68 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
static void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    // NONMATCHING
}

/* 80779D5C-80779D98 00E07C 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80779D98-80779DD4 00E0B8 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80779DD4-80779DE8 00E0F4 0014+00 1/1 0/0 0/0 .text            changeDemoMode__9daPy_py_cFUliis */
// void daPy_py_c::changeDemoMode(u32 param_0, int param_1, int param_2, s16 param_3) {
extern "C" void changeDemoMode__9daPy_py_cFUliis() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8077AA24-8077AA28 0001FC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8077AA24[4];
#pragma pop

/* 8077AA28-8077AA2C 000200 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8077AA28[4];
#pragma pop

/* 8077AA2C-8077AA30 000204 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8077AA2C[4];
#pragma pop

/* 8077AA30-8077AA34 000208 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8077AA30[4];
#pragma pop

/* 8077AA34-8077AA38 00020C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8077AA34[4];
#pragma pop

/* 8077AA38-8077AA3C 000210 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8077AA38[4];
#pragma pop

/* 8077AA3C-8077AA40 000214 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8077AA3C[4];
#pragma pop

/* 8077AA40-8077AA44 000218 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8077AA40[4];
#pragma pop

/* 8077AA44-8077AA48 00021C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8077AA44[4];
#pragma pop

/* 8077AA48-8077AA4C 000220 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8077AA48[4];
#pragma pop

/* 8077AA4C-8077AA50 000224 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8077AA4C[4];
#pragma pop

/* 8077AA50-8077AA54 000228 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8077AA50[4];
#pragma pop

/* 8077AA54-8077AA58 00022C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8077AA54[4];
#pragma pop

/* 8077AA58-8077AA5C 000230 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8077AA58[4];
#pragma pop

/* 8077AA5C-8077AA60 000234 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8077AA5C[4];
#pragma pop

/* 8077AA60-8077AA64 000238 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8077AA60[4];
#pragma pop

/* 8077AA64-8077AA68 00023C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8077AA64[4];
#pragma pop

/* 8077AA68-8077AA6C 000240 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8077AA68[4];
#pragma pop

/* 8077AA6C-8077AA70 000244 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8077AA6C[4];
#pragma pop

/* 8077AA70-8077AA74 000248 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8077AA70[4];
#pragma pop

/* 8077AA74-8077AA78 00024C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8077AA74[4];
#pragma pop

/* 8077AA78-8077AA7C 000250 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8077AA78[4];
#pragma pop

/* 8077AA7C-8077AA80 000254 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8077AA7C[4];
#pragma pop

/* 8077AA80-8077AA84 000258 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8077AA80[4];
#pragma pop

/* 8077AA84-8077AA88 00025C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8077AA84[4];
#pragma pop

/* 8077A0BC-8077A0BC 0002C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

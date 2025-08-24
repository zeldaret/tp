/**
 * @file d_a_e_wb.cpp
 * 
*/

#include "d/dolzel_rel.h"


#include "d/actor/d_a_e_wb.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
#include "m_Do/m_Do_graphic.h"

//
// Forward References:
//

extern "C" void __ct__12daE_WB_HIO_cFv();
extern "C" static void anm_init__FP10e_wb_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void himo_control1__FP10e_wb_classP4cXyziSc();
extern "C" void __dt__4cXyzFv();
extern "C" static void himo_control2__FP10e_wb_classP4cXyziSc();
extern "C" static void e_wb_lr_wall_check__FP10e_wb_class();
extern "C" static void daE_WB_Draw__FP10e_wb_class();
extern "C" static void e_wb_wall_check__FP10e_wb_class();
extern "C" static void gake_check__FP10e_wb_class();
extern "C" static void e_wb_saku_jump_check__FP10e_wb_class();
extern "C" static void e_wb_saku_check_sub__FP10e_wb_classs();
extern "C" static void e_wb_saku_check__FP10e_wb_class();
extern "C" static void e_wb_wait__FP10e_wb_class();
extern "C" static void e_wb_ride__FP10e_wb_class();
extern "C" static void e_wb_pl_ride_now__FP10e_wb_class();
extern "C" static void e_wb_pl_ride__FP10e_wb_class();
extern "C" static void e_wb_f_wait__FP10e_wb_class();
extern "C" static void pl_pass_check__FP10e_wb_classf();
extern "C" static void e_wb_f_run__FP10e_wb_class();
extern "C" static void s_wbstart_sub__FPvPv();
extern "C" static void e_wb_b_wait__FP10e_wb_class();
extern "C" static void e_wb_b_run2__FP10e_wb_class();
extern "C" static void e_wb_b_wait2__FP10e_wb_class();
extern "C" static void e_wb_b_run__FP10e_wb_class();
extern "C" static void arrow_rd_set__FP10e_wb_class();
extern "C" static void e_wb_b_ikki__FP10e_wb_class();
extern "C" void __dt__5csXyzFv();
extern "C" static void e_wb_b_ikki_end__FP10e_wb_class();
extern "C" static void e_wb_b_ikki2__FP10e_wb_class();
extern "C" static void e_wb_b_ikki2_end__FP10e_wb_class();
extern "C" static void e_wb_b_lv9_end__FP10e_wb_class();
extern "C" static void e_wb_a_run__FP10e_wb_class();
extern "C" static void e_wb_s_damage__FP10e_wb_class();
extern "C" static void e_wb_damage__FP10e_wb_class();
extern "C" static void e_wb_bg_damage__FP10e_wb_class();
extern "C" static void e_wb_lr_damage__FP10e_wb_class();
extern "C" static void e_wb_kiba_start__FP10e_wb_class();
extern "C" static void e_wb_kiba_end__FP10e_wb_class();
extern "C" static void damage_check__FP10e_wb_class();
extern "C" static void effect_set__FP10e_wb_class();
extern "C" static void wb_rd_reset__FP10e_wb_class();
extern "C" static void wb_c_rd_reset__FP10e_wb_class();
extern "C" static void s_rddel_sub__FPvPv();
extern "C" static void s_rdcount_sub__FPvPv();
extern "C" static void s_rddel2_sub__FPvPv();
extern "C" static void e_wb_crv_wait__FP10e_wb_class();
extern "C" static void e_wb_c_run__FP10e_wb_class();
extern "C" static void action__FP10e_wb_class();
extern "C" static void s_wbZrevise_sub__FPvPv();
extern "C" static void s_spd0_sub__FPvPv();
extern "C" static void s_wbdel_sub__FPvPv();
extern "C" static void s_rdArrowWait_sub__FPvPv();
extern "C" static void cam_3d_morf__FP10e_wb_classf();
extern "C" static void demo_camera__FP10e_wb_class();
extern "C" void fadeIn__13mDoGph_gInf_cFfR8_GXColor();
extern "C" void checkSkipEdge__14dEvt_control_cFv();
extern "C" static void cM_scos__Fs();
extern "C" static void cM_ssin__Fs();
extern "C" static void anm_se_eff_set__FP10e_wb_class();
extern "C" static void daE_WB_Execute__FP10e_wb_class();
extern "C" static bool daE_WB_IsDelete__FP10e_wb_class();
extern "C" static void daE_WB_Delete__FP10e_wb_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_WB_Create__FP10fopAc_ac_c();
extern "C" void __ct__19mDoExt_3DlineMat1_cFv();
extern "C" void __dt__6himo_sFv();
extern "C" void __ct__6himo_sFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_WB_HIO_cFv();
extern "C" void __sinit_d_a_e_wb_cpp();
extern "C" void func_807E2238();
extern "C" void func_807E2270();
extern "C" static void func_807E22A8();
extern "C" static void func_807E22B0();
extern "C" static void dComIfGp_setHitMark__FUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void changeDemoPos0__9daPy_py_cFPC4cXyz();
extern "C" void changeDemoMode__9daPy_py_cFUliis();
extern "C" void changeDemoParam2__9daPy_py_cFs();
extern "C" void fabsf__3stdFf();
extern "C" void __ct__4cXyzFRC4cXyz();
extern "C" static void cMtx_YrotS__FPA4_fs();
extern "C" static void fopAcM_searchPlayerAngleY__FPC10fopAc_ac_c(fopAc_ac_c const* param_0);
extern "C" static void dComIfGs_onEventBit__FUs(u16);
extern "C" static void Z2GetAudioMgr__Fv();
extern "C" void cancelOriginalDemo__9daPy_py_cFv();
extern "C" static void dComIfGp_event_reset__Fv();
extern "C" void changeOriginalDemo__9daPy_py_cFv();
extern "C" static void daPy_getPlayerActorClass__Fv();
extern "C" void __as__11actor_placeFRC11actor_place();
extern "C" void __as__5csXyzFRC5csXyz();
extern "C" void set__4cXyzFfff();
extern "C" void onCondition__11dEvt_info_cFUs();
extern "C" void checkCommandDemoAccrpt__11dEvt_info_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" static void fopAcM_SearchByName__Fs(s16);
extern "C" static void fopAcM_SearchByID__FUi(unsigned int);
extern "C" static daHorse_c* dComIfGp_getHorseActor__Fv();
extern "C" static void dComIfGp_getPlayer__Fi(int);
extern "C" static void dComIfGp_getCamera__Fi(int);
extern "C" static void dComIfGp_getPlayerCameraID__Fi(int);
extern "C" static void dMsgObject_isTalkNowCheck__Fv();
extern "C" void abs__4cXyzCFv();
extern "C" static void cMtx_XrotM__FPA4_fs();
extern "C" static void JMAFastSqrt__Ff();
extern "C" static void dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz();
extern "C" void cancelOriginalDemo__9daHorse_cFv();
extern "C" void __ct__10JAISoundIDFUl(u32* this_replacement, u32 param_0);
extern "C" static void dComIfGp_getVibration__Fv();
extern "C" void __ct__4cXyzFfff();
extern "C" void onDemoJumpDistance__9daHorse_cFff();
extern "C" void __as__4cXyzFRC4cXyz();
extern "C" void __apl__4cXyzFRC3Vec();
extern "C" void multVec__14mDoMtx_stack_cFPC3VecP3Vec(Vec const* param_0, Vec* param_1);
extern "C" void YrotS__14mDoMtx_stack_cFs(s16);
extern "C" void changeDemoPos0__9daHorse_cFPC4cXyz();
extern "C" void changeDemoMode__9daHorse_cFUli();
extern "C" void setHorsePosAndAngle__9daHorse_cFPC4cXyzs();
extern "C" void startCheckSkipEdge__14dEvt_control_cFPv();
extern "C" static void dComIfGp_getEvent__Fv();
extern "C" static void fpcM_Search__FPFPvPv_PvPv(void* (*param_0)(void*, void*), void* param_1);
extern "C" void changeOriginalDemo__9daHorse_cFv();
extern "C" extern char const* const d_a_e_wb__stringBase0;

//
// External References:
//

extern "C" void fadeOut__13mDoGph_gInf_cFfR8_GXColor();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void cDmrNowMidnaTalk__Fv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_setStageLayer__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGp_setNextStage__FPCcsScScfUliScsii();
extern "C" void dComIfGp_setNextStage__FPCcsScSc();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetActorPointer__4cBgSCFi();
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
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void getHorseReinHandPos__9daAlink_cFP4cXyzP4cXyz();
extern "C" void checkHorseNotGrab__9daAlink_cCFv();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzsf();
extern "C" void Reset__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void dCam_getControledAngleY__FP12camera_class();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_Sound_set__F4cXyziUii();
extern "C" void dKy_change_colpat__FUc();
extern "C" void dKy_pol_sound_get__FPC13cBgS_PolyInfo();
extern "C" void getStatus__12dMsgObject_cFv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void SetGrp__10cCcD_ObjTgFUl();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void MtxPush__Fv();
extern "C" void MtxPull__Fv();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void bgmStart__8Z2SeqMgrFUlUll();
extern "C" void bgmStop__8Z2SeqMgrFUll();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void bgmStreamStop__8Z2SeqMgrFUl();
extern "C" void __ct__14Z2CreatureRideFv();
extern "C" void init__14Z2CreatureRideFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_20();
extern "C" void _savegpr_21();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_20();
extern "C" void _restgpr_21();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
//extern "C" extern u8 struct_80450C98[4];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();
extern "C" void SetB_Close__14daObjCRVGATE_cFv();
extern "C" void OpenSet__15daObjCRVSTEEL_cFff();
extern "C" void CloseSet__15daObjCRVSTEEL_cFf();

//
// Declarations:
//

/* ############################################################################################## */
/* 807E298C-807E2998 000000 000C+00 42/42 0/0 0/0 .rodata          @3882 */
SECTION_RODATA static u8 const lit_3882[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807E298C, &lit_3882);

/* 807E2998-807E299C 00000C 0004+00 0/2 0/0 0/0 .rodata          @4440 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4440 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x807E2998, &lit_4440);
#pragma pop

/* 807E299C-807E29A0 000010 0004+00 0/1 0/0 0/0 .rodata          @4441 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4441 = 3.5f;
COMPILER_STRIP_GATE(0x807E299C, &lit_4441);
#pragma pop

/* 807E29A0-807E29A4 000014 0004+00 0/4 0/0 0/0 .rodata          @4442 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4442 = 600.0f;
COMPILER_STRIP_GATE(0x807E29A0, &lit_4442);
#pragma pop

/* 807E29A4-807E29A8 000018 0004+00 0/1 0/0 0/0 .rodata          @4443 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4443 = 37.0f;
COMPILER_STRIP_GATE(0x807E29A4, &lit_4443);
#pragma pop

/* 807E29A8-807E29AC 00001C 0004+00 0/10 0/0 0/0 .rodata          @4444 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4444 = 50.0f;
COMPILER_STRIP_GATE(0x807E29A8, &lit_4444);
#pragma pop

/* 807E29AC-807E29B0 000020 0004+00 1/20 0/0 0/0 .rodata          @4445 */
SECTION_RODATA static f32 const lit_4445 = 10.0f;
COMPILER_STRIP_GATE(0x807E29AC, &lit_4445);

/* 807E29B0-807E29B4 000024 0004+00 0/11 0/0 0/0 .rodata          @4446 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4446 = 40.0f;
COMPILER_STRIP_GATE(0x807E29B0, &lit_4446);
#pragma pop

/* 807E29B4-807E29B8 000028 0004+00 0/1 0/0 0/0 .rodata          @4447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4447 = 54.0f;
COMPILER_STRIP_GATE(0x807E29B4, &lit_4447);
#pragma pop

/* 807E29B8-807E29BC 00002C 0004+00 0/2 0/0 0/0 .rodata          @4448 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4448 = 25.0f;
COMPILER_STRIP_GATE(0x807E29B8, &lit_4448);
#pragma pop

/* 807E29BC-807E29C0 000030 0004+00 0/1 0/0 0/0 .rodata          @4449 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4449 = 45.0f;
COMPILER_STRIP_GATE(0x807E29BC, &lit_4449);
#pragma pop

/* 807E29C0-807E29C4 000034 0004+00 0/4 0/0 0/0 .rodata          @4450 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4450 = 55.0f;
COMPILER_STRIP_GATE(0x807E29C0, &lit_4450);
#pragma pop

/* 807E29C4-807E29C8 000038 0004+00 0/9 0/0 0/0 .rodata          @4451 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4451 = 30.0f;
COMPILER_STRIP_GATE(0x807E29C4, &lit_4451);
#pragma pop

/* 807E29C8-807E29CC 00003C 0004+00 0/1 0/0 0/0 .rodata          @4452 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4452 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x807E29C8, &lit_4452);
#pragma pop

/* 807E29CC-807E29D0 000040 0004+00 0/6 0/0 0/0 .rodata          @4453 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4453 = 500.0f;
COMPILER_STRIP_GATE(0x807E29CC, &lit_4453);
#pragma pop

/* 807E29D0-807E29D4 000044 0004+00 0/1 0/0 0/0 .rodata          @4454 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4454 = 3500.0f;
COMPILER_STRIP_GATE(0x807E29D0, &lit_4454);
#pragma pop

/* 807E2F78-807E2F7C 000020 0004+00 1/1 0/0 0/0 .data            l_color$4786 */
SECTION_DATA static u8 l_color[4] = {
    0x14,
    0x0F,
    0x00,
    0xFF,
};

/* 807E2F7C-807E2F8C 000024 0010+00 1/1 0/0 0/0 .data            chk_x$5015 */
SECTION_DATA static u8 chk_x[16] = {
    0x46, 0x5E, 0xC4, 0x00, 0x47, 0x07, 0xD7, 0x00, 0xC6, 0xB2, 0xA0, 0x00, 0xC6, 0x35, 0xAC, 0x00,
};

/* 807E2F8C-807E2F9C 000034 0010+00 1/1 0/0 0/0 .data            chk_z$5016 */
SECTION_DATA static u8 chk_z[16] = {
    0x46, 0x9C, 0xD6, 0x00, 0xC6, 0x80, 0xA6, 0x00, 0x46, 0x19, 0x7C, 0x00, 0x46, 0xB0, 0x92, 0x00,
};

/* 807E2F9C-807E2FA4 000044 0006+02 1/1 0/0 0/0 .data            yaa$5213 */
SECTION_DATA static u8 yaa[6 + 2 /* padding */] = {
    0x00,
    0x00,
    0xF0,
    0x00,
    0x10,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 807E2FA4-807E2FB0 00004C 000C+00 1/1 0/0 0/0 .data            saku_bit$5214 */
SECTION_DATA static u8 saku_bit[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
};

/* 807E2FB0-807E2FDC -00001 002C+00 1/1 0/0 0/0 .data            @6252 */
SECTION_DATA static void* lit_6252[11] = {
    (void*)(((char*)e_wb_b_run__FP10e_wb_class) + 0x100),
    (void*)(((char*)e_wb_b_run__FP10e_wb_class) + 0x10C),
    (void*)(((char*)e_wb_b_run__FP10e_wb_class) + 0x414),
    (void*)(((char*)e_wb_b_run__FP10e_wb_class) + 0x7D0),
    (void*)(((char*)e_wb_b_run__FP10e_wb_class) + 0x834),
    (void*)(((char*)e_wb_b_run__FP10e_wb_class) + 0x974),
    (void*)(((char*)e_wb_b_run__FP10e_wb_class) + 0x974),
    (void*)(((char*)e_wb_b_run__FP10e_wb_class) + 0x974),
    (void*)(((char*)e_wb_b_run__FP10e_wb_class) + 0x974),
    (void*)(((char*)e_wb_b_run__FP10e_wb_class) + 0x974),
    (void*)(((char*)e_wb_b_run__FP10e_wb_class) + 0x870),
};

/* 807E2FDC-807E2FE0 000084 0004+00 1/1 0/0 0/0 .data            f_ya$6404 */
SECTION_DATA static u8 f_ya[4] = {
    0x80,
    0x00,
    0x00,
    0x00,
};

/* 807E2FE0-807E2FE4 000088 0004+00 1/1 0/0 0/0 .data            f_id$6405 */
SECTION_DATA static u8 f_id[4] = {
    0x82,
    0xC7,
    0x82,
    0xC8,
};

/* 807E2FE4-807E3000 -00001 001C+00 1/1 0/0 0/0 .data            @6893 */
SECTION_DATA static void* lit_6893[7] = {
    (void*)(((char*)e_wb_b_lv9_end__FP10e_wb_class) + 0x60),
    (void*)(((char*)e_wb_b_lv9_end__FP10e_wb_class) + 0xD4),
    (void*)(((char*)e_wb_b_lv9_end__FP10e_wb_class) + 0xF4),
    (void*)(((char*)e_wb_b_lv9_end__FP10e_wb_class) + 0x138),
    (void*)(((char*)e_wb_b_lv9_end__FP10e_wb_class) + 0x154),
    (void*)(((char*)e_wb_b_lv9_end__FP10e_wb_class) + 0x174),
    (void*)(((char*)e_wb_b_lv9_end__FP10e_wb_class) + 0x1CC),
};

/* 807E3000-807E3008 0000A8 0008+00 0/1 0/0 0/0 .data            footd$7448 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 footd[8] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0A,
};
#pragma pop

/* 807E3008-807E3010 0000B0 0008+00 0/1 0/0 0/0 .data            footd_B$7449 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 footd_B[8] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0A,
};
#pragma pop

/* 807E3010-807E3018 0000B8 0006+02 0/1 0/0 0/0 .data            w_eff_name$7501 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 w_eff_name[6 + 2 /* padding */] = {
    0x82,
    0x5B,
    0x82,
    0x5C,
    0x82,
    0x5D,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 807E3018-807E3020 0000C0 0006+02 0/1 0/0 0/0 .data            w_eff_name2$7502 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 w_eff_name2[6 + 2 /* padding */] = {
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
#pragma pop

/* 807E3020-807E3028 0000C8 0008+00 0/1 0/0 0/0 .data            w_eff_id$7518 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 w_eff_id[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};
#pragma pop

/* 807E3028-807E3080 -00001 0058+00 1/1 0/0 0/0 .data            @8136 */
SECTION_DATA static void* lit_8136[22] = {
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0x168),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0x194),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0x260),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xBEC),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xBEC),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xBEC),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xBEC),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xBEC),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xBEC),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xBEC),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xBEC),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0x344),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0x424),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0x42C),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xBEC),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xBEC),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xBEC),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xBEC),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xBEC),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xBEC),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xB58),
    (void*)(((char*)e_wb_c_run__FP10e_wb_class) + 0xB78),
};

/* 807E3080-807E323C -00001 01BC+00 1/1 0/0 0/0 .data            @8377 */
SECTION_DATA static void* lit_8377[111] = {
    (void*)(((char*)action__FP10e_wb_class) + 0xAC),
    (void*)(((char*)action__FP10e_wb_class) + 0xAC),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0xC8),
    (void*)(((char*)action__FP10e_wb_class) + 0xD4),
    (void*)(((char*)action__FP10e_wb_class) + 0xE0),
    (void*)(((char*)action__FP10e_wb_class) + 0x128),
    (void*)(((char*)action__FP10e_wb_class) + 0x134),
    (void*)(((char*)action__FP10e_wb_class) + 0x140),
    (void*)(((char*)action__FP10e_wb_class) + 0x14C),
    (void*)(((char*)action__FP10e_wb_class) + 0x158),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x164),
    (void*)(((char*)action__FP10e_wb_class) + 0x170),
    (void*)(((char*)action__FP10e_wb_class) + 0x17C),
    (void*)(((char*)action__FP10e_wb_class) + 0x188),
    (void*)(((char*)action__FP10e_wb_class) + 0x194),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x1A0),
    (void*)(((char*)action__FP10e_wb_class) + 0x1AC),
    (void*)(((char*)action__FP10e_wb_class) + 0x1D0),
    (void*)(((char*)action__FP10e_wb_class) + 0x1F4),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x218),
    (void*)(((char*)action__FP10e_wb_class) + 0x224),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x230),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x258),
    (void*)(((char*)action__FP10e_wb_class) + 0x264),
    (void*)(((char*)action__FP10e_wb_class) + 0x24C),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x278),
    (void*)(((char*)action__FP10e_wb_class) + 0x270),
};

/* 807E323C-807E3240 0002E4 0004+00 1/1 0/0 0/0 .data            key_eno$8737 */
SECTION_DATA static u8 key_eno_8737[4] = {
    0x82,
    0x7A,
    0x82,
    0x7B,
};

/* 807E3240-807E3244 0002E8 0004+00 1/1 0/0 0/0 .data            key_eno$8748 */
SECTION_DATA static u8 key_eno_8748[4] = {
    0x82,
    0x7A,
    0x82,
    0x7B,
};

/* 807E3244-807E33CC -00001 0188+00 1/1 0/0 0/0 .data            @9407 */
SECTION_DATA static void* lit_9407[98] = {
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0xBC),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x1C4),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x330),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x3BC),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x4A8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x4A8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x600),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x71C),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x99C),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0xA0C),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0xB18),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0xBB8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0xC94),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0xDBC),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0xFB8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x109C),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x10E8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x1274),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x13D4),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x1448),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x15C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x1754),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x17F0),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x1A08),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x1B04),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x1C30),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x1D8C),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x1E88),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x1F6C),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x2090),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x23D8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x24E8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x25DC),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x276C),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x290C),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x29C4),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x2AA8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x2B90),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x2C68),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x35C8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x2D98),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x2ED8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x3000),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x30B8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x32B4),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x33F8),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x3514),
    (void*)(((char*)demo_camera__FP10e_wb_class) + 0x3564),
};

/* 807E33CC-807E33DC 000474 0010+00 1/1 0/0 0/0 .data            foot_no$9903 */
SECTION_DATA static u8 foot_no[16] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x14,
};

/* 807E33DC-807E33EC 000484 0010+00 1/1 0/0 0/0 .data            foot_no_B$9904 */
SECTION_DATA static u8 foot_no_B[16] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x17,
};

/* 807E33EC-807E3404 000494 0018+00 0/1 0/0 0/0 .data            pass_r$10268 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 pass_r[24] = {
    0x00, 0x00, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00,
    0xC2, 0xC8, 0x00, 0x00, 0xC3, 0x16, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00,
};
#pragma pop

/* 807E3404-807E341C 0004AC 0018+00 0/1 0/0 0/0 .data            x_check_off$10269 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 x_check_off[24] = {
    0x44, 0x16, 0x00, 0x00, 0xC4, 0x48, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00,
    0xC3, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
};
#pragma pop

/* 807E341C-807E345C 0004C4 0040+00 0/1 0/0 0/0 .data            cc_sph_src$10277 */
#pragma push
#pragma force_active on
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x486022, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 807E345C-807E349C 000504 0040+00 0/1 0/0 0/0 .data            at_sph_src$10278 */
#pragma push
#pragma force_active on
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_1000, 0x2, 0x1f}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 807E349C-807E34BC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_WB_Method */
static actor_method_class l_daE_WB_Method = {
    (process_method_func)daE_WB_Create__FP10fopAc_ac_c,
    (process_method_func)daE_WB_Delete__FP10e_wb_class,
    (process_method_func)daE_WB_Execute__FP10e_wb_class,
    (process_method_func)daE_WB_IsDelete__FP10e_wb_class,
    (process_method_func)daE_WB_Draw__FP10e_wb_class,
};

/* 807E34BC-807E34EC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_WB */
extern actor_process_profile_definition g_profile_E_WB = {
  fpcLy_CURRENT_e,        // mLayerID
  4,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_WB,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_wb_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  152,                    // mPriority
  &l_daE_WB_Method,       // sub_method
  0x00044100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 807E34EC-807E34F8 000594 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 807E34F8-807E3504 0005A0 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 807E3504-807E3510 0005AC 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 807E3510-807E3524 0005B8 0014+00 2/2 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 807E3524-807E3530 0005CC 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 807E3530-807E353C 0005D8 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 807E353C-807E3560 0005E4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807E22B0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807E22A8,
};

/* 807E3560-807E356C 000608 000C+00 2/2 0/0 0/0 .data            __vt__12daE_WB_HIO_c */
SECTION_DATA extern void* __vt__12daE_WB_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_WB_HIO_cFv,
};

/* 807D248C-807D2548 0000EC 00BC+00 1/1 0/0 0/0 .text            __ct__12daE_WB_HIO_cFv */
daE_WB_HIO_c::daE_WB_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E29D4-807E29D8 000048 0004+00 3/31 0/0 0/0 .rodata          @4476 */
SECTION_RODATA static u8 const lit_4476[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x807E29D4, &lit_4476);

/* 807E29D8-807E29DC 00004C 0004+00 1/7 0/0 0/0 .rodata          @4477 */
SECTION_RODATA static f32 const lit_4477 = -1.0f;
COMPILER_STRIP_GATE(0x807E29D8, &lit_4477);

/* 807D2548-807D2610 0001A8 00C8+00 26/26 0/0 0/0 .text            anm_init__FP10e_wb_classifUcf */
static void anm_init(e_wb_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 807D2610-807D27D4 000270 01C4+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E29DC-807E29E0 000050 0004+00 1/7 0/0 0/0 .rodata          @4638 */
SECTION_RODATA static f32 const lit_4638 = 20.0f;
COMPILER_STRIP_GATE(0x807E29DC, &lit_4638);

/* 807E29E0-807E29E4 000054 0004+00 0/2 0/0 0/0 .rodata          @4639 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4639 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x807E29E0, &lit_4639);
#pragma pop

/* 807E29E4-807E29E8 000058 0004+00 0/3 0/0 0/0 .rodata          @4640 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4640 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x807E29E4, &lit_4640);
#pragma pop

/* 807E29E8-807E29EC 00005C 0004+00 0/10 0/0 0/0 .rodata          @4641 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4641 = 15.0f;
COMPILER_STRIP_GATE(0x807E29E8, &lit_4641);
#pragma pop

/* 807E29EC-807E29F0 000060 0004+00 3/33 0/0 0/0 .rodata          @4642 */
SECTION_RODATA static f32 const lit_4642 = 1.0f;
COMPILER_STRIP_GATE(0x807E29EC, &lit_4642);

/* 807E35B8-807E35BC 000048 0004+00 1/2 0/0 0/0 .bss             None */
static u8 data_807E35B8[4];

/* 807E35BC-807E35C8 00004C 000C+00 0/1 0/0 0/0 .bss             @4435 */
#pragma push
#pragma force_active on
static u8 lit_4435[12];
#pragma pop

/* 807E35C8-807E3624 000058 005C+00 9/14 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[92];

/* 807D27D4-807D2B48 000434 0374+00 1/1 0/0 0/0 .text himo_control1__FP10e_wb_classP4cXyziSc */
static void himo_control1(e_wb_class* param_0, cXyz* param_1, int param_2, s8 param_3) {
    // NONMATCHING
}

/* 807D2B48-807D2B84 0007A8 003C+00 12/12 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 807D2B84-807D2D90 0007E4 020C+00 1/1 0/0 0/0 .text himo_control2__FP10e_wb_classP4cXyziSc */
static void himo_control2(e_wb_class* param_0, cXyz* param_1, int param_2, s8 param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E29F0-807E29F4 000064 0004+00 0/3 0/0 0/0 .rodata          @4742 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4742 = 300.0f;
COMPILER_STRIP_GATE(0x807E29F0, &lit_4742);
#pragma pop

/* 807E29F4-807E29F8 000068 0004+00 0/2 0/0 0/0 .rodata          @4743 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4743 = -400.0f;
COMPILER_STRIP_GATE(0x807E29F4, &lit_4743);
#pragma pop

/* 807E29F8-807E29FC 00006C 0004+00 0/5 0/0 0/0 .rodata          @4744 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4744 = 400.0f;
COMPILER_STRIP_GATE(0x807E29F8, &lit_4744);
#pragma pop

/* 807D2D90-807D2F18 0009F0 0188+00 1/1 0/0 0/0 .text            e_wb_lr_wall_check__FP10e_wb_class
 */
static void e_wb_lr_wall_check(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E29FC-807E2A00 000070 0004+00 0/8 0/0 0/0 .rodata          @4910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4910 = 100.0f;
COMPILER_STRIP_GATE(0x807E29FC, &lit_4910);
#pragma pop

/* 807E2A00-807E2A04 000074 0004+00 0/4 0/0 0/0 .rodata          @4911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4911 = 1000.0f;
COMPILER_STRIP_GATE(0x807E2A00, &lit_4911);
#pragma pop

/* 807E2A04-807E2A08 000078 0004+00 0/3 0/0 0/0 .rodata          @4912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4912 = 800.0f;
COMPILER_STRIP_GATE(0x807E2A04, &lit_4912);
#pragma pop

/* 807E2A08-807E2A0C 00007C 0004+00 0/2 0/0 0/0 .rodata          @4913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4913 = 80.0f;
COMPILER_STRIP_GATE(0x807E2A08, &lit_4913);
#pragma pop

/* 807E2A0C-807E2A10 000080 0004+00 0/4 0/0 0/0 .rodata          @4914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4914 = -20.0f;
COMPILER_STRIP_GATE(0x807E2A0C, &lit_4914);
#pragma pop

/* 807E2A10-807E2A14 000084 0004+00 0/1 0/0 0/0 .rodata          @4915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4915 = 47.0f;
COMPILER_STRIP_GATE(0x807E2A10, &lit_4915);
#pragma pop

/* 807E2A14-807E2A1C 000088 0004+04 0/2 0/0 0/0 .rodata          @4916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4916[1 + 1 /* padding */] = {
    42.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x807E2A14, &lit_4916);
#pragma pop

/* 807E2A1C-807E2A24 000090 0008+00 0/6 0/0 0/0 .rodata          @4917 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4917[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807E2A1C, &lit_4917);
#pragma pop

/* 807E2A24-807E2A2C 000098 0008+00 0/6 0/0 0/0 .rodata          @4918 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4918[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807E2A24, &lit_4918);
#pragma pop

/* 807E2A2C-807E2A34 0000A0 0008+00 0/6 0/0 0/0 .rodata          @4919 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4919[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807E2A2C, &lit_4919);
#pragma pop

/* 807E2A34-807E2A38 0000A8 0004+00 0/4 0/0 0/0 .rodata          @4920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4920 = 60.0f;
COMPILER_STRIP_GATE(0x807E2A34, &lit_4920);
#pragma pop

/* 807D2F18-807D366C 000B78 0754+00 1/0 0/0 0/0 .text            daE_WB_Draw__FP10e_wb_class */
static void daE_WB_Draw(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2A38-807E2A3C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @5004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5004 = 120.0f;
COMPILER_STRIP_GATE(0x807E2A38, &lit_5004);
#pragma pop

/* 807E2A3C-807E2A40 0000B0 0004+00 0/1 0/0 0/0 .rodata          @5005 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5005 = 250.0f;
COMPILER_STRIP_GATE(0x807E2A3C, &lit_5005);
#pragma pop

/* 807E2A40-807E2A44 0000B4 0004+00 0/3 0/0 0/0 .rodata          @5006 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5006 = 200.0f;
COMPILER_STRIP_GATE(0x807E2A40, &lit_5006);
#pragma pop

/* 807D366C-807D387C 0012CC 0210+00 1/1 0/0 0/0 .text            e_wb_wall_check__FP10e_wb_class */
static void e_wb_wall_check(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2A44-807E2A48 0000B8 0004+00 0/1 0/0 0/0 .rodata          @5096 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5096 = -5000.0f;
COMPILER_STRIP_GATE(0x807E2A44, &lit_5096);
#pragma pop

/* 807E2A48-807E2A4C 0000BC 0004+00 0/4 0/0 0/0 .rodata          @5097 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5097 = 2000.0f;
COMPILER_STRIP_GATE(0x807E2A48, &lit_5097);
#pragma pop

/* 807E2A4C-807E2A50 0000C0 0004+00 0/1 0/0 0/0 .rodata          @5098 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5098 = -500.0f;
COMPILER_STRIP_GATE(0x807E2A4C, &lit_5098);
#pragma pop

/* 807D387C-807D3B94 0014DC 0318+00 1/1 0/0 0/0 .text            gake_check__FP10e_wb_class */
static void gake_check(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2A50-807E2A54 0000C4 0004+00 0/5 0/0 0/0 .rodata          @5175 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5175 = 150.0f;
COMPILER_STRIP_GATE(0x807E2A50, &lit_5175);
#pragma pop

/* 807D3B94-807D3D94 0017F4 0200+00 1/1 0/0 0/0 .text e_wb_saku_jump_check__FP10e_wb_class */
static void e_wb_saku_jump_check(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2A54-807E2A5C 0000C8 0004+04 0/1 0/0 0/0 .rodata          @5207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5207[1 + 1 /* padding */] = {
    410.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x807E2A54, &lit_5207);
#pragma pop

/* 807E2A5C-807E2A64 0000D0 0008+00 0/3 0/0 0/0 .rodata          @5209 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5209[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807E2A5C, &lit_5209);
#pragma pop

/* 807D3D94-807D3F2C 0019F4 0198+00 1/1 0/0 0/0 .text e_wb_saku_check_sub__FP10e_wb_classs */
static void e_wb_saku_check_sub(e_wb_class* param_0, s16 param_1) {
    // NONMATCHING
}

/* 807D3F2C-807D3FB0 001B8C 0084+00 1/1 0/0 0/0 .text            e_wb_saku_check__FP10e_wb_class */
static void e_wb_saku_check(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2A64-807E2A68 0000D8 0004+00 2/15 0/0 0/0 .rodata          @5242 */
SECTION_RODATA static f32 const lit_5242 = 3.0f;
COMPILER_STRIP_GATE(0x807E2A64, &lit_5242);

/* 807D3FB0-807D40A8 001C10 00F8+00 1/1 0/0 0/0 .text            e_wb_wait__FP10e_wb_class */
static void e_wb_wait(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D40A8-807D4110 001D08 0068+00 1/1 0/0 0/0 .text            e_wb_ride__FP10e_wb_class */
static void e_wb_ride(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D4110-807D4154 001D70 0044+00 1/1 0/0 0/0 .text            e_wb_pl_ride_now__FP10e_wb_class */
static void e_wb_pl_ride_now(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2A68-807E2A6C 0000DC 0004+00 0/12 0/0 0/0 .rodata          @5441 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5441 = 2.0f;
COMPILER_STRIP_GATE(0x807E2A68, &lit_5441);
#pragma pop

/* 807E2A6C-807E2A70 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5442 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5442 = 22.0f;
COMPILER_STRIP_GATE(0x807E2A6C, &lit_5442);
#pragma pop

/* 807E2A70-807E2A74 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5443 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5443 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x807E2A70, &lit_5443);
#pragma pop

/* 807E2A74-807E2A78 0000E8 0004+00 0/6 0/0 0/0 .rodata          @5444 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5444 = 1.5f;
COMPILER_STRIP_GATE(0x807E2A74, &lit_5444);
#pragma pop

/* 807E2A78-807E2A7C 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5445 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5445 = 4500.0f;
COMPILER_STRIP_GATE(0x807E2A78, &lit_5445);
#pragma pop

/* 807E2A7C-807E2A80 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5446 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5446 = -4500.0f;
COMPILER_STRIP_GATE(0x807E2A7C, &lit_5446);
#pragma pop

/* 807E2A80-807E2A84 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5447 = -1.0f / 5.0f;
COMPILER_STRIP_GATE(0x807E2A80, &lit_5447);
#pragma pop

/* 807E2A84-807E2A88 0000F8 0004+00 0/17 0/0 0/0 .rodata          @5448 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5448 = 5.0f;
COMPILER_STRIP_GATE(0x807E2A84, &lit_5448);
#pragma pop

/* 807E2A88-807E2A8C 0000FC 0004+00 0/8 0/0 0/0 .rodata          @5449 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5449 = 0.5f;
COMPILER_STRIP_GATE(0x807E2A88, &lit_5449);
#pragma pop

/* 807E2A8C-807E2A90 000100 0004+00 0/2 0/0 0/0 .rodata          @5450 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5450 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x807E2A8C, &lit_5450);
#pragma pop

/* 807E2A90-807E2A94 000104 0004+00 0/1 0/0 0/0 .rodata          @5451 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5451 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x807E2A90, &lit_5451);
#pragma pop

/* 807E2A94-807E2A98 000108 0004+00 0/4 0/0 0/0 .rodata          @5452 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5452 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x807E2A94, &lit_5452);
#pragma pop

/* 807E2F0C-807E2F0C 000580 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807E2F0C = "F_SP118";
#pragma pop

/* 807D4154-807D48C0 001DB4 076C+00 1/1 0/0 0/0 .text            e_wb_pl_ride__FP10e_wb_class */
static void e_wb_pl_ride(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2A98-807E2A9C 00010C 0004+00 0/5 0/0 0/0 .rodata          @5511 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5511 = 1500.0f;
COMPILER_STRIP_GATE(0x807E2A98, &lit_5511);
#pragma pop

/* 807D48C0-807D4BDC 002520 031C+00 1/1 0/0 0/0 .text            e_wb_f_wait__FP10e_wb_class */
static void e_wb_f_wait(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D4BDC-807D4C84 00283C 00A8+00 1/1 0/0 0/0 .text            pl_pass_check__FP10e_wb_classf */
static void pl_pass_check(e_wb_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2A9C-807E2AA0 000110 0004+00 0/1 0/0 0/0 .rodata          @5686 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5686 = 19.0f / 20.0f;
COMPILER_STRIP_GATE(0x807E2A9C, &lit_5686);
#pragma pop

/* 807E2AA0-807E2AA4 000114 0004+00 0/1 0/0 0/0 .rodata          @5687 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5687 = 27.0f / 20.0f;
COMPILER_STRIP_GATE(0x807E2AA0, &lit_5687);
#pragma pop

/* 807E2AA4-807E2AA8 000118 0004+00 0/3 0/0 0/0 .rodata          @5688 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5688 = 5000.0f;
COMPILER_STRIP_GATE(0x807E2AA4, &lit_5688);
#pragma pop

/* 807E2AA8-807E2AAC 00011C 0004+00 0/1 0/0 0/0 .rodata          @5689 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5689 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x807E2AA8, &lit_5689);
#pragma pop

/* 807E2AAC-807E2AB0 000120 0004+00 0/2 0/0 0/0 .rodata          @5690 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5690 = 700.0f;
COMPILER_STRIP_GATE(0x807E2AAC, &lit_5690);
#pragma pop

/* 807D4C84-807D53AC 0028E4 0728+00 1/1 0/0 0/0 .text            e_wb_f_run__FP10e_wb_class */
static void e_wb_f_run(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D53AC-807D5408 00300C 005C+00 2/2 0/0 0/0 .text            s_wbstart_sub__FPvPv */
static void s_wbstart_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 807D5408-807D5634 003068 022C+00 1/1 0/0 0/0 .text            e_wb_b_wait__FP10e_wb_class */
static void e_wb_b_wait(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2AB0-807E2AB4 000124 0004+00 0/4 0/0 0/0 .rodata          @5941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5941 = 3000.0f;
COMPILER_STRIP_GATE(0x807E2AB0, &lit_5941);
#pragma pop

/* 807E3624-807E3630 0000B4 000C+00 0/1 0/0 0/0 .bss             @4746 */
#pragma push
#pragma force_active on
static u8 lit_4746[12];
#pragma pop

/* 807E3630-807E3690 0000C0 0060+00 1/4 0/0 0/0 .bss             b_path */
static u8 b_path[96];

/* 807E3690-807E369C 000120 000C+00 0/1 0/0 0/0 .bss             @5743 */
#pragma push
#pragma force_active on
static u8 lit_5743[12];
#pragma pop

/* 807E369C-807E36FC 00012C 0060+00 2/3 0/0 0/0 .bss             b_path2 */
static u8 b_path2[96];

/* 807D5634-807D5EBC 003294 0888+00 1/1 0/0 0/0 .text            e_wb_b_run2__FP10e_wb_class */
static void e_wb_b_run2(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2AB4-807E2AB8 000128 0004+00 0/3 0/0 0/0 .rodata          @5977 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5977 = 4000.0f;
COMPILER_STRIP_GATE(0x807E2AB4, &lit_5977);
#pragma pop

/* 807D5EBC-807D6058 003B1C 019C+00 1/1 0/0 0/0 .text            e_wb_b_wait2__FP10e_wb_class */
static void e_wb_b_wait2(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D6058-807D6C2C 003CB8 0BD4+00 2/1 0/0 0/0 .text            e_wb_b_run__FP10e_wb_class */
static void e_wb_b_run(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2AB8-807E2ABC 00012C 0004+00 0/1 0/0 0/0 .rodata          @6243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6243 = 6.0f;
COMPILER_STRIP_GATE(0x807E2AB8, &lit_6243);
#pragma pop

/* 807E2ABC-807E2AC0 000130 0004+00 0/0 0/0 0/0 .rodata          @6244 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6244 = 6000.0f;
COMPILER_STRIP_GATE(0x807E2ABC, &lit_6244);
#pragma pop

/* 807E2AC0-807E2AC4 000134 0004+00 0/2 0/0 0/0 .rodata          @6245 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6245 = -30.0f;
COMPILER_STRIP_GATE(0x807E2AC0, &lit_6245);
#pragma pop

/* 807E2AC4-807E2AC8 000138 0004+00 0/3 0/0 0/0 .rodata          @6246 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6246 = 12000.0f;
COMPILER_STRIP_GATE(0x807E2AC4, &lit_6246);
#pragma pop

/* 807E2AC8-807E2ACC 00013C 0004+00 0/0 0/0 0/0 .rodata          @6247 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6247 = 9000.0f;
COMPILER_STRIP_GATE(0x807E2AC8, &lit_6247);
#pragma pop

/* 807E2ACC-807E2AD0 000140 0004+00 0/0 0/0 0/0 .rodata          @6248 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6248 = 28108.0f;
COMPILER_STRIP_GATE(0x807E2ACC, &lit_6248);
#pragma pop

/* 807E2AD0-807E2AD4 000144 0004+00 0/0 0/0 0/0 .rodata          @6249 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6249 = 6640.0f;
COMPILER_STRIP_GATE(0x807E2AD0, &lit_6249);
#pragma pop

/* 807E2AD4-807E2AD8 000148 0004+00 0/1 0/0 0/0 .rodata          @6250 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6250 = -2989.0f;
COMPILER_STRIP_GATE(0x807E2AD4, &lit_6250);
#pragma pop

/* 807E2AD8-807E2ADC 00014C 0004+00 0/1 0/0 0/0 .rodata          @6251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6251 = 1364.0f;
COMPILER_STRIP_GATE(0x807E2AD8, &lit_6251);
#pragma pop

/* 807E2ADC-807E2AE0 000150 0004+00 0/1 0/0 0/0 .rodata          @6276 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6276 = 36460.0f;
COMPILER_STRIP_GATE(0x807E2ADC, &lit_6276);
#pragma pop

/* 807E2AE0-807E2AE4 000154 0004+00 0/1 0/0 0/0 .rodata          @6277 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6277 = 1040.0f;
COMPILER_STRIP_GATE(0x807E2AE0, &lit_6277);
#pragma pop

/* 807E2AE4-807E2AE8 000158 0004+00 0/1 0/0 0/0 .rodata          @6278 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6278 = -17020.0f;
COMPILER_STRIP_GATE(0x807E2AE4, &lit_6278);
#pragma pop

/* 807E36FC-807E370C 00018C 000C+04 0/1 0/0 0/0 .bss             @6258 */
#pragma push
#pragma force_active on
static u8 lit_6258[12 + 4 /* padding */];
#pragma pop

/* 807E370C-807E3718 00019C 000C+00 0/1 0/0 0/0 .bss             arrow_rd_pos$6257 */
#pragma push
#pragma force_active on
static u8 arrow_rd_pos[12];
#pragma pop

/* 807D6C2C-807D6CE0 00488C 00B4+00 1/1 0/0 0/0 .text            arrow_rd_set__FP10e_wb_class */
static void arrow_rd_set(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2AE8-807E2AEC 00015C 0004+00 0/1 0/0 0/0 .rodata          @6572 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6572 = 34789.0f;
COMPILER_STRIP_GATE(0x807E2AE8, &lit_6572);
#pragma pop

/* 807E2AEC-807E2AF0 000160 0004+00 0/1 0/0 0/0 .rodata          @6573 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6573 = -290.0f;
COMPILER_STRIP_GATE(0x807E2AEC, &lit_6573);
#pragma pop

/* 807E2AF0-807E2AF4 000164 0004+00 0/1 0/0 0/0 .rodata          @6574 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6574 = -36200.0f;
COMPILER_STRIP_GATE(0x807E2AF0, &lit_6574);
#pragma pop

/* 807E2AF4-807E2AF8 000168 0004+00 0/1 0/0 0/0 .rodata          @6575 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6575 = -16600.0f;
COMPILER_STRIP_GATE(0x807E2AF4, &lit_6575);
#pragma pop

/* 807E2AF8-807E2AFC 00016C 0004+00 0/1 0/0 0/0 .rodata          @6576 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6576 = 31.0f;
COMPILER_STRIP_GATE(0x807E2AF8, &lit_6576);
#pragma pop

/* 807E2AFC-807E2B00 000170 0004+00 0/1 0/0 0/0 .rodata          @6577 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6577 = 38.0f;
COMPILER_STRIP_GATE(0x807E2AFC, &lit_6577);
#pragma pop

/* 807E2B00-807E2B04 000174 0004+00 0/1 0/0 0/0 .rodata          @6578 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6578 = 65.0f;
COMPILER_STRIP_GATE(0x807E2B00, &lit_6578);
#pragma pop

/* 807E2B04-807E2B08 000178 0004+00 0/1 0/0 0/0 .rodata          @6579 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6579 = 108.0f;
COMPILER_STRIP_GATE(0x807E2B04, &lit_6579);
#pragma pop

/* 807E2B08-807E2B0C 00017C 0004+00 0/1 0/0 0/0 .rodata          @6580 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6580 = 82.0f;
COMPILER_STRIP_GATE(0x807E2B08, &lit_6580);
#pragma pop

/* 807E2B0C-807E2B10 000180 0004+00 0/1 0/0 0/0 .rodata          @6581 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6581 = 106.0f;
COMPILER_STRIP_GATE(0x807E2B0C, &lit_6581);
#pragma pop

/* 807E2B10-807E2B14 000184 0004+00 0/1 0/0 0/0 .rodata          @6582 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6582 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x807E2B10, &lit_6582);
#pragma pop

/* 807E2B14-807E2B18 000188 0004+00 0/2 0/0 0/0 .rodata          @6583 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6583 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x807E2B14, &lit_6583);
#pragma pop

/* 807E2B18-807E2B1C 00018C 0004+00 0/2 0/0 0/0 .rodata          @6584 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6584 = 3.0f / 50.0f;
COMPILER_STRIP_GATE(0x807E2B18, &lit_6584);
#pragma pop

/* 807E2B1C-807E2B20 000190 0004+00 0/3 0/0 0/0 .rodata          @6585 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6585 = 10000.0f;
COMPILER_STRIP_GATE(0x807E2B1C, &lit_6585);
#pragma pop

/* 807E2B20-807E2B24 000194 0004+00 0/2 0/0 0/0 .rodata          @6586 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6586 = 35350.0f;
COMPILER_STRIP_GATE(0x807E2B20, &lit_6586);
#pragma pop

/* 807E2B24-807E2B28 000198 0004+00 0/2 0/0 0/0 .rodata          @6587 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6587 = 34243.0f;
COMPILER_STRIP_GATE(0x807E2B24, &lit_6587);
#pragma pop

/* 807E2B28-807E2B2C 00019C 0004+00 0/3 0/0 0/0 .rodata          @6588 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6588 = 34800.0f;
COMPILER_STRIP_GATE(0x807E2B28, &lit_6588);
#pragma pop

/* 807E2B2C-807E2B30 0001A0 0004+00 0/1 0/0 0/0 .rodata          @6589 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6589 = -300.0f;
COMPILER_STRIP_GATE(0x807E2B2C, &lit_6589);
#pragma pop

/* 807E2B30-807E2B34 0001A4 0004+00 0/1 0/0 0/0 .rodata          @6590 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6590 = -15150.0f;
COMPILER_STRIP_GATE(0x807E2B30, &lit_6590);
#pragma pop

/* 807E2B34-807E2B38 0001A8 0004+00 0/2 0/0 0/0 .rodata          @6591 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6591 = -37200.0f;
COMPILER_STRIP_GATE(0x807E2B34, &lit_6591);
#pragma pop

/* 807E3718-807E3724 0001A8 000C+00 0/1 0/0 0/0 .bss             @6279 */
#pragma push
#pragma force_active on
static u8 lit_6279[12];
#pragma pop

/* 807E3724-807E3730 0001B4 000C+00 0/2 0/0 0/0 .bss             saku_p */
#pragma push
#pragma force_active on
static u8 saku_p[12];
#pragma pop

/* 807E3730-807E373C 0001C0 000C+00 0/1 0/0 0/0 .bss             @6280 */
#pragma push
#pragma force_active on
static u8 lit_6280[12];
#pragma pop

/* 807E373C-807E3748 0001CC 000C+00 0/2 0/0 0/0 .bss             saku_p2 */
#pragma push
#pragma force_active on
static u8 saku_p2[12];
#pragma pop

/* 807E3748-807E3758 0001D8 000C+04 0/1 0/0 0/0 .bss             @6285 */
#pragma push
#pragma force_active on
static u8 lit_6285[12 + 4 /* padding */];
#pragma pop

/* 807E3758-807E3764 0001E8 000C+00 0/1 0/0 0/0 .bss             @6288 */
#pragma push
#pragma force_active on
static u8 lit_6288[12];
#pragma pop

/* 807E3764-807E377C 0001F4 0018+00 0/1 0/0 0/0 .bss             ikki_pos$6284 */
#pragma push
#pragma force_active on
static u8 ikki_pos[24];
#pragma pop

/* 807E377C-807E378C 00020C 000C+04 0/1 0/0 0/0 .bss             @6400 */
#pragma push
#pragma force_active on
static u8 lit_6400[12 + 4 /* padding */];
#pragma pop

/* 807E378C-807E3798 00021C 000C+00 0/1 0/0 0/0 .bss             @6403 */
#pragma push
#pragma force_active on
static u8 lit_6403[12];
#pragma pop

/* 807E3798-807E37B0 000228 0018+00 0/1 0/0 0/0 .bss             f_pos$6399 */
#pragma push
#pragma force_active on
static u8 f_pos[24];
#pragma pop

/* 807D6CE0-807D79B0 004940 0CD0+00 1/1 0/0 0/0 .text            e_wb_b_ikki__FP10e_wb_class */
static void e_wb_b_ikki(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D79B0-807D79EC 005610 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 807D79EC-807D7AD4 00564C 00E8+00 1/1 0/0 0/0 .text            e_wb_b_ikki_end__FP10e_wb_class */
static void e_wb_b_ikki_end(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2B38-807E2B3C 0001AC 0004+00 0/2 0/0 0/0 .rodata          @6816 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6816 = -93620.0f;
COMPILER_STRIP_GATE(0x807E2B38, &lit_6816);
#pragma pop

/* 807E2B3C-807E2B40 0001B0 0004+00 0/1 0/0 0/0 .rodata          @6817 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6817 = -5750.0f;
COMPILER_STRIP_GATE(0x807E2B3C, &lit_6817);
#pragma pop

/* 807E2B40-807E2B44 0001B4 0004+00 0/1 0/0 0/0 .rodata          @6818 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6818 = 48944.0f;
COMPILER_STRIP_GATE(0x807E2B40, &lit_6818);
#pragma pop

/* 807E2B44-807E2B48 0001B8 0004+00 0/1 0/0 0/0 .rodata          @6819 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6819 = 28423.0f;
COMPILER_STRIP_GATE(0x807E2B44, &lit_6819);
#pragma pop

/* 807E2B48-807E2B4C 0001BC 0004+00 0/1 0/0 0/0 .rodata          @6820 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6820 = 2500.0f;
COMPILER_STRIP_GATE(0x807E2B48, &lit_6820);
#pragma pop

/* 807E2F0C-807E2F0C 000580 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807E2F14 = "RiderBoss";
SECTION_DEAD static char const* const stringBase_807E2F1E = "action";
#pragma pop

/* 807E37B0-807E37C0 000240 000C+04 0/1 0/0 0/0 .bss             @6612 */
#pragma push
#pragma force_active on
static u8 lit_6612[12 + 4 /* padding */];
#pragma pop

/* 807E37C0-807E37CC 000250 000C+00 0/1 0/0 0/0 .bss             @6615 */
#pragma push
#pragma force_active on
static u8 lit_6615[12];
#pragma pop

/* 807E37CC-807E37E4 00025C 0018+00 0/1 0/0 0/0 .bss             ikki2_pos$6611 */
#pragma push
#pragma force_active on
static u8 ikki2_pos[24];
#pragma pop

/* 807D7AD4-807D8490 005734 09BC+00 1/1 0/0 0/0 .text            e_wb_b_ikki2__FP10e_wb_class */
static void e_wb_b_ikki2(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D8490-807D8648 0060F0 01B8+00 1/1 0/0 0/0 .text            e_wb_b_ikki2_end__FP10e_wb_class */
static void e_wb_b_ikki2_end(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2B4C-807E2B50 0001C0 0004+00 0/1 0/0 0/0 .rodata          @6887 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6887 = -7080.0f;
COMPILER_STRIP_GATE(0x807E2B4C, &lit_6887);
#pragma pop

/* 807E2B50-807E2B54 0001C4 0004+00 0/1 0/0 0/0 .rodata          @6888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6888 = -6634.0f;
COMPILER_STRIP_GATE(0x807E2B50, &lit_6888);
#pragma pop

/* 807E2B54-807E2B58 0001C8 0004+00 0/1 0/0 0/0 .rodata          @6889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6889 = -10008.0f;
COMPILER_STRIP_GATE(0x807E2B54, &lit_6889);
#pragma pop

/* 807E2B58-807E2B5C 0001CC 0004+00 0/1 0/0 0/0 .rodata          @6890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6890 = -2729.0f;
COMPILER_STRIP_GATE(0x807E2B58, &lit_6890);
#pragma pop

/* 807D8648-807D88D8 0062A8 0290+00 2/1 0/0 0/0 .text            e_wb_b_lv9_end__FP10e_wb_class */
static void e_wb_b_lv9_end(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2B5C-807E2B60 0001D0 0004+00 0/0 0/0 0/0 .rodata          @6891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6891 = -12682.0f;
COMPILER_STRIP_GATE(0x807E2B5C, &lit_6891);
#pragma pop

/* 807E2B60-807E2B64 0001D4 0004+00 0/0 0/0 0/0 .rodata          @6892 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6892 = -2701.0f;
COMPILER_STRIP_GATE(0x807E2B60, &lit_6892);
#pragma pop

/* 807E2B64-807E2B68 0001D8 0004+00 0/1 0/0 0/0 .rodata          @6914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6914 = 7.0f / 5.0f;
COMPILER_STRIP_GATE(0x807E2B64, &lit_6914);
#pragma pop

/* 807D88D8-807D8A78 006538 01A0+00 1/1 0/0 0/0 .text            e_wb_a_run__FP10e_wb_class */
static void e_wb_a_run(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D8A78-807D8C3C 0066D8 01C4+00 1/1 0/0 0/0 .text            e_wb_s_damage__FP10e_wb_class */
static void e_wb_s_damage(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2B68-807E2B6C 0001DC 0004+00 0/1 0/0 0/0 .rodata          @7041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7041 = -15.0f;
COMPILER_STRIP_GATE(0x807E2B68, &lit_7041);
#pragma pop

/* 807E2B6C-807E2B70 0001E0 0004+00 0/1 0/0 0/0 .rodata          @7042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7042 = 70.0f;
COMPILER_STRIP_GATE(0x807E2B6C, &lit_7042);
#pragma pop

/* 807D8C3C-807D901C 00689C 03E0+00 1/1 0/0 0/0 .text            e_wb_damage__FP10e_wb_class */
static void e_wb_damage(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D901C-807D91EC 006C7C 01D0+00 1/1 0/0 0/0 .text            e_wb_bg_damage__FP10e_wb_class */
static void e_wb_bg_damage(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2B70-807E2B74 0001E4 0004+00 0/2 0/0 0/0 .rodata          @7178 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7178 = -50.0f;
COMPILER_STRIP_GATE(0x807E2B70, &lit_7178);
#pragma pop

/* 807D91EC-807D9608 006E4C 041C+00 1/1 0/0 0/0 .text            e_wb_lr_damage__FP10e_wb_class */
static void e_wb_lr_damage(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D9608-807D9698 007268 0090+00 1/1 0/0 0/0 .text            e_wb_kiba_start__FP10e_wb_class */
static void e_wb_kiba_start(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2B74-807E2B78 0001E8 0004+00 0/1 0/0 0/0 .rodata          @7227 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7227 = 34000.0f;
COMPILER_STRIP_GATE(0x807E2B74, &lit_7227);
#pragma pop

/* 807E2B78-807E2B7C 0001EC 0004+00 0/1 0/0 0/0 .rodata          @7228 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7228 = 35500.0f;
COMPILER_STRIP_GATE(0x807E2B78, &lit_7228);
#pragma pop

/* 807E2B7C-807E2B80 0001F0 0004+00 0/1 0/0 0/0 .rodata          @7229 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7229 = -14500.0f;
COMPILER_STRIP_GATE(0x807E2B7C, &lit_7229);
#pragma pop

/* 807D9698-807D98D4 0072F8 023C+00 1/1 0/0 0/0 .text            e_wb_kiba_end__FP10e_wb_class */
static void e_wb_kiba_end(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D98D4-807D9D44 007534 0470+00 1/1 0/0 0/0 .text            damage_check__FP10e_wb_class */
static void damage_check(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2B80-807E2B84 0001F4 0004+00 0/2 0/0 0/0 .rodata          @7668 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7668 = 11.0f;
COMPILER_STRIP_GATE(0x807E2B80, &lit_7668);
#pragma pop

/* 807E2B84-807E2B88 0001F8 0004+00 0/1 0/0 0/0 .rodata          @7669 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7669 = 13.0f;
COMPILER_STRIP_GATE(0x807E2B84, &lit_7669);
#pragma pop

/* 807E2B88-807E2B8C 0001FC 0004+00 0/2 0/0 0/0 .rodata          @7670 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7670 = 4.0f;
COMPILER_STRIP_GATE(0x807E2B88, &lit_7670);
#pragma pop

/* 807E37E4-807E37F4 000274 000C+04 0/1 0/0 0/0 .bss             @7515 */
#pragma push
#pragma force_active on
static u8 lit_7515[12 + 4 /* padding */];
#pragma pop

/* 807E37F4-807E3800 000284 000C+00 0/1 0/0 0/0 .bss             sc$7514 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 807D9D44-807DA5D8 0079A4 0894+00 1/1 0/0 0/0 .text            effect_set__FP10e_wb_class */
static void effect_set(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807DA5D8-807DA6EC 008238 0114+00 1/1 0/0 0/0 .text            wb_rd_reset__FP10e_wb_class */
static void wb_rd_reset(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807DA6EC-807DA798 00834C 00AC+00 1/1 0/0 0/0 .text            wb_c_rd_reset__FP10e_wb_class */
static void wb_c_rd_reset(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807DA798-807DA7F0 0083F8 0058+00 1/1 0/0 0/0 .text            s_rddel_sub__FPvPv */
static void s_rddel_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E3800-807E3804 000290 0004+00 1/1 0/0 0/0 .bss             rd_count */
static u8 rd_count[4];

/* 807DA7F0-807DA868 008450 0078+00 1/1 0/0 0/0 .text            s_rdcount_sub__FPvPv */
static void s_rdcount_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 807DA868-807DA8E0 0084C8 0078+00 1/1 0/0 0/0 .text            s_rddel2_sub__FPvPv */
static void s_rddel2_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2B8C-807E2B90 000200 0004+00 0/1 0/0 0/0 .rodata          @7770 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7770 = 482.0f;
COMPILER_STRIP_GATE(0x807E2B8C, &lit_7770);
#pragma pop

/* 807E2B90-807E2B94 000204 0004+00 0/1 0/0 0/0 .rodata          @7771 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7771 = 3100.0f;
COMPILER_STRIP_GATE(0x807E2B90, &lit_7771);
#pragma pop

/* 807E2B94-807E2B98 000208 0004+00 0/1 0/0 0/0 .rodata          @7772 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7772 = 550.0f;
COMPILER_STRIP_GATE(0x807E2B94, &lit_7772);
#pragma pop

/* 807DA8E0-807DAA00 008540 0120+00 1/1 0/0 0/0 .text            e_wb_crv_wait__FP10e_wb_class */
static void e_wb_crv_wait(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2B98-807E2B9C 00020C 0004+00 0/1 0/0 0/0 .rodata          @8125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8125 = -46137.0f;
COMPILER_STRIP_GATE(0x807E2B98, &lit_8125);
#pragma pop

/* 807E2B9C-807E2BA0 000210 0004+00 0/1 0/0 0/0 .rodata          @8126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8126 = 81549.0f;
COMPILER_STRIP_GATE(0x807E2B9C, &lit_8126);
#pragma pop

/* 807E2BA0-807E2BA4 000214 0004+00 0/1 0/0 0/0 .rodata          @8127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8127 = -7650.0f;
COMPILER_STRIP_GATE(0x807E2BA0, &lit_8127);
#pragma pop

/* 807E2BA4-807E2BA8 000218 0004+00 0/1 0/0 0/0 .rodata          @8128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8128 = 56877.0f;
COMPILER_STRIP_GATE(0x807E2BA4, &lit_8128);
#pragma pop

/* 807E2BA8-807E2BAC 00021C 0004+00 0/1 0/0 0/0 .rodata          @8129 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8129 = -62943.0f;
COMPILER_STRIP_GATE(0x807E2BA8, &lit_8129);
#pragma pop

/* 807E2BAC-807E2BB0 000220 0004+00 0/1 0/0 0/0 .rodata          @8130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8130 = -9045.0f;
COMPILER_STRIP_GATE(0x807E2BAC, &lit_8130);
#pragma pop

/* 807E2BB0-807E2BB4 000224 0004+00 0/1 0/0 0/0 .rodata          @8131 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8131 = 70997.0f;
COMPILER_STRIP_GATE(0x807E2BB0, &lit_8131);
#pragma pop

/* 807DAA00-807DB7E4 008660 0DE4+00 2/1 0/0 0/0 .text            e_wb_c_run__FP10e_wb_class */
static void e_wb_c_run(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2F0C-807E2F0C 000580 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807E2F25 = "F_SP124";
SECTION_DEAD static char const* const stringBase_807E2F2D = "D_MN09";
#pragma pop

/* 807DB7E4-807DBEE8 009444 0704+00 2/1 0/0 0/0 .text            action__FP10e_wb_class */
static void action(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807DBEE8-807DBF50 009B48 0068+00 1/1 0/0 0/0 .text            s_wbZrevise_sub__FPvPv */
static void s_wbZrevise_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 807DBF50-807DBFAC 009BB0 005C+00 1/1 0/0 0/0 .text            s_spd0_sub__FPvPv */
static void s_spd0_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 807DBFAC-807DC004 009C0C 0058+00 1/1 0/0 0/0 .text            s_wbdel_sub__FPvPv */
static void s_wbdel_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 807DC004-807DC084 009C64 0080+00 1/1 0/0 0/0 .text            s_rdArrowWait_sub__FPvPv */
static void s_rdArrowWait_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 807DC084-807DC168 009CE4 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP10e_wb_classf */
static void cam_3d_morf(e_wb_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2BB4-807E2BB8 000228 0004+00 0/0 0/0 0/0 .rodata          @8132 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8132 = -700.0f;
COMPILER_STRIP_GATE(0x807E2BB4, &lit_8132);
#pragma pop

/* 807E2BB8-807E2BBC 00022C 0004+00 0/1 0/0 0/0 .rodata          @8133 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8133 = -150.0f;
COMPILER_STRIP_GATE(0x807E2BB8, &lit_8133);
#pragma pop

/* 807E2BBC-807E2BC0 000230 0004+00 0/0 0/0 0/0 .rodata          @8134 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8134 = 4025.0f;
COMPILER_STRIP_GATE(0x807E2BBC, &lit_8134);
#pragma pop

/* 807E2BC0-807E2BC4 000234 0004+00 0/0 0/0 0/0 .rodata          @8135 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8135 = 52319.0f;
COMPILER_STRIP_GATE(0x807E2BC0, &lit_8135);
#pragma pop

/* 807E2BC4-807E2BC8 000238 0004+00 0/1 0/0 0/0 .rodata          @8375 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8375 = 65535.0f;
COMPILER_STRIP_GATE(0x807E2BC4, &lit_8375);
#pragma pop

/* 807E2BC8-807E2BCC 00023C 0004+00 0/0 0/0 0/0 .rodata          @8376 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8376 = -120.0f;
COMPILER_STRIP_GATE(0x807E2BC8, &lit_8376);
#pragma pop

/* 807E2BCC-807E2BD0 000240 0004+00 0/1 0/0 0/0 .rodata          @9215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9215 = -66.0f;
COMPILER_STRIP_GATE(0x807E2BCC, &lit_9215);
#pragma pop

/* 807E2BD0-807E2BD4 000244 0004+00 0/1 0/0 0/0 .rodata          @9216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9216 = -604.0f;
COMPILER_STRIP_GATE(0x807E2BD0, &lit_9216);
#pragma pop

/* 807E2BD4-807E2BD8 000248 0004+00 0/1 0/0 0/0 .rodata          @9217 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9217 = 34700.0f;
COMPILER_STRIP_GATE(0x807E2BD4, &lit_9217);
#pragma pop

/* 807E2BD8-807E2BDC 00024C 0004+00 0/1 0/0 0/0 .rodata          @9218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9218 = 7896.0f;
COMPILER_STRIP_GATE(0x807E2BD8, &lit_9218);
#pragma pop

/* 807E2BDC-807E2BE0 000250 0004+00 0/1 0/0 0/0 .rodata          @9219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9219 = 34900.0f;
COMPILER_STRIP_GATE(0x807E2BDC, &lit_9219);
#pragma pop

/* 807E2BE0-807E2BE4 000254 0004+00 0/1 0/0 0/0 .rodata          @9220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9220 = -280.0f;
COMPILER_STRIP_GATE(0x807E2BE0, &lit_9220);
#pragma pop

/* 807E2BE4-807E2BE8 000258 0004+00 0/1 0/0 0/0 .rodata          @9221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9221 = -18048.0f;
COMPILER_STRIP_GATE(0x807E2BE4, &lit_9221);
#pragma pop

/* 807E2BE8-807E2BEC 00025C 0004+00 0/1 0/0 0/0 .rodata          @9222 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9222 = 1200.0f;
COMPILER_STRIP_GATE(0x807E2BE8, &lit_9222);
#pragma pop

/* 807E2BEC-807E2BF0 000260 0004+00 0/2 0/0 0/0 .rodata          @9223 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9223 = 1100.0f;
COMPILER_STRIP_GATE(0x807E2BEC, &lit_9223);
#pragma pop

/* 807E2F0C-807E2F0C 000580 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807E2F34 = "F_SP102";
SECTION_DEAD static char const* const stringBase_807E2F3C = "F_SP121";
#pragma pop

/* 807DC168-807DFAB4 009DC8 394C+00 2/1 0/0 0/0 .text            demo_camera__FP10e_wb_class */
static void demo_camera(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807DFAD8-807DFAEC 00D738 0014+00 1/1 0/0 0/0 .text            checkSkipEdge__14dEvt_control_cFv
 */
extern "C" void checkSkipEdge__14dEvt_control_cFv() {
    // NONMATCHING
}

/* 807DFAEC-807DFB04 00D74C 0018+00 1/1 0/0 0/0 .text            cM_scos__Fs */
// static void cM_scos(s16 param_0) {
extern "C" void cM_scos__Fs() {
    // NONMATCHING
}

/* 807DFB04-807DFB18 00D764 0014+00 1/1 0/0 0/0 .text            cM_ssin__Fs */
// static void cM_ssin(s16 param_0) {
extern "C" void cM_ssin__Fs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2BF0-807E2BF4 000264 0004+00 0/0 0/0 0/0 .rodata          @9224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9224 = 350.0f;
COMPILER_STRIP_GATE(0x807E2BF0, &lit_9224);
#pragma pop

/* 807E2BF4-807E2BF8 000268 0004+00 0/1 0/0 0/0 .rodata          @9225 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9225 = 12.0f;
COMPILER_STRIP_GATE(0x807E2BF4, &lit_9225);
#pragma pop

/* 807E2BF8-807E2BFC 00026C 0004+00 0/0 0/0 0/0 .rodata          @9226 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9226 = -26400.0f;
COMPILER_STRIP_GATE(0x807E2BF8, &lit_9226);
#pragma pop

/* 807E2BFC-807E2C00 000270 0004+00 0/0 0/0 0/0 .rodata          @9227 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9227 = -36400.0f;
COMPILER_STRIP_GATE(0x807E2BFC, &lit_9227);
#pragma pop

/* 807E2C00-807E2C04 000274 0004+00 0/0 0/0 0/0 .rodata          @9228 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9228 = -16400.0f;
COMPILER_STRIP_GATE(0x807E2C00, &lit_9228);
#pragma pop

/* 807E2C04-807E2C08 000278 0004+00 0/0 0/0 0/0 .rodata          @9229 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9229 = -18000.0f;
COMPILER_STRIP_GATE(0x807E2C04, &lit_9229);
#pragma pop

/* 807E2C08-807E2C0C 00027C 0004+00 0/0 0/0 0/0 .rodata          @9230 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9230 = -25000.0f;
COMPILER_STRIP_GATE(0x807E2C08, &lit_9230);
#pragma pop

/* 807E2C0C-807E2C10 000280 0004+00 0/0 0/0 0/0 .rodata          @9231 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9231 = -27800.0f;
COMPILER_STRIP_GATE(0x807E2C0C, &lit_9231);
#pragma pop

/* 807E2C10-807E2C14 000284 0004+00 0/0 0/0 0/0 .rodata          @9232 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9232 = 48545.0f;
COMPILER_STRIP_GATE(0x807E2C10, &lit_9232);
#pragma pop

/* 807E2C14-807E2C18 000288 0004+00 0/0 0/0 0/0 .rodata          @9233 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9233 = -1884.0f;
COMPILER_STRIP_GATE(0x807E2C14, &lit_9233);
#pragma pop

/* 807E2C18-807E2C1C 00028C 0004+00 0/0 0/0 0/0 .rodata          @9234 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9234 = -27557.0f;
COMPILER_STRIP_GATE(0x807E2C18, &lit_9234);
#pragma pop

/* 807E2C1C-807E2C20 000290 0004+00 0/0 0/0 0/0 .rodata          @9235 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9235 = 49099.0f;
COMPILER_STRIP_GATE(0x807E2C1C, &lit_9235);
#pragma pop

/* 807E2C20-807E2C24 000294 0004+00 0/0 0/0 0/0 .rodata          @9236 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9236 = -27626.0f;
COMPILER_STRIP_GATE(0x807E2C20, &lit_9236);
#pragma pop

/* 807E2C24-807E2C28 000298 0004+00 0/0 0/0 0/0 .rodata          @9237 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9237 = -3500.0f;
COMPILER_STRIP_GATE(0x807E2C24, &lit_9237);
#pragma pop

/* 807E2C28-807E2C2C 00029C 0004+00 0/0 0/0 0/0 .rodata          @9238 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9238 = -200.0f;
COMPILER_STRIP_GATE(0x807E2C28, &lit_9238);
#pragma pop

/* 807E2C2C-807E2C30 0002A0 0004+00 0/0 0/0 0/0 .rodata          @9239 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9239 = -600.0f;
COMPILER_STRIP_GATE(0x807E2C2C, &lit_9239);
#pragma pop

/* 807E2C30-807E2C34 0002A4 0004+00 0/0 0/0 0/0 .rodata          @9240 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9240 = -8592.0f;
COMPILER_STRIP_GATE(0x807E2C30, &lit_9240);
#pragma pop

/* 807E2C34-807E2C38 0002A8 0004+00 0/0 0/0 0/0 .rodata          @9241 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9241 = 342.0f;
COMPILER_STRIP_GATE(0x807E2C34, &lit_9241);
#pragma pop

/* 807E2C38-807E2C3C 0002AC 0004+00 0/0 0/0 0/0 .rodata          @9242 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9242 = -139.0f;
COMPILER_STRIP_GATE(0x807E2C38, &lit_9242);
#pragma pop

/* 807E2C3C-807E2C40 0002B0 0004+00 0/0 0/0 0/0 .rodata          @9243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9243 = -8844.0f;
COMPILER_STRIP_GATE(0x807E2C3C, &lit_9243);
#pragma pop

/* 807E2C40-807E2C44 0002B4 0004+00 0/0 0/0 0/0 .rodata          @9244 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9244 = 317.0f;
COMPILER_STRIP_GATE(0x807E2C40, &lit_9244);
#pragma pop

/* 807E2C44-807E2C48 0002B8 0004+00 0/0 0/0 0/0 .rodata          @9245 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9245 = 512.0f;
COMPILER_STRIP_GATE(0x807E2C44, &lit_9245);
#pragma pop

/* 807E2C48-807E2C4C 0002BC 0004+00 0/0 0/0 0/0 .rodata          @9246 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9246 = -8416.0f;
COMPILER_STRIP_GATE(0x807E2C48, &lit_9246);
#pragma pop

/* 807E2C4C-807E2C50 0002C0 0004+00 0/0 0/0 0/0 .rodata          @9247 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9247 = 345.0f;
COMPILER_STRIP_GATE(0x807E2C4C, &lit_9247);
#pragma pop

/* 807E2C50-807E2C54 0002C4 0004+00 0/0 0/0 0/0 .rodata          @9248 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9248 = -8994.0f;
COMPILER_STRIP_GATE(0x807E2C50, &lit_9248);
#pragma pop

/* 807E2C54-807E2C58 0002C8 0004+00 0/0 0/0 0/0 .rodata          @9249 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9249 = 326.0f;
COMPILER_STRIP_GATE(0x807E2C54, &lit_9249);
#pragma pop

/* 807E2C58-807E2C5C 0002CC 0004+00 0/0 0/0 0/0 .rodata          @9250 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9250 = -10425.0f;
COMPILER_STRIP_GATE(0x807E2C58, &lit_9250);
#pragma pop

/* 807E2C5C-807E2C60 0002D0 0004+00 0/0 0/0 0/0 .rodata          @9251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9251 = 75.0f;
COMPILER_STRIP_GATE(0x807E2C5C, &lit_9251);
#pragma pop

/* 807E2C60-807E2C64 0002D4 0004+00 0/0 0/0 0/0 .rodata          @9252 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9252 = -8705.0f;
COMPILER_STRIP_GATE(0x807E2C60, &lit_9252);
#pragma pop

/* 807E2C64-807E2C68 0002D8 0004+00 0/0 0/0 0/0 .rodata          @9253 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9253 = 213.0f;
COMPILER_STRIP_GATE(0x807E2C64, &lit_9253);
#pragma pop

/* 807E2C68-807E2C6C 0002DC 0004+00 0/0 0/0 0/0 .rodata          @9254 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9254 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x807E2C68, &lit_9254);
#pragma pop

/* 807E2C6C-807E2C70 0002E0 0004+00 0/0 0/0 0/0 .rodata          @9255 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9255 = 0x3A83126F;
COMPILER_STRIP_GATE(0x807E2C6C, &lit_9255);
#pragma pop

/* 807E2C70-807E2C74 0002E4 0004+00 0/0 0/0 0/0 .rodata          @9256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9256 = -9224.0f;
COMPILER_STRIP_GATE(0x807E2C70, &lit_9256);
#pragma pop

/* 807E2C74-807E2C78 0002E8 0004+00 0/0 0/0 0/0 .rodata          @9257 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9257 = -8586.0f;
COMPILER_STRIP_GATE(0x807E2C74, &lit_9257);
#pragma pop

/* 807E2C78-807E2C7C 0002EC 0004+00 0/0 0/0 0/0 .rodata          @9258 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9258 = 447.0f;
COMPILER_STRIP_GATE(0x807E2C78, &lit_9258);
#pragma pop

/* 807E2C7C-807E2C80 0002F0 0004+00 0/1 0/0 0/0 .rodata          @9259 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9259 = 18.0f;
COMPILER_STRIP_GATE(0x807E2C7C, &lit_9259);
#pragma pop

/* 807E2C80-807E2C84 0002F4 0004+00 0/0 0/0 0/0 .rodata          @9260 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9260 = 85.0f;
COMPILER_STRIP_GATE(0x807E2C80, &lit_9260);
#pragma pop

/* 807E2C84-807E2C88 0002F8 0004+00 0/0 0/0 0/0 .rodata          @9261 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9261 = -10.0f;
COMPILER_STRIP_GATE(0x807E2C84, &lit_9261);
#pragma pop

/* 807E2C88-807E2C8C 0002FC 0004+00 0/0 0/0 0/0 .rodata          @9262 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9262 = 180.0f;
COMPILER_STRIP_GATE(0x807E2C88, &lit_9262);
#pragma pop

/* 807E2C8C-807E2C90 000300 0004+00 0/0 0/0 0/0 .rodata          @9263 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9263 = 0x3A03126F;
COMPILER_STRIP_GATE(0x807E2C8C, &lit_9263);
#pragma pop

/* 807E2C90-807E2C94 000304 0004+00 0/0 0/0 0/0 .rodata          @9264 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9264 = -9110.0f;
COMPILER_STRIP_GATE(0x807E2C90, &lit_9264);
#pragma pop

/* 807E2C94-807E2C98 000308 0004+00 0/0 0/0 0/0 .rodata          @9265 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9265 = 492.0f;
COMPILER_STRIP_GATE(0x807E2C94, &lit_9265);
#pragma pop

/* 807E2C98-807E2C9C 00030C 0004+00 0/0 0/0 0/0 .rodata          @9266 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9266 = 331.0f;
COMPILER_STRIP_GATE(0x807E2C98, &lit_9266);
#pragma pop

/* 807E2C9C-807E2CA0 000310 0004+00 0/0 0/0 0/0 .rodata          @9267 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9267 = -8469.0f;
COMPILER_STRIP_GATE(0x807E2C9C, &lit_9267);
#pragma pop

/* 807E2CA0-807E2CA4 000314 0004+00 0/0 0/0 0/0 .rodata          @9268 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9268 = 372.0f;
COMPILER_STRIP_GATE(0x807E2CA0, &lit_9268);
#pragma pop

/* 807E2CA4-807E2CA8 000318 0004+00 0/0 0/0 0/0 .rodata          @9269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9269 = -54.0f;
COMPILER_STRIP_GATE(0x807E2CA4, &lit_9269);
#pragma pop

/* 807E2CA8-807E2CAC 00031C 0004+00 0/0 0/0 0/0 .rodata          @9270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9270 = -12800.0f;
COMPILER_STRIP_GATE(0x807E2CA8, &lit_9270);
#pragma pop

/* 807E2CAC-807E2CB0 000320 0004+00 0/0 0/0 0/0 .rodata          @9271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9271 = 153.0f;
COMPILER_STRIP_GATE(0x807E2CAC, &lit_9271);
#pragma pop

/* 807E2CB0-807E2CB4 000324 0004+00 0/0 0/0 0/0 .rodata          @9272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9272 = 51.0f;
COMPILER_STRIP_GATE(0x807E2CB0, &lit_9272);
#pragma pop

/* 807E2CB4-807E2CB8 000328 0004+00 0/0 0/0 0/0 .rodata          @9273 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9273 = -12022.0f;
COMPILER_STRIP_GATE(0x807E2CB4, &lit_9273);
#pragma pop

/* 807E2CB8-807E2CBC 00032C 0004+00 0/0 0/0 0/0 .rodata          @9274 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9274 = -13168.0f;
COMPILER_STRIP_GATE(0x807E2CB8, &lit_9274);
#pragma pop

/* 807E2CBC-807E2CC0 000330 0004+00 0/0 0/0 0/0 .rodata          @9275 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9275 = 163.0f;
COMPILER_STRIP_GATE(0x807E2CBC, &lit_9275);
#pragma pop

/* 807E2CC0-807E2CC4 000334 0004+00 0/0 0/0 0/0 .rodata          @9276 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9276 = -12500.0f;
COMPILER_STRIP_GATE(0x807E2CC0, &lit_9276);
#pragma pop

/* 807E2CC4-807E2CC8 000338 0004+00 0/0 0/0 0/0 .rodata          @9277 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9277 = 83.0f;
COMPILER_STRIP_GATE(0x807E2CC4, &lit_9277);
#pragma pop

/* 807E2CC8-807E2CCC 00033C 0004+00 0/0 0/0 0/0 .rodata          @9278 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9278 = -593.0f;
COMPILER_STRIP_GATE(0x807E2CC8, &lit_9278);
#pragma pop

/* 807E2CCC-807E2CD0 000340 0004+00 0/0 0/0 0/0 .rodata          @9279 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9279 = 0x391D4952;
COMPILER_STRIP_GATE(0x807E2CCC, &lit_9279);
#pragma pop

/* 807E2CD0-807E2CD4 000344 0004+00 0/0 0/0 0/0 .rodata          @9280 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9280 = 36156.0f;
COMPILER_STRIP_GATE(0x807E2CD0, &lit_9280);
#pragma pop

/* 807E2CD4-807E2CD8 000348 0004+00 0/0 0/0 0/0 .rodata          @9281 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9281 = 985.0f;
COMPILER_STRIP_GATE(0x807E2CD4, &lit_9281);
#pragma pop

/* 807E2CD8-807E2CDC 00034C 0004+00 0/0 0/0 0/0 .rodata          @9282 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9282 = -16931.0f;
COMPILER_STRIP_GATE(0x807E2CD8, &lit_9282);
#pragma pop

/* 807E2CDC-807E2CE0 000350 0004+00 0/0 0/0 0/0 .rodata          @9283 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9283 = 36496.0f;
COMPILER_STRIP_GATE(0x807E2CDC, &lit_9283);
#pragma pop

/* 807E2CE0-807E2CE4 000354 0004+00 0/0 0/0 0/0 .rodata          @9284 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9284 = 1358.0f;
COMPILER_STRIP_GATE(0x807E2CE0, &lit_9284);
#pragma pop

/* 807E2CE4-807E2CE8 000358 0004+00 0/0 0/0 0/0 .rodata          @9285 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9285 = -17344.0f;
COMPILER_STRIP_GATE(0x807E2CE4, &lit_9285);
#pragma pop

/* 807E2CE8-807E2CEC 00035C 0004+00 0/0 0/0 0/0 .rodata          @9286 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9286 = 36453.0f;
COMPILER_STRIP_GATE(0x807E2CE8, &lit_9286);
#pragma pop

/* 807E2CEC-807E2CF0 000360 0004+00 0/0 0/0 0/0 .rodata          @9287 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9287 = 1116.0f;
COMPILER_STRIP_GATE(0x807E2CEC, &lit_9287);
#pragma pop

/* 807E2CF0-807E2CF4 000364 0004+00 0/0 0/0 0/0 .rodata          @9288 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9288 = -16995.0f;
COMPILER_STRIP_GATE(0x807E2CF0, &lit_9288);
#pragma pop

/* 807E2CF4-807E2CF8 000368 0004+00 0/0 0/0 0/0 .rodata          @9289 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9289 = 35835.0f;
COMPILER_STRIP_GATE(0x807E2CF4, &lit_9289);
#pragma pop

/* 807E2CF8-807E2CFC 00036C 0004+00 0/0 0/0 0/0 .rodata          @9290 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9290 = 955.0f;
COMPILER_STRIP_GATE(0x807E2CF8, &lit_9290);
#pragma pop

/* 807E2CFC-807E2D00 000370 0004+00 0/0 0/0 0/0 .rodata          @9291 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9291 = -16867.0f;
COMPILER_STRIP_GATE(0x807E2CFC, &lit_9291);
#pragma pop

/* 807E2D00-807E2D04 000374 0004+00 0/0 0/0 0/0 .rodata          @9292 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9292 = -15200.0f;
COMPILER_STRIP_GATE(0x807E2D00, &lit_9292);
#pragma pop

/* 807E2D04-807E2D08 000378 0004+00 0/0 0/0 0/0 .rodata          @9293 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9293 = -20000.0f;
COMPILER_STRIP_GATE(0x807E2D04, &lit_9293);
#pragma pop

/* 807E2D08-807E2D0C 00037C 0004+00 0/0 0/0 0/0 .rodata          @9294 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9294 = 35528.0f;
COMPILER_STRIP_GATE(0x807E2D08, &lit_9294);
#pragma pop

/* 807E2D0C-807E2D10 000380 0004+00 0/0 0/0 0/0 .rodata          @9295 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9295 = 316.0f;
COMPILER_STRIP_GATE(0x807E2D0C, &lit_9295);
#pragma pop

/* 807E2D10-807E2D14 000384 0004+00 0/0 0/0 0/0 .rodata          @9296 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9296 = -16987.0f;
COMPILER_STRIP_GATE(0x807E2D10, &lit_9296);
#pragma pop

/* 807E2D14-807E2D18 000388 0004+00 0/0 0/0 0/0 .rodata          @9297 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9297 = 35059.0f;
COMPILER_STRIP_GATE(0x807E2D14, &lit_9297);
#pragma pop

/* 807E2D18-807E2D1C 00038C 0004+00 0/0 0/0 0/0 .rodata          @9298 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9298 = -128.0f;
COMPILER_STRIP_GATE(0x807E2D18, &lit_9298);
#pragma pop

/* 807E2D1C-807E2D20 000390 0004+00 0/0 0/0 0/0 .rodata          @9299 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9299 = -16992.0f;
COMPILER_STRIP_GATE(0x807E2D1C, &lit_9299);
#pragma pop

/* 807E2D20-807E2D24 000394 0004+00 0/0 0/0 0/0 .rodata          @9300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9300 = 34973.0f;
COMPILER_STRIP_GATE(0x807E2D20, &lit_9300);
#pragma pop

/* 807E2D24-807E2D28 000398 0004+00 0/0 0/0 0/0 .rodata          @9301 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9301 = -148.0f;
COMPILER_STRIP_GATE(0x807E2D24, &lit_9301);
#pragma pop

/* 807E2D28-807E2D2C 00039C 0004+00 0/0 0/0 0/0 .rodata          @9302 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9302 = -16346.0f;
COMPILER_STRIP_GATE(0x807E2D28, &lit_9302);
#pragma pop

/* 807E2D2C-807E2D30 0003A0 0004+00 0/0 0/0 0/0 .rodata          @9303 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9303 = 3.0f / 40.0f;
COMPILER_STRIP_GATE(0x807E2D2C, &lit_9303);
#pragma pop

/* 807E2D30-807E2D34 0003A4 0004+00 0/0 0/0 0/0 .rodata          @9304 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9304 = 0x417B3333;
COMPILER_STRIP_GATE(0x807E2D30, &lit_9304);
#pragma pop

/* 807E2D34-807E2D38 0003A8 0004+00 0/0 0/0 0/0 .rodata          @9305 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9305 = -16820.0f;
COMPILER_STRIP_GATE(0x807E2D34, &lit_9305);
#pragma pop

/* 807E2D38-807E2D3C 0003AC 0004+00 0/0 0/0 0/0 .rodata          @9306 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9306 = -16170.0f;
COMPILER_STRIP_GATE(0x807E2D38, &lit_9306);
#pragma pop

/* 807E2D3C-807E2D40 0003B0 0004+00 0/0 0/0 0/0 .rodata          @9307 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9307 = 4.5f;
COMPILER_STRIP_GATE(0x807E2D3C, &lit_9307);
#pragma pop

/* 807E2D40-807E2D44 0003B4 0004+00 0/0 0/0 0/0 .rodata          @9308 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9308 = 34843.0f;
COMPILER_STRIP_GATE(0x807E2D40, &lit_9308);
#pragma pop

/* 807E2D44-807E2D48 0003B8 0004+00 0/0 0/0 0/0 .rodata          @9309 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9309 = 0xC2B96666;
COMPILER_STRIP_GATE(0x807E2D44, &lit_9309);
#pragma pop

/* 807E2D48-807E2D4C 0003BC 0004+00 0/0 0/0 0/0 .rodata          @9310 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9310 = -35956.0f;
COMPILER_STRIP_GATE(0x807E2D48, &lit_9310);
#pragma pop

/* 807E2D4C-807E2D50 0003C0 0004+00 0/0 0/0 0/0 .rodata          @9311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9311 = 35167.0f;
COMPILER_STRIP_GATE(0x807E2D4C, &lit_9311);
#pragma pop

/* 807E2D50-807E2D54 0003C4 0004+00 0/0 0/0 0/0 .rodata          @9312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9312 = -202.0f;
COMPILER_STRIP_GATE(0x807E2D50, &lit_9312);
#pragma pop

/* 807E2D54-807E2D58 0003C8 0004+00 0/0 0/0 0/0 .rodata          @9313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9313 = -35403.0f;
COMPILER_STRIP_GATE(0x807E2D54, &lit_9313);
#pragma pop

/* 807E2D58-807E2D5C 0003CC 0004+00 0/0 0/0 0/0 .rodata          @9314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9314 = 34740.0f;
COMPILER_STRIP_GATE(0x807E2D58, &lit_9314);
#pragma pop

/* 807E2D5C-807E2D60 0003D0 0004+00 0/0 0/0 0/0 .rodata          @9315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9315 = -35966.0f;
COMPILER_STRIP_GATE(0x807E2D5C, &lit_9315);
#pragma pop

/* 807E2D60-807E2D64 0003D4 0004+00 0/0 0/0 0/0 .rodata          @9316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9316 = 34320.0f;
COMPILER_STRIP_GATE(0x807E2D60, &lit_9316);
#pragma pop

/* 807E2D64-807E2D68 0003D8 0004+00 0/0 0/0 0/0 .rodata          @9317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9317 = -35490.0f;
COMPILER_STRIP_GATE(0x807E2D64, &lit_9317);
#pragma pop

/* 807E2D68-807E2D6C 0003DC 0004+00 0/0 0/0 0/0 .rodata          @9318 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9318 = 0x3BA3D70A;
COMPILER_STRIP_GATE(0x807E2D68, &lit_9318);
#pragma pop

/* 807E2D6C-807E2D70 0003E0 0004+00 0/0 0/0 0/0 .rodata          @9319 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9319 = 0x3951B717;
COMPILER_STRIP_GATE(0x807E2D6C, &lit_9319);
#pragma pop

/* 807E2D70-807E2D74 0003E4 0004+00 0/0 0/0 0/0 .rodata          @9320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9320 = -18700.0f;
COMPILER_STRIP_GATE(0x807E2D70, &lit_9320);
#pragma pop

/* 807E2D74-807E2D78 0003E8 0004+00 0/0 0/0 0/0 .rodata          @9321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9321 = 1679.0f;
COMPILER_STRIP_GATE(0x807E2D74, &lit_9321);
#pragma pop

/* 807E2D78-807E2D7C 0003EC 0004+00 0/0 0/0 0/0 .rodata          @9322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9322 = 852.0f;
COMPILER_STRIP_GATE(0x807E2D78, &lit_9322);
#pragma pop

/* 807E2D7C-807E2D80 0003F0 0004+00 0/0 0/0 0/0 .rodata          @9323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9323 = 1873.0f;
COMPILER_STRIP_GATE(0x807E2D7C, &lit_9323);
#pragma pop

/* 807E2D80-807E2D84 0003F4 0004+00 0/0 0/0 0/0 .rodata          @9324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9324 = 64.0f;
COMPILER_STRIP_GATE(0x807E2D80, &lit_9324);
#pragma pop

/* 807E2D84-807E2D88 0003F8 0004+00 0/0 0/0 0/0 .rodata          @9325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9325 = 527.0f;
COMPILER_STRIP_GATE(0x807E2D84, &lit_9325);
#pragma pop

/* 807E2D88-807E2D8C 0003FC 0004+00 0/0 0/0 0/0 .rodata          @9326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9326 = 1787.0f;
COMPILER_STRIP_GATE(0x807E2D88, &lit_9326);
#pragma pop

/* 807E2D8C-807E2D90 000400 0004+00 0/0 0/0 0/0 .rodata          @9327 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9327 = 1.75f;
COMPILER_STRIP_GATE(0x807E2D8C, &lit_9327);
#pragma pop

/* 807E2D90-807E2D94 000404 0004+00 0/0 0/0 0/0 .rodata          @9328 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9328 = 484.0f;
COMPILER_STRIP_GATE(0x807E2D90, &lit_9328);
#pragma pop

/* 807E2D94-807E2D98 000408 0004+00 0/0 0/0 0/0 .rodata          @9329 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9329 = 1634.0f;
COMPILER_STRIP_GATE(0x807E2D94, &lit_9329);
#pragma pop

/* 807E2D98-807E2D9C 00040C 0004+00 0/0 0/0 0/0 .rodata          @9330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9330 = 811.0f;
COMPILER_STRIP_GATE(0x807E2D98, &lit_9330);
#pragma pop

/* 807E2D9C-807E2DA0 000410 0004+00 0/0 0/0 0/0 .rodata          @9331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9331 = 1717.0f;
COMPILER_STRIP_GATE(0x807E2D9C, &lit_9331);
#pragma pop

/* 807E2DA0-807E2DA4 000414 0004+00 0/0 0/0 0/0 .rodata          @9332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9332 = 96.0f;
COMPILER_STRIP_GATE(0x807E2DA0, &lit_9332);
#pragma pop

/* 807E2DA4-807E2DA8 000418 0004+00 0/0 0/0 0/0 .rodata          @9333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9333 = 910.0f;
COMPILER_STRIP_GATE(0x807E2DA4, &lit_9333);
#pragma pop

/* 807E2DA8-807E2DAC 00041C 0004+00 0/0 0/0 0/0 .rodata          @9334 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9334 = 2226.0f;
COMPILER_STRIP_GATE(0x807E2DA8, &lit_9334);
#pragma pop

/* 807E2DAC-807E2DB0 000420 0004+00 0/0 0/0 0/0 .rodata          @9335 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9335 = 56.0f;
COMPILER_STRIP_GATE(0x807E2DAC, &lit_9335);
#pragma pop

/* 807E2DB0-807E2DB4 000424 0004+00 0/0 0/0 0/0 .rodata          @9336 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9336 = 751.0f;
COMPILER_STRIP_GATE(0x807E2DB0, &lit_9336);
#pragma pop

/* 807E2DB4-807E2DB8 000428 0004+00 0/0 0/0 0/0 .rodata          @9337 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9337 = 1780.0f;
COMPILER_STRIP_GATE(0x807E2DB4, &lit_9337);
#pragma pop

/* 807E2DB8-807E2DBC 00042C 0004+00 0/0 0/0 0/0 .rodata          @9338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9338 = 92.0f;
COMPILER_STRIP_GATE(0x807E2DB8, &lit_9338);
#pragma pop

/* 807E2DBC-807E2DC0 000430 0004+00 0/0 0/0 0/0 .rodata          @9339 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9339 = 967.0f;
COMPILER_STRIP_GATE(0x807E2DBC, &lit_9339);
#pragma pop

/* 807E2DC0-807E2DC4 000434 0004+00 0/0 0/0 0/0 .rodata          @9340 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9340 = 1988.0f;
COMPILER_STRIP_GATE(0x807E2DC0, &lit_9340);
#pragma pop

/* 807E2DC4-807E2DC8 000438 0004+00 0/0 0/0 0/0 .rodata          @9341 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9341 = 69.0f;
COMPILER_STRIP_GATE(0x807E2DC4, &lit_9341);
#pragma pop

/* 807E2DC8-807E2DCC 00043C 0004+00 0/0 0/0 0/0 .rodata          @9342 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9342 = 475.0f;
COMPILER_STRIP_GATE(0x807E2DC8, &lit_9342);
#pragma pop

/* 807E2DCC-807E2DD0 000440 0004+00 0/0 0/0 0/0 .rodata          @9343 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9343 = 2297.0f;
COMPILER_STRIP_GATE(0x807E2DCC, &lit_9343);
#pragma pop

/* 807E2DD0-807E2DD4 000444 0004+00 0/0 0/0 0/0 .rodata          @9344 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9344 = 81.0f;
COMPILER_STRIP_GATE(0x807E2DD0, &lit_9344);
#pragma pop

/* 807E2DD4-807E2DD8 000448 0004+00 0/0 0/0 0/0 .rodata          @9345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9345 = 1668.0f;
COMPILER_STRIP_GATE(0x807E2DD4, &lit_9345);
#pragma pop

/* 807E2DD8-807E2DDC 00044C 0004+00 0/0 0/0 0/0 .rodata          @9346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9346 = 2285.0f;
COMPILER_STRIP_GATE(0x807E2DD8, &lit_9346);
#pragma pop

/* 807E2DDC-807E2DE0 000450 0004+00 0/0 0/0 0/0 .rodata          @9347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9347 = 95.0f;
COMPILER_STRIP_GATE(0x807E2DDC, &lit_9347);
#pragma pop

/* 807E2DE0-807E2DE4 000454 0004+00 0/0 0/0 0/0 .rodata          @9348 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9348 = 2341.0f;
COMPILER_STRIP_GATE(0x807E2DE0, &lit_9348);
#pragma pop

/* 807E2DE4-807E2DE8 000458 0004+00 0/0 0/0 0/0 .rodata          @9349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9349 = 1292.0f;
COMPILER_STRIP_GATE(0x807E2DE4, &lit_9349);
#pragma pop

/* 807E2DE8-807E2DEC 00045C 0004+00 0/0 0/0 0/0 .rodata          @9350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9350 = 2120.0f;
COMPILER_STRIP_GATE(0x807E2DE8, &lit_9350);
#pragma pop

/* 807E2DEC-807E2DF0 000460 0004+00 0/0 0/0 0/0 .rodata          @9351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9351 = 2272.0f;
COMPILER_STRIP_GATE(0x807E2DEC, &lit_9351);
#pragma pop

/* 807E2DF0-807E2DF4 000464 0004+00 0/0 0/0 0/0 .rodata          @9352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9352 = 136.0f;
COMPILER_STRIP_GATE(0x807E2DF0, &lit_9352);
#pragma pop

/* 807E2DF4-807E2DF8 000468 0004+00 0/0 0/0 0/0 .rodata          @9353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9353 = 1555.0f;
COMPILER_STRIP_GATE(0x807E2DF4, &lit_9353);
#pragma pop

/* 807E2DF8-807E2DFC 00046C 0004+00 0/0 0/0 0/0 .rodata          @9354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9354 = 2056.0f;
COMPILER_STRIP_GATE(0x807E2DF8, &lit_9354);
#pragma pop

/* 807E2DFC-807E2E00 000470 0004+00 0/0 0/0 0/0 .rodata          @9355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9355 = 160.0f;
COMPILER_STRIP_GATE(0x807E2DFC, &lit_9355);
#pragma pop

/* 807E2E00-807E2E04 000474 0004+00 0/0 0/0 0/0 .rodata          @9356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9356 = 1318.0f;
COMPILER_STRIP_GATE(0x807E2E00, &lit_9356);
#pragma pop

/* 807E2E04-807E2E08 000478 0004+00 0/0 0/0 0/0 .rodata          @9357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9357 = -40.0f;
COMPILER_STRIP_GATE(0x807E2E04, &lit_9357);
#pragma pop

/* 807E2E08-807E2E0C 00047C 0004+00 0/0 0/0 0/0 .rodata          @9358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9358 = 2834.0f;
COMPILER_STRIP_GATE(0x807E2E08, &lit_9358);
#pragma pop

/* 807E2E0C-807E2E10 000480 0004+00 0/0 0/0 0/0 .rodata          @9359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9359 = 490.0f;
COMPILER_STRIP_GATE(0x807E2E0C, &lit_9359);
#pragma pop

/* 807E2E10-807E2E14 000484 0004+00 0/0 0/0 0/0 .rodata          @9360 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9360 = 1584.0f;
COMPILER_STRIP_GATE(0x807E2E10, &lit_9360);
#pragma pop

/* 807E2E14-807E2E18 000488 0004+00 0/0 0/0 0/0 .rodata          @9361 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9361 = 1978.0f;
COMPILER_STRIP_GATE(0x807E2E14, &lit_9361);
#pragma pop

/* 807E2E18-807E2E1C 00048C 0004+00 0/0 0/0 0/0 .rodata          @9362 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9362 = 87.0f;
COMPILER_STRIP_GATE(0x807E2E18, &lit_9362);
#pragma pop

/* 807E2E1C-807E2E20 000490 0004+00 0/0 0/0 0/0 .rodata          @9363 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9363 = 1225.0f;
COMPILER_STRIP_GATE(0x807E2E1C, &lit_9363);
#pragma pop

/* 807E2E20-807E2E24 000494 0004+00 0/0 0/0 0/0 .rodata          @9364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9364 = 1425.0f;
COMPILER_STRIP_GATE(0x807E2E20, &lit_9364);
#pragma pop

/* 807E2E24-807E2E28 000498 0004+00 0/0 0/0 0/0 .rodata          @9365 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9365 = 259.0f;
COMPILER_STRIP_GATE(0x807E2E24, &lit_9365);
#pragma pop

/* 807E2E28-807E2E2C 00049C 0004+00 0/0 0/0 0/0 .rodata          @9366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9366 = 1583.0f;
COMPILER_STRIP_GATE(0x807E2E28, &lit_9366);
#pragma pop

/* 807E2E2C-807E2E30 0004A0 0004+00 0/0 0/0 0/0 .rodata          @9367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9367 = 2265.0f;
COMPILER_STRIP_GATE(0x807E2E2C, &lit_9367);
#pragma pop

/* 807E2E30-807E2E34 0004A4 0004+00 0/0 0/0 0/0 .rodata          @9368 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9368 = 127.0f;
COMPILER_STRIP_GATE(0x807E2E30, &lit_9368);
#pragma pop

/* 807E2E34-807E2E38 0004A8 0004+00 0/0 0/0 0/0 .rodata          @9369 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9369 = 1011.0f;
COMPILER_STRIP_GATE(0x807E2E34, &lit_9369);
#pragma pop

/* 807E2E38-807E2E3C 0004AC 0004+00 0/0 0/0 0/0 .rodata          @9370 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9370 = 1267.0f;
COMPILER_STRIP_GATE(0x807E2E38, &lit_9370);
#pragma pop

/* 807E2E3C-807E2E40 0004B0 0004+00 0/0 0/0 0/0 .rodata          @9371 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9371 = 821.0f;
COMPILER_STRIP_GATE(0x807E2E3C, &lit_9371);
#pragma pop

/* 807E2E40-807E2E44 0004B4 0004+00 0/0 0/0 0/0 .rodata          @9372 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9372 = 1895.0f;
COMPILER_STRIP_GATE(0x807E2E40, &lit_9372);
#pragma pop

/* 807E2E44-807E2E48 0004B8 0004+00 0/0 0/0 0/0 .rodata          @9373 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9373 = 159.0f;
COMPILER_STRIP_GATE(0x807E2E44, &lit_9373);
#pragma pop

/* 807E2E48-807E2E4C 0004BC 0004+00 0/0 0/0 0/0 .rodata          @9374 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9374 = -129.0f;
COMPILER_STRIP_GATE(0x807E2E48, &lit_9374);
#pragma pop

/* 807E2E4C-807E2E50 0004C0 0004+00 0/0 0/0 0/0 .rodata          @9375 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9375 = 1984.0f;
COMPILER_STRIP_GATE(0x807E2E4C, &lit_9375);
#pragma pop

/* 807E2E50-807E2E54 0004C4 0004+00 0/0 0/0 0/0 .rodata          @9376 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9376 = 151.0f;
COMPILER_STRIP_GATE(0x807E2E50, &lit_9376);
#pragma pop

/* 807E2E54-807E2E58 0004C8 0004+00 0/0 0/0 0/0 .rodata          @9377 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9377 = 158.0f;
COMPILER_STRIP_GATE(0x807E2E54, &lit_9377);
#pragma pop

/* 807E2E58-807E2E5C 0004CC 0004+00 0/0 0/0 0/0 .rodata          @9378 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9378 = 1800.0f;
COMPILER_STRIP_GATE(0x807E2E58, &lit_9378);
#pragma pop

/* 807E2E5C-807E2E60 0004D0 0004+00 0/0 0/0 0/0 .rodata          @9379 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9379 = -192.0f;
COMPILER_STRIP_GATE(0x807E2E5C, &lit_9379);
#pragma pop

/* 807E2E60-807E2E64 0004D4 0004+00 0/0 0/0 0/0 .rodata          @9380 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9380 = 1631.0f;
COMPILER_STRIP_GATE(0x807E2E60, &lit_9380);
#pragma pop

/* 807E2E64-807E2E68 0004D8 0004+00 0/0 0/0 0/0 .rodata          @9381 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9381 = 195.0f;
COMPILER_STRIP_GATE(0x807E2E64, &lit_9381);
#pragma pop

/* 807E2E68-807E2E6C 0004DC 0004+00 0/0 0/0 0/0 .rodata          @9382 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9382 = -224.0f;
COMPILER_STRIP_GATE(0x807E2E68, &lit_9382);
#pragma pop

/* 807E2E6C-807E2E70 0004E0 0004+00 0/0 0/0 0/0 .rodata          @9383 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9383 = 1233.0f;
COMPILER_STRIP_GATE(0x807E2E6C, &lit_9383);
#pragma pop

/* 807E2E70-807E2E74 0004E4 0004+00 0/0 0/0 0/0 .rodata          @9384 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9384 = 167.0f;
COMPILER_STRIP_GATE(0x807E2E70, &lit_9384);
#pragma pop

/* 807E2E74-807E2E78 0004E8 0004+00 0/0 0/0 0/0 .rodata          @9385 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9385 = 1400.0f;
COMPILER_STRIP_GATE(0x807E2E74, &lit_9385);
#pragma pop

/* 807E2E78-807E2E7C 0004EC 0004+00 0/0 0/0 0/0 .rodata          @9386 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9386 = -93640.0f;
COMPILER_STRIP_GATE(0x807E2E78, &lit_9386);
#pragma pop

/* 807E2E7C-807E2E80 0004F0 0004+00 0/0 0/0 0/0 .rodata          @9387 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9387 = 44000.0f;
COMPILER_STRIP_GATE(0x807E2E7C, &lit_9387);
#pragma pop

/* 807E2E80-807E2E84 0004F4 0004+00 0/0 0/0 0/0 .rodata          @9388 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9388 = -93335.0f;
COMPILER_STRIP_GATE(0x807E2E80, &lit_9388);
#pragma pop

/* 807E2E84-807E2E88 0004F8 0004+00 0/0 0/0 0/0 .rodata          @9389 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9389 = 44500.0f;
COMPILER_STRIP_GATE(0x807E2E84, &lit_9389);
#pragma pop

/* 807E2E88-807E2E8C 0004FC 0004+00 0/0 0/0 0/0 .rodata          @9390 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9390 = -1300.0f;
COMPILER_STRIP_GATE(0x807E2E88, &lit_9390);
#pragma pop

/* 807E2E8C-807E2E90 000500 0004+00 0/0 0/0 0/0 .rodata          @9391 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9391 = 23.0f;
COMPILER_STRIP_GATE(0x807E2E8C, &lit_9391);
#pragma pop

/* 807E2E90-807E2E94 000504 0004+00 0/0 0/0 0/0 .rodata          @9392 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9392 = -93217.0f;
COMPILER_STRIP_GATE(0x807E2E90, &lit_9392);
#pragma pop

/* 807E2E94-807E2E98 000508 0004+00 0/0 0/0 0/0 .rodata          @9393 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9393 = -5783.0f;
COMPILER_STRIP_GATE(0x807E2E94, &lit_9393);
#pragma pop

/* 807E2E98-807E2E9C 00050C 0004+00 0/0 0/0 0/0 .rodata          @9394 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9394 = 44734.0f;
COMPILER_STRIP_GATE(0x807E2E98, &lit_9394);
#pragma pop

/* 807E2E9C-807E2EA0 000510 0004+00 0/0 0/0 0/0 .rodata          @9395 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9395 = -92351.0f;
COMPILER_STRIP_GATE(0x807E2E9C, &lit_9395);
#pragma pop

/* 807E2EA0-807E2EA4 000514 0004+00 0/0 0/0 0/0 .rodata          @9396 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9396 = -4742.0f;
COMPILER_STRIP_GATE(0x807E2EA0, &lit_9396);
#pragma pop

/* 807E2EA4-807E2EA8 000518 0004+00 0/0 0/0 0/0 .rodata          @9397 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9397 = 43295.0f;
COMPILER_STRIP_GATE(0x807E2EA4, &lit_9397);
#pragma pop

/* 807E2EA8-807E2EAC 00051C 0004+00 0/0 0/0 0/0 .rodata          @9398 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9398 = -93375.0f;
COMPILER_STRIP_GATE(0x807E2EA8, &lit_9398);
#pragma pop

/* 807E2EAC-807E2EB0 000520 0004+00 0/0 0/0 0/0 .rodata          @9399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9399 = -5700.0f;
COMPILER_STRIP_GATE(0x807E2EAC, &lit_9399);
#pragma pop

/* 807E2EB0-807E2EB4 000524 0004+00 0/0 0/0 0/0 .rodata          @9400 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9400 = 44622.0f;
COMPILER_STRIP_GATE(0x807E2EB0, &lit_9400);
#pragma pop

/* 807E2EB4-807E2EB8 000528 0004+00 0/0 0/0 0/0 .rodata          @9401 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9401 = -93153.0f;
COMPILER_STRIP_GATE(0x807E2EB4, &lit_9401);
#pragma pop

/* 807E2EB8-807E2EBC 00052C 0004+00 0/0 0/0 0/0 .rodata          @9402 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9402 = -5635.0f;
COMPILER_STRIP_GATE(0x807E2EB8, &lit_9402);
#pragma pop

/* 807E2EBC-807E2EC0 000530 0004+00 0/0 0/0 0/0 .rodata          @9403 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9403 = 44717.0f;
COMPILER_STRIP_GATE(0x807E2EBC, &lit_9403);
#pragma pop

/* 807E2EC0-807E2EC4 000534 0004+00 0/0 0/0 0/0 .rodata          @9404 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9404 = 0x3D872B02;
COMPILER_STRIP_GATE(0x807E2EC0, &lit_9404);
#pragma pop

/* 807E2EC4-807E2EC8 000538 0004+00 0/1 0/0 0/0 .rodata          @9405 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9405 = 828.0f;
COMPILER_STRIP_GATE(0x807E2EC4, &lit_9405);
#pragma pop

/* 807E2EC8-807E2ECC 00053C 0004+00 0/1 0/0 0/0 .rodata          @9406 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9406 = 554.0f;
COMPILER_STRIP_GATE(0x807E2EC8, &lit_9406);
#pragma pop

/* 807E2ECC-807E2ED0 000540 0004+00 0/1 0/0 0/0 .rodata          @9781 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9781 = 9.0f;
COMPILER_STRIP_GATE(0x807E2ECC, &lit_9781);
#pragma pop

/* 807E2ED0-807E2ED4 000544 0004+00 0/1 0/0 0/0 .rodata          @9782 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9782 = 16.0f;
COMPILER_STRIP_GATE(0x807E2ED0, &lit_9782);
#pragma pop

/* 807E2ED4-807E2ED8 000548 0004+00 0/1 0/0 0/0 .rodata          @9783 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9783 = 14.0f;
COMPILER_STRIP_GATE(0x807E2ED4, &lit_9783);
#pragma pop

/* 807E2ED8-807E2EDC 00054C 0004+00 0/1 0/0 0/0 .rodata          @9784 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9784 = 7.5f;
COMPILER_STRIP_GATE(0x807E2ED8, &lit_9784);
#pragma pop

/* 807E2EDC-807E2EE0 000550 0004+00 0/1 0/0 0/0 .rodata          @9785 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9785 = 12.5f;
COMPILER_STRIP_GATE(0x807E2EDC, &lit_9785);
#pragma pop

/* 807E2EE0-807E2EE4 000554 0004+00 0/1 0/0 0/0 .rodata          @9786 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9786 = 17.0f;
COMPILER_STRIP_GATE(0x807E2EE0, &lit_9786);
#pragma pop

/* 807DFB18-807E0388 00D778 0870+00 1/1 0/0 0/0 .text            anm_se_eff_set__FP10e_wb_class */
static void anm_se_eff_set(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2EE4-807E2EE8 000558 0004+00 0/1 0/0 0/0 .rodata          @10098 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10098 = -100.0f;
COMPILER_STRIP_GATE(0x807E2EE4, &lit_10098);
#pragma pop

/* 807E2EE8-807E2EEC 00055C 0004+00 0/1 0/0 0/0 .rodata          @10099 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10099 = -1000000000.0f;
COMPILER_STRIP_GATE(0x807E2EE8, &lit_10099);
#pragma pop

/* 807E2EEC-807E2EF0 000560 0004+00 0/1 0/0 0/0 .rodata          @10100 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10100 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x807E2EEC, &lit_10100);
#pragma pop

/* 807E2EF0-807E2EF4 000564 0004+00 0/1 0/0 0/0 .rodata          @10101 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10101 = -200000.0f;
COMPILER_STRIP_GATE(0x807E2EF0, &lit_10101);
#pragma pop

/* 807E2EF4-807E2EF8 000568 0004+00 0/1 0/0 0/0 .rodata          @10102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10102 = 200000.0f;
COMPILER_STRIP_GATE(0x807E2EF4, &lit_10102);
#pragma pop

/* 807E2EF8-807E2EFC 00056C 0004+00 0/1 0/0 0/0 .rodata          @10103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10103 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x807E2EF8, &lit_10103);
#pragma pop

/* 807E3804-807E3814 000294 000C+04 0/0 0/0 0/0 .bss             @7814 */
#pragma push
#pragma force_active on
static u8 lit_7814[12 + 4 /* padding */];
#pragma pop

/* 807E3814-807E3820 0002A4 000C+00 0/0 0/0 0/0 .bss             @7817 */
#pragma push
#pragma force_active on
static u8 lit_7817[12];
#pragma pop

/* 807E3820-807E382C 0002B0 000C+00 0/0 0/0 0/0 .bss             @7818 */
#pragma push
#pragma force_active on
static u8 lit_7818[12];
#pragma pop

/* 807E382C-807E3850 0002BC 0024+00 0/0 0/0 0/0 .bss             sh_pos$7813 */
#pragma push
#pragma force_active on
static u8 sh_pos[36];
#pragma pop

/* 807E3850-807E3860 0002E0 000C+04 0/0 0/0 0/0 .bss             @7820 */
#pragma push
#pragma force_active on
static u8 lit_7820[12 + 4 /* padding */];
#pragma pop

/* 807E3860-807E386C 0002F0 000C+00 0/0 0/0 0/0 .bss             @7823 */
#pragma push
#pragma force_active on
static u8 lit_7823[12];
#pragma pop

/* 807E386C-807E3878 0002FC 000C+00 0/0 0/0 0/0 .bss             @7824 */
#pragma push
#pragma force_active on
static u8 lit_7824[12];
#pragma pop

/* 807E3878-807E389C 000308 0024+00 0/0 0/0 0/0 .bss             sh_posH$7819 */
#pragma push
#pragma force_active on
static u8 sh_posH[36];
#pragma pop

/* 807E389C-807E38A0 00032C 0004+00 0/2 0/0 0/0 .bss             c_start */
#pragma push
#pragma force_active on
static u8 c_start[4];
#pragma pop

/* 807E0388-807E1020 00DFE8 0C98+00 2/1 0/0 0/0 .text            daE_WB_Execute__FP10e_wb_class */
static void daE_WB_Execute(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807E1020-807E1028 00EC80 0008+00 1/0 0/0 0/0 .text            daE_WB_IsDelete__FP10e_wb_class */
static bool daE_WB_IsDelete(e_wb_class* param_0) {
    return true;
}

/* 807E1028-807E108C 00EC88 0064+00 1/0 0/0 0/0 .text            daE_WB_Delete__FP10e_wb_class */
static void daE_WB_Delete(e_wb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2F0C-807E2F0C 000580 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807E2F44 = "Always";
#pragma pop

/* 807E108C-807E13A8 00ECEC 031C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2EFC-807E2F00 000570 0004+00 0/1 0/0 0/0 .rodata          @10531 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10531 = 13000.0f;
COMPILER_STRIP_GATE(0x807E2EFC, &lit_10531);
#pragma pop

/* 807E2F00-807E2F04 000574 0004+00 0/1 0/0 0/0 .rodata          @10532 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10532 = -800.0f;
COMPILER_STRIP_GATE(0x807E2F00, &lit_10532);
#pragma pop

/* 807E2F04-807E2F08 000578 0004+00 0/1 0/0 0/0 .rodata          @10533 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10533 = 30000.0f;
COMPILER_STRIP_GATE(0x807E2F04, &lit_10533);
#pragma pop

/* 807E2F0C-807E2F0C 000580 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807E2F4B = "E_bb";
SECTION_DEAD static char const* const stringBase_807E2F50 = "E_wb";
#pragma pop

/* 807E13A8-807E1CB0 00F008 0908+00 1/0 0/0 0/0 .text            daE_WB_Create__FP10fopAc_ac_c */
static void daE_WB_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 807E1CB0-807E1CCC 00F910 001C+00 1/1 0/0 0/0 .text            __ct__19mDoExt_3DlineMat1_cFv */
// mDoExt_3DlineMat1_c::mDoExt_3DlineMat1_c() {
extern "C" void __ct__19mDoExt_3DlineMat1_cFv() {
    // NONMATCHING
}

/* 807E1CCC-807E1D2C 00F92C 0060+00 1/1 0/0 0/0 .text            __dt__6himo_sFv */
himo_s::~himo_s() {
    // NONMATCHING
}

/* 807E1D2C-807E1D74 00F98C 0048+00 1/1 0/0 0/0 .text            __ct__6himo_sFv */
himo_s::himo_s() {
    // NONMATCHING
}

/* 807E1D74-807E1DBC 00F9D4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 807E1DBC-807E1E04 00FA1C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 807E1E04-807E1ED0 00FA64 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 807E1ED0-807E1F54 00FB30 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 807E1F54-807E1FB0 00FBB4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 807E1FB0-807E2020 00FC10 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 807E2020-807E2090 00FC80 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 807E2090-807E2094 00FCF0 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 807E2094-807E20DC 00FCF4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 807E20DC-807E2124 00FD3C 0048+00 2/1 0/0 0/0 .text            __dt__12daE_WB_HIO_cFv */
daE_WB_HIO_c::~daE_WB_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E2F08-807E2F0C 00057C 0004+00 0/1 0/0 0/0 .rodata          @10638 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10638 = -14900.0f;
COMPILER_STRIP_GATE(0x807E2F08, &lit_10638);
#pragma pop

/* 807E2124-807E2238 00FD84 0114+00 0/0 1/0 0/0 .text            __sinit_d_a_e_wb_cpp */
void __sinit_d_a_e_wb_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807E2124, __sinit_d_a_e_wb_cpp);
#pragma pop

/* 807E2238-807E2270 00FE98 0038+00 1/1 0/0 0/0 .text            __arraydtor$5742 */
void func_807E2238() {
    // NONMATCHING
}

/* 807E2270-807E22A8 00FED0 0038+00 1/1 0/0 0/0 .text            __arraydtor$4745 */
void func_807E2270() {
    // NONMATCHING
}

/* 807E22A8-807E22B0 00FF08 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_807E22A8() {
    // NONMATCHING
}

/* 807E22B0-807E22B8 00FF10 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_807E22B0() {
    // NONMATCHING
}

/* 807E22B8-807E2318 00FF18 0060+00 1/1 0/0 0/0 .text
 * dComIfGp_setHitMark__FUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl */
extern "C" void dComIfGp_setHitMark__FUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl() {
    // NONMATCHING
}

/* 807E2318-807E2334 00FF78 001C+00 1/1 0/0 0/0 .text            changeDemoPos0__9daPy_py_cFPC4cXyz
 */
extern "C" void changeDemoPos0__9daPy_py_cFPC4cXyz() {
    // NONMATCHING
}

/* 807E2334-807E2348 00FF94 0014+00 1/1 0/0 0/0 .text            changeDemoMode__9daPy_py_cFUliis */
extern "C" void changeDemoMode__9daPy_py_cFUliis() {
    // NONMATCHING
}

/* 807E2348-807E2350 -00001 0008+00 0/0 0/0 0/0 .text            changeDemoParam2__9daPy_py_cFs */
/* void daPy_py_c::changeDemoParam2(s16 param_0) {
    //*(u16*)(((u8*)this) + 1546)  this->field_0x60a  = (u16)(param_0);
} */

/* 807E2350-807E235C 00FFB0 000C+00 1/1 0/0 0/0 .text            fabsf__3stdFf */
extern "C" void fabsf__3stdFf() {
    // NONMATCHING
}

/* 807E235C-807E2378 00FFBC 001C+00 1/1 0/0 0/0 .text            __ct__4cXyzFRC4cXyz */
// cXyz::cXyz(cXyz const& param_0) {
extern "C" void __ct__4cXyzFRC4cXyz() {
    // NONMATCHING
}

/* 807E2378-807E2398 00FFD8 0020+00 1/1 0/0 0/0 .text            cMtx_YrotS__FPA4_fs */
extern "C" void cMtx_YrotS__FPA4_fs() {
    // NONMATCHING
}

/* 807E2398-807E23C4 00FFF8 002C+00 1/1 0/0 0/0 .text fopAcM_searchPlayerAngleY__FPC10fopAc_ac_c
 */
static void fopAcM_searchPlayerAngleY__FPC10fopAc_ac_c(fopAc_ac_c const* param_0) {
    // NONMATCHING
}

/* 807E23C4-807E23F4 010024 0030+00 1/1 0/0 0/0 .text            dComIfGs_onEventBit__FUs */
extern "C" void dComIfGs_onEventBit__FUs(u16) {
    // NONMATCHING
}

/* 807E23F4-807E2404 010054 0010+00 1/1 0/0 0/0 .text            Z2GetAudioMgr__Fv */
// static void Z2GetAudioMgr() {
extern "C" void Z2GetAudioMgr__Fv() {
    // NONMATCHING
}

/* 807E2404-807E2418 010064 0014+00 1/1 0/0 0/0 .text            cancelOriginalDemo__9daPy_py_cFv */
extern "C" void cancelOriginalDemo__9daPy_py_cFv() {
    // NONMATCHING
}

/* 807E2418-807E2444 010078 002C+00 1/1 0/0 0/0 .text            dComIfGp_event_reset__Fv */
extern "C" void dComIfGp_event_reset__Fv() {
    // NONMATCHING
}

/* 807E2444-807E2458 0100A4 0014+00 1/1 0/0 0/0 .text            changeOriginalDemo__9daPy_py_cFv */
extern "C" void changeOriginalDemo__9daPy_py_cFv() {
    // NONMATCHING
}

/* 807E2458-807E2468 0100B8 0010+00 1/1 0/0 0/0 .text            daPy_getPlayerActorClass__Fv */
extern "C" void daPy_getPlayerActorClass__Fv() {
    // NONMATCHING
}

/* 807E2468-807E24AC 0100C8 0044+00 1/1 0/0 0/0 .text            __as__11actor_placeFRC11actor_place
 */
//void actor_place::operator=(actor_place const& param_0) {
extern "C" void __as__11actor_placeFRC11actor_place() {
    // NONMATCHING
}

/* 807E24AC-807E24C8 01010C 001C+00 1/1 0/0 0/0 .text            __as__5csXyzFRC5csXyz */
// void csXyz::operator=(csXyz const& param_0) {
extern "C" void __as__5csXyzFRC5csXyz() {
    // NONMATCHING
}

/* 807E24C8-807E24D8 010128 0010+00 1/1 0/0 0/0 .text            set__4cXyzFfff */
// void cXyz::set(f32 param_0, f32 param_1, f32 param_2) {
extern "C" void set__4cXyzFfff() {
    // NONMATCHING
}

/* 807E24D8-807E24E8 010138 0010+00 1/1 0/0 0/0 .text            onCondition__11dEvt_info_cFUs */
extern "C" void onCondition__11dEvt_info_cFUs() {
    // NONMATCHING
}

/* 807E24E8-807E24FC 010148 0014+00 1/1 0/0 0/0 .text checkCommandDemoAccrpt__11dEvt_info_cFv */
// bool dEvt_info_c::checkCommandDemoAccrpt() {
extern "C" void checkCommandDemoAccrpt__11dEvt_info_cFv() {
    // NONMATCHING
}

/* 807E24FC-807E2500 01015C 0004+00 4/4 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 807E2500-807E2530 010160 0030+00 1/1 0/0 0/0 .text            fopAcM_SearchByName__Fs */
extern "C" void fopAcM_SearchByName__Fs(s16) {
    // NONMATCHING
}

/* 807E2530-807E2560 010190 0030+00 1/1 0/0 0/0 .text            fopAcM_SearchByID__FUi */
extern "C" void fopAcM_SearchByID__FUi(unsigned int) {
    // NONMATCHING
}

/* 807E2560-807E2570 0101C0 0010+00 1/1 0/0 0/0 .text            dComIfGp_getHorseActor__Fv */
extern "C" daHorse_c* dComIfGp_getHorseActor__Fv() {
    // NONMATCHING
}

/* 807E2570-807E2588 0101D0 0018+00 1/1 0/0 0/0 .text            dComIfGp_getPlayer__Fi */
extern "C" void dComIfGp_getPlayer__Fi(int) {
    // NONMATCHING
}

/* 807E2588-807E25A0 0101E8 0018+00 1/1 0/0 0/0 .text            dComIfGp_getCamera__Fi */
extern "C" void dComIfGp_getCamera__Fi(int) {
    // NONMATCHING
}

/* 807E25A0-807E25BC 010200 001C+00 1/1 0/0 0/0 .text            dComIfGp_getPlayerCameraID__Fi */
extern "C" void dComIfGp_getPlayerCameraID__Fi(int) {
    // NONMATCHING
}

/* 807E25BC-807E25EC 01021C 0030+00 1/1 0/0 0/0 .text            dMsgObject_isTalkNowCheck__Fv */
extern "C" void dMsgObject_isTalkNowCheck__Fv() {
    // NONMATCHING
}

/* 807E25EC-807E2700 01024C 0114+00 1/1 0/0 0/0 .text            abs__4cXyzCFv */
// void cXyz::abs() const {
extern "C" void abs__4cXyzCFv() {
    // NONMATCHING
}

/* 807E2700-807E2720 010360 0020+00 1/1 0/0 0/0 .text            cMtx_XrotM__FPA4_fs */
// static void cMtx_XrotM(f32 (*param_0)[4], s16 param_1) {
extern "C" void cMtx_XrotM__FPA4_fs() {
    // NONMATCHING
}

/* 807E2720-807E273C 010380 001C+00 1/1 0/0 0/0 .text            JMAFastSqrt__Ff */
//static void JMAFastSqrt(f32 param_0) {
static asm void JMAFastSqrt__Ff() {
    // NONMATCHING
}

/* 807E273C-807E27BC 01039C 0080+00 1/1 0/0 0/0 .text
 * dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz           */
extern "C" void dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz() {
    // NONMATCHING
}

/* 807E27BC-807E27D0 01041C 0014+00 1/1 0/0 0/0 .text            cancelOriginalDemo__9daHorse_cFv */
extern "C" void cancelOriginalDemo__9daHorse_cFv() {
    // NONMATCHING
}

/* 807E27D0-807E27D8 -00001 0008+00 0/0 0/0 0/0 .text            __ct__10JAISoundIDFUl */
extern "C" void __ct__10JAISoundIDFUl(u32* this_replacement, u32 param_0) {
    *(u32*)this_replacement = (u32)(param_0);
}

/* 807E27D8-807E27E8 010438 0010+00 1/1 0/0 0/0 .text            dComIfGp_getVibration__Fv */
extern "C" void dComIfGp_getVibration__Fv() {
    // NONMATCHING
}

/* 807E27E8-807E27F8 010448 0010+00 1/1 0/0 0/0 .text            __ct__4cXyzFfff */
// cXyz::cXyz(f32 param_0, f32 param_1, f32 param_2) {
extern "C" void __ct__4cXyzFfff() {
    // NONMATCHING
}

/* 807E27F8-807E2808 010458 0010+00 1/1 0/0 0/0 .text            onDemoJumpDistance__9daHorse_cFff
 */
void daHorse_c::onDemoJumpDistance(f32 param_0, f32 param_1) {
    // NONMATCHING
}

/* 807E2808-807E2824 010468 001C+00 1/1 0/0 0/0 .text            __as__4cXyzFRC4cXyz */
// void cXyz::operator=(cXyz const& param_0) {
extern "C" void __as__4cXyzFRC4cXyz() {
    // NONMATCHING
}

/* 807E2824-807E2858 010484 0034+00 1/1 0/0 0/0 .text            __apl__4cXyzFRC3Vec */
// void cXyz::operator+=(Vec const& param_0) {
extern "C" void __apl__4cXyzFRC3Vec() {
    // NONMATCHING
}

/* 807E2858-807E288C 0104B8 0034+00 1/1 0/0 0/0 .text multVec__14mDoMtx_stack_cFPC3VecP3Vec */
void multVec__14mDoMtx_stack_cFPC3VecP3Vec(Vec const* param_0, Vec* param_1) {
    // NONMATCHING
}

/* 807E288C-807E28B8 0104EC 002C+00 1/1 0/0 0/0 .text            YrotS__14mDoMtx_stack_cFs */
void YrotS__14mDoMtx_stack_cFs(s16 param_0) {
    // NONMATCHING
}

/* 807E28B8-807E28D4 010518 001C+00 1/1 0/0 0/0 .text            changeDemoPos0__9daHorse_cFPC4cXyz
 */
void daHorse_c::changeDemoPos0(cXyz const* param_0) {
    // NONMATCHING
}

/* 807E28D4-807E28E0 010534 000C+00 1/1 0/0 0/0 .text            changeDemoMode__9daHorse_cFUli */
extern "C" void changeDemoMode__9daHorse_cFUli() {
    // NONMATCHING
}

/* 807E28E0-807E2908 010540 0028+00 1/1 0/0 0/0 .text setHorsePosAndAngle__9daHorse_cFPC4cXyzs */
/* void daHorse_c::setHorsePosAndAngle(cXyz const* param_0, s16 param_1) {
    // NONMATCHING
} */

/* 807E2908-807E2934 010568 002C+00 1/1 0/0 0/0 .text startCheckSkipEdge__14dEvt_control_cFPv */
extern "C" void startCheckSkipEdge__14dEvt_control_cFPv() {
    // NONMATCHING
}

/* 807E2934-807E2944 010594 0010+00 1/1 0/0 0/0 .text            dComIfGp_getEvent__Fv */
extern "C" void dComIfGp_getEvent__Fv() {
    // NONMATCHING
}

/* 807E2944-807E2964 0105A4 0020+00 1/1 0/0 0/0 .text            fpcM_Search__FPFPvPv_PvPv */
static void fpcM_Search__FPFPvPv_PvPv(void* (*param_0)(void*, void*), void* param_1) {
    // NONMATCHING
}

/* 807E2964-807E2978 0105C4 0014+00 1/1 0/0 0/0 .text            changeOriginalDemo__9daHorse_cFv */
extern "C" void changeOriginalDemo__9daHorse_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807E38A0-807E38A4 000330 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_807E38A0[4];
#pragma pop

/* 807E38A4-807E38A8 000334 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_807E38A4[4];
#pragma pop

/* 807E38A8-807E38AC 000338 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_807E38A8[4];
#pragma pop

/* 807E38AC-807E38B0 00033C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807E38AC[4];
#pragma pop

/* 807E38B0-807E38B4 000340 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807E38B0[4];
#pragma pop

/* 807E38B4-807E38B8 000344 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807E38B4[4];
#pragma pop

/* 807E38B8-807E38BC 000348 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_807E38B8[4];
#pragma pop

/* 807E38BC-807E38C0 00034C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_807E38BC[4];
#pragma pop

/* 807E38C0-807E38C4 000350 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_807E38C0[4];
#pragma pop

/* 807E38C4-807E38C8 000354 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_807E38C4[4];
#pragma pop

/* 807E38C8-807E38CC 000358 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_807E38C8[4];
#pragma pop

/* 807E38CC-807E38D0 00035C 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807E38CC[4];
#pragma pop

/* 807E38D0-807E38D4 000360 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_807E38D0[4];
#pragma pop

/* 807E38D4-807E38D8 000364 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807E38D4[4];
#pragma pop

/* 807E38D8-807E38DC 000368 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807E38D8[4];
#pragma pop

/* 807E38DC-807E38E0 00036C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_807E38DC[4];
#pragma pop

/* 807E38E0-807E38E4 000370 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_807E38E0[4];
#pragma pop

/* 807E38E4-807E38E8 000374 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807E38E4[4];
#pragma pop

/* 807E38E8-807E38EC 000378 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_807E38E8[4];
#pragma pop

/* 807E38EC-807E38F0 00037C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_807E38EC[4];
#pragma pop

/* 807E38F0-807E38F4 000380 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_807E38F0[4];
#pragma pop

/* 807E38F4-807E38F8 000384 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807E38F4[4];
#pragma pop

/* 807E38F8-807E38FC 000388 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807E38F8[4];
#pragma pop

/* 807E38FC-807E3900 00038C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807E38FC[4];
#pragma pop

/* 807E3900-807E3904 000390 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_807E3900[4];
#pragma pop

/* 807E3904-807E3908 000394 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JAUSectionHeap>             */
#pragma push
#pragma force_active on
static u8 data_807E3904[4];
#pragma pop

/* 807E2F0C-807E2F0C 000580 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/**
 * @file d_a_e_wb.cpp
 * 
*/

#include "c/c_damagereaction.h"
#include "d/actor/d_a_e_wb.h"
#include "d/actor/d_a_e_rd.h"
#include "d/actor/d_a_alink.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"
#include "dol2asm.h"
#include "m_Do/m_Do_graphic.h"
#include "m_Do/m_Do_controller_pad.h"

namespace std {
/* 807E2350 */ void fabsf(f32);
};

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
//extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" extern u8 struct_80450C98[4];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();
extern "C" void SetB_Close__14daObjCRVGATE_cFv();
extern "C" void OpenSet__15daObjCRVSTEEL_cFff();
extern "C" void CloseSet__15daObjCRVSTEEL_cFf();

//
// Declarations:
//

/* 807E2F58-807E2F64 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 807E2F7C-807E2F8C 000024 0010+00 1/1 0/0 0/0 .data            chk_x$5015 */
static f32 chk_x[4] = {
    3606.25f,
    3590.859375f,
    -3423.5f,
    -3466.6875f,
};

/* 807E2F8C-807E2F9C 000034 0010+00 1/1 0/0 0/0 .data            chk_z$5016 */
static f32 chk_z[4] = {
    3901.375f,
    -3456.40625f,
    3535.5f,
    3984.5625f,
};

/* 807E2F9C-807E2FA4 000044 0006+02 1/1 0/0 0/0 .data            yaa$5213 */
static s16 yaa[3] = {
    0x0000,
    0xF000,
    0x1000,
};

/* 807E2FA4-807E2FB0 00004C 000C+00 1/1 0/0 0/0 .data            saku_bit$5214 */
static u32 saku_bit[12] = {
    1,
    2,
    4,
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

/* 807E33CC-807E33DC 000474 0010+00 1/1 0/0 0/0 .data            foot_no$9903 */
SECTION_DATA static u8 foot_no[16] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x14,
};

/* 807E33DC-807E33EC 000484 0010+00 1/1 0/0 0/0 .data            foot_no_B$9904 */
SECTION_DATA static u8 foot_no_B[16] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x17,
};

/* 807E33EC-807E3404 000494 0018+00 0/1 0/0 0/0 .data            pass_r$10268 */
static f32 pass_r[6] = {
    0.0f,
    3000.0f,
    3000.0f,
    -100.0f,
    -150.0f,
    -100.0f,
};

/* 807E3404-807E341C 0004AC 0018+00 0/1 0/0 0/0 .data            x_check_off$10269 */
static f32 x_check_off[6] = {
    2300.0f,
    -3000.0f,
    3000.0f,
    -300.0f,
    0.0f,
    300.0f,
};


/* 807E341C-807E345C 0004C4 0040+00 0/1 0/0 0/0 .data            cc_sph_src$10277 */
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


/* 807E345C-807E349C 000504 0040+00 0/1 0/0 0/0 .data            at_sph_src$10278 */
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
  fpcLy_CURRENT_e,          // mLayerID
  4,                         // mListID
  fpcPi_CURRENT_e,     // mListPrio
  PROC_E_WB,                    // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(e_wb_class),   // mSize
  0,                        // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,        // sub_method
  152,                           // mPriority
  &l_daE_WB_Method,                 // sub_method
  0x00044100,                           // mStatus
  fopAc_ENEMY_e,                         // mActorType
  fopAc_CULLBOX_CUSTOM_e,             // cullType
};

/* 807D248C-807D2548 0000EC 00BC+00 1/1 0/0 0/0 .text            __ct__12daE_WB_HIO_cFv */
daE_WB_HIO_c::daE_WB_HIO_c() {
    field_0x04 = -1;
    mBaseSize = 1.2f;
    mLeaderSizeRatio = 1.2f;
    mMovementSpeed = 3.5f;
    mPlayerRecognitionDistance = 600.0f;
    mMaxSpeed = 37.0f;
    mCalvaryBattleMaxSpeed = 50.0f;
    mLeaderWalkingSpeed = 10.0f;
    mLeaderMaxSpeed = 40.0f;
    mLeaderCalvaryBattleMaxSpeed = 54.0f;
    mNormalSpeedVi = 25.0f;
    mMediumSpeedVi = 45.0f;
    mMaxSpeedVi = 55.0f;
    mSingleRiderSpeed = 50.0f;
    mPlayerMountedMaxSpeed = 30.0f;
    mPlayerMountedMotionPlaybackSpeed = 0.80000001f;
    mPlayerMountedDashTime = 30;
    mSearchIgnoreDistance1 = 500.0f;
    mSearchIgnoreDistance2 = 500.0f;
    mGuidanceDisplayDistance1 = 3500.0f;
    mGuidanceDisplayDistance2 = 3500.0f;
    field_0x58 = 0;
    mNoReins = 0;
}

#ifdef DEBUG
void daE_WB_HIO_c::genMessage(JORMContext* ctx) {
    ctx->genLabel("  イノシシ", 0x80000001, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("基本サイズ", &mBaseSize, 0.0f, 5.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("リーダーサイズ比", &mLeaderSizeRatio,0.0f,5.0, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("移動速度", &mMovementSpeed,0.0f,20.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("PL認識距離", &mPlayerRecognitionDistance,0.0f,2000.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("最速度", &mMaxSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("騎馬戦最速", &mCalvaryBattleMaxSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("歩き速（リ）", &mLeaderWalkingSpeed, 0.0f, 30.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("最速度（リ）", &mLeaderMaxSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("騎馬戦最（リ）", &mLeaderCalvaryBattleMaxSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("通常速（車）", &mNormalSpeedVi, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("中速度（車）", &mMediumSpeedVi, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("最速度（車）", &mMaxSpeedVi, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("一騎速", &mSingleRiderSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genCheckBox("手綱ナシ", &mNoReins, 1, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genLabel("",0x80000001, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genLabel("    プレイヤー騎乗時", 0x80000001, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("最大速度", &mPlayerMountedMaxSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("モーション再生速度", &mPlayerMountedMotionPlaybackSpeed, 0.0f, 5.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("ダッシュ時間", &mPlayerMountedDashTime,0.0f, 2000.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genLabel("",0x80000001, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genLabel("    以下 一騎討ち用",0x80000001, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("サーチ無視距離(１)", &mSearchIgnoreDistance1, 0.0f, 5000.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("サーチ無視距離(２)", &mSearchIgnoreDistance2, 0.0f, 5000.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("案内表示距離(１)", &mGuidanceDisplayDistance1, 0.0f, 5000.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
    ctx->genSlider("案内表示距離(２)", &mGuidanceDisplayDistance2, 0.0f, 5000.0f, 0, NULL, 0xFFFF, 0xFFFF, 512, 24);
}
#endif

/* 807D2548-807D2610 0001A8 00C8+00 26/26 0/0 0/0 .text            anm_init__FP10e_wb_classifUcf */
static void anm_init(e_wb_class* i_actor, int i_anmId, f32 i_morf, u8 i_attr, f32 i_rate) {
    i_actor->mAnmID = i_anmId;

    if (i_actor->field_0x79d != 0 && i_actor->field_0x79d >= 2 && i_anmId == 0x20) {
        i_anmId = 0x21;
    }
    
    i_actor->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_actor->mResName,i_anmId), i_attr, i_morf, i_rate, 0.0f, -1.0f);
}

/* 807D2610-807D27D4 000270 01C4+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        int joint_no = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_wb_class* bullbo_p = (e_wb_class*)model->getUserArea();

        if (bullbo_p) {
            MTXCopy(model->getAnmMtx(joint_no), *calc_mtx);
            
            if (joint_no == 0) {
                cMtx_ZrotM(*calc_mtx, bullbo_p->field_0x79a);
            } else if (joint_no  == 2 || joint_no == bullbo_p->field_0x688+0xb) {
                cMtx_YrotM(*calc_mtx, bullbo_p->field_0x6d8);
            } else if (joint_no == 4 || joint_no == 8 || 
                (joint_no == 0x13 && bullbo_p->field_0x79d == 0) ||
                (joint_no == 0x17 && bullbo_p->field_0x79d == 0) ||
                (joint_no == 0x16 && bullbo_p->field_0x79d != 0) ||
                (joint_no == 0x1B && bullbo_p->field_0x79d != 0)) {
                cMtx_YrotM(*calc_mtx,bullbo_p->field_0x79a << 1);
            }
      
            if (bullbo_p->field_0x79d && joint_no == 0xd) {
                cMtx_YrotM(*calc_mtx,bullbo_p->field_0x6e0);
                cMtx_XrotM(*calc_mtx,bullbo_p->field_0x6de);
                cMtx_ZrotM(*calc_mtx,bullbo_p->field_0x6e2);
            }
            
            model->setAnmMtx(joint_no,*calc_mtx);
            MTXCopy(*calc_mtx,j3dSys.mCurrentMtx);
        }
    }
    
    return 1;
}

/* 807E35B4-807E35B8 -00001 0004+00 3/7 0/0 0/0 .bss             None */
/* 807E35B4 0001+00 data_807E35B4 @1009 */
/* 807E35B5 0001+00 data_807E35B5 None */
/* 807E35B6 0001+00 data_807E35B6 None */
/* 807E35B7 0001+00 data_807E35B7 None */
static u8 lbl_244_bss_44;
static s8 lbl_244_bss_45;
static s8 lbl_244_bss_46;
static s8 lbl_244_bss_47;

/* 807E35B8-807E35BC 000048 0004+00 1/2 0/0 0/0 .bss             None */
static u8 lbl_244_bss_48;
static u8 lbl_244_bss_49;
static u8 lbl_244_bss_4a;
static u8 lbl_244_bss_4b;

/* 807E35C8-807E3624 000058 005C+00 9/14 0/0 0/0 .bss             l_HIO */
static daE_WB_HIO_c l_HIO;

/* 807D27D4-807D2B48 000434 0374+00 1/1 0/0 0/0 .text himo_control1__FP10e_wb_classP4cXyziSc */
// NONMATCHING
static void himo_control1(e_wb_class* i_this, cXyz* i_pos, int i_idx, s8 param_3) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    cXyz sp60;
    cXyz sp54;

    int i;
    s16 sp10;
    s16 spE;

    cXyz* var_r30 = i_this->field_0x1450[i_idx].field_0x0;
    var_r30[0] = *i_pos;

    cXyz sp48;
    cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
    cMtx_XrotM(*calc_mtx, a_this->shape_angle.x);

    sp60.x = 20.0f;
    if (i_idx == 0) {
        sp60.x *= -1.0f;
    }
    sp60.y = 0.0f;
    sp60.z = 0.0f;
    MtxPosition(&sp60, &sp48);

    cXyz sp3C;
    cXyz sp30;
    cXyz sp24;

    sp60.x = 0.0f;
    sp60.y = i_this->field_0x1684;
    sp60.z = sp60.y;
    MtxPosition(&sp60, &sp30);

    if (a_this->speedF > 20.0f) {
        sp60.x = i_this->field_0x1684 * 0.4f;
    } else {
        sp60.x = i_this->field_0x1684 * 0.1f;
    }

    if (i_idx == 0) {
        sp60.x *= -1.0f;
    }
    sp60.y = 0.0f;
    sp60.z = 0.0f;
    MtxPosition(&sp60, &sp24);

    sp60.x = 0.0f;
    sp60.y = 0.0f;
    if (param_3 != 0) {
        sp60.z = 15.0f;
    } else {
        sp60.z = 20.0f;
    }

    if (i_this->field_0x79d != 0) {
        sp60.z *= l_HIO.mLeaderSizeRatio;
        sp48 *= l_HIO.mLeaderSizeRatio;
        sp30 *= l_HIO.mLeaderSizeRatio;
        sp24 *= l_HIO.mLeaderSizeRatio;
    }

    i = 1;
    cXyz* var_r30_2 = var_r30 + 1;
    for (; i < 16; i++, var_r30_2++) {
        sp3C.x = sp30.x * cM_ssin(i_this->field_0x1688 + i * 6000);  
        sp3C.y = sp30.y * cM_ssin(i_this->field_0x1688 + i * 6000);
        sp3C.z = sp30.z * cM_ssin(i_this->field_0x1688 + i * 6000);

        f32 var_f29 = 1.0f;
        f32 var_f31 = sp24.x + (sp3C.x + ((var_r30_2[0].x - var_r30_2[-1].x) + (sp48.x * var_f29)));
        f32 var_f28 = sp3C.y + ((var_r30_2[0].y - var_r30_2[-1].y) - 20.0f);
        f32 var_f30 = sp24.z + (sp3C.z + ((var_r30_2[0].z - var_r30_2[-1].z) + (sp48.z * var_f29)));

        spE = (s16)cM_atan2s(var_f31, var_f30);
        sp10 = -cM_atan2s(var_f28, JMAFastSqrt(var_f31 * var_f31 + var_f30 * var_f30));

        cMtx_YrotS(*calc_mtx, spE);
        cMtx_XrotM(*calc_mtx, sp10);
        MtxPosition(&sp60, &sp54);

        var_r30_2[0].x = var_r30_2[-1].x + sp54.x;
        var_r30_2[0].y = var_r30_2[-1].y + sp54.y;
        var_r30_2[0].z = var_r30_2[-1].z + sp54.z;
    }
}

/* 807D2B84-807D2D90 0007E4 020C+00 1/1 0/0 0/0 .text himo_control2__FP10e_wb_classP4cXyziSc */
static void himo_control2(e_wb_class* i_this, cXyz* i_pos, int i_idx, s8 param_3) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    cXyz sp30;
    cXyz sp24;

    int i;
    s16 sp10;
    s16 spE;
    himo_s* sp1C = &i_this->field_0x1450[i_idx];
    cXyz* temp_r31 = &sp1C->field_0x0[15];
    *temp_r31 = *i_pos;

    sp30.x = 0.0f;
    sp30.y = 0.0f;

    if (param_3 != 0) {
        sp30.z = 20.0f + YREG_F(7);
    } else {
        sp30.z = 15.0f + YREG_F(6);
    }

    temp_r31--;

    for (i = 14; i >= 1; i--, temp_r31--) {
        f32 temp_f31 = temp_r31[0].x - temp_r31[1].x;
        f32 temp_f29 = temp_r31[0].y - temp_r31[1].y;
        f32 temp_f30 = temp_r31[0].z - temp_r31[1].z;
        spE = (s16)cM_atan2s(temp_f31, temp_f30);
        sp10 = -cM_atan2s(temp_f29, JMAFastSqrt((temp_f31 * temp_f31) + (temp_f30 * temp_f30)));

        cMtx_YrotS(*calc_mtx,spE);
        cMtx_XrotM(*calc_mtx,sp10);
        MtxPosition(&sp30, &sp24);

        temp_r31[0].x = temp_r31[1].x + sp24.x;
        temp_r31[0].y = temp_r31[1].y + sp24.y;
        temp_r31[0].z = temp_r31[1].z + sp24.z;
    }

    // this = ::mDoExt_3DineMat1_c::getPos((mDoExt_3DlineMat1_c *)(param_1 + param_3 * 0x3c + 0x1620),0);
    temp_r31 = sp1C->field_0x0;
    cXyz* var_r29 = i_this->field_0x15d0[i_idx].getPos(0);
    for (int i = 0; i < 16; i++, var_r29++, temp_r31++) {
        *var_r29 = *temp_r31;
    }

    var_r29 = i_this->field_0x1648.getPos(0);
    var_r29[i_idx] = i_this->field_0x1450[i_idx].field_0x0[15];
}

/* 807D2D90-807D2F18 0009F0 0188+00 1/1 0/0 0/0 .text            e_wb_lr_wall_check__FP10e_wb_class
 */
static int e_wb_lr_wall_check(e_wb_class* i_actor) {
    e_wb_class* a_actor = (e_wb_class*)i_actor;

    dBgS_LinChk linChk;
    cXyz pos1;
    cXyz pos2;
    cXyz pos3;
    
    pos2 = a_actor->current.pos;
    pos2.y += 300.0f;
    
    cMtx_YrotS(*calc_mtx,a_actor->shape_angle.y);
    pos1.x = -400.0f;
    pos1.y = 300.0f;
    pos1.z = 400.0f;

    MtxPosition(&pos1,&pos3);
    pos3 += a_actor->current.pos;
    linChk.Set(&pos2,&pos3,a_actor);

    if (dComIfG_Bgsp().LineCross(&linChk)) {
        if (fopAcM_GetName(dComIfG_Bgsp().GetActorPointer(linChk)) == PROC_BG) {
            return -1;
        }
    }
    
    pos1.x *= -1.0f;
    MtxPosition(&pos1,&pos3);
    pos3 += a_actor->current.pos;

    if (dComIfG_Bgsp().LineCross(&linChk)) {
        if (fopAcM_GetName(dComIfG_Bgsp().GetActorPointer(linChk)) == PROC_BG) {
            return 1;
        }
    }
    
    return 0;
}

/* 807D2F18-807D366C 000B78 0754+00 1/0 0/0 0/0 .text            daE_WB_Draw__FP10e_wb_class */
static int daE_WB_Draw(e_wb_class* i_this) {
    static _GXColor l_color = {0x14, 0x0F, 0x00, 0xFF,};
    f32 fVar9;
    int local_74;
    int local_78;

    if (i_this->field_0x1430 != 0 || i_this->mActionID == ACT_EVENT) {
        return 1;
    }
    
    cXyz local_3c;
    cXyz local_48;

    J3DModel* model = i_this->mpModelMorf->getModel();
    g_env_light.settingTevStruct(0,&i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model,&i_this->tevStr);
    i_this->mpModelMorf->entryDL();


    cXyz cStack_54;
    cStack_54.set(i_this->current.pos.x,i_this->current.pos.y + 100.0f + BREG_F(0x12),i_this->current.pos.z);

    if (i_this->field_0x79d != 0) {
        fVar9 = i_this->scale.z * 800.0f;
    } else {
        fVar9 = i_this->scale.z * 1000.0f;
    }
    
    fVar9 += BREG_F(0x13);

    i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, 
        &cStack_54, fVar9, 0.0f, 
        i_this->current.pos.y, i_this->mAcch.GetGroundH(), 
        i_this->mAcch.m_gnd, &i_this->tevStr, 0, 
        1.0f, dDlst_shadowControl_c::getSimpleTex());

    if (l_HIO.mNoReins == 0) {
        MTXCopy(model->getAnmMtx((i_this->field_0x688 + 0xb) + YREG_S(3)),*calc_mtx);
        MtxPush();

        s8 cVar7 = 0;
        e_rd_class* pfVar4 = (e_rd_class*)fopAcM_SearchByID(i_this->field_0x1434);
        
        if ((i_this->field_0x6be & 1) != 0) {
            if (pfVar4 && pfVar4->field_0x9bc == 2) {
                if (i_this->field_0x7a2 == 0) {
                    model = pfVar4->mpModelMorf->getModel();
                    cVar7 = 1;
                }
            } else {
                if (daAlink_getAlinkActorClass()->checkBoarRideOwn(i_this)) {
                    if (!daAlink_getAlinkActorClass()->checkHorseNotGrab()) {
                        cVar7 = 1;
                    }
                }
            }
        }
        
        local_3c.x = YREG_F(0) + 80.0f;
        local_3c.y = YREG_F(1) - 20.0f;

        if (i_this->field_0x79d != 0) {
            local_3c.z = YREG_F(2) + 42.0f;
        } else {
            local_3c.z = YREG_F(0xc) + 47.0f;
        }
        
        MtxPosition(&local_3c,&local_48);
        himo_control1(i_this,&local_48,0,cVar7);
        local_3c.z *= -1.0f;
        MtxPull();
        MtxPosition(&local_3c,&local_48);
        himo_control1(i_this,&local_48,1,cVar7);

        if (cVar7 != 0) {
            cXyz local_60;

            if (daAlink_getAlinkActorClass()->checkBoarRideOwn(i_this)) {
                daAlink_getAlinkActorClass()->getHorseReinHandPos(&local_60,&local_48);
                i_this->field_0x1438[0] = local_48;
                i_this->field_0x1438[1] = local_60;
            } else {
                if (pfVar4->mKingBulblinMode != 0) {
                    local_78 = 0xf;
                    local_74 = 0x14;
                } else {
                    local_78 = 0x13;
                    local_74 = 0x18;
                }
                
                MTXCopy(model->getAnmMtx(local_74),*calc_mtx);
                local_3c.x = PREG_F(0xd) + 15.0f;
                local_3c.y = PREG_F(0xe);
                local_3c.z = PREG_F(0xf);
                MtxPosition(&local_3c,&local_48);

                MTXCopy(model->getAnmMtx(local_78),*calc_mtx);
                local_3c.x = PREG_F(0x10) + 15.0f;
                local_3c.y = PREG_F(0x11);
                local_3c.z = PREG_F(0x12);
                MtxPosition(&local_3c,&local_60);
            }
            
            if (i_this->field_0x168c > 100.0f) {
                i_this->field_0x1438[0] = local_48;
                i_this->field_0x1438[1] = local_60;
                
            } else {
                cLib_addCalc2(&i_this->field_0x1438[0].x,local_48.x,1.0f, i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[0].y,local_48.y,1.0f, i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[0].z,local_48.z,1.0f,i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[1].x,local_60.x,1.0f,i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[1].y,local_60.y,1.0f,i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x1438[1].z,local_60.z,1.0f,i_this->field_0x168c);
                cLib_addCalc2(&i_this->field_0x168c,1000.0f,1.0f,10.0f);
                local_3c = i_this->field_0x1438[0] - local_48;
                
                if (local_3c.abs() > 500.0f) {
                    i_this->field_0x1438[0] = local_48;
                    i_this->field_0x1438[1] = local_60;
                }
            }
        } else {
            i_this->field_0x168c = 0.0f;
            MTXCopy(model->getAnmMtx(i_this->field_0x688 + 0xe),*calc_mtx);
            local_3c.x = YREG_F(3) + 50.0f;
            local_3c.y = YREG_F(4) + 60.0f;
            local_3c.z = YREG_F(5);
            MtxPosition(&local_3c,&i_this->field_0x1438[0]);
            i_this->field_0x1438[1] = i_this->field_0x1438[0];
            
        }
        
        himo_control2(i_this,&i_this->field_0x1438[0],0,cVar7);
        himo_control2(i_this,&i_this->field_0x1438[1],1,cVar7);
        i_this->field_0x15d0[0].update(0x10,l_color,&i_this->tevStr);
        dComIfGd_set3DlineMat(&i_this->field_0x15d0[0]);
        i_this->field_0x15d0[1].update(0x10,l_color,&i_this->tevStr);
        dComIfGd_set3DlineMat(&i_this->field_0x15d0[1]);
        i_this->field_0x1648.update(2,l_color,&i_this->tevStr);
        dComIfGd_set3DlineMat(&i_this->field_0x1648);
    }

    return 1;
}

/* 807D366C-807D387C 0012CC 0210+00 1/1 0/0 0/0 .text            e_wb_wall_check__FP10e_wb_class */
// NONMATCHING - stack issues, missing / wrong instructions
static int e_wb_wall_check(e_wb_class* i_this) {
    e_wb_class* a_this = (e_wb_class*)i_this;
    dBgS_LinChk linChk;
    cXyz pos1;
    cXyz pos2;
    cXyz pos3;

    cMtx_YrotS(*calc_mtx,a_this->shape_angle.y);
    pos1.x = 10.0f;
    pos1.y = 120.0f;
    pos1.z = BREG_F(8) + 250.0f;

    MtxPosition(&pos1,&pos3);
    pos3 += a_this->current.pos;
    pos2 = a_this->current.pos;
    pos2.y += 200.0f;

    linChk.Set(&pos2,&pos3,a_this);
    if (dComIfG_Bgsp().LineCross(&linChk)) {
        if (fopAcM_GetName(dComIfG_Bgsp().GetActorPointer(linChk)) != PROC_BG) {
            return 0;
        } else {
            cXyz pos4 = linChk.GetCross();
            pos1.x *= -1.0f;
            MtxPosition(&pos4,&pos3);
            pos3 += a_this->current.pos;
            linChk.Set(&pos2,&pos3,a_this);

            if (dComIfG_Bgsp().LineCross(&linChk)) {
                pos4 = linChk.GetCross();
                return 0;
            } else {
                pos4 = pos4 - pos3;
                int tmp = cM_atan2s(pos1.x,pos1.z) + 0x4000 - a_this->shape_angle.y;
                return tmp;
            }
        }
    } else {
        return 0;
    }
}

/* 807D387C-807D3B94 0014DC 0318+00 1/1 0/0 0/0 .text            gake_check__FP10e_wb_class */
static s8 gake_check(e_wb_class* a_this) {
    e_wb_class* i_this = (e_wb_class*)a_this;
    dBgS_GndChk dStack_70;
    cXyz local_7c;
    cXyz cStack_88;
    
    if (lbl_244_bss_46 != 0) {
        if (!daAlink_getAlinkActorClass()->checkBoarRideOwn(i_this) && i_this->current.pos.y < -5000.0f) {
            OS_REPORT(" WB NARAKU DOWN  2\n")
            fopAcM_delete(i_this);
            return 0;
        }

        for (int i =  0; i < 4; i++) {
            local_7c.x = nREG_F(3) + chk_x[i] - i_this->current.pos.x;
            local_7c.z = nREG_F(4) + chk_z[i] - i_this->current.pos.z;
            s16 sVar1 = cM_atan2s(local_7c.x,local_7c.z) - i_this->shape_angle.y;
            if (JMAFastSqrt(local_7c.x * local_7c.x + local_7c.z * local_7c.z) < nREG_F(8) + 2000.0f) {
                if (sVar1 < 0x4000 && sVar1 > -0x4000) {
                    return 2;
                }
                
                return -1;
            }
        }
    }

    cMtx_YrotS(*calc_mtx,i_this->shape_angle.y);
    local_7c.x = 500.0f;
    local_7c.y = 1000.0f;
    local_7c.z = JREG_F(0) + 1000.0f;
    MtxPosition(&local_7c,&cStack_88);
    cStack_88 += i_this->current.pos;
    dStack_70.SetPos(&cStack_88);
    f32 ground_cross = dComIfG_Bgsp().GroundCross(&dStack_70);
    
    if (i_this->current.pos.y - ground_cross > 2000.0f) {
        return 1;
    } else {
        local_7c.x = -500.0f;
        MtxPosition(&local_7c,&cStack_88);
        cStack_88 += i_this->current.pos;
        dStack_70.SetPos(&cStack_88);
        ground_cross = dComIfG_Bgsp().GroundCross(&dStack_70);

        if (i_this->current.pos.y - ground_cross > 2000.0f) {
            return 1;
        } else {
            local_7c.x = 0.0f;
            local_7c.y = 1000.0f;
            local_7c.z = JREG_F(1) + 2000.0f;
            MtxPosition(&local_7c,&cStack_88);
            cStack_88 += i_this->current.pos;
            dStack_70.SetPos(&cStack_88);
            ground_cross = dComIfG_Bgsp().GroundCross(&dStack_70);

            if (i_this->current.pos.y - ground_cross > 2000.0f) {
                return 1;
            } else {
                return 0;
            }
        }
    }
}

/* 807D3B94-807D3D94 0017F4 0200+00 1/1 0/0 0/0 .text e_wb_saku_jump_check__FP10e_wb_class */
// NONMATCHING - missing instruction / bad branch
static BOOL e_wb_saku_jump_check(e_wb_class* a_this) {
    e_wb_class* i_this = (e_wb_class*)a_this;
    dBgS_LinChk dStack_98;
    cXyz local_a8;
    cXyz cStack_b4;
    cXyz cStack_c0;
    cMtx_YrotS(*calc_mtx,i_this->shape_angle.y);
    cMtx_XrotM(*calc_mtx, i_this->shape_angle.x);
    local_a8.x = 10.0f;
    local_a8.y = 150.0f;
    local_a8.z = KREG_F(8) + 500.0f;
    MtxPosition(&local_a8,&cStack_c0);
    cStack_c0 += i_this->current.pos;
    cStack_b4 = i_this->current.pos;
    cStack_b4.y += 100.0f;
    dStack_98.Set(&cStack_b4,&cStack_c0,i_this);
    
    if (dComIfG_Bgsp().LineCross(&dStack_98)) {
        cXyz cStack_cc(dStack_98.GetCross());
        cXyz cStack_d8;

        local_a8.x *= -1.0f;
        MtxPosition(&local_a8,&cStack_c0);
        cStack_c0 += i_this->current.pos;
        dStack_98.Set(&cStack_b4,&cStack_c0,i_this);
        
        if (dComIfG_Bgsp().LineCross(&dStack_98)) {
            cStack_d8 = dStack_98.GetCross();
            return 0;
        } else {
            local_a8 = cStack_d8 - cStack_cc;
            s16 sVar1 = (cM_atan2s(local_a8.x,local_a8.z) + 0x4000) - i_this->shape_angle.y;

            if ((sVar1 > -0x3000) && (sVar1 < 0x3000)) {
                return 1;
            }
        }
    }
  
    return 0;
}

/* 807D3D94-807D3F2C 0019F4 0198+00 1/1 0/0 0/0 .text e_wb_saku_check_sub__FP10e_wb_classs */
// NONMATCHING - float instruction ordering
static int e_wb_saku_check_sub(e_wb_class* i_this, s16 param_1) {
    dBgS_GndChk dStack_90;
    dBgS_LinChk dStack_100;
    cXyz local_10c;
    cXyz cStack_118;
    cXyz cStack_124;

    f32 iVar2 = i_this->field_0x68e & 7;
    f32 local_38 = 176.0f;
    
    cMtx_YrotS(*calc_mtx,i_this->shape_angle.y + param_1);
    local_10c.x = 0.0f;
    local_10c.y = 2000.0f;
    local_10c.z = iVar2 * 400.0f;
    MtxPosition(&local_10c,&cStack_118);
    cStack_118 += i_this->current.pos;
    dStack_90.SetPos(&cStack_118);
    cStack_118.y = dComIfG_Bgsp().GroundCross(&dStack_90) + 150.0f;
    local_10c.x = 0.0f;
    local_10c.y = 0.0f;
    local_10c.z = 410.0f;

    MtxPosition(&local_10c,&cStack_124);
    cStack_124 += cStack_118;
    dStack_100.Set(&cStack_118,&cStack_124,i_this);

    if (dComIfG_Bgsp().LineCross(&dStack_100)) {
        return 1;
    }

    return 0;
    
}

/* 807D3F2C-807D3FB0 001B8C 0084+00 1/1 0/0 0/0 .text            e_wb_saku_check__FP10e_wb_class */
static int e_wb_saku_check(e_wb_class* i_this) {
    int uVar2 = false;

    for (int i = 0; i < 3; i++) {
        if (e_wb_saku_check_sub(i_this,yaa[i])) {
            uVar2 |= saku_bit[i];
        }
    }
    
    return uVar2;
}

/* 807D3FB0-807D40A8 001C10 00F8+00 1/1 0/0 0/0 .text            e_wb_wait__FP10e_wb_class */
static void e_wb_wait(e_wb_class* i_this) {    
    switch (i_this->mActionMode) {
    case 0:
        anm_init(i_this, 0x25, 3.0f, 2, 1.0f);
        i_this->mActionMode = 1;
    case 1:
        if (i_this->speedF > 15.0f) {
            i_this->field_0x142c = 2;
            i_this->mZ2Ride.startCreatureSoundLevel(Z2SE_EN_WB_L_SLIP, 0, -1);
        } else {
            anm_init(i_this,0x2a,10.0f,2,1.0f);
            i_this->mActionMode = 2;
            i_this->field_0x6be |= 0x20;
        }
    case 2:
    default:
        cLib_addCalc0(&i_this->speedF,1.0f,1.0f);    
    }
}

/* 807D40A8-807D4110 001D08 0068+00 1/1 0/0 0/0 .text            e_wb_ride__FP10e_wb_class */
static void e_wb_ride(e_wb_class* i_this) {
    switch (i_this->mActionMode) {
    case 0:
        anm_init(i_this, 0x1f, 3.0f, 0, 1.0f);
        i_this->mActionMode = 1;
    case 1:
    default:
        return;
    }
}

/* 807D4110-807D4154 001D70 0044+00 1/1 0/0 0/0 .text            e_wb_pl_ride_now__FP10e_wb_class */
static void e_wb_pl_ride_now(e_wb_class* i_this) {
    if (i_this->mAnmID != 0x2a) {
        anm_init(i_this,0x2a,10.0f,2,1.0f);
    }
}

/* 807D4154-807D48C0 001DB4 076C+00 1/1 0/0 0/0 .text            e_wb_pl_ride__FP10e_wb_class */
static void e_wb_pl_ride(e_wb_class* i_this) {
    f32 fVar11 = l_HIO.mCalvaryBattleMaxSpeed;
    f32 fVar2;

    if (i_this->field_0x1432 != 0) {
        if (i_this->field_0x1432 == 1) {
            i_this->mActionID = ACT_PL_RIDE;
        }
        
        if (i_this->mAnmID == 0x1b) {
            if (!i_this->mpModelMorf->isStop()) {
                if (i_this->mpModelMorf->checkFrame(22.0f) && !i_this->mpModelMorf->checkFrame(42.0)) {
                    return;
                }
                
                cXyz cStack_7c(0.0f,1.0f,0.0f);
                dComIfGp_getVibration().StartShock(5,0x1f,cStack_7c);
                return;
            }
            
            anm_init(i_this,0x20,2.0f,2,2.0f);
            i_this->speedF = 1.0;
        }
        
        fVar11 = 50.0f;

        if ((i_this->field_0x1432 & 0xf) == 0) {
            cXyz cStack_88(0.0f,1.0f,0.0f);
            dComIfGp_getVibration().StartShock(3,0x1f,cStack_88);
        }
    }

    if (i_this->mAnmID == 0x25) {
        cLib_chaseF(&i_this->speedF,0.0f,2.0f);
        if (i_this->speedF < 0.01f) {
            anm_init(i_this,0x2a,10.0f,2,1.0f);
        }
        
        if (i_this->speedF > 10.0) {
            i_this->field_0x142c = 2;
        }
    } else {
        f32 stick_value = mDoCPd_c::getStickValue(0);

        if (daAlink_getAlinkActorClass()->checkHorseGetOffMode()) {
            stick_value = 0.0f;
        }

        f32 fVar1 = 1.5;
        s16 stick_angle;
        
        if (i_this->mActionID == 0x65) {
            stick_angle = mDoCPd_c::getStickAngle3D(0);
        } else {
            fVar2 = 1.0;
            fVar1 = 10.0;
            
            if (!dComIfGp_event_runCheck()) {
                stick_angle = mDoCPd_c::getStickAngle3D(0);
                
                if (fVar11 < 0.1f) {
                    stick_angle = -0x8000;
                }
            } else {
                stick_angle = -0x8000;
            }
        }
        
        s16 angle_y = dCam_getControledAngleY(dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0)));
        
        angle_y -= 0x8000;
        int iVar4 = 0;
        s16 angle_delta = angle_y - i_this->current.angle.y;
        
        if (i_this->mActionID == 0x65) {
            if (abs(angle_delta) < 0x6001) {
                if (angle_delta < 0x2000) {
                    if (angle_delta < -0x1fff) {
                        iVar4 = 3;
                    }
                } else {
                    iVar4 = 2;
                }
            } else {
                iVar4 = 1;
            }
        } else if (angle_delta < 0x2000) {
            if (angle_delta < -0x1fff) {
                iVar4 = 3;
            }
        } else {
            iVar4 = 2;
        }
        
        if (i_this->field_0x142f == 2) {
            if (i_this->speedF >= 0.1f) {
                iVar4 = 1;
            } else if (iVar4 == 0) {
                fVar11 = 0.0;
            }
            
            if (i_this->mActionID != ACT_PL_RIDE) {
                i_this->mActionID = ACT_PL_RIDE;
                i_this->field_0x1432 = 0;
                
                if (l_HIO.mNormalSpeedVi < i_this->speedF) {
                    i_this->speedF = l_HIO.mNormalSpeedVi;
                }
            }
        } else if (i_this->field_0x142f && iVar4 == 1) {
            fVar11 = 0.0f;
        }

        // Bulblin Camp, Outside Arbiter's Grounds Room
        if (strcmp(dComIfGp_getStartStageName(),"F_SP118") && 
            fopAcM_GetRoomNo(i_this) == 3 && 
            dComIfGp_event_runCheck() || 
            dComIfGp_checkPlayerStatus0(0,0x2000)) {
            fVar11 = 0.0f;
        }

        i_this->mWaitRollAngle = 0;
        if (iVar4 != 1 && fVar11 > 0.01f) {
            s16 curr_angle_y = i_this->current.angle.y;
            
            if (i_this->mActionID == ACT_PL_RIDE) {
                cLib_addCalcAngleS2(&i_this->current.angle.y,curr_angle_y,4,500);
                i_this->mTargetAngleStep = 0;
            } else {
                s16 local_94 = 0;
                s16 local_96 = KREG_S(3) + 0x40;

                if (iVar4 == 2) {
                    local_94 = KREG_S(2) + 0x300;
                } else if (iVar4 == 3) {
                    local_94 = -KREG_S(2) + 0x300;
                } else {
                    local_96 = KREG_S(4) + 0x10;
                }
                
                cLib_addCalcAngleS2(&i_this->mTargetAngleStep,local_94,4,local_96);
                i_this->current.angle.y += i_this->mTargetAngleStep;
            }
            
            i_this->mWaitRollAngle = i_this->current.angle.y - curr_angle_y;
            f32 fVar10 = i_this->mWaitRollAngle * TREG_S(7) - 8 * i_this->speedF / l_HIO.mBaseSize + 1.0f;
            
            if (fVar10 <= NREG_F(0x11) + 4500.0f) {
                if (fVar10 < -NREG_F(0x11) + 4500.0f)
                    fVar10 = -NREG_F(0x11) + 4500.0f;
            } else {
                fVar10 = NREG_F(0x11) + 4500.0f;
            }
            
            cLib_addCalcAngleS2(&i_this->field_0x79a,(s16)fVar10,8,0x140);
        }
        
        if (i_this->speedF >= 0.01f) {
            i_this->mWaitRollAngle = 0;

            if (fVar11 <= 0.01) {
                cLib_chaseF(&i_this->speedF,0.0f,0.5);
                
                if (i_this->mAnmID == 0x20 && i_this->speedF < TREG_F(3) + 20.0f) {
                    anm_init(i_this, 0x2b, 0.0f, 2, 0.0f);
                }
            } else if (iVar4 == 1) {
                if ((fVar11 * 0.3f < i_this->speedF && i_this->mAnmID != 0x25)) {
                    anm_init(i_this, 0x25, 0.0f, 2, 0.0f);
                }
                
                cLib_chaseF(&i_this->speedF,0.0f,2.0f);
            } else {
                cLib_chaseF(&i_this->speedF, fVar11 * fVar2, fVar1);
                
                if (TREG_F(3) + 20.0f <= i_this->speedF) {
                    if (i_this->mAnmID != 0x20) {
                        anm_init(i_this, 0x20, 0.0f, 2, 0.0f);
                    }
                } else if (i_this->mAnmID != 0x2b) {
                    anm_init(i_this, 0x2b, 0.0f, 2, 0.0f);
                }
            }
        } else if (fVar2 <= 0.01f) {
            fVar11 = fabsf(i_this->speedF);
            
            if (fVar11 >= 0.01f) {
                cLib_chaseF(&i_this->speedF,0.0f,0.5f);
            } else if (i_this->mAnmID != 0x2a) {
                anm_init(i_this, 0x2a, 0.0f, 2, 0.0f);
            }
        } else if (iVar4 == 0) {
            i_this->mWaitRollAngle = 0;
            i_this->speedF = fVar1;
        } else {
            if (iVar4 == 1) {
                i_this->mWaitRollAngle = 0;
                cLib_chaseF(&i_this->speedF,fVar11 * fVar2 * -0.2f, 1.0f);
            }
            
            if (i_this->mAnmID != 0x28) {
                anm_init(i_this, 0x28, 0.0f, 2, 0.0f);
            }
        }
        
        if (i_this->mAnmID == 0x20) {
            i_this->mpModelMorf->setPlaySpeed(BREG_F(0) + 0.4f + (l_HIO.mPlayerMountedMaxSpeed * i_this->speedF) / l_HIO.mPlayerMountedMotionPlaybackSpeed);
            i_this->field_0x142c = 1;
            i_this->field_0x6bd = 1;
        } else if (i_this->mAnmID == 0x2b) {
            i_this->mpModelMorf->setPlaySpeed(TREG_F(4) + 0.7f + (TREG_F(5) + 0.05f) * i_this->speedF);
        }
    }
}

/* 807D48C0-807D4BDC 002520 031C+00 1/1 0/0 0/0 .text            e_wb_f_wait__FP10e_wb_class */
static void e_wb_f_wait(e_wb_class* i_this) {
    // NONMATCHING
}

/* 807D4BDC-807D4C84 00283C 00A8+00 1/1 0/0 0/0 .text            pl_pass_check__FP10e_wb_classf */
static void pl_pass_check(e_wb_class* i_this, f32 param_1) {
    // NONMATCHING
}

/* 807D4C84-807D53AC 0028E4 0728+00 1/1 0/0 0/0 .text            e_wb_f_run__FP10e_wb_class */
static void e_wb_f_run(e_wb_class* i_this) {
    // NONMATCHING
}

/* 807D53AC-807D5408 00300C 005C+00 2/2 0/0 0/0 .text            s_wbstart_sub__FPvPv */
static void s_wbstart_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 807D5408-807D5634 003068 022C+00 1/1 0/0 0/0 .text            e_wb_b_wait__FP10e_wb_class */
static void e_wb_b_wait(e_wb_class* i_this) {
    // NONMATCHING
}

/* 807E3630-807E3690 0000C0 0060+00 1/4 0/0 0/0 .bss             b_path */
static cXyz b_path[8];

/* 807E369C-807E36FC 00012C 0060+00 2/3 0/0 0/0 .bss             b_path2 */
static cXyz b_path2[8];

/* 807D5634-807D5EBC 003294 0888+00 1/1 0/0 0/0 .text            e_wb_b_run2__FP10e_wb_class */
static void e_wb_b_run2(e_wb_class* i_this) {
    fopAc_ac_c* player_p = dComIfGp_getPlayer(0);
    cXyz pos1;
    cXyz pos2;
    f32 dist = fopAcM_searchPlayerDistanceXZ(i_this);
    f32 fVar10 = 0.0f;
    f32 fVar1 = 1.0f;
    s16 curr_angle = i_this->current.angle.y;
    
    switch (i_this->mActionMode) {
    case 0:
        anm_init(i_this,0x1b,3.0f, 0, 1.0f);
        i_this->mActionMode = 1;
        i_this->field_0x6be |= 8;
        i_this->field_0x1684 = 40.0f;
        i_this->mPlaySpeed = 1.0f;
        break;
    case 1:
        if (i_this->mpModelMorf->checkFrame(3.0f) != 0) {
            i_this->field_0x142d |= 2;
            i_this->field_0x142c = 10;
        } else {
            if (i_this->mpModelMorf->checkFrame(15.0f) != 0) {
                i_this->field_0x142d |= 3;
            }
        }
        
        if (i_this->mpModelMorf->isStop()) {
            anm_init(i_this,0x20,5.0f,2,1.0f);
            i_this->mActionMode = 2;
            cXyz loop_pos1;
            cXyz loop_pos2;
            int local_e0 = 0;

            for (int i = 1; i < 8; i++) {
                loop_pos1 = b_path2[local_e0] - i_this->current.pos;
                loop_pos2 = b_path2[i] - i_this->current.pos;

                if (loop_pos1.abs() > loop_pos2.abs()) {
                    local_e0 = i;
                }
            }
            
            i_this->mBPathIdx = local_e0;
            i_this->field_0x698 = cM_rndF(100.0f) + 100.0f; 
        }
        
        break;
    case 2:
        i_this->field_0x6bd = 1;
        
        for (int i = 0; i < 8; i++) {
            cMtx_YrotS(*calc_mtx,i << 0xd);
            pos1.z = 3000.0f;
            MtxPosition(&pos1,&pos2);
            pos2 += player_p->current.pos;
            b_path2[i] = pos2;
        }
        
        pos1 = b_path2[i_this->mBPathIdx] - i_this->current.pos;
        pos1.y = 0.0f;
        
        if (pos1.abs() < 600.0f) {
            int local_ec = 1;
            pos1 = b_path2[(i_this->mBPathIdx + 1) & 7] - i_this->current.pos;
            
            s16 tmp = i_this->current.angle.y - cM_atan2s(pos1.x,pos1.z);

            if (tmp < 0x4000 && tmp > -0x4000) {
                i_this->mBPathIdx += local_ec;
            } else {
                i_this->mBPathIdx -= local_ec;
            }

            i_this->mBPathIdx &= 7;
            i_this->mTargetAngleStep = 0;
        }
        
        pos1 = b_path2[i_this->mBPathIdx] - i_this->current.pos;
        i_this->mAngleTarget = cM_atan2s(pos1.x,pos1.z);

        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mAngleTarget,8,i_this->mTargetAngleStep);
        cLib_addCalcAngleS2(&i_this->mTargetAngleStep,0x400,1,0x10);

        fVar1 = 3.0f;
        fVar10 = l_HIO.mLeaderMaxSpeed;
        i_this->field_0x142c = 1;

        if (i_this->field_0x698 == 0 && dist < 5000.0f) {
            anm_init(i_this,0x25,3.0f,2,1.0f);
            i_this->mActionMode = 3;
        }
        break;
    case 3:
        if (i_this->speedF > 15.0f) {
            i_this->field_0x142c = 2;
        }
        
        if (i_this->speedF < 1.0f) {
            i_this->mActionID = ACT_B_WAIT;
            i_this->mActionMode = 0;
            return;
        }
    }
    
    cLib_addCalc2(&i_this->speedF,fVar10,1.0f,fVar1);
    cLib_addCalcAngleS2(&i_this->field_0x79a, -4 * (i_this->current.angle.y - curr_angle),8,0x200);
    i_this->mpModelMorf->setPlaySpeed(i_this->mPlaySpeed);
    cLib_addCalc2(&i_this->mPlaySpeed,1.0f,1.0f,0.1f);

    if (dist < 1000.0f) {
        i_this->mActionID = ACT_B_RUN;

        if (i_this->mAnmID == 0x20) {
            i_this->mActionMode = 2;
        } else {
            i_this->mActionMode = 0;
            i_this->mZ2Ride.startCreatureVoice(Z2SE_EN_RDB_V_HOICK, -1);
        }
    }

    if (i_this->mActionMode < 3 && i_this->field_0x142f > 0) {
        anm_init(i_this,0x25,3.0f,2,1.0f);
    
        if (i_this->speedF > 30.0f)
            i_this->speedF = 30.0f;
        
        i_this->mActionMode = 3;
    }
}

/* 807D5EBC-807D6058 003B1C 019C+00 1/1 0/0 0/0 .text            e_wb_b_wait2__FP10e_wb_class */
static void e_wb_b_wait2(e_wb_class* i_this) {
    // NONMATCHING
}

/* 807D6058-807D6C2C 003CB8 0BD4+00 2/1 0/0 0/0 .text            e_wb_b_run__FP10e_wb_class */
// NONMATCHING - float and general regalloc
static void e_wb_b_run(e_wb_class* i_this) {
    fopAc_ac_c* player_p = dComIfGp_getPlayer(0);
    cXyz pos1;
    cXyz pos2;
    f32 dist = fopAcM_searchPlayerDistanceXZ(i_this);
    f32 speed_target = 0.0;
    f32 speed_step = 1.0;
    
    if ((i_this->field_0x6be & 1) == 0) {
        i_this->mActionID= 7;
        i_this->mActionMode = 0;
    } else {
        s8 bVar11 = false;
        f32 fVar14 = l_HIO.mLeaderCalvaryBattleMaxSpeed;
        if (daPy_getPlayerActorClass()->checkHorseRide() && dComIfGp_getHorseActor()->speedF >= 30.0f) {
            bVar11 = true;
        }

        s16 sVar3 = i_this->current.angle.y;
        f32 horse_speed = 1.0f;
        s8 bVar4 = false;
        
        switch(i_this->mActionMode) {
        case 0:
            i_this->field_0x6be |= 8;
        case 1:
            i_this->field_0x1684 = 30.0f;
            i_this->mPlaySpeed = 1.0f;
            anm_init(i_this,0x20,5.0f,2,1.0f);
            i_this->mActionMode = 2;
            i_this->field_0x6be |= 0x10;
            i_this->mZ2Ride.startCreatureSound(Z2SE_EN_WB_KICK_GROUND,0,-1);

            if (i_this->field_0x68c != 0) {
                cXyz loop_pos1;
                cXyz loop_pos2;
                int local_e4 = 0;

                for (int i = 1; i < 8; i++) {
                    loop_pos1 = b_path[local_e4] - i_this->current.pos;
                    loop_pos2 = b_path[i] - i_this->current.pos;

                    if (loop_pos1.abs() > loop_pos2.abs()) {
                        local_e4 = i;
                    }
                }

                i_this->mBPathIdx = local_e4;
                
            } else {
                if (lbl_244_bss_45 == 1) {
                    i_this->mBPathIdx = 6;
                } else {
                    i_this->mBPathIdx = 2;
                }

                i_this->mBPathIdxIter = 1;
                i_this->field_0x68c = 1;
            }
            break;
        case 2: // link giving chase
            i_this->field_0x6bd = 1;
            pos1 = b_path[i_this->mBPathIdx] - i_this->current.pos;
            pos1.y = 0.0;
            
            if (pos1.abs() < 800.0f) {
                if (i_this->field_0x79e >= 4 && cM_rndF(1.0f) < 0.05f) {
                    i_this->mBPathIdxIter = cM_rndF(6.0f) + 1.0f;
                }
                
                pos1 = b_path[(i_this->mBPathIdx + 1) & 7] - i_this->current.pos;
                s16 angle = i_this->current.angle.y - cM_atan2s(pos1.x,pos1.z);
                
                if (angle < 0x4000 && angle > -0x4000) {
                    i_this->mBPathIdxIter = 1;
                } else {
                    i_this->mBPathIdxIter = -1;
                }
                
                OS_REPORT(" PT   %d\n", i_this->mBPathIdx);
                OS_REPORT(" DIR  %d\n", i_this->mBPathIdxIter);
                
                i_this->mBPathIdx += i_this->mBPathIdxIter;
                i_this->mBPathIdx &= 7;
                bVar4 = true;
                i_this->mTargetAngleStep = 0;
            } else {
                if (i_this->field_0x79f >= 3) {
                    i_this->field_0x79f = 0;
                    
                    if (cM_rndF(1.0f) < 0.5f) {
                        i_this->mBPathIdx += 3;                        
                    } else {
                        i_this->mBPathIdx -= 3;
                    }
                
                    i_this->mBPathIdx &= 7;
                    bVar4 = true;
                }
            }
            
            pos1 = b_path[i_this->mBPathIdx] - i_this->current.pos;
            i_this->mAngleTarget = cM_atan2s(pos1.x,pos1.z);
            cLib_addCalcAngleS2(&i_this->current.angle.y,i_this->mAngleTarget,8,i_this->mTargetAngleStep);
            cLib_addCalcAngleS2(&i_this->mTargetAngleStep,0x400,1,0x10);
            
            if (bVar11) {
                // float regalloc
                horse_speed = dComIfGp_getHorseActor()->speedF;
                speed_target = l_HIO.mLeaderCalvaryBattleMaxSpeed;
                
                if (speed_target > horse_speed) {
                    speed_target = horse_speed;
                } else {
                    if (speed_target < l_HIO.mLeaderMaxSpeed) {
                        speed_target = l_HIO.mLeaderMaxSpeed;
                    }
                }

                if (fopAcM_searchPlayerDistanceXZ(i_this) < 2000.0f) {
                    speed_target *= 1.2f;

                    if (i_this->speedF < l_HIO.mMaxSpeed) {
                        speed_step = 0.5f;
                    } else {
                        speed_step = 1.5f;
                    }
                }
                
                horse_speed = i_this->speedF / 40.0f;

                if (horse_speed < 1.0f)
                    horse_speed = 1.0f;
                
                if (horse_speed > 1.2f)
                    horse_speed = 1.2f;
            } else {
                speed_step = 3.0;
                speed_target = l_HIO.mLeaderMaxSpeed;
            }
            
            if (dist > 6000.0f) {
                i_this->mActionMode = 3;
                i_this->field_0x698 = 0xd;
            }
            
            i_this->field_0x142c = 1;
            break;
        case 3:
            i_this->field_0x6bd = 1;
            speed_target = l_HIO.mMaxSpeed;
            speed_step = 3.0f;
            
            if (i_this->field_0x698 == 10) {
                i_this->field_0x6be |= 0x20;
            }
            
            if (i_this->field_0x698 == 0) {
                i_this->mActionMode = 4;
                anm_init(i_this,0x25,3.0f,2,1.0f);
            }
            
            i_this->field_0x142c = 1;
            break;
        case 4:
            if (i_this->speedF > 15.0f) {
                i_this->field_0x142c = 2;
            }
            
            if (i_this->speedF < 1.0f) {
                i_this->mActionID = ACT_B_WAIT2;
                i_this->mActionMode = 0;
            }
            
            break;
        case 10: // jumping a fence / hit wall
            speed_target = l_HIO.mMaxSpeed;    
            speed_step = 3.0f;
            int anm_id = i_this->mAnmID;
            
            if (anm_id == 0x18) {
                if (i_this->speed.y < 10.0f) {
                    anm_init(i_this,0x19,10.0f,0,1.0f);
                }
            } else if (anm_id == 0x19) {
                if (i_this->speed.y < -30.0f || i_this->mAcch.ChkGroundHit()) {
                    anm_init(i_this,0x1a,2.0f,0,1.0f);
                    i_this->field_0x142d |= 0xc;
                    i_this->field_0x142e = 1;
                    i_this->field_0x6be |= 0x200;
                }
            } else if (anm_id == 0x1a) {
                i_this->field_0x142c = 1;
                
                if (i_this->mpModelMorf->isStop()) {
                    anm_init(i_this,0x20,2.0f,2,i_this->mPlaySpeed);
                    i_this->field_0x1684 = 30.0f;
                    i_this->mActionMode = 2;
                }
            }
        }
        
        if (i_this->mActionMode < 10) {
            cLib_addCalc2(&i_this->speedF,speed_target,1.0f,speed_step);
            cLib_addCalcAngleS2(&i_this->field_0x79a, -4 * (i_this->current.angle.y - sVar3), 8, 0x200);
            i_this->mpModelMorf->setPlaySpeed(i_this->mPlaySpeed);
            cLib_addCalc2(&i_this->mPlaySpeed,speed_target,1.0f,0.1f);

            if (i_this->speedF >= 30.0f && i_this->mAcch.ChkGroundHit()) {
                if (i_this->mAcch.ChkWallHit() || e_wb_saku_jump_check(i_this)) {
                    i_this->mActionMode = 10;
                    i_this->speed.y = 55.0f;
                    anm_init(i_this,0x18,2.0f,0, 1.0f);
                    i_this->field_0x6be |= 0x100;
                }
            }
        }
        
        if (bVar4) {
            pos1.x = 0.0f;
            pos1.y = 1000.0f;

            for (int i = 0; i < 8; i++) {
                cMtx_YrotS(*calc_mtx,i << 0xd);
                
                if (lbl_244_bss_45 == 1) {
                    pos1.z = cM_rndF(3000.0f) + 12000.0f;
                    MtxPosition(&pos1,&pos2);
                } else if (i_this->field_0x79e >= 4) {
                    pos1.z = cM_rndF(3000.0f) + 12000.0f;
                    MtxPosition(&pos1,&pos2);
                    pos2.x += -2989.0f;
                    pos2.z += 1364.0f;
                } else {
                    pos1.z = cM_rndF(1000.0f) + 9000.0f;
                    MtxPosition(&pos1,&pos2);
                    pos2.x += 28108.0f;
                    pos2.z += 6640.0f;
                }
        
                b_path[i] = pos2;
            }
        }
        
        if (i_this->field_0x142f > 0 && i_this->speedF > 30.0f) {
            i_this->speedF = 30.0f;
        }
  }
  return;
}

/* 807E370C-807E3718 00019C 000C+00 0/1 0/0 0/0 .bss             arrow_rd_pos$6257 */
#pragma push
#pragma force_active on
static u8 arrow_rd_pos[12];
#pragma pop

/* 807D6C2C-807D6CE0 00488C 00B4+00 1/1 0/0 0/0 .text            arrow_rd_set__FP10e_wb_class */
static void arrow_rd_set(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807E3724-807E3730 0001B4 000C+00 0/2 0/0 0/0 .bss             saku_p */
#pragma push
#pragma force_active on
static u8 saku_p[12];
#pragma pop

/* 807E373C-807E3748 0001CC 000C+00 0/2 0/0 0/0 .bss             saku_p2 */
#pragma push
#pragma force_active on
static u8 saku_p2[12];
#pragma pop

/* 807E3764-807E377C 0001F4 0018+00 0/1 0/0 0/0 .bss             ikki_pos$6284 */
#pragma push
#pragma force_active on
static u8 ikki_pos[24];
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

/* 807D79EC-807D7AD4 00564C 00E8+00 1/1 0/0 0/0 .text            e_wb_b_ikki_end__FP10e_wb_class */
static void e_wb_b_ikki_end(e_wb_class* param_0) {
    // NONMATCHING
}

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

/* 807D8648-807D88D8 0062A8 0290+00 2/1 0/0 0/0 .text            e_wb_b_lv9_end__FP10e_wb_class */
static void e_wb_b_lv9_end(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D88D8-807D8A78 006538 01A0+00 1/1 0/0 0/0 .text            e_wb_a_run__FP10e_wb_class */
static void e_wb_a_run(e_wb_class* i_this) {  
    s16 curr_angle_y = i_this->current.angle.y;
    s16 f5b4 = i_this->mActionMode;

    switch (f5b4) {
    case 0:
            anm_init(i_this, 0x20, 5.0f, 2, 1.399999976158142f);
            i_this->mActionMode = 1;
            i_this->mAngleTarget = i_this->current.angle.y;
            i_this->field_0x69a = cM_rndF(30.0f) + 80.0f;
    case 1:
        i_this->field_0x6bd = 1;
        i_this->field_0x142c = 1;
        
        if (i_this->field_0x698 == 0) {
            i_this->field_0x698 = cM_rndF(30.0f) + 10.0f;
            i_this->mAngleTarget += (s16)cM_rndFX(10000.0f);
        }
        
        if (i_this->field_0x69a == 1 || i_this->field_0x142f == 2) {
            i_this->mActionID = ACT_LR_DAMAGE;
            i_this->mZ2Ride.startCreatureVoice(Z2SE_EN_WB_V_DAMAGE,-1);
            i_this->mActionMode = 0;
        }
    default:
        cLib_addCalcAngleS2(&i_this->current.angle.y,i_this->mAngleTarget,8,0x800);
        cLib_addCalc2(&i_this->speedF,l_HIO.mMaxSpeed * 1.2f,1.0f,2.0f);
        cLib_addCalcAngleS2(&i_this->field_0x79a, (i_this->current.angle.y - curr_angle_y) * -8, 8, 0x200);
    }
}

/* 807D8A78-807D8C3C 0066D8 01C4+00 1/1 0/0 0/0 .text            e_wb_s_damage__FP10e_wb_class */
static void e_wb_s_damage(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D8C3C-807D901C 00689C 03E0+00 1/1 0/0 0/0 .text            e_wb_damage__FP10e_wb_class */
static int e_wb_damage(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D901C-807D91EC 006C7C 01D0+00 1/1 0/0 0/0 .text            e_wb_bg_damage__FP10e_wb_class */
static int e_wb_bg_damage(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D91EC-807D9608 006E4C 041C+00 1/1 0/0 0/0 .text            e_wb_lr_damage__FP10e_wb_class */
static int e_wb_lr_damage(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D9608-807D9698 007268 0090+00 1/1 0/0 0/0 .text            e_wb_kiba_start__FP10e_wb_class */
static void e_wb_kiba_start(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D9698-807D98D4 0072F8 023C+00 1/1 0/0 0/0 .text            e_wb_kiba_end__FP10e_wb_class */
static void e_wb_kiba_end(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807D98D4-807D9D44 007534 0470+00 1/1 0/0 0/0 .text            damage_check__FP10e_wb_class */
static void damage_check(e_wb_class* param_0) {
    // NONMATCHING
}

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
static int rd_count;

/* 807DA7F0-807DA868 008450 0078+00 1/1 0/0 0/0 .text            s_rdcount_sub__FPvPv */
static void* s_rdcount_sub(void* i_actor, void* i_data) {
    // NONMATCHING
}

/* 807DA868-807DA8E0 0084C8 0078+00 1/1 0/0 0/0 .text            s_rddel2_sub__FPvPv */
static void* s_rddel2_sub(void* i_actor, void* i_data) {
    // NONMATCHING
}

/* 807DA8E0-807DAA00 008540 0120+00 1/1 0/0 0/0 .text            e_wb_crv_wait__FP10e_wb_class */
static void e_wb_crv_wait(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807DAA00-807DB7E4 008660 0DE4+00 2/1 0/0 0/0 .text            e_wb_c_run__FP10e_wb_class */
static s8 e_wb_c_run(e_wb_class* i_this) {
    // // local_170 = m_Do_graphic::dComIfGp_getPlayer(0);
    // fopAc_ac_c* player_p = dComIfGp_getPlayer(0);
    // fopAcM_SearchByName(PROC_NPC_COACH)
    // // local_178 = d_ev_camera::fopAcM_SearchByName((d_ev_camera *)0x56);
    // // local_174 = local_178;
    // fopAcM_SearchByID()
    // local_17c = m_Do_graphic::fopAcM_SearchByID(*(m_Do_graphic **)&param_1[3].tevStr.field_0x330);
    // ::cXyz::cXyz(&local_10c);
    // ::cXyz::cXyz(&cStack_118);
    // fVar9 = 0.0;
    // bVar3 = false;
    // local_196 = false;
    // fVar8 = -46137.0 - i_this->current.pos.x;
    // fVar2 = 81549.0 - i_this->current.pos.z;
    // fVar8 = m_Do_mtx::JMAFastSqrt(fVar8 * fVar8 + fVar2 * fVar2);

    // if (d_s_play::g_regHIO.mChildReg[7].mFloatReg[7] + 5000.0 <= fVar8) {
    //     fVar8 = -7650.0 - i_this->current.pos.x;
    //     fVar2 = 56877.0 - i_this->current.pos.z;
    //     fVar8 = m_Do_mtx::JMAFastSqrt(fVar8 * fVar8 + fVar2 * fVar2);
    //     if (fVar8 < d_s_play::g_regHIO.mChildReg[7].mFloatReg[7] + 5000.0) {
    //         bVar3 = true;
    //     }
    // } else {
    //     bVar3 = true;
    // }
    
    // local_180 = e_wb_lr_wall_check(param_1);

    // if ((*(ushort *)&param_1[1].tevStr.field_0x7a & 1) == 0) {
    //     i_this->mActionID = 7;
    //     *(undefined2 *)&param_1[1].base.mBase.mDtTg.mBase.mpNode.mpData = 0;
    //     local_196 = false;
    // } else {
    //     sVar1 = i_this->current.angle.y;
    //     dBgS_LinChk::dBgS_LinChk(&dStack_100);
        
    //     switch(*(undefined2 *)&param_1[1].base.mBase.mDtTg.mBase.mpNode.mpData) {
    //     case 0:
    //         anm_init(0x4024000000000000,0x3ff0000000000000,param_1,0x2a,2);
    //         *(undefined2 *)&param_1[1].base.mBase.mDtTg.mBase.mpNode.mpData = 1;
    //         *(ushort *)&param_1[1].tevStr.field_0x7a = *(ushort *)&param_1[1].tevStr.field_0x7a | 0x20;
    //     case 1:
    //         ::cXyz::cXyz(&cStack_124,-62943.0,-9045.0,70997.0);
    //         ::cXyz::operator_-(&cStack_13c,&cStack_124,&i_this->current.pos);
    //         ::cXyz::operator_=(&local_10c,&cStack_13c);
    //         ::cXyz::~cXyz(&cStack_13c);
    //         sVar7 = cM_atan2s(local_10c.x,local_10c.z);
    //         i_this->current.angle.y = sVar7;
    //         ::cXyz::operator_-(&cStack_148,&cStack_124,&(local_174->current).pos);
    //         ::cXyz::operator_=(&local_10c,&cStack_148);
    //         ::cXyz::~cXyz(&cStack_148);
            
    //         if ((param_1[1].tevStr.field_0x163 == '\0') ||
    //             (fVar8 = m_Do_mtx::JMAFastSqrt(local_10c.x * local_10c.x + local_10c.z * local_10c.z),
    //             fVar8 < 500.0)) {
    //             *(undefined2 *)&param_1[1].base.mBase.mDtTg.mBase.mpNode.mpData = 2;
    //             param_1[1].tevStr.field_0x163 = 0;
    //             f_op_actor_mng::fopAcM_setStageLayer(param_1);
    //             param_1[4].tevStr.field_0x171 = 1;
    //         }

    //         break;
    //     case 2:
    //         if (param_1[1].tevStr.field_0x162 == '\0') {
    //             anm_init(0x4008000000000000,0x3ff0000000000000,param_1,0x1b,0);
    //             *(undefined2 *)&param_1[1].base.mBase.mDtTg.mBase.mpNode.mpData = 0xb;
    //             *(undefined4 *)&param_1[4].tevStr.field_0x14 = 0x42200000;
    //             *(ushort *)&param_1[1].tevStr.field_0x7a = *(ushort *)&param_1[1].tevStr.field_0x7a | 8;
    //         } else {
    //             param_1[1].tevStr.field_0x162 = 0;
    //             anm_init(0x4014000000000000,0x3ff0000000000000,param_1,0x20,2);
    //             fVar8 = cM_rndF(10.0);
    //             mDoExt_morf_c::setFrame(*(mDoExt_morf_c **)&param_1[1].base.mBase.mPi.mBase.mbIsUse,fVar8);
    //             *(undefined2 *)&param_1[1].base.mBase.mDtTg.mBase.mpNode.mpData = 0xc;
    //             *(ushort *)&param_1[1].tevStr.field_0x7a = *(ushort *)&param_1[1].tevStr.field_0x7a | 0x10;
    //             uVar6 = JAISoundID::JAISoundID(aJStack_184,0x3002a);
    //             ppnVar4 = &param_1[1].base.mBase.mPi.mMtdTag.mCreateTag.mpNode.mpNextNode;
    //             (*(code *)(*ppnVar4)[1].mpNextNode)(ppnVar4,uVar6,0,0xffffffff);
    //         }
            
    //         break;
    //     case 0xb:
    //         iVar5 = mDoExt_morf_c::checkFrame(*(mDoExt_morf_c **)&param_1[1].base.mBase.mPi.mBase.mbIsUse,3.0);
            
    //         if (iVar5 == 0) {
    //             iVar5 = mDoExt_morf_c::checkFrame(*(mDoExt_morf_c **)&param_1[1].base.mBase.mPi.mBase.mbIsUse,15.0);
                
    //             if (iVar5 != 0) {
    //                 param_1[3].tevStr.field_0x329 = param_1[3].tevStr.field_0x329 | 3;
    //             }
    //         } else {
    //             param_1[3].tevStr.field_0x329 = param_1[3].tevStr.field_0x329 | 2;
    //             param_1[3].tevStr.field_0x328 = 10;
    //         }

    //         iVar5 = mDoExt_morf_c::isStop(*(mDoExt_morf_c **)&param_1[1].base.mBase.mPi.mBase.mbIsUse);

    //         if (iVar5 != 0) {
    //             anm_init(0x4014000000000000,0x3ff0000000000000,param_1,0x20,2);
    //             *(undefined2 *)&param_1[1].base.mBase.mDtTg.mBase.mpNode.mpData = 0xc;
    //             *(ushort *)&param_1[1].tevStr.field_0x7a = *(ushort *)&param_1[1].tevStr.field_0x7a | 0x10;
    //             uVar6 = JAISoundID::JAISoundID(aJStack_188,0x3002a);
    //             ppnVar4 = &param_1[1].base.mBase.mPi.mMtdTag.mCreateTag.mpNode.mpNextNode;
    //             (*(code *)(*ppnVar4)[1].mpNextNode)(ppnVar4,uVar6,0,0xffffffff);
    //         }
            
    //         break;
    //     case 0xc:
    //         *(undefined2 *)&param_1[1].base.mBase.mDtTg.mBase.mpNode.mpData = 0xd;
    //     case 0xd:
    //         ::cXyz::operator_=(&local_10c,&i_this->current.pos);
    //         local_10c.y = local_10c.y + 500.0;
    //         ::cXyz::operator_=(&cStack_118,&local_174->eyePos);
    //         cStack_118.y = cStack_118.y + 500.0;
    //         dBgS_LinChk::Set(&dStack_100,&local_10c,&cStack_118,param_1);
    //         local_197 = false;
    //         this = f_op_actor::dComIfG_Bgsp();
    //         iVar5 = dBgS::LineCross(this,&dStack_100.base);

    //         if (iVar5 == 0) {
    //             f_op_actor_mng::cMtx_YrotS((Mtx *)&mtx,(local_174->shape_angle).y);
    //             ::cXyz::operator_=(&cStack_118,&(local_174->current).pos);
    //             ::cXyz::operator_=((cXyz *)&param_1[1].base.mBase.mPi,&cStack_118);
    //         } else {
    //             ::cXyz::operator_-(&cStack_130,(cXyz *)&param_1[1].base.mBase.mPi,&i_this->current.pos);
    //             ::cXyz::operator_-(&cStack_154,&local_170->eyePos,&i_this->current.pos);
    //             ::cXyz::operator_=(&local_10c,&cStack_154);
    //             ::cXyz::~cXyz(&cStack_154);
    //             fVar9 = ::cXyz::abs(&local_10c);
    //             fVar8 = ::cXyz::abs(&cStack_130);
                
    //             if (fVar9 <= fVar8) {
    //                 f_op_actor_mng::cMtx_YrotS((Mtx *)&mtx,(local_170->shape_angle).y);
    //                 ::cXyz::operator_=(&cStack_118,&local_170->eyePos);
    //             } else {
    //                 ::cXyz::operator_=(&cStack_118,(cXyz *)&param_1[1].base.mBase.mPi);
    //             }
                
    //             local_197 = fVar9 > fVar8;
    //         }
            
    //         if (local_197) {
    //             ::cXyz::set(&local_10c,0.0f,0.0f,0.0);
    //         } else {
    //             if (DAT_80c050cc == '\0') {
    //                 ::cXyz::cXyz((cXyz *)&@LOCAL@e_wb_c_run__FP10e_wb_class@sh_pos,400.0f,200.0f,200.0);
    //                 ::cXyz::cXyz((cXyz *)&DAT_80c050dc,-400.0f,200.0f,300.0);
    //                 ::cXyz::cXyz((cXyz *)&DAT_80c050e8,0.0f,200.0f,-700.0);
    //                 DAT_80c050cc = '\x01';
    //             }
                
    //             if (DAT_80c050f4 == '\0') {
    //                 ::cXyz::cXyz((cXyz *)&@LOCAL@e_wb_c_run__FP10e_wb_class@sh_posH@0,150.0f,200.0f,200.0);
    //                 ::cXyz::cXyz((cXyz *)&DAT_80c05104,-150.0f,200.0f,300.0);
    //                 ::cXyz::cXyz((cXyz *)&DAT_80c05110,0.0f,200.0f,-700.0);
    //                 DAT_80c050f4 = '\x01';
    //             }
        
    //             if ((bVar3) || (local_180 != 0)) {
    //                 ::cXyz::operator_=(&local_10c,(cXyz *)(&@LOCAL@e_wb_c_run__FP10e_wb_class@sh_posH@0 + (*(byte *)((int)&param_1[1].base.mBase.mDtTg.mBase.mpTagData + 1) - 1) * 0xc));
    //             } else {
    //                 ::cXyz::operator_=(&local_10c,(cXyz *)(&@LOCAL@e_wb_c_run__FP10e_wb_class@sh_pos + (*(byte *)((int)&param_1[1].base.mBase.mDtTg.mBase.mpTagData + 1) - 1) * 0xc));
    //                 local_10c.x = local_10c.x + *(float *)&param_1[1].tevStr.field_0x80;
    //                 local_10c.z = local_10c.z + *(float *)&param_1[1].tevStr.field_0x164;
                    
    //                 if (((*(ushort *)&param_1[1].tevStr.field_0x4a & 0x3f) == 0) &&
    //                     (fVar9 = cM_rndF(1.0), fVar9 < 0.5)) {
    //                     fVar9 = cM_rndF(200.0);
    //                     *(float *)&param_1[1].tevStr.field_0x164 = -fVar9;
    //                     fVar9 = cM_rndFX(100.0);
    //                     *(float *)&param_1[1].tevStr.field_0x80 = fVar9;
    //                 }
    //             }
    //         }
            
    //         MtxPosition(&local_10c,&param_1[1].base.mBase.mDtTg.mpLayer);
    //         ::cXyz::operator_+=((cXyz *)&param_1[1].base.mBase.mDtTg.mpLayer,(Vec *)&cStack_118);
    //         ::cXyz::operator_-(&cStack_160,(cXyz *)&param_1[1].base.mBase.mDtTg.mpLayer, &i_this->current.pos);
    //         ::cXyz::operator_=(&local_10c,&cStack_160);
    //         ::cXyz::~cXyz(&cStack_160);
    //         fVar8 = m_Do_mtx::JMAFastSqrt(local_10c.x * local_10c.x + local_10c.z * local_10c.z);
    //         fVar9 = DAT_80c04f10;
            
    //         if (((fVar8 >= 500.0) && (fVar9 = DAT_80c04f14, fVar8 > 3000.0)) &&
    //             (*(char *)((int)&param_1[1].base.mBase.mDtTg.mBase.mpTagData + 3) != '\0')) {
    //             fVar9 = DAT_80c04f18;
    //         }
            
    //         local_196 = (*(ushort *)&param_1[1].tevStr.field_0x7a & 2) == 0;
    //         if (local_196) {
    //             fVar9 = 20.0;
    //         }
            
    //         local_192 = 0x200;
    //         sVar7 = cM_atan2s(local_10c.x,local_10c.z);
    //         *(s16 *)&param_1[1].base.mBase.mPi.mBase.mpTagData = sVar7;
    //         if ((local_17c == (fopAc_ac_c *)0x0) || (*(int *)&local_17c[1].tevStr.field_0x38 != 0x27)) {
    //             if (local_180 != 0) {
    //                 *(short *)&param_1[1].base.mBase.mPi.mBase.mpTagData =
    //                 *(short *)&param_1[1].base.mBase.mPi.mBase.mpTagData +
    //                 (d_s_play::g_regHIO.mChildReg[8].mShortReg[8] + -8000) * (short)local_180;
    //             }
    //         } else {
    //             fVar8 = m_Do_graphic::cM_ssin(*(short *)&param_1[1].tevStr.field_0x4a * (d_s_play::g_regHIO.mChildReg[8].mShortReg[7] + 1000));
    //             iVar5 = (int)((d_s_play::g_regHIO.mChildReg[8].mFloatReg[0x10] + 5000.0) * fVar8);
    //             local_90 = (longlong)iVar5;
    //             *(short *)&param_1[1].base.mBase.mPi.mBase.mpTagData =
    //             *(short *)&param_1[1].base.mBase.mPi.mBase.mpTagData + (short)iVar5;
    //             local_192 = 0x400;
    //         }
            
    //         cLib_addCalcAngleS2(&i_this->current.angle.y,*(s16 *)&param_1[1].base.mBase.mPi.mBase.mpTagData,8, local_192);
    //         fVar8 = param_1->speedF / 40.0;

    //         if (fVar8 < 1.0) {
    //             fVar8 = 1.0;
    //         }

    //         if (fVar8 > 1.3) {
    //             fVar8 = 1.3;
    //         }

    //         mDoExt_morf_c::setPlaySpeed(*(mDoExt_morf_c **)&param_1[1].base.mBase.mPi.mBase.mbIsUse,fVar8);
    //         param_1[3].tevStr.field_0x328 = 1;
    //         param_1[1].tevStr.field_0x79 = 1;

    //         break;
    //     case 0x14:
    //         anm_init(0x4008000000000000,0x3ff0000000000000,param_1,0x25,2);
    //         *(undefined2 *)&param_1[1].base.mBase.mDtTg.mBase.mpNode.mpData = 0x15;
        
    //     case 0x15:
    //         if (param_1->speedF <= 15.0) {
    //             anm_init(0x4024000000000000,0x3ff0000000000000,param_1,0x2a,2);
    //             *(undefined2 *)&param_1[1].base.mBase.mDtTg.mBase.mpNode.mpData = 0x16;
    //             *(ushort *)&param_1[1].tevStr.field_0x7a = *(ushort *)&param_1[1].tevStr.field_0x7a | 0x20;
    //         } else {
    //             param_1[3].tevStr.field_0x328 = 2;
    //             uVar6 = JAISoundID::JAISoundID(aJStack_18c,0x30029);
    //             ppnVar4 = &param_1[1].base.mBase.mPi.mMtdTag.mCreateTag.mpNode.mpNextNode;
    //             (*(code *)(*ppnVar4)[2].mpPrevNode)(ppnVar4,uVar6,0,0xffffffff);
    //         }
    //     }
    
    //     if (*(short *)&param_1[1].base.mBase.mDtTg.mBase.mpNode.mpData < 0x14) {
    //         local_10c.x = 4025.0 - (local_174->current).pos.x;
    //         local_10c.z = 52319.0 - (local_174->current).pos.z;
            
    //         if ((local_174->speedF < 1.0) || (fVar8 = m_Do_mtx::JMAFastSqrt(local_10c.x * local_10c.x + local_10c.z * local_10c.z), fVar8 < 1500.0)) {
    //             ::cXyz::operator_-(&cStack_16c,&(local_174->current).pos,&i_this->current.pos);
    //             ::cXyz::operator_=(&local_10c,&cStack_16c);
    //             ::cXyz::~cXyz(&cStack_16c);
    //             fVar8 = ::cXyz::abs(&local_10c);

    //             if (fVar8 < 1000.0) {
    //                 *(undefined2 *)&param_1[1].base.mBase.mDtTg.mBase.mpNode.mpData = 0x14;
    //             }
    //         }
    //     }
        
    //     cLib_addCalc2(&param_1->speedF,fVar9,1.0,1.0);
    //     cLib_addCalcAngleS2((s16 *)&param_1[1].tevStr.field_0x156, (d_s_play::g_regHIO.mChildReg[0].mShortReg[7] + -8) * (i_this->current.angle.y - sVar1),8,0x200);
    //     dBgS_LinChk::~dBgS_LinChk(&dStack_100);
    // }
    
    // return local_196;
}

/* 807DB7E4-807DBEE8 009444 0704+00 2/1 0/0 0/0 .text            action__FP10e_wb_class */
// NONMATCHING - regalloc / conditional pathing
static void action(e_wb_class* i_this) {
    cXyz pos1;
    cXyz pos2;
    cLib_addCalcAngleS2(&i_this->field_0x79a,0,8,0x100);
    
    if (i_this->mActionID != 0x67) {
        damage_check(i_this);
    }
    
    s8 cVar8 = false;
    i_this->offDownFlg();

    if (lbl_244_bss_45 != 0 || lbl_244_bss_46 != 0 ) {
        i_this->field_0x142f = gake_check(i_this);
    }

    switch(i_this->mActionID) {
    case ACT_WAIT:
    case ACT_WAIT2:
        e_wb_wait(i_this);

        if (i_this->field_0x6a0 == 0) {
            cVar8 = true;
        }
        
        break;
    case ACT_RIDE:
        e_wb_ride(i_this);
        break;
    case ACT_F_WAIT:
        e_wb_f_wait(i_this);
        break;
    case ACT_C_F_RUN:
        if (i_this->mParam == 10) {
            cVar8 = e_wb_c_run(i_this);
            dComIfGp_getPlayer(0); // unusued?

            if (i_this->home.pos.y - i_this->current.pos.y > 4500.0f) {
                OS_REPORT(" WB NARAKU DOWN  \n")
                fopAcM_delete(i_this);
            }
        } else {
            e_wb_f_run(i_this);
        }
        
        break;
    case ACT_A_RUN:
        e_wb_a_run(i_this);
        break;
    case ACT_B_WAIT:
        e_wb_b_wait(i_this);
        break;
    case ACT_B_WAIT2:
        e_wb_b_wait2(i_this);
        break;
    case ACT_B_RUN:
        e_wb_b_run(i_this);
        break;
    case ACT_B_RUN2:
        e_wb_b_run2(i_this);
        break;
    case ACT_B_IKKI:
        e_wb_b_ikki(i_this);
        break;
    case ACT_B_IKKI_END:
        e_wb_b_ikki_end(i_this);
        break;
    case ACT_B_IKKI2:
        e_wb_b_ikki2(i_this);
        break;
    case ACT_B_IKKI2_END:
        e_wb_b_ikki2_end(i_this);
        break;
    case ACT_B_LV9_END:
        e_wb_b_lv9_end(i_this);
        break;
    case ACT_S_DAMAGE:
        e_wb_s_damage(i_this);
        break;
    case ACT_DAMAGE:
        if (e_wb_damage(i_this)) {
            i_this->onDownFlg();
        }
        
        cVar8 = true;
        break;
    case ACT_BG_DAMAGE:
        if (e_wb_bg_damage(i_this)) {
            i_this->onDownFlg();
        }

        cVar8 = true;
        break;
    case ACT_LR_DAMAGE:
        if (e_wb_lr_damage(i_this)) {
            i_this->onDownFlg();
        }
        
        cVar8 = true;
        break;
    case ACT_KIBA_START:
        e_wb_kiba_start(i_this);
        break;
    case ACT_KIBA_END:
        e_wb_kiba_end(i_this);
        break;
    case ACT_EVENT:
        if (!dComIfGp_event_runCheck()) {
            cVar8 = true;
        }
        
        break;
    case ACT_PL_RIDE:
        e_wb_pl_ride_now(i_this);
        break;
    case ACT_PL_RIDE2:
        e_wb_pl_ride(i_this);
        break;
    case ACT_PL_RIDE_NOW:
        e_wb_pl_ride(i_this);
        break;
    case ACT_CRV_WAIT:
        e_wb_crv_wait(i_this);
    }

    if (i_this->speedF > 10.0f) {
        if (i_this->field_0x13e4 != 0xfd) {
            i_this->field_0x13e4 = 0xfd;
            i_this->field_0x9c4.Init(0xfd,0,i_this);
        }
    } else if (i_this->field_0x13e4 != 0xdc) {
        i_this->field_0x13e4 = 0xdc;
        i_this->field_0x9c4.Init(0xdc,0,i_this);
    }

    i_this->attention_info.flags &= 0xffffff7f;

    if (lbl_244_bss_45 != 0) {
        if (i_this->field_0x7a7 == 0) {
            if (cVar8) {
                if (daPy_getPlayerActorClass()->checkHorseRide()) {
                    if (dComIfGp_getHorseActor()->speedF >= 30.0f || i_this->field_0x7a6 != 0) {
                        if (i_this->field_0x5bf != 0) {
                            fpcM_Search(s_rddel2_sub, i_this);
                            rd_count = 0;
                            fpcM_Search(s_rdcount_sub, i_this);

                            if (rd_count <= 8) {
                                i_this->field_0x7a7 = 0;
                                i_this->mActionID = ACT_WAIT2;
                                i_this->mActionMode = 0;
                                i_this->field_0x6a0 = 0x1e;
                                i_this->field_0x6be = 3;
                                i_this->field_0x6ae.set(0,0,0);
                                wb_rd_reset(i_this);
                                if (i_this->field_0x79d == 0) {
                                    OS_REPORT("   WB RESET  \n");
                                } else {
                                    OS_REPORT("   BB RESET  \n");
                                }
                            }
                        }
                    }
                }       
            }
        } else {

        }
    }
    
    if (lbl_244_bss_47 != 0) {
        if (i_this->field_0x7a6 == 0) {
            if (!daPy_getPlayerActorClass()->checkHorseRide() || !(dComIfGp_getHorseActor()->speedF >= 20.0f)
                || !cVar8 || i_this->field_0x5bf != 0) {
    
                fpcM_Search(s_rddel2_sub,i_this);
                rd_count = 0;
                fpcM_Search(s_rdcount_sub,i_this);

                if (rd_count <= 5) {
                    i_this->field_0x7a7 = 0;
                    i_this->mActionID = ACT_WAIT2;
                    i_this->mActionMode = 0;
                    i_this->field_0x6a0 = 0x1e;
                    i_this->field_0x6be = 3;
                    i_this->field_0x6ae.set(0,0,0);
                    wb_c_rd_reset(i_this);
                    i_this->field_0x68e = (s16)cM_rndF(65535.0f);
                }
            }
        }
    }
    
    cMtx_YrotS(*calc_mtx,i_this->current.angle.y);
    pos1.x = 0.0f;
    pos1.y = 0.0f;
    pos1.z = i_this->speedF;

    MtxPosition(&pos1,&pos2);
    i_this->speed.x = pos2.x;
    i_this->speed.z = pos2.z;
    i_this->current.pos += i_this->speed;
    i_this->speed.y -= 5.0f;

    if (i_this->speed.y < -120.0f)
        i_this->speed.y = -120.0f;

    if (i_this->mActionID == ACT_WAIT && (i_this->field_0x6be & 3) == 0) {
        // Bulblin Camp
        if (strcmp(dComIfGp_getStartStageName(),"F_SP118")) {
            // Gerudo Desert
            if (strcmp(dComIfGp_getStartStageName(),"F_SP124") && lbl_244_bss_46 == 0) {
                // Hyrule Castle
                if (!strcmp(dComIfGp_getStartStageName(),"D_MN09")) {
                    s16 ang = cLib_targetAngleY(&i_this->attention_info.position, &dComIfGp_getPlayer(0)->current.pos) - i_this->shape_angle.y;
                    int target_angle = abs(ang);

                    if (target_angle < 0x6000 && target_angle > 0x3000) {
                        i_this->attention_info.flags |= 0x80;
                    } else {
                        i_this->attention_info.flags &= 0xffffff7f;
                    }
                }
            }
        } else {
            i_this->attention_info.flags &= 0xffffff7f;
        }
    }

    s16 angle = 0;
    
    if (i_this->mAnmID == 0x28) {
        angle = (i_this->current.angle.y - i_this->old.angle.y) * 7 + VREG_S(2);
    }

    cLib_addCalcAngleS2(&i_this->field_0x6d8,angle,8,0x400);

    if (lbl_244_bss_45 != 0 && i_this->home.pos.y - i_this->current.pos.y > 5000.0f) {
        i_this->mActionID = ACT_EVENT;
        i_this->mActionMode = 0;
        i_this->field_0x6be |= 0x40;
        i_this->current.pos = i_this->home.pos;
        i_this->old = i_this->current;
    }
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

/* 807DC168-807DFAB4 009DC8 394C+00 2/1 0/0 0/0 .text            demo_camera__FP10e_wb_class */
static void demo_camera(e_wb_class* param_0) {
    // NONMATCHING
}

/* 807DFB18-807E0388 00D778 0870+00 1/1 0/0 0/0 .text            anm_se_eff_set__FP10e_wb_class */
static void anm_se_eff_set(e_wb_class* i_this) {
    // NONMATCHING
}

/* 807E382C-807E3850 0002BC 0024+00 0/0 0/0 0/0 .bss             sh_pos$7813 */
#pragma push
#pragma force_active on
static u8 sh_pos[36];
#pragma pop

/* 807E3878-807E389C 000308 0024+00 0/0 0/0 0/0 .bss             sh_posH$7819 */
#pragma push
#pragma force_active on
static u8 sh_posH[36];
#pragma pop

/* 807E389C-807E38A0 00032C 0004+00 0/2 0/0 0/0 .bss             c_start */
#pragma push
#pragma force_active on
static u32 c_start;
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

/* 807E108C-807E13A8 00ECEC 031C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    e_wb_class* i_this = (e_wb_class*)a_this;

    i_this->mpModelMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes(i_this->mResName, 0x2e), 
        NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 0x28),
        0, 1.0f, 0, -1, &i_this->mZ2Ride, 0x80000,0x11000084);

    if (i_this->mpModelMorf == NULL || i_this->mpModelMorf->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = i_this->mpModelMorf->getModel();
    model->setUserArea((u32)i_this);

    for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
        model->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack);
    }
    
    for (int i = 0; i < 2; i++) {
        if (i_this->field_0x79d != 0) {
            int iVar6 = i_this->field_0x15d0[i].init(1,0x10,(ResTIMG*)dComIfG_getObjectRes("Always",0x54),1);
            
            if (iVar6 == 0) {
                return 0;
            }
        } else {
            int iVar6 = i_this->field_0x15d0[i].init(1,0x10,(ResTIMG*)dComIfG_getObjectRes("Always",0x54),1);
            
            if (iVar6 == 0) {
                return 0;
            }
        }
        
        f32* size = i_this->field_0x15d0[i].getSize(0);
        for (int j = 0; j < 16; j++) {
            if (i_this->field_0x79d != 0) {
                *size = 3.0f + PREG_S(0); 
            } else {
                *size = 5.0f + PREG_S(1); 
            }
            size++;
        }
    }
    
    if (i_this->field_0x79d != 0) {
        int iVar6 = i_this->field_0x1648.init(1,2,(ResTIMG*)dComIfG_getObjectRes("Always",0x54),1);

        if (iVar6 == 0) {
            return 0;
        }
    } else {
        int iVar6 = i_this->field_0x1648.init(1,2,(ResTIMG*)dComIfG_getObjectRes("Always",0x54),1);
        if (iVar6 == 0) {
            return 0;
        }
    }
    
    f32* size = i_this->field_0x1648.getSize(0);
    
    for (int i = 0; i < 2; i++) {
        if (i_this->field_0x79d != 0) {
            *size = 3.0f + PREG_S(0); 
        } else {
            *size = 5.0f + PREG_S(1); 
        }
        size++;
    }
        
    return 1;
}

/* 807E13A8-807E1CB0 00F008 0908+00 1/0 0/0 0/0 .text            daE_WB_Create__FP10fopAc_ac_c */
static int daE_WB_Create(fopAc_ac_c* a_this) {
    fopAcM_SetupActor(a_this, e_wb_class);
    e_wb_class* i_this = (e_wb_class*)a_this; 
    
    OS_REPORT("//////////////E_WB SET 555 !!\n");

    fopAcM_GetParam((fopAc_ac_c *)i_this);
    i_this->mParam = fopAcM_GetParam(i_this);

    if (i_this->mParam == 5 || i_this->mParam == 7 || i_this->mParam == 8 || i_this->mParam == 9) {
        i_this->mResName = "E_bb";
    } else {
        i_this->mResName = "E_wb";
    }

    int phase = dComIfG_resLoad(&i_this->mPhase,i_this->mResName);
    lbl_244_bss_46 = 0;
    lbl_244_bss_45 = 0;
    lbl_244_bss_47 = 0;
    
    // Title Screen
    if (!strcmp(dComIfGp_getStartStageName(),"F_SP102")) {
        lbl_244_bss_45 = 2;
    }
    

    // Hyrule Field, Bridge of Eldin area
    if (!strcmp(dComIfGp_getStartStageName(),"F_SP121") && fopAcM_GetRoomNo(i_this) == 0) {
        lbl_244_bss_46 = 1;
    }
    
    if (phase == cPhs_COMPLEATE_e) {
        i_this->mActionID = ACT_WAIT;
        
        if (i_this->mParam == 0xff) {
            i_this->mParam = 0;
        } else if (i_this->mParam == 5) {
            i_this->field_0x79d = 1;
            i_this->mActionID = 8;
        } else if (i_this->mParam == 7) {
            i_this->field_0x79d = 2;
            i_this->mActionID = 0xf;
            
            if (cDmr_SkipInfo == 0) {
                i_this->field_0x169e= 0x28;
                arrow_rd_set(i_this);
            } else {
                Z2GetAudioMgr()->subBgmStart(Z2BGM_FACE_OFF_BATTLE2);
                i_this->field_0x1722 = 1;
            }
        } else if (i_this->mParam == 8) {
            i_this->field_0x79d = 3;
            i_this->mActionID = 0x11;

            // Hyrule Field
            if (!strcmp(dComIfGp_getStartStageName(),"F_SP121")) {
                i_this->mActionMode = -100;
            }
            
            i_this->mAngleTarget = 0x8000;
        } else if (i_this->mParam == 6) {
            i_this->mActionID = 0x32;
        } else if (i_this->mParam == 10) {
            i_this->mActionID = 6;
            i_this->field_0x7a6 = 1;
            i_this->field_0x7a7 = 1;
        
            if (fopAcM_gc_c::gndCheck(&i_this->current.pos)) {
                i_this->current.pos.y = fopAcM_gc_c::getGroundY();
            }
        
            OS_REPORT(" C_RD RESET  00\n")
        } else if (i_this->mParam == 9) {
            i_this->field_0x79d = 4;
            i_this->mActionID = ACT_B_LV9_END;
            i_this->mActionMode = 0;
        }
    
        i_this->mParam2 = fopAcM_GetParam(i_this) >> 8;

        if (i_this->field_0x79d != 0) {
            i_this->field_0x688 = 2;
            cXyz local_38;
            cXyz local_44;
            local_38.x = 0.0f;
            local_38.y = 1000.0f;

            for (int i = 0; i < 8; i++) {
                cMtx_YrotS(*calc_mtx, i << 0xd);

                if (lbl_244_bss_45 == 1) {
                    local_38.z = cM_rndF(3000.0f) + 12000.0f;
                    MtxPosition(&local_38,&local_44);
                } else {
                    local_38.z = 13000.0f;
                    MtxPosition(&local_38,&local_44);
                    local_44.x += -2989.0f;
                    local_44.z += 1364.0f;
                }

                b_path[i] = local_44;
            }
            
            if (i_this->field_0x79d == 1 || i_this->field_0x79d == 2) {
                s8 room_no = fopAcM_GetRoomNo(i_this);
                fopAcM_createChild((s16)0x119, fopAcM_GetID(i_this), 0, &i_this->current.pos,room_no, 0, 0, -1, 0);
            }

            i_this->field_0x7a8 = pass_r[i_this->mParam2];
            i_this->field_0x6c4 = x_check_off[i_this->mParam2];
        }

        u32 local_50;

        if (i_this->field_0x79d != 0) {
            local_50 = 0x4300;
        } else {
            local_50 = 0x3740;
        }

        if (!fopAcM_entrySolidHeap(i_this,useHeapInit,local_50)) {
            OS_REPORT("//////////////E_WB SET NON !!\n")
            return cPhs_ERROR_e;
        } else {
            if (lbl_244_bss_48 == 0) {
                i_this->field_0x17e0 = 1;
                lbl_244_bss_48 = 1;
                l_HIO.field_0x04 = mDoHIO_CREATE_CHILD("�C�m�V�V", &l_HIO);
            }
      
            fopAcM_OnStatus(i_this,0);

            i_this->attention_info.flags = 4;
            i_this->attention_info.distances[7] = 0xe;

            fopAcM_SetMtx(i_this,i_this->mpModelMorf->getModel()->getBaseTRMtx());
            fopAcM_SetMin(i_this,-800.0f,-400.0f,-800.0f);
            fopAcM_SetMax(i_this,800.0f,400.0f,800.0f);

            fopAcM_setCullSizeFar(i_this, 30000.0f);

            i_this->mAcch.Set(fopAcM_GetPosition_p(i_this), fopAcM_GetOldPosition_p(i_this), i_this, 1, &i_this->field_0x7ac, fopAcM_GetSpeed_p(i_this), 0, 0);
            i_this->field_0x7ac.SetWall(100.0f, 100.0f + BREG_F(8));
            i_this->mAcch.ClrWaterNone();
        
            i_this->health = 10;
            i_this->field_0x560 = 10;

            if (i_this->field_0x79d != 0) {
                i_this->field_0x9c4.Init(0xfe,0,i_this);
            } else {
                i_this->field_0x9c4.Init(0xfd,0,i_this);
            }

            for (int i = 0; i <= 6; i++) {
                i_this->field_0xa00[i].Set(cc_sph_src);
                i_this->field_0xa00[i].SetStts(&i_this->field_0x9c4);
            
                if (i_this->field_0x79d != 0) {
                    i_this->field_0xa00[i].OnTgShield();
                    i_this->field_0xa00[i].SetTgHitMark(CcG_Tg_UNK_MARK_2);
                }
            }
      

            i_this->field_0x1288.Set(at_sph_src);
            i_this->field_0x1288.SetStts(&i_this->field_0x9c4);

            i_this->attention_info.distances[4] = '(';
            i_this->attention_info.distances[0] = '\x16';
            i_this->attention_info.distances[7] = 0x30;
            i_this->attention_info.flags = 0;
            i_this->field_0x68e = (s16)cM_rndF(65535.0f);

            for (int i = 0; i < 2; i++) {
                for (int j = 0; j < 16; j++) {
                    i_this->field_0x1450[i].field_0x0[j] = i_this->current.pos;
                }
            }

            i_this->field_0x1438[0] = i_this->current.pos;
            i_this->field_0x1438[1] = i_this->field_0x1438[0];
      
            i_this->mZ2Ride.init(&i_this->current.pos, &i_this->eyePos, 6, 1);
            i_this->field_0x13c0.mpSound = &i_this->mZ2Ride;

            // Bulblin Camp
            if (!strcmp(dComIfGp_getStartStageName(),"F_SP118")) {
                s16 room_no = fopAcM_GetRoomNo(i_this);
                
                if (room_no == 1) {
                    i_this->current.pos.set(1500.0f,0.0f,1100.0f);
                    i_this->current.angle.y = 0x2000;
                    i_this->mActionID = ACT_CRV_WAIT;
                    i_this->field_0x1720 = 1;
                } else {
                    room_no = fopAcM_GetRoomNo(i_this);
                
                    if (room_no == 2) {
                        i_this->mActionID = ACT_LR_DAMAGE;
                        anm_init(i_this,0x12,0.0f,2,1.0f);
                        i_this->mActionMode = 3;
                        i_this->current.pos.x = 828.0f;
                        i_this->current.pos.z = 554.0f;
                        i_this->shape_angle.y = 0x800;
                        i_this->current.angle.y = 0x800;
                        i_this->field_0x1720 = 1;
                    }
                }
            }
            
            if (i_this->mParam == 10) {
                lbl_244_bss_47 = 1;
            }

            fopAcM_setCullSizeFar(i_this,30000.0f);
            i_this->mSpeedRate = l_HIO.mSearchIgnoreDistance2;
            c_start = 1;
            daE_WB_Execute(i_this);
            c_start = 0;
        
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[88])) {
                i_this->field_0x79e = 1;
            }
        }
    }
    
    return phase;
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

/**
 * @file d_a_e_rd.cpp
 * 
*/

#include "d/actor/d_a_e_rd.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_com_inf_game.h"
#include "d/d_camera.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"
#include "m_Do/m_Do_graphic.h"
#include "d/d_bomb.h"
#include "d/actor/d_a_e_wb.h"


//
// Forward References:
//

extern "C" void __ct__12daE_RD_HIO_cFv();
extern "C" static void get_pla__FP10fopAc_ac_c();
extern "C" static void anm_init__FP10e_rd_classifUcf();
extern "C" static void horn_anm_init__FP10e_rd_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void nodeCallBack_B__FP8J3DJointi();
extern "C" static void nodeCallBack_bow__FP8J3DJointi();
extern "C" static void daE_RD_Draw__FP10e_rd_class();
extern "C" static void other_bg_check__FP10e_rd_classP10fopAc_ac_c();
extern "C" static void otoCheck__FP10fopAc_ac_cf();
extern "C" static void pl_pass_check__FP10e_rd_classf();
extern "C" static void s_b_sub__FPvPv();
extern "C" static void search_bomb__FP10e_rd_classi();
extern "C" static void way_bg_check__FP10e_rd_classf();
extern "C" static void ride_off__FP10e_rd_class();
extern "C" static void s_wb_sub__FPvPv();
extern "C" static void search_wb__FP10e_rd_classs();
extern "C" static void wb_check__FP10e_rd_classs();
extern "C" static void wb_init_ride__FP10e_rd_class();
extern "C" static void pl_check__FP10e_rd_classfs();
extern "C" static void bomb_view_check__FP10e_rd_class();
extern "C" static void bomb_check__FP10e_rd_class();
extern "C" static void move_gake_check__FP10e_rd_classf();
extern "C" static void way_check__FP10e_rd_class();
extern "C" static void path_check__FP10e_rd_class();
extern "C" static void e_rd_normal__FP10e_rd_class();
extern "C" static void e_rd_fight_run__FP10e_rd_class();
extern "C" static void at_hit_check__FP10e_rd_class();
extern "C" static void e_rd_fight__FP10e_rd_class();
extern "C" static void e_rd_bow_run__FP10e_rd_class();
extern "C" static void e_rd_bow__FP10e_rd_class();
extern "C" static void s_command3_sub__FPvPv();
extern "C" static void e_rd_bow2__FP10e_rd_class();
extern "C" static void e_rd_bow_ikki__FP10e_rd_class();
extern "C" static void e_rd_avoid__FP10e_rd_class();
extern "C" static void e_rd_wb_search__FP10e_rd_class();
extern "C" static void e_rd_wb_ride__FP10e_rd_class();
extern "C" static void e_rd_wb_run__FP10e_rd_class();
extern "C" static void s_wbrun_sub__FPvPv();
extern "C" static void e_rd_wb_run_B__FP10e_rd_class();
extern "C" static void e_rd_wb_bjump__FP10e_rd_class();
extern "C" static void e_rd_bomb_action__FP10e_rd_class();
extern "C" static void e_rd_s_damage__FP10e_rd_class();
extern "C" static void kado_check__FP10e_rd_class();
extern "C" static void rd_disappear__FP10e_rd_class();
extern "C" static void body_gake__FP10e_rd_class();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void e_rd_damage__FP10e_rd_class();
extern "C" static void gake_check__FP10e_rd_classf();
extern "C" static void s_bikkuri_sub__FPvPv();
extern "C" static void s_saku_sub__FPvPv();
extern "C" static void e_rd_drop__FP10e_rd_class();
extern "C" static void e_rd_a_damage__FP10e_rd_class();
extern "C" static void e_rd_stand__FP10e_rd_class();
extern "C" static void e_rd_bow3__FP10e_rd_class();
extern "C" static void s_command2_sub__FPvPv();
extern "C" static void s_command4_sub__FPvPv();
extern "C" static void e_rd_commander__FP10e_rd_class();
extern "C" static void e_rd_excite__FP10e_rd_class();
extern "C" static void e_rd_water__FP10e_rd_class();
extern "C" static void e_rd_kiba_start__FP10e_rd_class();
extern "C" static void e_rd_ikki2_start__FP10e_rd_class();
extern "C" static void e_rd_kiba_end__FP10e_rd_class();
extern "C" static void e_rd_ikki_end__FP10e_rd_class();
extern "C" static void e_rd_ikki2_end__FP10e_rd_class();
extern "C" static void s_rdb_sub__FPvPv();
extern "C" static void e_rd_lv9_end__FP10e_rd_class();
extern "C" static void s_boom_sub__FPvPv();
extern "C" static void wolfkick_damage__FP10e_rd_class();
extern "C" static void big_damage__FP10e_rd_class();
extern "C" static void small_damage__FP10e_rd_classi();
extern "C" static void part_break__FP10e_rd_class();
extern "C" static void damage_check__FP10e_rd_class();
extern "C" static void s_other_sub__FPvPv();
extern "C" static void s_ep_sub__FPvPv();
extern "C" static void e_rd_yagura__FP10e_rd_class();
extern "C" static void e_rd_jyunkai__FP10e_rd_class();
extern "C" static void e_rd_sleep__FP10e_rd_class();
extern "C" static void s_tag_sub__FPvPv();
extern "C" static void e_rd_tag__FP10e_rd_class();
extern "C" static void e_rd_reg__FP10e_rd_class();
extern "C" static void action__FP10e_rd_class();
extern "C" static void fire_eff_set__FP10e_rd_class();
extern "C" static void s_wb_sub2__FPvPv();
extern "C" static void s_lv9dn_sub__FPvPv();
extern "C" static void s_lv9dn_sub2__FPvPv();
extern "C" static void s_lv9dn_sub3__FPvPv();
extern "C" static void s_lv9rd_sub__FPvPv();
extern "C" static void s_lv9rd_sub2__FPvPv();
extern "C" static void s_lv9rd_sub3__FPvPv();
extern "C" static void s_lv9arrow_sub__FPvPv();
extern "C" static void s_lv9arrow_sub2__FPvPv();
extern "C" static void cam_3d_morf__FP10e_rd_classf();
extern "C" static void cam_spd_set__FP10e_rd_class();
extern "C" static void demo_camera__FP10e_rd_class();
extern "C" static void daE_RD_Execute__FP10e_rd_class();
extern "C" void abs__4cXyzCFv();
extern "C" static bool daE_RD_IsDelete__FP10e_rd_class();
extern "C" static void daE_RD_Delete__FP10e_rd_class();
extern "C" static void ride_game_actor_set__FP10e_rd_class();
extern "C" static void coach_game_actor_set__FP10e_rd_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_RD_Create__FP10fopAc_ac_c();
extern "C" void __ct__10e_rd_classFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_RD_HIO_cFv();
extern "C" void __sinit_d_a_e_rd_cpp();
extern "C" static void func_805180BC();
extern "C" static void func_805180C4();
extern "C" static void func_805180CC();
extern "C" static void func_805180D4();
extern "C" static void func_805180DC();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_rd__stringBase0;

//
// External References:
//

extern "C" void fadeOut__13mDoGph_gInf_cFfR8_GXColor();
extern "C" void onBlure__13mDoGph_gInf_cFv();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
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
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fopKyM_createMpillar__FPC4cXyzf();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_BossLife_public_Set__FSc();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void checkStateCarry__7dBomb_cFv();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void onSwitch__12dSv_danBit_cFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void __ct__9dJntCol_cFv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LockonTarget__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetActorPointer__4cBgSCFi();
extern "C" void GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo();
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
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_Sound_set__F4cXyziUii();
extern "C" void dKy_Sound_get__Fv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void getStatus__12dMsgObject_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
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
extern "C" void bgmStop__8Z2SeqMgrFUll();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void changeSubBgmStatus__8Z2SeqMgrFl();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_15();
extern "C" void _savegpr_19();
extern "C" void _savegpr_20();
extern "C" void _savegpr_21();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_15();
extern "C" void _restgpr_19();
extern "C" void _restgpr_20();
extern "C" void _restgpr_21();
extern "C" void _restgpr_22();
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
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 mBlureFlag__13mDoGph_gInf_c[4];
extern "C" extern u8 struct_80450C98[4];
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();
extern "C" void BreakSet__13daObjH_Saku_cFv();

/* 805189E0-80518A48 -00001 0068+00 1/1 0/0 0/0 .data            @5576 */
SECTION_DATA static void* lit_5576[26] = {
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x160),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x1C0),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x204),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x21C),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x288),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x2C8),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x310),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x374),
    (void*)(((char*)e_rd_fight_run__FP10e_rd_class) + 0x33C),
};

/* 80518A48-80518AA4 -00001 005C+00 1/1 0/0 0/0 .data            @5775 */
SECTION_DATA static void* lit_5775[23] = {
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x9C),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0xFC),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x140),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x294),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x160),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x214),
    (void*)(((char*)e_rd_bow_run__FP10e_rd_class) + 0x274),
};

/* 80518AA4-80518AC0 -00001 001C+00 1/1 0/0 0/0 .data            @6346 */
SECTION_DATA static void* lit_6346[7] = {
    (void*)(((char*)e_rd_wb_search__FP10e_rd_class) + 0x170),
    (void*)(((char*)e_rd_wb_search__FP10e_rd_class) + 0x1B0),
    (void*)(((char*)e_rd_wb_search__FP10e_rd_class) + 0x24C),
    (void*)(((char*)e_rd_wb_search__FP10e_rd_class) + 0x624),
    (void*)(((char*)e_rd_wb_search__FP10e_rd_class) + 0x86C),
    (void*)(((char*)e_rd_wb_search__FP10e_rd_class) + 0xA18),
    (void*)(((char*)e_rd_wb_search__FP10e_rd_class) + 0xA84),
};

/* 80518AC0-80518B8C -00001 00CC+00 1/1 0/0 0/0 .data            @6656 */
SECTION_DATA static void* lit_6656[51] = {
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0x1D0),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0x4D0),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0x4F0),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0x5BC),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0x5DC),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0x6B0),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0x7A0),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0x834),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0x8EC),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xA04),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xAA8),
    (void*)(((char*)e_rd_wb_run__FP10e_rd_class) + 0xA34),
};

/* 80518B8C-80518BA8 -00001 001C+00 1/1 0/0 0/0 .data            @6966 */
SECTION_DATA static void* lit_6966[7] = {
    (void*)(((char*)e_rd_bomb_action__FP10e_rd_class) + 0x98),
    (void*)(((char*)e_rd_bomb_action__FP10e_rd_class) + 0xD8),
    (void*)(((char*)e_rd_bomb_action__FP10e_rd_class) + 0x124),
    (void*)(((char*)e_rd_bomb_action__FP10e_rd_class) + 0x210),
    (void*)(((char*)e_rd_bomb_action__FP10e_rd_class) + 0x3F4),
    (void*)(((char*)e_rd_bomb_action__FP10e_rd_class) + 0x250),
    (void*)(((char*)e_rd_bomb_action__FP10e_rd_class) + 0x2DC),
};

/* 80518BA8-80518BB0 000200 0008+00 1/1 0/0 0/0 .data            kado_bit$7009 */
SECTION_DATA static u8 kado_bit[8] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02,
};

/* 80518BB0-80518BB8 000208 0008+00 1/1 0/0 0/0 .data            kado_check_x$7010 */
SECTION_DATA static u8 kado_check_x[8] = {
    0x42, 0xA0, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00,
};

/* 80518BB8-80518C38 -00001 0080+00 1/1 0/0 0/0 .data            @7346 */
SECTION_DATA static void* lit_7346[32] = {
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0x184),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0x260),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0x4BC),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0x674),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0x750),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0x838),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0x8D4),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0x954),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA90),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0x9A8),
    (void*)(((char*)e_rd_damage__FP10e_rd_class) + 0xA64),
};

/* 80518C38-80518C70 -00001 0038+00 1/1 0/0 0/0 .data            @7704 */
SECTION_DATA static void* lit_7704[14] = {
    (void*)(((char*)e_rd_bow3__FP10e_rd_class) + 0xD4),
    (void*)(((char*)e_rd_bow3__FP10e_rd_class) + 0xFC),
    (void*)(((char*)e_rd_bow3__FP10e_rd_class) + 0x3C0),
    (void*)(((char*)e_rd_bow3__FP10e_rd_class) + 0x104),
    (void*)(((char*)e_rd_bow3__FP10e_rd_class) + 0x3C0),
    (void*)(((char*)e_rd_bow3__FP10e_rd_class) + 0x11C),
    (void*)(((char*)e_rd_bow3__FP10e_rd_class) + 0x3C0),
    (void*)(((char*)e_rd_bow3__FP10e_rd_class) + 0x3C0),
    (void*)(((char*)e_rd_bow3__FP10e_rd_class) + 0x3C0),
    (void*)(((char*)e_rd_bow3__FP10e_rd_class) + 0x3C0),
    (void*)(((char*)e_rd_bow3__FP10e_rd_class) + 0x184),
    (void*)(((char*)e_rd_bow3__FP10e_rd_class) + 0x1FC),
    (void*)(((char*)e_rd_bow3__FP10e_rd_class) + 0x2B8),
    (void*)(((char*)e_rd_bow3__FP10e_rd_class) + 0x360),
};

/* 80518C70-80518CA0 -00001 0030+00 1/1 0/0 0/0 .data            @7812 */
SECTION_DATA static void* lit_7812[12] = {
    (void*)(((char*)e_rd_commander__FP10e_rd_class) + 0x8C),
    (void*)(((char*)e_rd_commander__FP10e_rd_class) + 0x98),
    (void*)(((char*)e_rd_commander__FP10e_rd_class) + 0xEC),
    (void*)(((char*)e_rd_commander__FP10e_rd_class) + 0x3D8),
    (void*)(((char*)e_rd_commander__FP10e_rd_class) + 0x3D8),
    (void*)(((char*)e_rd_commander__FP10e_rd_class) + 0x140),
    (void*)(((char*)e_rd_commander__FP10e_rd_class) + 0x16C),
    (void*)(((char*)e_rd_commander__FP10e_rd_class) + 0x1FC),
    (void*)(((char*)e_rd_commander__FP10e_rd_class) + 0x3D8),
    (void*)(((char*)e_rd_commander__FP10e_rd_class) + 0x3D8),
    (void*)(((char*)e_rd_commander__FP10e_rd_class) + 0x2DC),
    (void*)(((char*)e_rd_commander__FP10e_rd_class) + 0x350),
};

/* 80518CA0-80518CBC -00001 001C+00 1/1 0/0 0/0 .data            @7943 */
SECTION_DATA static void* lit_7943[7] = {
    (void*)(((char*)e_rd_kiba_start__FP10e_rd_class) + 0x60),
    (void*)(((char*)e_rd_kiba_start__FP10e_rd_class) + 0x1D8),
    (void*)(((char*)e_rd_kiba_start__FP10e_rd_class) + 0x8C),
    (void*)(((char*)e_rd_kiba_start__FP10e_rd_class) + 0xB0),
    (void*)(((char*)e_rd_kiba_start__FP10e_rd_class) + 0x1D8),
    (void*)(((char*)e_rd_kiba_start__FP10e_rd_class) + 0x108),
    (void*)(((char*)e_rd_kiba_start__FP10e_rd_class) + 0x14C),
};

/* 80518CBC-80518CF8 -00001 003C+00 1/1 0/0 0/0 .data            @8697 */
SECTION_DATA static void* lit_8697[15] = {
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0x70),
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0xE4),
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0x494),
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0x494),
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0x494),
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0x13C),
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0x494),
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0x494),
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0x494),
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0x494),
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0x1D8),
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0x274),
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0x330),
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0x3BC),
    (void*)(((char*)e_rd_yagura__FP10e_rd_class) + 0x494),
};

/* 80518CF8-80518D28 -00001 0030+00 1/1 0/0 0/0 .data            @8916 */
SECTION_DATA static void* lit_8916[12] = {
    (void*)(((char*)e_rd_sleep__FP10e_rd_class) + 0xB8),
    (void*)(((char*)e_rd_sleep__FP10e_rd_class) + 0xFC),
    (void*)(((char*)e_rd_sleep__FP10e_rd_class) + 0x134),
    (void*)(((char*)e_rd_sleep__FP10e_rd_class) + 0x2BC),
    (void*)(((char*)e_rd_sleep__FP10e_rd_class) + 0x2BC),
    (void*)(((char*)e_rd_sleep__FP10e_rd_class) + 0x1DC),
    (void*)(((char*)e_rd_sleep__FP10e_rd_class) + 0x2BC),
    (void*)(((char*)e_rd_sleep__FP10e_rd_class) + 0x2BC),
    (void*)(((char*)e_rd_sleep__FP10e_rd_class) + 0x2BC),
    (void*)(((char*)e_rd_sleep__FP10e_rd_class) + 0x2BC),
    (void*)(((char*)e_rd_sleep__FP10e_rd_class) + 0x1F0),
    (void*)(((char*)e_rd_sleep__FP10e_rd_class) + 0x25C),
};

/* 80518D28-80518D40 000380 0016+02 1/1 0/0 0/0 .data            j_spd$9191 */
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

/* 80518D40-80518D48 000398 0006+02 1/1 0/0 0/0 .data            w_eff_name$9236 */
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

/* 80518D48-80518E3C -00001 00F4+00 1/1 0/0 0/0 .data            @9631 */
SECTION_DATA static void* lit_9631[61] = {
    (void*)(((char*)action__FP10e_rd_class) + 0x2B8),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x2C8),
    (void*)(((char*)action__FP10e_rd_class) + 0x2D8),
    (void*)(((char*)action__FP10e_rd_class) + 0x2E8),
    (void*)(((char*)action__FP10e_rd_class) + 0x2F8),
    (void*)(((char*)action__FP10e_rd_class) + 0x308),
    (void*)(((char*)action__FP10e_rd_class) + 0x31C),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x32C),
    (void*)(((char*)action__FP10e_rd_class) + 0x338),
    (void*)(((char*)action__FP10e_rd_class) + 0x344),
    (void*)(((char*)action__FP10e_rd_class) + 0x354),
    (void*)(((char*)action__FP10e_rd_class) + 0x37C),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x38C),
    (void*)(((char*)action__FP10e_rd_class) + 0x398),
    (void*)(((char*)action__FP10e_rd_class) + 0x3A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x3B0),
    (void*)(((char*)action__FP10e_rd_class) + 0x3BC),
    (void*)(((char*)action__FP10e_rd_class) + 0x3C8),
    (void*)(((char*)action__FP10e_rd_class) + 0x3D8),
    (void*)(((char*)action__FP10e_rd_class) + 0x3E8),
    (void*)(((char*)action__FP10e_rd_class) + 0x3FC),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x408),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x418),
    (void*)(((char*)action__FP10e_rd_class) + 0x428),
    (void*)(((char*)action__FP10e_rd_class) + 0x438),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x444),
    (void*)(((char*)action__FP10e_rd_class) + 0x450),
    (void*)(((char*)action__FP10e_rd_class) + 0x45C),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x468),
    (void*)(((char*)action__FP10e_rd_class) + 0x478),
    (void*)(((char*)action__FP10e_rd_class) + 0x484),
    (void*)(((char*)action__FP10e_rd_class) + 0x490),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x4A4),
    (void*)(((char*)action__FP10e_rd_class) + 0x49C),
};

/* 80518E3C-80518ED0 -00001 0094+00 1/1 0/0 0/0 .data            @10414 */
SECTION_DATA static void* lit_10414[37] = {
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x98),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x138),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x34C),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x418),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x14CC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x554),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x584),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x6C8),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x8A8),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x984),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0xA74),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0xBEC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0xCB8),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0xD54),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0xF4C),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x10EC),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x11D0),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x12A8),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x1320),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x138C),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x1410),
    (void*)(((char*)demo_camera__FP10e_rd_class) + 0x1498),
};

/* 80518ED0-80518F34 000528 0064+00 0/1 0/0 0/0 .data            time_scale$10547 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 time_scale[100] = {
    0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x8C, 0xCC, 0xCD, 0x3F, 0x80, 0x00,
    0x00, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x19, 0x99, 0x9A, 0x3E, 0xCC, 0xCC, 0xCD, 0x3E, 0x4C,
    0xCC, 0xCD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3E, 0x4C, 0xCC,
    0xCD, 0x3F, 0x00, 0x00, 0x00, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x99,
    0x99, 0x9A, 0x3F, 0x99, 0x99, 0x9A, 0x3F, 0x99, 0x99, 0x9A,
};
#pragma pop

/* 80518F34-80518F6C 00058C 0038+00 0/1 0/0 0/0 .data            boss_part_idx$10666 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 boss_part_idx[56] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00,
    0x00, 0x19, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00,
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02,
};
#pragma pop

/* 80518F74-80518F7C 0005CC 0006+02 0/1 0/0 0/0 .data            eno$10680 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eno[6 + 2 /* padding */] = {
    0x82,
    0x8C,
    0x82,
    0x8D,
    0x82,
    0x8E,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 80518F7C-80518F88 0005D4 000C+00 0/0 0/0 0/0 .data            jv_offset */
#pragma push
#pragma force_active on
SECTION_DATA static u8 jv_offset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80518FC0-80518FC8 000618 0008+00 1/1 0/0 0/0 .data            ikki2_boss_part_bmd$11488 */
SECTION_DATA static u8 ikki2_boss_part_bmd[8] = {
    0x00, 0x00, 0x00, 0x56, 0x00, 0x00, 0x00, 0x57,
};

// /* 80518FC8-80519008 000620 0040+00 1/1 0/0 0/0 .data            cc_sph_src$11818 */
// static dCcD_SrcSph cc_sph_src = {
//     {
//         {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
//         {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
//         {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
//         {0x0}, // mGObjCo
//     }, // mObjInf
//     {
//         {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
//     } // mSphAttr
// };

// /* 80519008-80519048 000660 0040+00 1/1 0/0 0/0 .data            at_sph_src$11819 */
// static dCcD_SrcSph at_sph_src = {
//     {
//         {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
//         {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
//         {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
//         {0x0}, // mGObjCo
//     }, // mObjInf
//     {
//         {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
//     } // mSphAttr
// };

/* 80519048-80519068 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_RD_Method */
static actor_method_class l_daE_RD_Method = {
    (process_method_func)daE_RD_Create__FP10fopAc_ac_c,
    (process_method_func)daE_RD_Delete__FP10e_rd_class,
    (process_method_func)daE_RD_Execute__FP10e_rd_class,
    (process_method_func)daE_RD_IsDelete__FP10e_rd_class,
    (process_method_func)daE_RD_Draw__FP10e_rd_class,
};

/* 80519068-80519098 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_RD */
extern actor_process_profile_definition g_profile_E_RD = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_RD,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_rd_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  154,                    // mPriority
  &l_daE_RD_Method,       // sub_method
  0x00044000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80519098-805190A4 0006F0 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 805190A4-805190B0 0006FC 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 805190B0-805190BC 000708 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 805190BC-805190C8 000714 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 805190C8-805190D4 000720 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 805190D4-805190F8 00072C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_805180DC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_805180D4,
};

/* 805190F8-80519128 000750 0030+00 3/3 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_805180BC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_805180CC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_805180C4,
};

/* 80519128-80519134 000780 000C+00 2/2 0/0 0/0 .data            __vt__12daE_RD_HIO_c */
SECTION_DATA extern void* __vt__12daE_RD_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_RD_HIO_cFv,
};

/* 80504A6C-80504B20 0000EC 00B4+00 1/1 0/0 0/0 .text            __ct__12daE_RD_HIO_cFv */
daE_RD_HIO_c::daE_RD_HIO_c() {
    field_0x4 = -1;
    model_size = 1.2f;
    field_0xc = 1.2f;
    movement_speed = 3.5f;
    dash_speed = 14.0f;
    battle_init_range = 250.0f;
    attack_init_range = 300.0f;
    swing_speed = 1.1f;
    field_0x24 = 60;
    attack_range = 1300.0f;
    mounted_launch_distance = 2000.0f;
    wolf_falling_power_y = 3.0f;
    wolf_falling_power_z = 3.0f;
    field_0x38 = 1;
    invulnerable = 0;
    eye_polygon = 1;
    one_hit_kill = 0;
    field_0x3c = 75.0f;
    field_0x48 = 5.0f;
    jump_z = 10.0f;
    jump_y = 33.0f;
    jump_g = 5.0f;
}

/* 80504B20-80504BD4 0001A0 00B4+00 5/5 0/0 0/0 .text            get_pla__FP10fopAc_ac_c */
static fopAc_ac_c* get_pla(fopAc_ac_c* a_this) {
    // NONMATCHING
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    fopAc_ac_c* actor = fopAcM_SearchByName(PROC_NPC_COACH);

    if (actor == NULL) {
        return dComIfGp_getPlayer(0);
    }

    f32 fVar1 = player->current.pos.x - a_this->current.pos.x;
    f32 fVar2 = player->current.pos.z - a_this->current.pos.z;
    f32 fVar3 = actor->current.pos.x - a_this->current.pos.x;
    f32 fVar4 = actor->current.pos.z - a_this->current.pos.z;
    if (fVar1 * fVar1 + fVar2 * fVar2 > fVar3 * fVar3 + fVar4 * fVar4) {
        return actor;
    }

    return dComIfGp_getPlayer(0);
    
}

/* 80504BD4-80504D28 000254 0154+00 36/36 0/0 0/0 .text            anm_init__FP10e_rd_classifUcf */
static void anm_init(e_rd_class* i_this, int i_anmID, f32 i_morf, u8 i_mode, f32 i_speed) {
    if (i_this->field_0x680 == 0) {
        if (i_this->field_0x129a != 0) {
            if (i_anmID < 73) {
                i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_rdb", i_anmID),
                                            i_mode, i_morf, i_speed, 0.0f, -1.0f);
                i_this->mAnmID = i_anmID;
            }
        } else {
            i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, i_anmID),
                                        i_mode, i_morf, i_speed, 0.0f, -1.0f);
            i_this->mAnmID = i_anmID;

            if (i_anmID == 29) {
                i_this->mpModelMorf->setFrame(cM_rndF(30.0f));
            }
        }
    }
}

/* 80504D28-80504DDC 0003A8 00B4+00 2/2 0/0 0/0 .text            horn_anm_init__FP10e_rd_classifUcf */
static void horn_anm_init(e_rd_class* i_this, int i_anmID, f32 i_morf, u8 i_mode, f32 i_speed) {
    if (i_this->field_0x6a0 != 0) {
        i_this->mpMorfHornAnm->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_rdb", i_anmID),
                                      i_mode, i_morf, i_speed, 0.0f, -1.0f, NULL);
    }
}

/* 80504DDC-805052F4 00045C 0518+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_2) {
    // NONMATCHING
    if (param_2 == 0) {
        int jointNo = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_rd_class* i_this = (e_rd_class*)model->getUserArea();
        if (i_this != NULL) {
            MTXCopy(model->getAnmMtx(jointNo), *calc_mtx);
            if (jointNo == 0) {
                if (i_this->field_0x9c8 == 3) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x9ca);
                }
            } else if (jointNo == 1) {
                if (i_this->field_0x9c8 == 3) {
                    cMtx_XrotM(*calc_mtx, i_this->field_0x9ca);
                }

                cMtx_YrotM(*calc_mtx, i_this->field_0xae0);
                cMtx_ZrotM(*calc_mtx, i_this->field_0xac0 + (i_this->field_0xade - i_this->field_0xa32[2].x));
            } else if (jointNo == 2) {
                cMtx_YrotM(*calc_mtx, i_this->field_0xaca);
            } else if (jointNo == 4) {
                cMtx_ZrotM(*calc_mtx, i_this->field_0xacc);
            } else if (jointNo == 6) {
                cMtx_YrotM(*calc_mtx, i_this->field_0xace);
            } else if (jointNo == 8) {
                cMtx_ZrotM(*calc_mtx, i_this->field_0xad0);
            } else if (jointNo == 11) {
                cMtx_YrotM(*calc_mtx, i_this->field_0xa32[1].y);
                
                if (i_this->field_0x9c8 == 3) {
                    cMtx_XrotM(*calc_mtx, i_this->field_0x9ca);
                }

                cMtx_ZrotM(*calc_mtx, i_this->field_0xa32[1].x + i_this->field_0xabe);

                if (i_this->field_0x9c8 == 4) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x9cc * -1.0f);
                    cMtx_XrotM(*calc_mtx, i_this->field_0x9cc * 0.3f);
                }

                if (i_this->field_0x9c8 == 3) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x9cc);
                }
            } else if (jointNo == 13) {
                if (i_this->field_0x9c8 != 3 && i_this->field_0x9c8 != 4) {
                    cMtx_YrotM(*calc_mtx, (i_this->field_0x9ce - i_this->field_0x9ca) / 2);
                    cMtx_ZrotM(*calc_mtx, (i_this->field_0xabc + (i_this->field_0xa32[0].x - i_this->field_0x9cc)) / 2);
                }
            } else if (jointNo == 12) {
                cMtx_YrotM(*calc_mtx, i_this->field_0xa32[0].y);

                if (i_this->field_0x9c8 != 3 && i_this->field_0x9c8 != 4) {
                    cMtx_YrotM(*calc_mtx, (i_this->field_0x9ce - i_this->field_0x9ca) / 2);
                    cMtx_ZrotM(*calc_mtx, (i_this->field_0xabc + (i_this->field_0xa32[0].x - i_this->field_0x9cc)) / 2);
                } else {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0xa32[0].x + i_this->field_0xabc);
                }
            } else if (jointNo == 17) {
                cMtx_YrotM(*calc_mtx, i_this->field_0xa32[3].y + i_this->field_0xac2);
            } else if (jointNo == 18) {
                cMtx_YrotM(*calc_mtx, i_this->field_0xa32[4].y + i_this->field_0xac4);
            } else if (jointNo == 22) {
                cMtx_YrotM(*calc_mtx, i_this->field_0xa32[5].y + i_this->field_0xac6);
            } else if (jointNo == 23) {
                cMtx_YrotM(*calc_mtx, i_this->field_0xa32[6].y + i_this->field_0xac8);
            }

            if (i_this->field_0xada != 0) {
                if ((jointNo & 1) != 0) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0xada);
                } else if ((jointNo & 2) != 0) {
                    cMtx_XrotM(*calc_mtx, i_this->field_0xada);
                } else if ((jointNo & 4) != 0) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0xada);
                }
            }

            model->setAnmMtx(jointNo, *calc_mtx);
            MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
        }
    }

    return 1;
}

/* 805052F4-80505404 000974 0110+00 1/1 0/0 0/0 .text            nodeCallBack_B__FP8J3DJointi */
static int nodeCallBack_B(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        int jointNo = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_rd_class* i_this = (e_rd_class*)model->getUserArea();
        if (i_this != NULL) {
            MTXCopy(model->getAnmMtx(jointNo), *calc_mtx);

            if (jointNo == 1 || jointNo == 2) {
                cMtx_XrotM(*calc_mtx, i_this->field_0x9ca / 8);
            } else if (jointNo == 5 || jointNo == 6) {
                cMtx_YrotM(*calc_mtx, -(i_this->field_0x9ca / 3));
            }

            model->setAnmMtx(jointNo, *calc_mtx);
            MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
        }
    }

    return 1;
}

/* 80505404-805054CC 000A84 00C8+00 1/1 0/0 0/0 .text            nodeCallBack_bow__FP8J3DJointi */
static int nodeCallBack_bow(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        int jointNo = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_rd_class* i_this = (e_rd_class*)model->getUserArea();

        if (i_this != NULL && i_this->field_0x9a8 != 0) {
            MTXCopy(model->getAnmMtx(jointNo), *calc_mtx);
            cMtx_ZrotM(*calc_mtx, i_this->field_0x9a8);
            model->setAnmMtx(jointNo, *calc_mtx);
            MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
        }
    }

    return 1;
}

/* 805054CC-805059A4 000B4C 04D8+00 1/0 0/0 0/0 .text            daE_RD_Draw__FP10e_rd_class */
static int daE_RD_Draw(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    J3DModel* model;
    J3DModelData* modelData;
    J3DMaterial* matNode_p;

    i_this->field_0x5bb = 0;

    if (i_this->field_0xafb != 0) {
        return 1;
    }

    model = i_this->mpModelMorf->getModel();
    g_env_light.settingTevStruct(0, &a_this->current.pos, &a_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &a_this->tevStr);

    if (i_this->field_0x129a == 0 && i_this->field_0x968 != 0) {
        modelData = model->getModelData();
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            matNode_p = modelData->getMaterialNodePointer(i);
            matNode_p->getTevColor(0)->r = i_this->field_0x96c;
            matNode_p->getTevColor(0)->g = i_this->field_0x96c;
            matNode_p->getTevColor(0)->b = i_this->field_0x96c;
        }
    }

    if (i_this->field_0x129a == 3) {
        modelData = model->getModelData();
        matNode_p = modelData->getMaterialNodePointer(3);
        J3DShape* shape = matNode_p->getShape();
        if (shape != NULL) {
            shape->hide();
        }
    }

    i_this->mpModelMorf->entryDL();

    if (i_this->field_0x129a == 0 && i_this->field_0x968 != 0) {
        modelData = model->getModelData();
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            matNode_p = modelData->getMaterialNodePointer(i);
            matNode_p->getTevColor(0)->r = 0;
            matNode_p->getTevColor(0)->g = 0;
            matNode_p->getTevColor(0)->b = 0;
        }
    }

    if (i_this->field_0x5bc == 1) {
        g_env_light.setLightTevColorType_MAJI(i_this->field_0x694, &a_this->tevStr);
        mDoExt_modelUpdateDL(i_this->field_0x694);
    } else if (i_this->field_0x5bc >= 2) {
        g_env_light.setLightTevColorType_MAJI(i_this->field_0x698->getModel(), &a_this->tevStr);
        i_this->field_0x698->entryDL();

        if (i_this->field_0x9a2 != 0) {
            g_env_light.setLightTevColorType_MAJI(i_this->field_0x694, &a_this->tevStr);
            mDoExt_modelUpdateDL(i_this->field_0x694);
        }
    }

    if (i_this->field_0x129a != 0) {
        for (int i = 0; i < 14; i++) {
            if (i_this->field_0x6d4[i] != NULL) {
                g_env_light.setLightTevColorType_MAJI(i_this->field_0x6d4[i], &a_this->tevStr);
                mDoExt_modelUpdateDL(i_this->field_0x6d4[i]);
            }
        }

        if (i_this->field_0x6a0 != 0) {
            g_env_light.setLightTevColorType_MAJI(i_this->mpMorfHornAnm->getModel(), &a_this->tevStr);
            i_this->mpMorfHornAnm->entryDL();
        }
    }

    if (i_this->field_0x1297 != 0) {
        for (int i = 0; i < 2; i++) {
            g_env_light.setLightTevColorType_MAJI(i_this->field_0x6c4[i], &a_this->tevStr);

            modelData = i_this->field_0x6c4[i]->getModelData();
            for (u16 j = 0; j < modelData->getMaterialNum(); j++) {
                matNode_p = modelData->getMaterialNodePointer(j);
                matNode_p->getTevColor(1)->r = 0xFF;
                matNode_p->getTevColor(1)->g = 0x8A;
                matNode_p->getTevColor(1)->b = 0x18;
            }

            mDoExt_modelUpdateDL(i_this->field_0x6c4[i]);
        }
    }

    if (i_this->field_0x9bc != 2) {
        cXyz sp44;
        sp44.set(a_this->current.pos.x, a_this->current.pos.y + 100.0f, a_this->current.pos.z);
        i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, &sp44,
                                                    1200.0f, 0.0f, a_this->current.pos.y,
                                                    i_this->mObjAcch.GetGroundH(), i_this->mObjAcch.m_gnd,
                                                    &a_this->tevStr, 0, 1.0f, 
                                                    dDlst_shadowControl_c::getSimpleTex());
        if (i_this->field_0x5bc == 1) {
            dComIfGd_addRealShadow(i_this->mShadowKey, i_this->field_0x694);
        }
    }

    if (i_this->field_0x5b7 == 14) {
        if (i_this->mBlureRate > 2) {
            mDoGph_gInf_c::setBlureRate(i_this->mBlureRate);
            mDoGph_gInf_c::onBlure();
        } else {
            mDoGph_gInf_c::offBlure();
        }
    }

    return 1;
}

/* 805059A4-80505A94 001024 00F0+00 4/4 0/0 0/0 .text other_bg_check__FP10e_rd_classP10fopAc_ac_c */
static BOOL other_bg_check(e_rd_class* i_this, fopAc_ac_c* i_other) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz start;
    cXyz end;

    end = i_other->current.pos;
    end.y += 130.0f;
    start = a_this->current.pos;
    start.y = a_this->eyePos.y;

    lin_chk.Set(&start, &end, a_this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        if (i_other != dComIfG_Bgsp().GetActorPointer(lin_chk)) {
            return TRUE;
        }
    }

    return FALSE;
}

/* 80505A94-80505CD4 001114 0240+00 2/2 0/0 0/0 .text            otoCheck__FP10fopAc_ac_cf */
static BOOL otoCheck(fopAc_ac_c* i_actor, f32 param_2) {
    SND_INFLUENCE* sound = dKy_Sound_get();
    fpc_ProcID uVar1;

    if (sound->actor_id != fpcM_ERROR_PROCESS_ID_e && sound->actor_id != fopAcM_GetID(i_actor)) {
        cXyz sp8c = sound->position - i_actor->current.pos;
        if (sp8c.abs() < param_2) {
            dBgS_LinChk lin_chk;
            cXyz start, end;
            
            end = sound->position;
            end.y += 100.0f;
            start = i_actor->current.pos;
            start.y += 100.0f;
            lin_chk.Set(&start, &end, i_actor);

            if (!dComIfG_Bgsp().LineCross(&lin_chk)) {
                return sound->field_0xc;
            }
        }
    }
    
    return FALSE;
}

/* 80505CD4-80505D80 001354 00AC+00 1/1 0/0 0/0 .text            pl_pass_check__FP10e_rd_classf */
static bool pl_pass_check(e_rd_class* i_this, f32 param_2) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* actor = get_pla(a_this);
    cXyz sp18, sp24;

    sp18 = a_this->current.pos - actor->current.pos;
    cMtx_YrotS(*calc_mtx, -(actor->shape_angle.y));
    MtxPosition(&sp18, &sp24);

    return sp24.z < param_2;
}

UNK_REL_BSS;

/* 80519180-80519184 000048 0004+00 2/3 0/0 0/0 .bss             boss */
static e_rd_class* boss;

/* 80519184-80519188 00004C 0004+00 1/2 0/0 0/0 .bss             None */
static u8 l_initHIO;

/* 80519194-805191E4 00005C 0050+00 14/18 0/0 0/0 .bss             l_HIO */
static daE_RD_HIO_c l_HIO;

/* 805191E4-805191E8 -00001 0004+00 6/10 0/0 0/0 .bss             None */
/* 805191E4 0002+00 data_805191E4 S_find */
/* 805191E6 0002+00 data_805191E6 None */
static s16 S_find;

static s8 lbl_70_bss_AE;

// /* 805191E8-805191F4 0000B0 000C+00 0/1 0/0 0/0 .bss             @4242 */
// #pragma push
// #pragma force_active on
// static u8 lit_4242[12];
// #pragma pop

/* 805191F4-80519200 0000BC 000C+00 1/2 0/0 0/0 .bss             S_find_pos */
static cXyz S_find_pos;

/* 80519200-80519204 0000C8 0004+00 7/11 0/0 0/0 .bss             None */
static u8 data_80519200;

static u8 data_80519201;

/* 80519204-8051922C 0000CC 0028+00 3/6 0/0 0/0 .bss             target_info */
static fopAc_ac_c* target_info[10];

/* 8051922C-80519230 0000F4 0004+00 3/6 0/0 0/0 .bss             target_info_count */
static int target_info_count;

static s8 data_80519230;

/* 80505D80-80505DFC 001400 007C+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
static void* s_b_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && dBomb_c::checkBombActor((fopAc_ac_c*)i_actor) && 
        !((dBomb_c*)i_actor)->checkStateExplode() && target_info_count < 10) {
        target_info[target_info_count] = (fopAc_ac_c*)i_actor;
        target_info_count++;
    }

    return NULL;
}

/* 80505DFC-80505E44 00147C 0048+00 2/2 0/0 0/0 .text            search_bomb__FP10e_rd_classi */
static dBomb_c* search_bomb(e_rd_class* i_this, int param_2) {
    if ((i_this->field_0xa20 & 0x10000000) == 0) {
        return NULL;
    }

    target_info_count = 0;
    for (int i = 0; i < 10; i++) {
        target_info[i] = NULL;
    }

    return NULL;
}

/* 80505E44-80505F50 0014C4 010C+00 3/3 0/0 0/0 .text            way_bg_check__FP10e_rd_classf */
static BOOL way_bg_check(e_rd_class* i_this, f32 param_2) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz sp98, start, end;

    start = a_this->current.pos;
    start.y += 50.0f;
    cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
    sp98.x = 0.0f;
    sp98.y = 50.0f;
    sp98.z = param_2;
    MtxPosition(&sp98, &end);
    end += a_this->current.pos;
    lin_chk.Set(&start, &end, a_this);

    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    }

    return FALSE;
}

/* 80505F50-8050610C 0015D0 01BC+00 3/3 0/0 0/0 .text            ride_off__FP10e_rd_class */
static void ride_off(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);

    if (bullbo != NULL) {
        bullbo->field_0x6be &= ~i_this->field_0x9be;
        i_this->field_0x9be = 0;

        if (bullbo->mActionID != 22 && bullbo->mActionID != 23 && bullbo->mActionID != 24) {
            if (bullbo->mActionID == 1) {
                if ((bullbo->field_0x6be & 3) != 0) {
                    bullbo->mActionID = 6;
                } else {
                    bullbo->mActionID = 0;
                }

                bullbo->field_0x5b4 = 0;
            } else if (bullbo->mActionID == 21) {
                bullbo->field_0x5b4 = 0;
            } else if ((bullbo->field_0x6be & 1) == 0) {
                if (bullbo->mActionID == 6 && (bullbo->field_0x5b4 == 2 || bullbo->field_0x5b4 == 3)) {
                    bullbo->field_0x5b4 = 1;
                } else {
                    bullbo->field_0x5b4 = 0;
                }

                bullbo->mActionID = 7;
                bullbo->field_0x698[1] = cM_rndF(30.0f) + 80.0f;
            }
        }

        a_this->current.angle.x = 0;
        i_this->mWbActorID = -1;
    }

    i_this->field_0x9bc = 0;
    if (i_this->field_0x698 != NULL) {
        i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 10), 0,
                                    1.0f, 1.0f, 0.0f, -1.0f);
        i_this->field_0x698->setFrame(10.0f);
    }

    a_this->home.pos = a_this->current.pos;
}

/* 8050610C-805061DC 00178C 00D0+00 1/1 0/0 0/0 .text            s_wb_sub__FPvPv */
static void* s_wb_sub(void* i_actor, void* i_data) {
    // NONMATCHING
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_WB && ((e_wb_class*)i_actor)->mActionID != 22 &&
        ((e_wb_class*)i_actor)->mActionID != 21 && ((e_wb_class*)i_actor)->mActionID != 23 && ((e_wb_class*)i_actor)->mActionID != 24) {
        e_rd_class* i_this = (e_rd_class*)i_data;
        if (i_this->field_0x129a == ((e_wb_class*)i_actor)->field_0x79d &&
            (data_80519230 != 0 || (i_this->field_0x6be & 3) != 3) && target_info_count < 10) {
            target_info[target_info_count] = (fopAc_ac_c*)i_actor;
            target_info_count++;
        }
    }

    return NULL;
}

/* 805061DC-8050642C 00185C 0250+00 2/2 0/0 0/0 .text            search_wb__FP10e_rd_classs */
static fpc_ProcID search_wb(e_rd_class* i_this, s16 param_2) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    target_info_count = 0;
    for (int i = 0; i < 10; i++) {
        target_info[i] = NULL;
    }

    if (param_2 == 1) {
        data_80519230 = 1;
    } else {
        data_80519230 = 0;
    }

    fpcM_Search(s_wb_sub, i_this);
    f32 fVar1 = 100.0f;

    f32 fVar2 = 1500.0f;
    if (strcmp(dComIfGp_getStartStageName(), "F_SP121") == 0 && fopAcM_GetRoomNo(a_this) == 0) {
        fVar2 = HREG_F(0) + 5000.0f;
    }

    if (target_info_count != 0) {
        cXyz sp54, sp60;
        int i = 0;
        while (i < target_info_count) {
            e_wb_class* bullbo = (e_wb_class*)target_info[i];
            sp54.x = bullbo->current.pos.x - a_this->eyePos.x;
            sp54.y = (bullbo->current.pos.y + 50.0f) - a_this->eyePos.y;
            sp54.z = bullbo->current.pos.z - a_this->eyePos.z;
            if (JMAFastSqrt(sp54.x * sp54.x + sp54.z * sp54.z) < fVar1) {
                if (param_2 == 1) {
                    return fopAcM_GetID(bullbo);
                }

                s16 sVar1 = a_this->shape_angle.y - cM_atan2s(sp54.x, sp54.z);
                if (sVar1 < param_2 && sVar1 > (s16)-param_2 && !other_bg_check(i_this, bullbo)) {
                    return fopAcM_GetID(bullbo);
                }
            }

            i++;
            if (i == target_info_count) {
                i = 0;
                fVar1 += 100.0f;
                if (fVar1 > fVar2) {
                    return -1;
                }
            }
        }
    } else {
        return -1;
    }

    return -1;
}

/* 8050642C-8050651C 001AAC 00F0+00 5/5 0/0 0/0 .text            wb_check__FP10e_rd_classs */
static void wb_check(e_rd_class* i_this, s16 param_2) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    if (data_80519200 != 118 || fopAcM_GetRoomNo(a_this) != 1) {
        i_this->mWbActorID = search_wb(i_this, param_2);
        e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);
        if (bullbo != NULL) {
            if (data_80519200 != 0) {
                if (i_this->field_0x5bc != 1) {
                    if ((bullbo->field_0x6be & 1) == 0) {
                        return;
                    }
                } else if ((bullbo->field_0x6be & 1) != 0) {
                    return;
                }
            }

            i_this->mAction = 11;
            i_this->field_0x5b4 = 0;

            if ((bullbo->field_0x6be & 1) == 0) {
                bullbo->field_0x6be |= 1;
                i_this->field_0x9be = 1;
            } else if ((bullbo->field_0x6be & 2) == 0) {
                bullbo->field_0x6be |= 2;
                i_this->field_0x9be = 2;
            }
        }
    }
}

/* 8050651C-805065D4 001B9C 00B8+00 1/1 0/0 0/0 .text            wb_init_ride__FP10e_rd_class */
static BOOL wb_init_ride(e_rd_class* i_this) {
    i_this->mWbActorID = search_wb(i_this, 1);
    e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);

    if (bullbo != NULL) {
        i_this->mAction = 12;
        i_this->field_0x5b4 = 0;
        i_this->field_0x9bc = 2;
        i_this->field_0x9be = i_this->field_0x5b6;
        bullbo->field_0x6be |= (s8)i_this->field_0x5b6;
        bullbo->mActionID = 1;

        if (i_this->field_0x5bc != 0 && i_this->field_0x9be == 1) {
            i_this->field_0x5bd = 1;
        }

        return TRUE;
    }

    OS_REPORT("......CAN NOT_ RIDE  !!!!\n");
    return FALSE;
}

/* 805065D4-80506758 001C54 0184+00 10/10 0/0 0/0 .text            pl_check__FP10e_rd_classfs */
static BOOL pl_check(e_rd_class* i_this, f32 param_2, s16 param_3) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* actor = get_pla(a_this);

    if ((data_80519200 == 0 && dComIfGp_event_runCheck())) {
        return FALSE;
    }

    if (strcmp(dComIfGp_getStartStageName(), "F_SP128") == 0 && actor->current.pos.z < -9800.0f) {
        return FALSE;
    }

    if (S_find != 0) {
        param_2 = 10000.0f;
    }

    if (i_this->field_0x978 < param_2) {
        s16 sVar1 = a_this->shape_angle.y - i_this->field_0x97c;
        if (sVar1 < param_3 && sVar1 > (s16)-param_3 && !other_bg_check(i_this, actor)) {
            return TRUE;
        }

        for (int i = 0; i <= 2; i++) {
            if (i_this->field_0xd58[i].ChkCoHit()) {
                if (daPy_getPlayerActorClass() == dCc_GetAc(i_this->field_0xd58[i].GetCoHitObj()->GetAc())) {
                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

/* 80506758-8050677C 001DD8 0024+00 3/3 0/0 0/0 .text            bomb_view_check__FP10e_rd_class */
static dBomb_c* bomb_view_check(e_rd_class* i_this) {
    return search_bomb(i_this, 1);
}

/* 8050677C-805067A0 001DFC 0024+00 1/1 0/0 0/0 .text            bomb_check__FP10e_rd_class */
static dBomb_c* bomb_check(e_rd_class* i_this) {
    return search_bomb(i_this, 0);
}

/* 805067A0-80506890 001E20 00F0+00 5/5 0/0 0/0 .text            move_gake_check__FP10e_rd_classf */
static BOOL move_gake_check(e_rd_class* i_this, f32 param_2) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_GndChk gnd_chk;
    cXyz sp74, sp80;

    cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
    sp74.x = 0.0f;
    sp74.y = 100.0f;
    sp74.z = param_2;
    MtxPosition(&sp74, &sp80);
    sp80 += a_this->current.pos;
    gnd_chk.SetPos(&sp80);
    if ((a_this->current.pos.y - dComIfG_Bgsp().GroundCross(&gnd_chk)) > 300.0f) {
        return TRUE;
    }

    return FALSE;
}

/* 80506890-80506A60 001F10 01D0+00 1/1 0/0 0/0 .text            way_check__FP10e_rd_class */
static BOOL way_check(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz spac;

    if (strcmp(dComIfGp_getStartStageName(), "F_SP128") == 0 && a_this->current.pos.z < -8400.0f) {
        spac.x = a_this->home.pos.x - a_this->current.pos.x;
        spac.z = a_this->home.pos.z - a_this->current.pos.z;
        i_this->field_0x5cc = cM_atan2s(spac.x, spac.z);
        return TRUE;
    }

    cXyz start, end;
    s16 sVar1 = cM_rndF(65535.0f);
    f32 fVar1 = 1000.0f;
    start = a_this->current.pos;
    start.y += 50.0f;

    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 16; j++) {
            cMtx_YrotS(*calc_mtx, sVar1);
            spac.x = 0.0f;
            spac.y = 0.0f;
            spac.z = fVar1;
            MtxPosition(&spac, &end);
            end += start;
            dBgS_LinChk lin_chk;
            lin_chk.Set(&start, &end, a_this);
            if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                sVar1 += 0x1000;
            } else {
                i_this->field_0x5cc = sVar1;
                return TRUE;
            }
        }

        fVar1 -= 150.0f;
    }

    return FALSE;
}

/* 80519234-80519334 0000FC 00FF+01 1/1 0/0 0/0 .bss             check_index$5284 */
static u8 check_index[255];

/* 80506A60-80506C8C 0020E0 022C+00 1/1 0/0 0/0 .text            path_check__FP10e_rd_class */
static BOOL path_check(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz start, end;

    start = a_this->current.pos;
    start.y += hREG_F(0) + 10.0f;

    dPnt* points = i_this->mPath->m_points;
    for (int i = 0; i < i_this->mPath->m_num; i++, points++) {
        if (i < 0xFF) {
            end.x = points->m_position.x;
            end.y = points->m_position.y + 10.0f + hREG_F(1);
            end.z = points->m_position.z;
            lin_chk.Set(&start, &end, a_this);
            if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                check_index[i] = 1;
            } else {
                check_index[i] = 0;
            }
        }
    }

    f32 fVar1 = 100.0f;
    bool bVar1 = false;
    for (int i = 0; i < 100; i++) {
        points = i_this->mPath->m_points;
        for (int j = 0; j < i_this->mPath->m_num; j++, points++) {
            if (j < 0xFF && check_index[j] != 0) {
                f32 fVar2 = a_this->current.pos.x - points->m_position.x;
                f32 fVar3 = a_this->current.pos.y - points->m_position.y;
                f32 fVar4 = a_this->current.pos.z - points->m_position.z;
                if (JMAFastSqrt(fVar4 * fVar4 + fVar2 * fVar2 + fVar3 * fVar3) < fVar1) {
                    i_this->field_0xb00 = j;
                    bVar1 = true;
                    break;
                }
            }
        }

        if (bVar1) break;
        fVar1 += 50.0f;
    }

    if (!bVar1) {
        return FALSE;
    }

    if (cM_rndF(1.0f) < 0.5f) {
        i_this->field_0xb01 = 1;
    } else {
        i_this->field_0xb01 = 0xFF;
    }

    return TRUE;
}

/* 80506C8C-80507144 00230C 04B8+00 1/1 0/0 0/0 .text            e_rd_normal__FP10e_rd_class */
static void e_rd_normal(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    if (i_this->field_0x5b6 == 1 || i_this->field_0x5b6 == 2) {
        if (wb_init_ride(i_this)) {
            i_this->field_0x5b6 = 0;
        }
    } else {
        f32 fVar1 = 0.0f;
        s16 sVar1 = 0x4000;
        if (data_80519200 != 0) {
            sVar1 = 0x6000;
        }

        switch (i_this->field_0x5b4) {
            case 0:
                if (i_this->field_0x5bd != 0) {
                    anm_init(i_this, 4, 2.0f, 0, 1.0f);
                    i_this->field_0x5b4 = 1;
                } else {
                    i_this->field_0x5b4 = 2;
                }
                break;

            case 1:
                if ((int)i_this->mpModelMorf->getFrame() == 11) {
                    i_this->field_0x5bd = 0;
                }

                if (i_this->mpModelMorf->isStop()) {
                    i_this->field_0x5b4 = 2;
                }
                break;

            case 2:
                if (i_this->field_0x990[0] == 0) {
                    if (i_this->mPath != NULL && path_check(i_this)) {
                        i_this->mAction = 51;
                        i_this->field_0x5b4 = 0;
                        return;
                    }

                    if (way_check(i_this)) {
                        anm_init(i_this, 65, 10.0f, 2, 1.0f);
                        i_this->field_0x5b4 = 3;
                        i_this->field_0x990[0] = cM_rndF(100.0f) + 100.0f;
                    }
                } else if (data_80519200 != 0) {
                    sVar1 = 0x7000;
                } else {
                    sVar1 = 0x6000;
                }
                break;

            case 3:
                fVar1 = l_HIO.movement_speed;
                if (a_this->speedF >= 3.0f && move_gake_check(i_this, 100.0f)) {
                    i_this->field_0x5b4 = 4;
                    i_this->field_0x990[0] = cM_rndF(100.0f) + 50.0f;
                    anm_init(i_this, 29, 10.0f, 2, 1.0f);
                } else {
                    if (i_this->field_0x990[0] == 0 || (a_this->speedF >= 3.0f && way_bg_check(i_this, 200.0f))) {
                        i_this->field_0x5b4 = 2;
                        i_this->field_0x990[0] = cM_rndF(100.0f) + 50.0f;
                        anm_init(i_this, 29, 10.0f, 2, 1.0f);
                    }
                }
                break;

            case 4:
                i_this->field_0x9c8 = 0xFF;
                if (i_this->field_0x990[0] == 0) {
                    i_this->field_0x5cc = a_this->current.angle.y + (s16)cM_rndFX(4000.0f) + 0x8000;
                    anm_init(i_this, 65, 10.0f, 2, 1.0f);
                    i_this->field_0x5b4 = 3;
                    i_this->field_0x990[0] = cM_rndF(100.0f) + 100.0f;
                }
        }

        if (fVar1) {
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x5cc, 8, 0x400);
            s16 sVar1 = a_this->current.angle.y - i_this->field_0x5cc;
            if (sVar1 > 0x400 || sVar1 < -0x400) {
                fVar1 = 0.0f;
            }
        }

        cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 3.0f);
        f32 fVar2 = i_this->field_0x980;
        BOOL bVar1 = FALSE;
        if (i_this->field_0x9a1 == 1 || S_find != 0) {
            if (i_this->field_0x9a1 == 1) {
                bVar1 = TRUE;
            }

            fVar2 = 10000.0f;
            sVar1 = 0x7FFF;
        }

        if (((i_this->field_0x970 & 7) == 0 || bVar1) && i_this->field_0x5b4 >= 2) {
            if ((i_this->field_0x970 & 8) != 0 && !bVar1) {
                wb_check(i_this, sVar1);
            } else {
                if (pl_check(i_this, fVar2, sVar1)) {
                    if (i_this->field_0x5bc == 1) {
                        i_this->mAction = 3;
                        i_this->field_0x5b4 = 0xFFF6;
                        i_this->field_0x990[0] = 60;
                    } else if (i_this->field_0x5bc >= 2) {
                        i_this->mAction = 5;
                        i_this->field_0x5b4 = 0xFFF6;
                    }
                }

                if (bomb_view_check(i_this) != NULL) {
                    i_this->mAction = 19;
                    i_this->field_0x5b4 = 0;
                }
            }
        }
    }
}

/* 80507144-80507784 0027C4 0640+00 2/1 0/0 0/0 .text            e_rd_fight_run__FP10e_rd_class */
static void e_rd_fight_run(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp64, sp70;
    f32 fVar3 = 0.0f;
    s8 bVar1 = true;

    if (!pl_check(i_this, i_this->field_0x980 + 50.0f, 0x7FFF) && i_this->field_0x990[0] == 0) {
        if (i_this->field_0x99e == 0) {
            bVar1 = false;
        }
    } else {
        i_this->field_0x99e = 35;
    }

    f32 fVar1;
    if (data_80519200 != 0) {
        fVar1 = 24.0f;
    } else {
        fVar1 = l_HIO.dash_speed;
    }

    if (i_this->field_0x5bc != 1) {
        if (i_this->field_0x5bc >= 2) {
            i_this->mAction = 5;
        } else {
            i_this->mAction = 0;
            i_this->field_0x990[0] = cM_rndF(50.0f) + 50.0f;
            anm_init(i_this, 29, 10.0f, 2, 1.0f);
        }

        i_this->field_0x5b4 = 0;
    } else {
        i_this->field_0x978 -= fabsf(a_this->current.pos.y - player->current.pos.y) * 0.7f;

        switch (i_this->field_0x5b4) {
            case 0xFFEC:
                if ((int)i_this->mpModelMorf->getFrame() == 11) {
                    i_this->field_0x5bd = 0;
                }

                if (i_this->mpModelMorf->isStop()) {
                    i_this->field_0x5b4 = 0;
                }
                break;

            case 0xFFF6:
                anm_init(i_this, 64, 7.0f, 2, 1.0f);
                i_this->field_0x990[1] = cM_rndF(10.0f) + 15.0f;
                i_this->field_0x5b4 = 0xFFF7;
                break;

            case 0xFFF7:
                if (i_this->field_0x990[1] == 0) {
                    i_this->field_0x5b4 = 0;
                }
                break;

            case 0:
                if (i_this->field_0x5bd != 0) {
                    anm_init(i_this, 4, 2.0f, 0, 1.0f);
                    i_this->field_0x5b4 = 0xFFEC;
                } else if (i_this->field_0x990[1] == 0) {
                    anm_init(i_this, 50, 10.0f, 2, cM_rndFX(0.05f) + 1.0f);
                    i_this->field_0x5b4 = 1;
                }
                break;

            case 1:
                fVar3 = fVar1;
                if (i_this->field_0x978 < l_HIO.battle_init_range) {
                    anm_init(i_this, 27, 10.0f, 2, 1.0f);
                    i_this->field_0x5b4 = 2;
                }
                break;

            case 2:
                fVar3 = l_HIO.movement_speed;
                if (i_this->field_0x978 > l_HIO.battle_init_range + 50.0f) {
                    i_this->field_0x5b4 = 0;
                } else if (i_this->field_0x978 < l_HIO.battle_init_range - 50.0f) {
                    i_this->field_0x5b4 = 3;
                }
                break;

            case 3:
                fVar3 = -l_HIO.movement_speed;
                if (i_this->field_0x978 > l_HIO.battle_init_range) {
                    i_this->field_0x5b4 = 2;
                }
                break;

            case 5:
                if (i_this->field_0x990[3] != 0) {
                    i_this->field_0x9c8 = 0xFF;
                }

                a_this->speedF = 0.0f;
                fVar3 = 0.0f;
                if (!move_gake_check(i_this, 100.0f)) {
                    i_this->field_0x5b4 = 2;
                }
                break;
        }

        if (i_this->field_0x5b4 < 5 && move_gake_check(i_this, 100.0f)) {
            i_this->field_0x5b4 = 5;
            i_this->field_0x990[3] = cM_rndF(15.0f) + 30.0f;
            anm_init(i_this, 64, 5.0f, 2, 1.0f);
        }

        if (i_this->field_0x5b4 >= 0) {
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x97c, 4, 0x800);
            s16 sVar1 = a_this->current.angle.y - i_this->field_0x97c;
            if (sVar1 > 0x400 || sVar1 < -0x400) {
                fVar3 = 0.0f;
            }
        }

        cLib_addCalc2(&a_this->speedF, fVar3, 1.0f, 5.0f);

        if (!bVar1) {
            i_this->mAction = 0;
            if (i_this->field_0x5b4 == 5) {
                i_this->field_0x5cc = a_this->current.angle.y + (s16)cM_rndFX(4000.0f) + 0x8000;
                anm_init(i_this, 65, 10.0f, 2, 1.0f);
                i_this->field_0x5b4 = 3;
                i_this->field_0x990[0] = cM_rndF(100.0f) + 100.0f;
                i_this->field_0x990[1] = 40;
            } else {
                i_this->field_0x5b4 = 0;
                i_this->field_0x990[0] = cM_rndF(50.0f) + 50.0f;
                anm_init(i_this, 29, 10.0f, 2, 1.0f);
            }
        } else {
            if (i_this->field_0x978 < l_HIO.battle_init_range && (i_this->field_0xa20 & cc_pl_cut_bit_get()) != 0 &&
                i_this->field_0x9f0 < 0.1f) {
                i_this->mAction = 10;
                i_this->field_0x5b4 = 0;
                i_this->field_0x998 = 20;
            } else if (i_this->field_0x5bd == 0 && i_this->field_0x978 < l_HIO.attack_init_range && i_this->field_0x990[2] == 0) {
                i_this->field_0x990[2] = cM_rndF(20.0f) + 20.0f;
                if (cM_rndF(1.0f) < 0.5f) {
                    i_this->mAction = 4;
                    i_this->field_0x5b4 = 0;
                }
            }
        }

        if ((i_this->field_0x970 & 15) == 0) {
            wb_check(i_this, 0x3000);
            if (bomb_view_check(i_this) != NULL) {
                i_this->mAction = 19;
                i_this->field_0x5b4 = 0;
            }
        }

        if (i_this->mAction == 3 && i_this->field_0x9c8 >= 0) {
            i_this->field_0x9c8 = 1;
        }
    }
}

/* 80507784-805077E4 002E04 0060+00 1/1 0/0 0/0 .text            at_hit_check__FP10e_rd_class */
static fopAc_ac_c* at_hit_check(e_rd_class* i_this) {
    if (i_this->field_0x5b4 >= 10) {
        return NULL;
    }

    if (i_this->field_0x1100.ChkAtHit()) {
        return i_this->field_0x1100.GetAtHitObj()->GetAc();
    }

    return NULL;
}

/* 805077E4-80507B90 002E64 03AC+00 1/1 0/0 0/0 .text            e_rd_fight__FP10e_rd_class */
static void e_rd_fight(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp3c, sp48;
    int frame = i_this->mpModelMorf->getFrame();

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 5, HREG_F(0) + 6.0f, 0, 1.0f);

            if (l_HIO.field_0x38 == 0) {
                i_this->field_0x990[0] = 25;
            } else if (l_HIO.field_0x38 == 1) {
                i_this->field_0x990[0] = 15;
            } else if (l_HIO.field_0x38 == 2) {
                i_this->field_0x990[0] = 10;
            }

            i_this->field_0x5b4 = 1;
            i_this->field_0x990[1] = 5;
            i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_WAND_ATTACK, -1);
            break;

        case 1:
            if (i_this->field_0x990[1] != 0) {
                cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x97c, 4, 0x800);
            }

            if (frame == 30) {
                i_this->mpModelMorf->setFrame(0.0f);
            } else if (i_this->field_0x990[0] == 0) {
                anm_init(i_this, 5, 2.0f, 0, l_HIO.swing_speed);
                i_this->mpModelMorf->setFrame(30.0f);
                i_this->field_0x5b4 = 2;
            }
            break;

        case 2:
            if (frame >= 44 && frame <= 47) {
                i_this->field_0x9ab = 1;
            }
            
            if (i_this->mpModelMorf->checkFrame(44.0f)) {
                i_this->mSound.startCreatureSound(Z2SE_EN_RD_SWING_CLUB, 0, -1);
            }

            if (i_this->mpModelMorf->checkFrame(50.0f)) {
                i_this->mpModelMorf->setPlaySpeed(1.0f);
            }

            int iVar1;
            if (l_HIO.field_0x38 == 0) {
                iVar1 = 64;
            } else if (l_HIO.field_0x38 == 1) {
                iVar1 = 54;
            } else if (l_HIO.field_0x38 == 2) {
                iVar1 = 44;
            }

            if (frame >= iVar1) {
                i_this->field_0x5b4 = 3;
                if (l_HIO.field_0x38 == 0) {
                    i_this->field_0x990[0] = 20;
                } else if (l_HIO.field_0x38 == 1) {
                    i_this->field_0x990[0] = 15;
                } else if (l_HIO.field_0x38 == 2) {
                    i_this->field_0x990[0] = 10;
                }

                anm_init(i_this, 27, 5.0f, 2, 1.0f);
            }
            break;

        case 3:
        case 10:
            if (i_this->field_0x990[0] == 0) {
                i_this->mAction = 3;
                i_this->field_0x5b4 = 0;
            }
            break;
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 3.0f);
    
    if (i_this->field_0x9ab != 0) {
        fopAc_ac_c* actor = at_hit_check(i_this);
        if (actor != NULL && fopAcM_GetName(actor) == PROC_ALINK) {
            if (daPy_getPlayerActorClass()->checkPlayerGuard()) {
                i_this->mpModelMorf->setPlaySpeed(-1.0f);
                dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
                dKy_Sound_set(a_this->current.pos, 100, fopAcM_GetID(a_this), 5);
                i_this->field_0x5b4 = 10;
                i_this->field_0x990[0] = 10;
            }
        }
    }
}

/* 80507B90-80507F98 003210 0408+00 2/1 0/0 0/0 .text            e_rd_bow_run__FP10e_rd_class */
static void e_rd_bow_run(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051865C-80518660 0000D8 0004+00 0/4 0/0 0/0 .rodata          @5854 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5854 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x8051865C, &lit_5854);
#pragma pop

/* 80518660-80518664 0000DC 0004+00 0/5 0/0 0/0 .rodata          @5855 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5855 = 4.0f;
COMPILER_STRIP_GATE(0x80518660, &lit_5855);
#pragma pop

/* 80518664-80518668 0000E0 0004+00 0/3 0/0 0/0 .rodata          @5856 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5856 = -100.0f;
COMPILER_STRIP_GATE(0x80518664, &lit_5856);
#pragma pop

/* 80507F98-805082C8 003618 0330+00 1/1 0/0 0/0 .text            e_rd_bow__FP10e_rd_class */
static void e_rd_bow(e_rd_class* i_this) {
    // NONMATCHING
}

/* 805082C8-80508334 003948 006C+00 1/1 0/0 0/0 .text            s_command3_sub__FPvPv */
static void s_command3_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80518668-8051866C 0000E4 0004+00 0/6 0/0 0/0 .rodata          @5965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5965 = 60.0f;
COMPILER_STRIP_GATE(0x80518668, &lit_5965);
#pragma pop

/* 8051866C-80518670 0000E8 0004+00 0/10 0/0 0/0 .rodata          @5966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5966 = 40.0f;
COMPILER_STRIP_GATE(0x8051866C, &lit_5966);
#pragma pop

/* 80508334-80508790 0039B4 045C+00 1/1 0/0 0/0 .text            e_rd_bow2__FP10e_rd_class */
static void e_rd_bow2(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80518670-80518674 0000EC 0004+00 0/1 0/0 0/0 .rodata          @6033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6033 = 34800.0f;
COMPILER_STRIP_GATE(0x80518670, &lit_6033);
#pragma pop

/* 80518674-80518678 0000F0 0004+00 0/1 0/0 0/0 .rodata          @6034 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6034 = -14900.0f;
COMPILER_STRIP_GATE(0x80518674, &lit_6034);
#pragma pop

/* 80508790-80508A34 003E10 02A4+00 1/1 0/0 0/0 .text            e_rd_bow_ikki__FP10e_rd_class */
static void e_rd_bow_ikki(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80518678-8051867C 0000F4 0004+00 0/2 0/0 0/0 .rodata          @6071 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6071 = -30.0f;
COMPILER_STRIP_GATE(0x80518678, &lit_6071);
#pragma pop

/* 80508A34-80508B98 0040B4 0164+00 1/1 0/0 0/0 .text            e_rd_avoid__FP10e_rd_class */
static void e_rd_avoid(e_rd_class* i_this) {
    // NONMATCHING
}

/* 80508B98-805096A0 004218 0B08+00 2/1 0/0 0/0 .text            e_rd_wb_search__FP10e_rd_class */
static void e_rd_wb_search(e_rd_class* i_this) {
    // NONMATCHING
}

/* 805096A0-805098E4 004D20 0244+00 1/1 0/0 0/0 .text            e_rd_wb_ride__FP10e_rd_class */
static void e_rd_wb_ride(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8051867C-80518680 0000F8 0004+00 0/0 0/0 0/0 .rodata          @6342 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6342 = -120.0f;
COMPILER_STRIP_GATE(0x8051867C, &lit_6342);
#pragma pop

/* 80518680-80518684 0000FC 0004+00 0/1 0/0 0/0 .rodata          @6343 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6343 = 1.5f;
COMPILER_STRIP_GATE(0x80518680, &lit_6343);
#pragma pop

/* 80518684-80518688 000100 0004+00 0/0 0/0 0/0 .rodata          @6344 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6344 = 230.0f;
COMPILER_STRIP_GATE(0x80518684, &lit_6344);
#pragma pop

/* 80518688-8051868C 000104 0004+00 0/2 0/0 0/0 .rodata          @6345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6345 = -20.0f;
COMPILER_STRIP_GATE(0x80518688, &lit_6345);
#pragma pop

/* 8051868C-80518690 000108 0004+00 0/1 0/0 0/0 .rodata          @6651 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6651 = 850.0f;
COMPILER_STRIP_GATE(0x8051868C, &lit_6651);
#pragma pop

/* 80518690-80518694 00010C 0004+00 0/1 0/0 0/0 .rodata          @6652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6652 = 750.0f;
COMPILER_STRIP_GATE(0x80518690, &lit_6652);
#pragma pop

/* 805098E4-8050A3EC 004F64 0B08+00 2/1 0/0 0/0 .text            e_rd_wb_run__FP10e_rd_class */
static void e_rd_wb_run(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80518694-80518698 000110 0004+00 0/1 0/0 0/0 .rodata          @6653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6653 = 800.0f;
COMPILER_STRIP_GATE(0x80518694, &lit_6653);
#pragma pop

/* 80518698-8051869C 000114 0004+00 0/0 0/0 0/0 .rodata          @6654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6654 = 550.0f;
COMPILER_STRIP_GATE(0x80518698, &lit_6654);
#pragma pop

/* 8051869C-805186A0 000118 0004+00 0/1 0/0 0/0 .rodata          @6701 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6701 = 7000.0f;
COMPILER_STRIP_GATE(0x8051869C, &lit_6701);
#pragma pop

/* 8050A3EC-8050A578 005A6C 018C+00 1/1 0/0 0/0 .text            s_wbrun_sub__FPvPv */
static void s_wbrun_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805186A0-805186A4 00011C 0004+00 0/4 0/0 0/0 .rodata          @6803 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6803 = 70.0f;
COMPILER_STRIP_GATE(0x805186A0, &lit_6803);
#pragma pop

/* 8050A578-8050A908 005BF8 0390+00 1/1 0/0 0/0 .text            e_rd_wb_run_B__FP10e_rd_class */
static void e_rd_wb_run_B(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050A908-8050AB1C 005F88 0214+00 1/1 0/0 0/0 .text            e_rd_wb_bjump__FP10e_rd_class */
static void e_rd_wb_bjump(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050AB1C-8050AF78 00619C 045C+00 2/1 0/0 0/0 .text            e_rd_bomb_action__FP10e_rd_class */
static void e_rd_bomb_action(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050AF78-8050B0F4 0065F8 017C+00 1/1 0/0 0/0 .text            e_rd_s_damage__FP10e_rd_class */
static void e_rd_s_damage(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805186A4-805186A8 000120 0004+00 1/2 0/0 0/0 .rodata          @6964 */
SECTION_RODATA static f32 const lit_6964 = 600.0f;
COMPILER_STRIP_GATE(0x805186A4, &lit_6964);

/* 805186A8-805186AC 000124 0004+00 0/2 0/0 0/0 .rodata          @6965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6965 = 500.0f;
COMPILER_STRIP_GATE(0x805186A8, &lit_6965);
#pragma pop

/* 805186AC-805186B0 000128 0004+00 0/1 0/0 0/0 .rodata          @7044 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7044 = -150.0f;
COMPILER_STRIP_GATE(0x805186AC, &lit_7044);
#pragma pop

/* 8050B0F4-8050B2A8 006774 01B4+00 1/1 0/0 0/0 .text            kado_check__FP10e_rd_class */
static void kado_check(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050B2A8-8050B3E8 006928 0140+00 3/3 0/0 0/0 .text            rd_disappear__FP10e_rd_class */
static void rd_disappear(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050B3E8-8050B53C 006A68 0154+00 1/1 0/0 0/0 .text            body_gake__FP10e_rd_class */
static void body_gake(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050B53C-8050B5B4 006BBC 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805186B0-805186B4 00012C 0004+00 0/3 0/0 0/0 .rodata          @7343 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7343 = 8000.0f;
COMPILER_STRIP_GATE(0x805186B0, &lit_7343);
#pragma pop

/* 8050B5B4-8050C12C 006C34 0B78+00 2/1 0/0 0/0 .text            e_rd_damage__FP10e_rd_class */
static void e_rd_damage(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050C12C-8050C2D8 0077AC 01AC+00 1/1 0/0 0/0 .text            gake_check__FP10e_rd_classf */
static void gake_check(e_rd_class* i_this, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805186B4-805186B8 000130 0004+00 0/1 0/0 0/0 .rodata          @7344 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7344 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x805186B4, &lit_7344);
#pragma pop

/* 805186B8-805186BC 000134 0004+00 0/2 0/0 0/0 .rodata          @7345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7345 = 35.0f;
COMPILER_STRIP_GATE(0x805186B8, &lit_7345);
#pragma pop

/* 805186BC-805186C0 000138 0004+00 0/1 0/0 0/0 .rodata          @7435 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7435 = 350.0f;
COMPILER_STRIP_GATE(0x805186BC, &lit_7435);
#pragma pop

/* 805186C0-805186C4 00013C 0004+00 0/2 0/0 0/0 .rodata          @7436 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7436 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x805186C0, &lit_7436);
#pragma pop

/* 8050C2D8-8050C4B0 007958 01D8+00 1/1 0/0 0/0 .text            s_bikkuri_sub__FPvPv */
static void s_bikkuri_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8050C4B0-8050C630 007B30 0180+00 1/1 0/0 0/0 .text            s_saku_sub__FPvPv */
static void s_saku_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8050C630-8050CA64 007CB0 0434+00 1/1 0/0 0/0 .text            e_rd_drop__FP10e_rd_class */
static void e_rd_drop(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050CA64-8050CB70 0080E4 010C+00 1/1 0/0 0/0 .text            e_rd_a_damage__FP10e_rd_class */
static void e_rd_a_damage(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050CB70-8050CD4C 0081F0 01DC+00 1/1 0/0 0/0 .text            e_rd_stand__FP10e_rd_class */
static void e_rd_stand(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050CD4C-8050D168 0083CC 041C+00 2/1 0/0 0/0 .text            e_rd_bow3__FP10e_rd_class */
static void e_rd_bow3(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050D168-8050D1F4 0087E8 008C+00 1/1 0/0 0/0 .text            s_command2_sub__FPvPv */
static void s_command2_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8050D1F4-8050D260 008874 006C+00 1/1 0/0 0/0 .text            s_command4_sub__FPvPv */
static void s_command4_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8050D260-8050D6B4 0088E0 0454+00 2/1 0/0 0/0 .text            e_rd_commander__FP10e_rd_class */
static void e_rd_commander(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050D6B4-8050DAB8 008D34 0404+00 1/1 0/0 0/0 .text            e_rd_excite__FP10e_rd_class */
static void e_rd_excite(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050DAB8-8050DC10 009138 0158+00 1/1 0/0 0/0 .text            e_rd_water__FP10e_rd_class */
static void e_rd_water(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050DC10-8050DE00 009290 01F0+00 2/1 0/0 0/0 .text            e_rd_kiba_start__FP10e_rd_class */
static void e_rd_kiba_start(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050DE00-8050DF38 009480 0138+00 1/1 0/0 0/0 .text            e_rd_ikki2_start__FP10e_rd_class */
static void e_rd_ikki2_start(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805186C4-805186C8 000140 0004+00 0/1 0/0 0/0 .rodata          @8026 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8026 = 57.0f;
COMPILER_STRIP_GATE(0x805186C4, &lit_8026);
#pragma pop

/* 8050DF38-8050E214 0095B8 02DC+00 1/1 0/0 0/0 .text            e_rd_kiba_end__FP10e_rd_class */
static void e_rd_kiba_end(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050E214-8050E430 009894 021C+00 1/1 0/0 0/0 .text            e_rd_ikki_end__FP10e_rd_class */
static void e_rd_ikki_end(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050E430-8050E668 009AB0 0238+00 1/1 0/0 0/0 .text            e_rd_ikki2_end__FP10e_rd_class */
static void e_rd_ikki2_end(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050E668-8050E6B4 009CE8 004C+00 1/1 0/0 0/0 .text            s_rdb_sub__FPvPv */
static void s_rdb_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8050E6B4-8050E8F0 009D34 023C+00 1/1 0/0 0/0 .text            e_rd_lv9_end__FP10e_rd_class */
static void e_rd_lv9_end(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050E8F0-8050E948 009F70 0058+00 1/1 0/0 0/0 .text            s_boom_sub__FPvPv */
static void s_boom_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8050E948-8050E9E8 009FC8 00A0+00 1/1 0/0 0/0 .text            wolfkick_damage__FP10e_rd_class */
static void wolfkick_damage(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805186C8-805186CC 000144 0004+00 0/3 0/0 0/0 .rodata          @8211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8211 = 3000.0f;
COMPILER_STRIP_GATE(0x805186C8, &lit_8211);
#pragma pop

/* 8050E9E8-8050EBF8 00A068 0210+00 1/1 0/0 0/0 .text            big_damage__FP10e_rd_class */
static void big_damage(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050EBF8-8050ED28 00A278 0130+00 1/1 0/0 0/0 .text            small_damage__FP10e_rd_classi */
static void small_damage(e_rd_class* i_this, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805186CC-805186D0 000148 0004+00 0/1 0/0 0/0 .rodata          @8270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8270 = 65536.0f;
COMPILER_STRIP_GATE(0x805186CC, &lit_8270);
#pragma pop

/* 8050ED28-8050EEC0 00A3A8 0198+00 1/1 0/0 0/0 .text            part_break__FP10e_rd_class */
static void part_break(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805186D0-805186D4 00014C 0004+00 0/1 0/0 0/0 .rodata          @8517 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8517 = 25.0f;
COMPILER_STRIP_GATE(0x805186D0, &lit_8517);
#pragma pop

/* 805186D4-805186D8 000150 0004+00 0/2 0/0 0/0 .rodata          @8518 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8518 = 400.0f;
COMPILER_STRIP_GATE(0x805186D4, &lit_8518);
#pragma pop

/* 8050EEC0-8050FADC 00A540 0C1C+00 1/2 0/0 0/0 .text            damage_check__FP10e_rd_class */
static void damage_check(e_rd_class* i_this) {
    // NONMATCHING
}

/* 8050FADC-8050FB34 00B15C 0058+00 1/1 0/0 0/0 .text            s_other_sub__FPvPv */
static void s_other_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8050FB34-8050FC04 00B1B4 00D0+00 1/1 0/0 0/0 .text            s_ep_sub__FPvPv */
static void s_ep_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8050FC04-80510250 00B284 064C+00 2/1 0/0 0/0 .text            e_rd_yagura__FP10e_rd_class */
static void e_rd_yagura(e_rd_class* i_this) {
    // NONMATCHING
}

/* 80510250-80510734 00B8D0 04E4+00 1/1 0/0 0/0 .text            e_rd_jyunkai__FP10e_rd_class */
static void e_rd_jyunkai(e_rd_class* i_this) {
    // NONMATCHING
}

/* 80510734-80510B34 00BDB4 0400+00 2/1 0/0 0/0 .text            e_rd_sleep__FP10e_rd_class */
static void e_rd_sleep(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80519334-80519338 0001FC 0004+00 2/2 0/0 0/0 .bss             rd_count */
static u8 rd_count[4];

/* 80510B34-80510B98 00C1B4 0064+00 1/1 0/0 0/0 .text            s_tag_sub__FPvPv */
static void s_tag_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80510B98-80510D2C 00C218 0194+00 1/1 0/0 0/0 .text            e_rd_tag__FP10e_rd_class */
static void e_rd_tag(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805186D8-805186DC 000154 0004+00 0/0 0/0 0/0 .rodata          @8914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8914 = 9900.0f;
COMPILER_STRIP_GATE(0x805186D8, &lit_8914);
#pragma pop

/* 805186DC-805186E0 000158 0004+00 0/1 0/0 0/0 .rodata          @8981 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8981 = -5551.0f;
COMPILER_STRIP_GATE(0x805186DC, &lit_8981);
#pragma pop

/* 805186E0-805186E4 00015C 0004+00 0/1 0/0 0/0 .rodata          @8982 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8982 = 5525.0f;
COMPILER_STRIP_GATE(0x805186E0, &lit_8982);
#pragma pop

/* 80510D2C-80510DEC 00C3AC 00C0+00 1/1 0/0 0/0 .text            e_rd_reg__FP10e_rd_class */
static void e_rd_reg(e_rd_class* i_this) {
    // NONMATCHING
}

/* 80510DEC-80512914 00C46C 1B28+00 2/1 0/0 0/0 .text            action__FP10e_rd_class */
static void action(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805186E4-805186E8 000160 0004+00 0/0 0/0 0/0 .rodata          @9623 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9623 = 700.0f;
COMPILER_STRIP_GATE(0x805186E4, &lit_9623);
#pragma pop

/* 805186E8-805186EC 000164 0004+00 0/0 0/0 0/0 .rodata          @9624 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9624 = -5.0f;
COMPILER_STRIP_GATE(0x805186E8, &lit_9624);
#pragma pop

/* 805186EC-805186F0 000168 0004+00 0/0 0/0 0/0 .rodata          @9625 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9625 = -65.0f;
COMPILER_STRIP_GATE(0x805186EC, &lit_9625);
#pragma pop

/* 805186F0-805186F4 00016C 0004+00 0/0 0/0 0/0 .rodata          @9626 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9626 = -45.0f;
COMPILER_STRIP_GATE(0x805186F0, &lit_9626);
#pragma pop

/* 805186F4-805186F8 000170 0004+00 0/0 0/0 0/0 .rodata          @9627 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9627 = 4.5f;
COMPILER_STRIP_GATE(0x805186F4, &lit_9627);
#pragma pop

/* 805186F8-805186FC 000174 0004+00 0/0 0/0 0/0 .rodata          @9628 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9628 = 12000.0f;
COMPILER_STRIP_GATE(0x805186F8, &lit_9628);
#pragma pop

/* 805186FC-80518700 000178 0004+00 0/1 0/0 0/0 .rodata          @9629 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9629 = -1000000000.0f;
COMPILER_STRIP_GATE(0x805186FC, &lit_9629);
#pragma pop

/* 80518700-80518704 00017C 0004+00 0/1 0/0 0/0 .rodata          @9691 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9691 = 62.0f;
COMPILER_STRIP_GATE(0x80518700, &lit_9691);
#pragma pop

/* 80518704-80518708 000180 0004+00 0/1 0/0 0/0 .rodata          @9692 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9692 = 22.0f;
COMPILER_STRIP_GATE(0x80518704, &lit_9692);
#pragma pop

/* 80518708-8051870C 000184 0004+00 0/2 0/0 0/0 .rodata          @9693 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9693 = -50.0f;
COMPILER_STRIP_GATE(0x80518708, &lit_9693);
#pragma pop

/* 8051870C-80518710 000188 0004+00 0/2 0/0 0/0 .rodata          @9694 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9694 = 90.0f;
COMPILER_STRIP_GATE(0x8051870C, &lit_9694);
#pragma pop

/* 80518710-80518714 00018C 0004+00 0/1 0/0 0/0 .rodata          @9695 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9695 = -60.0f;
COMPILER_STRIP_GATE(0x80518710, &lit_9695);
#pragma pop

/* 80512914-80512B40 00DF94 022C+00 1/1 0/0 0/0 .text            fire_eff_set__FP10e_rd_class */
static void fire_eff_set(e_rd_class* i_this) {
    // NONMATCHING
}

/* 80512B40-80512BB0 00E1C0 0070+00 1/1 0/0 0/0 .text            s_wb_sub2__FPvPv */
static void s_wb_sub2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80512BB0-80512C10 00E230 0060+00 1/1 0/0 0/0 .text            s_lv9dn_sub__FPvPv */
static void s_lv9dn_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80512C10-80512C70 00E290 0060+00 1/1 0/0 0/0 .text            s_lv9dn_sub2__FPvPv */
static void s_lv9dn_sub2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80512C70-80512CBC 00E2F0 004C+00 1/1 0/0 0/0 .text            s_lv9dn_sub3__FPvPv */
static void s_lv9dn_sub3(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80512CBC-80512D14 00E33C 0058+00 1/1 0/0 0/0 .text            s_lv9rd_sub__FPvPv */
static void s_lv9rd_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80519338-8051933C 000200 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80519338[4];

/* 80512D14-80512E08 00E394 00F4+00 1/1 0/0 0/0 .text            s_lv9rd_sub2__FPvPv */
static void s_lv9rd_sub2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80518714-80518718 000190 0004+00 1/1 0/0 0/0 .rodata          @9772 */
SECTION_RODATA static f32 const lit_9772 = 50000.0f;
COMPILER_STRIP_GATE(0x80518714, &lit_9772);

/* 80512E08-80512E74 00E488 006C+00 1/1 0/0 0/0 .text            s_lv9rd_sub3__FPvPv */
static void s_lv9rd_sub3(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80512E74-80512EC0 00E4F4 004C+00 1/1 0/0 0/0 .text            s_lv9arrow_sub__FPvPv */
static void s_lv9arrow_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80512EC0-80512F18 00E540 0058+00 1/1 0/0 0/0 .text            s_lv9arrow_sub2__FPvPv */
static void s_lv9arrow_sub2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80512F18-80512FFC 00E598 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP10e_rd_classf */
static void cam_3d_morf(e_rd_class* i_this, f32 param_1) {
    // NONMATCHING
}

/* 80512FFC-8051309C 00E67C 00A0+00 1/1 0/0 0/0 .text            cam_spd_set__FP10e_rd_class */
static void cam_spd_set(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80518718-8051871C 000194 0004+00 0/1 0/0 0/0 .rodata          @10302 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10302 = 55.0f;
COMPILER_STRIP_GATE(0x80518718, &lit_10302);
#pragma pop

/* 8051871C-80518720 000198 0004+00 0/1 0/0 0/0 .rodata          @10303 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10303 = 900.0f;
COMPILER_STRIP_GATE(0x8051871C, &lit_10303);
#pragma pop

/* 8051309C-80514640 00E71C 15A4+00 2/1 0/0 0/0 .text            demo_camera__FP10e_rd_class */
static void demo_camera(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80518720-80518724 00019C 0004+00 0/0 0/0 0/0 .rodata          @10304 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10304 = -7875.0f;
COMPILER_STRIP_GATE(0x80518720, &lit_10304);
#pragma pop

/* 80518724-80518728 0001A0 0004+00 0/0 0/0 0/0 .rodata          @10305 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10305 = 2125.0f;
COMPILER_STRIP_GATE(0x80518724, &lit_10305);
#pragma pop

/* 80518728-8051872C 0001A4 0004+00 0/0 0/0 0/0 .rodata          @10306 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10306 = 7895.0f;
COMPILER_STRIP_GATE(0x80518728, &lit_10306);
#pragma pop

/* 8051872C-80518730 0001A8 0004+00 0/0 0/0 0/0 .rodata          @10307 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10307 = -7527.0f;
COMPILER_STRIP_GATE(0x8051872C, &lit_10307);
#pragma pop

/* 80518730-80518734 0001AC 0004+00 0/0 0/0 0/0 .rodata          @10308 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10308 = 2084.0f;
COMPILER_STRIP_GATE(0x80518730, &lit_10308);
#pragma pop

/* 80518734-80518738 0001B0 0004+00 0/0 0/0 0/0 .rodata          @10309 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10309 = 7552.0f;
COMPILER_STRIP_GATE(0x80518734, &lit_10309);
#pragma pop

/* 80518738-8051873C 0001B4 0004+00 0/0 0/0 0/0 .rodata          @10310 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_10310 = 0x3B03126F;
COMPILER_STRIP_GATE(0x80518738, &lit_10310);
#pragma pop

/* 8051873C-80518740 0001B8 0004+00 0/0 0/0 0/0 .rodata          @10311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10311 = -5182.0f;
COMPILER_STRIP_GATE(0x8051873C, &lit_10311);
#pragma pop

/* 80518740-80518744 0001BC 0004+00 0/0 0/0 0/0 .rodata          @10312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10312 = 5237.0f;
COMPILER_STRIP_GATE(0x80518740, &lit_10312);
#pragma pop

/* 80518744-80518748 0001C0 0004+00 0/0 0/0 0/0 .rodata          @10313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10313 = 45.0f;
COMPILER_STRIP_GATE(0x80518744, &lit_10313);
#pragma pop

/* 80518748-8051874C 0001C4 0004+00 0/0 0/0 0/0 .rodata          @10314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10314 = -7241.0f;
COMPILER_STRIP_GATE(0x80518748, &lit_10314);
#pragma pop

/* 8051874C-80518750 0001C8 0004+00 0/0 0/0 0/0 .rodata          @10315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10315 = 4310.0f;
COMPILER_STRIP_GATE(0x8051874C, &lit_10315);
#pragma pop

/* 80518750-80518754 0001CC 0004+00 0/0 0/0 0/0 .rodata          @10316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10316 = 7269.0f;
COMPILER_STRIP_GATE(0x80518750, &lit_10316);
#pragma pop

/* 80518754-80518758 0001D0 0004+00 0/0 0/0 0/0 .rodata          @10317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10317 = -6913.0f;
COMPILER_STRIP_GATE(0x80518754, &lit_10317);
#pragma pop

/* 80518758-8051875C 0001D4 0004+00 0/0 0/0 0/0 .rodata          @10318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10318 = 4139.0f;
COMPILER_STRIP_GATE(0x80518758, &lit_10318);
#pragma pop

/* 8051875C-80518760 0001D8 0004+00 0/0 0/0 0/0 .rodata          @10319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10319 = 6948.0f;
COMPILER_STRIP_GATE(0x8051875C, &lit_10319);
#pragma pop

/* 80518760-80518764 0001DC 0004+00 0/0 0/0 0/0 .rodata          @10320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10320 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80518760, &lit_10320);
#pragma pop

/* 80518764-80518768 0001E0 0004+00 0/0 0/0 0/0 .rodata          @10321 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_10321 = 0x3BA3D70A;
COMPILER_STRIP_GATE(0x80518764, &lit_10321);
#pragma pop

/* 80518768-8051876C 0001E4 0004+00 0/0 0/0 0/0 .rodata          @10322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10322 = -8330.0f;
COMPILER_STRIP_GATE(0x80518768, &lit_10322);
#pragma pop

/* 8051876C-80518770 0001E8 0004+00 0/0 0/0 0/0 .rodata          @10323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10323 = 4359.0f;
COMPILER_STRIP_GATE(0x8051876C, &lit_10323);
#pragma pop

/* 80518770-80518774 0001EC 0004+00 0/0 0/0 0/0 .rodata          @10324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10324 = 8449.0f;
COMPILER_STRIP_GATE(0x80518770, &lit_10324);
#pragma pop

/* 80518774-80518778 0001F0 0004+00 0/0 0/0 0/0 .rodata          @10325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10325 = -8183.0f;
COMPILER_STRIP_GATE(0x80518774, &lit_10325);
#pragma pop

/* 80518778-8051877C 0001F4 0004+00 0/0 0/0 0/0 .rodata          @10326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10326 = 4264.0f;
COMPILER_STRIP_GATE(0x80518778, &lit_10326);
#pragma pop

/* 8051877C-80518780 0001F8 0004+00 0/0 0/0 0/0 .rodata          @10327 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10327 = 7991.0f;
COMPILER_STRIP_GATE(0x8051877C, &lit_10327);
#pragma pop

/* 80518780-80518784 0001FC 0004+00 0/0 0/0 0/0 .rodata          @10328 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10328 = -8033.0f;
COMPILER_STRIP_GATE(0x80518780, &lit_10328);
#pragma pop

/* 80518784-80518788 000200 0004+00 0/0 0/0 0/0 .rodata          @10329 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10329 = 4259.0f;
COMPILER_STRIP_GATE(0x80518784, &lit_10329);
#pragma pop

/* 80518788-8051878C 000204 0004+00 0/0 0/0 0/0 .rodata          @10330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10330 = 8143.0f;
COMPILER_STRIP_GATE(0x80518788, &lit_10330);
#pragma pop

/* 8051878C-80518790 000208 0004+00 0/0 0/0 0/0 .rodata          @10331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10331 = -8337.0f;
COMPILER_STRIP_GATE(0x8051878C, &lit_10331);
#pragma pop

/* 80518790-80518794 00020C 0004+00 0/0 0/0 0/0 .rodata          @10332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10332 = 4488.0f;
COMPILER_STRIP_GATE(0x80518790, &lit_10332);
#pragma pop

/* 80518794-80518798 000210 0004+00 0/0 0/0 0/0 .rodata          @10333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10333 = 8451.0f;
COMPILER_STRIP_GATE(0x80518794, &lit_10333);
#pragma pop

/* 80518798-8051879C 000214 0004+00 0/0 0/0 0/0 .rodata          @10334 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10334 = -4910.0f;
COMPILER_STRIP_GATE(0x80518798, &lit_10334);
#pragma pop

/* 8051879C-805187A0 000218 0004+00 0/0 0/0 0/0 .rodata          @10335 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10335 = 2012.0f;
COMPILER_STRIP_GATE(0x8051879C, &lit_10335);
#pragma pop

/* 805187A0-805187A4 00021C 0004+00 0/0 0/0 0/0 .rodata          @10336 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10336 = 4976.0f;
COMPILER_STRIP_GATE(0x805187A0, &lit_10336);
#pragma pop

/* 805187A4-805187A8 000220 0004+00 0/0 0/0 0/0 .rodata          @10337 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10337 = -5235.0f;
COMPILER_STRIP_GATE(0x805187A4, &lit_10337);
#pragma pop

/* 805187A8-805187AC 000224 0004+00 0/0 0/0 0/0 .rodata          @10338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10338 = 2179.0f;
COMPILER_STRIP_GATE(0x805187A8, &lit_10338);
#pragma pop

/* 805187AC-805187B0 000228 0004+00 0/0 0/0 0/0 .rodata          @10339 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10339 = 5302.0f;
COMPILER_STRIP_GATE(0x805187AC, &lit_10339);
#pragma pop

/* 805187B0-805187B4 00022C 0004+00 0/1 0/0 0/0 .rodata          @10340 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10340 = 2500.0f;
COMPILER_STRIP_GATE(0x805187B0, &lit_10340);
#pragma pop

/* 805187B4-805187B8 000230 0004+00 0/0 0/0 0/0 .rodata          @10341 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10341 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x805187B4, &lit_10341);
#pragma pop

/* 805187B8-805187BC 000234 0004+00 0/0 0/0 0/0 .rodata          @10342 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10342 = -0.5f;
COMPILER_STRIP_GATE(0x805187B8, &lit_10342);
#pragma pop

/* 805187BC-805187C0 000238 0004+00 0/0 0/0 0/0 .rodata          @10343 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10343 = -5197.0f;
COMPILER_STRIP_GATE(0x805187BC, &lit_10343);
#pragma pop

/* 805187C0-805187C4 00023C 0004+00 0/0 0/0 0/0 .rodata          @10344 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10344 = 1712.0f;
COMPILER_STRIP_GATE(0x805187C0, &lit_10344);
#pragma pop

/* 805187C4-805187C8 000240 0004+00 0/0 0/0 0/0 .rodata          @10345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10345 = 5039.0f;
COMPILER_STRIP_GATE(0x805187C4, &lit_10345);
#pragma pop

/* 805187C8-805187CC 000244 0004+00 0/0 0/0 0/0 .rodata          @10346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10346 = -5215.0f;
COMPILER_STRIP_GATE(0x805187C8, &lit_10346);
#pragma pop

/* 805187CC-805187D0 000248 0004+00 0/0 0/0 0/0 .rodata          @10347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10347 = 2108.0f;
COMPILER_STRIP_GATE(0x805187CC, &lit_10347);
#pragma pop

/* 805187D0-805187D4 00024C 0004+00 0/0 0/0 0/0 .rodata          @10348 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10348 = 5327.0f;
COMPILER_STRIP_GATE(0x805187D0, &lit_10348);
#pragma pop

/* 805187D4-805187D8 000250 0004+00 0/0 0/0 0/0 .rodata          @10349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10349 = -5025.0f;
COMPILER_STRIP_GATE(0x805187D4, &lit_10349);
#pragma pop

/* 805187D8-805187DC 000254 0004+00 0/0 0/0 0/0 .rodata          @10350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10350 = 2270.0f;
COMPILER_STRIP_GATE(0x805187D8, &lit_10350);
#pragma pop

/* 805187DC-805187E0 000258 0004+00 0/0 0/0 0/0 .rodata          @10351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10351 = 4909.0f;
COMPILER_STRIP_GATE(0x805187DC, &lit_10351);
#pragma pop

/* 805187E0-805187E4 00025C 0004+00 0/0 0/0 0/0 .rodata          @10352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10352 = -5529.0f;
COMPILER_STRIP_GATE(0x805187E0, &lit_10352);
#pragma pop

/* 805187E4-805187E8 000260 0004+00 0/0 0/0 0/0 .rodata          @10353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10353 = 2457.0f;
COMPILER_STRIP_GATE(0x805187E4, &lit_10353);
#pragma pop

/* 805187E8-805187EC 000264 0004+00 0/0 0/0 0/0 .rodata          @10354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10354 = 5589.0f;
COMPILER_STRIP_GATE(0x805187E8, &lit_10354);
#pragma pop

/* 805187EC-805187F0 000268 0004+00 0/0 0/0 0/0 .rodata          @10355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10355 = -5232.0f;
COMPILER_STRIP_GATE(0x805187EC, &lit_10355);
#pragma pop

/* 805187F0-805187F4 00026C 0004+00 0/0 0/0 0/0 .rodata          @10356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10356 = 2201.0f;
COMPILER_STRIP_GATE(0x805187F0, &lit_10356);
#pragma pop

/* 805187F4-805187F8 000270 0004+00 0/0 0/0 0/0 .rodata          @10357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10357 = 5295.0f;
COMPILER_STRIP_GATE(0x805187F4, &lit_10357);
#pragma pop

/* 805187F8-805187FC 000274 0004+00 0/0 0/0 0/0 .rodata          @10358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10358 = -5580.0f;
COMPILER_STRIP_GATE(0x805187F8, &lit_10358);
#pragma pop

/* 805187FC-80518800 000278 0004+00 0/0 0/0 0/0 .rodata          @10359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10359 = 2188.0f;
COMPILER_STRIP_GATE(0x805187FC, &lit_10359);
#pragma pop

/* 80518800-80518804 00027C 0004+00 0/0 0/0 0/0 .rodata          @10360 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10360 = 5640.0f;
COMPILER_STRIP_GATE(0x80518800, &lit_10360);
#pragma pop

/* 80518804-80518808 000280 0004+00 0/1 0/0 0/0 .rodata          @10361 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10361 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80518804, &lit_10361);
#pragma pop

/* 80518808-8051880C 000284 0004+00 0/0 0/0 0/0 .rodata          @10362 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10362 = -5821.0f;
COMPILER_STRIP_GATE(0x80518808, &lit_10362);
#pragma pop

/* 8051880C-80518810 000288 0004+00 0/0 0/0 0/0 .rodata          @10363 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10363 = 5850.0f;
COMPILER_STRIP_GATE(0x8051880C, &lit_10363);
#pragma pop

/* 80518810-80518814 00028C 0004+00 0/0 0/0 0/0 .rodata          @10364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10364 = -5406.0f;
COMPILER_STRIP_GATE(0x80518810, &lit_10364);
#pragma pop

/* 80518814-80518818 000290 0004+00 0/0 0/0 0/0 .rodata          @10365 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10365 = 2168.0f;
COMPILER_STRIP_GATE(0x80518814, &lit_10365);
#pragma pop

/* 80518818-8051881C 000294 0004+00 0/0 0/0 0/0 .rodata          @10366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10366 = 5468.0f;
COMPILER_STRIP_GATE(0x80518818, &lit_10366);
#pragma pop

/* 8051881C-80518820 000298 0004+00 0/0 0/0 0/0 .rodata          @10367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10367 = -5058.0f;
COMPILER_STRIP_GATE(0x8051881C, &lit_10367);
#pragma pop

/* 80518820-80518824 00029C 0004+00 0/0 0/0 0/0 .rodata          @10368 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10368 = 2181.0f;
COMPILER_STRIP_GATE(0x80518820, &lit_10368);
#pragma pop

/* 80518824-80518828 0002A0 0004+00 0/0 0/0 0/0 .rodata          @10369 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10369 = 5124.0f;
COMPILER_STRIP_GATE(0x80518824, &lit_10369);
#pragma pop

/* 80518828-8051882C 0002A4 0004+00 0/0 0/0 0/0 .rodata          @10370 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10370 = -3963.0f;
COMPILER_STRIP_GATE(0x80518828, &lit_10370);
#pragma pop

/* 8051882C-80518830 0002A8 0004+00 0/0 0/0 0/0 .rodata          @10371 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10371 = 147.0f;
COMPILER_STRIP_GATE(0x8051882C, &lit_10371);
#pragma pop

/* 80518830-80518834 0002AC 0004+00 0/0 0/0 0/0 .rodata          @10372 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10372 = 8094.0f;
COMPILER_STRIP_GATE(0x80518830, &lit_10372);
#pragma pop

/* 80518834-80518838 0002B0 0004+00 0/0 0/0 0/0 .rodata          @10373 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10373 = -4080.0f;
COMPILER_STRIP_GATE(0x80518834, &lit_10373);
#pragma pop

/* 80518838-8051883C 0002B4 0004+00 0/0 0/0 0/0 .rodata          @10374 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10374 = 134.0f;
COMPILER_STRIP_GATE(0x80518838, &lit_10374);
#pragma pop

/* 8051883C-80518840 0002B8 0004+00 0/0 0/0 0/0 .rodata          @10375 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10375 = 8190.0f;
COMPILER_STRIP_GATE(0x8051883C, &lit_10375);
#pragma pop

/* 80518840-80518844 0002BC 0004+00 0/0 0/0 0/0 .rodata          @10376 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10376 = -4527.0f;
COMPILER_STRIP_GATE(0x80518840, &lit_10376);
#pragma pop

/* 80518844-80518848 0002C0 0004+00 0/0 0/0 0/0 .rodata          @10377 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10377 = 143.0f;
COMPILER_STRIP_GATE(0x80518844, &lit_10377);
#pragma pop

/* 80518848-8051884C 0002C4 0004+00 0/0 0/0 0/0 .rodata          @10378 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10378 = 8305.0f;
COMPILER_STRIP_GATE(0x80518848, &lit_10378);
#pragma pop

/* 8051884C-80518850 0002C8 0004+00 0/0 0/0 0/0 .rodata          @10379 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10379 = -4676.0f;
COMPILER_STRIP_GATE(0x8051884C, &lit_10379);
#pragma pop

/* 80518850-80518854 0002CC 0004+00 0/0 0/0 0/0 .rodata          @10380 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10380 = 161.0f;
COMPILER_STRIP_GATE(0x80518850, &lit_10380);
#pragma pop

/* 80518854-80518858 0002D0 0004+00 0/0 0/0 0/0 .rodata          @10381 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10381 = 8282.0f;
COMPILER_STRIP_GATE(0x80518854, &lit_10381);
#pragma pop

/* 80518858-8051885C 0002D4 0004+00 0/0 0/0 0/0 .rodata          @10382 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10382 = -4552.0f;
COMPILER_STRIP_GATE(0x80518858, &lit_10382);
#pragma pop

/* 8051885C-80518860 0002D8 0004+00 0/0 0/0 0/0 .rodata          @10383 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10383 = 8461.0f;
COMPILER_STRIP_GATE(0x8051885C, &lit_10383);
#pragma pop

/* 80518860-80518864 0002DC 0004+00 0/0 0/0 0/0 .rodata          @10384 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10384 = -4701.0f;
COMPILER_STRIP_GATE(0x80518860, &lit_10384);
#pragma pop

/* 80518864-80518868 0002E0 0004+00 0/0 0/0 0/0 .rodata          @10385 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10385 = 8438.0f;
COMPILER_STRIP_GATE(0x80518864, &lit_10385);
#pragma pop

/* 80518868-8051886C 0002E4 0004+00 0/0 0/0 0/0 .rodata          @10386 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10386 = -5397.0f;
COMPILER_STRIP_GATE(0x80518868, &lit_10386);
#pragma pop

/* 8051886C-80518870 0002E8 0004+00 0/0 0/0 0/0 .rodata          @10387 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10387 = 5921.0f;
COMPILER_STRIP_GATE(0x8051886C, &lit_10387);
#pragma pop

/* 80518870-80518874 0002EC 0004+00 0/1 0/0 0/0 .rodata          @10388 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_10388 = 0x3A83126F;
COMPILER_STRIP_GATE(0x80518870, &lit_10388);
#pragma pop

/* 80518874-80518878 0002F0 0004+00 0/0 0/0 0/0 .rodata          @10389 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10389 = -5275.0f;
COMPILER_STRIP_GATE(0x80518874, &lit_10389);
#pragma pop

/* 80518878-8051887C 0002F4 0004+00 0/0 0/0 0/0 .rodata          @10390 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10390 = 2327.0f;
COMPILER_STRIP_GATE(0x80518878, &lit_10390);
#pragma pop

/* 8051887C-80518880 0002F8 0004+00 0/0 0/0 0/0 .rodata          @10391 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10391 = 5812.0f;
COMPILER_STRIP_GATE(0x8051887C, &lit_10391);
#pragma pop

/* 80518880-80518884 0002FC 0004+00 0/0 0/0 0/0 .rodata          @10392 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10392 = -5367.0f;
COMPILER_STRIP_GATE(0x80518880, &lit_10392);
#pragma pop

/* 80518884-80518888 000300 0004+00 0/0 0/0 0/0 .rodata          @10393 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10393 = 2689.0f;
COMPILER_STRIP_GATE(0x80518884, &lit_10393);
#pragma pop

/* 80518888-8051888C 000304 0004+00 0/0 0/0 0/0 .rodata          @10394 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10394 = 5495.0f;
COMPILER_STRIP_GATE(0x80518888, &lit_10394);
#pragma pop

/* 8051888C-80518890 000308 0004+00 0/0 0/0 0/0 .rodata          @10395 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10395 = -3906.0f;
COMPILER_STRIP_GATE(0x8051888C, &lit_10395);
#pragma pop

/* 80518890-80518894 00030C 0004+00 0/0 0/0 0/0 .rodata          @10396 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10396 = 42.0f;
COMPILER_STRIP_GATE(0x80518890, &lit_10396);
#pragma pop

/* 80518894-80518898 000310 0004+00 0/0 0/0 0/0 .rodata          @10397 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10397 = 8198.0f;
COMPILER_STRIP_GATE(0x80518894, &lit_10397);
#pragma pop

/* 80518898-8051889C 000314 0004+00 0/0 0/0 0/0 .rodata          @10398 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10398 = -4274.0f;
COMPILER_STRIP_GATE(0x80518898, &lit_10398);
#pragma pop

/* 8051889C-805188A0 000318 0004+00 0/0 0/0 0/0 .rodata          @10399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10399 = 272.0f;
COMPILER_STRIP_GATE(0x8051889C, &lit_10399);
#pragma pop

/* 805188A0-805188A4 00031C 0004+00 0/0 0/0 0/0 .rodata          @10400 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10400 = 7969.0f;
COMPILER_STRIP_GATE(0x805188A0, &lit_10400);
#pragma pop

/* 805188A4-805188A8 000320 0004+00 0/0 0/0 0/0 .rodata          @10401 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10401 = -5712.0f;
COMPILER_STRIP_GATE(0x805188A4, &lit_10401);
#pragma pop

/* 805188A8-805188AC 000324 0004+00 0/0 0/0 0/0 .rodata          @10402 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10402 = 2308.0f;
COMPILER_STRIP_GATE(0x805188A8, &lit_10402);
#pragma pop

/* 805188AC-805188B0 000328 0004+00 0/0 0/0 0/0 .rodata          @10403 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10403 = 5828.0f;
COMPILER_STRIP_GATE(0x805188AC, &lit_10403);
#pragma pop

/* 805188B0-805188B4 00032C 0004+00 0/0 0/0 0/0 .rodata          @10404 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10404 = -5286.0f;
COMPILER_STRIP_GATE(0x805188B0, &lit_10404);
#pragma pop

/* 805188B4-805188B8 000330 0004+00 0/0 0/0 0/0 .rodata          @10405 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10405 = 2104.0f;
COMPILER_STRIP_GATE(0x805188B4, &lit_10405);
#pragma pop

/* 805188B8-805188BC 000334 0004+00 0/0 0/0 0/0 .rodata          @10406 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10406 = 5957.0f;
COMPILER_STRIP_GATE(0x805188B8, &lit_10406);
#pragma pop

/* 805188BC-805188C0 000338 0004+00 0/1 0/0 0/0 .rodata          @10407 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10407 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x805188BC, &lit_10407);
#pragma pop

/* 805188C0-805188C4 00033C 0004+00 0/0 0/0 0/0 .rodata          @10408 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10408 = -4712.0f;
COMPILER_STRIP_GATE(0x805188C0, &lit_10408);
#pragma pop

/* 805188C4-805188C8 000340 0004+00 0/0 0/0 0/0 .rodata          @10409 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10409 = 870.0f;
COMPILER_STRIP_GATE(0x805188C4, &lit_10409);
#pragma pop

/* 805188C8-805188CC 000344 0004+00 0/0 0/0 0/0 .rodata          @10410 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10410 = 7432.0f;
COMPILER_STRIP_GATE(0x805188C8, &lit_10410);
#pragma pop

/* 805188CC-805188D0 000348 0004+00 0/0 0/0 0/0 .rodata          @10411 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10411 = -4852.0f;
COMPILER_STRIP_GATE(0x805188CC, &lit_10411);
#pragma pop

/* 805188D0-805188D4 00034C 0004+00 0/0 0/0 0/0 .rodata          @10412 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10412 = 1171.0f;
COMPILER_STRIP_GATE(0x805188D0, &lit_10412);
#pragma pop

/* 805188D4-805188D8 000350 0004+00 0/0 0/0 0/0 .rodata          @10413 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10413 = 7072.0f;
COMPILER_STRIP_GATE(0x805188D4, &lit_10413);
#pragma pop

/* 805188D8-805188DC 000354 0004+00 0/1 0/0 0/0 .rodata          @11210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11210 = -2000.0f;
COMPILER_STRIP_GATE(0x805188D8, &lit_11210);
#pragma pop

/* 805188DC-805188E0 000358 0004+00 0/1 0/0 0/0 .rodata          @11211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11211 = -10.0f;
COMPILER_STRIP_GATE(0x805188DC, &lit_11211);
#pragma pop

/* 805188E0-805188E4 00035C 0004+00 0/1 0/0 0/0 .rodata          @11212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11212 = 21.0f;
COMPILER_STRIP_GATE(0x805188E0, &lit_11212);
#pragma pop

/* 805188E4-805188E8 000360 0004+00 0/1 0/0 0/0 .rodata          @11213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11213 = 38.0f;
COMPILER_STRIP_GATE(0x805188E4, &lit_11213);
#pragma pop

/* 805188E8-805188EC 000364 0004+00 0/1 0/0 0/0 .rodata          @11214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11214 = -6.0f;
COMPILER_STRIP_GATE(0x805188E8, &lit_11214);
#pragma pop

/* 805188EC-805188F0 000368 0004+00 0/1 0/0 0/0 .rodata          @11215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11215 = -20000.0f;
COMPILER_STRIP_GATE(0x805188EC, &lit_11215);
#pragma pop

/* 805188F0-805188F4 00036C 0004+00 0/1 0/0 0/0 .rodata          @11216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11216 = 200000.0f;
COMPILER_STRIP_GATE(0x805188F0, &lit_11216);
#pragma pop

/* 805188F4-805188F8 000370 0004+00 0/2 0/0 0/0 .rodata          @11217 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11217 = 30000.0f;
COMPILER_STRIP_GATE(0x805188F4, &lit_11217);
#pragma pop

/* 805188F8-805188FC 000374 0004+00 0/1 0/0 0/0 .rodata          @11218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11218 = 190.0f;
COMPILER_STRIP_GATE(0x805188F8, &lit_11218);
#pragma pop

/* 805188FC-80518900 000378 0004+00 0/1 0/0 0/0 .rodata          @11219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11219 = 120.0f;
COMPILER_STRIP_GATE(0x805188FC, &lit_11219);
#pragma pop

/* 80518900-80518904 00037C 0004+00 0/1 0/0 0/0 .rodata          @11220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11220 = -200000.0f;
COMPILER_STRIP_GATE(0x80518900, &lit_11220);
#pragma pop

/* 80518904-80518908 000380 0004+00 0/2 0/0 0/0 .rodata          @11221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11221 = -200.0f;
COMPILER_STRIP_GATE(0x80518904, &lit_11221);
#pragma pop

/* 80518908-8051890C 000384 0004+00 0/1 0/0 0/0 .rodata          @11222 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11222 = -500.0f;
COMPILER_STRIP_GATE(0x80518908, &lit_11222);
#pragma pop

/* 8051890C-80518910 000388 0004+00 0/1 0/0 0/0 .rodata          @11223 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11223 = -80.0f;
COMPILER_STRIP_GATE(0x8051890C, &lit_11223);
#pragma pop

/* 80518910-80518914 00038C 0004+00 0/1 0/0 0/0 .rodata          @11224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11224 = -0.0f;
COMPILER_STRIP_GATE(0x80518910, &lit_11224);
#pragma pop

/* 80518968-80518968 0003E4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8051897E = "F_SP102";
#pragma pop

/* 8051933C-80519340 000204 0004+00 0/2 0/0 0/0 .bss             c_start */
static int c_start;

/* 80514640-805163C0 00FCC0 1D80+00 2/1 0/0 0/0 .text            daE_RD_Execute__FP10e_rd_class */
static void daE_RD_Execute(e_rd_class* i_this) {
    // NONMATCHING
}

/* 805163C0-805164D4 011A40 0114+00 1/1 0/0 0/0 .text            abs__4cXyzCFv */
// void cXyz::abs() const {
extern "C" void abs__4cXyzCFv() {
    // NONMATCHING
}

/* 805164D4-805164DC 011B54 0008+00 1/0 0/0 0/0 .text            daE_RD_IsDelete__FP10e_rd_class */
static bool daE_RD_IsDelete(e_rd_class* i_this) {
    return true;
}

/* 805164DC-80516540 011B5C 0064+00 1/0 0/0 0/0 .text            daE_RD_Delete__FP10e_rd_class */
static void daE_RD_Delete(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80518914-80518918 000390 0004+00 0/1 0/0 0/0 .rodata          @11395 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11395 = -4800.0f;
COMPILER_STRIP_GATE(0x80518914, &lit_11395);
#pragma pop

/* 80518918-8051891C 000394 0004+00 0/1 0/0 0/0 .rodata          @11396 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11396 = -650.0f;
COMPILER_STRIP_GATE(0x80518918, &lit_11396);
#pragma pop

/* 8051891C-80518920 000398 0004+00 0/1 0/0 0/0 .rodata          @11397 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11397 = -4500.0f;
COMPILER_STRIP_GATE(0x8051891C, &lit_11397);
#pragma pop

/* 80518920-80518924 00039C 0004+00 0/1 0/0 0/0 .rodata          @11398 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11398 = 1100.0f;
COMPILER_STRIP_GATE(0x80518920, &lit_11398);
#pragma pop

/* 80518924-80518928 0003A0 0004+00 0/1 0/0 0/0 .rodata          @11399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11399 = -5500.0f;
COMPILER_STRIP_GATE(0x80518924, &lit_11399);
#pragma pop

/* 80518928-8051892C 0003A4 0004+00 0/1 0/0 0/0 .rodata          @11400 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11400 = -5800.0f;
COMPILER_STRIP_GATE(0x80518928, &lit_11400);
#pragma pop

/* 8051892C-80518930 0003A8 0004+00 0/1 0/0 0/0 .rodata          @11401 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11401 = -1100.0f;
COMPILER_STRIP_GATE(0x8051892C, &lit_11401);
#pragma pop

/* 80518930-80518934 0003AC 0004+00 0/1 0/0 0/0 .rodata          @11402 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11402 = 34789.0f;
COMPILER_STRIP_GATE(0x80518930, &lit_11402);
#pragma pop

/* 80518934-80518938 0003B0 0004+00 0/1 0/0 0/0 .rodata          @11403 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11403 = -290.0f;
COMPILER_STRIP_GATE(0x80518934, &lit_11403);
#pragma pop

/* 80518938-8051893C 0003B4 0004+00 0/1 0/0 0/0 .rodata          @11404 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11404 = -36177.0f;
COMPILER_STRIP_GATE(0x80518938, &lit_11404);
#pragma pop

/* 8051893C-80518940 0003B8 0004+00 0/1 0/0 0/0 .rodata          @11405 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11405 = -93620.0f;
COMPILER_STRIP_GATE(0x8051893C, &lit_11405);
#pragma pop

/* 80518940-80518944 0003BC 0004+00 0/1 0/0 0/0 .rodata          @11406 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11406 = -5750.0f;
COMPILER_STRIP_GATE(0x80518940, &lit_11406);
#pragma pop

/* 80518944-80518948 0003C0 0004+00 0/1 0/0 0/0 .rodata          @11407 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11407 = 49650.0f;
COMPILER_STRIP_GATE(0x80518944, &lit_11407);
#pragma pop

/* 80519340-80519350 000208 000C+04 0/1 0/0 0/0 .bss             @11269 */
#pragma push
#pragma force_active on
static u8 lit_11269[12 + 4 /* padding */];
#pragma pop

/* 80519350-8051935C 000218 000C+00 0/1 0/0 0/0 .bss             @11272 */
#pragma push
#pragma force_active on
static u8 lit_11272[12];
#pragma pop

/* 8051935C-80519368 000224 000C+00 0/1 0/0 0/0 .bss             @11273 */
#pragma push
#pragma force_active on
static u8 lit_11273[12];
#pragma pop

/* 80519368-80519374 000230 000C+00 0/1 0/0 0/0 .bss             @11274 */
#pragma push
#pragma force_active on
static u8 lit_11274[12];
#pragma pop

/* 80519374-80519380 00023C 000C+00 0/1 0/0 0/0 .bss             @11275 */
#pragma push
#pragma force_active on
static u8 lit_11275[12];
#pragma pop

/* 80519380-8051938C 000248 000C+00 0/1 0/0 0/0 .bss             @11276 */
#pragma push
#pragma force_active on
static u8 lit_11276[12];
#pragma pop

/* 8051938C-805193D4 000254 0048+00 0/1 0/0 0/0 .bss             set_pos$11268 */
#pragma push
#pragma force_active on
static u8 set_pos_11268[72];
#pragma pop

/* 80516540-80516980 011BC0 0440+00 1/1 0/0 0/0 .text            ride_game_actor_set__FP10e_rd_class
 */
static void ride_game_actor_set(e_rd_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80518948-8051894C 0003C4 0004+00 0/1 0/0 0/0 .rodata          @11460 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11460 = -57464.0f;
COMPILER_STRIP_GATE(0x80518948, &lit_11460);
#pragma pop

/* 8051894C-80518950 0003C8 0004+00 0/1 0/0 0/0 .rodata          @11461 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11461 = -8000.0f;
COMPILER_STRIP_GATE(0x8051894C, &lit_11461);
#pragma pop

/* 80518950-80518954 0003CC 0004+00 0/1 0/0 0/0 .rodata          @11462 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11462 = 82137.0f;
COMPILER_STRIP_GATE(0x80518950, &lit_11462);
#pragma pop

/* 80518954-80518958 0003D0 0004+00 0/1 0/0 0/0 .rodata          @11463 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11463 = -58006.0f;
COMPILER_STRIP_GATE(0x80518954, &lit_11463);
#pragma pop

/* 80518958-8051895C 0003D4 0004+00 0/1 0/0 0/0 .rodata          @11464 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11464 = 79302.0f;
COMPILER_STRIP_GATE(0x80518958, &lit_11464);
#pragma pop

/* 8051895C-80518960 0003D8 0004+00 0/1 0/0 0/0 .rodata          @11465 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11465 = -56848.0f;
COMPILER_STRIP_GATE(0x8051895C, &lit_11465);
#pragma pop

/* 80518960-80518964 0003DC 0004+00 0/1 0/0 0/0 .rodata          @11466 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11466 = 84472.0f;
COMPILER_STRIP_GATE(0x80518960, &lit_11466);
#pragma pop

/* 805193D4-805193E4 00029C 000C+04 0/1 0/0 0/0 .bss             @11412 */
#pragma push
#pragma force_active on
static u8 lit_11412[12 + 4 /* padding */];
#pragma pop

/* 805193E4-805193F0 0002AC 000C+00 0/1 0/0 0/0 .bss             @11415 */
#pragma push
#pragma force_active on
static u8 lit_11415[12];
#pragma pop

/* 805193F0-805193FC 0002B8 000C+00 0/1 0/0 0/0 .bss             @11416 */
#pragma push
#pragma force_active on
static u8 lit_11416[12];
#pragma pop


/* 805193FC-80519424 0002C4 0024+04 0/1 0/0 0/0 .bss             set_pos$11411 */
static cXyz set_pos[3];

static s8 gap_05_000002E8_bss;

/* 80516980-80516B04 012000 0184+00 1/1 0/0 0/0 .text coach_game_actor_set__FP10e_rd_class */
static void coach_game_actor_set(e_rd_class* i_this) {
    // NONMATCHING
}

/* 80516B04-805171FC 012184 06F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    // NONMATCHING
    e_rd_class* i_this = (e_rd_class*)a_this;
    J3DModel* model;
    J3DModelData* modelData;

    if (i_this->field_0x129a != 0) {
        i_this->mpModelMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("E_rdb", 83), NULL, NULL,
                                                   (J3DAnmTransform*)dComIfG_getObjectRes("E_rdb", 65), 2, 1.0f,
                                                   0, -1, &i_this->mSound, 0x80000, 0x11000084);
        if (i_this->mpModelMorf == NULL || i_this->mpModelMorf->getModel() == NULL) {
            return 0;
        }

        model = i_this->mpModelMorf->getModel();
        model->setUserArea((u32)i_this);

        for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
            model->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack_B);
        }

        if (i_this->field_0x129a == 1) {
            i_this->mpMorfHornAnm = new mDoExt_McaMorf((J3DModelData*)dComIfG_getObjectRes("E_rdb", 84), NULL, NULL,
                                                      NULL, 2, 1.0f, 0, -1, 1, NULL, 0x80000, 0x11000084);
            if (i_this->mpMorfHornAnm == NULL || i_this->mpMorfHornAnm->getModel() == NULL) {
                return 0;
            }

            i_this->field_0x6a0 = 1;
        }

        static int ikki2_boss_part_idx[2] = {
            14, 19,
        };
        static int boss_part_bmd[14] = {
            0x5A, 0x50, 0x5B, 0x4F, 0x51, 0x58, 0x4A,
            0x49, 0x4D, 0x4C, 0x4B, 0x59, 0x4E, 0x52,
        };

        for (int i = 0; i < 14; i++) {
            if (i_this->field_0x129a == 3) {
                if (i < 2) {
                    modelData = (J3DModelData*)dComIfG_getObjectRes("E_rdb", ikki2_boss_part_idx[i]);
                    JUT_ASSERT(10672, modelData != 0);
                    i_this->field_0x6d4[i] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
                    if (i_this->field_0x6d4[i] == NULL) {
                        return 0;
                    }
                } else {
                    i_this->field_0x70c[i] = 1;
                }
            } else if (i_this->field_0x129a == 1 || i == 13) {
                modelData = (J3DModelData*)dComIfG_getObjectRes("E_rdb", boss_part_bmd[i]);
                JUT_ASSERT(10687, modelData != 0);
                i_this->field_0x6d4[i] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
                if (i_this->field_0x6d4[i] == NULL) {
                    return 0;
                }
            } else {
                i_this->field_0x70c[i] = 1;
            }
        }
    } else {
        i_this->mpModelMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes(i_this->mResName, 68), NULL, NULL,
                                                   (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 64), 0, 1.0f,
                                                   0, -1, &i_this->mSound, 0x80000, 0x11000084);
        if (i_this->mpModelMorf == NULL || i_this->mpModelMorf->getModel() == NULL) {
            return 0;
        }

        model = i_this->mpModelMorf->getModel();
        model->setUserArea((u32)i_this);
        mDoMtx_stack_c::scaleS(0.0f, 0.0f, 0.0f);
        model->setBaseTRMtx(mDoMtx_stack_c::get());

        for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
            model->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack);
        }

        if (i_this->field_0x5bc == 1) {
            if (boss != NULL) {
                modelData = (J3DModelData*)dComIfG_getObjectRes(i_this->mResName, 73);
            } else {
                modelData = (J3DModelData*)dComIfG_getObjectRes(i_this->mResName, 72);
            }

            JUT_ASSERT(10762, modelData != 0);

            i_this->field_0x694 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
            if (i_this->field_0x694 == NULL) {
                return 0;
            }

            i_this->field_0x694->setBaseTRMtx(mDoMtx_stack_c::get());
        } else if (i_this->field_0x5bc >= 2) {
            i_this->field_0x698 = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes(i_this->mResName, 71), NULL, NULL,
                                                       (J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 10), 0, 1.0f,
                                                       0, -1, NULL, 0x80000, 0x11000084);
            if (i_this->field_0x698 == NULL || i_this->field_0x698->getModel() == NULL) {
                return 0;
            }

            model = i_this->field_0x698->getModel();
            model->setUserArea((u32)i_this);
            model->setBaseTRMtx(mDoMtx_stack_c::get());

            for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
                if (i == 2 || i == 3) {
                    model->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack_bow);
                }
            }

            if (i_this->field_0x5bc == 4) {
                modelData = (J3DModelData*)dComIfG_getObjectRes(i_this->mResName, 70);
            } else {
                modelData = (J3DModelData*)dComIfG_getObjectRes(i_this->mResName, 69);
            }

            JUT_ASSERT(10810, modelData != 0);

            i_this->field_0x694 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
            if (i_this->field_0x694 == NULL) {
                return 0;
            }

            i_this->field_0x694->setBaseTRMtx(mDoMtx_stack_c::get());
        }

        modelData = (J3DModelData*)dComIfG_getObjectRes(i_this->mResName, 74);
        JUT_ASSERT(10823, modelData != 0);

        for (u16 i = 0; i < 2; i++) {
            i_this->field_0x6c4[i] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
            if (i_this->field_0x6c4[i] == NULL) {
                return 0;
            }
            i_this->field_0x6c4[i]->setBaseTRMtx(mDoMtx_stack_c::get());
        }
    }

    return 1;
}

/* 805171FC-80517AE0 01287C 08E4+00 1/0 0/0 0/0 .text            daE_RD_Create__FP10fopAc_ac_c */
static cPhs__Step daE_RD_Create(fopAc_ac_c* a_this) {
    // NONMATCHING
    e_rd_class* i_this = (e_rd_class*)a_this;

    fopAcM_SetupActor(a_this, e_rd_class);

    i_this->field_0x5b6 = fopAcM_GetParam(a_this);
    i_this->field_0x5b7 = i_this->field_0x5b6;
    i_this->field_0x5b8 = fopAcM_GetParam(a_this) >> 12 & 15;
    if (i_this->field_0x5b8 == 15) {
        i_this->field_0x5b8 = 0;
    }

    if (((i_this->field_0x5b6 == 4 || i_this->field_0x5b6 == 5) || i_this->field_0x5b6 == 11) || i_this->field_0x5b6 == 12) {
        if (i_this->field_0x5b6 == 4) {
            i_this->field_0x129a = 1;
        } else if (i_this->field_0x5b6 == 5) {
            i_this->field_0x129a = 2;
        } else if (i_this->field_0x5b6 == 11) {
            i_this->field_0x129a = 3;
        } else if (i_this->field_0x5b6 == 12) {
            i_this->field_0x129a = 4;
        }

        i_this->mResName = "E_rdb";
    } else {
        i_this->mResName = "E_RD";
    }

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&i_this->mPhase, i_this->mResName);
    if (phase == cPhs_COMPLEATE_e) {
        if (strcmp(dComIfGp_getStartStageName(), "F_SP124") == 0) {
            data_80519200 = 124;
        } else {
            if (strcmp(dComIfGp_getStartStageName(), "F_SP118") == 0) {
                data_80519200 = 118;
            } else {
                data_80519200 = 0;
            }
        }

        int swBit = fopAcM_GetParam(a_this) >> 24;
        if (swBit != 0xFF) {
            if (dComIfGs_isSwitch(swBit, fopAcM_GetRoomNo(a_this))) {
                return cPhs_ERROR_e;
            }
        }

        if (i_this->field_0x5b6 == 10) {
            coach_game_actor_set(i_this);
            return cPhs_ERROR_e;
        }

        if (i_this->field_0x129a != 0) {
            boss = i_this;
            i_this->field_0x5b6 = 1;
        }

        i_this->field_0x5bc = fopAcM_GetParam(a_this) >> 8 & 15;
        if (i_this->field_0x5bc == 15) {
            i_this->field_0x5bc = 0;
        }

        if (i_this->field_0x5bc >= 4) {
            return cPhs_ERROR_e;
        }

        i_this->field_0x5ba = fopAcM_GetParam(a_this) >> 16;
        if (i_this->field_0x5ba == 0xFF) {
            i_this->field_0x5ba = 0;
        }

        if (i_this->field_0x5ba == 2) {
            fopAcM_setStageLayer(a_this);
        }

        i_this->field_0x5b9 = fopAcM_GetParam(a_this) >> 24;
        if (i_this->field_0x5b8 == 3 || i_this->field_0x5b8 == 4 || i_this->field_0x5b8 == 5 || i_this->field_0x5b8 == 6 || i_this->field_0x5b8 == 7) {
            if (i_this->field_0x5b8 != 5) {
                i_this->field_0x1295 = 1;
            }

            if (i_this->field_0x5b8 == 4) {
                i_this->field_0x1296 = 1;
            }

            if (i_this->field_0x5b8 == 6) {
                i_this->field_0x1299 = 1;
                i_this->mAction = 25;
                i_this->field_0x5b4 = 0;
                i_this->field_0x990[2] = 20;
                i_this->field_0x1296 = 1;
            } else if (i_this->field_0x5b8 == 7) {
                i_this->mAction = 26;
                i_this->field_0x1296 = 1;
                i_this->field_0x998 = 20;
            } else {
                i_this->mAction = 7;
            }

            fopAcM_setCullSizeFar(a_this, 30000.0f);
            i_this->field_0x5b8 = 3;
        } else if (i_this->field_0x5b8 == 10) {
            i_this->mAction = 8;
            i_this->field_0x990[0] = 142;
        } else if (i_this->field_0x5b8 == 11) {
            fopAcM_create(PROC_E_RDY, fopAcM_GetParam(a_this), &a_this->home.pos, 
                          fopAcM_GetRoomNo(a_this), &a_this->home.angle, NULL, -1);
        }

        if ((a_this->home.angle.z & 0xFF) == 0 || (a_this->home.angle.z & 0xFF) == 0xFF) {
            i_this->field_0x980 = 100000.0f;
        } else {
            i_this->field_0x980 = a_this->home.angle.z * 100.0f;
        }

        i_this->field_0x12a0 = a_this->home.angle.z >> 8 & 0xFF;

        if (i_this->field_0x12a0 == 0xFF) {
            i_this->field_0x12a0 = 0;
        }

        fopAcM_OnStatus(a_this, fopAcM_STATUS_UNK_000100);
        a_this->attention_info.flags = 4;

        if (i_this->field_0x5b6 == 6) {
            i_this->mAction = 50;
            i_this->field_0x99c = 30;
            S_find = 0;
            lbl_70_bss_AE = 0;

            if (fopAcM_GetRoomNo(a_this) == 0) {
                fopAcM_setCullSizeFar(a_this, 30000.0f);
            }
        } else if (i_this->field_0x5b6 == 7) {
            i_this->mAction = 0;
            if ((u32)(a_this->home.angle.x & 0xFF) != 0xFF) {
                i_this->mPath = dPath_GetRoomPath(a_this->home.angle.x & 0xFF, fopAcM_GetRoomNo(a_this));
                OS_REPORT("//////////////E_RD PPD %x!!\n", i_this->mPath);
                if (i_this->mPath == NULL) {
                    OS_REPORT("......RD   NONONONONONO PATH !!!!\n");
                    return cPhs_ERROR_e;
                }

                OS_REPORT("//////////////E_RD P0.y %f\n", i_this->mPath->m_points->m_position.y);
            }
        } else if (i_this->field_0x5b6 == 8) {
            i_this->mAction = 52;
            if (fopAcM_GetRoomNo(a_this) == 0) {
                fopAcM_setCullSizeFar(a_this, 30000.0f);
            }
        } else if (i_this->field_0x5b6 == 9) {
            i_this->mAction = 53;
            fopAcM_OffStatus(a_this, 0);
            a_this->attention_info.flags = 0;
        } else if (i_this->field_0x5b6 == 35) {
            i_this->mAction = 3;
            i_this->field_0x5b4 = 0;
            i_this->field_0x99c = 200;
        }

        if (i_this->field_0x5bc == 1 && i_this->field_0x5b6 == 0) {
            i_this->mAction = 24;
            i_this->field_0x5b4 = 0;
        }

        if (i_this->field_0x5b6 == 13 || i_this->field_0x5b6 == 14) {
            i_this->mAction = 60;
            i_this->field_0x5b4 = 0;
            i_this->field_0xafb = 1;
            fopAcM_OffStatus(a_this, fopAcM_STATUS_UNK_000100);
        }

        if (i_this->field_0x5b6 > 2) {
            i_this->field_0x5b6 = 0;
        }

        a_this->shape_angle.x = 0;
        a_this->current.angle.x = 0;
        a_this->home.angle.x = 0;
        a_this->shape_angle.z = 0;
        a_this->current.angle.z = 0;
        a_this->home.angle.z = 0;

        u32 i_size;
        if (i_this->field_0x129a == 1) {
            i_size = 0xAD60;
        } else if (i_this->field_0x129a == 2) {
            i_size = 0x3C00;
        } else if (i_this->field_0x129a == 3) {
            i_size = 0x4400;
        } else {
            i_size = 0x4FF0;
        }

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, i_size)) {
            OS_REPORT("//////////////E_RD SET NON !!\n");
            return cPhs_ERROR_e;
        }

        if (i_this->field_0x129a != 0) {
            ride_game_actor_set(i_this);
        }

        if (l_initHIO == 0) {
            i_this->field_0x125c = 1;
            l_initHIO = 1;
            l_HIO.field_0x4 = -1;
        }

        fopAcM_SetMtx(a_this, i_this->mpModelMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(a_this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(a_this, 200.0f, 200.0f, 200.0f);
        i_this->mObjAcch.Set(fopAcM_GetPosition_p(a_this), fopAcM_GetOldPosition_p(a_this), a_this, 1,
                             &i_this->mAcchCir, fopAcM_GetSpeed_p(a_this), NULL, NULL);
        i_this->mAcchCir.SetWall(50.0f, 50.0f);

        a_this->health = 40;
        a_this->field_0x560 = 40;

        i_this->mStts.Init(150, 0, a_this);

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
        for (int i = 0; i <= 2; i++) {
            i_this->field_0xd58[i].Set(cc_sph_src);
            i_this->field_0xd58[i].SetStts(&i_this->mStts);

            if (i_this->field_0x129a != 0) {
                i_this->field_0xd58[i].SetTgType(0xD8FAFD3F);
            }
        }

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
        i_this->field_0x1100.Set(at_sph_src);
        i_this->field_0x1100.SetStts(&i_this->mStts);

        i_this->field_0x970 = gap_05_000002E8_bss | (u16)(cM_rndF(65535.0f)) & 0xFF;
        gap_05_000002E8_bss++;

        i_this->mSound.init(&a_this->current.pos, &a_this->eyePos, 3, 1);

        if (i_this->field_0x129a != 0) {
            i_this->mSound.setEnemyName("E_rdb");
        } else {
            i_this->mSound.setEnemyName("E_rd");
        }

        i_this->mAtInfo.mPowerType = 2;
        i_this->mAtInfo.mpSound = &i_this->mSound;

        if (boss != NULL) {
            fopAcM_setCullSizeFar(a_this, 30000.0f);
        }

        i_this->field_0x9a0 = 5;

        if (!dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo())) {
            i_this->field_0x1298 = l_HIO.eye_polygon;

            if (data_80519200 != 0 || strcmp(dComIfGp_getStartStageName(), "F_SP115") == 0 ||
                (strcmp(dComIfGp_getStartStageName(), "F_SP121") == 0 && fopAcM_GetRoomNo(a_this) == 0)) {
                fopAcM_OffStatus(a_this, fopAcM_STATUS_UNK_004000);
            }
        } else if (i_this->field_0x129a != 4) {
            fopAcM_OffStatus(a_this, fopAcM_STATUS_UNK_004000);
        }

        if (strcmp(dComIfGp_getStartStageName(), "F_SP121") == 0 && fopAcM_GetRoomNo(a_this) == 0) {
            data_80519201 = 1;
        } else {
            data_80519201 = 0;
        }

        c_start = 1;
        daE_RD_Execute(i_this);
        c_start = 0;

        if (i_this->mAction == 53) {
            i_this->field_0xafb = 1;
            i_this->mSound.setEnemyName(NULL);
        }
    }

    return phase;
}

/* 80517AE0-80517CB0 013160 01D0+00 1/1 0/0 0/0 .text            __ct__10e_rd_classFv */
e_rd_class::e_rd_class() {
    // NONMATCHING
}

/* 805180BC-805180C4 01373C 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_805180BC() {
    // NONMATCHING
}

/* 805180C4-805180CC 013744 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_805180C4() {
    // NONMATCHING
}

/* 805180CC-805180D4 01374C 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_805180CC() {
    // NONMATCHING
}

/* 805180D4-805180DC 013754 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_805180D4() {
    // NONMATCHING
}

/* 805180DC-805180E4 01375C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_805180DC() {
    // NONMATCHING
}

/* 805184F8-80518534 013B78 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80518534-80518570 013BB4 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80519424-80519428 0002EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80519424[4];
#pragma pop

/* 80519428-8051942C 0002F0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80519428[4];
#pragma pop

/* 8051942C-80519430 0002F4 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8051942C[4];
#pragma pop

/* 80519430-80519434 0002F8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80519430[4];
#pragma pop

/* 80519434-80519438 0002FC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80519434[4];
#pragma pop

/* 80519438-8051943C 000300 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80519438[4];
#pragma pop

/* 8051943C-80519440 000304 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8051943C[4];
#pragma pop

/* 80519440-80519444 000308 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80519440[4];
#pragma pop

/* 80519444-80519448 00030C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80519444[4];
#pragma pop

/* 80519448-8051944C 000310 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80519448[4];
#pragma pop

/* 8051944C-80519450 000314 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8051944C[4];
#pragma pop

/* 80519450-80519454 000318 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80519450[4];
#pragma pop

/* 80519454-80519458 00031C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80519454[4];
#pragma pop

/* 80519458-8051945C 000320 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80519458[4];
#pragma pop

/* 8051945C-80519460 000324 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8051945C[4];
#pragma pop

/* 80519460-80519464 000328 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80519460[4];
#pragma pop

/* 80519464-80519468 00032C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80519464[4];
#pragma pop

/* 80519468-8051946C 000330 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80519468[4];
#pragma pop

/* 8051946C-80519470 000334 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8051946C[4];
#pragma pop

/* 80519470-80519474 000338 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80519470[4];
#pragma pop

/* 80519474-80519478 00033C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80519474[4];
#pragma pop

/* 80519478-8051947C 000340 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80519478[4];
#pragma pop

/* 8051947C-80519480 000344 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8051947C[4];
#pragma pop

/* 80519480-80519484 000348 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80519480[4];
#pragma pop

/* 80519484-80519488 00034C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80519484[4];
#pragma pop

/* 80518968-80518968 0003E4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

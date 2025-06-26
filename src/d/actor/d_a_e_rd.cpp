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
#include "d/d_msg_object.h"
#include "c/c_damagereaction.h"
#include "d/d_attention.h"
#include "d/actor/d_a_obj_h_saku.h"
#include "f_op/f_op_kankyo_mng.h"
#include "d/actor/d_a_e_rdb.h"
#include "d/actor/d_a_e_dn.h"
#include "d/actor/d_a_e_arrow.h"
#include "d/actor/d_a_npc_tk.h"

enum ACTION {
    /* 0x00 */ ACTION_NORMAL        = 0,
    /* 0x03 */ ACTION_FIGHT_RUN     = 3,
    /* 0x04 */ ACTION_FIGHT         = 4,
    /* 0x05 */ ACTION_BOW_RUN       = 5,
    /* 0x06 */ ACTION_BOW           = 6,
    /* 0x07 */ ACTION_BOW2          = 7,
    /* 0x08 */ ACTION_BOW_IKKI      = 8,
    /* 0x0A */ ACTION_AVOID         = 10,
    /* 0x0B */ ACTION_WB_SEARCH     = 11,
    /* 0x0C */ ACTION_WB_RIDE       = 12,
    /* 0x0D */ ACTION_WB_RUN        = 13,
    /* 0x0E */ ACTION_WB_BJUMP      = 14,
    /* 0x13 */ ACTION_BOMB          = 19,
    /* 0x14 */ ACTION_S_DAMAGE      = 20,
    /* 0x15 */ ACTION_DAMAGE        = 21,
    /* 0x16 */ ACTION_DROP          = 22,
    /* 0x17 */ ACTION_A_DAMAGE      = 23,
    /* 0x18 */ ACTION_STAND         = 24,
    /* 0x19 */ ACTION_COMMANDER     = 25,
    /* 0x1A */ ACTION_BOW3          = 26,
    /* 0x1B */ ACTION_EXCITE        = 27,
    /* 0x1D */ ACTION_WATER         = 29,
    /* 0x28 */ ACTION_KIBA_START    = 40,
    /* 0x29 */ ACTION_KIBA_END      = 41,
    /* 0x2A */ ACTION_IKKI_END      = 42,
    /* 0x2D */ ACTION_IKKI2_START   = 45,
    /* 0x2E */ ACTION_IKKI2_END     = 46,
    /* 0x2F */ ACTION_LV9_END       = 47,
    /* 0x32 */ ACTION_YAGURA        = 50,
    /* 0x33 */ ACTION_JYUNKAI       = 51,
    /* 0x34 */ ACTION_SLEEP         = 52,
    /* 0x35 */ ACTION_TAG           = 53,
    /* 0x3C */ ACTION_REG           = 60,
};

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
// static f32 time_scale[25] = {
//     1.2f, 1.2f, 1.1f, 1.0f,
//     0.8f, 0.6f, 0.4f, 0.2f,
//     0.0f, 0.0f, 0.0f, 0.0f,
//     0.0f, 0.0f, 0.0f, 0.0f,
//     0.0f, 0.0f, 0.2f, 0.5f,
//     0.8f, 1.2f, 1.2f, 1.2f,
//     1.2f,
// };

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
                cMtx_ZrotM(*calc_mtx, i_this->field_0xabc[2] + (i_this->field_0xade - i_this->field_0xa32[2].x));
            } else if (jointNo == 2) {
                cMtx_YrotM(*calc_mtx, i_this->field_0xaca);
            } else if (jointNo == 4) {
                cMtx_ZrotM(*calc_mtx, i_this->field_0xacc[0]);
            } else if (jointNo == 6) {
                cMtx_YrotM(*calc_mtx, i_this->field_0xacc[1]);
            } else if (jointNo == 8) {
                cMtx_ZrotM(*calc_mtx, i_this->field_0xacc[2]);
            } else if (jointNo == 11) {
                cMtx_YrotM(*calc_mtx, i_this->field_0xa32[1].y);
                
                if (i_this->field_0x9c8 == 3) {
                    cMtx_XrotM(*calc_mtx, i_this->field_0x9ca);
                }

                cMtx_ZrotM(*calc_mtx, i_this->field_0xa32[1].x + i_this->field_0xabc[1]);

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
                    cMtx_ZrotM(*calc_mtx, (i_this->field_0xabc[0] + (i_this->field_0xa32[0].x - i_this->field_0x9cc)) / 2);
                }
            } else if (jointNo == 12) {
                cMtx_YrotM(*calc_mtx, i_this->field_0xa32[0].y);

                if (i_this->field_0x9c8 != 3 && i_this->field_0x9c8 != 4) {
                    cMtx_YrotM(*calc_mtx, (i_this->field_0x9ce - i_this->field_0x9ca) / 2);
                    cMtx_ZrotM(*calc_mtx, (i_this->field_0xabc[0] + (i_this->field_0xa32[0].x - i_this->field_0x9cc)) / 2);
                } else {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0xa32[0].x + i_this->field_0xabc[0]);
                }
            } else if (jointNo == 17) {
                cMtx_YrotM(*calc_mtx, i_this->field_0xa32[3].y + i_this->field_0xabc[3]);
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

    if (i_this->mPlayerDistance < param_2) {
        s16 sVar1 = a_this->shape_angle.y - i_this->mPlayerAngleY;
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
        i_this->mPlayerDistance -= fabsf(a_this->current.pos.y - player->current.pos.y) * 0.7f;

        switch (i_this->field_0x5b4) {
            case -20:
                if ((int)i_this->mpModelMorf->getFrame() == 11) {
                    i_this->field_0x5bd = 0;
                }

                if (i_this->mpModelMorf->isStop()) {
                    i_this->field_0x5b4 = 0;
                }
                break;

            case -10:
                anm_init(i_this, 64, 7.0f, 2, 1.0f);
                i_this->field_0x990[1] = cM_rndF(10.0f) + 15.0f;
                i_this->field_0x5b4 = 0xFFF7;
                break;

            case -9:
                if (i_this->field_0x990[1] == 0) {
                    i_this->field_0x5b4 = 0;
                }
                break;

            case 0:
                if (i_this->field_0x5bd != 0) {
                    anm_init(i_this, 4, 2.0f, 0, 1.0f);
                    i_this->field_0x5b4 = 0xFFEC;
                } else if (i_this->field_0x990[1] == 0) {
                    anm_init(i_this, 50, 5.0f, 2, cM_rndFX(0.05f) + 1.0f);
                    i_this->field_0x5b4 = 1;
                }
                break;

            case 1:
                fVar3 = fVar1;
                if (i_this->mPlayerDistance < l_HIO.battle_init_range) {
                    anm_init(i_this, 27, 5.0f, 2, 1.0f);
                    i_this->field_0x5b4 = 2;
                }
                break;

            case 2:
                fVar3 = l_HIO.movement_speed;
                if (i_this->mPlayerDistance > l_HIO.battle_init_range + 50.0f) {
                    i_this->field_0x5b4 = 0;
                } else if (i_this->mPlayerDistance < l_HIO.battle_init_range - 50.0f) {
                    i_this->field_0x5b4 = 3;
                }
                break;

            case 3:
                fVar3 = -l_HIO.movement_speed;
                if (i_this->mPlayerDistance > l_HIO.battle_init_range) {
                    i_this->field_0x5b4 = 2;
                }
                break;

            case 5:
                if (i_this->field_0x990[3] != 0) {
                    i_this->field_0x9c8 = 0xFF;
                }

                a_this->speedF = 0.0f;
                // fVar3 = 0.0f;
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
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlayerAngleY, 4, 0x800);
            s16 sVar1 = a_this->current.angle.y - i_this->mPlayerAngleY;
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
            if (i_this->mPlayerDistance < l_HIO.battle_init_range && (i_this->field_0xa20 & cc_pl_cut_bit_get()) != 0 &&
                i_this->field_0x9f0 < 0.1f) {
                i_this->mAction = 10;
                i_this->field_0x5b4 = 0;
                i_this->field_0x998 = 20;
            } else if (i_this->field_0x5bd == 0 && i_this->mPlayerDistance < l_HIO.attack_init_range && i_this->field_0x990[2] == 0) {
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
                cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlayerAngleY, 4, 0x800);
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
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    f32 fVar1 = 0.0f;
    f32 fVar2;
    if (data_80519200 != 0) {
        fVar2 = 24.0f;
    } else {
        fVar2 = l_HIO.dash_speed;
    }
    s16 playerAngleY = fopAcM_searchPlayerAngleY(a_this);
    s8 bVar1 = 0;

    switch (i_this->field_0x5b4) {
        case -20:
            if ((int)i_this->mpModelMorf->getFrame() == 11) {
                i_this->field_0x5bd = 0;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0x5b4 = 0;
            }
            break;

        case -10:
            anm_init(i_this, 64, 5.0f, 2, 1.0f);
            i_this->field_0x990[0] = cM_rndF(10.0f) + 15.0f;
            i_this->field_0x5b4 = 0xFFF7;
            break;

        case -9:
            i_this->field_0x9c8 = 1;
            if (i_this->field_0x990[0] == 0) {
                i_this->field_0x5b4 = 0;
            }
            break;

        case 0:
            if (i_this->field_0x5bd != 0) {
                anm_init(i_this, 4, 2.0f, 0, 1.0f);
                i_this->field_0x5b4 = 0xFFEC;
            } else {
                anm_init(i_this, 50, 5.0f, 2, 1.0f);
                i_this->field_0x990[0] = cM_rndF(50.0f) + 20.0f;
                if (i_this->mPlayerDistance < l_HIO.attack_range - 100.0f) {
                    i_this->field_0x5b4 = 1;
                } else if (i_this->mPlayerDistance > l_HIO.attack_range + 100.0f) {
                    i_this->field_0x5b4 = 2;
                } else {
                    bVar1 = 1;
                }
            }
            break;

        case 1:
            fVar1 = fVar2;
            playerAngleY += 0x8000;
            if (i_this->mPlayerDistance > l_HIO.attack_range || i_this->field_0x990[0] == 0 || i_this->mObjAcch.ChkWallHit() || move_gake_check(i_this, 100.0f)) {
                bVar1 = 1;
            }

            i_this->field_0x990[2] = 20;
            break;

        case 2:
            fVar1 = fVar2;
            if (i_this->mPlayerDistance < l_HIO.attack_range) {
                bVar1 = 1;
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 5.0f);
    if (i_this->field_0x5b4 >= 0) {
        cLib_addCalcAngleS2(&a_this->current.angle.y, playerAngleY, 4, 0x1000);
    }

    if (i_this->field_0x5bd == 0 && bVar1) {
        if (i_this->field_0x5b8 == 3) {
            i_this->mAction = 7;
        } else {
            i_this->mAction = 6;
        }

        i_this->field_0x5b4 = 0;
        i_this->field_0x990[1] = cM_rndF(150.0f);
    } else if (i_this->field_0x990[2] == 0 && !pl_check(i_this, i_this->field_0x980 + 50.0f, 0x7FFF)) {
        i_this->mAction = 0;
        i_this->field_0x5b4 = 0;
        i_this->field_0x990[0] = cM_rndF(50.0f) + 50.0f;
        anm_init(i_this, 29, 10.0f, 2, 1.0f);
    } else if ((i_this->field_0x970 & 15) == 0) {
        wb_check(i_this, 0x3000);
        if (bomb_view_check(i_this) != NULL) {
            i_this->mAction = 19;
            i_this->field_0x5b4 = 0;
        }
    }

    if (i_this->mAction != 5) {
        i_this->field_0x9c8 = 0;
    }
}

/* 80507F98-805082C8 003618 0330+00 1/1 0/0 0/0 .text            e_rd_bow__FP10e_rd_class */
static void e_rd_bow(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    int frame = i_this->mpModelMorf->getFrame();

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 57, 5.0f, 0, 1.0f);
            i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 7), 0, 5.0f, 0.9f, 0.0f, -1.0f);
            i_this->field_0x5b4 = 1;
            a_this->speedF = 0.0f;
            break;

        case 1:
            i_this->field_0x9c8 = 4;
            if (frame >= 10) {
                i_this->field_0x9a2 = 1;
            }

            if (frame == 20) {
                i_this->mSound.startCreatureSound(Z2SE_OBJ_ARROW_DRAW_NORMAL, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 58, 4.0f, 2, 1.0f);
                i_this->field_0x990[0] = cM_rndF(10.0f) + 10.0f;
                i_this->field_0x5b4 = 2;
            }
            break;

        case 2:
            i_this->field_0x9c8 = 4;
            if (i_this->field_0x990[0] == 0) {
                if (i_this->field_0x9a4 == 0 && !dMsgObject_isTalkNowCheck()) {
                    anm_init(i_this, 56, 1.0f, 0, 1.0f);
                    i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 10), 0, 1.0f, 1.0f, 0.0f, -1.0f);
                    i_this->field_0x5b4 = 3;
                } else {
                    i_this->mAction = 5;
                    i_this->field_0x5b4 = 0;
                }
            }

            i_this->field_0x9a2 = 1;
            break;

        case 3:
            if (frame <= 3) {
                i_this->field_0x9a2 = 1;
                i_this->field_0x9c8 = 4;
            }

            if (frame == 2) {
                i_this->field_0x9a3 = 1;
            }

            if (i_this->mpModelMorf->isStop()) {
                if (i_this->field_0x990[1] == 0 && (i_this->mPlayerDistance < l_HIO.attack_range - 200.0f || i_this->mPlayerDistance > l_HIO.attack_range)) {
                    if (!(i_this->mPlayerDistance < l_HIO.attack_range - 200.0f) || !way_bg_check(i_this, -100.0f)) {
                        i_this->mAction = 5;
                    }

                    i_this->field_0x5b4 = 0;
                } else {
                    i_this->field_0x5b4 = 0;
                }
            }
            break;
    }

    cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlayerAngleY, 4, 0x1000);
}

/* 805082C8-80508334 003948 006C+00 1/1 0/0 0/0 .text            s_command3_sub__FPvPv */
static void* s_command3_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD && i_actor != i_data && ((e_rd_class*)i_actor)->mAction == 25) {
        return i_actor;
    }

    return NULL;
}

/* 80508334-80508790 0039B4 045C+00 1/1 0/0 0/0 .text            e_rd_bow2__FP10e_rd_class */
static s8 e_rd_bow2(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* actor = get_pla(a_this);
    int frame = i_this->mpModelMorf->getFrame();
    int rv = 0;

    if (i_this->field_0x5b4 <= 1) {
        if (i_this->mPlayerDistance < i_this->field_0x980 && !other_bg_check(i_this, actor)) {
            i_this->field_0x5b4 = 2;
        }

        rv = 1;
    }

    switch (i_this->field_0x5b4) {
        case 0:
            if (i_this->field_0x990[0] == 0) {
                anm_init(i_this, 29, 10.0f, 2, 1.0f);
                i_this->field_0x5b4 = 1;
                i_this->field_0x990[0] = cM_rndF(40.0f) + 60.0f;
            }
            break;

        case 1:
            if (i_this->field_0x990[0] == 0) {
                anm_init(i_this, 64, 10.0f, 2, 1.0f);
                i_this->field_0x990[0] = cM_rndF(100.0f) + 100.0f;
                i_this->field_0x5b4 = 0;
            }
            break;

        case 2:
            anm_init(i_this, 57, 5.0f, 0, 1.0f);
            i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 7), 0, 5.0f, 0.9f, 0.0f, -1.0f);
            i_this->field_0x5b4 = 3;
            a_this->speedF = 0.0f;
            break;

        case 3:
            i_this->field_0x9c8 = 4;
            if (frame >= 10) {
                i_this->field_0x9a2 = 1;
            }

            if (frame == 20) {
                i_this->mSound.startCreatureSound(Z2SE_OBJ_ARROW_DRAW_NORMAL, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 58, 4.0f, 2, 1.0f);
                i_this->field_0x990[0] = cM_rndF(10.0f);
                i_this->field_0x5b4 = 4;
            }
            break;

        case 4:
            i_this->field_0x9c8 = 4;
            if (i_this->field_0x990[0] == 0) {
                if (i_this->mPlayerDistance > i_this->field_0x980 || other_bg_check(i_this, actor)) {
                    i_this->field_0x5b4 = 0;
                    return rv;
                }

                if (!dMsgObject_isTalkNowCheck() && i_this->field_0x9a4 == 0) {
                    anm_init(i_this, 56, 1.0f, 0, 1.0f);
                    i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 10), 0, 1.0f, 1.0f, 0.0f, -1.0f);
                    i_this->field_0x5b4 = 5;
                }
            }

            i_this->field_0x9a2 = 1;
            break;

        case 5:
            if (frame <= 3) {
                i_this->field_0x9a2 = 1;
                i_this->field_0x9c8 = 4;
            }

            if (frame == 2) {
                i_this->field_0x9a3 = 1;
            }

            if (i_this->mpModelMorf->isStop()) {
                if (i_this->field_0x990[1] == 0 && fabsf(a_this->current.pos.y - actor->current.pos.y) < 300.0f && i_this->mPlayerDistance < l_HIO.attack_range - 200.0f) {
                    if (!way_bg_check(i_this, -100.0f)) {
                        i_this->mAction = 5;
                        i_this->field_0x1295 = 0;
                    }

                    i_this->field_0x5b4 = 0;
                } else {
                    i_this->field_0x5b4 = 0;
                }
            }
            break;
    }

    cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlayerAngleY, 4, 0x1000);
    return rv;
}

/* 80508790-80508A34 003E10 02A4+00 1/1 0/0 0/0 .text            e_rd_bow_ikki__FP10e_rd_class */
static void e_rd_bow_ikki(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp2c;
    int frame = i_this->mpModelMorf->getFrame();

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 57, 5.0f, 0, 1.0f);
            i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 7), 0, 5.0f, 0.9f, 0.0f, -1.0f);
            i_this->field_0x5b4 = 1;
            a_this->speedF = 0.0f;
            break;

        case 1:
            if (frame >= 10) {
                i_this->field_0x9a2 = 1;
            }

            if (frame == 20) {
                i_this->mSound.startCreatureSound(Z2SE_OBJ_ARROW_DRAW_NORMAL, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 58, 4.0f, 2, 1.0f);
                i_this->field_0x5b4 = 2;
            }
            break;

        case 2:
            if (i_this->field_0x990[0] == 0 && i_this->field_0x9a4 == 0) {
                anm_init(i_this, 56, 1.0f, 0, 1.0f);
                i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 10), 0, 1.0f, 1.0f, 0.0f, -1.0f);
                i_this->field_0x5b4 = 3;
            }

            i_this->field_0x9a2 = 1;
            break;

        case 3:
            if (frame <= 3) {
                i_this->field_0x9a2 = 1;
            }

            if (frame == 2) {
                i_this->field_0x9a3 = 1;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0x5b4 = 0;
                i_this->field_0x990[0] = 10000;
            }
            break;
    }

    i_this->field_0x9c8 = 14;
    i_this->field_0x9d4.set(34800.0f, 100.0f, -14900.0f);
    sp2c = i_this->field_0x9d4 - a_this->current.pos;
    a_this->current.angle.y = cM_atan2s(sp2c.x, sp2c.z);
}

/* 80508A34-80508B98 0040B4 0164+00 1/1 0/0 0/0 .text            e_rd_avoid__FP10e_rd_class */
static void e_rd_avoid(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    int frame = i_this->mpModelMorf->getFrame();

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 6, 1.0f, 0, 1.0f);
            i_this->field_0x5b4 = 1;
            a_this->speedF = -30.0f;
            a_this->speed.y = 20.0f;
            i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_DODGE, -1);
            break;

        case 1:
            if (frame == 6) {
                i_this->mpModelMorf->setPlaySpeed(0.0f);
                i_this->field_0x5b4 = 2;
            }
            break;

        case 2:
            if (i_this->mObjAcch.ChkGroundHit()) {
                i_this->mpModelMorf->setPlaySpeed(1.0f);
                i_this->field_0x5b4 = 3;
            }
            break;

        case 3:
            cLib_addCalc0(&a_this->speedF, 1.0f, 10.0f);
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 3;
                i_this->field_0x5b4 = 0;
                i_this->field_0x990[0] = 30;
            }
    }
}

/* 80508B98-805096A0 004218 0B08+00 2/1 0/0 0/0 .text            e_rd_wb_search__FP10e_rd_class */
static void e_rd_wb_search(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp54, sp60;
    f32 fVar1 = 0.0f;
    s8 bVar1 = 0;
    e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);
    if (bullbo == NULL) {
        bVar1 = 1;
    } else {
        if (bullbo->mActionID == 22 || bullbo->mActionID == 21 || bullbo->mActionID == 23 || bullbo->mActionID == 24) {
            bVar1 = 1;
        } else if (i_this->field_0x5b4 <= 3) {
            for (int i = 0; i <= 2; i++) {
                if (i_this->field_0xd58[i].ChkCoHit()) {
                    e_wb_class* actor_p = (e_wb_class*)dCc_GetAc(i_this->field_0xd58[i].GetCoHitObj()->GetAc());
                    if (actor_p != NULL && actor_p != bullbo && fopAcM_GetName(actor_p) == PROC_E_WB) {
                        bVar1 = 1;
                    }
                }
            }

            if (i_this->mObjAcch.ChkWallHit()) {
                bVar1 = 1;
            }
        }
    }

    if (bVar1) {
        i_this->mAction = 0;
        i_this->field_0x5b4 = 0;
        ride_off(i_this);
    } else {
        if (i_this->field_0x5b4 >= 2 && bullbo->mActionID != 1) {
            bullbo->mActionID = 1;
            bullbo->field_0x5b4 = 0;
        }

        switch (i_this->field_0x5b4) {
            case 0:
                anm_init(i_this, 64, 10.0f, 2, 1.0f);
                i_this->field_0x5b4 = 1;
                i_this->field_0x990[0] = cM_rndF(15.0f) + 15.0f;
                // fallthrough
            case 1:
                i_this->field_0x9c8 = 11;
                if (i_this->field_0x990[0] == 0) {
                    i_this->field_0x5b4 = 2;
                    if (bullbo->speedF > 5.0f) {
                        anm_init(i_this, 60, 3.0f, 2, 1.0f);
                        i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_CALLING, -1);
                        i_this->field_0x990[0] = cM_rndF(20.0f) + 30.0f;
                    } else {
                        i_this->field_0x990[0] = 10;
                    }
                }
                break;

            case 2:
                sp54 = bullbo->current.pos - a_this->current.pos;
                cLib_addCalcAngleS2(&a_this->current.angle.y, cM_atan2s(sp54.x, sp54.z), 4, 0x800);
                i_this->field_0x9c8 = 11;

                if (i_this->field_0x990[0] == 0 && bullbo->speedF < 1.0f) {
                    cXyz sp6c, sp78;
                    cMtx_YrotS(*calc_mtx, bullbo->shape_angle.y);
                    sp54.x = 100.0f;
                    sp54.y = 0.0f;
                    if (i_this->field_0x9be == 1) {
                        sp54.z = TREG_F(0) + 20.0f;
                    } else {
                        sp54.z = TREG_F(10) + -120.0f;
                    }
                    MtxPosition(&sp54, &sp60);

                    sp6c = (bullbo->current.pos + sp60) - a_this->current.pos;
                    sp54.x = -100.0f;
                    MtxPosition(&sp54, &sp60);

                    sp78 = (bullbo->current.pos + sp60) - a_this->current.pos;
                    if (sp6c.abs() < sp78.abs()) {
                        i_this->field_0x9bd = 0;
                        sp60 = sp6c + a_this->current.pos;
                    } else {
                        i_this->field_0x9bd = 1;
                        sp60 = sp78 + a_this->current.pos;
                    }

                    sp54 = sp60 - a_this->current.pos;
                    i_this->field_0x5cc = cM_atan2s(sp54.x, sp54.z);
                    i_this->field_0x5b4 = 3;
                    anm_init(i_this, 50, 5.0f, 2, 1.5f);
                }
                break;

            case 3:
                fVar1 = l_HIO.dash_speed * 1.5f;
                cMtx_YrotS(*calc_mtx, bullbo->shape_angle.y);

                if (i_this->field_0x9bd == 0) {
                    sp54.x = 100.0f;
                } else {
                    sp54.x = -100.0f;
                }
                sp54.y = 0.0f;
                if (i_this->field_0x9be == 1) {
                    sp54.z = TREG_F(0) + 20.0f;
                } else {
                    sp54.z = TREG_F(10) + -120.0f;
                }
                MtxPosition(&sp54, &sp60);

                sp60 += bullbo->current.pos;
                sp54 = sp60 - a_this->current.pos;
                i_this->field_0x5cc = cM_atan2s(sp54.x, sp54.z);
                cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x5cc, 2, 0x400);
                sp54 = sp60 - a_this->current.pos;
                sp54.y = 0.0f;

                if (sp54.abs() < TREG_F(19) + 230.0f) {
                    i_this->field_0x5b4 = 4;
                    if (i_this->field_0x9be == 1) {
                        anm_init(i_this, 4, 2.0f, 0, 1.0f);
                    } else {
                        anm_init(i_this, 64, 5.0f, 2, 1.0f);
                        i_this->field_0x990[0] = 10;
                    }
                }
                break;

            case 4:
                cMtx_YrotS(*calc_mtx, bullbo->shape_angle.y);
                sp54.x = 0.0f;
                sp54.y = 0.0f;
                if (i_this->field_0x9be == 1) {
                    sp54.z = 20.0f;
                } else {
                    sp54.z = -20.0f;
                }
                MtxPosition(&sp54, &i_this->field_0x5c0);

                i_this->field_0x5c0 += bullbo->current.pos;
                sp54 = i_this->field_0x5c0 - a_this->current.pos;
                cLib_addCalcAngleS2(&a_this->current.angle.y, (s16)cM_atan2s(sp54.x, sp54.z), 2, 0x1000);

                if (i_this->field_0x5bc != 0 && i_this->field_0x9be == 1) {
                    if ((int)i_this->mpModelMorf->getFrame() == 11) {
                        i_this->field_0x5bd = 1;
                    }

                    if (i_this->mpModelMorf->isStop()) {
                        i_this->field_0x5b4 = 5;
                        anm_init(i_this, 24, 2.0f, 0, 1.0f);
                        i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_JUMP_RIDING, -1);
                    }
                } else if (i_this->field_0x990[0] == 0) {
                    i_this->field_0x5b4 = 5;
                    anm_init(i_this, 24, 2.0f, 0, 1.0f);
                    i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_JUMP_RIDING, -1);
                }
                break;

            case 5:
                if (i_this->mpModelMorf->isStop()) {
                    i_this->field_0x5b4 = 6;
                    anm_init(i_this, 25, 10.0f, 0, 1.0f);
                    i_this->field_0x9bc = 1;
                    i_this->field_0x9c4 = 30.0f;
                    i_this->field_0x990[3] = 20;
                }
                break;

            case 6:
                if (i_this->field_0x9c0 <= 0.0f) {
                    i_this->mAction = 12;
                    i_this->field_0x5b4 = 0;
                    bullbo->mActionID = 4;
                    bullbo->field_0x5b4 = 0;
                }
        }

        cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 3.0f);
        i_this->field_0x9d4 = bullbo->eyePos;
    }
}

/* 805096A0-805098E4 004D20 0244+00 1/1 0/0 0/0 .text            e_rd_wb_ride__FP10e_rd_class */
static void e_rd_wb_ride(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp1c, sp28;
    e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);

    if (bullbo == NULL) {
        i_this->mAction = 0;
        i_this->field_0x5b4 = 0;
        ride_off(i_this);
    } else if ((bullbo->field_0x6be & 3) == 0) {
        OS_REPORT("......BOSS DL !!!!\n");
        if (bullbo->mActionID == 1) {
            bullbo->mActionID = 0;
        }
        fopAcM_delete(a_this);
    } else {
        switch (i_this->field_0x5b4) {
            case 0:
                i_this->field_0x5b4 = 1;
                if (i_this->field_0x129a == 0) {
                    anm_init(i_this, 26, 1.0f, 0, 1.0f);
                }
                // fallthrough
            case 1:
                if (i_this->mpModelMorf->isStop() || i_this->field_0x129a != 0) {
                    if (i_this->field_0x129a != 0) {
                        bullbo->field_0x5b4 = 0;
                        i_this->field_0x5b4 = 0;
                        
                        if (i_this->field_0x129a == 3) {
                            bullbo->mActionID = 17;
                            if (strcmp(dComIfGp_getStartStageName(), "F_SP121") == 0) {
                                bullbo->field_0x5b4 = -100;
                                i_this->mAction = 45;
                            } else {
                                i_this->mAction = 13;
                            }
                        } else if (i_this->field_0x129a == 2) {
                            bullbo->mActionID = 15;
                            i_this->mAction = 13;
                        } else if (i_this->field_0x129a == 4) {
                            bullbo->mActionID = 19;
                            i_this->mAction = 47;
                        } else if (cDmr_SkipInfo == 0) {
                            i_this->mAction = 40;
                            bullbo->mActionID = 30;
                        } else {
                            bullbo->mActionID = 8;
                            i_this->mAction = 13;
                            bullbo->field_0x79c = 10;
                            Z2GetAudioMgr()->subBgmStart(Z2BGM_HORSE_BATTLE);
                        }
                    } else {
                        bullbo->mActionID = 6;
                        bullbo->field_0x5b4 = 0;
                        i_this->mAction = 13;
                        i_this->field_0x5b4 = 0;
                    }
                }
            }
    }
}

/* 805098E4-8050A3EC 004F64 0B08+00 2/1 0/0 0/0 .text            e_rd_wb_run__FP10e_rd_class */
static void e_rd_wb_run(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dAttention_c* attention;
    cXyz sp3c, sp48;
    e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);
    s16 sVar1;

    if (bullbo == NULL) {
        fopAcM_delete(a_this);
    } else {
        if (bullbo->field_0x17e1 != 0) {
            fopAcM_setStageLayer(a_this);
        }

        if ((bullbo->field_0x6be & 3) == 0) {
            fopAcM_delete(a_this);
        } else {
            if (daPy_getPlayerActorClass()->checkHorseRide()) {
                attention = dComIfGp_getAttention();
                if (attention->Lockon() && i_this == (e_rd_class*)attention->LockonTarget(0)) {
                    bullbo->field_0x6c0 = 1;
                }
            }

            if ((bullbo->field_0x6be & 1) == 0 && bullbo->mActionID == 7 && i_this->field_0x5b4 != 40) {
                anm_init(i_this, 39, 5.0f, 2, 1.0f);
                i_this->field_0x5b4 = 40;
                
                if (i_this->field_0x698 != NULL) {
                    i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 10), 0, 1.0f, 1.0f, 0.0f, -1.0f);
                }
            }

            f32 playerDistance = fopAcM_searchPlayerDistanceXZ(a_this);
            int frame = i_this->mpModelMorf->getFrame();


            switch (i_this->field_0x5b4) {
                case 0:
                    if ((bullbo->field_0x6be & 4) != 0) {
                        if (i_this->field_0x9be == 1) {
                            if (bullbo->field_0x6d0 < 0) {
                                anm_init(i_this, 46, 10.0f, 2, 1.0f);
                            } else {
                                anm_init(i_this, 48, 10.0f, 2, 1.0f);
                            }
                        } else {
                            anm_init(i_this, 45, 10.0f, 2, 1.0f);
                        }
                    } else {
                        if ((bullbo->field_0x6be & 8) != 0) {
                            if (i_this->field_0x9be == 1) {
                                anm_init(i_this, 36, 3.0f, 0, 1.0f);
                            } else {
                                anm_init(i_this, 37, 3.0f, 0, 1.0f);
                            }

                            i_this->field_0x990[1] = cM_rndF(50.0f) + 50.0f;
                        } else {
                            if ((bullbo->field_0x6be & 16) != 0) {
                                if (i_this->field_0x9be == 1) {
                                    anm_init(i_this, 38, 5.0f, 2, 1.0f);
                                } else {
                                    anm_init(i_this, 40, 5.0f, 2, 1.0f);
                                }
                            } else {
                                if ((bullbo->field_0x6be & 32) != 0) {
                                    if (i_this->field_0x9be == 1) {
                                        anm_init(i_this, 52, 5.0f, 2, 1.0f);
                                    } else {
                                        anm_init(i_this, 53, 5.0f, 2, 1.0f);
                                    }
                                }
                            }
                        }
                    }

                    i_this->mpModelMorf->setPlaySpeed(bullbo->mpModelMorf->getPlaySpeed());

                    if (i_this->field_0x9be == 1) {
                        i_this->field_0x9c8 = 2;
                    } else {
                        i_this->field_0x9c8 = 1;
                        if (i_this->field_0x5bc == 1 && bullbo->speedF > 10.0f) {
                            if (playerDistance < TREG_F(11) + 850.0f && playerDistance < TREG_F(11) + 750.0f && i_this->field_0x990[2] == 0) {
                                sVar1 = a_this->shape_angle.y - i_this->mPlayerAngleY;
                                if (sVar1 > 0x1000 && sVar1 < 0x4000) {
                                    i_this->field_0x5b4 = 10;
                                } else if (sVar1 < -0x1000 && sVar1 > -0x4000) {
                                    i_this->field_0x5b4 = 20;
                                }

                                if (daPy_getPlayerActorClass()->checkHorseRide() && dComIfGp_getHorseActor()->speedF >= 20.0f) {
                                    i_this->field_0x990[2] = cM_rndF(20.0f) + 20.0f;
                                }
                            }
                        } else {
                            if (i_this->field_0x990[1] == 0 && i_this->field_0x5bc >= 2) {
                                anm_init(i_this, 42, 5.0f, 0, 1.0f);
                                i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 8), 0, 5.0f, 1.0f, 0.0f, -1.0f);
                                i_this->field_0x5b4 = 30;
                            }
                        }
                    }
                    break;

                case 10:
                    anm_init(i_this, 31, 10.0f, 2, 1.0f);
                    i_this->field_0x5b4 = 11;
                    // fallthrough
                case 11:
                    if (playerDistance > 800.0f) {
                        i_this->field_0x5b4 = 0;
                        if (i_this->field_0x9be == 1) {
                            anm_init(i_this, 38, 10.0f, 2, 1.0f);
                        } else {
                            anm_init(i_this, 40, 10.0f, 2, 1.0f);
                        }
                    } else if (playerDistance < 550.0f && i_this->field_0x990[2] == 0) {
                        i_this->field_0x5b4 = 25;
                        if (daPy_getPlayerActorClass()->checkHorseRide()) {
                            anm_init(i_this, 34, 5.0f, 0, 1.0f);
                        } else {
                            anm_init(i_this, 30, 5.0f, 0, 1.0f);
                        }
                    }
                    break;

                case 20:
                    anm_init(i_this, 33, 10.0f, 2, 1.0f);
                    i_this->field_0x5b4 = 21;
                    // fallthrough
                case 21:
                    i_this->field_0x9ab = 1;
                    if (playerDistance > 800.0f) {
                        i_this->field_0x5b4 = 0;
                        if (i_this->field_0x9be == 1) {
                            anm_init(i_this, 38, 10.0f, 2, 1.0f);
                        } else {
                            anm_init(i_this, 40, 10.0f, 2, 1.0f);
                        }
                    } else if (playerDistance < 550.0f && i_this->field_0x990[2] == 0) {
                        i_this->field_0x5b4 = 25;
                        if (daPy_getPlayerActorClass()->checkHorseRide()) {
                            anm_init(i_this, 35, 5.0f, 0, 1.0f);
                        } else {
                            anm_init(i_this, 32, 5.0f, 0, 1.0f);
                        }
                    }
                    break;

                case 25:
                    if (frame <= 23) {
                        i_this->field_0x9ab = 1;
                    }

                    if (i_this->mpModelMorf->checkFrame(15.0f)) {
                        i_this->mSound.startCreatureSound(Z2SE_EN_RD_SWING_CLUB, 0, -1);
                    }

                    if (i_this->mpModelMorf->isStop()) {
                        if (i_this->field_0x9be == 1) {
                            anm_init(i_this, 38, 10.0f, 2, 1.0f);
                        } else {
                            anm_init(i_this, 40, 10.0f, 2, 1.0f);
                            i_this->field_0x990[2] = cM_rndF(20.0f) + 20.0f;
                        }

                        i_this->field_0x5b4 = 0;
                    }
                    break;

                case 30:
                    i_this->field_0x9c8 = 3;
                    if (frame == 14) {
                        i_this->mSound.startCreatureSound(Z2SE_OBJ_ARROW_DRAW_NORMAL, 0, -1);
                    }

                    if (i_this->mpModelMorf->isStop()) {
                        i_this->field_0x5b4 = 31;
                        anm_init(i_this, 43, 4.0f, 2, 1.0f);
                    }

                    i_this->field_0x9a2 = 1;
                    break;

                case 31:
                    i_this->field_0x9c8 = 3;
                    if (i_this->field_0x990[1] == 0 && i_this->mPlayerDistance < l_HIO.mounted_launch_distance && i_this->field_0x9a4 == 0 && !dComIfGp_event_runCheck()) {
                        anm_init(i_this, 41, 1.0f, 0, 1.0f);
                        i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 10), 0, 1.0f, 1.0f, 0.0f, -1.0f);
                        i_this->field_0x5b4 = 32;
                    }

                    i_this->field_0x9a2 = 1;
                    break;

                case 32:
                    if (frame <= 3) {
                        i_this->field_0x9a2 = 1;
                    }

                    if (frame == 2) {
                        i_this->field_0x9a3 = 1;
                    }

                    i_this->field_0x9c8 = 3;

                    if (i_this->mpModelMorf->isStop()) {
                        anm_init(i_this, 42, 5.0f, 0, 1.0f);
                        i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 8), 0, 5.0f, 1.0f, 0.0f, -1.0f);
                        i_this->field_0x5b4 = 30;

                        if (i_this->field_0x9bc == 2 && i_this->field_0x5bb != 0) {
                            i_this->field_0x990[1] = cM_rndF(30.0f) + 20.0f;
                        } else {
                            i_this->field_0x990[1] = cM_rndF(50.0f) + 30.0f;
                        }
                    }
                    break;

                case 40:
                    if (bullbo->mActionID != 7) {
                        i_this->field_0x5b4 = 0;
                        anm_init(i_this, 53, 5.0f, 2, 1.0f);
                    }
                    break;

                case 50:
                    if (i_this->field_0x990[3] == 0) {
                        i_this->field_0x5b4 = 0;
                        if (i_this->field_0x9be == 1) {
                            anm_init(i_this, 38, 10.0f, 2, 1.0f);
                        } else {
                            anm_init(i_this, 40, 10.0f, 2, 1.0f);
                            i_this->field_0x990[2] = cM_rndF(50.0f) + 50.0f;
                        }
                    }
            }

            if (i_this->field_0x9be == 2 && i_this->mAnmID == 40) {
                i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_RIDING_YELL, -1);
            }
        }
    }
}

/* 8050A3EC-8050A578 005A6C 018C+00 1/1 0/0 0/0 .text            s_wbrun_sub__FPvPv */
static void* s_wbrun_sub(void* i_actor, void* i_data) {
    e_wb_class* bullbo = (e_wb_class*)i_actor;
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_WB && bullbo->field_0x79d == 0) {
        cXyz sp24(bullbo->current.pos - ((fopAc_ac_c*)i_data)->current.pos);
        if (sp24.abs() > KREG_F(11) + 7000.0f) {
            return i_actor;
        }
    }

    return NULL;
}

/* 8050A578-8050A908 005BF8 0390+00 1/1 0/0 0/0 .text            e_rd_wb_run_B__FP10e_rd_class */
static void e_rd_wb_run_B(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);
    dAttention_c* attention;

    if (bullbo != NULL) {
        if (i_this->field_0x129a == 2 || i_this->field_0x129a == 3) {
            fopAcM_OffStatus(a_this, 0);
            a_this->attention_info.flags = 0;
        }

        if (daPy_getPlayerActorClass()->checkHorseRide()) {
            attention = dComIfGp_getAttention();
            if (attention->Lockon() && a_this == attention->LockonTarget(0)) {
                bullbo->field_0x6c0 = 1;
            }
        }

        if (i_this->field_0x5b4 != 0) {
            if ((bullbo->field_0x6be & 0x400) != 0) {
                anm_init(i_this, 62, 10.0f, 2, 1.0f);
            } else if ((bullbo->field_0x6be & 0x800) != 0) {
                anm_init(i_this, 61, 10.0f, 2, 1.0f);
            }

            i_this->mpModelMorf->setPlaySpeed(bullbo->mpModelMorf->getPlaySpeed());
        }

        if (i_this->mAnmID == 46 || i_this->mAnmID == 36 || i_this->mAnmID == 47 || i_this->mAnmID == 48) {
            i_this->field_0x9c8 = 0;

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 59, 5.0f, 2, 1.0f);
            }
        } else if (i_this->mAnmID == 56 || i_this->mAnmID == 55 || i_this->mAnmID == 57) {
            if ((int)i_this->mpModelMorf->getFrame() == 21) {
                i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_HORN, -1);
            }
        } else if (i_this->mAnmID == 59) {
            if (i_this->field_0x990[1] == 0) {
                i_this->field_0x990[1] = cM_rndF(100.0f) + 70.0f;
                i_this->field_0x990[2] = cM_rndF(30.0f) + 30.0f;
            }

            if (i_this->field_0x990[2] != 0) {
                i_this->field_0x9c8 = 1;
            }

            if (a_this->speedF < 5.0f) {
                anm_init(i_this, 65, 5.0f, 2, 1.0f);
            }
        } else {
            i_this->field_0x9c8 = 1;
            if (i_this->field_0x990[3] < 200) {
                i_this->field_0x990[3] = cM_rndF(100.0f) + 200.0f;
            }

            if (a_this->speedF > 10.0f) {
                anm_init(i_this, 59, 5.0f, 2, 1.0f);
            }
        }

        if (fpcM_Search(s_wbrun_sub, i_this) != NULL && i_this->field_0x990[3] == 0) {
            i_this->field_0x6c2 = 1;
            i_this->field_0x990[3] = cM_rndF(100.0f) + 200.0f;
        }

        if ((bullbo->field_0x6be & 0x100) != 0) {
            i_this->mAction = 14;
            i_this->field_0x5b4 = 0;
        }
    }
}

/* 8050A908-8050AB1C 005F88 0214+00 1/1 0/0 0/0 .text            e_rd_wb_bjump__FP10e_rd_class */
static void e_rd_wb_bjump(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);
    dAttention_c* attention;

    if (bullbo != NULL) {
        if (daPy_getPlayerActorClass()->checkHorseRide()) {
            attention = dComIfGp_getAttention();
            if (attention->Lockon() && i_this == (e_rd_class*)attention->LockonTarget(0)) {
                bullbo->field_0x6c0 = 1;
            }
        }

        switch (i_this->field_0x5b4) {
            case 0:
                i_this->field_0x680 = 0;
                anm_init(i_this, 49, 3.0f, 0, 1.0f);
                i_this->field_0x5b4 = 1;
                i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_HOICK, -1);
                break;

            case 1:
                if (i_this->mpModelMorf->isStop()) {
                    i_this->field_0x5b4 = 2;
                    anm_init(i_this, 50, 2.0f, 0, 1.0f);
                }
                break;

            case 2:
                if ((bullbo->field_0x6be & 0x200) != 0) {
                    anm_init(i_this, 51, 2.0f, 0, 1.0f);
                    i_this->field_0x5b4 = 3;
                }
                break;

            case 3:
                if (i_this->mpModelMorf->isStop()) {
                    i_this->mAction = 13;
                    i_this->field_0x5b4 = 0;
                }
        }
    }
}

/* 8050AB1C-8050AF78 00619C 045C+00 2/1 0/0 0/0 .text            e_rd_bomb_action__FP10e_rd_class */
static void e_rd_bomb_action(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp48, sp54;
    dBomb_c* bomb = bomb_check(i_this);
    if (bomb == NULL) {
        i_this->mAction = 3;
        i_this->field_0x5b4 = 0;
        return;
    }

    sp48.x = bomb->current.pos.x - a_this->current.pos.x;
    sp48.z = bomb->current.pos.z - a_this->current.pos.z;
    s16 sVar1 = cM_atan2s(sp48.x, sp48.z);
    f32 fVar1 = 0.0f;
    s16 sVar2;

    switch (i_this->field_0x5b4) {
        case 0:
            i_this->field_0x5b4 = 1;
            anm_init(i_this, 64, 5.0f, 2, 1.0f);
            i_this->field_0x990[1] = cM_rndF(10.0f) + 10.0f;
            // fallthrough
        case 1:
            if (i_this->field_0x990[1] == 0 && bomb->speedF < 0.1f) {
                i_this->field_0x5b4 = 2;
                anm_init(i_this, 50, 5.0f, 2, cM_rndFX(0.05f) + 1.0f);
            }
            break;

        case 2:
            if (bomb->speedF < 0.1f && !bomb->checkStateCarry()) {
                if (JMAFastSqrt(sp48.x * sp48.x + sp48.z * sp48.z) < 250.0f) {
                    sVar2 = i_this->mPlayerAngleY - a_this->shape_angle.y;
                    if (sVar2 < 0x4000 && sVar2 > -0x4000) {
                        i_this->field_0x5b4 = 5;
                        break;
                    }
                }
            }

            sVar1 += 0x8000;
            fVar1 = l_HIO.dash_speed;
            if (JMAFastSqrt(sp48.x * sp48.x + sp48.z * sp48.z) > 600.0f) {
                i_this->field_0x5b4 = 3;
                anm_init(i_this, 64, 5.0f, 2, 1.0f);
            }
            break;

        case 3:
            sVar1 = i_this->mPlayerAngleY;
            if (JMAFastSqrt(sp48.x * sp48.x + sp48.z * sp48.z) < 500.0f) {
                i_this->field_0x5b4 = 0;
            }
            break;

        case 5:
            fVar1 = l_HIO.dash_speed;
            i_this->field_0x9ad = 0;
            if (bomb->speedF > 0.1f) {
                i_this->field_0x5b4 = 0;
            } else if (JMAFastSqrt(sp48.x * sp48.x + sp48.z * sp48.z) < 100.0f) {
                i_this->field_0x990[0] = 20;
                i_this->field_0x5b4 = 6;
                anm_init(i_this, 28, 3.0f, 0, 1.0f);
            }
            break;

        case 6:
            i_this->field_0x9ad = 0;
            sVar1 = i_this->mPlayerAngleY;
            if ((int)i_this->mpModelMorf->getFrame() <= 10) {
                cMtx_YrotS(*calc_mtx, sVar1);
                sp48.x = TREG_F(15) + -30.0f;
                sp48.y = 0.0f;
                sp48.z = TREG_F(16) + 60.0f;
                MtxPosition(&sp48, &sp54);
                sp54 += a_this->current.pos;
                cLib_addCalc2(&bomb->current.pos.x, sp54.x, 1.0f, 15.0f);
                cLib_addCalc2(&bomb->current.pos.z, sp54.z, 1.0f, 15.0f);
                if ((int)i_this->mpModelMorf->getFrame() == 10) {
                    bomb->speedF = 30.0f;
                    bomb->speed.y = 30.0f;
                    bomb->current.angle.y = a_this->shape_angle.y;
                }
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 64, 5.0f, 2, 1.0f);
                i_this->field_0x5b4 = 3;
            }
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 5.0f);
    cLib_addCalcAngleS2(&a_this->current.angle.y, sVar1, 4, 0x1000);
    i_this->field_0x9c8 = 11;
    i_this->field_0x9d4 = bomb->current.pos;
}

/* 8050AF78-8050B0F4 0065F8 017C+00 1/1 0/0 0/0 .text            e_rd_s_damage__FP10e_rd_class */
static void e_rd_s_damage(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    switch (i_this->field_0x5b4) {
        case 0:
            i_this->field_0x5b4 = 1;
            i_this->field_0x990[0] = 10;
            
            if (i_this->field_0x9be != 0) {
                e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);
                if (bullbo != NULL) {
                    bullbo->field_0x6be &= ~i_this->field_0x9be;
                }

                i_this->field_0x9be = 0;
                i_this->mWbActorID = -1;
            }
            break;

        case 1:
            if (i_this->field_0x990[1] != 0) {
                a_this->onHeadLockFlg();
            }

            if (i_this->mpModelMorf->isStop()) {
                if (i_this->field_0x974 == 7) {
                    i_this->mAction = 7;
                } else if (i_this->field_0x974 == 26) {
                    i_this->mAction = 26;
                } else if (!other_bg_check(i_this, dComIfGp_getPlayer(0))) {
                    i_this->mAction = 3;
                    i_this->field_0x990[0] = 40;
                } else {
                    i_this->mAction = 0;
                }

                i_this->field_0x5b4 = 0;
            }
            break;
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 3.0f);
}

/* 8050B0F4-8050B2A8 006774 01B4+00 1/1 0/0 0/0 .text            kado_check__FP10e_rd_class */
static int kado_check(e_rd_class* i_this) {
    // NONMATCHING
    static int kado_bit[2] = {
        1, 2,
    };

    static f32 kado_check_x[2] = {
        80.0f, -80.0f,
    };

    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz sp9c, spa8, spb4;
    BOOL rv = FALSE;

    cMtx_YrotS(*calc_mtx, i_this->field_0xa0e);
    for (int i = 0; i < 2; i++) {
        spa8 = a_this->current.pos;
        spa8.y += 100.0f;
        sp9c.x = 0.0f;
        sp9c.y = 0.0f;
        sp9c.z = 70.0f;
        MtxPosition(&sp9c, &spb4);
        spa8 += spb4;
        sp9c.y = 50.0f;
        sp9c.z = -150.0f;
        sp9c.x = 1.0f * kado_check_x[i];
        MtxPosition(&sp9c, &spb4);
        spb4 += spa8;
        lin_chk.Set(&spa8, &spb4, a_this);
        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            rv |= kado_bit[i];
        }
    }

    if (rv == 3) {
        rv = FALSE;
    }

    return rv;
}

/* 8050B2A8-8050B3E8 006928 0140+00 3/3 0/0 0/0 .text            rd_disappear__FP10e_rd_class */
static void rd_disappear(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp1c, sp28;

    MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(11), *calc_mtx);
    sp1c.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&sp1c, &sp28);

    fopAc_ac_c* actor = fopAcM_SearchByName(PROC_NPC_COACH);
    if (actor != NULL) {
        fopAcM_createDisappear(a_this, &sp28, 10, 0, 51);
    } else {
        fopAcM_createDisappear(a_this, &sp28, 10, 0, 11);
    }

    fopAcM_delete(a_this);

    int swBit = fopAcM_GetParam(a_this) >> 24;
    if (swBit != 0xFF) {
        dComIfGs_onSwitch(swBit, fopAcM_GetRoomNo(a_this));
    }

    if (i_this->field_0x9be != 0) {
        e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);
        if (bullbo != NULL) {
            bullbo->field_0x6be &= ~i_this->field_0x9be;
            if (bullbo->mActionID == 1) {
                bullbo->mActionID = 0;
            }
        }
    }
}

/* 8050B3E8-8050B53C 006A68 0154+00 1/1 0/0 0/0 .text            body_gake__FP10e_rd_class */
static BOOL body_gake(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    J3DModel* model = i_this->mpModelMorf->getModel();
    cXyz sp7c, sp88;

    MTXCopy(model->getAnmMtx(11), *calc_mtx);
    sp7c.set(40.0f, 0.0f, 0.0f);
    MtxPosition(&sp7c, &sp88);

    dBgS_ObjGndChk gnd_chk;
    sp88.y += 100.0f;
    gnd_chk.SetPos(&sp88);
    sp88.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

    if ((a_this->current.pos.y - sp88.y) > 300.0f) {
        return TRUE;
    }

    return FALSE;
}

/* 8050B5B4-8050C12C 006C34 0B78+00 2/1 0/0 0/0 .text            e_rd_damage__FP10e_rd_class */
static void e_rd_damage(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp34, sp40;

    if (a_this->health <= 0) {
        fopAcM_OffStatus(a_this, 0);
        a_this->attention_info.flags = 0;
    }

    i_this->field_0x6d0 = 0.0f;

    if (daPy_py_c::checkNowWolf() != 0) {
        if (i_this->field_0xafa == 0 && a_this->checkWolfDownStartFlg()) {
            if (i_this->field_0x990[0] > 40) {
                i_this->field_0x990[0] = 90;
                OS_REPORT("      RD WOLFHIT LONG  \n");
            } else if (i_this->field_0x990[0] > 20) {
                i_this->field_0x990[0] = 70;
                OS_REPORT("      RD WOLFHIT MID  \n");
            } else {
                i_this->field_0x990[0] = 50;
                OS_REPORT("      RD WOLFHIT SHORT \n");
            }

            i_this->field_0x5b4 = 30;
            i_this->field_0x990[1] = 16;
            i_this->field_0xafa = 1;
        }
    } else if (a_this->checkCutDownHitFlg()) {
        a_this->offCutDownHitFlg();
        i_this->field_0x5b4 = 3;
        a_this->health = 0;
        i_this->field_0x990[0] = 100;
        i_this->field_0x990[1] = 46;
        a_this->offDownFlg();
        a_this->health = 0;
        i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_DEATH, -1);
        i_this->field_0x968 = 1;
        daPy_getPlayerActorClass()->onEnemyDead();
        i_this->field_0xadc = 15;
        a_this->offDownFlg();
    }

    s16 sVar1;
    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 18, 3.0f, 0, 1.0f);
            i_this->field_0x5b4 = 1;
            a_this->speedF = 0.0f;
            ride_off(i_this);
            i_this->field_0xab8 = 8000.0f;

            if (a_this->health <= 0) {
                i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_DEATH, -1);
                i_this->field_0x968 = 1;
                daPy_getPlayerActorClass()->onEnemyDead();

                if (data_80519200 != 0) {
                    i_this->field_0x5ba = 0;
                }
            } else {
                i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_DAMAGE, -1);
            }

            i_this->field_0x990[0] = 0;
            break;

        case 1:
            if (i_this->mObjAcch.ChkWallHit() != 0 && i_this->field_0x990[0] == 0) {
                int iVar1 = kado_check(i_this);
                if (iVar1 != 0) {
                    OS_REPORT("              ..KADO KABE ..%x\n", iVar1);
                    if (iVar1 == 2) {
                        i_this->field_0x9f6 = 0x1000;
                        i_this->field_0xa0e += -7000;
                    } else {
                        i_this->field_0x9f6 = -0x1000;
                        i_this->field_0xa0e += 7000;
                    }

                    i_this->field_0xab8 = 8000.0f;
                    i_this->field_0xa24 = 100.0f;
                    i_this->field_0xa2c = 100.0f;
                    i_this->field_0x990[0] = 60;
                } else {
                    i_this->field_0x5b4 = 10;
                    a_this->speed.y = 0.0f;
                    i_this->field_0x9ec *= 0.2f;
                    i_this->field_0xa0e += 0x8000;
                    i_this->field_0xaf0 = 5;
                    i_this->field_0xa24 = 100.0f;
                    i_this->field_0xa2c = 100.0f;
                    i_this->field_0x9f6 = 0;
                }
            } else {
                cLib_addCalcAngleS2(&i_this->field_0xa0c, -0x4000, 1, 0x300);
                a_this->current.angle.y += i_this->field_0x9f6;
                a_this->shape_angle.y = a_this->current.angle.y;

                if (i_this->field_0xa0c <= -0x3000 && i_this->mObjAcch.ChkGroundHit()) {
                    i_this->field_0xa1e = 10;

                    if (i_this->field_0x1294 != 0) {
                        i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_ASASE_M, 0, -1);
                    } else {
                        i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_M, 0, -1);
                    }

                    i_this->field_0x5b4 = 2;

                    if (i_this->field_0xa1f == 0) {
                        anm_init(i_this, 16, 3.0f, 0, 1.0f);
                        sVar1 = i_this->field_0xa0e;
                    } else {
                        sVar1 = i_this->field_0xa0e + 0x8000;
                    }

                    a_this->current.angle.y = sVar1;

                    if (i_this->field_0x9f8 != 0) {
                        i_this->field_0x9ec = 0.0f;
                        i_this->field_0xab8 = 2000.0f;
                    } else {
                        if (i_this->field_0xa1f == 0) {
                            i_this->field_0xa24 = -100.0f;
                            i_this->field_0xa2c = -100.0f;
                        } else {
                            i_this->field_0xa24 = 100.0f;
                            i_this->field_0xa2c = 100.0f;
                        }

                        i_this->field_0xa28 = -0x5000;
                        i_this->field_0xa30 = -0x4000;
                        i_this->field_0x9ec *= 0.5f;
                        a_this->speed.y = 20.0f;
                        i_this->field_0x9f6 /= 2;
                        i_this->field_0xab8 = 8000.0f;
                        i_this->field_0x125d = 1;
                    }
                }
            }
            break;

        case 2:
            a_this->current.angle.y += i_this->field_0x9f6;
            a_this->shape_angle.y = a_this->current.angle.y;
            cLib_addCalcAngleS2(&i_this->field_0xa0c, -0x4000, 1, 0x300);

            if (i_this->mObjAcch.ChkGroundHit()) {
                if (a_this->health > 0 && daPy_py_c::checkNowWolf() == 0) {
                    a_this->onDownFlg();
                }

                dKy_Sound_set(a_this->current.pos, 100, fopAcM_GetID(a_this), 5);
                i_this->field_0xa1e = 10;

                if (i_this->field_0xa1f == 0) {
                    anm_init(i_this, 16, 3.0f, 0, 1.0f);
                } else {
                    anm_init(i_this, 18, 3.0f, 0, 1.0f);
                }

                i_this->field_0x9ec = 0.0f;
                i_this->field_0xa0c = -0x4000;

                if (i_this->field_0xa1f == 0) {
                    sVar1 = i_this->field_0xa0e;
                    for (int i = 0; i < 4; i++) {
                        i_this->field_0xad2[i] = cM_rndF(10.0f);
                    }
                } else {
                    sVar1 = i_this->field_0xa0e + 0x8000;
                }
                a_this->current.angle.y = sVar1;

                if (daPy_py_c::checkNowWolf() != 0) {
                    i_this->field_0x990[0] = 80;
                    i_this->field_0x990[1] = 55;
                } else {
                    i_this->field_0x990[0] = cM_rndF(10.0f) + 60.0f;
                    i_this->field_0x990[1] = 35;
                }

                i_this->field_0x5b4 = 3;
                i_this->field_0xab8 = 1500.0f;
                i_this->field_0x125d = 1;
            }
            break;

        case 3:
            if (body_gake(i_this)) {
                i_this->field_0x9ec = -20.0f;
                i_this->field_0xa0c -= 0x300;
            } else {
                i_this->field_0x9ec = 0.0f;
            }

            if (a_this->health <= 0 && i_this->field_0x990[1] == 0) {
                rd_disappear(i_this);
                return;
            }

            if (daPy_getPlayerActorClass()->getCutType() != daPy_py_c::CUT_TYPE_DOWN && i_this->field_0x990[0] == 0) {
                i_this->field_0xa0c = -0x4000;
                a_this->offDownFlg();
                i_this->field_0x5b4 = 20;

                if (i_this->field_0xa1f == 0) {
                    anm_init(i_this, 17, 3.0f, 0, 1.0f);
                } else {
                    anm_init(i_this, 19, 3.0f, 0, 1.0f);
                }
            }
            break;

        case 10:
            if (i_this->field_0xaf0 != 0) {
                cLib_addCalcAngleS2(&i_this->field_0xa0c, 0, 1, 0x300);
            } else {
                cLib_addCalcAngleS2(&i_this->field_0xa0c, -0x4000, 1, 0x800);
                if (i_this->mObjAcch.ChkGroundHit()) {
                    i_this->field_0x5b4 = 2;
                    if (i_this->field_0xa1f == 0) {
                        anm_init(i_this, 16, 3.0f, 0, 1.0f);
                        i_this->field_0xa24 = -100.0f;
                        i_this->field_0xa2c = -100.0f;
                    } else {
                        i_this->field_0xa24 = 100.0f;
                        i_this->field_0xa2c = 100.0f;
                    }

                    i_this->field_0xa28 = -0x5000;
                    i_this->field_0xa30 = -0x4000;
                    i_this->field_0x9ec *= 0.5f;
                    a_this->speed.y = 20.0f;

                    if (i_this->field_0xa1f == 0) {
                        sVar1 = i_this->field_0xa0e;
                    } else {
                        sVar1 = i_this->field_0xa0e + 0x8000;
                    }

                    a_this->current.angle.y = sVar1;
                    i_this->field_0xab8 = 8000.0f;
                }
            }
            break;

        case 20:
            if (i_this->mpModelMorf->getFrame() >= 35.0f) {
                i_this->field_0xa1c = 0;
                i_this->field_0xa18 = 0;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0xa0e = 0;
                i_this->field_0xa0c = 0;
                anm_init(i_this, 64, 0.0f, 2, 1.0f);
                i_this->field_0x990[0] = 5;
                i_this->field_0x5b4 = 21;

                a_this->offDownFlg();
            }
            break;

        case 21:
            if (i_this->field_0x990[0] == 0) {
                i_this->field_0x998 = 0;
                if (pl_check(i_this, 10000.0f, 0x6000)) {
                    i_this->mAction = 0;
                    i_this->field_0x5b4 = 0;
                } else {
                    i_this->field_0x990[0] = cM_rndF(20.0f) + 20.0f;
                    anm_init(i_this, 29, 10.0f, 2, 1.0f);
                    i_this->field_0x5b4 = 22;
                }
            }
            break;

        case 22:
            if (i_this->field_0x990[0] == 0) {
                i_this->mAction = 0;
                i_this->field_0x5b4 = 0;
                i_this->field_0x990[0] = cM_rndF(50.0f) + 50.0f;
                anm_init(i_this, 29, 10.0f, 2, 1.0f);
            }
            break;

        case 30:
            if (!a_this->checkWolfDownPullFlg()) {
                i_this->field_0x990[1] = 0;
            }

            if (i_this->field_0x990[0] == 0) {
                i_this->field_0x5b4 = 31;
                if (i_this->field_0xa1f == 0) {
                    anm_init(i_this, 17, 3.0f, 0, 1.0f);
                } else {
                    anm_init(i_this, 19, 3.0f, 0, 1.0f);
                }

                i_this->field_0x990[0] = 10;
            } else if (i_this->field_0x990[1] == 1) {
                a_this->onWolfDownPullEndFlg();
                a_this->offCutDownHitFlg();
                a_this->health = 0;
                i_this->field_0x990[0] = 1000;
                i_this->field_0x990[1] = 35;
                i_this->field_0x5b4 = 3;
            }
            break;

        case 31:
            if (i_this->field_0x990[0] == 0) {
                a_this->offDownFlg();
                i_this->field_0x5b4 = 20;
                i_this->field_0xafa = 0;
            }
    }

    if (a_this->checkDownFlg()) {
        MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(11), *calc_mtx);
        sp34.set(BREG_F(0), BREG_F(1), BREG_F(2));
        MtxPosition(&sp34, &sp40);
        a_this->setDownPos(&sp40);
        i_this->field_0x9ad = 0;
    }

    if (i_this->field_0xadc != 0) {
        i_this->field_0xadc--;
        i_this->field_0xada = i_this->field_0xadc * cM_ssin(i_this->field_0xadc * 0x3800) * 100.0f;
    }
}

/* 8050C12C-8050C2D8 0077AC 01AC+00 1/1 0/0 0/0 .text            gake_check__FP10e_rd_classf */
static int gake_check(e_rd_class* i_this, f32 param_2) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_GndChk gnd_chk;
    dBgS_LinChk lin_chk;
    cXyz spf8, sp104, start, end;
    s16 sVar1 = a_this->shape_angle.y;

    for (int i = 0; i < 16; i++, sVar1 += 0x1000) {
        cMtx_YrotS(*calc_mtx, sVar1);
        start.x = 0.0f;
        start.y = 100.0f;
        start.z = param_2;
        MtxPosition(&start, &end);
        end += a_this->current.pos;
        gnd_chk.SetPos(&end);

        if (a_this->current.pos.y - dComIfG_Bgsp().GroundCross(&gnd_chk) > 300.0f) {
            start = a_this->current.pos;
            start.y += 100.0f;
            lin_chk.Set(&start, &end, a_this);
            if (!dComIfG_Bgsp().LineCross(&lin_chk)) {
                return sVar1;
            }
        }
    }

    return a_this->shape_angle.y;
}

/* 8050C2D8-8050C4B0 007958 01D8+00 1/1 0/0 0/0 .text            s_bikkuri_sub__FPvPv */
static void* s_bikkuri_sub(void* i_actor, void* i_data) {
    if (fopAc_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD && i_actor != i_data) {
        if (((e_rd_class*)i_actor)->mAction == 26 && ((e_rd_class*)i_actor)->field_0x5b4 <= 2) {
            cXyz sp28 = ((fopAc_ac_c*)i_actor)->current.pos - ((fopAc_ac_c*)i_data)->current.pos;
            if (sp28.abs() < KREG_F(11) + 350.0f) {
                anm_init((e_rd_class*)i_actor, 29, 5.0f, 2, 1.3f);
                ((e_rd_class*)i_actor)->field_0x5b4 = 3;
                ((e_rd_class*)i_actor)->field_0x990[0] = cM_rndF(20.0f) + 40.0f;
            }
        }
    }

    return NULL;
}

/* 8050C4B0-8050C630 007B30 0180+00 1/1 0/0 0/0 .text            s_saku_sub__FPvPv */
static void* s_saku_sub(void* i_actor, void* i_data) {
    if (fopAc_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_Obj_H_Saku) {
        cXyz sp14 = ((daObjH_Saku_c*)i_actor)->field_0x5e0 - ((fopAc_ac_c*)i_data)->current.pos;
        if (sp14.abs() < 200.0f) {
            return i_actor;
        }
    }

    return NULL;
}

/* 8050C630-8050CA64 007CB0 0434+00 1/1 0/0 0/0 .text            e_rd_drop__FP10e_rd_class */
static void e_rd_drop(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    f32 fVar1 = 0.0f;

    switch (i_this->field_0x5b4) {
        case 0:
            i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_SNIPED_DAMAGE, -1);
            anm_init(i_this, 13, 2.0f, 0, 1.0f);
            i_this->field_0x5b4 = 1;

            if (data_80519200 != 0) {
                i_this->mDemoMode = 10;
            }
            break;

        case 1:
            i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_SNIPED_DAMAGE, -1);
            
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 22, 0.0f, 2, 1.0f);
                i_this->field_0x5b4 = 2;

                if (i_this->mDemoMode != 0) {
                    i_this->field_0x5cc = i_this->mPlayerAngleY;
                } else if (strcmp(dComIfGp_getStartStageName(), "F_SP128") == 0) {
                    i_this->field_0x5cc = a_this->home.angle.y;
                } else {
                    i_this->field_0x5cc = gake_check(i_this, 200.0f);
                }

                fpcM_Search(s_bikkuri_sub, i_this);
                i_this->field_0x990[0] = 60;
            }
            break;

        case 2:
            i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_SNIPED_DAMAGE, -1);
            fVar1 = 4.0f;
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x5cc, 8, 0x400);

            if (i_this->field_0x990[0] == 0) {
                i_this->mAction = 23;
                i_this->field_0x5b4 = 0;
                return;
            }

            if (move_gake_check(i_this, KREG_F(6) + 30.0f)) {
                i_this->field_0x5b4 = 3;
                i_this->field_0xa0e = a_this->shape_angle.y + 0x8000;
                i_this->field_0xa0c = 0;
                i_this->mpModelMorf->setPlaySpeed(0.3f);
                i_this->field_0xaf8 = 0;
                i_this->field_0x990[0] = 20;
            }
            break;

        case 3:
            if (i_this->field_0x990[0] == 19) {
                daObjH_Saku_c* h_saku = (daObjH_Saku_c*)fpcM_Search(s_saku_sub, i_this);
                if (h_saku != NULL) {
                    h_saku->BreakSet();
                }
            }

            fVar1 = 3.0f;
            
            if (i_this->field_0xa0c > -0x4000) {
                a_this->speed.y = 0.0f;
                i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_SNIPED_DAMAGE, -1);
            } else {
                if (i_this->field_0xa0c > -0x6800) {
                    a_this->speed.y = -fabsf(cM_scos(i_this->field_0xa0c) * (TREG_F(8) + 70.0f));
                    i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_SNIPED_FALLING, -1);
                } else {
                    i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_RD_V_SNIPED_FALLING, -1);
                }
            }

            cLib_addCalcAngleS2(&i_this->field_0xa0c, -0x7000, 2, i_this->field_0xaf8);
            cLib_addCalcAngleS2(&i_this->field_0xaf8, 0x800, 1, 0x50);
            i_this->field_0x9ab = 2;

            if (i_this->field_0x990[0] == 0 && a_this->current.pos.y <= (KREG_F(17) + i_this->mObjAcch.GetGroundH() + 100.0f)) {
                if (i_this->field_0x5b7 == 13 || i_this->field_0x5b7 == 14) {
                    i_this->mAction = 60;
                    i_this->field_0x5b4 = 1;
                    i_this->field_0xafb = 1;
                    i_this->field_0xaf2 = 0;
                } else {
                    a_this->current.pos.y = KREG_F(17) + i_this->mObjAcch.GetGroundH() + 100.0f;
                    i_this->field_0xa0c = -0x4000;
                    i_this->mAction = 21;
                    i_this->field_0x5b4 = 0;
                    i_this->field_0x9ec = 0.0f;
                    a_this->health = 0;
                }
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 3.0f);
}

/* 8050CA64-8050CB70 0080E4 010C+00 1/1 0/0 0/0 .text            e_rd_a_damage__FP10e_rd_class */
static void e_rd_a_damage(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    i_this->field_0x998 = 3;
    fopAcM_OffStatus(a_this, 0);
    a_this->attention_info.flags = 0;

    switch (i_this->field_0x5b4) {
        case 0:
            i_this->field_0x5b4 = 1;
            anm_init(i_this, 15, 5.0f, 0, 1.0f);
            i_this->field_0x990[0] = 80;

            if (data_80519200 != 0) {
                i_this->field_0x5ba = 0;
            }

            dKy_Sound_set(a_this->current.pos, 100, fopAcM_GetID(a_this), 5);
            break;

        case 1:
            if (i_this->field_0x990[0] == 0) {
                rd_disappear(i_this);
            }
            break;
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 3.0f);
}

/* 8050CB70-8050CD4C 0081F0 01DC+00 1/1 0/0 0/0 .text            e_rd_stand__FP10e_rd_class */
static void e_rd_stand(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    switch (i_this->field_0x5b4) {
        case 0:
            if (i_this->field_0x990[0] == 0) {
                anm_init(i_this, 29, 10.0f, 2, 1.0f);
                i_this->field_0x5b4 = 1;
                i_this->field_0x990[0] = cM_rndF(40.0f) + 60.0f;
            }
            break;

        case 1:
            if (i_this->field_0x990[0] == 0) {
                anm_init(i_this, 64, 10.0f, 2, 1.0f);
                i_this->field_0x990[0] = cM_rndF(100.0f) + 100.0f;
                i_this->field_0x5b4 = 0;
            }
            break;
    }

    f32 fVar1 = i_this->field_0x980;
    s16 sVar1 = 0x4000;
    BOOL bVar1 = FALSE;

    if (i_this->field_0x9a1 == 1 || S_find != 0) {
        if (i_this->field_0x9a1 == 1) {
            bVar1 = TRUE;
        }
        fVar1 = 10000.0f;
        sVar1 = 0x7FFF;
    }

    if ((i_this->field_0x970 & 7) == 0 && fopAcM_GetRoomNo(a_this) == 0) {
        if ((S_find == 0 || (wb_check(i_this, sVar1), i_this->field_0x9be == 0)) && pl_check(i_this, 500.0f, 0x4000)) {
            i_this->mAction = 3;
            i_this->field_0x5b4 = -10;
            i_this->field_0x990[0] = 60;
        }
    } else if (((i_this->field_0x970 & 7) == 0 || bVar1) && pl_check(i_this, fVar1, sVar1) && i_this->field_0x5bc == 1) {
        OS_REPORT(" <<<<<<<<<<<<<< RD RIDE 4\n");
        i_this->mAction = 3;
        i_this->field_0x5b4 = -10;
        i_this->field_0x990[0] = 60;
    }
}

/* 8050CD4C-8050D168 0083CC 041C+00 2/1 0/0 0/0 .text            e_rd_bow3__FP10e_rd_class */
static s8 e_rd_bow3(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    if (i_this->field_0x998 == 0 && i_this->field_0x5b4 != 5 && fpcM_Search(s_command3_sub, i_this) == NULL) {
        i_this->field_0x5b4 = 5;
        i_this->field_0x990[1] = cM_rndF(20.0f) + 40.0f;
        i_this->field_0x990[0] = cM_rndF(20.0f) + 80.0f;
    }

    int frame = i_this->mpModelMorf->getFrame();
    s8 bVar1 = 1;

    switch (i_this->field_0x5b4) {
        case 0:
            bVar1 = 0;
            anm_init(i_this, 64, 10.0f, 2, 1.0f);
            i_this->field_0x5b4 = 1;
            break;

        case 1:
            bVar1 = 0;
            break;

        case 3:
            if (i_this->field_0x990[0] == 0) {
                i_this->field_0x5b4 = 0;
            }
            break;

        case 5:
            if (i_this->field_0x990[1] == 1) {
                anm_init(i_this, 29, 5.0f, 2, 1.3f);
            }

            if (i_this->field_0x990[0] == 10) {
                anm_init(i_this, 64, 5.0f, 2, 1.0f);
            }

            if (i_this->field_0x990[0] == 0) {
                i_this->mAction = 7;
                i_this->field_0x5b4 = 0;
            }
            break;

        case 10:
            if (i_this->field_0x990[0] == 0) {
                anm_init(i_this, 57, 5.0f, 0, 1.0f);
                i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 7), 0, 5.0f, 0.9f, 0.0f, -1.0f);
                i_this->field_0x5b4 = 11;
                a_this->speedF = 0.0f;
            }
            break;

        case 11:
            i_this->field_0x9c8 = 4;
            
            if (frame >= 10) {
                i_this->field_0x9a2 = 1;
            }

            if (frame == 20) {
                i_this->mSound.startCreatureSound(Z2SE_OBJ_ARROW_DRAW_NORMAL, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 58, 4.0f, 2, 1.0f);
                i_this->field_0x990[0] = cM_rndF(10.0f) + 10.0f;
                i_this->field_0x5b4 = 12;
            }
            break;

        case 12:
            i_this->field_0x9c8 = 4;
            
            if (i_this->field_0x990[0] == 0 && !dMsgObject_isTalkNowCheck() && i_this->field_0x9a4 == 0) {
                anm_init(i_this, 56, 1.0f, 0, 1.0f);
                i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 10), 0, 1.0f, 1.0f, 0.0f, -1.0f);
                i_this->field_0x5b4 = 13;
            }

            i_this->field_0x9a2 = 1;
            break;

        case 13:
            if (frame <= 3) {
                i_this->field_0x9a2 = 1;
                i_this->field_0x9c8 = 4;
            }

            if (frame == 2) {
                i_this->field_0x9a3 = 1;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0x5b4 = 0;
            }
    }

    if (bVar1) {
        cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlayerAngleY, 4, 0x1000);
    }

    if (i_this->mPlayerDistance < 500.0f) {
        i_this->mAction = 5;
        i_this->field_0x5b4 = 0;
        i_this->field_0x1295 = 0;
    }

    return 0;
}

/* 8050D168-8050D1F4 0087E8 008C+00 1/1 0/0 0/0 .text            s_command2_sub__FPvPv */
static void* s_command2_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD && ((e_rd_class*)i_actor)->mAction == 26 && ((e_rd_class*)i_actor)->field_0x5b4 < 10) {
        ((e_rd_class*)i_actor)->field_0x990[0] = cM_rndF(10.0f) + 10.0f;
        ((e_rd_class*)i_actor)->field_0x5b4 = 10;
    }

    return NULL;
}

/* 8050D1F4-8050D260 008874 006C+00 1/1 0/0 0/0 .text            s_command4_sub__FPvPv */
static void* s_command4_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD && i_actor != i_data && ((e_rd_class*)i_actor)->mAction == 26) {
        return i_actor;
    }

    return NULL;
}

/* 8050D260-8050D6B4 0088E0 0454+00 2/1 0/0 0/0 .text            e_rd_commander__FP10e_rd_class */
static void e_rd_commander(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    s8 bVar1 = 0;
    s8 bVar2 = 0;
    boss = i_this;

    if (i_this->field_0x990[2] == 0 && fpcM_Search(s_command4_sub, i_this) == NULL) {
        i_this->mAction = 7;
        i_this->field_0x5b4 = 0;
    } else {
        switch (i_this->field_0x5b4) {
            case 0:
                i_this->field_0x5b4 = 1;
                break;

            case 1:
                bVar1 = 1;
                if (i_this->field_0x990[0] == 0) {
                    anm_init(i_this, 29, 10.0f, 2, 1.0f);
                    i_this->field_0x5b4 = 2;
                    i_this->field_0x990[0] = cM_rndF(40.0f) + 60.0f;
                }
                break;

            case 2:
                bVar1 = 1;
                if (i_this->field_0x990[0] == 0) {
                    anm_init(i_this, 64, 10.0f, 2, 1.0f);
                    i_this->field_0x990[0] = cM_rndF(100.0f) + 100.0f;
                    i_this->field_0x5b4 = 1;
                }
                break;

            case 5:
                anm_init(i_this, 64, 5.0f, 2, 1.0f);
                i_this->field_0x990[0] = 30;
                i_this->field_0x5b4 = 6;
                break;

            case 6:
                bVar2 = 1;
                if (i_this->field_0x990[0] == 0) {
                    anm_init(i_this, 23, 3.0f, 0, 1.0f);
                    i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_COMMANDER, -1);
                    i_this->field_0x5b4 = 7;

                    if (dComIfGp_event_runCheck()) {
                        i_this->field_0x990[0] = l_HIO.field_0x24 + 2;
                    } else {
                        i_this->field_0x990[0] = 10;
                    }
                }
                break;

            case 7:
                bVar2 = 1;
                if (i_this->field_0x990[0] == 1) {
                    fpcM_Search(s_command2_sub, i_this);
                }

                if (i_this->field_0x990[0] == 0 && i_this->mpModelMorf->isStop()) {
                    anm_init(i_this, 64, 5.0f, 2, 1.0f);
                    if (!dComIfGp_event_runCheck() && !pl_check(i_this, i_this->field_0x980, 0x4000)) {
                        i_this->field_0x5b4 = 10;
                        i_this->field_0x990[1] = TREG_S(8) + 350;
                    } else {
                        if (dComIfGp_event_runCheck()) {
                            i_this->field_0x990[0] = 80;
                        } else {
                            i_this->field_0x990[0] = TREG_S(3);
                        }

                        i_this->field_0x5b4 = 6;
                    }
                }
                break;

            case 10:
                anm_init(i_this, 23, 3.0f, 0, 1.0f);
                mDoAud_seStart(Z2SE_EN_RD_V_CALLING, 0, 0, 0);
                fpcM_Search(s_command2_sub, i_this);
                i_this->field_0x5b4 = 11;
                break;

            case 11:
                if (i_this->mpModelMorf->isStop()) {
                    if (i_this->field_0x990[1] == 0) {
                        anm_init(i_this, 64, 10.0f, 2, 1.0f);
                        i_this->field_0x990[0] = cM_rndF(30.0f) + 30.0f;
                        i_this->field_0x5b4 = 1;
                    } else {
                        i_this->field_0x5b4 = 10;
                    }
                }
        }

        if (bVar1 && pl_check(i_this, i_this->field_0x980, 0x4000)) {
            i_this->field_0x5b4 = 5;
            if (i_this->field_0x12a0 != 0) {
                dComIfGs_onSwitch(i_this->field_0x12a0, fopAcM_GetRoomNo(a_this));
            }
        }

        if (bVar2) {
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlayerAngleY, 2, 0x800);
        }
    }
}

/* 8050D6B4-8050DAB8 008D34 0404+00 1/1 0/0 0/0 .text            e_rd_excite__FP10e_rd_class */
static void e_rd_excite(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp40;
    f32 fVar1 = 0.0f;

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 64, 4.0f, 2, 1.0f);
            i_this->field_0x5b4 = 1;
            i_this->field_0x990[0] = cM_rndF(20.0f) + 20.0f;
            i_this->field_0x5cc = a_this->current.angle.y;
            i_this->field_0x5c0 = S_find_pos;
            break;

        case 1:
            i_this->field_0x9c8 = 11;
            i_this->field_0x9d4 = S_find_pos;

            if (i_this->field_0x990[0] == 0) {
                if (i_this->field_0x1295 != 0) {
                    i_this->field_0x5b4 = 3;
                    anm_init(i_this, 29, 5.0f, 2, 1.3f);
                    i_this->field_0x990[0] = cM_rndF(20.0f) + 40.0f;
                } else {
                    i_this->field_0x5b4 = 2;
                    anm_init(i_this, 50, 2.0f, 2, cM_rndFX(0.05f) + 1.0f);
                    i_this->field_0x990[0] = cM_rndF(15.0f) + 30.0f;
                }

                sp40 = i_this->field_0x5c0 - a_this->current.pos;
                i_this->field_0x5cc = cM_atan2s(sp40.x, sp40.z);
            }
            break;

        case 2:
            i_this->field_0x9c8 = 11;
            i_this->field_0x9d4 = i_this->field_0x5c0;
            fVar1 = l_HIO.dash_speed;
            sp40 = i_this->field_0x5c0 - a_this->current.pos;
            if (i_this->field_0x990[0] == 0 || move_gake_check(i_this, 100.0f) || sp40.abs() < 100.0f) {
                i_this->field_0x5b4 = 3;
                anm_init(i_this, 29, 5.0f, 2, 1.3f);
                i_this->field_0x990[0] = cM_rndF(20.0f) + 40.0f;
            }
            break;

        case 3:
            if (i_this->field_0x990[0] == 0) {
                i_this->mAction = i_this->field_0x974;
                if (i_this->mAction == 24) {
                    i_this->mAction = 0;
                }

                i_this->field_0x5b4 = 0;
            }
            break;
    }

    cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x5cc, 2, 0x800);
    s16 sVar1 = a_this->current.angle.y - i_this->field_0x5cc;
    if (sVar1 > 0x400 || sVar1 < -0x400) {
        fVar1 = 0.0f;
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 5.0f);
}

/* 8050DAB8-8050DC10 009138 0158+00 1/1 0/0 0/0 .text            e_rd_water__FP10e_rd_class */
static void e_rd_water(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    i_this->field_0x998 = 10;

    switch (i_this->field_0x5b4) {
        case 0:
        case 1:
            a_this->speed.y = 0.0f;
            if (i_this->field_0xa1f == 0) {
                anm_init(i_this, 20, 3.0f, 2, 1.0f);
            } else {
                anm_init(i_this, 21, 3.0f, 2, 1.0f);
            }

            i_this->field_0x990[0] = 60;
            a_this->speedF = 0.0f;
            i_this->field_0x9ec = 0.0f;
            i_this->field_0x9f0 = 0.0f;
            
            cXyz sp28(a_this->current.pos);
            sp28.y = i_this->field_0x984;
            if (i_this->field_0x5b4 == 0) {
                fopKyM_createWpillar(&sp28, 1.5f, 0);
            } else {
                OS_REPORT("      RD YOGAN  \n");
                fopKyM_createMpillar(&sp28, 1.0f);
            }

            i_this->field_0x5b4 = 10;
            break;

        case 10:
            a_this->speed.y = 0.0f;
            cLib_addCalc2(&a_this->current.pos.y, i_this->field_0x984, 0.5f, 5.0f);
            cLib_addCalcAngleS2(&i_this->field_0xa0c, -0x4000, 4, 0x400);

            if (i_this->field_0x990[0] == 0) {
                rd_disappear(i_this);
            }
            break;
    }
}

/* 8050DC10-8050DE00 009290 01F0+00 2/1 0/0 0/0 .text            e_rd_kiba_start__FP10e_rd_class */
static void e_rd_kiba_start(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    fopAcM_OffStatus(a_this, 0);
    a_this->attention_info.flags = 0;
    i_this->field_0x998 = 10;

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 66, 1.0f, 2, 1.0f);
            i_this->field_0x5b4++;
            i_this->field_0x6a0 = 0;
            break;

        case 2:
            anm_init(i_this, 33, 10.0f, 0, 1.0f);
            i_this->field_0x5b4++;
            break;

        case 3:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 66, 5.0f, 2, 1.0f);
                i_this->field_0x5b4++;
            }
            break;

        case 5:
            i_this->field_0x6a0 = 1;
            anm_init(i_this, 58, 20.0f, 0, 1.0f);
            horn_anm_init(i_this, 6, 2.0f, 0, 1.0f);
            i_this->field_0x5b4++;
            break;

        case 6:
            if ((int)i_this->mpModelMorf->getFrame() == 21) {
                i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_HORN, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 13;
                i_this->field_0x5b4 = 0;
                a_this->attention_info.flags = 4;
            }
    }
}

/* 8050DE00-8050DF38 009480 0138+00 1/1 0/0 0/0 .text            e_rd_ikki2_start__FP10e_rd_class */
static void e_rd_ikki2_start(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    fopAcM_OffStatus(a_this, 0);
    a_this->attention_info.flags = 0;
    i_this->field_0x998 = 10;

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 54, 1.0f, 2, 1.0f);
            i_this->field_0x5b4++;
            break;
            
        case 2:
            anm_init(i_this, 53, 5.0f, 0, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_DEMO_EXCITE, -1);
            i_this->field_0x5b4++;
            break;

        case 3:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 54, 10.0f, 2, 1.0f);
                i_this->field_0x5b4 = 4;
            }
            break;

        case 4:
            break;
    }
}

/* 8050DF38-8050E214 0095B8 02DC+00 1/1 0/0 0/0 .text            e_rd_kiba_end__FP10e_rd_class */
static void e_rd_kiba_end(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    fopAcM_OffStatus(a_this, 0);
    a_this->attention_info.flags = 0;
    i_this->field_0x998 = 10;
    e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);

    switch (i_this->field_0x5b4) {
        case 0:
            i_this->field_0x680 = 0;
            anm_init(i_this, 43, 1.0f, 0, 1.0f);
            i_this->field_0x5b4++;
            i_this->field_0x990[0] = 14;
            bullbo->field_0x7a2 = 1;
            break;

        case 1:
            if (i_this->field_0x990[0] == 1) {
                cXyz sp28, sp34;
                cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
                sp28.x = BREG_F(8) + 40.0f;
                sp28.y = BREG_F(9) + 20.0f;
                sp28.z = BREG_F(10) + 57.0f;
                MtxPosition(&sp28, &i_this->field_0x6b0);
                i_this->field_0x6be = a_this->shape_angle.y;
                sp28.x = BREG_F(11) + 80.0f;
                sp28.y = BREG_F(12);
                sp28.z = BREG_F(13);
                MtxPosition(&sp28, &sp34);
                i_this->field_0x6a4 += sp34;
                i_this->field_0x6a0 = 2;
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 44, 2.0f, 2, 1.0f);
                i_this->field_0x5b4++;
                i_this->field_0x990[0] = 110;
            }
            break;

        case 2:
            if (i_this->field_0x990[0] == 0) {
                anm_init(i_this, 45, 2.0f, 0, 1.0f);
                i_this->field_0x5b4++;
                i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_AWAKE, -1);
                i_this->field_0x990[0] = 10;
            }
            break;

        case 3:
            if (i_this->field_0x990[0] == 0) {
                bullbo->field_0x7a2 = 0;
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 59, 5.0f, 2, 1.0f);
                i_this->field_0x5b4++;
                i_this->field_0x990[0] = 20;
            }
            break;

        case 4:
            if (i_this->field_0x990[0] != 0) {
                i_this->field_0x9c8 = 1;
            }

            if ((bullbo->field_0x6be & 0x100) != 0) {
                i_this->mAction = 14;
                i_this->field_0x5b4 = 0;
                i_this->field_0x990[1] = 2000;
                i_this->field_0x990[2] = 1000;
            }
            break;
    }
}

/* 8050E214-8050E430 009894 021C+00 1/1 0/0 0/0 .text            e_rd_ikki_end__FP10e_rd_class */
static void e_rd_ikki_end(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);

    fopAcM_OffStatus(a_this, 0);
    a_this->attention_info.flags = 0;
    i_this->field_0x998 = 10;
    bullbo->field_0x1434 = fopAcM_GetID(a_this);

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 39, 1.0f, 0, 1.0f);
            i_this->field_0x5b4++;
            i_this->field_0x9bc = 0;

            if (daPy_getPlayerActorClass()->checkHorseRide() && bullbo != NULL) {
                bullbo->field_0x6be &= ~i_this->field_0x9be;
                i_this->field_0x9be = 0;
                bullbo->mActionID = 16;
                bullbo->field_0x5b4 = 0;
                bullbo->field_0x169e = 10;
            }

            a_this->speedF = 0.0f;
            a_this->speed.y = 40.0f;
            i_this->field_0x9ec = 70.0f;

            if (fopAcM_searchPlayerAngleY(a_this) < 0) {
                i_this->field_0xa0e = 0x4000;
            } else {
                i_this->field_0xa0e = -0x4000;
            }

            i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_DEATH, -1);
            break;

        case 1:
            if (i_this->mAnmID == 39) {
                if (i_this->mpModelMorf->isStop()) {
                    anm_init(i_this, 24, 1.0f, 2, 1.0f);
                }
            }

            if (a_this->speed.y < 0.0f) {
                cLib_addCalc2(&i_this->field_0x9ec, 0.0f, 0.1f, 1.0f);
                a_this->current.angle.y += i_this->field_0x9f6;
            }
            break;
    }
}

/* 8050E430-8050E668 009AB0 0238+00 1/1 0/0 0/0 .text            e_rd_ikki2_end__FP10e_rd_class */
static void e_rd_ikki2_end(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);

    fopAcM_OffStatus(a_this, 0);
    a_this->attention_info.flags = 0;
    i_this->field_0x998 = 10;
    bullbo->field_0x1434 = fopAcM_GetID(a_this);

    switch (i_this->field_0x5b4) {
        case 0:
            if (daPy_getPlayerActorClass()->checkHorseRide()) {
                anm_init(i_this, 40, 0.0f, 0, 1.0f);
                i_this->field_0x5b4 = 1;
                bullbo->mActionID = 18;
                bullbo->field_0x5b4 = 0;
                bullbo->field_0x169e = 90;
                mDoAud_bgmStop(30);
            }
            break;

        case 1:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 42, 3.0f, 2, 1.0f);
            }
            break;

        case 10:
            anm_init(i_this, 41, 2.0f, 0, 1.0f);
            i_this->field_0x5b4 = 11;
            i_this->field_0x9bc = 0;

            if (bullbo != NULL) {
                bullbo->field_0x6be &= ~i_this->field_0x9be;
                i_this->field_0x9be = 0;
            }

            a_this->speedF = 0.0f;
            a_this->speed.y = 50.0f;
            i_this->field_0x9ec = 60.0f;
            i_this->field_0xa0e = 0x4000;

            i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_DEATH, -1);
            break;

        case 11:
            if (a_this->speed.y < 0.0f) {
                cLib_addCalc2(&i_this->field_0x9ec, 0.0f, 0.1f, 1.0f);
            }
            break;
    }
}

/* 8050E668-8050E6B4 009CE8 004C+00 1/1 0/0 0/0 .text            s_rdb_sub__FPvPv */
static void* s_rdb_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RDB) {
        return i_actor;
    }

    return NULL;
}

/* 8050E6B4-8050E8F0 009D34 023C+00 1/1 0/0 0/0 .text            e_rd_lv9_end__FP10e_rd_class */
static void e_rd_lv9_end(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);

    i_this->field_0x998 = 10;

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 67, 0.0f, 2, 1.0f);
            i_this->field_0x5b4 = 1;
            break;

        case 1:
            if ((bullbo->field_0x6be & 8) != 0) {
                anm_init(i_this, 65, 10.0f, 2, 1.0f);
                i_this->field_0x5b4 = 2;
            }
            break;

        case 2:
            if ((bullbo->field_0x6be & 8) != 0) {
                anm_init(i_this, 28, 5.0f, 0, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_LV9_END03, -1);
                i_this->field_0x5b4 = 3;
            }
            break;

        case 3:
            if (i_this->mAnmID == 28) {
                if (i_this->mpModelMorf->isStop()) {
                    anm_init(i_this, 65, 10.0f, 2, 1.0f);
                }
            } else {
                e_rdb_class* king_bulblin = (e_rdb_class*)fpcM_Search(s_rdb_sub, i_this);
                if (king_bulblin != NULL && king_bulblin->mDemoMode == 14) {
                    anm_init(i_this, 52, 3.0f, 0, 1.0f);
                    bullbo->field_0x5b4++;
                    i_this->field_0x5b4 = 4;
                }
            }
            break;

        case 4:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 59, 3.0f, 2, 1.0f);
                i_this->field_0x5b4 = 5;
            }
            break;

        case 5:
            break;
    }
}

/* 8050E8F0-8050E948 009F70 0058+00 1/1 0/0 0/0 .text            s_boom_sub__FPvPv */
static void* s_boom_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD && ((e_rd_class*)i_actor)->field_0x99a != 0) {
        return i_actor;
    }

    return NULL;
}

/* 8050E948-8050E9E8 009FC8 00A0+00 1/1 0/0 0/0 .text            wolfkick_damage__FP10e_rd_class */
static void wolfkick_damage(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    i_this->mAction = 21;
    i_this->field_0x5b4 = 0;
    i_this->field_0xa0e = player->shape_angle.y + 0x8000;
    a_this->speed.y = l_HIO.wolf_falling_power_y;
    i_this->field_0x9ec = -l_HIO.wolf_falling_power_z;
    i_this->mSound.startCollisionSE(Z2SE_HIT_WOOD_WEAPON, 31);
    i_this->field_0x9f8 = 1;
    i_this->field_0x998 = 1000;
}

/* 8050E9E8-8050EBF8 00A068 0210+00 1/1 0/0 0/0 .text            big_damage__FP10e_rd_class */
static void big_damage(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    i_this->mAction = 21;
    i_this->field_0x5b4 = 0;
    a_this->speed.y = l_HIO.jump_y + 2.0f;

    if (i_this->field_0x9bc == 2) {
        e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);
        if (bullbo != NULL && bullbo->speedF >= 20.0f) {
            i_this->field_0x9ec = bullbo->speedF;
            if (i_this->field_0x9ec > 40.0f) {
                i_this->field_0x9ec = 40.0f;
            }
        } else {
            i_this->field_0x9ec = -l_HIO.field_0x48;
        }

        i_this->field_0xa0e = a_this->shape_angle.y + (s16)cM_rndFX(3000.0f);
    } else {
        i_this->field_0xa0e = i_this->mAtInfo.mHitDirection.y;
        i_this->field_0x9ec = -l_HIO.jump_z;
    }

    if ((i_this->mAtInfo.mHitBit & 0x80) != 0) {
        OS_REPORT("SPIN CUT HIT !!\n");
        i_this->field_0x9f6 = cM_rndFX(2000.0f) + 4000.0f;
    } else if ((i_this->mAtInfo.mHitBit & 0x800) != 0) {
        OS_REPORT("SPIN CUT L HIT !!\n");
        i_this->field_0x9f6 = -(cM_rndFX(2000.0f) + 4000.0f);
    } else {
        if (i_this->field_0x9bc != 0) {
            i_this->field_0x9f6 = cM_rndFX(3000.0f);
        } else {
            if (fopAcM_GetName(i_this->mAtInfo.mpActor) == PROC_E_WB) {
                i_this->field_0x9f6 = cM_rndFX(8000.0f);
                a_this->speed.y = cM_rndF(15.0f) + 35.0f;
                i_this->field_0x9ec = -(i_this->mAtInfo.mpActor->speedF * 0.5f);
            } else {
                i_this->field_0x9f6 = cM_rndFX(1000.0f);
            }
        }
    }

    i_this->field_0x9f8 = 0;
    i_this->field_0x998 = 1000;

}

/* 8050EBF8-8050ED28 00A278 0130+00 1/1 0/0 0/0 .text            small_damage__FP10e_rd_classi */
static void small_damage(e_rd_class* i_this, int param_2) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    if (i_this->mAction != 20) {
        i_this->field_0x974 = i_this->mAction;
    }

    i_this->mAction = 20;
    i_this->field_0x5b4 = 0;
    i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_DAMAGE, -1);

    if (param_2 == 0) {
        s16 sVar1 = a_this->shape_angle.y - i_this->mPlayerAngleY;
        if (sVar1 < -0x4000 || sVar1 > 0x4000) {
                anm_init(i_this, 14, 2.0f, 0, 1.0f);
            } else if (sVar1 < 0) {
                anm_init(i_this, 11, 2.0f, 0, 1.0f);
            } else {
                anm_init(i_this, 12, 2.0f, 0, 1.0f);
            }
    } else {
        anm_init(i_this, 14, 2.0f, 0, 1.0f);
    }

    i_this->field_0x9f0 = 20.0f;
    i_this->field_0x9f4 = i_this->mAtInfo.mHitDirection.y;
}

/* 8050ED28-8050EEC0 00A3A8 0198+00 1/1 0/0 0/0 .text            part_break__FP10e_rd_class */
static void part_break(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    for (int i = 0; i < 14; i++) {
        if (i_this->field_0x70c[i] == 0) {
            i_this->field_0x70c[i] = 1;
            i_this->mSound.startCreatureSound(Z2SE_EN_RDB_BREAK_ARMOR, 0, -1);

            cXyz sp54 = i_this->field_0x71c[i] - a_this->current.pos;
            cMtx_YrotS(*calc_mtx, cM_atan2s(sp54.x, sp54.z));
            sp54.x = cM_rndFX(10.0f);
            sp54.y = cM_rndF(5.0f) + 20.0f;
            sp54.z = cM_rndF(10.0f) + 30.0f;
            MtxPosition(&sp54, &i_this->field_0x7c4[i]);

            i_this->field_0x86c[i].y = cM_rndF(65536.0f);
            i_this->field_0x86c[i].x = cM_rndF(65536.0f);

            u16 uVar1 = 1;
            if (i_this->mAtInfo.mHitStatus != 0) {
                uVar1 = 3;
            } else {
                uVar1 = 1;
            }

            dComIfGp_setHitMark(uVar1, a_this, &i_this->field_0x71c[i], &a_this->shape_angle, NULL, 0);
            return;
        }
    }
}

/* 8050EEC0-8050FADC 00A540 0C1C+00 1/2 0/0 0/0 .text            damage_check__FP10e_rd_class */
static void damage_check(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);
    e_wb_class* bullbo_p = bullbo;
    int iVar1;

    if (i_this->field_0x9bc == 2 && bullbo != NULL && (bullbo->field_0x6be & 0xC0) != 0) {
        if (i_this->mAction == 46) {
            i_this->field_0x5b4 = 10;
            return;
        }

        i_this->mAction = 21;
        i_this->field_0x5b4 = 0;
        i_this->field_0x998 = 1000;

        if ((bullbo->field_0x6be & 0x80) != 0) {
            i_this->field_0xa0e = a_this->shape_angle.y + (s16)cM_rndFX(3000.0f) + 0x8000;
            i_this->field_0x9f6 = (s16)cM_rndFX(1000.0f);
        } else {
            i_this->field_0xa0e = a_this->shape_angle.y + (s16)cM_rndFX(8000.0f);
            i_this->field_0x9f6 = (s16)cM_rndFX(3000.0f);
        }

        a_this->speed.y = cM_rndF(15.0f) + 25.0f;
        i_this->field_0x9ec = -20.0f;
        return;
    }

    i_this->mStts.Move();

    if (i_this->field_0x998 == 0) {
        if (i_this->field_0x129a != 0) {
            a_this->health = 100;
        }

        for (int i = 0; i <= 2; i++) {
            if (i_this->field_0xd58[i].ChkTgHit() != 0) {
                i_this->field_0x998 = 6;
                i_this->mAtInfo.mpCollider = i_this->field_0xd58[i].GetTgHitObj();
                if (i_this->field_0x129a == 3) {
                    s16 sVar1 = a_this->shape_angle.y - i_this->mPlayerAngleY;
                    at_power_check(&i_this->mAtInfo);
                    if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_ARROW) || i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOMB)) {
                        u16 uVar1;
                        if (dComIfGp_getHorseActor()->speedF > 20.0f || sVar1 > 0x7800 || sVar1 < -0x7800) {
                            cc_at_check(a_this, &i_this->mAtInfo);
                            dScnPly_c::setPauseTimer(0);
                            bullbo->field_0x79e++;
                            if (bullbo->field_0x79e >= 3) {
                                mDoAud_bgmStop(30);
                                i_this->mAction = 46;
                                i_this->field_0x5b4 = 0;
                                i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_DAMAGE_L, -1);
                            } else {
                                bullbo->field_0x169e = 25;
                                anm_init(i_this, 36, 2.0f, 0, 1.0f);
                                i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_DAMAGE, -1);
                            }

                            uVar1 = 3;
                            bullbo->field_0x698[3] = 100;
                            dComIfGs_onSaveDunSwitch(7);
                        } else {
                            uVar1 = 2;
                            anm_init(i_this, 46, 2.0f, 0, 1.0f);
                        }

                        cXyz sp34, sp40;
                        cMtx_YrotS(*calc_mtx, bullbo_p->shape_angle.y);
                        sp34.set(0.0f, nREG_F(9) + 150.0f, nREG_F(10) + 200.0f);
                        MtxPosition(&sp34, &sp40);

                        sp40 += a_this->current.pos;
                        cXyz sp4c(2.0f, 2.0f, 2.0f);
                        dComIfGp_setHitMark(uVar1, a_this, &sp40, NULL, &sp4c, 0);
                        return;
                    } else {
                        if (i_this->mAtInfo.mHitType != 1) {
                            return;
                        }

                        anm_init(i_this, 46, 2.0f, 0, 1.0f);
                        bullbo->field_0x169e = 25;
                        dScnPly_c::setPauseTimer(0);

                        cXyz sp58, sp64;
                        cMtx_YrotS(*calc_mtx, bullbo_p->shape_angle.y);

                        if ((s16)(a_this->shape_angle.y - i_this->mPlayerAngleY) < 0) {
                            sp58.set(100.0f, nREG_F(9) + 150.0f, nREG_F(10) + 400.0f);
                        } else {
                            sp58.set(-100.0f, nREG_F(9) + 150.0f, nREG_F(10) + 400.0f);
                        }
                        MtxPosition(&sp58, &sp64);

                        sp64 += a_this->current.pos;
                        cXyz sp70(2.0f, 2.0f, 2.0f);
                        dComIfGp_setHitMark(2, a_this, &sp64, NULL, &sp70, 0);
                        dComIfGp_getVibration().StartShock(8, 31, cXyz(0.0f, 1.0f, 0.0f));
                        i_this->mSound.startCollisionSE(Z2SE_HIT_SWORD, 40);

                        i_this->field_0x998 = 30;
                        return;
                    }
                }

                i_this->field_0x129c = 3;

                if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_10000000)) {
                    wolfkick_damage(i_this);
                    break;
                }

                    at_power_check(&i_this->mAtInfo);
                    if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
                        i_this->field_0x990[1] = 30;
                    } else {
                        i_this->field_0x990[1] = 1;
                    }

                    if (i_this->field_0x9bc == 2 && i_this->mAtInfo.mAttackPower <= 10) {
                        if (fpcM_Search(s_boom_sub, i_this) != NULL) {
                            return;
                        }

                        i_this->field_0x99a = 5;
                    }

                    if (i_this->field_0x1295 != 0 && (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_SLINGSHOT) || 
                        (i_this->mAtInfo.mHitType != 1 && i_this->mAtInfo.mHitType != 16 && i_this->mAtInfo.mHitType != 2))) {
                        i_this->field_0x998 = 1000;
                        i_this->mAction = 22;
                        i_this->field_0x5b4 = 0;
                        a_this->health = 0;
                        cc_at_check(a_this, &i_this->mAtInfo);
                        return;
                    }

                    if (i_this->mAtInfo.mHitType == 15) {
                        a_this->health = 0;
                        if (i_this->field_0x9bc == 0) {
                            i_this->mAction = 23;
                            i_this->field_0x5b4 = 0;
                            i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_DAMAGE, -1);
                            a_this->health = 0;
                            cc_at_check(a_this, &i_this->mAtInfo);
                            return;
                        }
                    }

                    cc_at_check(a_this, &i_this->mAtInfo);
                    if (daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_HEAD_JUMP) {
                        a_this->health = 0;
                    }

                    if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                        i_this->field_0x998 = 20;
                    } else {
                        i_this->field_0x998 = 10;
                    }

                    if (i_this->mAtInfo.mAttackPower <= 1) {
                        i_this->field_0x998 = 10;
                    }

                    i_this->field_0xa20 |= i_this->mAtInfo.mHitBit;

                    if (daPy_getPlayerActorClass()->checkHorseRide() != 0 && dComIfGp_getHorseActor()->speedF >= 20.0f && i_this->mAtInfo.mHitType == 1) {
                        i_this->mAtInfo.mAttackPower = 20;
                    }

                    if (a_this->health > 0 && (i_this->mAtInfo.mHitStatus != 0 || i_this->field_0x9bc != 0)) {
                        if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP && player->checkCutJumpCancelTurn()) {
                            small_damage(i_this, i);
                            i_this->field_0x998 = 3;
                        } else {
                            if (i_this->field_0x129a != 0 && bullbo != NULL) {
                                i_this->field_0x998 = 20;
                                if (i_this->field_0x129a == 2) {
                                    bullbo->field_0x79e++;
                                    if (bullbo->field_0x79e == 1) {
                                        a_this->health = 0;
                                        dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x58]);
                                        part_break(i_this);
                                        bullbo->field_0x169e = 20;
                                        dScnPly_c::setPauseTimer(0);
                                    }

                                    if (l_HIO.one_hit_kill != 0 || bullbo->field_0x79e >= 2) {
                                        mDoAud_bgmStop(30);
                                        i_this->mAction = 42;
                                        i_this->field_0x5b4 = 0;
                                        
                                        if ((i_this->mAtInfo.mHitBit & 0x80) != 0) {
                                            i_this->field_0x9f6 = 0x300;
                                        } else {
                                            i_this->field_0x9f6 = cM_rndFX(100.0f);
                                        }

                                        dScnPly_c::setPauseTimer(10);
                                        return;
                                    } else {
                                        if (i_this->field_0x680 == 0) {
                                            iVar1 = i_this->mAnmID;
                                            anm_init(i_this, 43, 2.0f, 0, 1.0f);
                                            i_this->field_0x680 = iVar1;
                                        }

                                        i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_DAMAGE_L, -1);
                                        return;
                                    }
                                }

                                bullbo->field_0x79e++;
                                bullbo->field_0x79f++;
                                part_break(i_this);
                                if (bullbo->field_0x79e == 1 || bullbo->field_0x79e == 2 || bullbo->field_0x79e == 3 ||
                                    bullbo->field_0x79e == 4 || bullbo->field_0x79e == 6) {
                                    part_break(i_this);
                                }

                                s8 sVar2 = 8 - bullbo->field_0x79e;
                                if (sVar2 > 8) {
                                    sVar2 = 8;
                                }
                                dComIfGs_BossLife_public_Set(sVar2);

                                if (bullbo->field_0x79e == 5) {
                                    Z2GetAudioMgr()->changeSubBgmStatus(2);
                                }

                                if (bullbo->field_0x79e >= 8) {
                                    i_this->mAction = 41;
                                    i_this->field_0x5b4 = 0;
                                    mDoAud_seStart(Z2SE_EN_RDB_V_FAINT, 0, 0, 0);
                                    bullbo->mActionID = 31;
                                    bullbo->field_0x5b4 = 0;
                                    mDoAud_bgmStop(30);
                                    return;
                                }

                                i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_DAMAGE, -1);

                                if (i_this->mAnmID == 55 || i_this->mAnmID == 56 || i_this->mAnmID == 57) {
                                    i_this->mAnmID = i_this->field_0x680;
                                    i_this->field_0x680 = 0;
                                }

                                if (i_this->field_0x680 == 0) {
                                    i_this->field_0x990[3] = cM_rndF(100.0f) + 200.0f;
                                    iVar1 = i_this->mAnmID;

                                    if ((s16)(a_this->shape_angle.y - i_this->mPlayerAngleY) < 0) {
                                        anm_init(i_this, 37, 2.0f, 0, 1.0f);
                                    } else {
                                        anm_init(i_this, 38, 2.0f, 0, 1.0f);
                                    }

                                    i_this->field_0x680 = iVar1;
                                }

                                if (i_this->mAction != 13) {
                                    i_this->mAction = 13;
                                    i_this->field_0x5b4 = 0;
                                }
                                break;  
                            }

                            if (i_this->field_0x9bc != 0 && i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
                                i_this->field_0x998 = 20;
                                if (i_this->mAction == 13) {
                                    anm_init(i_this, 39, 5.0f, 2, 1.0f);
                                    i_this->field_0x5b4 = 50;
                                    i_this->field_0x990[3] = cM_rndF(20.0f) + 50.0f;
                                }
                            } else {
                                big_damage(i_this);
                            }
                        }
                    } else {
                        int iVar2 = i;
                        if (i_this->mAtInfo.mHitType == 16) {
                            iVar2 = 0;
                        }

                        small_damage(i_this, iVar2);
                    }

                    a_this->speedF = 0.0f;
                    if (i_this->field_0x698 != NULL) {
                        i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 10), 0, 1.0f, 1.0f, 0.0f, -1.0f);
                    }
                    break;
            }
        }

        for (int i = 0; i < 3; i++) {
            if (a_this->health <= 1) {
                i_this->field_0xd58[i].SetTgHitMark((CcG_Tg_HitMark)3);
            }
        }
    }
}

/* 8050FADC-8050FB34 00B15C 0058+00 1/1 0/0 0/0 .text            s_other_sub__FPvPv */
static void* s_other_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD && ((e_rd_class*)i_actor)->field_0x5b7 != 6) {
        return i_actor;
    }

    return NULL;
}

/* 8050FB34-8050FC04 00B1B4 00D0+00 1/1 0/0 0/0 .text            s_ep_sub__FPvPv */
static void* s_ep_sub(void* i_actor, void* i_data) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_Obj_Lv1Cdl00) {
        if (!fopAcM_isSwitch((fopAc_ac_c*)i_actor, fopAcM_GetParam(i_actor) & 0xFF)) {
            f32 fVar1, fVar2;
            fVar2 = ((fopAc_ac_c*)i_actor)->current.pos.x - player->current.pos.x;
            fVar1 = ((fopAc_ac_c*)i_actor)->current.pos.z - player->current.pos.z;
            if (JMAFastSqrt(fVar2 * fVar2 + fVar1 * fVar1) < NREG_F(17) + 600.0f) {
                return i_actor;
            }
        }
    }

    return NULL;
}

/* 8050FC04-80510250 00B284 064C+00 2/1 0/0 0/0 .text            e_rd_yagura__FP10e_rd_class */
static s8 e_rd_yagura(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    int frame = i_this->mpModelMorf->getFrame();
    s8 rv = 1;
    s8 bVar1 = 0;

    fpcM_Search(s_b_sub, i_this);

    switch (i_this->field_0x5b4) {
        case 0:
            if (i_this->field_0x99c != 0) {
                a_this->home.pos.y = a_this->current.pos.y;
                return 0;
            }

            rv = 0;
            bVar1 = 1;

            if (i_this->field_0x990[0] == 0) {
                anm_init(i_this, 29, 10.0f, 2, 1.0f);
                i_this->field_0x5b4 = 1;
                i_this->field_0x990[0] = cM_rndF(40.0f) + 60.0f;
            }
            break;

        case 1:
            rv = 0;
            bVar1 = 1;

            if (i_this->field_0x990[0] == 0) {
                anm_init(i_this, 64, 10.0f, 2, 1.0f);
                i_this->field_0x990[0] = cM_rndF(100.0f) + 100.0f;
                i_this->field_0x5b4 = 0;
            }
            break;

        case 5:
            i_this->field_0x9c8 = 4;

            if (i_this->field_0x990[0] == 0) {
                anm_init(i_this, 59, 5.0f, 0, 1.0f);
                i_this->field_0x5b4 = 10;
                i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_FIND_LINK_YELL, -1);
                dKy_Sound_set(a_this->current.pos, 100, fopAcM_GetID(a_this), 3);
            }
            break;

        case 10:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 57, 5.0f, 0, 1.0f);
                i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 7), 0, 5.0f, 0.9f, 0.0f, -1.0f);
                i_this->field_0x5b4 = 11;
                a_this->speedF = 0.0f;
            }
            break;

        case 11:
            i_this->field_0x9c8 = 4;

            if (frame >= 10) {
                i_this->field_0x9a2 = 1;
            }

            if (frame == 20) {
                i_this->mSound.startCreatureSound(Z2SE_OBJ_ARROW_DRAW_NORMAL, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 58, 4.0f, 2, 1.0f);
                i_this->field_0x990[0] = cM_rndF(10.0f) + 10.0f;
                i_this->field_0x5b4 = 12;
            }
            break;

        case 12:
            i_this->field_0x9c8 = 4;

            if (i_this->field_0x990[0] == 0 && i_this->field_0x9a4 == 0) {
                anm_init(i_this, 56, 1.0f, 0, 1.0f);
                i_this->field_0x698->setAnm((J3DAnmTransform*)dComIfG_getObjectRes(i_this->mResName, 10), 0, 1.0f, 1.0f, 0.0f, -1.0f);
                i_this->field_0x5b4 = 13;
            }

            i_this->field_0x9a2 = 1;
            break;

        case 13:
            if (frame <= 3) {
                i_this->field_0x9a2 = 1;
                i_this->field_0x9c8 = 4;
            }

            if (frame == 2) {
                i_this->field_0x9a3 = 1;
            }

            if (i_this->mpModelMorf->isStop()) {
                if (pl_check(i_this, 10000.0f, 0x7FFF)) {
                    i_this->field_0x5b4 = 10;
                    anm_init(i_this, 59, 5.0f, 0, 1.0f);
                    dKy_Sound_set(a_this->current.pos, 100, fopAcM_GetID(a_this), 3);
                } else {
                    i_this->field_0x5b4 = 0;
                }
            }
            break;

        case 14:
            break;
    }

    if (fabsf(i_this->mObjAcch.GetGroundH() - a_this->home.pos.y) > 10.0f) {
        i_this->mAction = 21;
        i_this->field_0x5b4 = 0;
        i_this->field_0xa0e = a_this->shape_angle.y;
        a_this->speed.y = 20.0f;
        i_this->field_0x9ec = -20.0f;
        i_this->field_0x998 = 1000;
        i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_DEATH, -1);
        a_this->health = 0;
        return 0;
    }

    if (bVar1 && pl_check(i_this, i_this->field_0x980, 0x4000) && (i_this->field_0x980 >= 8000.0f || fpcM_Search(s_ep_sub, i_this) != NULL)) {
        anm_init(i_this, 64, 4.0f, 2, 1.0f);
        i_this->field_0x990[0] = 30;
        i_this->field_0x5b4 = 5;
        if (S_find == 0 && (u8)lbl_70_bss_AE == 0 && !daPy_getPlayerActorClass()->checkBoarRide() && !dComIfGp_event_runCheck() &&
            i_this->mDemoMode == 0 && fpcM_Search(s_other_sub, i_this) != NULL) {
            i_this->mDemoMode = 1;
        }
    }

    if (rv != 0) {
        cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlayerAngleY, 4, 0x1000);
    }

    return rv;
}

/* 80510250-80510734 00B8D0 04E4+00 1/1 0/0 0/0 .text            e_rd_jyunkai__FP10e_rd_class */
static void e_rd_jyunkai(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    f32 fVar1 = 0.0f;
    s16 sVar1 = 0x4000;
    cXyz sp58, sp64;
    dPnt* points;
    s8 sVar3;

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 65, 10.0f, 2, 1.0f);
            i_this->field_0x5b4 = 1;
            points = i_this->mPath->m_points;
            sVar3 = i_this->field_0xb00;
            i_this->field_0x5c0.x = points[sVar3].m_position.x;
            i_this->field_0x5c0.y = points[sVar3].m_position.y;
            i_this->field_0x5c0.z = points[sVar3].m_position.z;
            // fallthrough
        case 1:
            fVar1 = l_HIO.movement_speed;
            sp58 = i_this->field_0x5c0 - a_this->current.pos;
            i_this->field_0x5cc = cM_atan2s(sp58.x, sp58.z);

            if (sp58.abs() < 50.0f) {
                i_this->field_0xb00 += i_this->field_0xb01;
                if (i_this->field_0xb00 >= (i_this->mPath->m_num & 0xFF)) {
                    if ((i_this->mPath->m_closed & 1) != 0) {
                        i_this->field_0xb00 = 0;
                    } else {
                        i_this->field_0xb01 = 0xFF;
                        i_this->field_0xb00 = i_this->mPath->m_num - 2;
                    }
                } else if (i_this->field_0xb00 < 0) {
                    i_this->field_0xb01 = 1;
                    i_this->field_0xb00 = 1;
                }

                i_this->field_0x5b4 = 2;
                i_this->field_0x990[0] = cM_rndF(100.0f) + 100.0f;
                anm_init(i_this, 29, 10.0f, 2, 1.0f);
            }
            break;
            
        case 2:
            sVar1 = 0x6000;

            if (i_this->field_0x990[0] == 0) {
                i_this->field_0x5b4 = 0;
            }
            break;

        case 10:
            anm_init(i_this, 59, 5.0f, 0, 1.0f);
            i_this->field_0x5b4 = 11;
            dKy_Sound_set(a_this->current.pos, 100, fopAcM_GetID(a_this), 3);
            S_find = 20;
            break;

        case 11:
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlayerAngleY, 2, 0x800);
            
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 3;
                i_this->field_0x5b4 = -10;
                i_this->field_0x990[0] = 60;
                return;
            }
    }

    if (fVar1) {
        cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x5cc, 8, 0x400);
        s16 sVar2 = a_this->current.angle.y - i_this->field_0x5cc;
        if (sVar2 > 0x400 || sVar2 < -0x400) {
            fVar1 = 0.0f;
        }
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 3.0f);

    f32 fVar2 = i_this->field_0x980;
    BOOL bVar1 = FALSE;

    if (i_this->field_0x9a1 == 1|| S_find != 0) {
        if (i_this->field_0x9a1 == 1) {
            bVar1 = TRUE;
        }

        fVar2 = 10000.0f;
        sVar1 = 0x7FFF;
    }

    if (i_this->field_0x5b4 < 10) {
        if (bVar1) {
            i_this->field_0x5b4 = 2;
            i_this->field_0x990[0] = cM_rndF(100.0f) + 100.0f;
            anm_init(i_this, 29, 10.0f, 2, 1.0f);
        } else if ((i_this->field_0x970 & 7) == 0 && pl_check(i_this, fVar2, sVar1)) {
            if (S_find == 0) {
                i_this->field_0x5b4 = 10;
            } else {
                i_this->mAction = 3;
                i_this->field_0x5b4 = -10;
                i_this->field_0x990[0] = 60;
            }
        }
    }
}

/* 80510734-80510B34 00BDB4 0400+00 2/1 0/0 0/0 .text            e_rd_sleep__FP10e_rd_class */
static void e_rd_sleep(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    int frame = i_this->mpModelMorf->getFrame();
    f32 fVar1 = i_this->field_0x980;
    s16 sVar1 = 0x4000;
    BOOL bVar1 = FALSE;

    if (i_this->field_0x9a1 == 1 || S_find != 0) {
        if (i_this->field_0x9a1 == 1) {
            bVar1 = TRUE;
        } else if ((i_this->field_0x970 & 15) == 0) {
            bVar1 = TRUE;
        }

        fVar1 = 5000.0f;
        sVar1 = 0x7FFF;
    }

    s8 cVar1 = 0;

    switch (i_this->field_0x5b4) {
        case 0:
            i_this->field_0x990[0] = cM_rndF(100.0f) + 200.0f;
            anm_init(i_this, 63, 10.0f, 2, 1.0f);
            i_this->field_0x5b4 = 1;
            break;

        case 1:
            if (bVar1 || i_this->field_0x990[0] == 0) {
                anm_init(i_this, 61, 5.0f, 0, 1.0f);
                i_this->field_0x5b4 = 2;
            }
            break;

        case 2:
            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0x5b4 = 0;
            }

            if (fopAcM_GetRoomNo(a_this) == 0) {
                if (bVar1) {
                    wb_check(i_this, sVar1);
                }

                if (i_this->mPlayerDistance > 600.0f) {
                    return;
                }
            }

            if (frame > 60 && frame < 200 && (((i_this->field_0x970 & 7) == 0) || bVar1) && pl_check(i_this, fVar1, sVar1)) {
                cVar1 = 1;
            }
            break;

        case 5:
            if (i_this->field_0x990[0] == 0) {
                cVar1 = 1;
            }
            break;

        case 10:
            anm_init(i_this, 59, 5.0f, 0, 1.0f);
            i_this->field_0x5b4 = 11;
            dKy_Sound_set(a_this->current.pos, 100, fopAcM_GetID(a_this), 3);
            S_find = 20;
            break;

        case 11:
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlayerAngleY, 2, 0x800);

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 3;
                i_this->field_0x5b4 = -10;
                i_this->field_0x990[0] = 60;
                return;
            }
    }

    if (i_this->field_0x5b4 < 5) {
        for (int i = 0; i <= 2; i++) {
            if (i_this->field_0xd58[i].ChkCoHit()) {
                if (daPy_getPlayerActorClass() == dCc_GetAc(i_this->field_0xd58[i].GetCoHitObj()->GetAc())) {
                    cVar1 = 2;
                    break;
                }
            }
        }
    }

    if (i_this->field_0x5b4 < 10) {
        if (cVar1 == 1) {
            if (S_find == 0) {
                i_this->field_0x5b4 = 10;
            } else {
                i_this->mAction = 3;
                i_this->field_0x5b4 = -10;
                i_this->field_0x990[0] = 60;
                OS_REPORT("......RD FIND 1!!!\n");
            }
        } else if (cVar1 == 2) {
            i_this->field_0x5b4 = 5;
            anm_init(i_this, 29, 7.0f, 2, 1.5f);
            i_this->field_0x990[0] = cM_rndF(10.0f) + 20.0f;
            OS_REPORT("......RD FIND 2!!!\n");
        }
    }

    if (i_this->field_0x980 >= 9900.0f) {
        i_this->mAction = 24;
        i_this->field_0x5b4 = 0;
        i_this->field_0x990[0] = 0;
    }
}

/* 80519334-80519338 0001FC 0004+00 2/2 0/0 0/0 .bss             rd_count */
static int rd_count;

/* 80510B34-80510B98 00C1B4 0064+00 1/1 0/0 0/0 .text            s_tag_sub__FPvPv */
static void* s_tag_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD && ((e_rd_class*)i_actor)->field_0x5ba != 0) {
        rd_count++;
    }

    return NULL;
}

/* 80510B98-80510D2C 00C218 0194+00 1/1 0/0 0/0 .text            e_rd_tag__FP10e_rd_class */
static void e_rd_tag(e_rd_class* i_this) {
    // FAKEMATCH
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    i_this->field_0x9ad = 0;
    i_this->field_0x998 = 10;

    if (i_this->field_0x5b4) {
        // Fakematch to prevent the compiler from optimizing out the unused comparison
        a_this->speedF = a_this->speedF;
    }

    if (S_find != 0 && (i_this->field_0x970 & 31) == 0 && !dComIfGp_event_runCheck() && i_this->mPlayerDistance < 3000.0f && i_this->mPlayerDistance > 500.0f && 
        i_this->field_0x5bb != 0 && !fopAcM_otherBgCheck(a_this, player)) {
        rd_count = 0;
        fpcM_Search(s_tag_sub, i_this);

        if (rd_count < 6) {
            csXyz cStack_40(0, i_this->mPlayerAngleY, 0);
            cXyz sp38;
            sp38.x = cM_rndFX(200.0f) + a_this->home.pos.x;
            sp38.y = a_this->home.pos.y;
            sp38.z = cM_rndFX(200.0f) + a_this->home.pos.z;

            fpc_ProcID i_parameters;
            if ((rd_count & 3) == 3) {
                i_parameters = 0xFF011323;
            } else {
                i_parameters = 0xFF011123;
            }
            fopAcM_createChild(PROC_E_RD, fopAcM_GetID(a_this), i_parameters, &sp38, fopAcM_GetRoomNo(a_this), &cStack_40, NULL, -1, NULL);
        }
    }
}

/* 80510D2C-80510DEC 00C3AC 00C0+00 1/1 0/0 0/0 .text            e_rd_reg__FP10e_rd_class */
static void e_rd_reg(e_rd_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    i_this->field_0x9ad = 0;
    i_this->field_0x998 = 10;

    if (i_this->field_0xafb == 0) {
        i_this->mAction = 7;
        i_this->field_0x5b4 = 1;
        i_this->field_0x980 = 0.0f;
        return;
    }

    if (i_this->field_0x5b4 != 0) {
        return;
    }

    if (i_this->field_0x5b7 != 14) {
        return;
    }

    if (i_this->mDemoMode != 0) {
        return;
    }

    f32 fVar1, fVar2;
    fVar1 = player->current.pos.x - -5551.0f;
    fVar2 = player->current.pos.z - 5525.0f;
    if (JMAFastSqrt(fVar1 * fVar1 + fVar2 * fVar2) < 600.0f) {
        i_this->mDemoMode = 20;
    }
}

/* 80510DEC-80512914 00C46C 1B28+00 2/1 0/0 0/0 .text            action__FP10e_rd_class */
static void action(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* actor = get_pla(a_this);
    cXyz sp25c, sp268;

    i_this->field_0x9c8 = 0;

    if (actor == dComIfGp_getPlayer(0)) {
        i_this->mPlayerDistance = fopAcM_searchPlayerDistance(a_this);
        if (daPy_getPlayerActorClass()->checkHorseRide()) {
            i_this->mPlayerDistance -= BREG_F(17) + 100.0f;
        }

        i_this->mPlayerAngleY = fopAcM_searchPlayerAngleY(a_this);
    } else {
        sp25c = actor->current.pos - a_this->current.pos;
        i_this->mPlayerDistance = sp25c.abs();
        i_this->mPlayerAngleY = cM_atan2s(sp25c.x, sp25c.z);
        i_this->field_0x980 = NREG_F(7) + 10000.0f;
    }

    if (data_80519200 != 0) {
        if (i_this->field_0x9a0 == 0) {
            // dScnKy_env_light_c* kankyo = dKy_getEnvlight();
            int iVar1 = dKy_getEnvlight()->daytime / 15.0f;
            if (iVar1 >= 6 && iVar1 <= 17) {
                i_this->field_0x980 = 10000.0f;
            }
        } else {
            i_this->field_0x9a0--;
        }
    }

    s16 sVar1 = i_this->mAction;
    damage_check(i_this);
    if (sVar1 == 11 && i_this->mAction != 11) {
        e_wb_class* bullbo_p = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);
        if (bullbo_p != NULL && bullbo_p->mActionID == 1) {
            bullbo_p->mActionID = 0;
        }
    }

    bool cVar1 = i_this->field_0x5ba;
    s8 cVar2 = 0;
    s8 bVar1 = 1;
    s8 cVar3 = 0;
    a_this->offHeadLockFlg();

    switch (i_this->mAction) {
        case ACTION_NORMAL:
            e_rd_normal(i_this);
            cVar3 = 1;
            break;

        case ACTION_FIGHT_RUN:
            e_rd_fight_run(i_this);
            cVar2 = 1;
            break;

        case ACTION_FIGHT:
            e_rd_fight(i_this);
            cVar2 = 1;
            break;

        case ACTION_BOW_RUN:
            e_rd_bow_run(i_this);
            cVar2 = 1;
            break;

        case ACTION_BOW:
            e_rd_bow(i_this);
            cVar2 = 1;
            break;

        case ACTION_BOW2:
            cVar3 = e_rd_bow2(i_this);
            cVar2 = 1;
            break;

        case ACTION_BOW_IKKI:
            e_rd_bow_ikki(i_this);
            bVar1 = 0;
            break;

        case ACTION_AVOID:
            e_rd_avoid(i_this);
            break;

        case ACTION_WB_SEARCH:
            e_rd_wb_search(i_this);
            break;

        case ACTION_WB_RIDE:
            e_rd_wb_ride(i_this);
            cVar1 = 0;
            break;

        case ACTION_WB_RUN:
            if (i_this->field_0x129a != 0) {
                e_rd_wb_run_B(i_this);
            } else {
                e_rd_wb_run(i_this);
            }
            cVar1 = 0;
            break;

        case ACTION_WB_BJUMP:
            e_rd_wb_bjump(i_this);
            cVar1 = 0;
            break;

        case ACTION_BOMB:
            e_rd_bomb_action(i_this);
            break;

        case ACTION_S_DAMAGE:
            e_rd_s_damage(i_this);
            break;

        case ACTION_DAMAGE:
            e_rd_damage(i_this);
            break;

        case ACTION_DROP:
            e_rd_drop(i_this);
            break;

        case ACTION_A_DAMAGE:
            e_rd_a_damage(i_this);
            break;

        case ACTION_STAND:
            e_rd_stand(i_this);
            cVar3 = 1;
            break;

        case ACTION_COMMANDER:
            e_rd_commander(i_this);
            cVar2 = 1;
            break;

        case ACTION_BOW3:
            cVar3 = e_rd_bow3(i_this);
            cVar2 = 1;
            break;

        case ACTION_EXCITE:
            e_rd_excite(i_this);
            break;

        case ACTION_WATER:
            e_rd_water(i_this);
            bVar1 = 0;
            break;

        case ACTION_KIBA_START:
            e_rd_kiba_start(i_this);
            cVar1 = 0;
            break;

        case ACTION_KIBA_END:
            e_rd_kiba_end(i_this);
            cVar1 = 0;
            break;

        case ACTION_IKKI_END:
            e_rd_ikki_end(i_this);
            break;

        case ACTION_IKKI2_START:
            e_rd_ikki2_start(i_this);
            break;

        case ACTION_IKKI2_END:
            e_rd_ikki2_end(i_this);
            break;

        case ACTION_LV9_END:
            e_rd_lv9_end(i_this);
            break;

        case ACTION_YAGURA:
            cVar2 = e_rd_yagura(i_this);
            break;

        case ACTION_JYUNKAI:
            e_rd_jyunkai(i_this);
            break;

        case ACTION_SLEEP:
            e_rd_sleep(i_this);
            break;

        case ACTION_TAG:
            e_rd_tag(i_this);
            break;

        case ACTION_REG:
            e_rd_reg(i_this);
    }

    if (cVar3 != 0 && otoCheck(a_this, 1500.0f)) {
        SND_INFLUENCE* sound = dKy_Sound_get();
        if (!pl_check(i_this, 500.0f, 0x7FFF)) {
            sp25c = sound->position - a_this->current.pos;
            if (sp25c.abs() < sound->field_0xc * 120) {
                i_this->field_0x974 = i_this->mAction;
                i_this->mAction = 27;
                i_this->field_0x5b4 = 0;
                S_find_pos = sound->position;
            }
        }
    }

    if (bVar1) {
        dBgS_ObjGndChk obj_gnd_chk;
        dBgS_ObjGndChk_Spl spl_chk;
        sp25c = a_this->current.pos;
        sp25c.y += 150.0f;
        spl_chk.SetPos(&sp25c);
        obj_gnd_chk.SetPos(&sp25c);

        i_this->field_0x984 = dComIfG_Bgsp().GroundCross(&spl_chk);

        f32 fVar3 = i_this->field_0x984 - dComIfG_Bgsp().GroundCross(&obj_gnd_chk);
        if (a_this->current.pos.y < i_this->field_0x984 && fVar3 > 100.0f) {
            i_this->mAction = 29;
            if (dComIfG_Bgsp().GetPolyAtt0(spl_chk) == 6) {
                i_this->field_0x5b4 = 1;
            } else {
                i_this->field_0x5b4 = 0;
            }

            a_this->current.pos.y = i_this->field_0x984;
        }
    }

    if (cVar2 != 0) {
        i_this->mSound.setLinkSearch(true);
        if (data_80519200 != 0 && (i_this->field_0x5b7 == 6 || i_this->field_0x5b7 == 7 || i_this->field_0x5b7 == 8)) {
            S_find = 20;
        }
    } else {
        i_this->mSound.setLinkSearch(false);
    }

    if (cVar1) {
        if (data_80519200 != 0) {
            if (!dComIfGp_event_runCheck() && i_this->field_0x99c == 0 && i_this->mPlayerDistance > 700.0f && i_this->field_0x5bb != 0) {
                fopAcM_delete(a_this);
            }
        } else if (daPy_getPlayerActorClass()->checkHorseRide() && dComIfGp_getHorseActor()->speedF >= 30.0f && i_this->field_0x5bb != 0) {
            fopAcM_delete(a_this);
        }
    }

    cLib_addCalcAngleS2(&a_this->shape_angle.y, a_this->current.angle.y, 2, 0x1000);
    cLib_addCalcAngleS2(&a_this->shape_angle.x, a_this->current.angle.x, 2, 0x1000);
    cLib_addCalcAngleS2(&a_this->shape_angle.z, a_this->current.angle.z, 2, 0x1000);


    if (i_this->field_0x9bc == 0) {
        a_this->attention_info.distances[2] = 3;
        if (i_this->field_0x9ec) {
            cMtx_YrotS(*calc_mtx, i_this->field_0xa0e);
            if (i_this->field_0xaf0 == 0) {
                sp25c.z = i_this->field_0x9ec;
            } else {
                sp25c.z = 0.0f;
                a_this->speed.y = 0.0f;
            }

            a_this->gravity = -(l_HIO.jump_g - 1.0f);
        } else {
            cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
            sp25c.z = a_this->speedF;
            a_this->gravity = -5.0f;
        }
        sp25c.x = 0.0f;
        sp25c.y = 0.0f;
        MtxPosition(&sp25c, &sp268);

        a_this->speed.x = sp268.x;
        a_this->speed.z = sp268.z;
        a_this->current.pos += a_this->speed;
        a_this->speed.y += a_this->gravity;
        if (a_this->speed.y < -100.0f) {
            a_this->speed.y = -100.0f;
        }

        if (i_this->field_0x9ad != 0) {
            cXyz* pcVar1 = i_this->mStts.GetCCMoveP();
            if (pcVar1 != NULL) {
                a_this->current.pos.x += pcVar1->x;
                a_this->current.pos.z += pcVar1->z;
            }
        }

        cLib_addCalc0(&i_this->field_0x9c0, 1.0f, 3.0f);
        
        if (i_this->field_0x9f0 > 0.1f) {
            sp25c.x = 0.0f;
            sp25c.y = 0.0f;
            sp25c.z = -i_this->field_0x9f0;
            cMtx_YrotS(*calc_mtx, i_this->field_0x9f4);
            MtxPosition(&sp25c, &sp268);
            a_this->current.pos += sp268;
            cLib_addCalc0(&i_this->field_0x9f0, 1.0f, 7.0f);
        }
    } else {
        a_this->attention_info.distances[2] = 34;
        e_wb_class* bullbo = (e_wb_class*)fopAcM_SearchByID(i_this->mWbActorID);
        if (bullbo == NULL) {
            i_this->mAction = 0;
            i_this->field_0x5b4 = 0;
            return;
        }

        a_this->speedF = bullbo->speedF;
        if (daPy_getPlayerActorClass()->checkHorseRide() && dComIfGp_getHorseActor()->speedF >= 30.0f) {
            a_this->speed = bullbo->speed;
            a_this->speed.y = 0.0f;
        } else {
            a_this->speed.set(0.0f, 0.0f, 0.0f);
        }

        if (i_this->field_0x9be == 1) {
            MTXCopy(bullbo->mpModelMorf->getModel()->getAnmMtx(bullbo->field_0x688 + 15), *calc_mtx);
        } else {
            MTXCopy(bullbo->mpModelMorf->getModel()->getAnmMtx(bullbo->field_0x688 + 16), *calc_mtx);
        }

        if (i_this->field_0x129a != 0) {
            sp25c.set(0.0f, BREG_F(4) + -45.0f, 0.0f);
        } else {
            sp25c.set(0.0f, BREG_F(4) + -65.0f, 0.0f);
        }
        MtxPosition(&sp25c, &i_this->field_0x9b0);

        if (i_this->field_0x9bc == 2) {
            a_this->current.pos = i_this->field_0x9b0;
            a_this->current.angle = bullbo->shape_angle;
            a_this->shape_angle = a_this->current.angle;

            sp25c.x = 10.0f;
            MtxPosition(&sp25c, &sp268);
            sp25c = sp268 - i_this->field_0x9b0;
            a_this->current.angle.x += (s16)-cM_atan2s(sp25c.y, JMAFastSqrt(sp25c.x * sp25c.x + sp25c.z * sp25c.z));
            a_this->shape_angle.x = a_this->current.angle.x;

            if (i_this->field_0x9be == 1) {
                bullbo->field_0x1434 = fopAcM_GetID(a_this);
            }
        } else {
            sp25c = i_this->field_0x9b0 - a_this->current.pos;
            cMtx_YrotS(*calc_mtx, cM_atan2s(sp25c.x, sp25c.z));
            cMtx_XrotM(*calc_mtx, -cM_atan2s(sp25c.y, JMAFastSqrt(sp25c.x * sp25c.x + sp25c.z * sp25c.z)));
            sp25c.x = 0.0f;
            sp25c.y = 0.0f;
            sp25c.z = TREG_F(3) + 20.0f;
            MtxPosition(&sp25c, &sp268);

            a_this->current.pos += sp268;
            sp25c = i_this->field_0x9b0 - a_this->current.pos;
            if (sp25c.abs() < 30.0f || i_this->field_0x990[3] == 0) {
                i_this->field_0x9bc = 2;
            }

            cLib_addCalcAngleS2(&a_this->current.angle.y, bullbo->shape_angle.y, 4, 0x800);
        }

        i_this->field_0x9c0 += i_this->field_0x9c4;
        i_this->field_0x9c4 -= 4.5f;

        if (i_this->field_0x9c0 <= 0.0f) {
            i_this->field_0x9c0 = 0.0f;
            i_this->field_0x9c4 = 0.0f;
        }
    }

    s16 sVar2 = 0;
    i_this->field_0x9a4 = 0;
    cXyz sp274;
    s16 sVar3 = 0x1000;

    if (i_this->field_0x9c8 == -1) {
        cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
        sp25c.x = 0.0f;
        sp25c.y = KREG_F(8) + 70.0f;
        sp25c.z = 50.0f;
        MtxPosition(&sp25c, &sp274);

        sp274 += a_this->current.pos;
        i_this->field_0x9c8 = 2;
        sVar3 = KREG_S(7) + 0x800;
    } else if (i_this->field_0x9c8 >= 11) {
        i_this->field_0x9c8 -= 10;
        sp274 = i_this->field_0x9d4;
    } else {
        sp274 = actor->eyePos;
    }

    if (i_this->field_0x9bc == 2) {
        sVar3 = 0x1000;
    }

    if (i_this->field_0x9c8 != 0) {
        sp25c = sp274 - a_this->current.pos;
        sp25c.y += TREG_F(2) + -150.0f;
        s16 sVar4 = cM_atan2s(sp25c.x, sp25c.z) - a_this->shape_angle.y;
        sVar2 = a_this->shape_angle.x + cM_atan2s(sp25c.y, JMAFastSqrt(sp25c.x * sp25c.x + sp25c.z * sp25c.z));
        if (i_this->field_0x9c8 <= 2) {
            if (sVar4 > 0x3E80) {
                sVar4 = 16000;
            } else if (sVar4 < -16000) {
                sVar4 = -16000;
            }

            if (sVar2 > 0x3E80) {
                sVar2 = 16000;
            } else if (sVar2 < -16000) {
                sVar2 = -16000;
            }

            cLib_addCalcAngleS2(&i_this->field_0x9ca, sVar4, 2, sVar3);
        } else if (i_this->field_0x9c8 == 5) {
            if ((i_this->field_0x970 & 15) == 0 && cM_rndF2(1.0f) < 0.3f) {
                i_this->field_0x9d0 = cM_rndFX2(2000.0f);
            }
        } else {
            sVar1 = XREG_S(5) + 30000;
            if (sVar1 < sVar4) {
                sVar4 = sVar1;
                i_this->field_0x9a4 = 1;
            } else if (sVar4 < -(XREG_S(6) + 25000)) {
                sVar4 = -(XREG_S(6) + 25000);
                i_this->field_0x9a4 = 1;
            }

            cLib_addCalcAngleS2(&i_this->field_0x9ca, sVar4 / 2, 2, 0x1000);
            sVar2 = -cM_atan2s(sp25c.y, JMAFastSqrt(sp25c.x * sp25c.x + sp25c.z * sp25c.z));
            if (sVar2 > 0x2AF8) {
                sVar2 = 11000;
                i_this->field_0x9a4 = 1;
            } else if (sVar2 < -8000) {
                sVar2 = -8000;
                i_this->field_0x9a4 = 1;
            }
        }
    } else {
        cLib_addCalcAngleS2(&i_this->field_0x9ca, 0, 2, 0x1000);
        i_this->field_0x9d0 = 0;
    }

    cLib_addCalcAngleS2(&i_this->field_0x9cc, sVar2, 2, sVar3);
    cLib_addCalcAngleS2(&i_this->field_0x9ce, i_this->field_0x9d0, 4, 0x500);

    if (fabsf(i_this->field_0xa2c) > 1.0f) {
        i_this->field_0xa74[1].x = (BREG_F(0) + 70.0f) * i_this->field_0xa2c * cM_scos(i_this->field_0xa30);
        i_this->field_0xa74[2].x += i_this->field_0xa74[1].x;
        cLib_addCalc0(&i_this->field_0xa2c, 1.0f, 3.0f);
        i_this->field_0xa30 += 4000;
    }

    if (fabsf(i_this->field_0xa24) > 1.0f) {
        i_this->field_0xa74[0].x = (BREG_F(2) + 70.0f) * i_this->field_0xa24 * cM_scos(i_this->field_0xa28);
        cLib_addCalc0(&i_this->field_0xa24, 1.0f, 3.0f);
        i_this->field_0xa28 += 4000;
    }

    if (a_this->speed.y < 0.0f && i_this->mObjAcch.ChkGroundHit()) {
        cLib_addCalc0(&i_this->field_0xa2c, 1.0f, 30.0f);
        cLib_addCalc0(&i_this->field_0xa24, 1.0f, 30.0f);
    }

    if (i_this->field_0x9ec) {
        sVar1 = i_this->field_0xa0e - a_this->shape_angle.y;
        i_this->field_0xa74[3].y = 0x4000 - sVar1;
        if (i_this->field_0xa74[3].y > 0x1770) {
            i_this->field_0xa74[3].y = 6000;
        } else if (i_this->field_0xa74[3].y < -12000) {
            i_this->field_0xa74[3].y = -12000;
        }

        i_this->field_0xa74[4].y = 0x4000 - sVar1;
        if (i_this->field_0xa74[4].y > 0x3A98) {
            i_this->field_0xa74[4].y = 15000;
        } else if (i_this->field_0xa74[4].y < 0) {
            i_this->field_0xa74[4].y = 0;
        }

        i_this->field_0xa74[5].y = sVar1 + 0x4000;
        if (i_this->field_0xa74[5].y > 0x1770) {
            i_this->field_0xa74[5].y = 6000;
        } else if (i_this->field_0xa74[5].y < -12000) {
            i_this->field_0xa74[5].y = -12000;
        }

        i_this->field_0xa74[6].y = sVar1 + 0x4000;
        if (i_this->field_0xa74[6].y > 0x3A98) {
            i_this->field_0xa74[6].y = 15000;
        } else if (i_this->field_0xa74[6].y < 0) {
            i_this->field_0xa74[6].y = 0;
        }

        cMtx_YrotS(*calc_mtx, sVar1);
        sp25c.x = 0.0f;
        sp25c.y = 0.0f;
        sp25c.z = 12000.0f;
        MtxPosition(&sp25c, &sp268);
        i_this->field_0xae6 = -sp268.x;
        i_this->field_0xae4 = -sp268.z * 1.3f;

        if (i_this->field_0xae4 > 10000) {
            i_this->field_0xae4 = 10000;
        }
    }

    static s16 j_spd[11] = {
        0x4000, 0x4000, 0x4000,
        0x1000, 0x1000, 0x1000,
        0x1000, 0x4000, 0x4000,
        0x4000, 0x4000,
    };

    for (int i = 0; i < 11; i++) {
        cLib_addCalcAngleS2(&i_this->field_0xa32[i].x, i_this->field_0xa74[i].x, 2, j_spd[i]);
        cLib_addCalcAngleS2(&i_this->field_0xa32[i].y, i_this->field_0xa74[i].y, 2, j_spd[i]);
        cLib_addCalcAngleS2(&i_this->field_0xa32[i].z, i_this->field_0xa74[i].z, 2, j_spd[i]);
        i_this->field_0xa74[i].z = 0;
        i_this->field_0xa74[i].x = 0;

        if (i >= 3 && i <= 6) {
            if (i_this->field_0xacc[i] == 0) {
                if (i == 4 || i == 6) {
                    sVar3 = 0x600;
                } else {
                    sVar3 = 0x800;
                }
                cLib_addCalcAngleS2(&i_this->field_0xa74[i].y, 0, 1, sVar3);
            } else {
                i_this->field_0xacc[i]--;
            }
        } else {
            i_this->field_0xa74[i].y = 0;
        }

        if (i >= 3) {
            i_this->field_0xabc[i] = i_this->field_0xab8 * cM_scos(i_this->field_0x970 * (BREG_S(0) + 4000) + i * (BREG_S(1) + 20000));
        }
    }

    cLib_addCalc0(&i_this->field_0xab8, 1.0f, 100.0f);
    cLib_addCalcAngleS2(&i_this->field_0xae0, i_this->field_0xae6, 2, 0x800);
    cLib_addCalcAngleS2(&i_this->field_0xade, i_this->field_0xae4, 2, 0x800);
    i_this->field_0xae4 = 0;
    i_this->field_0xae6 = 0;
    s16 sVar4 = 0;
    s16 sVar5 = 0;

    if (i_this->field_0xa1e != 0) {
        i_this->field_0xa1e--;
        if (i_this->field_0xa0c != 0) {
            Vec sp280;
            cXyz sp28c, sp298;
            dBgS_GndChk gnd_chk;
            f32 fVar2 = 75.0f;

            MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(1), *calc_mtx);
            sp25c.set(0.0f, 0.0f, 0.0f);
            MtxPosition(&sp25c, &sp28c);
            sp28c.y += 100.0f;
            sp28c.y += 100.0f;
            gnd_chk.SetPos(&sp28c);
            sp28c.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

            if (sp28c.y != -1000000000.0f) {
                sp280.x = sp28c.x;
                sp280.y = sp28c.y + 100.0f;
                sp280.z = sp28c.z + fVar2;
                gnd_chk.SetPos(&sp280);
                sp280.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

                if (sp280.y != -1000000000.0f) {
                    sVar5 = -cM_atan2s(sp280.y - sp28c.y, sp280.z - sp28c.z);
                    if (sVar5 > 0x3000 || sVar5 < -0x3000) {
                        sVar5 = 0;
                    }
                }

                sp280.x = sp28c.x + fVar2;
                sp280.y = sp28c.y + 100.0f;
                sp280.z = sp28c.z;
                gnd_chk.SetPos(&sp280);
                sp280.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

                if (sp280.y != -1000000000.0f) {
                    sVar4 = cM_atan2s(sp280.y - sp28c.y, sp280.x - sp28c.x);
                    if (sVar4 > 0x3000 || sVar4 < -0x3000) {
                        sVar4 = 0;
                    }
                }
            }

            dBgS_LinChk lin_chk;
            cXyz sp2a4, start, end;

            start = a_this->current.pos;
            start.y += JREG_F(5) + 30.0f;
            J3DModel* model = i_this->mpModelMorf->getModel();
            sp2a4.set(0.0f, 0.0f, 0.0f);
            MTXCopy(model->getAnmMtx(BREG_S(8) + 13), *calc_mtx);
            MtxPosition(&sp2a4, &end);
            end.y += JREG_F(6) + 30.0f;

            lin_chk.Set(&start, &end, a_this);
            if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                sp2a4 = start - end;
                cMtx_YrotS(*calc_mtx, cM_atan2s(sp2a4.x, sp2a4.z));
                sp2a4.x = 0.0f;
                sp2a4.y = 0.0f;
                sp2a4.z = TREG_F(11) + 50.0f;
                MtxPosition(&sp2a4, &sp268);
                a_this->current.pos += sp268;
            }

            i_this->field_0xa18 = sVar5;
            i_this->field_0xa1c = sVar4;
        }
    }

    cLib_addCalcAngleS2(&i_this->field_0xa12, i_this->field_0xa18, 1, 0x400);
    cLib_addCalcAngleS2(&i_this->field_0xa16, i_this->field_0xa1c, 1, 0x400);

    if (i_this->field_0x129c != 0) {
        i_this->field_0x129c--;
        if (i_this->field_0x129c == 0) {
            dComIfGp_particle_set(0x15E, &a_this->eyePos, &a_this->shape_angle, NULL);
        }
    }

    if (i_this->field_0x125d != 0) {
        MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(11), *calc_mtx);
        sp25c.set(0.0f, 0.0f, 0.0f);
        MtxPosition(&sp25c, &sp268);

        dBgS_ObjGndChk_Spl spl_chk_2;
        sp25c = sp268;
        sp25c.y += 100.0f;
        spl_chk_2.SetPos(&sp25c);
        if (fabsf(dComIfG_Bgsp().GroundCross(&spl_chk_2) - sp268.y) < 50.0f) {
            static u16 w_eff_name[3] = {
                0x8258,
                0x8259,
                0x825A,
            };

            cXyz sp2c8(1.0f, 1.0f, 1.0f);
            csXyz cStack_330(0, 0, 0);
            for (int i = 0; i < 3; i++) {
                i_this->field_0x1268[i] = dComIfGp_particle_set(i_this->field_0x1268[i], w_eff_name[i], &sp268, &a_this->tevStr, 
                                                                &cStack_330, &sp2c8, 0xFF, 0, -1, NULL, NULL, NULL);
            }
        } else {
            fopAcM_effSmokeSet1(&i_this->field_0x1260, &i_this->field_0x1264, &sp268, NULL, 1.3f, &a_this->tevStr, 1);
        }

        i_this->field_0x125d = 0;
    }

    cXyz sp2d4(1.3f, 1.3f, 1.3f);
    setMidnaBindEffect(a_this, &i_this->mSound, &a_this->eyePos, &sp2d4);
}

/* 80512914-80512B40 00DF94 022C+00 1/1 0/0 0/0 .text            fire_eff_set__FP10e_rd_class */
static void fire_eff_set(e_rd_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp48, sp54;
    int iVar1;
    u16 uVar1[2];
    f32 fVar1;

    if (i_this->field_0x5bc == 4) {
        iVar1 = 2;
        uVar1[0] = 0x1DF;
        uVar1[1] = 0x1DE;
        i_this->mSound.startCreatureSoundLevel(Z2SE_OBJ_BOMB_IGNITION, 0, -1);
        fVar1 = NREG_F(18) + 2.0f;
        sp48.x = NREG_F(0) + 62.0f;
        sp48.y = NREG_F(1) + 22.0f;
        sp48.z = NREG_F(2) + -50.0f;
    } else {
        iVar1 = 1;
        uVar1[0] = 0x8113;
        i_this->mSound.startCreatureSoundLevel(Z2SE_OBJ_ARROW_FIRE_READY, 0, -1);
        fVar1 = 1.0f;
        sp48.x = NREG_F(0) + 90.0f;
        sp48.y = NREG_F(1) + 10.0f;
        sp48.z = NREG_F(2) + -60.0f;
    }

    MtxPosition(&sp48, &sp54);
    i_this->field_0x1288 = sp54 - i_this->field_0x127c;
    i_this->field_0x1288 *= 0.9f;
    i_this->field_0x127c = sp54;

    cXyz sp60(fVar1, fVar1, fVar1);
    for (int i = 0 ; i < iVar1; i++) {
        i_this->field_0x1274[i] = dComIfGp_particle_set(i_this->field_0x1274[i], uVar1[i], &sp54, &a_this->shape_angle, &sp60);

        if (i == 0) {
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(i_this->field_0x1274[i]);
            if (emitter != NULL) {
                emitter->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
                emitter->setUserWork((u32)&i_this->field_0x1288);
            }
        }
    }
}

/* 80512B40-80512BB0 00E1C0 0070+00 1/1 0/0 0/0 .text            s_wb_sub2__FPvPv */
static void* s_wb_sub2(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_WB && target_info_count < 2) {
        target_info[target_info_count] = (fopAc_ac_c*)i_actor;
        target_info_count++;
    }

    return NULL;
}

/* 80512BB0-80512C10 00E230 0060+00 1/1 0/0 0/0 .text            s_lv9dn_sub__FPvPv */
static void* s_lv9dn_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_DN && ((e_dn_class*)i_actor)->field_0x10d8 != 0) {
        ((e_dn_class*)i_actor)->field_0x10d8 = 0;
        return i_actor;
    }

    return NULL;
}

/* 80512C10-80512C70 00E290 0060+00 1/1 0/0 0/0 .text            s_lv9dn_sub2__FPvPv */
static void* s_lv9dn_sub2(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_DN && ((e_dn_class*)i_actor)->field_0x10d8 == 0) {
        ((e_dn_class*)i_actor)->field_0x10d8 = 1;
        ((e_dn_class*)i_actor)->mMode = 0;
    }
    
    return NULL;
}

/* 80512C70-80512CBC 00E2F0 004C+00 1/1 0/0 0/0 .text            s_lv9dn_sub3__FPvPv */
static void* s_lv9dn_sub3(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_DN) {
        ((e_dn_class*)i_actor)->mMode = 2;
    }

    return NULL;
}

/* 80512CBC-80512D14 00E33C 0058+00 1/1 0/0 0/0 .text            s_lv9rd_sub__FPvPv */
static void* s_lv9rd_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD && ((e_rd_class*)i_actor)->field_0xafb != 0) {
        ((e_rd_class*)i_actor)->field_0xafb = 0;
    }

    return NULL;
}

/* 80519338-8051933C 000200 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80519338;

/* 80512D14-80512E08 00E394 00F4+00 1/1 0/0 0/0 .text            s_lv9rd_sub2__FPvPv */
static void* s_lv9rd_sub2(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD && ((e_rd_class*)i_actor)->field_0x5b7 == data_80519338 && ((e_rd_class*)i_actor)->mAction != 22) {
        e_rd_class* i_this = (e_rd_class*)i_actor;
        fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

        i_this->mAction = 22;
        i_this->field_0x5b4 = 2;
        anm_init(i_this, 22, 2.0f, 2, 1.0f);
        i_this->field_0x990[0] = 1000;
        i_this->field_0x5cc = a_this->home.angle.y;
        dComIfGp_setHitMark(1, a_this, &a_this->eyePos, NULL, NULL, 0);
        i_this->mSound.startCollisionSE(Z2SE_HIT_WOOD_WEAPON, 31);
        return i_actor;
    }
        
    return NULL;
}

/* 80512E08-80512E74 00E488 006C+00 1/1 0/0 0/0 .text            s_lv9rd_sub3__FPvPv */
static void* s_lv9rd_sub3(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_RD && (((e_rd_class*)i_actor)->field_0x5b7 == 13 || ((e_rd_class*)i_actor)->field_0x5b7 == 14)) {
        ((e_rd_class*)i_actor)->field_0x9a4 = 1;
        ((e_rd_class*)i_actor)->field_0x980 = 50000.0f;
    }

    return NULL;
}

/* 80512E74-80512EC0 00E4F4 004C+00 1/1 0/0 0/0 .text            s_lv9arrow_sub__FPvPv */
static void* s_lv9arrow_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_ARROW) {
        ((e_arrow_class*)i_actor)->field_0xa14 = 1;
    }

    return NULL;
}

/* 80512EC0-80512F18 00E540 0058+00 1/1 0/0 0/0 .text            s_lv9arrow_sub2__FPvPv */
static void* s_lv9arrow_sub2(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_E_ARROW) {
        ((e_arrow_class*)i_actor)->field_0xa14 = 0;
        ((e_arrow_class*)i_actor)->mAction = 5;
        ((e_arrow_class*)i_actor)->mMode = 0;
    }

    return NULL;
}

/* 80512F18-80512FFC 00E598 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP10e_rd_classf */
static void cam_3d_morf(e_rd_class* i_this, f32 param_2) {
    cLib_addCalc2(&i_this->mDemoCamCenter.x, i_this->field_0x12cc.x, param_2, i_this->field_0x12e4.x * i_this->field_0x130c);
    cLib_addCalc2(&i_this->mDemoCamCenter.y, i_this->field_0x12cc.y, param_2, i_this->field_0x12e4.y * i_this->field_0x130c);
    cLib_addCalc2(&i_this->mDemoCamCenter.z, i_this->field_0x12cc.z, param_2, i_this->field_0x12e4.z * i_this->field_0x130c);
    cLib_addCalc2(&i_this->mDemoCamEye.x, i_this->field_0x12c0.x, param_2, i_this->field_0x12d8.x * i_this->field_0x130c);
    cLib_addCalc2(&i_this->mDemoCamEye.y, i_this->field_0x12c0.y, param_2, i_this->field_0x12d8.y * i_this->field_0x130c);
    cLib_addCalc2(&i_this->mDemoCamEye.z, i_this->field_0x12c0.z, param_2, i_this->field_0x12d8.z * i_this->field_0x130c);
}

/* 80512FFC-8051309C 00E67C 00A0+00 1/1 0/0 0/0 .text            cam_spd_set__FP10e_rd_class */
static void cam_spd_set(e_rd_class* i_this) {
    i_this->field_0x12d8.x = fabsf(i_this->field_0x12c0.x - i_this->mDemoCamEye.x);
    i_this->field_0x12d8.y = fabsf(i_this->field_0x12c0.y - i_this->mDemoCamEye.y);
    i_this->field_0x12d8.z = fabsf(i_this->field_0x12c0.z - i_this->mDemoCamEye.z);
    i_this->field_0x12e4.x = fabsf(i_this->field_0x12cc.x - i_this->mDemoCamCenter.x);
    i_this->field_0x12e4.y = fabsf(i_this->field_0x12cc.y - i_this->mDemoCamCenter.y);
    i_this->field_0x12e4.z = fabsf(i_this->field_0x12cc.z - i_this->mDemoCamCenter.z);
    i_this->field_0x130c = 0.0f;
}

/* 8051309C-80514640 00E71C 15A4+00 2/1 0/0 0/0 .text            demo_camera__FP10e_rd_class */
static void demo_camera(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera_class* camera_2 = dComIfGp_getCamera(0);
    daNPC_TK_c* hawk = (daNPC_TK_c*)fopAcM_SearchByName(PROC_NPC_TK);
    cXyz sp38, sp44, sp50, sp5c;
    s8 bVar1 = 0;
    s16 sVar1 = 0;
    
    switch (i_this->mDemoMode) {
        case 1:
            if (!a_this->eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(a_this, 2, 0xFFFF, 0);
                a_this->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }

            camera->mCamera.Stop();
            i_this->mDemoMode = 2;
            i_this->field_0x12a6 = 0;
            i_this->mDemoCamFovy = 55.0f;
            camera->mCamera.SetTrimSize(3);

            i_this->mDemoCamCenter = a_this->current.pos;
            i_this->mDemoCamCenter.y = a_this->eyePos.y - 80.0f + 60.0f;
            i_this->field_0x1300 = 2000.0f;
            a_this->current.angle.y = i_this->mPlayerAngleY;
            // fallthrough
        case 2:
            if (i_this->field_0x12a6 < 85) {
                mDoMtx_stack_c::YrotS(a_this->current.angle.y);
                mDoMtx_stack_c::XrotM(0x640);
                sp38.x = 0.0f;
                sp38.y = TREG_F(3);
                sp38.z = i_this->field_0x1300;
                mDoMtx_stack_c::multVec(&sp38, &i_this->mDemoCamEye);
                i_this->mDemoCamEye += a_this->current.pos;
                cLib_addCalc2(&i_this->mDemoCamCenter.y, a_this->eyePos.y - 80.0f + 60.0f, 0.1f, 20.0f);
                cLib_addCalc2(&i_this->field_0x1300, 400.0f, 0.5f, 150.0f);
            } else if (data_80519200 == 124) {
                lbl_70_bss_AE = 1;
                target_info_count = 0;
                for (int i = 0; i < 2; i++) {
                    target_info[i] = NULL;
                }

                fpcM_Search(s_wb_sub2, i_this);

                if (target_info[0] != NULL && target_info[1] != NULL) {
                    i_this->mDemoCamCenter = target_info[0]->current.pos + ((target_info[1]->current.pos - target_info[0]->current.pos) * 0.5f);
                    i_this->mDemoCamCenter.y += 200.0f;

                    if (i_this->field_0x12a6 == 85) {
                        i_this->mDemoCamEye = i_this->mDemoCamCenter;
                        i_this->mDemoCamEye.y += 100.0f;
                        i_this->mDemoCamEye.z += 900.0f;
                    } else {
                        cLib_addCalc2(&i_this->mDemoCamEye.x, i_this->mDemoCamCenter.x, 0.2f, 100.0f);
                        cLib_addCalc2(&i_this->mDemoCamEye.y, i_this->mDemoCamCenter.y + 100.0f, 0.2f, 100.0f);
                        cLib_addCalc2(&i_this->mDemoCamEye.z, i_this->mDemoCamCenter.z + 900.0f, 0.2f, 100.0f);
                    }
                }

                if (i_this->field_0x12a6 == 220) {
                    bVar1 = true;
                }
            } else if (i_this->field_0x12a6 == 140) {
                bVar1 = true;
            }
            break;

        case 10:
            if (!a_this->eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(a_this, 2, 0xFFFF, 0);
                a_this->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }

            camera->mCamera.Stop();
            i_this->mDemoMode = 11;
            i_this->field_0x12a6 = 0;
            i_this->mDemoCamFovy = 55.0f;
            dComIfGp_offCameraAttentionStatus(0, 8);
            camera->mCamera.SetTrimSize(3);

            i_this->mDemoCamCenter = a_this->current.pos;
            i_this->mDemoCamCenter.y = (a_this->eyePos.y - 80.0f) + 60.0f + TREG_F(5);
            i_this->mDemoCamEye = camera_2->lookat.eye;
            a_this->current.angle.y = i_this->mPlayerAngleY;
            i_this->field_0x1300 = 2000.0f;
            // fallthrough
        case 11:
            mDoMtx_stack_c::YrotS(a_this->current.angle.y);
            mDoMtx_stack_c::XrotM(0x640);
            sp38.x = 0.0f;
            sp38.y = TREG_F(3);
            sp38.z = i_this->field_0x1300;
            mDoMtx_stack_c::multVec(&sp38, &sp44);
            sp44.x += a_this->current.pos.x;
            sp44.z += a_this->current.pos.z;
            sp44.y += a_this->home.pos.y;

            cLib_addCalc2(&i_this->field_0x1300, 400.0f, 0.5f, 150.0f);

            if (i_this->field_0x12a6 < 20) {
                i_this->mDemoCamEye = sp44;
            } else {
                cLib_addCalc2(&i_this->mDemoCamEye.x, sp44.x, 0.1f, 10.0f);
                cLib_addCalc2(&i_this->mDemoCamEye.z, sp44.z, 0.1f, 10.0f);
            }

            cLib_addCalc2(&i_this->mDemoCamCenter.x, a_this->eyePos.x, 0.1f, 10.0f);
            cLib_addCalc2(&i_this->mDemoCamCenter.z, a_this->eyePos.z, 0.1f, 10.0f);
            cLib_addCalc2(&i_this->mDemoCamCenter.y, a_this->eyePos.y - 80.0f + 60.0f, 0.1f, 100.0f);

            if (i_this->field_0x12a6 == 100) {
                bVar1 = true;
            }
            break;

        case 19:
            if (player->getClothesChangeWaitTimer() == 0) {
                i_this->mDemoMode = 21;
                i_this->field_0x12a6 = 0;
            }
            break;

        case 20:
            if (!a_this->eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(a_this, 2, 0xFFFF, 0);
                a_this->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }

            camera->mCamera.Stop();
            i_this->mDemoMode = 21;
            i_this->field_0x12a6 = 0;
            i_this->mDemoCamFovy = 55.0f;
            camera->mCamera.SetTrimSize(3);

            i_this->mDemoCamCenter = camera_2->lookat.center;
            i_this->mDemoCamEye = camera_2->lookat.eye;
            i_this->field_0x12cc.set(-7875.0f, 2125.0f, 7895.0f);
            i_this->field_0x12c0.set(-7527.0f, 2084.0f, 7552.0f);
            cam_spd_set(i_this);
            i_this->field_0x12e4 *= 2.0f;
            i_this->field_0x12f0 = player->current.pos;
            i_this->field_0x12f0.y = 2000.0f;

            daPy_getPlayerActorClass()->changeOriginalDemo();
            if (daPy_py_c::checkNowWolf()) {
                daPy_getPlayerActorClass()->changeDemoMode(71, 0, 0, 0);
                i_this->mDemoMode = 19;
            }
            // fallthrough
        case 21:
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&i_this->field_0x12f0, player->shape_angle.y, 0);

            if (i_this->mDemoMode != 19) {
                if (i_this->field_0x12a6 == 1) {
                    Z2GetAudioMgr()->bgmStreamPrepare(0x2000055);
                    Z2GetAudioMgr()->bgmStreamPlay();
                }

                cam_3d_morf(i_this, BREG_F(17) + 0.2f);
                cLib_addCalc2(&i_this->field_0x130c, BREG_F(16) + 0.1f, 1.0f, BREG_F(17) + 0.002f);

                if (i_this->field_0x12a6 == 70) {
                    dComIfGs_onSwitch(75, fopAcM_GetRoomNo(a_this));
                }

                if (i_this->field_0x12a6 >= 70) {
                    sp44.set(-5182.0f, 2000.0f, 5237.0f);
                    daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp44, 0xFFFFE051, 0);
                }

                if (i_this->field_0x12a6 == 120 || i_this->field_0x12a6 == 130 || i_this->field_0x12a6 == 140 || i_this->field_0x12a6 == 150) {
                    fpcM_Search(s_lv9dn_sub, i_this);
                }

                if (i_this->field_0x12a6 > 160) {
                    cLib_addCalc2(&i_this->mDemoCamFovy, 55.0f, 0.05f, 0.5f);
                } else {
                    cLib_addCalc2(&i_this->mDemoCamFovy, 45.0f, 0.05f, 0.5f);
                }

                if (i_this->field_0x12a6 == 180) {
                    i_this->field_0x12cc.set(-7241.0f, 4310.0f, 7269.0f);
                    i_this->field_0x12c0.set(-6913.0f, 4139.0f, 6948.0f);
                    cam_spd_set(i_this);
                    i_this->mDemoMode = 22;
                    i_this->field_0x12a6 = 0;
                    fpcM_Search(s_lv9rd_sub, i_this);
                    daPy_getPlayerActorClass()->changeDemoMode(23, 0, 0, 0);
                }
            }
            break;

        case 22:
            cam_3d_morf(i_this, BREG_F(17) + 0.2f);
            cLib_addCalc2(&i_this->field_0x130c, BREG_F(16) + 0.15f, 1.0f, BREG_F(17) + 0.005f);
            cLib_addCalc2(&i_this->mDemoCamFovy, 55.0f, 0.1f, 0.5f);

            if (i_this->field_0x12a6 == 13) {
                fpcM_Search(s_lv9dn_sub2,i_this);
            }

            if (i_this->field_0x12a6 == 17 || i_this->field_0x12a6 == 27 || i_this->field_0x12a6 == 37 || i_this->field_0x12a6 == 47) {
                fpcM_Search(s_lv9dn_sub, i_this);
            }

            if (i_this->field_0x12a6 == 55) {
                i_this->mDemoCamCenter.set(-8330.0f, 4359.0f, 8449.0f);
                i_this->mDemoCamEye.set(-8183.0f, 4246.0f, 7991.0f);
                i_this->mDemoCamFovy = 55.0f;
                i_this->mDemoMode = 23;
                i_this->field_0x12a6 = 0;
            }
            break;

        case 23:
            i_this->field_0x9a4 = 1;

            if (i_this->field_0x12a6 == 20) {
                i_this->field_0x980 = 50000.0f;
            }

            if (i_this->field_0x12a6 < 40) {
                i_this->mDemoCamEye.y += 2.0f;
            }

            if (i_this->field_0x12a6 == 40) {
                i_this->mDemoCamCenter.set(-8033.0f, 4259.0f, 8143.0f);
                i_this->mDemoCamEye.set(-8337.0f, 4488.0f, 8451.0f);
            }

            if (i_this->field_0x12a6 >= 40) {
                cLib_addCalc2(&i_this->mDemoCamFovy, 30.0f, 0.05f, 0.5f);
            }

            if (i_this->field_0x12a6 == 110) {
                i_this->field_0x9a4 = 0;
                i_this->mDemoMode = 24;
                i_this->field_0x12a6 = 0;
                i_this->field_0x12cc.set(-4910.0f, 2012.0f, 4967.0f);
                i_this->field_0x12c0.set(-5235.0f, 2179.0f, 5302.0f);
                cam_spd_set(i_this);
            }
            break;

        case 24:
            i_this->field_0x9a4 = 1;
            i_this->field_0x980 = 0.0f;

            if (i_this->field_0x12a6 >= 4) {
                i_this->mBlureRate = 200;
                sVar1 = cM_scos(i_this->field_0x12a6 * 0x500) * 2500.0f;
                i_this->field_0x130c = 0.03f;
                cam_3d_morf(i_this, 0.5f);

                if (i_this->field_0x12a6 == 4) {
                    fpcM_Search(s_lv9arrow_sub, i_this);
                }

                if (i_this->field_0x12a6 == 10) {
                    fpcM_Search(s_lv9dn_sub2, i_this);
                }

                if (i_this->field_0x12a6 == 20) {
                    daPy_getPlayerActorClass()->changeDemoMode(20, 1, 0, 0);
                    hawk->mSound.startCreatureVoice(Z2SE_HAWK_V_REGI_DEMO_1, -1);
                }

                if (i_this->field_0x12a6 == 41) {
                    mDoGph_gInf_c::fadeOut(0.5f, g_blackColor);
                }

                if (i_this->field_0x12a6 == 43) {
                    i_this->mDemoMode = 25;
                    i_this->field_0x12a6 = 0;
                    Z2GetAudioMgr()->seStart(Z2SE_AL_FISHING_HIT, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                    i_this->mBlureRate = 0;
                }
            }
            break;

        case 25:
            if (i_this->field_0x12a6 == 40) {
                mDoGph_gInf_c::fadeIn(0.5f, g_blackColor);
                i_this->mDemoCamFovy = 55.0f;
                i_this->mDemoCamCenter.set(-5197.0f, 1712.0f, 5039.0f);
                i_this->mDemoCamEye.set(-5215.0f, 2108.0f, 5327.0f);
                i_this->field_0x12cc.set(-5025.0f, 2270.0f, 4909.0f);
                i_this->field_0x12c0.set(-5215.0f, 2108.0f, 5327.0f);
                cam_spd_set(i_this);
                fpcM_Search(s_lv9arrow_sub2, i_this);
            }

            if (i_this->field_0x12a6 == 80) {
                i_this->mDemoMode = 26;
                i_this->field_0x12a6 = 0;
                daPy_getPlayerActorClass()->changeDemoMode(72, 3, 0, 0);
            }
            break;

        case 26:
            cam_3d_morf(i_this, BREG_F(17) + 0.2f);
            cLib_addCalc2(&i_this->field_0x130c, BREG_F(16) + 0.5f, 1.0f, BREG_F(17) + 0.01f);

            if (i_this->field_0x12a6 == 55) {
                i_this->mDemoCamCenter.set(-5529.0f, 2457.0f, 5589.0f);
                i_this->mDemoCamEye.set(-5232.0f, 2201.0f, 5295.0f);
                i_this->field_0x12cc.set(-5580.0f, 2188.0f, 5640.0f);
                i_this->field_0x12c0.set(-5232.0f, 2201.0f, 5295.0f);
                cam_spd_set(i_this);
                i_this->mDemoMode = 27;
                i_this->field_0x12a6 = 0;
            }
            break;

        case 27:
            fpcM_Search(s_lv9rd_sub3, i_this);

            if (i_this->field_0x12a6 == 40) {
                data_80519338 = 14;
                fpcM_Search(s_lv9rd_sub2, i_this);
            } else if (i_this->field_0x12a6 == 60) {
                data_80519338 = 13;
                fpcM_Search(s_lv9rd_sub2, i_this);
            }

            if (i_this->field_0x12a6 == 10 || i_this->field_0x12a6 == 20 || i_this->field_0x12a6 == 30 || i_this->field_0x12a6 == 40) {
                fpcM_Search(s_lv9dn_sub, i_this);
            }

            if (i_this->field_0x12a6 < 100) {
                cLib_addCalc2(&i_this->mDemoCamFovy, 25.0f, 0.2f, 1.0f);
            } else if (i_this->field_0x12a6 >= 120) {
                cLib_addCalc2(&i_this->mDemoCamFovy, 55.0f, 0.05f, 0.4f);
                cam_3d_morf(i_this, BREG_F(17) + 0.2f);
                cLib_addCalc2(&i_this->field_0x130c, BREG_F(16) + 0.1f, 1.0f, BREG_F(17) + 0.01f);

                if (i_this->field_0x12a6 == 177) {
                    sp44.set(-5821.0f, 2000.0f, 5850.0f);
                    dBomb_c::createNormalBombExplode(&sp44);
                    dComIfGs_onTmpBit(dSv_event_tmp_flag_c::tempBitLabels[0x76]);
                }

                if (i_this->field_0x12a6 == 180) {
                    dComIfGp_getVibration().StartShock(8, 79, cXyz(0.0f, 1.0f, 0.0f));
                    fpcM_Search(s_lv9dn_sub3, i_this);
                }
            }

            if (i_this->field_0x12a6 != 230) break;

            i_this->mDemoMode = 28;
            i_this->field_0x12a6 = 0;
            i_this->field_0x12cc.set(-5406.0f, 2168.0f, 5468.0f);
            i_this->field_0x12c0.set(-5058.0f, 2181.0f, 5124.0f);
            cam_spd_set(i_this);
            // fallthrough
        case 28:
            if (i_this->field_0x12a6 == 1) {
                player->changeDemoMode(20, 0, 0, 0);
            }

            if (i_this->field_0x12a6 < 25) {
                cam_3d_morf(i_this, BREG_F(17) + 0.2f);
                cLib_addCalc2(&i_this->field_0x130c, BREG_F(16) + 0.2f, 1.0f, BREG_F(17) + 0.01f);

                if (i_this->field_0x12a6 == 23) {
                    hawk->setResistanceDemo();
                }
            } else {
                if (i_this->field_0x12a6 == 25) {
                    i_this->field_0x130c = 0.0f;
                }

                sp5c = hawk->current.pos;
                cLib_addCalc2(&i_this->mDemoCamCenter.x, sp5c.x, 0.2f, i_this->field_0x130c * 100.0f);
                cLib_addCalc2(&i_this->mDemoCamCenter.y, sp5c.y + BREG_F(13), 0.2f, i_this->field_0x130c * 100.0f);
                cLib_addCalc2(&i_this->mDemoCamCenter.z, sp5c.z, 0.2f, i_this->field_0x130c * 100.0f);

                cLib_addCalc2(&i_this->field_0x130c, 1.0f, 1.0f, 0.03f);

                if (i_this->field_0x12a6 >= 55) {
                    if (i_this->field_0x12a6 == 110) {
                        hawk->mSound.startCreatureVoice(Z2SE_HAWK_V_REGI_DEMO_2, -1);
                    }

                    if (i_this->field_0x12a6 < 135) {
                        cLib_addCalc2(&i_this->mDemoCamFovy, 20.0f, 0.2f, 1.0f);
                    } else {
                        cLib_addCalc2(&i_this->mDemoCamFovy, 55.0f, 0.1f, 0.5f);
                    }
                }

                if (i_this->field_0x12a6 == 205) {
                    i_this->mDemoMode = 29;
                    i_this->field_0x12a6 = 0;
                    daPy_getPlayerActorClass()->changeDemoMode(1, 0, 0, 0);
                }
            }
            break;

        case 29:
            i_this->mDemoCamFovy = 55.0f;
            i_this->mDemoCamEye.set(-3963.0f, 147.0f, 8094.0f);
            sp5c = hawk->current.pos;

            if (i_this->field_0x12a6 == 0) {
                i_this->mDemoCamCenter = sp5c;
            } else {
                cLib_addCalc2(&i_this->mDemoCamCenter.x, sp5c.x, 0.2f, 100.0f);
                cLib_addCalc2(&i_this->mDemoCamCenter.y, sp5c.y, 0.2f, 100.0f);
                cLib_addCalc2(&i_this->mDemoCamCenter.z, sp5c.z, 0.2f, 100.0f);

                if (i_this->field_0x12a6 == 140) {
                    i_this->field_0x12cc.set(-4080.0f, 134.0f, 8190.0f);
                    i_this->field_0x12c0 = i_this->mDemoCamEye;
                    cam_spd_set(i_this);
                    i_this->mDemoMode = 30;
                    i_this->field_0x12a6 = 0;
                }
            }
            break;

        case 30:
            cam_3d_morf(i_this, BREG_F(17) + 0.1f);
            cLib_addCalc2(&i_this->field_0x130c, BREG_F(16) + 0.1f, 1.0f, BREG_F(17) + 0.002f);

            if (i_this->field_0x12a6 == 70) {
                i_this->mDemoCamCenter.set(-4527.0f, 143.0f, 8305.0f);
                i_this->mDemoCamEye.set(-4676.0f, 161.0f, 8282.0f);
                i_this->field_0x12cc.set(-4552.0f, 143.0f, 8461.0f);
                i_this->field_0x12c0.set(-4701.0f, 161.0f, 8438.0f);
                cam_spd_set(i_this);
                i_this->mDemoMode = 31;
                i_this->field_0x12a6 = 0;
                sp44.set(-5397.0f, 2000.0f, 5921.0f);
                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp44, 0x213F, 0);
            }
            break;

        case 31:
            cam_3d_morf(i_this, BREG_F(17) + 0.05f);
            cLib_addCalc2(&i_this->field_0x130c, BREG_F(16) + 0.05f, 1.0f, BREG_F(17) + 0.001f);

            if (i_this->field_0x12a6 == 70) {
                i_this->mDemoMode = 32;
                i_this->field_0x12a6 = 0;
                i_this->mDemoCamCenter.set(-5275.0f, 2327.0f, 5812.0f);
                i_this->mDemoCamEye.set(-5367.0f, 2689.0f, 5495.0f);
                i_this->mDemoCamFovy = 30.0f;
            }
            break;

        case 32:
            if (i_this->field_0x12a6 == 60) {
                i_this->mDemoCamCenter.set(-3906.0f, 42.0f, 8198.0f);
                i_this->mDemoCamEye.set(-4274.0f, 272.0f, 7969.0f);
                i_this->mDemoMode = 33;
                i_this->field_0x12a6 = 0;
                dComIfGs_onTmpBit(dSv_event_tmp_flag_c::tempBitLabels[0x75]);
            }
            break;

        case 33:
            if (i_this->field_0x12a6 == 65) {
                daPy_getPlayerActorClass()->changeDemoMode(60, 1, 0, 0);
            }

            if (i_this->field_0x12a6 == 70) {
                i_this->mDemoCamCenter.set(-5712.0f, 2308.0f, 5828.0f);
                i_this->mDemoCamEye.set(-5286.0f, 2104.0f, 5957.0f);
                i_this->mDemoCamFovy = 45.0f;
                i_this->mDemoMode = 34;
                i_this->field_0x12a6 = 0;
            }
            break;

        case 34:
            cLib_addCalc2(&i_this->mDemoCamFovy, 40.0f, 0.05f, 0.02f);
            if (i_this->field_0x12a6 == 80) {
                i_this->mDemoCamCenter.set(-4712.0f, 870.0f, 7432.0f);
                i_this->mDemoCamEye.set(-4852.0f, 1171.0f, 7072.0f);
                i_this->mDemoCamFovy = 55.0f;
                i_this->mDemoMode = 35;
                i_this->field_0x12a6 = 0;
                dComIfGs_onTmpBit(dSv_event_tmp_flag_c::tempBitLabels[0x74]);
            }
            break;

        case 35:
            if (i_this->field_0x12a6 == 120) {
                bVar1 = true;
                int swBit = fopAcM_GetParam(a_this) >> 24;
                if (swBit != 0xFF) {
                    dComIfGs_onSwitch(swBit, fopAcM_GetRoomNo(a_this));
                }
            }
            break;

        case 36:
            break;
    }

    if (bVar1) {
        camera->mCamera.Start();
        camera->mCamera.SetTrimSize(0);
        dComIfGp_event_reset();
        daPy_getPlayerActorClass()->cancelOriginalDemo();
        i_this->mDemoMode = -1;
    }

    if (i_this->mDemoMode > 0) {
        cXyz sp68, sp74;
        sp68 = i_this->mDemoCamCenter;
        sp74 = i_this->mDemoCamEye;
        camera->mCamera.Set(sp68, sp74, sVar1, i_this->mDemoCamFovy);
        i_this->field_0x12a6++;
    }
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
static int daE_RD_Execute(e_rd_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    if (c_start == 0 && dComIfGp_event_runCheck()) {
        if (data_80519201 != 0) {
            return 1;
        }

        if (cDmrNowMidnaTalk()) {
            return 1;
        }

        if (daPy_getPlayerActorClass()->eventInfo.checkCommandDoor()) {
            return 1;
        }
    }

    cXyz sp98, spa4, spb0;

    if (i_this->field_0x5b8 == 11) {
        fopAcM_delete(a_this);
        return 1;
    }

    if (S_find != 0) {
        S_find--;
    }

    i_this->field_0x970++;

    if (i_this->field_0x129a == 0) {
        i_this->field_0x1297 = i_this->field_0x1298;
    } else {
        fopAc_ac_c* player = dComIfGp_getPlayer(0);

        if (strcmp(dComIfGp_getStartStageName(), "F_SP102") == 0 && player->current.pos.y < -2000.0f) {
            cDmr_SkipInfo = 2;
        }

        if (cDmr_SkipInfo != 0) {
            cDmr_SkipInfo--;
        }
    }

    for (int i = 0; i < 4; i++) {
        if (i_this->field_0x990[i] != 0) {
            i_this->field_0x990[i]--;
        }
    }

    if (i_this->field_0x998 != 0) {
        i_this->field_0x998--;
    }

    if (i_this->field_0xaf0 != 0) {
        i_this->field_0xaf0--;
    }

    if (i_this->field_0x99a != 0) {
        i_this->field_0x99a--;
    }

    if (i_this->field_0x99e != 0) {
        i_this->field_0x99e--;
    }

    if (i_this->field_0x99c != 0) {
        i_this->field_0x99e--;
    }

    if (!otoCheck(a_this, 1000.0f)) {
        if (daPy_getPlayerActorClass()->checkWolfBark()) {
            i_this->field_0x9a1 = cM_rndF(10.0f) + 10.0f;
        }
    }

    if (i_this->field_0x9a1 != 0) {
        i_this->field_0x9a1--;
    }

    i_this->field_0x9a2 = 0;
    i_this->field_0x9ad = 1;
    action(i_this);

    if (i_this->field_0x9bc != 0) {
        i_this->field_0x9ad = 0;
    }

    if (i_this->field_0x9bc != 2 && i_this->field_0xaf0 == 0 && i_this->mAction != 42) {
        spa4.set(0.0f, 0.0f, 0.0f);
        if (i_this->field_0x9ec) {
            cMtx_YrotS(*calc_mtx, i_this->field_0xa0e);
            sp98.x = 0.0f;
            sp98.y = TREG_F(8);
            sp98.z = i_this->field_0xaec;
            MtxPosition(&sp98, &spa4);
            cLib_addCalc2(&i_this->field_0xaec, i_this->field_0x9ec * (TREG_F(9) + 2.0f), 1.0f, TREG_F(17) + 5.0f);
        } else {
            cLib_addCalc0(&i_this->field_0xaec, 1.0f, TREG_F(17) + 5.0f);
        }

        if (i_this->mAnmID == 18 && i_this->field_0xa0c != 0 && i_this->field_0xa1f == 0) {
            spa4.y += KREG_F(0) + -20.0f;
        }

        a_this->current.pos = spa4;
        a_this->old.pos = spa4;
        i_this->mObjAcch.CrrPos(dComIfG_Bgsp());
        a_this->current.pos -= spa4;
        a_this->old.pos -= spa4;

        if (i_this->mObjAcch.ChkGroundHit()) {
            if (i_this->field_0xaf2 >= ZREG_S(8) + 20 && i_this->field_0x5b7 != 13 && i_this->field_0x5b7 != 14) {
                i_this->mAction = 21;
                i_this->field_0x5b4 = 0;
                a_this->speed.y = 0.0f;
                i_this->field_0x9ec = -1.0f;
                i_this->field_0xa0c = -0x3000;
                i_this->field_0x998 = 1000;
                a_this->health = 0;
            }

            i_this->field_0xaf2 = 0;
        } else if (a_this->speed.y < -10.0f) {
            i_this->field_0xaf2--;
            if (i_this->field_0xaf2 == 20 && i_this->field_0x129a == 0) {
                i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_DEATH, -1);
            }
        }

        i_this->field_0x1294 = 0;

        if (i_this->mObjAcch.GetGroundH() != -1000000000.0f && i_this->mObjAcch.ChkWaterHit() && a_this->current.pos.y < i_this->mObjAcch.m_wtr.GetHeight()) {
            i_this->field_0x1294 = 1;
        }
    }

    J3DModel* model;
    if (i_this->field_0xafb == 0) {
        mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y + i_this->field_0x9c0, a_this->current.pos.z);
        mDoMtx_stack_c::XrotM(i_this->field_0xa12);
        mDoMtx_stack_c::ZrotM(i_this->field_0xa16);
        mDoMtx_stack_c::YrotM(i_this->field_0xa0e);
        mDoMtx_stack_c::XrotM(i_this->field_0xa0c);
        mDoMtx_stack_c::YrotM(-i_this->field_0xa0e);
        mDoMtx_stack_c::YrotM(a_this->shape_angle.y);
        mDoMtx_stack_c::XrotM(a_this->shape_angle.x);
        mDoMtx_stack_c::ZrotM(a_this->shape_angle.z);

        f32 fVar1 = l_HIO.model_size * a_this->scale.x;
        if (i_this->field_0x129a != 0) {
            fVar1 *= l_HIO.field_0xc;
        }
        mDoMtx_stack_c::scaleM(fVar1, fVar1, fVar1);

        i_this->mpModelMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
        i_this->mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(a_this)));
        int frame = i_this->mpModelMorf->getFrame();

        if (i_this->mAnmID == 50 && (frame == 1 || frame == 10)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_RUNNING_BREATH, -1);
        }

        if (i_this->mAnmID == 29 && (frame == 5 || frame == 26)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_RUNNING_BREATH, -1);
        }

        if ((i_this->mAnmID == 57 && frame == 10) || (i_this->mAnmID == 42 && frame == 5) || (i_this->mAnmID == 4 && frame == 10)) {
            i_this->mSound.startCreatureVoice(Z2SE_EN_RD_V_READY_WEAPON, -1);
        }

        if ((i_this->mAnmID == 65 && (i_this->mpModelMorf->checkFrame(1.0f) || i_this->mpModelMorf->checkFrame(15.0f))) ||
            ((i_this->mAnmID == 50 || i_this->mAnmID == 51) && (i_this->mpModelMorf->checkFrame(1.0f) || i_this->mpModelMorf->checkFrame(7.0f)))) {
            if (i_this->field_0x1294 == 0) {
                i_this->mSound.startCreatureSound(Z2SE_RIDER_FOOTNOTE, 0, -1);
            } else {
                i_this->mSound.startCreatureSound(Z2SE_RIDER_FOOTNOTE_WATER, 0, -1);
            }
        }

        if (i_this->field_0x129a != 0) {
            if (i_this->mAnmID == 33) {
                if (i_this->mpModelMorf->checkFrame(30.0f)) {
                    i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_LAUGH, -1);
                }
            } else if (i_this->mAnmID == 51 && i_this->mpModelMorf->checkFrame(21.0f)) {
                i_this->mSound.startCreatureVoice(Z2SE_EN_RDB_V_HOICK2, -1);
            }
        }

        if (i_this->field_0x680 != 0 && i_this->mpModelMorf->isStop()) {
            int i_anmID;
            if (a_this->speedF < 10.0f) {
                i_anmID = 65;
            } else {
                i_anmID = 59;
            }
            i_this->field_0x680 = 0;
            anm_init(i_this, i_anmID, 10.0f, 2, 1.0f);
        }

        i_this->mpModelMorf->modelCalc();
        
        if (i_this->mAnmID == 63 || dComIfGp_checkPlayerStatus0(0, 0x200000)) {
            i_this->field_0x1297 = 0;
        }

        if (i_this->field_0x1297 != 0) {
            model = i_this->mpModelMorf->getModel();
            cLib_addCalc2(&i_this->field_0x6cc, i_this->field_0x6d0, 1.0f, 0.02f);
            i_this->field_0x6d0 = 1.0f;
            MTXCopy(model->getAnmMtx(13), *calc_mtx);
            camera_class* camera = dComIfGp_getCamera(0);
            
            static f32 time_scale[25] = {
                1.2f, 1.2f, 1.1f, 1.0f,
                0.8f, 0.6f, 0.4f, 0.2f,
                0.0f, 0.0f, 0.0f, 0.0f,
                0.0f, 0.0f, 0.0f, 0.0f,
                0.0f, 0.0f, 0.2f, 0.5f,
                0.8f, 1.2f, 1.2f, 1.2f,
                1.2f,
            };

            for (int i = 0; i < 2; i++) {
                MtxPush();
                s16 sVar1, sVar2;
                f32 fVar2;
                if (i == 0) {
                    sp98.set(38.0f, 0.0f, 0.0f);
                    MtxPosition(&sp98, &spa4);
                    sp98 = camera->lookat.eye - spa4;

                    sVar1 = cM_atan2s(sp98.x, sp98.z);
                    sVar2 = -cM_atan2s(sp98.y, JMAFastSqrt(sp98.x * sp98.x + sp98.z * sp98.z));
                    fVar2 = sp98.abs() * 0.001f;
                    if (fVar2 > 2.0f) {
                        fVar2 = 2.0f;
                    }

                    fVar2 *= i_this->field_0x6cc * time_scale[(int)(dKy_getEnvlight()->daytime / 15.0f) * 4];
                    
                    sp98.set(38.0f, 0.0f, 6.0f);
                } else {
                    sp98.set(38.0f, 0.0f, -6.0f);
                }

                MtxPosition(&sp98, &spa4);
                MtxTrans(spa4.x, spa4.y, spa4.z, 0);
                cMtx_YrotM(*calc_mtx, sVar1);
                cMtx_XrotM(*calc_mtx, sVar2);
                MtxScale(fVar2, fVar2, fVar2, 1);

                i_this->field_0x6c4[i]->setBaseTRMtx(*calc_mtx);
                MtxPull();
            }
        }
    }

    if (i_this->field_0xafb == 0) {
        model = i_this->mpModelMorf->getModel();
        MTXCopy(model->getAnmMtx(11), *calc_mtx);
        sp98.set(0.0f, 0.0f, 0.0f);
        MtxPosition(&sp98, &spa4);
        sp98.set(YREG_F(1), YREG_F(2) + 100.0f, YREG_F(3));
        MtxPosition(&sp98, &spb0);

        if (spb0.y <= spa4.y) {
            i_this->field_0xa1f = 1;
        } else {
            i_this->field_0xa1f = 0;
        }

        cXyz spbc(0.0f, 0.0f, 0.0f);
        
        if (i_this->field_0x998 != 0) {
            spbc.set(-20000.0f, 20000.0f, 30000.0f);
        }

        if (i_this->field_0x129a == 0) {
            MTXCopy(model->getAnmMtx(13), *calc_mtx);
        } else {
            MTXCopy(model->getAnmMtx(AREG_S(9) + 6), *calc_mtx);
        }

        sp98.set(20.0f, 0.0f, 0.0f);
        MtxPosition(&sp98, &a_this->eyePos);

        if (daPy_py_c::checkNowWolf()) {
            spbc.y += 30.0f;
            i_this->field_0xd58[0].SetC(a_this->eyePos + spbc);
            i_this->field_0xd58[0].SetR(50.0f);
        } else {
            i_this->field_0xd58[0].SetC(a_this->eyePos + spbc);
            i_this->field_0xd58[0].SetR(35.0f);
        }

        if (i_this->field_0x9bc == 2) {
            a_this->attention_info.position = a_this->current.pos;
            a_this->attention_info.position.y += 190.0f;

            if (i_this->field_0x129a != 0) {
                a_this->attention_info.position.y += 120.0f;
            }
        } else {
            a_this->attention_info.position = a_this->eyePos;
            a_this->attention_info.position.y += 30.0f;
        }

        if (i_this->field_0x129a == 0) {
            sp98.set(BREG_F(14), BREG_F(15), BREG_F(16));
            MTXCopy(model->getAnmMtx(12), *calc_mtx);
            MtxPosition(&sp98, &spa4);
            i_this->field_0xd58[2].SetC(spa4 + spbc);
            i_this->field_0xd58[2].SetR(35.0f);
        }
    }
}

/* 805163C0-805164D4 011A40 0114+00 1/1 0/0 0/0 .text            abs__4cXyzCFv */
// void cXyz::abs() const {
extern "C" void abs__4cXyzCFv() {
    // NONMATCHING
}

/* 805164D4-805164DC 011B54 0008+00 1/0 0/0 0/0 .text            daE_RD_IsDelete__FP10e_rd_class */
static int daE_RD_IsDelete(e_rd_class* i_this) {
    return 1;
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

/* 80516540-80516980 011BC0 0440+00 1/1 0/0 0/0 .text            ride_game_actor_set__FP10e_rd_class */
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

/**
 * @file d_a_b_gnd.cpp
 * 
*/

#include "d/actor/d_a_b_gnd.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "d/actor/d_a_horse.h"
#include "dol2asm.h"
#include "d/d_camera.h"
#include "d/d_s_play.h"
#include "f_op/f_op_msg_mng.h"
#include "m_Do/m_Do_graphic.h"

// #define ACTION_HWAIT_2    2
// #define ACTION_HRUN_P     4
// #define ACTION_WAIT       10
// #define ACTION_ATTACK     11
// #define ACTION_JUMP       13
// #define ACTION_TUBA       19

enum daB_GND_ACTION {
    ACTION_HWAIT_1 = 1,
    ACTION_HWAIT_2 = 2,
    ACTION_HRUN_A = 3,
    ACTION_HRUN_P = 4,
    ACTION_HJUMP = 5,
    ACTION_HEND = 6,
    ACTION_WAIT = 10,
    ACTION_ATTACK = 11,
    ACTION_DEFENCE = 12,
    ACTION_JUMP = 13,
    ACTION_SIDE = 14,
    ACTION_TUBA = 19,
    ACTION_DAMAGE = 20,
    ACTION_DOWN = 21,
    ACTION_END = 22,
};

//
// Forward References:
//

extern "C" void __ct__13daB_GND_HIO_cFv();
extern "C" static void anm_init__FP11b_gnd_classifUcf();
extern "C" static void h_anm_init__FP11b_gnd_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void h_nodeCallBack__FP8J3DJointi();
extern "C" static void daB_GND_Draw__FP11b_gnd_class();
extern "C" void __dt__4cXyzFv();
extern "C" static void shot_s_sub__FPvPv();
extern "C" static void gake_check__FP11b_gnd_class();
extern "C" static void saku_jump_check__FP11b_gnd_class();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" static void b_gnd_h_wait__FP11b_gnd_class();
extern "C" static void b_gnd_h_wait2__FP11b_gnd_class();
extern "C" static void b_gnd_h_run_a__FP11b_gnd_class();
extern "C" static void b_gnd_h_run_p__FP11b_gnd_class();
extern "C" static void b_gnd_h_jump__FP11b_gnd_class();
extern "C" static void b_gnd_h_end__FP11b_gnd_class();
extern "C" static void b_gnd_g_wait__FP11b_gnd_class();
extern "C" static void b_gnd_g_attack__FP11b_gnd_class();
extern "C" static void b_gnd_g_defence__FP11b_gnd_class();
extern "C" static void b_gnd_g_jump__FP11b_gnd_class();
extern "C" static void b_gnd_g_side__FP11b_gnd_class();
extern "C" static void b_gnd_g_tuba__FP11b_gnd_class();
extern "C" static void b_gnd_g_damage__FP11b_gnd_class();
extern "C" static void b_gnd_g_down__FP11b_gnd_class();
extern "C" static void b_gnd_g_end__FP11b_gnd_class();
extern "C" static void damage_check__FP11b_gnd_class();
extern "C" static void eff_set_h__FP11b_gnd_class();
extern "C" static void eff_set__FP11b_gnd_class();
extern "C" static void s_fkdel_sub__FPvPv();
extern "C" static void s_objgbdel_sub__FPvPv();
extern "C" static void h_damage_check__FP11b_gnd_class();
extern "C" static void action__FP11b_gnd_class();
extern "C" static void ball_bg_check__FP11b_gnd_classi();
extern "C" static void himo_control1__FP11b_gnd_classP4cXyziSc();
extern "C" static void himo_control2__FP11b_gnd_classP4cXyziSc();
extern "C" static void cam_3d_morf__FP11b_gnd_classf();
extern "C" static void cam_spd_set__FP11b_gnd_class();
extern "C" static void demo_camera__FP11b_gnd_class();
extern "C" static void anm_se_set__FP11b_gnd_class();
extern "C" static void daB_GND_Execute__FP11b_gnd_class();
extern "C" void multVecZero__14mDoMtx_stack_cFP3Vec();
extern "C" void setDownPos__13fopEn_enemy_cFPC4cXyz();
extern "C" void __as__5csXyzFRC5csXyz();
extern "C" static bool daB_GND_IsDelete__FP11b_gnd_class();
extern "C" static void daB_GND_Delete__FP11b_gnd_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daB_GND_Create__FP10fopAc_ac_c();
extern "C" void __ct__11b_gnd_classFv();
extern "C" void __ct__19mDoExt_3DlineMat1_cFv();
extern "C" void __dt__8g_himo_sFv();
extern "C" void __ct__8g_himo_sFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__16Z2SoundObjSimpleFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__11J3DLightObjFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__13daB_GND_HIO_cFv();
extern "C" void __sinit_d_a_b_gnd_cpp();
extern "C" void func_806022F0();
extern "C" static void func_80602328();
extern "C" static void func_80602330();
extern "C" void cancelOriginalDemo__9daPy_py_cFv();
extern "C" void __ct__4cXyzFRC4cXyz();
extern "C" void getTrigA__8mDoCPd_cFUl();
extern "C" static void dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz();
extern "C" void getAnmMtx__8J3DModelFi();
extern "C" static void dComIfGp_setHitMark__FUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" static void dComIfGp_setDoStatusForce__FUcUc();
extern "C" void __ct__4cXyzFfff();
extern "C" static void daPy_getPlayerActorClass__Fv();
extern "C" void setFrame__13mDoExt_morf_cFf();
extern "C" void isStop__13mDoExt_morf_cFv();
extern "C" static void dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz();
extern "C" void changeDemoMode__9daPy_py_cFUliis();
extern "C" void changeOriginalDemo__9daPy_py_cFv();
extern "C" void changeDemoMode__9daHorse_cFUli();
extern "C" void set__4cXyzFfff();
extern "C" void __as__4cXyzFRC4cXyz();
extern "C" void changeOriginalDemo__9daHorse_cFv();
extern "C" static void dComIfGp_getCamera__Fi();
extern "C" static void dComIfGp_getPlayerCameraID__Fi();
extern "C" static void dComIfGp_getPlayer__Fi();
extern "C" extern char const* const d_a_b_gnd__stringBase0;

//
// External References:
//

extern "C" void fadeOut__13mDoGph_gInf_cFfR8_GXColor();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
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
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
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
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_getTalkEventPartner__FPC10fopAc_ac_c();
extern "C" void fopAcM_plAngleCheck__FPC10fopAc_ac_cs();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopMsgM_messageSetDemo__FUl();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__12dSv_danBit_cFi();
extern "C" void isSwitch__12dSv_danBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
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
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_pl_cut_bit_get__Fv();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkMasterSwordEquip__9daPy_py_cFv();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_custom_colset__FUcUcf();
extern "C" void dKy_tevstr_init__FP12dKy_tevstr_cScUc();
extern "C" void dKy_pol_sound_get__FPC13cBgS_PolyInfo();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void cBgW_CheckBGround__Ff();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void MtxPush__Fv();
extern "C" void MtxPull__Fv();
extern "C" void deleteAllParticle__14JPABaseEmitterFv();
extern "C" void seMoveVolumeAll__7Z2SeMgrFfUl();
extern "C" void bgmStart__8Z2SeqMgrFUlUll();
extern "C" void bgmStop__8Z2SeqMgrFUll();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void changeBgmStatus__8Z2SeqMgrFl();
extern "C" void setDemoName__11Z2StatusMgrFPc();
extern "C" void __dt__14Z2SoundObjBaseFv();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecP3VecUcUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __as__12J3DLightInfoFRC12J3DLightInfo();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_14();
extern "C" void _savegpr_20();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_14();
extern "C" void _restgpr_20();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__16Z2SoundObjSimple[8];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 now__14mDoMtx_stack_c[48];
// extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
// extern "C" extern u32 g_blackColor;
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" extern s8 pauseTimer__9dScnPly_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80602664-80602668 000000 0004+00 32/32 0/0 0/0 .rodata          @3815 */
SECTION_RODATA static f32 const lit_3815 = 1.0f;
COMPILER_STRIP_GATE(0x80602664, &lit_3815);

/* 80602668-8060266C 000004 0004+00 0/1 0/0 0/0 .rodata          @3816 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3816 = 57.0f;
COMPILER_STRIP_GATE(0x80602668, &lit_3816);
#pragma pop

/* 8060266C-80602670 000008 0004+00 0/1 0/0 0/0 .rodata          @3817 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3817 = 65.0f;
COMPILER_STRIP_GATE(0x8060266C, &lit_3817);
#pragma pop

/* 80602670-80602674 00000C 0004+00 0/1 0/0 0/0 .rodata          @3818 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3818 = 76.0f;
COMPILER_STRIP_GATE(0x80602670, &lit_3818);
#pragma pop

/* 80602674-80602678 000010 0004+00 0/3 0/0 0/0 .rodata          @3819 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3819 = 40.0f;
COMPILER_STRIP_GATE(0x80602674, &lit_3819);
#pragma pop

/* 806029D0-806029DC 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806029DC-806029F0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 806029F0-806029F4 000020 0004+00 1/1 0/0 0/0 .data            l_color$3983 */
SECTION_DATA static _GXColor l_color = {
    20, 15, 0, -1
};

/* 806029F4-80602A04 000024 0010+00 1/1 0/0 0/0 .data            chk_x$4163 */
SECTION_DATA static int chk_x[16] = {
    0x46, 0x5D, 0x5C, 0x00, 0x47, 0x07, 0xD7, 0x0, 0xC6, 0xBC, 0xC8, 0x00, 0xC6, 0x35, 0xAC, 0x00
    // 0x46, 0x5D, 0x5C, 0x00, 0x47, 0x07, 0xD7, 0x00, 0xC6, 0xBC, 0xC8, 0x00, 0xC6, 0x35, 0xAC, 0x00,
};

/* 80602A04-80602A14 000034 0010+00 1/1 0/0 0/0 .data            chk_z$4164 */
SECTION_DATA static u8 chk_z[16] = {
    0x46, 0xAA, 0x1E, 0x00, 0xC6, 0x80, 0xA6, 0x00, 0x46, 0x18, 0x4C, 0x00, 0x46, 0xB0, 0x92, 0x00,
};

/* 80602A14-80602A6C -00001 0058+00 1/1 0/0 0/0 .data            @4975 */
SECTION_DATA static void* lit_4975[22] = {
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x10C),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x10C),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x3E4),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x45C),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x48C),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x4E8),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x548),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x5D8),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x624),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x6A8),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x6E0),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x724),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x768),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x874),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x874),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x874),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x874),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x874),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x874),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x874),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x7AC),
    (void*)(((char*)b_gnd_h_run_a__FP11b_gnd_class) + 0x80C),
};

/* 80602A6C-80602A88 -00001 001C+00 1/1 0/0 0/0 .data            @5308 */
SECTION_DATA static void* lit_5308[7] = {
    (void*)(((char*)b_gnd_g_wait__FP11b_gnd_class) + 0xE8),
    (void*)(((char*)b_gnd_g_wait__FP11b_gnd_class) + 0x128),
    (void*)(((char*)b_gnd_g_wait__FP11b_gnd_class) + 0x1D4),
    (void*)(((char*)b_gnd_g_wait__FP11b_gnd_class) + 0x2F0),
    (void*)(((char*)b_gnd_g_wait__FP11b_gnd_class) + 0x3A4),
    (void*)(((char*)b_gnd_g_wait__FP11b_gnd_class) + 0x32C),
    (void*)(((char*)b_gnd_g_wait__FP11b_gnd_class) + 0x384),
};

/* 80602A88-80602AD4 -00001 004C+00 1/1 0/0 0/0 .data            @5543 */
SECTION_DATA static void* lit_5543[19] = {
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0xA0),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0xC4),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x174),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x198),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x240),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x264),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x2F0),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x314),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x3DC),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x400),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x4A0),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x4CC),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x544),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x5F0),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x8B0),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x728),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x75C),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x7B4),
    (void*)(((char*)b_gnd_g_attack__FP11b_gnd_class) + 0x84C),
};

/* 80602AD4-80602ADC 000104 0006+02 1/1 0/0 0/0 .data            w_eff_name$6034 */
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

/* 80602ADC-80602AE4 00010C 0006+02 0/0 0/0 0/0 .data            w_eff_name2$6035 */
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

/* 80602AE4-80602AEC 000114 0006+02 1/1 0/0 0/0 .data            e_name$6046 */
SECTION_DATA static u8 e_name_6046[6 + 2 /* padding */] = {
    0x8B,
    0x95,
    0x8B,
    0x96,
    0x8B,
    0x97,
    /* padding */
    0x00,
    0x00,
};

/* 80602AEC-80602B48 -00001 005C+00 1/1 0/0 0/0 .data            @6511 */
SECTION_DATA static void* lit_6511[23] = {
    (void*)(((char*)action__FP11b_gnd_class) + 0x1A4),
    (void*)(((char*)action__FP11b_gnd_class) + 0xA8),
    (void*)(((char*)action__FP11b_gnd_class) + 0xB4),
    (void*)(((char*)action__FP11b_gnd_class) + 0xC0),
    (void*)(((char*)action__FP11b_gnd_class) + 0xD0),
    (void*)(((char*)action__FP11b_gnd_class) + 0xE0),
    (void*)(((char*)action__FP11b_gnd_class) + 0xEC),
    (void*)(((char*)action__FP11b_gnd_class) + 0x1A4),
    (void*)(((char*)action__FP11b_gnd_class) + 0x1A4),
    (void*)(((char*)action__FP11b_gnd_class) + 0x1A4),
    (void*)(((char*)action__FP11b_gnd_class) + 0x108),
    (void*)(((char*)action__FP11b_gnd_class) + 0x118),
    (void*)(((char*)action__FP11b_gnd_class) + 0x128),
    (void*)(((char*)action__FP11b_gnd_class) + 0x134),
    (void*)(((char*)action__FP11b_gnd_class) + 0x148),
    (void*)(((char*)action__FP11b_gnd_class) + 0x1A4),
    (void*)(((char*)action__FP11b_gnd_class) + 0x1A4),
    (void*)(((char*)action__FP11b_gnd_class) + 0x1A4),
    (void*)(((char*)action__FP11b_gnd_class) + 0x1A4),
    (void*)(((char*)action__FP11b_gnd_class) + 0x158),
    (void*)(((char*)action__FP11b_gnd_class) + 0x164),
    (void*)(((char*)action__FP11b_gnd_class) + 0x178),
    (void*)(((char*)action__FP11b_gnd_class) + 0x190),
};

/* 80602B48-80602B4C 000178 0004+00 1/1 0/0 0/0 .data            e_name$6757 */
SECTION_DATA static u8 e_name_6757[4] = {
    0x8B,
    0x9B,
    0x8B,
    0x9C,
};

/* 80602B4C-80602B50 00017C 0004+00 1/1 0/0 0/0 .data            e_name$6846 */
SECTION_DATA static u8 e_name_6846[4] = {
    0x8B,
    0x98,
    0x8B,
    0x99,
};

/* 80602B50-80602CD4 -00001 0184+00 1/1 0/0 0/0 .data            @7290 */
SECTION_DATA static void* lit_7290[97] = {
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0xA4),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x19C),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x19C),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x19C),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x3E8),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x518),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x660),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x6EC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x86C),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x994),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0xBAC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0xC80),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0xD7C),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0xF04),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0xFB0),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x1668),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x171C),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x1824),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x18D8),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x1A00),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x1B28),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x1C20),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x1CA0),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x1D84),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x1ED8),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x1F68),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x1FCC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21DC),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x2088),
    (void*)(((char*)demo_camera__FP11b_gnd_class) + 0x21A8),
};

/* 80602CD4-80602CE4 000304 0010+00 0/1 0/0 0/0 .data            footJ$7816 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 footJ[16] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x22,
};
#pragma pop

/* 80602CE4-80602CF0 000314 000C+00 0/1 0/0 0/0 .data            b_id$7902 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 b_id[12] = {
    0x8A, 0x37, 0x8A, 0x38, 0x8A, 0x39, 0x8A, 0x3A, 0x8A, 0x3B, 0x8C, 0x24,
};
#pragma pop

/* 80602CF0-80602CFC 000320 000A+02 0/1 0/0 0/0 .data            b_id2$7903 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 b_id2[10 + 2 /* padding */] = {
    0x8A,
    0x3D,
    0x8A,
    0x3E,
    0x8A,
    0x3F,
    0x8A,
    0x40,
    0x8A,
    0x41,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 80602CFC-80602D10 00032C 0014+00 0/1 0/0 0/0 .data            bun_xs$7913 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 bun_xs[20] = {
    0xC3, 0x16, 0x00, 0x00, 0xC2, 0x96, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x42, 0x96, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00,
};
#pragma pop

/* 80602D10-80602D28 000340 0018+00 1/1 0/0 0/0 .data            btk_d$8802 */
SECTION_DATA static u8 btk_d[24] = {
    0x00, 0x00, 0x00, 0x77, 0x00, 0x00, 0x00, 0x76, 0x00, 0x00, 0x00, 0x73,
    0x00, 0x00, 0x00, 0x74, 0x00, 0x00, 0x00, 0x75, 0x00, 0x00, 0x00, 0x72,
};

/* 80602D28-80602D68 000358 0040+00 0/1 0/0 0/0 .data            h_cc_sph_src$9127 */
#pragma push
#pragma force_active on
static dCcD_SrcSph h_cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0x1f}, {0x4006020, 0x3}, 0x75}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x7, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80602D68-80602DA8 000398 0040+00 0/1 0/0 0/0 .data            cc_sph_src$9128 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 cc_sph_src[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x04, 0x01, 0x20, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x75, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 80602DA8-80602DE8 0003D8 0040+00 0/1 0/0 0/0 .data            at_sph_src$9129 */
#pragma push
#pragma force_active on
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0x1f}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80602DE8-80602E28 000418 0040+00 0/1 0/0 0/0 .data            def_sph_src$9130 */
#pragma push
#pragma force_active on
static dCcD_SrcSph def_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xdcfbfdfd, 0x3}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x5, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 100.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80602E28-80602E6C 000458 0044+00 0/1 0/0 0/0 .data            co_cyl_src$9131 */
#pragma push
#pragma force_active on
static dCcD_SrcCyl co_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        100.0f, // mRadius
        200.0f // mHeight
    } // mCyl
};
#pragma pop

/* 80602E6C-80602E8C -00001 0020+00 1/0 0/0 0/0 .data            l_daB_GND_Method */
static actor_method_class l_daB_GND_Method = {
    (process_method_func)daB_GND_Create__FP10fopAc_ac_c,
    (process_method_func)daB_GND_Delete__FP11b_gnd_class,
    (process_method_func)daB_GND_Execute__FP11b_gnd_class,
    (process_method_func)daB_GND_IsDelete__FP11b_gnd_class,
    (process_method_func)daB_GND_Draw__FP11b_gnd_class,
};

/* 80602E8C-80602EBC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_GND */
extern actor_process_profile_definition g_profile_B_GND = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_B_GND,             // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(b_gnd_class),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  214,                    // mPriority
  &l_daB_GND_Method,      // sub_method
  0x00044000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80602EBC-80602EC8 0004EC 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80602EC8-80602ED4 0004F8 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80602ED4-80602EE0 000504 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80602EE0-80602EF4 000510 0014+00 2/2 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 80602EF4-80602F00 000524 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80602F00-80602F0C 000530 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80602F0C-80602F18 00053C 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80602F18-80602F3C 000548 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80602330,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80602328,
};

// /* 80602F3C-80602F48 00056C 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
// SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__12J3DFrameCtrlFv,
// };

// /* 80602F48-80602F54 000578 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
// SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__8cM3dGPlaFv,
// };

/* 80602F54-80602F60 000584 000C+00 2/2 0/0 0/0 .data            __vt__13daB_GND_HIO_c */
SECTION_DATA extern void* __vt__13daB_GND_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daB_GND_HIO_cFv,
};

static u8 lbl_145_bss_45;

/* 805F4A4C-805F4A94 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__13daB_GND_HIO_cFv */
daB_GND_HIO_c::daB_GND_HIO_c() {
    // NONMATCHING
}

// /* ############################################################################################## */
// /* 80602678-8060267C 000014 0004+00 4/28 0/0 0/0 .rodata          @3835 */
// SECTION_RODATA static u8 const lit_3835[4] = {
//     0x00,
//     0x00,
//     0x00,
//     0x00,
// };
// COMPILER_STRIP_GATE(0x80602678, &lit_3835);

// /* 8060267C-80602680 000018 0004+00 2/5 0/0 0/0 .rodata          @3836 */
// SECTION_RODATA static f32 const lit_3836 = -1.0f;
// COMPILER_STRIP_GATE(0x8060267C, &lit_3836);

// /* 806029AC-806029AC 000348 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
// #pragma push
// #pragma force_active on
// SECTION_DEAD static char const* const stringBase_806029AC = "B_gnd";
// #pragma pop

/* 805F4A94-805F4B48 000134 00B4+00 15/15 0/0 0/0 .text            anm_init__FP11b_gnd_classifUcf */
static void anm_init(b_gnd_class* i_this, int i_anmID, f32 i_morf, u8 i_attr, f32 i_speed) {
    i_this->mAnmID = i_anmID;
    if (i_anmID == 73) {
        i_anmID = 64;
    }
    i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("B_gnd", i_anmID), i_attr, i_morf, i_speed, 0.0f, -1.0f);
}

// /* ############################################################################################## */
// /* 806029AC-806029AC 000348 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
// #pragma push
// #pragma force_active on
// SECTION_DEAD static char const* const stringBase_806029B2 = "B_hg";
// #pragma pop

/* 805F4B48-805F4C00 0001E8 00B8+00 7/7 0/0 0/0 .text            h_anm_init__FP11b_gnd_classifUcf */
static void h_anm_init(b_gnd_class* i_this, int i_anmID, f32 i_morf, u8 i_attr, f32 i_speed) {
    i_this->mHorseAnmID = i_anmID;
    if (i_anmID == 9) {
        i_anmID = 10;
    }
    i_this->mpHorseMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("B_hg", i_anmID), i_attr, i_morf, i_speed, 0.0f, -1.0f);
}

/* ############################################################################################## */
/* 80602680-80602684 00001C 0004+00 1/1 0/0 0/0 .rodata          @3902 */
SECTION_RODATA static f32 const lit_3902 = 0.75f;
COMPILER_STRIP_GATE(0x80602680, &lit_3902);

/* 80602684-8060268C 000020 0008+00 2/4 0/0 0/0 .rodata          @3904 */
SECTION_RODATA static u8 const lit_3904[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80602684, &lit_3904);

/* 805F4C00-805F4DCC 0002A0 01CC+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
     // NONMATCHING
    if (param_1 == 0) {
        int jnt_no = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        
        b_gnd_class* a_this = (b_gnd_class*)model->getUserArea();
        if (a_this != NULL) {
            MTXCopy(model->getAnmMtx(jnt_no), *calc_mtx);
        }
    }

    return 1;
}

/* 805F4DCC-805F4F38 00046C 016C+00 1/1 0/0 0/0 .text            h_nodeCallBack__FP8J3DJointi */
static void h_nodeCallBack(J3DJoint* param_1, int param_2) {
     // NONMATCHING
    J3DModel* model = j3dSys.getModel();
    if (param_2 == 0) {
        u16 uVar3 = param_1->getJntNo();
        switch (uVar3) {
            case 4:
            case 5:
                mDoMtx_ZrotM(*calc_mtx, 0); // Temporary 0
                break;
            case 8:
            case 9:
                mDoMtx_YrotM(*calc_mtx, 0); // Temporary 0
                break;
            case 28:
            case 29:
                mDoMtx_YrotM(*calc_mtx, 0); // Temporary 0
                break;
        }
    }
    return;
}

/* ############################################################################################## */
/* 8060268C-80602690 000028 0004+00 0/5 0/0 0/0 .rodata          @4102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4102 = 100.0f;
COMPILER_STRIP_GATE(0x8060268C, &lit_4102);
#pragma pop

/* 80602690-80602694 00002C 0004+00 0/3 0/0 0/0 .rodata          @4103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4103 = 3000.0f;
COMPILER_STRIP_GATE(0x80602690, &lit_4103);
#pragma pop

/* 805F4F38-805F53A4 0005D8 046C+00 1/0 0/0 0/0 .text            daB_GND_Draw__FP11b_gnd_class */
static int daB_GND_Draw(b_gnd_class* i_this) {
     // NONMATCHING
    if (!i_this->field_0x2738) {
        fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
        double in_f6 = 0, in_f8 = 0, in_f10 = 0;
        J3DModel* model = i_this->mpModelMorf->getModel();
        g_env_light.settingTevStruct(0, &a_this->current.pos, &a_this->tevStr);

        
        i_this->field_0x0728[i_this->field_0x0748]->entry(model->getModelData());
        i_this->field_0x0724->entry(model->getModelData());
        i_this->field_0x0744->entry(model->getModelData());

        g_env_light.setLightTevColorType_MAJI(model, &a_this->tevStr);
        i_this->mpModelMorf->entryDL();
        g_env_light.settingTevStruct(5, &a_this->current.pos, &i_this->field_0x0774);
        g_env_light.setLightTevColorType_MAJI(i_this->field_0x0768, &i_this->field_0x0774);
        mDoExt_modelUpdateDL(i_this->field_0x0768);
        if (10 < i_this->field_0x0c24) {
            g_env_light.setLightTevColorType_MAJI(i_this->field_0x0c2c[i_this->field_0x0c26], &a_this->tevStr);
            model->getModelData()->getMaterialNodePointer(0);
            J3DGXColor* pJVar4 = model->getModelData()->getMaterialNodePointer(0)->getTevKColor(3);
            pJVar4->a = i_this->field_0x0c24;
            mDoExt_modelUpdateDL(i_this->field_0x0c2c[i_this->field_0x0c26]);
        }
        
        if (i_this->field_0x0771 == 0) {
            g_env_light.setLightTevColorType_MAJI(i_this->field_0x076c->getModelData(), &a_this->tevStr);
            mDoExt_modelUpdateDL(i_this->field_0x076c);
        }

        if (i_this->field_0x0754 != 0) {
            g_env_light.setLightTevColorType_MAJI(i_this->field_0x05d8->getModel()->getModelData(), &a_this->tevStr);
            i_this->field_0x0750->entry(i_this->field_0x05d8->getModel()->getModelData());
            i_this->field_0x074c->entry(i_this->field_0x05d8->getModel()->getModelData());
            i_this->field_0x05d8->entryDL();
        }

        if (i_this->field_0x26c4 < 60) {
            for (int i = 0; i < 36; i++) {
                g_env_light.setLightTevColorType_MAJI(i_this->field_0x0b94[i], &a_this->tevStr);
                mDoExt_modelUpdateDL(i_this->field_0x0b94[i]);
            }
            if (i_this->field_0x1fc4 != 0) {
                g_env_light.setLightTevColorType_MAJI(i_this->mpHorseMorf->getModel(), &a_this->tevStr);
                i_this->mpHorseMorf->entryDL();
            }
            cXyz cStack_34;
            cStack_34.set(i_this->current.pos.x, i_this->current.pos.y + 100.0f, i_this->current.pos.z);
            dDlst_shadowControl_c::getSimpleTex();
            
            cXyz shadow_pos;
            shadow_pos.set(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
            i_this->mShadowID = dComIfGd_setShadow(i_this->mShadowID, 1, model,
                                &shadow_pos, 0.0f, i_this->field_0x0cd4.GetGroundH(),
                                (float)in_f6, (float)in_f8, i_this->field_0x0cd4.m_gnd,
                                &a_this->tevStr, 0, (float)in_f10, dDlst_shadowControl_c::getSimpleTex());
            dComIfGd_addRealShadow(i_this->mShadowID, i_this->field_0x0768);
            if (i_this->field_0x1fc4 == 0) {
                for (int i = 0; i < 36; i++) {
                    dComIfGd_addRealShadow(i_this->mShadowID, i_this->field_0x0b94[i]);
                }
            }

            if (i_this->field_0x1fc4 != 0) {
                i_this->field_0x2170[0].update(16, l_color, &a_this->tevStr);
                dComIfGd_set3DlineMat(&i_this->field_0x2170[0]);
                i_this->field_0x2170[1].update(16, l_color, &a_this->tevStr);
                dComIfGd_set3DlineMat(&i_this->field_0x2170[1]);
                i_this->field_0x21e8.update(2, l_color, &a_this->tevStr);
                dComIfGd_set3DlineMat(&i_this->field_0x21e8);
            }
        }
    }
    return 1;
}

// /* 805F53A4-805F53E0 000A44 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// // cXyz::~cXyz() {
// extern "C" void __dt__4cXyzFv() {
//     // NONMATCHING
// }

// /* ############################################################################################## */
// /* 80602694-8060269C 000030 0008+00 0/3 0/0 0/0 .rodata          @4154 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_4154[8] = {
//     0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x80602694, &lit_4154);
// #pragma pop

// /* 8060269C-806026A4 000038 0008+00 0/3 0/0 0/0 .rodata          @4155 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_4155[8] = {
//     0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x8060269C, &lit_4155);
// #pragma pop

// /* 806026A4-806026AC 000040 0008+00 0/3 0/0 0/0 .rodata          @4156 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u8 const lit_4156[8] = {
//     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
// };
// COMPILER_STRIP_GATE(0x806026A4, &lit_4156);
// #pragma pop

// /* 806026AC-806026B0 000048 0004+00 0/4 0/0 0/0 .rodata          @4157 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4157 = 1000.0f;
// COMPILER_STRIP_GATE(0x806026AC, &lit_4157);
// #pragma pop

/* 805F53E0-805F5574 000A80 0194+00 1/1 0/0 0/0 .text            shot_s_sub__FPvPv */
static void* shot_s_sub(void* i_actor, void* i_data) {
     // NONMATCHING
    if (fopAcM_IsActor(i_actor) && (fopAcM_GetName(i_actor) == PROC_ARROW) &&
        ((fopAcM_GetParam(i_actor) == 1) || (fopAcM_GetParam(i_actor) == 2))) {
            cXyz vec = ((fopAc_ac_c*)i_data)->current.pos - ((fopAc_ac_c*)i_actor)->current.pos;
            if (vec.abs() < 1000.0f) {
                return i_actor;
            }
    }
    return NULL;
}

/* ############################################################################################## */
/* 806026B0-806026B4 00004C 0004+00 0/1 0/0 0/0 .rodata          @4312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4312 = -5000.0f;
COMPILER_STRIP_GATE(0x806026B0, &lit_4312);
#pragma pop

/* 806026B4-806026B8 000050 0004+00 0/2 0/0 0/0 .rodata          @4313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4313 = 6000.0f;
COMPILER_STRIP_GATE(0x806026B4, &lit_4313);
#pragma pop

/* 806026B8-806026BC 000054 0004+00 0/6 0/0 0/0 .rodata          @4314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4314 = 200.0f;
COMPILER_STRIP_GATE(0x806026B8, &lit_4314);
#pragma pop

/* 806026BC-806026C0 000058 0004+00 0/2 0/0 0/0 .rodata          @4315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4315 = 2000.0f;
COMPILER_STRIP_GATE(0x806026BC, &lit_4315);
#pragma pop

/* 806026C0-806026C4 00005C 0004+00 0/2 0/0 0/0 .rodata          @4316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4316 = 250.0f;
COMPILER_STRIP_GATE(0x806026C0, &lit_4316);
#pragma pop

/* 806026C4-806026C8 000060 0004+00 0/4 0/0 0/0 .rodata          @4317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4317 = 500.0f;
COMPILER_STRIP_GATE(0x806026C4, &lit_4317);
#pragma pop

/* 806026C8-806026CC 000064 0004+00 0/1 0/0 0/0 .rodata          @4318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4318 = -10000.0f;
COMPILER_STRIP_GATE(0x806026C8, &lit_4318);
#pragma pop

/* 806026CC-806026D0 000068 0004+00 0/1 0/0 0/0 .rodata          @4319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4319 = 700.0f;
COMPILER_STRIP_GATE(0x806026CC, &lit_4319);
#pragma pop

/* 806026D0-806026D4 00006C 0004+00 0/1 0/0 0/0 .rodata          @4320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4320 = -700.0f;
COMPILER_STRIP_GATE(0x806026D0, &lit_4320);
#pragma pop

/* 806026D4-806026D8 000070 0004+00 0/1 0/0 0/0 .rodata          @4321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4321 = 2500.0f;
COMPILER_STRIP_GATE(0x806026D4, &lit_4321);
#pragma pop

/* 80602F68-80602F6C 000008 0001+03 3/3 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80602F6C-80602F70 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80602F70-80602F74 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80602F74-80602F78 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80602F78-80602F7C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80602F7C-80602F80 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80602F80-80602F84 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80602F84-80602F88 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80602F88-80602F8C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80602F8C-80602F90 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80602F90-80602F94 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80602F94-80602F98 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80602F98-80602F9C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80602F9C-80602FA0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80602FA0-80602FA4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80602FA4-80602FA8 -00001 0004+00 1/2 0/0 0/0 .bss             None */
/* 80602FA4 0001+00 data_80602FA4 @1009 */
/* 80602FA5 0003+00 data_80602FA5 None */
// static u8 struct_80602FA4[4];

/* 80602FA8-80602FB4 000048 000C+00 0/1 0/0 0/0 .bss             @3810 */
#pragma push
#pragma force_active on
static u8 lit_3810[12];
#pragma pop

/* 80602FB4-80602FD0 000054 001C+00 3/5 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 80602FD0-80602FE0 000070 000C+04 0/1 0/0 0/0 .bss             @4187 */
#pragma push
#pragma force_active on
static u8 lit_4187[12 + 4 /* padding */];
#pragma pop

/* 80602FE0-80602FEC 000080 000C+00 0/1 0/0 0/0 .bss             k_pos$4186 */
#pragma push
#pragma force_active on
static u8 k_pos[12];
#pragma pop

/* 805F5574-805F5BE8 000C14 0674+00 1/1 0/0 0/0 .text            gake_check__FP11b_gnd_class */
static void gake_check(b_gnd_class* i_this) {
     // NONMATCHING
    // bool bVar1;
    // dBgS_GndChk dStack_94;
    // float fVar10;
    // cXyz local_70;
    // cXyz local_ac;
    // cXyz local_a0;
    
    // if (i_this->current.pos.y < -5000.0f) {
    //     i_this->current.pos.x = i_this->home.pos.x;
    //     i_this->current.pos.y = i_this->home.pos.y;
    //     i_this->current.pos.z = i_this->home.pos.z;
    //     i_this->old.pos.x = i_this->current.pos.x;
    //     i_this->old.pos.y = i_this->current.pos.y;
    //     i_this->old.pos.z = i_this->current.pos.z;
    // }

    // int local_98 = 0;
    // int iVar8 = 0;
    // while (true) {
    //     local_a0.x = (float)(chk_x[iVar8] - i_this->current.pos.x);
    //     local_a0.z = (float)(chk_z[iVar8] - i_this->current.pos.z);
    //     int iVar5 = cM_atan2s(local_a0.x, local_a0.z);
    //     s16 sVar4 = (s16)iVar5 - i_this->shape_angle.GetY();
    //     fVar10 = local_a0.x * local_a0.x + local_a0.z * local_a0.z;
    //     if (fVar10 > 0.0f) {
    //         fVar10 = (1.0f / sqrt(fVar10)) * fVar10;
    //     }

    //     if ((fVar10 < 6000.0f && sVar4 < 0x4000) && sVar4 > -0x4000) break;

    //     if (3 < local_98) {
    //         cMtx_YrotS(*calc_mtx, i_this->shape_angle.GetY());
    //         bVar1 = false;
    //         local_a0.x = 200.0f;
    //         local_a0.y = 1000.0f;
    //         local_a0.z = 200.0f;
    //         MtxPosition(&local_a0, &local_ac);
    //     }
    // }
}

// /* ############################################################################################## */
// /* 806026D8-806026DC 000074 0004+00 0/12 0/0 0/0 .rodata          @4436 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4436 = 10.0f;
// COMPILER_STRIP_GATE(0x806026D8, &lit_4436);
// #pragma pop

// /* 806026DC-806026E0 000078 0004+00 0/4 0/0 0/0 .rodata          @4437 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4437 = 150.0f;
// COMPILER_STRIP_GATE(0x806026DC, &lit_4437);
// #pragma pop

// /* 806026E0-806026E4 00007C 0004+00 0/1 0/0 0/0 .rodata          @4438 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4438 = 900.0f;
// COMPILER_STRIP_GATE(0x806026E0, &lit_4438);
// #pragma pop

// /* 806026E4-806026E8 000080 0004+00 0/1 0/0 0/0 .rodata          @4439 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4439 = 350.0f;
// COMPILER_STRIP_GATE(0x806026E4, &lit_4439);
// #pragma pop

/* 805F5BE8-805F5EF4 001288 030C+00 1/1 0/0 0/0 .text            saku_jump_check__FP11b_gnd_class */
static BOOL saku_jump_check(b_gnd_class* i_this) {
    // NONMATCHING
    s16 sVar1;
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    dBgS_LinChk line_chk;
    cM3dGPla plane;
    cXyz local_e8;
    cXyz local_dc;
    cXyz local_d0;
    cXyz cStack_c4;
    cXyz local_b8;
    cXyz local_ac;
    if (i_this->field_0x0c76 > 3) {
        return 0;
    }

    cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
    cMtx_XrotM(*calc_mtx, i_this->shape_angle.x);
    local_ac.x = 10.0;
    local_ac.y = 150.0;
    local_ac.z = 900.0;
    MtxPosition(&local_ac, &cStack_c4);
    cStack_c4 += i_this->current.pos;
    cStack_c4.y += 200.0f;
    local_b8.x = i_this->current.pos.x;
    local_b8.z = i_this->current.pos.z;
    local_b8.y = i_this->current.pos.y + 350.0f;
    line_chk.Set(&local_b8, &cStack_c4, a_this);

    if (dComIfG_Bgsp().LineCross(&line_chk)) {
        if (dComIfG_Bgsp().GetTriPla(line_chk, &plane)) {
            if (!cBgW_CheckBGround(plane.mNormal.y)) {
                return 0;
            }
        }
    }

    local_b8.y -= 250.0f;
    cStack_c4.y -= 200.0f;
    line_chk.Set(&local_b8, &cStack_c4, a_this);
    if (dComIfG_Bgsp().LineCross(&line_chk)) {
        if (dComIfG_Bgsp().GetTriPla(line_chk, &plane)) {
            if (!cBgW_CheckBGround(plane.mNormal.y)) {
                local_d0.x = line_chk.mLin.mEnd.x;
                local_d0.y = line_chk.mLin.mEnd.y;
                local_d0.z = line_chk.mLin.mEnd.z;

                local_ac.x *= -1.0;
                MtxPosition(&local_ac, &cStack_c4);
                cStack_c4 += i_this->current.pos;
                line_chk.Set(&local_b8, &cStack_c4, a_this);
                if (dComIfG_Bgsp().LineCross(&line_chk)) {
                    return 0;
                }
                // local_dc.x = line_chk.mLin.mEnd.x;
                // local_dc.y = line_chk.mLin.mEnd.y;
                // local_dc.z = line_chk.mLin.mEnd.z;
                local_e8 = local_dc - local_d0;

                sVar1 = cM_atan2s(local_e8.x, local_e8.z);
                if (sVar1 > -0x3000 && sVar1 < 0x3000) {
                    return 1;
                }
            }
        }
    }

    return 0;
}

// /* 805F5EF4-805F5F3C 001594 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// // cM3dGPla::~cM3dGPla() {
// extern "C" void __dt__8cM3dGPlaFv() {
//     // NONMATCHING
// }

/* ############################################################################################## */
// /* 806026E8-806026EC 000084 0004+00 2/13 0/0 0/0 .rodata          @4460 */
// SECTION_RODATA static f32 const lit_4460 = 2.0f;
// COMPILER_STRIP_GATE(0x806026E8, &lit_4460);

/* 805F5F3C-805F6068 0015DC 012C+00 1/1 0/0 0/0 .text            b_gnd_h_wait__FP11b_gnd_class */
static void b_gnd_h_wait(b_gnd_class* i_this) {
    // NONMATCHING
    s16 sVar1 = i_this->field_0x0c3c;
    s16 sVar2 = i_this->field_0x05bc;

    switch (sVar2) {
        case -1:
            Z2GetAudioMgr()->bgmStart(0x200005d, 0, 0);
        case 0:
            anm_init(i_this, 75, 10.0f, 2, 1.0f);
            h_anm_init(i_this, 15, 10.0f, 2, 1.0f);
            i_this->field_0x05bc = 1;
            if (i_this->field_0x0c44[0] == 0) {
                i_this->field_0x05bc = 2;
            }
            break;
        case 2:
            cLib_addCalcAngleS2(&i_this->current.angle.y, sVar1, 8, 0x200);
            sVar2 = sVar1 - i_this->current.angle.y;
            if ((sVar2 < 0x800) && (sVar2 > -0x800)) {
                i_this->mActionID = ACTION_HWAIT_2;
                i_this->field_0x05bc = 0;
            }
            break;
        default:
            break;
    }
    cLib_addCalc0(&i_this->speedF, 1.0f, 2.0f);
}

/* ############################################################################################## */
/* 806026EC-806026F0 000088 0004+00 0/5 0/0 0/0 .rodata          @4503 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4503 = 0.5f;
COMPILER_STRIP_GATE(0x806026EC, &lit_4503);
#pragma pop

// /* 806026F0-806026F4 00008C 0004+00 0/11 0/0 0/0 .rodata          @4504 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4504 = 3.0f;
// COMPILER_STRIP_GATE(0x806026F0, &lit_4504);
// #pragma pop

// /* 806026F4-806026F8 000090 0004+00 0/1 0/0 0/0 .rodata          @4505 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4505 = 4000.0f;
// COMPILER_STRIP_GATE(0x806026F4, &lit_4505);
// #pragma pop

// /* 806026F8-806026FC 000094 0004+00 0/1 0/0 0/0 .rodata          @4506 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4506 = 7500.0f;
// COMPILER_STRIP_GATE(0x806026F8, &lit_4506);
// #pragma pop

/* 805F6068-805F6290 001708 0228+00 1/1 0/0 0/0 .text            b_gnd_h_wait2__FP11b_gnd_class */
static void b_gnd_h_wait2(b_gnd_class* i_this) {
    // NONMATCHING
    s16 sVar2 = i_this->field_0x0c3c;
    float fVar1 = i_this->mpHorseMorf->getFrame();
    s16 sVar3 = i_this->field_0x05bc;
    
    switch (sVar3) {
        case 0:
            if (i_this->field_0x0c76 == 0) {
                float fVar5 = cM_rndF(1.0f);
                if (fVar5 >= 0.5f) {
                    i_this->field_0x05cc = sVar2 + -0x2000;
                } else {
                    i_this->field_0x05cc = sVar2 + 0x2000;
                }
            } else {
                i_this->field_0x05cc = i_this->current.angle.y + -0x8000;
            }

            if ((s16)i_this->field_0x05cc - i_this->current.angle.y < 1) {
                anm_init(i_this, 68, 3.0f, 0, 1.0f);
                h_anm_init(i_this, 13, 3.0f, 0, 1.0f);
            } else {
                anm_init(i_this, 67, 3.0f, 0, 1.0f);
                h_anm_init(i_this, 12, 3.0f, 0, 1.0f);
            }

            i_this->field_0x05bc = 1;
            i_this->field_0x0c68 = 0x100;
        case 2:
            break;
        default:
            if (fVar1 > 11) {
                cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->field_0x05cc, 4, i_this->field_0x0c68);
                cLib_addCalcAngleS2(&i_this->field_0x0c68, 0x400, 1, 0x80);
            }
            
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 75, 10.0f, 2, 1.0f);
                h_anm_init(i_this, 15, 10.0f, 2, 1.0f);
                i_this->field_0x05bc = 2;
            }
            break;
    }
    if (i_this->field_0x0c38 < 4000.0f || i_this->field_0x0c38 > 7500.0f) {
        i_this->mActionID = ACTION_HRUN_P;
        i_this->field_0x05bc = 0;
        i_this->field_0x0c44[3] = 100;
    }
    cLib_addCalc0(&i_this->speedF, 1.0f, 1.0f);
}

// /* ############################################################################################## */
// /* 806026FC-80602700 000098 0004+00 0/7 0/0 0/0 .rodata          @4960 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4960 = 30.0f;
// COMPILER_STRIP_GATE(0x806026FC, &lit_4960);
// #pragma pop

// /* 80602700-80602704 00009C 0004+00 0/6 0/0 0/0 .rodata          @4961 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4961 = 5.0f;
// COMPILER_STRIP_GATE(0x80602700, &lit_4961);
// #pragma pop

// /* 80602704-80602708 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4962 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_4962 = 5000.0f;
// COMPILER_STRIP_GATE(0x80602704, &lit_4962);
// #pragma pop

// /* 80602FEC-80602FF8 00008C 000C+00 0/1 0/0 0/0 .bss             @4509 */
// #pragma push
// #pragma force_active on
// static u8 lit_4509[12];
// #pragma pop

/* 80602FF8-8060305C 000098 0060+04 2/4 0/0 0/0 .bss             b_path */
static cXyz b_path[96 + 4 /* padding */];

/* 805F6290-805F6FA4 001930 0D14+00 2/1 0/0 0/0 .text            b_gnd_h_run_a__FP11b_gnd_class */
static void b_gnd_h_run_a(b_gnd_class* i_this) {
    // NONMATCHING
    /*
        Likely handles Ganondorf's horse's running.
        Not sure yet of difference between
        b_gnd_h_run_a and b_gnd_h_run_p.
    */
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    float fVar19 = i_this->field_0x0c38;
    float fVar18;
    float fVar20 = 0.0f;
    float fVar1 = 1.0f;
    float fVar6;
    float fVar7;
    bool bVar8 = false;
    int iVar13 = daPy_getPlayerActorClass()->checkHorseRide();
    int iVar14;
    int iVar16;
    cXyz local_104;
    cXyz local_f8;
    cXyz local_e0;
    cXyz local_bc;
    cXyz local_b0;
    if (iVar13 && dComIfGp_getHorseActor()->speedF >= 30.0f) {
        bVar8 = true;
    }

    s16 sVar12 = i_this->current.angle.y;
    float fVar2 = 1.0f;
    bool bVar4 = false;
    s16 sVar11 = (i_this->field_0x0c3c + 0x7fff) - player->shape_angle.y;
    if (sVar11 < 0x4000 && sVar11 > -0x4000) {
        bVar4 = true;
    }

    bool bVar3 = false;
    s16 sVar15 = 128;

    long local_a0;

    switch (i_this->field_0x05bc) {
        case 0:
        case 1:
            if (i_this->mAnmID != 73) {
                anm_init(i_this, 73, 5.0f, 2, 1.0f);
                h_anm_init(i_this, 9, 5.0f, 2, 1.0f);
                i_this->field_0x0760 = 1.0f;
            }

            i_this->field_0x05bc = 2;
            i_this->field_0x0c68 = 0;
            iVar13 = 0;
            iVar14 = 1;
            iVar16 = 12;
            
            for (int i = 0; i < 8; i++) {
                local_e0 = b_path[iVar13] - i_this->current.pos;
                if (fVar6 < fVar7) {
                    iVar13 = iVar14;
                }
            }

            i_this->field_0x0c60 = iVar13;
            fVar18 = cM_rndF(100.0f);
            local_a0 = (long)(int)(fVar18 + 100.0f);
            i_this->field_0x0c44[2] = (s16)(int)(fVar18 + 100.0f);
        case 2:
            if (i_this->field_0x0c44[2] == 0 && bVar8) {
                i_this->field_0x05bc = 3;
            } else if (fVar19 > 5000.0f && i_this->field_0x0c44[3] == 0) {
                if (bVar4) {
                    i_this->field_0x05bc = 20;
                    i_this->field_0x0c44[0] = 10;
                } else {
                    i_this->mActionID = 4; // ACT_HRUN_P
                    i_this->field_0x05bc = 0;
                    i_this->field_0x0c44[3] = 100;
                }
            }

            i_this->field_0x0c6a = 1;
            break;
        case 3:
            anm_init(i_this, 56, 3.0f, 0, 1.0f);
            i_this->field_0x05bc = 4;
            i_this->field_0x1e0f = 1;
            i_this->field_0x1e10 = 0.0f;
        case 4:
            bVar4 = true;
            if (i_this->mpModelMorf->isStop()) {
                bVar4 = false;
            }
            if (bVar4) {
                anm_init(i_this, 57, 3.0f, 2, 1.0f);
                i_this->field_0x0c44[0] = 20;
                i_this->field_0x05bc = 5;
            }
            break;
        case 5:
            if (i_this->field_0x0c44[0] == 0) {
                anm_init(i_this, 58, 3.0f, 0, 1.0f);
                i_this->field_0x05bc = 6;
                i_this->field_0x0c44[0] = 15;
                i_this->mZ2Creature.startCreatureVoice(Z2SE_EN_GND_V_ATTACK02C, -1);
            }
            break;
        case 6:
            if (i_this->field_0x0c44[0] == 1) {
                i_this->field_0x1e50.y = i_this->shape_angle.y + 0x4000;
                i_this->field_0x1e50.x = 0;
                i_this->field_0x1e0f = 2;
                i_this->field_0x1e4c = 40.0f;
                i_this->field_0x1e0e = 0;
            }

            bVar4 = true;
            if (i_this->mpModelMorf->isStop()) {
                bVar4 = false;
            }

            if (bVar4) {
                i_this->field_0x05bc = 2;
                fVar19 = cM_rndF(100.0f);
                local_a0 = (long)(int)(fVar19 + 100.0f);
                i_this->field_0x0c44[2] = (s16)(int)(fVar19 + 100.0f);
            }
            break;
        case 7:
            if (i_this->mHorseAnmID != 9) {
                h_anm_init(i_this, 9, 5.0f, 2, 1.0f);
            }
            anm_init(i_this, 60, 1.0f, 0, 1.0f);
            i_this->field_0x05bc = 8;
            i_this->field_0x0c44[0] = 300;
        case 8:
            i_this->field_0x1e08 = 10;
            bVar4 = true;
            if (i_this->mpModelMorf->isStop()) {
                bVar4 = false;
            }

            if (bVar4) {
                anm_init(i_this, 61, 2.0f, 2, 1.0f);
                i_this->mZ2Creature.startCreatureVoice(Z2SE_EN_GND_V_DAMAGE01, -1);
                i_this->field_0x05bc = 9;
            }
            break;
        case 9:
            i_this->field_0x1e08 = 10;
            if (i_this->field_0x0c44[0] == 0) {
                anm_init(i_this, 72, 3.0f, 0, 1.0f);
                i_this->field_0x05bc = 10;
            }
            break;
        case 10:
            i_this->field_0x0c58 = 10;
            bVar4 = true;
            if (i_this->mpModelMorf->isStop()) {
                bVar4 = false;
            }

            if (bVar4) {
                i_this->field_0x05bc = 0;
            }
            break;
        case 11:
            if (sVar11 < 1) {
                anm_init(i_this, 63, 2.0f, 0, 1.0f);
            } else {
                anm_init(i_this, 62, 2.0f, 0, 1.0f);
            }
            i_this->field_0x05bc = 12;
        case 12:
            i_this->field_0x0c58 = 10;
            bVar4 = true;
            if (i_this->mpModelMorf->isStop()) {
                bVar4 = false;
            }

            if (bVar4) {
                i_this->field_0x05bc = 0;
            }
            break;
        case 20:
            fVar1 = 2.0f;
            if (i_this->field_0x0c44[0] == 0) {
                i_this->field_0x05bc = 21;
                anm_init(i_this, 59, 3.0f, 0, 1.0f);
                h_anm_init(i_this, 14, 3.0f, 0, 1.0f);
            }

            i_this->field_0x0c6a = 1;
            fVar20 = fVar18;
            break;
        case 21:
            fVar1 = 2.0f;
            if (i_this->speedF > 15.0f) {
                i_this->field_0x0c6a = 2;
                i_this->mZ2Creature.startCreatureSoundLevel(Z2SE_EN_HG_SLIP, 0, -1);
            }

            if (i_this->speedF < 2.0f) {
                i_this->mActionID = 2; // ACT_HWAIT_2
                i_this->field_0x05bc = 0;
            }
    }

    if (i_this->field_0x05bc < 20) {
        // Some sort of cXyz - operator
        // Some sort of cXyz = operator
        fVar19 = JMAFastSqrt(local_f8.x * local_f8.x + local_f8.z + local_f8.z);
        if (fVar19 < 800.0f) {
            // Some sort of cXyz - operator
            // Some sort of cXyz = operator
            iVar13 = cM_atan2s(local_104.x, local_104.z);
            sVar11 = i_this->current.angle.y - (s16)iVar13;
            if (sVar11 < 0x4000 && sVar11 > -0x4000) {
                i_this->field_0x0c64 = 1;
            } else {
                i_this->field_0x0c64 = -1;
            }
            i_this->field_0x0c60 = i_this->field_0x0c60 + i_this->field_0x0c64;
            i_this->field_0x0c60 = i_this->field_0x0c60 & 7;
            bVar3 = true;
            i_this->field_0x0c68 = 0;
        }

        iVar13 = cM_atan2s(local_b0.x, local_b0.z);
        i_this->field_0x05cc = (s16)iVar13;
        if (i_this->field_0x1e0a != 0 && i_this->field_0x05bc < 3) {
            fVar20 = (fVar19 - 800.0f) * 2.0f;
            fVar19 = 7000.0f;
            if (fVar20 <= 7000.0f && fVar19 < 0.0f) {
                fVar19 = 0.0f;
            }

            i_this->field_0x0c90 = i_this->field_0x0c90 + i_this->field_0x0c92;
            if ((i_this->field_0x0afc & 63U) == 0) {
                fVar20 = cM_rndF(600.0f);
                i_this->field_0x0c92 = (s16)(int)(fVar20 + 300.0f);
            }

            fVar20 = cM_ssin((s16)i_this->field_0x0c90);
            i_this->field_0x05cc = i_this->field_0x05cc + (fVar19 * fVar20);
        }

        if (i_this->field_0x0c72 != 0) {
            i_this->field_0x05cc = i_this->field_0x0c74;
        }

        if (i_this->field_0x1e08 != 0) {
            i_this->field_0x0c68 = 128;
        }

        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->field_0x05cc, 8, i_this->field_0x0c68);
        if (i_this->field_0x0c76 != 0) {
            sVar15 = 0x100;
        }

        cLib_addCalcAngleS2(&i_this->field_0x0c68, 0x400, 1, sVar15);
        if (i_this->field_0x1e08 == 0) {
            if (bVar8) {
                fVar19 = player->speedF;
                fVar20 = l_HIO[10]; // Not sure if l_HIO usage is correct
                if (fVar19 <= fVar20 && fVar19 <= l_HIO[12]) {
                    fVar20 = l_HIO[10];
                }

                if (fopAcM_searchActorDistanceXZ((fopAc_ac_c*)i_this, player) < 2000.0f) {
                    fVar20 = fVar20 * 1.2f;
                }

                fVar2 = i_this->speedF;
                if (l_HIO[12] <= fVar2) {
                    fVar1 = 2.0f;
                } else {
                    fVar1 = 2.5f;
                }
                
                fVar2 = fVar2 / 40.0f;
            } else {
                fVar1 = 2.0f;
                fVar20 = l_HIO[12];
            }
        } else {
            fVar1 = 0.5f;
            fVar20 = l_HIO[24];
        }
    }

    if (fVar2 < 1.0f) {
        fVar2 = 1.0f;
    }

    if (fVar2 > 1.3f) {
        fVar2 = 1.3f;
    }

    cLib_addCalc2(&i_this->speedF, fVar20, 1.0f, fVar1);
    if (fVar20 > 10.0f) {
        sVar12 = (i_this->current.angle.y - sVar12) * -8;
        if (sVar12 < 0x7d1) {
            if (sVar12 < -2000) {
                sVar12 = -2000;
            }
        } else {
            sVar12 = 2000;
        }
        cLib_addCalcAngleS2((s16 *)&i_this->field_0x0c5c, sVar12, 4, 0x300);
    }

    if (i_this->mAnmID == 73) {
        i_this->mpModelMorf->setPlaySpeed(i_this->field_0x0760);
        i_this->mpHorseMorf->setPlaySpeed(i_this->field_0x0760);
    }

    cLib_addCalc2(&i_this->field_0x0760, fVar2, 1.0f, 0.1f);
    if (bVar3) {
        local_b0.x = 0.0f;
        local_b0.y = 1000.0f;
        iVar16 = 0;
        iVar13 = 0;
        sVar12 = 0;
        for (int i = 0; i < 8; i++) {
            cMtx_YrotS(*calc_mtx, (int)(short)(i << 13));
            local_b0.z = cM_rndF(3000.0f);
            local_b0.z = local_b0.z + 12000.0f;
            MtxPosition(&local_b0, &local_bc);
            local_bc.x = local_bc.x + -2989.0f;
            local_bc.z = local_bc.z + 1364.0f;
            // Something with b_path
            iVar16++;
            iVar13 += 12;
            sVar12 += 0x2000;
        }
    }
    return;
}

/* ############################################################################################## */
/* 80602708-8060270C 0000A4 0004+00 0/5 0/0 0/0 .rodata          @4963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4963 = 15.0f;
COMPILER_STRIP_GATE(0x80602708, &lit_4963);
#pragma pop

/* 8060270C-80602710 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4964 = 800.0f;
COMPILER_STRIP_GATE(0x8060270C, &lit_4964);
#pragma pop

/* 80602710-80602714 0000AC 0004+00 0/0 0/0 0/0 .rodata          @4965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4965 = 7000.0f;
COMPILER_STRIP_GATE(0x80602710, &lit_4965);
#pragma pop

/* 80602714-80602718 0000B0 0004+00 0/2 0/0 0/0 .rodata          @4966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4966 = 300.0f;
COMPILER_STRIP_GATE(0x80602714, &lit_4966);
#pragma pop

/* 80602718-8060271C 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4967 = 600.0f;
COMPILER_STRIP_GATE(0x80602718, &lit_4967);
#pragma pop

/* 8060271C-80602720 0000B8 0004+00 0/3 0/0 0/0 .rodata          @4968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4968 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x8060271C, &lit_4968);
#pragma pop

/* 80602720-80602724 0000BC 0004+00 1/5 0/0 0/0 .rodata          @4969 */
SECTION_RODATA static f32 const lit_4969 = 2.5f;
COMPILER_STRIP_GATE(0x80602720, &lit_4969);

/* 80602724-80602728 0000C0 0004+00 0/2 0/0 0/0 .rodata          @4970 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4970 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x80602724, &lit_4970);
#pragma pop

/* 80602728-8060272C 0000C4 0004+00 0/4 0/0 0/0 .rodata          @4971 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4971 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80602728, &lit_4971);
#pragma pop

/* 8060272C-80602730 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4972 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4972 = 12000.0f;
COMPILER_STRIP_GATE(0x8060272C, &lit_4972);
#pragma pop

/* 80602730-80602734 0000CC 0004+00 0/0 0/0 0/0 .rodata          @4973 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4973 = -2989.0f;
COMPILER_STRIP_GATE(0x80602730, &lit_4973);
#pragma pop

/* 80602734-80602738 0000D0 0004+00 0/0 0/0 0/0 .rodata          @4974 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4974 = 1364.0f;
COMPILER_STRIP_GATE(0x80602734, &lit_4974);
#pragma pop

/* 80602738-8060273C 0000D4 0004+00 0/3 0/0 0/0 .rodata          @5101 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5101 = 400.0f;
COMPILER_STRIP_GATE(0x80602738, &lit_5101);
#pragma pop

/* 8060273C-80602740 0000D8 0004+00 0/1 0/0 0/0 .rodata          @5102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5102 = 1700.0f;
COMPILER_STRIP_GATE(0x8060273C, &lit_5102);
#pragma pop

/* 80602740-80602744 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5103 = 550.0f;
COMPILER_STRIP_GATE(0x80602740, &lit_5103);
#pragma pop

/* 80602744-80602748 0000E0 0004+00 0/2 0/0 0/0 .rodata          @5104 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5104 = -200.0f;
COMPILER_STRIP_GATE(0x80602744, &lit_5104);
#pragma pop

/* 80602748-8060274C 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5105 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5105 = 7.0f / 5.0f;
COMPILER_STRIP_GATE(0x80602748, &lit_5105);
#pragma pop

/* 805F6FA4-805F74F4 002644 0550+00 1/1 0/0 0/0 .text            b_gnd_h_run_p__FP11b_gnd_class */
static void b_gnd_h_run_p(b_gnd_class* param_0) {
    // NONMATCHING
}

// /* ############################################################################################## */
// /* 8060274C-80602750 0000E8 0004+00 0/4 0/0 0/0 .rodata          @5137 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5137 = 55.0f;
// COMPILER_STRIP_GATE(0x8060274C, &lit_5137);
// #pragma pop

// /* 80602750-80602754 0000EC 0004+00 0/3 0/0 0/0 .rodata          @5138 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5138 = 1.5f;
// COMPILER_STRIP_GATE(0x80602750, &lit_5138);
// #pragma pop

/* 805F74F4-805F76C4 002B94 01D0+00 1/1 0/0 0/0 .text            b_gnd_h_jump__FP11b_gnd_class */
static void b_gnd_h_jump(b_gnd_class* i_this) {
    // NONMATCHING
    switch (i_this->field_0x05bc) {
        case 0:
            i_this->field_0x05bc = 1;
            anm_init(i_this, 71, 2.0f, 0, 1.0f);
            h_anm_init(i_this, 8, 2.0f, 0, 1.0f);
            i_this->speed.y = 55.0f;
            break;
        case 1:
            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0x05bc = 2;
                anm_init(i_this, 70, 2.0f, 0, 1.0f);
                h_anm_init(i_this, 7, 2.0f, 0, 1.0f);
            }
            break;
        case 2:
            if (i_this->field_0x0cd4.ChkGroundHit()) {
                i_this->field_0x05bc = 3;
                anm_init(i_this, 69, 2.0f, 0, 1.0f);
                h_anm_init(i_this, 6, 2.0f, 0, 1.0f);
                i_this->field_0x2699 = 1;
            }
            break;
        case 3:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mActionID = i_this->field_0x0b00;
                i_this->field_0x05bc = 0;
                i_this->field_0x0760 = 1.5f;
                anm_init(i_this, 73, 2.0f, 2, 1.5f);
                h_anm_init(i_this, 9, 2.0f, 2, 1.5f);
            }
    }
}

/* ############################################################################################## */
// /* 80602754-80602758 0000F0 0004+00 0/6 0/0 0/0 .rodata          @5206 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5206 = 50.0f;
// COMPILER_STRIP_GATE(0x80602754, &lit_5206);
// #pragma pop

/* 80602758-8060275C 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5207 = 12.0f / 5.0f;
COMPILER_STRIP_GATE(0x80602758, &lit_5207);
#pragma pop

// /* 8060275C-80602760 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5208 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5208 = 701.0f;
// COMPILER_STRIP_GATE(0x8060275C, &lit_5208);
// #pragma pop

// /* 80602760-80602764 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5209 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5209 = -5920.0f;
// COMPILER_STRIP_GATE(0x80602760, &lit_5209);
// #pragma pop

// /* 80602764-80602768 000100 0004+00 0/3 0/0 0/0 .rodata          @5210 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5210 = 4.0f;
// COMPILER_STRIP_GATE(0x80602764, &lit_5210);
// #pragma pop

// /* 80602768-8060276C 000104 0004+00 0/2 0/0 0/0 .rodata          @5211 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5211 = 14.0f;
// COMPILER_STRIP_GATE(0x80602768, &lit_5211);
// #pragma pop

/* 805F76C4-805F7A10 002D64 034C+00 1/1 0/0 0/0 .text            b_gnd_h_end__FP11b_gnd_class */
static void b_gnd_h_end(b_gnd_class* i_this) {
    // NONMATCHING
    fopAc_ac_c* actor = fopAcM_SearchByID(i_this->mMantChild);
    cXyz local_24;
    int iVar1 = i_this->mpHorseMorf->getFrame();
    switch (i_this->field_0x26c4) {
        case 0:
            Z2GetAudioMgr()->bgmStop(30, 0);
            i_this->field_0x05bc = 1;
            h_anm_init(i_this, 5, 3.0f, 0, 1.0f);
            anm_init(i_this, 65, 2.0f, 0, 1.0f);
            i_this->mZ2Creature.startCreatureVoice(Z2SE_EN_GND_V_DOWN, -1);
            i_this->speedF = 50.0f;
            i_this->current.pos.x = 2.4f;
            i_this->current.pos.y = 701.0f;
            i_this->current.pos.z = -5920.0f;
            i_this->old.pos.x = i_this->current.pos.x;
            i_this->old.pos.y = i_this->current.pos.y;
            i_this->old.pos.z = i_this->current.pos.z;
            i_this->shape_angle.y = 0;
            i_this->current.angle.y = 0;
            i_this->field_0x1e0f = 0;
            i_this->field_0x1e10 = 0.0f;
            i_this->field_0x26c4 = 30;
            i_this->health = 100;
            i_this->field_0x1e0a = 0;
        case 1:
            if (i_this->field_0x26c4 < 33 && iVar1 == 30) {
                i_this->mpModelMorf->setFrame(0.0f);
                i_this->mpHorseMorf->setFrame(0.0f);
                if (i_this->field_0x26c4 < 32) {
                    i_this->field_0x26c4 = 32;
                } else {
                    i_this->field_0x26c4 = 34;
                    i_this->field_0x26c6 = 0;
                    i_this->field_0x05bc = 2;
                }
            }
            break;
        case 2:
            if (i_this->field_0x26c4 < 34) {
                if (iVar1 == 57) {
                    local_24.x = 4.0f;
                    local_24.y = 4.0f;
                    local_24.z = 4.0f;
                    dComIfGp_particle_set(0x8c21, &i_this->current.pos, &i_this->shape_angle, &local_24);   
                }
                    
                if (iVar1 > 61) {
                    cLib_addCalc0(&i_this->speedF, 1.0f, 1.2f);
                    cLib_addCalcAngleS2(&i_this->shape_angle.y, i_this->current.angle.y + 0x1000, 8, 130);
                    i_this->field_0x2688 = dComIfGp_particle_set(i_this->field_0x2688, 0x8b9a, 
                                                        &i_this->current.pos, 0, 0);
                    if (i_this->speedF > 14.0f) {
                        i_this->mZ2Creature.startCreatureSoundLevel(Z2SE_EN_HG_SLIP, 0, -1);
                    }
                }
            
                if (i_this->speedF < 1.0f) {
                    // actor[10].mTevStr.field_0x1fd = 1; // Not sure what goes here
                }
            } else {
                i_this->mpModelMorf->setFrame(0.0f);
                i_this->mpHorseMorf->setFrame(0.0f);
                i_this->speedF = 0.0f;
                i_this->current.pos.x = 1000.0f;
            }
        default:
            return;

    }
}

// /* ############################################################################################## */
// /* 8060276C-80602770 000108 0004+00 0/1 0/0 0/0 .rodata          @5305 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5305 = 43.0f / 10.0f;
// COMPILER_STRIP_GATE(0x8060276C, &lit_5305);
// #pragma pop

/* 80602770-80602774 00010C 0004+00 0/2 0/0 0/0 .rodata          @5306 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5306 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80602770, &lit_5306);
#pragma pop

/* 805F7A10-805F7E88 0030B0 0478+00 2/1 0/0 0/0 .text            b_gnd_g_wait__FP11b_gnd_class */
static void b_gnd_g_wait(b_gnd_class* i_this) {
    // NONMATCHING
    s16 sVar1 = 0x400;
    float fVar1 = 0.0f;
    fopAc_ac_c* actor1 = fopAcM_SearchByID(i_this->mMantChild);
    fopAc_ac_c* actor2 = fopAcM_SearchByName(740);

    if (!actor2 || actor2->home.pos.y + 2 == 0) {
        if (i_this->field_0x05bc == 5) {
                i_this->field_0x05bc = 6;
                i_this->field_0x0c44[0] = 40;
        }
    } else if (i_this->field_0x05bc < 5 && i_this->field_0x0c38 < 600.0f) {
        i_this->field_0x05bc = 5;
        i_this->field_0x0c44[0] = 10;
    }

    switch (i_this->field_0x05bc) {
        case 0:
            i_this->field_0x05bc = 1;
            anm_init(i_this, 93, 15.0f, 2, 1.0f);
            i_this->field_0x0c44[0] = (cM_rndF(100.0f) + 200.0f);
        case 1:
        fVar1 = 43.0f / 10.0f;
            // if (500.0f <= i_this->field_0x0c38) {
                // if (i_this->field_0x0c44[0] == 1) {
                    // if (800.0f <= i_this->field_0x0c38 || 0.3f <= cM_rndF(1.0f)) {
                    //     i_this->mActionID = 13; // ACT_JUMP
                    //     i_this->field_0x05bc = 0;
                    // } else {
                    //     i_this->mActionID = 11; // ACT_ATTACK
                    //     i_this->field_0x05bc = 10;
                    // }
                // }
            // } else {
                i_this->field_0x05bc = 2;
                anm_init(i_this, 91, 10.0f, 2, 1.0f);
                i_this->field_0x0c44[0] = (cM_rndF(50.0f) + 30.0f);
            // }
            break;
        case 2:
            if (i_this->field_0x0c44[8] == 0) {
                if (650.0f < i_this->field_0x0c38) {
                    i_this->field_0x05bc = 0;
                }

                if (i_this->field_0x0c38 <= 550.0f) {
                    if (150.0f <= i_this->field_0x0c38) {
                        if (i_this->field_0x0c44[0] == 0) {
                            i_this->mActionID = 11; // ACT_ATTACK
                            if (300.0f <= i_this->field_0x0c38) {
                                i_this->field_0x05bc = 2;
                            } else {
                                if (0.5f <= cM_rndF(1.0f)) {
                                    i_this->field_0x05bc = 8;
                                } else {
                                    i_this->field_0x05bc = 0;
                                }
                            }
                        }
                    } else {
                        i_this->mActionID = 11; // ACT_ATTACK
                        i_this->field_0x05bc = 0;
                    }
                }
            } else {
                if (i_this->field_0x0c38 < 300.0f) {
                    i_this->field_0x0c44[8] = 0;
                }

                // if (i_this->field_0x0c44[8] == 1) {
                    i_this->mActionID = 11; // ACT_ATTACK
                    i_this->field_0x05bc = 10;
                // }
            }
            break;
        case 3:
            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0x05bc = 0;
            }
            break;
        case 5:
            if (i_this->field_0x0c44[0] == 1) {
                anm_init(i_this, 91, 10.0f, 2, 1.0f);
            }

            if (i_this->field_0x0c44[0] == 0) {
                sVar1 = 0;
            }

            i_this->field_0x0c7d = 2;

            // Unsure of what below block would translate to
            // (i_this->field232_0xc80).x = *(float *)&actor2[3].base.mBase.mLyTg.mCreateTag.mbIsUse;
            // (i_this->field232_0xc80).y = (float)actor2[3].base.mBase.mLyTg.mpLayer;
            // (i_this->field232_0xc80).z = *(float *)&actor2[3].base.mBase.mLyTg.mNodeListID;
            break;
        case 6:
            sVar1 = 0;
            i_this->field_0x0c5a = 10;
            if (i_this->field_0x0c44[0] == 0) {
                i_this->field_0x05bc = 0;
            }
    }
    cLib_addCalc2(&i_this->speedF, fVar1, 1.0f, 2.0f);
    if ((i_this->field_0x0afc & 12U) == 0) {
        sVar1 = sVar1 >> 1;
    }

    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->field_0x0c3c, 2, sVar1);
    sVar1 = i_this->current.angle.y = i_this->field_0x0c3c;
    if (0x100 < sVar1 || sVar1 < -0x100) {
        i_this->field_0x26c2 = cM_ssin(i_this->field_0x0afc);
    }

    // Unsure of how to decompile last if statement
    // if (i_this->mActionID != 10 /* ACT_WAIT */) {
        
    // }
}

/* 805F7E88-805F878C 003528 0904+00 2/1 0/0 0/0 .text            b_gnd_g_attack__FP11b_gnd_class */
static void b_gnd_g_attack(b_gnd_class* i_this) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 fVar2 = 0.0f;
    f32 fVar1 = 2.0f;
    int iVar1 = (int)i_this->mpModelMorf->getFrame();
    s16 sVar1 = 0;
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    b_gnd_class* actor = (b_gnd_class*)fopAcM_SearchByID(i_this->mMantChild);

    switch (i_this->field_0x05bc) {
        case 0:
            i_this->field_0x05bc = 1;
            anm_init(i_this, 19, 3.0f, 0, 1.0f);
            break;
        case 1:
            if (19 < iVar1 && iVar1 < 29) {
                i_this->field_0x0c77 = 1;
                actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f800000);
            }

            if (43 < iVar1 && iVar1 < 51) {
                actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f19999a);
            }

            if (iVar1 == 25) {
                i_this->field_0x2698 = 1;
            }

            if (19 < iVar1 && iVar1 < 27) {
                i_this->field_0x0c24 = 80;
                i_this->field_0x0c28 = -3000;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mActionID = ACTION_WAIT;
                i_this->field_0x05bc = 0;
            }
            break;
        case 2:
            i_this->field_0x05bc = 3;
            anm_init(i_this, 20, 3.0f, 0, 1.0f);
            break;
        case 3:
            if (16 < iVar1 && iVar1 < 24) {
                i_this->field_0x0c77 = 1;
            }

            if (16 < iVar1 && iVar1 < 20) {
                actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f333333);
            }

            if (36 < iVar1 && iVar1 < 42) {
                actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f19999a);
            }

            if (iVar1 == 20) {
                i_this->field_0x2698 = 1;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mActionID = ACTION_WAIT;
                i_this->field_0x05bc = 0;
            }
            break;
        case 4:
            i_this->field_0x05bc = 5;
            anm_init(i_this, 24, 3.0f, 0, 1.0f);
            break;
        case 5:
            if (2 < iVar1 && iVar1 < 11) {
                actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f19999a);
                i_this->field_0x0c77 = 1;
                i_this->field_0x0c78 = 1;
            }

            if (iVar1 == 6) {
                i_this->field_0x2698 = 1;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mActionID = ACTION_WAIT;
                i_this->field_0x05bc = 0;
            }
            break;
        case 6:
            i_this->field_0x05bc = 7;
            anm_init(i_this, 30, 3.0f, 0, 1.0f);
            break;
        case 7:
            i_this->field_0x0c58 = 10;
            if (12 < iVar1 && iVar1 < 34) {
                fVar2 = 10.0f;
            }

            if (15 < iVar1 && iVar1 < 38) {
                i_this->field_0x0c77 = 1;
                actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f333333);
            }

            if (15 < iVar1 && iVar1 < 30) {
                i_this->field_0x0c24 = 80;
                i_this->field_0x0c28 = -3000;
            }

            if (iVar1 == 20 || iVar1 == 35) {
                i_this->field_0x2698 = 1;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mActionID = ACTION_WAIT;
                i_this->field_0x05bc = 0;
            }
            break;
        case 8:
            i_this->field_0x05bc = 9;
            anm_init(i_this, 31, 3.0f, 0, 1.0f);
            break;
        case 9:
            if ((17 < iVar1 && iVar1 < 25) || (26 < iVar1 && iVar1 < 41)) {
                i_this->field_0x0c77 = 1;
                actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f333333);
                i_this->field_0x0c24 = 80;
            }

            if (iVar1 == 20 || iVar1 == 38) {
                i_this->field_0x2698 = 1;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mActionID = ACTION_WAIT;
                i_this->field_0x05bc = 0;
            }
            break;
        case 10:
            anm_init(i_this, 21, 3.0f, 0, 1.0f);
            i_this->field_0x05bc = 11;
            i_this->field_0x0c58 = 10;
            break;
        case 11:
            i_this->field_0x0c58 = 10;
            sVar1 = 0x800;
            if (14 < iVar1) {
                fVar2 = 30.0f;
                fVar1 = 10.0f;
            }

            if (i_this->mpModelMorf->isStop()) {
                break;
            }

            anm_init(i_this, 22, 3.0f, 0, 1.0f);
            i_this->field_0x05bc = 12;
            i_this->field_0x0c44[0] = 50;
        case 12:
            i_this->field_0x0c58 = 10;
            i_this->field_0x0c79 = 1;
            actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f800000);
            fVar2 = 30.0f;
            fVar1 = 15.0f;
            sVar1 = 0x800;
            i_this->field_0x2698 = 2;
            if (player->checkMasterSwordEquip() && i_this->field_0x0c38 < 600.0f) {
                dComIfGp_setDoStatusForce(107, 0);
                i_this->field_0x2740 = 1;
            }

            if (i_this->field_0x0c44[0] == 0 || i_this->field_0x0c38 < 450.0f) {
                anm_init(i_this, 23, 1.0f, 0, 1.0f);
                i_this->field_0x05bc = 13;
            }
            break;
        case 13:
            i_this->field_0x0c58 = 5;
            i_this->field_0x0c79 = 1;
            fVar1 = 10.0f;
            if (17 < iVar1 && iVar1 < 27) {
                actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f800000);
            }

            if (42 < iVar1 && iVar1 < 54) {
                actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f19999a);
            }

            if (19 < iVar1 && iVar1 < 33) {
                i_this->field_0x0c77 = 2;
            }

            if (17 < iVar1 && iVar1 < 24) {
                i_this->field_0x0c24 = 80;
            }

            if (iVar1 == 25) {
                i_this->field_0x2698 = 1;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mActionID = ACTION_WAIT;
                i_this->field_0x05bc = 0;
            }

            if (iVar1 < 28 && player->checkMasterSwordEquip()) {
                dComIfGp_setDoStatusForce(107, 0);
                i_this->field_0x2740 = 1;
                if (cc_pl_cut_bit_get() == 0x100 && player->speed.y < 0.0f) {
                    i_this->mActionID = ACTION_TUBA;
                    i_this->field_0x05bc = 0;
                }
            }
            break;
        case 15:
            anm_init(i_this, 25, fVar1, 0, 1.0f);
            i_this->field_0x05bc = 16;
            i_this->field_0x0c58 = 10;
            i_this->field_0x0c44[0] = 11;
            break;
        case 16:
            i_this->field_0x0c58 = 10;
            sVar1 = 0x800;
            if (4 < sVar1) {
                fVar2 = 60.0f;
                fVar1 = 30.0f;
                if (iVar1 == 5) {
                    i_this->speed.y = 20.0f;
                }
            }

            if (i_this->field_0x0c44[0] != 0) break;

            anm_init(i_this, 26, 1.0f, 0, 1.0f);
            i_this->field_0x05bc = 17;
        case 17:
            i_this->field_0x0c58 = 10;
            fVar1 = 15.0f;
            sVar1 = 0x800;
            if (1 < iVar1 && iVar1 < 13) {
                i_this->field_0x0c78 = 2;
                i_this->field_0x0c77 = 1;
            }

            if (4 < iVar1) {
                actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f333333);
            }
            
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 29, 1.0f, 0, 1.0f);
                i_this->field_0x05bc = 18;
            }
            break;
        case 18:
            fVar1 = 15.0f;
            if (9 < iVar1 && iVar1 < 21) {
                i_this->field_0x0c77 = 1;
                actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f333333);
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mActionID = ACTION_WAIT;
                i_this->field_0x05bc = 0;
            }
    }

    cLib_addCalc2(&i_this->speedF, fVar2, 1.0f, fVar1);
    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->field_0x0c3c, 4, sVar1);
}

// /* ############################################################################################## */
// /* 80602774-80602778 000110 0004+00 0/0 0/0 0/0 .rodata          @5307 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5307 = 650.0f;
// COMPILER_STRIP_GATE(0x80602774, &lit_5307);
// #pragma pop

// /* 80602778-8060277C 000114 0004+00 0/0 0/0 0/0 .rodata          @5536 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5536 = 3.0f / 5.0f;
// COMPILER_STRIP_GATE(0x80602778, &lit_5536);
// #pragma pop

// /* 8060277C-80602780 000118 0004+00 0/0 0/0 0/0 .rodata          @5537 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5537 = 7.0f / 10.0f;
// COMPILER_STRIP_GATE(0x8060277C, &lit_5537);
// #pragma pop

// /* 80602780-80602784 00011C 0004+00 0/0 0/0 0/0 .rodata          @5538 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static u32 const lit_5538 = 0x40551EB8;
// COMPILER_STRIP_GATE(0x80602780, &lit_5538);
// #pragma pop

// /* 80602784-80602788 000120 0004+00 0/0 0/0 0/0 .rodata          @5539 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5539 = 450.0f;
// COMPILER_STRIP_GATE(0x80602784, &lit_5539);
// #pragma pop

// /* 80602788-8060278C 000124 0004+00 0/1 0/0 0/0 .rodata          @5540 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5540 = 60.0f;
// COMPILER_STRIP_GATE(0x80602788, &lit_5540);
// #pragma pop

// /* 8060278C-80602790 000128 0004+00 0/4 0/0 0/0 .rodata          @5541 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5541 = 20.0f;
// COMPILER_STRIP_GATE(0x8060278C, &lit_5541);
// #pragma pop

// /* 80602790-80602794 00012C 0004+00 0/1 0/0 0/0 .rodata          @5634 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5634 = 7.0f / 20.0f;
// COMPILER_STRIP_GATE(0x80602790, &lit_5634);
// #pragma pop

// /* 80602794-80602798 000130 0004+00 0/3 0/0 0/0 .rodata          @5635 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5635 = 25.0f;
// COMPILER_STRIP_GATE(0x80602794, &lit_5635);
// #pragma pop

/* 805F878C-805F8C20 003E2C 0494+00 1/1 0/0 0/0 .text            b_gnd_g_defence__FP11b_gnd_class */
static void b_gnd_g_defence(b_gnd_class* i_this) {
    // NONMATCHING
    int frame = (int)i_this->mpModelMorf->getFrame();
    s16 sVar2 = 0;
    b_gnd_class* actor = (b_gnd_class*)fopAcM_SearchByID(i_this->mMantChild);
    i_this->field_0x0c58 = 10;
    cc_pl_cut_bit_get();
    s16 sVar1 = i_this->field_0x05bc;
    switch (sVar1) {
        case 0:
            i_this->field_0x05bc = 1;
            if (cM_rndF(1.0) >= 0.5f) {
                if ((i_this->field_0x0c7b & 1) == 0) {
                    anm_init(i_this, 38, 3.0f, 0, 1.0f);
                } else {
                    anm_init(i_this, 37, 3.0f, 0, 1.0f);
                }
            } else if ((i_this->field_0x0c7b & 1) == 0) {
                anm_init(i_this, 36, 3.0f, 0, 1.0f);
            } else {
                anm_init(i_this, 35, 3.0f, 0, 1.0f);
            }

            i_this->mZ2Creature.startCreatureVoice(Z2SE_EN_GND_V_DEFENCE, -1);
            i_this->field_0x0c44[0] = 20;
            i_this->field_0x0c7a = 0;
            break;
        case 1:
            if (i_this->field_0x0c44[0] == 0) {
                if (daPy_getPlayerActorClass()->getCutAtFlg()) {
                    i_this->field_0x05bc = 2;
                    i_this->field_0x0c7b += 1;
                    if (cM_rndF(1.0) >= 0.5f) {
                        if ((i_this->field_0x0c7b & 1) == 0) {
                            anm_init(i_this, 38, 3.0f, 0, 1.0f);
                        } else {
                            anm_init(i_this, 37, 3.0f, 0, 1.0f);
                        }
                    } else if ((i_this->field_0x0c7b & 1) == 0) {
                        anm_init(i_this, 36, 3.0f, 0, 1.0f);
                    } else {
                        anm_init(i_this, 35, 3.0f, 0, 1.0f);
                    }

                    i_this->mZ2Creature.startCreatureVoice(Z2SE_EN_GND_V_DEFENCE, -1);
                    if ((i_this->field_0x0cd4.m_flags & 16) == 0) {
                        i_this->mActionID = ACTION_JUMP;
                        i_this->field_0x05bc = 0;
                        // if (i_this->field_0x0c7a > 2 || cM_rndF(0.1) != 0.0f) {
                        //     if (cM_rndF(1.0) < 0.35f) {
                        //         i_this->mActionID = ACTION_JUMP;
                        //         i_this->field_0x05bc = 0;
                        //     }
                        // }
                    } else if (i_this->field_0x0c7a > 2 || cM_rndF(0.1) != 0.0f) {
                        if (cM_rndF(1.0) < 0.35f) {
                            i_this->mActionID = ACTION_JUMP;
                            i_this->field_0x05bc = 0;
                        }
                    }
                }
            }
            break;
        case 2:
        case 3:
        case 4:
            if (!daPy_getPlayerActorClass()->getCutAtFlg()) {
                i_this->field_0x05bc = 1;
            }

            if (frame < 10) {
                sVar2 = 0x1000;
            }

            if (cc_pl_cut_bit_get() && 5 < frame && frame < 10) {
                i_this->mpModelMorf->setFrame(frame - 1);
            }

            if (frame < 10) {
                i_this->field_0x0c79 = 1;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mActionID = ACTION_WAIT;
                i_this->field_0x05bc = 0;
            }
            break;
        case 5:
            if (i_this->field_0x0c44[0] == 0) {
                i_this->field_0x2698 = 1;
                i_this->mActionID = ACTION_WAIT;
                i_this->field_0x05bc = 3;
                anm_init(i_this, 32, 10.0f, 0, 1.0f);
            } else {
                i_this->current.angle.y += 0x1800;
                i_this->field_0x0eb0 = 30.0f;
                actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f99999a);
            }

            i_this->shape_angle.y = i_this->current.angle.y;
            break;
    }

    cLib_addCalc2(&i_this->speedF, 0.0f, 1.0f, 10.0f);
    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->field_0x0c3c, 2, sVar2);
    if (i_this->field_0x1b70.ChkTgHit()) {
        i_this->field_0x0eb0 = 25.0f;
        i_this->field_0x0eac = i_this->shape_angle.y;
        actor->field_0x1174[0].GetObjAt().SetSPrm(0x3e99999a);
        i_this->field_0x0c7a += 1;
        i_this->field_0x2698 = 1;
    }
}

// /* ############################################################################################## */
// /* 80602798-8060279C 000134 0004+00 0/2 0/0 0/0 .rodata          @5702 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5702 = 70.0f;
// COMPILER_STRIP_GATE(0x80602798, &lit_5702);
// #pragma pop

/* 805F8C20-805F8F88 0042C0 0368+00 1/1 0/0 0/0 .text            b_gnd_g_jump__FP11b_gnd_class */
static int b_gnd_g_jump(b_gnd_class* i_this) {
    // NONMATCHING
    int rv = 1;
    b_gnd_class* actor = (b_gnd_class*)fopAcM_SearchByID(i_this->mMantChild);
    switch (i_this->field_0x05bc) {
        case 0:
            anm_init(i_this, 44, 2.0f, 0, 1.0f);
            i_this->field_0x05bc = 1;
            i_this->field_0x0c58 = 100;
            break;
        case 1:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 45, 0.0f, 2, 1.0f);
                i_this->field_0x05bc = 2;
                if (i_this->field_0x0c38 <= 500.0f) {
                    i_this->speedF = (cM_rndF(10.0f) + 10.0f);
                    i_this->current.angle.y += (int)(cM_rndFX(6000.0f));
                } else {
                    i_this->speedF = (cM_rndF(10.0f) + 30.0f);
                    i_this->current.angle.y += (int)(cM_rndFX(3000.0f));
                }
            }
            
            i_this->speed.y = 70.0f;
            i_this->field_0x2698 = 1;
            break;
        case 2:
            rv = 0;
            cLib_addCalcAngleS2(&i_this->shape_angle.y, i_this->field_0x0c3c, 2, 0x600);
            // actor->field_0x1174[0].SetAtHitCallback(NULL);
            if ((i_this->field_0x0cd4.m_flags & 32) != 0) {
                if (400.0f <= i_this->field_0x0c38) {
                    i_this->mActionID = ACTION_ATTACK;
                    i_this->field_0x05bc = 3;
                    anm_init(i_this, 20, 3.0f, 0, 1.0f);
                    i_this->mpModelMorf->setFrame(10.0f);
                } else {
                    i_this->mActionID = ACTION_ATTACK;
                    i_this->field_0x05bc = 6;
                }

                i_this->current.angle.y = i_this->shape_angle.y;
                i_this->speedF = 0.0f;
                actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f800000);
                i_this->field_0x0c58 = 0;
                i_this->field_0x2698 = 1;
                i_this->mZ2Creature.startCreatureSound(Z2SE_EN_GND_LAND, 0, -1);
            }
            break;
        case 3:
        case 4:
            cLib_addCalcAngleS2(&i_this->shape_angle.y, i_this->field_0x0c3c, 2, 0x600);
            if (i_this->field_0x0c44[0] == 0) {
                i_this->mActionID = ACTION_ATTACK;
                if (150.0f <= i_this->field_0x0c38) {
                    if (300.0f <= i_this->field_0x0c38) {
                        if (0.5f <= cM_rndF(1.0f)) {
                            i_this->field_0x05bc = 2;
                        } else {
                            i_this->field_0x05bc = 10;
                        }
                    } else {
                        i_this->field_0x05bc = 0;
                    }
                } else {
                    i_this->field_0x05bc = 4;
                }
            }
            break;
        case 5:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 91, 10.0f, 2, 1.0f);
            }

            if (i_this->field_0x0c44[0] == 0) {
                i_this->field_0x05bc = 4;
            }
    }

    return rv;
}

// /* ############################################################################################## */
// /* 8060279C-806027A0 000138 0004+00 0/1 0/0 0/0 .rodata          @5751 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5751 = 6.0f;
// COMPILER_STRIP_GATE(0x8060279C, &lit_5751);
// #pragma pop

/* 805F8F88-805F9220 004628 0298+00 1/1 0/0 0/0 .text            b_gnd_g_side__FP11b_gnd_class */
static void b_gnd_g_side(b_gnd_class* i_this) {
    // NONMATCHING
    b_gnd_class* actor = (b_gnd_class*)fopAcM_SearchByID(i_this->mMantChild);
    i_this->field_0x0c58 = 10;

    switch (i_this->field_0x05bc) {
        case 0:
            if (0.5f <= cM_rndF(1.0f)) {
                anm_init(i_this, 80, 2.0f, 0, 1.0f);
                i_this->current.angle.y = i_this->field_0x0c3c + -0x3000;
            } else {
                anm_init(i_this, 78, 2.0f, 0, 1.0f);
                i_this->current.angle.y = i_this->field_0x0c3c + 0x3000;
            }

            i_this->speedF = 30.0f;
            i_this->speed.y = 30.0f;
            i_this->field_0x05bc = 1;
            actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f800000);
            break;

        case 1:
            cLib_addCalcAngleS2(&i_this->shape_angle.y, i_this->field_0x0c3c, 2, 0x600);
            if ((i_this->field_0x0cd4.m_flags & 32) != 0) {
                if (i_this->mAnmID == 78) {
                    anm_init(i_this, 79, 1.0f, 0, 1.0f);
                } else {
                    anm_init(i_this, 81, 1.0f, 0, 1.0f);
                }

                i_this->field_0x05bc = 2;
                i_this->field_0x2698 = 1;
                i_this->mZ2Creature.startCreatureSound(Z2SE_EN_GND_LAND, 0, -1);
            }
            break;

        case 2:
            cLib_addCalc0(&i_this->speedF, 1.0f, 6.0f);
            if (i_this->mpModelMorf->isStop()) {
                if (500.0f <= i_this->field_0x0c38) {
                    i_this->mActionID = ACTION_WAIT;
                    if (0.5f <= cM_rndF(1.0f)) {
                        i_this->field_0x05bc = 3;
                        anm_init(i_this, 32, 10.0f, 0, 1.0f);
                    } else {
                        i_this->field_0x05bc = 0;
                    }
                } else {
                    i_this->mActionID = ACTION_ATTACK;
                    if (300.0f <= i_this->field_0x0c38) {
                        i_this->field_0x05bc = 3;
                        anm_init(i_this, 20, 3.0f, 0, 1.0f);
                        // i_this->mpModelMorf->setFrame(10.0f);
                    }
                }

                i_this->current.angle.y = i_this->shape_angle.y;
            }
    }
    // actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f800000);
}

/* 805F9220-805F92FC 0048C0 00DC+00 1/1 0/0 0/0 .text            b_gnd_g_tuba__FP11b_gnd_class */
static void b_gnd_g_tuba(b_gnd_class* i_this) {
    // NONMATCHING
    b_gnd_class* actor = (b_gnd_class*)fopAcM_SearchByID(i_this->mMantChild);
    i_this->field_0x0c58 = 10;
    switch (i_this->field_0x05bc) {
        case 0:
            anm_init(i_this, 85, 5.0f, 2, 1.0f);
            i_this->field_0x05bc = 1;
            actor->field_0x1174[0].GetObjAt().SetSPrm(0x3fc00000); // Unsure of what goes here
            i_this->field_0x26c4 = 50;
            i_this->speedF = 0.0f;
            dComIfGp_getVibration().StartShock(6, 31, cXyz(0.0f, 1.0f, 0.0f));
            break;
        case 1:
            break;
    }
}

/* 805F92FC-805F94A8 00499C 01AC+00 1/1 0/0 0/0 .text            b_gnd_g_damage__FP11b_gnd_class */
static void b_gnd_g_damage(b_gnd_class* i_this) {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    int frame = (int)i_this->mpModelMorf->getFrame();
    b_gnd_class* actor = (b_gnd_class*)fopAcM_SearchByID(i_this->mMantChild);
    switch (i_this->field_0x05bc) {
        case 0:
            i_this->field_0x05bc = 1;
            if (cM_rndF(1.0f) < 0.5f) {
                anm_init(i_this, 33, 3.0f, 0, 1.0f);
            } else {
                anm_init(i_this, 34, 3.0f, 0, 1.0f);
            }
            i_this->mZ2Creature.startCreatureVoice(Z2SE_EN_GND_V_DAMAGE, -1);
            i_this->current.angle.y = player->shape_angle.y + 0x8000;
            i_this->field_0x0eb0 = 25.0f;
            i_this->field_0x0eac = i_this->current.angle.y;
            actor->field_0x1174[0].GetObjAt().SetSPrm(0x3f000000); // Unsure of what goes here
            break;

        case 1:
            if (i_this->field_0x0c58 <= 51 || frame <= 11) {
                if (!i_this->mpModelMorf->isStop()) {
                    break;
                }
            }

            i_this->field_0x0c58 = 15;
            i_this->mActionID = ACTION_WAIT;
            i_this->field_0x05bc = 0;
            i_this->field_0x1e0a = 0;
            i_this->field_0x0c7c = 0;
    }
    
    cLib_addCalc2(&i_this->speedF, 0.0f, 1.0f, 10.0f);
}

// /* ############################################################################################## */
// /* 806027A0-806027A4 00013C 0004+00 0/1 0/0 0/0 .rodata          @5894 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5894 = 35.0f;
// COMPILER_STRIP_GATE(0x806027A0, &lit_5894);
// #pragma pop

// /* 806027A4-806027A8 000140 0004+00 0/1 0/0 0/0 .rodata          @5895 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_5895 = 9.0f;
// COMPILER_STRIP_GATE(0x806027A4, &lit_5895);
// #pragma pop

/* 805F94A8-805F98A0 004B48 03F8+00 1/1 0/0 0/0 .text            b_gnd_g_down__FP11b_gnd_class */
static void b_gnd_g_down(b_gnd_class* i_this) {
    // NONMATCHING
    int frame = (int)i_this->mpModelMorf->getFrame();
    b_gnd_class* actor = (b_gnd_class*)fopAcM_SearchByID(i_this->mMantChild);
    i_this->field_0x0c58 = 10;

    switch(i_this->field_0x05bc) {
        case 0:
            i_this->field_0x1e0c += 1;
            if (i_this->field_0x1e0c < 3) {
                anm_init(i_this, 41, 3.0f, 0, 1.0f);
                i_this->mZ2Creature.startCreatureVoice(Z2SE_EN_GND_V_DAMAGE, -1);
            }

            i_this->current.angle.y = i_this->field_0x0c3c + -0x8000;
            i_this->field_0x05bc = 1;
            // actor[1].field249_0x1174[0].mBase.mGObjAt.mBase.mGFlag = 0x3f800000 - ???
            i_this->speedF = 30.0f;
            i_this->speed.y = 35.0f;
            return;
        case 1:
            if (frame < 16) {
                // *(undefined1 *)&actor[1].field249_0x1174[0].mBase.mGObjAt.mBase.mHitCallback = 1; - ???
            } else {
                cLib_addCalc0(&i_this->speedF, 1.0f, 3.0f);
                if (frame == 16) {
                    PSMTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(1), mDoMtx_stack_c::now);
                    fopAcM_effSmokeSet1(&i_this->field_0x25b4, &i_this->field_0x25b8,
                        &cXyz(mDoMtx_stack_c::now[0][3], mDoMtx_stack_c::now[1][3], mDoMtx_stack_c::now[2][3]),
                        &i_this->shape_angle, 2.5f, &i_this->tevStr, 1);
                    dComIfGp_getVibration().StartShock(6, 31, cXyz(0.0f, 1.0f, 0.0f));
                    actor->field_0x1174[0].GetObjAt().SetSPrm(0x41100000);
                    if (i_this->mAnmID == 41) {
                        // actor[1].field249_0x1174[0].mBase.mGObjAt.mBase.mGFlag = 0x3f800000; - ???
                    }
                }

                if (i_this->mAnmID == 40 && 21 < frame) {
                    // *(undefined1 *)((int)&actor[1].field249_0x1174[0].mBase.mGObjAt.mBase.mHitCallback + 1) = 1;
                }
            }

            if (i_this->mAnmID == 41 && frame == 48) {
                // actor[1].field249_0x1174[0].mBase.mGObjAt.mBase.mGFlag = 0x3f800000; - ???
            }

            if (i_this->mpModelMorf->isStop()) {
                return;
            }

            i_this->speedF = 0.0f;
            if (i_this->mAnmID != 40) {
                // i_this->mActionID = ACTION_WAIT;
                // i_this->field_0x05bc = 0;
                // i_this->current.angle.y = i_this->shape_angle.y;
                return;
            }

            anm_init(i_this, 43, 3.0f, 2, 1.0f);
            i_this->field_0x05bc = 2;
            i_this->field_0x0c44[0] = 200;
            if (!daPy_getPlayerActorClass()->checkMasterSwordEquip()) {
                return;
            }

            break;
        case 2:
            if (daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_DOWN ) {
                    i_this->field_0x26c4 = 60;
                    i_this->mActionID = ACTION_END;
                    i_this->field_0x05bc = 0;
                    Z2GetAudioMgr()->bgmStop(30, 0);
            }

            if (i_this->field_0x0c44[0] != 0 && daPy_getPlayerActorClass()->checkMasterSwordEquip()) {
                return;
            }

            anm_init(i_this, 42, 3.0f, 0, 1.0f);
            i_this->current.angle.y = i_this->shape_angle.y;
            i_this->field_0x05bc = 3;
            i_this->offDownFlg();
            break;
        default:
            return;            
    }

    if (frame == 10) { // (*(undefined1 *)((int)&actor[1].field249_0x1174[0].mBase.mGObjAt.mBase.mHitCallback + 1) = 1) - ???
        if (i_this->mpModelMorf->isStop()) {
            i_this->mActionID = ACTION_WAIT;
            i_this->field_0x05bc = 0;
        }
    }
}

/* 805F98A0-805F98F8 004F40 0058+00 1/1 0/0 0/0 .text            b_gnd_g_end__FP11b_gnd_class */
static void b_gnd_g_end(b_gnd_class* i_this) {
    // NONMATCHING
    i_this->field_0x0c58 = 10;
    b_gnd_class* actor = (b_gnd_class*)fopAcM_SearchByID(i_this->mMantChild);
    // *(undefined1 *)((int)&actor[1].field249_0x1174[0].mBase.mGObjAt.mBase.mHitCallback + 1) = 1; - ???
}

/* 805F98F8-805F9BE4 004F98 02EC+00 1/1 0/0 0/0 .text            damage_check__FP11b_gnd_class */
static void damage_check(b_gnd_class* i_this) {
    // NONMATCHING
    bool bVar1;
    cXyz cStack_44;
    daPy_py_c* player = daPy_getPlayerActorClass();
    i_this->field_0x1654.Move();
    if (i_this->field_0x1e09 != 0) {
        i_this->field_0x1e09 -= 1;
    }

    if (i_this->field_0x0c58 == 0) {
        b_gnd_class* actor = (b_gnd_class*)fopAcM_SearchByID(i_this->mMantChild);
        for (int i = 0; i < 3; i++) {
            if (i_this->field_0x1690[0].ChkTgHit()) {
                i_this->mAtInfo.mpCollider = i_this->field_0x1690[0].GetTgHitObj();
                cc_at_check((fopAc_ac_c*)i_this, &i_this->mAtInfo);
                if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
                    actor->field_0x1174[0].GetObjAt().SetSPrm(0x3fa66666);
                    i_this->field_0x0c58 = 6;
                    i_this->mZ2Creature.startCreatureSound(Z2SE_EN_GND_MANTEAU, 0, -1);
                    return;
                }

                bVar1 = i_this->field_0x1e09 != 0;
                if (i_this->health < 0 || 3 < i_this->field_0x1e0a && 4 < player->getCutCount()) {
                    bVar1 = true;
                } else {
                    i_this->mActionID = ACTION_DAMAGE;
                    i_this->field_0x05bc = 0;
                    i_this->field_0x2698 = 1;
                    if (i_this->mAtInfo.mHitStatus == 0) {
                        actor->field_0x1174[0].SetAtSPrm(3);
                    } else {
                        actor->field_0x1174[0].SetAtSPrm(2);
                    }

                    if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP && player->checkCutJumpCancelTurn()) {
                        i_this->field_0x0c58 = 3;
                        i_this->field_0x1e09 = 10;
                    } else {
                        i_this->field_0x0c58 = 10;
                        i_this->field_0x1e0a += 1;
                        if (i_this->field_0x0c7c == 0 && 3 < i_this->field_0x1e0a) {
                            i_this->field_0x0c58 = 100;
                        }
                    }
                }

                cXyz local_38;
                local_38.setall(1.0f);
                u8 uVar1 = 1;
                if (bVar1) {
                    uVar1 = 3;
                }
                
                PSMTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), *calc_mtx);
                cXyz local_50;
                local_50.x = cM_rndFX(10.0f);
                local_50.y = cM_rndFX(10.0f) + 50.0f;
                local_50.z = cM_rndFX(10.0f);
                MtxPosition(&local_50, &cStack_44);
                dComIfGp_setHitMark(uVar1, (fopAc_ac_c*)i_this, &cStack_44, NULL, &local_38, 0);
                if (!bVar1) {
                    return;
                }

                i_this->mActionID = ACTION_DOWN;
                i_this->field_0x05bc = 0;
                i_this->field_0x0c58 = 10;
                i_this->field_0x0c7c = 0;
                dScnPly_c::setPauseTimer(7);
                i_this->health = 100;
                return;
            }
        }
    }
}

/* 805F9BE4-805FA2FC 005284 0718+00 1/1 0/0 0/0 .text            eff_set_h__FP11b_gnd_class */
static void eff_set_h(b_gnd_class* i_this) {
    // NONMATCHING
    if (i_this->mHorseAnmID == 9) {
        if (!i_this->mpHorseMorf->checkFrame(5.0f)) {
            if (i_this->mpHorseMorf->checkFrame(20.0f)) {
                i_this->field_0x2698 = i_this->field_0x2698 | 12;
            }
        } else {
            i_this->field_0x2698 = i_this->field_0x2698 | 3;
        }

        i_this->field_0x0c6a = 1;
    }


}

/* 805FA2FC-805FA3E4 00599C 00E8+00 1/1 0/0 0/0 .text            eff_set__FP11b_gnd_class */
static void eff_set(b_gnd_class* i_this) {
    // NONMATCHING
    if (i_this->field_0x2698 == 2) {
        if (i_this->field_0x0afc & 1 != 0) {
            fopAcM_effSmokeSet1(&i_this->field_0x25ac, &i_this->field_0x25b0,
                i_this->field_0x26a8 + (i_this->field_0x0afc >> 1 & 1), &i_this->shape_angle,
                2.0f, &i_this->tevStr, 0);
        }
    } else if (i_this->field_0x2698 == 1) {
        for (int i = 0; i < 2; i++) {
            fopAcM_effSmokeSet1((i_this->field_0x25e4 + i * 4 + -56), (i_this->field_0x25e4 + i * 4 + -12),
                (cXyz*)(&i_this->field_0x26a8[0].x + i * 12), &i_this->shape_angle, 2.5f, &i_this->tevStr, 0);
        }
    }
    i_this->field_0x2698 = 0;
}

/* 805FA3E4-805FA430 005A84 004C+00 2/2 0/0 0/0 .text            s_fkdel_sub__FPvPv */
static void* s_fkdel_sub(void* param_1, void* param_2) { // Unused second parameter necessary for matching
    if (fopAc_IsActor(param_1) && fopAcM_GetName(param_1) == 486) {
        fopAcM_delete((fopAc_ac_c*)param_1);
    }
    return NULL;
}

/* 805FA430-805FA47C 005AD0 004C+00 1/1 0/0 0/0 .text            s_objgbdel_sub__FPvPv */
static void* s_objgbdel_sub(void* param_1, void* param_2) { // Unused second parameter necessary for matching
    if (fopAc_IsActor(param_1) && fopAcM_GetName(param_1) == 45) {
        fopAcM_delete((fopAc_ac_c*)param_1);
    }
    return NULL;
}

/* 805FA47C-805FA758 005B1C 02DC+00 1/1 0/0 0/0 .text            h_damage_check__FP11b_gnd_class */
static void h_damage_check(b_gnd_class* i_this) {
    // NONMATCHING
    BOOL bVar1;
    daPy_py_c* player = daPy_getPlayerActorClass();
    u16 uVar1;
    cXyz local_44;
    cXyz cStack_38;
    cXyz local_2c;
    i_this->field_0x1654.Move();
    if (i_this->field_0x0c58 == 0) {
        b_gnd_class* actor = (b_gnd_class*)fopAcM_SearchByID(i_this->mMantChild);
        for (int i = 0; i < 3; i++) {
            if (actor->field_0x1690[i].ChkTgHit()) {
                i_this->mAtInfo.mpCollider = actor->field_0x1690[i].GetTgHitObj();
                cc_at_check((fopAc_ac_c*)i_this, &i_this->mAtInfo);
                i_this->field_0x0c58 = 10;
                if (i_this->field_0x1e08 != 0) {
                    i_this->field_0x1e08 += 1;
                    actor->field_0x1174[0].SetAtSPrm(1);
                    i_this->field_0x0c58 = 30;
                    if (i_this->health < 1) {
                        i_this->mActionID = ACTION_HEND;
                        i_this->field_0x05bc = 0;
                        fpcM_Search(s_fkdel_sub, i_this);
                        i_this->field_0x1e0a = 0;
                    } else {
                        i_this->field_0x05bc = 11;
                    }

                    bVar1 = true;
                    break;
                }

                if (i_this->mAtInfo.mpCollider->GetObjTg().getRPrm() == 4) {
                    if (i_this->field_0x1e0f == 1) {
                        i_this->field_0x1e0f = 0;
                        i_this->field_0x1e10 = 0.0f;
                    }

                    i_this->mActionID = ACTION_HRUN_A;
                    i_this->field_0x05bc = 7;
                    bVar1 = true;
                    break;
                }
            }
        }

        if (!bVar1) {
            for (int i = 0; i < 2; i++) {
                if (actor->field_0x1690[i].ChkTgHit()) {
                    i_this->mAtInfo.mpCollider = actor->field_0x1690[i].GetTgHitObj();
                    actor->field_0x1690[i].ClrTgHit();
                    if (i_this->field_0x1fc4 != 0 && i_this->field_0x1e08 == 0 &&
                        i_this->mAtInfo.mpCollider->GetObjTg().getRPrm() == 4) {
                            i_this->field_0x0c58 = 10;
                            if (i_this->field_0x1e0f == 1) {
                                i_this->field_0x1e0f = 0;
                                i_this->field_0x1e10 = 0.0f;
                            }

                            i_this->mActionID = ACTION_HRUN_A;
                            i_this->field_0x05bc = 7;
                            bVar1 = true;
                            break;
                        }
                }
            }
        }

        if (bVar1) {
            local_2c.x = 1.0f;
            local_2c.y = 1.0f;
            local_2c.z = 1.0f;
            if (i_this->mAtInfo.mHitStatus != 0) {
                uVar1 = 3;
            } else {
                uVar1 = 1;
            }

            PSMTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), *calc_mtx);
            local_44.x = cM_rndFX(10.0f);
            local_44.y = cM_rndFX(10.0f) + 50.0f;
            local_44.z = cM_rndFX(10.0f);
            MtxPosition(&local_44, &cStack_38);
            dComIfGp_setHitMark(uVar1, (fopAc_ac_c*)i_this, &cStack_38, NULL, &local_2c, 0);
        }
    }
}

/* 805FA758-805FAFF0 005DF8 0898+00 2/1 0/0 0/0 .text            action__FP11b_gnd_class */
static void action(b_gnd_class* i_this) {
    // NONMATCHING
    base_process_class* process;
    cXyz local_80;
    cXyz local_74;
    cXyz cStack_68;
    f32 local_50;
    f32 local_4c;
    f32 local_48;
    daPy_py_c* player = daPy_getPlayerActorClass();
    char cVar1;
    char cVar2;
    f32 distanceFromPlayer = fopAcM_searchActorDistanceXZ(i_this, player);
    i_this->field_0x0c38 = distanceFromPlayer;
    s16 actorAngle = fopAcM_searchPlayerAngleY(i_this);
    cXyz cStack_5c;
    f32 fVar13;
    BOOL isMasterSwordEquipped = FALSE;
    i_this->field_0x0c3c = actorAngle;
    if (i_this->field_0x1e08 != 0) {
        i_this->field_0x1e08 += 1;
    }

    int iVar1 = 1;
    b_gnd_class* pbVar8 = NULL;
    BOOL bVar1 = TRUE;
    s16 sVar4;
    s16 sVar5;
    i_this->field_0x0c7d = 1;
    i_this->field_0x2740 = 0;

    switch (i_this->mActionID) {
        case ACTION_HWAIT_1:
            b_gnd_h_wait(i_this);
            break;
        case ACTION_HWAIT_2:
            b_gnd_h_wait2(i_this);
            break;
        case ACTION_HRUN_A:
            b_gnd_h_run_a(i_this);
            isMasterSwordEquipped = true;
            break;
        case ACTION_HRUN_P:
            b_gnd_h_run_p(i_this);
            isMasterSwordEquipped = true;
            break;
        case ACTION_HJUMP:
            b_gnd_h_jump(i_this);
            break;
        case ACTION_HEND:
            b_gnd_h_end(i_this);
            bVar1 = FALSE;
            iVar1 = 0;
            i_this->field_0x0c7d = 0;
            break;
        case ACTION_WAIT:
            b_gnd_g_wait(i_this);
            pbVar8 = i_this; // pbVar8 = (b_gnd_class *)&DAT_00000001; - ???
            break;
        case ACTION_ATTACK:
            pbVar8 = i_this;
            b_gnd_g_attack(i_this);
            break;
        case ACTION_DEFENCE:
            b_gnd_g_defence(i_this);
            break;
        case ACTION_JUMP:
            iVar1 = b_gnd_g_jump(i_this);
            bVar1 = FALSE;
            break;
        case ACTION_SIDE:
            b_gnd_g_side(i_this);
            bVar1 = FALSE;
            break;
        case ACTION_TUBA:
            b_gnd_g_tuba(i_this);
            break;
        case ACTION_DAMAGE:
            b_gnd_g_damage(i_this);
            i_this->field_0x0c7d = 0;
            break;
        case ACTION_DOWN:
            b_gnd_g_down(i_this);
            bVar1 = FALSE;
            i_this->field_0x0c7d = 0;
            break;
        case ACTION_END:
            b_gnd_g_end(i_this);
            bVar1 = FALSE;
            i_this->field_0x0c7d = 0;
    }

    i_this->mZ2Creature.setLinkSearch(true);
    if (iVar1 == 0) {
        i_this->actor_status = i_this->actor_status;
        i_this->attention_info.flags = 0;
    } else {
        i_this->attention_info.flags = 4;
    }

    if (i_this->field_0x1fc4 == 0) {
        isMasterSwordEquipped = player->checkMasterSwordEquip();
        if (!isMasterSwordEquipped) {
            i_this->field_0x0c58 = 10;
        }

        if (i_this->field_0x0c5a != 0) {
            pbVar8 = NULL;
        }

        if (pbVar8) {
            process = fpcM_Search(shot_s_sub, i_this);
            cVar1 = process != NULL;
            if (player->checkHookshotShootReturnMode() && player->checkHookshotReturnMode()) {
                cVar1 = 2;
            }

            cXyz* ppos = player->getIronBallCenterPos();
            if (ppos != NULL) {
                // cStack_5c = player->current.pos - ppos;
                fVar13 = ppos->absXZ(player->current.pos);
                if (fVar13 > 300.0f) {
                    isMasterSwordEquipped = TRUE;
                }

            //     if ((((fVar3 < 400.0) &&
            //     ((d_com_inf_game::g_dComIfG_gameInfo.play.mPlayerStatus[0] & 0x400) == 0)) &&
            //    (cVar9 = (*(code *)(((d_com_inf_game::g_dComIfG_gameInfo.play.mPlayer)->base).vtable )
            //                       ->checkIronBallReturn)(), cVar9 == '\0')) &&
            //   (cVar9 = (*(code *)(((d_com_inf_game::g_dComIfG_gameInfo.play.mPlayer)->base).vtable) ->
            //                      checkIronBallGroundStop)(), cVar9 == '\0')) {
            //  cVar12 = '\x02';
            // }
            }

            fVar13 = 0.0f;
            if (player->mCutType == daPy_py_c::CUT_TYPE_LARGE_TURN_RIGHT || player->mCutType == daPy_py_c::CUT_TYPE_LARGE_TURN_LEFT) {
                fVar13 = 150.0f;
            }

            u16 uVar7 = cc_pl_cut_bit_get();
            if (uVar7 == 0) {
                uVar7 = player->mCutType;
            }

            if (uVar7 == 0x400 || (uVar7 == 0x100 && player->speed.y > 5.0f)) {
                uVar7 = 0;
            }

            if (fopAcM_plAngleCheck((fopAc_ac_c*)i_this, 0x4000) == 0) {
                uVar7 = 0;
            }

            isMasterSwordEquipped = player->checkMasterSwordEquip();
            if (!isMasterSwordEquipped) {
                uVar7 = 0;
            }

            if (uVar7 != 0) {

            }
        }
    } else if (isMasterSwordEquipped && saku_jump_check(i_this) != 0) {
        i_this->field_0x0b00 = i_this->mActionID;
        i_this->mActionID = ACTION_HJUMP;
        i_this->field_0x05bc = 0;
    }

    sVar4 = 0;
    sVar5 = 0;
    if (i_this->field_0x0c7d != 0) {
        if (i_this->field_0x0c7d == 1) {
            local_74 = player->eyePos - i_this->current.pos;
            local_50 = local_74.x;
            local_4c = local_74.y;
            local_48 = local_74.z;
        } else {
            local_80 = i_this->field_0x0c80 - i_this->current.pos;
            local_50 = local_80.x;
            local_4c = local_80.y;
            local_48 - local_80.z;
        }

        if (i_this->field_0x1fc4 == 0) {
            local_4c += -200.0f;
        } else {
            local_4c += -450.0f;
        }

        sVar4 = cM_atan2s(local_50, local_48) - i_this->shape_angle.y;
        f32 fVar12 = JMAFastSqrt(local_50 * local_50 + local_48 * local_48);
        sVar5 = i_this->shape_angle.x + cM_atan2s(local_4c, fVar12);
        if (sVar4 < 0x2af9) {
            if (sVar4 < -11000) {
                sVar4 = -11000;
            }
        } else {
            sVar4 = 11000;
        }

        if (sVar5 < 0xbb9) {
            if (sVar5 < -3000) {
                sVar5 = -3000;
            }
        } else {
            sVar5 = 3000;
        }
    }

    cLib_addCalcAngleS2(&i_this->field_0x0c8c, sVar4, 2, 0x1000);
    cLib_addCalcAngleS2(&i_this->field_0x0c8e, sVar5, 2, 0x1000);

    if (bVar1) {
        cLib_addCalcAngleS2(&i_this->shape_angle.y, i_this->current.angle.y, 2, 0x1000);
    }

    if (i_this->field_0x0c70 == 0) {
        i_this->field_0x0c6c = 0.0f;
        i_this->field_0x0c70 = (s16)(cM_rndF(200.0f) + 200.0f);
    } else {
        i_this->field_0x0c70 += -1;
        i_this->field_0x0c6c = (f32)i_this->field_0x0c70;
        if (i_this->field_0x0c6c > 7.0f) {
            i_this->field_0x0c6c = 0.0f;
        }
    }

    cLib_addCalcAngleS2(&i_this->field_0x26c0, i_this->field_0x26c2, 2, 0x600);
    i_this->field_0x26c2 = 0;
}

/* 805FAFF0-805FB0F0 006690 0100+00 1/1 0/0 0/0 .text            ball_bg_check__FP11b_gnd_classi */
static BOOL ball_bg_check(b_gnd_class* i_this, int param_1) {
    // NONMATCHING
    cXyz start;
    cXyz end;
    dBgS_LinChk linchk;

    start = i_this->field_0x1e5c[0];
    end = i_this->field_0x1e5c[0] + ((i_this->field_0x1e5c[0] - i_this->field_0x1e98[1]) * 2.0f);
    linchk.Set(&start, &end, i_this);

    if (dComIfG_Bgsp().LineCross(&linchk)) {
        return TRUE;
    }

    return FALSE;
}

/* ############################################################################################## */
// /* 806027A8-806027AC 000144 0004+00 0/0 0/0 0/0 .rodata          @6508 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6508 = 380.0f;
// COMPILER_STRIP_GATE(0x806027A8, &lit_6508);
// #pragma pop

// /* 806027AC-806027B0 000148 0004+00 0/0 0/0 0/0 .rodata          @6509 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6509 = -450.0f;
// COMPILER_STRIP_GATE(0x806027AC, &lit_6509);
// #pragma pop

// /* 806027B0-806027B4 00014C 0004+00 0/2 0/0 0/0 .rodata          @6510 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6510 = 7.0f;
// COMPILER_STRIP_GATE(0x806027B0, &lit_6510);
// #pragma pop

// /* 806027B4-806027B8 000150 0004+00 0/1 0/0 0/0 .rodata          @6631 */
// #pragma push
// #pragma force_active on
// SECTION_RODATA static f32 const lit_6631 = 2.0f / 5.0f;
// COMPILER_STRIP_GATE(0x806027B4, &lit_6631);
// #pragma pop

/* 805FB0F0-805FB414 006790 0324+00 1/1 0/0 0/0 .text himo_control1__FP11b_gnd_classP4cXyziSc */
static void himo_control1(b_gnd_class* i_this, cXyz* param_2, int param_3, s8 param_4) {
    // NONMATCHING
    f32 fVar1;
    f32 y;
    f32 x;
    int iVar2;
    int iVar3;
    g_himo_s *pgVar4;
    g_himo_s *pgVar5 = &i_this->field_0x1ff0[param_3];
    int iVar6;
    int iVar7;
    f32 dVar8;
    cXyz local_c8;
    cXyz local_bc;
    f32 local_b0;
    f32 local_ac;
    f32 local_a8;
    cXyz local_a4;
    cXyz local_98;
    cXyz local_8c;

    pgVar5->field_0x0[0].x = param_2->x;
    pgVar5->field_0x0[0].y = param_2->y;
    pgVar5->field_0x0[0].z = param_2->z;

    cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
    cMtx_XrotS(*calc_mtx, i_this->shape_angle.x);

    local_8c.x = 20.0f;
    if (param_3 == 0) {
        local_8c.x = -20.0f;
    }
    local_8c.y = 0.0f;
    local_8c.z = 0.0f;
    MtxPosition(&local_8c, &local_a4);

    local_8c.x = 0.0f;
    local_8c.y = i_this->field_0x1fd0;
    local_8c.z = local_8c.y;
    MtxPosition(&local_8c, &local_bc);

    if (i_this->speedF <= 20.0f) {
        local_8c.x = i_this->field_0x1fd0 * 0.1f;
    } else {
        local_8c.x = i_this->field_0x1fd0 * 0.4f;
    }
    if (param_3 == 0) {
        local_8c *= -1.0f;
    }
    local_8c.y = 0.0f;
    local_8c.z = 0.0f;
    MtxPosition(&local_8c, &local_c8);

    local_8c.x = 0.0f;
    local_8c.y = 0.0f;
    if (param_4 == 0) {
        local_8c.z = 20.0f;
    } else {
        local_8c.z = 15.0f;
    }
    
    for (int i = 1; i < 16; i++) {
        // local_a8 = *(float *)((int)&JMath::sincosTable_[0].first + (i_this->field287_0x1fd4 + iVar7 & 0xfff8U)); - ???
        local_b0 = local_bc.x * local_a8;
        local_ac = local_bc.y * local_a8;
        local_a8 = local_bc.z * local_a8;
        fVar1 = local_c8.x + local_b0 + (pgVar4->field_0x0[0].x - pgVar5->field_0x0[0].x) + local_a4.x * 1.0f;
        y = local_ac + ((pgVar5->field_0x0[1].y - pgVar5->field_0x0[0].y) - 20.0f);
        x = local_c8.z + local_a8 + (pgVar5->field_0x0[1].z - pgVar5->field_0x0[0].z) + local_a4.z * 1.0f;
        iVar2 = cM_atan2s(fVar1, x);
        fVar1 = JMAFastSqrt(fVar1 * fVar1 + x * x);
        iVar3 = cM_atan2s(y, fVar1);
        cMtx_YrotS(*calc_mtx, (s16)iVar2);
        cMtx_XrotM(*calc_mtx, (s16)iVar3);
        MtxPosition(&local_8c, &local_98);
        pgVar4->field_0x0[0].x = pgVar5->field_0x0[0].x + local_98.x;
        pgVar5->field_0x0[1].y = pgVar5->field_0x0[0].y + local_98.y;
        dVar8 = pgVar5->field_0x0[0].z;
        pgVar5->field_0x0[1].z = dVar8 + local_98.z;
    }
}

/* 805FB414-805FB620 006AB4 020C+00 1/1 0/0 0/0 .text himo_control2__FP11b_gnd_classP4cXyziSc */
static void himo_control2(b_gnd_class* i_this, cXyz* param_2, int param_3, s8 param_4) {
    // NONMATCHING
    f32 fVar1;
    f32 fVar2;
    f32 fVar3;
    cXyz *pcVar6;
    g_himo_s *pgVar7;
    cXyz local_88;
    cXyz local_7c;

    pgVar7 = &i_this->field_0x1ff0[param_3];
    pgVar7->field_0x0[15].x = param_2->x;
    pgVar7->field_0x0[15].y = param_2->y;
    pgVar7->field_0x0[15].z = param_2->z;
    local_7c.x = 0.0f;
    local_7c.y = 0.0f;
    if (param_4 == 0) {
        local_7c.z = 20.0f;
    } else {
        local_7c.z = 15.0f;
    }
    pcVar6 = &pgVar7->field_0x0[14];

    for (int i = 14; i > 0; i--) {
        fVar3 = pcVar6->x - pcVar6[3].x;
        fVar1 = pcVar6->y;
        fVar2 = pcVar6[1].y;
        f32 x = pcVar6->z - pcVar6[1].z;
        u32 iVar4 = cM_atan2s(fVar3, x);
        fVar3 = JMAFastSqrt(fVar3 * fVar3 + x * x);
        u32 iVar5 = cM_atan2s(fVar1 - fVar2, fVar3);
        cMtx_YrotS(*calc_mtx, iVar4);
        cMtx_XrotM(*calc_mtx, iVar5);
        MtxPosition(&local_88, &local_7c);

        pcVar6->x = pcVar6[1].x + local_88.x;
        pcVar6->y = pcVar6[1].y + local_88.y;
        fVar1 = pcVar6[1].z;
        pcVar6->z = fVar1 + local_88.z;
    }

    pcVar6 = i_this->field_0x2170[param_3].getPos(0);
    for (int i = 0; i < 16; i++) {
        pcVar6->x = pgVar7->field_0x0[0].x;
        pcVar6->y = pgVar7->field_0x0[0].y;
        pcVar6->z = pgVar7->field_0x0[0].z;
        pcVar6 += 1;
        pgVar7 += 1;
    }

    pcVar6 = i_this->field_0x2170[param_3].getPos(0);
    pcVar6[param_3].x = i_this->field_0x1ff0[param_3].field_0x0[15].x;
    pcVar6[param_3].y = i_this->field_0x1ff0[param_3].field_0x0[15].y;
    pcVar6[param_3].z = i_this->field_0x1ff0[param_3].field_0x0[15].z;
}

/* 805FB620-805FB704 006CC0 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP11b_gnd_classf */
static void cam_3d_morf(b_gnd_class* i_this, f32 i_scale) {
    cLib_addCalc2(&i_this->field_0x26d4.x, i_this->field_0x26ec.x, i_scale, i_this->field_0x2704.x * i_this->field_0x2710.y);
    cLib_addCalc2(&i_this->field_0x26d4.y, i_this->field_0x26ec.y, i_scale, i_this->field_0x2704.y * i_this->field_0x2710.y);
    cLib_addCalc2(&i_this->field_0x26d4.z, i_this->field_0x26ec.z, i_scale, i_this->field_0x2704.z * i_this->field_0x2710.y);

    cLib_addCalc2(&i_this->field_0x26c8.x, i_this->field_0x26e0.x, i_scale, i_this->field_0x26f8.x * i_this->field_0x2710.y);
    cLib_addCalc2(&i_this->field_0x26c8.y, i_this->field_0x26e0.y, i_scale, i_this->field_0x26f8.y * i_this->field_0x2710.y);
    cLib_addCalc2(&i_this->field_0x26c8.z, i_this->field_0x26e0.z, i_scale, i_this->field_0x26f8.z * i_this->field_0x2710.y);
}

/* 805FB704-805FB7A4 006DA4 00A0+00 1/1 0/0 0/0 .text            cam_spd_set__FP11b_gnd_class */
static void cam_spd_set(b_gnd_class* i_this) {
    i_this->field_0x26f8.x = fabsf(i_this->field_0x26e0.x - i_this->field_0x26c8.x);
    i_this->field_0x26f8.y = fabsf(i_this->field_0x26e0.y - i_this->field_0x26c8.y);
    i_this->field_0x26f8.z = fabsf(i_this->field_0x26e0.z - i_this->field_0x26c8.z);

    i_this->field_0x2704.x = fabsf(i_this->field_0x26ec.x - i_this->field_0x26d4.x);
    i_this->field_0x2704.y = fabsf(i_this->field_0x26ec.y - i_this->field_0x26d4.y);
    i_this->field_0x2704.z = fabsf(i_this->field_0x26ec.z - i_this->field_0x26d4.z);

    i_this->field_0x2710.y = 0.0f;
}

/* ############################################################################################## */
/* 806029AC-806029AC 000348 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806029B7 = "force_start";
SECTION_DEAD static char const* const stringBase_806029C3 = "force_end";
#pragma pop

/* 805FB7A4-805FDAE0 006E44 233C+00 2/1 0/0 0/0 .text            demo_camera__FP11b_gnd_class */
static void demo_camera(b_gnd_class* i_this) {
    // NONMATCHING
    short sVar1;
    s16 sVar2;
    BOOL bVar3;
    daPy_py_c *pdVar8;
    Mtx *src;
    u32 uVar7;
    BOOL bVar9;
    int extraout_r4;
    int extraout_r4_00;
    int uVar10;
    _GXColor *src_b;
    _GXColor *extraout_r4_01;
    int iVar11;
    int iVar12;
    u32 in_register_00004808;
    f32 rndF32;
    u32 local_124;
    u32 local_120;
    u32 local_11c;
    u32 local_118;
    u32 local_114;
    u32 local_110;
    u32 local_10c;
    u32 local_108;
    u32 local_104;
    cXyz cStack_100;
    cXyz cStack_f4;
    cXyz cStack_e8;
    cXyz cStack_dc;
    cXyz cStack_d0;
    cXyz cStack_c4;
    cXyz cStack_b8;
    cXyz cStack_ac;
    cXyz cStack_a0;
    cXyz cStack_94;
    cXyz cStack_88;
    cXyz cStack_7c;
    cXyz cStack_70;
    cXyz local_64;
    cXyz cStack_58;
    cXyz local_4c;
    cXyz local_40;
    double local_30;

    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera1 = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera_class* camera2 = dComIfGp_getCamera(0);
    b_gnd_class* actor = (b_gnd_class*)fopAcM_SearchByID(i_this->mMantChild);

    daHorse_c* horseActor;
    if (i_this->field_0x26c4 != 0) {
        horseActor = dComIfGp_getHorseActor();
    }

    bVar3 = false;
    switch (i_this->field_0x26c4) {
        case 30:
            if (i_this->eventInfo.checkCommandDemoAccrpt() == 0) {
                fopAcM_orderPotentialEvent(i_this, 2, 0xffff, 0);
                i_this->eventInfo.mCondition |= 2;
                break;
            }

            camera1->mCamera.Stop();
            i_this->field_0x26c4 = 31;
            i_this->field_0x26c6 = 0;
            i_this->field_0x2710.x = 55.0f;
            horseActor->changeOriginalDemo();
            player->changeOriginalDemo();
            camera1->mCamera.SetTrimSize(3);
            local_4c = i_this->current.pos;
            local_4c.x -= 5000.0f;
            horseActor->setHorsePosAndAngle(&local_4c, 1);
            i_this->field_0x26ec.set(0.0f, 0.0f, 0.0f);
            i_this->field_0x2704.set(0.0f, 0.0f, 0.0f);
            i_this->field_0x0c44[9] = 0;
            Z2GetAudioMgr()->setDemoName("force_start");
            break;
        case 31:
        case 32:
        case 33:
            if (i_this->field_0x26c4 < 33) {
                if (i_this->field_0x0c44[9] == 0) {
                    rndF32 = cM_rndF(10.0f);
                    i_this->field_0x0c44[9] = (s16)(rndF32 + 5.0f);
                    rndF32 = cM_rndFX(40.0f);
                    i_this->field_0x2704.x = rndF32;
                    i_this->field_0x2704.y = rndF32;
                    i_this->field_0x2704.z = rndF32;
                }

                cLib_addCalc2(&i_this->field_0x26ec.x, i_this->field_0x2704.x, 0.3f, 30.0f);
                cLib_addCalc2(&i_this->field_0x26ec.y, i_this->field_0x2704.y, 0.3f, 30.0f);
                cLib_addCalc2(&i_this->field_0x26ec.z, i_this->field_0x2704.z, 0.3f, 30.0f);

                i_this->field_0x26d4.x = i_this->current.pos.x + i_this->field_0x26ec.x;
                i_this->field_0x26d4.y = i_this->current.pos.y + 300.0f + i_this->field_0x26ec.y;
                i_this->field_0x26d4.z = i_this->current.pos.z + i_this->field_0x26ec.z;
            } else {
                i_this->field_0x26d4 = i_this->eyePos;
            }

            cMtx_YrotS(*calc_mtx, i_this->current.angle.y);
            switch (i_this->field_0x26c4) {
                case 31:
                    local_40.x = 300.0f;
                    local_40.y = 300.0f;
                    local_40.z = -500.0f;
                    break;
                case 32:
                    local_40.x = -300.0f;
                    local_40.y = 300.0f;
                    local_40.z = 400.0f;
                    break;
                case 33:
                    local_40.x = i_this->field_0x2710.z;
                    local_40.y = 300.0f;
                    local_40.z = -1000.0f;
                    cLib_addCalc2(&i_this->field_0x2710.z, 100.0f, 0.1f, 5.0f);
            }

            MtxPosition(&i_this->field_0x26c8, &local_40);
            i_this->field_0x26c8 += i_this->current.pos;
            if (i_this->field_0x26c4 == 33) {
                if (i_this->field_0x26c6 == 140) {
                    local_4c.set(0.0f, 1100.0f, -2000.0f);
                    horseActor->setHorsePosAndAngle(&local_4c, 3);
                    horseActor->changeDemoMode(1, 0);
                    player->changeDemoMode(93, 0, 0, 0);
                }

                if (i_this->field_0x26c6 == 160) {
                    i_this->field_0x26c4 = 35;
                    i_this->field_0x26c6 = 0;
                    i_this->field_0x05bc = 3;
                    Z2GetAudioMgr()->bgmStreamPrepare(0x2000063);
                    Z2GetAudioMgr()->bgmStreamPlay();
                }
            }
            break;
        case 34:
            if (i_this->field_0x26c6 == 0) {
                i_this->field_0x2710.z = -400.0f;
                horseActor->changeDemoMode(8, 0);
            } else {
                if (i_this->field_0x26c6 == 1) {
                    i_this->field_0x26d4 = player->current.pos;
                    i_this->field_0x26c8.set(200.0f, 1318.0f, -1355.0f);
                }

                cLib_addCalc2(&i_this->field_0x26d4.x, player->current.pos.x, 0.2f, 50.0f);
                cLib_addCalc2(&i_this->field_0x26d4.y, player->current.pos.y, 0.2f, 50.0f);
                cLib_addCalc2(&i_this->field_0x26d4.z, player->current.pos.z, 0.2f, 50.0f);
            }
            local_4c.set(0.0f, 1100.0f, i_this->field_0x2710.z + -1500.0f);
            horseActor->setHorsePosAndAngle(&local_4c, 3);
            cLib_addCalc0(&i_this->field_0x2710.z, 0.5f, 20.0f);
            if (i_this->field_0x26c6 == 55) {
                i_this->field_0x26c4 = 33;
                i_this->field_0x26c6 = 0;
                i_this->speedF = 50.0f;
                i_this->field_0x2710.z = -300.0f;
                i_this->current.pos.x = 0.0f;
                local_4c.set(0.0f, 1100.0f, -4000.0f);
                horseActor->setHorsePosAndAngle(&local_4c, 3);
            }
            break;
        case 35:
            i_this->field_0x26d4.set(-286.0f, 1364.0f, -1780.0f);
            i_this->field_0x26c8.set(389.0f, 1326.0f, -2356.0f);
            if (i_this->field_0x26c6 < 2) {
                i_this->field_0x2710.x = 25.0f;
            } else {
                cLib_addCalc2(&i_this->field_0x2710.x, 20.0f, 0.03f, 0.1f);
            }

            if (i_this->field_0x26c6 == 70) {
                i_this->field_0x1fc4 = 0;
                anm_init(i_this, 92, 0.0f, 2, 1.0f);
                i_this->shape_angle.y = i_this->field_0x0c3c;
                i_this->current.angle.y = i_this->field_0x0c3c;
                i_this->field_0x0771 = 0;
                i_this->field_0x0770 = 1;
                for (int i = 0; i < 2; i++) {
                    dComIfGp_particle_set(0x8b9c + i, &i_this->current.pos, &i_this->shape_angle,
                        NULL);
                }
            }

            if (i_this->field_0x26c6 == 80) {
                i_this->field_0x26c4 = 40;
                i_this->field_0x26c6 = 0;
                i_this->field_0x26d4.set(79.0f, 1305.0f, -1029.0f);
                i_this->field_0x26c8.set(86.0f, 1321.0f, -1277.0f);
                i_this->field_0x2710.x = 55.0f;
                local_4c.set(0.0f, 1100.0f, -2000.0f);
                horseActor->setHorsePosAndAngle(&local_4c, -0x2000);
            }
            break;
        case 40:
            if (i_this->field_0x26c6 != 110) break;
            i_this->field_0x26c4 = 41;
            i_this->field_0x26c6 = 0;
            anm_init(i_this, 82, 1.0f, 0, 1.0f);
            i_this->mZ2Creature.startCreatureVoice(Z2SE_EN_GND_V_STANDUP, -1);
            i_this->field_0x0748 = 1;
            horseActor->changeDemoMode(1, 0);
            player->changeDemoMode(1, 0, 0, 0);
        case 41:
            cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
            local_40.x = -50.0f;
            local_40.y = 200.0f;
            local_40.z = 300.0f;
            MtxPosition(&local_4c, &local_40);
            i_this->field_0x26c8.x = local_4c.x + i_this->current.pos.x;
            i_this->field_0x26c8.z = local_4c.z + i_this->current.pos.z;
            cStack_58.y = i_this->current.pos.y;
            cStack_58.y += (i_this->eyePos.y - cStack_58.y) * 0.55f;
            i_this->field_0x26d4.x = i_this->current.pos.x;
            i_this->field_0x26d4.z = i_this->current.pos.z;
            local_64.y = i_this->eyePos.y - 50.0f;
            if (i_this->field_0x26c6 == 0) {
                i_this->field_0x26d4.y = local_64.y;
                i_this->field_0x26c8.y = cStack_58.y;
            } else {
                cLib_addCalc2(&i_this->field_0x26d4.y, local_64.y, 0.1f, 10.0f);
                cLib_addCalc2(&i_this->field_0x26c8.y, cStack_58.y, 0.1f, 10.0f);
            }

            if (i_this->mAnmID == 82 && i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 50, 0.0f, 2, 1.0f);
                i_this->field_0x0748 = 2;
            }

            if (i_this->field_0x26c6 == 250) {
                i_this->field_0x26c4 = 42;
                i_this->field_0x26c6 = 0;
                anm_init(i_this, 51, 0.0f, 0, 1.0f);
                i_this->mZ2Creature.startCreatureVoice(Z2SE_EN_GND_V_LOOK, -1);
                i_this->field_0x0748 = 3;
                player->onForceHorseGetOff();
            }
        case 42:
            cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
            local_40.x = 80.0f;
            local_40.y = 280.0f;
            local_40.z = 40.0f;
            MtxPosition(&i_this->field_0x26c8, &local_40);
            i_this->field_0x26c8 += i_this->current.pos;
            i_this->field_0x26d4.x = i_this->current.pos.x;
            i_this->field_0x26d4.z = i_this->current.pos.z - 20.0f;
            i_this->field_0x26d4.y = i_this->eyePos.y + 10.0f;
            if (i_this->field_0x26c6 < 70) {
                i_this->field_0x0c70 = 8;
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 77, 0.0f, 0, 1.0f);
                i_this->mZ2Creature.startCreatureVoice(Z2SE_EN_GND_V_SAYAOPEN, -1);
                i_this->field_0x0748 = 4;
                i_this->field_0x26c4 = 43;
                i_this->field_0x26c6 = 0;
                local_4c.set(0.0f, 1100.0f, -1000.0f);
                player->setPlayerPosAndAngle(&local_4c, 1, 0);
                // actor->field_0x1174[0].SetAtHitApid(1);
            }
        case 43:
            if (i_this->mpModelMorf->checkFrame(212.0f)) {
                i_this->mZ2Creature.startCreatureVoice(Z2SE_EN_GND_SAYAOPEN, -1);
            }

            if (i_this->field_0x26c6 > 9) {
                if (i_this->field_0x26c6 == 10) {
                    i_this->mMsgFlow.init((fopAc_ac_c*)i_this, 0xbca, 0, NULL);
                }
                i_this->mMsgFlow.doFlow((fopAc_ac_c*)i_this, NULL, 0);
            }

            if (i_this->mpModelMorf->getFrame() <= 340.0f) {
                cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
                local_40.x = 20.0f;
                local_40.y = 180.0f;
                local_40.z = 260.0f;
                MtxPosition(&i_this->field_0x26c8, &local_40);
                i_this->field_0x26c8 += i_this->current.pos;
            } else {
                cLib_addCalc2(&i_this->speedF, 4.3f, 1.0f, 0.7f);
                // actor->field_0x1174[0].SetAtHitApid(3);
            }

            if (i_this->field_0x26c6 == 211) {
                i_this->field_0x0770 = 0;
                // actor[1].field249_0x1174[0].mBase.mGObjAt.mBase.mGFlag = 0x3f666666; - ???
            }

            if (i_this->field_0x26c6 == 215) {
                i_this->field_0x2739 = 1;
                i_this->field_0x273c = 0.0f;
                g_env_light.mThunderEff.field_0x2 = 1;
            }

            if (i_this->field_0x26c6 == 0x186) {
                anm_init(i_this, 93, 0.0f, 2, 1.0f);
                i_this->mpModelMorf->setFrame(20.0f);
                i_this->field_0x26c4 = 44;
                i_this->field_0x26c6 = 0;
                i_this->field_0x0748 = 0;
                i_this->field_0x26d4.set(792.0f, 1595.0f, 1160.0f);
                i_this->field_0x26c8.set(938.0f, 1675.0f, 1337.0f);
                local_4c.set(0.0f, 1100.0f, -500.0f);
                player->setPlayerPosAndAngle(&local_4c, 1, 0);
            }
            break;
        case 44:
            i_this->mMsgFlow.doFlow((fopAc_ac_c*)i_this, NULL, 0);
            if (i_this->field_0x26c6 == 125) {
                g_env_light.mThunderEff.field_0x2 = 1;
            }

            if (i_this->field_0x26c6 < 100) {
                // cLib_addCalc2(&i_this->speedF, 4.3f, 1.0f, 0.7f);
            } else {
                if (i_this->field_0x26c6 == 100) {
                    anm_init(i_this, 90, 12.0f, 2, 1.0f);
                }

                if (i_this->field_0x26c6 == 135) {
                    i_this->field_0x26c4 = 45;
                    i_this->field_0x26c6 = 0;
                    local_4c.set(0.0f, 1100.0f, 0.0f);
                    fopAcM_create(PROC_OBJ_GB, 0xf0069600, &local_4c, 
                        fopAcM_GetRoomNo((fopAc_ac_c*)i_this), 0, 0, -1);
                }

                cLib_addCalc0(&i_this->speedF, 1.0f, 0.7f);
            }
            break;
        case 45:
            if (i_this->field_0x26c6 == 1) {
                horseActor->changeDemoMode(9, 0);
                i_this->field_0x26d4.set(-81.0f, 1391.0f, -2144.0f);
                i_this->field_0x26c8.set(37.0f, 1366.0f, -1865.0f);
                i_this->field_0x26ec.set(76.0f, 1352.0f, -1866.0f);
                i_this->field_0x26e0.set(129.0f, 1358.0f, -2165.0f);
                cam_spd_set(i_this);
            }

            if (i_this->field_0x26c6 == 15) {
                g_env_light.mThunderEff.field_0x2 = 1;
            }

            if (i_this->field_0x26c6 > 24) {
                cam_3d_morf(i_this, 0.2f);
                cLib_addCalc2(&i_this->field_0x2710.y, 0.07f, 1.0f, 0.002f);
            }

            if (i_this->field_0x26c6 == 120) {
                i_this->field_0x26c4 = 46;
                i_this->field_0x26c6 = 200;
                i_this->field_0x26d4.set(101.0f, 1206.0f, -582.0f);
                i_this->field_0x26c8.set(154.0f, 1199.0f, -819.0f);
            }
            break;
        case 46:
            cLib_addCalc2(&i_this->field_0x2710.x, 30.0f, 0.1f, 0.2f);
            if (i_this->field_0x26c6 > 0x130) {
                // actor->field_0x1174[0].SetAtHitApid(2);
            }

            if (i_this->field_0x26c6 == 255) {
                daPy_getPlayerActorClass()->changeDemoMode(23, 1, 2, 0);
            }

            if (i_this->field_0x26c6 == 0x122) {
                anm_init(i_this, 47, 3.0f, 0, 1.0f);
                i_this->field_0x0748 = 5;
                Z2GetAudioMgr()->bgmStart(Z2BGM_VS_GANON_04, 0, 0);
                g_env_light.field_0x12cc = 3;
            }

            if (i_this->field_0x26c6 == 0x140) {
                fopMsgM_messageSetDemo(0x487);
            }

            if (i_this->mAnmID == 47 && i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 91, 3.0f, 2, 1.0f);
                g_env_light.mThunderEff.field_0x2 = 1;
            }

            if (i_this->field_0x26c6 == 0x19a) {
                i_this->mActionID = ACTION_WAIT;
                i_this->field_0x05bc = 2;
                i_this->field_0x0c44[0] = (s16)(cM_rndF(50.0f) + 30.0f);
                i_this->field_0x0c44[8] = 100;
                bVar3 = true;
                dComIfGs_onOneZoneSwitch(15, -1);
                dComIfGs_onSaveDunSwitch(1);
                Z2GetAudioMgr()->setDemoName("force_end");
                g_env_light.field_0x12cc = 1;
            }
            break;
        case 50:
            if (i_this->eventInfo.checkCommandDemoAccrpt() == 0) {
                fopAcM_orderPotentialEvent(i_this, 2, 0xffff, 0);
                i_this->eventInfo.mCondition |= 2;
                break;
            }

            camera1->mCamera.Stop();
            i_this->field_0x26c4 = 51;
            i_this->field_0x26c6 = 0;
            i_this->field_0x2710.x = 55.0f;
            i_this->field_0x2720 = player->current.pos;
            i_this->field_0x272c = player->shape_angle.y;
            i_this->field_0x2734 = 0.0f;
            i_this->field_0x2730 = 0.0f;
            daPy_getPlayerActorClass()->changeOriginalDemo();
            daPy_getPlayerActorClass()->changeDemoMode(89, 0, 0, 0);
            Z2GetAudioMgr()->changeBgmStatus(1);
        case 51:
            /* I believe this case is handling the closeup dueling with Ganondorf */
            // actor->field_0x1174[0].SetAtHitApid(1);
            i_this->field_0x0c70 = 20;
            if (i_this->field_0x26c6 > 4) {
                // cStack_a0.set(0.0f, 1.0f, 0.0f);
                dComIfGp_getVibration().StartQuake(2, 1, cXyz(0.0f, 1.0f, 0.0f));
            }

            dComIfGp_setDoStatusForce(100, 4);
            cMtx_YrotS(*calc_mtx, player->shape_angle.y);
            local_40.x = 0.0f;
            local_40.y = 0.0f;
            local_40.z = i_this->field_0x2734 * 1.3f;
            MtxPosition(&local_4c, &local_40);
            local_4c += i_this->field_0x2720;
            local_4c.y = player->current.pos.y;
            player->setPlayerPosAndAngle(&local_4c, i_this->field_0x272c, 0);
            local_40.x = 0.0f;
            local_40.y = 0.0f;
            local_40.z = 135.0f;
            MtxPosition(&local_4c, &local_40);
            // i_this->current.pos.x = local_4c.x + player->getViewerCurrentPosP().x;
            // i_this->current.pos.z = local_4c.z + player->getViewerCurrentPosP().z;
            i_this->current.angle.y = player->shape_angle.y + -0x8000;

            // cStack_ac = player->getViewerCurrentPosP() - i_this->current.pos;
            cStack_b8 = cStack_ac * 0.5f;
            local_64 = cStack_c4;
            local_64.y += 150.0f;
            local_40.x = 200.0f;
            local_40.y = 0.0f;
            local_40.z = 0.0f;
            MtxPosition(&cStack_58, &local_40);

            cStack_58 += local_64;
            if (i_this->field_0x26c6 == 0) {
                i_this->field_0x26d4 = local_64;
                i_this->field_0x26c8 = cStack_58;
                dComIfGp_setHitMark(2, (fopAc_ac_c *)i_this, 
                    &local_64, NULL, &cXyz(2.0f, 2.0f, 2.0f), 0);
                i_this->mZ2Creature.startCollisionSE(Z2SE_HIT_SWORD, 40);
            } else {
                C_MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(33), *calc_mtx);
                local_40.set(10.0f, 20.0f, 0.0f);
                MtxPosition(&local_4c, &local_40);
                for (int i = 0; i < 2; i++) {
                    i_this->field_0x268c[i - 12] = dComIfGp_particle_set((i_this->field_0x268c[i + 4 - 12]), 
                    (0x8b98 + i + 2), &local_4c, NULL, NULL);
                }

                i_this->mZ2Creature.startCreatureExtraSoundLevel(Z2SE_EN_GND_TUBAZERI_EFF, 0 , -1);

                if (i_this->field_0x0c44[3] == 0) {
                    i_this->field_0x0c44[3] = (s16)(cM_rndF(10.0f) + 3.0f);
                    i_this->field_0x26ec.x = cM_rndFX(20.0f);
                    i_this->field_0x26ec.y = cM_rndFX(20.0f);
                    i_this->field_0x26ec.z = cM_rndFX(20.0f);
                }

                cLib_addCalc2(&i_this->field_0x26d4.x, local_64.x + i_this->field_0x26ec.x, 
                    0.1f, 5.0f);
                cLib_addCalc2(&i_this->field_0x26d4.y, local_64.y + i_this->field_0x26ec.y, 
                    0.1f, 5.0f);
                cLib_addCalc2(&i_this->field_0x26d4.z, local_64.z + i_this->field_0x26ec.z, 
                    0.1f, 5.0f);
            }

            if (mDoCPd_c::getTrigA(0) == 0) {
                i_this->field_0x2730 -= 0.02f;
                if (i_this->field_0x2730 < -1.0f) {
                    i_this->field_0x2730 = -1.0f;
                }
            } else {
                i_this->field_0x2730 += 0.1f;
                if (i_this->field_0x2730 > 1.0f) {
                    i_this->field_0x2730 = 1.0f;
                }
            }

            cLib_addCalc2(&i_this->field_0x2734, i_this->field_0x2730 * 50.0f, 0.1f, 2.0f);
            if (i_this->field_0x2734 > -49.9f) {
                if (i_this->field_0x2734 < 48.0f) {
                    if (i_this->field_0x2730 >= -0.4f) {
                        if (i_this->field_0x2730 <= 0.4f) {
                            i_this->mZ2Creature.startCreatureVoiceLevel(Z2SE_EN_GND_V_TUBAZERI_A, -1);
                            if (i_this->mAnmID != 85 && i_this->field_0x0c44[2] == 0) {
                                anm_init(i_this, 85, 3.0f, 2, 1.0f);
                                daPy_getPlayerActorClass()->changeDemoMode(89, 0, 0, 0);
                                i_this->field_0x0c44[2] = 30;
                                Z2GetAudioMgr()->changeBgmStatus(6);
                            }
                        } else {
                            i_this->mZ2Creature.startCreatureVoiceLevel(Z2SE_EN_GND_V_TUBAZERI_C, -1);
                            if (i_this->mAnmID != 87 && i_this->field_0x0c44[2] == 0) {
                                anm_init(i_this, 87, 3.0f, 2, 1.0f);
                                daPy_getPlayerActorClass()->changeDemoMode(89, 2, 0, 0);
                                i_this->field_0x0c44[2] = 30;
                                Z2GetAudioMgr()->changeBgmStatus(5);
                            }
                        }
                    } else {
                        i_this->mZ2Creature.startCreatureVoiceLevel(Z2SE_EN_GND_V_TUBAZERI_B, -1);
                        if (i_this->mAnmID != 86 && i_this->field_0x0c44[2] == 0) {
                            anm_init(i_this, 86, 3.0f, 2, 1.0f);
                            daPy_getPlayerActorClass()->changeDemoMode(89, 1, 0, 0);
                            i_this->field_0x0c44[2] = 30;
                            Z2GetAudioMgr()->changeBgmStatus(4);
                        }
                    }
                } else {
                    i_this->field_0x26c4 = 55;
                    i_this->field_0x26c6 = 0;
                    anm_init(i_this, 88, 3.0f, 0, 1.0f);
                    daPy_getPlayerActorClass()->changeDemoMode(89, 3, 0, 0);
                    dComIfGp_getVibration().StopQuake(31);
                    Z2GetAudioMgr()->changeBgmStatus(3);
                }
            } else {
                i_this->field_0x26c4 = 52;
                i_this->field_0x26c6 = 0;
                anm_init(i_this, 89, 3.0f, 0, 1.0f);
                daPy_getPlayerActorClass()->changeDemoMode(89, 4, 0, 0);
                dComIfGp_getVibration().StopQuake(31);
                Z2GetAudioMgr()->changeBgmStatus(2);
            }
            break;
        case 52:
            i_this->field_0x0c70 = 20;
            if (i_this->mpModelMorf->isStop()) {
                i_this->mActionID = ACTION_ATTACK;
                i_this->field_0x05bc = 2;
                i_this->field_0x26c4 = 53;
                i_this->field_0x26c6 = 0;
            }

            if (i_this->field_0x26c6 == 20) {
                cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
                local_40.x = -200.0f;
                local_40.y = 50.0f;
                local_40.z = 500.0f;
                MtxPosition(&i_this->field_0x26c8, &local_40);
                i_this->field_0x26c8 += i_this->current.pos;
                i_this->field_0x26d4 = player->current.pos;
                i_this->field_0x26d4.y += 80.0f;
                // actor[1].field249_0x1174[0].mBase.mGObjAt.mBase.mGFlag = 0x3f99999a; - ???
            }
            break;
        case 53:
            i_this->field_0x0c70 = 20;
            if (i_this->field_0x26c6 > 19) {
                local_64 = player->current.pos;
                local_64.y += 80.0f;
                cLib_addCalc2(&i_this->field_0x26d4.x, local_64.x, 0.15f, 200.0f);
                cLib_addCalc2(&i_this->field_0x26d4.y, local_64.y, 0.15f, 200.0f);
                cLib_addCalc2(&i_this->field_0x26d4.z, local_64.z, 0.15f, 200.0f);
            }

            if (i_this->field_0x26c6 == 18) {
                daPy_getPlayerActorClass()->setThrowDamage(0x4049000000000000,
                    0x403e000000000000, i_this->shape_angle.y, 8, 1, 0);
                daPy_getPlayerActorClass()->changeDemoMode(1, 0, 0, 0);
                cStack_7c = player->current.pos;
                cStack_7c.y += 150.0f;
                dComIfGp_setHitMark(3, NULL, &cStack_7c, &player->shape_angle, NULL, 0);
            }

            if (i_this->field_0x26c6 == 92) {
                bVar3 = TRUE;
            }
            break;
        case 55:
            i_this->field_0x0c70 = 20;
            if (i_this->field_0x26c6 == 20) { 
                cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
                local_40.x = 200.0f;
                local_40.y = 50.0f;
                local_40.z = 500.0f;
                MtxPosition(&i_this->field_0x26c8, &local_40);
                i_this->field_0x26c8 += i_this->current.pos;
                i_this->field_0x26d4 = player->current.pos;
                i_this->field_0x26d4.y += 80.0f;
                // actor[1].field249_0x1174[0].mBase.mGObjAt.mBase.mGFlag = 0x3f99999a; - ???
            }

            if (i_this->field_0x26c6 > 42) {
                bVar3 = true;
                i_this->mActionID = ACTION_JUMP;
                i_this->field_0x05bc = 5;
                i_this->field_0x0c44[0] = 50;
                i_this->field_0x0c7c = 1;
            }

            break;
        case 60:
            if (i_this->eventInfo.checkCommandDemoAccrpt() == 0) {
                fopAcM_orderPotentialEvent(i_this, 2, 0xffff, 0);
                i_this->eventInfo.mCondition |= 2;
                break;
            }
            
            camera1->mCamera.Stop();
            i_this->field_0x26c4 = 61;
            i_this->field_0x26c6 = 0;
            i_this->field_0x2710.x = 55.0f;
            daPy_getPlayerActorClass()->changeOriginalDemo();
            daPy_getPlayerActorClass()->changeDemoMode(90, 0, 0, 0);
            local_4c.set(0.0f, 1100.0f, 0.0f);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&local_4c, 0xffffe000, 0);
            i_this->current.pos.set(0.0f, 1100.0f, 0.0f);
            i_this->old.pos = i_this->current.pos;
            i_this->shape_angle.y = -0x2000;
            i_this->current.angle.y = -0x2000;
            cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
            local_40.x = -300.0f;
            local_40.y = 150.0f;
            local_40.z = 200.0f;
            MtxPosition(&i_this->field_0x26c8, &local_40);
            i_this->field_0x26c8 += i_this->current.pos;
            i_this->field_0x26d4 = i_this->current.pos;
        case 61:
            i_this->field_0x0c70 = 20;
            if (i_this->field_0x26c6 > 0) {
                cLib_addCalc2(&i_this->field_0x26d4.x, player->eyePos.x, 0.3f, 50.0f);
                local_64.y = player->eyePos.y;
                if (local_64.y > 1400.0f) {
                    local_64.y = 1400.0f;
                }

                cLib_addCalc2(&i_this->field_0x26d4.y, local_64.y, 0.3f, 50.0f);
                cLib_addCalc2(&i_this->field_0x26d4.z, player->eyePos.z, 0.3f, 50.0f);
            }

            if (i_this->field_0x26c6 == 31) {
                i_this->field_0x26c4 = 62;
                i_this->field_0x26c6 = 0;
                anm_init(i_this, 84, 0.0f, 0, 1.0f);
                dComIfGp_getVibration().StartShock(7, 1, cXyz(0.0f, 1.0f, 0.0f));
                fpcM_Search(s_objgbdel_sub, i_this);
                i_this->field_0x2739 = 2;
                Z2GetAudioMgr()->seMoveVolumeAll(0.0f, 0);
                i_this->mZ2Creature.startCreatureVoice(Z2SE_EN_GND_V_END, -1);
            }
            break;
        case 62:
            i_this->field_0x0c70 = 20;
            i_this->field_0x2710.x = 25.0f;
            cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
            local_40.set(55.7f, 1146.0f, -151.0f);
            MtxPosition(&i_this->field_0x26d4, &local_40);
            local_40.set(-131.0f, 1146.0f, -156.0f);
            MtxPosition(&i_this->field_0x26c8, &local_40);
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 48, 10.0f, 2, 1.0f);
            }

            if (i_this->field_0x26c6 == 80) {
                i_this->field_0x26c4 = 63;
                i_this->field_0x26c6 = 0;
                Z2GetAudioMgr()->seMoveVolumeAll(1.0f, 37);
                i_this->field_0x2739 = 3;
            }

            local_4c.set(0.0f, 1100.0f, -2000.0f);
            horseActor->setHorsePosAndAngle(&local_4c, -0x2000);
            break;
        case 63:
            cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
            local_40.set(90.0f, 1250.0f, -57.0f);
            MtxPosition(&i_this->field_0x26d4, &local_40);
            local_40.set(-80.0f, 1188.0f, -106.0f);
            MtxPosition(&i_this->field_0x26c8, &local_40);

            if (i_this->field_0x26c6 == 80) {
                i_this->field_0x26c4 = 64;
                i_this->field_0x26c6 = 0;
                i_this->field_0x0754 = 0;
                i_this->field_0x2739 = 4;
            }
            break;
        case 64:
            i_this->field_0x0c70 = 20;
            i_this->field_0x0754 = 1;
            mDoMtx_stack_c::transS(0.0f, 1430.0f, -2000.0f);
            mDoMtx_stack_c::YrotM(-0x2000);
            i_this->mpModelMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
            i_this->field_0x0750->play();
            i_this->field_0x074c->play();
            i_this->field_0x05d8->play(NULL, 0, 0);
            i_this->field_0x05d8->modelCalc();
            i_this->field_0x26d4.set(25.0f, 1603.0f, -2033.0f);
            i_this->field_0x26c8.set(-70.0f, 1564.0f, -1884.0f);
            if (i_this->field_0x26c6 == 88) {
                i_this->field_0x26c4 = 65;
                i_this->field_0x26c6 = 0;
                i_this->field_0x271c = 3000;
                i_this->field_0x2710.z = 1.0f;
                i_this->field_0x2710.y = 0.0f;
                i_this->field_0x2739 = 5;
            }
            break;
        case 65:
            i_this->field_0x0c70 = 20;
            i_this->field_0x26d4 = i_this->eyePos;
            i_this->field_0x26d4.z += -5.0f;
            cMtx_YrotS(*calc_mtx, i_this->shape_angle.y + i_this->field_0x271c);
            local_40.x = 0.0f;
            local_40.y = local_40.z * 150.0f;
            local_40.z *= 50.0f;
            MtxPosition(&i_this->field_0x26c8, &local_40);
            i_this->field_0x26c8 += i_this->field_0x26d4;

            if (i_this->field_0x26c6 > 80) {
                cLib_addCalc2(&i_this->field_0x2710.y, 1.0f, 1.0f, 0.05f);
                i_this->field_0x271c += (int)(i_this->field_0x2710.y * 200.0f);
                cLib_addCalc2(&i_this->field_0x2710.z, 500.0f, 1.0f, i_this->field_0x2710.y * 0.5f);
                if (i_this->field_0x26c6 == 150) {
                    daPy_getPlayerActorClass()->changeDemoMode(16, 0, 0, 0);
                }

                if (i_this->field_0x26c6 == 230) {
                    mDoGph_gInf_c::fadeOut(0.1f, g_blackColor);
                }

                if (i_this->field_0x26c6 == 330) {
                    dStage_changeScene(0, 0.0f, 0, i_this->current.roomNo, 0, -1);
                }
            }
            break;
        case 90:
            if (i_this->eventInfo.checkCommandDemoAccrpt() == 0) {
                fopAcM_orderPotentialEvent(i_this, 2, 0xffff, 0);
                i_this->eventInfo.mCondition |= 2;
                break;
            }

            camera1->mCamera.Stop();
            i_this->field_0x26c4 = 91;
            i_this->field_0x26c6 = 0;
            i_this->field_0x2710.x = 55.0f;

            daPy_getPlayerActorClass()->changeOriginalDemo();
            horseActor->changeOriginalDemo();

            i_this->field_0x26d4 = player->current.pos;
            i_this->field_0x26c8 = player->current.pos;

            i_this->field_0x26c8.x += 100.0f;
            break;
        case 91:
            local_4c.set(0.0f, 1100.0f, -2000.0f);
            horseActor->setHorsePosAndAngle(&local_4c, -0x2000);
            if (i_this->field_0x26c6 == 2) {
                player->onForceHorseGetOff();
            }

            if (i_this->field_0x26c6 == 5) {
                i_this->field_0x26c4 = 92;
                i_this->field_0x26c6 = 0;
            }
            break;
        case 92:
            if (i_this->field_0x26c6 == 1) {
                local_4c.set(0.0f, 1100.0f, 0.0f);
                fopAcM_create(PROC_OBJ_GB, 0xf0069600, &local_4c, 
                    i_this->current.roomNo, NULL, NULL, -1);
            }

            if (i_this->field_0x26c6 == 5) {
                local_4c.set(600.0f, 1100.0f, 0.0f);
                player->setPlayerPosAndAngle(&local_4c, 0xffffb7fe, 0);
                i_this->current.pos.set(-600.0f, 1100.0f, 0.0f);
                i_this->old.pos = i_this->current.pos;
                i_this->current.angle.y = 0x37fe;
                i_this->shape_angle.y = 0x37fe;
                bVar3 = TRUE;
            }
            break;
        case 95:
            if (i_this->eventInfo.checkCommandDemoAccrpt() == 0) {
                fopAcM_orderPotentialEvent(i_this, 2, 0xffff, 0);
                i_this->eventInfo.onCondition(2);
                return;
            }

            i_this->field_0x26c4 = 96;
            i_this->field_0x26c6 = 0;

            daPy_getPlayerActorClass()->changeOriginalDemo();
            horseActor->changeOriginalDemo();

            local_4c.set(0.0f, 1100.0f, -2000.0f);
            horseActor->setHorsePosAndAngle(&local_4c, -0x2000);

            local_4c.set(600.0f, 1100.0f, 0.0f);
            player->setPlayerPosAndAngle(&local_4c, 0xffffb7fe, 0);

            i_this->old.pos = i_this->current.pos;
            i_this->current.angle.y = 0x37fe;
            i_this->shape_angle.y = 0x37fe;

            local_4c.set(0.0f, 1100.0f, 0.0f);
            fopAcM_create(PROC_OBJ_GB, 0xf0069600, &local_4c, 
                i_this->current.roomNo, NULL, NULL, -1);
            break;
        case 96:
            i_this->field_0x26c6 += 1;
            if (i_this->field_0x26c6 != 2) {
                return;
            }

            dComIfGp_event_reset();
            bVar3 = TRUE;
    }

    if (bVar3) {
        if (bVar3) {
            cMtx_YrotS(*calc_mtx, player->shape_angle.y);
            local_40.x = 0.0f;
            local_40.y = 100.0f;
            local_40.z = -250.0f;
            MtxPosition(&i_this->field_0x26c8, &local_40);
            i_this->field_0x26c8 += player->current.pos;
            i_this->field_0x26d4 = player->current.pos;
            i_this->field_0x26d4.y += 120.0f;
        }
        
        camera1->mCamera.Reset(cStack_dc, cStack_e8);
        camera1->mCamera.Start();
        camera1->mCamera.SetTrimSize(0);

        dComIfGp_event_reset();

        daPy_getPlayerActorClass()->cancelOriginalDemo();

        i_this->field_0x26c4 = 0;
    }

    if (i_this->field_0x26c4 > 0) {
        cStack_88 = i_this->field_0x26d4;
        cStack_94 = i_this->field_0x26c8;
        
        camera1->mCamera.Set(cStack_f4, cStack_100, i_this->field_0x2710.x, 0);
        i_this->field_0x26c6 += 1;
        if (i_this->field_0x26c6 > 1000) {
            i_this->field_0x26c6 = 1000;
        }
    }
}

/* ############################################################################################## */
/* 806027B8-806027BC 000154 0004+00 0/0 0/0 0/0 .rodata          @7202 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7202 = -500.0f;
COMPILER_STRIP_GATE(0x806027B8, &lit_7202);
#pragma pop

/* 806027BC-806027C0 000158 0004+00 0/0 0/0 0/0 .rodata          @7203 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7203 = -300.0f;
COMPILER_STRIP_GATE(0x806027BC, &lit_7203);
#pragma pop

/* 806027C0-806027C4 00015C 0004+00 0/0 0/0 0/0 .rodata          @7204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7204 = -1000.0f;
COMPILER_STRIP_GATE(0x806027C0, &lit_7204);
#pragma pop

/* 806027C4-806027C8 000160 0004+00 0/0 0/0 0/0 .rodata          @7205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7205 = 1100.0f;
COMPILER_STRIP_GATE(0x806027C4, &lit_7205);
#pragma pop

/* 806027C8-806027CC 000164 0004+00 0/0 0/0 0/0 .rodata          @7206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7206 = -2000.0f;
COMPILER_STRIP_GATE(0x806027C8, &lit_7206);
#pragma pop

/* 806027CC-806027D0 000168 0004+00 0/1 0/0 0/0 .rodata          @7207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7207 = -400.0f;
COMPILER_STRIP_GATE(0x806027CC, &lit_7207);
#pragma pop

/* 806027D0-806027D4 00016C 0004+00 0/0 0/0 0/0 .rodata          @7208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7208 = 1318.0f;
COMPILER_STRIP_GATE(0x806027D0, &lit_7208);
#pragma pop

/* 806027D4-806027D8 000170 0004+00 0/0 0/0 0/0 .rodata          @7209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7209 = -1355.0f;
COMPILER_STRIP_GATE(0x806027D4, &lit_7209);
#pragma pop

/* 806027D8-806027DC 000174 0004+00 0/0 0/0 0/0 .rodata          @7210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7210 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x806027D8, &lit_7210);
#pragma pop

/* 806027DC-806027E0 000178 0004+00 0/0 0/0 0/0 .rodata          @7211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7211 = -1500.0f;
COMPILER_STRIP_GATE(0x806027DC, &lit_7211);
#pragma pop

/* 806027E0-806027E4 00017C 0004+00 0/0 0/0 0/0 .rodata          @7212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7212 = -4000.0f;
COMPILER_STRIP_GATE(0x806027E0, &lit_7212);
#pragma pop

/* 806027E4-806027E8 000180 0004+00 0/0 0/0 0/0 .rodata          @7213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7213 = -286.0f;
COMPILER_STRIP_GATE(0x806027E4, &lit_7213);
#pragma pop

/* 806027E8-806027EC 000184 0004+00 0/0 0/0 0/0 .rodata          @7214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7214 = -1780.0f;
COMPILER_STRIP_GATE(0x806027E8, &lit_7214);
#pragma pop

/* 806027EC-806027F0 000188 0004+00 0/0 0/0 0/0 .rodata          @7215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7215 = 389.0f;
COMPILER_STRIP_GATE(0x806027EC, &lit_7215);
#pragma pop

/* 806027F0-806027F4 00018C 0004+00 0/0 0/0 0/0 .rodata          @7216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7216 = 1326.0f;
COMPILER_STRIP_GATE(0x806027F0, &lit_7216);
#pragma pop

/* 806027F4-806027F8 000190 0004+00 0/0 0/0 0/0 .rodata          @7217 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7217 = -2356.0f;
COMPILER_STRIP_GATE(0x806027F4, &lit_7217);
#pragma pop

/* 806027F8-806027FC 000194 0004+00 0/0 0/0 0/0 .rodata          @7218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7218 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x806027F8, &lit_7218);
#pragma pop

/* 806027FC-80602800 000198 0004+00 0/0 0/0 0/0 .rodata          @7219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7219 = 79.0f;
COMPILER_STRIP_GATE(0x806027FC, &lit_7219);
#pragma pop

/* 80602800-80602804 00019C 0004+00 0/0 0/0 0/0 .rodata          @7220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7220 = 1305.0f;
COMPILER_STRIP_GATE(0x80602800, &lit_7220);
#pragma pop

/* 80602804-80602808 0001A0 0004+00 0/0 0/0 0/0 .rodata          @7221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7221 = -1029.0f;
COMPILER_STRIP_GATE(0x80602804, &lit_7221);
#pragma pop

/* 80602808-8060280C 0001A4 0004+00 0/1 0/0 0/0 .rodata          @7222 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7222 = 86.0f;
COMPILER_STRIP_GATE(0x80602808, &lit_7222);
#pragma pop

/* 8060280C-80602810 0001A8 0004+00 0/0 0/0 0/0 .rodata          @7223 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7223 = 1321.0f;
COMPILER_STRIP_GATE(0x8060280C, &lit_7223);
#pragma pop

/* 80602810-80602814 0001AC 0004+00 0/0 0/0 0/0 .rodata          @7224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7224 = -1277.0f;
COMPILER_STRIP_GATE(0x80602810, &lit_7224);
#pragma pop

/* 80602814-80602818 0001B0 0004+00 0/1 0/0 0/0 .rodata          @7225 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7225 = -50.0f;
COMPILER_STRIP_GATE(0x80602814, &lit_7225);
#pragma pop

/* 80602818-8060281C 0001B4 0004+00 0/0 0/0 0/0 .rodata          @7226 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7226 = 11.0f / 20.0f;
COMPILER_STRIP_GATE(0x80602818, &lit_7226);
#pragma pop

/* 8060281C-80602820 0001B8 0004+00 0/1 0/0 0/0 .rodata          @7227 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7227 = 80.0f;
COMPILER_STRIP_GATE(0x8060281C, &lit_7227);
#pragma pop

/* 80602820-80602824 0001BC 0004+00 0/0 0/0 0/0 .rodata          @7228 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7228 = 280.0f;
COMPILER_STRIP_GATE(0x80602820, &lit_7228);
#pragma pop

/* 80602824-80602828 0001C0 0004+00 0/0 0/0 0/0 .rodata          @7229 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7229 = 212.0f;
COMPILER_STRIP_GATE(0x80602824, &lit_7229);
#pragma pop

/* 80602828-8060282C 0001C4 0004+00 0/0 0/0 0/0 .rodata          @7230 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7230 = 340.0f;
COMPILER_STRIP_GATE(0x80602828, &lit_7230);
#pragma pop

/* 8060282C-80602830 0001C8 0004+00 0/0 0/0 0/0 .rodata          @7231 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7231 = 180.0f;
COMPILER_STRIP_GATE(0x8060282C, &lit_7231);
#pragma pop

/* 80602830-80602834 0001CC 0004+00 0/0 0/0 0/0 .rodata          @7232 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7232 = 260.0f;
COMPILER_STRIP_GATE(0x80602830, &lit_7232);
#pragma pop

/* 80602834-80602838 0001D0 0004+00 0/1 0/0 0/0 .rodata          @7233 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7233 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80602834, &lit_7233);
#pragma pop

/* 80602838-8060283C 0001D4 0004+00 0/0 0/0 0/0 .rodata          @7234 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7234 = 792.0f;
COMPILER_STRIP_GATE(0x80602838, &lit_7234);
#pragma pop

/* 8060283C-80602840 0001D8 0004+00 0/0 0/0 0/0 .rodata          @7235 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7235 = 1595.0f;
COMPILER_STRIP_GATE(0x8060283C, &lit_7235);
#pragma pop

/* 80602840-80602844 0001DC 0004+00 0/0 0/0 0/0 .rodata          @7236 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7236 = 1160.0f;
COMPILER_STRIP_GATE(0x80602840, &lit_7236);
#pragma pop

/* 80602844-80602848 0001E0 0004+00 0/0 0/0 0/0 .rodata          @7237 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7237 = 938.0f;
COMPILER_STRIP_GATE(0x80602844, &lit_7237);
#pragma pop

/* 80602848-8060284C 0001E4 0004+00 0/0 0/0 0/0 .rodata          @7238 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7238 = 1675.0f;
COMPILER_STRIP_GATE(0x80602848, &lit_7238);
#pragma pop

/* 8060284C-80602850 0001E8 0004+00 0/0 0/0 0/0 .rodata          @7239 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7239 = 1337.0f;
COMPILER_STRIP_GATE(0x8060284C, &lit_7239);
#pragma pop

/* 80602850-80602854 0001EC 0004+00 0/1 0/0 0/0 .rodata          @7240 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7240 = 12.0f;
COMPILER_STRIP_GATE(0x80602850, &lit_7240);
#pragma pop

/* 80602854-80602858 0001F0 0004+00 0/0 0/0 0/0 .rodata          @7241 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7241 = -81.0f;
COMPILER_STRIP_GATE(0x80602854, &lit_7241);
#pragma pop

/* 80602858-8060285C 0001F4 0004+00 0/0 0/0 0/0 .rodata          @7242 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7242 = 1391.0f;
COMPILER_STRIP_GATE(0x80602858, &lit_7242);
#pragma pop

/* 8060285C-80602860 0001F8 0004+00 0/0 0/0 0/0 .rodata          @7243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7243 = -2144.0f;
COMPILER_STRIP_GATE(0x8060285C, &lit_7243);
#pragma pop

/* 80602860-80602864 0001FC 0004+00 0/0 0/0 0/0 .rodata          @7244 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7244 = 37.0f;
COMPILER_STRIP_GATE(0x80602860, &lit_7244);
#pragma pop

/* 80602864-80602868 000200 0004+00 0/0 0/0 0/0 .rodata          @7245 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7245 = 1366.0f;
COMPILER_STRIP_GATE(0x80602864, &lit_7245);
#pragma pop

/* 80602868-8060286C 000204 0004+00 0/0 0/0 0/0 .rodata          @7246 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7246 = -1865.0f;
COMPILER_STRIP_GATE(0x80602868, &lit_7246);
#pragma pop

/* 8060286C-80602870 000208 0004+00 0/0 0/0 0/0 .rodata          @7247 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7247 = 1352.0f;
COMPILER_STRIP_GATE(0x8060286C, &lit_7247);
#pragma pop

/* 80602870-80602874 00020C 0004+00 0/0 0/0 0/0 .rodata          @7248 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7248 = -1866.0f;
COMPILER_STRIP_GATE(0x80602870, &lit_7248);
#pragma pop

/* 80602874-80602878 000210 0004+00 0/0 0/0 0/0 .rodata          @7249 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7249 = 129.0f;
COMPILER_STRIP_GATE(0x80602874, &lit_7249);
#pragma pop

/* 80602878-8060287C 000214 0004+00 0/0 0/0 0/0 .rodata          @7250 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7250 = 1358.0f;
COMPILER_STRIP_GATE(0x80602878, &lit_7250);
#pragma pop

/* 8060287C-80602880 000218 0004+00 0/0 0/0 0/0 .rodata          @7251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7251 = -2165.0f;
COMPILER_STRIP_GATE(0x8060287C, &lit_7251);
#pragma pop

/* 80602880-80602884 00021C 0004+00 0/0 0/0 0/0 .rodata          @7252 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7252 = 7.0f / 100.0f;
COMPILER_STRIP_GATE(0x80602880, &lit_7252);
#pragma pop

/* 80602884-80602888 000220 0004+00 0/0 0/0 0/0 .rodata          @7253 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7253 = 0x3B03126F;
COMPILER_STRIP_GATE(0x80602884, &lit_7253);
#pragma pop

/* 80602888-8060288C 000224 0004+00 0/0 0/0 0/0 .rodata          @7254 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7254 = 101.0f;
COMPILER_STRIP_GATE(0x80602888, &lit_7254);
#pragma pop

/* 8060288C-80602890 000228 0004+00 0/0 0/0 0/0 .rodata          @7255 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7255 = 1206.0f;
COMPILER_STRIP_GATE(0x8060288C, &lit_7255);
#pragma pop

/* 80602890-80602894 00022C 0004+00 0/0 0/0 0/0 .rodata          @7256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7256 = -582.0f;
COMPILER_STRIP_GATE(0x80602890, &lit_7256);
#pragma pop

/* 80602894-80602898 000230 0004+00 0/0 0/0 0/0 .rodata          @7257 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7257 = 154.0f;
COMPILER_STRIP_GATE(0x80602894, &lit_7257);
#pragma pop

/* 80602898-8060289C 000234 0004+00 0/0 0/0 0/0 .rodata          @7258 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7258 = 1199.0f;
COMPILER_STRIP_GATE(0x80602898, &lit_7258);
#pragma pop

/* 8060289C-806028A0 000238 0004+00 0/0 0/0 0/0 .rodata          @7259 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7259 = -819.0f;
COMPILER_STRIP_GATE(0x8060289C, &lit_7259);
#pragma pop

/* 806028A0-806028A4 00023C 0004+00 0/0 0/0 0/0 .rodata          @7260 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7260 = 135.0f;
COMPILER_STRIP_GATE(0x806028A0, &lit_7260);
#pragma pop

/* 806028A4-806028A8 000240 0004+00 0/1 0/0 0/0 .rodata          @7261 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7261 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x806028A4, &lit_7261);
#pragma pop

/* 806028A8-806028AC 000244 0004+00 0/0 0/0 0/0 .rodata          @7262 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7262 = 0xC247999A;
COMPILER_STRIP_GATE(0x806028A8, &lit_7262);
#pragma pop

/* 806028AC-806028B0 000248 0004+00 0/0 0/0 0/0 .rodata          @7263 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7263 = 48.0f;
COMPILER_STRIP_GATE(0x806028AC, &lit_7263);
#pragma pop

/* 806028B0-806028B4 00024C 0004+00 0/0 0/0 0/0 .rodata          @7264 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7264 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x806028B0, &lit_7264);
#pragma pop

/* 806028B4-806028B8 000250 0004+00 0/0 0/0 0/0 .rodata          @7265 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7265 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x806028B4, &lit_7265);
#pragma pop

/* 806028B8-806028BC 000254 0004+00 0/0 0/0 0/0 .rodata          @7266 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7266 = 1400.0f;
COMPILER_STRIP_GATE(0x806028B8, &lit_7266);
#pragma pop

/* 806028BC-806028C0 000258 0004+00 0/0 0/0 0/0 .rodata          @7267 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7267 = 0x425ECCCD;
COMPILER_STRIP_GATE(0x806028BC, &lit_7267);
#pragma pop

/* 806028C0-806028C4 00025C 0004+00 0/0 0/0 0/0 .rodata          @7268 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7268 = 1146.0f;
COMPILER_STRIP_GATE(0x806028C0, &lit_7268);
#pragma pop

/* 806028C4-806028C8 000260 0004+00 0/0 0/0 0/0 .rodata          @7269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7269 = -151.0f;
COMPILER_STRIP_GATE(0x806028C4, &lit_7269);
#pragma pop

/* 806028C8-806028CC 000264 0004+00 0/0 0/0 0/0 .rodata          @7270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7270 = -131.0f;
COMPILER_STRIP_GATE(0x806028C8, &lit_7270);
#pragma pop

/* 806028CC-806028D0 000268 0004+00 0/0 0/0 0/0 .rodata          @7271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7271 = -156.0f;
COMPILER_STRIP_GATE(0x806028CC, &lit_7271);
#pragma pop

/* 806028D0-806028D4 00026C 0004+00 0/1 0/0 0/0 .rodata          @7272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7272 = 90.0f;
COMPILER_STRIP_GATE(0x806028D0, &lit_7272);
#pragma pop

/* 806028D4-806028D8 000270 0004+00 0/0 0/0 0/0 .rodata          @7273 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7273 = 1250.0f;
COMPILER_STRIP_GATE(0x806028D4, &lit_7273);
#pragma pop

/* 806028D8-806028DC 000274 0004+00 0/0 0/0 0/0 .rodata          @7274 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7274 = -57.0f;
COMPILER_STRIP_GATE(0x806028D8, &lit_7274);
#pragma pop

/* 806028DC-806028E0 000278 0004+00 0/0 0/0 0/0 .rodata          @7275 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7275 = -80.0f;
COMPILER_STRIP_GATE(0x806028DC, &lit_7275);
#pragma pop

/* 806028E0-806028E4 00027C 0004+00 0/0 0/0 0/0 .rodata          @7276 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7276 = 1188.0f;
COMPILER_STRIP_GATE(0x806028E0, &lit_7276);
#pragma pop

/* 806028E4-806028E8 000280 0004+00 0/0 0/0 0/0 .rodata          @7277 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7277 = -106.0f;
COMPILER_STRIP_GATE(0x806028E4, &lit_7277);
#pragma pop

/* 806028E8-806028EC 000284 0004+00 0/0 0/0 0/0 .rodata          @7278 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7278 = 1430.0f;
COMPILER_STRIP_GATE(0x806028E8, &lit_7278);
#pragma pop

/* 806028EC-806028F0 000288 0004+00 0/0 0/0 0/0 .rodata          @7279 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7279 = 1603.0f;
COMPILER_STRIP_GATE(0x806028EC, &lit_7279);
#pragma pop

/* 806028F0-806028F4 00028C 0004+00 0/0 0/0 0/0 .rodata          @7280 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7280 = -2033.0f;
COMPILER_STRIP_GATE(0x806028F0, &lit_7280);
#pragma pop

/* 806028F4-806028F8 000290 0004+00 0/0 0/0 0/0 .rodata          @7281 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7281 = -70.0f;
COMPILER_STRIP_GATE(0x806028F4, &lit_7281);
#pragma pop

/* 806028F8-806028FC 000294 0004+00 0/0 0/0 0/0 .rodata          @7282 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7282 = 1564.0f;
COMPILER_STRIP_GATE(0x806028F8, &lit_7282);
#pragma pop

/* 806028FC-80602900 000298 0004+00 0/0 0/0 0/0 .rodata          @7283 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7283 = -1884.0f;
COMPILER_STRIP_GATE(0x806028FC, &lit_7283);
#pragma pop

/* 80602900-80602904 00029C 0004+00 0/1 0/0 0/0 .rodata          @7284 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7284 = -5.0f;
COMPILER_STRIP_GATE(0x80602900, &lit_7284);
#pragma pop

/* 80602904-80602908 0002A0 0004+00 0/1 0/0 0/0 .rodata          @7285 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7285 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80602904, &lit_7285);
#pragma pop

/* 80602908-8060290C 0002A4 0004+00 0/0 0/0 0/0 .rodata          @7286 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7286 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80602908, &lit_7286);
#pragma pop

/* 8060290C-80602910 0002A8 0004+00 0/0 0/0 0/0 .rodata          @7287 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7287 = -600.0f;
COMPILER_STRIP_GATE(0x8060290C, &lit_7287);
#pragma pop

/* 80602910-80602914 0002AC 0004+00 0/0 0/0 0/0 .rodata          @7288 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7288 = -250.0f;
COMPILER_STRIP_GATE(0x80602910, &lit_7288);
#pragma pop

/* 80602914-80602918 0002B0 0004+00 0/1 0/0 0/0 .rodata          @7289 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7289 = 120.0f;
COMPILER_STRIP_GATE(0x80602914, &lit_7289);
#pragma pop

/* 80602918-8060291C 0002B4 0004+00 0/1 0/0 0/0 .rodata          @7743 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7743 = 21.0f;
COMPILER_STRIP_GATE(0x80602918, &lit_7743);
#pragma pop

/* 8060291C-80602920 0002B8 0004+00 0/1 0/0 0/0 .rodata          @7744 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7744 = 26.0f;
COMPILER_STRIP_GATE(0x8060291C, &lit_7744);
#pragma pop

/* 80602920-80602924 0002BC 0004+00 0/2 0/0 0/0 .rodata          @7745 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7745 = 17.0f;
COMPILER_STRIP_GATE(0x80602920, &lit_7745);
#pragma pop

/* 80602924-80602928 0002C0 0004+00 0/1 0/0 0/0 .rodata          @7746 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7746 = 16.5f;
COMPILER_STRIP_GATE(0x80602924, &lit_7746);
#pragma pop

/* 80602928-8060292C 0002C4 0004+00 0/1 0/0 0/0 .rodata          @7747 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7747 = 9.5f;
COMPILER_STRIP_GATE(0x80602928, &lit_7747);
#pragma pop

/* 8060292C-80602930 0002C8 0004+00 0/1 0/0 0/0 .rodata          @7748 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7748 = 13.0f;
COMPILER_STRIP_GATE(0x8060292C, &lit_7748);
#pragma pop

/* 80602930-80602934 0002CC 0004+00 0/1 0/0 0/0 .rodata          @7749 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7749 = 19.0f;
COMPILER_STRIP_GATE(0x80602930, &lit_7749);
#pragma pop

/* 80602934-80602938 0002D0 0004+00 0/1 0/0 0/0 .rodata          @7750 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7750 = 8.0f;
COMPILER_STRIP_GATE(0x80602934, &lit_7750);
#pragma pop

/* 80602938-8060293C 0002D4 0004+00 0/1 0/0 0/0 .rodata          @7751 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7751 = 11.0f;
COMPILER_STRIP_GATE(0x80602938, &lit_7751);
#pragma pop

/* 8060293C-80602940 0002D8 0004+00 0/1 0/0 0/0 .rodata          @7752 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7752 = 28.0f;
COMPILER_STRIP_GATE(0x8060293C, &lit_7752);
#pragma pop

/* 80602940-80602944 0002DC 0004+00 0/1 0/0 0/0 .rodata          @7753 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7753 = 31.0f;
COMPILER_STRIP_GATE(0x80602940, &lit_7753);
#pragma pop

/* 80602944-80602948 0002E0 0004+00 0/1 0/0 0/0 .rodata          @7754 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7754 = 32.0f;
COMPILER_STRIP_GATE(0x80602944, &lit_7754);
#pragma pop

/* 80602948-8060294C 0002E4 0004+00 0/1 0/0 0/0 .rodata          @7755 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7755 = 18.0f;
COMPILER_STRIP_GATE(0x80602948, &lit_7755);
#pragma pop

/* 8060294C-80602950 0002E8 0004+00 0/1 0/0 0/0 .rodata          @7756 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7756 = 24.0f;
COMPILER_STRIP_GATE(0x8060294C, &lit_7756);
#pragma pop

/* 80602950-80602954 0002EC 0004+00 0/1 0/0 0/0 .rodata          @7757 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7757 = 27.0f;
COMPILER_STRIP_GATE(0x80602950, &lit_7757);
#pragma pop

/* 805FDAE0-805FEC58 009180 1178+00 1/1 0/0 0/0 .text            anm_se_set__FP11b_gnd_class */
static void anm_se_set(b_gnd_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80602954-80602958 0002F0 0004+00 0/1 0/0 0/0 .rodata          @8733 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8733 = -20.0f;
COMPILER_STRIP_GATE(0x80602954, &lit_8733);
#pragma pop

/* 80602958-8060295C 0002F4 0004+00 0/1 0/0 0/0 .rodata          @8734 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8734 = -100.0f;
COMPILER_STRIP_GATE(0x80602958, &lit_8734);
#pragma pop

/* 8060295C-80602960 0002F8 0004+00 0/1 0/0 0/0 .rodata          @8735 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8735 = 7.5f;
COMPILER_STRIP_GATE(0x8060295C, &lit_8735);
#pragma pop

/* 80602960-80602964 0002FC 0004+00 0/1 0/0 0/0 .rodata          @8736 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8736 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80602960, &lit_8736);
#pragma pop

/* 80602964-80602968 000300 0004+00 0/1 0/0 0/0 .rodata          @8737 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8737 = -30.0f;
COMPILER_STRIP_GATE(0x80602964, &lit_8737);
#pragma pop

/* 80602968-8060296C 000304 0004+00 0/1 0/0 0/0 .rodata          @8738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8738 = -1200.0f;
COMPILER_STRIP_GATE(0x80602968, &lit_8738);
#pragma pop

/* 8060296C-80602970 000308 0004+00 0/1 0/0 0/0 .rodata          @8739 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8739 = 0x42A39EB8;
COMPILER_STRIP_GATE(0x8060296C, &lit_8739);
#pragma pop

/* 80602970-80602974 00030C 0004+00 0/1 0/0 0/0 .rodata          @8740 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8740 = 127.0f / 50.0f;
COMPILER_STRIP_GATE(0x80602970, &lit_8740);
#pragma pop

/* 80602974-80602978 000310 0004+00 0/1 0/0 0/0 .rodata          @8741 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8741 = 29.0f / 10.0f;
COMPILER_STRIP_GATE(0x80602974, &lit_8741);
#pragma pop

/* 80602978-8060297C 000314 0004+00 0/1 0/0 0/0 .rodata          @8742 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8742 = -130.0f;
COMPILER_STRIP_GATE(0x80602978, &lit_8742);
#pragma pop

/* 8060297C-80602980 000318 0004+00 0/1 0/0 0/0 .rodata          @8743 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8743 = 130.0f;
COMPILER_STRIP_GATE(0x8060297C, &lit_8743);
#pragma pop

/* 80602980-80602984 00031C 0004+00 0/1 0/0 0/0 .rodata          @8744 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8744 = 20000.0f;
COMPILER_STRIP_GATE(0x80602980, &lit_8744);
#pragma pop

/* 80602984-80602988 000320 0004+00 0/1 0/0 0/0 .rodata          @8745 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8745 = 13000.0f;
COMPILER_STRIP_GATE(0x80602984, &lit_8745);
#pragma pop

/* 80602988-8060298C 000324 0004+00 0/1 0/0 0/0 .rodata          @8746 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8746 = -20000.0f;
COMPILER_STRIP_GATE(0x80602988, &lit_8746);
#pragma pop

/* 8060298C-80602990 000328 0004+00 0/1 0/0 0/0 .rodata          @8747 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8747 = 100000.0f;
COMPILER_STRIP_GATE(0x8060298C, &lit_8747);
#pragma pop

/* 80602990-80602994 00032C 0004+00 0/1 0/0 0/0 .rodata          @8748 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8748 = -13456.0f;
COMPILER_STRIP_GATE(0x80602990, &lit_8748);
#pragma pop

/* 80602994-80602998 000330 0004+00 0/1 0/0 0/0 .rodata          @8749 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8749 = -17.0f;
COMPILER_STRIP_GATE(0x80602994, &lit_8749);
#pragma pop

/* 80602998-8060299C 000334 0004+00 0/1 0/0 0/0 .rodata          @8750 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8750 = 0.25f;
COMPILER_STRIP_GATE(0x80602998, &lit_8750);
#pragma pop

/* 8060299C-806029A0 000338 0004+00 0/1 0/0 0/0 .rodata          @8751 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8751 = 1500.0f;
COMPILER_STRIP_GATE(0x8060299C, &lit_8751);
#pragma pop

/* 806029A0-806029A4 00033C 0004+00 0/1 0/0 0/0 .rodata          @8752 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8752 = -15.0f;
COMPILER_STRIP_GATE(0x806029A0, &lit_8752);
#pragma pop

/* 805FEC58-806009F8 00A2F8 1DA0+00 2/1 0/0 0/0 .text            daB_GND_Execute__FP11b_gnd_class */
static void daB_GND_Execute(b_gnd_class* param_0) {
    // NONMATCHING
}

// /* 806009F8-80600A1C 00C098 0024+00 1/1 0/0 0/0 .text            multVecZero__14mDoMtx_stack_cFP3Vec
//  */
// // void mDoMtx_stack_c::multVecZero(Vec* param_0) {
// extern "C" void multVecZero__14mDoMtx_stack_cFP3Vec() {
//     // NONMATCHING
// }

// /* 80600A1C-80600A38 00C0BC 001C+00 1/1 0/0 0/0 .text            setDownPos__13fopEn_enemy_cFPC4cXyz
//  */
// // void fopEn_enemy_c::setDownPos(cXyz const* param_0) {
// extern "C" void setDownPos__13fopEn_enemy_cFPC4cXyz() {
//     // NONMATCHING
// }

// /* 80600A38-80600A54 00C0D8 001C+00 1/1 0/0 0/0 .text            __as__5csXyzFRC5csXyz */
// // void csXyz::operator=(csXyz const& param_0) {
// extern "C" void __as__5csXyzFRC5csXyz() {
//     // NONMATCHING
// }

/* 80600A54-80600A5C 00C0F4 0008+00 1/0 0/0 0/0 .text            daB_GND_IsDelete__FP11b_gnd_class
 */
static bool daB_GND_IsDelete(b_gnd_class* i_this) {
    return true;
}

/* 80600A5C-80600B14 00C0FC 00B8+00 1/0 0/0 0/0 .text            daB_GND_Delete__FP11b_gnd_class */
static int daB_GND_Delete(b_gnd_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;

    dComIfG_resDelete(&i_this->mPhaseReq, "B_gnd");
    dComIfG_resDelete(&i_this->mHorsePhaseReq, "B_hg");

    if (i_this->mInitHIO) {
        lbl_145_bss_45 = false;
    }

    if (a_this->heap != NULL) {
        i_this->mpModelMorf->stopZelAnime();
        i_this->mpHorseMorf->stopZelAnime();
        i_this->field_0x1e2c.deleteObject();
        for (int i = 0; i < 5; i++) {
            i_this->field_0x1f10[i].deleteObject();
        }
    }

    return 1;
}

/* ############################################################################################## */
/* 806029A4-806029AC 000340 0008+00 0/1 0/0 0/0 .rodata          blur_model$8822 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const blur_model[8] = {
    0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00, 0x65,
};
COMPILER_STRIP_GATE(0x806029A4, &blur_model);
#pragma pop

/* 80600B14-80601468 00C1B4 0954+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

// /* 80601468-806014B0 00CB08 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// // J3DFrameCtrl::~J3DFrameCtrl() {
// extern "C" void __dt__12J3DFrameCtrlFv() {
//     // NONMATCHING
// }

/* 806014B0-80601960 00CB50 04B0+00 1/0 0/0 0/0 .text            daB_GND_Create__FP10fopAc_ac_c */
static void daB_GND_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80601960-80601D24 00D000 03C4+00 1/1 0/0 0/0 .text            __ct__11b_gnd_classFv */
b_gnd_class::b_gnd_class() {
    // NONMATCHING
}

// /* 80601D24-80601D40 00D3C4 001C+00 1/1 0/0 0/0 .text            __ct__19mDoExt_3DlineMat1_cFv */
// // mDoExt_3DlineMat1_c::mDoExt_3DlineMat1_c() {
// extern "C" void __ct__19mDoExt_3DlineMat1_cFv() {
//     // NONMATCHING
// }

/* 80601D40-80601DA0 00D3E0 0060+00 1/1 0/0 0/0 .text            __dt__8g_himo_sFv */
g_himo_s::~g_himo_s() {
    // NONMATCHING
}

/* 80601DA0-80601DE8 00D440 0048+00 1/1 0/0 0/0 .text            __ct__8g_himo_sFv */
g_himo_s::g_himo_s() {
    // NONMATCHING
}

// /* 80601DE8-80601DEC 00D488 0004+00 3/3 0/0 0/0 .text            __ct__4cXyzFv */
// // cXyz::cXyz() {
// extern "C" void __ct__4cXyzFv() {
//     /* empty function */
// }

// /* 80601DEC-80601E4C 00D48C 0060+00 1/1 0/0 0/0 .text            __dt__16Z2SoundObjSimpleFv */
// // Z2SoundObjSimple::~Z2SoundObjSimple() {
// extern "C" void __dt__16Z2SoundObjSimpleFv() {
//     // NONMATCHING
// }

// /* 80601E4C-80601E94 00D4EC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// // cM3dGCyl::~cM3dGCyl() {
// extern "C" void __dt__8cM3dGCylFv() {
//     // NONMATCHING
// }

// /* 80601E94-80601EDC 00D534 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// // cM3dGSph::~cM3dGSph() {
// extern "C" void __dt__8cM3dGSphFv() {
//     // NONMATCHING
// }

// /* 80601EDC-80601F24 00D57C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// // cM3dGAab::~cM3dGAab() {
// extern "C" void __dt__8cM3dGAabFv() {
//     // NONMATCHING
// }

// /* 80601F24-80601FF0 00D5C4 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// // dCcD_Sph::~dCcD_Sph() {
// extern "C" void __dt__8dCcD_SphFv() {
//     // NONMATCHING
// }

// /* 80601FF0-80602074 00D690 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// // dCcD_Sph::dCcD_Sph() {
// extern "C" void __ct__8dCcD_SphFv() {
//     // NONMATCHING
// }

// /* 80602074-806020D0 00D714 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// // dCcD_GStts::~dCcD_GStts() {
// extern "C" void __dt__10dCcD_GSttsFv() {
//     // NONMATCHING
// }

// /* 806020D0-80602140 00D770 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// // dBgS_ObjAcch::~dBgS_ObjAcch() {
// extern "C" void __dt__12dBgS_ObjAcchFv() {
//     // NONMATCHING
// }

// /* 80602140-806021B0 00D7E0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// // dBgS_AcchCir::~dBgS_AcchCir() {
// extern "C" void __dt__12dBgS_AcchCirFv() {
//     // NONMATCHING
// }

// /* 806021B0-806021E8 00D850 0038+00 1/1 0/0 0/0 .text            __ct__11J3DLightObjFv */
// // J3DLightObj::J3DLightObj() {
// extern "C" void __ct__11J3DLightObjFv() {
//     // NONMATCHING
// }

// /* 806021E8-80602230 00D888 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// // cCcD_GStts::~cCcD_GStts() {
// extern "C" void __dt__10cCcD_GSttsFv() {
//     // NONMATCHING
// }

/* 80602230-80602278 00D8D0 0048+00 2/1 0/0 0/0 .text            __dt__13daB_GND_HIO_cFv */
daB_GND_HIO_c::~daB_GND_HIO_c() {
    // NONMATCHING
}

// /* 80602278-806022F0 00D918 0078+00 0/0 1/0 0/0 .text            __sinit_d_a_b_gnd_cpp */
// void __sinit_d_a_b_gnd_cpp() {
    
// }

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80602278, __sinit_d_a_b_gnd_cpp);
#pragma pop

/* 806022F0-80602328 00D990 0038+00 1/1 0/0 0/0 .text            __arraydtor$4508 */
void func_806022F0() {
    // NONMATCHING
}

/* 80602328-80602330 00D9C8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80602328() {
    // NONMATCHING
}

/* 80602330-80602338 00D9D0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80602330() {
    // NONMATCHING
}

// /* 80602338-8060234C 00D9D8 0014+00 1/1 0/0 0/0 .text            cancelOriginalDemo__9daPy_py_cFv */
// // void daPy_py_c::cancelOriginalDemo() {
// extern "C" void cancelOriginalDemo__9daPy_py_cFv() {
//     // NONMATCHING
// }

// /* 8060234C-80602368 00D9EC 001C+00 1/1 0/0 0/0 .text            __ct__4cXyzFRC4cXyz */
// // cXyz::cXyz(cXyz const& param_0) {
// extern "C" void __ct__4cXyzFRC4cXyz() {
//     // NONMATCHING
// }

// /* 80602368-80602384 00DA08 001C+00 1/1 0/0 0/0 .text            getTrigA__8mDoCPd_cFUl */
// // void mDoCPd_c::getTrigA(u32 param_0) {
// extern "C" void getTrigA__8mDoCPd_cFUl() {
//     // NONMATCHING
// }

// /* 80602384-80602404 00DA24 0080+00 2/2 0/0 0/0 .text
//  * dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz           */
// static void dComIfGp_particle_set(u32 param_0, u16 param_1, cXyz const* param_2,
//                                       csXyz const* param_3, cXyz const* param_4) {
//     // NONMATCHING
// }

// /* 80602404-80602418 00DAA4 0014+00 1/1 0/0 0/0 .text            getAnmMtx__8J3DModelFi */
// // void J3DModel::getAnmMtx(int param_0) {
// extern "C" void getAnmMtx__8J3DModelFi() {
//     // NONMATCHING
// }

// /* 80602418-80602478 00DAB8 0060+00 1/1 0/0 0/0 .text
//  * dComIfGp_setHitMark__FUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl */
// static void dComIfGp_setHitMark(u16 param_0, fopAc_ac_c* param_1, cXyz const* param_2,
//                                     csXyz const* param_3, cXyz const* param_4, u32 param_5) {
//     // NONMATCHING
// }

// /* 80602478-8060248C 00DB18 0014+00 1/1 0/0 0/0 .text            dComIfGp_setDoStatusForce__FUcUc */
// static void dComIfGp_setDoStatusForce(u8 param_0, u8 param_1) {
//     // NONMATCHING
// }

// /* 8060248C-8060249C 00DB2C 0010+00 1/1 0/0 0/0 .text            __ct__4cXyzFfff */
// // cXyz::cXyz(f32 param_0, f32 param_1, f32 param_2) {
// extern "C" void __ct__4cXyzFfff() {
//     // NONMATCHING
// }

// /* 8060249C-806024AC 00DB3C 0010+00 1/1 0/0 0/0 .text            daPy_getPlayerActorClass__Fv */
// static void daPy_getPlayerActorClass() {
//     // NONMATCHING
// }

// /* 806024AC-806024EC 00DB4C 0040+00 1/1 0/0 0/0 .text            setFrame__13mDoExt_morf_cFf */
// // void mDoExt_morf_c::setFrame(f32 param_0) {
// extern "C" void setFrame__13mDoExt_morf_cFf() {
//     // NONMATCHING
// }

// /* 806024EC-8060251C 00DB8C 0030+00 1/1 0/0 0/0 .text            isStop__13mDoExt_morf_cFv */
// // void mDoExt_morf_c::isStop() {
// extern "C" void isStop__13mDoExt_morf_cFv() {
//     // NONMATCHING
// }

// /* 8060251C-80602590 00DBBC 0074+00 2/2 0/0 0/0 .text
//  * dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz             */
// static void dComIfGp_particle_set(u16 param_0, cXyz const* param_1, csXyz const* param_2,
//                                       cXyz const* param_3) {
//     // NONMATCHING
// }

// /* 80602590-806025A4 00DC30 0014+00 1/1 0/0 0/0 .text            changeDemoMode__9daPy_py_cFUliis */
// // void daPy_py_c::changeDemoMode(u32 param_0, int param_1, int param_2, s16 param_3) {
// extern "C" void changeDemoMode__9daPy_py_cFUliis() {
//     // NONMATCHING
// }

// /* 806025A4-806025B8 00DC44 0014+00 1/1 0/0 0/0 .text            changeOriginalDemo__9daPy_py_cFv */
// // void daPy_py_c::changeOriginalDemo() {
// extern "C" void changeOriginalDemo__9daPy_py_cFv() {
//     // NONMATCHING
// }

// /* 806025B8-806025C4 00DC58 000C+00 1/1 0/0 0/0 .text            changeDemoMode__9daHorse_cFUli */
// // void daHorse_c::changeDemoMode(u32 param_0, int param_1) {
// extern "C" void changeDemoMode__9daHorse_cFUli() {
//     // NONMATCHING
// }

// /* 806025C4-806025D4 00DC64 0010+00 1/1 0/0 0/0 .text            set__4cXyzFfff */
// // void cXyz::set(f32 param_0, f32 param_1, f32 param_2) {
// extern "C" void set__4cXyzFfff() {
//     // NONMATCHING
// }

// /* 806025D4-806025F0 00DC74 001C+00 2/2 0/0 0/0 .text            __as__4cXyzFRC4cXyz */
// // void cXyz::operator=(cXyz const& param_0) {
// extern "C" void __as__4cXyzFRC4cXyz() {
//     // NONMATCHING
// }

// /* 806025F0-80602604 00DC90 0014+00 1/1 0/0 0/0 .text            changeOriginalDemo__9daHorse_cFv */
// // void daHorse_c::changeOriginalDemo() {
// extern "C" void changeOriginalDemo__9daHorse_cFv() {
//     // NONMATCHING
// }

// /* 80602604-8060261C 00DCA4 0018+00 1/1 0/0 0/0 .text            dComIfGp_getCamera__Fi */
// static void dComIfGp_getCamera(int param_0) {
//     // NONMATCHING
// }

// /* 8060261C-80602638 00DCBC 001C+00 1/1 0/0 0/0 .text            dComIfGp_getPlayerCameraID__Fi */
// static void dComIfGp_getPlayerCameraID(int param_0) {
//     // NONMATCHING
// }

// /* 80602638-80602650 00DCD8 0018+00 1/1 0/0 0/0 .text            dComIfGp_getPlayer__Fi */
// // static void dComIfGp_getPlayer(int param_0) {
// extern "C" void dComIfGp_getPlayer__Fi() {
//     // NONMATCHING
// }

/* ############################################################################################## */
/* 8060305C-80603060 0000FC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8060305C[4];
#pragma pop

/* 80603060-80603064 000100 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80603060[4];
#pragma pop

/* 80603064-80603068 000104 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80603064[4];
#pragma pop

/* 80603068-8060306C 000108 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80603068[4];
#pragma pop

/* 8060306C-80603070 00010C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8060306C[4];
#pragma pop

/* 80603070-80603074 000110 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80603070[4];
#pragma pop

/* 80603074-80603078 000114 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80603074[4];
#pragma pop

/* 80603078-8060307C 000118 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80603078[4];
#pragma pop

/* 8060307C-80603080 00011C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8060307C[4];
#pragma pop

/* 80603080-80603084 000120 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80603080[4];
#pragma pop

/* 80603084-80603088 000124 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80603084[4];
#pragma pop

/* 80603088-8060308C 000128 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80603088[4];
#pragma pop

/* 8060308C-80603090 00012C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8060308C[4];
#pragma pop

/* 80603090-80603094 000130 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80603090[4];
#pragma pop

/* 80603094-80603098 000134 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80603094[4];
#pragma pop

/* 80603098-8060309C 000138 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80603098[4];
#pragma pop

/* 8060309C-806030A0 00013C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8060309C[4];
#pragma pop

/* 806030A0-806030A4 000140 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806030A0[4];
#pragma pop

/* 806030A4-806030A8 000144 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_806030A4[4];
#pragma pop

/* 806030A8-806030AC 000148 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_806030A8[4];
#pragma pop

/* 806030AC-806030B0 00014C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_806030AC[4];
#pragma pop

/* 806030B0-806030B4 000150 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806030B0[4];
#pragma pop

/* 806030B4-806030B8 000154 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806030B4[4];
#pragma pop

/* 806030B8-806030BC 000158 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806030B8[4];
#pragma pop

/* 806030BC-806030C0 00015C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_806030BC[4];
#pragma pop

/* 806029AC-806029AC 000348 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

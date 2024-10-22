/**
 * @file d_a_e_fm.cpp
 * 
*/

#include "d/actor/d_a_e_fm.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"
#include "d/actor/d_a_obj_ystone.h"




//
// Forward References:
//

extern "C" void __ct__12daE_FM_HIO_cFv();
extern "C" static void s_fmobj_del__FPvPv();
extern "C" static void s_hasira_sub__FPvPv();
extern "C" static void s_hasira_poscheck__FPvPv();
extern "C" static void s_hasira_eff_sub__FPvPv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" static void hasira_hahen_hit__FP4cXyzffSc();
extern "C" static void carry_off__FP10e_fm_classi();
extern "C" static void anm_init__FP10e_fm_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void chain_draw__FP10e_fm_classP7chain_si();
extern "C" static void daE_FM_Draw__FP10e_fm_class();
extern "C" static void other_bg_check__FP10e_fm_classP10fopAc_ac_c();
extern "C" static void pl_check__FP10e_fm_classfs();
extern "C" static void e_fm_normal__FP10e_fm_class();
extern "C" static void e_fm_fight_run__FP10e_fm_class();
extern "C" static void e_fm_n_fight__FP10e_fm_class();
extern "C" static void tame_eff_set__FP10e_fm_class();
extern "C" static void e_fm_f_fight__FP10e_fm_class();
extern "C" static void animal_eff_set__FP10e_fm_classs();
extern "C" static void e_fm_animal__FP10e_fm_class();
extern "C" static void e_fm_fire__FP10e_fm_class();
extern "C" static void e_fm_stop__FP10e_fm_class();
extern "C" static void e_fm_damage_run__FP10e_fm_class();
extern "C" static void cam_3d_morf__FP10e_fm_classf();
extern "C" static void demo_camera__FP10e_fm_class();
extern "C" static void e_fm_down__FP10e_fm_class();
extern "C" static void e_fm_a_down__FP10e_fm_class();
extern "C" static void e_fm_start__FP10e_fm_class();
extern "C" static void e_fm_end__FP10e_fm_class();
extern "C" static void damage_check__FP10e_fm_class();
extern "C" static void chain_control1__FP10e_fm_classP7chain_si();
extern "C" static void chain_control2__FP10e_fm_classP7chain_si();
extern "C" static void chain_control3__FP10e_fm_classP7chain_si();
extern "C" static void s_ba_sub__FPvPv();
extern "C" static void action__FP10e_fm_class();
extern "C" static void effect_set__FP10e_fm_class();
extern "C" static void daE_FM_Execute__FP10e_fm_class();
extern "C" static bool daE_FM_IsDelete__FP10e_fm_class();
extern "C" static void daE_FM_Delete__FP10e_fm_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daE_FM_Create__FP10fopAc_ac_c();
extern "C" void __ct__10e_fm_classFv();
extern "C" void __dt__7chain_sFv();
extern "C" void __dt__12dKy_tevstr_cFv();
extern "C" void __ct__7chain_sFv();
extern "C" void __ct__12dKy_tevstr_cFv();
extern "C" void __ct__11J3DLightObjFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_FM_HIO_cFv();
extern "C" void __sinit_d_a_e_fm_cpp();
extern "C" static void func_804FA478();
extern "C" static void func_804FA480();
extern "C" void setCurrentPos__16obj_ystone_classF4cXyz();
extern "C" void __ct__4cXyzFRC4cXyz();
extern "C" static void dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz();
extern "C" void changeDemoPos0__9daPy_py_cFPC4cXyz();
extern "C" void abs__4cXyzCFv();
extern "C" void __as__4cXyzFRC4cXyz();
extern "C" void changeDemoMode__9daPy_py_cFUliis();
extern "C" void changeOriginalDemo__9daPy_py_cFv();
extern "C" extern char const* const d_a_e_fm__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdate__FP8J3DModel();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void cDmrNowMidnaTalk__Fv();
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
extern "C" void fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi();
extern "C" void fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void fopMsgM_messageSetDemo__FUl();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_BossLife_public_Set__FSc();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void dComIfGs_offOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onDungeonItem__12dSv_memBit_cFi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void offEventBit__11dSv_event_cFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
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
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void setFmChainPos__9daPy_py_cFP10fopAc_ac_cP4cXyzi();
extern "C" void cancelFmChainGrab__9daPy_py_cFv();
extern "C" void setLookPos__9daPy_py_cFP4cXyz();
extern "C" void setPlayerSe__9daPy_py_cFUl();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzsf();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_plight_set__FP15LIGHT_INFLUENCE();
extern "C" void dKy_plight_cut__FP15LIGHT_INFLUENCE();
extern "C" void dKy_custom_colset__FUcUcf();
extern "C" void dKy_tevstr_init__FP12dKy_tevstr_cScUc();
extern "C" void dKy_BossLight_set__FP4cXyzP8_GXColorfUc();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
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
extern "C" void func_802807E0();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void bgmStart__8Z2SeqMgrFUlUll();
extern "C" void bgmStop__8Z2SeqMgrFUll();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void changeBgmStatus__8Z2SeqMgrFl();
extern "C" void __ct__12Z2CreatureFMFv();
extern "C" void init__12Z2CreatureFMFP3VecP3VecP3VecP3VecP3VecP3VecUcUcUcUcUcUc();
extern "C" void startChainSoundLevel__12Z2CreatureFMF10JAISoundIDUcfUlSc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __as__12J3DLightInfoFRC12J3DLightInfo();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_14();
extern "C" void _savegpr_18();
extern "C" void _savegpr_20();
extern "C" void _savegpr_21();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_14();
extern "C" void _restgpr_18();
extern "C" void _restgpr_20();
extern "C" void _restgpr_21();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
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
extern "C" extern u8 struct_80450C98[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();
extern "C" void Rolling__13daObjHHASHI_cFP4cXyzffSc();

//
// Declarations:
//

/* ############################################################################################## */
/* 804FA6BC-804FA6C0 000000 0004+00 31/31 0/0 0/0 .rodata          @3777 */
SECTION_RODATA static f32 const lit_3777 = 1.0f;
COMPILER_STRIP_GATE(0x804FA6BC, &lit_3777);

/* 804FA6C0-804FA6C4 000004 0004+00 0/3 0/0 0/0 .rodata          @3778 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3778 = 3.0f;
COMPILER_STRIP_GATE(0x804FA6C0, &lit_3778);
#pragma pop

/* 804FA6C4-804FA6C8 000008 0004+00 0/2 0/0 0/0 .rodata          @3779 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3779 = 2.5f;
COMPILER_STRIP_GATE(0x804FA6C4, &lit_3779);
#pragma pop

/* 804FA6C8-804FA6CC 00000C 0004+00 0/7 0/0 0/0 .rodata          @3780 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3780 = 5.0f;
COMPILER_STRIP_GATE(0x804FA6C8, &lit_3780);
#pragma pop

/* 804FA6CC-804FA6D0 000010 0004+00 0/2 0/0 0/0 .rodata          @3781 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3781 = 4.0f;
COMPILER_STRIP_GATE(0x804FA6CC, &lit_3781);
#pragma pop

/* 804FA6D0-804FA6D4 000014 0004+00 0/2 0/0 0/0 .rodata          @3782 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3782 = 20000.0f;
COMPILER_STRIP_GATE(0x804FA6D0, &lit_3782);
#pragma pop

/* 804FA6D4-804FA6D8 000018 0004+00 0/1 0/0 0/0 .rodata          @3783 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3783 = 1500.0f;
COMPILER_STRIP_GATE(0x804FA6D4, &lit_3783);
#pragma pop

/* 804FA6D8-804FA6DC 00001C 0004+00 0/2 0/0 0/0 .rodata          @3784 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3784 = 600.0f;
COMPILER_STRIP_GATE(0x804FA6D8, &lit_3784);
#pragma pop

/* 804FA6DC-804FA6E0 000020 0004+00 0/2 0/0 0/0 .rodata          @3785 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3785 = 120.0f;
COMPILER_STRIP_GATE(0x804FA6DC, &lit_3785);
#pragma pop

/* 804FA6E0-804FA6E4 000024 0004+00 0/5 0/0 0/0 .rodata          @3786 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3786 = 1000.0f;
COMPILER_STRIP_GATE(0x804FA6E0, &lit_3786);
#pragma pop

/* 804FA6E4-804FA6E8 000028 0004+00 0/5 0/0 0/0 .rodata          @3787 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3787 = 2.0f;
COMPILER_STRIP_GATE(0x804FA6E4, &lit_3787);
#pragma pop

/* 804FA6E8-804FA6EC 00002C 0004+00 0/3 0/0 0/0 .rodata          @3788 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3788 = 35.0f;
COMPILER_STRIP_GATE(0x804FA6E8, &lit_3788);
#pragma pop

/* 804FA6EC-804FA6F0 000030 0004+00 0/1 0/0 0/0 .rodata          @3789 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3789 = 7000.0f;
COMPILER_STRIP_GATE(0x804FA6EC, &lit_3789);
#pragma pop

/* 804FA6F0-804FA6F4 000034 0004+00 0/1 0/0 0/0 .rodata          @3790 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3790 = 180.0f;
COMPILER_STRIP_GATE(0x804FA6F0, &lit_3790);
#pragma pop

/* 804FA6F4-804FA6F8 000038 0004+00 0/9 0/0 0/0 .rodata          @3791 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3791 = 20.0f;
COMPILER_STRIP_GATE(0x804FA6F4, &lit_3791);
#pragma pop

/* 804FA6F8-804FA6FC 00003C 0004+00 4/30 0/0 0/0 .rodata          @3792 */
SECTION_RODATA static u8 const lit_3792[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x804FA6F8, &lit_3792);

/* 804FA6FC-804FA700 000040 0004+00 0/1 0/0 0/0 .rodata          @3793 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3793 = 17.0f / 10.0f;
COMPILER_STRIP_GATE(0x804FA6FC, &lit_3793);
#pragma pop

/* 804FA700-804FA704 000044 0004+00 0/2 0/0 0/0 .rodata          @3794 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3794 = 1.5f;
COMPILER_STRIP_GATE(0x804FA700, &lit_3794);
#pragma pop

/* 804FA704-804FA708 000048 0004+00 0/1 0/0 0/0 .rodata          @3795 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3795 = 36000.0f;
COMPILER_STRIP_GATE(0x804FA704, &lit_3795);
#pragma pop

/* 804FA708-804FA70C 00004C 0004+00 0/3 0/0 0/0 .rodata          @3796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3796 = 40.0f;
COMPILER_STRIP_GATE(0x804FA708, &lit_3796);
#pragma pop

/* 804FA70C-804FA710 000050 0004+00 0/1 0/0 0/0 .rodata          @3797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3797 = 753.0f;
COMPILER_STRIP_GATE(0x804FA70C, &lit_3797);
#pragma pop

/* 804FA710-804FA714 000054 0004+00 0/1 0/0 0/0 .rodata          @3798 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3798 = 258.0f;
COMPILER_STRIP_GATE(0x804FA710, &lit_3798);
#pragma pop

/* 804FA714-804FA718 000058 0004+00 0/1 0/0 0/0 .rodata          @3799 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3799 = -2100.0f;
COMPILER_STRIP_GATE(0x804FA714, &lit_3799);
#pragma pop

/* 804FA718-804FA71C 00005C 0004+00 0/2 0/0 0/0 .rodata          @3800 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3800 = 1100.0f;
COMPILER_STRIP_GATE(0x804FA718, &lit_3800);
#pragma pop

/* 804FA71C-804FA720 000060 0004+00 0/6 0/0 0/0 .rodata          @3801 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3801 = 300.0f;
COMPILER_STRIP_GATE(0x804FA71C, &lit_3801);
#pragma pop

/* 804FA720-804FA724 000064 0004+00 0/1 0/0 0/0 .rodata          @3802 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3802 = 1200.0f;
COMPILER_STRIP_GATE(0x804FA720, &lit_3802);
#pragma pop

/* 804FA950-804FA95C 000000 000C+00 5/5 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 804FA95C-804FA970 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 804FA970-804FA978 000020 0006+02 1/1 0/0 0/0 .data            h_id$3853 */
SECTION_DATA static u8 h_id[6 + 2 /* padding */] = {
    0x81,
    0x51,
    0x87,
    0x2A,
    0x87,
    0x2B,
    /* padding */
    0x00,
    0x00,
};

/* 804FA978-804FA9DC 000028 0064+00 1/1 0/0 0/0 .data            chain_z */
SECTION_DATA static u8 chain_z[100] = {
    0x45, 0x2F, 0x00, 0x00, 0x44, 0xFA, 0x00, 0x00, 0xC5, 0x3B, 0x80, 0x00, 0xC5, 0x4E, 0x40,
    0x00, 0x45, 0x48, 0x00, 0x00, 0x45, 0x28, 0xC0, 0x00, 0xC4, 0xE1, 0x00, 0x00, 0xC5, 0x22,
    0x80, 0x00, 0x44, 0xFA, 0x00, 0x00, 0x44, 0xAF, 0x00, 0x00, 0xC5, 0x35, 0x40, 0x00, 0xC4,
    0xC8, 0x00, 0x00, 0x45, 0x09, 0x80, 0x00, 0x45, 0x1C, 0x40, 0x00, 0xC4, 0xA2, 0x80, 0x00,
    0xC5, 0x03, 0x40, 0x00, 0x44, 0x89, 0x80, 0x00, 0x44, 0xFA, 0x00, 0x00, 0xC5, 0x41, 0xC0,
    0x00, 0xC5, 0x0F, 0xC0, 0x00, 0x44, 0xE1, 0x00, 0x00, 0x45, 0x35, 0x40, 0x00, 0xC4, 0x89,
    0x80, 0x00, 0xC5, 0x28, 0xC0, 0x00, 0x45, 0x0F, 0xC0, 0x00,
};

/* 804FA9DC-804FA9E0 00008C 0004+00 1/1 0/0 0/0 .data            tame_name$4558 */
SECTION_DATA static u8 tame_name[4] = {
    0x81,
    0xA3,
    0x81,
    0xA4,
};

/* 804FA9E0-804FA9E8 000090 0008+00 1/1 0/0 0/0 .data            fire_name$4712 */
SECTION_DATA static u8 fire_name[8] = {
    0x81, 0x81, 0x81, 0x82, 0x81, 0x83, 0x81, 0x84,
};

/* 804FA9E8-804FAA08 000098 0020+00 0/1 0/0 0/0 .data            g_c_i$5284 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 g_c_i[32] = {
    0x84, 0x81, 0x84, 0x82, 0x84, 0x83, 0x84, 0x84, 0x84, 0x85, 0x84, 0x86, 0x84, 0x87, 0x84, 0x88,
    0x84, 0x89, 0x84, 0x8A, 0x84, 0x8B, 0x84, 0x8C, 0x84, 0x8D, 0x84, 0x8E, 0x84, 0x8F, 0x84, 0x90,
};
#pragma pop

/* 804FAA08-804FAA48 0000B8 0040+00 0/1 0/0 0/0 .data            g_c_ji$5285 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 g_c_ji[64] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x13,
};
#pragma pop

/* 804FAA48-804FAA50 0000F8 0008+00 0/1 0/0 0/0 .data            g_e_i$5297 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 g_e_i[8] = {
    0x84, 0x7B, 0x84, 0x7C, 0x84, 0x7D, 0x84, 0x7E,
};
#pragma pop

/* 804FAA50-804FAA84 -00001 0034+00 1/1 0/0 0/0 .data            @7067 */
SECTION_DATA static void* lit_7067[13] = {
    (void*)(((char*)action__FP10e_fm_class) + 0xB0),
    (void*)(((char*)action__FP10e_fm_class) + 0xC8),
    (void*)(((char*)action__FP10e_fm_class) + 0xE0),
    (void*)(((char*)action__FP10e_fm_class) + 0xF8),
    (void*)(((char*)action__FP10e_fm_class) + 0x110),
    (void*)(((char*)action__FP10e_fm_class) + 0x128),
    (void*)(((char*)action__FP10e_fm_class) + 0x140),
    (void*)(((char*)action__FP10e_fm_class) + 0x158),
    (void*)(((char*)action__FP10e_fm_class) + 0x1B4),
    (void*)(((char*)action__FP10e_fm_class) + 0x170),
    (void*)(((char*)action__FP10e_fm_class) + 0x180),
    (void*)(((char*)action__FP10e_fm_class) + 0x190),
    (void*)(((char*)action__FP10e_fm_class) + 0x1A0),
};

/* 804FAA84-804FAABC 000134 0038+00 0/1 0/0 0/0 .data            eff_joint_d$7090 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_joint_d[56] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00,
    0x00, 0x08, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 804FAABC-804FAAD8 00016C 001C+00 0/1 0/0 0/0 .data            eff_id$7091 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_id[28] = {
    0x80, 0xFD, 0x80, 0xF9, 0x80, 0xF9, 0x80, 0xFC, 0x80, 0xFC, 0x80, 0xFA, 0x80, 0xFB,
    0x80, 0xF7, 0x80, 0xF7, 0x80, 0xF8, 0x80, 0xFE, 0x80, 0xFF, 0x87, 0x23, 0x87, 0x22,
};
#pragma pop

/* 804FAAD8-804FAAE0 000188 0008+00 0/1 0/0 0/0 .data            ef_bck$7111 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 ef_bck[8] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08,
};
#pragma pop

/* 804FAAE0-804FAAE4 000190 0004+00 0/1 0/0 0/0 .data            cg_name$7351 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 cg_name_7351[4] = {
    0x84,
    0x2C,
    0x84,
    0x96,
};
#pragma pop

/* 804FAAE4-804FAAF0 000194 000C+00 0/1 0/0 0/0 .data            cg_name$7360 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 cg_name_7360[12] = {
    0x84, 0x0F, 0x84, 0x7F, 0x87, 0x26, 0x87, 0x27, 0x87, 0x28, 0x87, 0x29,
};
#pragma pop

/* 804FAAF0-804FAB08 0001A0 0018+00 0/1 0/0 0/0 .data            hl_d$7373 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 hl_d[24] = {
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0F,
};
#pragma pop

/* 804FAB08-804FAB20 0001B8 0018+00 0/1 0/0 0/0 .data            hl_s$7374 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 hl_s[24] = {
    0x42, 0x48, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
    0x42, 0x48, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
};
#pragma pop

/* 804FAB20-804FAB30 0001D0 0010+00 0/1 0/0 0/0 .data            sisi_joint$7416 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 sisi_joint[16] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x19,
};
#pragma pop

/* 804FAB30-804FAB40 0001E0 0010+00 0/1 0/0 0/0 .data            chain_hit_d$7417 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 chain_hit_d[16] = {
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x03,
};
#pragma pop

/* 804FAB40-804FAB44 0001F0 0004+00 0/1 0/0 0/0 .data            chain_at_id$7477 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 chain_at_id[4] = {
    0x87,
    0x24,
    0x87,
    0x25,
};
#pragma pop

/* 804FAB44-804FAB50 0001F4 000C+00 0/1 0/0 0/0 .data            c_id$7478 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 c_id[12] = {
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0E,
};
#pragma pop

/* 804FAB50-804FAB58 000200 0006+02 0/1 0/0 0/0 .data            core_id$7501 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 core_id[6 + 2 /* padding */] = {
    0x84,
    0x10,
    0x84,
    0x11,
    0x84,
    0x80,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 804FAB58-804FAB60 000208 0006+02 0/1 0/0 0/0 .data            f_id$7515 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 f_id[6 + 2 /* padding */] = {
    0x84,
    0x12,
    0x84,
    0x13,
    0x84,
    0x14,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 804FAB60-804FAB70 000210 0010+00 0/1 0/0 0/0 .data            end_id$7532 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 end_id[16] = {
    0x84, 0x92, 0x84, 0x93, 0x84, 0x94, 0x84, 0x95, 0x86, 0xD6, 0x86, 0xD7, 0x86, 0xD8, 0x86, 0xD9,
};
#pragma pop

/* 804FAB70-804FAB94 000220 0024+00 0/1 0/0 0/0 .data            brk$8360 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 brk[36] = {
    0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x3B,
    0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x3A,
    0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00, 0x37,
};
#pragma pop

/* 804FAB94-804FABB8 000244 0024+00 0/1 0/0 0/0 .data            btk$8361 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 btk[36] = {
    0x00, 0x00, 0x00, 0x42, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00, 0x49,
    0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x48,
    0x00, 0x00, 0x00, 0x47, 0x00, 0x00, 0x00, 0x45, 0x00, 0x00, 0x00, 0x46,
};
#pragma pop

/* 804FABB8-804FABC0 000268 0008+00 0/1 0/0 0/0 .data            eff_bmd$8401 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_bmd[8] = {
    0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x2B,
};
#pragma pop

/* 804FABC0-804FABC8 000270 0008+00 0/1 0/0 0/0 .data            eff_btk$8402 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_btk[8] = {
    0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x41,
};
#pragma pop

/* 804FABC8-804FAC08 000278 0040+00 0/1 0/0 0/0 .data            cc_sph_src$8693 */
#pragma push
#pragma force_active on
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0x1d}, {0x0, 0x0}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 804FAC08-804FAC48 0002B8 0040+00 0/1 0/0 0/0 .data            at_sph_src$8694 */
#pragma push
#pragma force_active on
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0xe, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 804FAC48-804FAC88 0002F8 0040+00 0/1 0/0 0/0 .data            core_sph_src$8695 */
#pragma push
#pragma force_active on
static dCcD_SrcSph core_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x2002, 0x3}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 804FAC88-804FACC8 000338 0040+00 0/1 0/0 0/0 .data            eff_at_sph_src$8696 */
#pragma push
#pragma force_active on
static dCcD_SrcSph eff_at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x4, 0x1f}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0xe, 0x1, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 804FACC8-804FAD08 000378 0040+00 0/1 0/0 0/0 .data            f_eff_at_sph_src$8697 */
#pragma push
#pragma force_active on
static dCcD_SrcSph f_eff_at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x1, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x1, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 804FAD08-804FAD48 0003B8 0040+00 0/1 0/0 0/0 .data            chain_at_sph_src$8698 */
#pragma push
#pragma force_active on
static dCcD_SrcSph chain_at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_BOSS_SWING, 0x2, 0x1f}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x2, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 90.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 804FAD48-804FAD88 0003F8 0040+00 0/0 0/0 0/0 .data            chain_co_sph_src$8699 */
#pragma push
#pragma force_active on
static dCcD_SrcSph chain_co_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 804FAD88-804FADA8 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_FM_Method */
static actor_method_class l_daE_FM_Method = {
    (process_method_func)daE_FM_Create__FP10fopAc_ac_c,
    (process_method_func)daE_FM_Delete__FP10e_fm_class,
    (process_method_func)daE_FM_Execute__FP10e_fm_class,
    (process_method_func)daE_FM_IsDelete__FP10e_fm_class,
    (process_method_func)daE_FM_Draw__FP10e_fm_class,
};

/* 804FADA8-804FADD8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_FM */
extern actor_process_profile_definition g_profile_E_FM = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_FM,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(e_fm_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  158,                    // mPriority
  &l_daE_FM_Method,       // sub_method
  0x00044000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 804FADD8-804FADE4 000488 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 804FADE4-804FADF0 000494 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 804FADF0-804FADFC 0004A0 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 804FADFC-804FAE08 0004AC 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 804FAE08-804FAE14 0004B8 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 804FAE14-804FAE38 0004C4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_804FA480,
    (void*)NULL,
    (void*)NULL,
    (void*)func_804FA478,
};

/* 804FAE38-804FAE44 0004E8 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 804FAE44-804FAE50 0004F4 000C+00 2/2 0/0 0/0 .data            __vt__12daE_FM_HIO_c */
SECTION_DATA extern void* __vt__12daE_FM_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_FM_HIO_cFv,
};

/* 804EF0EC-804EF250 0000EC 0164+00 1/1 0/0 0/0 .text            __ct__12daE_FM_HIO_cFv */
daE_FM_HIO_c::daE_FM_HIO_c() {
    // NONMATCHING
}

/* 804EF250-804EF29C 000250 004C+00 2/2 0/0 0/0 .text            s_fmobj_del__FPvPv */
static void s_fmobj_del(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FAE58-804FAE5C 000008 0001+03 4/4 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 804FAE5C-804FAE60 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 804FAE60-804FAE64 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 804FAE64-804FAE68 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 804FAE68-804FAE6C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 804FAE6C-804FAE70 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 804FAE70-804FAE74 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 804FAE74-804FAE78 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 804FAE78-804FAE7C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 804FAE7C-804FAE80 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 804FAE80-804FAE84 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 804FAE84-804FAE88 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 804FAE88-804FAE8C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 804FAE8C-804FAE90 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 804FAE90-804FAE94 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 804FAE94-804FAE98 -00001 0004+00 1/2 0/0 0/0 .bss             None */
/* 804FAE94 0001+00 data_804FAE94 @1009 */
/* 804FAE95 0003+00 data_804FAE95 None */
static u8 struct_804FAE94[4];

/* 804FAE98-804FAEA4 000048 000C+00 0/1 0/0 0/0 .bss             @3772 */
#pragma push
#pragma force_active on
static u8 lit_3772[12];
#pragma pop

/* 804FAEA4-804FAF54 000054 00B0+00 14/16 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[176];

/* 804FAF54-804FAF60 000104 000C+00 0/1 0/0 0/0 .bss             @3819 */
#pragma push
#pragma force_active on
static u8 lit_3819[12];
#pragma pop

/* 804FAF60-804FAF6C 000110 000C+00 0/3 0/0 0/0 .bss             h_pos */
#pragma push
#pragma force_active on
static u8 h_pos[12];
#pragma pop

/* 804FAF6C-804FAF70 00011C 0004+00 0/2 0/0 0/0 .bss             h_range */
#pragma push
#pragma force_active on
static u8 h_range[4];
#pragma pop

/* 804FAF70-804FAF78 000120 0004+04 0/2 0/0 0/0 .bss             h_power */
#pragma push
#pragma force_active on
static u8 h_power[4 + 4 /* padding */];
#pragma pop

/* 804EF29C-804EF308 00029C 006C+00 1/1 0/0 0/0 .text            s_hasira_sub__FPvPv */
static void s_hasira_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA724-804FA72C 000068 0004+04 1/5 0/0 0/0 .rodata          @3846 */
SECTION_RODATA static f32 const lit_3846[1 + 1 /* padding */] = {
    500.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x804FA724, &lit_3846);

/* 804EF308-804EF3CC 000308 00C4+00 1/1 0/0 0/0 .text            s_hasira_poscheck__FPvPv */
static void s_hasira_poscheck(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA72C-804FA734 000070 0008+00 0/5 0/0 0/0 .rodata          @3927 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3927[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804FA72C, &lit_3927);
#pragma pop

/* 804FA734-804FA73C 000078 0008+00 0/5 0/0 0/0 .rodata          @3928 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3928[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804FA734, &lit_3928);
#pragma pop

/* 804FA73C-804FA744 000080 0008+00 0/5 0/0 0/0 .rodata          @3929 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3929[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804FA73C, &lit_3929);
#pragma pop

/* 804FAF78-804FAF7C 000128 0004+00 2/2 0/0 0/0 .bss             fire_range */
static u8 fire_range[4];

/* 804EF3CC-804EF63C 0003CC 0270+00 1/1 0/0 0/0 .text            s_hasira_eff_sub__FPvPv */
static void s_hasira_eff_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 804EF63C-804EF678 00063C 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 804EF678-804EF6B4 000678 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 804EF6B4-804EF710 0006B4 005C+00 6/6 0/0 0/0 .text            hasira_hahen_hit__FP4cXyzffSc */
static void hasira_hahen_hit(cXyz* param_0, f32 param_1, f32 param_2, s8 param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA744-804FA748 000088 0004+00 1/10 0/0 0/0 .rodata          @3964 */
SECTION_RODATA static f32 const lit_3964 = -1.0f;
COMPILER_STRIP_GATE(0x804FA744, &lit_3964);

/* 804EF710-804EF808 000710 00F8+00 5/5 0/0 0/0 .text            carry_off__FP10e_fm_classi */
static void carry_off(e_fm_class* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA948-804FA948 00028C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_804FA948 = "E_fm";
#pragma pop

/* 804EF808-804EF8B8 000808 00B0+00 13/13 0/0 0/0 .text            anm_init__FP10e_fm_classifUcf */
static void anm_init(e_fm_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 804EF8B8-804EF99C 0008B8 00E4+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA748-804FA74C 00008C 0004+00 0/2 0/0 0/0 .rodata          @4059 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4059 = 0x3B03126F;
COMPILER_STRIP_GATE(0x804FA748, &lit_4059);
#pragma pop

/* 804FA74C-804FA750 000090 0004+00 0/1 0/0 0/0 .rodata          @4060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4060 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x804FA74C, &lit_4060);
#pragma pop

/* 804FA750-804FA754 000094 0004+00 0/2 0/0 0/0 .rodata          @4061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4061 = 0.75f;
COMPILER_STRIP_GATE(0x804FA750, &lit_4061);
#pragma pop

/* 804FA754-804FA758 000098 0004+00 0/2 0/0 0/0 .rodata          @4062 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4062 = 8.0f;
COMPILER_STRIP_GATE(0x804FA754, &lit_4062);
#pragma pop

/* 804FA758-804FA75C 00009C 0004+00 0/1 0/0 0/0 .rodata          @4063 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4063 = 0x3E2AAAC1;
COMPILER_STRIP_GATE(0x804FA758, &lit_4063);
#pragma pop

/* 804FA75C-804FA764 0000A0 0008+00 0/5 0/0 0/0 .rodata          @4065 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4065[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804FA75C, &lit_4065);
#pragma pop

/* 804EF99C-804EFC3C 00099C 02A0+00 1/1 0/0 0/0 .text chain_draw__FP10e_fm_classP7chain_si */
static void chain_draw(e_fm_class* param_0, chain_s* param_1, int param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA764-804FA768 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4193 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4193 = 255.0f;
COMPILER_STRIP_GATE(0x804FA764, &lit_4193);
#pragma pop

/* 804FA768-804FA76C 0000AC 0004+00 0/10 0/0 0/0 .rodata          @4194 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4194 = 100.0f;
COMPILER_STRIP_GATE(0x804FA768, &lit_4194);
#pragma pop

/* 804FA76C-804FA770 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4195 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4195 = 2500.0f;
COMPILER_STRIP_GATE(0x804FA76C, &lit_4195);
#pragma pop

/* 804EFC3C-804EFF68 000C3C 032C+00 1/0 0/0 0/0 .text            daE_FM_Draw__FP10e_fm_class */
static void daE_FM_Draw(e_fm_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA770-804FA774 0000B4 0004+00 1/9 0/0 0/0 .rodata          @4237 */
SECTION_RODATA static f32 const lit_4237 = 30.0f;
COMPILER_STRIP_GATE(0x804FA770, &lit_4237);

/* 804EFF68-804F005C 000F68 00F4+00 1/1 0/0 0/0 .text other_bg_check__FP10e_fm_classP10fopAc_ac_c
 */
static void other_bg_check(e_fm_class* param_0, fopAc_ac_c* param_1) {
    // NONMATCHING
}

/* 804F005C-804F00E4 00105C 0088+00 2/2 0/0 0/0 .text            pl_check__FP10e_fm_classfs */
static void pl_check(e_fm_class* param_0, f32 param_1, s16 param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA774-804FA778 0000B8 0004+00 0/6 0/0 0/0 .rodata          @4355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4355 = 15.0f;
COMPILER_STRIP_GATE(0x804FA774, &lit_4355);
#pragma pop

/* 804FA778-804FA77C 0000BC 0004+00 0/8 0/0 0/0 .rodata          @4356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4356 = 50.0f;
COMPILER_STRIP_GATE(0x804FA778, &lit_4356);
#pragma pop

/* 804F00E4-804F0530 0010E4 044C+00 1/1 0/0 0/0 .text            e_fm_normal__FP10e_fm_class */
static void e_fm_normal(e_fm_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA77C-804FA780 0000C0 0004+00 0/10 0/0 0/0 .rodata          @4486 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4486 = 10.0f;
COMPILER_STRIP_GATE(0x804FA77C, &lit_4486);
#pragma pop

/* 804FA780-804FA784 0000C4 0004+00 0/7 0/0 0/0 .rodata          @4487 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4487 = 0.5f;
COMPILER_STRIP_GATE(0x804FA780, &lit_4487);
#pragma pop

/* 804FA784-804FA788 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4488 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4488 = 280.0f;
COMPILER_STRIP_GATE(0x804FA784, &lit_4488);
#pragma pop

/* 804F0530-804F0A78 001530 0548+00 1/1 0/0 0/0 .text            e_fm_fight_run__FP10e_fm_class */
static void e_fm_fight_run(e_fm_class* param_0) {
    // NONMATCHING
}

/* 804F0A78-804F0D3C 001A78 02C4+00 1/1 0/0 0/0 .text            e_fm_n_fight__FP10e_fm_class */
static void e_fm_n_fight(e_fm_class* param_0) {
    // NONMATCHING
}

/* 804F0D3C-804F0F80 001D3C 0244+00 1/1 0/0 0/0 .text            tame_eff_set__FP10e_fm_class */
static void tame_eff_set(e_fm_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA788-804FA78C 0000CC 0004+00 0/2 0/0 0/0 .rodata          @4705 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4705 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x804FA788, &lit_4705);
#pragma pop

/* 804F0F80-804F11D8 001F80 0258+00 1/1 0/0 0/0 .text            e_fm_f_fight__FP10e_fm_class */
static void e_fm_f_fight(e_fm_class* param_0) {
    // NONMATCHING
}

/* 804F11D8-804F13FC 0021D8 0224+00 2/2 0/0 0/0 .text            animal_eff_set__FP10e_fm_classs */
static void animal_eff_set(e_fm_class* param_0, s16 param_1) {
    // NONMATCHING
}

/* 804F13FC-804F14C8 0023FC 00CC+00 1/1 0/0 0/0 .text            e_fm_animal__FP10e_fm_class */
static void e_fm_animal(e_fm_class* param_0) {
    // NONMATCHING
}

/* 804F14C8-804F16C4 0024C8 01FC+00 1/1 0/0 0/0 .text            e_fm_fire__FP10e_fm_class */
static void e_fm_fire(e_fm_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA78C-804FA790 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4917 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x804FA78C, &lit_4917);
#pragma pop

/* 804F16C4-804F1918 0026C4 0254+00 1/1 0/0 0/0 .text            e_fm_stop__FP10e_fm_class */
static void e_fm_stop(e_fm_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA790-804FA794 0000D4 0004+00 0/1 0/0 0/0 .rodata          @5129 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5129 = 10000.0f;
COMPILER_STRIP_GATE(0x804FA790, &lit_5129);
#pragma pop

/* 804FA794-804FA798 0000D8 0004+00 0/1 0/0 0/0 .rodata          @5130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5130 = 250.0f;
COMPILER_STRIP_GATE(0x804FA794, &lit_5130);
#pragma pop

/* 804F1918-804F20F4 002918 07DC+00 1/1 0/0 0/0 .text            e_fm_damage_run__FP10e_fm_class */
static void e_fm_damage_run(e_fm_class* param_0) {
    // NONMATCHING
}

/* 804F20F4-804F21F0 0030F4 00FC+00 1/1 0/0 0/0 .text            cam_3d_morf__FP10e_fm_classf */
static void cam_3d_morf(e_fm_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA798-804FA79C 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5881 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5881 = 55.0f;
COMPILER_STRIP_GATE(0x804FA798, &lit_5881);
#pragma pop

/* 804FA79C-804FA7A0 0000E0 0004+00 0/3 0/0 0/0 .rodata          @5882 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5882 = -100.0f;
COMPILER_STRIP_GATE(0x804FA79C, &lit_5882);
#pragma pop

/* 804FA7A0-804FA7A4 0000E4 0004+00 0/2 0/0 0/0 .rodata          @5883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5883 = -200.0f;
COMPILER_STRIP_GATE(0x804FA7A0, &lit_5883);
#pragma pop

/* 804FA7A4-804FA7A8 0000E8 0004+00 0/5 0/0 0/0 .rodata          @5884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5884 = 200.0f;
COMPILER_STRIP_GATE(0x804FA7A4, &lit_5884);
#pragma pop

/* 804FA7A8-804FA7AC 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5885 = 700.0f;
COMPILER_STRIP_GATE(0x804FA7A8, &lit_5885);
#pragma pop

/* 804FA7AC-804FA7B0 0000F0 0004+00 0/2 0/0 0/0 .rodata          @5886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5886 = 400.0f;
COMPILER_STRIP_GATE(0x804FA7AC, &lit_5886);
#pragma pop

/* 804FA7B0-804FA7B4 0000F4 0004+00 0/2 0/0 0/0 .rodata          @5887 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5887 = -400.0f;
COMPILER_STRIP_GATE(0x804FA7B0, &lit_5887);
#pragma pop

/* 804FA7B4-804FA7B8 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5888 = -550.0f;
COMPILER_STRIP_GATE(0x804FA7B4, &lit_5888);
#pragma pop

/* 804FA7B8-804FA7BC 0000FC 0004+00 0/2 0/0 0/0 .rodata          @5889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5889 = 800.0f;
COMPILER_STRIP_GATE(0x804FA7B8, &lit_5889);
#pragma pop

/* 804FA7BC-804FA7C0 000100 0004+00 0/1 0/0 0/0 .rodata          @5890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5890 = 176.0f;
COMPILER_STRIP_GATE(0x804FA7BC, &lit_5890);
#pragma pop

/* 804FA7C0-804FA7C4 000104 0004+00 0/1 0/0 0/0 .rodata          @5891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5891 = 1782.0f;
COMPILER_STRIP_GATE(0x804FA7C0, &lit_5891);
#pragma pop

/* 804FA7C4-804FA7C8 000108 0004+00 0/1 0/0 0/0 .rodata          @5892 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5892 = 217.0f;
COMPILER_STRIP_GATE(0x804FA7C4, &lit_5892);
#pragma pop

/* 804FA7C8-804FA7CC 00010C 0004+00 0/1 0/0 0/0 .rodata          @5893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5893 = 1968.0f;
COMPILER_STRIP_GATE(0x804FA7C8, &lit_5893);
#pragma pop

/* 804FA7CC-804FA7D0 000110 0004+00 0/1 0/0 0/0 .rodata          @5894 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5894 = 671.0f;
COMPILER_STRIP_GATE(0x804FA7CC, &lit_5894);
#pragma pop

/* 804FA7D0-804FA7D4 000114 0004+00 0/1 0/0 0/0 .rodata          @5895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5895 = 1664.0f;
COMPILER_STRIP_GATE(0x804FA7D0, &lit_5895);
#pragma pop

/* 804FA7D4-804FA7D8 000118 0004+00 0/1 0/0 0/0 .rodata          @5896 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5896 = 752.0f;
COMPILER_STRIP_GATE(0x804FA7D4, &lit_5896);
#pragma pop

/* 804FA7D8-804FA7DC 00011C 0004+00 0/1 0/0 0/0 .rodata          @5897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5897 = 1836.0f;
COMPILER_STRIP_GATE(0x804FA7D8, &lit_5897);
#pragma pop

/* 804FA7DC-804FA7E0 000120 0004+00 0/3 0/0 0/0 .rodata          @5898 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5898 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x804FA7DC, &lit_5898);
#pragma pop

/* 804FA7E0-804FA7E4 000124 0004+00 0/1 0/0 0/0 .rodata          @5899 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5899 = 1.0f / 125.0f;
COMPILER_STRIP_GATE(0x804FA7E0, &lit_5899);
#pragma pop

/* 804FA7E4-804FA7E8 000128 0004+00 0/1 0/0 0/0 .rodata          @5900 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5900 = 0x3951B717;
COMPILER_STRIP_GATE(0x804FA7E4, &lit_5900);
#pragma pop

/* 804FA7E8-804FA7EC 00012C 0004+00 0/1 0/0 0/0 .rodata          @5901 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5901 = 140.0f;
COMPILER_STRIP_GATE(0x804FA7E8, &lit_5901);
#pragma pop

/* 804FA7EC-804FA7F0 000130 0004+00 0/1 0/0 0/0 .rodata          @5902 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5902 = 669.0f;
COMPILER_STRIP_GATE(0x804FA7EC, &lit_5902);
#pragma pop

/* 804FA7F0-804FA7F4 000134 0004+00 0/1 0/0 0/0 .rodata          @5903 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5903 = 163.0f;
COMPILER_STRIP_GATE(0x804FA7F0, &lit_5903);
#pragma pop

/* 804FA7F4-804FA7F8 000138 0004+00 0/1 0/0 0/0 .rodata          @5904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5904 = 857.0f;
COMPILER_STRIP_GATE(0x804FA7F4, &lit_5904);
#pragma pop

/* 804FA7F8-804FA7FC 00013C 0004+00 0/1 0/0 0/0 .rodata          @5905 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5905 = 211.0f;
COMPILER_STRIP_GATE(0x804FA7F8, &lit_5905);
#pragma pop

/* 804FA7FC-804FA800 000140 0004+00 0/1 0/0 0/0 .rodata          @5906 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5906 = 673.0f;
COMPILER_STRIP_GATE(0x804FA7FC, &lit_5906);
#pragma pop

/* 804FA800-804FA804 000144 0004+00 0/1 0/0 0/0 .rodata          @5907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5907 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x804FA800, &lit_5907);
#pragma pop

/* 804FA804-804FA808 000148 0004+00 0/1 0/0 0/0 .rodata          @5908 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5908 = 0x3A03126F;
COMPILER_STRIP_GATE(0x804FA804, &lit_5908);
#pragma pop

/* 804FA808-804FA80C 00014C 0004+00 0/1 0/0 0/0 .rodata          @5909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5909 = 14.0f / 5.0f;
COMPILER_STRIP_GATE(0x804FA808, &lit_5909);
#pragma pop

/* 804FA80C-804FA810 000150 0004+00 0/1 0/0 0/0 .rodata          @5910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5910 = 496.0f;
COMPILER_STRIP_GATE(0x804FA80C, &lit_5910);
#pragma pop

/* 804FA810-804FA814 000154 0004+00 0/1 0/0 0/0 .rodata          @5911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5911 = 162.0f;
COMPILER_STRIP_GATE(0x804FA810, &lit_5911);
#pragma pop

/* 804FA814-804FA818 000158 0004+00 0/1 0/0 0/0 .rodata          @5912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5912 = 97.0f / 10.0f;
COMPILER_STRIP_GATE(0x804FA814, &lit_5912);
#pragma pop

/* 804FA818-804FA81C 00015C 0004+00 0/1 0/0 0/0 .rodata          @5913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5913 = 362.0f;
COMPILER_STRIP_GATE(0x804FA818, &lit_5913);
#pragma pop

/* 804FA81C-804FA820 000160 0004+00 0/1 0/0 0/0 .rodata          @5914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5914 = 296.0f;
COMPILER_STRIP_GATE(0x804FA81C, &lit_5914);
#pragma pop

/* 804FA820-804FA824 000164 0004+00 0/3 0/0 0/0 .rodata          @5915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5915 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x804FA820, &lit_5915);
#pragma pop

/* 804FA824-804FA828 000168 0004+00 0/1 0/0 0/0 .rodata          @5916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5916 = 900.0f;
COMPILER_STRIP_GATE(0x804FA824, &lit_5916);
#pragma pop

/* 804FA828-804FA82C 00016C 0004+00 0/2 0/0 0/0 .rodata          @5917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5917 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x804FA828, &lit_5917);
#pragma pop

/* 804FA82C-804FA830 000170 0004+00 0/1 0/0 0/0 .rodata          @5918 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5918 = 0.125f;
COMPILER_STRIP_GATE(0x804FA82C, &lit_5918);
#pragma pop

/* 804FA830-804FA834 000174 0004+00 0/1 0/0 0/0 .rodata          @5919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5919 = 12.5f;
COMPILER_STRIP_GATE(0x804FA830, &lit_5919);
#pragma pop

/* 804FA834-804FA838 000178 0004+00 0/3 0/0 0/0 .rodata          @5920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5920 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x804FA834, &lit_5920);
#pragma pop

/* 804FA838-804FA83C 00017C 0004+00 0/1 0/0 0/0 .rodata          @5921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5921 = 370.0f;
COMPILER_STRIP_GATE(0x804FA838, &lit_5921);
#pragma pop

/* 804FA83C-804FA840 000180 0004+00 0/1 0/0 0/0 .rodata          @5922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5922 = 85.0f;
COMPILER_STRIP_GATE(0x804FA83C, &lit_5922);
#pragma pop

/* 804FA840-804FA844 000184 0004+00 0/1 0/0 0/0 .rodata          @5923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5923 = 207.0f;
COMPILER_STRIP_GATE(0x804FA840, &lit_5923);
#pragma pop

/* 804FA844-804FA848 000188 0004+00 0/1 0/0 0/0 .rodata          @5924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5924 = 615.0f;
COMPILER_STRIP_GATE(0x804FA844, &lit_5924);
#pragma pop

/* 804FA848-804FA84C 00018C 0004+00 0/1 0/0 0/0 .rodata          @5925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5925 = -343.0f;
COMPILER_STRIP_GATE(0x804FA848, &lit_5925);
#pragma pop

/* 804FA84C-804FA850 000190 0004+00 0/1 0/0 0/0 .rodata          @5926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5926 = 813.0f;
COMPILER_STRIP_GATE(0x804FA84C, &lit_5926);
#pragma pop

/* 804FA850-804FA854 000194 0004+00 0/1 0/0 0/0 .rodata          @5927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5927 = 942.0f;
COMPILER_STRIP_GATE(0x804FA850, &lit_5927);
#pragma pop

/* 804FA854-804FA858 000198 0004+00 0/1 0/0 0/0 .rodata          @5928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5928 = -1001.0f;
COMPILER_STRIP_GATE(0x804FA854, &lit_5928);
#pragma pop

/* 804FA858-804FA85C 00019C 0004+00 0/1 0/0 0/0 .rodata          @5929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5929 = 223.0f;
COMPILER_STRIP_GATE(0x804FA858, &lit_5929);
#pragma pop

/* 804FA85C-804FA860 0001A0 0004+00 0/1 0/0 0/0 .rodata          @5930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5930 = 474.0f;
COMPILER_STRIP_GATE(0x804FA85C, &lit_5930);
#pragma pop

/* 804FA860-804FA864 0001A4 0004+00 0/1 0/0 0/0 .rodata          @5931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5931 = 636.0f;
COMPILER_STRIP_GATE(0x804FA860, &lit_5931);
#pragma pop

/* 804FA864-804FA868 0001A8 0004+00 0/1 0/0 0/0 .rodata          @5932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5932 = 802.0f;
COMPILER_STRIP_GATE(0x804FA864, &lit_5932);
#pragma pop

/* 804FA868-804FA86C 0001AC 0004+00 0/1 0/0 0/0 .rodata          @5933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5933 = -630.0f;
COMPILER_STRIP_GATE(0x804FA868, &lit_5933);
#pragma pop

/* 804FA86C-804FA870 0001B0 0004+00 0/2 0/0 0/0 .rodata          @5934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5934 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x804FA86C, &lit_5934);
#pragma pop

/* 804FA870-804FA874 0001B4 0004+00 0/1 0/0 0/0 .rodata          @5935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5935 = 70.0f;
COMPILER_STRIP_GATE(0x804FA870, &lit_5935);
#pragma pop

/* 804FA874-804FA878 0001B8 0004+00 0/1 0/0 0/0 .rodata          @5936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5936 = 210.0f;
COMPILER_STRIP_GATE(0x804FA874, &lit_5936);
#pragma pop

/* 804FA878-804FA87C 0001BC 0004+00 0/2 0/0 0/0 .rodata          @5937 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5937 = -363.0f;
COMPILER_STRIP_GATE(0x804FA878, &lit_5937);
#pragma pop

/* 804FA87C-804FA880 0001C0 0004+00 0/2 0/0 0/0 .rodata          @5938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5938 = 291.0f;
COMPILER_STRIP_GATE(0x804FA87C, &lit_5938);
#pragma pop

/* 804FA880-804FA884 0001C4 0004+00 0/1 0/0 0/0 .rodata          @5939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5939 = 7.5f;
COMPILER_STRIP_GATE(0x804FA880, &lit_5939);
#pragma pop

/* 804FAF7C-804FAF80 00012C 0004+00 2/3 0/0 0/0 .bss             demo_stop */
static u8 demo_stop[4];

/* 804F21F0-804F3E74 0031F0 1C84+00 1/1 0/0 0/0 .text            demo_camera__FP10e_fm_class */
static void demo_camera(e_fm_class* param_0) {
    // NONMATCHING
}

/* 804F3E74-804F448C 004E74 0618+00 1/1 0/0 0/0 .text            e_fm_down__FP10e_fm_class */
static void e_fm_down(e_fm_class* param_0) {
    // NONMATCHING
}

/* 804F448C-804F4740 00548C 02B4+00 1/1 0/0 0/0 .text            e_fm_a_down__FP10e_fm_class */
static void e_fm_a_down(e_fm_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA884-804FA888 0001C8 0004+00 0/1 0/0 0/0 .rodata          @6312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6312 = -500.0f;
COMPILER_STRIP_GATE(0x804FA884, &lit_6312);
#pragma pop

/* 804FA888-804FA88C 0001CC 0004+00 0/1 0/0 0/0 .rodata          @6313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6313 = -800.0f;
COMPILER_STRIP_GATE(0x804FA888, &lit_6313);
#pragma pop

/* 804FA88C-804FA890 0001D0 0004+00 0/1 0/0 0/0 .rodata          @6314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6314 = 677.0f;
COMPILER_STRIP_GATE(0x804FA88C, &lit_6314);
#pragma pop

/* 804FA890-804FA894 0001D4 0004+00 0/1 0/0 0/0 .rodata          @6315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6315 = -226.0f;
COMPILER_STRIP_GATE(0x804FA890, &lit_6315);
#pragma pop

/* 804FA894-804FA898 0001D8 0004+00 0/1 0/0 0/0 .rodata          @6316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6316 = -677.0f;
COMPILER_STRIP_GATE(0x804FA894, &lit_6316);
#pragma pop

/* 804FA898-804FA89C 0001DC 0004+00 0/2 0/0 0/0 .rodata          @6317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6317 = 80.0f;
COMPILER_STRIP_GATE(0x804FA898, &lit_6317);
#pragma pop

/* 804F4740-804F4BDC 005740 049C+00 1/1 0/0 0/0 .text            e_fm_start__FP10e_fm_class */
static void e_fm_start(e_fm_class* param_0) {
    // NONMATCHING
}

/* 804F4BDC-804F4D74 005BDC 0198+00 1/1 0/0 0/0 .text            e_fm_end__FP10e_fm_class */
static void e_fm_end(e_fm_class* param_0) {
    // NONMATCHING
}

/* 804F4D74-804F5148 005D74 03D4+00 1/1 0/0 0/0 .text            damage_check__FP10e_fm_class */
static void damage_check(e_fm_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA89C-804FA8A0 0001E0 0004+00 0/1 0/0 0/0 .rodata          @6637 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6637 = -20.0f;
COMPILER_STRIP_GATE(0x804FA89C, &lit_6637);
#pragma pop

/* 804FA8A0-804FA8A4 0001E4 0004+00 0/1 0/0 0/0 .rodata          @6638 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6638 = 73.0f / 100.0f;
COMPILER_STRIP_GATE(0x804FA8A0, &lit_6638);
#pragma pop

/* 804FA8A4-804FA8A8 0001E8 0004+00 0/1 0/0 0/0 .rodata          @6639 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6639 = 3.0f / 25.0f;
COMPILER_STRIP_GATE(0x804FA8A4, &lit_6639);
#pragma pop

/* 804FA8A8-804FA8AC 0001EC 0004+00 0/1 0/0 0/0 .rodata          @6640 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6640 = 33.0f / 50.0f;
COMPILER_STRIP_GATE(0x804FA8A8, &lit_6640);
#pragma pop

/* 804FA8AC-804FA8B0 0001F0 0004+00 0/1 0/0 0/0 .rodata          @6641 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6641 = 17.0f / 100.0f;
COMPILER_STRIP_GATE(0x804FA8AC, &lit_6641);
#pragma pop

/* 804FA8B0-804FA8B4 0001F4 0004+00 0/1 0/0 0/0 .rodata          @6642 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6642 = 110.0f;
COMPILER_STRIP_GATE(0x804FA8B0, &lit_6642);
#pragma pop

/* 804FA8B4-804FA8B8 0001F8 0004+00 0/1 0/0 0/0 .rodata          @6643 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6643 = 1024.0f;
COMPILER_STRIP_GATE(0x804FA8B4, &lit_6643);
#pragma pop

/* 804FA8B8-804FA8BC 0001FC 0004+00 0/1 0/0 0/0 .rodata          @6644 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6644 = 16384.0f;
COMPILER_STRIP_GATE(0x804FA8B8, &lit_6644);
#pragma pop

/* 804FA8BC-804FA8C0 000200 0004+00 0/1 0/0 0/0 .rodata          @6645 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6645 = 2048.0f;
COMPILER_STRIP_GATE(0x804FA8BC, &lit_6645);
#pragma pop

/* 804F5148-804F5990 006148 0848+00 1/1 0/0 0/0 .text chain_control1__FP10e_fm_classP7chain_si */
static void chain_control1(e_fm_class* param_0, chain_s* param_1, int param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA8C0-804FA8C4 000204 0004+00 0/1 0/0 0/0 .rodata          @6749 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6749 = -10000.0f;
COMPILER_STRIP_GATE(0x804FA8C0, &lit_6749);
#pragma pop

/* 804FA8C4-804FA8C8 000208 0004+00 0/1 0/0 0/0 .rodata          @6750 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6750 = -80.0f;
COMPILER_STRIP_GATE(0x804FA8C4, &lit_6750);
#pragma pop

/* 804FA8C8-804FA8CC 00020C 0004+00 0/2 0/0 0/0 .rodata          @6751 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6751 = 1.0f / 40.0f;
COMPILER_STRIP_GATE(0x804FA8C8, &lit_6751);
#pragma pop

/* 804FA8CC-804FA8D0 000210 0004+00 0/1 0/0 0/0 .rodata          @6752 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6752 = 18.0f;
COMPILER_STRIP_GATE(0x804FA8CC, &lit_6752);
#pragma pop

/* 804FA8D0-804FA8D4 000214 0004+00 0/1 0/0 0/0 .rodata          @6753 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6753 = 48.0f;
COMPILER_STRIP_GATE(0x804FA8D0, &lit_6753);
#pragma pop

/* 804FA8D4-804FA8D8 000218 0004+00 0/1 0/0 0/0 .rodata          @6754 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6754 = 7.0f;
COMPILER_STRIP_GATE(0x804FA8D4, &lit_6754);
#pragma pop

/* 804FA8D8-804FA8DC 00021C 0004+00 0/3 0/0 0/0 .rodata          @6755 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6755 = -5.0f;
COMPILER_STRIP_GATE(0x804FA8D8, &lit_6755);
#pragma pop

/* 804FA8DC-804FA8E0 000220 0004+00 0/1 0/0 0/0 .rodata          @6756 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6756 = -10.0f;
COMPILER_STRIP_GATE(0x804FA8DC, &lit_6756);
#pragma pop

/* 804F5990-804F5EF4 006990 0564+00 1/1 0/0 0/0 .text chain_control2__FP10e_fm_classP7chain_si */
static void chain_control2(e_fm_class* param_0, chain_s* param_1, int param_2) {
    // NONMATCHING
}

/* 804F5EF4-804F64A8 006EF4 05B4+00 1/1 0/0 0/0 .text chain_control3__FP10e_fm_classP7chain_si */
static void chain_control3(e_fm_class* param_0, chain_s* param_1, int param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FAF80-804FAF84 000130 0004+00 2/2 0/0 0/0 .bss             ba_count */
static u8 ba_count[4];

/* 804F64A8-804F6500 0074A8 0058+00 1/1 0/0 0/0 .text            s_ba_sub__FPvPv */
static void s_ba_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 804F6500-804F6BD0 007500 06D0+00 2/1 0/0 0/0 .text            action__FP10e_fm_class */
static void action(e_fm_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA8E0-804FA8E4 000224 0004+00 0/0 0/0 0/0 .rodata          @7066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7066 = -300.0f;
COMPILER_STRIP_GATE(0x804FA8E0, &lit_7066);
#pragma pop

/* 804FA8E4-804FA8E8 000228 0004+00 0/2 0/0 0/0 .rodata          @7269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7269 = 13.0f / 20.0f;
COMPILER_STRIP_GATE(0x804FA8E4, &lit_7269);
#pragma pop

/* 804FA8E8-804FA8EC 00022C 0004+00 0/1 0/0 0/0 .rodata          @7270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7270 = 2.0f / 25.0f;
COMPILER_STRIP_GATE(0x804FA8E8, &lit_7270);
#pragma pop

/* 804FA8EC-804FA8F0 000230 0004+00 0/1 0/0 0/0 .rodata          @7271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7271 = 10.5f;
COMPILER_STRIP_GATE(0x804FA8EC, &lit_7271);
#pragma pop

/* 804FA8F0-804FA8F4 000234 0004+00 0/1 0/0 0/0 .rodata          @7272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7272 = 37.0f / 10.0f;
COMPILER_STRIP_GATE(0x804FA8F0, &lit_7272);
#pragma pop

/* 804F6BD0-804F72D0 007BD0 0700+00 1/1 0/0 0/0 .text            effect_set__FP10e_fm_class */
static void effect_set(e_fm_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA8F4-804FA8F8 000238 0004+00 0/1 0/0 0/0 .rodata          @8309 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8309 = 145.0f;
COMPILER_STRIP_GATE(0x804FA8F4, &lit_8309);
#pragma pop

/* 804FA8F8-804FA8FC 00023C 0004+00 0/1 0/0 0/0 .rodata          @8310 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8310 = 13.0f;
COMPILER_STRIP_GATE(0x804FA8F8, &lit_8310);
#pragma pop

/* 804FA8FC-804FA900 000240 0004+00 0/1 0/0 0/0 .rodata          @8311 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8311 = 0x3A83126F;
COMPILER_STRIP_GATE(0x804FA8FC, &lit_8311);
#pragma pop

/* 804FA900-804FA904 000244 0004+00 0/1 0/0 0/0 .rodata          @8312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8312 = -20000.0f;
COMPILER_STRIP_GATE(0x804FA900, &lit_8312);
#pragma pop

/* 804FA904-804FA908 000248 0004+00 0/1 0/0 0/0 .rodata          @8313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8313 = 170.0f;
COMPILER_STRIP_GATE(0x804FA904, &lit_8313);
#pragma pop

/* 804FA908-804FA90C 00024C 0004+00 0/1 0/0 0/0 .rodata          @8314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8314 = 29.0f;
COMPILER_STRIP_GATE(0x804FA908, &lit_8314);
#pragma pop

/* 804FA90C-804FA910 000250 0004+00 0/1 0/0 0/0 .rodata          @8315 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8315 = 0x38D1B717;
COMPILER_STRIP_GATE(0x804FA90C, &lit_8315);
#pragma pop

/* 804FA910-804FA914 000254 0004+00 0/1 0/0 0/0 .rodata          @8316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8316 = -25.0f;
COMPILER_STRIP_GATE(0x804FA910, &lit_8316);
#pragma pop

/* 804FA914-804FA918 000258 0004+00 0/1 0/0 0/0 .rodata          @8317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8317 = 125.0f;
COMPILER_STRIP_GATE(0x804FA914, &lit_8317);
#pragma pop

/* 804FA918-804FA91C 00025C 0004+00 0/1 0/0 0/0 .rodata          @8318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8318 = 11.0f / 5.0f;
COMPILER_STRIP_GATE(0x804FA918, &lit_8318);
#pragma pop

/* 804FA91C-804FA920 000260 0004+00 0/1 0/0 0/0 .rodata          @8319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8319 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x804FA91C, &lit_8319);
#pragma pop

/* 804FA920-804FA924 000264 0004+00 0/1 0/0 0/0 .rodata          @8320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8320 = 60.0f;
COMPILER_STRIP_GATE(0x804FA920, &lit_8320);
#pragma pop

/* 804FA924-804FA928 000268 0004+00 0/1 0/0 0/0 .rodata          @8321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8321 = 550.0f;
COMPILER_STRIP_GATE(0x804FA924, &lit_8321);
#pragma pop

/* 804FA928-804FA92C 00026C 0004+00 0/1 0/0 0/0 .rodata          @8322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8322 = 9.0f / 50.0f;
COMPILER_STRIP_GATE(0x804FA928, &lit_8322);
#pragma pop

/* 804FA92C-804FA930 000270 0004+00 0/1 0/0 0/0 .rodata          @8323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8323 = -50.0f;
COMPILER_STRIP_GATE(0x804FA92C, &lit_8323);
#pragma pop

/* 804FA930-804FA934 000274 0004+00 0/1 0/0 0/0 .rodata          @8324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8324 = -35.0f;
COMPILER_STRIP_GATE(0x804FA930, &lit_8324);
#pragma pop

/* 804FA934-804FA938 000278 0004+00 0/1 0/0 0/0 .rodata          @8325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8325 = -23000.0f;
COMPILER_STRIP_GATE(0x804FA934, &lit_8325);
#pragma pop

/* 804FA938-804FA93C 00027C 0004+00 0/1 0/0 0/0 .rodata          @8326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8326 = 40000.0f;
COMPILER_STRIP_GATE(0x804FA938, &lit_8326);
#pragma pop

/* 804F72D0-804F8C60 0082D0 1990+00 2/1 0/0 0/0 .text            daE_FM_Execute__FP10e_fm_class */
static void daE_FM_Execute(e_fm_class* param_0) {
    // NONMATCHING
}

/* 804F8C60-804F8C68 009C60 0008+00 1/0 0/0 0/0 .text            daE_FM_IsDelete__FP10e_fm_class */
static bool daE_FM_IsDelete(e_fm_class* param_0) {
    return true;
}

/* 804F8C68-804F8CE8 009C68 0080+00 1/0 0/0 0/0 .text            daE_FM_Delete__FP10e_fm_class */
static void daE_FM_Delete(e_fm_class* param_0) {
    // NONMATCHING
}

/* 804F8CE8-804F95CC 009CE8 08E4+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 804F95CC-804F9614 00A5CC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FA93C-804FA940 000280 0004+00 0/1 0/0 0/0 .rodata          @8842 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8842 = 209.0f;
COMPILER_STRIP_GATE(0x804FA93C, &lit_8842);
#pragma pop

/* 804FA940-804FA944 000284 0004+00 0/1 0/0 0/0 .rodata          @8843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8843 = 861.0f;
COMPILER_STRIP_GATE(0x804FA940, &lit_8843);
#pragma pop

/* 804FA944-804FA948 000288 0004+00 0/1 0/0 0/0 .rodata          @8844 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8844 = 65535.0f;
COMPILER_STRIP_GATE(0x804FA944, &lit_8844);
#pragma pop

/* 804F9614-804F9B64 00A614 0550+00 1/0 0/0 0/0 .text            daE_FM_Create__FP10fopAc_ac_c */
static void daE_FM_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 804F9B64-804F9E14 00AB64 02B0+00 1/1 0/0 0/0 .text            __ct__10e_fm_classFv */
e_fm_class::e_fm_class() {
    // NONMATCHING
}

/* 804F9E14-804F9ED8 00AE14 00C4+00 1/1 0/0 0/0 .text            __dt__7chain_sFv */
chain_s::~chain_s() {
    // NONMATCHING
}

/* 804F9ED8-804F9F14 00AED8 003C+00 2/2 0/0 0/0 .text            __dt__12dKy_tevstr_cFv */
// dKy_tevstr_c::~dKy_tevstr_c() {
extern "C" void __dt__12dKy_tevstr_cFv() {
    // NONMATCHING
}

/* 804F9F14-804F9FE0 00AF14 00CC+00 1/1 0/0 0/0 .text            __ct__7chain_sFv */
chain_s::chain_s() {
    // NONMATCHING
}

/* 804F9FE0-804FA034 00AFE0 0054+00 1/1 0/0 0/0 .text            __ct__12dKy_tevstr_cFv */
// dKy_tevstr_c::dKy_tevstr_c() {
extern "C" void __ct__12dKy_tevstr_cFv() {
    // NONMATCHING
}

/* 804FA034-804FA06C 00B034 0038+00 1/1 0/0 0/0 .text            __ct__11J3DLightObjFv */
// J3DLightObj::J3DLightObj() {
extern "C" void __ct__11J3DLightObjFv() {
    // NONMATCHING
}

/* 804FA06C-804FA070 00B06C 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 804FA070-804FA0B8 00B070 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 804FA0B8-804FA100 00B0B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 804FA100-804FA1CC 00B100 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 804FA1CC-804FA250 00B1CC 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 804FA250-804FA2AC 00B250 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 804FA2AC-804FA31C 00B2AC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 804FA31C-804FA38C 00B31C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 804FA38C-804FA390 00B38C 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 804FA390-804FA3D8 00B390 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 804FA3D8-804FA420 00B3D8 0048+00 2/1 0/0 0/0 .text            __dt__12daE_FM_HIO_cFv */
daE_FM_HIO_c::~daE_FM_HIO_c() {
    // NONMATCHING
}

/* 804FA420-804FA478 00B420 0058+00 0/0 1/0 0/0 .text            __sinit_d_a_e_fm_cpp */
void __sinit_d_a_e_fm_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x804FA420, __sinit_d_a_e_fm_cpp);
#pragma pop

/* 804FA478-804FA480 00B478 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_804FA478() {
    // NONMATCHING
}

/* 804FA480-804FA488 00B480 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_804FA480() {
    // NONMATCHING
}

/* 804FA488-804FA4A4 00B488 001C+00 1/1 0/0 0/0 .text setCurrentPos__16obj_ystone_classF4cXyz */
// void obj_ystone_class::setCurrentPos(cXyz param_0) {
extern "C" void setCurrentPos__16obj_ystone_classF4cXyz() {
    // NONMATCHING
}

/* 804FA4A4-804FA4C0 00B4A4 001C+00 1/1 0/0 0/0 .text            __ct__4cXyzFRC4cXyz */
// cXyz::cXyz(cXyz const& param_0) {
extern "C" void __ct__4cXyzFRC4cXyz() {
    // NONMATCHING
}

/* 804FA4C0-804FA534 00B4C0 0074+00 1/1 0/0 0/0 .text
 * dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz             */
static void dComIfGp_particle_set(u16 param_0, cXyz const* param_1, csXyz const* param_2,
                                      cXyz const* param_3) {
    // NONMATCHING
}

/* 804FA534-804FA550 00B534 001C+00 1/1 0/0 0/0 .text            changeDemoPos0__9daPy_py_cFPC4cXyz
 */
// void daPy_py_c::changeDemoPos0(cXyz const* param_0) {
extern "C" void changeDemoPos0__9daPy_py_cFPC4cXyz() {
    // NONMATCHING
}

/* 804FA550-804FA664 00B550 0114+00 1/1 0/0 0/0 .text            abs__4cXyzCFv */
// void cXyz::abs() const {
extern "C" void abs__4cXyzCFv() {
    // NONMATCHING
}

/* 804FA664-804FA680 00B664 001C+00 1/1 0/0 0/0 .text            __as__4cXyzFRC4cXyz */
// void cXyz::operator=(cXyz const& param_0) {
extern "C" void __as__4cXyzFRC4cXyz() {
    // NONMATCHING
}

/* 804FA680-804FA694 00B680 0014+00 1/1 0/0 0/0 .text            changeDemoMode__9daPy_py_cFUliis */
// void daPy_py_c::changeDemoMode(u32 param_0, int param_1, int param_2, s16 param_3) {
extern "C" void changeDemoMode__9daPy_py_cFUliis() {
    // NONMATCHING
}

/* 804FA694-804FA6A8 00B694 0014+00 1/1 0/0 0/0 .text            changeOriginalDemo__9daPy_py_cFv */
// void daPy_py_c::changeOriginalDemo() {
extern "C" void changeOriginalDemo__9daPy_py_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FAF84-804FAF88 000134 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_804FAF84[4];
#pragma pop

/* 804FAF88-804FAF8C 000138 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_804FAF88[4];
#pragma pop

/* 804FAF8C-804FAF90 00013C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_804FAF8C[4];
#pragma pop

/* 804FAF90-804FAF94 000140 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_804FAF90[4];
#pragma pop

/* 804FAF94-804FAF98 000144 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804FAF94[4];
#pragma pop

/* 804FAF98-804FAF9C 000148 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804FAF98[4];
#pragma pop

/* 804FAF9C-804FAFA0 00014C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_804FAF9C[4];
#pragma pop

/* 804FAFA0-804FAFA4 000150 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_804FAFA0[4];
#pragma pop

/* 804FAFA4-804FAFA8 000154 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_804FAFA4[4];
#pragma pop

/* 804FAFA8-804FAFAC 000158 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_804FAFA8[4];
#pragma pop

/* 804FAFAC-804FAFB0 00015C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_804FAFAC[4];
#pragma pop

/* 804FAFB0-804FAFB4 000160 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_804FAFB0[4];
#pragma pop

/* 804FAFB4-804FAFB8 000164 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_804FAFB4[4];
#pragma pop

/* 804FAFB8-804FAFBC 000168 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804FAFB8[4];
#pragma pop

/* 804FAFBC-804FAFC0 00016C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_804FAFBC[4];
#pragma pop

/* 804FAFC0-804FAFC4 000170 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_804FAFC0[4];
#pragma pop

/* 804FAFC4-804FAFC8 000174 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_804FAFC4[4];
#pragma pop

/* 804FAFC8-804FAFCC 000178 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_804FAFC8[4];
#pragma pop

/* 804FAFCC-804FAFD0 00017C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_804FAFCC[4];
#pragma pop

/* 804FAFD0-804FAFD4 000180 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_804FAFD0[4];
#pragma pop

/* 804FAFD4-804FAFD8 000184 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_804FAFD4[4];
#pragma pop

/* 804FAFD8-804FAFDC 000188 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804FAFD8[4];
#pragma pop

/* 804FAFDC-804FAFE0 00018C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804FAFDC[4];
#pragma pop

/* 804FAFE0-804FAFE4 000190 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804FAFE0[4];
#pragma pop

/* 804FAFE4-804FAFE8 000194 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_804FAFE4[4];
#pragma pop

/* 804FA948-804FA948 00028C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
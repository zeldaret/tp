/**
 * @file d_a_e_mk.cpp
 * 
*/

#include "d/actor/d_a_e_mk.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"



//
// Forward References:
//

extern "C" void __ct__12daE_MK_HIO_cFv();
extern "C" static void anm_init__FP10e_mk_classifUcf();
extern "C" static void ok_anm_init__FP10e_mk_classifUcf();
extern "C" static void daE_MK_Draw__FP10e_mk_class();
extern "C" void __dt__4cXyzFv();
extern "C" static void s_obj_delete__FPvPv();
extern "C" static void s_h_sub__FPvPv();
extern "C" static void search_hasira__FP10e_mk_class();
extern "C" static void s_d_sub__FPvPv();
extern "C" static void search_db__FP10e_mk_class();
extern "C" static void e_mk_move__FP10e_mk_class();
extern "C" static void e_mk_wait__FP10e_mk_class();
extern "C" static void e_mk_shoot__FP10e_mk_class();
extern "C" static void e_mk_yoro__FP10e_mk_class();
extern "C" static void e_mk_drop__FP10e_mk_class();
extern "C" static void e_mk_damage__FP10e_mk_class();
extern "C" static void damage_check__FP10e_mk_class();
extern "C" static void e_mk_s_demo__FP10e_mk_class();
extern "C" static void e_mk_e_demo__FP10e_mk_class();
extern "C" static void e_mk_r04_demo__FP10e_mk_class();
extern "C" static void cam_3d_morf__FP10e_mk_classf();
extern "C" static void demo_camera_start__FP10e_mk_class();
extern "C" static void demo_camera_end__FP10e_mk_class();
extern "C" static void s_ks_sub__FPvPv();
extern "C" static void s_brg_sub__FPvPv();
extern "C" static void s_brg_sub2__FPvPv();
extern "C" static void demo_camera_r04__FP10e_mk_class();
extern "C" static void demo_camera_bohit__FP10e_mk_class();
extern "C" static void demo_camera__FP10e_mk_class();
extern "C" static void action__FP10e_mk_class();
extern "C" static void anm_se_set__FP10e_mk_class();
extern "C" static void daE_MK_Execute__FP10e_mk_class();
extern "C" static bool daE_MK_IsDelete__FP10e_mk_class();
extern "C" static void daE_MK_Delete__FP10e_mk_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daE_MK_Create__FP10fopAc_ac_c();
extern "C" void __ct__10e_mk_classFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12daE_MK_HIO_cFv();
extern "C" void __sinit_d_a_e_mk_cpp();
extern "C" static void func_8071C520();
extern "C" static void func_8071C528();
extern "C" extern char const* const d_a_e_mk__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
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
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createItemForMidBoss__FPC4cXyziiPC5csXyzPC4cXyzii();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGp_setNextStage__FPCcsScSc();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onDungeonItem__12dSv_memBit_cFi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzsf();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void changeSubBgmStatus__8Z2SeqMgrFl();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" extern u8 pauseTimer__9dScnPly_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8071C544-8071C548 000000 0004+00 22/22 0/0 0/0 .rodata          @3777 */
SECTION_RODATA static f32 const lit_3777 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x8071C544, &lit_3777);

/* 8071C548-8071C54C 000004 0004+00 1/20 0/0 0/0 .rodata          @3778 */
SECTION_RODATA static f32 const lit_3778 = 1.0f;
COMPILER_STRIP_GATE(0x8071C548, &lit_3778);

/* 8071C54C-8071C550 000008 0004+00 0/1 0/0 0/0 .rodata          @3779 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3779 = 1800.0f;
COMPILER_STRIP_GATE(0x8071C54C, &lit_3779);
#pragma pop

/* 8071C550-8071C554 00000C 0004+00 3/21 0/0 0/0 .rodata          @3780 */
SECTION_RODATA static u8 const lit_3780[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8071C550, &lit_3780);

/* 8071C7FC-8071C828 -00001 002C+00 1/1 0/0 0/0 .data            @4295 */
SECTION_DATA static void* lit_4295[11] = {
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x60),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x8C),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x284),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x35C),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x5E8),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x758),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x8C4),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x8C4),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x8C4),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x8C4),
    (void*)(((char*)e_mk_move__FP10e_mk_class) + 0x874),
};

/* 8071C828-8071C87C -00001 0054+00 1/1 0/0 0/0 .data            @4437 */
SECTION_DATA static void* lit_4437[21] = {
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x7C),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0xA8),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0xF0),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x180),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x208),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x2C8),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x314),
    (void*)(((char*)e_mk_shoot__FP10e_mk_class) + 0x310),
};

/* 8071C87C-8071C8B0 -00001 0034+00 1/1 0/0 0/0 .data            @5006 */
SECTION_DATA static void* lit_5006[13] = {
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x6C),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x418),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x98),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0xB8),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0xF4),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x150),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x1A8),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x204),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x250),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x30C),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x364),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x390),
    (void*)(((char*)e_mk_r04_demo__FP10e_mk_class) + 0x3E8),
};

/* 8071C8B0-8071C8DC -00001 002C+00 1/1 0/0 0/0 .data            @6176 */
SECTION_DATA static void* lit_6176[11] = {
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x19C),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x60),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x68),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x70),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x108),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x19C),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x19C),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x19C),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x19C),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x19C),
    (void*)(((char*)demo_camera__FP10e_mk_class) + 0x110),
};

/* 8071C8DC-8071C96C -00001 0090+00 1/1 0/0 0/0 .data            @6244 */
SECTION_DATA static void* lit_6244[36] = {
    (void*)(((char*)action__FP10e_mk_class) + 0x78),
    (void*)(((char*)action__FP10e_mk_class) + 0x84),
    (void*)(((char*)action__FP10e_mk_class) + 0x90),
    (void*)(((char*)action__FP10e_mk_class) + 0x9C),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0xA8),
    (void*)(((char*)action__FP10e_mk_class) + 0xBC),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0xD0),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0xE0),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0x108),
    (void*)(((char*)action__FP10e_mk_class) + 0xF8),
};

/* 8071C96C-8071C970 000170 0004+00 1/1 0/0 0/0 .data            bo_eno_1$6320 */
SECTION_DATA static u8 bo_eno_1[4] = {
    0x82,
    0x14,
    0x82,
    0x15,
};

/* 8071C970-8071C978 000174 0008+00 1/1 0/0 0/0 .data            bo_eno_0$6330 */
SECTION_DATA static u8 bo_eno_0[8] = {
    0x82, 0x11, 0x82, 0x12, 0x82, 0x13, 0x82, 0x0C,
};

/* 8071C978-8071C9B8 00017C 0040+00 1/1 0/0 0/0 .data            cc_sph_src$6839 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x43}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 60.0f} // mSph
    } // mSphAttr
};

/* 8071C9B8-8071C9D8 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_MK_Method */
static actor_method_class l_daE_MK_Method = {
    (process_method_func)daE_MK_Create__FP10fopAc_ac_c,
    (process_method_func)daE_MK_Delete__FP10e_mk_class,
    (process_method_func)daE_MK_Execute__FP10e_mk_class,
    (process_method_func)daE_MK_IsDelete__FP10e_mk_class,
    (process_method_func)daE_MK_Draw__FP10e_mk_class,
};

/* 8071C9D8-8071CA08 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_MK */
extern actor_process_profile_definition g_profile_E_MK = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_MK,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(e_mk_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  165,                    // mPriority
  &l_daE_MK_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8071CA08-8071CA14 00020C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8071CA14-8071CA20 000218 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8071CA20-8071CA44 000224 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8071C528,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8071C520,
};

/* 8071CA44-8071CA50 000248 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8071CA50-8071CA5C 000254 000C+00 2/2 0/0 0/0 .data            __vt__12daE_MK_HIO_c */
SECTION_DATA extern void* __vt__12daE_MK_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_MK_HIO_cFv,
};

/* 8071412C-8071417C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__12daE_MK_HIO_cFv */
daE_MK_HIO_c::daE_MK_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C554-8071C558 000010 0004+00 2/4 0/0 0/0 .rodata          @3794 */
SECTION_RODATA static f32 const lit_3794 = -1.0f;
COMPILER_STRIP_GATE(0x8071C554, &lit_3794);

/* 8071C7E8-8071C7E8 0002A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8071C7E8 = "E_mk";
#pragma pop

/* 8071417C-80714228 00013C 00AC+00 9/9 0/0 0/0 .text            anm_init__FP10e_mk_classifUcf */
static void anm_init(e_mk_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 80714228-807142D0 0001E8 00A8+00 2/2 0/0 0/0 .text            ok_anm_init__FP10e_mk_classifUcf */
static void ok_anm_init(e_mk_class* param_0, int param_1, f32 param_2, u8 param_3,
                            f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C558-8071C55C 000014 0004+00 0/8 0/0 0/0 .rodata          @3862 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3862 = 50.0f;
COMPILER_STRIP_GATE(0x8071C558, &lit_3862);
#pragma pop

/* 8071C55C-8071C560 000018 0004+00 0/2 0/0 0/0 .rodata          @3863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3863 = 1200.0f;
COMPILER_STRIP_GATE(0x8071C55C, &lit_3863);
#pragma pop

/* 8071C560-8071C564 00001C 0004+00 1/9 0/0 0/0 .rodata          @3864 */
SECTION_RODATA static f32 const lit_3864 = 500.0f;
COMPILER_STRIP_GATE(0x8071C560, &lit_3864);

/* 807142D0-80714498 000290 01C8+00 1/0 0/0 0/0 .text            daE_MK_Draw__FP10e_mk_class */
static void daE_MK_Draw(e_mk_class* param_0) {
    // NONMATCHING
}

/* 80714498-807144D4 000458 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 807144D4-80714534 000494 0060+00 1/1 0/0 0/0 .text            s_obj_delete__FPvPv */
static void s_obj_delete(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071CA68-8071CA6C 000008 0001+03 5/5 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 8071CA6C-8071CA70 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 8071CA70-8071CA74 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8071CA74-8071CA78 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 8071CA78-8071CA7C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8071CA7C-8071CA80 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 8071CA80-8071CA84 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8071CA84-8071CA88 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 8071CA88-8071CA8C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 8071CA8C-8071CA90 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 8071CA90-8071CA94 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8071CA94-8071CA98 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 8071CA98-8071CA9C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 8071CA9C-8071CAA0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 8071CAA0-8071CAA4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8071CAA4-8071CAA8 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 8071CAA8-8071CAB4 000048 000C+00 0/1 0/0 0/0 .bss             @3766 */
#pragma push
#pragma force_active on
static u8 lit_3766[12];
#pragma pop

/* 8071CAB4-8071CAC0 000054 000C+00 0/2 0/0 0/0 .bss             demo_jump_pos_1 */
#pragma push
#pragma force_active on
static u8 demo_jump_pos_1[12];
#pragma pop

/* 8071CAC0-8071CACC 000060 000C+00 0/1 0/0 0/0 .bss             @3767 */
#pragma push
#pragma force_active on
static u8 lit_3767[12];
#pragma pop

/* 8071CACC-8071CAD8 00006C 000C+00 0/2 0/0 0/0 .bss             demo_jump_pos_2 */
#pragma push
#pragma force_active on
static u8 demo_jump_pos_2[12];
#pragma pop

/* 8071CAD8-8071CAE4 000078 000C+00 0/1 0/0 0/0 .bss             @3768 */
#pragma push
#pragma force_active on
static u8 lit_3768[12];
#pragma pop

/* 8071CAE4-8071CAF0 000084 000C+00 0/2 0/0 0/0 .bss             demo_jump_pos_3 */
#pragma push
#pragma force_active on
static u8 demo_jump_pos_3[12];
#pragma pop

/* 8071CAF0-8071CAFC 000090 000C+00 0/1 0/0 0/0 .bss             @3769 */
#pragma push
#pragma force_active on
static u8 lit_3769[12];
#pragma pop

/* 8071CAFC-8071CB08 00009C 000C+00 1/6 0/0 0/0 .bss             STAGE_CENTER_POS */
static u8 STAGE_CENTER_POS[12];

/* 8071CB08-8071CB0C -00001 0004+00 2/5 0/0 0/0 .bss             None */
/* 8071CB08 0002+00 data_8071CB08 STAGE_ANGLE_Y */
/* 8071CB0A 0002+00 data_8071CB0A None */
static u8 struct_8071CB08[4];

/* 8071CB0C-8071CB18 0000AC 000C+00 0/1 0/0 0/0 .bss             @3772 */
#pragma push
#pragma force_active on
static u8 lit_3772[12];
#pragma pop

/* 8071CB18-8071CB3C 0000B8 0024+00 1/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[36];

/* 8071CB3C-8071CB8C 0000DC 0050+00 4/7 0/0 0/0 .bss             target_info */
static u8 target_info[80];

/* 8071CB8C-8071CB90 00012C 0004+00 4/7 0/0 0/0 .bss             target_info_count */
static u8 target_info_count[4];

/* 80714534-807145A4 0004F4 0070+00 4/4 0/0 0/0 .text            s_h_sub__FPvPv */
static void s_h_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C564-8071C56C 000020 0004+04 0/1 0/0 0/0 .rodata          @3969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3969[1 + 1 /* padding */] = {
    1500.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8071C564, &lit_3969);
#pragma pop

/* 8071C56C-8071C574 000028 0008+00 0/3 0/0 0/0 .rodata          @3970 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3970[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8071C56C, &lit_3970);
#pragma pop

/* 8071C574-8071C57C 000030 0008+00 0/3 0/0 0/0 .rodata          @3971 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3971[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8071C574, &lit_3971);
#pragma pop

/* 8071C57C-8071C584 000038 0008+00 0/3 0/0 0/0 .rodata          @3972 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3972[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8071C57C, &lit_3972);
#pragma pop

/* 8071C584-8071C588 000040 0004+00 0/3 0/0 0/0 .rodata          @3973 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3973 = 700.0f;
COMPILER_STRIP_GATE(0x8071C584, &lit_3973);
#pragma pop

/* 8071C588-8071C58C 000044 0004+00 0/1 0/0 0/0 .rodata          @3974 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3974 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x8071C588, &lit_3974);
#pragma pop

/* 8071C58C-8071C590 000048 0004+00 0/6 0/0 0/0 .rodata          @3975 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3975 = 100.0f;
COMPILER_STRIP_GATE(0x8071C58C, &lit_3975);
#pragma pop

/* 8071C590-8071C594 00004C 0004+00 0/2 0/0 0/0 .rodata          @3976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3976 = 2000.0f;
COMPILER_STRIP_GATE(0x8071C590, &lit_3976);
#pragma pop

/* 807145A4-80714874 000564 02D0+00 1/1 0/0 0/0 .text            search_hasira__FP10e_mk_class */
static void search_hasira(e_mk_class* param_0) {
    // NONMATCHING
}

/* 80714874-807148FC 000834 0088+00 1/1 0/0 0/0 .text            s_d_sub__FPvPv */
static void s_d_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C594-8071C598 000050 0004+00 0/4 0/0 0/0 .rodata          @4057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4057 = 0.5f;
COMPILER_STRIP_GATE(0x8071C594, &lit_4057);
#pragma pop

/* 8071C598-8071C59C 000054 0004+00 0/1 0/0 0/0 .rodata          @4058 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4058 = 5000.0f;
COMPILER_STRIP_GATE(0x8071C598, &lit_4058);
#pragma pop

/* 807148FC-80714B78 0008BC 027C+00 1/1 0/0 0/0 .text            search_db__FP10e_mk_class */
static void search_db(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C59C-8071C5A0 000058 0004+00 0/5 0/0 0/0 .rodata          @4286 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4286 = 2.0f;
COMPILER_STRIP_GATE(0x8071C59C, &lit_4286);
#pragma pop

/* 8071C5A0-8071C5A4 00005C 0004+00 0/6 0/0 0/0 .rodata          @4287 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4287 = 3.0f;
COMPILER_STRIP_GATE(0x8071C5A0, &lit_4287);
#pragma pop

/* 8071C5A4-8071C5A8 000060 0004+00 0/10 0/0 0/0 .rodata          @4288 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4288 = 5.0f;
COMPILER_STRIP_GATE(0x8071C5A4, &lit_4288);
#pragma pop

/* 8071C5A8-8071C5AC 000064 0004+00 0/3 0/0 0/0 .rodata          @4289 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4289 = 800.0f;
COMPILER_STRIP_GATE(0x8071C5A8, &lit_4289);
#pragma pop

/* 80714B78-807154A8 000B38 0930+00 2/1 0/0 0/0 .text            e_mk_move__FP10e_mk_class */
static void e_mk_move(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C5AC-8071C5B0 000068 0004+00 0/3 0/0 0/0 .rodata          @4290 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4290 = 70.0f;
COMPILER_STRIP_GATE(0x8071C5AC, &lit_4290);
#pragma pop

/* 8071C5B0-8071C5B4 00006C 0004+00 0/5 0/0 0/0 .rodata          @4291 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4291 = 200.0f;
COMPILER_STRIP_GATE(0x8071C5B0, &lit_4291);
#pragma pop

/* 8071C5B4-8071C5B8 000070 0004+00 0/3 0/0 0/0 .rodata          @4292 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4292 = 300.0f;
COMPILER_STRIP_GATE(0x8071C5B4, &lit_4292);
#pragma pop

/* 8071C5B8-8071C5BC 000074 0004+00 0/1 0/0 0/0 .rodata          @4293 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4293 = 0.75f;
COMPILER_STRIP_GATE(0x8071C5B8, &lit_4293);
#pragma pop

/* 8071C5BC-8071C5C0 000078 0004+00 0/2 0/0 0/0 .rodata          @4321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4321 = 40.0f;
COMPILER_STRIP_GATE(0x8071C5BC, &lit_4321);
#pragma pop

/* 8071C5C0-8071C5C4 00007C 0004+00 0/4 0/0 0/0 .rodata          @4322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4322 = 10.0f;
COMPILER_STRIP_GATE(0x8071C5C0, &lit_4322);
#pragma pop

/* 807154A8-80715618 001468 0170+00 1/1 0/0 0/0 .text            e_mk_wait__FP10e_mk_class */
static void e_mk_wait(e_mk_class* param_0) {
    // NONMATCHING
}

/* 80715618-80715B18 0015D8 0500+00 2/1 0/0 0/0 .text            e_mk_shoot__FP10e_mk_class */
static void e_mk_shoot(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071CB90-8071CB94 000130 0004+00 1/2 0/0 0/0 .bss             None */
static u8 data_8071CB90[4];

/* 80715B18-80715D2C 001AD8 0214+00 1/1 0/0 0/0 .text            e_mk_yoro__FP10e_mk_class */
static void e_mk_yoro(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C5C4-8071C5C8 000080 0004+00 0/2 0/0 0/0 .rodata          @4434 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4434 = 15.0f;
COMPILER_STRIP_GATE(0x8071C5C4, &lit_4434);
#pragma pop

/* 8071C5C8-8071C5CC 000084 0004+00 0/0 0/0 0/0 .rodata          @4435 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4435 = 0x3EAA7EFA;
COMPILER_STRIP_GATE(0x8071C5C8, &lit_4435);
#pragma pop

/* 8071C5CC-8071C5D0 000088 0004+00 0/7 0/0 0/0 .rodata          @4550 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4550 = 30.0f;
COMPILER_STRIP_GATE(0x8071C5CC, &lit_4550);
#pragma pop

/* 8071C5D0-8071C5D4 00008C 0004+00 0/5 0/0 0/0 .rodata          @4551 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4551 = -10.0f;
COMPILER_STRIP_GATE(0x8071C5D0, &lit_4551);
#pragma pop

/* 80715D2C-807160B0 001CEC 0384+00 1/1 0/0 0/0 .text            e_mk_drop__FP10e_mk_class */
static void e_mk_drop(e_mk_class* param_0) {
    // NONMATCHING
}

/* 807160B0-807161F8 002070 0148+00 1/1 0/0 0/0 .text            e_mk_damage__FP10e_mk_class */
static void e_mk_damage(e_mk_class* param_0) {
    // NONMATCHING
}

/* 807161F8-8071637C 0021B8 0184+00 1/1 0/0 0/0 .text            damage_check__FP10e_mk_class */
static void damage_check(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C5D4-8071C5D8 000090 0004+00 0/1 0/0 0/0 .rodata          @4711 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4711 = 7.0f;
COMPILER_STRIP_GATE(0x8071C5D4, &lit_4711);
#pragma pop

/* 8071637C-80716780 00233C 0404+00 1/1 0/0 0/0 .text            e_mk_s_demo__FP10e_mk_class */
static void e_mk_s_demo(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C5D8-8071C5DC 000094 0004+00 0/1 0/0 0/0 .rodata          @4907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4907 = -1000.0f;
COMPILER_STRIP_GATE(0x8071C5D8, &lit_4907);
#pragma pop

/* 8071C5DC-8071C5E0 000098 0004+00 0/2 0/0 0/0 .rodata          @4908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4908 = 12.0f;
COMPILER_STRIP_GATE(0x8071C5DC, &lit_4908);
#pragma pop

/* 8071C5E0-8071C5E4 00009C 0004+00 0/1 0/0 0/0 .rodata          @4909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4909 = -3.0f / 100.0f;
COMPILER_STRIP_GATE(0x8071C5E0, &lit_4909);
#pragma pop

/* 8071C5E4-8071C5E8 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4910 = -2.0f;
COMPILER_STRIP_GATE(0x8071C5E4, &lit_4910);
#pragma pop

/* 8071C5E8-8071C5EC 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4911 = -50.0f;
COMPILER_STRIP_GATE(0x8071C5E8, &lit_4911);
#pragma pop

/* 8071C5EC-8071C5F4 0000A8 0004+04 0/2 0/0 0/0 .rodata          @4912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4912[1 + 1 /* padding */] = {
    -20.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8071C5EC, &lit_4912);
#pragma pop

/* 8071C5F4-8071C5FC 0000B0 0008+00 0/2 0/0 0/0 .rodata          @4914 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4914[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8071C5F4, &lit_4914);
#pragma pop

/* 80716780-80716F48 002740 07C8+00 1/1 0/0 0/0 .text            e_mk_e_demo__FP10e_mk_class */
static void e_mk_e_demo(e_mk_class* param_0) {
    // NONMATCHING
}

/* 80716F48-80717400 002F08 04B8+00 2/1 0/0 0/0 .text            e_mk_r04_demo__FP10e_mk_class */
static void e_mk_r04_demo(e_mk_class* param_0) {
    // NONMATCHING
}

/* 80717400-807174E4 0033C0 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP10e_mk_classf */
static void cam_3d_morf(e_mk_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C5FC-8071C600 0000B8 0004+00 0/0 0/0 0/0 .rodata          @5004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5004 = -600.0f;
COMPILER_STRIP_GATE(0x8071C5FC, &lit_5004);
#pragma pop

/* 8071C600-8071C604 0000BC 0004+00 0/2 0/0 0/0 .rodata          @5297 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5297 = 2500.0f;
COMPILER_STRIP_GATE(0x8071C600, &lit_5297);
#pragma pop

/* 8071C604-8071C608 0000C0 0004+00 0/1 0/0 0/0 .rodata          @5298 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5298 = -271.0f;
COMPILER_STRIP_GATE(0x8071C604, &lit_5298);
#pragma pop

/* 8071C608-8071C60C 0000C4 0004+00 0/1 0/0 0/0 .rodata          @5299 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5299 = 4559.0f;
COMPILER_STRIP_GATE(0x8071C608, &lit_5299);
#pragma pop

/* 8071C60C-8071C610 0000C8 0004+00 0/1 0/0 0/0 .rodata          @5300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5300 = -7241.0f;
COMPILER_STRIP_GATE(0x8071C60C, &lit_5300);
#pragma pop

/* 8071C610-8071C614 0000CC 0004+00 0/2 0/0 0/0 .rodata          @5301 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5301 = -70.0f;
COMPILER_STRIP_GATE(0x8071C610, &lit_5301);
#pragma pop

/* 8071C614-8071C618 0000D0 0004+00 0/1 0/0 0/0 .rodata          @5302 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5302 = 4378.0f;
COMPILER_STRIP_GATE(0x8071C614, &lit_5302);
#pragma pop

/* 8071C618-8071C61C 0000D4 0004+00 0/1 0/0 0/0 .rodata          @5303 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5303 = -6233.0f;
COMPILER_STRIP_GATE(0x8071C618, &lit_5303);
#pragma pop

/* 8071C61C-8071C620 0000D8 0004+00 0/3 0/0 0/0 .rodata          @5304 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5304 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8071C61C, &lit_5304);
#pragma pop

/* 8071C620-8071C624 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5305 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5305 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x8071C620, &lit_5305);
#pragma pop

/* 8071C624-8071C628 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5306 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5306 = 0x3A03126F;
COMPILER_STRIP_GATE(0x8071C624, &lit_5306);
#pragma pop

/* 8071C628-8071C62C 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5307 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5307 = 150.0f;
COMPILER_STRIP_GATE(0x8071C628, &lit_5307);
#pragma pop

/* 8071C62C-8071C630 0000E8 0004+00 0/2 0/0 0/0 .rodata          @5308 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5308 = 250.0f;
COMPILER_STRIP_GATE(0x8071C62C, &lit_5308);
#pragma pop

/* 8071C630-8071C634 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5309 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5309 = 230.0f;
COMPILER_STRIP_GATE(0x8071C630, &lit_5309);
#pragma pop

/* 8071C634-8071C638 0000F0 0004+00 0/2 0/0 0/0 .rodata          @5310 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5310 = 1100.0f;
COMPILER_STRIP_GATE(0x8071C634, &lit_5310);
#pragma pop

/* 8071C638-8071C63C 0000F4 0004+00 0/3 0/0 0/0 .rodata          @5311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5311 = -300.0f;
COMPILER_STRIP_GATE(0x8071C638, &lit_5311);
#pragma pop

/* 8071C63C-8071C640 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5312 = 2450.0f;
COMPILER_STRIP_GATE(0x8071C63C, &lit_5312);
#pragma pop

/* 8071C640-8071C644 0000FC 0004+00 0/2 0/0 0/0 .rodata          @5313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5313 = 3500.0f;
COMPILER_STRIP_GATE(0x8071C640, &lit_5313);
#pragma pop

/* 8071C644-8071C648 000100 0004+00 0/2 0/0 0/0 .rodata          @5314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5314 = -150.0f;
COMPILER_STRIP_GATE(0x8071C644, &lit_5314);
#pragma pop

/* 8071C648-8071C64C 000104 0004+00 0/3 0/0 0/0 .rodata          @5315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5315 = -200.0f;
COMPILER_STRIP_GATE(0x8071C648, &lit_5315);
#pragma pop

/* 8071C64C-8071C650 000108 0004+00 0/2 0/0 0/0 .rodata          @5316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5316 = 1000.0f;
COMPILER_STRIP_GATE(0x8071C64C, &lit_5316);
#pragma pop

/* 8071C650-8071C654 00010C 0004+00 0/3 0/0 0/0 .rodata          @5317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5317 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8071C650, &lit_5317);
#pragma pop

/* 8071C654-8071C658 000110 0004+00 0/1 0/0 0/0 .rodata          @5318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5318 = 9.0f / 20.0f;
COMPILER_STRIP_GATE(0x8071C654, &lit_5318);
#pragma pop

/* 8071C658-8071C65C 000114 0004+00 0/2 0/0 0/0 .rodata          @5319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5319 = 400.0f;
COMPILER_STRIP_GATE(0x8071C658, &lit_5319);
#pragma pop

/* 8071C65C-8071C660 000118 0004+00 0/1 0/0 0/0 .rodata          @5320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5320 = -400.0f;
COMPILER_STRIP_GATE(0x8071C65C, &lit_5320);
#pragma pop

/* 807174E4-8071823C 0034A4 0D58+00 1/1 0/0 0/0 .text            demo_camera_start__FP10e_mk_class
 */
static void demo_camera_start(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C660-8071C664 00011C 0004+00 0/3 0/0 0/0 .rodata          @5634 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5634 = 55.0f;
COMPILER_STRIP_GATE(0x8071C660, &lit_5634);
#pragma pop

/* 8071C664-8071C668 000120 0004+00 0/2 0/0 0/0 .rodata          @5635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5635 = 10000.0f;
COMPILER_STRIP_GATE(0x8071C664, &lit_5635);
#pragma pop

/* 8071C668-8071C66C 000124 0004+00 0/2 0/0 0/0 .rodata          @5636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5636 = 130.0f;
COMPILER_STRIP_GATE(0x8071C668, &lit_5636);
#pragma pop

/* 8071C66C-8071C670 000128 0004+00 0/1 0/0 0/0 .rodata          @5637 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5637 = 450.0f;
COMPILER_STRIP_GATE(0x8071C66C, &lit_5637);
#pragma pop

/* 8071C670-8071C674 00012C 0004+00 0/2 0/0 0/0 .rodata          @5638 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5638 = -100.0f;
COMPILER_STRIP_GATE(0x8071C670, &lit_5638);
#pragma pop

/* 8071C674-8071C678 000130 0004+00 0/2 0/0 0/0 .rodata          @5639 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5639 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x8071C674, &lit_5639);
#pragma pop

/* 8071C678-8071C67C 000134 0004+00 0/1 0/0 0/0 .rodata          @5640 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5640 = 1400.0f;
COMPILER_STRIP_GATE(0x8071C678, &lit_5640);
#pragma pop

/* 8071C67C-8071C680 000138 0004+00 0/3 0/0 0/0 .rodata          @5641 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5641 = 20.0f;
COMPILER_STRIP_GATE(0x8071C67C, &lit_5641);
#pragma pop

/* 8071C680-8071C684 00013C 0004+00 0/1 0/0 0/0 .rodata          @5642 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5642 = 1300.0f;
COMPILER_STRIP_GATE(0x8071C680, &lit_5642);
#pragma pop

/* 8071C684-8071C688 000140 0004+00 0/1 0/0 0/0 .rodata          @5643 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5643 = 170.0f;
COMPILER_STRIP_GATE(0x8071C684, &lit_5643);
#pragma pop

/* 8071C688-8071C68C 000144 0004+00 0/2 0/0 0/0 .rodata          @5644 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5644 = 190.0f;
COMPILER_STRIP_GATE(0x8071C688, &lit_5644);
#pragma pop

/* 8071C68C-8071C690 000148 0004+00 0/1 0/0 0/0 .rodata          @5645 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5645 = 5500.0f;
COMPILER_STRIP_GATE(0x8071C68C, &lit_5645);
#pragma pop

/* 8071C690-8071C694 00014C 0004+00 0/1 0/0 0/0 .rodata          @5646 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5646 = 2300.0f;
COMPILER_STRIP_GATE(0x8071C690, &lit_5646);
#pragma pop

/* 8071C694-8071C698 000150 0004+00 0/1 0/0 0/0 .rodata          @5647 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5647 = -5000.0f;
COMPILER_STRIP_GATE(0x8071C694, &lit_5647);
#pragma pop

/* 8071C698-8071C69C 000154 0004+00 0/1 0/0 0/0 .rodata          @5648 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5648 = 370.0f;
COMPILER_STRIP_GATE(0x8071C698, &lit_5648);
#pragma pop

/* 8071C69C-8071C6A0 000158 0004+00 0/2 0/0 0/0 .rodata          @5649 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5649 = 600.0f;
COMPILER_STRIP_GATE(0x8071C69C, &lit_5649);
#pragma pop

/* 8071C6A0-8071C6A4 00015C 0004+00 0/2 0/0 0/0 .rodata          @5650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5650 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x8071C6A0, &lit_5650);
#pragma pop

/* 8071C6A4-8071C6A8 000160 0004+00 0/1 0/0 0/0 .rodata          @5651 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5651 = 900.0f;
COMPILER_STRIP_GATE(0x8071C6A4, &lit_5651);
#pragma pop

/* 8071C6A8-8071C6AC 000164 0004+00 0/1 0/0 0/0 .rodata          @5652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5652 = 45.0f;
COMPILER_STRIP_GATE(0x8071C6A8, &lit_5652);
#pragma pop

/* 8071C6AC-8071C6B0 000168 0004+00 0/1 0/0 0/0 .rodata          @5653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5653 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x8071C6AC, &lit_5653);
#pragma pop

/* 8071C6B0-8071C6B4 00016C 0004+00 0/2 0/0 0/0 .rodata          @5654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5654 = 110.0f;
COMPILER_STRIP_GATE(0x8071C6B0, &lit_5654);
#pragma pop

/* 8071C6B4-8071C6B8 000170 0004+00 0/1 0/0 0/0 .rodata          @5655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5655 = 20000.0f;
COMPILER_STRIP_GATE(0x8071C6B4, &lit_5655);
#pragma pop

/* 8071823C-80719488 0041FC 124C+00 1/1 0/0 0/0 .text            demo_camera_end__FP10e_mk_class */
static void demo_camera_end(e_mk_class* param_0) {
    // NONMATCHING
}

/* 80719488-807194E0 005448 0058+00 2/2 0/0 0/0 .text            s_ks_sub__FPvPv */
static void s_ks_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 807194E0-80719540 0054A0 0060+00 1/1 0/0 0/0 .text            s_brg_sub__FPvPv */
static void s_brg_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80719540-80719594 005500 0054+00 1/1 0/0 0/0 .text            s_brg_sub2__FPvPv */
static void s_brg_sub2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C6B8-8071C6BC 000174 0004+00 0/1 0/0 0/0 .rodata          @5961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5961 = -711.0f;
COMPILER_STRIP_GATE(0x8071C6B8, &lit_5961);
#pragma pop

/* 8071C6BC-8071C6C0 000178 0004+00 0/1 0/0 0/0 .rodata          @5962 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5962 = 3588.0f;
COMPILER_STRIP_GATE(0x8071C6BC, &lit_5962);
#pragma pop

/* 8071C6C0-8071C6C4 00017C 0004+00 0/1 0/0 0/0 .rodata          @5963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5963 = 2730.0f;
COMPILER_STRIP_GATE(0x8071C6C0, &lit_5963);
#pragma pop

/* 8071C6C4-8071C6C8 000180 0004+00 0/1 0/0 0/0 .rodata          @5964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5964 = 116.0f;
COMPILER_STRIP_GATE(0x8071C6C4, &lit_5964);
#pragma pop

/* 8071C6C8-8071C6CC 000184 0004+00 0/1 0/0 0/0 .rodata          @5965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5965 = 3400.0f;
COMPILER_STRIP_GATE(0x8071C6C8, &lit_5965);
#pragma pop

/* 8071C6CC-8071C6D0 000188 0004+00 0/1 0/0 0/0 .rodata          @5966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5966 = 4597.0f;
COMPILER_STRIP_GATE(0x8071C6CC, &lit_5966);
#pragma pop

/* 8071C6D0-8071C6D4 00018C 0004+00 0/1 0/0 0/0 .rodata          @5967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5967 = -291.0f;
COMPILER_STRIP_GATE(0x8071C6D0, &lit_5967);
#pragma pop

/* 8071C6D4-8071C6D8 000190 0004+00 0/1 0/0 0/0 .rodata          @5968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5968 = 3256.0f;
COMPILER_STRIP_GATE(0x8071C6D4, &lit_5968);
#pragma pop

/* 8071C6D8-8071C6DC 000194 0004+00 0/1 0/0 0/0 .rodata          @5969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5969 = 2640.0f;
COMPILER_STRIP_GATE(0x8071C6D8, &lit_5969);
#pragma pop

/* 8071C6DC-8071C6E0 000198 0004+00 0/1 0/0 0/0 .rodata          @5970 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5970 = 1060.0f;
COMPILER_STRIP_GATE(0x8071C6DC, &lit_5970);
#pragma pop

/* 8071C6E0-8071C6E4 00019C 0004+00 0/1 0/0 0/0 .rodata          @5971 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5971 = 3795.0f;
COMPILER_STRIP_GATE(0x8071C6E0, &lit_5971);
#pragma pop

/* 8071C6E4-8071C6E8 0001A0 0004+00 0/1 0/0 0/0 .rodata          @5972 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5972 = 4086.0f;
COMPILER_STRIP_GATE(0x8071C6E4, &lit_5972);
#pragma pop

/* 8071C6E8-8071C6EC 0001A4 0004+00 0/1 0/0 0/0 .rodata          @5973 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5973 = 0x3C75C28F;
COMPILER_STRIP_GATE(0x8071C6E8, &lit_5973);
#pragma pop

/* 8071C6EC-8071C6F0 0001A8 0004+00 0/1 0/0 0/0 .rodata          @5974 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5974 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8071C6EC, &lit_5974);
#pragma pop

/* 8071C6F0-8071C6F4 0001AC 0004+00 0/1 0/0 0/0 .rodata          @5975 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5975 = 3300.0f;
COMPILER_STRIP_GATE(0x8071C6F0, &lit_5975);
#pragma pop

/* 8071C6F4-8071C6F8 0001B0 0004+00 0/1 0/0 0/0 .rodata          @5976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5976 = 4326.0f;
COMPILER_STRIP_GATE(0x8071C6F4, &lit_5976);
#pragma pop

/* 8071C6F8-8071C6FC 0001B4 0004+00 0/1 0/0 0/0 .rodata          @5977 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5977 = 3350.0f;
COMPILER_STRIP_GATE(0x8071C6F8, &lit_5977);
#pragma pop

/* 8071C6FC-8071C700 0001B8 0004+00 0/1 0/0 0/0 .rodata          @5978 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5978 = 220.0f;
COMPILER_STRIP_GATE(0x8071C6FC, &lit_5978);
#pragma pop

/* 8071C700-8071C704 0001BC 0004+00 0/1 0/0 0/0 .rodata          @5979 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5979 = 90.0f;
COMPILER_STRIP_GATE(0x8071C700, &lit_5979);
#pragma pop

/* 8071C704-8071C708 0001C0 0004+00 0/1 0/0 0/0 .rodata          @5980 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5980 = -477.0f;
COMPILER_STRIP_GATE(0x8071C704, &lit_5980);
#pragma pop

/* 8071C708-8071C70C 0001C4 0004+00 0/1 0/0 0/0 .rodata          @5981 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5981 = 3119.0f;
COMPILER_STRIP_GATE(0x8071C708, &lit_5981);
#pragma pop

/* 8071C70C-8071C710 0001C8 0004+00 0/1 0/0 0/0 .rodata          @5982 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5982 = 1643.0f;
COMPILER_STRIP_GATE(0x8071C70C, &lit_5982);
#pragma pop

/* 8071C710-8071C714 0001CC 0004+00 0/1 0/0 0/0 .rodata          @5983 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5983 = 1600.0f;
COMPILER_STRIP_GATE(0x8071C710, &lit_5983);
#pragma pop

/* 8071C714-8071C718 0001D0 0004+00 0/1 0/0 0/0 .rodata          @5984 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5984 = 3200.0f;
COMPILER_STRIP_GATE(0x8071C714, &lit_5984);
#pragma pop

/* 8071C718-8071C71C 0001D4 0004+00 0/1 0/0 0/0 .rodata          @5985 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5985 = 550.0f;
COMPILER_STRIP_GATE(0x8071C718, &lit_5985);
#pragma pop

/* 8071C71C-8071C720 0001D8 0004+00 0/1 0/0 0/0 .rodata          @5986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5986 = 3373.0f;
COMPILER_STRIP_GATE(0x8071C71C, &lit_5986);
#pragma pop

/* 8071C720-8071C724 0001DC 0004+00 0/1 0/0 0/0 .rodata          @5987 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5987 = -282.0f;
COMPILER_STRIP_GATE(0x8071C720, &lit_5987);
#pragma pop

/* 8071C724-8071C728 0001E0 0004+00 0/1 0/0 0/0 .rodata          @5988 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5988 = 2534.0f;
COMPILER_STRIP_GATE(0x8071C724, &lit_5988);
#pragma pop

/* 8071C728-8071C72C 0001E4 0004+00 0/1 0/0 0/0 .rodata          @5989 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5989 = 3147.0f;
COMPILER_STRIP_GATE(0x8071C728, &lit_5989);
#pragma pop

/* 8071C72C-8071C730 0001E8 0004+00 0/1 0/0 0/0 .rodata          @5990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5990 = 3310.0f;
COMPILER_STRIP_GATE(0x8071C72C, &lit_5990);
#pragma pop

/* 8071C730-8071C734 0001EC 0004+00 0/1 0/0 0/0 .rodata          @5991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5991 = 3427.0f;
COMPILER_STRIP_GATE(0x8071C730, &lit_5991);
#pragma pop

/* 8071C734-8071C738 0001F0 0004+00 0/1 0/0 0/0 .rodata          @5992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5992 = 4.0f;
COMPILER_STRIP_GATE(0x8071C734, &lit_5992);
#pragma pop

/* 8071C738-8071C73C 0001F4 0004+00 0/1 0/0 0/0 .rodata          @5993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5993 = 3393.0f;
COMPILER_STRIP_GATE(0x8071C738, &lit_5993);
#pragma pop

/* 8071C73C-8071C740 0001F8 0004+00 0/1 0/0 0/0 .rodata          @5994 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5994 = 4180.0f;
COMPILER_STRIP_GATE(0x8071C73C, &lit_5994);
#pragma pop

/* 8071C740-8071C744 0001FC 0004+00 0/1 0/0 0/0 .rodata          @5995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5995 = -131.0f;
COMPILER_STRIP_GATE(0x8071C740, &lit_5995);
#pragma pop

/* 8071C744-8071C748 000200 0004+00 0/1 0/0 0/0 .rodata          @5996 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5996 = 3452.0f;
COMPILER_STRIP_GATE(0x8071C744, &lit_5996);
#pragma pop

/* 8071C748-8071C74C 000204 0004+00 0/1 0/0 0/0 .rodata          @5997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5997 = 4552.0f;
COMPILER_STRIP_GATE(0x8071C748, &lit_5997);
#pragma pop

/* 8071C74C-8071C750 000208 0004+00 0/1 0/0 0/0 .rodata          @5998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5998 = 3422.0f;
COMPILER_STRIP_GATE(0x8071C74C, &lit_5998);
#pragma pop

/* 8071C750-8071C754 00020C 0004+00 0/1 0/0 0/0 .rodata          @5999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5999 = 4520.0f;
COMPILER_STRIP_GATE(0x8071C750, &lit_5999);
#pragma pop

/* 8071C754-8071C758 000210 0004+00 0/1 0/0 0/0 .rodata          @6000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6000 = 343.0f;
COMPILER_STRIP_GATE(0x8071C754, &lit_6000);
#pragma pop

/* 8071C758-8071C75C 000214 0004+00 0/1 0/0 0/0 .rodata          @6001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6001 = 4271.0f;
COMPILER_STRIP_GATE(0x8071C758, &lit_6001);
#pragma pop

/* 80719594-8071A06C 005554 0AD8+00 1/1 0/0 0/0 .text            demo_camera_r04__FP10e_mk_class */
static void demo_camera_r04(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C75C-8071C760 000218 0004+00 0/2 0/0 0/0 .rodata          @6052 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6052 = -500.0f;
COMPILER_STRIP_GATE(0x8071C75C, &lit_6052);
#pragma pop

/* 8071C760-8071C764 00021C 0004+00 0/1 0/0 0/0 .rodata          @6053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6053 = -120.0f;
COMPILER_STRIP_GATE(0x8071C760, &lit_6053);
#pragma pop

/* 8071A06C-8071A22C 00602C 01C0+00 1/1 0/0 0/0 .text            demo_camera_bohit__FP10e_mk_class
 */
static void demo_camera_bohit(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C7E8-8071C7E8 0002A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8071C7ED = "D_MN05";
#pragma pop

/* 8071A22C-8071A538 0061EC 030C+00 2/1 0/0 0/0 .text            demo_camera__FP10e_mk_class */
static void demo_camera(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C764-8071C768 000220 0004+00 0/0 0/0 0/0 .rodata          @6175 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6175 = 7.5f;
COMPILER_STRIP_GATE(0x8071C764, &lit_6175);
#pragma pop

/* 8071C768-8071C76C 000224 0004+00 1/1 0/0 0/0 .rodata          @6243 */
SECTION_RODATA static f32 const lit_6243 = 2.5f;
COMPILER_STRIP_GATE(0x8071C768, &lit_6243);

/* 8071A538-8071A808 0064F8 02D0+00 2/1 0/0 0/0 .text            action__FP10e_mk_class */
static void action(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C76C-8071C770 000228 0004+00 0/1 0/0 0/0 .rodata          @6458 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6458 = 13.0f;
COMPILER_STRIP_GATE(0x8071C76C, &lit_6458);
#pragma pop

/* 8071C770-8071C774 00022C 0004+00 0/1 0/0 0/0 .rodata          @6459 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6459 = 21.0f;
COMPILER_STRIP_GATE(0x8071C770, &lit_6459);
#pragma pop

/* 8071C774-8071C778 000230 0004+00 0/1 0/0 0/0 .rodata          @6460 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6460 = 31.0f;
COMPILER_STRIP_GATE(0x8071C774, &lit_6460);
#pragma pop

/* 8071C778-8071C77C 000234 0004+00 0/1 0/0 0/0 .rodata          @6461 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6461 = 41.0f;
COMPILER_STRIP_GATE(0x8071C778, &lit_6461);
#pragma pop

/* 8071C77C-8071C780 000238 0004+00 0/1 0/0 0/0 .rodata          @6462 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6462 = 64.0f;
COMPILER_STRIP_GATE(0x8071C77C, &lit_6462);
#pragma pop

/* 8071C780-8071C784 00023C 0004+00 0/1 0/0 0/0 .rodata          @6463 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6463 = 32.0f;
COMPILER_STRIP_GATE(0x8071C780, &lit_6463);
#pragma pop

/* 8071C784-8071C788 000240 0004+00 0/1 0/0 0/0 .rodata          @6464 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6464 = 8.0f;
COMPILER_STRIP_GATE(0x8071C784, &lit_6464);
#pragma pop

/* 8071C788-8071C78C 000244 0004+00 0/1 0/0 0/0 .rodata          @6465 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6465 = 38.0f;
COMPILER_STRIP_GATE(0x8071C788, &lit_6465);
#pragma pop

/* 8071C78C-8071C790 000248 0004+00 0/1 0/0 0/0 .rodata          @6466 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6466 = 6.0f;
COMPILER_STRIP_GATE(0x8071C78C, &lit_6466);
#pragma pop

/* 8071A808-8071AF14 0067C8 070C+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_mk_class */
static void anm_se_set(e_mk_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C790-8071C794 00024C 0004+00 0/1 0/0 0/0 .rodata          @6730 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6730 = 32768.0f;
COMPILER_STRIP_GATE(0x8071C790, &lit_6730);
#pragma pop

/* 8071C794-8071C798 000250 0004+00 0/1 0/0 0/0 .rodata          @6731 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6731 = 60.0f;
COMPILER_STRIP_GATE(0x8071C794, &lit_6731);
#pragma pop

/* 8071C798-8071C79C 000254 0004+00 0/1 0/0 0/0 .rodata          @6732 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6732 = 0x413FD70A;
COMPILER_STRIP_GATE(0x8071C798, &lit_6732);
#pragma pop

/* 8071C79C-8071C7A0 000258 0004+00 0/1 0/0 0/0 .rodata          @6733 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6733 = -30.0f;
COMPILER_STRIP_GATE(0x8071C79C, &lit_6733);
#pragma pop

/* 8071C7A0-8071C7A4 00025C 0004+00 0/1 0/0 0/0 .rodata          @6734 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6734 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x8071C7A0, &lit_6734);
#pragma pop

/* 8071C7A4-8071C7A8 000260 0004+00 0/1 0/0 0/0 .rodata          @6735 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6735 = 100000.0f;
COMPILER_STRIP_GATE(0x8071C7A4, &lit_6735);
#pragma pop

/* 8071AF14-8071B9C4 006ED4 0AB0+00 2/1 0/0 0/0 .text            daE_MK_Execute__FP10e_mk_class */
static void daE_MK_Execute(e_mk_class* param_0) {
    // NONMATCHING
}

/* 8071B9C4-8071B9CC 007984 0008+00 1/0 0/0 0/0 .text            daE_MK_IsDelete__FP10e_mk_class */
static bool daE_MK_IsDelete(e_mk_class* param_0) {
    return true;
}

/* 8071B9CC-8071BA34 00798C 0068+00 1/0 0/0 0/0 .text            daE_MK_Delete__FP10e_mk_class */
static void daE_MK_Delete(e_mk_class* param_0) {
    // NONMATCHING
}

/* 8071BA34-8071BCCC 0079F4 0298+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8071BCCC-8071BD14 007C8C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C7A8-8071C7AC 000264 0004+00 0/1 0/0 0/0 .rodata          @6943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6943 = 80.0f;
COMPILER_STRIP_GATE(0x8071C7A8, &lit_6943);
#pragma pop

/* 8071C7AC-8071C7B0 000268 0004+00 0/1 0/0 0/0 .rodata          @6944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6944 = 3900.0f;
COMPILER_STRIP_GATE(0x8071C7AC, &lit_6944);
#pragma pop

/* 8071C7B0-8071C7B4 00026C 0004+00 0/1 0/0 0/0 .rodata          @6945 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6945 = -3000.0f;
COMPILER_STRIP_GATE(0x8071C7B0, &lit_6945);
#pragma pop

/* 8071C7B4-8071C7B8 000270 0004+00 0/1 0/0 0/0 .rodata          @6946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6946 = -21.0f;
COMPILER_STRIP_GATE(0x8071C7B4, &lit_6946);
#pragma pop

/* 8071C7B8-8071C7BC 000274 0004+00 0/1 0/0 0/0 .rodata          @6947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6947 = 5114.0f;
COMPILER_STRIP_GATE(0x8071C7B8, &lit_6947);
#pragma pop

/* 8071C7BC-8071C7C0 000278 0004+00 0/1 0/0 0/0 .rodata          @6948 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6948 = -4941.0f;
COMPILER_STRIP_GATE(0x8071C7BC, &lit_6948);
#pragma pop

/* 8071C7C0-8071C7C4 00027C 0004+00 0/1 0/0 0/0 .rodata          @6949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6949 = -4401.0f;
COMPILER_STRIP_GATE(0x8071C7C0, &lit_6949);
#pragma pop

/* 8071C7C4-8071C7C8 000280 0004+00 0/1 0/0 0/0 .rodata          @6950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6950 = -5.0f;
COMPILER_STRIP_GATE(0x8071C7C4, &lit_6950);
#pragma pop

/* 8071C7E8-8071C7E8 0002A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8071C7F4 = "D_MN05B";
#pragma pop

/* 8071BD14-8071C190 007CD4 047C+00 1/0 0/0 0/0 .text            daE_MK_Create__FP10fopAc_ac_c */
static void daE_MK_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8071C190-8071C2EC 008150 015C+00 1/1 0/0 0/0 .text            __ct__10e_mk_classFv */
e_mk_class::e_mk_class() {
    // NONMATCHING
}

/* 8071C2EC-8071C334 0082AC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8071C334-8071C37C 0082F4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8071C37C-8071C3EC 00833C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8071C3EC-8071C434 0083AC 0048+00 2/1 0/0 0/0 .text            __dt__12daE_MK_HIO_cFv */
daE_MK_HIO_c::~daE_MK_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071C7C8-8071C7CC 000284 0004+00 0/1 0/0 0/0 .rodata          @7096 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7096 = 1050.0f;
COMPILER_STRIP_GATE(0x8071C7C8, &lit_7096);
#pragma pop

/* 8071C7CC-8071C7D0 000288 0004+00 0/1 0/0 0/0 .rodata          @7097 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7097 = -450.0f;
COMPILER_STRIP_GATE(0x8071C7CC, &lit_7097);
#pragma pop

/* 8071C7D0-8071C7D4 00028C 0004+00 0/1 0/0 0/0 .rodata          @7098 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7098 = 1262.0f;
COMPILER_STRIP_GATE(0x8071C7D0, &lit_7098);
#pragma pop

/* 8071C7D4-8071C7D8 000290 0004+00 0/1 0/0 0/0 .rodata          @7099 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7099 = 1030.0f;
COMPILER_STRIP_GATE(0x8071C7D4, &lit_7099);
#pragma pop

/* 8071C7D8-8071C7DC 000294 0004+00 0/1 0/0 0/0 .rodata          @7100 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7100 = -1665.0f;
COMPILER_STRIP_GATE(0x8071C7D8, &lit_7100);
#pragma pop

/* 8071C7DC-8071C7E0 000298 0004+00 0/1 0/0 0/0 .rodata          @7101 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7101 = 2400.0f;
COMPILER_STRIP_GATE(0x8071C7DC, &lit_7101);
#pragma pop

/* 8071C7E0-8071C7E4 00029C 0004+00 0/1 0/0 0/0 .rodata          @7102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7102 = 1115.0f;
COMPILER_STRIP_GATE(0x8071C7E0, &lit_7102);
#pragma pop

/* 8071C7E4-8071C7E8 0002A0 0004+00 0/1 0/0 0/0 .rodata          @7103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7103 = -1850.0f;
COMPILER_STRIP_GATE(0x8071C7E4, &lit_7103);
#pragma pop

/* 8071C434-8071C520 0083F4 00EC+00 0/0 1/0 0/0 .text            __sinit_d_a_e_mk_cpp */
void __sinit_d_a_e_mk_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8071C434, __sinit_d_a_e_mk_cpp);
#pragma pop

/* 8071C520-8071C528 0084E0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8071C520() {
    // NONMATCHING
}

/* 8071C528-8071C530 0084E8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8071C528() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071CB94-8071CB98 000134 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8071CB94[4];
#pragma pop

/* 8071CB98-8071CB9C 000138 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8071CB98[4];
#pragma pop

/* 8071CB9C-8071CBA0 00013C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8071CB9C[4];
#pragma pop

/* 8071CBA0-8071CBA4 000140 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8071CBA0[4];
#pragma pop

/* 8071CBA4-8071CBA8 000144 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBA4[4];
#pragma pop

/* 8071CBA8-8071CBAC 000148 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBA8[4];
#pragma pop

/* 8071CBAC-8071CBB0 00014C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBAC[4];
#pragma pop

/* 8071CBB0-8071CBB4 000150 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8071CBB0[4];
#pragma pop

/* 8071CBB4-8071CBB8 000154 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8071CBB4[4];
#pragma pop

/* 8071CBB8-8071CBBC 000158 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8071CBB8[4];
#pragma pop

/* 8071CBBC-8071CBC0 00015C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8071CBBC[4];
#pragma pop

/* 8071CBC0-8071CBC4 000160 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8071CBC0[4];
#pragma pop

/* 8071CBC4-8071CBC8 000164 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8071CBC4[4];
#pragma pop

/* 8071CBC8-8071CBCC 000168 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBC8[4];
#pragma pop

/* 8071CBCC-8071CBD0 00016C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8071CBCC[4];
#pragma pop

/* 8071CBD0-8071CBD4 000170 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8071CBD0[4];
#pragma pop

/* 8071CBD4-8071CBD8 000174 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8071CBD4[4];
#pragma pop

/* 8071CBD8-8071CBDC 000178 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8071CBD8[4];
#pragma pop

/* 8071CBDC-8071CBE0 00017C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBDC[4];
#pragma pop

/* 8071CBE0-8071CBE4 000180 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8071CBE0[4];
#pragma pop

/* 8071CBE4-8071CBE8 000184 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBE4[4];
#pragma pop

/* 8071CBE8-8071CBEC 000188 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBE8[4];
#pragma pop

/* 8071CBEC-8071CBF0 00018C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBEC[4];
#pragma pop

/* 8071CBF0-8071CBF4 000190 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071CBF0[4];
#pragma pop

/* 8071CBF4-8071CBF8 000194 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8071CBF4[4];
#pragma pop

/* 8071C7E8-8071C7E8 0002A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
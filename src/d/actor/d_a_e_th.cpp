/**
 * @file d_a_e_th.cpp
 * 
*/

#include "d/actor/d_a_e_th.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"



//
// Forward References:
//

extern "C" void __ct__12daE_TH_HIO_cFv();
extern "C" static void s_md_sub1__FPvPv();
extern "C" static void s_md_sub2__FPvPv();
extern "C" static void anm_init__FP10e_th_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void ke_control__FP10e_th_classP7th_ke_si();
extern "C" static void ke_pos_set__FP10e_th_classP7th_ke_si();
extern "C" static void ke_disp__FP10e_th_class();
extern "C" static void ke_move__FP10e_th_class();
extern "C" static void daE_TH_Draw__FP10e_th_class();
extern "C" static void e_th_wait__FP10e_th_class();
extern "C" static void e_th_spin__FP10e_th_class();
extern "C" static void e_th_spin_B__FP10e_th_class();
extern "C" static void e_th_shot__FP10e_th_class();
extern "C" static void e_th_return__FP10e_th_class();
extern "C" static void e_th_damage__FP10e_th_class();
extern "C" static void e_th_start__FP10e_th_class();
extern "C" static void e_th_end__FP10e_th_class();
extern "C" static void damage_check__FP10e_th_class();
extern "C" static void action__FP10e_th_class();
extern "C" static void cam_3d_morf__FP10e_th_classf();
extern "C" static void demo_camera__FP10e_th_class();
extern "C" static void anm_se_set__FP10e_th_class();
extern "C" static void daE_TH_Execute__FP10e_th_class();
extern "C" static bool daE_TH_IsDelete__FP10e_th_class();
extern "C" static void daE_TH_Delete__FP10e_th_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_TH_Create__FP10fopAc_ac_c();
extern "C" void __dt__7th_ke_sFv();
extern "C" void __ct__7th_ke_sFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_TH_HIO_cFv();
extern "C" void __sinit_d_a_e_th_cpp();
extern "C" static void func_807B4028();
extern "C" static void func_807B4030();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_th__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotS__FPA4_fs();
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
extern "C" void init__19mDoExt_3DlineMat0_cFUsUsi();
extern "C" void update__19mDoExt_3DlineMat0_cFifR8_GXColorUsP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void dComIfGs_isOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__12dSv_memBit_cFi();
extern "C" void onDungeonItem__12dSv_memBit_cFi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
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
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkItemGet__FUci();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_initRnd2__Fiii();
extern "C" void cM_rndFX2__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void MtxPush__Fv();
extern "C" void MtxPull__Fv();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat0_c[5];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" extern u8 struct_80450C98[4];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 807B44C8-807B44CC 00002C 0004+00 0/1 0/0 0/0 .rodata          @3927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3927 = 1300.0f;
COMPILER_STRIP_GATE(0x807B44C8, &lit_3927);
#pragma pop

/* 807B44CC-807B44D0 000030 0004+00 0/1 0/0 0/0 .rodata          @3928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3928 = 700.0f;
COMPILER_STRIP_GATE(0x807B44CC, &lit_3928);
#pragma pop

/* 807B4684-807B4688 000038 0004+00 1/1 0/0 0/0 .data            l_color$4083 */
SECTION_DATA static u8 l_color[4] = {
    0x50,
    0x0A,
    0x0A,
    0xFF,
};

/* 807B4688-807B46B4 -00001 002C+00 1/1 0/0 0/0 .data            @4357 */
SECTION_DATA static void* lit_4357[11] = {
    (void*)(((char*)e_th_spin_B__FP10e_th_class) + 0xD8),
    (void*)(((char*)e_th_spin_B__FP10e_th_class) + 0x110),
    (void*)(((char*)e_th_spin_B__FP10e_th_class) + 0x2D4),
    (void*)(((char*)e_th_spin_B__FP10e_th_class) + 0x1E0),
    (void*)(((char*)e_th_spin_B__FP10e_th_class) + 0x244),
    (void*)(((char*)e_th_spin_B__FP10e_th_class) + 0x2D4),
    (void*)(((char*)e_th_spin_B__FP10e_th_class) + 0x2D4),
    (void*)(((char*)e_th_spin_B__FP10e_th_class) + 0x2D4),
    (void*)(((char*)e_th_spin_B__FP10e_th_class) + 0x2D4),
    (void*)(((char*)e_th_spin_B__FP10e_th_class) + 0x2D4),
    (void*)(((char*)e_th_spin_B__FP10e_th_class) + 0x288),
};

/* 807B46B4-807B471C -00001 0068+00 1/1 0/0 0/0 .data            @4682 */
SECTION_DATA static void* lit_4682[26] = {
    (void*)(((char*)action__FP10e_th_class) + 0x84),
    (void*)(((char*)action__FP10e_th_class) + 0x90),
    (void*)(((char*)action__FP10e_th_class) + 0xA0),
    (void*)(((char*)action__FP10e_th_class) + 0xB0),
    (void*)(((char*)action__FP10e_th_class) + 0xC0),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xCC),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xD8),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xF4),
    (void*)(((char*)action__FP10e_th_class) + 0xE8),
};

/* 807B471C-807B4754 -00001 0038+00 1/1 0/0 0/0 .data            @5133 */
SECTION_DATA static void* lit_5133[14] = {
    (void*)(((char*)demo_camera__FP10e_th_class) + 0xCEC),
    (void*)(((char*)demo_camera__FP10e_th_class) + 0x68),
    (void*)(((char*)demo_camera__FP10e_th_class) + 0x110),
    (void*)(((char*)demo_camera__FP10e_th_class) + 0x220),
    (void*)(((char*)demo_camera__FP10e_th_class) + 0x35C),
    (void*)(((char*)demo_camera__FP10e_th_class) + 0x624),
    (void*)(((char*)demo_camera__FP10e_th_class) + 0xCEC),
    (void*)(((char*)demo_camera__FP10e_th_class) + 0xCEC),
    (void*)(((char*)demo_camera__FP10e_th_class) + 0xCEC),
    (void*)(((char*)demo_camera__FP10e_th_class) + 0xCEC),
    (void*)(((char*)demo_camera__FP10e_th_class) + 0x67C),
    (void*)(((char*)demo_camera__FP10e_th_class) + 0x840),
    (void*)(((char*)demo_camera__FP10e_th_class) + 0xB98),
    (void*)(((char*)demo_camera__FP10e_th_class) + 0xBCC),
};

/* 807B4754-807B4794 000108 0040+00 1/1 0/0 0/0 .data            cc_sph_src$5396 */
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

/* 807B4794-807B47B4 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_TH_Method */
static actor_method_class l_daE_TH_Method = {
    (process_method_func)daE_TH_Create__FP10fopAc_ac_c,
    (process_method_func)daE_TH_Delete__FP10e_th_class,
    (process_method_func)daE_TH_Execute__FP10e_th_class,
    (process_method_func)daE_TH_IsDelete__FP10e_th_class,
    (process_method_func)daE_TH_Draw__FP10e_th_class,
};

/* 807B47B4-807B47E4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_TH */
extern actor_process_profile_definition g_profile_E_TH = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_TH,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_th_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  134,                    // mPriority
  &l_daE_TH_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 807B47E4-807B47F0 000198 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 807B47F0-807B47FC 0001A4 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 807B47FC-807B4808 0001B0 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 807B4808-807B4814 0001BC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 807B4814-807B4820 0001C8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 807B4820-807B4834 0001D4 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 807B4834-807B4858 0001E8 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807B4030,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807B4028,
};

/* 807B4858-807B4864 00020C 000C+00 2/2 0/0 0/0 .data            __vt__12daE_TH_HIO_c */
SECTION_DATA extern void* __vt__12daE_TH_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_TH_HIO_cFv,
};

/* 807B038C-807B03C4 0000EC 0038+00 1/1 0/0 0/0 .text            __ct__12daE_TH_HIO_cFv */
daE_TH_HIO_c::daE_TH_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B44D0-807B44D4 000034 0004+00 1/2 0/0 0/0 .rodata          @3942 */
SECTION_RODATA static f32 const lit_3942 = 560.0f;
COMPILER_STRIP_GATE(0x807B44D0, &lit_3942);

/* 807B03C4-807B0434 000124 0070+00 1/1 0/0 0/0 .text            s_md_sub1__FPvPv */
static void s_md_sub1(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B44D4-807B44D8 000038 0004+00 1/1 0/0 0/0 .rodata          @3956 */
SECTION_RODATA static f32 const lit_3956 = -950.0f;
COMPILER_STRIP_GATE(0x807B44D4, &lit_3956);

/* 807B0434-807B04A4 000194 0070+00 1/1 0/0 0/0 .text            s_md_sub2__FPvPv */
static void s_md_sub2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B44D8-807B44DC 00003C 0004+00 1/1 0/0 0/0 .rodata          @3970 */
SECTION_RODATA static f32 const lit_3970 = -1.0f;
COMPILER_STRIP_GATE(0x807B44D8, &lit_3970);

/* 807B4644-807B4644 0001A8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807B4644 = "E_th";
#pragma pop

/* 807B04A4-807B0550 000204 00AC+00 6/6 0/0 0/0 .text            anm_init__FP10e_th_classifUcf */
static void anm_init(e_th_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 807B0550-807B0630 0002B0 00E0+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B44DC-807B44E0 000040 0004+00 0/2 0/0 0/0 .rodata          @4055 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4055 = 13.0f;
COMPILER_STRIP_GATE(0x807B44DC, &lit_4055);
#pragma pop

/* 807B44E0-807B44E4 000044 0004+00 0/2 0/0 0/0 .rodata          @4056 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4056 = -10.0f;
COMPILER_STRIP_GATE(0x807B44E0, &lit_4056);
#pragma pop

/* 807B44E4-807B44E8 000048 0004+00 0/1 0/0 0/0 .rodata          @4057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4057 = 0.75f;
COMPILER_STRIP_GATE(0x807B44E4, &lit_4057);
#pragma pop

/* 807B44E8-807B44EC 00004C 0004+00 0/1 0/0 0/0 .rodata          @4058 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4058 = 0x3A83126F;
COMPILER_STRIP_GATE(0x807B44E8, &lit_4058);
#pragma pop

/* 807B44EC-807B44F0 000050 0004+00 0/1 0/0 0/0 .rodata          @4059 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4059 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x807B44EC, &lit_4059);
#pragma pop

/* 807B44F0-807B44F4 000054 0004+00 0/1 0/0 0/0 .rodata          @4060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4060 = 2.0f;
COMPILER_STRIP_GATE(0x807B44F0, &lit_4060);
#pragma pop

/* 807B44F4-807B44F8 000058 0004+00 0/4 0/0 0/0 .rodata          @4061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4061 = 10.0f;
COMPILER_STRIP_GATE(0x807B44F4, &lit_4061);
#pragma pop

/* 807B44F8-807B44FC 00005C 0004+00 0/2 0/0 0/0 .rodata          @4062 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4062 = 15.0f;
COMPILER_STRIP_GATE(0x807B44F8, &lit_4062);
#pragma pop

/* 807B44FC-807B4504 000060 0008+00 0/1 0/0 0/0 .rodata          @4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4064[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807B44FC, &lit_4064);
#pragma pop

/* 807B0630-807B09A4 000390 0374+00 1/1 0/0 0/0 .text ke_control__FP10e_th_classP7th_ke_si */
static void ke_control(e_th_class* param_0, th_ke_s* param_1, int param_2) {
    // NONMATCHING
}

/* 807B09A4-807B09E8 000704 0044+00 1/1 0/0 0/0 .text ke_pos_set__FP10e_th_classP7th_ke_si */
static void ke_pos_set(e_th_class* param_0, th_ke_s* param_1, int param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B4504-807B4508 000068 0004+00 1/1 0/0 0/0 .rodata          @4087 */
SECTION_RODATA static f32 const lit_4087 = 3.5f;
COMPILER_STRIP_GATE(0x807B4504, &lit_4087);

/* 807B09E8-807B0A6C 000748 0084+00 1/1 0/0 0/0 .text            ke_disp__FP10e_th_class */
static void ke_disp(e_th_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B4508-807B450C 00006C 0004+00 0/1 0/0 0/0 .rodata          @4127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4127 = 27.0f;
COMPILER_STRIP_GATE(0x807B4508, &lit_4127);
#pragma pop

/* 807B450C-807B4510 000070 0004+00 0/3 0/0 0/0 .rodata          @4128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4128 = 35.0f;
COMPILER_STRIP_GATE(0x807B450C, &lit_4128);
#pragma pop

/* 807B0A6C-807B0BD0 0007CC 0164+00 1/1 0/0 0/0 .text            ke_move__FP10e_th_class */
static void ke_move(e_th_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B4510-807B4514 000074 0004+00 0/2 0/0 0/0 .rodata          @4164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4164 = 50.0f;
COMPILER_STRIP_GATE(0x807B4510, &lit_4164);
#pragma pop

/* 807B4514-807B4518 000078 0004+00 0/1 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165 = 1200.0f;
COMPILER_STRIP_GATE(0x807B4514, &lit_4165);
#pragma pop

/* 807B0BD0-807B0D7C 000930 01AC+00 1/0 0/0 0/0 .text            daE_TH_Draw__FP10e_th_class */
static void daE_TH_Draw(e_th_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B4518-807B451C 00007C 0004+00 0/2 0/0 0/0 .rodata          @4263 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4263 = 60.0f;
COMPILER_STRIP_GATE(0x807B4518, &lit_4263);
#pragma pop

/* 807B451C-807B4520 000080 0004+00 0/3 0/0 0/0 .rodata          @4264 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4264 = 5.0f;
COMPILER_STRIP_GATE(0x807B451C, &lit_4264);
#pragma pop

/* 807B0D7C-807B0EFC 000ADC 0180+00 1/1 0/0 0/0 .text            e_th_wait__FP10e_th_class */
static void e_th_wait(e_th_class* param_0) {
    // NONMATCHING
}

/* 807B0EFC-807B0F20 000C5C 0024+00 1/1 0/0 0/0 .text            e_th_spin__FP10e_th_class */
static void e_th_spin(e_th_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B4520-807B4524 000084 0004+00 0/2 0/0 0/0 .rodata          @4351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4351 = 0.5f;
COMPILER_STRIP_GATE(0x807B4520, &lit_4351);
#pragma pop

/* 807B0F20-807B12B0 000C80 0390+00 2/1 0/0 0/0 .text            e_th_spin_B__FP10e_th_class */
static void e_th_spin_B(e_th_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B4524-807B4528 000088 0004+00 0/3 0/0 0/0 .rodata          @4352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4352 = 3.0f;
COMPILER_STRIP_GATE(0x807B4524, &lit_4352);
#pragma pop

/* 807B4528-807B452C 00008C 0004+00 0/0 0/0 0/0 .rodata          @4353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4353 = 200.0f;
COMPILER_STRIP_GATE(0x807B4528, &lit_4353);
#pragma pop

/* 807B452C-807B4530 000090 0004+00 0/1 0/0 0/0 .rodata          @4354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4354 = 4.0f;
COMPILER_STRIP_GATE(0x807B452C, &lit_4354);
#pragma pop

/* 807B12B0-807B141C 001010 016C+00 1/1 0/0 0/0 .text            e_th_shot__FP10e_th_class */
static void e_th_shot(e_th_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B4530-807B4534 000094 0004+00 0/0 0/0 0/0 .rodata          @4355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4355 = 1.5f;
COMPILER_STRIP_GATE(0x807B4530, &lit_4355);
#pragma pop

/* 807B4534-807B4538 000098 0004+00 0/0 0/0 0/0 .rodata          @4356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4356 = 1.0f / 40.0f;
COMPILER_STRIP_GATE(0x807B4534, &lit_4356);
#pragma pop

/* 807B4538-807B453C 00009C 0004+00 0/2 0/0 0/0 .rodata          @4462 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4462 = 300.0f;
COMPILER_STRIP_GATE(0x807B4538, &lit_4462);
#pragma pop

/* 807B141C-807B1670 00117C 0254+00 1/1 0/0 0/0 .text            e_th_return__FP10e_th_class */
static void e_th_return(e_th_class* param_0) {
    // NONMATCHING
}

/* 807B1670-807B176C 0013D0 00FC+00 1/1 0/0 0/0 .text            e_th_damage__FP10e_th_class */
static void e_th_damage(e_th_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B453C-807B4540 0000A0 0004+00 1/1 0/0 0/0 .rodata          @4513 */
SECTION_RODATA static f32 const lit_4513 = -1200.0f;
COMPILER_STRIP_GATE(0x807B453C, &lit_4513);

/* 807B176C-807B18C0 0014CC 0154+00 1/1 0/0 0/0 .text            e_th_start__FP10e_th_class */
static void e_th_start(e_th_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B4540-807B4544 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4540 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4540 = 10000.0f;
COMPILER_STRIP_GATE(0x807B4540, &lit_4540);
#pragma pop

/* 807B4544-807B4548 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4541 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4541 = -30.0f;
COMPILER_STRIP_GATE(0x807B4544, &lit_4541);
#pragma pop

/* 807B4548-807B454C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4542 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4542 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x807B4548, &lit_4542);
#pragma pop

/* 807B18C0-807B19AC 001620 00EC+00 1/1 0/0 0/0 .text            e_th_end__FP10e_th_class */
static void e_th_end(e_th_class* param_0) {
    // NONMATCHING
}

/* 807B19AC-807B1B78 00170C 01CC+00 1/1 0/0 0/0 .text            damage_check__FP10e_th_class */
static void damage_check(e_th_class* param_0) {
    // NONMATCHING
}

/* 807B1B78-807B1EB4 0018D8 033C+00 2/1 0/0 0/0 .text            action__FP10e_th_class */
static void action(e_th_class* param_0) {
    // NONMATCHING
}

/* 807B1EB4-807B1F98 001C14 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP10e_th_classf */
static void cam_3d_morf(e_th_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B454C-807B4550 0000B0 0004+00 0/0 0/0 0/0 .rodata          @4678 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4678 = -150.0f;
COMPILER_STRIP_GATE(0x807B454C, &lit_4678);
#pragma pop

/* 807B4550-807B4554 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4679 = -50.0f;
COMPILER_STRIP_GATE(0x807B4550, &lit_4679);
#pragma pop

/* 807B4554-807B4558 0000B8 0004+00 0/0 0/0 0/0 .rodata          @4680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4680 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x807B4554, &lit_4680);
#pragma pop

/* 807B4558-807B455C 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4681 = 500.0f;
COMPILER_STRIP_GATE(0x807B4558, &lit_4681);
#pragma pop

/* 807B455C-807B4560 0000C0 0004+00 0/1 0/0 0/0 .rodata          @5086 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5086 = 55.0f;
COMPILER_STRIP_GATE(0x807B455C, &lit_5086);
#pragma pop

/* 807B4560-807B4564 0000C4 0004+00 0/1 0/0 0/0 .rodata          @5087 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5087 = 19.0f / 10.0f;
COMPILER_STRIP_GATE(0x807B4560, &lit_5087);
#pragma pop

/* 807B4564-807B4568 0000C8 0004+00 0/1 0/0 0/0 .rodata          @5088 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5088 = -1127.0f;
COMPILER_STRIP_GATE(0x807B4564, &lit_5088);
#pragma pop

/* 807B4568-807B456C 0000CC 0004+00 0/1 0/0 0/0 .rodata          @5089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5089 = 140.0f;
COMPILER_STRIP_GATE(0x807B4568, &lit_5089);
#pragma pop

/* 807B456C-807B4570 0000D0 0004+00 0/1 0/0 0/0 .rodata          @5090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5090 = -1262.0f;
COMPILER_STRIP_GATE(0x807B456C, &lit_5090);
#pragma pop

/* 807B4570-807B4574 0000D4 0004+00 0/1 0/0 0/0 .rodata          @5091 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5091 = 130.0f;
COMPILER_STRIP_GATE(0x807B4570, &lit_5091);
#pragma pop

/* 807B4574-807B4578 0000D8 0004+00 0/1 0/0 0/0 .rodata          @5092 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5092 = 98.0f;
COMPILER_STRIP_GATE(0x807B4574, &lit_5092);
#pragma pop

/* 807B4578-807B457C 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5093 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5093 = -963.0f;
COMPILER_STRIP_GATE(0x807B4578, &lit_5093);
#pragma pop

/* 807B457C-807B4580 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5094 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5094 = 30.0f;
COMPILER_STRIP_GATE(0x807B457C, &lit_5094);
#pragma pop

/* 807B4580-807B4584 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5095 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5095 = 180.0f;
COMPILER_STRIP_GATE(0x807B4580, &lit_5095);
#pragma pop

/* 807B4584-807B4588 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5096 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5096 = -1043.0f;
COMPILER_STRIP_GATE(0x807B4584, &lit_5096);
#pragma pop

/* 807B4588-807B458C 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5097 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5097 = 84.0f;
COMPILER_STRIP_GATE(0x807B4588, &lit_5097);
#pragma pop

/* 807B458C-807B4590 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5098 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5098 = -1344.0f;
COMPILER_STRIP_GATE(0x807B458C, &lit_5098);
#pragma pop

/* 807B1F98-807B2DEC 001CF8 0E54+00 2/1 0/0 0/0 .text            demo_camera__FP10e_th_class */
static void demo_camera(e_th_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B4590-807B4594 0000F4 0004+00 0/0 0/0 0/0 .rodata          @5099 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5099 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x807B4590, &lit_5099);
#pragma pop

/* 807B4594-807B4598 0000F8 0004+00 0/0 0/0 0/0 .rodata          @5100 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5100 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x807B4594, &lit_5100);
#pragma pop

/* 807B4598-807B459C 0000FC 0004+00 0/0 0/0 0/0 .rodata          @5101 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5101 = -172.0f;
COMPILER_STRIP_GATE(0x807B4598, &lit_5101);
#pragma pop

/* 807B459C-807B45A0 000100 0004+00 0/0 0/0 0/0 .rodata          @5102 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5102 = 0x42C76666;
COMPILER_STRIP_GATE(0x807B459C, &lit_5102);
#pragma pop

/* 807B45A0-807B45A4 000104 0004+00 0/0 0/0 0/0 .rodata          @5103 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5103 = -1016.0f;
COMPILER_STRIP_GATE(0x807B45A0, &lit_5103);
#pragma pop

/* 807B45A4-807B45A8 000108 0004+00 0/0 0/0 0/0 .rodata          @5104 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5104 = -210.0f;
COMPILER_STRIP_GATE(0x807B45A4, &lit_5104);
#pragma pop

/* 807B45A8-807B45AC 00010C 0004+00 0/0 0/0 0/0 .rodata          @5105 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5105 = -1330.0f;
COMPILER_STRIP_GATE(0x807B45A8, &lit_5105);
#pragma pop

/* 807B45AC-807B45B0 000110 0004+00 0/1 0/0 0/0 .rodata          @5106 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5106 = -300.0f;
COMPILER_STRIP_GATE(0x807B45AC, &lit_5106);
#pragma pop

/* 807B45B0-807B45B4 000114 0004+00 0/0 0/0 0/0 .rodata          @5107 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5107 = -1104.0f;
COMPILER_STRIP_GATE(0x807B45B0, &lit_5107);
#pragma pop

/* 807B45B4-807B45B8 000118 0004+00 0/0 0/0 0/0 .rodata          @5108 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5108 = -56.0f;
COMPILER_STRIP_GATE(0x807B45B4, &lit_5108);
#pragma pop

/* 807B45B8-807B45BC 00011C 0004+00 0/0 0/0 0/0 .rodata          @5109 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5109 = 0x4360B333;
COMPILER_STRIP_GATE(0x807B45B8, &lit_5109);
#pragma pop

/* 807B45BC-807B45C0 000120 0004+00 0/0 0/0 0/0 .rodata          @5110 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5110 = 598.0f;
COMPILER_STRIP_GATE(0x807B45BC, &lit_5110);
#pragma pop

/* 807B45C0-807B45C4 000124 0004+00 0/0 0/0 0/0 .rodata          @5111 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5111 = -54.5f;
COMPILER_STRIP_GATE(0x807B45C0, &lit_5111);
#pragma pop

/* 807B45C4-807B45C8 000128 0004+00 0/0 0/0 0/0 .rodata          @5112 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5112 = 177.0f;
COMPILER_STRIP_GATE(0x807B45C4, &lit_5112);
#pragma pop

/* 807B45C8-807B45CC 00012C 0004+00 0/0 0/0 0/0 .rodata          @5113 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5113 = 285.0f;
COMPILER_STRIP_GATE(0x807B45C8, &lit_5113);
#pragma pop

/* 807B45CC-807B45D0 000130 0004+00 0/0 0/0 0/0 .rodata          @5114 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5114 = 0x3B03126F;
COMPILER_STRIP_GATE(0x807B45CC, &lit_5114);
#pragma pop

/* 807B45D0-807B45D4 000134 0004+00 0/0 0/0 0/0 .rodata          @5115 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5115 = -184.0f;
COMPILER_STRIP_GATE(0x807B45D0, &lit_5115);
#pragma pop

/* 807B45D4-807B45D8 000138 0004+00 0/0 0/0 0/0 .rodata          @5116 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5116 = 0x42B56666;
COMPILER_STRIP_GATE(0x807B45D4, &lit_5116);
#pragma pop

/* 807B45D8-807B45DC 00013C 0004+00 0/0 0/0 0/0 .rodata          @5117 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5117 = -1028.0f;
COMPILER_STRIP_GATE(0x807B45D8, &lit_5117);
#pragma pop

/* 807B45DC-807B45E0 000140 0004+00 0/0 0/0 0/0 .rodata          @5118 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5118 = -256.5f;
COMPILER_STRIP_GATE(0x807B45DC, &lit_5118);
#pragma pop

/* 807B45E0-807B45E4 000144 0004+00 0/0 0/0 0/0 .rodata          @5119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5119 = 34.0f;
COMPILER_STRIP_GATE(0x807B45E0, &lit_5119);
#pragma pop

/* 807B45E4-807B45E8 000148 0004+00 0/0 0/0 0/0 .rodata          @5120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5120 = -1331.0f;
COMPILER_STRIP_GATE(0x807B45E4, &lit_5120);
#pragma pop

/* 807B45E8-807B45EC 00014C 0004+00 0/0 0/0 0/0 .rodata          @5121 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5121 = 0x399D4952;
COMPILER_STRIP_GATE(0x807B45E8, &lit_5121);
#pragma pop

/* 807B45EC-807B45F0 000150 0004+00 0/1 0/0 0/0 .rodata          @5122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5122 = 400.0f;
COMPILER_STRIP_GATE(0x807B45EC, &lit_5122);
#pragma pop

/* 807B45F0-807B45F4 000154 0004+00 0/0 0/0 0/0 .rodata          @5123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5123 = 80.0f;
COMPILER_STRIP_GATE(0x807B45F0, &lit_5123);
#pragma pop

/* 807B45F4-807B45F8 000158 0004+00 0/0 0/0 0/0 .rodata          @5124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5124 = 150.0f;
COMPILER_STRIP_GATE(0x807B45F4, &lit_5124);
#pragma pop

/* 807B45F8-807B45FC 00015C 0004+00 0/1 0/0 0/0 .rodata          @5125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5125 = 20.0f;
COMPILER_STRIP_GATE(0x807B45F8, &lit_5125);
#pragma pop

/* 807B45FC-807B4600 000160 0004+00 0/0 0/0 0/0 .rodata          @5126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5126 = 2.5f;
COMPILER_STRIP_GATE(0x807B45FC, &lit_5126);
#pragma pop

/* 807B4600-807B4604 000164 0004+00 0/0 0/0 0/0 .rodata          @5127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5127 = 170.0f;
COMPILER_STRIP_GATE(0x807B4600, &lit_5127);
#pragma pop

/* 807B4604-807B4608 000168 0004+00 0/0 0/0 0/0 .rodata          @5128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5128 = -80.0f;
COMPILER_STRIP_GATE(0x807B4604, &lit_5128);
#pragma pop

/* 807B4608-807B460C 00016C 0004+00 0/0 0/0 0/0 .rodata          @5129 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5129 = -200.0f;
COMPILER_STRIP_GATE(0x807B4608, &lit_5129);
#pragma pop

/* 807B460C-807B4610 000170 0004+00 0/0 0/0 0/0 .rodata          @5130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5130 = 70.0f;
COMPILER_STRIP_GATE(0x807B460C, &lit_5130);
#pragma pop

/* 807B4610-807B4614 000174 0004+00 0/0 0/0 0/0 .rodata          @5131 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5131 = 25.0f;
COMPILER_STRIP_GATE(0x807B4610, &lit_5131);
#pragma pop

/* 807B4614-807B4618 000178 0004+00 0/0 0/0 0/0 .rodata          @5132 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5132 = -55.0f;
COMPILER_STRIP_GATE(0x807B4614, &lit_5132);
#pragma pop

/* 807B4618-807B461C 00017C 0004+00 0/1 0/0 0/0 .rodata          @5191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5191 = 45.0f;
COMPILER_STRIP_GATE(0x807B4618, &lit_5191);
#pragma pop

/* 807B461C-807B4620 000180 0004+00 0/1 0/0 0/0 .rodata          @5192 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5192 = 7.0f;
COMPILER_STRIP_GATE(0x807B461C, &lit_5192);
#pragma pop

/* 807B4620-807B4624 000184 0004+00 0/1 0/0 0/0 .rodata          @5193 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5193 = 18.0f;
COMPILER_STRIP_GATE(0x807B4620, &lit_5193);
#pragma pop

/* 807B2DEC-807B300C 002B4C 0220+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_th_class */
static void anm_se_set(e_th_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B4624-807B4628 000188 0004+00 0/1 0/0 0/0 .rodata          @5312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5312 = 75.0f;
COMPILER_STRIP_GATE(0x807B4624, &lit_5312);
#pragma pop

/* 807B4628-807B462C 00018C 0004+00 0/1 0/0 0/0 .rodata          @5313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5313 = -50000.0f;
COMPILER_STRIP_GATE(0x807B4628, &lit_5313);
#pragma pop

/* 807B462C-807B4630 000190 0004+00 0/1 0/0 0/0 .rodata          @5314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5314 = 20000.0f;
COMPILER_STRIP_GATE(0x807B462C, &lit_5314);
#pragma pop

/* 807B4630-807B4634 000194 0004+00 0/1 0/0 0/0 .rodata          @5315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5315 = 18000.0f;
COMPILER_STRIP_GATE(0x807B4630, &lit_5315);
#pragma pop

/* 807B4634-807B4638 000198 0004+00 0/1 0/0 0/0 .rodata          @5316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5316 = 40.0f;
COMPILER_STRIP_GATE(0x807B4634, &lit_5316);
#pragma pop

/* 807B4638-807B463C 00019C 0004+00 0/1 0/0 0/0 .rodata          @5317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5317 = -20.0f;
COMPILER_STRIP_GATE(0x807B4638, &lit_5317);
#pragma pop

/* 807B4870-807B4874 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_807B4870[4];

/* 807B4874-807B4880 00000C 000C+00 1/1 0/0 0/0 .bss             @3922 */
static u8 lit_3922[12];

/* 807B4880-807B4898 000018 0018+00 3/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[24];

/* 807B300C-807B3514 002D6C 0508+00 2/1 0/0 0/0 .text            daE_TH_Execute__FP10e_th_class */
static void daE_TH_Execute(e_th_class* param_0) {
    // NONMATCHING
}

/* 807B3514-807B351C 003274 0008+00 1/0 0/0 0/0 .text            daE_TH_IsDelete__FP10e_th_class */
static bool daE_TH_IsDelete(e_th_class* param_0) {
    return true;
}

/* 807B351C-807B3584 00327C 0068+00 1/0 0/0 0/0 .text            daE_TH_Delete__FP10e_th_class */
static void daE_TH_Delete(e_th_class* param_0) {
    // NONMATCHING
}

/* 807B3584-807B36D0 0032E4 014C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B463C-807B4640 0001A0 0004+00 0/1 0/0 0/0 .rodata          @5526 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5526 = -500.0f;
COMPILER_STRIP_GATE(0x807B463C, &lit_5526);
#pragma pop

/* 807B4640-807B4644 0001A4 0004+00 0/1 0/0 0/0 .rodata          @5527 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5527 = 65535.0f;
COMPILER_STRIP_GATE(0x807B4640, &lit_5527);
#pragma pop

/* 807B36D0-807B3B58 003430 0488+00 1/0 0/0 0/0 .text            daE_TH_Create__FP10fopAc_ac_c */
static void daE_TH_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 807B3B58-807B3BD4 0038B8 007C+00 1/1 0/0 0/0 .text            __dt__7th_ke_sFv */
th_ke_s::~th_ke_s() {
    // NONMATCHING
}

/* 807B3BD4-807B3C3C 003934 0068+00 1/1 0/0 0/0 .text            __ct__7th_ke_sFv */
th_ke_s::th_ke_s() {
    // NONMATCHING
}

/* 807B3C3C-807B3C40 00399C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 807B3C40-807B3D0C 0039A0 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 807B3D0C-807B3D90 003A6C 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 807B3D90-807B3DD8 003AF0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 807B3DD8-807B3E20 003B38 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 807B3E20-807B3E7C 003B80 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 807B3E7C-807B3EEC 003BDC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 807B3EEC-807B3F5C 003C4C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 807B3F5C-807B3FA4 003CBC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 807B3FA4-807B3FEC 003D04 0048+00 2/1 0/0 0/0 .text            __dt__12daE_TH_HIO_cFv */
daE_TH_HIO_c::~daE_TH_HIO_c() {
    // NONMATCHING
}

/* 807B3FEC-807B4028 003D4C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_th_cpp */
void __sinit_d_a_e_th_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807B3FEC, __sinit_d_a_e_th_cpp);
#pragma pop

/* 807B4028-807B4030 003D88 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_807B4028() {
    // NONMATCHING
}

/* 807B4030-807B4038 003D90 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_807B4030() {
    // NONMATCHING
}

/* 807B444C-807B4488 0041AC 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 807B4644-807B4644 0001A8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/**
 * @file d_a_e_yg.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_yg.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"



//
// Forward References:
//

extern "C" void __ct__12daE_YG_HIO_cFv();
extern "C" static void anm_init__FP10e_yg_classifUcf();
extern "C" static void pl_check__FP10e_yg_classf();
extern "C" static void daE_YG_Draw__FP10e_yg_class();
extern "C" static void sibuki_set__FP10e_yg_class();
extern "C" static void ms_disappear__FP10e_yg_class();
extern "C" static void s_d_sub__FPvPv();
extern "C" static void search_dokuro__FP10e_yg_class();
extern "C" static void way_set__FP10e_yg_class();
extern "C" static void e_yg_normal__FP10e_yg_class();
extern "C" static void e_yg_attack__FP10e_yg_class();
extern "C" static void search_ground_1__FP10e_yg_class();
extern "C" void __ct__4cXyzFv();
extern "C" static void e_yg_swim__FP10e_yg_class();
extern "C" static void e_yg_dokuro__FP10e_yg_class();
extern "C" static void e_yg_damage__FP10e_yg_class();
extern "C" static void e_yg_wolfbite__FP10e_yg_class();
extern "C" static void e_yg_standby__FP10e_yg_class();
extern "C" static void damage_check__FP10e_yg_class();
extern "C" static void ke_control__FP10e_yg_classP7yg_ke_sif();
extern "C" static void ke_move__FP10e_yg_classP19mDoExt_3DlineMat0_cP7yg_ke_sif();
extern "C" static void ke_set__FP10e_yg_class();
extern "C" static void action__FP10e_yg_class();
extern "C" static void anm_se_set__FP10e_yg_class();
extern "C" static void daE_YG_Execute__FP10e_yg_class();
extern "C" static bool daE_YG_IsDelete__FP10e_yg_class();
extern "C" static void daE_YG_Delete__FP10e_yg_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_YG_Create__FP10fopAc_ac_c();
extern "C" void __dt__7yg_ke_sFv();
extern "C" void __ct__7yg_ke_sFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_YG_HIO_cFv();
extern "C" void __sinit_d_a_e_yg_cpp();
extern "C" static void func_807FC804();
extern "C" static void func_807FC80C();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_yg__stringBase0;

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
extern "C" void update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_wayBgCheck__FPC10fopAc_ac_cff();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
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
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void cM_initRnd2__Fiii();
extern "C" void cM_rndF2__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void MtxPush__Fv();
extern "C" void MtxPull__Fv();
extern "C" void func_802807E0();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_21();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_21();
extern "C" void _restgpr_22();
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
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 807FCCE0-807FCCE4 00002C 0004+00 0/3 0/0 0/0 .rodata          @3822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3822 = 15.0f;
COMPILER_STRIP_GATE(0x807FCCE0, &lit_3822);
#pragma pop

/* 807FCCE4-807FCCE8 000030 0004+00 0/6 0/0 0/0 .rodata          @3823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3823 = 40.0f;
COMPILER_STRIP_GATE(0x807FCCE4, &lit_3823);
#pragma pop

/* 807FCCE8-807FCCEC 000034 0004+00 0/1 0/0 0/0 .rodata          @3824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3824 = 4.0f;
COMPILER_STRIP_GATE(0x807FCCE8, &lit_3824);
#pragma pop

/* 807FCCEC-807FCCF0 000038 0004+00 0/1 0/0 0/0 .rodata          @3825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3825 = 450.0f;
COMPILER_STRIP_GATE(0x807FCCEC, &lit_3825);
#pragma pop

/* 807FCE34-807FCE94 -00001 0060+00 1/1 0/0 0/0 .data            @4282 */
SECTION_DATA static void* lit_4282[24] = {
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x58),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x78),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0xD0),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x1AC),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x21C),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2AC),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x2E8),
    (void*)(((char*)e_yg_attack__FP10e_yg_class) + 0x178),
};

/* 807FCE94-807FCEC0 -00001 002C+00 1/1 0/0 0/0 .data            @4898 */
SECTION_DATA static void* lit_4898[11] = {
    (void*)(((char*)action__FP10e_yg_class) + 0xE4),
    (void*)(((char*)action__FP10e_yg_class) + 0xF8),
    (void*)(((char*)action__FP10e_yg_class) + 0x10C),
    (void*)(((char*)action__FP10e_yg_class) + 0x118),
    (void*)(((char*)action__FP10e_yg_class) + 0x128),
    (void*)(((char*)action__FP10e_yg_class) + 0x140),
    (void*)(((char*)action__FP10e_yg_class) + 0x170),
    (void*)(((char*)action__FP10e_yg_class) + 0x170),
    (void*)(((char*)action__FP10e_yg_class) + 0x170),
    (void*)(((char*)action__FP10e_yg_class) + 0x170),
    (void*)(((char*)action__FP10e_yg_class) + 0x158),
};

/* 807FCEC0-807FCEC8 0000C4 0008+00 1/1 0/0 0/0 .data            eff_id$5034 */
SECTION_DATA static u8 eff_id_5034[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 807FCEC8-807FCF08 0000CC 0040+00 1/1 0/0 0/0 .data            cc_sph_src$5193 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xdafbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 807FCF08-807FCF48 00010C 0040+00 1/1 0/0 0/0 .data            at_sph_src$5194 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_SOFT_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
    } // mSphAttr
};

/* 807FCF48-807FCF68 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_YG_Method */
static actor_method_class l_daE_YG_Method = {
    (process_method_func)daE_YG_Create__FP10fopAc_ac_c,
    (process_method_func)daE_YG_Delete__FP10e_yg_class,
    (process_method_func)daE_YG_Execute__FP10e_yg_class,
    (process_method_func)daE_YG_IsDelete__FP10e_yg_class,
    (process_method_func)daE_YG_Draw__FP10e_yg_class,
};

/* 807FCF68-807FCF98 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_YG */
extern actor_process_profile_definition g_profile_E_YG = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_E_YG,             // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(e_yg_class),    // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  190,                   // mPriority
  &l_daE_YG_Method,      // sub_method
  0x00050120,            // mStatus
  fopAc_ENEMY_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 807FCF98-807FCFA4 00019C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 807FCFA4-807FCFB0 0001A8 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 807FCFB0-807FCFBC 0001B4 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 807FCFBC-807FCFD0 0001C0 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 807FCFD0-807FCFDC 0001D4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 807FCFDC-807FCFE8 0001E0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 807FCFE8-807FD00C 0001EC 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807FC80C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807FC804,
};

/* 807FD00C-807FD018 000210 000C+00 2/2 0/0 0/0 .data            __vt__12daE_YG_HIO_c */
SECTION_DATA extern void* __vt__12daE_YG_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_YG_HIO_cFv,
};

/* 807F834C-807F8394 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__12daE_YG_HIO_cFv */
daE_YG_HIO_c::daE_YG_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCCF0-807FCCF4 00003C 0004+00 1/2 0/0 0/0 .rodata          @3839 */
SECTION_RODATA static f32 const lit_3839 = -1.0f;
COMPILER_STRIP_GATE(0x807FCCF0, &lit_3839);

/* 807FCDF0-807FCDF0 00013C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807FCDF0 = "E_YG";
#pragma pop

/* 807F8394-807F8440 000134 00AC+00 7/7 0/0 0/0 .text            anm_init__FP10e_yg_classifUcf */
static void anm_init(e_yg_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 807F8440-807F848C 0001E0 004C+00 3/3 0/0 0/0 .text            pl_check__FP10e_yg_classf */
static void pl_check(e_yg_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCCF4-807FCCF8 000040 0004+00 0/1 0/0 0/0 .rodata          @3893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3893 = 400.0f;
COMPILER_STRIP_GATE(0x807FCCF4, &lit_3893);
#pragma pop

/* 807F848C-807F8610 00022C 0184+00 1/0 0/0 0/0 .text            daE_YG_Draw__FP10e_yg_class */
static void daE_YG_Draw(e_yg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCCF8-807FCCFC 000044 0004+00 1/4 0/0 0/0 .rodata          @3912 */
SECTION_RODATA static f32 const lit_3912 = 50.0f;
COMPILER_STRIP_GATE(0x807FCCF8, &lit_3912);

/* 807F8610-807F86F8 0003B0 00E8+00 2/2 0/0 0/0 .text            sibuki_set__FP10e_yg_class */
static void sibuki_set(e_yg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCCFC-807FCD00 000048 0004+00 0/1 0/0 0/0 .rodata          @4023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4023 = 13.0f / 20.0f;
COMPILER_STRIP_GATE(0x807FCCFC, &lit_4023);
#pragma pop

/* 807FCD00-807FCD04 00004C 0004+00 0/2 0/0 0/0 .rodata          @4024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4024 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x807FCD00, &lit_4024);
#pragma pop

/* 807FCD04-807FCD08 000050 0004+00 0/3 0/0 0/0 .rodata          @4025 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4025 = 60.0f;
COMPILER_STRIP_GATE(0x807FCD04, &lit_4025);
#pragma pop

/* 807FCD08-807FCD0C 000054 0004+00 0/1 0/0 0/0 .rodata          @4026 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4026 = 36.0f;
COMPILER_STRIP_GATE(0x807FCD08, &lit_4026);
#pragma pop

/* 807FCD0C-807FCD10 000058 0004+00 0/1 0/0 0/0 .rodata          @4027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4027 = -18.0f;
COMPILER_STRIP_GATE(0x807FCD0C, &lit_4027);
#pragma pop

/* 807FCD10-807FCD14 00005C 0004+00 0/1 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = 22.0f;
COMPILER_STRIP_GATE(0x807FCD10, &lit_4028);
#pragma pop

/* 807FCD14-807FCD18 000060 0004+00 0/1 0/0 0/0 .rodata          @4029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4029 = 45.0f;
COMPILER_STRIP_GATE(0x807FCD14, &lit_4029);
#pragma pop

/* 807FCD18-807FCD1C 000064 0004+00 0/3 0/0 0/0 .rodata          @4030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4030 = -2.0f;
COMPILER_STRIP_GATE(0x807FCD18, &lit_4030);
#pragma pop

/* 807FCD1C-807FCD20 000068 0004+00 0/1 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = -68.0f;
COMPILER_STRIP_GATE(0x807FCD1C, &lit_4031);
#pragma pop

/* 807FD060-807FD06C 000048 000C+00 0/1 0/0 0/0 .bss             @3817 */
#pragma push
#pragma force_active on
static u8 lit_3817[12];
#pragma pop

/* 807FD06C-807FD088 000054 001C+00 6/8 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 807FD088-807FD098 000070 000C+04 0/1 0/0 0/0 .bss             @3917 */
#pragma push
#pragma force_active on
static u8 lit_3917[12 + 4 /* padding */];
#pragma pop

/* 807FD098-807FD0A4 000080 000C+00 0/1 0/0 0/0 .bss             @3920 */
#pragma push
#pragma force_active on
static u8 lit_3920[12];
#pragma pop

/* 807FD0A4-807FD0B0 00008C 000C+00 0/1 0/0 0/0 .bss             @3921 */
#pragma push
#pragma force_active on
static u8 lit_3921[12];
#pragma pop

/* 807FD0B0-807FD0D4 000098 0024+00 0/1 0/0 0/0 .bss             e_pos$3916 */
#pragma push
#pragma force_active on
static u8 e_pos[36];
#pragma pop

/* 807F86F8-807F8A68 000498 0370+00 1/1 0/0 0/0 .text            ms_disappear__FP10e_yg_class */
static void ms_disappear(e_yg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FD0D4-807FD124 0000BC 0050+00 2/2 0/0 0/0 .bss             target_info */
static u8 target_info[80];

/* 807FD124-807FD128 00010C 0004+00 2/2 0/0 0/0 .bss             target_info_count */
static u8 target_info_count[4];

/* 807F8A68-807F8AE4 000808 007C+00 1/1 0/0 0/0 .text            s_d_sub__FPvPv */
static void s_d_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCD20-807FCD24 00006C 0004+00 0/2 0/0 0/0 .rodata          @4097 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4097 = 1000.0f;
COMPILER_STRIP_GATE(0x807FCD20, &lit_4097);
#pragma pop

/* 807F8AE4-807F8C60 000884 017C+00 1/1 0/0 0/0 .text            search_dokuro__FP10e_yg_class */
static void search_dokuro(e_yg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCD24-807FCD28 000070 0004+00 0/3 0/0 0/0 .rodata          @4144 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4144 = 65535.0f;
COMPILER_STRIP_GATE(0x807FCD24, &lit_4144);
#pragma pop

/* 807FCD28-807FCD2C 000074 0004+00 0/1 0/0 0/0 .rodata          @4145 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4145 = 150.0f;
COMPILER_STRIP_GATE(0x807FCD28, &lit_4145);
#pragma pop

/* 807F8C60-807F8DD8 000A00 0178+00 1/1 0/0 0/0 .text            way_set__FP10e_yg_class */
static void way_set(e_yg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCD2C-807FCD30 000078 0004+00 0/5 0/0 0/0 .rodata          @4192 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4192 = 3.0f;
COMPILER_STRIP_GATE(0x807FCD2C, &lit_4192);
#pragma pop

/* 807FCD30-807FCD34 00007C 0004+00 0/6 0/0 0/0 .rodata          @4193 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4193 = 30.0f;
COMPILER_STRIP_GATE(0x807FCD30, &lit_4193);
#pragma pop

/* 807FCD34-807FCD38 000080 0004+00 0/2 0/0 0/0 .rodata          @4194 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4194 = 2000.0f;
COMPILER_STRIP_GATE(0x807FCD34, &lit_4194);
#pragma pop

/* 807FCD38-807FCD3C 000084 0004+00 0/2 0/0 0/0 .rodata          @4195 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4195 = 200.0f;
COMPILER_STRIP_GATE(0x807FCD38, &lit_4195);
#pragma pop

/* 807FCD3C-807FCD40 000088 0004+00 0/1 0/0 0/0 .rodata          @4196 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4196 = 1.5f;
COMPILER_STRIP_GATE(0x807FCD3C, &lit_4196);
#pragma pop

/* 807FCD40-807FCD44 00008C 0004+00 0/1 0/0 0/0 .rodata          @4197 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4197 = 4000.0f;
COMPILER_STRIP_GATE(0x807FCD40, &lit_4197);
#pragma pop

/* 807FCD44-807FCD48 000090 0004+00 0/1 0/0 0/0 .rodata          @4198 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4198 = 0.25f;
COMPILER_STRIP_GATE(0x807FCD44, &lit_4198);
#pragma pop

/* 807F8DD8-807F9154 000B78 037C+00 1/1 0/0 0/0 .text            e_yg_normal__FP10e_yg_class */
static void e_yg_normal(e_yg_class* param_0) {
    // NONMATCHING
}

/* 807F9154-807F94E8 000EF4 0394+00 2/1 0/0 0/0 .text            e_yg_attack__FP10e_yg_class */
static void e_yg_attack(e_yg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCD48-807FCD4C 000094 0004+00 0/2 0/0 0/0 .rodata          @4280 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4280 = 300.0f;
COMPILER_STRIP_GATE(0x807FCD48, &lit_4280);
#pragma pop

/* 807FCD4C-807FCD50 000098 0004+00 0/6 0/0 0/0 .rodata          @4281 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4281 = 10.0f;
COMPILER_STRIP_GATE(0x807FCD4C, &lit_4281);
#pragma pop

/* 807FCD50-807FCD54 00009C 0004+00 0/2 0/0 0/0 .rodata          @4398 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4398 = 70.0f;
COMPILER_STRIP_GATE(0x807FCD50, &lit_4398);
#pragma pop

/* 807FCD54-807FCD58 0000A0 0004+00 0/3 0/0 0/0 .rodata          @4399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4399 = 10000.0f;
COMPILER_STRIP_GATE(0x807FCD54, &lit_4399);
#pragma pop

/* 807F94E8-807F99CC 001288 04E4+00 1/1 0/0 0/0 .text            search_ground_1__FP10e_yg_class */
static void search_ground_1(e_yg_class* param_0) {
    // NONMATCHING
}

/* 807F99CC-807F99D0 00176C 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* ############################################################################################## */
/* 807FCD58-807FCD5C 0000A4 0004+00 0/4 0/0 0/0 .rodata          @4430 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4430 = 5.0f;
COMPILER_STRIP_GATE(0x807FCD58, &lit_4430);
#pragma pop

/* 807FCD5C-807FCD60 0000A8 0004+00 0/3 0/0 0/0 .rodata          @4431 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4431 = 2.0f;
COMPILER_STRIP_GATE(0x807FCD5C, &lit_4431);
#pragma pop

/* 807FCD60-807FCD64 0000AC 0004+00 0/3 0/0 0/0 .rodata          @4432 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4432 = 8.0f;
COMPILER_STRIP_GATE(0x807FCD60, &lit_4432);
#pragma pop

/* 807FCD64-807FCD68 0000B0 0004+00 0/3 0/0 0/0 .rodata          @4433 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4433 = 0.5f;
COMPILER_STRIP_GATE(0x807FCD64, &lit_4433);
#pragma pop

/* 807FCD68-807FCD6C 0000B4 0004+00 0/3 0/0 0/0 .rodata          @4434 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4434 = 20.0f;
COMPILER_STRIP_GATE(0x807FCD68, &lit_4434);
#pragma pop

/* 807F99D0-807F9BB8 001770 01E8+00 1/1 0/0 0/0 .text            e_yg_swim__FP10e_yg_class */
static void e_yg_swim(e_yg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCD6C-807FCD70 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4500 = 75.0f;
COMPILER_STRIP_GATE(0x807FCD6C, &lit_4500);
#pragma pop

/* 807FCD70-807FCD74 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4501 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4501 = 90.0f;
COMPILER_STRIP_GATE(0x807FCD70, &lit_4501);
#pragma pop

/* 807FCD74-807FCD78 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4502 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4502 = 65.0f;
COMPILER_STRIP_GATE(0x807FCD74, &lit_4502);
#pragma pop

/* 807F9BB8-807F9EF8 001958 0340+00 1/1 0/0 0/0 .text            e_yg_dokuro__FP10e_yg_class */
static void e_yg_dokuro(e_yg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCD78-807FCD7C 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4532 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4532 = -30.0f;
COMPILER_STRIP_GATE(0x807FCD78, &lit_4532);
#pragma pop

/* 807F9EF8-807FA14C 001C98 0254+00 1/1 0/0 0/0 .text            e_yg_damage__FP10e_yg_class */
static void e_yg_damage(e_yg_class* param_0) {
    // NONMATCHING
}

/* 807FA14C-807FA284 001EEC 0138+00 1/1 0/0 0/0 .text            e_yg_wolfbite__FP10e_yg_class */
static void e_yg_wolfbite(e_yg_class* param_0) {
    // NONMATCHING
}

/* 807FA284-807FA2E4 002024 0060+00 1/1 0/0 0/0 .text            e_yg_standby__FP10e_yg_class */
static void e_yg_standby(e_yg_class* param_0) {
    // NONMATCHING
}

/* 807FA2E4-807FA478 002084 0194+00 1/1 0/0 0/0 .text            damage_check__FP10e_yg_class */
static void damage_check(e_yg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCD7C-807FCD80 0000C8 0004+00 0/2 0/0 0/0 .rodata          @4658 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4658 = -5.0f;
COMPILER_STRIP_GATE(0x807FCD7C, &lit_4658);
#pragma pop

/* 807FCD80-807FCD84 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4659 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4659 = -12.0f;
COMPILER_STRIP_GATE(0x807FCD80, &lit_4659);
#pragma pop

/* 807FCD84-807FCD88 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4660 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4660 = 65536.0f;
COMPILER_STRIP_GATE(0x807FCD84, &lit_4660);
#pragma pop

/* 807FCD88-807FCD8C 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4661 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4661 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x807FCD88, &lit_4661);
#pragma pop

/* 807FCD8C-807FCD94 0000D8 0004+04 0/1 0/0 0/0 .rodata          @4662 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4662[1 + 1 /* padding */] = {
    4.0f / 5.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x807FCD8C, &lit_4662);
#pragma pop

/* 807FCD94-807FCD9C 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4664 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4664[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807FCD94, &lit_4664);
#pragma pop

/* 807FA478-807FA7B0 002218 0338+00 1/1 0/0 0/0 .text ke_control__FP10e_yg_classP7yg_ke_sif */
static void ke_control(e_yg_class* param_0, yg_ke_s* param_1, int param_2, f32 param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCD9C-807FCDA0 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4687 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4687 = 3.5f;
COMPILER_STRIP_GATE(0x807FCD9C, &lit_4687);
#pragma pop

/* 807FCDA0-807FCDA4 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4688 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4688 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x807FCDA0, &lit_4688);
#pragma pop

/* 807FA7B0-807FA888 002550 00D8+00 1/1 0/0 0/0 .text
 * ke_move__FP10e_yg_classP19mDoExt_3DlineMat0_cP7yg_ke_sif     */
static void ke_move(e_yg_class* param_0, mDoExt_3DlineMat0_c* param_1, yg_ke_s* param_2,
                        int param_3, f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FD128-807FD134 000110 000C+00 0/1 0/0 0/0 .bss             @4689 */
#pragma push
#pragma force_active on
static u8 lit_4689[12];
#pragma pop

/* 807FD134-807FD140 00011C 000C+00 0/1 0/0 0/0 .bss             @4690 */
#pragma push
#pragma force_active on
static u8 lit_4690[12];
#pragma pop

/* 807FD140-807FD14C 000128 000C+00 0/1 0/0 0/0 .bss             @4691 */
#pragma push
#pragma force_active on
static u8 lit_4691[12];
#pragma pop

/* 807FD14C-807FD158 000134 000C+00 0/1 0/0 0/0 .bss             @4692 */
#pragma push
#pragma force_active on
static u8 lit_4692[12];
#pragma pop

/* 807FD158-807FD164 000140 000C+00 0/1 0/0 0/0 .bss             @4693 */
#pragma push
#pragma force_active on
static u8 lit_4693[12];
#pragma pop

/* 807FD164-807FD170 00014C 000C+00 0/1 0/0 0/0 .bss             @4694 */
#pragma push
#pragma force_active on
static u8 lit_4694[12];
#pragma pop

/* 807FD170-807FD17C 000158 000C+00 0/1 0/0 0/0 .bss             @4695 */
#pragma push
#pragma force_active on
static u8 lit_4695[12];
#pragma pop

/* 807FD17C-807FD188 000164 000C+00 0/1 0/0 0/0 .bss             @4696 */
#pragma push
#pragma force_active on
static u8 lit_4696[12];
#pragma pop

/* 807FD188-807FD194 000170 000C+00 0/1 0/0 0/0 .bss             @4697 */
#pragma push
#pragma force_active on
static u8 lit_4697[12];
#pragma pop

/* 807FD194-807FD1A0 00017C 000C+00 0/1 0/0 0/0 .bss             @4698 */
#pragma push
#pragma force_active on
static u8 lit_4698[12];
#pragma pop

/* 807FD1A0-807FD1AC 000188 000C+00 0/1 0/0 0/0 .bss             @4699 */
#pragma push
#pragma force_active on
static u8 lit_4699[12];
#pragma pop

/* 807FD1AC-807FD1B8 000194 000C+00 0/1 0/0 0/0 .bss             @4700 */
#pragma push
#pragma force_active on
static u8 lit_4700[12];
#pragma pop

/* 807FD1B8-807FD1C4 0001A0 000C+00 0/1 0/0 0/0 .bss             @4701 */
#pragma push
#pragma force_active on
static u8 lit_4701[12];
#pragma pop

/* 807FD1C4-807FD260 0001AC 009C+00 1/2 0/0 0/0 .bss             ke_p */
static u8 ke_p[156];

/* 807FD260-807FD26C 000248 000C+00 0/1 0/0 0/0 .bss             @4702 */
#pragma push
#pragma force_active on
static u8 lit_4702[12];
#pragma pop

/* 807FD26C-807FD278 000254 000C+00 0/1 0/0 0/0 .bss             @4703 */
#pragma push
#pragma force_active on
static u8 lit_4703[12];
#pragma pop

/* 807FD278-807FD284 000260 000C+00 0/1 0/0 0/0 .bss             @4704 */
#pragma push
#pragma force_active on
static u8 lit_4704[12];
#pragma pop

/* 807FD284-807FD290 00026C 000C+00 0/1 0/0 0/0 .bss             @4705 */
#pragma push
#pragma force_active on
static u8 lit_4705[12];
#pragma pop

/* 807FD290-807FD29C 000278 000C+00 0/1 0/0 0/0 .bss             @4706 */
#pragma push
#pragma force_active on
static u8 lit_4706[12];
#pragma pop

/* 807FD29C-807FD2A8 000284 000C+00 0/1 0/0 0/0 .bss             @4707 */
#pragma push
#pragma force_active on
static u8 lit_4707[12];
#pragma pop

/* 807FD2A8-807FD2B4 000290 000C+00 0/1 0/0 0/0 .bss             @4708 */
#pragma push
#pragma force_active on
static u8 lit_4708[12];
#pragma pop

/* 807FD2B4-807FD2C0 00029C 000C+00 0/1 0/0 0/0 .bss             @4709 */
#pragma push
#pragma force_active on
static u8 lit_4709[12];
#pragma pop

/* 807FD2C0-807FD2CC 0002A8 000C+00 0/1 0/0 0/0 .bss             @4710 */
#pragma push
#pragma force_active on
static u8 lit_4710[12];
#pragma pop

/* 807FD2CC-807FD2D8 0002B4 000C+00 0/1 0/0 0/0 .bss             @4711 */
#pragma push
#pragma force_active on
static u8 lit_4711[12];
#pragma pop

/* 807FD2D8-807FD2E4 0002C0 000C+00 0/1 0/0 0/0 .bss             @4712 */
#pragma push
#pragma force_active on
static u8 lit_4712[12];
#pragma pop

/* 807FD2E4-807FD2F0 0002CC 000C+00 0/1 0/0 0/0 .bss             @4713 */
#pragma push
#pragma force_active on
static u8 lit_4713[12];
#pragma pop

/* 807FD2F0-807FD2FC 0002D8 000C+00 0/1 0/0 0/0 .bss             @4714 */
#pragma push
#pragma force_active on
static u8 lit_4714[12];
#pragma pop

/* 807FD2FC-807FD34C 0002E4 004E+02 1/2 0/0 0/0 .bss             ke_a */
static u8 ke_a[78 + 2 /* padding */];

/* 807FA888-807FAA34 002628 01AC+00 1/1 0/0 0/0 .text            ke_set__FP10e_yg_class */
static void ke_set(e_yg_class* param_0) {
    // NONMATCHING
}

/* 807FAA34-807FB034 0027D4 0600+00 2/1 0/0 0/0 .text            action__FP10e_yg_class */
static void action(e_yg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCDA4-807FCDA8 0000F0 0004+00 0/0 0/0 0/0 .rodata          @4891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4891 = 500.0f;
COMPILER_STRIP_GATE(0x807FCDA4, &lit_4891);
#pragma pop

/* 807FCDA8-807FCDAC 0000F4 0004+00 0/0 0/0 0/0 .rodata          @4892 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4892 = -7.0f;
COMPILER_STRIP_GATE(0x807FCDA8, &lit_4892);
#pragma pop

/* 807FCDAC-807FCDB0 0000F8 0004+00 0/0 0/0 0/0 .rodata          @4893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4893 = -80.0f;
COMPILER_STRIP_GATE(0x807FCDAC, &lit_4893);
#pragma pop

/* 807FCDB0-807FCDB4 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4894 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4894 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x807FCDB0, &lit_4894);
#pragma pop

/* 807FCDB4-807FCDB8 000100 0004+00 0/0 0/0 0/0 .rodata          @4895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4895 = 47.0f;
COMPILER_STRIP_GATE(0x807FCDB4, &lit_4895);
#pragma pop

/* 807FCDB8-807FCDBC 000104 0004+00 0/1 0/0 0/0 .rodata          @4896 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4896 = 35.0f;
COMPILER_STRIP_GATE(0x807FCDB8, &lit_4896);
#pragma pop

/* 807FCDBC-807FCDC0 000108 0004+00 0/0 0/0 0/0 .rodata          @4897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4897 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x807FCDBC, &lit_4897);
#pragma pop

/* 807FCDC0-807FCDC4 00010C 0004+00 0/1 0/0 0/0 .rodata          @4995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4995 = 9.5f;
COMPILER_STRIP_GATE(0x807FCDC0, &lit_4995);
#pragma pop

/* 807FCDC4-807FCDC8 000110 0004+00 0/1 0/0 0/0 .rodata          @4996 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4996 = 5.5f;
COMPILER_STRIP_GATE(0x807FCDC4, &lit_4996);
#pragma pop

/* 807FCDC8-807FCDCC 000114 0004+00 0/1 0/0 0/0 .rodata          @4997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4997 = 6.5f;
COMPILER_STRIP_GATE(0x807FCDC8, &lit_4997);
#pragma pop

/* 807FCDCC-807FCDD0 000118 0004+00 0/1 0/0 0/0 .rodata          @4998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4998 = 2.5f;
COMPILER_STRIP_GATE(0x807FCDCC, &lit_4998);
#pragma pop

/* 807FCDD0-807FCDD4 00011C 0004+00 0/1 0/0 0/0 .rodata          @4999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4999 = 6.0f;
COMPILER_STRIP_GATE(0x807FCDD0, &lit_4999);
#pragma pop

/* 807FCDD4-807FCDD8 000120 0004+00 0/1 0/0 0/0 .rodata          @5000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5000 = 4.5f;
COMPILER_STRIP_GATE(0x807FCDD4, &lit_5000);
#pragma pop

/* 807FB034-807FB3FC 002DD4 03C8+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_yg_class */
static void anm_se_set(e_yg_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCDD8-807FCDDC 000124 0004+00 0/1 0/0 0/0 .rodata          @5140 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5140 = -60.0f;
COMPILER_STRIP_GATE(0x807FCDD8, &lit_5140);
#pragma pop

/* 807FCDDC-807FCDE0 000128 0004+00 0/1 0/0 0/0 .rodata          @5141 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5141 = -20.0f;
COMPILER_STRIP_GATE(0x807FCDDC, &lit_5141);
#pragma pop

/* 807FCDE0-807FCDE4 00012C 0004+00 0/1 0/0 0/0 .rodata          @5142 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5142 = 7.0f;
COMPILER_STRIP_GATE(0x807FCDE0, &lit_5142);
#pragma pop

/* 807FD34C-807FD35C 000334 000C+04 0/1 0/0 0/0 .bss             @5031 */
#pragma push
#pragma force_active on
static u8 lit_5031[12 + 4 /* padding */];
#pragma pop

/* 807FD35C-807FD368 000344 000C+00 0/1 0/0 0/0 .bss             sc$5030 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 807FB3FC-807FB908 00319C 050C+00 2/1 0/0 0/0 .text            daE_YG_Execute__FP10e_yg_class */
static void daE_YG_Execute(e_yg_class* param_0) {
    // NONMATCHING
}

/* 807FB908-807FB910 0036A8 0008+00 1/0 0/0 0/0 .text            daE_YG_IsDelete__FP10e_yg_class */
static bool daE_YG_IsDelete(e_yg_class* param_0) {
    return true;
}

/* 807FB910-807FB978 0036B0 0068+00 1/0 0/0 0/0 .text            daE_YG_Delete__FP10e_yg_class */
static void daE_YG_Delete(e_yg_class* param_0) {
    // NONMATCHING
}

/* 807FB978-807FBA88 003718 0110+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCDE4-807FCDE8 000130 0004+00 0/1 0/0 0/0 .rodata          @5310 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5310 = 41.0f;
COMPILER_STRIP_GATE(0x807FCDE4, &lit_5310);
#pragma pop

/* 807FCDF0-807FCDF0 00013C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807FCDF5 = "E_yg";
#pragma pop

/* 807FBA88-807FBE70 003828 03E8+00 1/0 0/0 0/0 .text            daE_YG_Create__FP10fopAc_ac_c */
static void daE_YG_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 807FBE70-807FBEEC 003C10 007C+00 1/1 0/0 0/0 .text            __dt__7yg_ke_sFv */
yg_ke_s::~yg_ke_s() {
    // NONMATCHING
}

/* 807FBEEC-807FBF54 003C8C 0068+00 1/1 0/0 0/0 .text            __ct__7yg_ke_sFv */
yg_ke_s::yg_ke_s() {
    // NONMATCHING
}

/* 807FBF54-807FBF9C 003CF4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 807FBF9C-807FBFE4 003D3C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 807FBFE4-807FC040 003D84 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 807FC040-807FC0B0 003DE0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 807FC0B0-807FC120 003E50 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 807FC120-807FC168 003EC0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 807FC168-807FC1B0 003F08 0048+00 2/1 0/0 0/0 .text            __dt__12daE_YG_HIO_cFv */
daE_YG_HIO_c::~daE_YG_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FCDE8-807FCDEC 000134 0004+00 0/1 0/0 0/0 .rodata          @5574 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5574 = 13.0f;
COMPILER_STRIP_GATE(0x807FCDE8, &lit_5574);
#pragma pop

/* 807FCDEC-807FCDF0 000138 0004+00 0/1 0/0 0/0 .rodata          @5575 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5575 = -10.0f;
COMPILER_STRIP_GATE(0x807FCDEC, &lit_5575);
#pragma pop

/* 807FC1B0-807FC804 003F50 0654+00 0/0 1/0 0/0 .text            __sinit_d_a_e_yg_cpp */
void __sinit_d_a_e_yg_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807FC1B0, __sinit_d_a_e_yg_cpp);
#pragma pop

/* 807FC804-807FC80C 0045A4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_807FC804() {
    // NONMATCHING
}

/* 807FC80C-807FC814 0045AC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_807FC80C() {
    // NONMATCHING
}

/* 807FCC28-807FCC64 0049C8 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 807FCC64-807FCCA0 004A04 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807FD368-807FD36C 000350 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_807FD368[4];
#pragma pop

/* 807FD36C-807FD370 000354 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_807FD36C[4];
#pragma pop

/* 807FD370-807FD374 000358 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_807FD370[4];
#pragma pop

/* 807FD374-807FD378 00035C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807FD374[4];
#pragma pop

/* 807FD378-807FD37C 000360 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807FD378[4];
#pragma pop

/* 807FD37C-807FD380 000364 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807FD37C[4];
#pragma pop

/* 807FD380-807FD384 000368 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_807FD380[4];
#pragma pop

/* 807FD384-807FD388 00036C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_807FD384[4];
#pragma pop

/* 807FD388-807FD38C 000370 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_807FD388[4];
#pragma pop

/* 807FD38C-807FD390 000374 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_807FD38C[4];
#pragma pop

/* 807FD390-807FD394 000378 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_807FD390[4];
#pragma pop

/* 807FD394-807FD398 00037C 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807FD394[4];
#pragma pop

/* 807FD398-807FD39C 000380 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_807FD398[4];
#pragma pop

/* 807FD39C-807FD3A0 000384 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807FD39C[4];
#pragma pop

/* 807FD3A0-807FD3A4 000388 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807FD3A0[4];
#pragma pop

/* 807FD3A4-807FD3A8 00038C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_807FD3A4[4];
#pragma pop

/* 807FD3A8-807FD3AC 000390 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_807FD3A8[4];
#pragma pop

/* 807FD3AC-807FD3B0 000394 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807FD3AC[4];
#pragma pop

/* 807FD3B0-807FD3B4 000398 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_807FD3B0[4];
#pragma pop

/* 807FD3B4-807FD3B8 00039C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_807FD3B4[4];
#pragma pop

/* 807FD3B8-807FD3BC 0003A0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_807FD3B8[4];
#pragma pop

/* 807FD3BC-807FD3C0 0003A4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807FD3BC[4];
#pragma pop

/* 807FD3C0-807FD3C4 0003A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807FD3C0[4];
#pragma pop

/* 807FD3C4-807FD3C8 0003AC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807FD3C4[4];
#pragma pop

/* 807FD3C8-807FD3CC 0003B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_807FD3C8[4];
#pragma pop

/* 807FCDF0-807FCDF0 00013C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

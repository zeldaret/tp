/**
 * @file d_a_e_hzelda.cpp
 * 
*/

#include "d/actor/d_a_e_hzelda.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"



//
// Forward References:
//

extern "C" void __ct__16daE_HZELDA_HIO_cFv();
extern "C" static void anm_init__FP14e_hzelda_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daE_HZELDA_Draw__FP14e_hzelda_class();
extern "C" static void shot_s_sub__FPvPv();
extern "C" static void e_hzelda_wait__FP14e_hzelda_class();
extern "C" static void e_hzelda_attack_a__FP14e_hzelda_class();
extern "C" static void e_hzelda_attack_b__FP14e_hzelda_class();
extern "C" static void ball_crash_eff_set__FP14e_hzelda_classf();
extern "C" static void e_hzelda_attack_c__FP14e_hzelda_class();
extern "C" static void e_hzelda_damage__FP14e_hzelda_class();
extern "C" static void action__FP14e_hzelda_class();
extern "C" static void ball_bg_check__FP14e_hzelda_class();
extern "C" static void demo_camera__FP14e_hzelda_class();
extern "C" static void anm_se_set__FP14e_hzelda_class();
extern "C" static void daE_HZELDA_Execute__FP14e_hzelda_class();
extern "C" static bool daE_HZELDA_IsDelete__FP14e_hzelda_class();
extern "C" static void daE_HZELDA_Delete__FP14e_hzelda_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daE_HZELDA_Create__FP10fopAc_ac_c();
extern "C" void __ct__14e_hzelda_classFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__16daE_HZELDA_HIO_cFv();
extern "C" void __sinit_d_a_e_hzelda_cpp();
extern "C" static void func_806F54F0();
extern "C" static void func_806F54F8();
extern "C" extern char const* const d_a_e_hzelda__stringBase0;

//
// External References:
//

extern "C" void fadeOut__13mDoGph_gInf_cFfR8_GXColor();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
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
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopMsgM_messageSetDemo__FUl();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void dComIfGs_offOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__12dSv_danBit_cFi();
extern "C" void isSwitch__12dSv_danBit_cCFi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
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
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void checkMasterSwordEquip__9daPy_py_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_rad2s__Ff();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_atan2f__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void deleteAllParticle__14JPABaseEmitterFv();
extern "C" void func_802807E0();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void bgmStart__8Z2SeqMgrFUlUll();
extern "C" void bgmStop__8Z2SeqMgrFUll();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_21();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_21();
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
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u32 g_blackColor;
extern "C" extern u8 pauseTimer__9dScnPly_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806F5514-806F5518 000000 0004+00 15/15 0/0 0/0 .rodata          @3767 */
SECTION_RODATA static f32 const lit_3767 = 1.0f;
COMPILER_STRIP_GATE(0x806F5514, &lit_3767);

/* 806F565C-806F5668 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806F5668-806F567C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 806F567C-806F5684 000020 0006+02 1/1 0/0 0/0 .data            b_id$4252 */
SECTION_DATA static u8 b_id_4252[6 + 2 /* padding */] = {
    0x89,
    0x15,
    0x89,
    0x16,
    0x89,
    0x17,
    /* padding */
    0x00,
    0x00,
};

/* 806F5684-806F56B4 -00001 0030+00 1/2 0/0 0/0 .data            @4500 */
SECTION_DATA static void* lit_4500[12] = {
    (void*)(((char*)e_hzelda_damage__FP14e_hzelda_class) + 0x4C),
    (void*)(((char*)e_hzelda_damage__FP14e_hzelda_class) + 0x68),
    (void*)(((char*)e_hzelda_damage__FP14e_hzelda_class) + 0xC4),
    (void*)(((char*)e_hzelda_damage__FP14e_hzelda_class) + 0xF0),
    (void*)(((char*)e_hzelda_damage__FP14e_hzelda_class) + 0x15C),
    (void*)(((char*)e_hzelda_damage__FP14e_hzelda_class) + 0x15C),
    (void*)(((char*)e_hzelda_damage__FP14e_hzelda_class) + 0x15C),
    (void*)(((char*)e_hzelda_damage__FP14e_hzelda_class) + 0x15C),
    (void*)(((char*)e_hzelda_damage__FP14e_hzelda_class) + 0x15C),
    (void*)(((char*)e_hzelda_damage__FP14e_hzelda_class) + 0x15C),
    (void*)(((char*)e_hzelda_damage__FP14e_hzelda_class) + 0x130),
    (void*)(((char*)e_hzelda_damage__FP14e_hzelda_class) + 0x14C),
};

/* 806F56B4-806F56BC 000058 0006+02 0/1 0/0 0/0 .data            b_id$4879 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 b_id_4879[6 + 2 /* padding */] = {
    0x89,
    0x18,
    0x89,
    0x19,
    0x89,
    0x1A,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 806F56BC-806F56C8 000060 000A+02 0/1 0/0 0/0 .data            b_id$4905 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 b_id_4905[10 + 2 /* padding */] = {
    0x89,
    0x45,
    0x89,
    0x46,
    0x89,
    0x47,
    0x89,
    0x48,
    0x89,
    0x49,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 806F56C8-806F56D4 00006C 000C+00 0/1 0/0 0/0 .data            b_id$4933 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 b_id_4933[12] = {
    0x89, 0x1B, 0x89, 0x1C, 0x89, 0x1D, 0x89, 0x1E, 0x89, 0x1F, 0x89, 0x20,
};
#pragma pop

/* 806F56D4-806F5714 000078 0040+00 0/1 0/0 0/0 .data            cc_sph_src$5567 */
#pragma push
#pragma force_active on
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fafdbf, 0x3}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 806F5714-806F5754 0000B8 0040+00 0/1 0/0 0/0 .data            at_sph_src$5568 */
#pragma push
#pragma force_active on
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xd}, {0xd8fafdbf, 0x3}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0xb, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 806F5754-806F5794 0000F8 0040+00 0/1 0/0 0/0 .data            ball_at_sph_src$5569 */
#pragma push
#pragma force_active on
static dCcD_SrcSph ball_at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x4, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_13, 0x1, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 15.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 806F5794-806F57D4 000138 0040+00 0/1 0/0 0/0 .data            ball_tg_sph_src$5570 */
#pragma push
#pragma force_active on
static dCcD_SrcSph ball_tg_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x4000000, 0x3}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 806F57D4-806F5814 000178 0040+00 0/1 0/0 0/0 .data            tri_at_sph_src$5571 */
#pragma push
#pragma force_active on
static dCcD_SrcSph tri_at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x4, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_13, 0x0, 0xe, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 10.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 806F5814-806F5854 0001B8 0040+00 0/1 0/0 0/0 .data            pl_at_sph_src$5572 */
#pragma push
#pragma force_active on
static dCcD_SrcSph pl_at_sph_src = {
    {
        {0x0, {{AT_TYPE_MASTER_SWORD, 0x2, 0x3}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 806F5854-806F5874 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_HZELDA_Method */
static actor_method_class l_daE_HZELDA_Method = {
    (process_method_func)daE_HZELDA_Create__FP10fopAc_ac_c,
    (process_method_func)daE_HZELDA_Delete__FP14e_hzelda_class,
    (process_method_func)daE_HZELDA_Execute__FP14e_hzelda_class,
    (process_method_func)daE_HZELDA_IsDelete__FP14e_hzelda_class,
    (process_method_func)daE_HZELDA_Draw__FP14e_hzelda_class,
};

/* 806F5874-806F58A4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_HZELDA */
extern actor_process_profile_definition g_profile_E_HZELDA = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_HZELDA,          // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(e_hzelda_class), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  142,                    // mPriority
  &l_daE_HZELDA_Method,   // sub_method
  0x00044000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806F58A4-806F58B0 000248 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806F58B0-806F58BC 000254 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806F58BC-806F58C8 000260 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806F58C8-806F58D4 00026C 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806F58D4-806F58E0 000278 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806F58E0-806F5904 000284 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806F54F8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806F54F0,
};

/* 806F5904-806F5910 0002A8 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 806F5910-806F591C 0002B4 000C+00 2/2 0/0 0/0 .data            __vt__16daE_HZELDA_HIO_c */
SECTION_DATA extern void* __vt__16daE_HZELDA_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daE_HZELDA_HIO_cFv,
};

/* 806F0D4C-806F0D70 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__16daE_HZELDA_HIO_cFv */
daE_HZELDA_HIO_c::daE_HZELDA_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F5518-806F551C 000004 0004+00 2/12 0/0 0/0 .rodata          @3781 */
SECTION_RODATA static u8 const lit_3781[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806F5518, &lit_3781);

/* 806F551C-806F5520 000008 0004+00 1/2 0/0 0/0 .rodata          @3782 */
SECTION_RODATA static f32 const lit_3782 = -1.0f;
COMPILER_STRIP_GATE(0x806F551C, &lit_3782);

/* 806F5654-806F5654 000140 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806F5654 = "Hzelda";
#pragma pop

/* 806F0D70-806F0E1C 000110 00AC+00 5/5 0/0 0/0 .text            anm_init__FP14e_hzelda_classifUcf
 */
static void anm_init(e_hzelda_class* param_0, int param_1, f32 param_2, u8 param_3,
                         f32 param_4) {
    // NONMATCHING
}

/* 806F0E1C-806F1004 0001BC 01E8+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F5520-806F5524 00000C 0004+00 0/1 0/0 0/0 .rodata          @3910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3910 = 255.0f;
COMPILER_STRIP_GATE(0x806F5520, &lit_3910);
#pragma pop

/* 806F5524-806F5528 000010 0004+00 0/3 0/0 0/0 .rodata          @3911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3911 = 150.0f;
COMPILER_STRIP_GATE(0x806F5524, &lit_3911);
#pragma pop

/* 806F5528-806F552C 000014 0004+00 0/5 0/0 0/0 .rodata          @3912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3912 = 100.0f;
COMPILER_STRIP_GATE(0x806F5528, &lit_3912);
#pragma pop

/* 806F552C-806F5534 000018 0004+04 0/3 0/0 0/0 .rodata          @3913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3913[1 + 1 /* padding */] = {
    1000.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806F552C, &lit_3913);
#pragma pop

/* 806F1004-806F1214 0003A4 0210+00 1/0 0/0 0/0 .text            daE_HZELDA_Draw__FP14e_hzelda_class
 */
static void daE_HZELDA_Draw(e_hzelda_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F5534-806F553C 000020 0008+00 0/3 0/0 0/0 .rodata          @3965 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3965[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806F5534, &lit_3965);
#pragma pop

/* 806F553C-806F5544 000028 0008+00 0/3 0/0 0/0 .rodata          @3966 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3966[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806F553C, &lit_3966);
#pragma pop

/* 806F5544-806F554C 000030 0008+00 0/3 0/0 0/0 .rodata          @3967 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3967[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806F5544, &lit_3967);
#pragma pop

/* 806F1214-806F13A8 0005B4 0194+00 1/1 0/0 0/0 .text            shot_s_sub__FPvPv */
static void shot_s_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F554C-806F5550 000038 0004+00 0/4 0/0 0/0 .rodata          @4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4064 = 10.0f;
COMPILER_STRIP_GATE(0x806F554C, &lit_4064);
#pragma pop

/* 806F5550-806F5554 00003C 0004+00 0/2 0/0 0/0 .rodata          @4065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4065 = 3.0f;
COMPILER_STRIP_GATE(0x806F5550, &lit_4065);
#pragma pop

/* 806F5554-806F5558 000040 0004+00 0/2 0/0 0/0 .rodata          @4066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4066 = 300.0f;
COMPILER_STRIP_GATE(0x806F5554, &lit_4066);
#pragma pop

/* 806F5558-806F555C 000044 0004+00 0/5 0/0 0/0 .rodata          @4067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4067 = 30.0f;
COMPILER_STRIP_GATE(0x806F5558, &lit_4067);
#pragma pop

/* 806F555C-806F5560 000048 0004+00 0/2 0/0 0/0 .rodata          @4068 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4068 = 600.0f;
COMPILER_STRIP_GATE(0x806F555C, &lit_4068);
#pragma pop

/* 806F5560-806F5564 00004C 0004+00 0/6 0/0 0/0 .rodata          @4069 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4069 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806F5560, &lit_4069);
#pragma pop

/* 806F5564-806F5568 000050 0004+00 0/5 0/0 0/0 .rodata          @4070 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4070 = 0.5f;
COMPILER_STRIP_GATE(0x806F5564, &lit_4070);
#pragma pop

/* 806F13A8-806F1758 000748 03B0+00 1/1 0/0 0/0 .text            e_hzelda_wait__FP14e_hzelda_class
 */
static void e_hzelda_wait(e_hzelda_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F5568-806F556C 000054 0004+00 0/0 0/0 0/0 .rodata          @4071 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4071 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x806F5568, &lit_4071);
#pragma pop

/* 806F556C-806F5570 000058 0004+00 0/2 0/0 0/0 .rodata          @4072 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4072 = 40.0f;
COMPILER_STRIP_GATE(0x806F556C, &lit_4072);
#pragma pop

/* 806F5570-806F5574 00005C 0004+00 1/3 0/0 0/0 .rodata          @4073 */
SECTION_RODATA static f32 const lit_4073 = 2.0f;
COMPILER_STRIP_GATE(0x806F5570, &lit_4073);

/* 806F5574-806F5578 000060 0004+00 0/5 0/0 0/0 .rodata          @4185 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4185 = 5.0f;
COMPILER_STRIP_GATE(0x806F5574, &lit_4185);
#pragma pop

/* 806F5578-806F557C 000064 0004+00 0/4 0/0 0/0 .rodata          @4186 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4186 = 50.0f;
COMPILER_STRIP_GATE(0x806F5578, &lit_4186);
#pragma pop

/* 806F557C-806F5580 000068 0004+00 0/4 0/0 0/0 .rodata          @4187 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4187 = 200.0f;
COMPILER_STRIP_GATE(0x806F557C, &lit_4187);
#pragma pop

/* 806F5580-806F5584 00006C 0004+00 0/2 0/0 0/0 .rodata          @4188 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4188 = 20.0f;
COMPILER_STRIP_GATE(0x806F5580, &lit_4188);
#pragma pop

/* 806F5584-806F5588 000070 0004+00 0/4 0/0 0/0 .rodata          @4189 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4189 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x806F5584, &lit_4189);
#pragma pop

/* 806F1758-806F1C9C 000AF8 0544+00 1/1 0/0 0/0 .text e_hzelda_attack_a__FP14e_hzelda_class */
static void e_hzelda_attack_a(e_hzelda_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F5588-806F558C 000074 0004+00 0/1 0/0 0/0 .rodata          @4242 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4242 = 8.0f;
COMPILER_STRIP_GATE(0x806F5588, &lit_4242);
#pragma pop

/* 806F558C-806F5590 000078 0004+00 0/1 0/0 0/0 .rodata          @4243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4243 = 12.0f;
COMPILER_STRIP_GATE(0x806F558C, &lit_4243);
#pragma pop

/* 806F5590-806F5594 00007C 0004+00 0/1 0/0 0/0 .rodata          @4244 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4244 = 65536.0f;
COMPILER_STRIP_GATE(0x806F5590, &lit_4244);
#pragma pop

/* 806F5594-806F5598 000080 0004+00 0/3 0/0 0/0 .rodata          @4245 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4245 = 80.0f;
COMPILER_STRIP_GATE(0x806F5594, &lit_4245);
#pragma pop

/* 806F5598-806F559C 000084 0004+00 0/1 0/0 0/0 .rodata          @4246 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4246 = 210.0f;
COMPILER_STRIP_GATE(0x806F5598, &lit_4246);
#pragma pop

/* 806F559C-806F55A4 000088 0008+00 0/3 0/0 0/0 .rodata          @4248 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4248[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806F559C, &lit_4248);
#pragma pop

/* 806F1C9C-806F1FA4 00103C 0308+00 1/1 0/0 0/0 .text e_hzelda_attack_b__FP14e_hzelda_class */
static void e_hzelda_attack_b(e_hzelda_class* param_0) {
    // NONMATCHING
}

/* 806F1FA4-806F2054 001344 00B0+00 2/2 0/0 0/0 .text ball_crash_eff_set__FP14e_hzelda_classf */
static void ball_crash_eff_set(e_hzelda_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F55A4-806F55A8 000090 0004+00 0/1 0/0 0/0 .rodata          @4455 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4455 = 41.0f;
COMPILER_STRIP_GATE(0x806F55A4, &lit_4455);
#pragma pop

/* 806F55A8-806F55AC 000094 0004+00 0/2 0/0 0/0 .rodata          @4456 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4456 = 35.0f;
COMPILER_STRIP_GATE(0x806F55A8, &lit_4456);
#pragma pop

/* 806F55AC-806F55B0 000098 0004+00 0/2 0/0 0/0 .rodata          @4457 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4457 = 400.0f;
COMPILER_STRIP_GATE(0x806F55AC, &lit_4457);
#pragma pop

/* 806F55B0-806F55B4 00009C 0004+00 0/1 0/0 0/0 .rodata          @4458 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4458 = 15.0f;
COMPILER_STRIP_GATE(0x806F55B0, &lit_4458);
#pragma pop

/* 806F55B4-806F55B8 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4459 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4459 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x806F55B4, &lit_4459);
#pragma pop

/* 806F2054-806F28C8 0013F4 0874+00 1/1 0/0 0/0 .text e_hzelda_attack_c__FP14e_hzelda_class */
static void e_hzelda_attack_c(e_hzelda_class* param_0) {
    // NONMATCHING
}

/* 806F28C8-806F2A3C 001C68 0174+00 2/1 0/0 0/0 .text            e_hzelda_damage__FP14e_hzelda_class
 */
static void e_hzelda_damage(e_hzelda_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F55B8-806F55BC 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4611 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4611 = -150.0f;
COMPILER_STRIP_GATE(0x806F55B8, &lit_4611);
#pragma pop

/* 806F55BC-806F55C0 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4612 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4612 = -400.0f;
COMPILER_STRIP_GATE(0x806F55BC, &lit_4612);
#pragma pop

/* 806F55C0-806F55C4 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4613 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4613 = -1000.0f;
COMPILER_STRIP_GATE(0x806F55C0, &lit_4613);
#pragma pop

/* 806F55C4-806F55C8 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4614 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4614 = 3500.0f;
COMPILER_STRIP_GATE(0x806F55C4, &lit_4614);
#pragma pop

/* 806F55C8-806F55CC 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4615 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4615 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x806F55C8, &lit_4615);
#pragma pop

/* 806F55CC-806F55D0 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4616 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4616 = -3500.0f;
COMPILER_STRIP_GATE(0x806F55CC, &lit_4616);
#pragma pop

/* 806F55D0-806F55D4 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4617 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4617 = 2000.0f;
COMPILER_STRIP_GATE(0x806F55D0, &lit_4617);
#pragma pop

/* 806F55D4-806F55D8 0000C0 0004+00 0/2 0/0 0/0 .rodata          @4618 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4618 = -2000.0f;
COMPILER_STRIP_GATE(0x806F55D4, &lit_4618);
#pragma pop

/* 806F55D8-806F55DC 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4619 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4619 = -0.5f;
COMPILER_STRIP_GATE(0x806F55D8, &lit_4619);
#pragma pop

/* 806F55DC-806F55E0 0000C8 0004+00 0/2 0/0 0/0 .rodata          @4620 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4620 = -10.0f;
COMPILER_STRIP_GATE(0x806F55DC, &lit_4620);
#pragma pop

/* 806F55E0-806F55E4 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4621 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4621 = 9000.0f;
COMPILER_STRIP_GATE(0x806F55E0, &lit_4621);
#pragma pop

/* 806F55E4-806F55E8 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4622 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4622 = -9000.0f;
COMPILER_STRIP_GATE(0x806F55E4, &lit_4622);
#pragma pop

/* 806F2A3C-806F2F9C 001DDC 0560+00 1/1 0/0 0/0 .text            action__FP14e_hzelda_class */
static void action(e_hzelda_class* param_0) {
    // NONMATCHING
}

/* 806F2F9C-806F3084 00233C 00E8+00 1/1 0/0 0/0 .text            ball_bg_check__FP14e_hzelda_class
 */
static void ball_bg_check(e_hzelda_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F55E8-806F55EC 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4742 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4742 = 55.0f;
COMPILER_STRIP_GATE(0x806F55E8, &lit_4742);
#pragma pop

/* 806F55EC-806F55F0 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4743 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4743 = 500.0f;
COMPILER_STRIP_GATE(0x806F55EC, &lit_4743);
#pragma pop

/* 806F55F0-806F55F4 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4744 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4744 = -300.0f;
COMPILER_STRIP_GATE(0x806F55F0, &lit_4744);
#pragma pop

/* 806F55F4-806F55F8 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4745 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4745 = -100.0f;
COMPILER_STRIP_GATE(0x806F55F4, &lit_4745);
#pragma pop

/* 806F55F8-806F55FC 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4746 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4746 = -50.0f;
COMPILER_STRIP_GATE(0x806F55F8, &lit_4746);
#pragma pop

/* 806F55FC-806F5600 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4747 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4747 = 0x3C87FCB9;
COMPILER_STRIP_GATE(0x806F55FC, &lit_4747);
#pragma pop

/* 806F3084-806F3388 002424 0304+00 1/1 0/0 0/0 .text            demo_camera__FP14e_hzelda_class */
static void demo_camera(e_hzelda_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F5600-806F5604 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4795 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4795 = 21.0f;
COMPILER_STRIP_GATE(0x806F5600, &lit_4795);
#pragma pop

/* 806F5604-806F5608 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4796 = 36.0f;
COMPILER_STRIP_GATE(0x806F5604, &lit_4796);
#pragma pop

/* 806F5608-806F560C 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4797 = 26.0f;
COMPILER_STRIP_GATE(0x806F5608, &lit_4797);
#pragma pop

/* 806F3388-806F3590 002728 0208+00 1/1 0/0 0/0 .text            anm_se_set__FP14e_hzelda_class */
static void anm_se_set(e_hzelda_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F560C-806F5610 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5410 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5410 = -200000.0f;
COMPILER_STRIP_GATE(0x806F560C, &lit_5410);
#pragma pop

/* 806F5610-806F5614 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5411 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5411 = 100000.0f;
COMPILER_STRIP_GATE(0x806F5610, &lit_5411);
#pragma pop

/* 806F5614-806F5618 000100 0004+00 0/1 0/0 0/0 .rodata          @5412 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5412 = 20000.0f;
COMPILER_STRIP_GATE(0x806F5614, &lit_5412);
#pragma pop

/* 806F5618-806F561C 000104 0004+00 0/1 0/0 0/0 .rodata          @5413 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5413 = 25.0f;
COMPILER_STRIP_GATE(0x806F5618, &lit_5413);
#pragma pop

/* 806F561C-806F5620 000108 0004+00 0/1 0/0 0/0 .rodata          @5414 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5414 = -40.0f;
COMPILER_STRIP_GATE(0x806F561C, &lit_5414);
#pragma pop

/* 806F5620-806F5624 00010C 0004+00 0/1 0/0 0/0 .rodata          @5415 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5415 = 110.0f;
COMPILER_STRIP_GATE(0x806F5620, &lit_5415);
#pragma pop

/* 806F5624-806F5628 000110 0004+00 0/1 0/0 0/0 .rodata          @5416 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5416 = -80.0f;
COMPILER_STRIP_GATE(0x806F5624, &lit_5416);
#pragma pop

/* 806F5628-806F562C 000114 0004+00 0/1 0/0 0/0 .rodata          @5417 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5417 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x806F5628, &lit_5417);
#pragma pop

/* 806F562C-806F5630 000118 0004+00 0/1 0/0 0/0 .rodata          @5418 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5418 = 140.0f;
COMPILER_STRIP_GATE(0x806F562C, &lit_5418);
#pragma pop

/* 806F5630-806F5634 00011C 0004+00 0/1 0/0 0/0 .rodata          @5419 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5419 = 10000.0f;
COMPILER_STRIP_GATE(0x806F5630, &lit_5419);
#pragma pop

/* 806F5634-806F5638 000120 0004+00 0/1 0/0 0/0 .rodata          @5420 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5420 = 0x42652E14;
COMPILER_STRIP_GATE(0x806F5634, &lit_5420);
#pragma pop

/* 806F5638-806F563C 000124 0004+00 0/1 0/0 0/0 .rodata          @5421 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5421 = 60.0f;
COMPILER_STRIP_GATE(0x806F5638, &lit_5421);
#pragma pop

/* 806F563C-806F5640 000128 0004+00 0/1 0/0 0/0 .rodata          @5422 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5422 = 120.0f;
COMPILER_STRIP_GATE(0x806F563C, &lit_5422);
#pragma pop

/* 806F5640-806F5644 00012C 0004+00 0/1 0/0 0/0 .rodata          @5423 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5423 = 180.0f;
COMPILER_STRIP_GATE(0x806F5640, &lit_5423);
#pragma pop

/* 806F5644-806F5648 000130 0004+00 0/1 0/0 0/0 .rodata          @5424 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5424 = 0x40490FDB;
COMPILER_STRIP_GATE(0x806F5644, &lit_5424);
#pragma pop

/* 806F5648-806F564C 000134 0004+00 0/1 0/0 0/0 .rodata          @5425 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5425 = 1.0f / 40.0f;
COMPILER_STRIP_GATE(0x806F5648, &lit_5425);
#pragma pop

/* 806F5928-806F592C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_806F5928[4];

/* 806F592C-806F5938 00000C 000C+00 1/1 0/0 0/0 .bss             @3762 */
static u8 lit_3762[12];

/* 806F5938-806F5944 000018 000C+00 3/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 806F3590-806F474C 002930 11BC+00 2/1 0/0 0/0 .text daE_HZELDA_Execute__FP14e_hzelda_class */
static void daE_HZELDA_Execute(e_hzelda_class* param_0) {
    // NONMATCHING
}

/* 806F474C-806F4754 003AEC 0008+00 1/0 0/0 0/0 .text daE_HZELDA_IsDelete__FP14e_hzelda_class */
static bool daE_HZELDA_IsDelete(e_hzelda_class* param_0) {
    return true;
}

/* 806F4754-806F47C4 003AF4 0070+00 1/0 0/0 0/0 .text daE_HZELDA_Delete__FP14e_hzelda_class */
static void daE_HZELDA_Delete(e_hzelda_class* param_0) {
    // NONMATCHING
}

/* 806F47C4-806F4AD4 003B64 0310+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806F4AD4-806F4B1C 003E74 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806F564C-806F5650 000138 0004+00 0/1 0/0 0/0 .rodata          @5650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5650 = -200.0f;
COMPILER_STRIP_GATE(0x806F564C, &lit_5650);
#pragma pop

/* 806F5650-806F5654 00013C 0004+00 0/1 0/0 0/0 .rodata          @5651 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5651 = 70.0f;
COMPILER_STRIP_GATE(0x806F5650, &lit_5651);
#pragma pop

/* 806F4B1C-806F4E48 003EBC 032C+00 1/0 0/0 0/0 .text            daE_HZELDA_Create__FP10fopAc_ac_c
 */
static void daE_HZELDA_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806F4E48-806F5108 0041E8 02C0+00 1/1 0/0 0/0 .text            __ct__14e_hzelda_classFv */
e_hzelda_class::e_hzelda_class() {
    // NONMATCHING
}

/* 806F5108-806F5150 0044A8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806F5150-806F5198 0044F0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806F5198-806F5264 004538 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 806F5264-806F52E8 004604 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 806F52E8-806F5344 004688 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806F5344-806F53B4 0046E4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806F53B4-806F5424 004754 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806F5424-806F546C 0047C4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 806F546C-806F54B4 00480C 0048+00 2/1 0/0 0/0 .text            __dt__16daE_HZELDA_HIO_cFv */
daE_HZELDA_HIO_c::~daE_HZELDA_HIO_c() {
    // NONMATCHING
}

/* 806F54B4-806F54F0 004854 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_hzelda_cpp */
void __sinit_d_a_e_hzelda_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806F54B4, __sinit_d_a_e_hzelda_cpp);
#pragma pop

/* 806F54F0-806F54F8 004890 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806F54F0() {
    // NONMATCHING
}

/* 806F54F8-806F5500 004898 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806F54F8() {
    // NONMATCHING
}

/* 806F5654-806F5654 000140 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
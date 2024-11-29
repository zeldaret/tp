/**
 * @file d_a_e_gob.cpp
 * 
*/

#include "d/actor/d_a_e_gob.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"



//
// Forward References:
//

extern "C" void __ct__13daE_GOB_HIO_cFv();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daE_GOB_Draw__FP11e_gob_class();
extern "C" void __dt__4cXyzFv();
extern "C" static void anm_init__FP11e_gob_classifUcf();
extern "C" static void damage_check__FP11e_gob_class();
extern "C" static void fight__FP11e_gob_class();
extern "C" static void attack__FP11e_gob_class();
extern "C" static void defence__FP11e_gob_class();
extern "C" static void ball__FP11e_gob_class();
extern "C" static void s_damage__FP11e_gob_class();
extern "C" static void damage__FP11e_gob_class();
extern "C" static void glab__FP11e_gob_class();
extern "C" static void jump__FP11e_gob_class();
extern "C" static void start__FP11e_gob_class();
extern "C" static void end__FP11e_gob_class();
extern "C" static void s_set__FP11e_gob_class();
extern "C" static void message__FP11e_gob_class();
extern "C" static void action__FP11e_gob_class();
extern "C" static void cam_3d_morf__FP11e_gob_classf();
extern "C" static void demo_camera__FP11e_gob_class();
extern "C" static void daE_GOB_Execute__FP11e_gob_class();
extern "C" static bool daE_GOB_IsDelete__FP11e_gob_class();
extern "C" static void daE_GOB_Delete__FP11e_gob_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_GOB_Create__FP10fopAc_ac_c();
extern "C" void __ct__11e_gob_classFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__13daE_GOB_HIO_cFv();
extern "C" void __sinit_d_a_e_gob_cpp();
extern "C" static void func_806DED84();
extern "C" static void func_806DED8C();
extern "C" static void func_806DED94();
extern "C" static void func_806DED9C();
extern "C" static void func_806DEDA4();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" extern char const* const d_a_e_gob__stringBase0;

//
// External References:
//

extern "C" void fadeOut__13mDoGph_gInf_cFfR8_GXColor();
extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
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
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onZoneSwitch__Fii();
extern "C" void dComIfGs_isZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onDungeonItem__12dSv_memBit_cFi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void offEventBit__11dSv_event_cFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
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
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void pl_cut_LRC__Fi();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzsf();
extern "C" void Reset__9dCamera_cF4cXyz4cXyzfs();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void getMsgNo__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxScale__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void changeSubBgmStatus__8Z2SeqMgrFl();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__13Z2CreatureGobFP3VecP3VecP3VecUcUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_16();
extern "C" void _savegpr_19();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_16();
extern "C" void _restgpr_19();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__13Z2CreatureGob[12];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u32 g_blackColor;
extern "C" extern u8 g_dComIfGoat_gameInfo[4 + 4 /* padding */];
extern "C" extern u8 struct_80450C98[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806DEE38-806DEE3C 000000 0004+00 18/18 0/0 0/0 .rodata          @3763 */
SECTION_RODATA static f32 const lit_3763 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x806DEE38, &lit_3763);

/* 806DEE3C-806DEE40 000004 0004+00 0/1 0/0 0/0 .rodata          @3764 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3764 = 8.0f;
COMPILER_STRIP_GATE(0x806DEE3C, &lit_3764);
#pragma pop

/* 806DEE40-806DEE44 000008 0004+00 0/1 0/0 0/0 .rodata          @3765 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3765 = 4.0f;
COMPILER_STRIP_GATE(0x806DEE40, &lit_3765);
#pragma pop

/* 806DEE44-806DEE48 00000C 0004+00 0/3 0/0 0/0 .rodata          @3766 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3766 = 30.0f;
COMPILER_STRIP_GATE(0x806DEE44, &lit_3766);
#pragma pop

/* 806DF05C-806DF090 -00001 0034+00 1/1 0/0 0/0 .data            @4087 */
SECTION_DATA static void* lit_4087[13] = {
    (void*)(((char*)fight__FP11e_gob_class) + 0x70),
    (void*)(((char*)fight__FP11e_gob_class) + 0x78),
    (void*)(((char*)fight__FP11e_gob_class) + 0xC4),
    (void*)(((char*)fight__FP11e_gob_class) + 0x140),
    (void*)(((char*)fight__FP11e_gob_class) + 0x49C),
    (void*)(((char*)fight__FP11e_gob_class) + 0x49C),
    (void*)(((char*)fight__FP11e_gob_class) + 0x290),
    (void*)(((char*)fight__FP11e_gob_class) + 0x49C),
    (void*)(((char*)fight__FP11e_gob_class) + 0x49C),
    (void*)(((char*)fight__FP11e_gob_class) + 0x49C),
    (void*)(((char*)fight__FP11e_gob_class) + 0x49C),
    (void*)(((char*)fight__FP11e_gob_class) + 0x3AC),
    (void*)(((char*)fight__FP11e_gob_class) + 0x408),
};

/* 806DF090-806DF0C8 -00001 0038+00 1/1 0/0 0/0 .data            @4215 */
SECTION_DATA static void* lit_4215[14] = {
    (void*)(((char*)attack__FP11e_gob_class) + 0x6C),
    (void*)(((char*)attack__FP11e_gob_class) + 0x108),
    (void*)(((char*)attack__FP11e_gob_class) + 0x168),
    (void*)(((char*)attack__FP11e_gob_class) + 0x2E4),
    (void*)(((char*)attack__FP11e_gob_class) + 0x5C0),
    (void*)(((char*)attack__FP11e_gob_class) + 0x5C0),
    (void*)(((char*)attack__FP11e_gob_class) + 0x5C0),
    (void*)(((char*)attack__FP11e_gob_class) + 0x5C0),
    (void*)(((char*)attack__FP11e_gob_class) + 0x5C0),
    (void*)(((char*)attack__FP11e_gob_class) + 0x5C0),
    (void*)(((char*)attack__FP11e_gob_class) + 0x5C0),
    (void*)(((char*)attack__FP11e_gob_class) + 0x338),
    (void*)(((char*)attack__FP11e_gob_class) + 0x398),
    (void*)(((char*)attack__FP11e_gob_class) + 0x4E0),
};

/* 806DF0C8-806DF0E4 -00001 001C+00 1/1 0/0 0/0 .data            @4942 */
SECTION_DATA static void* lit_4942[7] = {
    (void*)(((char*)start__FP11e_gob_class) + 0x4C),
    (void*)(((char*)start__FP11e_gob_class) + 0x6C),
    (void*)(((char*)start__FP11e_gob_class) + 0xBC),
    (void*)(((char*)start__FP11e_gob_class) + 0x134),
    (void*)(((char*)start__FP11e_gob_class) + 0x1C4),
    (void*)(((char*)start__FP11e_gob_class) + 0x264),
    (void*)(((char*)start__FP11e_gob_class) + 0x2B4),
};

/* 806DF0E4-806DF0F4 000088 0010+00 1/1 0/0 0/0 .data            bg_x$5126 */
SECTION_DATA static u8 bg_x[16] = {
    0x00, 0x00, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806DF0F4-806DF104 000098 0010+00 1/1 0/0 0/0 .data            bg_z$5127 */
SECTION_DATA static u8 bg_z[16] = {
    0x43, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
};

/* 806DF104-806DF134 -00001 0030+00 1/1 0/0 0/0 .data            @5446 */
SECTION_DATA static void* lit_5446[12] = {
    (void*)(((char*)action__FP11e_gob_class) + 0xF8),
    (void*)(((char*)action__FP11e_gob_class) + 0x110),
    (void*)(((char*)action__FP11e_gob_class) + 0x128),
    (void*)(((char*)action__FP11e_gob_class) + 0x140),
    (void*)(((char*)action__FP11e_gob_class) + 0x158),
    (void*)(((char*)action__FP11e_gob_class) + 0x170),
    (void*)(((char*)action__FP11e_gob_class) + 0x188),
    (void*)(((char*)action__FP11e_gob_class) + 0x194),
    (void*)(((char*)action__FP11e_gob_class) + 0x1A0),
    (void*)(((char*)action__FP11e_gob_class) + 0x1D8),
    (void*)(((char*)action__FP11e_gob_class) + 0x200),
    (void*)(((char*)action__FP11e_gob_class) + 0x218),
};

/* 806DF134-806DF174 0000D8 0040+00 1/1 0/0 0/0 .data            cc_sph_src$6427 */
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

/* 806DF174-806DF1B4 000118 0040+00 1/1 0/0 0/0 .data            at_sph_src$6428 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x2, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};

/* 806DF1B4-806DF1D4 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_GOB_Method */
static actor_method_class l_daE_GOB_Method = {
    (process_method_func)daE_GOB_Create__FP10fopAc_ac_c,
    (process_method_func)daE_GOB_Delete__FP11e_gob_class,
    (process_method_func)daE_GOB_Execute__FP11e_gob_class,
    (process_method_func)daE_GOB_IsDelete__FP11e_gob_class,
    (process_method_func)daE_GOB_Draw__FP11e_gob_class,
};

/* 806DF1D4-806DF204 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_GOB */
extern actor_process_profile_definition g_profile_E_GOB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_GOB,             // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_gob_class),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  116,                    // mPriority
  &l_daE_GOB_Method,      // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806DF204-806DF210 0001A8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806DF210-806DF21C 0001B4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806DF21C-806DF240 0001C0 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806DEDA4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806DED9C,
};

/* 806DF240-806DF270 0001E4 0030+00 4/4 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806DED84,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806DED94,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806DED8C,
};

/* 806DF270-806DF27C 000214 000C+00 2/2 0/0 0/0 .data            __vt__13daE_GOB_HIO_c */
SECTION_DATA extern void* __vt__13daE_GOB_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daE_GOB_HIO_cFv,
};

/* 806D808C-806D80E0 0000EC 0054+00 1/1 0/0 0/0 .text            __ct__13daE_GOB_HIO_cFv */
daE_GOB_HIO_c::daE_GOB_HIO_c() {
    // NONMATCHING
}

/* 806D80E0-806D842C 000140 034C+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DEE48-806DEE4C 000010 0004+00 1/6 0/0 0/0 .rodata          @3908 */
SECTION_RODATA static f32 const lit_3908 = 50.0f;
COMPILER_STRIP_GATE(0x806DEE48, &lit_3908);

/* 806DEE4C-806DEE50 000014 0004+00 0/2 0/0 0/0 .rodata          @3909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3909 = 1400.0f;
COMPILER_STRIP_GATE(0x806DEE4C, &lit_3909);
#pragma pop

/* 806DEE50-806DEE54 000018 0004+00 2/16 0/0 0/0 .rodata          @3910 */
SECTION_RODATA static u8 const lit_3910[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806DEE50, &lit_3910);

/* 806DEE54-806DEE58 00001C 0004+00 1/15 0/0 0/0 .rodata          @3911 */
SECTION_RODATA static f32 const lit_3911 = 1.0f;
COMPILER_STRIP_GATE(0x806DEE54, &lit_3911);

/* 806D842C-806D853C 00048C 0110+00 1/0 0/0 0/0 .text            daE_GOB_Draw__FP11e_gob_class */
static void daE_GOB_Draw(e_gob_class* param_0) {
    // NONMATCHING
}

/* 806D853C-806D8578 00059C 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DEE58-806DEE5C 000020 0004+00 1/3 0/0 0/0 .rodata          @3919 */
SECTION_RODATA static f32 const lit_3919 = -1.0f;
COMPILER_STRIP_GATE(0x806DEE58, &lit_3919);

/* 806DF054-806DF054 00021C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806DF054 = "E_gob";
#pragma pop

/* 806D8578-806D8624 0005D8 00AC+00 11/11 0/0 0/0 .text            anm_init__FP11e_gob_classifUcf */
static void anm_init(e_gob_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 806D8624-806D886C 000684 0248+00 1/1 0/0 0/0 .text            damage_check__FP11e_gob_class */
static void damage_check(e_gob_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DEE5C-806DEE60 000024 0004+00 0/5 0/0 0/0 .rodata          @4072 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4072 = 10.0f;
COMPILER_STRIP_GATE(0x806DEE5C, &lit_4072);
#pragma pop

/* 806DEE60-806DEE64 000028 0004+00 0/2 0/0 0/0 .rodata          @4073 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4073 = 20.0f;
COMPILER_STRIP_GATE(0x806DEE60, &lit_4073);
#pragma pop

/* 806DEE64-806DEE68 00002C 0004+00 0/1 0/0 0/0 .rodata          @4074 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4074 = 600.0f;
COMPILER_STRIP_GATE(0x806DEE64, &lit_4074);
#pragma pop

/* 806DEE68-806DEE6C 000030 0004+00 0/1 0/0 0/0 .rodata          @4075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4075 = 200.0f;
COMPILER_STRIP_GATE(0x806DEE68, &lit_4075);
#pragma pop

/* 806DEE6C-806DEE70 000034 0004+00 0/2 0/0 0/0 .rodata          @4076 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4076 = 70.0f;
COMPILER_STRIP_GATE(0x806DEE6C, &lit_4076);
#pragma pop

/* 806DEE70-806DEE74 000038 0004+00 0/0 0/0 0/0 .rodata          @4077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4077 = 650.0f;
COMPILER_STRIP_GATE(0x806DEE70, &lit_4077);
#pragma pop

/* 806DEE74-806DEE78 00003C 0004+00 0/0 0/0 0/0 .rodata          @4078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4078 = 350.0f;
COMPILER_STRIP_GATE(0x806DEE74, &lit_4078);
#pragma pop

/* 806DEE78-806DEE7C 000040 0004+00 0/0 0/0 0/0 .rodata          @4079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4079 = 450.0f;
COMPILER_STRIP_GATE(0x806DEE78, &lit_4079);
#pragma pop

/* 806DEE7C-806DEE80 000044 0004+00 0/0 0/0 0/0 .rodata          @4080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4080 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x806DEE7C, &lit_4080);
#pragma pop

/* 806DEE80-806DEE84 000048 0004+00 0/8 0/0 0/0 .rodata          @4081 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4081 = 5.0f;
COMPILER_STRIP_GATE(0x806DEE80, &lit_4081);
#pragma pop

/* 806DEE84-806DEE88 00004C 0004+00 0/2 0/0 0/0 .rodata          @4082 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4082 = 60.0f;
COMPILER_STRIP_GATE(0x806DEE84, &lit_4082);
#pragma pop

/* 806DEE88-806DEE8C 000050 0004+00 0/0 0/0 0/0 .rodata          @4083 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4083 = 90.0f;
COMPILER_STRIP_GATE(0x806DEE88, &lit_4083);
#pragma pop

/* 806DEE8C-806DEE90 000054 0004+00 0/2 0/0 0/0 .rodata          @4084 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4084 = 400.0f;
COMPILER_STRIP_GATE(0x806DEE8C, &lit_4084);
#pragma pop

/* 806DEE90-806DEE94 000058 0004+00 0/8 0/0 0/0 .rodata          @4085 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4085 = 2.0f;
COMPILER_STRIP_GATE(0x806DEE90, &lit_4085);
#pragma pop

/* 806DF288-806DF28C 000008 0001+03 3/3 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 806DF28C-806DF290 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 806DF290-806DF294 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 806DF294-806DF298 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 806DF298-806DF29C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 806DF29C-806DF2A0 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 806DF2A0-806DF2A4 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 806DF2A4-806DF2A8 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 806DF2A8-806DF2AC 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 806DF2AC-806DF2B0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 806DF2B0-806DF2B4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 806DF2B4-806DF2B8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 806DF2B8-806DF2BC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 806DF2BC-806DF2C0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 806DF2C0-806DF2C4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 806DF2C4-806DF2C8 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 806DF2C4 0001+00 data_806DF2C4 @1009 */
/* 806DF2C5 0003+00 data_806DF2C5 None */
static u8 struct_806DF2C4[4];

/* 806DF2C8-806DF2D4 000048 000C+00 0/1 0/0 0/0 .bss             @3758 */
#pragma push
#pragma force_active on
static u8 lit_3758[12];
#pragma pop

/* 806DF2D4-806DF2F4 000054 0020+00 4/6 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[32];

/* 806DF2F4-806DF2F8 000074 0004+00 3/4 0/0 0/0 .bss             ms */
static u8 ms[4];

/* 806DF2F8-806DF2FC 000078 0004+00 1/2 0/0 0/0 .bss             my */
static u8 my[4];

/* 806DF2FC-806DF308 00007C 000C+00 0/1 0/0 0/0 .bss             @3767 */
#pragma push
#pragma force_active on
static u8 lit_3767[12];
#pragma pop

/* 806DF308-806DF314 000088 000C+00 3/5 0/0 0/0 .bss             base_sc */
static u8 base_sc[12];

/* 806D886C-806D8DAC 0008CC 0540+00 2/1 0/0 0/0 .text            fight__FP11e_gob_class */
static void fight(e_gob_class* param_0) {
    // NONMATCHING
}

/* 806D8DAC-806D93CC 000E0C 0620+00 2/1 0/0 0/0 .text            attack__FP11e_gob_class */
static void attack(e_gob_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DEE94-806DEE98 00005C 0004+00 0/2 0/0 0/0 .rodata          @4212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4212 = 3.0f;
COMPILER_STRIP_GATE(0x806DEE94, &lit_4212);
#pragma pop

/* 806D93CC-806D9514 00142C 0148+00 1/1 0/0 0/0 .text            defence__FP11e_gob_class */
static void defence(e_gob_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DEE98-806DEE9C 000060 0004+00 0/1 0/0 0/0 .rodata          @4213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4213 = 700.0f;
COMPILER_STRIP_GATE(0x806DEE98, &lit_4213);
#pragma pop

/* 806DEE9C-806DEEA0 000064 0004+00 0/1 0/0 0/0 .rodata          @4398 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4398 = 21.5f;
COMPILER_STRIP_GATE(0x806DEE9C, &lit_4398);
#pragma pop

/* 806DEEA0-806DEEA4 000068 0004+00 0/1 0/0 0/0 .rodata          @4399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4399 = -2.0f;
COMPILER_STRIP_GATE(0x806DEEA0, &lit_4399);
#pragma pop

/* 806DEEA4-806DEEA8 00006C 0004+00 1/2 0/0 0/0 .rodata          @4400 */
SECTION_RODATA static f32 const lit_4400 = 300.0f;
COMPILER_STRIP_GATE(0x806DEEA4, &lit_4400);

/* 806DEEA8-806DEEAC 000070 0004+00 0/3 0/0 0/0 .rodata          @4401 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4401 = 100.0f;
COMPILER_STRIP_GATE(0x806DEEA8, &lit_4401);
#pragma pop

/* 806DEEAC-806DEEB0 000074 0004+00 0/2 0/0 0/0 .rodata          @4402 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4402 = 35.0f;
COMPILER_STRIP_GATE(0x806DEEAC, &lit_4402);
#pragma pop

/* 806DEEB0-806DEEB4 000078 0004+00 0/1 0/0 0/0 .rodata          @4403 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4403 = 320.0f;
COMPILER_STRIP_GATE(0x806DEEB0, &lit_4403);
#pragma pop

/* 806DEEB4-806DEEB8 00007C 0004+00 0/1 0/0 0/0 .rodata          @4404 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4404 = 800.0f;
COMPILER_STRIP_GATE(0x806DEEB4, &lit_4404);
#pragma pop

/* 806D9514-806D9C80 001574 076C+00 1/1 0/0 0/0 .text            ball__FP11e_gob_class */
static void ball(e_gob_class* param_0) {
    // NONMATCHING
}

/* 806D9C80-806D9D44 001CE0 00C4+00 1/1 0/0 0/0 .text            s_damage__FP11e_gob_class */
static void s_damage(e_gob_class* param_0) {
    // NONMATCHING
}

/* 806D9D44-806D9DE0 001DA4 009C+00 1/1 0/0 0/0 .text            damage__FP11e_gob_class */
static void damage(e_gob_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DEEB8-806DEEBC 000080 0004+00 0/4 0/0 0/0 .rodata          @4755 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4755 = 0.5f;
COMPILER_STRIP_GATE(0x806DEEB8, &lit_4755);
#pragma pop

/* 806DEEBC-806DEEC0 000084 0004+00 0/1 0/0 0/0 .rodata          @4756 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4756 = 40.0f;
COMPILER_STRIP_GATE(0x806DEEBC, &lit_4756);
#pragma pop

/* 806DEEC0-806DEEC4 000088 0004+00 0/1 0/0 0/0 .rodata          @4757 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4757 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x806DEEC0, &lit_4757);
#pragma pop

/* 806DEEC4-806DEEC8 00008C 0004+00 0/1 0/0 0/0 .rodata          @4758 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4758 = 25.0f;
COMPILER_STRIP_GATE(0x806DEEC4, &lit_4758);
#pragma pop

/* 806DEEC8-806DEED0 000090 0004+04 0/3 0/0 0/0 .rodata          @4759 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4759[1 + 1 /* padding */] = {
    1000.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806DEEC8, &lit_4759);
#pragma pop

/* 806DEED0-806DEED8 000098 0008+00 0/1 0/0 0/0 .rodata          @4760 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4760[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806DEED0, &lit_4760);
#pragma pop

/* 806DEED8-806DEEE0 0000A0 0008+00 0/1 0/0 0/0 .rodata          @4761 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4761[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806DEED8, &lit_4761);
#pragma pop

/* 806DEEE0-806DEEE8 0000A8 0008+00 0/1 0/0 0/0 .rodata          @4762 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4762[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806DEEE0, &lit_4762);
#pragma pop

/* 806DEEE8-806DEEEC 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4763 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4763 = 32768.0f;
COMPILER_STRIP_GATE(0x806DEEE8, &lit_4763);
#pragma pop

/* 806DEEEC-806DEEF0 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4764 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4764 = -50.0f;
COMPILER_STRIP_GATE(0x806DEEEC, &lit_4764);
#pragma pop

/* 806DEEF0-806DEEF4 0000B8 0004+00 0/2 0/0 0/0 .rodata          @4765 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4765 = 170.0f;
COMPILER_STRIP_GATE(0x806DEEF0, &lit_4765);
#pragma pop

/* 806D9DE0-806DAB6C 001E40 0D8C+00 1/1 0/0 0/0 .text            glab__FP11e_gob_class */
static void glab(e_gob_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DEEF4-806DEEF8 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4870 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4870 = 110.0f;
COMPILER_STRIP_GATE(0x806DEEF4, &lit_4870);
#pragma pop

/* 806DEEF8-806DEEFC 0000C0 0004+00 0/2 0/0 0/0 .rodata          @4871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4871 = 2000.0f;
COMPILER_STRIP_GATE(0x806DEEF8, &lit_4871);
#pragma pop

/* 806DEEFC-806DEF00 0000C4 0004+00 0/4 0/0 0/0 .rodata          @4872 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4872 = 500.0f;
COMPILER_STRIP_GATE(0x806DEEFC, &lit_4872);
#pragma pop

/* 806DAB6C-806DB038 002BCC 04CC+00 1/1 0/0 0/0 .text            jump__FP11e_gob_class */
static void jump(e_gob_class* param_0) {
    // NONMATCHING
}

/* 806DB038-806DB304 003098 02CC+00 2/1 0/0 0/0 .text            start__FP11e_gob_class */
static void start(e_gob_class* param_0) {
    // NONMATCHING
}

/* 806DB304-806DB50C 003364 0208+00 1/1 0/0 0/0 .text            end__FP11e_gob_class */
static void end(e_gob_class* param_0) {
    // NONMATCHING
}

/* 806DB50C-806DB548 00356C 003C+00 1/1 0/0 0/0 .text            s_set__FP11e_gob_class */
static void s_set(e_gob_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DEF00-806DEF04 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4940 = 150.0f;
COMPILER_STRIP_GATE(0x806DEF00, &lit_4940);
#pragma pop

/* 806DEF04-806DEF08 0000CC 0004+00 0/2 0/0 0/0 .rodata          @4941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4941 = 15.0f;
COMPILER_STRIP_GATE(0x806DEF04, &lit_4941);
#pragma pop

/* 806DEF08-806DEF0C 0000D0 0004+00 0/2 0/0 0/0 .rodata          @5062 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5062 = 2120.0f;
COMPILER_STRIP_GATE(0x806DEF08, &lit_5062);
#pragma pop

/* 806DB548-806DB768 0035A8 0220+00 1/1 0/0 0/0 .text            message__FP11e_gob_class */
static void message(e_gob_class* param_0) {
    // NONMATCHING
}

/* 806DB768-806DC4F0 0037C8 0D88+00 2/1 0/0 0/0 .text            action__FP11e_gob_class */
static void action(e_gob_class* param_0) {
    // NONMATCHING
}

/* 806DC4F0-806DC5D4 004550 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP11e_gob_classf */
static void cam_3d_morf(e_gob_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DEF0C-806DEF10 0000D4 0004+00 0/1 0/0 0/0 .rodata          @5435 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5435 = -30.0f;
COMPILER_STRIP_GATE(0x806DEF0C, &lit_5435);
#pragma pop

/* 806DEF10-806DEF14 0000D8 0004+00 0/0 0/0 0/0 .rodata          @5436 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5436 = 1350.0f;
COMPILER_STRIP_GATE(0x806DEF10, &lit_5436);
#pragma pop

/* 806DEF14-806DEF18 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5437 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5437 = 120.0f;
COMPILER_STRIP_GATE(0x806DEF14, &lit_5437);
#pragma pop

/* 806DEF18-806DEF1C 0000E0 0004+00 0/0 0/0 0/0 .rodata          @5438 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5438 = 12.0f;
COMPILER_STRIP_GATE(0x806DEF18, &lit_5438);
#pragma pop

/* 806DEF1C-806DEF20 0000E4 0004+00 0/0 0/0 0/0 .rodata          @5439 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5439 = -170.0f;
COMPILER_STRIP_GATE(0x806DEF1C, &lit_5439);
#pragma pop

/* 806DEF20-806DEF24 0000E8 0004+00 0/0 0/0 0/0 .rodata          @5440 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5440 = -1000000000.0f;
COMPILER_STRIP_GATE(0x806DEF20, &lit_5440);
#pragma pop

/* 806DEF24-806DEF28 0000EC 0004+00 0/0 0/0 0/0 .rodata          @5441 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5441 = 16384.0f;
COMPILER_STRIP_GATE(0x806DEF24, &lit_5441);
#pragma pop

/* 806DEF28-806DEF2C 0000F0 0004+00 0/0 0/0 0/0 .rodata          @5442 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5442 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x806DEF28, &lit_5442);
#pragma pop

/* 806DEF2C-806DEF30 0000F4 0004+00 0/0 0/0 0/0 .rodata          @5443 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5443 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x806DEF2C, &lit_5443);
#pragma pop

/* 806DEF30-806DEF34 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5444 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5444 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x806DEF30, &lit_5444);
#pragma pop

/* 806DEF34-806DEF38 0000FC 0004+00 0/0 0/0 0/0 .rodata          @5445 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5445 = 4000.0f;
COMPILER_STRIP_GATE(0x806DEF34, &lit_5445);
#pragma pop

/* 806DEF38-806DEF40 000100 0008+00 0/0 0/0 0/0 .rodata          @5449 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5449[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806DEF38, &lit_5449);
#pragma pop

/* 806DEF40-806DEF44 000108 0004+00 0/1 0/0 0/0 .rodata          @5983 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5983 = 55.0f;
COMPILER_STRIP_GATE(0x806DEF40, &lit_5983);
#pragma pop

/* 806DEF44-806DEF48 00010C 0004+00 0/1 0/0 0/0 .rodata          @5984 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5984 = -104.0f;
COMPILER_STRIP_GATE(0x806DEF44, &lit_5984);
#pragma pop

/* 806DEF48-806DEF4C 000110 0004+00 0/1 0/0 0/0 .rodata          @5985 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5985 = 2205.0f;
COMPILER_STRIP_GATE(0x806DEF48, &lit_5985);
#pragma pop

/* 806DEF4C-806DEF50 000114 0004+00 0/1 0/0 0/0 .rodata          @5986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5986 = 1078.0f;
COMPILER_STRIP_GATE(0x806DEF4C, &lit_5986);
#pragma pop

/* 806DEF50-806DEF54 000118 0004+00 0/1 0/0 0/0 .rodata          @5987 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5987 = -175.0f;
COMPILER_STRIP_GATE(0x806DEF50, &lit_5987);
#pragma pop

/* 806DEF54-806DEF58 00011C 0004+00 0/1 0/0 0/0 .rodata          @5988 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5988 = 2246.0f;
COMPILER_STRIP_GATE(0x806DEF54, &lit_5988);
#pragma pop

/* 806DEF58-806DEF5C 000120 0004+00 0/1 0/0 0/0 .rodata          @5989 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5989 = 1418.0f;
COMPILER_STRIP_GATE(0x806DEF58, &lit_5989);
#pragma pop

/* 806DEF5C-806DEF60 000124 0004+00 0/1 0/0 0/0 .rodata          @5990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5990 = 1100.0f;
COMPILER_STRIP_GATE(0x806DEF5C, &lit_5990);
#pragma pop

/* 806DEF60-806DEF64 000128 0004+00 0/1 0/0 0/0 .rodata          @5991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5991 = 2289.0f;
COMPILER_STRIP_GATE(0x806DEF60, &lit_5991);
#pragma pop

/* 806DEF64-806DEF68 00012C 0004+00 0/1 0/0 0/0 .rodata          @5992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5992 = -1694.0f;
COMPILER_STRIP_GATE(0x806DEF64, &lit_5992);
#pragma pop

/* 806DEF68-806DEF6C 000130 0004+00 0/1 0/0 0/0 .rodata          @5993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5993 = 2293.0f;
COMPILER_STRIP_GATE(0x806DEF68, &lit_5993);
#pragma pop

/* 806DEF6C-806DEF70 000134 0004+00 0/1 0/0 0/0 .rodata          @5994 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5994 = -1349.0f;
COMPILER_STRIP_GATE(0x806DEF6C, &lit_5994);
#pragma pop

/* 806DEF70-806DEF74 000138 0004+00 0/1 0/0 0/0 .rodata          @5995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5995 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806DEF70, &lit_5995);
#pragma pop

/* 806DEF74-806DEF78 00013C 0004+00 0/1 0/0 0/0 .rodata          @5996 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5996 = 0x3B03126F;
COMPILER_STRIP_GATE(0x806DEF74, &lit_5996);
#pragma pop

/* 806DEF78-806DEF7C 000140 0004+00 0/1 0/0 0/0 .rodata          @5997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5997 = 3000.0f;
COMPILER_STRIP_GATE(0x806DEF78, &lit_5997);
#pragma pop

/* 806DEF7C-806DEF80 000144 0004+00 0/1 0/0 0/0 .rodata          @5998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5998 = -293.0f;
COMPILER_STRIP_GATE(0x806DEF7C, &lit_5998);
#pragma pop

/* 806DEF80-806DEF84 000148 0004+00 0/1 0/0 0/0 .rodata          @5999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5999 = 279.0f;
COMPILER_STRIP_GATE(0x806DEF80, &lit_5999);
#pragma pop

/* 806DEF84-806DEF88 00014C 0004+00 0/1 0/0 0/0 .rodata          @6000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6000 = 1988.0f;
COMPILER_STRIP_GATE(0x806DEF84, &lit_6000);
#pragma pop

/* 806DEF88-806DEF8C 000150 0004+00 0/1 0/0 0/0 .rodata          @6001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6001 = -341.0f;
COMPILER_STRIP_GATE(0x806DEF88, &lit_6001);
#pragma pop

/* 806DEF8C-806DEF90 000154 0004+00 0/2 0/0 0/0 .rodata          @6002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6002 = 24.0f;
COMPILER_STRIP_GATE(0x806DEF8C, &lit_6002);
#pragma pop

/* 806DEF90-806DEF94 000158 0004+00 0/1 0/0 0/0 .rodata          @6003 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6003 = 2223.0f;
COMPILER_STRIP_GATE(0x806DEF90, &lit_6003);
#pragma pop

/* 806DEF94-806DEF98 00015C 0004+00 0/1 0/0 0/0 .rodata          @6004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6004 = 37.0f / 5.0f;
COMPILER_STRIP_GATE(0x806DEF94, &lit_6004);
#pragma pop

/* 806DEF98-806DEF9C 000160 0004+00 0/1 0/0 0/0 .rodata          @6005 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6005 = 945.0f;
COMPILER_STRIP_GATE(0x806DEF98, &lit_6005);
#pragma pop

/* 806DEF9C-806DEFA0 000164 0004+00 0/1 0/0 0/0 .rodata          @6006 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6006 = 806.0f;
COMPILER_STRIP_GATE(0x806DEF9C, &lit_6006);
#pragma pop

/* 806DEFA0-806DEFA4 000168 0004+00 0/1 0/0 0/0 .rodata          @6007 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6007 = -168.0f;
COMPILER_STRIP_GATE(0x806DEFA0, &lit_6007);
#pragma pop

/* 806DEFA4-806DEFA8 00016C 0004+00 0/1 0/0 0/0 .rodata          @6008 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6008 = 921.0f;
COMPILER_STRIP_GATE(0x806DEFA4, &lit_6008);
#pragma pop

/* 806DEFA8-806DEFAC 000170 0004+00 0/1 0/0 0/0 .rodata          @6009 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6009 = 1450.0f;
COMPILER_STRIP_GATE(0x806DEFA8, &lit_6009);
#pragma pop

/* 806DEFAC-806DEFB0 000174 0004+00 0/1 0/0 0/0 .rodata          @6010 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6010 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x806DEFAC, &lit_6010);
#pragma pop

/* 806DEFB0-806DEFB4 000178 0004+00 0/1 0/0 0/0 .rodata          @6011 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6011 = 0x3A83126F;
COMPILER_STRIP_GATE(0x806DEFB0, &lit_6011);
#pragma pop

/* 806DEFB4-806DEFB8 00017C 0004+00 0/2 0/0 0/0 .rodata          @6012 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6012 = -500.0f;
COMPILER_STRIP_GATE(0x806DEFB4, &lit_6012);
#pragma pop

/* 806DEFB8-806DEFBC 000180 0004+00 0/1 0/0 0/0 .rodata          @6013 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6013 = 1800.0f;
COMPILER_STRIP_GATE(0x806DEFB8, &lit_6013);
#pragma pop

/* 806DEFBC-806DEFC0 000184 0004+00 0/2 0/0 0/0 .rodata          @6014 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6014 = -400.0f;
COMPILER_STRIP_GATE(0x806DEFBC, &lit_6014);
#pragma pop

/* 806DEFC0-806DEFC4 000188 0004+00 0/1 0/0 0/0 .rodata          @6015 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6015 = -200.0f;
COMPILER_STRIP_GATE(0x806DEFC0, &lit_6015);
#pragma pop

/* 806DEFC4-806DEFC8 00018C 0004+00 0/1 0/0 0/0 .rodata          @6016 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6016 = 250.0f;
COMPILER_STRIP_GATE(0x806DEFC4, &lit_6016);
#pragma pop

/* 806DEFC8-806DEFCC 000190 0004+00 0/2 0/0 0/0 .rodata          @6017 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6017 = -5.0f;
COMPILER_STRIP_GATE(0x806DEFC8, &lit_6017);
#pragma pop

/* 806DEFCC-806DEFD0 000194 0004+00 0/1 0/0 0/0 .rodata          @6018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6018 = 306.0f;
COMPILER_STRIP_GATE(0x806DEFCC, &lit_6018);
#pragma pop

/* 806DEFD0-806DEFD4 000198 0004+00 0/1 0/0 0/0 .rodata          @6019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6019 = 1187.0f;
COMPILER_STRIP_GATE(0x806DEFD0, &lit_6019);
#pragma pop

/* 806DEFD4-806DEFD8 00019C 0004+00 0/1 0/0 0/0 .rodata          @6020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6020 = -372.0f;
COMPILER_STRIP_GATE(0x806DEFD4, &lit_6020);
#pragma pop

/* 806DEFD8-806DEFDC 0001A0 0004+00 0/1 0/0 0/0 .rodata          @6021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6021 = -2218.0f;
COMPILER_STRIP_GATE(0x806DEFD8, &lit_6021);
#pragma pop

/* 806DEFDC-806DEFE0 0001A4 0004+00 0/1 0/0 0/0 .rodata          @6022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6022 = 3100.0f;
COMPILER_STRIP_GATE(0x806DEFDC, &lit_6022);
#pragma pop

/* 806DEFE0-806DEFE4 0001A8 0004+00 0/1 0/0 0/0 .rodata          @6023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6023 = 1256.0f;
COMPILER_STRIP_GATE(0x806DEFE0, &lit_6023);
#pragma pop

/* 806DEFE4-806DEFE8 0001AC 0004+00 0/1 0/0 0/0 .rodata          @6024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6024 = -2486.0f;
COMPILER_STRIP_GATE(0x806DEFE4, &lit_6024);
#pragma pop

/* 806DEFE8-806DEFEC 0001B0 0004+00 0/1 0/0 0/0 .rodata          @6025 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6025 = 3256.0f;
COMPILER_STRIP_GATE(0x806DEFE8, &lit_6025);
#pragma pop

/* 806DEFEC-806DEFF0 0001B4 0004+00 0/1 0/0 0/0 .rodata          @6026 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6026 = -1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806DEFEC, &lit_6026);
#pragma pop

/* 806DEFF0-806DEFF4 0001B8 0004+00 0/1 0/0 0/0 .rodata          @6027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6027 = 1150.0f;
COMPILER_STRIP_GATE(0x806DEFF0, &lit_6027);
#pragma pop

/* 806DEFF4-806DEFF8 0001BC 0004+00 0/1 0/0 0/0 .rodata          @6028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6028 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x806DEFF4, &lit_6028);
#pragma pop

/* 806DEFF8-806DF000 0001C0 0004+04 0/1 0/0 0/0 .rodata          @6029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6029[1 + 1 /* padding */] = {
    0.75f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806DEFF8, &lit_6029);
#pragma pop

/* 806DF000-806DF008 0001C8 0008+00 0/1 0/0 0/0 .rodata          @6031 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6031[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806DF000, &lit_6031);
#pragma pop

/* 806DC5D4-806DD800 004634 122C+00 1/1 0/0 0/0 .text            demo_camera__FP11e_gob_class */
static void demo_camera(e_gob_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DF008-806DF00C 0001D0 0004+00 0/1 0/0 0/0 .rodata          @6340 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6340 = 21.0f;
COMPILER_STRIP_GATE(0x806DF008, &lit_6340);
#pragma pop

/* 806DF00C-806DF010 0001D4 0004+00 0/1 0/0 0/0 .rodata          @6341 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6341 = 44.0f;
COMPILER_STRIP_GATE(0x806DF00C, &lit_6341);
#pragma pop

/* 806DF010-806DF014 0001D8 0004+00 0/1 0/0 0/0 .rodata          @6342 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6342 = 27.0f;
COMPILER_STRIP_GATE(0x806DF010, &lit_6342);
#pragma pop

/* 806DF014-806DF018 0001DC 0004+00 0/1 0/0 0/0 .rodata          @6343 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6343 = 9.0f;
COMPILER_STRIP_GATE(0x806DF014, &lit_6343);
#pragma pop

/* 806DF018-806DF01C 0001E0 0004+00 0/1 0/0 0/0 .rodata          @6344 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6344 = 18.0f;
COMPILER_STRIP_GATE(0x806DF018, &lit_6344);
#pragma pop

/* 806DF01C-806DF020 0001E4 0004+00 0/1 0/0 0/0 .rodata          @6345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6345 = 32.5f;
COMPILER_STRIP_GATE(0x806DF01C, &lit_6345);
#pragma pop

/* 806DF020-806DF024 0001E8 0004+00 0/1 0/0 0/0 .rodata          @6346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6346 = 7.5f;
COMPILER_STRIP_GATE(0x806DF020, &lit_6346);
#pragma pop

/* 806DF024-806DF028 0001EC 0004+00 0/1 0/0 0/0 .rodata          @6347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6347 = 22.5f;
COMPILER_STRIP_GATE(0x806DF024, &lit_6347);
#pragma pop

/* 806DF028-806DF02C 0001F0 0004+00 0/1 0/0 0/0 .rodata          @6348 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6348 = 29.5f;
COMPILER_STRIP_GATE(0x806DF028, &lit_6348);
#pragma pop

/* 806DF02C-806DF030 0001F4 0004+00 0/1 0/0 0/0 .rodata          @6349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6349 = 24.5f;
COMPILER_STRIP_GATE(0x806DF02C, &lit_6349);
#pragma pop

/* 806DF030-806DF034 0001F8 0004+00 0/1 0/0 0/0 .rodata          @6350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6350 = 41.0f;
COMPILER_STRIP_GATE(0x806DF030, &lit_6350);
#pragma pop

/* 806DF034-806DF038 0001FC 0004+00 0/1 0/0 0/0 .rodata          @6351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6351 = 2.5f;
COMPILER_STRIP_GATE(0x806DF034, &lit_6351);
#pragma pop

/* 806DF038-806DF03C 000200 0004+00 0/1 0/0 0/0 .rodata          @6352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6352 = 16.0f;
COMPILER_STRIP_GATE(0x806DF038, &lit_6352);
#pragma pop

/* 806DF03C-806DF040 000204 0004+00 0/1 0/0 0/0 .rodata          @6353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6353 = 12000.0f;
COMPILER_STRIP_GATE(0x806DF03C, &lit_6353);
#pragma pop

/* 806DF040-806DF044 000208 0004+00 0/1 0/0 0/0 .rodata          @6354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6354 = 13000.0f;
COMPILER_STRIP_GATE(0x806DF040, &lit_6354);
#pragma pop

/* 806DD800-806DE4B8 005860 0CB8+00 2/1 0/0 0/0 .text            daE_GOB_Execute__FP11e_gob_class */
static void daE_GOB_Execute(e_gob_class* param_0) {
    // NONMATCHING
}

/* 806DE4B8-806DE4C0 006518 0008+00 1/0 0/0 0/0 .text            daE_GOB_IsDelete__FP11e_gob_class
 */
static bool daE_GOB_IsDelete(e_gob_class* param_0) {
    return true;
}

/* 806DE4C0-806DE528 006520 0068+00 1/0 0/0 0/0 .text            daE_GOB_Delete__FP11e_gob_class */
static void daE_GOB_Delete(e_gob_class* param_0) {
    // NONMATCHING
}

/* 806DE528-806DE69C 006588 0174+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DF044-806DF048 00020C 0004+00 0/1 0/0 0/0 .rodata          @6497 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6497 = -7.0f;
COMPILER_STRIP_GATE(0x806DF044, &lit_6497);
#pragma pop

/* 806DF048-806DF04C 000210 0004+00 0/1 0/0 0/0 .rodata          @6498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6498 = -300.0f;
COMPILER_STRIP_GATE(0x806DF048, &lit_6498);
#pragma pop

/* 806DF04C-806DF050 000214 0004+00 0/1 0/0 0/0 .rodata          @6499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6499 = 2100.0f;
COMPILER_STRIP_GATE(0x806DF04C, &lit_6499);
#pragma pop

/* 806DF050-806DF054 000218 0004+00 0/1 0/0 0/0 .rodata          @6500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6500 = -2180.0f;
COMPILER_STRIP_GATE(0x806DF050, &lit_6500);
#pragma pop

/* 806DE69C-806DEA10 0066FC 0374+00 1/0 0/0 0/0 .text            daE_GOB_Create__FP10fopAc_ac_c */
static void daE_GOB_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806DEA10-806DEBD0 006A70 01C0+00 1/1 0/0 0/0 .text            __ct__11e_gob_classFv */
e_gob_class::e_gob_class() {
    // NONMATCHING
}

/* 806DEBD0-806DEC18 006C30 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806DEC18-806DEC60 006C78 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806DEC60-806DECD0 006CC0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806DECD0-806DED18 006D30 0048+00 2/1 0/0 0/0 .text            __dt__13daE_GOB_HIO_cFv */
daE_GOB_HIO_c::~daE_GOB_HIO_c() {
    // NONMATCHING
}

/* 806DED18-806DED84 006D78 006C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_gob_cpp */
void __sinit_d_a_e_gob_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806DED18, __sinit_d_a_e_gob_cpp);
#pragma pop

/* 806DED84-806DED8C 006DE4 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_806DED84() {
    // NONMATCHING
}

/* 806DED8C-806DED94 006DEC 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_806DED8C() {
    // NONMATCHING
}

/* 806DED94-806DED9C 006DF4 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_806DED94() {
    // NONMATCHING
}

/* 806DED9C-806DEDA4 006DFC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806DED9C() {
    // NONMATCHING
}

/* 806DEDA4-806DEDAC 006E04 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806DEDA4() {
    // NONMATCHING
}

/* 806DEDAC-806DEE24 006E0C 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806DF314-806DF318 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_806DF314[4];
#pragma pop

/* 806DF318-806DF31C 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_806DF318[4];
#pragma pop

/* 806DF31C-806DF320 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_806DF31C[4];
#pragma pop

/* 806DF320-806DF324 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806DF320[4];
#pragma pop

/* 806DF324-806DF328 0000A4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806DF324[4];
#pragma pop

/* 806DF328-806DF32C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806DF328[4];
#pragma pop

/* 806DF32C-806DF330 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_806DF32C[4];
#pragma pop

/* 806DF330-806DF334 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_806DF330[4];
#pragma pop

/* 806DF334-806DF338 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_806DF334[4];
#pragma pop

/* 806DF338-806DF33C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_806DF338[4];
#pragma pop

/* 806DF33C-806DF340 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_806DF33C[4];
#pragma pop

/* 806DF340-806DF344 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806DF340[4];
#pragma pop

/* 806DF344-806DF348 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_806DF344[4];
#pragma pop

/* 806DF348-806DF34C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806DF348[4];
#pragma pop

/* 806DF34C-806DF350 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806DF34C[4];
#pragma pop

/* 806DF350-806DF354 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_806DF350[4];
#pragma pop

/* 806DF354-806DF358 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_806DF354[4];
#pragma pop

/* 806DF358-806DF35C 0000D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806DF358[4];
#pragma pop

/* 806DF35C-806DF360 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_806DF35C[4];
#pragma pop

/* 806DF360-806DF364 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_806DF360[4];
#pragma pop

/* 806DF364-806DF368 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_806DF364[4];
#pragma pop

/* 806DF368-806DF36C 0000E8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806DF368[4];
#pragma pop

/* 806DF36C-806DF370 0000EC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806DF36C[4];
#pragma pop

/* 806DF370-806DF374 0000F0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806DF370[4];
#pragma pop

/* 806DF374-806DF378 0000F4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_806DF374[4];
#pragma pop

/* 806DF054-806DF054 00021C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

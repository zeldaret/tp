/**
 * @file d_a_e_fs.cpp
 * 
*/

#include "rel/d/a/e/d_a_e_fs/d_a_e_fs.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_Fs_HIO_cFv();
extern "C" static void anm_init__FP10e_fs_classifUcf();
extern "C" static void daE_Fs_Draw__FP10e_fs_class();
extern "C" static void way_bg_check__FP10e_fs_classfs();
extern "C" static void e_fs_appear__FP10e_fs_class();
extern "C" static void e_fs_wait__FP10e_fs_class();
extern "C" static void e_fs_move__FP10e_fs_class();
extern "C" static void e_fs_attack__FP10e_fs_class();
extern "C" static void e_fs_damage__FP10e_fs_class();
extern "C" static void e_fs_end__FP10e_fs_class();
extern "C" static void damage_check__FP10e_fs_class();
extern "C" static void checkViewArea__FP4cXyz();
extern "C" static void e_fs_demowait__FP10e_fs_class();
extern "C" static void action__FP10e_fs_class();
extern "C" static void daE_Fs_Execute__FP10e_fs_class();
extern "C" static bool daE_Fs_IsDelete__FP10e_fs_class();
extern "C" static void daE_Fs_Delete__FP10e_fs_class();
extern "C" static void useHeapIe_fst__FP10fopAc_ac_c();
extern "C" static void daE_Fs_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_Fs_HIO_cFv();
extern "C" void __sinit_d_a_e_fs_cpp();
extern "C" static void func_806BE018();
extern "C" static void func_806BE020();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_fs__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoLib_project__FP3VecP3Vec();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onZoneSwitch__Fii();
extern "C" void dComIfGs_isZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetSpecialCode__4dBgSFRC13cBgS_PolyInfo();
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
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_19();
extern "C" void _savegpr_23();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806BE48C-806BE490 000000 0004+00 16/16 0/0 0/0 .rodata          @3917 */
SECTION_RODATA static f32 const lit_3917 = 100.0f;
COMPILER_STRIP_GATE(0x806BE48C, &lit_3917);

/* 806BE490-806BE494 000004 0004+00 2/10 0/0 0/0 .rodata          @3918 */
SECTION_RODATA static u8 const lit_3918[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806BE490, &lit_3918);

/* 806BE494-806BE49C 000008 0004+04 1/10 0/0 0/0 .rodata          @3919 */
SECTION_RODATA static f32 const lit_3919[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806BE494, &lit_3919);

/* 806BE49C-806BE4A4 000010 0008+00 0/2 0/0 0/0 .rodata          @3920 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3920[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806BE49C, &lit_3920);
#pragma pop

/* 806BE4A4-806BE4AC 000018 0008+00 0/2 0/0 0/0 .rodata          @3921 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3921[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806BE4A4, &lit_3921);
#pragma pop

/* 806BE4AC-806BE4B4 000020 0008+00 0/2 0/0 0/0 .rodata          @3922 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3922[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806BE4AC, &lit_3922);
#pragma pop

/* 806BE4B4-806BE4B8 000028 0004+00 0/1 0/0 0/0 .rodata          @3923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3923 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x806BE4B4, &lit_3923);
#pragma pop

/* 806BE4B8-806BE4BC 00002C 0004+00 0/1 0/0 0/0 .rodata          @3938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3938 = 350.0f;
COMPILER_STRIP_GATE(0x806BE4B8, &lit_3938);
#pragma pop

/* 806BE4BC-806BE4C0 000030 0004+00 0/1 0/0 0/0 .rodata          @3939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3939 = 170.0f;
COMPILER_STRIP_GATE(0x806BE4BC, &lit_3939);
#pragma pop

/* 806BE4C0-806BE4C4 000034 0004+00 0/2 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3940 = 2000.0f;
COMPILER_STRIP_GATE(0x806BE4C0, &lit_3940);
#pragma pop

/* 806BE580-806BE58C 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806BE58C-806BE5A0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 806BE5A0-806BE5A8 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3796 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 806BE5A8-806BE5B0 000028 0008+00 0/1 0/0 0/0 .data            e_env$3797 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 806BE5B0-806BE5B8 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3805 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_id[6 + 2 /* padding */] = {
    0x02,
    0x9D,
    0x02,
    0x9E,
    0x02,
    0x9F,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 806BE5B8-806BE5C0 000038 0008+00 1/1 0/0 0/0 .data            w_eff_id$4278 */
SECTION_DATA static u8 w_eff_id[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 806BE5C0-806BE5DC -00001 001C+00 1/1 0/0 0/0 .data            @4449 */
SECTION_DATA static void* lit_4449[7] = {
    (void*)(((char*)e_fs_demowait__FP10e_fs_class) + 0x5C),
    (void*)(((char*)e_fs_demowait__FP10e_fs_class) + 0xA8),
    (void*)(((char*)e_fs_demowait__FP10e_fs_class) + 0x118),
    (void*)(((char*)e_fs_demowait__FP10e_fs_class) + 0x190),
    (void*)(((char*)e_fs_demowait__FP10e_fs_class) + 0x220),
    (void*)(((char*)e_fs_demowait__FP10e_fs_class) + 0x1E4),
    (void*)(((char*)e_fs_demowait__FP10e_fs_class) + 0x1FC),
};

/* 806BE5DC-806BE608 -00001 002C+00 1/1 0/0 0/0 .data            @4546 */
SECTION_DATA static void* lit_4546[11] = {
    (void*)(((char*)action__FP10e_fs_class) + 0x88),
    (void*)(((char*)action__FP10e_fs_class) + 0x98),
    (void*)(((char*)action__FP10e_fs_class) + 0xA8),
    (void*)(((char*)action__FP10e_fs_class) + 0x11C),
    (void*)(((char*)action__FP10e_fs_class) + 0x12C),
    (void*)(((char*)action__FP10e_fs_class) + 0x138),
    (void*)(((char*)action__FP10e_fs_class) + 0x14C),
    (void*)(((char*)action__FP10e_fs_class) + 0x14C),
    (void*)(((char*)action__FP10e_fs_class) + 0x14C),
    (void*)(((char*)action__FP10e_fs_class) + 0x14C),
    (void*)(((char*)action__FP10e_fs_class) + 0x144),
};

/* 806BE608-806BE64C 000088 0044+00 1/1 0/0 0/0 .data            cc_cyl_src$4689 */
static dCcD_SrcCyl cc_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x43}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x4, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        80.0f, // mRadius
        230.0f // mHeight
    } // mCyl
};

/* 806BE64C-806BE68C 0000CC 0040+00 1/1 0/0 0/0 .data            at_sph_src$4690 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_17, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 30.0f} // mSph
    } // mSphAttr
};

/* 806BE68C-806BE6AC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_Fs_Method */
static actor_method_class l_daE_Fs_Method = {
    (process_method_func)daE_Fs_Create__FP10fopAc_ac_c,
    (process_method_func)daE_Fs_Delete__FP10e_fs_class,
    (process_method_func)daE_Fs_Execute__FP10e_fs_class,
    (process_method_func)daE_Fs_IsDelete__FP10e_fs_class,
    (process_method_func)daE_Fs_Draw__FP10e_fs_class,
};

/* 806BE6AC-806BE6DC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_FS */
extern actor_process_profile_definition g_profile_E_FS = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_FS,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(e_fs_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  160,                    // mPriority
  &l_daE_Fs_Method,       // sub_method
  0x00040120,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806BE6DC-806BE6E8 00015C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806BE6E8-806BE6F4 000168 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806BE6F4-806BE700 000174 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806BE700-806BE70C 000180 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806BE70C-806BE718 00018C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 806BE718-806BE724 000198 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806BE724-806BE748 0001A4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806BE020,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806BE018,
};

/* 806BE748-806BE754 0001C8 000C+00 2/2 0/0 0/0 .data            __vt__12daE_Fs_HIO_c */
SECTION_DATA extern void* __vt__12daE_Fs_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_Fs_HIO_cFv,
};

/* 806BBACC-806BBB10 0000EC 0044+00 1/1 0/0 0/0 .text            __ct__12daE_Fs_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_Fs_HIO_c::daE_Fs_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/__ct__12daE_Fs_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 806BE4C4-806BE4C8 000038 0004+00 1/1 0/0 0/0 .rodata          @3954 */
SECTION_RODATA static f32 const lit_3954 = -1.0f;
COMPILER_STRIP_GATE(0x806BE4C4, &lit_3954);

/* 806BE564-806BE564 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806BE564 = "E_FS";
#pragma pop

/* 806BBB10-806BBBBC 000130 00AC+00 7/7 0/0 0/0 .text            anm_init__FP10e_fs_classifUcf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void anm_init(e_fs_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/anm_init__FP10e_fs_classifUcf.s"
}
#pragma pop

/* ############################################################################################## */
/* 806BE4C8-806BE4CC 00003C 0004+00 0/3 0/0 0/0 .rodata          @3984 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3984 = 1000.0f;
COMPILER_STRIP_GATE(0x806BE4C8, &lit_3984);
#pragma pop

/* 806BE4CC-806BE4D0 000040 0004+00 0/4 0/0 0/0 .rodata          @3985 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3985 = 50.0f;
COMPILER_STRIP_GATE(0x806BE4CC, &lit_3985);
#pragma pop

/* 806BBBBC-806BBCDC 0001DC 0120+00 1/0 0/0 0/0 .text            daE_Fs_Draw__FP10e_fs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_Fs_Draw(e_fs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/daE_Fs_Draw__FP10e_fs_class.s"
}
#pragma pop

/* 806BBCDC-806BBDF4 0002FC 0118+00 1/1 0/0 0/0 .text            way_bg_check__FP10e_fs_classfs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void way_bg_check(e_fs_class* param_0, f32 param_1, s16 param_2) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/way_bg_check__FP10e_fs_classfs.s"
}
#pragma pop

/* ############################################################################################## */
/* 806BE4D0-806BE4D4 000044 0004+00 0/3 0/0 0/0 .rodata          @4075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4075 = 10000.0f;
COMPILER_STRIP_GATE(0x806BE4D0, &lit_4075);
#pragma pop

/* 806BE4D4-806BE4D8 000048 0004+00 0/4 0/0 0/0 .rodata          @4076 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4076 = 10.0f;
COMPILER_STRIP_GATE(0x806BE4D4, &lit_4076);
#pragma pop

/* 806BE4D8-806BE4DC 00004C 0004+00 0/1 0/0 0/0 .rodata          @4077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4077 = 38.0f;
COMPILER_STRIP_GATE(0x806BE4D8, &lit_4077);
#pragma pop

/* 806BE4DC-806BE4E0 000050 0004+00 0/3 0/0 0/0 .rodata          @4078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4078 = 200.0f;
COMPILER_STRIP_GATE(0x806BE4DC, &lit_4078);
#pragma pop

/* 806BE4E0-806BE4E4 000054 0004+00 0/4 0/0 0/0 .rodata          @4079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4079 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x806BE4E0, &lit_4079);
#pragma pop

/* 806BE4E4-806BE4E8 000058 0004+00 0/4 0/0 0/0 .rodata          @4080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4080 = 0.5f;
COMPILER_STRIP_GATE(0x806BE4E4, &lit_4080);
#pragma pop

/* 806BBDF4-806BC0A8 000414 02B4+00 1/1 0/0 0/0 .text            e_fs_appear__FP10e_fs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_fs_appear(e_fs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/e_fs_appear__FP10e_fs_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806BE4E8-806BE4EC 00005C 0004+00 0/3 0/0 0/0 .rodata          @4117 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4117 = 2.0f;
COMPILER_STRIP_GATE(0x806BE4E8, &lit_4117);
#pragma pop

/* 806BE4EC-806BE4F0 000060 0004+00 0/1 0/0 0/0 .rodata          @4118 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4118 = 60.0f;
COMPILER_STRIP_GATE(0x806BE4EC, &lit_4118);
#pragma pop

/* 806BE4F0-806BE4F4 000064 0004+00 0/1 0/0 0/0 .rodata          @4119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4119 = 4.0f;
COMPILER_STRIP_GATE(0x806BE4F0, &lit_4119);
#pragma pop

/* 806BC0A8-806BC264 0006C8 01BC+00 1/1 0/0 0/0 .text            e_fs_wait__FP10e_fs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_fs_wait(e_fs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/e_fs_wait__FP10e_fs_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806BE4F4-806BE4F8 000068 0004+00 0/2 0/0 0/0 .rodata          @4155 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4155 = 20.0f;
COMPILER_STRIP_GATE(0x806BE4F4, &lit_4155);
#pragma pop

/* 806BE4F8-806BE4FC 00006C 0004+00 0/1 0/0 0/0 .rodata          @4156 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4156 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x806BE4F8, &lit_4156);
#pragma pop

/* 806BE4FC-806BE500 000070 0004+00 0/2 0/0 0/0 .rodata          @4157 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4157 = 5.0f;
COMPILER_STRIP_GATE(0x806BE4FC, &lit_4157);
#pragma pop

/* 806BE500-806BE504 000074 0004+00 0/2 0/0 0/0 .rodata          @4158 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4158 = 300.0f;
COMPILER_STRIP_GATE(0x806BE500, &lit_4158);
#pragma pop

/* 806BE504-806BE508 000078 0004+00 0/1 0/0 0/0 .rodata          @4159 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4159 = 32000.0f;
COMPILER_STRIP_GATE(0x806BE504, &lit_4159);
#pragma pop

/* 806BE760-806BE764 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 806BE764-806BE768 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 806BE768-806BE76C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 806BE76C-806BE770 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 806BE770-806BE774 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 806BE774-806BE778 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 806BE778-806BE77C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 806BE77C-806BE780 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 806BE780-806BE784 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 806BE784-806BE788 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 806BE788-806BE78C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 806BE78C-806BE790 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 806BE790-806BE794 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 806BE794-806BE798 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 806BE798-806BE79C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 806BE79C-806BE7A0 -00001 0004+00 1/1 0/0 0/0 .bss             None */
/* 806BE79C 0001+01 data_806BE79C @1009 */
/* 806BE79E 0002+00 data_806BE79E s_AtCount__22@unnamed@d_a_e_fs_cpp@ */
static u8 struct_806BE79C[4];

/* 806BE7A0-806BE7A4 000048 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_806BE7A0[4];

/* 806BE7A4-806BE7B0 00004C 000C+00 1/1 0/0 0/0 .bss             @3933 */
static u8 lit_3933[12];

/* 806BE7B0-806BE7CC 000058 001C+00 6/6 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 806BC264-806BC444 000884 01E0+00 1/1 0/0 0/0 .text            e_fs_move__FP10e_fs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_fs_move(e_fs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/e_fs_move__FP10e_fs_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806BE508-806BE50C 00007C 0004+00 0/1 0/0 0/0 .rodata          @4237 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4237 = 9.0f;
COMPILER_STRIP_GATE(0x806BE508, &lit_4237);
#pragma pop

/* 806BE50C-806BE510 000080 0004+00 0/1 0/0 0/0 .rodata          @4238 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4238 = -10.0f;
COMPILER_STRIP_GATE(0x806BE50C, &lit_4238);
#pragma pop

/* 806BC444-806BC750 000A64 030C+00 1/1 0/0 0/0 .text            e_fs_attack__FP10e_fs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_fs_attack(e_fs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/e_fs_attack__FP10e_fs_class.s"
}
#pragma pop

/* 806BC750-806BC818 000D70 00C8+00 1/1 0/0 0/0 .text            e_fs_damage__FP10e_fs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_fs_damage(e_fs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/e_fs_damage__FP10e_fs_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806BE510-806BE514 000084 0004+00 0/1 0/0 0/0 .rodata          @4338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4338 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x806BE510, &lit_4338);
#pragma pop

/* 806BE514-806BE518 000088 0004+00 0/1 0/0 0/0 .rodata          @4339 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4339 = 23.0f;
COMPILER_STRIP_GATE(0x806BE514, &lit_4339);
#pragma pop

/* 806BE518-806BE51C 00008C 0004+00 0/1 0/0 0/0 .rodata          @4340 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4340 = 15.0f;
COMPILER_STRIP_GATE(0x806BE518, &lit_4340);
#pragma pop

/* 806BE51C-806BE520 000090 0004+00 0/1 0/0 0/0 .rodata          @4341 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4341 = 1.25f;
COMPILER_STRIP_GATE(0x806BE51C, &lit_4341);
#pragma pop

/* 806BE520-806BE524 000094 0004+00 0/1 0/0 0/0 .rodata          @4342 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4342 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x806BE520, &lit_4342);
#pragma pop

/* 806BE564-806BE564 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806BE569 = "F_SP117";
#pragma pop

/* 806BE7CC-806BE7DC 000074 000C+04 0/1 0/0 0/0 .bss             @4275 */
#pragma push
#pragma force_active on
static u8 lit_4275[12 + 4 /* padding */];
#pragma pop

/* 806BE7DC-806BE7E8 000084 000C+00 0/1 0/0 0/0 .bss             sc$4274 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 806BC818-806BCC30 000E38 0418+00 1/1 0/0 0/0 .text            e_fs_end__FP10e_fs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_fs_end(e_fs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/e_fs_end__FP10e_fs_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806BE524-806BE528 000098 0004+00 0/1 0/0 0/0 .rodata          @4380 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4380 = -40.0f;
COMPILER_STRIP_GATE(0x806BE524, &lit_4380);
#pragma pop

/* 806BE528-806BE52C 00009C 0004+00 0/1 0/0 0/0 .rodata          @4381 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4381 = -30.0f;
COMPILER_STRIP_GATE(0x806BE528, &lit_4381);
#pragma pop

/* 806BE52C-806BE530 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4382 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4382 = -5.0f;
COMPILER_STRIP_GATE(0x806BE52C, &lit_4382);
#pragma pop

/* 806BCC30-806BCDDC 001250 01AC+00 1/1 0/0 0/0 .text            damage_check__FP10e_fs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void damage_check(e_fs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/damage_check__FP10e_fs_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806BE530-806BE534 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4396 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4396 = 608.0f;
COMPILER_STRIP_GATE(0x806BE530, &lit_4396);
#pragma pop

/* 806BE534-806BE538 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4397 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4397 = 448.0f;
COMPILER_STRIP_GATE(0x806BE534, &lit_4397);
#pragma pop

/* 806BCDDC-806BCE5C 0013FC 0080+00 1/1 0/0 0/0 .text            checkViewArea__FP4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void checkViewArea(cXyz* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/checkViewArea__FP4cXyz.s"
}
#pragma pop

/* ############################################################################################## */
/* 806BE538-806BE53C 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4447 = 20000.0f;
COMPILER_STRIP_GATE(0x806BE538, &lit_4447);
#pragma pop

/* 806BCE5C-806BD0A8 00147C 024C+00 2/1 0/0 0/0 .text            e_fs_demowait__FP10e_fs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_fs_demowait(e_fs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/e_fs_demowait__FP10e_fs_class.s"
}
#pragma pop

/* 806BD0A8-806BD3E0 0016C8 0338+00 2/1 0/0 0/0 .text            action__FP10e_fs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void action(e_fs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/action__FP10e_fs_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806BE53C-806BE544 0000B0 0004+04 0/0 0/0 0/0 .rodata          @4448 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4448[1 + 1 /* padding */] = {
    1300.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806BE53C, &lit_4448);
#pragma pop

/* 806BE544-806BE54C 0000B8 0008+00 0/0 0/0 0/0 .rodata          @4451 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4451[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806BE544, &lit_4451);
#pragma pop

/* 806BE54C-806BE550 0000C0 0004+00 0/0 0/0 0/0 .rodata          @4544 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4544 = -80.0f;
COMPILER_STRIP_GATE(0x806BE54C, &lit_4544);
#pragma pop

/* 806BE550-806BE554 0000C4 0004+00 0/0 0/0 0/0 .rodata          @4545 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4545 = 400.0f;
COMPILER_STRIP_GATE(0x806BE550, &lit_4545);
#pragma pop

/* 806BE554-806BE558 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4622 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4622 = 1.5f;
COMPILER_STRIP_GATE(0x806BE554, &lit_4622);
#pragma pop

/* 806BE558-806BE55C 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4623 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4623 = 120.0f;
COMPILER_STRIP_GATE(0x806BE558, &lit_4623);
#pragma pop

/* 806BE55C-806BE560 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4624 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4624 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x806BE55C, &lit_4624);
#pragma pop

/* 806BD3E0-806BD6D0 001A00 02F0+00 2/1 0/0 0/0 .text            daE_Fs_Execute__FP10e_fs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_Fs_Execute(e_fs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/daE_Fs_Execute__FP10e_fs_class.s"
}
#pragma pop

/* 806BD6D0-806BD6D8 001CF0 0008+00 1/0 0/0 0/0 .text            daE_Fs_IsDelete__FP10e_fs_class */
static bool daE_Fs_IsDelete(e_fs_class* param_0) {
    return true;
}

/* 806BD6D8-806BD740 001CF8 0068+00 1/0 0/0 0/0 .text            daE_Fs_Delete__FP10e_fs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_Fs_Delete(e_fs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/daE_Fs_Delete__FP10e_fs_class.s"
}
#pragma pop

/* 806BD740-806BD838 001D60 00F8+00 1/1 0/0 0/0 .text            useHeapIe_fst__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapIe_fst(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/useHeapIe_fst__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 806BE560-806BE564 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4838 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4838 = -200.0f;
COMPILER_STRIP_GATE(0x806BE560, &lit_4838);
#pragma pop

/* 806BE564-806BE564 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806BE571 = "F_SP108";
SECTION_DEAD static char const* const stringBase_806BE579 = "E_fs";
#pragma pop

/* 806BD838-806BDD38 001E58 0500+00 1/0 0/0 0/0 .text            daE_Fs_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_Fs_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/daE_Fs_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 806BDD38-806BDD80 002358 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 806BDD80-806BDDC8 0023A0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 806BDDC8-806BDE10 0023E8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 806BDE10-806BDE6C 002430 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 806BDE6C-806BDEDC 00248C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 806BDEDC-806BDF4C 0024FC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 806BDF4C-806BDF94 00256C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 806BDF94-806BDFDC 0025B4 0048+00 2/1 0/0 0/0 .text            __dt__12daE_Fs_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_Fs_HIO_c::~daE_Fs_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/__dt__12daE_Fs_HIO_cFv.s"
}
#pragma pop

/* 806BDFDC-806BE018 0025FC 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_fs_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_e_fs_cpp() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/__sinit_d_a_e_fs_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806BDFDC, __sinit_d_a_e_fs_cpp);
#pragma pop

/* 806BE018-806BE020 002638 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_806BE018() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/func_806BE018.s"
}
#pragma pop

/* 806BE020-806BE028 002640 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_806BE020() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/func_806BE020.s"
}
#pragma pop

/* 806BE028-806BE43C 002648 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz.s"
}
#pragma pop

/* 806BE43C-806BE478 002A5C 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_fs/d_a_e_fs/__dt__4cXyzFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 806BE7E8-806BE7EC 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_806BE7E8[4];
#pragma pop

/* 806BE7EC-806BE7F0 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_806BE7EC[4];
#pragma pop

/* 806BE7F0-806BE7F4 000098 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_806BE7F0[4];
#pragma pop

/* 806BE7F4-806BE7F8 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806BE7F4[4];
#pragma pop

/* 806BE7F8-806BE7FC 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806BE7F8[4];
#pragma pop

/* 806BE7FC-806BE800 0000A4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806BE7FC[4];
#pragma pop

/* 806BE800-806BE804 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_806BE800[4];
#pragma pop

/* 806BE804-806BE808 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_806BE804[4];
#pragma pop

/* 806BE808-806BE80C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_806BE808[4];
#pragma pop

/* 806BE80C-806BE810 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_806BE80C[4];
#pragma pop

/* 806BE810-806BE814 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_806BE810[4];
#pragma pop

/* 806BE814-806BE818 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806BE814[4];
#pragma pop

/* 806BE818-806BE81C 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_806BE818[4];
#pragma pop

/* 806BE81C-806BE820 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806BE81C[4];
#pragma pop

/* 806BE820-806BE824 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806BE820[4];
#pragma pop

/* 806BE824-806BE828 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_806BE824[4];
#pragma pop

/* 806BE828-806BE82C 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_806BE828[4];
#pragma pop

/* 806BE82C-806BE830 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806BE82C[4];
#pragma pop

/* 806BE830-806BE834 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_806BE830[4];
#pragma pop

/* 806BE834-806BE838 0000DC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_806BE834[4];
#pragma pop

/* 806BE838-806BE83C 0000E0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_806BE838[4];
#pragma pop

/* 806BE83C-806BE840 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806BE83C[4];
#pragma pop

/* 806BE840-806BE844 0000E8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806BE840[4];
#pragma pop

/* 806BE844-806BE848 0000EC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806BE844[4];
#pragma pop

/* 806BE848-806BE84C 0000F0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_806BE848[4];
#pragma pop

/* 806BE564-806BE564 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

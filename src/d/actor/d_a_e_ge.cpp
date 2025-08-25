/**
 * d_a_e_ge.cpp
 * Enemy - Guay
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_ge.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"

//
// Forward References:
//

extern "C" void __ct__12daE_GE_HIO_cFv();
extern "C" void bckSet__8daE_GE_cFifUcf();
extern "C" void bckCheck__8daE_GE_cFi();
extern "C" void draw__8daE_GE_cFv();
extern "C" static void daE_GE_Draw__FP8daE_GE_c();
extern "C" void checkBeforeBg__8daE_GE_cFif();
extern "C" static void s_arrow_sub__FPvPv();
extern "C" static void s_ge_surprise__FPvPv();
extern "C" static void s_ge_caw__FPvPv();
extern "C" static void s_ge_attack__FPvPv();
extern "C" static void s_ge_attack2__FPvPv();
extern "C" void setActionMode__8daE_GE_cFi();
extern "C" void damage_check__8daE_GE_cFv();
extern "C" void checkOtherAttacker__8daE_GE_cFv();
extern "C" void searchNextAttacker__8daE_GE_cFv();
extern "C" void checkCircleSpeedAdd__8daE_GE_cFP4cXyzP4cXyz();
extern "C" void setAddCalcSpeed__8daE_GE_cFR4cXyzRC4cXyzffff();
extern "C" void calcCircleFly__8daE_GE_cFP4cXyzP4cXyzsfsf();
extern "C" void executeWait__8daE_GE_cFv();
extern "C" void executeFly__8daE_GE_cFv();
extern "C" void checkAttackPossible__8daE_GE_cFsb();
extern "C" void executeAttack__8daE_GE_cFv();
extern "C" void setBackAnime__8daE_GE_cFi();
extern "C" void executeBack__8daE_GE_cFv();
extern "C" void executeDown__8daE_GE_cFv();
extern "C" void setSurpriseTime__8daE_GE_cFs();
extern "C" void setSurprise__8daE_GE_cFv();
extern "C" void executeSurprise__8daE_GE_cFv();
extern "C" void setCaw__8daE_GE_cFv();
extern "C" void executeCaw__8daE_GE_cFv();
extern "C" void executeWind__8daE_GE_cFv();
extern "C" void executeShield__8daE_GE_cFv();
extern "C" void action__8daE_GE_cFv();
extern "C" void mtx_set__8daE_GE_cFv();
extern "C" void cc_set__8daE_GE_cFv();
extern "C" void execute__8daE_GE_cFv();
extern "C" static void daE_GE_Execute__FP8daE_GE_c();
extern "C" static bool daE_GE_IsDelete__FP8daE_GE_c();
extern "C" void _delete__8daE_GE_cFv();
extern "C" static void daE_GE_Delete__FP8daE_GE_c();
extern "C" void CreateHeap__8daE_GE_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_GE_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daE_GE_Create__FP8daE_GE_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_GE_HIO_cFv();
extern "C" void __sinit_d_a_e_ge_cpp();
extern "C" static void func_806CCBC8();
extern "C" static void func_806CCBD0();
extern "C" extern char const* const d_a_e_ge__stringBase0;
extern "C" u8 l_actionmenu__8daE_GE_c[108];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LockonTarget__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetGroundUpY__9dBgS_AcchFf();
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
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void getThrowBoomerangActor__9daPy_py_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void __dv__4cXyzCFf();
extern "C" bool __ne__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalcPos__FP4cXyzRC4cXyzfff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_19();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806CD02C-806CD030 00002C 0004+00 0/4 0/0 0/0 .rodata          @3925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3925 = 1000.0f;
COMPILER_STRIP_GATE(0x806CD02C, &lit_3925);
#pragma pop

/* 806CD030-806CD034 000030 0004+00 2/7 0/0 0/0 .rodata          @3926 */
SECTION_RODATA static f32 const lit_3926 = 300.0f;
COMPILER_STRIP_GATE(0x806CD030, &lit_3926);

/* 806CD034-806CD038 000034 0004+00 0/1 0/0 0/0 .rodata          @3927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3927 = 600.0f;
COMPILER_STRIP_GATE(0x806CD034, &lit_3927);
#pragma pop

/* 806CD038-806CD03C 000038 0004+00 0/2 0/0 0/0 .rodata          @3928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3928 = 15.0f;
COMPILER_STRIP_GATE(0x806CD038, &lit_3928);
#pragma pop

/* 806CD03C-806CD040 00003C 0004+00 0/1 0/0 0/0 .rodata          @3929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3929 = 28000.0f;
COMPILER_STRIP_GATE(0x806CD03C, &lit_3929);
#pragma pop

/* 806CD040-806CD044 000040 0004+00 0/1 0/0 0/0 .rodata          @3930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3930 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x806CD040, &lit_3930);
#pragma pop

/* 806CD044-806CD048 000044 0004+00 0/2 0/0 0/0 .rodata          @3931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3931 = 500.0f;
COMPILER_STRIP_GATE(0x806CD044, &lit_3931);
#pragma pop

/* 806CD048-806CD04C 000048 0004+00 0/1 0/0 0/0 .rodata          @3932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3932 = 110.0f;
COMPILER_STRIP_GATE(0x806CD048, &lit_3932);
#pragma pop

/* 806CD150-806CD17C -00001 002C+00 1/1 0/0 0/0 .data            @5071 */
SECTION_DATA static void* lit_5071[11] = {
    (void*)(((char*)executeBack__8daE_GE_cFv) + 0x48),
    (void*)(((char*)executeBack__8daE_GE_cFv) + 0x214),
    (void*)(((char*)executeBack__8daE_GE_cFv) + 0x3E4),
    (void*)(((char*)executeBack__8daE_GE_cFv) + 0x6E4),
    (void*)(((char*)executeBack__8daE_GE_cFv) + 0x87C),
    (void*)(((char*)executeBack__8daE_GE_cFv) + 0x9E8),
    (void*)(((char*)executeBack__8daE_GE_cFv) + 0x9E8),
    (void*)(((char*)executeBack__8daE_GE_cFv) + 0x9E8),
    (void*)(((char*)executeBack__8daE_GE_cFv) + 0x9E8),
    (void*)(((char*)executeBack__8daE_GE_cFv) + 0x9E8),
    (void*)(((char*)executeBack__8daE_GE_cFv) + 0x48),
};

/* 806CD17C-806CD188 -00001 000C+00 0/1 0/0 0/0 .data            @5507 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5507[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeWait__8daE_GE_cFv,
};
#pragma pop

/* 806CD188-806CD194 -00001 000C+00 0/1 0/0 0/0 .data            @5508 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5508[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeFly__8daE_GE_cFv,
};
#pragma pop

/* 806CD194-806CD1A0 -00001 000C+00 0/1 0/0 0/0 .data            @5509 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5509[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeAttack__8daE_GE_cFv,
};
#pragma pop

/* 806CD1A0-806CD1AC -00001 000C+00 0/1 0/0 0/0 .data            @5510 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5510[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeBack__8daE_GE_cFv,
};
#pragma pop

/* 806CD1AC-806CD1B8 -00001 000C+00 0/1 0/0 0/0 .data            @5511 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5511[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeDown__8daE_GE_cFv,
};
#pragma pop

/* 806CD1B8-806CD1C4 -00001 000C+00 0/1 0/0 0/0 .data            @5512 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5512[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeSurprise__8daE_GE_cFv,
};
#pragma pop

/* 806CD1C4-806CD1D0 -00001 000C+00 0/1 0/0 0/0 .data            @5513 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5513[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeCaw__8daE_GE_cFv,
};
#pragma pop

/* 806CD1D0-806CD1DC -00001 000C+00 0/1 0/0 0/0 .data            @5514 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5514[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeWind__8daE_GE_cFv,
};
#pragma pop

/* 806CD1DC-806CD1E8 -00001 000C+00 0/1 0/0 0/0 .data            @5515 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5515[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeShield__8daE_GE_cFv,
};
#pragma pop

/* 806CD1E8-806CD254 0000D0 006C+00 1/2 0/0 0/0 .data            l_actionmenu__8daE_GE_c */
SECTION_DATA u8 daE_GE_c::l_actionmenu[108] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806CD254-806CD294 00013C 0040+00 1/1 0/0 0/0 .data            cc_sph_src$5699 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x22}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 806CD294-806CD2B4 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_GE_Method */
static actor_method_class l_daE_GE_Method = {
    (process_method_func)daE_GE_Create__FP8daE_GE_c,
    (process_method_func)daE_GE_Delete__FP8daE_GE_c,
    (process_method_func)daE_GE_Execute__FP8daE_GE_c,
    (process_method_func)daE_GE_IsDelete__FP8daE_GE_c,
    (process_method_func)daE_GE_Draw__FP8daE_GE_c,
};

/* 806CD2B4-806CD2E4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_GE */
extern actor_process_profile_definition g_profile_E_GE = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_GE,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_GE_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  192,                    // mPriority
  &l_daE_GE_Method,       // sub_method
  0x00050120,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806CD2E4-806CD2F0 0001CC 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806CD2F0-806CD2FC 0001D8 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806CD2FC-806CD308 0001E4 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806CD308-806CD314 0001F0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806CD314-806CD320 0001FC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806CD320-806CD344 000208 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806CCBD0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806CCBC8,
};

/* 806CD344-806CD350 00022C 000C+00 2/2 0/0 0/0 .data            __vt__12daE_GE_HIO_c */
SECTION_DATA extern void* __vt__12daE_GE_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_GE_HIO_cFv,
};

/* 806C7A4C-806C7AB8 0000EC 006C+00 1/1 0/0 0/0 .text            __ct__12daE_GE_HIO_cFv */
daE_GE_HIO_c::daE_GE_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD04C-806CD050 00004C 0004+00 1/1 0/0 0/0 .rodata          @3946 */
SECTION_RODATA static f32 const lit_3946 = -1.0f;
COMPILER_STRIP_GATE(0x806CD04C, &lit_3946);

/* 806CD10C-806CD10C 00010C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806CD10C = "E_GE";
#pragma pop

/* 806C7AB8-806C7B5C 000158 00A4+00 10/10 0/0 0/0 .text            bckSet__8daE_GE_cFifUcf */
void daE_GE_c::bckSet(int param_0, f32 param_1, u8 param_2, f32 param_3) {
    // NONMATCHING
}

/* 806C7B5C-806C7BB8 0001FC 005C+00 3/3 0/0 0/0 .text            bckCheck__8daE_GE_cFi */
void daE_GE_c::bckCheck(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD050-806CD054 000050 0004+00 0/3 0/0 0/0 .rodata          @3975 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3975 = 400.0f;
COMPILER_STRIP_GATE(0x806CD050, &lit_3975);
#pragma pop

/* 806C7BB8-806C7C8C 000258 00D4+00 1/1 0/0 0/0 .text            draw__8daE_GE_cFv */
void daE_GE_c::draw() {
    // NONMATCHING
}

/* 806C7C8C-806C7CAC 00032C 0020+00 1/0 0/0 0/0 .text            daE_GE_Draw__FP8daE_GE_c */
static void daE_GE_Draw(daE_GE_c* param_0) {
    // NONMATCHING
}

/* 806C7CAC-806C7DB8 00034C 010C+00 1/1 0/0 0/0 .text            checkBeforeBg__8daE_GE_cFif */
void daE_GE_c::checkBeforeBg(int param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD054-806CD058 000054 0004+00 1/5 0/0 0/0 .rodata          @4025 */
SECTION_RODATA static f32 const lit_4025 = 10.0f;
COMPILER_STRIP_GATE(0x806CD054, &lit_4025);

/* 806CD358-806CD35C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_806CD358[4];

/* 806CD35C-806CD368 00000C 000C+00 1/1 0/0 0/0 .bss             @3920 */
static u8 lit_3920[12];

/* 806CD368-806CD39C 000018 0034+00 12/12 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[52];

/* 806C7DB8-806C7E7C 000458 00C4+00 2/2 0/0 0/0 .text            s_arrow_sub__FPvPv */
static void s_arrow_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD058-806CD05C 000058 0004+00 1/5 0/0 0/0 .rodata          @4044 */
SECTION_RODATA static f32 const lit_4044 = 5.0f;
COMPILER_STRIP_GATE(0x806CD058, &lit_4044);

/* 806C7E7C-806C7F44 00051C 00C8+00 2/2 0/0 0/0 .text            s_ge_surprise__FPvPv */
static void s_ge_surprise(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 806C7F44-806C7FE4 0005E4 00A0+00 2/2 0/0 0/0 .text            s_ge_caw__FPvPv */
static void s_ge_caw(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD39C-806CD3A0 00004C 0004+00 4/4 0/0 0/0 .bss             target_count */
static u8 target_count[4];

/* 806C7FE4-806C8068 000684 0084+00 1/1 0/0 0/0 .text            s_ge_attack__FPvPv */
static void s_ge_attack(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 806C8068-806C80F8 000708 0090+00 1/1 0/0 0/0 .text            s_ge_attack2__FPvPv */
static void s_ge_attack2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 806C80F8-806C8130 000798 0038+00 12/12 0/0 0/0 .text            setActionMode__8daE_GE_cFi */
void daE_GE_c::setActionMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD05C-806CD060 00005C 0004+00 0/1 0/0 0/0 .rodata          @4153 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4153 = 55.0f;
COMPILER_STRIP_GATE(0x806CD05C, &lit_4153);
#pragma pop

/* 806CD060-806CD064 000060 0004+00 0/1 0/0 0/0 .rodata          @4154 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4154 = 25.0f;
COMPILER_STRIP_GATE(0x806CD060, &lit_4154);
#pragma pop

/* 806CD064-806CD068 000064 0004+00 1/8 0/0 0/0 .rodata          @4155 */
SECTION_RODATA static f32 const lit_4155 = 30.0f;
COMPILER_STRIP_GATE(0x806CD064, &lit_4155);

/* 806C8130-806C8374 0007D0 0244+00 1/1 0/0 0/0 .text            damage_check__8daE_GE_cFv */
void daE_GE_c::damage_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD068-806CD070 000068 0004+04 1/3 0/0 0/0 .rodata          @4166 */
SECTION_RODATA static f32 const lit_4166[1 + 1 /* padding */] = {
    200.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806CD068, &lit_4166);

/* 806CD070-806CD078 000070 0008+00 2/3 0/0 0/0 .rodata          @4168 */
SECTION_RODATA static u8 const lit_4168[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806CD070, &lit_4168);

/* 806C8374-806C83F8 000A14 0084+00 1/1 0/0 0/0 .text            checkOtherAttacker__8daE_GE_cFv */
void daE_GE_c::checkOtherAttacker() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD078-806CD07C 000078 0004+00 1/3 0/0 0/0 .rodata          @4178 */
SECTION_RODATA static f32 const lit_4178 = 700.0f;
COMPILER_STRIP_GATE(0x806CD078, &lit_4178);

/* 806C83F8-806C84A0 000A98 00A8+00 2/2 0/0 0/0 .text            searchNextAttacker__8daE_GE_cFv */
void daE_GE_c::searchNextAttacker() {
    // NONMATCHING
}

/* 806C84A0-806C8518 000B40 0078+00 2/2 0/0 0/0 .text checkCircleSpeedAdd__8daE_GE_cFP4cXyzP4cXyz
 */
void daE_GE_c::checkCircleSpeedAdd(cXyz* param_0, cXyz* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD07C-806CD080 00007C 0004+00 0/1 0/0 0/0 .rodata          @4290 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4290 = 0x2EAFEBFF;
COMPILER_STRIP_GATE(0x806CD07C, &lit_4290);
#pragma pop

/* 806C8518-806C88C8 000BB8 03B0+00 1/1 0/0 0/0 .text setAddCalcSpeed__8daE_GE_cFR4cXyzRC4cXyzffff
 */
void daE_GE_c::setAddCalcSpeed(cXyz& param_0, cXyz const& param_1, f32 param_2, f32 param_3,
                                   f32 param_4, f32 param_5) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD080-806CD084 000080 0004+00 1/2 0/0 0/0 .rodata          @4304 */
SECTION_RODATA static f32 const lit_4304 = 8.0f;
COMPILER_STRIP_GATE(0x806CD080, &lit_4304);

/* 806C88C8-806C89C0 000F68 00F8+00 4/4 0/0 0/0 .text calcCircleFly__8daE_GE_cFP4cXyzP4cXyzsfsf */
void daE_GE_c::calcCircleFly(cXyz* param_0, cXyz* param_1, s16 param_2, f32 param_3,
                                 s16 param_4, f32 param_5) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD084-806CD088 000084 0004+00 0/10 0/0 0/0 .rodata          @4355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4355 = 3.0f;
COMPILER_STRIP_GATE(0x806CD084, &lit_4355);
#pragma pop

/* 806CD088-806CD08C 000088 0004+00 0/2 0/0 0/0 .rodata          @4356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4356 = 6.0f;
COMPILER_STRIP_GATE(0x806CD088, &lit_4356);
#pragma pop

/* 806C89C0-806C8C20 001060 0260+00 1/0 0/0 0/0 .text            executeWait__8daE_GE_cFv */
void daE_GE_c::executeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD08C-806CD090 00008C 0004+00 0/3 0/0 0/0 .rodata          @4467 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4467 = 0.5f;
COMPILER_STRIP_GATE(0x806CD08C, &lit_4467);
#pragma pop

/* 806CD090-806CD094 000090 0004+00 1/5 0/0 0/0 .rodata          @4468 */
SECTION_RODATA static f32 const lit_4468 = 20.0f;
COMPILER_STRIP_GATE(0x806CD090, &lit_4468);

/* 806CD094-806CD098 000094 0004+00 0/1 0/0 0/0 .rodata          @4469 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4469 = -400.0f;
COMPILER_STRIP_GATE(0x806CD094, &lit_4469);
#pragma pop

/* 806CD098-806CD09C 000098 0004+00 0/2 0/0 0/0 .rodata          @4470 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4470 = 4.0f;
COMPILER_STRIP_GATE(0x806CD098, &lit_4470);
#pragma pop

/* 806CD09C-806CD0A0 00009C 0004+00 0/7 0/0 0/0 .rodata          @4471 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4471 = 50.0f;
COMPILER_STRIP_GATE(0x806CD09C, &lit_4471);
#pragma pop

/* 806CD0A0-806CD0A4 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4472 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4472 = 2000.0f;
COMPILER_STRIP_GATE(0x806CD0A0, &lit_4472);
#pragma pop

/* 806C8C20-806C9150 0012C0 0530+00 1/0 0/0 0/0 .text            executeFly__8daE_GE_cFv */
void daE_GE_c::executeFly() {
    // NONMATCHING
}

/* 806C9150-806C921C 0017F0 00CC+00 1/1 0/0 0/0 .text            checkAttackPossible__8daE_GE_cFsb
 */
void daE_GE_c::checkAttackPossible(s16 param_0, bool param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD0A4-806CD0A8 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4796 = 2500.0f;
COMPILER_STRIP_GATE(0x806CD0A4, &lit_4796);
#pragma pop

/* 806CD0A8-806CD0AC 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4797 = 260892.0f;
COMPILER_STRIP_GATE(0x806CD0A8, &lit_4797);
#pragma pop

/* 806CD0AC-806CD0B0 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4798 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4798 = 128.0f;
COMPILER_STRIP_GATE(0x806CD0AC, &lit_4798);
#pragma pop

/* 806CD0B0-806CD0B4 0000B0 0004+00 0/2 0/0 0/0 .rodata          @4799 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4799 = 12.0f;
COMPILER_STRIP_GATE(0x806CD0B0, &lit_4799);
#pragma pop

/* 806CD0B4-806CD0B8 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4800 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4800 = 19.0f;
COMPILER_STRIP_GATE(0x806CD0B4, &lit_4800);
#pragma pop

/* 806CD0B8-806CD0BC 0000B8 0004+00 0/2 0/0 0/0 .rodata          @4801 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4801 = 26.0f;
COMPILER_STRIP_GATE(0x806CD0B8, &lit_4801);
#pragma pop

/* 806CD0BC-806CD0C0 0000BC 0004+00 0/2 0/0 0/0 .rodata          @4802 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4802 = 4096.0f;
COMPILER_STRIP_GATE(0x806CD0BC, &lit_4802);
#pragma pop

/* 806C921C-806C9F04 0018BC 0CE8+00 1/0 0/0 0/0 .text            executeAttack__8daE_GE_cFv */
void daE_GE_c::executeAttack() {
    // NONMATCHING
}

/* 806C9F04-806CA024 0025A4 0120+00 1/1 0/0 0/0 .text            setBackAnime__8daE_GE_cFi */
void daE_GE_c::setBackAnime(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD0C0-806CD0C4 0000C0 0004+00 0/2 0/0 0/0 .rodata          @5065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5065 = 1500.0f;
COMPILER_STRIP_GATE(0x806CD0C0, &lit_5065);
#pragma pop

/* 806CA024-806CAA34 0026C4 0A10+00 2/0 0/0 0/0 .text            executeBack__8daE_GE_cFv */
void daE_GE_c::executeBack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD0C4-806CD0C8 0000C4 0004+00 0/1 0/0 0/0 .rodata          @5066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5066 = 150.0f;
COMPILER_STRIP_GATE(0x806CD0C4, &lit_5066);
#pragma pop

/* 806CD0C8-806CD0CC 0000C8 0004+00 0/0 0/0 0/0 .rodata          @5067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5067 = 140.0f;
COMPILER_STRIP_GATE(0x806CD0C8, &lit_5067);
#pragma pop

/* 806CD0CC-806CD0D0 0000CC 0004+00 0/0 0/0 0/0 .rodata          @5068 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5068 = 17.0f;
COMPILER_STRIP_GATE(0x806CD0CC, &lit_5068);
#pragma pop

/* 806CD0D0-806CD0D4 0000D0 0004+00 0/0 0/0 0/0 .rodata          @5069 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5069 = 24.0f;
COMPILER_STRIP_GATE(0x806CD0D0, &lit_5069);
#pragma pop

/* 806CD0D4-806CD0D8 0000D4 0004+00 0/0 0/0 0/0 .rodata          @5070 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5070 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806CD0D4, &lit_5070);
#pragma pop

/* 806CD0D8-806CD0DC 0000D8 0004+00 0/1 0/0 0/0 .rodata          @5126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5126 = -50.0f;
COMPILER_STRIP_GATE(0x806CD0D8, &lit_5126);
#pragma pop

/* 806CD0DC-806CD0E0 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5127 = 16.0f;
COMPILER_STRIP_GATE(0x806CD0DC, &lit_5127);
#pragma pop

/* 806CD0E0-806CD0E4 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5128 = 23.0f;
COMPILER_STRIP_GATE(0x806CD0E0, &lit_5128);
#pragma pop

/* 806CAA34-806CADCC 0030D4 0398+00 1/0 0/0 0/0 .text            executeDown__8daE_GE_cFv */
void daE_GE_c::executeDown() {
    // NONMATCHING
}

/* 806CADCC-806CADF4 00346C 0028+00 2/2 0/0 0/0 .text            setSurpriseTime__8daE_GE_cFs */
void daE_GE_c::setSurpriseTime(s16 param_0) {
    // NONMATCHING
}

/* 806CADF4-806CAE58 003494 0064+00 1/1 0/0 0/0 .text            setSurprise__8daE_GE_cFv */
void daE_GE_c::setSurprise() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD0E4-806CD0E8 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5254 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5254 = 32768.0f;
COMPILER_STRIP_GATE(0x806CD0E4, &lit_5254);
#pragma pop

/* 806CD0E8-806CD0EC 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5255 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5255 = 800.0f;
COMPILER_STRIP_GATE(0x806CD0E8, &lit_5255);
#pragma pop

/* 806CD0EC-806CD0F0 0000EC 0004+00 0/2 0/0 0/0 .rodata          @5256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5256 = 70.0f;
COMPILER_STRIP_GATE(0x806CD0EC, &lit_5256);
#pragma pop

/* 806CAE58-806CB280 0034F8 0428+00 1/0 0/0 0/0 .text            executeSurprise__8daE_GE_cFv */
void daE_GE_c::executeSurprise() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD0F0-806CD0F4 0000F0 0004+00 1/1 0/0 0/0 .rodata          @5270 */
SECTION_RODATA static f32 const lit_5270 = 40.0f;
COMPILER_STRIP_GATE(0x806CD0F0, &lit_5270);

/* 806CB280-806CB2F0 003920 0070+00 1/1 0/0 0/0 .text            setCaw__8daE_GE_cFv */
void daE_GE_c::setCaw() {
    // NONMATCHING
}

/* 806CB2F0-806CB6FC 003990 040C+00 1/0 0/0 0/0 .text            executeCaw__8daE_GE_cFv */
void daE_GE_c::executeCaw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD0F4-806CD0F8 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5483 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5483 = 60.0f;
COMPILER_STRIP_GATE(0x806CD0F4, &lit_5483);
#pragma pop

/* 806CD0F8-806CD0FC 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5484 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5484 = 2.0f;
COMPILER_STRIP_GATE(0x806CD0F8, &lit_5484);
#pragma pop

/* 806CB6FC-806CBAB8 003D9C 03BC+00 1/0 0/0 0/0 .text            executeWind__8daE_GE_cFv */
void daE_GE_c::executeWind() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD0FC-806CD100 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5506 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5506 = 1.5f;
COMPILER_STRIP_GATE(0x806CD0FC, &lit_5506);
#pragma pop

/* 806CBAB8-806CBC38 004158 0180+00 1/0 0/0 0/0 .text            executeShield__8daE_GE_cFv */
void daE_GE_c::executeShield() {
    // NONMATCHING
}

/* 806CBC38-806CBE98 0042D8 0260+00 1/1 0/0 0/0 .text            action__8daE_GE_cFv */
void daE_GE_c::action() {
    // NONMATCHING
}

/* 806CBE98-806CBEF0 004538 0058+00 2/2 0/0 0/0 .text            mtx_set__8daE_GE_cFv */
void daE_GE_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD100-806CD104 000100 0004+00 0/1 0/0 0/0 .rodata          @5605 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5605 = 35.0f;
COMPILER_STRIP_GATE(0x806CD100, &lit_5605);
#pragma pop

/* 806CBEF0-806CC068 004590 0178+00 1/1 0/0 0/0 .text            cc_set__8daE_GE_cFv */
void daE_GE_c::cc_set() {
    // NONMATCHING
}

/* 806CC068-806CC1BC 004708 0154+00 1/1 0/0 0/0 .text            execute__8daE_GE_cFv */
void daE_GE_c::execute() {
    // NONMATCHING
}

/* 806CC1BC-806CC1DC 00485C 0020+00 1/0 0/0 0/0 .text            daE_GE_Execute__FP8daE_GE_c */
static void daE_GE_Execute(daE_GE_c* param_0) {
    // NONMATCHING
}

/* 806CC1DC-806CC1E4 00487C 0008+00 1/0 0/0 0/0 .text            daE_GE_IsDelete__FP8daE_GE_c */
static bool daE_GE_IsDelete(daE_GE_c* param_0) {
    return true;
}

/* 806CC1E4-806CC258 004884 0074+00 1/1 0/0 0/0 .text            _delete__8daE_GE_cFv */
void daE_GE_c::_delete() {
    // NONMATCHING
}

/* 806CC258-806CC278 0048F8 0020+00 1/0 0/0 0/0 .text            daE_GE_Delete__FP8daE_GE_c */
static void daE_GE_Delete(daE_GE_c* param_0) {
    // NONMATCHING
}

/* 806CC278-806CC370 004918 00F8+00 1/1 0/0 0/0 .text            CreateHeap__8daE_GE_cFv */
void daE_GE_c::CreateHeap() {
    // NONMATCHING
}

/* 806CC370-806CC390 004A10 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806CD104-806CD108 000104 0004+00 0/1 0/0 0/0 .rodata          @5842 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5842 = -200.0f;
COMPILER_STRIP_GATE(0x806CD104, &lit_5842);
#pragma pop

/* 806CD108-806CD10C 000108 0004+00 0/1 0/0 0/0 .rodata          @5843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5843 = -1000000000.0f;
COMPILER_STRIP_GATE(0x806CD108, &lit_5843);
#pragma pop

/* 806CD10C-806CD10C 00010C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806CD111 = "E_ge";
#pragma pop

/* 806CC390-806CC824 004A30 0494+00 1/1 0/0 0/0 .text            create__8daE_GE_cFv */
void daE_GE_c::create() {
    // NONMATCHING
}

/* 806CC824-806CC86C 004EC4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806CC86C-806CC8B4 004F0C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806CC8B4-806CC910 004F54 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806CC910-806CC980 004FB0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806CC980-806CC9F0 005020 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806CC9F0-806CCA10 005090 0020+00 1/0 0/0 0/0 .text            daE_GE_Create__FP8daE_GE_c */
static void daE_GE_Create(daE_GE_c* param_0) {
    // NONMATCHING
}

/* 806CCA10-806CCA58 0050B0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 806CCA58-806CCAA0 0050F8 0048+00 2/1 0/0 0/0 .text            __dt__12daE_GE_HIO_cFv */
daE_GE_HIO_c::~daE_GE_HIO_c() {
    // NONMATCHING
}

/* 806CCAA0-806CCBC8 005140 0128+00 0/0 1/0 0/0 .text            __sinit_d_a_e_ge_cpp */
void __sinit_d_a_e_ge_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806CCAA0, __sinit_d_a_e_ge_cpp);
#pragma pop

/* 806CCBC8-806CCBD0 005268 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806CCBC8() {
    // NONMATCHING
}

/* 806CCBD0-806CCBD8 005270 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806CCBD0() {
    // NONMATCHING
}

/* 806CD10C-806CD10C 00010C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

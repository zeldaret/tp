/**
 * @file d_a_e_hm.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_hm.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"



//
// Forward References:
//

extern "C" void __ct__12daE_HM_HIO_cFv();
extern "C" void CreateHeap__8daE_HM_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void initCcCylinder__8daE_HM_cFv();
extern "C" void setCcCylinder__8daE_HM_cFv();
extern "C" static void other_bg_check__FP8daE_HM_cP10fopAc_ac_c();
extern "C" void ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel();
extern "C" static void JointCallBack__FP8J3DJointi();
extern "C" void Particle_Set__8daE_HM_cFRUlUs();
extern "C" void SetAnm__8daE_HM_cFiiff();
extern "C" void W_TargetAngle__8daE_HM_cF4cXyz4cXyz();
extern "C" void W_DeathSpSet__8daE_HM_cFv();
extern "C" void W_DeathAction__8daE_HM_cFv();
extern "C" void W_DeathMotion__8daE_HM_cFv();
extern "C" void W_MoveCheckWall__8daE_HM_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void W_WallCheck__8daE_HM_cFv();
extern "C" void WallExecute__8daE_HM_cFv();
extern "C" void WallCreateExecute__8daE_HM_cFv();
extern "C" void CreateExecute__8daE_HM_cFv();
extern "C" void Tyakuchi_Set__8daE_HM_cFv();
extern "C" void UpDeathAction__8daE_HM_cFv();
extern "C" void UpMoveAction__8daE_HM_cFv();
extern "C" void UpWaitAction__8daE_HM_cFv();
extern "C" void UpExecute__8daE_HM_cFv();
extern "C" void WallCheck__8daE_HM_cFv();
extern "C" void MoveCheck__8daE_HM_cFv();
extern "C" void ShippuAction__8daE_HM_cFv();
extern "C" void ShieldMotion__8daE_HM_cFv();
extern "C" void ShieldAction__8daE_HM_cFv();
extern "C" void DeathSpSet__8daE_HM_cFv();
extern "C" void DeathMotion__8daE_HM_cFv();
extern "C" void DeathCutDown__8daE_HM_cFv();
extern "C" void DeathAction__8daE_HM_cFv();
extern "C" void AttackAfter__8daE_HM_cFv();
extern "C" void AttackMotion__8daE_HM_cFv();
extern "C" void AttackAction__8daE_HM_cFv();
extern "C" void FreeMove__8daE_HM_cFv();
extern "C" void LinkSearch__8daE_HM_cFv();
extern "C" void WaitAction__8daE_HM_cFv();
extern "C" void MemberClear__8daE_HM_cFv();
extern "C" void DownExecute__8daE_HM_cFv();
extern "C" void At_Check__8daE_HM_cFv();
extern "C" void Obj_Damage__8daE_HM_cFv();
extern "C" void ActionMode__8daE_HM_cFv();
extern "C" void Yazirushi__8daE_HM_cFv();
extern "C" void setStabPos__8daE_HM_cFv();
extern "C" void Execute__8daE_HM_cFv();
extern "C" void Draw__8daE_HM_cFv();
extern "C" void Delete__8daE_HM_cFv();
extern "C" void setBaseMtx__8daE_HM_cFv();
extern "C" static void daE_HM_Draw__FP8daE_HM_c();
extern "C" static void daE_HM_Execute__FP8daE_HM_c();
extern "C" static bool daE_HM_IsDelete__FP8daE_HM_c();
extern "C" static void daE_HM_Delete__FP8daE_HM_c();
extern "C" void CheckRoof__8daE_HM_cFv();
extern "C" void CheckWall__8daE_HM_cFv();
extern "C" void CreateStyle__8daE_HM_cFv();
extern "C" void Create__8daE_HM_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daE_HM_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_HM_HIO_cFv();
extern "C" void __sinit_d_a_e_hm_cpp();
extern "C" static void func_806E54AC();
extern "C" static void func_806E54B4();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_hm__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotS__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
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
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LockonTarget__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetMagnetCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void SetWallHDirect__12dBgS_AcchCirFf();
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
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void func_80280808();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void _savegpr_19();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
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
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806E594C-806E5950 00002C 0004+00 0/1 0/0 0/0 .rodata          @3812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3812 = 600.0f;
COMPILER_STRIP_GATE(0x806E594C, &lit_3812);
#pragma pop

/* 806E5950-806E5954 000030 0004+00 0/1 0/0 0/0 .rodata          @3813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3813 = -16.0f;
COMPILER_STRIP_GATE(0x806E5950, &lit_3813);
#pragma pop

/* 806E5954-806E5958 000034 0004+00 0/1 0/0 0/0 .rodata          @3814 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3814 = 44.0f;
COMPILER_STRIP_GATE(0x806E5954, &lit_3814);
#pragma pop

/* 806E5958-806E595C 000038 0004+00 0/4 0/0 0/0 .rodata          @3815 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3815 = -9.0f;
COMPILER_STRIP_GATE(0x806E5958, &lit_3815);
#pragma pop

/* 806E595C-806E5960 00003C 0004+00 0/1 0/0 0/0 .rodata          @3816 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3816 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x806E595C, &lit_3816);
#pragma pop

/* 806E5AB4-806E5AD8 -00001 0024+00 1/1 0/0 0/0 .data            @4028 */
SECTION_DATA static void* lit_4028[9] = {
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x3C4),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x230),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x3C4),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x3C4),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x274),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x2B8),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x2FC),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x340),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x384),
};

/* 806E5AD8-806E5AFC -00001 0024+00 1/1 0/0 0/0 .data            @4024 */
SECTION_DATA static void* lit_4024[9] = {
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x3C4),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x70),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x3C4),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x3C4),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0xB4),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0xF8),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x13C),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x180),
    (void*)(((char*)ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel) + 0x1C4),
};

/* 806E5AFC-806E5B1C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_HM_Method */
static actor_method_class l_daE_HM_Method = {
    (process_method_func)daE_HM_Create__FP10fopAc_ac_c,
    (process_method_func)daE_HM_Delete__FP8daE_HM_c,
    (process_method_func)daE_HM_Execute__FP8daE_HM_c,
    (process_method_func)daE_HM_IsDelete__FP8daE_HM_c,
    (process_method_func)daE_HM_Draw__FP8daE_HM_c,
};

/* 806E5B1C-806E5B4C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_HM */
extern actor_process_profile_definition g_profile_E_HM = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_HM,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_HM_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  146,                    // mPriority
  &l_daE_HM_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806E5B4C-806E5B58 0000D0 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806E5B58-806E5B64 0000DC 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806E5B64-806E5B70 0000E8 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806E5B70-806E5B7C 0000F4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806E5B7C-806E5B88 000100 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806E5B88-806E5BAC 00010C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806E54B4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806E54AC,
};

/* 806E5BAC-806E5BB8 000130 000C+00 7/7 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 806E5BB8-806E5BC4 00013C 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 806E5BC4-806E5BD0 000148 000C+00 2/2 0/0 0/0 .data            __vt__12daE_HM_HIO_c */
SECTION_DATA extern void* __vt__12daE_HM_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_HM_HIO_cFv,
};

/* 806E03EC-806E043C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__12daE_HM_HIO_cFv */
daE_HM_HIO_c::daE_HM_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A74-806E5A74 000154 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806E5A74 = "E_HM";
#pragma pop

/* 806E043C-806E0658 00013C 021C+00 1/1 0/0 0/0 .text            CreateHeap__8daE_HM_cFv */
void daE_HM_c::CreateHeap() {
    // NONMATCHING
}

/* 806E0658-806E06A0 000358 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 806E06A0-806E06C0 0003A0 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5960-806E59A0 000040 0040+00 1/1 0/0 0/0 .rodata          ccShpSrc$3893 */
SECTION_RODATA static u8 const ccShpSrc[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75, 0x0A, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806E5960, &ccShpSrc);

/* 806E06C0-806E074C 0003C0 008C+00 1/1 0/0 0/0 .text            initCcCylinder__8daE_HM_cFv */
void daE_HM_c::initCcCylinder() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E59A0-806E59A4 000080 0004+00 2/8 0/0 0/0 .rodata          @3923 */
SECTION_RODATA static f32 const lit_3923 = 50.0f;
COMPILER_STRIP_GATE(0x806E59A0, &lit_3923);

/* 806E074C-806E0880 00044C 0134+00 1/1 0/0 0/0 .text            setCcCylinder__8daE_HM_cFv */
void daE_HM_c::setCcCylinder() {
    // NONMATCHING
}

/* 806E0880-806E0958 000580 00D8+00 1/1 0/0 0/0 .text other_bg_check__FP8daE_HM_cP10fopAc_ac_c */
static void other_bg_check(daE_HM_c* param_0, fopAc_ac_c* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E59A4-806E59A8 000084 0004+00 0/1 0/0 0/0 .rodata          @4016 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4016 = 6.0f;
COMPILER_STRIP_GATE(0x806E59A4, &lit_4016);
#pragma pop

/* 806E59A8-806E59AC 000088 0004+00 0/0 0/0 0/0 .rodata          @4017 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4017 = -8.0f;
COMPILER_STRIP_GATE(0x806E59A8, &lit_4017);
#pragma pop

/* 806E59AC-806E59B0 00008C 0004+00 0/0 0/0 0/0 .rodata          @4018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4018 = -13.0f;
COMPILER_STRIP_GATE(0x806E59AC, &lit_4018);
#pragma pop

/* 806E59B0-806E59B4 000090 0004+00 0/0 0/0 0/0 .rodata          @4019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4019 = -14.0f;
COMPILER_STRIP_GATE(0x806E59B0, &lit_4019);
#pragma pop

/* 806E59B4-806E59B8 000094 0004+00 0/0 0/0 0/0 .rodata          @4020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4020 = -4.0f;
COMPILER_STRIP_GATE(0x806E59B4, &lit_4020);
#pragma pop

/* 806E59B8-806E59BC 000098 0004+00 0/0 0/0 0/0 .rodata          @4021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4021 = -5.0f;
COMPILER_STRIP_GATE(0x806E59B8, &lit_4021);
#pragma pop

/* 806E59BC-806E59C0 00009C 0004+00 0/0 0/0 0/0 .rodata          @4022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4022 = -11.0f;
COMPILER_STRIP_GATE(0x806E59BC, &lit_4022);
#pragma pop

/* 806E59C0-806E59C8 0000A0 0004+04 0/0 0/0 0/0 .rodata          @4023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4023[1 + 1 /* padding */] = {
    -12.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806E59C0, &lit_4023);
#pragma pop

/* 806E59C8-806E59D0 0000A8 0008+00 0/2 0/0 0/0 .rodata          @4026 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4026[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806E59C8, &lit_4026);
#pragma pop

/* 806E0958-806E0D64 000658 040C+00 3/1 0/0 0/0 .text ctrlJoint__8daE_HM_cFP8J3DJointP8J3DModel */
void daE_HM_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 806E0D64-806E0DB0 000A64 004C+00 1/1 0/0 0/0 .text            JointCallBack__FP8J3DJointi */
static void JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 806E0DB0-806E0E8C 000AB0 00DC+00 2/2 0/0 0/0 .text            Particle_Set__8daE_HM_cFRUlUs */
void daE_HM_c::Particle_Set(u32& param_0, u16 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E59D0-806E59D4 0000B0 0004+00 1/2 0/0 0/0 .rodata          @4079 */
SECTION_RODATA static f32 const lit_4079 = -1.0f;
COMPILER_STRIP_GATE(0x806E59D0, &lit_4079);

/* 806E0E8C-806E0F38 000B8C 00AC+00 12/12 0/0 0/0 .text            SetAnm__8daE_HM_cFiiff */
void daE_HM_c::SetAnm(int param_0, int param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 806E0F38-806E0FF4 000C38 00BC+00 2/2 0/0 0/0 .text            W_TargetAngle__8daE_HM_cF4cXyz4cXyz
 */
void daE_HM_c::W_TargetAngle(cXyz param_0, cXyz param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E59D4-806E59D8 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4134 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4134 = 20.0f;
COMPILER_STRIP_GATE(0x806E59D4, &lit_4134);
#pragma pop

/* 806E59D8-806E59DC 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4135 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4135 = -20.0f;
COMPILER_STRIP_GATE(0x806E59D8, &lit_4135);
#pragma pop

/* 806E59DC-806E59E0 0000BC 0004+00 0/6 0/0 0/0 .rodata          @4136 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4136 = 10.0f;
COMPILER_STRIP_GATE(0x806E59DC, &lit_4136);
#pragma pop

/* 806E0FF4-806E1118 000CF4 0124+00 1/1 0/0 0/0 .text            W_DeathSpSet__8daE_HM_cFv */
void daE_HM_c::W_DeathSpSet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E59E0-806E59E4 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4317 = 2.0f;
COMPILER_STRIP_GATE(0x806E59E0, &lit_4317);
#pragma pop

/* 806E59E4-806E59E8 0000C4 0004+00 0/3 0/0 0/0 .rodata          @4318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4318 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x806E59E4, &lit_4318);
#pragma pop

/* 806E59E8-806E59EC 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4379 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4379 = 768.0f;
COMPILER_STRIP_GATE(0x806E59E8, &lit_4379);
#pragma pop

/* 806E59EC-806E59F0 0000CC 0004+00 0/6 0/0 0/0 .rodata          @4380 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4380 = 30.0f;
COMPILER_STRIP_GATE(0x806E59EC, &lit_4380);
#pragma pop

/* 806E59F0-806E59F4 0000D0 0004+00 0/4 0/0 0/0 .rodata          @4381 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4381 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x806E59F0, &lit_4381);
#pragma pop

/* 806E59F4-806E59F8 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4382 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4382 = -6.0f;
COMPILER_STRIP_GATE(0x806E59F4, &lit_4382);
#pragma pop

/* 806E59F8-806E59FC 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4383 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4383 = -1.0f / 5.0f;
COMPILER_STRIP_GATE(0x806E59F8, &lit_4383);
#pragma pop

/* 806E59FC-806E5A00 0000DC 0004+00 0/3 0/0 0/0 .rodata          @4384 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4384 = 15.0f;
COMPILER_STRIP_GATE(0x806E59FC, &lit_4384);
#pragma pop

/* 806E5A00-806E5A04 0000E0 0004+00 1/10 0/0 0/0 .rodata          @4385 */
SECTION_RODATA static f32 const lit_4385 = 5.0f;
COMPILER_STRIP_GATE(0x806E5A00, &lit_4385);

/* 806E1118-806E1370 000E18 0258+00 1/1 0/0 0/0 .text            W_DeathAction__8daE_HM_cFv */
void daE_HM_c::W_DeathAction() {
    // NONMATCHING
}

/* 806E1370-806E155C 001070 01EC+00 1/1 0/0 0/0 .text            W_DeathMotion__8daE_HM_cFv */
void daE_HM_c::W_DeathMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A04-806E5A08 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4523 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4523 = 3.0f;
COMPILER_STRIP_GATE(0x806E5A04, &lit_4523);
#pragma pop

/* 806E5A08-806E5A0C 0000E8 0004+00 0/2 0/0 0/0 .rodata          @4524 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4524 = -100.0f;
COMPILER_STRIP_GATE(0x806E5A08, &lit_4524);
#pragma pop

/* 806E155C-806E1858 00125C 02FC+00 2/2 0/0 0/0 .text            W_MoveCheckWall__8daE_HM_cFv */
void daE_HM_c::W_MoveCheckWall() {
    // NONMATCHING
}

/* 806E1858-806E18A0 001558 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A0C-806E5A10 0000EC 0004+00 0/3 0/0 0/0 .rodata          @4572 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4572 = -300.0f;
COMPILER_STRIP_GATE(0x806E5A0C, &lit_4572);
#pragma pop

/* 806E5A10-806E5A14 0000F0 0004+00 0/4 0/0 0/0 .rodata          @4573 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4573 = 300.0f;
COMPILER_STRIP_GATE(0x806E5A10, &lit_4573);
#pragma pop

/* 806E5A14-806E5A18 0000F4 0004+00 0/5 0/0 0/0 .rodata          @4574 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4574 = 200.0f;
COMPILER_STRIP_GATE(0x806E5A14, &lit_4574);
#pragma pop

/* 806E18A0-806E1A00 0015A0 0160+00 1/1 0/0 0/0 .text            W_WallCheck__8daE_HM_cFv */
void daE_HM_c::W_WallCheck() {
    // NONMATCHING
}

/* 806E1A00-806E1AA0 001700 00A0+00 1/1 0/0 0/0 .text            WallExecute__8daE_HM_cFv */
void daE_HM_c::WallExecute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A18-806E5A1C 0000F8 0004+00 0/2 0/0 0/0 .rodata          @4596 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4596 = -30.0f;
COMPILER_STRIP_GATE(0x806E5A18, &lit_4596);
#pragma pop

/* 806E5A1C-806E5A20 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4619 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4619 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x806E5A1C, &lit_4619);
#pragma pop

/* 806E1AA0-806E1B5C 0017A0 00BC+00 1/1 0/0 0/0 .text            WallCreateExecute__8daE_HM_cFv */
void daE_HM_c::WallCreateExecute() {
    // NONMATCHING
}

/* 806E1B5C-806E1C28 00185C 00CC+00 1/1 0/0 0/0 .text            CreateExecute__8daE_HM_cFv */
void daE_HM_c::CreateExecute() {
    // NONMATCHING
}

/* 806E1C28-806E1E78 001928 0250+00 1/1 0/0 0/0 .text            Tyakuchi_Set__8daE_HM_cFv */
void daE_HM_c::Tyakuchi_Set() {
    // NONMATCHING
}

/* 806E1E78-806E20FC 001B78 0284+00 1/1 0/0 0/0 .text            UpDeathAction__8daE_HM_cFv */
void daE_HM_c::UpDeathAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A20-806E5A24 000100 0004+00 1/4 0/0 0/0 .rodata          @4809 */
SECTION_RODATA static f32 const lit_4809 = 40.0f;
COMPILER_STRIP_GATE(0x806E5A20, &lit_4809);

/* 806E5C18-806E5C24 000048 000C+00 0/1 0/0 0/0 .bss             @3807 */
#pragma push
#pragma force_active on
static u8 lit_3807[12];
#pragma pop

/* 806E5C24-806E5C44 000054 0020+00 6/7 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[32];

/* 806E20FC-806E2410 001DFC 0314+00 1/1 0/0 0/0 .text            UpMoveAction__8daE_HM_cFv */
void daE_HM_c::UpMoveAction() {
    // NONMATCHING
}

/* 806E2410-806E2568 002110 0158+00 1/1 0/0 0/0 .text            UpWaitAction__8daE_HM_cFv */
void daE_HM_c::UpWaitAction() {
    // NONMATCHING
}

/* 806E2568-806E25E8 002268 0080+00 1/1 0/0 0/0 .text            UpExecute__8daE_HM_cFv */
void daE_HM_c::UpExecute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A24-806E5A28 000104 0004+00 0/1 0/0 0/0 .rodata          @4862 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4862 = 150.0f;
COMPILER_STRIP_GATE(0x806E5A24, &lit_4862);
#pragma pop

/* 806E25E8-806E2694 0022E8 00AC+00 2/2 0/0 0/0 .text            WallCheck__8daE_HM_cFv */
void daE_HM_c::WallCheck() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A28-806E5A2C 000108 0004+00 0/3 0/0 0/0 .rodata          @4941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4941 = 0.5f;
COMPILER_STRIP_GATE(0x806E5A28, &lit_4941);
#pragma pop

/* 806E2694-806E29B8 002394 0324+00 2/2 0/0 0/0 .text            MoveCheck__8daE_HM_cFv */
void daE_HM_c::MoveCheck() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A2C-806E5A30 00010C 0004+00 0/1 0/0 0/0 .rodata          @4998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4998 = 70.0f;
COMPILER_STRIP_GATE(0x806E5A2C, &lit_4998);
#pragma pop

/* 806E5A30-806E5A34 000110 0004+00 0/1 0/0 0/0 .rodata          @4999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4999 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x806E5A30, &lit_4999);
#pragma pop

/* 806E5A34-806E5A38 000114 0004+00 0/1 0/0 0/0 .rodata          @5000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5000 = 69.0f;
COMPILER_STRIP_GATE(0x806E5A34, &lit_5000);
#pragma pop

/* 806E5A38-806E5A3C 000118 0004+00 0/1 0/0 0/0 .rodata          @5001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5001 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x806E5A38, &lit_5001);
#pragma pop

/* 806E29B8-806E2B80 0026B8 01C8+00 3/3 0/0 0/0 .text            ShippuAction__8daE_HM_cFv */
void daE_HM_c::ShippuAction() {
    // NONMATCHING
}

/* 806E2B80-806E2C50 002880 00D0+00 2/2 0/0 0/0 .text            ShieldMotion__8daE_HM_cFv */
void daE_HM_c::ShieldMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A3C-806E5A40 00011C 0004+00 0/1 0/0 0/0 .rodata          @5031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5031 = -15.0f;
COMPILER_STRIP_GATE(0x806E5A3C, &lit_5031);
#pragma pop

/* 806E5C44-806E5C48 000074 0004+00 1/2 0/0 0/0 .bss             s_dis__22@unnamed@d_a_e_hm_cpp@ */
static u8 data_806E5C44[4];

/* 806E5C48-806E5C4C 000078 0004+00 0/0 0/0 0/0 .bss             s_gnd__22@unnamed@d_a_e_hm_cpp@ */
#pragma push
#pragma force_active on
static u8 data_806E5C48[4];
#pragma pop

/* 806E5C4C-806E5C58 00007C 000C+00 0/1 0/0 0/0 .bss             @3817 */
#pragma push
#pragma force_active on
static u8 lit_3817[12];
#pragma pop

/* 806E5C58-806E5C64 000088 000C+00 0/1 0/0 0/0 .bss             s_up__22@unnamed@d_a_e_hm_cpp@ */
#pragma push
#pragma force_active on
static u8 data_806E5C58[12];
#pragma pop

/* 806E5C64-806E5C70 000094 000C+00 0/1 0/0 0/0 .bss             @3818 */
#pragma push
#pragma force_active on
static u8 lit_3818[12];
#pragma pop

/* 806E5C70-806E5C7C 0000A0 000C+00 0/1 0/0 0/0 .bss             s_down__22@unnamed@d_a_e_hm_cpp@ */
#pragma push
#pragma force_active on
static u8 data_806E5C70[12];
#pragma pop

/* 806E5C7C-806E5C80 0000AC 0004+00 0/1 0/0 0/0 .bss             sLink_Pos__22@unnamed@d_a_e_hm_cpp@
 */
#pragma push
#pragma force_active on
static u8 data_806E5C7C[4];
#pragma pop

/* 806E5C80-806E5C84 0000B0 0002+02 3/4 0/0 0/0 .bss s_TargetAngle__22@unnamed@d_a_e_hm_cpp@ */
static u8 data_806E5C80[2 + 2 /* padding */];

/* 806E2C50-806E2D08 002950 00B8+00 1/1 0/0 0/0 .text            ShieldAction__8daE_HM_cFv */
void daE_HM_c::ShieldAction() {
    // NONMATCHING
}

/* 806E2D08-806E2D40 002A08 0038+00 2/2 0/0 0/0 .text            DeathSpSet__8daE_HM_cFv */
void daE_HM_c::DeathSpSet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A40-806E5A48 000120 0004+04 0/1 0/0 0/0 .rodata          @5073 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5073[1 + 1 /* padding */] = {
    35.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806E5A40, &lit_5073);
#pragma pop

/* 806E5A48-806E5A50 000128 0008+00 0/1 0/0 0/0 .rodata          @5074 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5074[8] = {
    0xBF, 0xD3, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33,
};
COMPILER_STRIP_GATE(0x806E5A48, &lit_5074);
#pragma pop

/* 806E2D40-806E2EA0 002A40 0160+00 2/2 0/0 0/0 .text            DeathMotion__8daE_HM_cFv */
void daE_HM_c::DeathMotion() {
    // NONMATCHING
}

/* 806E2EA0-806E2F5C 002BA0 00BC+00 1/1 0/0 0/0 .text            DeathCutDown__8daE_HM_cFv */
void daE_HM_c::DeathCutDown() {
    // NONMATCHING
}

/* 806E2F5C-806E31B0 002C5C 0254+00 1/1 0/0 0/0 .text            DeathAction__8daE_HM_cFv */
void daE_HM_c::DeathAction() {
    // NONMATCHING
}

/* 806E31B0-806E3208 002EB0 0058+00 1/1 0/0 0/0 .text            AttackAfter__8daE_HM_cFv */
void daE_HM_c::AttackAfter() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A50-806E5A54 000130 0004+00 0/1 0/0 0/0 .rodata          @5204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5204 = 31.0f;
COMPILER_STRIP_GATE(0x806E5A50, &lit_5204);
#pragma pop

/* 806E5A54-806E5A58 000134 0004+00 0/1 0/0 0/0 .rodata          @5205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5205 = 32.0f;
COMPILER_STRIP_GATE(0x806E5A54, &lit_5205);
#pragma pop

/* 806E3208-806E3420 002F08 0218+00 1/1 0/0 0/0 .text            AttackMotion__8daE_HM_cFv */
void daE_HM_c::AttackMotion() {
    // NONMATCHING
}

/* 806E3420-806E34C8 003120 00A8+00 2/2 0/0 0/0 .text            AttackAction__8daE_HM_cFv */
void daE_HM_c::AttackAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A58-806E5A5C 000138 0004+00 0/2 0/0 0/0 .rodata          @5252 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5252 = 21.0f;
COMPILER_STRIP_GATE(0x806E5A58, &lit_5252);
#pragma pop

/* 806E34C8-806E3690 0031C8 01C8+00 1/1 0/0 0/0 .text            FreeMove__8daE_HM_cFv */
void daE_HM_c::FreeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A5C-806E5A60 00013C 0004+00 1/1 0/0 0/0 .rodata          @5266 */
SECTION_RODATA static f32 const lit_5266 = 500.0f;
COMPILER_STRIP_GATE(0x806E5A5C, &lit_5266);

/* 806E3690-806E3724 003390 0094+00 1/1 0/0 0/0 .text            LinkSearch__8daE_HM_cFv */
void daE_HM_c::LinkSearch() {
    // NONMATCHING
}

/* 806E3724-806E37F4 003424 00D0+00 2/2 0/0 0/0 .text            WaitAction__8daE_HM_cFv */
void daE_HM_c::WaitAction() {
    // NONMATCHING
}

/* 806E37F4-806E3800 0034F4 000C+00 9/9 0/0 0/0 .text            MemberClear__8daE_HM_cFv */
void daE_HM_c::MemberClear() {
    // NONMATCHING
}

/* 806E3800-806E3884 003500 0084+00 1/1 0/0 0/0 .text            DownExecute__8daE_HM_cFv */
void daE_HM_c::DownExecute() {
    // NONMATCHING
}

/* 806E3884-806E39E8 003584 0164+00 1/1 0/0 0/0 .text            At_Check__8daE_HM_cFv */
void daE_HM_c::At_Check() {
    // NONMATCHING
}

/* 806E39E8-806E3BE4 0036E8 01FC+00 1/1 0/0 0/0 .text            Obj_Damage__8daE_HM_cFv */
void daE_HM_c::Obj_Damage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A60-806E5A64 000140 0004+00 0/1 0/0 0/0 .rodata          @5466 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5466 = 33.0f;
COMPILER_STRIP_GATE(0x806E5A60, &lit_5466);
#pragma pop

/* 806E3BE4-806E4008 0038E4 0424+00 1/1 0/0 0/0 .text            ActionMode__8daE_HM_cFv */
void daE_HM_c::ActionMode() {
    // NONMATCHING
}

/* 806E4008-806E40B8 003D08 00B0+00 1/1 0/0 0/0 .text            Yazirushi__8daE_HM_cFv */
void daE_HM_c::Yazirushi() {
    // NONMATCHING
}

/* 806E40B8-806E40D4 003DB8 001C+00 1/1 0/0 0/0 .text            setStabPos__8daE_HM_cFv */
void daE_HM_c::setStabPos() {
    // NONMATCHING
}

/* 806E40D4-806E434C 003DD4 0278+00 1/1 0/0 0/0 .text            Execute__8daE_HM_cFv */
void daE_HM_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A64-806E5A68 000144 0004+00 0/1 0/0 0/0 .rodata          @5604 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5604 = 255.0f;
COMPILER_STRIP_GATE(0x806E5A64, &lit_5604);
#pragma pop

/* 806E5A68-806E5A6C 000148 0004+00 0/1 0/0 0/0 .rodata          @5605 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5605 = 400.0f;
COMPILER_STRIP_GATE(0x806E5A68, &lit_5605);
#pragma pop

/* 806E5A6C-806E5A70 00014C 0004+00 0/1 0/0 0/0 .rodata          @5606 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5606 = 80.0f;
COMPILER_STRIP_GATE(0x806E5A6C, &lit_5606);
#pragma pop

/* 806E434C-806E44F0 00404C 01A4+00 1/1 0/0 0/0 .text            Draw__8daE_HM_cFv */
void daE_HM_c::Draw() {
    // NONMATCHING
}

/* 806E44F0-806E4558 0041F0 0068+00 1/1 0/0 0/0 .text            Delete__8daE_HM_cFv */
void daE_HM_c::Delete() {
    // NONMATCHING
}

/* 806E4558-806E45B8 004258 0060+00 1/1 0/0 0/0 .text            setBaseMtx__8daE_HM_cFv */
void daE_HM_c::setBaseMtx() {
    // NONMATCHING
}

/* 806E45B8-806E45D8 0042B8 0020+00 1/0 0/0 0/0 .text            daE_HM_Draw__FP8daE_HM_c */
static void daE_HM_Draw(daE_HM_c* param_0) {
    // NONMATCHING
}

/* 806E45D8-806E45F8 0042D8 0020+00 2/1 0/0 0/0 .text            daE_HM_Execute__FP8daE_HM_c */
static void daE_HM_Execute(daE_HM_c* param_0) {
    // NONMATCHING
}

/* 806E45F8-806E4600 0042F8 0008+00 1/0 0/0 0/0 .text            daE_HM_IsDelete__FP8daE_HM_c */
static bool daE_HM_IsDelete(daE_HM_c* param_0) {
    return true;
}

/* 806E4600-806E4620 004300 0020+00 1/0 0/0 0/0 .text            daE_HM_Delete__FP8daE_HM_c */
static void daE_HM_Delete(daE_HM_c* param_0) {
    // NONMATCHING
}

/* 806E4620-806E486C 004320 024C+00 1/1 0/0 0/0 .text            CheckRoof__8daE_HM_cFv */
void daE_HM_c::CheckRoof() {
    // NONMATCHING
}

/* 806E486C-806E4CCC 00456C 0460+00 1/1 0/0 0/0 .text            CheckWall__8daE_HM_cFv */
void daE_HM_c::CheckWall() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5A70-806E5A74 000150 0004+00 0/1 0/0 0/0 .rodata          @5878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5878 = 60.0f;
COMPILER_STRIP_GATE(0x806E5A70, &lit_5878);
#pragma pop

/* 806E4CCC-806E4E64 0049CC 0198+00 1/1 0/0 0/0 .text            CreateStyle__8daE_HM_cFv */
void daE_HM_c::CreateStyle() {
    // NONMATCHING
}

/* 806E4E64-806E51C4 004B64 0360+00 1/1 0/0 0/0 .text            Create__8daE_HM_cFv */
void daE_HM_c::Create() {
    // NONMATCHING
}

/* 806E51C4-806E520C 004EC4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806E520C-806E5254 004F0C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806E5254-806E52B0 004F54 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806E52B0-806E5320 004FB0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806E5320-806E5390 005020 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806E5390-806E53B0 005090 0020+00 1/0 0/0 0/0 .text            daE_HM_Create__FP10fopAc_ac_c */
static void daE_HM_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806E53B0-806E53F8 0050B0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 806E53F8-806E5440 0050F8 0048+00 2/1 0/0 0/0 .text            __dt__12daE_HM_HIO_cFv */
daE_HM_HIO_c::~daE_HM_HIO_c() {
    // NONMATCHING
}

/* 806E5440-806E54AC 005140 006C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_hm_cpp */
void __sinit_d_a_e_hm_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806E5440, __sinit_d_a_e_hm_cpp);
#pragma pop

/* 806E54AC-806E54B4 0051AC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806E54AC() {
    // NONMATCHING
}

/* 806E54B4-806E54BC 0051B4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806E54B4() {
    // NONMATCHING
}

/* 806E58D0-806E590C 0055D0 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806E5C84-806E5C88 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_806E5C84[4];
#pragma pop

/* 806E5C88-806E5C8C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_806E5C88[4];
#pragma pop

/* 806E5C8C-806E5C90 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_806E5C8C[4];
#pragma pop

/* 806E5C90-806E5C94 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806E5C90[4];
#pragma pop

/* 806E5C94-806E5C98 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806E5C94[4];
#pragma pop

/* 806E5C98-806E5C9C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806E5C98[4];
#pragma pop

/* 806E5C9C-806E5CA0 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_806E5C9C[4];
#pragma pop

/* 806E5CA0-806E5CA4 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_806E5CA0[4];
#pragma pop

/* 806E5CA4-806E5CA8 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_806E5CA4[4];
#pragma pop

/* 806E5CA8-806E5CAC 0000D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_806E5CA8[4];
#pragma pop

/* 806E5CAC-806E5CB0 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_806E5CAC[4];
#pragma pop

/* 806E5CB0-806E5CB4 0000E0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806E5CB0[4];
#pragma pop

/* 806E5CB4-806E5CB8 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_806E5CB4[4];
#pragma pop

/* 806E5CB8-806E5CBC 0000E8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806E5CB8[4];
#pragma pop

/* 806E5CBC-806E5CC0 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806E5CBC[4];
#pragma pop

/* 806E5CC0-806E5CC4 0000F0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_806E5CC0[4];
#pragma pop

/* 806E5CC4-806E5CC8 0000F4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_806E5CC4[4];
#pragma pop

/* 806E5CC8-806E5CCC 0000F8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806E5CC8[4];
#pragma pop

/* 806E5CCC-806E5CD0 0000FC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_806E5CCC[4];
#pragma pop

/* 806E5CD0-806E5CD4 000100 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_806E5CD0[4];
#pragma pop

/* 806E5CD4-806E5CD8 000104 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_806E5CD4[4];
#pragma pop

/* 806E5CD8-806E5CDC 000108 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806E5CD8[4];
#pragma pop

/* 806E5CDC-806E5CE0 00010C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806E5CDC[4];
#pragma pop

/* 806E5CE0-806E5CE4 000110 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806E5CE0[4];
#pragma pop

/* 806E5CE4-806E5CE8 000114 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_806E5CE4[4];
#pragma pop

/* 806E5A74-806E5A74 000154 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

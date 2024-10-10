/**
 * @file d_a_e_bg.cpp
 * 
*/

#include "d/actor/d_a_e_bg.h"
#include "dol2asm.h"




//
// Forward References:
//

extern "C" void __ct__12daE_BG_HIO_cFv();
extern "C" void ctrlJoint__8daE_BG_cFP8J3DJointP8J3DModel();
extern "C" void JointCallBack__8daE_BG_cFP8J3DJointi();
extern "C" void draw__8daE_BG_cFv();
extern "C" static void daE_BG_Draw__FP8daE_BG_c();
extern "C" void setBck__8daE_BG_cFiUcff();
extern "C" void setActionMode__8daE_BG_cFii();
extern "C" void damage_check__8daE_BG_cFv();
extern "C" void setSparkEffect__8daE_BG_cFv();
extern "C" void search_esa__8daE_BG_cFv();
extern "C" void executeBorn__8daE_BG_cFv();
extern "C" void executeSwim__8daE_BG_cFv();
extern "C" void executeAttack__8daE_BG_cFv();
extern "C" void executeDamage__8daE_BG_cFv();
extern "C" void setBombCarry__8daE_BG_cFi();
extern "C" void executeBomb__8daE_BG_cFv();
extern "C" void executeBirth__8daE_BG_cFv();
extern "C" void executeHook__8daE_BG_cFv();
extern "C" void executeEat__8daE_BG_cFv();
extern "C" void action__8daE_BG_cFv();
extern "C" void mtx_set__8daE_BG_cFv();
extern "C" void cc_set__8daE_BG_cFv();
extern "C" void execute__8daE_BG_cFv();
extern "C" static void daE_BG_Execute__FP8daE_BG_c();
extern "C" static bool daE_BG_IsDelete__FP8daE_BG_c();
extern "C" void _delete__8daE_BG_cFv();
extern "C" static void daE_BG_Delete__FP8daE_BG_c();
extern "C" void CreateHeap__8daE_BG_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_BG_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void daE_BG_Create__FP8daE_BG_c();
extern "C" void __dt__12daE_BG_HIO_cFv();
extern "C" void __sinit_d_a_e_bg_cpp();
extern "C" static void func_8068A220();
extern "C" static void func_8068A228();
extern "C" extern char const* const d_a_e_bg__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
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
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void func_802807E0();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
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
extern "C" extern u8 mStayNo__20dStage_roomControl_c[4];
extern "C" extern u8 pauseTimer__9dScnPly_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8068A244-8068A248 000000 0004+00 12/12 0/0 0/0 .rodata          @3768 */
SECTION_RODATA static f32 const lit_3768 = 8.0f;
COMPILER_STRIP_GATE(0x8068A244, &lit_3768);

/* 8068A248-8068A24C 000004 0004+00 0/1 0/0 0/0 .rodata          @3769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3769 = 16.0f;
COMPILER_STRIP_GATE(0x8068A248, &lit_3769);
#pragma pop

/* 8068A24C-8068A250 000008 0004+00 0/1 0/0 0/0 .rodata          @3770 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3770 = 1000.0f;
COMPILER_STRIP_GATE(0x8068A24C, &lit_3770);
#pragma pop

/* 8068A250-8068A254 00000C 0004+00 1/3 0/0 0/0 .rodata          @3771 */
SECTION_RODATA static f32 const lit_3771 = 500.0f;
COMPILER_STRIP_GATE(0x8068A250, &lit_3771);

/* 8068A254-8068A258 000010 0004+00 1/5 0/0 0/0 .rodata          @3772 */
SECTION_RODATA static f32 const lit_3772 = 100.0f;
COMPILER_STRIP_GATE(0x8068A254, &lit_3772);

/* 8068A314-8068A354 000000 0040+00 1/1 0/0 0/0 .data            cc_bg_src__22@unnamed@d_a_e_bg_cpp@
 */
SECTION_DATA static u8 data_8068A314[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 8068A354-8068A394 000040 0040+00 1/1 0/0 0/0 .data cc_bg_at_src__22@unnamed@d_a_e_bg_cpp@ */
SECTION_DATA static u8 data_8068A354[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 8068A394-8068A3A0 000080 000A+02 1/1 0/0 0/0 .data            enemyBombID$3951 */
SECTION_DATA static u8 enemyBombID[10 + 2 /* padding */] = {
    0x0A,
    0x0D,
    0x0A,
    0x0E,
    0x0A,
    0x0F,
    0x0A,
    0x10,
    0x0A,
    0x11,
    /* padding */
    0x00,
    0x00,
};

/* 8068A3A0-8068A3CC -00001 002C+00 1/1 0/0 0/0 .data            @4648 */
SECTION_DATA static void* lit_4648[11] = {
    (void*)(((char*)executeAttack__8daE_BG_cFv) + 0x278),
    (void*)(((char*)executeAttack__8daE_BG_cFv) + 0x484),
    (void*)(((char*)executeAttack__8daE_BG_cFv) + 0xA54),
    (void*)(((char*)executeAttack__8daE_BG_cFv) + 0xB4C),
    (void*)(((char*)executeAttack__8daE_BG_cFv) + 0xC38),
    (void*)(((char*)executeAttack__8daE_BG_cFv) + 0xDC0),
    (void*)(((char*)executeAttack__8daE_BG_cFv) + 0xE7C),
    (void*)(((char*)executeAttack__8daE_BG_cFv) + 0xE7C),
    (void*)(((char*)executeAttack__8daE_BG_cFv) + 0xE7C),
    (void*)(((char*)executeAttack__8daE_BG_cFv) + 0xE7C),
    (void*)(((char*)executeAttack__8daE_BG_cFv) + 0x3F0),
};

/* 8068A3CC-8068A3EC -00001 0020+00 1/1 0/0 0/0 .data            @5098 */
SECTION_DATA static void* lit_5098[8] = {
    (void*)(((char*)executeEat__8daE_BG_cFv) + 0xAC),
    (void*)(((char*)executeEat__8daE_BG_cFv) + 0x190),
    (void*)(((char*)executeEat__8daE_BG_cFv) + 0x250),
    (void*)(((char*)executeEat__8daE_BG_cFv) + 0x424),
    (void*)(((char*)executeEat__8daE_BG_cFv) + 0xD70),
    (void*)(((char*)executeEat__8daE_BG_cFv) + 0x6D0),
    (void*)(((char*)executeEat__8daE_BG_cFv) + 0x794),
    (void*)(((char*)executeEat__8daE_BG_cFv) + 0x970),
};

/* 8068A3EC-8068A40C -00001 0020+00 1/1 0/0 0/0 .data            @5159 */
SECTION_DATA static void* lit_5159[8] = {
    (void*)(((char*)action__8daE_BG_cFv) + 0x5C), (void*)(((char*)action__8daE_BG_cFv) + 0x68),
    (void*)(((char*)action__8daE_BG_cFv) + 0x74), (void*)(((char*)action__8daE_BG_cFv) + 0x84),
    (void*)(((char*)action__8daE_BG_cFv) + 0x90), (void*)(((char*)action__8daE_BG_cFv) + 0x9C),
    (void*)(((char*)action__8daE_BG_cFv) + 0xA8), (void*)(((char*)action__8daE_BG_cFv) + 0xB4),
};

/* 8068A40C-8068A42C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_BG_Method */
static actor_method_class l_daE_BG_Method = {
    (process_method_func)daE_BG_Create__FP8daE_BG_c,
    (process_method_func)daE_BG_Delete__FP8daE_BG_c,
    (process_method_func)daE_BG_Execute__FP8daE_BG_c,
    (process_method_func)daE_BG_IsDelete__FP8daE_BG_c,
    (process_method_func)daE_BG_Draw__FP8daE_BG_c,
};

/* 8068A42C-8068A45C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_BG */
extern actor_process_profile_definition g_profile_E_BG = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_BG,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daE_BG_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  204,                    // mPriority
  &l_daE_BG_Method,       // sub_method
  0x000D0100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8068A45C-8068A468 000148 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8068A468-8068A474 000154 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8068A474-8068A498 000160 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8068A228,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8068A220,
};

/* 8068A498-8068A4A4 000184 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8068A4A4-8068A4B0 000190 000C+00 2/2 0/0 0/0 .data            __vt__12daE_BG_HIO_c */
SECTION_DATA extern void* __vt__12daE_BG_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_BG_HIO_cFv,
};

/* 8068580C-8068585C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__12daE_BG_HIO_cFv */
daE_BG_HIO_c::daE_BG_HIO_c() {
    // NONMATCHING
}

/* 8068585C-80685948 00013C 00EC+00 1/1 0/0 0/0 .text ctrlJoint__8daE_BG_cFP8J3DJointP8J3DModel */
void daE_BG_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80685948-80685994 000228 004C+00 2/2 0/0 0/0 .text JointCallBack__8daE_BG_cFP8J3DJointi */
void daE_BG_c::JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068A258-8068A25C 000014 0004+00 0/2 0/0 0/0 .rodata          @3887 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3887 = 30.0f;
COMPILER_STRIP_GATE(0x8068A258, &lit_3887);
#pragma pop

/* 8068A25C-8068A260 000018 0004+00 0/1 0/0 0/0 .rodata          @3888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3888 = 32.0f;
COMPILER_STRIP_GATE(0x8068A25C, &lit_3888);
#pragma pop

/* 8068A260-8068A264 00001C 0004+00 0/2 0/0 0/0 .rodata          @3889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3889 = 200.0f;
COMPILER_STRIP_GATE(0x8068A260, &lit_3889);
#pragma pop

/* 8068A264-8068A268 000020 0004+00 1/11 0/0 0/0 .rodata          @3890 */
SECTION_RODATA static u8 const lit_3890[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8068A264, &lit_3890);

/* 8068A268-8068A26C 000024 0004+00 2/7 0/0 0/0 .rodata          @3891 */
SECTION_RODATA static f32 const lit_3891 = 1.0f;
COMPILER_STRIP_GATE(0x8068A268, &lit_3891);

/* 80685994-80685B50 000274 01BC+00 1/1 0/0 0/0 .text            draw__8daE_BG_cFv */
void daE_BG_c::draw() {
    // NONMATCHING
}

/* 80685B50-80685B70 000430 0020+00 1/0 0/0 0/0 .text            daE_BG_Draw__FP8daE_BG_c */
static void daE_BG_Draw(daE_BG_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068A26C-8068A270 000028 0004+00 1/1 0/0 0/0 .rodata          @3905 */
SECTION_RODATA static f32 const lit_3905 = -1.0f;
COMPILER_STRIP_GATE(0x8068A26C, &lit_3905);

/* 8068A308-8068A308 0000C4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8068A308 = "E_BG";
#pragma pop

/* 80685B70-80685C14 000450 00A4+00 2/2 0/0 0/0 .text            setBck__8daE_BG_cFiUcff */
void daE_BG_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 80685C14-80685C2C 0004F4 0018+00 7/7 0/0 0/0 .text            setActionMode__8daE_BG_cFii */
void daE_BG_c::setActionMode(int param_0, int param_1) {
    // NONMATCHING
}

/* 80685C2C-80685DBC 00050C 0190+00 1/1 0/0 0/0 .text            damage_check__8daE_BG_cFv */
void daE_BG_c::damage_check() {
    // NONMATCHING
}

/* 80685DBC-80685F04 00069C 0148+00 1/1 0/0 0/0 .text            setSparkEffect__8daE_BG_cFv */
void daE_BG_c::setSparkEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068A270-8068A274 00002C 0004+00 1/5 0/0 0/0 .rodata          @4007 */
SECTION_RODATA static f32 const lit_4007 = 20.0f;
COMPILER_STRIP_GATE(0x8068A270, &lit_4007);

/* 80685F04-80685F88 0007E4 0084+00 2/2 0/0 0/0 .text            search_esa__8daE_BG_cFv */
void daE_BG_c::search_esa() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068A4B8-8068A4BC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_8068A4B8[4];

/* 8068A4BC-8068A4C8 00000C 000C+00 1/1 0/0 0/0 .bss             @3763 */
static u8 lit_3763[12];

/* 8068A4C8-8068A4EC 000018 0024+00 5/5 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[36];

/* 80685F88-80686210 000868 0288+00 1/1 0/0 0/0 .text            executeBorn__8daE_BG_cFv */
void daE_BG_c::executeBorn() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068A274-8068A27C 000030 0008+00 0/3 0/0 0/0 .rodata          @4347 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4347[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8068A274, &lit_4347);
#pragma pop

/* 8068A27C-8068A284 000038 0008+00 0/3 0/0 0/0 .rodata          @4348 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4348[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8068A27C, &lit_4348);
#pragma pop

/* 8068A284-8068A28C 000040 0008+00 0/3 0/0 0/0 .rodata          @4349 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4349[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8068A284, &lit_4349);
#pragma pop

/* 8068A28C-8068A290 000048 0004+00 0/4 0/0 0/0 .rodata          @4350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4350 = -1000000000.0f;
COMPILER_STRIP_GATE(0x8068A28C, &lit_4350);
#pragma pop

/* 8068A290-8068A294 00004C 0004+00 0/3 0/0 0/0 .rodata          @4351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4351 = 50.0f;
COMPILER_STRIP_GATE(0x8068A290, &lit_4351);
#pragma pop

/* 8068A294-8068A298 000050 0004+00 0/1 0/0 0/0 .rodata          @4352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4352 = 16000.0f;
COMPILER_STRIP_GATE(0x8068A294, &lit_4352);
#pragma pop

/* 8068A298-8068A29C 000054 0004+00 0/2 0/0 0/0 .rodata          @4353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4353 = 8192.0f;
COMPILER_STRIP_GATE(0x8068A298, &lit_4353);
#pragma pop

/* 8068A29C-8068A2A0 000058 0004+00 0/1 0/0 0/0 .rodata          @4354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4354 = 90.0f;
COMPILER_STRIP_GATE(0x8068A29C, &lit_4354);
#pragma pop

/* 8068A2A0-8068A2A4 00005C 0004+00 0/2 0/0 0/0 .rodata          @4355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4355 = 4.0f;
COMPILER_STRIP_GATE(0x8068A2A0, &lit_4355);
#pragma pop

/* 8068A2A4-8068A2A8 000060 0004+00 0/5 0/0 0/0 .rodata          @4356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4356 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8068A2A4, &lit_4356);
#pragma pop

/* 8068A2A8-8068A2AC 000064 0004+00 0/1 0/0 0/0 .rodata          @4357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4357 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8068A2A8, &lit_4357);
#pragma pop

/* 8068A2AC-8068A2B4 000068 0004+04 0/1 0/0 0/0 .rodata          @4358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4358[1 + 1 /* padding */] = {
    2.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8068A2AC, &lit_4358);
#pragma pop

/* 8068A2B4-8068A2BC 000070 0008+00 0/1 0/0 0/0 .rodata          @4360 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4360[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8068A2B4, &lit_4360);
#pragma pop

/* 80686210-80686C90 000AF0 0A80+00 1/1 0/0 0/0 .text            executeSwim__8daE_BG_cFv */
void daE_BG_c::executeSwim() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068A2BC-8068A2C0 000078 0004+00 0/1 0/0 0/0 .rodata          @4646 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4646 = -5.0f;
COMPILER_STRIP_GATE(0x8068A2BC, &lit_4646);
#pragma pop

/* 80686C90-80687B38 001570 0EA8+00 2/1 0/0 0/0 .text            executeAttack__8daE_BG_cFv */
void daE_BG_c::executeAttack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068A2C0-8068A2C4 00007C 0004+00 0/0 0/0 0/0 .rodata          @4647 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4647 = 300.0f;
COMPILER_STRIP_GATE(0x8068A2C0, &lit_4647);
#pragma pop

/* 8068A2C4-8068A2C8 000080 0004+00 0/2 0/0 0/0 .rodata          @4678 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4678 = 3.0f;
COMPILER_STRIP_GATE(0x8068A2C4, &lit_4678);
#pragma pop

/* 8068A2C8-8068A2CC 000084 0004+00 0/4 0/0 0/0 .rodata          @4679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4679 = 10.0f;
COMPILER_STRIP_GATE(0x8068A2C8, &lit_4679);
#pragma pop

/* 8068A2CC-8068A2D0 000088 0004+00 0/3 0/0 0/0 .rodata          @4680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4680 = 5.0f;
COMPILER_STRIP_GATE(0x8068A2CC, &lit_4680);
#pragma pop

/* 8068A2D0-8068A2D4 00008C 0004+00 0/3 0/0 0/0 .rodata          @4681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4681 = -1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8068A2D0, &lit_4681);
#pragma pop

/* 8068A2D4-8068A2D8 000090 0004+00 0/3 0/0 0/0 .rodata          @4682 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4682 = -3.0f;
COMPILER_STRIP_GATE(0x8068A2D4, &lit_4682);
#pragma pop

/* 80687B38-80687CD8 002418 01A0+00 1/1 0/0 0/0 .text            executeDamage__8daE_BG_cFv */
void daE_BG_c::executeDamage() {
    // NONMATCHING
}

/* 80687CD8-80687DEC 0025B8 0114+00 3/3 0/0 0/0 .text            setBombCarry__8daE_BG_cFi */
void daE_BG_c::setBombCarry(int param_0) {
    // NONMATCHING
}

/* 80687DEC-80687FC4 0026CC 01D8+00 1/1 0/0 0/0 .text            executeBomb__8daE_BG_cFv */
void daE_BG_c::executeBomb() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068A2D8-8068A2DC 000094 0004+00 0/1 0/0 0/0 .rodata          @4834 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4834 = -100.0f;
COMPILER_STRIP_GATE(0x8068A2D8, &lit_4834);
#pragma pop

/* 8068A2DC-8068A2E0 000098 0004+00 0/1 0/0 0/0 .rodata          @4835 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4835 = -40.0f;
COMPILER_STRIP_GATE(0x8068A2DC, &lit_4835);
#pragma pop

/* 80687FC4-8068838C 0028A4 03C8+00 1/1 0/0 0/0 .text            executeBirth__8daE_BG_cFv */
void daE_BG_c::executeBirth() {
    // NONMATCHING
}

/* 8068838C-806883D0 002C6C 0044+00 1/1 0/0 0/0 .text            executeHook__8daE_BG_cFv */
void daE_BG_c::executeHook() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068A2E0-8068A2E4 00009C 0004+00 0/1 0/0 0/0 .rodata          @5094 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5094 = 0.5f;
COMPILER_STRIP_GATE(0x8068A2E0, &lit_5094);
#pragma pop

/* 806883D0-80689168 002CB0 0D98+00 2/1 0/0 0/0 .text            executeEat__8daE_BG_cFv */
void daE_BG_c::executeEat() {
    // NONMATCHING
}

/* 80689168-80689544 003A48 03DC+00 2/1 0/0 0/0 .text            action__8daE_BG_cFv */
void daE_BG_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068A2E4-8068A2E8 0000A0 0004+00 0/0 0/0 0/0 .rodata          @5095 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5095 = 60.0f;
COMPILER_STRIP_GATE(0x8068A2E4, &lit_5095);
#pragma pop

/* 8068A2E8-8068A2EC 0000A4 0004+00 0/0 0/0 0/0 .rodata          @5096 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5096 = 70.0f;
COMPILER_STRIP_GATE(0x8068A2E8, &lit_5096);
#pragma pop

/* 8068A2EC-8068A2F0 0000A8 0004+00 0/0 0/0 0/0 .rodata          @5097 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5097 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x8068A2EC, &lit_5097);
#pragma pop

/* 8068A2F0-8068A2F4 0000AC 0004+00 0/0 0/0 0/0 .rodata          @5158 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5158 = 1.5f;
COMPILER_STRIP_GATE(0x8068A2F0, &lit_5158);
#pragma pop

/* 8068A2F4-8068A2F8 0000B0 0004+00 0/2 0/0 0/0 .rodata          @5220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5220 = 25.0f;
COMPILER_STRIP_GATE(0x8068A2F4, &lit_5220);
#pragma pop

/* 8068A2F8-8068A2FC 0000B4 0004+00 0/1 0/0 0/0 .rodata          @5221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5221 = -25.0f;
COMPILER_STRIP_GATE(0x8068A2F8, &lit_5221);
#pragma pop

/* 80689544-8068966C 003E24 0128+00 1/1 0/0 0/0 .text            mtx_set__8daE_BG_cFv */
void daE_BG_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068A2FC-8068A300 0000B8 0004+00 0/1 0/0 0/0 .rodata          @5270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5270 = 35.0f;
COMPILER_STRIP_GATE(0x8068A2FC, &lit_5270);
#pragma pop

/* 8068966C-806897EC 003F4C 0180+00 1/1 0/0 0/0 .text            cc_set__8daE_BG_cFv */
void daE_BG_c::cc_set() {
    // NONMATCHING
}

/* 806897EC-80689950 0040CC 0164+00 1/1 0/0 0/0 .text            execute__8daE_BG_cFv */
void daE_BG_c::execute() {
    // NONMATCHING
}

/* 80689950-80689970 004230 0020+00 2/1 0/0 0/0 .text            daE_BG_Execute__FP8daE_BG_c */
static void daE_BG_Execute(daE_BG_c* param_0) {
    // NONMATCHING
}

/* 80689970-80689978 004250 0008+00 1/0 0/0 0/0 .text            daE_BG_IsDelete__FP8daE_BG_c */
static bool daE_BG_IsDelete(daE_BG_c* param_0) {
    return true;
}

/* 80689978-806899EC 004258 0074+00 1/1 0/0 0/0 .text            _delete__8daE_BG_cFv */
void daE_BG_c::_delete() {
    // NONMATCHING
}

/* 806899EC-80689A0C 0042CC 0020+00 1/0 0/0 0/0 .text            daE_BG_Delete__FP8daE_BG_c */
static void daE_BG_Delete(daE_BG_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068A308-8068A308 0000C4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8068A30D = "E_bg";
#pragma pop

/* 80689A0C-80689BD0 0042EC 01C4+00 1/1 0/0 0/0 .text            CreateHeap__8daE_BG_cFv */
void daE_BG_c::CreateHeap() {
    // NONMATCHING
}

/* 80689BD0-80689C18 0044B0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80689C18-80689C38 0044F8 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8068A300-8068A304 0000BC 0004+00 0/1 0/0 0/0 .rodata          @5533 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5533 = -50.0f;
COMPILER_STRIP_GATE(0x8068A300, &lit_5533);
#pragma pop

/* 8068A304-8068A308 0000C0 0004+00 0/1 0/0 0/0 .rodata          @5534 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5534 = 3000.0f;
COMPILER_STRIP_GATE(0x8068A304, &lit_5534);
#pragma pop

/* 80689C38-8068A07C 004518 0444+00 1/1 0/0 0/0 .text            create__8daE_BG_cFv */
void daE_BG_c::create() {
    // NONMATCHING
}

/* 8068A07C-8068A0C4 00495C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8068A0C4-8068A10C 0049A4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8068A10C-8068A17C 0049EC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8068A17C-8068A19C 004A5C 0020+00 1/0 0/0 0/0 .text            daE_BG_Create__FP8daE_BG_c */
static void daE_BG_Create(daE_BG_c* param_0) {
    // NONMATCHING
}

/* 8068A19C-8068A1E4 004A7C 0048+00 2/1 0/0 0/0 .text            __dt__12daE_BG_HIO_cFv */
daE_BG_HIO_c::~daE_BG_HIO_c() {
    // NONMATCHING
}

/* 8068A1E4-8068A220 004AC4 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_bg_cpp */
void __sinit_d_a_e_bg_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8068A1E4, __sinit_d_a_e_bg_cpp);
#pragma pop

/* 8068A220-8068A228 004B00 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8068A220() {
    // NONMATCHING
}

/* 8068A228-8068A230 004B08 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8068A228() {
    // NONMATCHING
}

/* 8068A308-8068A308 0000C4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
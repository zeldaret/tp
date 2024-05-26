/**
 * @file d_a_obj_syRock.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock.h"
#include "dol2asm.h"




//
// Forward References:
//

extern "C" void __ct__14daSyRock_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__10daSyRock_cFv();
extern "C" void CreateHeap__10daSyRock_cFv();
extern "C" void create__10daSyRock_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void setFallStat__10daSyRock_cFv();
extern "C" void Execute__10daSyRock_cFPPA3_A4_f();
extern "C" void move__10daSyRock_cFv();
extern "C" void init_modeWait__10daSyRock_cFv();
extern "C" void modeWait__10daSyRock_cFv();
extern "C" void eventStart__10daSyRock_cFv();
extern "C" void init_modeDropInit__10daSyRock_cFv();
extern "C" void modeDropInit__10daSyRock_cFv();
extern "C" void searchWaterPillar__10daSyRock_cFPvPv();
extern "C" void init_modeDrop__10daSyRock_cFv();
extern "C" void modeDrop__10daSyRock_cFv();
extern "C" void init_modeSink__10daSyRock_cFv();
extern "C" void modeSink__10daSyRock_cFv();
extern "C" void init_modeMove__10daSyRock_cFv();
extern "C" void modeMove__10daSyRock_cFv();
extern "C" void chkWaterLineIn__10daSyRock_cFv();
extern "C" void bgCheck__10daSyRock_cFv();
extern "C" void init_modeDropEnd__10daSyRock_cFv();
extern "C" void modeDropEnd__10daSyRock_cFv();
extern "C" void Draw__10daSyRock_cFv();
extern "C" void Delete__10daSyRock_cFv();
extern "C" static void daSyRock_Draw__FP10daSyRock_c();
extern "C" static void daSyRock_Execute__FP10daSyRock_c();
extern "C" static void daSyRock_Delete__FP10daSyRock_c();
extern "C" static void daSyRock_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__14daSyRock_HIO_cFv();
extern "C" void __sinit_d_a_obj_syRock_cpp();
extern "C" static void func_80D03D10();
extern "C" static void func_80D03D18();
extern "C" static void func_80D03D20();
extern "C" static void func_80D03D28();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void getPos__12daWtPillar_cFv();
extern "C" void __dt__10daSyRock_cFv();
extern "C" u8 const mCcDObjInfo__10daSyRock_c[48];
extern "C" extern char const* const d_a_obj_syRock__stringBase0;
extern "C" u8 mCcDCyl__10daSyRock_c[68];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void eventUpdate__17dEvLib_callback_cFv();
extern "C" void orderEvent__17dEvLib_callback_cFiii();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();
extern "C" void getPillarHeight__12daWtPillar_cFv();

//
// Declarations:
//

/* ############################################################################################## */
/* 80D03F90-80D03F94 000000 0004+00 6/6 0/0 0/0 .rodata          @3662 */
SECTION_RODATA static f32 const lit_3662 = 450.0f;
COMPILER_STRIP_GATE(0x80D03F90, &lit_3662);

/* 80D03F94-80D03F98 000004 0004+00 0/1 0/0 0/0 .rodata          @3663 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3663 = 90.0f;
COMPILER_STRIP_GATE(0x80D03F94, &lit_3663);
#pragma pop

/* 80D03F98-80D03F9C 000008 0004+00 0/1 0/0 0/0 .rodata          @3664 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3664 = 45.0f;
COMPILER_STRIP_GATE(0x80D03F98, &lit_3664);
#pragma pop

/* 80D03F9C-80D03FA0 00000C 0004+00 0/1 0/0 0/0 .rodata          @3665 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3665 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80D03F9C, &lit_3665);
#pragma pop

/* 80D03FA0-80D03FA4 000010 0004+00 0/1 0/0 0/0 .rodata          @3666 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3666 = 5.0f;
COMPILER_STRIP_GATE(0x80D03FA0, &lit_3666);
#pragma pop

/* 80D03FA4-80D03FA8 000014 0004+00 0/1 0/0 0/0 .rodata          @3667 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3667 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D03FA4, &lit_3667);
#pragma pop

/* 80D03FA8-80D03FAC 000018 0004+00 0/1 0/0 0/0 .rodata          @3668 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3668 = 10.0f;
COMPILER_STRIP_GATE(0x80D03FA8, &lit_3668);
#pragma pop

/* 80D03FAC-80D03FB0 00001C 0004+00 1/2 0/0 0/0 .rodata          @3669 */
SECTION_RODATA static f32 const lit_3669 = 200.0f;
COMPILER_STRIP_GATE(0x80D03FAC, &lit_3669);

/* 80D03FB0-80D03FB4 000020 0004+00 0/1 0/0 0/0 .rodata          @3670 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3670 = 4.0f;
COMPILER_STRIP_GATE(0x80D03FB0, &lit_3670);
#pragma pop

/* 80D03FB4-80D03FB8 000024 0004+00 0/2 0/0 0/0 .rodata          @3671 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3671 = 3.0f;
COMPILER_STRIP_GATE(0x80D03FB4, &lit_3671);
#pragma pop

/* 80D0403C-80D04048 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D04048-80D0405C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80D0405C-80D040A0 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__10daSyRock_c */
SECTION_DATA u8 daSyRock_c::mCcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D040A0-80D040AC -00001 000C+00 0/1 0/0 0/0 .data            @3922 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3922[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__10daSyRock_cFv,
};
#pragma pop

/* 80D040AC-80D040B8 -00001 000C+00 0/1 0/0 0/0 .data            @3923 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3923[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeDropInit__10daSyRock_cFv,
};
#pragma pop

/* 80D040B8-80D040C4 -00001 000C+00 0/1 0/0 0/0 .data            @3924 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3924[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeDrop__10daSyRock_cFv,
};
#pragma pop

/* 80D040C4-80D040D0 -00001 000C+00 0/1 0/0 0/0 .data            @3925 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3925[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeSink__10daSyRock_cFv,
};
#pragma pop

/* 80D040D0-80D040DC -00001 000C+00 0/1 0/0 0/0 .data            @3926 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3926[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMove__10daSyRock_cFv,
};
#pragma pop

/* 80D040DC-80D040E8 -00001 000C+00 0/1 0/0 0/0 .data            @3927 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3927[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeDropEnd__10daSyRock_cFv,
};
#pragma pop

/* 80D040E8-80D04130 0000AC 0048+00 0/1 0/0 0/0 .data            mode_proc$3921 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80D04130-80D04150 -00001 0020+00 1/0 0/0 0/0 .data            l_daSyRock_Method */
static actor_method_class l_daSyRock_Method = {
    (process_method_func)daSyRock_Create__FP10fopAc_ac_c,
    (process_method_func)daSyRock_Delete__FP10daSyRock_c,
    (process_method_func)daSyRock_Execute__FP10daSyRock_c,
    0,
    (process_method_func)daSyRock_Draw__FP10daSyRock_c,
};

/* 80D04150-80D04180 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SyRock */
extern actor_process_profile_definition g_profile_Obj_SyRock = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SyRock,        // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daSyRock_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  515,                    // mPriority
  &l_daSyRock_Method,     // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D04180-80D0418C 000144 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80D0418C-80D04198 000150 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80D04198-80D041A4 00015C 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80D041A4-80D041C8 000168 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D03D28,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D03D20,
};

/* 80D041C8-80D041D4 00018C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80D041D4-80D041E0 000198 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D041E0-80D041F8 0001A4 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80D041F8-80D04240 0001BC 0048+00 2/2 0/0 0/0 .data            __vt__10daSyRock_c */
SECTION_DATA extern void* __vt__10daSyRock_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__10daSyRock_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__10daSyRock_cFPPA3_A4_f,
    (void*)Draw__10daSyRock_cFv,
    (void*)Delete__10daSyRock_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D03D18,
    (void*)func_80D03D10,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__10daSyRock_cFv,
    (void*)eventStart__10daSyRock_cFv,
};

/* 80D04240-80D0424C 000204 000C+00 2/2 0/0 0/0 .data            __vt__14daSyRock_HIO_c */
SECTION_DATA extern void* __vt__14daSyRock_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daSyRock_HIO_cFv,
};

/* 80D0424C-80D04258 000210 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80D022AC-80D02334 0000EC 0088+00 1/1 0/0 0/0 .text            __ct__14daSyRock_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daSyRock_HIO_c::daSyRock_HIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/__ct__14daSyRock_HIO_cFv.s"
}
#pragma pop

/* 80D02334-80D0237C 000174 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" asm void __dt__14mDoHIO_entry_cFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/__dt__14mDoHIO_entry_cFv.s"
}
#pragma pop

/* 80D0237C-80D02454 0001BC 00D8+00 2/2 0/0 0/0 .text            setBaseMtx__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/setBaseMtx__10daSyRock_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D04030-80D04030 0000A0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D04030 = "syourock";
#pragma pop

/* 80D02454-80D02584 000294 0130+00 1/0 0/0 0/0 .text            CreateHeap__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/CreateHeap__10daSyRock_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D03FB8-80D03FE8 000028 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__10daSyRock_c */
SECTION_RODATA u8 const daSyRock_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F,
    0x00, 0x40, 0x00, 0x20, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x79, 0x01, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D03FB8, &daSyRock_c::mCcDObjInfo);

/* 80D03FE8-80D03FEC 000058 0004+00 2/5 0/0 0/0 .rodata          @3805 */
SECTION_RODATA static f32 const lit_3805 = 150.0f;
COMPILER_STRIP_GATE(0x80D03FE8, &lit_3805);

/* 80D03FEC-80D03FF0 00005C 0004+00 0/1 0/0 0/0 .rodata          @3806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3806 = 10000.0f;
COMPILER_STRIP_GATE(0x80D03FEC, &lit_3806);
#pragma pop

/* 80D03FF0-80D03FF4 000060 0004+00 2/5 0/0 0/0 .rodata          @3807 */
SECTION_RODATA static u8 const lit_3807[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D03FF0, &lit_3807);

/* 80D02584-80D02930 0003C4 03AC+00 1/1 0/0 0/0 .text            create__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/create__10daSyRock_cFv.s"
}
#pragma pop

/* 80D02930-80D029A0 000770 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80D029A0-80D02A10 0007E0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80D02A10-80D02A58 000850 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80D02A58-80D02AA0 000898 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80D02AA0-80D02AFC 0008E0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80D02AFC-80D02BE0 00093C 00E4+00 1/1 0/0 0/0 .text            setFallStat__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::setFallStat() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/setFallStat__10daSyRock_cFv.s"
}
#pragma pop

/* 80D02BE0-80D02C54 000A20 0074+00 1/0 0/0 0/0 .text            Execute__10daSyRock_cFPPA3_A4_f */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::Execute(f32 (**param_0)[3][4]) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/Execute__10daSyRock_cFPPA3_A4_f.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D03FF4-80D03FF8 000064 0004+00 0/1 0/0 0/0 .rodata          @3948 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3948 = 0x43360B61;
COMPILER_STRIP_GATE(0x80D03FF4, &lit_3948);
#pragma pop

/* 80D03FF8-80D03FFC 000068 0004+00 0/1 0/0 0/0 .rodata          @3949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3949 = 680.0f;
COMPILER_STRIP_GATE(0x80D03FF8, &lit_3949);
#pragma pop

/* 80D03FFC-80D04000 00006C 0004+00 0/1 0/0 0/0 .rodata          @3950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3950 = 250.0f;
COMPILER_STRIP_GATE(0x80D03FFC, &lit_3950);
#pragma pop

/* 80D04260-80D0426C 000008 000C+00 1/1 0/0 0/0 .bss             @3656 */
static u8 lit_3656[12];

/* 80D0426C-80D042A0 000014 0034+00 8/8 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[52];

/* 80D042A0-80D042A4 000048 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80D042A0[4];

/* 80D02C54-80D02E70 000A94 021C+00 1/1 0/0 0/0 .text            move__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::move() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/move__10daSyRock_cFv.s"
}
#pragma pop

/* 80D02E70-80D02E7C 000CB0 000C+00 1/1 0/0 0/0 .text            init_modeWait__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::init_modeWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/init_modeWait__10daSyRock_cFv.s"
}
#pragma pop

/* 80D02E7C-80D02F88 000CBC 010C+00 1/0 0/0 0/0 .text            modeWait__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::modeWait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/modeWait__10daSyRock_cFv.s"
}
#pragma pop

/* 80D02F88-80D02FB8 000DC8 0030+00 2/1 0/0 0/0 .text            eventStart__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::eventStart() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/eventStart__10daSyRock_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D04000-80D04004 000070 0004+00 4/5 0/0 0/0 .rodata          @4014 */
SECTION_RODATA static f32 const lit_4014 = 1.0f;
COMPILER_STRIP_GATE(0x80D04000, &lit_4014);

/* 80D04004-80D04008 000074 0004+00 2/3 0/0 0/0 .rodata          @4015 */
SECTION_RODATA static f32 const lit_4015 = -1.0f;
COMPILER_STRIP_GATE(0x80D04004, &lit_4015);

/* 80D02FB8-80D03070 000DF8 00B8+00 1/1 0/0 0/0 .text            init_modeDropInit__10daSyRock_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::init_modeDropInit() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/init_modeDropInit__10daSyRock_cFv.s"
}
#pragma pop

/* 80D03070-80D030A8 000EB0 0038+00 1/0 0/0 0/0 .text            modeDropInit__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::modeDropInit() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/modeDropInit__10daSyRock_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D04008-80D04010 000078 0008+00 0/1 0/0 0/0 .rodata          @4078 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4078[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D04008, &lit_4078);
#pragma pop

/* 80D04010-80D04018 000080 0008+00 0/1 0/0 0/0 .rodata          @4079 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4079[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D04010, &lit_4079);
#pragma pop

/* 80D04018-80D04020 000088 0008+00 0/1 0/0 0/0 .rodata          @4080 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4080[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D04018, &lit_4080);
#pragma pop

/* 80D030A8-80D03250 000EE8 01A8+00 3/3 0/0 0/0 .text searchWaterPillar__10daSyRock_cFPvPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::searchWaterPillar(void* param_0, void* param_1) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/searchWaterPillar__10daSyRock_cFPvPv.s"
}
#pragma pop

/* 80D03250-80D03384 001090 0134+00 1/1 0/0 0/0 .text            init_modeDrop__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::init_modeDrop() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/init_modeDrop__10daSyRock_cFv.s"
}
#pragma pop

/* 80D03384-80D033D0 0011C4 004C+00 1/0 0/0 0/0 .text            modeDrop__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::modeDrop() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/modeDrop__10daSyRock_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D04020-80D04024 000090 0004+00 1/3 0/0 0/0 .rodata          @4138 */
SECTION_RODATA static f32 const lit_4138 = -15.0f;
COMPILER_STRIP_GATE(0x80D04020, &lit_4138);

/* 80D04024-80D04028 000094 0004+00 1/2 0/0 0/0 .rodata          @4139 */
SECTION_RODATA static f32 const lit_4139 = 13.0f;
COMPILER_STRIP_GATE(0x80D04024, &lit_4139);

/* 80D033D0-80D03440 001210 0070+00 1/1 0/0 0/0 .text            init_modeSink__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::init_modeSink() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/init_modeSink__10daSyRock_cFv.s"
}
#pragma pop

/* 80D03440-80D034E8 001280 00A8+00 1/0 0/0 0/0 .text            modeSink__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::modeSink() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/modeSink__10daSyRock_cFv.s"
}
#pragma pop

/* 80D034E8-80D035F8 001328 0110+00 1/1 0/0 0/0 .text            init_modeMove__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::init_modeMove() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/init_modeMove__10daSyRock_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D04028-80D0402C 000098 0004+00 1/2 0/0 0/0 .rodata          @4197 */
SECTION_RODATA static f32 const lit_4197 = 50.0f;
COMPILER_STRIP_GATE(0x80D04028, &lit_4197);

/* 80D035F8-80D036B8 001438 00C0+00 1/0 0/0 0/0 .text            modeMove__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::modeMove() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/modeMove__10daSyRock_cFv.s"
}
#pragma pop

/* 80D036B8-80D036DC 0014F8 0024+00 1/1 0/0 0/0 .text            chkWaterLineIn__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::chkWaterLineIn() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/chkWaterLineIn__10daSyRock_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D0402C-80D04030 00009C 0004+00 0/1 0/0 0/0 .rodata          @4275 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4275 = 5.0f / 3.0f;
COMPILER_STRIP_GATE(0x80D0402C, &lit_4275);
#pragma pop

/* 80D036DC-80D03984 00151C 02A8+00 2/2 0/0 0/0 .text            bgCheck__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::bgCheck() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/bgCheck__10daSyRock_cFv.s"
}
#pragma pop

/* 80D03984-80D03A48 0017C4 00C4+00 1/1 0/0 0/0 .text            init_modeDropEnd__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::init_modeDropEnd() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/init_modeDropEnd__10daSyRock_cFv.s"
}
#pragma pop

/* 80D03A48-80D03A4C 001888 0004+00 1/0 0/0 0/0 .text            modeDropEnd__10daSyRock_cFv */
void daSyRock_c::modeDropEnd() {
    /* empty function */
}

/* 80D03A4C-80D03B08 00188C 00BC+00 1/0 0/0 0/0 .text            Draw__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/Draw__10daSyRock_cFv.s"
}
#pragma pop

/* 80D03B08-80D03B70 001948 0068+00 1/0 0/0 0/0 .text            Delete__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daSyRock_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/Delete__10daSyRock_cFv.s"
}
#pragma pop

/* 80D03B70-80D03B9C 0019B0 002C+00 1/0 0/0 0/0 .text            daSyRock_Draw__FP10daSyRock_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daSyRock_Draw(daSyRock_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/daSyRock_Draw__FP10daSyRock_c.s"
}
#pragma pop

/* 80D03B9C-80D03BBC 0019DC 0020+00 1/0 0/0 0/0 .text            daSyRock_Execute__FP10daSyRock_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daSyRock_Execute(daSyRock_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/daSyRock_Execute__FP10daSyRock_c.s"
}
#pragma pop

/* 80D03BBC-80D03BDC 0019FC 0020+00 1/0 0/0 0/0 .text            daSyRock_Delete__FP10daSyRock_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daSyRock_Delete(daSyRock_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/daSyRock_Delete__FP10daSyRock_c.s"
}
#pragma pop

/* 80D03BDC-80D03BFC 001A1C 0020+00 1/0 0/0 0/0 .text            daSyRock_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daSyRock_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/daSyRock_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80D03BFC-80D03C44 001A3C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80D03C44-80D03CA0 001A84 005C+00 2/1 0/0 0/0 .text            __dt__14daSyRock_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daSyRock_HIO_c::~daSyRock_HIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/__dt__14daSyRock_HIO_cFv.s"
}
#pragma pop

/* 80D03CA0-80D03D10 001AE0 0070+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_syRock_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_obj_syRock_cpp() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/__sinit_d_a_obj_syRock_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80D03CA0, __sinit_d_a_obj_syRock_cpp);
#pragma pop

/* 80D03D10-80D03D18 001B50 0008+00 1/0 0/0 0/0 .text            @1448@eventStart__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D03D10() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/func_80D03D10.s"
}
#pragma pop

/* 80D03D18-80D03D20 001B58 0008+00 1/0 0/0 0/0 .text            @1448@__dt__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D03D18() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/func_80D03D18.s"
}
#pragma pop

/* 80D03D20-80D03D28 001B60 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D03D20() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/func_80D03D20.s"
}
#pragma pop

/* 80D03D28-80D03D30 001B68 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D03D28() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/func_80D03D28.s"
}
#pragma pop

/* 80D03D30-80D03D78 001B70 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" asm void __dt__17dEvLib_callback_cFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/__dt__17dEvLib_callback_cFv.s"
}
#pragma pop

/* 80D03D78-80D03D80 001BB8 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80D03D80-80D03D88 001BC0 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80D03D88-80D03D90 001BC8 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80D03D90-80D03DAC 001BD0 001C+00 1/1 0/0 0/0 .text            getPos__12daWtPillar_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daWtPillar_c::getPos() {
extern "C" asm void getPos__12daWtPillar_cFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/getPos__12daWtPillar_cFv.s"
}
#pragma pop

/* 80D03DAC-80D03F7C 001BEC 01D0+00 2/1 0/0 0/0 .text            __dt__10daSyRock_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daSyRock_c::~daSyRock_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_syRock/d_a_obj_syRock/__dt__10daSyRock_cFv.s"
}
#pragma pop

/* 80D04030-80D04030 0000A0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

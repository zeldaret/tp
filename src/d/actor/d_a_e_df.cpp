/**
 * @file d_a_e_df.cpp
 * 
*/

#include "d/actor/d_a_e_df.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_DF_HIO_cFv();
extern "C" void CreateHeap__8daE_DF_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void initCcCylinder__8daE_DF_cFv();
extern "C" void setCcCylinder__8daE_DF_cFv();
extern "C" void SetAnm__8daE_DF_cFiiff();
extern "C" void CameraSet__8daE_DF_cFf();
extern "C" void DemoStart__8daE_DF_cFv();
extern "C" void SetReleaseCam__8daE_DF_cFv();
extern "C" void ctrlJoint__8daE_DF_cFP8J3DJointP8J3DModel();
extern "C" static void JointCallBack__FP8J3DJointi();
extern "C" static void s_obj_sub__FPvPv();
extern "C" void Link_Eat_Pos__8daE_DF_cFv();
extern "C" void Set_Angle__8daE_DF_cFP4cXyz();
extern "C" void Obj_Damage__8daE_DF_cFv();
extern "C" void DamageAction__8daE_DF_cFv();
extern "C" void BombEatAction__8daE_DF_cFv();
extern "C" void Spid_Out__8daE_DF_cFv();
extern "C" void LinkEatAction__8daE_DF_cFv();
extern "C" void Mogu_Mogu__8daE_DF_cFv();
extern "C" void ObjEatAction__8daE_DF_cFv();
extern "C" void EatAction__8daE_DF_cFv();
extern "C" void SearchAction__8daE_DF_cFv();
extern "C" void WaitAction__8daE_DF_cFv();
extern "C" void MissAction__8daE_DF_cFv();
extern "C" void Action__8daE_DF_cFv();
extern "C" void Execute__8daE_DF_cFv();
extern "C" void Yazirushi__8daE_DF_cFv();
extern "C" void Draw__8daE_DF_cFv();
extern "C" void Delete__8daE_DF_cFv();
extern "C" void setBaseMtx__8daE_DF_cFv();
extern "C" static void daE_DF_Draw__FP8daE_DF_c();
extern "C" static void daE_DF_Execute__FP8daE_DF_c();
extern "C" static bool daE_DF_IsDelete__FP8daE_DF_c();
extern "C" static void daE_DF_Delete__FP8daE_DF_c();
extern "C" void Create__8daE_DF_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static void daE_DF_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_DF_HIO_cFv();
extern "C" void __sinit_d_a_e_df_cpp();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" extern char const* const d_a_e_df__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void dCam_getBody__Fv();
extern "C" void Eye__9dCamera_cFv();
extern "C" void Center__9dCamera_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_19();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_25();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806A9F30-806A9F34 000000 0004+00 11/11 0/0 0/0 .rodata          @3916 */
SECTION_RODATA static f32 const lit_3916 = 100.0f;
COMPILER_STRIP_GATE(0x806A9F30, &lit_3916);

/* 806A9F34-806A9F38 000004 0004+00 2/12 0/0 0/0 .rodata          @3917 */
SECTION_RODATA static u8 const lit_3917[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806A9F34, &lit_3917);

/* 806AA004-806AA010 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806AA010-806AA024 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 806AA024-806AA02C 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3795 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 806AA02C-806AA034 000028 0008+00 0/1 0/0 0/0 .data            e_env$3796 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 806AA034-806AA03C 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3804 */
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

/* 806AA03C-806AA05C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_DF_Method */
static actor_method_class l_daE_DF_Method = {
    (process_method_func)daE_DF_Create__FP10fopAc_ac_c,
    (process_method_func)daE_DF_Delete__FP8daE_DF_c,
    (process_method_func)daE_DF_Execute__FP8daE_DF_c,
    (process_method_func)daE_DF_IsDelete__FP8daE_DF_c,
    (process_method_func)daE_DF_Draw__FP8daE_DF_c,
};

/* 806AA05C-806AA08C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_DF */
extern actor_process_profile_definition g_profile_E_DF = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_DF,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_DF_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  130,                    // mPriority
  &l_daE_DF_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806AA08C-806AA098 000088 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806AA098-806AA0A4 000094 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806AA0A4-806AA0B0 0000A0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 806AA0B0-806AA0BC 0000AC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806AA0BC-806AA0C8 0000B8 000C+00 2/2 0/0 0/0 .data            __vt__12daE_DF_HIO_c */
SECTION_DATA extern void* __vt__12daE_DF_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_DF_HIO_cFv,
};

/* 806A76EC-806A7710 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__12daE_DF_HIO_cFv */
daE_DF_HIO_c::daE_DF_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A9F38-806A9F40 000008 0004+04 2/10 0/0 0/0 .rodata          @3918 */
SECTION_RODATA static f32 const lit_3918[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806A9F38, &lit_3918);

/* 806A9FFC-806A9FFC 0000CC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806A9FFC = "E_DF";
#pragma pop

/* 806A7710-806A7808 000110 00F8+00 1/1 0/0 0/0 .text            CreateHeap__8daE_DF_cFv */
void daE_DF_c::CreateHeap() {
    // NONMATCHING
}

/* 806A7808-806A7828 000208 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A9F40-806A9F48 000010 0008+00 0/3 0/0 0/0 .rodata          @3919 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3919[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806A9F40, &lit_3919);
#pragma pop

/* 806A9F48-806A9F50 000018 0008+00 0/3 0/0 0/0 .rodata          @3920 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3920[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806A9F48, &lit_3920);
#pragma pop

/* 806A9F50-806A9F58 000020 0008+00 0/3 0/0 0/0 .rodata          @3921 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3921[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806A9F50, &lit_3921);
#pragma pop

/* 806A9F58-806A9F5C 000028 0004+00 0/1 0/0 0/0 .rodata          @3922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3922 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x806A9F58, &lit_3922);
#pragma pop

/* 806A9F5C-806A9FA0 00002C 0044+00 1/1 0/0 0/0 .rodata          ccCylSrc$3961 */
const static dCcD_SrcCyl ccCylSrc = {
    {
        {0x0, {{0x0, 0x0, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        150.0f, // mRadius
        158.0f // mHeight
    } // mCyl
};

/* 806A7828-806A78A0 000228 0078+00 1/1 0/0 0/0 .text            initCcCylinder__8daE_DF_cFv */
void daE_DF_c::initCcCylinder() {
    // NONMATCHING
}

/* 806A78A0-806A78D4 0002A0 0034+00 1/1 0/0 0/0 .text            setCcCylinder__8daE_DF_cFv */
void daE_DF_c::setCcCylinder() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A9FA0-806A9FA4 000070 0004+00 1/1 0/0 0/0 .rodata          @3977 */
SECTION_RODATA static f32 const lit_3977 = -1.0f;
COMPILER_STRIP_GATE(0x806A9FA0, &lit_3977);

/* 806A78D4-806A7980 0002D4 00AC+00 6/6 0/0 0/0 .text            SetAnm__8daE_DF_cFiiff */
void daE_DF_c::SetAnm(int param_0, int param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A9FA4-806A9FA8 000074 0004+00 0/1 0/0 0/0 .rodata          @4024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4024 = 600.0f;
COMPILER_STRIP_GATE(0x806A9FA4, &lit_4024);
#pragma pop

/* 806A9FA8-806A9FAC 000078 0004+00 1/5 0/0 0/0 .rodata          @4025 */
SECTION_RODATA static f32 const lit_4025 = 400.0f;
COMPILER_STRIP_GATE(0x806A9FA8, &lit_4025);

/* 806A7980-806A7B40 000380 01C0+00 2/2 0/0 0/0 .text            CameraSet__8daE_DF_cFf */
void daE_DF_c::CameraSet(f32 param_0) {
    // NONMATCHING
}

/* 806A7B40-806A7C3C 000540 00FC+00 2/2 0/0 0/0 .text            DemoStart__8daE_DF_cFv */
void daE_DF_c::DemoStart() {
    // NONMATCHING
}

/* 806A7C3C-806A7CE0 00063C 00A4+00 2/2 0/0 0/0 .text            SetReleaseCam__8daE_DF_cFv */
void daE_DF_c::SetReleaseCam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A9FAC-806A9FB0 00007C 0004+00 1/1 0/0 0/0 .rodata          @4096 */
SECTION_RODATA static f32 const lit_4096 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x806A9FAC, &lit_4096);

/* 806A9FB0-806A9FB8 000080 0008+00 2/2 0/0 0/0 .rodata          @4098 */
SECTION_RODATA static u8 const lit_4098[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806A9FB0, &lit_4098);

/* 806A7CE0-806A7E30 0006E0 0150+00 1/1 0/0 0/0 .text ctrlJoint__8daE_DF_cFP8J3DJointP8J3DModel */
void daE_DF_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 806A7E30-806A7E7C 000830 004C+00 1/1 0/0 0/0 .text            JointCallBack__FP8J3DJointi */
static void JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A9FB8-806A9FBC 000088 0004+00 0/1 0/0 0/0 .rodata          @4163 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4163 = 300.0f;
COMPILER_STRIP_GATE(0x806A9FB8, &lit_4163);
#pragma pop

/* 806A9FBC-806A9FC0 00008C 0004+00 0/1 0/0 0/0 .rodata          @4164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4164 = -10.0f;
COMPILER_STRIP_GATE(0x806A9FBC, &lit_4164);
#pragma pop

/* 806A9FC0-806A9FC4 000090 0004+00 0/1 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165 = 170.0f;
COMPILER_STRIP_GATE(0x806A9FC0, &lit_4165);
#pragma pop

/* 806A9FC4-806A9FC8 000094 0004+00 0/1 0/0 0/0 .rodata          @4166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4166 = 320.0f;
COMPILER_STRIP_GATE(0x806A9FC4, &lit_4166);
#pragma pop

/* 806A7E7C-806A8030 00087C 01B4+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void s_obj_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 806A8030-806A8098 000A30 0068+00 1/1 0/0 0/0 .text            Link_Eat_Pos__8daE_DF_cFv */
void daE_DF_c::Link_Eat_Pos() {
    // NONMATCHING
}

/* 806A8098-806A816C 000A98 00D4+00 1/1 0/0 0/0 .text            Set_Angle__8daE_DF_cFP4cXyz */
void daE_DF_c::Set_Angle(cXyz* param_0) {
    // NONMATCHING
}

/* 806A816C-806A8244 000B6C 00D8+00 1/1 0/0 0/0 .text            Obj_Damage__8daE_DF_cFv */
void daE_DF_c::Obj_Damage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A9FC8-806A9FCC 000098 0004+00 1/6 0/0 0/0 .rodata          @4238 */
SECTION_RODATA static f32 const lit_4238 = 5.0f;
COMPILER_STRIP_GATE(0x806A9FC8, &lit_4238);

/* 806A8244-806A8368 000C44 0124+00 1/1 0/0 0/0 .text            DamageAction__8daE_DF_cFv */
void daE_DF_c::DamageAction() {
    // NONMATCHING
}

/* 806A8368-806A8790 000D68 0428+00 1/1 0/0 0/0 .text            BombEatAction__8daE_DF_cFv */
void daE_DF_c::BombEatAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A9FCC-806A9FD0 00009C 0004+00 0/1 0/0 0/0 .rodata          @4370 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4370 = 24.0f;
COMPILER_STRIP_GATE(0x806A9FCC, &lit_4370);
#pragma pop

/* 806A9FD0-806A9FD4 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4371 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4371 = 25.0f;
COMPILER_STRIP_GATE(0x806A9FD0, &lit_4371);
#pragma pop

/* 806A9FD4-806A9FD8 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4372 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4372 = 60.0f;
COMPILER_STRIP_GATE(0x806A9FD4, &lit_4372);
#pragma pop

/* 806A9FD8-806A9FDC 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4373 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4373 = 2.0f;
COMPILER_STRIP_GATE(0x806A9FD8, &lit_4373);
#pragma pop

/* 806A9FDC-806A9FE0 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4374 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4374 = 15.0f;
COMPILER_STRIP_GATE(0x806A9FDC, &lit_4374);
#pragma pop

/* 806A8790-806A8938 001190 01A8+00 1/1 0/0 0/0 .text            Spid_Out__8daE_DF_cFv */
void daE_DF_c::Spid_Out() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A9FE0-806A9FE4 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4444 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4444 = 4000.0f;
COMPILER_STRIP_GATE(0x806A9FE0, &lit_4444);
#pragma pop

/* 806A9FE4-806A9FE8 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4445 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4445 = 10.0f;
COMPILER_STRIP_GATE(0x806A9FE4, &lit_4445);
#pragma pop

/* 806A8938-806A8C80 001338 0348+00 1/1 0/0 0/0 .text            LinkEatAction__8daE_DF_cFv */
void daE_DF_c::LinkEatAction() {
    // NONMATCHING
}

/* 806A8C80-806A8D98 001680 0118+00 3/3 0/0 0/0 .text            Mogu_Mogu__8daE_DF_cFv */
void daE_DF_c::Mogu_Mogu() {
    // NONMATCHING
}

/* 806A8D98-806A8ED4 001798 013C+00 1/1 0/0 0/0 .text            ObjEatAction__8daE_DF_cFv */
void daE_DF_c::ObjEatAction() {
    // NONMATCHING
}

/* 806A8ED4-806A8F2C 0018D4 0058+00 1/1 0/0 0/0 .text            EatAction__8daE_DF_cFv */
void daE_DF_c::EatAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A9FE8-806A9FEC 0000B8 0004+00 0/2 0/0 0/0 .rodata          @4566 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4566 = 200.0f;
COMPILER_STRIP_GATE(0x806A9FE8, &lit_4566);
#pragma pop

/* 806A8F2C-806A91B4 00192C 0288+00 1/1 0/0 0/0 .text            SearchAction__8daE_DF_cFv */
void daE_DF_c::SearchAction() {
    // NONMATCHING
}

/* 806A91B4-806A9254 001BB4 00A0+00 1/1 0/0 0/0 .text            WaitAction__8daE_DF_cFv */
void daE_DF_c::WaitAction() {
    // NONMATCHING
}

/* 806A9254-806A9304 001C54 00B0+00 1/1 0/0 0/0 .text            MissAction__8daE_DF_cFv */
void daE_DF_c::MissAction() {
    // NONMATCHING
}

/* 806A9304-806A9384 001D04 0080+00 1/1 0/0 0/0 .text            Action__8daE_DF_cFv */
void daE_DF_c::Action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A9FEC-806A9FF0 0000BC 0004+00 1/1 0/0 0/0 .rodata          @4621 */
SECTION_RODATA static f32 const lit_4621 = 1.5f;
COMPILER_STRIP_GATE(0x806A9FEC, &lit_4621);

/* 806A9FF0-806A9FF4 0000C0 0004+00 1/1 0/0 0/0 .rodata          @4622 */
SECTION_RODATA static f32 const lit_4622 = 38.0f;
COMPILER_STRIP_GATE(0x806A9FF0, &lit_4622);

/* 806A9384-806A949C 001D84 0118+00 1/1 0/0 0/0 .text            Execute__8daE_DF_cFv */
void daE_DF_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A9FF4-806A9FF8 0000C4 0004+00 1/1 0/0 0/0 .rodata          @4627 */
SECTION_RODATA static f32 const lit_4627 = 80.0f;
COMPILER_STRIP_GATE(0x806A9FF4, &lit_4627);

/* 806A949C-806A94E0 001E9C 0044+00 1/1 0/0 0/0 .text            Yazirushi__8daE_DF_cFv */
void daE_DF_c::Yazirushi() {
    // NONMATCHING
}

/* 806A94E0-806A9550 001EE0 0070+00 1/1 0/0 0/0 .text            Draw__8daE_DF_cFv */
void daE_DF_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806AA0D0-806AA0D4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_806AA0D0[4];

/* 806A9550-806A95B8 001F50 0068+00 1/1 0/0 0/0 .text            Delete__8daE_DF_cFv */
void daE_DF_c::Delete() {
    // NONMATCHING
}

/* 806A95B8-806A9610 001FB8 0058+00 1/1 0/0 0/0 .text            setBaseMtx__8daE_DF_cFv */
void daE_DF_c::setBaseMtx() {
    // NONMATCHING
}

/* 806A9610-806A9630 002010 0020+00 1/0 0/0 0/0 .text            daE_DF_Draw__FP8daE_DF_c */
static void daE_DF_Draw(daE_DF_c* param_0) {
    // NONMATCHING
}

/* 806A9630-806A9650 002030 0020+00 2/1 0/0 0/0 .text            daE_DF_Execute__FP8daE_DF_c */
static void daE_DF_Execute(daE_DF_c* param_0) {
    // NONMATCHING
}

/* 806A9650-806A9658 002050 0008+00 1/0 0/0 0/0 .text            daE_DF_IsDelete__FP8daE_DF_c */
static bool daE_DF_IsDelete(daE_DF_c* param_0) {
    return true;
}

/* 806A9658-806A9678 002058 0020+00 1/0 0/0 0/0 .text            daE_DF_Delete__FP8daE_DF_c */
static void daE_DF_Delete(daE_DF_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806A9FF8-806A9FFC 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4811 = -200.0f;
COMPILER_STRIP_GATE(0x806A9FF8, &lit_4811);
#pragma pop

/* 806AA0D4-806AA0E0 00000C 000C+00 1/1 0/0 0/0 .bss             @3932 */
static u8 lit_3932[12];

/* 806AA0E0-806AA0EC 000018 000C+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 806A9678-806A9930 002078 02B8+00 1/1 0/0 0/0 .text            Create__8daE_DF_cFv */
void daE_DF_c::Create() {
    // NONMATCHING
}

/* 806A9930-806A9978 002330 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 806A9978-806A99C0 002378 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806A99C0-806A9A1C 0023C0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806A9A1C-806A9A3C 00241C 0020+00 1/0 0/0 0/0 .text            daE_DF_Create__FP10fopAc_ac_c */
static void daE_DF_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806A9A3C-806A9A84 00243C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 806A9A84-806A9ACC 002484 0048+00 2/1 0/0 0/0 .text            __dt__12daE_DF_HIO_cFv */
daE_DF_HIO_c::~daE_DF_HIO_c() {
    // NONMATCHING
}

/* 806A9ACC-806A9B08 0024CC 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_df_cpp */
void __sinit_d_a_e_df_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806A9ACC, __sinit_d_a_e_df_cpp);
#pragma pop

/* 806A9B08-806A9F1C 002508 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
static void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    // NONMATCHING
}

/* 806A9FFC-806A9FFC 0000CC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

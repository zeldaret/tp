/**
 * @file d_a_obj_riverrock.cpp
 * 
*/

#include "d/actor/d_a_obj_riverrock.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__20daObjRIVERROCK_HIO_cFv();
extern "C" void initCcCylinder__16daObjRIVERROCK_cFv();
extern "C" void SetCcCyl__16daObjRIVERROCK_cFv();
extern "C" static void daObjRIVERROCK_Create__FP10fopAc_ac_c();
extern "C" static void daObjRIVERROCK_Delete__FP16daObjRIVERROCK_c();
extern "C" void BreakWaitAction__16daObjRIVERROCK_cFv();
extern "C" void CheckBG__16daObjRIVERROCK_cFv();
extern "C" void BreakMoveAction__16daObjRIVERROCK_cFv();
extern "C" void BrokenAction__16daObjRIVERROCK_cFv();
extern "C" void BreakAction__16daObjRIVERROCK_cFv();
extern "C" void Action__16daObjRIVERROCK_cFv();
extern "C" void BreakSet__16daObjRIVERROCK_cFv();
extern "C" void WaitAction__16daObjRIVERROCK_cFv();
extern "C" void setBaseMtx__16daObjRIVERROCK_cFv();
extern "C" static void daObjRIVERROCK_Draw__FP16daObjRIVERROCK_c();
extern "C" static void daObjRIVERROCK_Execute__FP16daObjRIVERROCK_c();
extern "C" void CreateHeap__16daObjRIVERROCK_cFv();
extern "C" void create__16daObjRIVERROCK_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" static bool daObjRIVERROCK_IsDelete__FP16daObjRIVERROCK_c();
extern "C" void Create__16daObjRIVERROCK_cFv();
extern "C" void Execute__16daObjRIVERROCK_cFPPA3_A4_f();
extern "C" void Draw__16daObjRIVERROCK_cFv();
extern "C" void Delete__16daObjRIVERROCK_cFv();
extern "C" void __dt__20daObjRIVERROCK_HIO_cFv();
extern "C" void __sinit_d_a_obj_riverrock_cpp();
extern "C" extern char const* const d_a_obj_riverrock__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_setupStageTexture__FP12J3DModelData();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GetSpecialCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __dl__FPv();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
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

//
// Declarations:
//

/* ############################################################################################## */
/* 80CBDA5C-80CBDA60 000000 0004+00 6/6 0/0 0/0 .rodata          @3631 */
SECTION_RODATA static u8 const lit_3631[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CBDA5C, &lit_3631);

/* 80CBDB14-80CBDB14 0000B8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CBDB14 = "RiverRock";
#pragma pop

/* 80CBDB40-80CBDB44 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_riverrock__stringBase0;

/* 80CBDB44-80CBDB64 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjRIVERROCK_Method */
static actor_method_class l_daObjRIVERROCK_Method = {
    (process_method_func)daObjRIVERROCK_Create__FP10fopAc_ac_c,
    (process_method_func)daObjRIVERROCK_Delete__FP16daObjRIVERROCK_c,
    (process_method_func)daObjRIVERROCK_Execute__FP16daObjRIVERROCK_c,
    (process_method_func)daObjRIVERROCK_IsDelete__FP16daObjRIVERROCK_c,
    (process_method_func)daObjRIVERROCK_Draw__FP16daObjRIVERROCK_c,
};

/* 80CBDB64-80CBDB94 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_RIVERROCK */
extern actor_process_profile_definition g_profile_Obj_RIVERROCK = {
  fpcLy_CURRENT_e,          // mLayerID
  3,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_RIVERROCK,       // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daObjRIVERROCK_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  472,                      // mPriority
  &l_daObjRIVERROCK_Method, // sub_method
  0x00040100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80CBDB94-80CBDBA0 000054 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80CBDBA0-80CBDBAC 000060 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CBDBAC-80CBDBD4 00006C 0028+00 1/1 0/0 0/0 .data            __vt__16daObjRIVERROCK_c */
SECTION_DATA extern void* __vt__16daObjRIVERROCK_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__16daObjRIVERROCK_cFv,
    (void*)Create__16daObjRIVERROCK_cFv,
    (void*)Execute__16daObjRIVERROCK_cFPPA3_A4_f,
    (void*)Draw__16daObjRIVERROCK_cFv,
    (void*)Delete__16daObjRIVERROCK_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80CBDBD4-80CBDBE0 000094 000C+00 2/2 0/0 0/0 .data            __vt__20daObjRIVERROCK_HIO_c */
SECTION_DATA extern void* __vt__20daObjRIVERROCK_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__20daObjRIVERROCK_HIO_cFv,
};

/* 80CBC6CC-80CBC6F4 0000EC 0028+00 1/1 0/0 0/0 .text            __ct__20daObjRIVERROCK_HIO_cFv */
daObjRIVERROCK_HIO_c::daObjRIVERROCK_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CBDA60-80CBDAA4 000004 0044+00 1/1 0/0 0/0 .rodata          ccCylSrc$3635 */
const static dCcD_SrcCyl ccCylSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x20, 0x11}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, -500.0f, 0.0f}, // mCenter
        1000.0f, // mRadius
        1000.0f // mHeight
    } // mCyl
};

/* 80CBC6F4-80CBC754 000114 0060+00 1/1 0/0 0/0 .text initCcCylinder__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::initCcCylinder() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CBDAA4-80CBDAAC 000048 0004+04 1/3 0/0 0/0 .rodata          @3642 */
SECTION_RODATA static f32 const lit_3642[1 + 1 /* padding */] = {
    1000.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80CBDAA4, &lit_3642);

/* 80CBC754-80CBC7B4 000174 0060+00 1/1 0/0 0/0 .text            SetCcCyl__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::SetCcCyl() {
    // NONMATCHING
}

/* 80CBC7B4-80CBC7D4 0001D4 0020+00 1/0 0/0 0/0 .text daObjRIVERROCK_Create__FP10fopAc_ac_c */
static void daObjRIVERROCK_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CBC7D4-80CBC7F8 0001F4 0024+00 1/0 0/0 0/0 .text daObjRIVERROCK_Delete__FP16daObjRIVERROCK_c
 */
static void daObjRIVERROCK_Delete(daObjRIVERROCK_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CBDAAC-80CBDAB4 000050 0008+00 2/3 0/0 0/0 .rodata          @3669 */
SECTION_RODATA static u8 const lit_3669[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CBDAAC, &lit_3669);

/* 80CBC7F8-80CBC8BC 000218 00C4+00 1/1 0/0 0/0 .text BreakWaitAction__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::BreakWaitAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CBDAB4-80CBDAB8 000058 0004+00 0/1 0/0 0/0 .rodata          @3742 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3742 = 700.0f;
COMPILER_STRIP_GATE(0x80CBDAB4, &lit_3742);
#pragma pop

/* 80CBDAB8-80CBDABC 00005C 0004+00 0/1 0/0 0/0 .rodata          @3743 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3743 = 5650.0f;
COMPILER_STRIP_GATE(0x80CBDAB8, &lit_3743);
#pragma pop

/* 80CBDABC-80CBDAC0 000060 0004+00 0/1 0/0 0/0 .rodata          @3744 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3744 = 2850.0f;
COMPILER_STRIP_GATE(0x80CBDABC, &lit_3744);
#pragma pop

/* 80CBDAC0-80CBDAC4 000064 0004+00 0/1 0/0 0/0 .rodata          @3745 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3745 = 300.0f;
COMPILER_STRIP_GATE(0x80CBDAC0, &lit_3745);
#pragma pop

/* 80CBDAC4-80CBDAC8 000068 0004+00 0/1 0/0 0/0 .rodata          @3746 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3746 = -300.0f;
COMPILER_STRIP_GATE(0x80CBDAC4, &lit_3746);
#pragma pop

/* 80CBDAC8-80CBDACC 00006C 0004+00 0/3 0/0 0/0 .rodata          @3747 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3747 = 1.0f;
COMPILER_STRIP_GATE(0x80CBDAC8, &lit_3747);
#pragma pop

/* 80CBDACC-80CBDAD0 000070 0004+00 0/2 0/0 0/0 .rodata          @3748 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3748 = -1.0f;
COMPILER_STRIP_GATE(0x80CBDACC, &lit_3748);
#pragma pop

/* 80CBDAD0-80CBDAD4 000074 0004+00 0/1 0/0 0/0 .rodata          @3749 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3749 = 3.0f;
COMPILER_STRIP_GATE(0x80CBDAD0, &lit_3749);
#pragma pop

/* 80CBC8BC-80CBCC3C 0002DC 0380+00 1/1 0/0 0/0 .text            CheckBG__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::CheckBG() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CBDAD4-80CBDAD8 000078 0004+00 1/1 0/0 0/0 .rodata          @3758 */
SECTION_RODATA static f32 const lit_3758 = 3628.0f;
COMPILER_STRIP_GATE(0x80CBDAD4, &lit_3758);

/* 80CBDBE8-80CBDBEC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80CBDBE8[4];

/* 80CBDBEC-80CBDBF8 00000C 000C+00 1/1 0/0 0/0 .bss             @3626 */
static u8 lit_3626[12];

/* 80CBDBF8-80CBDC08 000018 0010+00 4/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80CBCC3C-80CBCCC0 00065C 0084+00 1/1 0/0 0/0 .text BreakMoveAction__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::BreakMoveAction() {
    // NONMATCHING
}

/* 80CBCCC0-80CBCD94 0006E0 00D4+00 1/1 0/0 0/0 .text            BrokenAction__16daObjRIVERROCK_cFv
 */
void daObjRIVERROCK_c::BrokenAction() {
    // NONMATCHING
}

/* 80CBCD94-80CBCDE8 0007B4 0054+00 1/1 0/0 0/0 .text            BreakAction__16daObjRIVERROCK_cFv
 */
void daObjRIVERROCK_c::BreakAction() {
    // NONMATCHING
}

/* 80CBCDE8-80CBCE2C 000808 0044+00 1/1 0/0 0/0 .text            Action__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::Action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CBDAD8-80CBDADC 00007C 0004+00 0/1 0/0 0/0 .rodata          @3861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3861 = 200.0f;
COMPILER_STRIP_GATE(0x80CBDAD8, &lit_3861);
#pragma pop

/* 80CBDADC-80CBDAE0 000080 0004+00 0/1 0/0 0/0 .rodata          @3862 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3862 = 280.0f;
COMPILER_STRIP_GATE(0x80CBDADC, &lit_3862);
#pragma pop

/* 80CBCE2C-80CBD1C4 00084C 0398+00 3/3 0/0 0/0 .text            BreakSet__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::BreakSet() {
    // NONMATCHING
}

/* 80CBD1C4-80CBD204 000BE4 0040+00 1/1 0/0 0/0 .text            WaitAction__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::WaitAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CBDAE0-80CBDAE4 000084 0004+00 0/1 0/0 0/0 .rodata          @3895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3895 = 150.0f;
COMPILER_STRIP_GATE(0x80CBDAE0, &lit_3895);
#pragma pop

/* 80CBDAE4-80CBDAE8 000088 0004+00 0/1 0/0 0/0 .rodata          @3896 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3896 = -150.0f;
COMPILER_STRIP_GATE(0x80CBDAE4, &lit_3896);
#pragma pop

/* 80CBD204-80CBD2FC 000C24 00F8+00 1/1 0/0 0/0 .text            setBaseMtx__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::setBaseMtx() {
    // NONMATCHING
}

/* 80CBD2FC-80CBD328 000D1C 002C+00 1/0 0/0 0/0 .text daObjRIVERROCK_Draw__FP16daObjRIVERROCK_c */
static void daObjRIVERROCK_Draw(daObjRIVERROCK_c* param_0) {
    // NONMATCHING
}

/* 80CBD328-80CBD348 000D48 0020+00 2/1 0/0 0/0 .text daObjRIVERROCK_Execute__FP16daObjRIVERROCK_c
 */
static void daObjRIVERROCK_Execute(daObjRIVERROCK_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CBDB14-80CBDB14 0000B8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CBDB1E = "M_RiverRock.bmd";
#pragma pop

/* 80CBD348-80CBD3C0 000D68 0078+00 1/0 0/0 0/0 .text            CreateHeap__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CBDAE8-80CBDAEC 00008C 0004+00 0/1 0/0 0/0 .rodata          @4026 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4026 = -9.0f;
COMPILER_STRIP_GATE(0x80CBDAE8, &lit_4026);
#pragma pop

/* 80CBDAEC-80CBDAF0 000090 0004+00 0/1 0/0 0/0 .rodata          @4027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4027 = 0.5f;
COMPILER_STRIP_GATE(0x80CBDAEC, &lit_4027);
#pragma pop

/* 80CBDAF0-80CBDAF4 000094 0004+00 0/1 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CBDAF0, &lit_4028);
#pragma pop

/* 80CBDAF4-80CBDAF8 000098 0004+00 0/1 0/0 0/0 .rodata          @4029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4029 = 2800.0f;
COMPILER_STRIP_GATE(0x80CBDAF4, &lit_4029);
#pragma pop

/* 80CBDAF8-80CBDAFC 00009C 0004+00 0/1 0/0 0/0 .rodata          @4030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4030 = 6000.0f;
COMPILER_STRIP_GATE(0x80CBDAF8, &lit_4030);
#pragma pop

/* 80CBDAFC-80CBDB00 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = -6000.0f;
COMPILER_STRIP_GATE(0x80CBDAFC, &lit_4031);
#pragma pop

/* 80CBDB00-80CBDB04 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4032 = -500.0f;
COMPILER_STRIP_GATE(0x80CBDB00, &lit_4032);
#pragma pop

/* 80CBDB04-80CBDB0C 0000A8 0008+00 0/1 0/0 0/0 .rodata          @4034 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4034[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CBDB04, &lit_4034);
#pragma pop

/* 80CBDB14-80CBDB14 0000B8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CBDB2E = "M_RiverRock.dzb";
#pragma pop

/* 80CBD3C0-80CBD71C 000DE0 035C+00 1/1 0/0 0/0 .text            create__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::create() {
    // NONMATCHING
}

/* 80CBD71C-80CBD764 00113C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80CBD764-80CBD7AC 001184 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80CBD7AC-80CBD7B4 0011CC 0008+00 1/0 0/0 0/0 .text
 * daObjRIVERROCK_IsDelete__FP16daObjRIVERROCK_c                */
static bool daObjRIVERROCK_IsDelete(daObjRIVERROCK_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80CBDB0C-80CBDB10 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4119 = -1000.0f;
COMPILER_STRIP_GATE(0x80CBDB0C, &lit_4119);
#pragma pop

/* 80CBDB10-80CBDB14 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4120 = 500.0f;
COMPILER_STRIP_GATE(0x80CBDB10, &lit_4120);
#pragma pop

/* 80CBD7B4-80CBD814 0011D4 0060+00 1/0 0/0 0/0 .text            Create__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::Create() {
    // NONMATCHING
}

/* 80CBD814-80CBD8E0 001234 00CC+00 1/0 0/0 0/0 .text Execute__16daObjRIVERROCK_cFPPA3_A4_f */
void daObjRIVERROCK_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80CBD8E0-80CBD964 001300 0084+00 1/0 0/0 0/0 .text            Draw__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::Draw() {
    // NONMATCHING
}

/* 80CBD964-80CBD9C4 001384 0060+00 1/0 0/0 0/0 .text            Delete__16daObjRIVERROCK_cFv */
void daObjRIVERROCK_c::Delete() {
    // NONMATCHING
}

/* 80CBD9C4-80CBDA0C 0013E4 0048+00 2/1 0/0 0/0 .text            __dt__20daObjRIVERROCK_HIO_cFv */
daObjRIVERROCK_HIO_c::~daObjRIVERROCK_HIO_c() {
    // NONMATCHING
}

/* 80CBDA0C-80CBDA48 00142C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_riverrock_cpp */
void __sinit_d_a_obj_riverrock_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CBDA0C, __sinit_d_a_obj_riverrock_cpp);
#pragma pop

/* 80CBDB14-80CBDB14 0000B8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/**
 * @file d_a_obj_crvlh_up.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_crvlh_up.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daObjCRVLH_UP_Create__FP10fopAc_ac_c();
extern "C" static void daObjCRVLH_UP_Delete__FP15daObjCRVLH_UP_c();
extern "C" void HakaiSet__15daObjCRVLH_UP_cFv();
extern "C" void UpMotion__15daObjCRVLH_UP_cFv();
extern "C" void Hakai__15daObjCRVLH_UP_cFv();
extern "C" void setBaseMtx__15daObjCRVLH_UP_cFv();
extern "C" static void daObjCRVLH_UP_Draw__FP15daObjCRVLH_UP_c();
extern "C" static void daObjCRVLH_UP_Execute__FP15daObjCRVLH_UP_c();
extern "C" void CreateHeap__15daObjCRVLH_UP_cFv();
extern "C" void create__15daObjCRVLH_UP_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" static bool daObjCRVLH_UP_IsDelete__FP15daObjCRVLH_UP_c();
extern "C" void Create__15daObjCRVLH_UP_cFv();
extern "C" void Execute__15daObjCRVLH_UP_cFPPA3_A4_f();
extern "C" void Draw__15daObjCRVLH_UP_cFv();
extern "C" void Delete__15daObjCRVLH_UP_cFv();
extern "C" extern char const* const d_a_obj_crvlh_up__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_rndFX__Ff();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_24();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void HahenSet__15daObjCRVHAHEN_cF4cXyz4cXyz4cXyz4cXyzf();

//
// Declarations:
//

/* 80BD4ED8-80BD4EF8 000078 0020+00 1/0 0/0 0/0 .text daObjCRVLH_UP_Create__FP10fopAc_ac_c */
static void daObjCRVLH_UP_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BD4EF8-80BD4F1C 000098 0024+00 1/0 0/0 0/0 .text daObjCRVLH_UP_Delete__FP15daObjCRVLH_UP_c */
static void daObjCRVLH_UP_Delete(daObjCRVLH_UP_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD59FC-80BD5A00 000000 0004+00 6/6 0/0 0/0 .rodata          @3672 */
SECTION_RODATA static f32 const lit_3672 = 16000.0f;
COMPILER_STRIP_GATE(0x80BD59FC, &lit_3672);

/* 80BD5A64-80BD5A64 000068 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BD5A64 = "CrvLH_Up";
SECTION_DEAD static char const* const stringBase_80BD5A6D = "Release Error\n";
#pragma pop

/* 80BD4F1C-80BD4FB0 0000BC 0094+00 0/0 0/0 1/1 .text            HakaiSet__15daObjCRVLH_UP_cFv */
void daObjCRVLH_UP_c::HakaiSet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD5A00-80BD5A04 000004 0004+00 1/1 0/0 0/0 .rodata          @3681 */
SECTION_RODATA static f32 const lit_3681 = -120.0f;
COMPILER_STRIP_GATE(0x80BD5A00, &lit_3681);

/* 80BD5A04-80BD5A08 000008 0004+00 1/1 0/0 0/0 .rodata          @3682 */
SECTION_RODATA static f32 const lit_3682 = -5.0f;
COMPILER_STRIP_GATE(0x80BD5A04, &lit_3682);

/* 80BD4FB0-80BD4FD8 000150 0028+00 1/1 0/0 0/0 .text            UpMotion__15daObjCRVLH_UP_cFv */
void daObjCRVLH_UP_c::UpMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD5A08-80BD5A0C 00000C 0004+00 0/1 0/0 0/0 .rodata          @3723 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3723 = 1.0f;
COMPILER_STRIP_GATE(0x80BD5A08, &lit_3723);
#pragma pop

/* 80BD5A0C-80BD5A10 000010 0004+00 0/1 0/0 0/0 .rodata          @3724 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3724 = -1.0f;
COMPILER_STRIP_GATE(0x80BD5A0C, &lit_3724);
#pragma pop

/* 80BD5A10-80BD5A14 000014 0004+00 0/4 0/0 0/0 .rodata          @3725 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3725[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BD5A10, &lit_3725);
#pragma pop

/* 80BD5A14-80BD5A18 000018 0004+00 0/2 0/0 0/0 .rodata          @3726 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3726 = 150.0f;
COMPILER_STRIP_GATE(0x80BD5A14, &lit_3726);
#pragma pop

/* 80BD5A18-80BD5A1C 00001C 0004+00 0/1 0/0 0/0 .rodata          @3727 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3727 = 350.0f;
COMPILER_STRIP_GATE(0x80BD5A18, &lit_3727);
#pragma pop

/* 80BD5A1C-80BD5A24 000020 0004+04 0/1 0/0 0/0 .rodata          @3728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3728[1 + 1 /* padding */] = {
    148.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80BD5A1C, &lit_3728);
#pragma pop

/* 80BD5A24-80BD5A2C 000028 0008+00 0/1 0/0 0/0 .rodata          @3730 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3730[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BD5A24, &lit_3730);
#pragma pop

/* 80BD4FD8-80BD5254 000178 027C+00 1/1 0/0 0/0 .text            Hakai__15daObjCRVLH_UP_cFv */
void daObjCRVLH_UP_c::Hakai() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD5A2C-80BD5A30 000030 0004+00 0/1 0/0 0/0 .rodata          @3769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3769 = -150.0f;
COMPILER_STRIP_GATE(0x80BD5A2C, &lit_3769);
#pragma pop

/* 80BD5254-80BD532C 0003F4 00D8+00 1/1 0/0 0/0 .text            setBaseMtx__15daObjCRVLH_UP_cFv */
void daObjCRVLH_UP_c::setBaseMtx() {
    // NONMATCHING
}

/* 80BD532C-80BD5358 0004CC 002C+00 1/0 0/0 0/0 .text daObjCRVLH_UP_Draw__FP15daObjCRVLH_UP_c */
static void daObjCRVLH_UP_Draw(daObjCRVLH_UP_c* param_0) {
    // NONMATCHING
}

/* 80BD5358-80BD5378 0004F8 0020+00 2/1 0/0 0/0 .text daObjCRVLH_UP_Execute__FP15daObjCRVLH_UP_c
 */
static void daObjCRVLH_UP_Execute(daObjCRVLH_UP_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD5A64-80BD5A64 000068 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BD5A7C = "U_CrvLH_UP.bmd";
#pragma pop

/* 80BD5A9C-80BD5AA0 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_crvlh_up__stringBase0;

/* 80BD5378-80BD53F0 000518 0078+00 1/0 0/0 0/0 .text            CreateHeap__15daObjCRVLH_UP_cFv */
void daObjCRVLH_UP_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD5A30-80BD5A34 000034 0004+00 0/1 0/0 0/0 .rodata          @3857 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3857 = -9.0f;
COMPILER_STRIP_GATE(0x80BD5A30, &lit_3857);
#pragma pop

/* 80BD5A34-80BD5A38 000038 0004+00 0/2 0/0 0/0 .rodata          @3858 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3858 = 100.0f;
COMPILER_STRIP_GATE(0x80BD5A34, &lit_3858);
#pragma pop

/* 80BD5A38-80BD5A3C 00003C 0004+00 0/2 0/0 0/0 .rodata          @3859 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3859 = -500.0f;
COMPILER_STRIP_GATE(0x80BD5A38, &lit_3859);
#pragma pop

/* 80BD5A3C-80BD5A40 000040 0004+00 0/2 0/0 0/0 .rodata          @3860 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3860 = 500.0f;
COMPILER_STRIP_GATE(0x80BD5A3C, &lit_3860);
#pragma pop

/* 80BD5A40-80BD5A44 000044 0004+00 0/1 0/0 0/0 .rodata          @3861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3861 = 2000.0f;
COMPILER_STRIP_GATE(0x80BD5A40, &lit_3861);
#pragma pop

/* 80BD5A64-80BD5A64 000068 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BD5A8B = "U_CrvLH_Up.dzb";
#pragma pop

/* 80BD5AA0-80BD5AC0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCRVLH_UP_Method */
static actor_method_class l_daObjCRVLH_UP_Method = {
    (process_method_func)daObjCRVLH_UP_Create__FP10fopAc_ac_c,
    (process_method_func)daObjCRVLH_UP_Delete__FP15daObjCRVLH_UP_c,
    (process_method_func)daObjCRVLH_UP_Execute__FP15daObjCRVLH_UP_c,
    (process_method_func)daObjCRVLH_UP_IsDelete__FP15daObjCRVLH_UP_c,
    (process_method_func)daObjCRVLH_UP_Draw__FP15daObjCRVLH_UP_c,
};

/* 80BD5AC0-80BD5AF0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_CRVLH_UP */
extern actor_process_profile_definition g_profile_Obj_CRVLH_UP = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_CRVLH_UP,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjCRVLH_UP_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  470,                     // mPriority
  &l_daObjCRVLH_UP_Method, // sub_method
  0x00040180,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80BD5AF0-80BD5AFC 000054 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80BD5AFC-80BD5B08 000060 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BD5B08-80BD5B30 00006C 0028+00 1/1 0/0 0/0 .data            __vt__15daObjCRVLH_UP_c */
SECTION_DATA extern void* __vt__15daObjCRVLH_UP_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__15daObjCRVLH_UP_cFv,
    (void*)Create__15daObjCRVLH_UP_cFv,
    (void*)Execute__15daObjCRVLH_UP_cFPPA3_A4_f,
    (void*)Draw__15daObjCRVLH_UP_cFv,
    (void*)Delete__15daObjCRVLH_UP_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80BD53F0-80BD5614 000590 0224+00 1/1 0/0 0/0 .text            create__15daObjCRVLH_UP_cFv */
void daObjCRVLH_UP_c::create() {
    // NONMATCHING
}

/* 80BD5614-80BD565C 0007B4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80BD565C-80BD56A4 0007FC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BD56A4-80BD56E0 000844 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80BD56E0-80BD56E4 000880 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80BD56E4-80BD56EC 000884 0008+00 1/0 0/0 0/0 .text daObjCRVLH_UP_IsDelete__FP15daObjCRVLH_UP_c
 */
static bool daObjCRVLH_UP_IsDelete(daObjCRVLH_UP_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80BD5A44-80BD5A48 000048 0004+00 0/1 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3940 = -1000.0f;
COMPILER_STRIP_GATE(0x80BD5A44, &lit_3940);
#pragma pop

/* 80BD5A48-80BD5A4C 00004C 0004+00 0/1 0/0 0/0 .rodata          @3941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3941 = 1000.0f;
COMPILER_STRIP_GATE(0x80BD5A48, &lit_3941);
#pragma pop

/* 80BD56EC-80BD5730 00088C 0044+00 1/0 0/0 0/0 .text            Create__15daObjCRVLH_UP_cFv */
void daObjCRVLH_UP_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD5A4C-80BD5A50 000050 0004+00 0/1 0/0 0/0 .rodata          @3997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3997 = 250.0f;
COMPILER_STRIP_GATE(0x80BD5A4C, &lit_3997);
#pragma pop

/* 80BD5A50-80BD5A54 000054 0004+00 0/1 0/0 0/0 .rodata          @3998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3998 = 80.0f;
COMPILER_STRIP_GATE(0x80BD5A50, &lit_3998);
#pragma pop

/* 80BD5A54-80BD5A58 000058 0004+00 0/1 0/0 0/0 .rodata          @3999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3999 = 60.0f;
COMPILER_STRIP_GATE(0x80BD5A54, &lit_3999);
#pragma pop

/* 80BD5A58-80BD5A5C 00005C 0004+00 0/1 0/0 0/0 .rodata          @4000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4000 = 10.0f;
COMPILER_STRIP_GATE(0x80BD5A58, &lit_4000);
#pragma pop

/* 80BD5A5C-80BD5A60 000060 0004+00 0/1 0/0 0/0 .rodata          @4001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4001 = 20.0f;
COMPILER_STRIP_GATE(0x80BD5A5C, &lit_4001);
#pragma pop

/* 80BD5A60-80BD5A64 000064 0004+00 0/1 0/0 0/0 .rodata          @4002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4002 = 3000.0f;
COMPILER_STRIP_GATE(0x80BD5A60, &lit_4002);
#pragma pop

/* 80BD5730-80BD593C 0008D0 020C+00 1/0 0/0 0/0 .text Execute__15daObjCRVLH_UP_cFPPA3_A4_f */
void daObjCRVLH_UP_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80BD593C-80BD59C0 000ADC 0084+00 1/0 0/0 0/0 .text            Draw__15daObjCRVLH_UP_cFv */
void daObjCRVLH_UP_c::Draw() {
    // NONMATCHING
}

/* 80BD59C0-80BD59F4 000B60 0034+00 1/0 0/0 0/0 .text            Delete__15daObjCRVLH_UP_cFv */
void daObjCRVLH_UP_c::Delete() {
    // NONMATCHING
}

/* 80BD5A64-80BD5A64 000068 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

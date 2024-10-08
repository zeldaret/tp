/**
 * @file d_a_obj_dust.cpp
 * 
*/

#include "d/actor/d_a_obj_dust.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void Search_Ymb__11daObjDust_cFv();
extern "C" void RideOn_Angle__11daObjDust_cFRsfsf();
extern "C" void Check_RideOn__11daObjDust_cFv();
extern "C" void initBaseMtx__11daObjDust_cFv();
extern "C" void setBaseMtx__11daObjDust_cFv();
extern "C" static void rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void daObjDust_Draw__FP11daObjDust_c();
extern "C" static void daObjDust_Execute__FP11daObjDust_c();
extern "C" static bool daObjDust_IsDelete__FP11daObjDust_c();
extern "C" static void daObjDust_Delete__FP11daObjDust_c();
extern "C" static void daObjDust_Create__FP10fopAc_ac_c();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void CreateHeap__11daObjDust_cFv();
extern "C" void Create__11daObjDust_cFv();
extern "C" void Execute__11daObjDust_cFPPA3_A4_f();
extern "C" void Draw__11daObjDust_cFv();
extern "C" void Delete__11daObjDust_cFv();
extern "C" void func_80BE2F74(void* _this, s16);
extern "C" static void func_80BE2F80();
extern "C" static void func_80BE2F88();
extern "C" extern char const* const d_a_obj_dust__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_SearchByName__FsPP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void waterCheck__11fopAcM_wt_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mWaterY__11fopAcM_wt_c[1 + 1 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80BE2F98-80BE2FA0 000000 0004+04 4/4 0/0 0/0 .rodata          @3673 */
SECTION_RODATA static u8 const lit_3673[4 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BE2F98, &lit_3673);

/* 80BE2FA0-80BE2FA8 000008 0008+00 1/3 0/0 0/0 .rodata          @3675 */
SECTION_RODATA static u8 const lit_3675[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BE2FA0, &lit_3675);

/* 80BE2FA8-80BE2FAC 000010 0004+00 0/2 0/0 0/0 .rodata          @3723 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3723 = 750.0f;
COMPILER_STRIP_GATE(0x80BE2FA8, &lit_3723);
#pragma pop

/* 80BE2FAC-80BE2FB0 000014 0004+00 0/2 0/0 0/0 .rodata          @3724 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3724 = -750.0f;
COMPILER_STRIP_GATE(0x80BE2FAC, &lit_3724);
#pragma pop

/* 80BE2FB0-80BE2FB4 000018 0004+00 0/2 0/0 0/0 .rodata          @3725 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3725 = 450.0f;
COMPILER_STRIP_GATE(0x80BE2FB0, &lit_3725);
#pragma pop

/* 80BE2FB4-80BE2FB8 00001C 0004+00 0/2 0/0 0/0 .rodata          @3726 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3726 = -450.0f;
COMPILER_STRIP_GATE(0x80BE2FB4, &lit_3726);
#pragma pop

/* 80BE2FB8-80BE2FBC 000020 0004+00 0/1 0/0 0/0 .rodata          @3727 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3727 = 600.0f;
COMPILER_STRIP_GATE(0x80BE2FB8, &lit_3727);
#pragma pop

/* 80BE2FBC-80BE2FC0 000024 0004+00 0/1 0/0 0/0 .rodata          @3728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3728 = 256.0f;
COMPILER_STRIP_GATE(0x80BE2FBC, &lit_3728);
#pragma pop

/* 80BE2FC0-80BE2FC4 000028 0004+00 0/1 0/0 0/0 .rodata          @3729 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3729 = 16.0f;
COMPILER_STRIP_GATE(0x80BE2FC0, &lit_3729);
#pragma pop

/* 80BE2FC4-80BE2FC8 00002C 0004+00 0/1 0/0 0/0 .rodata          @3730 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3730 = 31.0f;
COMPILER_STRIP_GATE(0x80BE2FC4, &lit_3730);
#pragma pop

/* 80BE2FC8-80BE2FCC 000030 0004+00 0/1 0/0 0/0 .rodata          @3731 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3731 = -100.0f;
COMPILER_STRIP_GATE(0x80BE2FC8, &lit_3731);
#pragma pop

/* 80BE2FCC-80BE2FD0 000034 0004+00 0/1 0/0 0/0 .rodata          @3732 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3732 = 0.5f;
COMPILER_STRIP_GATE(0x80BE2FCC, &lit_3732);
#pragma pop

/* 80BE2FD0-80BE2FD4 000038 0004+00 0/4 0/0 0/0 .rodata          @3733 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3733 = 100.0f;
COMPILER_STRIP_GATE(0x80BE2FD0, &lit_3733);
#pragma pop

/* 80BE2FD4-80BE2FD8 00003C 0004+00 0/2 0/0 0/0 .rodata          @3734 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3734 = 300.0f;
COMPILER_STRIP_GATE(0x80BE2FD4, &lit_3734);
#pragma pop

/* 80BE2FD8-80BE2FDC 000040 0004+00 0/1 0/0 0/0 .rodata          @3735 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3735 = 1900.0f;
COMPILER_STRIP_GATE(0x80BE2FD8, &lit_3735);
#pragma pop

/* 80BE2FDC-80BE2FE0 000044 0004+00 0/2 0/0 0/0 .rodata          @3736 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3736 = 1.0f;
COMPILER_STRIP_GATE(0x80BE2FDC, &lit_3736);
#pragma pop

/* 80BE2FE0-80BE2FE4 000048 0004+00 0/2 0/0 0/0 .rodata          @3737 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3737 = -1.0f;
COMPILER_STRIP_GATE(0x80BE2FE0, &lit_3737);
#pragma pop

/* 80BE30F8-80BE30FC 000000 0004+00 2/2 0/0 0/0 .bss             e_ymb__26@unnamed@d_a_obj_dust_cpp@
 */
static u8 data_80BE30F8[4];

/* 80BE30FC-80BE3100 000004 0004+00 2/2 0/0 0/0 .bss e_ymb_Pos__26@unnamed@d_a_obj_dust_cpp@ */
static u8 data_80BE30FC[4];

/* 80BE22B8-80BE2490 000078 01D8+00 1/1 0/0 0/0 .text            Search_Ymb__11daObjDust_cFv */
void daObjDust_c::Search_Ymb() {
    // NONMATCHING
}

/* 80BE2490-80BE24F8 000250 0068+00 1/1 0/0 0/0 .text            RideOn_Angle__11daObjDust_cFRsfsf
 */
void daObjDust_c::RideOn_Angle(s16& param_0, f32 param_1, s16 param_2, f32 param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BE2FE4-80BE2FE8 00004C 0004+00 0/1 0/0 0/0 .rodata          @3775 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3775 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80BE2FE4, &lit_3775);
#pragma pop

/* 80BE24F8-80BE2708 0002B8 0210+00 1/1 0/0 0/0 .text            Check_RideOn__11daObjDust_cFv */
void daObjDust_c::Check_RideOn() {
    // NONMATCHING
}

/* 80BE2708-80BE2734 0004C8 002C+00 1/1 0/0 0/0 .text            initBaseMtx__11daObjDust_cFv */
void daObjDust_c::initBaseMtx() {
    // NONMATCHING
}

/* 80BE2734-80BE2790 0004F4 005C+00 2/2 0/0 0/0 .text            setBaseMtx__11daObjDust_cFv */
void daObjDust_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BE2FE8-80BE2FEC 000050 0004+00 1/1 0/0 0/0 .rodata          @3817 */
SECTION_RODATA static f32 const lit_3817 = 30.0f;
COMPILER_STRIP_GATE(0x80BE2FE8, &lit_3817);

/* 80BE2790-80BE27BC 000550 002C+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* 80BE27BC-80BE27E8 00057C 002C+00 1/0 0/0 0/0 .text            daObjDust_Draw__FP11daObjDust_c */
static void daObjDust_Draw(daObjDust_c* param_0) {
    // NONMATCHING
}

/* 80BE27E8-80BE2808 0005A8 0020+00 1/0 0/0 0/0 .text            daObjDust_Execute__FP11daObjDust_c
 */
static void daObjDust_Execute(daObjDust_c* param_0) {
    // NONMATCHING
}

/* 80BE2808-80BE2810 0005C8 0008+00 1/0 0/0 0/0 .text            daObjDust_IsDelete__FP11daObjDust_c
 */
static bool daObjDust_IsDelete(daObjDust_c* param_0) {
    return true;
}

/* 80BE2810-80BE2834 0005D0 0024+00 1/0 0/0 0/0 .text            daObjDust_Delete__FP11daObjDust_c
 */
static void daObjDust_Delete(daObjDust_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BE2FEC-80BE2FF0 000054 0004+00 0/1 0/0 0/0 .rodata          @3885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3885 = -200.0f;
COMPILER_STRIP_GATE(0x80BE2FEC, &lit_3885);
#pragma pop

/* 80BE2FF0-80BE2FF4 000058 0004+00 0/1 0/0 0/0 .rodata          @3886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3886 = -50.0f;
COMPILER_STRIP_GATE(0x80BE2FF0, &lit_3886);
#pragma pop

/* 80BE2FF4-80BE2FF8 00005C 0004+00 0/1 0/0 0/0 .rodata          @3887 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3887 = 200.0f;
COMPILER_STRIP_GATE(0x80BE2FF4, &lit_3887);
#pragma pop

/* 80BE2FF8-80BE2FFC 000060 0004+00 0/1 0/0 0/0 .rodata          @3888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3888 = 50.0f;
COMPILER_STRIP_GATE(0x80BE2FF8, &lit_3888);
#pragma pop

/* 80BE2FFC-80BE3000 000064 0004+00 0/1 0/0 0/0 .rodata          @3889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3889 = -18850.0f;
COMPILER_STRIP_GATE(0x80BE2FFC, &lit_3889);
#pragma pop

/* 80BE3020-80BE3020 000088 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BE3020 = "M_Dust";
SECTION_DEAD static char const* const stringBase_80BE3027 = "M_FloatingDust01.dzb";
#pragma pop

/* 80BE3054-80BE3058 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_dust__stringBase0;

/* 80BE3058-80BE3078 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjDust_Method */
static actor_method_class l_daObjDust_Method = {
    (process_method_func)daObjDust_Create__FP10fopAc_ac_c,
    (process_method_func)daObjDust_Delete__FP11daObjDust_c,
    (process_method_func)daObjDust_Execute__FP11daObjDust_c,
    (process_method_func)daObjDust_IsDelete__FP11daObjDust_c,
    (process_method_func)daObjDust_Draw__FP11daObjDust_c,
};

/* 80BE3078-80BE30A8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_DUST */
extern actor_process_profile_definition g_profile_Obj_DUST = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_DUST,          // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjDust_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  473,                    // mPriority
  &l_daObjDust_Method,    // sub_method
  0x00040180,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BE30A8-80BE30CC 000054 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BE2F88,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BE2F80,
};

/* 80BE30CC-80BE30F4 000078 0028+00 1/1 0/0 0/0 .data            __vt__11daObjDust_c */
SECTION_DATA extern void* __vt__11daObjDust_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__11daObjDust_cFv,
    (void*)Create__11daObjDust_cFv,
    (void*)Execute__11daObjDust_cFPPA3_A4_f,
    (void*)Draw__11daObjDust_cFv,
    (void*)Delete__11daObjDust_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80BE2834-80BE2A00 0005F4 01CC+00 1/0 0/0 0/0 .text            daObjDust_Create__FP10fopAc_ac_c */
static void daObjDust_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BE2A00-80BE2A70 0007C0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BE3020-80BE3020 000088 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BE303C = "M_FloatingDust01.bmd";
#pragma pop

/* 80BE2A70-80BE2AE8 000830 0078+00 1/0 0/0 0/0 .text            CreateHeap__11daObjDust_cFv */
void daObjDust_c::CreateHeap() {
    // NONMATCHING
}

/* 80BE2AE8-80BE2B30 0008A8 0048+00 1/0 0/0 0/0 .text            Create__11daObjDust_cFv */
void daObjDust_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BE3000-80BE3004 000068 0004+00 0/1 0/0 0/0 .rodata          @3963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3963 = 768.0f;
COMPILER_STRIP_GATE(0x80BE3000, &lit_3963);
#pragma pop

/* 80BE3004-80BE3008 00006C 0004+00 0/1 0/0 0/0 .rodata          @3964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3964 = 2.0f;
COMPILER_STRIP_GATE(0x80BE3004, &lit_3964);
#pragma pop

/* 80BE3008-80BE300C 000070 0004+00 0/1 0/0 0/0 .rodata          @3965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3965 = 40.0f;
COMPILER_STRIP_GATE(0x80BE3008, &lit_3965);
#pragma pop

/* 80BE300C-80BE3010 000074 0004+00 0/1 0/0 0/0 .rodata          @3966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3966 = 80.0f;
COMPILER_STRIP_GATE(0x80BE300C, &lit_3966);
#pragma pop

/* 80BE3010-80BE3014 000078 0004+00 0/1 0/0 0/0 .rodata          @3967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3967 = 20.0f;
COMPILER_STRIP_GATE(0x80BE3010, &lit_3967);
#pragma pop

/* 80BE3014-80BE3018 00007C 0004+00 0/1 0/0 0/0 .rodata          @3968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3968 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BE3014, &lit_3968);
#pragma pop

/* 80BE3018-80BE301C 000080 0004+00 0/1 0/0 0/0 .rodata          @3969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3969 = 15.0f;
COMPILER_STRIP_GATE(0x80BE3018, &lit_3969);
#pragma pop

/* 80BE301C-80BE3020 000084 0004+00 0/1 0/0 0/0 .rodata          @3970 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3970 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80BE301C, &lit_3970);
#pragma pop

/* 80BE2B30-80BE2E9C 0008F0 036C+00 1/0 0/0 0/0 .text            Execute__11daObjDust_cFPPA3_A4_f */
void daObjDust_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80BE2E9C-80BE2F40 000C5C 00A4+00 1/0 0/0 0/0 .text            Draw__11daObjDust_cFv */
void daObjDust_c::Draw() {
    // NONMATCHING
}

/* 80BE2F40-80BE2F74 000D00 0034+00 1/0 0/0 0/0 .text            Delete__11daObjDust_cFv */
void daObjDust_c::Delete() {
    // NONMATCHING
}

/* 80BE2F74-80BE2F80 000D34 000C+00 1/1 0/0 0/0 .text sinShort__Q25JMath18TSinCosTable<13,f>CFs */
extern "C" void func_80BE2F74(void* _this, s16 param_0) /* const */ {
    // NONMATCHING
}

/* 80BE2F80-80BE2F88 000D40 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80BE2F80() {
    // NONMATCHING
}

/* 80BE2F88-80BE2F90 000D48 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80BE2F88() {
    // NONMATCHING
}

/* 80BE3020-80BE3020 000088 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
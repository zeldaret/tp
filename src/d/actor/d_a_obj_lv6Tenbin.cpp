/**
 * @file d_a_obj_lv6Tenbin.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv6Tenbin.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__14daTenbin_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__10daTenbin_cFv();
extern "C" void CreateHeap__10daTenbin_cFv();
extern "C" void create__10daTenbin_cFv();
extern "C" void rideCallBackRight__10daTenbin_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void rideCallBackLeft__10daTenbin_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void Execute__10daTenbin_cFPPA3_A4_f();
extern "C" void procMain__10daTenbin_cFv();
extern "C" void init_modeWait__10daTenbin_cFv();
extern "C" void modeWait__10daTenbin_cFv();
extern "C" void balanceCheck__10daTenbin_cFv();
extern "C" void Draw__10daTenbin_cFv();
extern "C" void Delete__10daTenbin_cFv();
extern "C" static void daTenbin_Draw__FP10daTenbin_c();
extern "C" static void daTenbin_Execute__FP10daTenbin_c();
extern "C" static void daTenbin_Delete__FP10daTenbin_c();
extern "C" static void daTenbin_Create__FP10fopAc_ac_c();
extern "C" void __dt__14daTenbin_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv6Tenbin_cpp();
extern "C" extern char const* const d_a_obj_lv6Tenbin__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C779B0-80C779B4 000000 0004+00 2/2 0/0 0/0 .rodata          @3668 */
SECTION_RODATA static f32 const lit_3668 = 480.0f;
COMPILER_STRIP_GATE(0x80C779B0, &lit_3668);

/* 80C779B4-80C779B8 000004 0004+00 0/1 0/0 0/0 .rodata          @3669 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3669 = 160.0f;
COMPILER_STRIP_GATE(0x80C779B4, &lit_3669);
#pragma pop

/* 80C779B8-80C779BC 000008 0004+00 4/6 0/0 0/0 .rodata          @3670 */
SECTION_RODATA static u8 const lit_3670[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C779B8, &lit_3670);

/* 80C779BC-80C779C0 00000C 0004+00 0/1 0/0 0/0 .rodata          @3671 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3671 = 45.0f;
COMPILER_STRIP_GATE(0x80C779BC, &lit_3671);
#pragma pop

/* 80C779C0-80C779C4 000010 0004+00 0/1 0/0 0/0 .rodata          @3672 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3672 = 50.0f;
COMPILER_STRIP_GATE(0x80C779C0, &lit_3672);
#pragma pop

/* 80C779C4-80C779C8 000014 0004+00 0/1 0/0 0/0 .rodata          @3673 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3673 = 3.0f / 50.0f;
COMPILER_STRIP_GATE(0x80C779C4, &lit_3673);
#pragma pop

/* 80C779C8-80C779CC 000018 0004+00 0/1 0/0 0/0 .rodata          @3674 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3674 = 5.0f;
COMPILER_STRIP_GATE(0x80C779C8, &lit_3674);
#pragma pop

/* 80C779CC-80C779D0 00001C 0004+00 0/2 0/0 0/0 .rodata          @3675 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3675 = 1.0f;
COMPILER_STRIP_GATE(0x80C779CC, &lit_3675);
#pragma pop

/* 80C779D0-80C779D4 000020 0004+00 0/1 0/0 0/0 .rodata          @3676 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3676 = 90.0f;
COMPILER_STRIP_GATE(0x80C779D0, &lit_3676);
#pragma pop

/* 80C779D4-80C779D8 000024 0004+00 0/1 0/0 0/0 .rodata          @3677 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3677 = 30.0f;
COMPILER_STRIP_GATE(0x80C779D4, &lit_3677);
#pragma pop

/* 80C779D8-80C779DC 000028 0004+00 0/1 0/0 0/0 .rodata          @3678 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3678 = 10.0f;
COMPILER_STRIP_GATE(0x80C779D8, &lit_3678);
#pragma pop

/* 80C779DC-80C779E0 00002C 0004+00 0/1 0/0 0/0 .rodata          @3679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3679 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80C779DC, &lit_3679);
#pragma pop

/* 80C779E0-80C779E4 000030 0004+00 0/1 0/0 0/0 .rodata          @3680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3680 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C779E0, &lit_3680);
#pragma pop

/* 80C77A08-80C77A20 000000 0018+00 2/2 0/0 0/0 .data            l_cull_box */
SECTION_DATA static u8 l_cull_box[24] = {
    0xC3, 0x96, 0x00, 0x00, 0xC3, 0xFA, 0x00, 0x00, 0xC3, 0xC8, 0x00, 0x00,
    0x44, 0x96, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0x44, 0xA2, 0x80, 0x00,
};

/* 80C77A20-80C77A2C -00001 000C+00 1/1 0/0 0/0 .data            @3913 */
SECTION_DATA static void* lit_3913[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__10daTenbin_cFv,
};

/* 80C77A2C-80C77A38 000024 000C+00 1/1 0/0 0/0 .data            mode_proc$3912 */
SECTION_DATA static u8 mode_proc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C77A38-80C77A58 -00001 0020+00 1/0 0/0 0/0 .data            l_daTenbin_Method */
static actor_method_class l_daTenbin_Method = {
    (process_method_func)daTenbin_Create__FP10fopAc_ac_c,
    (process_method_func)daTenbin_Delete__FP10daTenbin_c,
    (process_method_func)daTenbin_Execute__FP10daTenbin_c,
    0,
    (process_method_func)daTenbin_Draw__FP10daTenbin_c,
};

/* 80C77A58-80C77A88 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6Tenbin */
extern actor_process_profile_definition g_profile_Obj_Lv6Tenbin = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv6Tenbin,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daTenbin_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  623,                    // mPriority
  &l_daTenbin_Method,     // sub_method
  0x00060100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C77A88-80C77AB0 000080 0028+00 1/1 0/0 0/0 .data            __vt__10daTenbin_c */
SECTION_DATA extern void* __vt__10daTenbin_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__10daTenbin_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__10daTenbin_cFPPA3_A4_f,
    (void*)Draw__10daTenbin_cFv,
    (void*)Delete__10daTenbin_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C77AB0-80C77ABC 0000A8 000C+00 2/2 0/0 0/0 .data            __vt__14daTenbin_HIO_c */
SECTION_DATA extern void* __vt__14daTenbin_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daTenbin_HIO_cFv,
};

/* 80C77ABC-80C77AC8 0000B4 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C768EC-80C76988 0000EC 009C+00 1/1 0/0 0/0 .text            __ct__14daTenbin_HIO_cFv */
daTenbin_HIO_c::daTenbin_HIO_c() {
    // NONMATCHING
}

/* 80C76988-80C769D0 000188 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C779E4-80C779E8 000034 0004+00 2/2 0/0 0/0 .rodata          @3735 */
SECTION_RODATA static u32 const lit_3735 = 0x43360B61;
COMPILER_STRIP_GATE(0x80C779E4, &lit_3735);

/* 80C77AD0-80C77ADC 000008 000C+00 1/1 0/0 0/0 .bss             @3662 */
static u8 lit_3662[12];

/* 80C77ADC-80C77B20 000014 0044+00 5/5 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[68];

/* 80C769D0-80C76BCC 0001D0 01FC+00 2/2 0/0 0/0 .text            setBaseMtx__10daTenbin_cFv */
void daTenbin_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C779FC-80C779FC 00004C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C779FC = "L6Tenbin";
#pragma pop

/* 80C76BCC-80C76D10 0003CC 0144+00 1/0 0/0 0/0 .text            CreateHeap__10daTenbin_cFv */
void daTenbin_c::CreateHeap() {
    // NONMATCHING
}

/* 80C76D10-80C76EE0 000510 01D0+00 1/1 0/0 0/0 .text            create__10daTenbin_cFv */
void daTenbin_c::create() {
    // NONMATCHING
}

/* 80C76EE0-80C77078 0006E0 0198+00 1/1 0/0 0/0 .text
 * rideCallBackRight__10daTenbin_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
void daTenbin_c::rideCallBackRight(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* 80C77078-80C77200 000878 0188+00 1/1 0/0 0/0 .text
 * rideCallBackLeft__10daTenbin_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
void daTenbin_c::rideCallBackLeft(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C779E8-80C779EC 000038 0004+00 1/1 0/0 0/0 .rodata          @3908 */
SECTION_RODATA static f32 const lit_3908 = 0.5f;
COMPILER_STRIP_GATE(0x80C779E8, &lit_3908);

/* 80C77200-80C772BC 000A00 00BC+00 1/0 0/0 0/0 .text            Execute__10daTenbin_cFPPA3_A4_f */
void daTenbin_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C77B20-80C77B24 000058 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C77B20[4];

/* 80C772BC-80C77464 000ABC 01A8+00 1/1 0/0 0/0 .text            procMain__10daTenbin_cFv */
void daTenbin_c::procMain() {
    // NONMATCHING
}

/* 80C77464-80C77470 000C64 000C+00 1/1 0/0 0/0 .text            init_modeWait__10daTenbin_cFv */
void daTenbin_c::init_modeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C779EC-80C779F0 00003C 0004+00 0/1 0/0 0/0 .rodata          @3971 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3971 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C779EC, &lit_3971);
#pragma pop

/* 80C779F0-80C779F4 000040 0004+00 0/1 0/0 0/0 .rodata          @3972 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3972 = 8.0f;
COMPILER_STRIP_GATE(0x80C779F0, &lit_3972);
#pragma pop

/* 80C779F4-80C779F8 000044 0004+00 0/1 0/0 0/0 .rodata          @3973 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3973 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C779F4, &lit_3973);
#pragma pop

/* 80C779F8-80C779FC 000048 0004+00 0/1 0/0 0/0 .rodata          @3974 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3974 = -1.0f;
COMPILER_STRIP_GATE(0x80C779F8, &lit_3974);
#pragma pop

/* 80C77470-80C77668 000C70 01F8+00 1/0 0/0 0/0 .text            modeWait__10daTenbin_cFv */
void daTenbin_c::modeWait() {
    // NONMATCHING
}

/* 80C77668-80C7772C 000E68 00C4+00 1/1 0/0 0/0 .text            balanceCheck__10daTenbin_cFv */
void daTenbin_c::balanceCheck() {
    // NONMATCHING
}

/* 80C7772C-80C77810 000F2C 00E4+00 1/0 0/0 0/0 .text            Draw__10daTenbin_cFv */
void daTenbin_c::Draw() {
    // NONMATCHING
}

/* 80C77810-80C77878 001010 0068+00 1/0 0/0 0/0 .text            Delete__10daTenbin_cFv */
void daTenbin_c::Delete() {
    // NONMATCHING
}

/* 80C77878-80C778A4 001078 002C+00 1/0 0/0 0/0 .text            daTenbin_Draw__FP10daTenbin_c */
static void daTenbin_Draw(daTenbin_c* param_0) {
    // NONMATCHING
}

/* 80C778A4-80C778C4 0010A4 0020+00 1/0 0/0 0/0 .text            daTenbin_Execute__FP10daTenbin_c */
static void daTenbin_Execute(daTenbin_c* param_0) {
    // NONMATCHING
}

/* 80C778C4-80C778E4 0010C4 0020+00 1/0 0/0 0/0 .text            daTenbin_Delete__FP10daTenbin_c */
static void daTenbin_Delete(daTenbin_c* param_0) {
    // NONMATCHING
}

/* 80C778E4-80C77904 0010E4 0020+00 1/0 0/0 0/0 .text            daTenbin_Create__FP10fopAc_ac_c */
static void daTenbin_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C77904-80C77960 001104 005C+00 2/1 0/0 0/0 .text            __dt__14daTenbin_HIO_cFv */
daTenbin_HIO_c::~daTenbin_HIO_c() {
    // NONMATCHING
}

/* 80C77960-80C7799C 001160 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv6Tenbin_cpp */
void __sinit_d_a_obj_lv6Tenbin_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C77960, __sinit_d_a_obj_lv6Tenbin_cpp);
#pragma pop

/* 80C779FC-80C779FC 00004C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

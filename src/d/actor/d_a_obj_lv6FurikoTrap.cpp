/**
 * @file d_a_obj_lv6FurikoTrap.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv6FurikoTrap.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__21daLv6FurikoTrap_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__17daLv6FurikoTrap_cFv();
extern "C" void CreateHeap__17daLv6FurikoTrap_cFv();
extern "C" void create__17daLv6FurikoTrap_cFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void Execute__17daLv6FurikoTrap_cFPPA3_A4_f();
extern "C" void move__17daLv6FurikoTrap_cFv();
extern "C" void init_modeMove__17daLv6FurikoTrap_cFv();
extern "C" void modeMove__17daLv6FurikoTrap_cFv();
extern "C" void Draw__17daLv6FurikoTrap_cFv();
extern "C" void Delete__17daLv6FurikoTrap_cFv();
extern "C" static void daLv6FurikoTrap_Draw__FP17daLv6FurikoTrap_c();
extern "C" static void daLv6FurikoTrap_Execute__FP17daLv6FurikoTrap_c();
extern "C" static void daLv6FurikoTrap_Delete__FP17daLv6FurikoTrap_c();
extern "C" static void daLv6FurikoTrap_Create__FP10fopAc_ac_c();
extern "C" void __dt__21daLv6FurikoTrap_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv6FurikoTrap_cpp();
extern "C" u8 const mCcDObjInfo__17daLv6FurikoTrap_c[48];
extern "C" extern char const* const d_a_obj_lv6FurikoTrap__stringBase0;
extern "C" u8 mCcDSph__17daLv6FurikoTrap_c[64];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotS__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_ZrotS__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_18();
extern "C" void _savegpr_25();
extern "C" void _savegpr_29();
extern "C" void _restgpr_18();
extern "C" void _restgpr_25();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C73130-80C73134 000000 0004+00 3/3 0/0 0/0 .rodata          @3625 */
SECTION_RODATA static f32 const lit_3625 = 1.0f;
COMPILER_STRIP_GATE(0x80C73130, &lit_3625);

/* 80C73134-80C73138 000004 0004+00 1/2 0/0 0/0 .rodata          @3626 */
SECTION_RODATA static f32 const lit_3626 = 45.0f;
COMPILER_STRIP_GATE(0x80C73134, &lit_3626);

/* 80C731A4-80C731E4 000000 0040+00 2/2 0/0 0/0 .data            mCcDSph__17daLv6FurikoTrap_c */
SECTION_DATA u8 daLv6FurikoTrap_c::mCcDSph[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C731E4-80C731F0 000040 000C+00 1/1 0/0 0/0 .data            posx$3810 */
SECTION_DATA static u8 posx[12] = {
    0x43, 0xBF, 0x80, 0x00, 0x43, 0xB2, 0x00, 0x00, 0x43, 0xA4, 0x80, 0x00,
};

/* 80C731F0-80C731FC 00004C 000C+00 1/1 0/0 0/0 .data            posy$3811 */
SECTION_DATA static u8 posy[12] = {
    0xC4, 0x25, 0x00, 0x00, 0xC4, 0x2F, 0x00, 0x00, 0xC4, 0x39, 0x00, 0x00,
};

/* 80C731FC-80C73208 -00001 000C+00 1/1 0/0 0/0 .data            @3884 */
SECTION_DATA static void* lit_3884[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMove__17daLv6FurikoTrap_cFv,
};

/* 80C73208-80C73214 000064 000C+00 1/1 0/0 0/0 .data            mode_proc$3883 */
SECTION_DATA static u8 mode_proc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C73214-80C73234 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv6FurikoTrap_Method */
static actor_method_class l_daLv6FurikoTrap_Method = {
    (process_method_func)daLv6FurikoTrap_Create__FP10fopAc_ac_c,
    (process_method_func)daLv6FurikoTrap_Delete__FP17daLv6FurikoTrap_c,
    (process_method_func)daLv6FurikoTrap_Execute__FP17daLv6FurikoTrap_c,
    0,
    (process_method_func)daLv6FurikoTrap_Draw__FP17daLv6FurikoTrap_c,
};

/* 80C73234-80C73264 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6FuriTrap */
extern actor_process_profile_definition g_profile_Obj_Lv6FuriTrap = {
  fpcLy_CURRENT_e,           // mLayerID
  3,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_Obj_Lv6FuriTrap,      // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daLv6FurikoTrap_c), // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  627,                       // mPriority
  &l_daLv6FurikoTrap_Method, // sub_method
  0x00040000,                // mStatus
  fopAc_ACTOR_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};

/* 80C73264-80C73270 0000C0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C73270-80C7327C 0000CC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C7327C-80C732A4 0000D8 0028+00 1/1 0/0 0/0 .data            __vt__17daLv6FurikoTrap_c */
SECTION_DATA extern void* __vt__17daLv6FurikoTrap_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__17daLv6FurikoTrap_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__17daLv6FurikoTrap_cFPPA3_A4_f,
    (void*)Draw__17daLv6FurikoTrap_cFv,
    (void*)Delete__17daLv6FurikoTrap_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C732A4-80C732B0 000100 000C+00 2/2 0/0 0/0 .data            __vt__21daLv6FurikoTrap_HIO_c */
SECTION_DATA extern void* __vt__21daLv6FurikoTrap_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__21daLv6FurikoTrap_HIO_cFv,
};

/* 80C732B0-80C732BC 00010C 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C7248C-80C724C8 0000EC 003C+00 1/1 0/0 0/0 .text            __ct__21daLv6FurikoTrap_HIO_cFv */
daLv6FurikoTrap_HIO_c::daLv6FurikoTrap_HIO_c() {
    // NONMATCHING
}

/* 80C724C8-80C72510 000128 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80C72510-80C72598 000170 0088+00 2/2 0/0 0/0 .text            setBaseMtx__17daLv6FurikoTrap_cFv
 */
void daLv6FurikoTrap_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C73198-80C73198 000068 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C73198 = "L6Furiko";
#pragma pop

/* 80C72598-80C72604 0001F8 006C+00 1/0 0/0 0/0 .text            CreateHeap__17daLv6FurikoTrap_cFv
 */
void daLv6FurikoTrap_c::CreateHeap() {
    // NONMATCHING
}

/* 80C72604-80C727D4 000264 01D0+00 1/1 0/0 0/0 .text            create__17daLv6FurikoTrap_cFv */
void daLv6FurikoTrap_c::create() {
    // NONMATCHING
}

/* 80C727D4-80C728A0 000434 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80C728A0-80C72924 000500 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80C72924-80C7296C 000584 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C7296C-80C729B4 0005CC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C73138-80C73168 000008 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__17daLv6FurikoTrap_c */
SECTION_RODATA u8 const daLv6FurikoTrap_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x01, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x0A, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C73138, &daLv6FurikoTrap_c::mCcDObjInfo);

/* 80C73168-80C7316C 000038 0004+00 0/2 0/0 0/0 .rodata          @3871 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3871[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C73168, &lit_3871);
#pragma pop

/* 80C7316C-80C73170 00003C 0004+00 0/1 0/0 0/0 .rodata          @3872 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3872 = -850.0f;
COMPILER_STRIP_GATE(0x80C7316C, &lit_3872);
#pragma pop

/* 80C73170-80C73174 000040 0004+00 0/2 0/0 0/0 .rodata          @3873 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3873 = 0x43360B61;
COMPILER_STRIP_GATE(0x80C73170, &lit_3873);
#pragma pop

/* 80C73174-80C73178 000044 0004+00 0/1 0/0 0/0 .rodata          @3874 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3874 = -21.5f;
COMPILER_STRIP_GATE(0x80C73174, &lit_3874);
#pragma pop

/* 80C73178-80C7317C 000048 0004+00 0/1 0/0 0/0 .rodata          @3875 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3875 = 18.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C73178, &lit_3875);
#pragma pop

/* 80C7317C-80C73180 00004C 0004+00 0/2 0/0 0/0 .rodata          @3876 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3876 = 30.0f;
COMPILER_STRIP_GATE(0x80C7317C, &lit_3876);
#pragma pop

/* 80C73180-80C73188 000050 0008+00 0/1 0/0 0/0 .rodata          @3878 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3878[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C73180, &lit_3878);
#pragma pop

/* 80C729B4-80C72CA8 000614 02F4+00 1/0 0/0 0/0 .text Execute__17daLv6FurikoTrap_cFPPA3_A4_f */
void daLv6FurikoTrap_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C732C8-80C732D4 000008 000C+00 1/1 0/0 0/0 .bss             @3619 */
static u8 lit_3619[12];

/* 80C732D4-80C732E4 000014 0010+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80C732E4-80C732E8 000024 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C732E4[4];

/* 80C72CA8-80C72D24 000908 007C+00 1/1 0/0 0/0 .text            move__17daLv6FurikoTrap_cFv */
void daLv6FurikoTrap_c::move() {
    // NONMATCHING
}

/* 80C72D24-80C72D38 000984 0014+00 1/1 0/0 0/0 .text init_modeMove__17daLv6FurikoTrap_cFv */
void daLv6FurikoTrap_c::init_modeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C73188-80C7318C 000058 0004+00 0/1 0/0 0/0 .rodata          @3941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3941 = 2.0f;
COMPILER_STRIP_GATE(0x80C73188, &lit_3941);
#pragma pop

/* 80C7318C-80C73190 00005C 0004+00 0/1 0/0 0/0 .rodata          @3942 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3942 = 0x3F7FBE77;
COMPILER_STRIP_GATE(0x80C7318C, &lit_3942);
#pragma pop

/* 80C73190-80C73194 000060 0004+00 0/1 0/0 0/0 .rodata          @3943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3943 = -940.0f;
COMPILER_STRIP_GATE(0x80C73190, &lit_3943);
#pragma pop

/* 80C73194-80C73198 000064 0004+00 0/1 0/0 0/0 .rodata          @3944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3944 = -1.0f;
COMPILER_STRIP_GATE(0x80C73194, &lit_3944);
#pragma pop

/* 80C72D38-80C72EE0 000998 01A8+00 1/0 0/0 0/0 .text            modeMove__17daLv6FurikoTrap_cFv */
void daLv6FurikoTrap_c::modeMove() {
    // NONMATCHING
}

/* 80C72EE0-80C72F94 000B40 00B4+00 1/0 0/0 0/0 .text            Draw__17daLv6FurikoTrap_cFv */
void daLv6FurikoTrap_c::Draw() {
    // NONMATCHING
}

/* 80C72F94-80C72FC4 000BF4 0030+00 1/0 0/0 0/0 .text            Delete__17daLv6FurikoTrap_cFv */
void daLv6FurikoTrap_c::Delete() {
    // NONMATCHING
}

/* 80C72FC4-80C72FF0 000C24 002C+00 1/0 0/0 0/0 .text daLv6FurikoTrap_Draw__FP17daLv6FurikoTrap_c
 */
static void daLv6FurikoTrap_Draw(daLv6FurikoTrap_c* param_0) {
    // NONMATCHING
}

/* 80C72FF0-80C73010 000C50 0020+00 1/0 0/0 0/0 .text
 * daLv6FurikoTrap_Execute__FP17daLv6FurikoTrap_c               */
static void daLv6FurikoTrap_Execute(daLv6FurikoTrap_c* param_0) {
    // NONMATCHING
}

/* 80C73010-80C73030 000C70 0020+00 1/0 0/0 0/0 .text
 * daLv6FurikoTrap_Delete__FP17daLv6FurikoTrap_c                */
static void daLv6FurikoTrap_Delete(daLv6FurikoTrap_c* param_0) {
    // NONMATCHING
}

/* 80C73030-80C73050 000C90 0020+00 1/0 0/0 0/0 .text daLv6FurikoTrap_Create__FP10fopAc_ac_c */
static void daLv6FurikoTrap_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C73050-80C730AC 000CB0 005C+00 2/1 0/0 0/0 .text            __dt__21daLv6FurikoTrap_HIO_cFv */
daLv6FurikoTrap_HIO_c::~daLv6FurikoTrap_HIO_c() {
    // NONMATCHING
}

/* 80C730AC-80C7311C 000D0C 0070+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv6FurikoTrap_cpp
 */
void __sinit_d_a_obj_lv6FurikoTrap_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C730AC, __sinit_d_a_obj_lv6FurikoTrap_cpp);
#pragma pop

/* 80C73198-80C73198 000068 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

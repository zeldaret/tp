/**
 * @file d_a_obj_cb.cpp
 * 
*/

#include "d/actor/d_a_obj_cb.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__14daObj_Cb_HIO_cFv();
extern "C" static void daObj_Cb_Draw__FP12obj_cb_class();
extern "C" static void ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void action__FP12obj_cb_class();
extern "C" static void daObj_Cb_Execute__FP12obj_cb_class();
extern "C" static bool daObj_Cb_IsDelete__FP12obj_cb_class();
extern "C" static void daObj_Cb_Delete__FP12obj_cb_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daObj_Cb_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__14daObj_Cb_HIO_cFv();
extern "C" void __sinit_d_a_obj_cb_cpp();
extern "C" static void func_80BC57C0();
extern "C" static void func_80BC57C8();
extern "C" extern char const* const d_a_obj_cb__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80BC5854-80BC5874 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Cb_Method */
static actor_method_class l_daObj_Cb_Method = {
    (process_method_func)daObj_Cb_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Cb_Delete__FP12obj_cb_class,
    (process_method_func)daObj_Cb_Execute__FP12obj_cb_class,
    (process_method_func)daObj_Cb_IsDelete__FP12obj_cb_class,
    (process_method_func)daObj_Cb_Draw__FP12obj_cb_class,
};

/* 80BC5874-80BC58A4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_CB */
extern actor_process_profile_definition g_profile_OBJ_CB = {
  fpcLy_CURRENT_e,       // mLayerID
  3,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_OBJ_CB,           // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(obj_cb_class),  // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  49,                    // mPriority
  &l_daObj_Cb_Method,    // sub_method
  0x00040100,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 80BC58A4-80BC58B0 000050 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80BC58B0-80BC58BC 00005C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BC58BC-80BC58E0 000068 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BC57C8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BC57C0,
};

/* 80BC58E0-80BC58EC 00008C 000C+00 2/2 0/0 0/0 .data            __vt__14daObj_Cb_HIO_c */
SECTION_DATA extern void* __vt__14daObj_Cb_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daObj_Cb_HIO_cFv,
};

/* 80BC4B2C-80BC4B44 0000EC 0018+00 1/1 0/0 0/0 .text            __ct__14daObj_Cb_HIO_cFv */
daObj_Cb_HIO_c::daObj_Cb_HIO_c() {
    // NONMATCHING
}

/* 80BC4B44-80BC4BA8 000104 0064+00 1/0 0/0 0/0 .text            daObj_Cb_Draw__FP12obj_cb_class */
static void daObj_Cb_Draw(obj_cb_class* param_0) {
    // NONMATCHING
}

/* 80BC4BA8-80BC4BB4 000168 000C+00 1/1 0/0 0/0 .text
 * ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c            */
static void ride_call_back(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BC57E4-80BC57EC 000000 0004+04 1/1 0/0 0/0 .rodata          @3882 */
SECTION_RODATA static u8 const lit_3882[4 + 4 /* padding */] = {
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
COMPILER_STRIP_GATE(0x80BC57E4, &lit_3882);

/* 80BC57EC-80BC57F4 000008 0008+00 0/1 0/0 0/0 .rodata          @3883 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3883[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BC57EC, &lit_3883);
#pragma pop

/* 80BC57F4-80BC57FC 000010 0008+00 0/1 0/0 0/0 .rodata          @3884 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3884[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BC57F4, &lit_3884);
#pragma pop

/* 80BC57FC-80BC5804 000018 0008+00 0/1 0/0 0/0 .rodata          @3885 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3885[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BC57FC, &lit_3885);
#pragma pop

/* 80BC5804-80BC5808 000020 0004+00 0/1 0/0 0/0 .rodata          @3886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3886 = 30.0f;
COMPILER_STRIP_GATE(0x80BC5804, &lit_3886);
#pragma pop

/* 80BC5808-80BC580C 000024 0004+00 0/1 0/0 0/0 .rodata          @3887 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3887 = 5.0f;
COMPILER_STRIP_GATE(0x80BC5808, &lit_3887);
#pragma pop

/* 80BC580C-80BC5810 000028 0004+00 0/1 0/0 0/0 .rodata          @3888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3888 = 1.0f;
COMPILER_STRIP_GATE(0x80BC580C, &lit_3888);
#pragma pop

/* 80BC5810-80BC5814 00002C 0004+00 0/1 0/0 0/0 .rodata          @3889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3889 = 0.5f;
COMPILER_STRIP_GATE(0x80BC5810, &lit_3889);
#pragma pop

/* 80BC5814-80BC5818 000030 0004+00 0/1 0/0 0/0 .rodata          @3890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3890 = 60.0f;
COMPILER_STRIP_GATE(0x80BC5814, &lit_3890);
#pragma pop

/* 80BC5818-80BC581C 000034 0004+00 0/1 0/0 0/0 .rodata          @3891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3891 = -1.0f;
COMPILER_STRIP_GATE(0x80BC5818, &lit_3891);
#pragma pop

/* 80BC581C-80BC5820 000038 0004+00 0/1 0/0 0/0 .rodata          @3892 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3892 = 90.0f;
COMPILER_STRIP_GATE(0x80BC581C, &lit_3892);
#pragma pop

/* 80BC5820-80BC5824 00003C 0004+00 0/1 0/0 0/0 .rodata          @3893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3893 = 20.0f;
COMPILER_STRIP_GATE(0x80BC5820, &lit_3893);
#pragma pop

/* 80BC5824-80BC5828 000040 0004+00 0/1 0/0 0/0 .rodata          @3894 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3894 = -5.0f;
COMPILER_STRIP_GATE(0x80BC5824, &lit_3894);
#pragma pop

/* 80BC5828-80BC582C 000044 0004+00 0/1 0/0 0/0 .rodata          @3895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3895 = -30.0f;
COMPILER_STRIP_GATE(0x80BC5828, &lit_3895);
#pragma pop

/* 80BC582C-80BC5830 000048 0004+00 0/1 0/0 0/0 .rodata          @3896 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3896 = 5000.0f;
COMPILER_STRIP_GATE(0x80BC582C, &lit_3896);
#pragma pop

/* 80BC5830-80BC5834 00004C 0004+00 0/1 0/0 0/0 .rodata          @3897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3897 = 7000.0f;
COMPILER_STRIP_GATE(0x80BC5830, &lit_3897);
#pragma pop

/* 80BC5834-80BC5838 000050 0004+00 0/1 0/0 0/0 .rodata          @3898 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3898 = 15.0f;
COMPILER_STRIP_GATE(0x80BC5834, &lit_3898);
#pragma pop

/* 80BC5838-80BC583C 000054 0004+00 0/1 0/0 0/0 .rodata          @3899 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3899 = 10.0f;
COMPILER_STRIP_GATE(0x80BC5838, &lit_3899);
#pragma pop

/* 80BC583C-80BC5840 000058 0004+00 0/1 0/0 0/0 .rodata          @3900 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3900 = -3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BC583C, &lit_3900);
#pragma pop

/* 80BC5840-80BC5844 00005C 0004+00 0/1 0/0 0/0 .rodata          @3901 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3901 = 2.0f;
COMPILER_STRIP_GATE(0x80BC5840, &lit_3901);
#pragma pop

/* 80BC5844-80BC5848 000060 0004+00 0/1 0/0 0/0 .rodata          @3902 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3902 = -25.0f;
COMPILER_STRIP_GATE(0x80BC5844, &lit_3902);
#pragma pop

/* 80BC4BB4-80BC51B8 000174 0604+00 1/1 0/0 0/0 .text            action__FP12obj_cb_class */
static void action(obj_cb_class* param_0) {
    // NONMATCHING
}

/* 80BC51B8-80BC5240 000778 0088+00 2/1 0/0 0/0 .text            daObj_Cb_Execute__FP12obj_cb_class
 */
static void daObj_Cb_Execute(obj_cb_class* param_0) {
    // NONMATCHING
}

/* 80BC5240-80BC5248 000800 0008+00 1/0 0/0 0/0 .text            daObj_Cb_IsDelete__FP12obj_cb_class
 */
static bool daObj_Cb_IsDelete(obj_cb_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80BC584C-80BC584C 000068 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BC584C = "Obj_cb";
#pragma pop

/* 80BC58F8-80BC58FC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80BC58F8[4];

/* 80BC5248-80BC52CC 000808 0084+00 1/0 0/0 0/0 .text            daObj_Cb_Delete__FP12obj_cb_class
 */
static void daObj_Cb_Delete(obj_cb_class* param_0) {
    // NONMATCHING
}

/* 80BC52CC-80BC5408 00088C 013C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BC5848-80BC584C 000064 0004+00 1/1 0/0 0/0 .rodata          @4038 */
SECTION_RODATA static f32 const lit_4038 = 50.0f;
COMPILER_STRIP_GATE(0x80BC5848, &lit_4038);

/* 80BC58FC-80BC5908 00000C 000C+00 1/1 0/0 0/0 .bss             @3763 */
static u8 lit_3763[12];

/* 80BC5908-80BC5910 000018 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[8];

/* 80BC5408-80BC563C 0009C8 0234+00 1/0 0/0 0/0 .text            daObj_Cb_Create__FP10fopAc_ac_c */
static void daObj_Cb_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BC563C-80BC5684 000BFC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80BC5684-80BC56CC 000C44 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BC56CC-80BC573C 000C8C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80BC573C-80BC5784 000CFC 0048+00 2/1 0/0 0/0 .text            __dt__14daObj_Cb_HIO_cFv */
daObj_Cb_HIO_c::~daObj_Cb_HIO_c() {
    // NONMATCHING
}

/* 80BC5784-80BC57C0 000D44 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_cb_cpp */
void __sinit_d_a_obj_cb_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80BC5784, __sinit_d_a_obj_cb_cpp);
#pragma pop

/* 80BC57C0-80BC57C8 000D80 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80BC57C0() {
    // NONMATCHING
}

/* 80BC57C8-80BC57D0 000D88 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80BC57C8() {
    // NONMATCHING
}

/* 80BC584C-80BC584C 000068 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

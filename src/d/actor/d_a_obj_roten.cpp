/**
 * @file d_a_obj_roten.cpp
 * 
*/

#include "d/actor/d_a_obj_roten.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initBaseMtx__13daObj_Roten_cFv();
extern "C" void setBaseMtx__13daObj_Roten_cFv();
extern "C" void Create__13daObj_Roten_cFv();
extern "C" void CreateHeap__13daObj_Roten_cFv();
extern "C" void create__13daObj_Roten_cFv();
extern "C" void Execute__13daObj_Roten_cFPPA3_A4_f();
extern "C" void Draw__13daObj_Roten_cFv();
extern "C" void Delete__13daObj_Roten_cFv();
extern "C" void getResName__13daObj_Roten_cFv();
extern "C" static void daObj_Roten_Create__FPv();
extern "C" static void daObj_Roten_Delete__FPv();
extern "C" static void daObj_Roten_Execute__FPv();
extern "C" static void daObj_Roten_Draw__FPv();
extern "C" static bool daObj_Roten_IsDelete__FPv();
extern "C" void __dt__13daObj_Roten_cFv();
extern "C" extern char const* const d_a_obj_roten__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_BossLight_set__FP4cXyzP8_GXColorfUc();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 mStayNo__20dStage_roomControl_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80CC0B58-80CC0B94 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__13daObj_Roten_cFv */
void daObj_Roten_c::initBaseMtx() {
    // NONMATCHING
}

/* 80CC0B94-80CC0C20 0000B4 008C+00 2/2 0/0 0/0 .text            setBaseMtx__13daObj_Roten_cFv */
void daObj_Roten_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC1400-80CC1404 000000 0004+00 2/2 0/0 0/0 .rodata          @3778 */
SECTION_RODATA static f32 const lit_3778 = 10.0f;
COMPILER_STRIP_GATE(0x80CC1400, &lit_3778);

/* 80CC1404-80CC1408 000004 0004+00 0/1 0/0 0/0 .rodata          @3779 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3779 = 90.0f;
COMPILER_STRIP_GATE(0x80CC1404, &lit_3779);
#pragma pop

/* 80CC1408-80CC140C 000008 0004+00 0/1 0/0 0/0 .rodata          @3780 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3780 = 270.0f;
COMPILER_STRIP_GATE(0x80CC1408, &lit_3780);
#pragma pop

/* 80CC140C-80CC1410 00000C 0004+00 0/2 0/0 0/0 .rodata          @3781 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3781[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CC140C, &lit_3781);
#pragma pop

/* 80CC1410-80CC1414 000010 0004+00 0/1 0/0 0/0 .rodata          @3782 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3782 = -80.0f;
COMPILER_STRIP_GATE(0x80CC1410, &lit_3782);
#pragma pop

/* 80CC1414-80CC1418 000014 0004+00 0/1 0/0 0/0 .rodata          @3783 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3783 = 177.0f;
COMPILER_STRIP_GATE(0x80CC1414, &lit_3783);
#pragma pop

/* 80CC1418-80CC141C 000018 0004+00 0/1 0/0 0/0 .rodata          @3784 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3784 = 110.0f;
COMPILER_STRIP_GATE(0x80CC1418, &lit_3784);
#pragma pop

/* 80CC141C-80CC1420 00001C 0004+00 0/1 0/0 0/0 .rodata          @3785 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3785 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CC141C, &lit_3785);
#pragma pop

/* 80CC1420-80CC1424 000020 0004+00 0/1 0/0 0/0 .rodata          @3786 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3786 = 0.25f;
COMPILER_STRIP_GATE(0x80CC1420, &lit_3786);
#pragma pop

/* 80CC1424-80CC1428 000024 0004+00 1/3 0/0 0/0 .rodata          @3787 */
SECTION_RODATA static f32 const lit_3787 = 1.0f;
COMPILER_STRIP_GATE(0x80CC1424, &lit_3787);

/* 80CC0C20-80CC0EC4 000140 02A4+00 1/0 0/0 0/0 .text            Create__13daObj_Roten_cFv */
void daObj_Roten_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC1440-80CC1440 000040 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CC1440 = "Obj_roten";
#pragma pop

/* 80CC144C-80CC1450 -00001 0004+00 1/1 0/0 0/0 .data            l_resFileName */
SECTION_DATA static void* l_resFileName = (void*)&d_a_obj_roten__stringBase0;

/* 80CC1450-80CC1454 000004 0004+00 1/1 0/0 0/0 .data            l_bmdFileIdx */
SECTION_DATA static u32 l_bmdFileIdx = 0x00000004;

/* 80CC0EC4-80CC0F40 0003E4 007C+00 1/0 0/0 0/0 .text            CreateHeap__13daObj_Roten_cFv */
void daObj_Roten_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC1454-80CC1458 000008 0004+00 1/1 0/0 0/0 .data            l_dzbFileIdx */
SECTION_DATA static u32 l_dzbFileIdx = 0x00000007;

/* 80CC1458-80CC1478 -00001 0020+00 1/0 0/0 0/0 .data            daObj_Roten_MethodTable */
static actor_method_class daObj_Roten_MethodTable = {
    (process_method_func)daObj_Roten_Create__FPv,
    (process_method_func)daObj_Roten_Delete__FPv,
    (process_method_func)daObj_Roten_Execute__FPv,
    (process_method_func)daObj_Roten_IsDelete__FPv,
    (process_method_func)daObj_Roten_Draw__FPv,
};

/* 80CC1478-80CC14A8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_ROTEN */
extern actor_process_profile_definition g_profile_OBJ_ROTEN = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_OBJ_ROTEN,           // mProcName
  &g_fpcLf_Method.mBase,    // sub_method
  sizeof(daObj_Roten_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  67,                       // mPriority
  &daObj_Roten_MethodTable, // sub_method
  0x00040000,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80CC14A8-80CC14D4 00005C 002C+00 2/2 0/0 0/0 .data            __vt__13daObj_Roten_c */
SECTION_DATA extern void* __vt__13daObj_Roten_c[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daObj_Roten_cFv,
    (void*)Create__13daObj_Roten_cFv,
    (void*)Execute__13daObj_Roten_cFPPA3_A4_f,
    (void*)Draw__13daObj_Roten_cFv,
    (void*)Delete__13daObj_Roten_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)__dt__13daObj_Roten_cFv,
};

/* 80CC0F40-80CC1038 000460 00F8+00 1/1 0/0 0/0 .text            create__13daObj_Roten_cFv */
void daObj_Roten_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC1428-80CC142C 000028 0004+00 1/1 0/0 0/0 .rodata          @3844 */
SECTION_RODATA static f32 const lit_3844 = -1.0f;
COMPILER_STRIP_GATE(0x80CC1428, &lit_3844);

/* 80CC1038-80CC1138 000558 0100+00 1/0 0/0 0/0 .text            Execute__13daObj_Roten_cFPPA3_A4_f
 */
void daObj_Roten_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC142C-80CC1430 00002C 0004+00 0/1 0/0 0/0 .rodata          @3853 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3853 = 0xBC6642FF;
COMPILER_STRIP_GATE(0x80CC142C, &lit_3853);
#pragma pop

/* 80CC1430-80CC1434 000030 0004+00 0/1 0/0 0/0 .rodata          @3878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3878 = 0.5f;
COMPILER_STRIP_GATE(0x80CC1430, &lit_3878);
#pragma pop

/* 80CC1434-80CC1438 000034 0004+00 0/1 0/0 0/0 .rodata          @3879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3879 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CC1434, &lit_3879);
#pragma pop

/* 80CC1438-80CC143C 000038 0004+00 0/1 0/0 0/0 .rodata          @3880 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3880 = 0x38D1B717;
COMPILER_STRIP_GATE(0x80CC1438, &lit_3880);
#pragma pop

/* 80CC143C-80CC1440 00003C 0004+00 0/1 0/0 0/0 .rodata          @3881 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3881 = 0x358637BD;
COMPILER_STRIP_GATE(0x80CC143C, &lit_3881);
#pragma pop

/* 80CC1138-80CC1254 000658 011C+00 1/0 0/0 0/0 .text            Draw__13daObj_Roten_cFv */
void daObj_Roten_c::Draw() {
    // NONMATCHING
}

/* 80CC1254-80CC12E4 000774 0090+00 1/0 0/0 0/0 .text            Delete__13daObj_Roten_cFv */
void daObj_Roten_c::Delete() {
    // NONMATCHING
}

/* 80CC12E4-80CC12F4 000804 0010+00 3/3 0/0 0/0 .text            getResName__13daObj_Roten_cFv */
void daObj_Roten_c::getResName() {
    // NONMATCHING
}

/* 80CC12F4-80CC1314 000814 0020+00 1/0 0/0 0/0 .text            daObj_Roten_Create__FPv */
static void daObj_Roten_Create(void* param_0) {
    // NONMATCHING
}

/* 80CC1314-80CC1334 000834 0020+00 1/0 0/0 0/0 .text            daObj_Roten_Delete__FPv */
static void daObj_Roten_Delete(void* param_0) {
    // NONMATCHING
}

/* 80CC1334-80CC1354 000854 0020+00 1/0 0/0 0/0 .text            daObj_Roten_Execute__FPv */
static void daObj_Roten_Execute(void* param_0) {
    // NONMATCHING
}

/* 80CC1354-80CC1380 000874 002C+00 1/0 0/0 0/0 .text            daObj_Roten_Draw__FPv */
static void daObj_Roten_Draw(void* param_0) {
    // NONMATCHING
}

/* 80CC1380-80CC1388 0008A0 0008+00 1/0 0/0 0/0 .text            daObj_Roten_IsDelete__FPv */
static bool daObj_Roten_IsDelete(void* param_0) {
    return true;
}

/* 80CC1388-80CC13F8 0008A8 0070+00 1/0 0/0 0/0 .text            __dt__13daObj_Roten_cFv */
daObj_Roten_c::~daObj_Roten_c() {
    // NONMATCHING
}

/* 80CC1440-80CC1440 000040 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
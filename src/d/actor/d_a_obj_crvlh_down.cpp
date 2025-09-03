/**
 * @file d_a_obj_crvlh_down.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_crvlh_down.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initCcCylinder__15daObjCRVLH_DW_cFv();
extern "C" void SetCcSyl__15daObjCRVLH_DW_cFv();
extern "C" static void daObjCRVLH_DW_Create__FP10fopAc_ac_c();
extern "C" static void daObjCRVLH_DW_Delete__FP15daObjCRVLH_DW_c();
extern "C" void BgRelease__15daObjCRVLH_DW_cFv();
extern "C" void Break__15daObjCRVLH_DW_cFv();
extern "C" void Obj_Hit__15daObjCRVLH_DW_cFv();
extern "C" void setBaseMtx__15daObjCRVLH_DW_cFv();
extern "C" static void daObjCRVLH_DW_Draw__FP15daObjCRVLH_DW_c();
extern "C" static void daObjCRVLH_DW_Execute__FP15daObjCRVLH_DW_c();
extern "C" void CreateHeap__15daObjCRVLH_DW_cFv();
extern "C" void create__15daObjCRVLH_DW_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" static bool daObjCRVLH_DW_IsDelete__FP15daObjCRVLH_DW_c();
extern "C" void Create__15daObjCRVLH_DW_cFv();
extern "C" void Execute__15daObjCRVLH_DW_cFPPA3_A4_f();
extern "C" void Draw__15daObjCRVLH_DW_cFv();
extern "C" void Delete__15daObjCRVLH_DW_cFv();
extern "C" extern char const* const d_a_obj_crvlh_down__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
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
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__5csXyzFsss();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void HahenSet__15daObjCRVHAHEN_cF4cXyz4cXyz4cXyz4cXyzf();
extern "C" void HakaiSet__15daObjCRVLH_UP_cFv();

//
// Declarations:
//

/* ############################################################################################## */
/* 80BD4D04-80BD4D48 000000 0044+00 5/5 0/0 0/0 .rodata          ccCylSrc$3655 */
const static dCcD_SrcCyl ccCylSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x400000, 0x11}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        250.0f, // mRadius
        400.0f // mHeight
    } // mCyl
};

/* 80BD4138-80BD41A4 000078 006C+00 1/1 0/0 0/0 .text            initCcCylinder__15daObjCRVLH_DW_cFv
 */
void daObjCRVLH_DW_c::initCcCylinder() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD4D48-80BD4D4C 000044 0004+00 1/3 0/0 0/0 .rodata          @3670 */
SECTION_RODATA static f32 const lit_3670 = 100.0f;
COMPILER_STRIP_GATE(0x80BD4D48, &lit_3670);

/* 80BD4D4C-80BD4D50 000048 0004+00 1/1 0/0 0/0 .rodata          @3671 */
SECTION_RODATA static f32 const lit_3671 = 200.0f;
COMPILER_STRIP_GATE(0x80BD4D4C, &lit_3671);

/* 80BD41A4-80BD4224 0000E4 0080+00 1/1 0/0 0/0 .text            SetCcSyl__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::SetCcSyl() {
    // NONMATCHING
}

/* 80BD4224-80BD4244 000164 0020+00 1/0 0/0 0/0 .text daObjCRVLH_DW_Create__FP10fopAc_ac_c */
static void daObjCRVLH_DW_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BD4244-80BD4268 000184 0024+00 1/0 0/0 0/0 .text daObjCRVLH_DW_Delete__FP15daObjCRVLH_DW_c */
static void daObjCRVLH_DW_Delete(daObjCRVLH_DW_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD4D88-80BD4D88 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BD4D88 = "CrvLH_Dw";
SECTION_DEAD static char const* const stringBase_80BD4D91 = "Release Error\n";
#pragma pop

/* 80BD4268-80BD42D8 0001A8 0070+00 1/1 0/0 0/0 .text            BgRelease__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::BgRelease() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD4D50-80BD4D54 00004C 0004+00 0/1 0/0 0/0 .rodata          @3754 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3754 = 1.0f;
COMPILER_STRIP_GATE(0x80BD4D50, &lit_3754);
#pragma pop

/* 80BD4D54-80BD4D58 000050 0004+00 0/2 0/0 0/0 .rodata          @3755 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3755[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BD4D54, &lit_3755);
#pragma pop

/* 80BD4D58-80BD4D5C 000054 0004+00 0/1 0/0 0/0 .rodata          @3756 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3756 = -1.0f;
COMPILER_STRIP_GATE(0x80BD4D58, &lit_3756);
#pragma pop

/* 80BD42D8-80BD45A4 000218 02CC+00 1/1 0/0 0/0 .text            Break__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::Break() {
    // NONMATCHING
}

/* 80BD45A4-80BD4644 0004E4 00A0+00 1/1 0/0 0/0 .text            Obj_Hit__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::Obj_Hit() {
    // NONMATCHING
}

/* 80BD4644-80BD46A0 000584 005C+00 1/1 0/0 0/0 .text            setBaseMtx__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::setBaseMtx() {
    // NONMATCHING
}

/* 80BD46A0-80BD46CC 0005E0 002C+00 1/0 0/0 0/0 .text daObjCRVLH_DW_Draw__FP15daObjCRVLH_DW_c */
static void daObjCRVLH_DW_Draw(daObjCRVLH_DW_c* param_0) {
    // NONMATCHING
}

/* 80BD46CC-80BD46EC 00060C 0020+00 2/1 0/0 0/0 .text daObjCRVLH_DW_Execute__FP15daObjCRVLH_DW_c
 */
static void daObjCRVLH_DW_Execute(daObjCRVLH_DW_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD4D88-80BD4D88 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BD4DA0 = "U_CrvLH_Down.bmd";
#pragma pop

/* 80BD4DC4-80BD4DC8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_crvlh_down__stringBase0;

/* 80BD46EC-80BD4764 00062C 0078+00 1/0 0/0 0/0 .text            CreateHeap__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD4D5C-80BD4D60 000058 0004+00 0/1 0/0 0/0 .rodata          @3911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3911 = -9.0f;
COMPILER_STRIP_GATE(0x80BD4D5C, &lit_3911);
#pragma pop

/* 80BD4D60-80BD4D64 00005C 0004+00 0/2 0/0 0/0 .rodata          @3912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3912 = -500.0f;
COMPILER_STRIP_GATE(0x80BD4D60, &lit_3912);
#pragma pop

/* 80BD4D64-80BD4D68 000060 0004+00 0/2 0/0 0/0 .rodata          @3913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3913 = 500.0f;
COMPILER_STRIP_GATE(0x80BD4D64, &lit_3913);
#pragma pop

/* 80BD4D68-80BD4D6C 000064 0004+00 0/2 0/0 0/0 .rodata          @3914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3914 = 1000.0f;
COMPILER_STRIP_GATE(0x80BD4D68, &lit_3914);
#pragma pop

/* 80BD4D88-80BD4D88 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BD4DB1 = "U_CrvLH_Down.dzb";
#pragma pop

/* 80BD4DC8-80BD4DE8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCRVLH_DW_Method */
static actor_method_class l_daObjCRVLH_DW_Method = {
    (process_method_func)daObjCRVLH_DW_Create__FP10fopAc_ac_c,
    (process_method_func)daObjCRVLH_DW_Delete__FP15daObjCRVLH_DW_c,
    (process_method_func)daObjCRVLH_DW_Execute__FP15daObjCRVLH_DW_c,
    (process_method_func)daObjCRVLH_DW_IsDelete__FP15daObjCRVLH_DW_c,
    (process_method_func)daObjCRVLH_DW_Draw__FP15daObjCRVLH_DW_c,
};

/* 80BD4DE8-80BD4E18 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_CRVLH_DW */
extern actor_process_profile_definition g_profile_Obj_CRVLH_DW = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_CRVLH_DW,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjCRVLH_DW_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  471,                     // mPriority
  &l_daObjCRVLH_DW_Method, // sub_method
  0x00040180,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80BD4E18-80BD4E24 000054 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80BD4E24-80BD4E30 000060 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BD4E30-80BD4E58 00006C 0028+00 1/1 0/0 0/0 .data            __vt__15daObjCRVLH_DW_c */
SECTION_DATA extern void* __vt__15daObjCRVLH_DW_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__15daObjCRVLH_DW_cFv,
    (void*)Create__15daObjCRVLH_DW_cFv,
    (void*)Execute__15daObjCRVLH_DW_cFPPA3_A4_f,
    (void*)Draw__15daObjCRVLH_DW_cFv,
    (void*)Delete__15daObjCRVLH_DW_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80BD4764-80BD49EC 0006A4 0288+00 1/1 0/0 0/0 .text            create__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::create() {
    // NONMATCHING
}

/* 80BD49EC-80BD4A34 00092C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80BD4A34-80BD4A7C 000974 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BD4A7C-80BD4A84 0009BC 0008+00 1/0 0/0 0/0 .text daObjCRVLH_DW_IsDelete__FP15daObjCRVLH_DW_c
 */
static bool daObjCRVLH_DW_IsDelete(daObjCRVLH_DW_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80BD4D6C-80BD4D70 000068 0004+00 0/1 0/0 0/0 .rodata          @3990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3990 = -1000.0f;
COMPILER_STRIP_GATE(0x80BD4D6C, &lit_3990);
#pragma pop

/* 80BD4A84-80BD4AC8 0009C4 0044+00 1/0 0/0 0/0 .text            Create__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD4D70-80BD4D74 00006C 0004+00 0/1 0/0 0/0 .rodata          @4039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4039 = 250.0f;
COMPILER_STRIP_GATE(0x80BD4D70, &lit_4039);
#pragma pop

/* 80BD4D74-80BD4D78 000070 0004+00 0/1 0/0 0/0 .rodata          @4040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4040 = 80.0f;
COMPILER_STRIP_GATE(0x80BD4D74, &lit_4040);
#pragma pop

/* 80BD4D78-80BD4D7C 000074 0004+00 0/1 0/0 0/0 .rodata          @4041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4041 = 10.0f;
COMPILER_STRIP_GATE(0x80BD4D78, &lit_4041);
#pragma pop

/* 80BD4D7C-80BD4D80 000078 0004+00 0/1 0/0 0/0 .rodata          @4042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4042 = 30.0f;
COMPILER_STRIP_GATE(0x80BD4D7C, &lit_4042);
#pragma pop

/* 80BD4D80-80BD4D84 00007C 0004+00 0/1 0/0 0/0 .rodata          @4043 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4043 = 20.0f;
COMPILER_STRIP_GATE(0x80BD4D80, &lit_4043);
#pragma pop

/* 80BD4D84-80BD4D88 000080 0004+00 0/1 0/0 0/0 .rodata          @4044 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4044 = 3000.0f;
COMPILER_STRIP_GATE(0x80BD4D84, &lit_4044);
#pragma pop

/* 80BD4AC8-80BD4C44 000A08 017C+00 1/0 0/0 0/0 .text Execute__15daObjCRVLH_DW_cFPPA3_A4_f */
void daObjCRVLH_DW_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80BD4C44-80BD4CC8 000B84 0084+00 1/0 0/0 0/0 .text            Draw__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::Draw() {
    // NONMATCHING
}

/* 80BD4CC8-80BD4CFC 000C08 0034+00 1/0 0/0 0/0 .text            Delete__15daObjCRVLH_DW_cFv */
void daObjCRVLH_DW_c::Delete() {
    // NONMATCHING
}

/* 80BD4D88-80BD4D88 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

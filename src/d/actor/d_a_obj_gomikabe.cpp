/**
 * @file d_a_obj_gomikabe.cpp
 * 
*/

#include "d/actor/d_a_obj_gomikabe.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__19daObjGOMIKABE_HIO_cFv();
extern "C" void initCcCylinder__15daObjGOMIKABE_cFv();
extern "C" void SetCcCyl__15daObjGOMIKABE_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" static void daObjGOMIKABE_Create__FP10fopAc_ac_c();
extern "C" static void daObjGOMIKABE_Delete__FP15daObjGOMIKABE_c();
extern "C" void WaitAction__15daObjGOMIKABE_cFv();
extern "C" void BreakChk__15daObjGOMIKABE_cFv();
extern "C" void BreakSet__15daObjGOMIKABE_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void getWaterStream__15daObjGOMIKABE_cFR4cXyzR4cXyzf();
extern "C" void SpeedSet__15daObjGOMIKABE_cFv();
extern "C" void BreakAction__15daObjGOMIKABE_cFv();
extern "C" void CheckCull__15daObjGOMIKABE_cFv();
extern "C" void checkViewArea__15daObjGOMIKABE_cF4cXyz();
extern "C" void Action__15daObjGOMIKABE_cFv();
extern "C" void setBaseMtx__15daObjGOMIKABE_cFv();
extern "C" void setBaseMtx2__15daObjGOMIKABE_cFv();
extern "C" static void daObjGOMIKABE_Draw__FP15daObjGOMIKABE_c();
extern "C" static void daObjGOMIKABE_Execute__FP15daObjGOMIKABE_c();
extern "C" void CreateHeap__15daObjGOMIKABE_cFv();
extern "C" void create__15daObjGOMIKABE_cFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __ct__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" static bool daObjGOMIKABE_IsDelete__FP15daObjGOMIKABE_c();
extern "C" void Create__15daObjGOMIKABE_cFv();
extern "C" void Execute__15daObjGOMIKABE_cFPPA3_A4_f();
extern "C" void Draw__15daObjGOMIKABE_cFv();
extern "C" void Delete__15daObjGOMIKABE_cFv();
extern "C" void __dt__19daObjGOMIKABE_HIO_cFv();
extern "C" void __sinit_d_a_obj_gomikabe_cpp();
extern "C" static void func_80BFFBF8();
extern "C" static void func_80BFFC00();
extern "C" extern char const* const d_a_obj_gomikabe__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_setupStageTexture__FP12J3DModelData();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void mDoLib_project__FP3VecP3Vec();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii();
extern "C" void waterCheck__11fopAcM_wt_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
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
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__5csXyzFsss();
extern "C" void __apl__5csXyzFR5csXyz();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" f32 mWaterY__11fopAcM_wt_c[1 + 1 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80BFFCF4-80BFFCF4 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BFFCF4 = "GomiKabe";
#pragma pop

/* 80BFFD30-80BFFD34 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_gomikabe__stringBase0;

/* 80BFFD34-80BFFD54 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjGOMIKABE_Method */
static actor_method_class l_daObjGOMIKABE_Method = {
    (process_method_func)daObjGOMIKABE_Create__FP10fopAc_ac_c,
    (process_method_func)daObjGOMIKABE_Delete__FP15daObjGOMIKABE_c,
    (process_method_func)daObjGOMIKABE_Execute__FP15daObjGOMIKABE_c,
    (process_method_func)daObjGOMIKABE_IsDelete__FP15daObjGOMIKABE_c,
    (process_method_func)daObjGOMIKABE_Draw__FP15daObjGOMIKABE_c,
};

/* 80BFFD54-80BFFD84 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_GOMIKABE */
extern actor_process_profile_definition g_profile_Obj_GOMIKABE = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_GOMIKABE,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjGOMIKABE_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  519,                     // mPriority
  &l_daObjGOMIKABE_Method, // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80BFFD84-80BFFD90 000054 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80BFFD90-80BFFDB4 000060 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BFFC00,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BFFBF8,
};

/* 80BFFDB4-80BFFDC0 000084 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BFFDC0-80BFFDCC 000090 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80BFFDCC-80BFFDF4 00009C 0028+00 1/1 0/0 0/0 .data            __vt__15daObjGOMIKABE_c */
SECTION_DATA extern void* __vt__15daObjGOMIKABE_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__15daObjGOMIKABE_cFv,
    (void*)Create__15daObjGOMIKABE_cFv,
    (void*)Execute__15daObjGOMIKABE_cFPPA3_A4_f,
    (void*)Draw__15daObjGOMIKABE_cFv,
    (void*)Delete__15daObjGOMIKABE_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80BFFDF4-80BFFE00 0000C4 000C+00 2/2 0/0 0/0 .data            __vt__19daObjGOMIKABE_HIO_c */
SECTION_DATA extern void* __vt__19daObjGOMIKABE_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daObjGOMIKABE_HIO_cFv,
};

/* 80BFE22C-80BFE244 0000EC 0018+00 1/1 0/0 0/0 .text            __ct__19daObjGOMIKABE_HIO_cFv */
daObjGOMIKABE_HIO_c::daObjGOMIKABE_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFFC1C-80BFFC5C 000000 0040+00 7/7 0/0 0/0 .rodata          ccSphSrc$3769 */
const static dCcD_SrcSph ccSphSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x2020, 0x11}, 0x78}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 200.0f} // mSph
    } // mSphAttr
};

/* 80BFE244-80BFE2CC 000104 0088+00 1/1 0/0 0/0 .text            initCcCylinder__15daObjGOMIKABE_cFv
 */
void daObjGOMIKABE_c::initCcCylinder() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFFC5C-80BFFC60 000040 0004+00 0/1 0/0 0/0 .rodata          @3801 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3801 = -200.0f;
COMPILER_STRIP_GATE(0x80BFFC5C, &lit_3801);
#pragma pop

/* 80BFFC60-80BFFC64 000044 0004+00 0/4 0/0 0/0 .rodata          @3802 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3802[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BFFC60, &lit_3802);
#pragma pop

/* 80BFFC64-80BFFC6C 000048 0004+04 0/1 0/0 0/0 .rodata          @3803 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3803[1 + 1 /* padding */] = {
    200.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80BFFC64, &lit_3803);
#pragma pop

/* 80BFFC6C-80BFFC74 000050 0008+00 1/3 0/0 0/0 .rodata          @3805 */
SECTION_RODATA static u8 const lit_3805[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BFFC6C, &lit_3805);

/* 80BFE2CC-80BFE3FC 00018C 0130+00 1/1 0/0 0/0 .text            SetCcCyl__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::SetCcCyl() {
    // NONMATCHING
}

/* 80BFE3FC-80BFE438 0002BC 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80BFE438-80BFE458 0002F8 0020+00 1/0 0/0 0/0 .text daObjGOMIKABE_Create__FP10fopAc_ac_c */
static void daObjGOMIKABE_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BFE458-80BFE47C 000318 0024+00 1/0 0/0 0/0 .text daObjGOMIKABE_Delete__FP15daObjGOMIKABE_c */
static void daObjGOMIKABE_Delete(daObjGOMIKABE_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFFC74-80BFFC78 000058 0004+00 1/2 0/0 0/0 .rodata          @3842 */
SECTION_RODATA static f32 const lit_3842 = 300.0f;
COMPILER_STRIP_GATE(0x80BFFC74, &lit_3842);

/* 80BFE47C-80BFE4C4 00033C 0048+00 1/1 0/0 0/0 .text            WaitAction__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::WaitAction() {
    // NONMATCHING
}

/* 80BFE4C4-80BFE52C 000384 0068+00 1/1 0/0 0/0 .text            BreakChk__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::BreakChk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFFC78-80BFFC7C 00005C 0004+00 0/1 0/0 0/0 .rodata          @3977 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3977 = 50.0f;
COMPILER_STRIP_GATE(0x80BFFC78, &lit_3977);
#pragma pop

/* 80BFFC7C-80BFFC80 000060 0004+00 0/1 0/0 0/0 .rodata          @3978 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3978 = 15.0f;
COMPILER_STRIP_GATE(0x80BFFC7C, &lit_3978);
#pragma pop

/* 80BFFC80-80BFFC84 000064 0004+00 0/1 0/0 0/0 .rodata          @3979 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3979 = 10.0f;
COMPILER_STRIP_GATE(0x80BFFC80, &lit_3979);
#pragma pop

/* 80BFFC84-80BFFC88 000068 0004+00 0/3 0/0 0/0 .rodata          @3980 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3980 = 1000.0f;
COMPILER_STRIP_GATE(0x80BFFC84, &lit_3980);
#pragma pop

/* 80BFFC88-80BFFC8C 00006C 0004+00 0/1 0/0 0/0 .rodata          @3981 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3981 = 32000.0f;
COMPILER_STRIP_GATE(0x80BFFC88, &lit_3981);
#pragma pop

/* 80BFFC8C-80BFFC90 000070 0004+00 0/1 0/0 0/0 .rodata          @3982 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3982 = -50.0f;
COMPILER_STRIP_GATE(0x80BFFC8C, &lit_3982);
#pragma pop

/* 80BFFC90-80BFFC94 000074 0004+00 0/1 0/0 0/0 .rodata          @3983 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3983 = 5.0f;
COMPILER_STRIP_GATE(0x80BFFC90, &lit_3983);
#pragma pop

/* 80BFFC94-80BFFC98 000078 0004+00 0/2 0/0 0/0 .rodata          @3984 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3984 = 1.0f;
COMPILER_STRIP_GATE(0x80BFFC94, &lit_3984);
#pragma pop

/* 80BFFC98-80BFFC9C 00007C 0004+00 0/1 0/0 0/0 .rodata          @3985 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3985 = -1.0f;
COMPILER_STRIP_GATE(0x80BFFC98, &lit_3985);
#pragma pop

/* 80BFE52C-80BFEA24 0003EC 04F8+00 1/1 0/0 1/1 .text            BreakSet__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::BreakSet() {
    // NONMATCHING
}

/* 80BFEA24-80BFEA60 0008E4 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFFC9C-80BFFCA0 000080 0004+00 1/1 0/0 0/0 .rodata          @4011 */
SECTION_RODATA static f32 const lit_4011 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BFFC9C, &lit_4011);

/* 80BFFCA0-80BFFCA4 000084 0004+00 1/1 0/0 0/0 .rodata          @4012 */
SECTION_RODATA static f32 const lit_4012 = 0.5f;
COMPILER_STRIP_GATE(0x80BFFCA0, &lit_4012);

/* 80BFEA60-80BFEB90 000920 0130+00 1/1 0/0 0/0 .text
 * getWaterStream__15daObjGOMIKABE_cFR4cXyzR4cXyzf              */
void daObjGOMIKABE_c::getWaterStream(cXyz& param_0, cXyz& param_1, f32 param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFFCA4-80BFFCAC 000088 0008+00 0/0 0/0 0/0 .rodata          @4156 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4156[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BFFCA4, &lit_4156);
#pragma pop

/* 80BFFCAC-80BFFCB4 000090 0008+00 0/0 0/0 0/0 .rodata          @4157 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4157[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BFFCAC, &lit_4157);
#pragma pop

/* 80BFFCB4-80BFFCBC 000098 0008+00 0/0 0/0 0/0 .rodata          @4158 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4158[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BFFCB4, &lit_4158);
#pragma pop

/* 80BFFCBC-80BFFCC0 0000A0 0004+00 0/0 0/0 0/0 .rodata          @4159 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4159 = 2.0f;
COMPILER_STRIP_GATE(0x80BFFCBC, &lit_4159);
#pragma pop

/* 80BFFCC0-80BFFCC4 0000A4 0004+00 0/0 0/0 0/0 .rodata          @4160 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4160 = 3000.0f;
COMPILER_STRIP_GATE(0x80BFFCC0, &lit_4160);
#pragma pop

/* 80BFFCC4-80BFFCC8 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4278 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4278 = 100.0f;
COMPILER_STRIP_GATE(0x80BFFCC4, &lit_4278);
#pragma pop

/* 80BFEB90-80BFED54 000A50 01C4+00 1/1 0/0 0/0 .text            SpeedSet__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::SpeedSet() {
    // NONMATCHING
}

/* 80BFED54-80BFED74 000C14 0020+00 1/1 0/0 0/0 .text            BreakAction__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::BreakAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFFCC8-80BFFCCC 0000AC 0004+00 1/1 0/0 0/0 .rodata          @4308 */
SECTION_RODATA static f32 const lit_4308 = 7000.0f;
COMPILER_STRIP_GATE(0x80BFFCC8, &lit_4308);

/* 80BFED74-80BFEE24 000C34 00B0+00 1/1 0/0 0/0 .text            CheckCull__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::CheckCull() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFFCCC-80BFFCD0 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4321 = 608.0f;
COMPILER_STRIP_GATE(0x80BFFCCC, &lit_4321);
#pragma pop

/* 80BFFCD0-80BFFCD4 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4322 = 448.0f;
COMPILER_STRIP_GATE(0x80BFFCD0, &lit_4322);
#pragma pop

/* 80BFEE24-80BFEEA8 000CE4 0084+00 1/1 0/0 0/0 .text checkViewArea__15daObjGOMIKABE_cF4cXyz */
void daObjGOMIKABE_c::checkViewArea(cXyz param_0) {
    // NONMATCHING
}

/* 80BFEEA8-80BFEF20 000D68 0078+00 1/1 0/0 0/0 .text            Action__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::Action() {
    // NONMATCHING
}

/* 80BFEF20-80BFEF84 000DE0 0064+00 1/1 0/0 0/0 .text            setBaseMtx__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::setBaseMtx() {
    // NONMATCHING
}

/* 80BFEF84-80BFF018 000E44 0094+00 2/2 0/0 0/0 .text            setBaseMtx2__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::setBaseMtx2() {
    // NONMATCHING
}

/* 80BFF018-80BFF044 000ED8 002C+00 1/0 0/0 0/0 .text daObjGOMIKABE_Draw__FP15daObjGOMIKABE_c */
static void daObjGOMIKABE_Draw(daObjGOMIKABE_c* param_0) {
    // NONMATCHING
}

/* 80BFF044-80BFF064 000F04 0020+00 2/1 0/0 0/0 .text daObjGOMIKABE_Execute__FP15daObjGOMIKABE_c
 */
static void daObjGOMIKABE_Execute(daObjGOMIKABE_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFFCF4-80BFFCF4 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BFFCFD = "M_Gomikabe.bmd";
SECTION_DEAD static char const* const stringBase_80BFFD0C = "M_Gomikabe_Hahen.bmd";
#pragma pop

/* 80BFF064-80BFF164 000F24 0100+00 1/0 0/0 0/0 .text            CreateHeap__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFFCD4-80BFFCD8 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4498 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80BFFCD4, &lit_4498);
#pragma pop

/* 80BFFCD8-80BFFCDC 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4499 = 30.0f;
COMPILER_STRIP_GATE(0x80BFFCD8, &lit_4499);
#pragma pop

/* 80BFFCDC-80BFFCE0 0000C0 0004+00 0/2 0/0 0/0 .rodata          @4500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4500 = -1000.0f;
COMPILER_STRIP_GATE(0x80BFFCDC, &lit_4500);
#pragma pop

/* 80BFFCE0-80BFFCE4 0000C4 0004+00 0/2 0/0 0/0 .rodata          @4501 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4501 = -500.0f;
COMPILER_STRIP_GATE(0x80BFFCE0, &lit_4501);
#pragma pop

/* 80BFFCE4-80BFFCEC 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4503 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4503[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BFFCE4, &lit_4503);
#pragma pop

/* 80BFFCF4-80BFFCF4 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BFFD21 = "M_Gomikabe.dzb";
#pragma pop

/* 80BFFE08-80BFFE0C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80BFFE08[4];

/* 80BFFE0C-80BFFE18 00000C 000C+00 1/1 0/0 0/0 .bss             @3761 */
static u8 lit_3761[12];

/* 80BFFE18-80BFFE20 000018 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[8];

/* 80BFF164-80BFF5B4 001024 0450+00 1/1 0/0 0/0 .text            create__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::create() {
    // NONMATCHING
}

/* 80BFF5B4-80BFF680 001474 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80BFF680-80BFF704 001540 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80BFF704-80BFF74C 0015C4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80BFF74C-80BFF794 00160C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BFF794-80BFF804 001654 0070+00 4/3 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80BFF804-80BFF858 0016C4 0054+00 1/1 0/0 0/0 .text            __ct__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::dBgS_ObjAcch() {
extern "C" void __ct__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80BFF858-80BFF8C8 001718 0070+00 2/1 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80BFF8C8-80BFF8CC 001788 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80BFF8CC-80BFF8D0 00178C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80BFF8D0-80BFF8D8 001790 0008+00 1/0 0/0 0/0 .text daObjGOMIKABE_IsDelete__FP15daObjGOMIKABE_c
 */
static bool daObjGOMIKABE_IsDelete(daObjGOMIKABE_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80BFFCEC-80BFFCF0 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4607 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4607 = 500.0f;
COMPILER_STRIP_GATE(0x80BFFCEC, &lit_4607);
#pragma pop

/* 80BFF8D8-80BFF938 001798 0060+00 1/0 0/0 0/0 .text            Create__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFFCF0-80BFFCF4 0000D4 0004+00 1/1 0/0 0/0 .rodata          @4620 */
SECTION_RODATA static f32 const lit_4620 = -5.0f;
COMPILER_STRIP_GATE(0x80BFFCF0, &lit_4620);

/* 80BFF938-80BFFA00 0017F8 00C8+00 1/0 0/0 0/0 .text Execute__15daObjGOMIKABE_cFPPA3_A4_f */
void daObjGOMIKABE_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80BFFA00-80BFFB1C 0018C0 011C+00 1/0 0/0 0/0 .text            Draw__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::Draw() {
    // NONMATCHING
}

/* 80BFFB1C-80BFFB74 0019DC 0058+00 1/0 0/0 0/0 .text            Delete__15daObjGOMIKABE_cFv */
void daObjGOMIKABE_c::Delete() {
    // NONMATCHING
}

/* 80BFFB74-80BFFBBC 001A34 0048+00 2/1 0/0 0/0 .text            __dt__19daObjGOMIKABE_HIO_cFv */
daObjGOMIKABE_HIO_c::~daObjGOMIKABE_HIO_c() {
    // NONMATCHING
}

/* 80BFFBBC-80BFFBF8 001A7C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_gomikabe_cpp */
void __sinit_d_a_obj_gomikabe_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80BFFBBC, __sinit_d_a_obj_gomikabe_cpp);
#pragma pop

/* 80BFFBF8-80BFFC00 001AB8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80BFFBF8() {
    // NONMATCHING
}

/* 80BFFC00-80BFFC08 001AC0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80BFFC00() {
    // NONMATCHING
}

/* 80BFFCF4-80BFFCF4 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

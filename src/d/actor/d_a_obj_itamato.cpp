/**
 * @file d_a_obj_itamato.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_itamato.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __dt__15daObj_ItaMato_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void create__15daObj_ItaMato_cFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__8cM3dGLinFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void CreateHeap__15daObj_ItaMato_cFv();
extern "C" void Delete__15daObj_ItaMato_cFv();
extern "C" void Execute__15daObj_ItaMato_cFv();
extern "C" void Draw__15daObj_ItaMato_cFv();
extern "C" void createHeapCallBack__15daObj_ItaMato_cFP10fopAc_ac_c();
extern "C" void
tgHitCallBack__15daObj_ItaMato_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getResName__15daObj_ItaMato_cFv();
extern "C" void setSwayParam__15daObj_ItaMato_cFP10fopAc_ac_c();
extern "C" void setPrtcls__15daObj_ItaMato_cFv();
extern "C" void setEnvTevColor__15daObj_ItaMato_cFv();
extern "C" void setRoomNo__15daObj_ItaMato_cFv();
extern "C" void setMtx__15daObj_ItaMato_cFv();
extern "C" static void daObj_ItaMato_Create__FPv();
extern "C" static void daObj_ItaMato_Delete__FPv();
extern "C" static void daObj_ItaMato_Execute__FPv();
extern "C" static void daObj_ItaMato_Draw__FPv();
extern "C" static bool daObj_ItaMato_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_obj_itamato_cpp();
extern "C" void __dt__21daObj_ItaMato_Param_cFv();
extern "C" static void func_80C2AB4C();
extern "C" static void func_80C2AB54();
extern "C" u8 const m__21daObj_ItaMato_Param_c[20];
extern "C" extern char const* const d_a_obj_itamato__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void setEventReg__11dSv_event_cFUsUc();
extern "C" void getEventReg__11dSv_event_cCFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void GetLockonList__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void getActor__10dAttList_cFv();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C2AC20-80C2AC20 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C2AC20 = "H_ItaMato";
#pragma pop

/* 80C2AC34-80C2AC74 000000 0040+00 2/2 0/0 0/0 .data            l_ccDSph */
static dCcD_SrcSph l_ccDSph = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f} // mSph
    } // mSphAttr
};

/* 80C2AC74-80C2AC78 -00001 0004+00 1/1 0/0 0/0 .data            l_resName */
SECTION_DATA static void* l_resName = (void*)&d_a_obj_itamato__stringBase0;

/* 80C2AC78-80C2AC98 -00001 0020+00 1/0 0/0 0/0 .data            daObj_ItaMato_MethodTable */
static actor_method_class daObj_ItaMato_MethodTable = {
    (process_method_func)daObj_ItaMato_Create__FPv,
    (process_method_func)daObj_ItaMato_Delete__FPv,
    (process_method_func)daObj_ItaMato_Execute__FPv,
    (process_method_func)daObj_ItaMato_IsDelete__FPv,
    (process_method_func)daObj_ItaMato_Draw__FPv,
};

/* 80C2AC98-80C2ACC8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_ITAMATO */
extern actor_process_profile_definition g_profile_OBJ_ITAMATO = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_OBJ_ITAMATO,           // mProcName
  &g_fpcLf_Method.base,      // sub_method
  sizeof(daObj_ItaMato_c),    // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  83,                         // mPriority
  &daObj_ItaMato_MethodTable, // sub_method
  0x00044100,                 // mStatus
  fopAc_ACTOR_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};

/* 80C2ACC8-80C2ACEC 000094 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C2AB54,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C2AB4C,
};

/* 80C2ACEC-80C2ACF8 0000B8 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C2ACF8-80C2AD04 0000C4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C2AD04-80C2AD10 0000D0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80C2AD10-80C2AD1C 0000DC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C2AD1C-80C2AD28 0000E8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C2AD28-80C2AD34 0000F4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGLin */
SECTION_DATA extern void* __vt__8cM3dGLin[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGLinFv,
};

/* 80C2AD34-80C2AD40 000100 000C+00 2/2 0/0 0/0 .data            __vt__15daObj_ItaMato_c */
SECTION_DATA extern void* __vt__15daObj_ItaMato_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daObj_ItaMato_cFv,
};

/* 80C294EC-80C296E0 0000EC 01F4+00 1/0 0/0 0/0 .text            __dt__15daObj_ItaMato_cFv */
daObj_ItaMato_c::~daObj_ItaMato_c() {
    // NONMATCHING
}

/* 80C296E0-80C2971C 0002E0 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C2AB70-80C2AB84 000000 0014+00 4/4 0/0 0/0 .rodata          m__21daObj_ItaMato_Param_c */
SECTION_RODATA u8 const daObj_ItaMato_Param_c::m[20] = {
    0x42, 0xDC, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80,
    0x00, 0x00, 0x43, 0xC8, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C2AB70, &daObj_ItaMato_Param_c::m);

/* 80C2AB84-80C2ABB4 000014 0030+00 1/1 0/0 0/0 .rodata          l_ccDObjData */
SECTION_RODATA static u8 const l_ccDObjData[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C2AB84, &l_ccDObjData);

/* 80C2ABB4-80C2ABB8 000044 0004+00 0/1 0/0 0/0 .rodata          @3982 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3982 = -200.0f;
COMPILER_STRIP_GATE(0x80C2ABB4, &lit_3982);
#pragma pop

/* 80C2ABB8-80C2ABBC 000048 0004+00 0/1 0/0 0/0 .rodata          @3983 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3983 = -50.0f;
COMPILER_STRIP_GATE(0x80C2ABB8, &lit_3983);
#pragma pop

/* 80C2ABBC-80C2ABC0 00004C 0004+00 0/1 0/0 0/0 .rodata          @3984 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3984 = 200.0f;
COMPILER_STRIP_GATE(0x80C2ABBC, &lit_3984);
#pragma pop

/* 80C2ABC0-80C2ABC4 000050 0004+00 0/3 0/0 0/0 .rodata          @3985 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3985 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80C2ABC0, &lit_3985);
#pragma pop

/* 80C2AC20-80C2AC20 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C2AC2A = "F_SP103";
#pragma pop

/* 80C2971C-80C29AC0 00031C 03A4+00 1/1 0/0 0/0 .text            create__15daObj_ItaMato_cFv */
void daObj_ItaMato_c::create() {
    // NONMATCHING
}

/* 80C29AC0-80C29AC4 0006C0 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80C29AC4-80C29B0C 0006C4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGLinFv */
// cM3dGLin::~cM3dGLin() {
extern "C" void __dt__8cM3dGLinFv() {
    // NONMATCHING
}

/* 80C29B0C-80C29B54 00070C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C29B54-80C29B9C 000754 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C29B9C-80C29C0C 00079C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80C29C0C-80C29C68 00080C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C29C68-80C29CD8 000868 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80C29CD8-80C29DAC 0008D8 00D4+00 1/1 0/0 0/0 .text            CreateHeap__15daObj_ItaMato_cFv */
void daObj_ItaMato_c::CreateHeap() {
    // NONMATCHING
}

/* 80C29DAC-80C29DE0 0009AC 0034+00 1/1 0/0 0/0 .text            Delete__15daObj_ItaMato_cFv */
void daObj_ItaMato_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C2ABC4-80C2ABC8 000054 0004+00 1/4 0/0 0/0 .rodata          @4317 */
SECTION_RODATA static f32 const lit_4317 = 1.0f;
COMPILER_STRIP_GATE(0x80C2ABC4, &lit_4317);

/* 80C2ABC8-80C2ABCC 000058 0004+00 0/1 0/0 0/0 .rodata          @4318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4318 = -1.0f;
COMPILER_STRIP_GATE(0x80C2ABC8, &lit_4318);
#pragma pop

/* 80C2ABCC-80C2ABD0 00005C 0004+00 0/1 0/0 0/0 .rodata          @4319 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4319[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C2ABCC, &lit_4319);
#pragma pop

/* 80C2ABD0-80C2ABD4 000060 0004+00 0/1 0/0 0/0 .rodata          @4320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4320 = 3.0f / 40.0f;
COMPILER_STRIP_GATE(0x80C2ABD0, &lit_4320);
#pragma pop

/* 80C2ABD4-80C2ABD8 000064 0004+00 0/1 0/0 0/0 .rodata          @4321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4321 = 50.0f;
COMPILER_STRIP_GATE(0x80C2ABD4, &lit_4321);
#pragma pop

/* 80C2ABD8-80C2ABDC 000068 0004+00 0/1 0/0 0/0 .rodata          @4322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4322 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C2ABD8, &lit_4322);
#pragma pop

/* 80C2ABDC-80C2ABE0 00006C 0004+00 0/1 0/0 0/0 .rodata          @4323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4323 = 100.0f;
COMPILER_STRIP_GATE(0x80C2ABDC, &lit_4323);
#pragma pop

/* 80C2ABE0-80C2ABE4 000070 0004+00 0/1 0/0 0/0 .rodata          @4324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4324 = 0.125f;
COMPILER_STRIP_GATE(0x80C2ABE0, &lit_4324);
#pragma pop

/* 80C2ABE4-80C2ABE8 000074 0004+00 0/1 0/0 0/0 .rodata          @4325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4325 = 125.0f;
COMPILER_STRIP_GATE(0x80C2ABE4, &lit_4325);
#pragma pop

/* 80C2ABE8-80C2ABEC 000078 0004+00 0/1 0/0 0/0 .rodata          @4326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4326 = 10.0f;
COMPILER_STRIP_GATE(0x80C2ABE8, &lit_4326);
#pragma pop

/* 80C2ABEC-80C2ABF0 00007C 0004+00 0/1 0/0 0/0 .rodata          @4327 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4327 = 60.0f;
COMPILER_STRIP_GATE(0x80C2ABEC, &lit_4327);
#pragma pop

/* 80C2ABF0-80C2ABF4 000080 0004+00 0/1 0/0 0/0 .rodata          @4328 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4328 = 110.0f;
COMPILER_STRIP_GATE(0x80C2ABF0, &lit_4328);
#pragma pop

/* 80C29DE0-80C2A44C 0009E0 066C+00 2/2 0/0 0/0 .text            Execute__15daObj_ItaMato_cFv */
void daObj_ItaMato_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C2ABF4-80C2ABF8 000084 0004+00 0/1 0/0 0/0 .rodata          @4380 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4380 = 400.0f;
COMPILER_STRIP_GATE(0x80C2ABF4, &lit_4380);
#pragma pop

/* 80C2ABF8-80C2ABFC 000088 0004+00 0/1 0/0 0/0 .rodata          @4381 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4381 = 20.0f;
COMPILER_STRIP_GATE(0x80C2ABF8, &lit_4381);
#pragma pop

/* 80C2A44C-80C2A5D0 00104C 0184+00 1/1 0/0 0/0 .text            Draw__15daObj_ItaMato_cFv */
void daObj_ItaMato_c::Draw() {
    // NONMATCHING
}

/* 80C2A5D0-80C2A5F0 0011D0 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__15daObj_ItaMato_cFP10fopAc_ac_c          */
void daObj_ItaMato_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C2A5F0-80C2A620 0011F0 0030+00 1/1 0/0 0/0 .text
 * tgHitCallBack__15daObj_ItaMato_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
void daObj_ItaMato_c::tgHitCallBack(fopAc_ac_c* param_0, dCcD_GObjInf* param_1,
                                        fopAc_ac_c* param_2, dCcD_GObjInf* param_3) {
    // NONMATCHING
}

/* 80C2A620-80C2A630 001220 0010+00 3/3 0/0 0/0 .text            getResName__15daObj_ItaMato_cFv */
void daObj_ItaMato_c::getResName() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C2ABFC-80C2AC08 00008C 000C+00 0/1 0/0 0/0 .rodata          @4405 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4405[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C2ABFC, &lit_4405);
#pragma pop

/* 80C2AC08-80C2AC0C 000098 0004+00 0/1 0/0 0/0 .rodata          @4433 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4433 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C2AC08, &lit_4433);
#pragma pop

/* 80C2AC0C-80C2AC10 00009C 0004+00 0/1 0/0 0/0 .rodata          @4434 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4434 = 0x43360B61;
COMPILER_STRIP_GATE(0x80C2AC0C, &lit_4434);
#pragma pop

/* 80C2AC10-80C2AC18 0000A0 0008+00 0/1 0/0 0/0 .rodata          @4437 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4437[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C2AC10, &lit_4437);
#pragma pop

/* 80C2A630-80C2A7C4 001230 0194+00 1/1 0/0 0/0 .text
 * setSwayParam__15daObj_ItaMato_cFP10fopAc_ac_c                */
void daObj_ItaMato_c::setSwayParam(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C2AC18-80C2AC20 0000A8 0006+02 1/1 0/0 0/0 .rodata          id$4441 */
SECTION_RODATA static u8 const id[6 + 2 /* padding */] = {
    0x85,
    0xF1,
    0x85,
    0xF2,
    0x85,
    0xF3,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C2AC18, &id);

/* 80C2A7C4-80C2A890 0013C4 00CC+00 1/1 0/0 0/0 .text            setPrtcls__15daObj_ItaMato_cFv */
void daObj_ItaMato_c::setPrtcls() {
    // NONMATCHING
}

/* 80C2A890-80C2A8EC 001490 005C+00 2/2 0/0 0/0 .text            setEnvTevColor__15daObj_ItaMato_cFv
 */
void daObj_ItaMato_c::setEnvTevColor() {
    // NONMATCHING
}

/* 80C2A8EC-80C2A930 0014EC 0044+00 2/2 0/0 0/0 .text            setRoomNo__15daObj_ItaMato_cFv */
void daObj_ItaMato_c::setRoomNo() {
    // NONMATCHING
}

/* 80C2A930-80C2A9C0 001530 0090+00 1/1 0/0 0/0 .text            setMtx__15daObj_ItaMato_cFv */
void daObj_ItaMato_c::setMtx() {
    // NONMATCHING
}

/* 80C2A9C0-80C2A9E0 0015C0 0020+00 1/0 0/0 0/0 .text            daObj_ItaMato_Create__FPv */
static void daObj_ItaMato_Create(void* param_0) {
    // NONMATCHING
}

/* 80C2A9E0-80C2AA00 0015E0 0020+00 1/0 0/0 0/0 .text            daObj_ItaMato_Delete__FPv */
static void daObj_ItaMato_Delete(void* param_0) {
    // NONMATCHING
}

/* 80C2AA00-80C2AA20 001600 0020+00 1/0 0/0 0/0 .text            daObj_ItaMato_Execute__FPv */
static void daObj_ItaMato_Execute(void* param_0) {
    // NONMATCHING
}

/* 80C2AA20-80C2AA40 001620 0020+00 1/0 0/0 0/0 .text            daObj_ItaMato_Draw__FPv */
static void daObj_ItaMato_Draw(void* param_0) {
    // NONMATCHING
}

/* 80C2AA40-80C2AA48 001640 0008+00 1/0 0/0 0/0 .text            daObj_ItaMato_IsDelete__FPv */
static bool daObj_ItaMato_IsDelete(void* param_0) {
    return true;
}

/* 80C2AA48-80C2AA90 001648 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C2AD40-80C2AD4C 00010C 000C+00 2/2 0/0 0/0 .data            __vt__21daObj_ItaMato_Param_c */
SECTION_DATA extern void* __vt__21daObj_ItaMato_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__21daObj_ItaMato_Param_cFv,
};

/* 80C2AD58-80C2AD64 000008 000C+00 1/1 0/0 0/0 .bss             @3836 */
static u8 lit_3836[12];

/* 80C2AD64-80C2AD68 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80C2AA90-80C2AB04 001690 0074+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_itamato_cpp */
void __sinit_d_a_obj_itamato_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C2AA90, __sinit_d_a_obj_itamato_cpp);
#pragma pop

/* 80C2AB04-80C2AB4C 001704 0048+00 2/1 0/0 0/0 .text            __dt__21daObj_ItaMato_Param_cFv */
daObj_ItaMato_Param_c::~daObj_ItaMato_Param_c() {
    // NONMATCHING
}

/* 80C2AB4C-80C2AB54 00174C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C2AB4C() {
    // NONMATCHING
}

/* 80C2AB54-80C2AB5C 001754 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C2AB54() {
    // NONMATCHING
}

/* 80C2AC20-80C2AC20 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

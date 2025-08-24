/**
 * @file d_a_obj_kznkarm.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_kznkarm.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void setAction__14daObjKznkarm_cFQ214daObjKznkarm_c6Mode_e();
extern "C" void callInit__14daObjKznkarm_cFv();
extern "C" void callExecute__14daObjKznkarm_cFv();
extern "C" void initBroken__14daObjKznkarm_cFv();
extern "C" void executeBroken__14daObjKznkarm_cFv();
extern "C" void initCarry__14daObjKznkarm_cFv();
extern "C" void executeCarry__14daObjKznkarm_cFv();
extern "C" void initThrow__14daObjKznkarm_cFv();
extern "C" void executeThrow__14daObjKznkarm_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void initStay__14daObjKznkarm_cFv();
extern "C" void executeStay__14daObjKznkarm_cFv();
extern "C" void create_init__14daObjKznkarm_cFv();
extern "C" void initBaseMtx__14daObjKznkarm_cFv();
extern "C" void setBaseMtx__14daObjKznkarm_cFv();
extern "C" void getGroundSlope__14daObjKznkarm_cFs();
extern "C" static void createSolidHeap__FP10fopAc_ac_c();
extern "C" static void daObjKznkarm_Draw__FP14daObjKznkarm_c();
extern "C" static void daObjKznkarm_Execute__FP14daObjKznkarm_c();
extern "C" static bool daObjKznkarm_IsDelete__FP14daObjKznkarm_c();
extern "C" static void daObjKznkarm_Delete__FP14daObjKznkarm_c();
extern "C" static void daObjKznkarm_Create__FP10fopAc_ac_c();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __sinit_d_a_obj_kznkarm_cpp();
extern "C" static void func_80C50CEC();
extern "C" static void func_80C50CF4();
extern "C" u8 const M_attr__14daObjKznkarm_c[56];
extern "C" extern char const* const d_a_obj_kznkarm__stringBase0;
extern "C" u8 ActionTable__14daObjKznkarm_c[96];

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMove__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_carryOffRevise__FP10fopAc_ac_c();
extern "C" void fopAcM_getPolygonAngle__FPC8cM3dGPlas();
extern "C" void fpcEx_SearchByID__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_24();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void getFirstVec__15daObjKazeNeko_cFP4cXyzi();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C50D90-80C50D90 000088 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C50D90 = "J_Kazami";
#pragma pop

/* 80C50DC4-80C50DC8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_kznkarm__stringBase0;

/* 80C50DC8-80C50DD4 -00001 000C+00 0/1 0/0 0/0 .data            @3641 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3641[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initBroken__14daObjKznkarm_cFv,
};
#pragma pop

/* 80C50DD4-80C50DE0 -00001 000C+00 0/1 0/0 0/0 .data            @3642 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3642[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeBroken__14daObjKznkarm_cFv,
};
#pragma pop

/* 80C50DE0-80C50DEC -00001 000C+00 0/1 0/0 0/0 .data            @3643 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3643[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initCarry__14daObjKznkarm_cFv,
};
#pragma pop

/* 80C50DEC-80C50DF8 -00001 000C+00 0/1 0/0 0/0 .data            @3644 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3644[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeCarry__14daObjKznkarm_cFv,
};
#pragma pop

/* 80C50DF8-80C50E04 -00001 000C+00 0/1 0/0 0/0 .data            @3645 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3645[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initThrow__14daObjKznkarm_cFv,
};
#pragma pop

/* 80C50E04-80C50E10 -00001 000C+00 0/1 0/0 0/0 .data            @3646 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3646[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeThrow__14daObjKznkarm_cFv,
};
#pragma pop

/* 80C50E10-80C50E1C -00001 000C+00 0/1 0/0 0/0 .data            @3647 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3647[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)initStay__14daObjKznkarm_cFv,
};
#pragma pop

/* 80C50E1C-80C50E28 -00001 000C+00 0/1 0/0 0/0 .data            @3648 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3648[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)executeStay__14daObjKznkarm_cFv,
};
#pragma pop

/* 80C50E28-80C50E88 000084 0060+00 1/2 0/0 0/0 .data            ActionTable__14daObjKznkarm_c */
SECTION_DATA u8 daObjKznkarm_c::ActionTable[96] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C4F858-80C4F88C 000078 0034+00 5/5 0/0 0/0 .text
 * setAction__14daObjKznkarm_cFQ214daObjKznkarm_c6Mode_e        */
void daObjKznkarm_c::setAction(daObjKznkarm_c::Mode_e param_0) {
    // NONMATCHING
}

/* 80C4F88C-80C4F8B4 0000AC 0028+00 1/1 0/0 0/0 .text            callInit__14daObjKznkarm_cFv */
void daObjKznkarm_c::callInit() {
    // NONMATCHING
}

/* 80C4F8B4-80C4F8E0 0000D4 002C+00 1/1 0/0 0/0 .text            callExecute__14daObjKznkarm_cFv */
void daObjKznkarm_c::callExecute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C50D08-80C50D40 000000 0038+00 8/8 0/0 0/0 .rodata          M_attr__14daObjKznkarm_c */
SECTION_RODATA u8 const daObjKznkarm_c::M_attr[56] = {
    0xC0, 0xA0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x3F, 0x70,
    0xA3, 0xD7, 0x42, 0x20, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0xC2, 0x70, 0x00, 0x00,
    0xC0, 0xC0, 0x00, 0x00, 0xC0, 0xC0, 0x00, 0x00, 0xC2, 0x70, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x41, 0x40, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0xE0, 0x00,
};
COMPILER_STRIP_GATE(0x80C50D08, &daObjKznkarm_c::M_attr);

/* 80C4F8E0-80C4F960 000100 0080+00 1/0 0/0 0/0 .text            initBroken__14daObjKznkarm_cFv */
void daObjKznkarm_c::initBroken() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C50D40-80C50D44 000038 0004+00 0/2 0/0 0/0 .rodata          @3720 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3720 = -1.0f;
COMPILER_STRIP_GATE(0x80C50D40, &lit_3720);
#pragma pop

/* 80C50D44-80C50D48 00003C 0004+00 2/7 0/0 0/0 .rodata          @3721 */
SECTION_RODATA static u8 const lit_3721[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C50D44, &lit_3721);

/* 80C50D48-80C50D50 000040 0008+00 0/2 0/0 0/0 .rodata          @3722 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3722[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C50D48, &lit_3722);
#pragma pop

/* 80C50D50-80C50D58 000048 0008+00 0/2 0/0 0/0 .rodata          @3723 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3723[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C50D50, &lit_3723);
#pragma pop

/* 80C50D58-80C50D60 000050 0008+00 0/2 0/0 0/0 .rodata          @3724 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3724[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C50D58, &lit_3724);
#pragma pop

/* 80C4F960-80C4FBBC 000180 025C+00 1/0 0/0 0/0 .text            executeBroken__14daObjKznkarm_cFv
 */
void daObjKznkarm_c::executeBroken() {
    // NONMATCHING
}

/* 80C4FBBC-80C4FBEC 0003DC 0030+00 1/0 0/0 0/0 .text            initCarry__14daObjKznkarm_cFv */
void daObjKznkarm_c::initCarry() {
    // NONMATCHING
}

/* 80C4FBEC-80C4FD18 00040C 012C+00 1/0 0/0 0/0 .text            executeCarry__14daObjKznkarm_cFv */
void daObjKznkarm_c::executeCarry() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C50D60-80C50D64 000058 0004+00 0/3 0/0 0/0 .rodata          @3786 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3786 = 1.0f;
COMPILER_STRIP_GATE(0x80C50D60, &lit_3786);
#pragma pop

/* 80C4FD18-80C4FDB4 000538 009C+00 1/0 0/0 0/0 .text            initThrow__14daObjKznkarm_cFv */
void daObjKznkarm_c::initThrow() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C50D64-80C50D68 00005C 0004+00 0/1 0/0 0/0 .rodata          @3944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3944 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C50D64, &lit_3944);
#pragma pop

/* 80C50D68-80C50D70 000060 0008+00 0/1 0/0 0/0 .rodata          @3946 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3946[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C50D68, &lit_3946);
#pragma pop

/* 80C50E88-80C50E90 0000E4 0008+00 1/1 0/0 0/0 .data            w_eff_id$3813 */
SECTION_DATA static u8 w_eff_id[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 80C50E90-80C50EB0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjKznkarm_Method */
static actor_method_class l_daObjKznkarm_Method = {
    (process_method_func)daObjKznkarm_Create__FP10fopAc_ac_c,
    (process_method_func)daObjKznkarm_Delete__FP14daObjKznkarm_c,
    (process_method_func)daObjKznkarm_Execute__FP14daObjKznkarm_c,
    (process_method_func)daObjKznkarm_IsDelete__FP14daObjKznkarm_c,
    (process_method_func)daObjKznkarm_Draw__FP14daObjKznkarm_c,
};

/* 80C50EB0-80C50EE0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_KznkArm */
extern actor_process_profile_definition g_profile_Obj_KznkArm = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_KznkArm,        // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjKznkarm_c),  // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  31,                      // mPriority
  &l_daObjKznkarm_Method,  // sub_method
  0x00044100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80C50EE0-80C50EEC 00013C 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80C50EEC-80C50F10 000148 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C50CF4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C50CEC,
};

/* 80C50F10-80C50F1C 00016C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80C4FDB4-80C50440 0005D4 068C+00 1/0 0/0 0/0 .text            executeThrow__14daObjKznkarm_cFv */
void daObjKznkarm_c::executeThrow() {
    // NONMATCHING
}

/* 80C50440-80C50488 000C60 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 80C50488-80C50504 000CA8 007C+00 1/0 0/0 0/0 .text            initStay__14daObjKznkarm_cFv */
void daObjKznkarm_c::initStay() {
    // NONMATCHING
}

/* 80C50504-80C505F8 000D24 00F4+00 1/0 0/0 0/0 .text            executeStay__14daObjKznkarm_cFv */
void daObjKznkarm_c::executeStay() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C50D70-80C50D74 000068 0004+00 0/1 0/0 0/0 .rodata          @3998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3998 = -10.0f;
COMPILER_STRIP_GATE(0x80C50D70, &lit_3998);
#pragma pop

/* 80C50D74-80C50D78 00006C 0004+00 0/1 0/0 0/0 .rodata          @3999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3999 = -15.0f;
COMPILER_STRIP_GATE(0x80C50D74, &lit_3999);
#pragma pop

/* 80C50D78-80C50D7C 000070 0004+00 0/1 0/0 0/0 .rodata          @4000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4000 = 120.0f;
COMPILER_STRIP_GATE(0x80C50D78, &lit_4000);
#pragma pop

/* 80C50D7C-80C50D80 000074 0004+00 0/1 0/0 0/0 .rodata          @4001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4001 = 40.0f;
COMPILER_STRIP_GATE(0x80C50D7C, &lit_4001);
#pragma pop

/* 80C50D80-80C50D84 000078 0004+00 0/1 0/0 0/0 .rodata          @4002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4002 = 15.0f;
COMPILER_STRIP_GATE(0x80C50D80, &lit_4002);
#pragma pop

/* 80C50D84-80C50D88 00007C 0004+00 0/2 0/0 0/0 .rodata          @4003 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4003 = 50.0f;
COMPILER_STRIP_GATE(0x80C50D84, &lit_4003);
#pragma pop

/* 80C505F8-80C506DC 000E18 00E4+00 1/1 0/0 0/0 .text            create_init__14daObjKznkarm_cFv */
void daObjKznkarm_c::create_init() {
    // NONMATCHING
}

/* 80C506DC-80C50708 000EFC 002C+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjKznkarm_cFv */
void daObjKznkarm_c::initBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C50D88-80C50D8C 000080 0004+00 1/1 0/0 0/0 .rodata          @4020 */
SECTION_RODATA static f32 const lit_4020 = -60.0f;
COMPILER_STRIP_GATE(0x80C50D88, &lit_4020);

/* 80C50708-80C5076C 000F28 0064+00 3/3 0/0 0/0 .text            setBaseMtx__14daObjKznkarm_cFv */
void daObjKznkarm_c::setBaseMtx() {
    // NONMATCHING
}

/* 80C5076C-80C507F8 000F8C 008C+00 1/1 0/0 0/0 .text            getGroundSlope__14daObjKznkarm_cFs
 */
void daObjKznkarm_c::getGroundSlope(s16 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C50D90-80C50D90 000088 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C50D99 = "arm.bmd";
#pragma pop

/* 80C507F8-80C50870 001018 0078+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static void createSolidHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C50D8C-80C50D90 000084 0004+00 0/1 0/0 0/0 .rodata          @4114 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4114 = 600.0f;
COMPILER_STRIP_GATE(0x80C50D8C, &lit_4114);
#pragma pop

/* 80C50870-80C50984 001090 0114+00 1/0 0/0 0/0 .text daObjKznkarm_Draw__FP14daObjKznkarm_c */
static void daObjKznkarm_Draw(daObjKznkarm_c* param_0) {
    // NONMATCHING
}

/* 80C50984-80C509A8 0011A4 0024+00 1/0 0/0 0/0 .text daObjKznkarm_Execute__FP14daObjKznkarm_c */
static void daObjKznkarm_Execute(daObjKznkarm_c* param_0) {
    // NONMATCHING
}

/* 80C509A8-80C509B0 0011C8 0008+00 1/0 0/0 0/0 .text daObjKznkarm_IsDelete__FP14daObjKznkarm_c */
static bool daObjKznkarm_IsDelete(daObjKznkarm_c* param_0) {
    return true;
}

/* 80C509B0-80C50A5C 0011D0 00AC+00 1/0 0/0 0/0 .text daObjKznkarm_Delete__FP14daObjKznkarm_c */
static void daObjKznkarm_Delete(daObjKznkarm_c* param_0) {
    // NONMATCHING
}

/* 80C50A5C-80C50B3C 00127C 00E0+00 1/0 0/0 0/0 .text            daObjKznkarm_Create__FP10fopAc_ac_c
 */
static void daObjKznkarm_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C50B3C-80C50BAC 00135C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80C50BAC-80C50C1C 0013CC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80C50C1C-80C50CEC 00143C 00D0+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_kznkarm_cpp */
void __sinit_d_a_obj_kznkarm_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C50C1C, __sinit_d_a_obj_kznkarm_cpp);
#pragma pop

/* 80C50CEC-80C50CF4 00150C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C50CEC() {
    // NONMATCHING
}

/* 80C50CF4-80C50CFC 001514 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C50CF4() {
    // NONMATCHING
}

/* 80C50D90-80C50D90 000088 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

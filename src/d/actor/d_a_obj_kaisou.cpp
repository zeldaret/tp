/**
 * @file d_a_obj_kaisou.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_kaisou.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void ctrlJoint__13daObjKaisou_cFP8J3DJointP8J3DModel();
extern "C" static void JointCallBack__FP8J3DJointi();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daObjKaisou_Create__FP10fopAc_ac_c();
extern "C" static void daObjKaisou_Delete__FP13daObjKaisou_c();
extern "C" void initCcCylinder__13daObjKaisou_cFv();
extern "C" void setCcCylinder__13daObjKaisou_cFv();
extern "C" void ObjHit__13daObjKaisou_cFv();
extern "C" void Execute__13daObjKaisou_cFv();
extern "C" void Delete__13daObjKaisou_cFv();
extern "C" void setBaseMtx__13daObjKaisou_cFv();
extern "C" static void daObjKaisou_Draw__FP13daObjKaisou_c();
extern "C" static void daObjKaisou_Execute__FP13daObjKaisou_c();
extern "C" void create__13daObjKaisou_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" static bool daObjKaisou_IsDelete__FP13daObjKaisou_c();
extern "C" extern char const* const d_a_obj_kaisou__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __dl__FPv();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;

//
// Declarations:
//

/* ############################################################################################## */
/* 80C34EEC-80C34EF0 000000 0004+00 4/4 0/0 0/0 .rodata          @3806 */
SECTION_RODATA static f32 const lit_3806 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C34EEC, &lit_3806);

/* 80C34EF0-80C34EF4 000004 0004+00 1/1 0/0 0/0 .rodata          @3807 */
SECTION_RODATA static f32 const lit_3807 = 0.5f;
COMPILER_STRIP_GATE(0x80C34EF0, &lit_3807);

/* 80C34EF4-80C34EFC 000008 0008+00 1/3 0/0 0/0 .rodata          @3809 */
SECTION_RODATA static u8 const lit_3809[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C34EF4, &lit_3809);

/* 80C34058-80C34288 000078 0230+00 1/1 0/0 0/0 .text
 * ctrlJoint__13daObjKaisou_cFP8J3DJointP8J3DModel              */
void daObjKaisou_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 80C34288-80C342D4 0002A8 004C+00 1/1 0/0 0/0 .text            JointCallBack__FP8J3DJointi */
static void JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C34FA0-80C34FA0 0000B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C34FA0 = "M_kaisou";
SECTION_DEAD static char const* const stringBase_80C34FA9 = "M_kaisou.bmd";
#pragma pop

/* 80C34FC0-80C34FC4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_kaisou__stringBase0;

/* 80C342D4-80C3434C 0002F4 0078+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C3434C-80C3436C 00036C 0020+00 1/0 0/0 0/0 .text            daObjKaisou_Create__FP10fopAc_ac_c
 */
static void daObjKaisou_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C3436C-80C34390 00038C 0024+00 1/0 0/0 0/0 .text daObjKaisou_Delete__FP13daObjKaisou_c */
static void daObjKaisou_Delete(daObjKaisou_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C34EFC-80C34F40 000010 0044+00 1/1 0/0 0/0 .rodata          ccCylSrc$3850 */
const static dCcD_SrcCyl ccCylSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x2, 0x11}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        50.0f, // mRadius
        100.0f // mHeight
    } // mCyl
};

/* 80C34390-80C343F0 0003B0 0060+00 1/1 0/0 0/0 .text            initCcCylinder__13daObjKaisou_cFv
 */
void daObjKaisou_c::initCcCylinder() {
    // NONMATCHING
}

/* 80C343F0-80C34438 000410 0048+00 1/1 0/0 0/0 .text            setCcCylinder__13daObjKaisou_cFv */
void daObjKaisou_c::setCcCylinder() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C34F40-80C34F44 000054 0004+00 0/1 0/0 0/0 .rodata          @3963 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3963[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C34F40, &lit_3963);
#pragma pop

/* 80C34F44-80C34F4C 000058 0008+00 0/1 0/0 0/0 .rodata          @3964 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3964[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C34F44, &lit_3964);
#pragma pop

/* 80C34F4C-80C34F54 000060 0008+00 0/1 0/0 0/0 .rodata          @3965 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3965[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C34F4C, &lit_3965);
#pragma pop

/* 80C34F54-80C34F5C 000068 0008+00 0/1 0/0 0/0 .rodata          @3966 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3966[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C34F54, &lit_3966);
#pragma pop

/* 80C34F5C-80C34F60 000070 0004+00 0/2 0/0 0/0 .rodata          @3967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3967 = 4.0f;
COMPILER_STRIP_GATE(0x80C34F5C, &lit_3967);
#pragma pop

/* 80C34F60-80C34F64 000074 0004+00 0/1 0/0 0/0 .rodata          @3968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3968 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C34F60, &lit_3968);
#pragma pop

/* 80C34F64-80C34F68 000078 0004+00 0/1 0/0 0/0 .rodata          @3969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3969 = 120.0f;
COMPILER_STRIP_GATE(0x80C34F64, &lit_3969);
#pragma pop

/* 80C34F68-80C34F6C 00007C 0004+00 0/1 0/0 0/0 .rodata          @3970 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3970 = 4096.0f;
COMPILER_STRIP_GATE(0x80C34F68, &lit_3970);
#pragma pop

/* 80C34FC4-80C35038 -00001 0074+00 1/1 0/0 0/0 .data            @3975 */
SECTION_DATA static void* lit_3975[29] = {
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x34C),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x360),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x360),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x34C),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x360),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x374),
    (void*)(((char*)ObjHit__13daObjKaisou_cFv) + 0x34C),
};

/* 80C34438-80C34824 000458 03EC+00 2/1 0/0 0/0 .text            ObjHit__13daObjKaisou_cFv */
void daObjKaisou_c::ObjHit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C34F6C-80C34F74 000080 0004+04 0/1 0/0 0/0 .rodata          @3995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3995[1 + 1 /* padding */] = {
    16384.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C34F6C, &lit_3995);
#pragma pop

/* 80C34F74-80C34F7C 000088 0008+00 0/1 0/0 0/0 .rodata          @3996 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3996[8] = {
    0x3F, 0xF8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C34F74, &lit_3996);
#pragma pop

/* 80C34F7C-80C34F80 000090 0004+00 0/1 0/0 0/0 .rodata          @3997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3997 = 32768.0f;
COMPILER_STRIP_GATE(0x80C34F7C, &lit_3997);
#pragma pop

/* 80C34F80-80C34F84 000094 0004+00 0/1 0/0 0/0 .rodata          @3998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3998 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C34F80, &lit_3998);
#pragma pop

/* 80C34824-80C34A98 000844 0274+00 1/1 0/0 0/0 .text            Execute__13daObjKaisou_cFv */
void daObjKaisou_c::Execute() {
    // NONMATCHING
}

/* 80C34A98-80C34ACC 000AB8 0034+00 1/1 0/0 0/0 .text            Delete__13daObjKaisou_cFv */
void daObjKaisou_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C34F84-80C34F88 000098 0004+00 1/1 0/0 0/0 .rodata          @4022 */
SECTION_RODATA static f32 const lit_4022 = 2.0f;
COMPILER_STRIP_GATE(0x80C34F84, &lit_4022);

/* 80C34ACC-80C34B34 000AEC 0068+00 1/1 0/0 0/0 .text            setBaseMtx__13daObjKaisou_cFv */
void daObjKaisou_c::setBaseMtx() {
    // NONMATCHING
}

/* 80C34B34-80C34BB8 000B54 0084+00 1/0 0/0 0/0 .text            daObjKaisou_Draw__FP13daObjKaisou_c
 */
static void daObjKaisou_Draw(daObjKaisou_c* param_0) {
    // NONMATCHING
}

/* 80C34BB8-80C34BD8 000BD8 0020+00 2/1 0/0 0/0 .text daObjKaisou_Execute__FP13daObjKaisou_c */
static void daObjKaisou_Execute(daObjKaisou_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C34F88-80C34F8C 00009C 0004+00 0/1 0/0 0/0 .rodata          @4157 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4157 = -9.0f;
COMPILER_STRIP_GATE(0x80C34F88, &lit_4157);
#pragma pop

/* 80C34F8C-80C34F90 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4158 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4158 = 100.0f;
COMPILER_STRIP_GATE(0x80C34F8C, &lit_4158);
#pragma pop

/* 80C34F90-80C34F94 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4159 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4159 = -1000.0f;
COMPILER_STRIP_GATE(0x80C34F90, &lit_4159);
#pragma pop

/* 80C34F94-80C34F98 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4160 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4160 = -500.0f;
COMPILER_STRIP_GATE(0x80C34F94, &lit_4160);
#pragma pop

/* 80C34F98-80C34F9C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4161 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4161 = 1000.0f;
COMPILER_STRIP_GATE(0x80C34F98, &lit_4161);
#pragma pop

/* 80C34F9C-80C34FA0 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4162 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4162 = 500.0f;
COMPILER_STRIP_GATE(0x80C34F9C, &lit_4162);
#pragma pop

/* 80C34FA0-80C34FA0 0000B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C34FB6 = "D_MN01A";
#pragma pop

/* 80C35038-80C35058 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjKaisou_Method */
static actor_method_class l_daObjKaisou_Method = {
    (process_method_func)daObjKaisou_Create__FP10fopAc_ac_c,
    (process_method_func)daObjKaisou_Delete__FP13daObjKaisou_c,
    (process_method_func)daObjKaisou_Execute__FP13daObjKaisou_c,
    (process_method_func)daObjKaisou_IsDelete__FP13daObjKaisou_c,
    (process_method_func)daObjKaisou_Draw__FP13daObjKaisou_c,
};

/* 80C35058-80C35088 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Kaisou */
extern actor_process_profile_definition g_profile_Obj_Kaisou = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Kaisou,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjKaisou_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  460,                    // mPriority
  &l_daObjKaisou_Method,  // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C35088-80C35094 0000C8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C35094-80C350A0 0000D4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C34BD8-80C34E4C 000BF8 0274+00 1/1 0/0 0/0 .text            create__13daObjKaisou_cFv */
void daObjKaisou_c::create() {
    // NONMATCHING
}

/* 80C34E4C-80C34E94 000E6C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C34E94-80C34EDC 000EB4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C34EDC-80C34EE4 000EFC 0008+00 1/0 0/0 0/0 .text daObjKaisou_IsDelete__FP13daObjKaisou_c */
static bool daObjKaisou_IsDelete(daObjKaisou_c* param_0) {
    return true;
}

/* 80C34FA0-80C34FA0 0000B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

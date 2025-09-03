/**
 * @file d_a_obj_grz_rock.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_grz_rock.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void setBaseMtx__14daObjGrzRock_cFv();
extern "C" void setEnvTevColor__14daObjGrzRock_cFv();
extern "C" void setRoomNo__14daObjGrzRock_cFv();
extern "C" void setPrtcl__14daObjGrzRock_cFv();
extern "C" void Create__14daObjGrzRock_cFv();
extern "C" void CreateHeap__14daObjGrzRock_cFv();
extern "C" void create__14daObjGrzRock_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void Execute__14daObjGrzRock_cFPPA3_A4_f();
extern "C" void Draw__14daObjGrzRock_cFv();
extern "C" void Delete__14daObjGrzRock_cFv();
extern "C" static void daObjGrzRock_Draw__FP14daObjGrzRock_c();
extern "C" static void daObjGrzRock_Execute__FP14daObjGrzRock_c();
extern "C" static bool daObjGrzRock_IsDelete__FP14daObjGrzRock_c();
extern "C" static void daObjGrzRock_Delete__FP14daObjGrzRock_c();
extern "C" static void daObjGrzRock_create__FP10fopAc_ac_c();
extern "C" static void func_80C15348();
extern "C" static void func_80C15350();
extern "C" extern char const* const d_a_obj_grz_rock__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void GetPolyColor__4dBgSFRC13cBgS_PolyInfo();
extern "C" void GetRoomId__4dBgSFRC13cBgS_PolyInfo();
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
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void __dl__FPv();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];

//
// Declarations:
//

/* 80C14BD8-80C14C54 000078 007C+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjGrzRock_cFv */
void daObjGrzRock_c::setBaseMtx() {
    // NONMATCHING
}

/* 80C14C54-80C14CB0 0000F4 005C+00 1/1 0/0 0/0 .text            setEnvTevColor__14daObjGrzRock_cFv
 */
void daObjGrzRock_c::setEnvTevColor() {
    // NONMATCHING
}

/* 80C14CB0-80C14CF0 000150 0040+00 1/1 0/0 0/0 .text            setRoomNo__14daObjGrzRock_cFv */
void daObjGrzRock_c::setRoomNo() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C15360-80C1536C 000000 000C+00 1/1 0/0 0/0 .rodata          l_prticles_id$3832 */
SECTION_RODATA static u8 const l_prticles_id[12] = {
    0x89, 0xC2, 0x89, 0xC3, 0x89, 0xC4, 0x89, 0xC5, 0x89, 0xC6, 0x89, 0xC7,
};
COMPILER_STRIP_GATE(0x80C15360, &l_prticles_id);

/* 80C1536C-80C15370 00000C 0004+00 0/1 0/0 0/0 .rodata          @3849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3849 = 17.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C1536C, &lit_3849);
#pragma pop

/* 80C15370-80C15374 000010 0004+00 0/1 0/0 0/0 .rodata          @3850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3850 = 1.0f;
COMPILER_STRIP_GATE(0x80C15370, &lit_3850);
#pragma pop

/* 80C14CF0-80C14DA0 000190 00B0+00 1/1 0/0 0/0 .text            setPrtcl__14daObjGrzRock_cFv */
void daObjGrzRock_c::setPrtcl() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C15374-80C15378 000014 0004+00 1/1 0/0 0/0 .rodata          @3886 */
SECTION_RODATA static u8 const lit_3886[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C15374, &lit_3886);

/* 80C14DA0-80C14EE0 000240 0140+00 1/0 0/0 0/0 .text            Create__14daObjGrzRock_cFv */
void daObjGrzRock_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C15378-80C15378 000018 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C15378 = "grZRock";
#pragma pop

/* 80C1538C-80C15390 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_grz_rock__stringBase0;

/* 80C14EE0-80C14F50 000380 0070+00 1/0 0/0 0/0 .text            CreateHeap__14daObjGrzRock_cFv */
void daObjGrzRock_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C15378-80C15378 000018 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C15380 = "grZRock.dzb";
#pragma pop

/* 80C15390-80C153B0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjGrzRock_Method */
static actor_method_class l_daObjGrzRock_Method = {
    (process_method_func)daObjGrzRock_create__FP10fopAc_ac_c,
    (process_method_func)daObjGrzRock_Delete__FP14daObjGrzRock_c,
    (process_method_func)daObjGrzRock_Execute__FP14daObjGrzRock_c,
    (process_method_func)daObjGrzRock_IsDelete__FP14daObjGrzRock_c,
    (process_method_func)daObjGrzRock_Draw__FP14daObjGrzRock_c,
};

/* 80C153B0-80C153E0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_GrzRock */
extern actor_process_profile_definition g_profile_Obj_GrzRock = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_GrzRock,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjGrzRock_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  610,                    // mPriority
  &l_daObjGrzRock_Method, // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C153E0-80C15404 000054 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C15350,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C15348,
};

/* 80C15404-80C1542C 000078 0028+00 1/1 0/0 0/0 .data            __vt__14daObjGrzRock_c */
SECTION_DATA extern void* __vt__14daObjGrzRock_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daObjGrzRock_cFv,
    (void*)Create__14daObjGrzRock_cFv,
    (void*)Execute__14daObjGrzRock_cFPPA3_A4_f,
    (void*)Draw__14daObjGrzRock_cFv,
    (void*)Delete__14daObjGrzRock_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C14F50-80C150DC 0003F0 018C+00 1/1 0/0 0/0 .text            create__14daObjGrzRock_cFv */
void daObjGrzRock_c::create() {
    // NONMATCHING
}

/* 80C150DC-80C1514C 00057C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80C1514C-80C151A4 0005EC 0058+00 1/0 0/0 0/0 .text            Execute__14daObjGrzRock_cFPPA3_A4_f
 */
void daObjGrzRock_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80C151A4-80C15248 000644 00A4+00 1/0 0/0 0/0 .text            Draw__14daObjGrzRock_cFv */
void daObjGrzRock_c::Draw() {
    // NONMATCHING
}

/* 80C15248-80C152B4 0006E8 006C+00 1/0 0/0 0/0 .text            Delete__14daObjGrzRock_cFv */
void daObjGrzRock_c::Delete() {
    // NONMATCHING
}

/* 80C152B4-80C152E0 000754 002C+00 1/0 0/0 0/0 .text daObjGrzRock_Draw__FP14daObjGrzRock_c */
static void daObjGrzRock_Draw(daObjGrzRock_c* param_0) {
    // NONMATCHING
}

/* 80C152E0-80C15300 000780 0020+00 1/0 0/0 0/0 .text daObjGrzRock_Execute__FP14daObjGrzRock_c */
static void daObjGrzRock_Execute(daObjGrzRock_c* param_0) {
    // NONMATCHING
}

/* 80C15300-80C15308 0007A0 0008+00 1/0 0/0 0/0 .text daObjGrzRock_IsDelete__FP14daObjGrzRock_c */
static bool daObjGrzRock_IsDelete(daObjGrzRock_c* param_0) {
    return true;
}

/* 80C15308-80C15328 0007A8 0020+00 1/0 0/0 0/0 .text daObjGrzRock_Delete__FP14daObjGrzRock_c */
static void daObjGrzRock_Delete(daObjGrzRock_c* param_0) {
    // NONMATCHING
}

/* 80C15328-80C15348 0007C8 0020+00 1/0 0/0 0/0 .text            daObjGrzRock_create__FP10fopAc_ac_c
 */
static void daObjGrzRock_create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C15348-80C15350 0007E8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C15348() {
    // NONMATCHING
}

/* 80C15350-80C15358 0007F0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C15350() {
    // NONMATCHING
}

/* 80C15378-80C15378 000018 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

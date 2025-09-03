/**
 * @file d_a_obj_h_saku.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_h_saku.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void BreakSet__13daObjH_Saku_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void SpeedSet__13daObjH_Saku_cFP4cXyzP4cXyzf();
extern "C" void Action__13daObjH_Saku_cFv();
extern "C" void initBaseMtx__13daObjH_Saku_cFv();
extern "C" void setBaseMtx__13daObjH_Saku_cFv();
extern "C" static void daObjH_Saku_Draw__FP13daObjH_Saku_c();
extern "C" static void daObjH_Saku_Execute__FP13daObjH_Saku_c();
extern "C" static bool daObjH_Saku_IsDelete__FP13daObjH_Saku_c();
extern "C" static void daObjH_Saku_Delete__FP13daObjH_Saku_c();
extern "C" static void daObjH_Saku_Create__FP10fopAc_ac_c();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void CreateHeap__13daObjH_Saku_cFv();
extern "C" void Create__13daObjH_Saku_cFv();
extern "C" void Execute__13daObjH_Saku_cFPPA3_A4_f();
extern "C" void Draw__13daObjH_Saku_cFv();
extern "C" void Delete__13daObjH_Saku_cFv();
extern "C" void __sinit_d_a_obj_h_saku_cpp();
extern "C" static void func_80C164A4();
extern "C" static void func_80C164AC();
extern "C" extern char const* const d_a_obj_h_saku__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
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
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__5csXyzFsss();
extern "C" void __apl__5csXyzFR5csXyz();
extern "C" void cM_rndF__Ff();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C164C8-80C164CC 000000 0004+00 6/6 0/0 0/0 .rodata          @3703 */
SECTION_RODATA static f32 const lit_3703 = 240.0f;
COMPILER_STRIP_GATE(0x80C164C8, &lit_3703);

/* 80C164CC-80C164D0 000004 0004+00 0/4 0/0 0/0 .rodata          @3704 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3704[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C164CC, &lit_3704);
#pragma pop

/* 80C164D0-80C164D4 000008 0004+00 0/3 0/0 0/0 .rodata          @3705 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3705 = -30.0f;
COMPILER_STRIP_GATE(0x80C164D0, &lit_3705);
#pragma pop

/* 80C164D4-80C164D8 00000C 0004+00 0/3 0/0 0/0 .rodata          @3706 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3706 = 1.0f;
COMPILER_STRIP_GATE(0x80C164D4, &lit_3706);
#pragma pop

/* 80C164D8-80C164DC 000010 0004+00 0/2 0/0 0/0 .rodata          @3707 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3707 = -1.0f;
COMPILER_STRIP_GATE(0x80C164D8, &lit_3707);
#pragma pop

/* 80C164DC-80C164E0 000014 0004+00 0/2 0/0 0/0 .rodata          @3708 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3708 = 10.0f;
COMPILER_STRIP_GATE(0x80C164DC, &lit_3708);
#pragma pop

/* 80C164E0-80C164E4 000018 0004+00 0/2 0/0 0/0 .rodata          @3709 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3709 = 2.0f;
COMPILER_STRIP_GATE(0x80C164E0, &lit_3709);
#pragma pop

/* 80C164E4-80C164E8 00001C 0004+00 0/1 0/0 0/0 .rodata          @3710 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3710 = 15.0f;
COMPILER_STRIP_GATE(0x80C164E4, &lit_3710);
#pragma pop

/* 80C164E8-80C164EC 000020 0004+00 0/1 0/0 0/0 .rodata          @3711 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3711 = 512.0f;
COMPILER_STRIP_GATE(0x80C164E8, &lit_3711);
#pragma pop

/* 80C164EC-80C164F0 000024 0004+00 0/1 0/0 0/0 .rodata          @3712 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3712 = 200.0f;
COMPILER_STRIP_GATE(0x80C164EC, &lit_3712);
#pragma pop

/* 80C164F0-80C164F4 000028 0004+00 0/1 0/0 0/0 .rodata          @3713 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3713 = -512.0f;
COMPILER_STRIP_GATE(0x80C164F0, &lit_3713);
#pragma pop

/* 80C1552C-80C157D4 0000EC 02A8+00 0/0 0/0 1/1 .text            BreakSet__13daObjH_Saku_cFv */
void daObjH_Saku_c::BreakSet() {
    // NONMATCHING
}

/* 80C157D4-80C15810 000394 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C164F4-80C164F8 00002C 0004+00 0/1 0/0 0/0 .rodata          @3765 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3765 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C164F4, &lit_3765);
#pragma pop

/* 80C15810-80C15A4C 0003D0 023C+00 1/1 0/0 0/0 .text SpeedSet__13daObjH_Saku_cFP4cXyzP4cXyzf */
void daObjH_Saku_c::SpeedSet(cXyz* param_0, cXyz* param_1, f32 param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C164F8-80C164FC 000030 0004+00 0/2 0/0 0/0 .rodata          @3809 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3809 = 0.5f;
COMPILER_STRIP_GATE(0x80C164F8, &lit_3809);
#pragma pop

/* 80C164FC-80C16500 000034 0004+00 0/1 0/0 0/0 .rodata          @3810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3810 = 1.5f;
COMPILER_STRIP_GATE(0x80C164FC, &lit_3810);
#pragma pop

/* 80C16500-80C16508 000038 0008+00 0/1 0/0 0/0 .rodata          @3812 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3812[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C16500, &lit_3812);
#pragma pop

/* 80C15A4C-80C15E00 00060C 03B4+00 1/1 0/0 0/0 .text            Action__13daObjH_Saku_cFv */
void daObjH_Saku_c::Action() {
    // NONMATCHING
}

/* 80C15E00-80C15E44 0009C0 0044+00 1/1 0/0 0/0 .text            initBaseMtx__13daObjH_Saku_cFv */
void daObjH_Saku_c::initBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C16508-80C1650C 000040 0004+00 0/1 0/0 0/0 .rodata          @3856 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3856 = 30.0f;
COMPILER_STRIP_GATE(0x80C16508, &lit_3856);
#pragma pop

/* 80C15E44-80C15F4C 000A04 0108+00 2/2 0/0 0/0 .text            setBaseMtx__13daObjH_Saku_cFv */
void daObjH_Saku_c::setBaseMtx() {
    // NONMATCHING
}

/* 80C15F4C-80C15F78 000B0C 002C+00 1/0 0/0 0/0 .text            daObjH_Saku_Draw__FP13daObjH_Saku_c
 */
static void daObjH_Saku_Draw(daObjH_Saku_c* param_0) {
    // NONMATCHING
}

/* 80C15F78-80C15F98 000B38 0020+00 1/0 0/0 0/0 .text daObjH_Saku_Execute__FP13daObjH_Saku_c */
static void daObjH_Saku_Execute(daObjH_Saku_c* param_0) {
    // NONMATCHING
}

/* 80C15F98-80C15FA0 000B58 0008+00 1/0 0/0 0/0 .text daObjH_Saku_IsDelete__FP13daObjH_Saku_c */
static bool daObjH_Saku_IsDelete(daObjH_Saku_c* param_0) {
    return true;
}

/* 80C15FA0-80C15FC4 000B60 0024+00 1/0 0/0 0/0 .text daObjH_Saku_Delete__FP13daObjH_Saku_c */
static void daObjH_Saku_Delete(daObjH_Saku_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C1650C-80C16510 000044 0004+00 0/1 0/0 0/0 .rodata          @3930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3930 = -8.0f;
COMPILER_STRIP_GATE(0x80C1650C, &lit_3930);
#pragma pop

/* 80C16510-80C16514 000048 0004+00 0/1 0/0 0/0 .rodata          @3931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3931 = 480.0f;
COMPILER_STRIP_GATE(0x80C16510, &lit_3931);
#pragma pop

/* 80C16520-80C16520 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C16520 = "H_Saku";
SECTION_DEAD static char const* const stringBase_80C16527 = "H_Saku.dzb";
#pragma pop

/* 80C16540-80C16544 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_h_saku__stringBase0;

/* 80C16544-80C16564 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjH_Saku_Method */
static actor_method_class l_daObjH_Saku_Method = {
    (process_method_func)daObjH_Saku_Create__FP10fopAc_ac_c,
    (process_method_func)daObjH_Saku_Delete__FP13daObjH_Saku_c,
    (process_method_func)daObjH_Saku_Execute__FP13daObjH_Saku_c,
    (process_method_func)daObjH_Saku_IsDelete__FP13daObjH_Saku_c,
    (process_method_func)daObjH_Saku_Draw__FP13daObjH_Saku_c,
};

/* 80C16564-80C16594 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_H_Saku */
extern actor_process_profile_definition g_profile_Obj_H_Saku = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_H_Saku,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjH_Saku_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  464,                    // mPriority
  &l_daObjH_Saku_Method,  // sub_method
  0x00040180,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C16594-80C165B8 000054 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C164AC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C164A4,
};

/* 80C165B8-80C165E0 000078 0028+00 1/1 0/0 0/0 .data            __vt__13daObjH_Saku_c */
SECTION_DATA extern void* __vt__13daObjH_Saku_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daObjH_Saku_cFv,
    (void*)Create__13daObjH_Saku_cFv,
    (void*)Execute__13daObjH_Saku_cFPPA3_A4_f,
    (void*)Draw__13daObjH_Saku_cFv,
    (void*)Delete__13daObjH_Saku_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C15FC4-80C16178 000B84 01B4+00 1/0 0/0 0/0 .text            daObjH_Saku_Create__FP10fopAc_ac_c
 */
static void daObjH_Saku_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C16178-80C161E8 000D38 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C16520-80C16520 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C16532 = "H_Saku.bmd";
#pragma pop

/* 80C161E8-80C1629C 000DA8 00B4+00 1/0 0/0 0/0 .text            CreateHeap__13daObjH_Saku_cFv */
void daObjH_Saku_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C16514-80C16518 00004C 0004+00 0/1 0/0 0/0 .rodata          @3965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3965 = -700.0f;
COMPILER_STRIP_GATE(0x80C16514, &lit_3965);
#pragma pop

/* 80C16518-80C1651C 000050 0004+00 0/1 0/0 0/0 .rodata          @3966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3966 = 700.0f;
COMPILER_STRIP_GATE(0x80C16518, &lit_3966);
#pragma pop

/* 80C1651C-80C16520 000054 0004+00 0/1 0/0 0/0 .rodata          @3967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3967 = 7000.0f;
COMPILER_STRIP_GATE(0x80C1651C, &lit_3967);
#pragma pop

/* 80C1629C-80C162F4 000E5C 0058+00 1/0 0/0 0/0 .text            Create__13daObjH_Saku_cFv */
void daObjH_Saku_c::Create() {
    // NONMATCHING
}

/* 80C162F4-80C16340 000EB4 004C+00 1/0 0/0 0/0 .text            Execute__13daObjH_Saku_cFPPA3_A4_f
 */
void daObjH_Saku_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80C16340-80C1641C 000F00 00DC+00 1/0 0/0 0/0 .text            Draw__13daObjH_Saku_cFv */
void daObjH_Saku_c::Draw() {
    // NONMATCHING
}

/* 80C1641C-80C16450 000FDC 0034+00 1/0 0/0 0/0 .text            Delete__13daObjH_Saku_cFv */
void daObjH_Saku_c::Delete() {
    // NONMATCHING
}

/* 80C16628-80C16634 000048 000C+00 0/1 0/0 0/0 .bss             @3639 */
#pragma push
#pragma force_active on
static u8 lit_3639[12];
#pragma pop

/* 80C16634-80C16640 000054 000C+00 0/1 0/0 0/0 .bss s_pos_l__28@unnamed@d_a_obj_h_saku_cpp@ */
#pragma push
#pragma force_active on
static u8 data_80C16634[12];
#pragma pop

/* 80C16640-80C1664C 000060 000C+00 0/1 0/0 0/0 .bss             @3640 */
#pragma push
#pragma force_active on
static u8 lit_3640[12];
#pragma pop

/* 80C1664C-80C16658 00006C 000C+00 0/1 0/0 0/0 .bss s_pos_r__28@unnamed@d_a_obj_h_saku_cpp@ */
#pragma push
#pragma force_active on
static u8 data_80C1664C[12];
#pragma pop

/* 80C16450-80C164A4 001010 0054+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_h_saku_cpp */
void __sinit_d_a_obj_h_saku_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C16450, __sinit_d_a_obj_h_saku_cpp);
#pragma pop

/* 80C164A4-80C164AC 001064 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C164A4() {
    // NONMATCHING
}

/* 80C164AC-80C164B4 00106C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C164AC() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C16658-80C1665C 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80C16658[4];
#pragma pop

/* 80C1665C-80C16660 00007C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80C1665C[4];
#pragma pop

/* 80C16660-80C16664 000080 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80C16660[4];
#pragma pop

/* 80C16664-80C16668 000084 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80C16664[4];
#pragma pop

/* 80C16668-80C1666C 000088 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C16668[4];
#pragma pop

/* 80C1666C-80C16670 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C1666C[4];
#pragma pop

/* 80C16670-80C16674 000090 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80C16670[4];
#pragma pop

/* 80C16674-80C16678 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80C16674[4];
#pragma pop

/* 80C16678-80C1667C 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80C16678[4];
#pragma pop

/* 80C1667C-80C16680 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80C1667C[4];
#pragma pop

/* 80C16680-80C16684 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80C16680[4];
#pragma pop

/* 80C16684-80C16688 0000A4 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80C16684[4];
#pragma pop

/* 80C16688-80C1668C 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80C16688[4];
#pragma pop

/* 80C1668C-80C16690 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C1668C[4];
#pragma pop

/* 80C16690-80C16694 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80C16690[4];
#pragma pop

/* 80C16694-80C16698 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80C16694[4];
#pragma pop

/* 80C16698-80C1669C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80C16698[4];
#pragma pop

/* 80C1669C-80C166A0 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80C1669C[4];
#pragma pop

/* 80C166A0-80C166A4 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80C166A0[4];
#pragma pop

/* 80C166A4-80C166A8 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80C166A4[4];
#pragma pop

/* 80C166A8-80C166AC 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80C166A8[4];
#pragma pop

/* 80C166AC-80C166B0 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C166AC[4];
#pragma pop

/* 80C166B0-80C166B4 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C166B0[4];
#pragma pop

/* 80C166B4-80C166B8 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80C166B4[4];
#pragma pop

/* 80C166B8-80C166BC 0000D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80C166B8[4];
#pragma pop

/* 80C16520-80C16520 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/**
 * @file d_a_obj_lv6ChangeGate.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv6ChangeGate.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__21daLv6ChangeGate_HIO_cFv();
extern "C" void __dt__18fOpAcm_HIO_entry_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__17daLv6ChangeGate_cFv();
extern "C" void CreateHeap__17daLv6ChangeGate_cFv();
extern "C" void create__17daLv6ChangeGate_cFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void isSwitch__17daLv6ChangeGate_cFv();
extern "C" void Execute__17daLv6ChangeGate_cFPPA3_A4_f();
extern "C" void moveGate__17daLv6ChangeGate_cFv();
extern "C" void eventStart__17daLv6ChangeGate_cFv();
extern "C" void init_modeWait__17daLv6ChangeGate_cFv();
extern "C" void modeWait__17daLv6ChangeGate_cFv();
extern "C" void init_modeSlideRight__17daLv6ChangeGate_cFv();
extern "C" void modeSlideRight__17daLv6ChangeGate_cFv();
extern "C" void init_modeSlideLeft__17daLv6ChangeGate_cFv();
extern "C" void modeSlideLeft__17daLv6ChangeGate_cFv();
extern "C" void init_modeBreak__17daLv6ChangeGate_cFv();
extern "C" void modeBreak__17daLv6ChangeGate_cFv();
extern "C" void Draw__17daLv6ChangeGate_cFv();
extern "C" void Delete__17daLv6ChangeGate_cFv();
extern "C" static void daLv6ChangeGate_Draw__FP17daLv6ChangeGate_c();
extern "C" static void daLv6ChangeGate_Execute__FP17daLv6ChangeGate_c();
extern "C" static void daLv6ChangeGate_Delete__FP17daLv6ChangeGate_c();
extern "C" static void daLv6ChangeGate_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__21daLv6ChangeGate_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv6ChangeGate_cpp();
extern "C" static void func_80C71FC4();
extern "C" static void func_80C71FCC();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void __dt__17daLv6ChangeGate_cFv();
extern "C" u8 const mCcDObjInfo__17daLv6ChangeGate_c[48];
extern "C" extern char const* const d_a_obj_lv6ChangeGate__stringBase0;
extern "C" u8 mCcDCyl__17daLv6ChangeGate_c[68];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotS__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void eventUpdate__17dEvLib_callback_cFv();
extern "C" void orderEvent__17dEvLib_callback_cFiii();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C7214C-80C72150 000000 0004+00 4/4 0/0 0/0 .rodata          @3639 */
SECTION_RODATA static f32 const lit_3639 = 10.0f;
COMPILER_STRIP_GATE(0x80C7214C, &lit_3639);

/* 80C72150-80C72154 000004 0004+00 1/2 0/0 0/0 .rodata          @3640 */
SECTION_RODATA static f32 const lit_3640 = 562.5f;
COMPILER_STRIP_GATE(0x80C72150, &lit_3640);

/* 80C721CC-80C72210 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__17daLv6ChangeGate_c */
SECTION_DATA u8 daLv6ChangeGate_c::mCcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C72210-80C7221C -00001 000C+00 0/1 0/0 0/0 .data            @3874 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3874[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__17daLv6ChangeGate_cFv,
};
#pragma pop

/* 80C7221C-80C72228 -00001 000C+00 0/1 0/0 0/0 .data            @3875 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3875[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeSlideRight__17daLv6ChangeGate_cFv,
};
#pragma pop

/* 80C72228-80C72234 -00001 000C+00 0/1 0/0 0/0 .data            @3876 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3876[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeSlideLeft__17daLv6ChangeGate_cFv,
};
#pragma pop

/* 80C72234-80C72240 -00001 000C+00 0/1 0/0 0/0 .data            @3877 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3877[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeBreak__17daLv6ChangeGate_cFv,
};
#pragma pop

/* 80C72240-80C72270 000094 0030+00 0/1 0/0 0/0 .data            mode_proc$3873 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C72270-80C72290 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv6ChangeGate_Method */
static actor_method_class l_daLv6ChangeGate_Method = {
    (process_method_func)daLv6ChangeGate_Create__FP10fopAc_ac_c,
    (process_method_func)daLv6ChangeGate_Delete__FP17daLv6ChangeGate_c,
    (process_method_func)daLv6ChangeGate_Execute__FP17daLv6ChangeGate_c,
    0,
    (process_method_func)daLv6ChangeGate_Draw__FP17daLv6ChangeGate_c,
};

/* 80C72290-80C722C0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6ChgGate */
extern actor_process_profile_definition g_profile_Obj_Lv6ChgGate = {
  fpcLy_CURRENT_e,           // mLayerID
  3,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_Obj_Lv6ChgGate,       // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daLv6ChangeGate_c), // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  626,                       // mPriority
  &l_daLv6ChangeGate_Method, // sub_method
  0x00040000,                // mStatus
  fopAc_ACTOR_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};

/* 80C722C0-80C722CC 000114 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C722CC-80C722D8 000120 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C722D8-80C722E4 00012C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C722E4-80C722F0 000138 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C722F0-80C72308 000144 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80C72308-80C72350 00015C 0048+00 2/2 0/0 0/0 .data            __vt__17daLv6ChangeGate_c */
SECTION_DATA extern void* __vt__17daLv6ChangeGate_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__17daLv6ChangeGate_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__17daLv6ChangeGate_cFPPA3_A4_f,
    (void*)Draw__17daLv6ChangeGate_cFv,
    (void*)Delete__17daLv6ChangeGate_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C71FCC,
    (void*)func_80C71FC4,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__17daLv6ChangeGate_cFv,
    (void*)eventStart__17daLv6ChangeGate_cFv,
};

/* 80C72350-80C7235C 0001A4 000C+00 2/2 0/0 0/0 .data            __vt__21daLv6ChangeGate_HIO_c */
SECTION_DATA extern void* __vt__21daLv6ChangeGate_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__21daLv6ChangeGate_HIO_cFv,
};

/* 80C7235C-80C72368 0001B0 000C+00 3/3 0/0 0/0 .data            __vt__18fOpAcm_HIO_entry_c */
SECTION_DATA extern void* __vt__18fOpAcm_HIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18fOpAcm_HIO_entry_cFv,
};

/* 80C72368-80C72374 0001BC 000C+00 4/4 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C70C4C-80C70C94 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__21daLv6ChangeGate_HIO_cFv */
daLv6ChangeGate_HIO_c::daLv6ChangeGate_HIO_c() {
    // NONMATCHING
}

/* 80C70C94-80C70CF0 000134 005C+00 1/0 0/0 0/0 .text            __dt__18fOpAcm_HIO_entry_cFv */
// fOpAcm_HIO_entry_c::~fOpAcm_HIO_entry_c() {
extern "C" void __dt__18fOpAcm_HIO_entry_cFv() {
    // NONMATCHING
}

/* 80C70CF0-80C70D38 000190 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C72154-80C72184 000008 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__17daLv6ChangeGate_c */
SECTION_RODATA u8 const daLv6ChangeGate_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x79, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C72154, &daLv6ChangeGate_c::mCcDObjInfo);

/* 80C72184-80C72188 000038 0004+00 3/6 0/0 0/0 .rodata          @3664 */
SECTION_RODATA static u8 const lit_3664[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C72184, &lit_3664);

/* 80C70D38-80C70DD4 0001D8 009C+00 2/2 0/0 0/0 .text            setBaseMtx__17daLv6ChangeGate_cFv
 */
void daLv6ChangeGate_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C721A4-80C721A4 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C721A4 = "L6ChBlk";
#pragma pop

/* 80C70DD4-80C70E40 000274 006C+00 1/0 0/0 0/0 .text            CreateHeap__17daLv6ChangeGate_cFv
 */
void daLv6ChangeGate_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C72380-80C7238C 000008 000C+00 1/1 0/0 0/0 .bss             @3631 */
static u8 lit_3631[12];

/* 80C7238C-80C7239C 000014 0010+00 4/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80C70E40-80C7106C 0002E0 022C+00 1/1 0/0 0/0 .text            create__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::create() {
    // NONMATCHING
}

/* 80C7106C-80C71138 00050C 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80C71138-80C711BC 0005D8 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80C711BC-80C71204 00065C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C71204-80C7124C 0006A4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C7124C-80C712A8 0006EC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C712A8-80C712F4 000748 004C+00 2/2 0/0 0/0 .text            isSwitch__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::isSwitch() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C72188-80C7218C 00003C 0004+00 0/1 0/0 0/0 .rodata          @3866 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3866 = -250.0f;
COMPILER_STRIP_GATE(0x80C72188, &lit_3866);
#pragma pop

/* 80C7218C-80C72190 000040 0004+00 0/1 0/0 0/0 .rodata          @3867 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3867 = 65.0f;
COMPILER_STRIP_GATE(0x80C7218C, &lit_3867);
#pragma pop

/* 80C72190-80C72194 000044 0004+00 0/1 0/0 0/0 .rodata          @3868 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3868 = 330.0f;
COMPILER_STRIP_GATE(0x80C72190, &lit_3868);
#pragma pop

/* 80C72194-80C72198 000048 0004+00 0/1 0/0 0/0 .rodata          @3869 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3869 = 60.0f;
COMPILER_STRIP_GATE(0x80C72194, &lit_3869);
#pragma pop

/* 80C712F4-80C71494 000794 01A0+00 1/0 0/0 0/0 .text Execute__17daLv6ChangeGate_cFPPA3_A4_f */
void daLv6ChangeGate_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7239C-80C723A0 000024 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C7239C[4];

/* 80C71494-80C715BC 000934 0128+00 1/1 0/0 0/0 .text            moveGate__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::moveGate() {
    // NONMATCHING
}

/* 80C715BC-80C715F4 000A5C 0038+00 2/1 0/0 0/0 .text            eventStart__17daLv6ChangeGate_cFv
 */
void daLv6ChangeGate_c::eventStart() {
    // NONMATCHING
}

/* 80C715F4-80C71600 000A94 000C+00 3/3 0/0 0/0 .text init_modeWait__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::init_modeWait() {
    // NONMATCHING
}

/* 80C71600-80C71604 000AA0 0004+00 1/0 0/0 0/0 .text            modeWait__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::modeWait() {
    /* empty function */
}

/* ############################################################################################## */
/* 80C72198-80C7219C 00004C 0004+00 4/6 0/0 0/0 .rodata          @3922 */
SECTION_RODATA static f32 const lit_3922 = 1.0f;
COMPILER_STRIP_GATE(0x80C72198, &lit_3922);

/* 80C7219C-80C721A0 000050 0004+00 3/5 0/0 0/0 .rodata          @3923 */
SECTION_RODATA static f32 const lit_3923 = -1.0f;
COMPILER_STRIP_GATE(0x80C7219C, &lit_3923);

/* 80C71604-80C716B4 000AA4 00B0+00 1/1 0/0 0/0 .text init_modeSlideRight__17daLv6ChangeGate_cFv
 */
void daLv6ChangeGate_c::init_modeSlideRight() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C721A0-80C721A4 000054 0004+00 0/2 0/0 0/0 .rodata          @3953 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3953 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C721A0, &lit_3953);
#pragma pop

/* 80C716B4-80C7183C 000B54 0188+00 1/0 0/0 0/0 .text modeSlideRight__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::modeSlideRight() {
    // NONMATCHING
}

/* 80C7183C-80C718EC 000CDC 00B0+00 1/1 0/0 0/0 .text init_modeSlideLeft__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::init_modeSlideLeft() {
    // NONMATCHING
}

/* 80C718EC-80C71A74 000D8C 0188+00 1/0 0/0 0/0 .text modeSlideLeft__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::modeSlideLeft() {
    // NONMATCHING
}

/* 80C71A74-80C71AF8 000F14 0084+00 1/1 0/0 0/0 .text init_modeBreak__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::init_modeBreak() {
    // NONMATCHING
}

/* 80C71AF8-80C71D40 000F98 0248+00 1/0 0/0 0/0 .text            modeBreak__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::modeBreak() {
    // NONMATCHING
}

/* 80C71D40-80C71DE4 0011E0 00A4+00 1/0 0/0 0/0 .text            Draw__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::Draw() {
    // NONMATCHING
}

/* 80C71DE4-80C71E14 001284 0030+00 1/0 0/0 0/0 .text            Delete__17daLv6ChangeGate_cFv */
void daLv6ChangeGate_c::Delete() {
    // NONMATCHING
}

/* 80C71E14-80C71E40 0012B4 002C+00 1/0 0/0 0/0 .text daLv6ChangeGate_Draw__FP17daLv6ChangeGate_c
 */
static void daLv6ChangeGate_Draw(daLv6ChangeGate_c* param_0) {
    // NONMATCHING
}

/* 80C71E40-80C71E60 0012E0 0020+00 1/0 0/0 0/0 .text
 * daLv6ChangeGate_Execute__FP17daLv6ChangeGate_c               */
static void daLv6ChangeGate_Execute(daLv6ChangeGate_c* param_0) {
    // NONMATCHING
}

/* 80C71E60-80C71E80 001300 0020+00 1/0 0/0 0/0 .text
 * daLv6ChangeGate_Delete__FP17daLv6ChangeGate_c                */
static void daLv6ChangeGate_Delete(daLv6ChangeGate_c* param_0) {
    // NONMATCHING
}

/* 80C71E80-80C71EA0 001320 0020+00 1/0 0/0 0/0 .text daLv6ChangeGate_Create__FP10fopAc_ac_c */
static void daLv6ChangeGate_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C71EA0-80C71EE8 001340 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C71EE8-80C71F54 001388 006C+00 2/1 0/0 0/0 .text            __dt__21daLv6ChangeGate_HIO_cFv */
daLv6ChangeGate_HIO_c::~daLv6ChangeGate_HIO_c() {
    // NONMATCHING
}

/* 80C71F54-80C71FC4 0013F4 0070+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv6ChangeGate_cpp
 */
void __sinit_d_a_obj_lv6ChangeGate_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C71F54, __sinit_d_a_obj_lv6ChangeGate_cpp);
#pragma pop

/* 80C71FC4-80C71FCC 001464 0008+00 1/0 0/0 0/0 .text @1448@eventStart__17daLv6ChangeGate_cFv */
static void func_80C71FC4() {
    // NONMATCHING
}

/* 80C71FCC-80C71FD4 00146C 0008+00 1/0 0/0 0/0 .text            @1448@__dt__17daLv6ChangeGate_cFv
 */
static void func_80C71FCC() {
    // NONMATCHING
}

/* 80C71FD4-80C7201C 001474 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80C7201C-80C72024 0014BC 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80C72024-80C7202C 0014C4 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80C7202C-80C72034 0014CC 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80C72034-80C72138 0014D4 0104+00 2/1 0/0 0/0 .text            __dt__17daLv6ChangeGate_cFv */
daLv6ChangeGate_c::~daLv6ChangeGate_c() {
    // NONMATCHING
}

/* 80C721A4-80C721A4 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/**
 * @file d_a_obj_lv6SwGate.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv6SwGate.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__17daLv6SwGate_HIO_cFv();
extern "C" void __dt__18fOpAcm_HIO_entry_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__13daLv6SwGate_cFv();
extern "C" void CreateHeap__13daLv6SwGate_cFv();
extern "C" void create__13daLv6SwGate_cFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void isSwitch__13daLv6SwGate_cFv();
extern "C" void Execute__13daLv6SwGate_cFPPA3_A4_f();
extern "C" void moveGate__13daLv6SwGate_cFv();
extern "C" void init_modeWait__13daLv6SwGate_cFv();
extern "C" void modeWait__13daLv6SwGate_cFv();
extern "C" void init_modeOpen__13daLv6SwGate_cFv();
extern "C" void modeOpen__13daLv6SwGate_cFv();
extern "C" void init_modeClose__13daLv6SwGate_cFv();
extern "C" void modeClose__13daLv6SwGate_cFv();
extern "C" void init_modeBreak__13daLv6SwGate_cFv();
extern "C" void modeBreak__13daLv6SwGate_cFv();
extern "C" void Draw__13daLv6SwGate_cFv();
extern "C" void Delete__13daLv6SwGate_cFv();
extern "C" static void daLv6SwGate_Draw__FP13daLv6SwGate_c();
extern "C" static void daLv6SwGate_Execute__FP13daLv6SwGate_c();
extern "C" static void daLv6SwGate_Delete__FP13daLv6SwGate_c();
extern "C" static void daLv6SwGate_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__17daLv6SwGate_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv6SwGate_cpp();
extern "C" u8 const mCcDObjInfo__13daLv6SwGate_c[48];
extern "C" extern char const* const d_a_obj_lv6SwGate__stringBase0;
extern "C" u8 mCcDCyl__13daLv6SwGate_c[68];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotS__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
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
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
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
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_25();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_25();
extern "C" void _restgpr_29();
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
/* 80C75524-80C75528 000000 0004+00 5/5 0/0 0/0 .rodata          @3633 */
SECTION_RODATA static f32 const lit_3633 = 15.0f;
COMPILER_STRIP_GATE(0x80C75524, &lit_3633);

/* 80C75528-80C7552C 000004 0004+00 0/2 0/0 0/0 .rodata          @3634 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3634 = 30.0f;
COMPILER_STRIP_GATE(0x80C75528, &lit_3634);
#pragma pop

/* 80C7552C-80C75530 000008 0004+00 0/2 0/0 0/0 .rodata          @3635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3635 = 275.0f;
COMPILER_STRIP_GATE(0x80C7552C, &lit_3635);
#pragma pop

/* 80C755B8-80C755FC 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__13daLv6SwGate_c */
SECTION_DATA u8 daLv6SwGate_c::mCcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C755FC-80C75614 000064 0018+00 1/1 0/0 0/0 .data            l_cull_box */
SECTION_DATA static u8 l_cull_box[24] = {
    0xC4, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00,
    0x44, 0x96, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00,
};

/* 80C75614-80C75620 -00001 000C+00 0/1 0/0 0/0 .data            @3948 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3948[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__13daLv6SwGate_cFv,
};
#pragma pop

/* 80C75620-80C7562C -00001 000C+00 0/1 0/0 0/0 .data            @3949 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3949[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeOpen__13daLv6SwGate_cFv,
};
#pragma pop

/* 80C7562C-80C75638 -00001 000C+00 0/1 0/0 0/0 .data            @3950 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3950[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeClose__13daLv6SwGate_cFv,
};
#pragma pop

/* 80C75638-80C75644 -00001 000C+00 0/1 0/0 0/0 .data            @3951 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3951[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeBreak__13daLv6SwGate_cFv,
};
#pragma pop

/* 80C75644-80C75674 0000AC 0030+00 0/1 0/0 0/0 .data            mode_proc$3947 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C75674-80C75694 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv6SwGate_Method */
static actor_method_class l_daLv6SwGate_Method = {
    (process_method_func)daLv6SwGate_Create__FP10fopAc_ac_c,
    (process_method_func)daLv6SwGate_Delete__FP13daLv6SwGate_c,
    (process_method_func)daLv6SwGate_Execute__FP13daLv6SwGate_c,
    0,
    (process_method_func)daLv6SwGate_Draw__FP13daLv6SwGate_c,
};

/* 80C75694-80C756C4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6SwGate */
extern actor_process_profile_definition g_profile_Obj_Lv6SwGate = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv6SwGate,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daLv6SwGate_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  624,                    // mPriority
  &l_daLv6SwGate_Method,  // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C756C4-80C756D0 00012C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C756D0-80C756DC 000138 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C756DC-80C756E8 000144 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C756E8-80C756F4 000150 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C756F4-80C7571C 00015C 0028+00 1/1 0/0 0/0 .data            __vt__13daLv6SwGate_c */
SECTION_DATA extern void* __vt__13daLv6SwGate_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daLv6SwGate_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__13daLv6SwGate_cFPPA3_A4_f,
    (void*)Draw__13daLv6SwGate_cFv,
    (void*)Delete__13daLv6SwGate_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C7571C-80C75728 000184 000C+00 2/2 0/0 0/0 .data            __vt__17daLv6SwGate_HIO_c */
SECTION_DATA extern void* __vt__17daLv6SwGate_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daLv6SwGate_HIO_cFv,
};

/* 80C75728-80C75734 000190 000C+00 3/3 0/0 0/0 .data            __vt__18fOpAcm_HIO_entry_c */
SECTION_DATA extern void* __vt__18fOpAcm_HIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18fOpAcm_HIO_entry_cFv,
};

/* 80C75734-80C75740 00019C 000C+00 4/4 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C73F0C-80C73F60 0000EC 0054+00 1/1 0/0 0/0 .text            __ct__17daLv6SwGate_HIO_cFv */
daLv6SwGate_HIO_c::daLv6SwGate_HIO_c() {
    // NONMATCHING
}

/* 80C73F60-80C73FBC 000140 005C+00 1/0 0/0 0/0 .text            __dt__18fOpAcm_HIO_entry_cFv */
// fOpAcm_HIO_entry_c::~fOpAcm_HIO_entry_c() {
extern "C" void __dt__18fOpAcm_HIO_entry_cFv() {
    // NONMATCHING
}

/* 80C73FBC-80C74004 00019C 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C75530-80C75560 00000C 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__13daLv6SwGate_c */
SECTION_RODATA u8 const daLv6SwGate_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x79, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C75530, &daLv6SwGate_c::mCcDObjInfo);

/* 80C75560-80C75564 00003C 0004+00 1/3 0/0 0/0 .rodata          @3674 */
SECTION_RODATA static f32 const lit_3674 = -150.0f;
COMPILER_STRIP_GATE(0x80C75560, &lit_3674);

/* 80C75564-80C75568 000040 0004+00 3/7 0/0 0/0 .rodata          @3675 */
SECTION_RODATA static u8 const lit_3675[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C75564, &lit_3675);

/* 80C74004-80C74158 0001E4 0154+00 2/2 0/0 0/0 .text            setBaseMtx__13daLv6SwGate_cFv */
void daLv6SwGate_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7558C-80C7558C 000068 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C7558C = "L6SwGate";
#pragma pop

/* 80C74158-80C7429C 000338 0144+00 1/0 0/0 0/0 .text            CreateHeap__13daLv6SwGate_cFv */
void daLv6SwGate_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C75748-80C75754 000008 000C+00 1/1 0/0 0/0 .bss             @3625 */
static u8 lit_3625[12];

/* 80C75754-80C7576C 000014 0018+00 4/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[24];

/* 80C7429C-80C744E4 00047C 0248+00 1/1 0/0 0/0 .text            create__13daLv6SwGate_cFv */
void daLv6SwGate_c::create() {
    // NONMATCHING
}

/* 80C744E4-80C745B0 0006C4 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80C745B0-80C74634 000790 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80C74634-80C7467C 000814 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C7467C-80C746C4 00085C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C746C4-80C74720 0008A4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C74720-80C7476C 000900 004C+00 2/2 0/0 0/0 .text            isSwitch__13daLv6SwGate_cFv */
void daLv6SwGate_c::isSwitch() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C75568-80C7556C 000044 0004+00 0/1 0/0 0/0 .rodata          @3939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3939 = 120.0f;
COMPILER_STRIP_GATE(0x80C75568, &lit_3939);
#pragma pop

/* 80C7556C-80C75570 000048 0004+00 0/1 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3940 = 55.0f;
COMPILER_STRIP_GATE(0x80C7556C, &lit_3940);
#pragma pop

/* 80C75570-80C75574 00004C 0004+00 0/1 0/0 0/0 .rodata          @3941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3941 = 300.0f;
COMPILER_STRIP_GATE(0x80C75570, &lit_3941);
#pragma pop

/* 80C75574-80C7557C 000050 0008+00 0/1 0/0 0/0 .rodata          @3943 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3943[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C75574, &lit_3943);
#pragma pop

/* 80C7476C-80C74A3C 00094C 02D0+00 1/0 0/0 0/0 .text            Execute__13daLv6SwGate_cFPPA3_A4_f
 */
void daLv6SwGate_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7576C-80C75770 00002C 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C7576C[4];

/* 80C74A3C-80C74B48 000C1C 010C+00 1/1 0/0 0/0 .text            moveGate__13daLv6SwGate_cFv */
void daLv6SwGate_c::moveGate() {
    // NONMATCHING
}

/* 80C74B48-80C74B54 000D28 000C+00 3/3 0/0 0/0 .text            init_modeWait__13daLv6SwGate_cFv */
void daLv6SwGate_c::init_modeWait() {
    // NONMATCHING
}

/* 80C74B54-80C74B58 000D34 0004+00 1/0 0/0 0/0 .text            modeWait__13daLv6SwGate_cFv */
void daLv6SwGate_c::modeWait() {
    /* empty function */
}

/* 80C74B58-80C74B64 000D38 000C+00 1/1 0/0 0/0 .text            init_modeOpen__13daLv6SwGate_cFv */
void daLv6SwGate_c::init_modeOpen() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C7557C-80C75580 000058 0004+00 0/1 0/0 0/0 .rodata          @3992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3992 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C7557C, &lit_3992);
#pragma pop

/* 80C75580-80C75584 00005C 0004+00 0/2 0/0 0/0 .rodata          @3993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3993 = 5.0f;
COMPILER_STRIP_GATE(0x80C75580, &lit_3993);
#pragma pop

/* 80C75584-80C75588 000060 0004+00 1/4 0/0 0/0 .rodata          @3994 */
SECTION_RODATA static f32 const lit_3994 = 1.0f;
COMPILER_STRIP_GATE(0x80C75584, &lit_3994);

/* 80C75588-80C7558C 000064 0004+00 1/3 0/0 0/0 .rodata          @3995 */
SECTION_RODATA static f32 const lit_3995 = -1.0f;
COMPILER_STRIP_GATE(0x80C75588, &lit_3995);

/* 80C74B64-80C74C7C 000D44 0118+00 1/0 0/0 0/0 .text            modeOpen__13daLv6SwGate_cFv */
void daLv6SwGate_c::modeOpen() {
    // NONMATCHING
}

/* 80C74C7C-80C74C94 000E5C 0018+00 1/1 0/0 0/0 .text            init_modeClose__13daLv6SwGate_cFv
 */
void daLv6SwGate_c::init_modeClose() {
    // NONMATCHING
}

/* 80C74C94-80C74DBC 000E74 0128+00 1/0 0/0 0/0 .text            modeClose__13daLv6SwGate_cFv */
void daLv6SwGate_c::modeClose() {
    // NONMATCHING
}

/* 80C74DBC-80C74E40 000F9C 0084+00 1/1 0/0 0/0 .text            init_modeBreak__13daLv6SwGate_cFv
 */
void daLv6SwGate_c::init_modeBreak() {
    // NONMATCHING
}

/* 80C74E40-80C7524C 001020 040C+00 1/0 0/0 0/0 .text            modeBreak__13daLv6SwGate_cFv */
void daLv6SwGate_c::modeBreak() {
    // NONMATCHING
}

/* 80C7524C-80C752F8 00142C 00AC+00 1/0 0/0 0/0 .text            Draw__13daLv6SwGate_cFv */
void daLv6SwGate_c::Draw() {
    // NONMATCHING
}

/* 80C752F8-80C75360 0014D8 0068+00 1/0 0/0 0/0 .text            Delete__13daLv6SwGate_cFv */
void daLv6SwGate_c::Delete() {
    // NONMATCHING
}

/* 80C75360-80C7538C 001540 002C+00 1/0 0/0 0/0 .text            daLv6SwGate_Draw__FP13daLv6SwGate_c
 */
static void daLv6SwGate_Draw(daLv6SwGate_c* param_0) {
    // NONMATCHING
}

/* 80C7538C-80C753AC 00156C 0020+00 1/0 0/0 0/0 .text daLv6SwGate_Execute__FP13daLv6SwGate_c */
static void daLv6SwGate_Execute(daLv6SwGate_c* param_0) {
    // NONMATCHING
}

/* 80C753AC-80C753CC 00158C 0020+00 1/0 0/0 0/0 .text daLv6SwGate_Delete__FP13daLv6SwGate_c */
static void daLv6SwGate_Delete(daLv6SwGate_c* param_0) {
    // NONMATCHING
}

/* 80C753CC-80C753EC 0015AC 0020+00 1/0 0/0 0/0 .text            daLv6SwGate_Create__FP10fopAc_ac_c
 */
static void daLv6SwGate_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C753EC-80C75434 0015CC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C75434-80C754A0 001614 006C+00 2/1 0/0 0/0 .text            __dt__17daLv6SwGate_HIO_cFv */
daLv6SwGate_HIO_c::~daLv6SwGate_HIO_c() {
    // NONMATCHING
}

/* 80C754A0-80C75510 001680 0070+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv6SwGate_cpp */
void __sinit_d_a_obj_lv6SwGate_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C754A0, __sinit_d_a_obj_lv6SwGate_cpp);
#pragma pop

/* 80C7558C-80C7558C 000068 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/**
 * @file d_a_obj_rotTrap.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_rotTrap.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__15daRotTrap_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__11daRotTrap_cFv();
extern "C" void CreateHeap__11daRotTrap_cFv();
extern "C" void create__11daRotTrap_cFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void Execute__11daRotTrap_cFPPA3_A4_f();
extern "C" void procMain__11daRotTrap_cFv();
extern "C" void init_modeWait__11daRotTrap_cFv();
extern "C" void modeWait__11daRotTrap_cFv();
extern "C" void init_modeAcc__11daRotTrap_cFv();
extern "C" void modeAcc__11daRotTrap_cFv();
extern "C" void init_modeMove__11daRotTrap_cFv();
extern "C" void modeMove__11daRotTrap_cFv();
extern "C" void seSet__11daRotTrap_cFv();
extern "C" void Draw__11daRotTrap_cFv();
extern "C" void Delete__11daRotTrap_cFv();
extern "C" static void daRotTrap_Draw__FP11daRotTrap_c();
extern "C" static void daRotTrap_Execute__FP11daRotTrap_c();
extern "C" static void daRotTrap_Delete__FP11daRotTrap_c();
extern "C" static void daRotTrap_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__15daRotTrap_HIO_cFv();
extern "C" void __sinit_d_a_obj_rotTrap_cpp();
extern "C" u8 const mCcDObjInfo__11daRotTrap_c[48];
extern "C" extern char const* const d_a_obj_rotTrap__stringBase0;
extern "C" u8 mCcDCyl__11daRotTrap_c[68];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotS__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void StartShock__12dVibration_cFii4cXyz();
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
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_20();
extern "C" void _savegpr_25();
extern "C" void _restgpr_20();
extern "C" void _restgpr_25();
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
/* 80CC0808-80CC080C 000000 0004+00 3/4 0/0 0/0 .rodata          @3649 */
SECTION_RODATA static f32 const lit_3649 = 4.5f;
COMPILER_STRIP_GATE(0x80CC0808, &lit_3649);

/* 80CC0880-80CC08C4 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__11daRotTrap_c */
SECTION_DATA u8 daRotTrap_c::mCcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CC08C4-80CC096C 000064 00A8+00 0/1 0/0 0/0 .data            atPos */
#pragma push
#pragma force_active on
SECTION_DATA static u8 atPos[168] = {
    0xC2, 0x14, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0xC3, 0x48, 0x00, 0x00, 0xC2, 0x14, 0x00, 0x00,
    0x43, 0x02, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00, 0xC2, 0x14, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00,
    0xC3, 0xC8, 0x00, 0x00, 0xC2, 0x14, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0xC3, 0xFA, 0x00, 0x00,
    0xC2, 0x14, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0xC4, 0x16, 0x00, 0x00, 0xC2, 0x14, 0x00, 0x00,
    0x43, 0x02, 0x00, 0x00, 0xC4, 0x2F, 0x00, 0x00, 0xC2, 0x14, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00,
    0xC4, 0x48, 0x00, 0x00, 0x42, 0x14, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00,
    0x42, 0x14, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0x42, 0x14, 0x00, 0x00,
    0x43, 0x02, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00, 0x42, 0x14, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00,
    0x43, 0xFA, 0x00, 0x00, 0x42, 0x14, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0x44, 0x16, 0x00, 0x00,
    0x42, 0x14, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0x44, 0x2F, 0x00, 0x00, 0x42, 0x14, 0x00, 0x00,
    0x43, 0x02, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00,
};
#pragma pop

/* 80CC096C-80CC09A4 00010C 0038+00 0/1 0/0 0/0 .data            atR */
#pragma push
#pragma force_active on
SECTION_DATA static u8 atR[56] = {
    0x42, 0x48, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x42, 0x48,
    0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
    0x42, 0x48, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x42, 0x48,
    0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
};
#pragma pop

/* 80CC09A4-80CC09B0 -00001 000C+00 0/1 0/0 0/0 .data            @3851 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3851[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__11daRotTrap_cFv,
};
#pragma pop

/* 80CC09B0-80CC09BC -00001 000C+00 0/1 0/0 0/0 .data            @3852 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3852[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeAcc__11daRotTrap_cFv,
};
#pragma pop

/* 80CC09BC-80CC09C8 -00001 000C+00 0/1 0/0 0/0 .data            @3853 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3853[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMove__11daRotTrap_cFv,
};
#pragma pop

/* 80CC09C8-80CC09EC 000168 0024+00 0/1 0/0 0/0 .data            mode_proc$3850 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CC09EC-80CC0A0C -00001 0020+00 1/0 0/0 0/0 .data            l_daRotTrap_Method */
static actor_method_class l_daRotTrap_Method = {
    (process_method_func)daRotTrap_Create__FP10fopAc_ac_c,
    (process_method_func)daRotTrap_Delete__FP11daRotTrap_c,
    (process_method_func)daRotTrap_Execute__FP11daRotTrap_c,
    0,
    (process_method_func)daRotTrap_Draw__FP11daRotTrap_c,
};

/* 80CC0A0C-80CC0A3C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_RotTrap */
extern actor_process_profile_definition g_profile_Obj_RotTrap = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_RotTrap,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daRotTrap_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  525,                    // mPriority
  &l_daRotTrap_Method,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CC0A3C-80CC0A48 0001DC 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80CC0A48-80CC0A54 0001E8 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80CC0A54-80CC0A60 0001F4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CC0A60-80CC0A6C 000200 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80CC0A6C-80CC0A94 00020C 0028+00 1/1 0/0 0/0 .data            __vt__11daRotTrap_c */
SECTION_DATA extern void* __vt__11daRotTrap_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__11daRotTrap_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__11daRotTrap_cFPPA3_A4_f,
    (void*)Draw__11daRotTrap_cFv,
    (void*)Delete__11daRotTrap_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80CC0A94-80CC0AA0 000234 000C+00 2/2 0/0 0/0 .data            __vt__15daRotTrap_HIO_c */
SECTION_DATA extern void* __vt__15daRotTrap_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daRotTrap_HIO_cFv,
};

/* 80CC0AA0-80CC0AAC 000240 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80CBF8AC-80CBF8F8 0000EC 004C+00 1/1 0/0 0/0 .text            __ct__15daRotTrap_HIO_cFv */
daRotTrap_HIO_c::daRotTrap_HIO_c() {
    // NONMATCHING
}

/* 80CBF8F8-80CBF940 000138 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80CBF940-80CBF9D8 000180 0098+00 2/2 0/0 0/0 .text            setBaseMtx__11daRotTrap_cFv */
void daRotTrap_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC0858-80CC0858 000050 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CC0858 = "P_kama";
#pragma pop

/* 80CBF9D8-80CBFAC8 000218 00F0+00 1/0 0/0 0/0 .text            CreateHeap__11daRotTrap_cFv */
void daRotTrap_c::CreateHeap() {
    // NONMATCHING
}

/* 80CBFAC8-80CBFC88 000308 01C0+00 1/1 0/0 0/0 .text            create__11daRotTrap_cFv */
void daRotTrap_c::create() {
    // NONMATCHING
}

/* 80CBFC88-80CBFD54 0004C8 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80CBFD54-80CBFDD8 000594 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80CBFDD8-80CBFE20 000618 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80CBFE20-80CBFE68 000660 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80CBFE68-80CBFEC4 0006A8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CBFEC4-80CBFF1C 000704 0058+00 1/0 0/0 0/0 .text            Execute__11daRotTrap_cFPPA3_A4_f */
void daRotTrap_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC080C-80CC083C 000004 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__11daRotTrap_c */
SECTION_RODATA u8 const daRotTrap_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CC080C, &daRotTrap_c::mCcDObjInfo);

/* 80CC083C-80CC0840 000034 0004+00 1/1 0/0 0/0 .rodata          @3880 */
SECTION_RODATA static f32 const lit_3880 = 45.0f;
COMPILER_STRIP_GATE(0x80CC083C, &lit_3880);

/* 80CC0AB8-80CC0AC4 000008 000C+00 1/1 0/0 0/0 .bss             @3643 */
static u8 lit_3643[12];

/* 80CC0AC4-80CC0AD4 000014 0010+00 4/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80CC0AD4-80CC0AD8 000024 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80CC0AD4[4];

/* 80CBFF1C-80CC00AC 00075C 0190+00 1/1 0/0 0/0 .text            procMain__11daRotTrap_cFv */
void daRotTrap_c::procMain() {
    // NONMATCHING
}

/* 80CC00AC-80CC0120 0008EC 0074+00 1/1 0/0 0/0 .text            init_modeWait__11daRotTrap_cFv */
void daRotTrap_c::init_modeWait() {
    // NONMATCHING
}

/* 80CC0120-80CC0180 000960 0060+00 1/0 0/0 0/0 .text            modeWait__11daRotTrap_cFv */
void daRotTrap_c::modeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC0840-80CC0844 000038 0004+00 0/2 0/0 0/0 .rodata          @3921 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3921[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CC0840, &lit_3921);
#pragma pop

/* 80CC0844-80CC0848 00003C 0004+00 2/4 0/0 0/0 .rodata          @3922 */
SECTION_RODATA static f32 const lit_3922 = 1.0f;
COMPILER_STRIP_GATE(0x80CC0844, &lit_3922);

/* 80CC0848-80CC084C 000040 0004+00 0/2 0/0 0/0 .rodata          @3923 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3923 = 0x43360B61;
COMPILER_STRIP_GATE(0x80CC0848, &lit_3923);
#pragma pop

/* 80CC084C-80CC0850 000044 0004+00 0/2 0/0 0/0 .rodata          @3924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3924 = 360.0f;
COMPILER_STRIP_GATE(0x80CC084C, &lit_3924);
#pragma pop

/* 80CC0850-80CC0854 000048 0004+00 0/2 0/0 0/0 .rodata          @3925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3925 = 30.0f;
COMPILER_STRIP_GATE(0x80CC0850, &lit_3925);
#pragma pop

/* 80CC0180-80CC027C 0009C0 00FC+00 1/1 0/0 0/0 .text            init_modeAcc__11daRotTrap_cFv */
void daRotTrap_c::init_modeAcc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CC0854-80CC0858 00004C 0004+00 2/3 0/0 0/0 .rodata          @3940 */
SECTION_RODATA static f32 const lit_3940 = -1.0f;
COMPILER_STRIP_GATE(0x80CC0854, &lit_3940);

/* 80CC027C-80CC034C 000ABC 00D0+00 1/0 0/0 0/0 .text            modeAcc__11daRotTrap_cFv */
void daRotTrap_c::modeAcc() {
    // NONMATCHING
}

/* 80CC034C-80CC0360 000B8C 0014+00 2/2 0/0 0/0 .text            init_modeMove__11daRotTrap_cFv */
void daRotTrap_c::init_modeMove() {
    // NONMATCHING
}

/* 80CC0360-80CC0440 000BA0 00E0+00 1/0 0/0 0/0 .text            modeMove__11daRotTrap_cFv */
void daRotTrap_c::modeMove() {
    // NONMATCHING
}

/* 80CC0440-80CC0548 000C80 0108+00 2/2 0/0 0/0 .text            seSet__11daRotTrap_cFv */
void daRotTrap_c::seSet() {
    // NONMATCHING
}

/* 80CC0548-80CC05EC 000D88 00A4+00 1/0 0/0 0/0 .text            Draw__11daRotTrap_cFv */
void daRotTrap_c::Draw() {
    // NONMATCHING
}

/* 80CC05EC-80CC0654 000E2C 0068+00 1/0 0/0 0/0 .text            Delete__11daRotTrap_cFv */
void daRotTrap_c::Delete() {
    // NONMATCHING
}

/* 80CC0654-80CC0680 000E94 002C+00 1/0 0/0 0/0 .text            daRotTrap_Draw__FP11daRotTrap_c */
static void daRotTrap_Draw(daRotTrap_c* param_0) {
    // NONMATCHING
}

/* 80CC0680-80CC06A0 000EC0 0020+00 1/0 0/0 0/0 .text            daRotTrap_Execute__FP11daRotTrap_c
 */
static void daRotTrap_Execute(daRotTrap_c* param_0) {
    // NONMATCHING
}

/* 80CC06A0-80CC06C0 000EE0 0020+00 1/0 0/0 0/0 .text            daRotTrap_Delete__FP11daRotTrap_c
 */
static void daRotTrap_Delete(daRotTrap_c* param_0) {
    // NONMATCHING
}

/* 80CC06C0-80CC06E0 000F00 0020+00 1/0 0/0 0/0 .text            daRotTrap_Create__FP10fopAc_ac_c */
static void daRotTrap_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CC06E0-80CC0728 000F20 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CC0728-80CC0784 000F68 005C+00 2/1 0/0 0/0 .text            __dt__15daRotTrap_HIO_cFv */
daRotTrap_HIO_c::~daRotTrap_HIO_c() {
    // NONMATCHING
}

/* 80CC0784-80CC07F4 000FC4 0070+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_rotTrap_cpp */
void __sinit_d_a_obj_rotTrap_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CC0784, __sinit_d_a_obj_rotTrap_cpp);
#pragma pop

/* 80CC0858-80CC0858 000050 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

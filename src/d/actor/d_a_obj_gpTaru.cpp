/**
 * @file d_a_obj_gpTaru.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_gpTaru.h"
#include "dol2asm.h"




//
// Forward References:
//

extern "C" void __ct__14daGpTaru_HIO_cFv();
extern "C" void __dt__18fOpAcm_HIO_entry_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__10daGpTaru_cFv();
extern "C" void CreateHeap__10daGpTaru_cFv();
extern "C" void create__10daGpTaru_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void createHeapCallBack__10daGpTaru_cFP10fopAc_ac_c();
extern "C" static void bound__FP4cXyzRC13cBgS_PolyInfof();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void chkSinkAll__10daGpTaru_cFv();
extern "C" void chkWaterLineIn__10daGpTaru_cFv();
extern "C" void bgCheck__10daGpTaru_cFv();
extern "C" void Execute__10daGpTaru_cFv();
extern "C" void mode_proc_call__10daGpTaru_cFv();
extern "C" void mode_init_wait__10daGpTaru_cFv();
extern "C" void mode_proc_wait__10daGpTaru_cFv();
extern "C" void mode_init_carry__10daGpTaru_cFv();
extern "C" void mode_proc_carry__10daGpTaru_cFv();
extern "C" void mode_init_drop__10daGpTaru_cFv();
extern "C" void mode_proc_drop__10daGpTaru_cFv();
extern "C" void mode_init_roll__10daGpTaru_cFv();
extern "C" void mode_proc_roll__10daGpTaru_cFv();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" void mode_init_exploInit__10daGpTaru_cFv();
extern "C" void mode_proc_exploInit__10daGpTaru_cFv();
extern "C" void mode_init_explosion__10daGpTaru_cFv();
extern "C" void mode_proc_explosion__10daGpTaru_cFv();
extern "C" void mode_init_sink__10daGpTaru_cFv();
extern "C" void mode_proc_sink__10daGpTaru_cFv();
extern "C" void breakEffSet__10daGpTaru_cFv();
extern "C" void Draw__10daGpTaru_cFv();
extern "C" void Delete__10daGpTaru_cFv();
extern "C" static void daGpTaru_Draw__FP10daGpTaru_c();
extern "C" static void daGpTaru_Execute__FP10daGpTaru_c();
extern "C" static void daGpTaru_Delete__FP10daGpTaru_c();
extern "C" static void daGpTaru_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__14daGpTaru_HIO_cFv();
extern "C" void __sinit_d_a_obj_gpTaru_cpp();
extern "C" static void func_8057F534();
extern "C" static void func_8057F53C();
extern "C" static void func_8057F544();
extern "C" static void func_8057F54C();
extern "C" static void func_8057F554();
extern "C" u8 const mCcDObjInfo__10daGpTaru_c[48];
extern "C" extern char const* const d_a_obj_gpTaru__stringBase0;
extern "C" u8 mCcDCyl__10daGpTaru_c[68];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void
setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dKyw_pntwind_set__FP14WIND_INFLUENCE();
extern "C" void dKyw_pntwind_cut__FP14WIND_INFLUENCE();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStop__7Z2SeMgrF10JAISoundIDUl();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mEcallback__18dPa_modelEcallBack[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8057F570-8057F574 000000 0004+00 10/10 0/0 0/0 .rodata          @3656 */
SECTION_RODATA static f32 const lit_3656 = 200.0f;
COMPILER_STRIP_GATE(0x8057F570, &lit_3656);

/* 8057F574-8057F578 000004 0004+00 0/1 0/0 0/0 .rodata          @3657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3657 = 3.0f;
COMPILER_STRIP_GATE(0x8057F574, &lit_3657);
#pragma pop

/* 8057F578-8057F57C 000008 0004+00 0/1 0/0 0/0 .rodata          @3658 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3658 = 6.0f;
COMPILER_STRIP_GATE(0x8057F578, &lit_3658);
#pragma pop

/* 8057F57C-8057F580 00000C 0004+00 0/1 0/0 0/0 .rodata          @3659 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3659 = 8.0f / 5.0f;
COMPILER_STRIP_GATE(0x8057F57C, &lit_3659);
#pragma pop

/* 8057F580-8057F584 000010 0004+00 2/10 0/0 0/0 .rodata          @3660 */
SECTION_RODATA static f32 const lit_3660 = 1.0f;
COMPILER_STRIP_GATE(0x8057F580, &lit_3660);

/* 8057F6A8-8057F6EC 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__10daGpTaru_c */
SECTION_DATA u8 daGpTaru_c::mCcDCyl[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8057F6EC-8057F6F8 -00001 000C+00 0/1 0/0 0/0 .data            @4338 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4338[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_proc_wait__10daGpTaru_cFv,
};
#pragma pop

/* 8057F6F8-8057F704 -00001 000C+00 0/1 0/0 0/0 .data            @4339 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4339[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_proc_carry__10daGpTaru_cFv,
};
#pragma pop

/* 8057F704-8057F710 -00001 000C+00 0/1 0/0 0/0 .data            @4340 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4340[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_proc_drop__10daGpTaru_cFv,
};
#pragma pop

/* 8057F710-8057F71C -00001 000C+00 0/1 0/0 0/0 .data            @4341 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4341[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_proc_roll__10daGpTaru_cFv,
};
#pragma pop

/* 8057F71C-8057F728 -00001 000C+00 0/1 0/0 0/0 .data            @4342 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4342[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_proc_exploInit__10daGpTaru_cFv,
};
#pragma pop

/* 8057F728-8057F734 -00001 000C+00 0/1 0/0 0/0 .data            @4343 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4343[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_proc_explosion__10daGpTaru_cFv,
};
#pragma pop

/* 8057F734-8057F740 -00001 000C+00 0/1 0/0 0/0 .data            @4344 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4344[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_proc_sink__10daGpTaru_cFv,
};
#pragma pop

/* 8057F740-8057F794 0000B8 0054+00 0/1 0/0 0/0 .data            l_mode_func$4337 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_mode_func[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 8057F794-8057F7A4 00010C 0010+00 1/1 0/0 0/0 .data            effName$4666 */
SECTION_DATA static u8 effName[16] = {
    0x87, 0x45, 0x87, 0x47, 0x87, 0x48, 0x87, 0x49, 0x87, 0x4A, 0x87, 0x4B, 0x87, 0x4C, 0x87, 0x4D,
};

/* 8057F7A4-8057F7C4 -00001 0020+00 1/0 0/0 0/0 .data            l_daGpTaru_Method */
static actor_method_class l_daGpTaru_Method = {
    (process_method_func)daGpTaru_Create__FP10fopAc_ac_c,
    (process_method_func)daGpTaru_Delete__FP10daGpTaru_c,
    (process_method_func)daGpTaru_Execute__FP10daGpTaru_c,
    0,
    (process_method_func)daGpTaru_Draw__FP10daGpTaru_c,
};

/* 8057F7C4-8057F7F4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_GpTaru */
extern actor_process_profile_definition g_profile_Obj_GpTaru = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_GpTaru,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daGpTaru_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  509,                    // mPriority
  &l_daGpTaru_Method,     // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8057F7F4-8057F824 00016C 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8057F544,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8057F554,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8057F54C,
};

/* 8057F824-8057F830 00019C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 8057F830-8057F83C 0001A8 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8057F83C-8057F848 0001B4 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8057F848-8057F854 0001C0 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8057F854-8057F860 0001CC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8057F860-8057F86C 0001D8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8057F86C-8057F890 0001E4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8057F53C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8057F534,
};

/* 8057F890-8057F8A8 000208 0018+00 1/1 0/0 0/0 .data            __vt__10daGpTaru_c */
SECTION_DATA extern void* __vt__10daGpTaru_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__10daGpTaru_cFv,
    (void*)Execute__10daGpTaru_cFv,
    (void*)Draw__10daGpTaru_cFv,
    (void*)Delete__10daGpTaru_cFv,
};

/* 8057F8A8-8057F8B4 000220 000C+00 2/2 0/0 0/0 .data            __vt__14daGpTaru_HIO_c */
SECTION_DATA extern void* __vt__14daGpTaru_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daGpTaru_HIO_cFv,
};

/* 8057F8B4-8057F8C0 00022C 000C+00 3/3 0/0 0/0 .data            __vt__18fOpAcm_HIO_entry_c */
SECTION_DATA extern void* __vt__18fOpAcm_HIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18fOpAcm_HIO_entry_cFv,
};

/* 8057F8C0-8057F8CC 000238 000C+00 4/4 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 8057D0CC-8057D154 0000EC 0088+00 1/1 0/0 0/0 .text            __ct__14daGpTaru_HIO_cFv */
daGpTaru_HIO_c::daGpTaru_HIO_c() {
    // NONMATCHING
}

/* 8057D154-8057D1B0 000174 005C+00 1/0 0/0 0/0 .text            __dt__18fOpAcm_HIO_entry_cFv */
// fOpAcm_HIO_entry_c::~fOpAcm_HIO_entry_c() {
extern "C" void __dt__18fOpAcm_HIO_entry_cFv() {
    // NONMATCHING
}

/* 8057D1B0-8057D1F8 0001D0 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F8D8-8057F8E4 000008 000C+00 1/1 0/0 0/0 .bss             @3645 */
static u8 lit_3645[12];

/* 8057F8E4-8057F920 000014 003C+00 8/8 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[60];

/* 8057D1F8-8057D2D0 000218 00D8+00 2/2 0/0 0/0 .text            setBaseMtx__10daGpTaru_cFv */
void daGpTaru_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F664-8057F664 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8057F664 = "K_ktar00";
#pragma pop

/* 8057D2D0-8057D33C 0002F0 006C+00 1/0 0/0 0/0 .text            CreateHeap__10daGpTaru_cFv */
void daGpTaru_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F584-8057F5B4 000014 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__10daGpTaru_c */
SECTION_RODATA u8 const daGpTaru_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F,
    0xD8, 0xFA, 0xFD, 0xBF, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8057F584, &daGpTaru_c::mCcDObjInfo);

/* 8057F5B4-8057F5B8 000044 0004+00 0/1 0/0 0/0 .rodata          @3803 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3803 = 160.0f;
COMPILER_STRIP_GATE(0x8057F5B4, &lit_3803);
#pragma pop

/* 8057F5B8-8057F5BC 000048 0004+00 0/1 0/0 0/0 .rodata          @3804 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3804 = 80.0f;
COMPILER_STRIP_GATE(0x8057F5B8, &lit_3804);
#pragma pop

/* 8057F5BC-8057F5C0 00004C 0004+00 1/2 0/0 0/0 .rodata          @3805 */
SECTION_RODATA static f32 const lit_3805 = -7.0f;
COMPILER_STRIP_GATE(0x8057F5BC, &lit_3805);

/* 8057F5C0-8057F5C4 000050 0004+00 0/1 0/0 0/0 .rodata          @3806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3806 = -100.0f;
COMPILER_STRIP_GATE(0x8057F5C0, &lit_3806);
#pragma pop

/* 8057F5C4-8057F5C8 000054 0004+00 3/10 0/0 0/0 .rodata          @3807 */
SECTION_RODATA static u8 const lit_3807[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8057F5C4, &lit_3807);

/* 8057D33C-8057D600 00035C 02C4+00 1/1 0/0 0/0 .text            create__10daGpTaru_cFv */
void daGpTaru_c::create() {
    // NONMATCHING
}

/* 8057D600-8057D648 000620 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8057D648-8057D690 000668 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8057D690-8057D6EC 0006B0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8057D6EC-8057D75C 00070C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8057D75C-8057D7CC 00077C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8057D7CC-8057D7F8 0007EC 002C+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daGpTaru_cFP10fopAc_ac_c               */
void daGpTaru_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F5C8-8057F5D0 000058 0008+00 0/3 0/0 0/0 .rodata          @3992 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3992[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8057F5C8, &lit_3992);
#pragma pop

/* 8057F5D0-8057F5D8 000060 0008+00 0/3 0/0 0/0 .rodata          @3993 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3993[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8057F5D0, &lit_3993);
#pragma pop

/* 8057F5D8-8057F5E0 000068 0008+00 0/3 0/0 0/0 .rodata          @3994 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3994[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8057F5D8, &lit_3994);
#pragma pop

/* 8057D7F8-8057DAF4 000818 02FC+00 1/1 0/0 0/0 .text            bound__FP4cXyzRC13cBgS_PolyInfof */
static void bound(cXyz* param_0, cBgS_PolyInfo const& param_1, f32 param_2) {
    // NONMATCHING
}

/* 8057DAF4-8057DB3C 000B14 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F5E0-8057F5E4 000070 0004+00 1/2 0/0 0/0 .rodata          @4078 */
SECTION_RODATA static f32 const lit_4078 = 100.0f;
COMPILER_STRIP_GATE(0x8057F5E0, &lit_4078);

/* 8057DB3C-8057DB60 000B5C 0024+00 1/1 0/0 0/0 .text            chkSinkAll__10daGpTaru_cFv */
void daGpTaru_c::chkSinkAll() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F5E4-8057F5E8 000074 0004+00 1/1 0/0 0/0 .rodata          @4084 */
SECTION_RODATA static f32 const lit_4084 = 40.0f;
COMPILER_STRIP_GATE(0x8057F5E4, &lit_4084);

/* 8057DB60-8057DB84 000B80 0024+00 3/3 0/0 0/0 .text            chkWaterLineIn__10daGpTaru_cFv */
void daGpTaru_c::chkWaterLineIn() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F5E8-8057F5EC 000078 0004+00 0/1 0/0 0/0 .rodata          @4268 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4268 = 8.0f;
COMPILER_STRIP_GATE(0x8057F5E8, &lit_4268);
#pragma pop

/* 8057F5EC-8057F5F0 00007C 0004+00 0/1 0/0 0/0 .rodata          @4269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4269 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x8057F5EC, &lit_4269);
#pragma pop

/* 8057F5F0-8057F5F4 000080 0004+00 0/1 0/0 0/0 .rodata          @4270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4270 = 5.0f;
COMPILER_STRIP_GATE(0x8057F5F0, &lit_4270);
#pragma pop

/* 8057F5F4-8057F5F8 000084 0004+00 0/2 0/0 0/0 .rodata          @4271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4271 = -15.0f;
COMPILER_STRIP_GATE(0x8057F5F4, &lit_4271);
#pragma pop

/* 8057F5F8-8057F5FC 000088 0004+00 0/1 0/0 0/0 .rodata          @4272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4272 = 2.0f;
COMPILER_STRIP_GATE(0x8057F5F8, &lit_4272);
#pragma pop

/* 8057F5FC-8057F600 00008C 0004+00 0/4 0/0 0/0 .rodata          @4273 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4273 = -1.0f;
COMPILER_STRIP_GATE(0x8057F5FC, &lit_4273);
#pragma pop

/* 8057F600-8057F604 000090 0004+00 0/1 0/0 0/0 .rodata          @4274 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4274 = 5.0f / 3.0f;
COMPILER_STRIP_GATE(0x8057F600, &lit_4274);
#pragma pop

/* 8057F604-8057F608 000094 0004+00 0/3 0/0 0/0 .rodata          @4275 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4275 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8057F604, &lit_4275);
#pragma pop

/* 8057DB84-8057E224 000BA4 06A0+00 1/1 0/0 0/0 .text            bgCheck__10daGpTaru_cFv */
void daGpTaru_c::bgCheck() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F608-8057F60C 000098 0004+00 0/1 0/0 0/0 .rodata          @4331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4331 = 50.0f;
COMPILER_STRIP_GATE(0x8057F608, &lit_4331);
#pragma pop

/* 8057F60C-8057F610 00009C 0004+00 0/1 0/0 0/0 .rodata          @4332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4332 = 7.0f;
COMPILER_STRIP_GATE(0x8057F60C, &lit_4332);
#pragma pop

/* 8057F610-8057F614 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4333 = 170.0f;
COMPILER_STRIP_GATE(0x8057F610, &lit_4333);
#pragma pop

/* 8057E224-8057E494 001244 0270+00 1/0 0/0 0/0 .text            Execute__10daGpTaru_cFv */
void daGpTaru_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F920-8057F924 000050 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_8057F920[4];

/* 8057E494-8057E5DC 0014B4 0148+00 1/1 0/0 0/0 .text            mode_proc_call__10daGpTaru_cFv */
void daGpTaru_c::mode_proc_call() {
    // NONMATCHING
}

/* 8057E5DC-8057E618 0015FC 003C+00 2/2 0/0 0/0 .text            mode_init_wait__10daGpTaru_cFv */
void daGpTaru_c::mode_init_wait() {
    // NONMATCHING
}

/* 8057E618-8057E63C 001638 0024+00 1/0 0/0 0/0 .text            mode_proc_wait__10daGpTaru_cFv */
void daGpTaru_c::mode_proc_wait() {
    // NONMATCHING
}

/* 8057E63C-8057E660 00165C 0024+00 1/1 0/0 0/0 .text            mode_init_carry__10daGpTaru_cFv */
void daGpTaru_c::mode_init_carry() {
    // NONMATCHING
}

/* 8057E660-8057E700 001680 00A0+00 1/0 0/0 0/0 .text            mode_proc_carry__10daGpTaru_cFv */
void daGpTaru_c::mode_proc_carry() {
    // NONMATCHING
}

/* 8057E700-8057E72C 001720 002C+00 1/1 0/0 0/0 .text            mode_init_drop__10daGpTaru_cFv */
void daGpTaru_c::mode_init_drop() {
    // NONMATCHING
}

/* 8057E72C-8057E750 00174C 0024+00 1/0 0/0 0/0 .text            mode_proc_drop__10daGpTaru_cFv */
void daGpTaru_c::mode_proc_drop() {
    // NONMATCHING
}

/* 8057E750-8057E768 001770 0018+00 2/2 0/0 0/0 .text            mode_init_roll__10daGpTaru_cFv */
void daGpTaru_c::mode_init_roll() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F614-8057F618 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4521 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4521 = 4.0f;
COMPILER_STRIP_GATE(0x8057F614, &lit_4521);
#pragma pop

/* 8057F618-8057F61C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4522 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4522 = -1000000000.0f;
COMPILER_STRIP_GATE(0x8057F618, &lit_4522);
#pragma pop

/* 8057F61C-8057F620 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4523 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4523 = 0x4645B05B;
COMPILER_STRIP_GATE(0x8057F61C, &lit_4523);
#pragma pop

/* 8057F620-8057F624 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4524 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4524 = 10.0f;
COMPILER_STRIP_GATE(0x8057F620, &lit_4524);
#pragma pop

/* 8057F624-8057F628 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4525 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4525 = 0x3C23D70B;
COMPILER_STRIP_GATE(0x8057F624, &lit_4525);
#pragma pop

/* 8057F628-8057F62C 0000B8 0004+00 0/2 0/0 0/0 .rodata          @4526 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4526 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x8057F628, &lit_4526);
#pragma pop

/* 8057F62C-8057F630 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4527 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4527 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x8057F62C, &lit_4527);
#pragma pop

/* 8057E768-8057EB2C 001788 03C4+00 1/0 0/0 0/0 .text            mode_proc_roll__10daGpTaru_cFv */
void daGpTaru_c::mode_proc_roll() {
    // NONMATCHING
}

/* 8057EB2C-8057EBA4 001B4C 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F630-8057F634 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4538 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4538 = 500.0f;
COMPILER_STRIP_GATE(0x8057F630, &lit_4538);
#pragma pop

/* 8057F634-8057F638 0000C4 0004+00 0/2 0/0 0/0 .rodata          @4539 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4539 = 0.5f;
COMPILER_STRIP_GATE(0x8057F634, &lit_4539);
#pragma pop

/* 8057EBA4-8057EC60 001BC4 00BC+00 1/1 0/0 0/0 .text            mode_init_exploInit__10daGpTaru_cFv
 */
void daGpTaru_c::mode_init_exploInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F638-8057F63C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4574 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4574 = 20.0f;
COMPILER_STRIP_GATE(0x8057F638, &lit_4574);
#pragma pop

/* 8057EC60-8057EE2C 001C80 01CC+00 1/0 0/0 0/0 .text            mode_proc_exploInit__10daGpTaru_cFv
 */
void daGpTaru_c::mode_proc_exploInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F63C-8057F640 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4604 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4604 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x8057F63C, &lit_4604);
#pragma pop

/* 8057F640-8057F644 0000D0 0004+00 0/2 0/0 0/0 .rodata          @4605 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4605 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x8057F640, &lit_4605);
#pragma pop

/* 8057F644-8057F648 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4606 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4606 = 99.0f / 100.0f;
COMPILER_STRIP_GATE(0x8057F644, &lit_4606);
#pragma pop

/* 8057F648-8057F64C 0000D8 0004+00 0/2 0/0 0/0 .rodata          @4607 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4607 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8057F648, &lit_4607);
#pragma pop

/* 8057F64C-8057F650 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4608 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4608 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x8057F64C, &lit_4608);
#pragma pop

/* 8057F650-8057F654 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4609 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4609 = 0x3A83126F;
COMPILER_STRIP_GATE(0x8057F650, &lit_4609);
#pragma pop

/* 8057EE2C-8057EFB0 001E4C 0184+00 2/2 0/0 0/0 .text            mode_init_explosion__10daGpTaru_cFv
 */
void daGpTaru_c::mode_init_explosion() {
    // NONMATCHING
}

/* 8057EFB0-8057EFFC 001FD0 004C+00 1/0 0/0 0/0 .text            mode_proc_explosion__10daGpTaru_cFv
 */
void daGpTaru_c::mode_proc_explosion() {
    // NONMATCHING
}

/* 8057EFFC-8057F014 00201C 0018+00 2/2 0/0 0/0 .text            mode_init_sink__10daGpTaru_cFv */
void daGpTaru_c::mode_init_sink() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F654-8057F658 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4660 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4660 = 13.0f;
COMPILER_STRIP_GATE(0x8057F654, &lit_4660);
#pragma pop

/* 8057F658-8057F65C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4661 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4661 = -10.0f;
COMPILER_STRIP_GATE(0x8057F658, &lit_4661);
#pragma pop

/* 8057F65C-8057F660 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4662 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4662 = -20.0f;
COMPILER_STRIP_GATE(0x8057F65C, &lit_4662);
#pragma pop

/* 8057F014-8057F104 002034 00F0+00 1/0 0/0 0/0 .text            mode_proc_sink__10daGpTaru_cFv */
void daGpTaru_c::mode_proc_sink() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8057F660-8057F664 0000F0 0004+00 1/1 0/0 0/0 .rodata          @4697 */
SECTION_RODATA static f32 const lit_4697 = 0.75f;
COMPILER_STRIP_GATE(0x8057F660, &lit_4697);

/* 8057F664-8057F664 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8057F66D = "Always";
SECTION_DEAD static char const* const stringBase_8057F674 = "BreakWoodBox.bmd";
#pragma pop

/* 8057F104-8057F284 002124 0180+00 1/1 0/0 0/0 .text            breakEffSet__10daGpTaru_cFv */
void daGpTaru_c::breakEffSet() {
    // NONMATCHING
}

/* 8057F284-8057F328 0022A4 00A4+00 1/0 0/0 0/0 .text            Draw__10daGpTaru_cFv */
void daGpTaru_c::Draw() {
    // NONMATCHING
}

/* 8057F328-8057F36C 002348 0044+00 1/0 0/0 0/0 .text            Delete__10daGpTaru_cFv */
void daGpTaru_c::Delete() {
    // NONMATCHING
}

/* 8057F36C-8057F398 00238C 002C+00 1/0 0/0 0/0 .text            daGpTaru_Draw__FP10daGpTaru_c */
static void daGpTaru_Draw(daGpTaru_c* param_0) {
    // NONMATCHING
}

/* 8057F398-8057F3C4 0023B8 002C+00 1/0 0/0 0/0 .text            daGpTaru_Execute__FP10daGpTaru_c */
static void daGpTaru_Execute(daGpTaru_c* param_0) {
    // NONMATCHING
}

/* 8057F3C4-8057F3F0 0023E4 002C+00 1/0 0/0 0/0 .text            daGpTaru_Delete__FP10daGpTaru_c */
static void daGpTaru_Delete(daGpTaru_c* param_0) {
    // NONMATCHING
}

/* 8057F3F0-8057F410 002410 0020+00 1/0 0/0 0/0 .text            daGpTaru_Create__FP10fopAc_ac_c */
static void daGpTaru_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8057F410-8057F458 002430 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8057F458-8057F4C4 002478 006C+00 2/1 0/0 0/0 .text            __dt__14daGpTaru_HIO_cFv */
daGpTaru_HIO_c::~daGpTaru_HIO_c() {
    // NONMATCHING
}

/* 8057F4C4-8057F534 0024E4 0070+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_gpTaru_cpp */
void __sinit_d_a_obj_gpTaru_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8057F4C4, __sinit_d_a_obj_gpTaru_cpp);
#pragma pop

/* 8057F534-8057F53C 002554 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8057F534() {
    // NONMATCHING
}

/* 8057F53C-8057F544 00255C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8057F53C() {
    // NONMATCHING
}

/* 8057F544-8057F54C 002564 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_8057F544() {
    // NONMATCHING
}

/* 8057F54C-8057F554 00256C 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_8057F54C() {
    // NONMATCHING
}

/* 8057F554-8057F55C 002574 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_8057F554() {
    // NONMATCHING
}

/* 8057F664-8057F664 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

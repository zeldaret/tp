/**
 * @file d_a_obj_wdStick.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__15daWdStick_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__11daWdStick_cFv();
extern "C" void CreateHeap__11daWdStick_cFv();
extern "C" void create__11daWdStick_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void createHeapCallBack__11daWdStick_cFP10fopAc_ac_c();
extern "C" void lightInit__11daWdStick_cFv();
extern "C" void setLight__11daWdStick_cFv();
extern "C" void setFire__11daWdStick_cFv();
extern "C" void Execute__11daWdStick_cFv();
extern "C" static void bound__FP4cXyzRC13cBgS_PolyInfof();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void bgCheck__11daWdStick_cFv();
extern "C" void setBoundSe__11daWdStick_cFv();
extern "C" void mode_proc_call__11daWdStick_cFv();
extern "C" void mode_init_wait__11daWdStick_cFv();
extern "C" void mode_proc_wait__11daWdStick_cFv();
extern "C" void mode_init_carry__11daWdStick_cFv();
extern "C" void mode_proc_carry__11daWdStick_cFv();
extern "C" void mode_init_drop__11daWdStick_cFv();
extern "C" void mode_proc_drop__11daWdStick_cFv();
extern "C" void mode_init_roll__11daWdStick_cFv();
extern "C" void mode_proc_roll__11daWdStick_cFv();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" void chkWaterLineIn__11daWdStick_cFv();
extern "C" void mode_init_sink__11daWdStick_cFv();
extern "C" void mode_proc_sink__11daWdStick_cFv();
extern "C" void Draw__11daWdStick_cFv();
extern "C" void Delete__11daWdStick_cFv();
extern "C" static void daWdStick_Draw__FP11daWdStick_c();
extern "C" static void daWdStick_Execute__FP11daWdStick_c();
extern "C" static void daWdStick_Delete__FP11daWdStick_c();
extern "C" static void daWdStick_Create__FP10fopAc_ac_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__15daWdStick_HIO_cFv();
extern "C" void __sinit_d_a_obj_wdStick_cpp();
extern "C" static void func_80D340FC();
extern "C" static void func_80D34104();
extern "C" static void func_80D3410C();
extern "C" static void func_80D34114();
extern "C" static void func_80D3411C();
extern "C" u8 const mCcDObjInfo__11daWdStick_c[48];
extern "C" extern char const* const d_a_obj_wdStick__stringBase0;
extern "C" u8 mCcDSph__11daWdStick_c[64];

//
// External References:
//

extern "C" void mDoMtx_ZXYrotS__FPA4_fsss();
extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetWallCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__14dBgS_ObjLinChkFv();
extern "C" void __dt__14dBgS_ObjLinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80D3421C-80D34228 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D34228-80D3423C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80D3423C-80D3427C 000020 0040+00 2/2 0/0 0/0 .data            mCcDSph__11daWdStick_c */
SECTION_DATA u8 daWdStick_c::mCcDSph[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
};

/* 80D3427C-80D34288 -00001 000C+00 0/1 0/0 0/0 .data            @4470 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4470[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_proc_wait__11daWdStick_cFv,
};
#pragma pop

/* 80D34288-80D34294 -00001 000C+00 0/1 0/0 0/0 .data            @4471 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4471[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_proc_carry__11daWdStick_cFv,
};
#pragma pop

/* 80D34294-80D342A0 -00001 000C+00 0/1 0/0 0/0 .data            @4472 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4472[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_proc_drop__11daWdStick_cFv,
};
#pragma pop

/* 80D342A0-80D342AC -00001 000C+00 0/1 0/0 0/0 .data            @4473 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4473[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_proc_roll__11daWdStick_cFv,
};
#pragma pop

/* 80D342AC-80D342B8 -00001 000C+00 0/1 0/0 0/0 .data            @4474 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4474[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)mode_proc_sink__11daWdStick_cFv,
};
#pragma pop

/* 80D342B8-80D342F4 00009C 003C+00 0/1 0/0 0/0 .data            l_mode_func$4469 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_mode_func[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80D342F4-80D34314 -00001 0020+00 1/0 0/0 0/0 .data            l_daWdStick_Method */
static actor_method_class l_daWdStick_Method = {
    (process_method_func)daWdStick_Create__FP10fopAc_ac_c,
    (process_method_func)daWdStick_Delete__FP11daWdStick_c,
    (process_method_func)daWdStick_Execute__FP11daWdStick_c,
    0,
    (process_method_func)daWdStick_Draw__FP11daWdStick_c,
};

/* 80D34314-80D34344 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_WdStick */
extern actor_process_profile_definition g_profile_Obj_WdStick = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_WdStick,       // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daWdStick_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  497,                    // mPriority
  &l_daWdStick_Method,    // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D34344-80D34374 000128 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D3410C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D3411C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D34114,
};

/* 80D34374-80D34380 000158 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80D34380-80D3438C 000164 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80D3438C-80D34398 000170 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80D34398-80D343A4 00017C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80D343A4-80D343B0 000188 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80D343B0-80D343BC 000194 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D343BC-80D343E0 0001A0 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D34104,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D340FC,
};

/* 80D343E0-80D343F8 0001C4 0018+00 1/1 0/0 0/0 .data            __vt__11daWdStick_c */
SECTION_DATA extern void* __vt__11daWdStick_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__11daWdStick_cFv,
    (void*)Execute__11daWdStick_cFv,
    (void*)Draw__11daWdStick_cFv,
    (void*)Delete__11daWdStick_cFv,
};

/* 80D343F8-80D34404 0001DC 000C+00 2/2 0/0 0/0 .data            __vt__15daWdStick_HIO_c */
SECTION_DATA extern void* __vt__15daWdStick_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daWdStick_HIO_cFv,
};

/* 80D34404-80D34410 0001E8 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80D31B4C-80D31B88 0000EC 003C+00 1/1 0/0 0/0 .text            __ct__15daWdStick_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daWdStick_HIO_c::daWdStick_HIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/__ct__15daWdStick_HIO_cFv.s"
}
#pragma pop

/* 80D31B88-80D31BD0 000128 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" asm void __dt__14mDoHIO_entry_cFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/__dt__14mDoHIO_entry_cFv.s"
}
#pragma pop

/* 80D31BD0-80D31C58 000170 0088+00 2/2 0/0 0/0 .text            setBaseMtx__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::setBaseMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/setBaseMtx__11daWdStick_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D34210-80D34210 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D34210 = "H_Kinobou";
#pragma pop

/* 80D31C58-80D31CC4 0001F8 006C+00 1/0 0/0 0/0 .text            CreateHeap__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/CreateHeap__11daWdStick_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D34138-80D34168 000000 0030+00 10/10 0/0 0/0 .rodata          mCcDObjInfo__11daWdStick_c */
SECTION_RODATA u8 const daWdStick_c::mCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F,
    0xD8, 0xFB, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D34138, &daWdStick_c::mCcDObjInfo);

/* 80D34168-80D3416C 000030 0004+00 0/2 0/0 0/0 .rodata          @3775 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3775 = 10.0f;
COMPILER_STRIP_GATE(0x80D34168, &lit_3775);
#pragma pop

/* 80D3416C-80D34170 000034 0004+00 0/1 0/0 0/0 .rodata          @3776 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3776 = 35.0f;
COMPILER_STRIP_GATE(0x80D3416C, &lit_3776);
#pragma pop

/* 80D34170-80D34174 000038 0004+00 1/2 0/0 0/0 .rodata          @3777 */
SECTION_RODATA static f32 const lit_3777 = -10.0f;
COMPILER_STRIP_GATE(0x80D34170, &lit_3777);

/* 80D34174-80D34178 00003C 0004+00 0/1 0/0 0/0 .rodata          @3778 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3778 = -100.0f;
COMPILER_STRIP_GATE(0x80D34174, &lit_3778);
#pragma pop

/* 80D31CC4-80D31F9C 000264 02D8+00 1/1 0/0 0/0 .text            create__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/create__11daWdStick_cFv.s"
}
#pragma pop

/* 80D31F9C-80D31FE4 00053C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 80D31FE4-80D3202C 000584 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80D3202C-80D32088 0005CC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80D32088-80D320F8 000628 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80D320F8-80D32168 000698 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80D32168-80D32194 000708 002C+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daWdStick_cFP10fopAc_ac_c              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::createHeapCallBack(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/createHeapCallBack__11daWdStick_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80D32194-80D32198 000734 0004+00 1/1 0/0 0/0 .text            lightInit__11daWdStick_cFv */
void daWdStick_c::lightInit() {
    /* empty function */
}

/* 80D32198-80D3219C 000738 0004+00 2/2 0/0 0/0 .text            setLight__11daWdStick_cFv */
void daWdStick_c::setLight() {
    /* empty function */
}

/* ############################################################################################## */
/* 80D34178-80D3417C 000040 0004+00 0/1 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = 75.0f;
COMPILER_STRIP_GATE(0x80D34178, &lit_4028);
#pragma pop

/* 80D3417C-80D34180 000044 0004+00 0/3 0/0 0/0 .rodata          @4029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4029 = 4.0f;
COMPILER_STRIP_GATE(0x80D3417C, &lit_4029);
#pragma pop

/* 80D34180-80D34184 000048 0004+00 2/9 0/0 0/0 .rodata          @4030 */
SECTION_RODATA static u8 const lit_4030[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D34180, &lit_4030);

/* 80D34184-80D34188 00004C 0004+00 0/1 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = -75.0f;
COMPILER_STRIP_GATE(0x80D34184, &lit_4031);
#pragma pop

/* 80D34188-80D3418C 000050 0004+00 0/6 0/0 0/0 .rodata          @4032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4032 = 1.0f;
COMPILER_STRIP_GATE(0x80D34188, &lit_4032);
#pragma pop

/* 80D3418C-80D34190 000054 0004+00 0/5 0/0 0/0 .rodata          @4033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4033 = -1.0f;
COMPILER_STRIP_GATE(0x80D3418C, &lit_4033);
#pragma pop

/* 80D34190-80D34194 000058 0004+00 0/1 0/0 0/0 .rodata          @4034 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4034 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D34190, &lit_4034);
#pragma pop

/* 80D3219C-80D3269C 00073C 0500+00 1/1 0/0 0/0 .text            setFire__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::setFire() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/setFire__11daWdStick_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D34194-80D34198 00005C 0004+00 0/1 0/0 0/0 .rodata          @4118 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4118 = 90.0f;
COMPILER_STRIP_GATE(0x80D34194, &lit_4118);
#pragma pop

/* 80D34198-80D3419C 000060 0004+00 0/1 0/0 0/0 .rodata          @4119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4119 = -90.0f;
COMPILER_STRIP_GATE(0x80D34198, &lit_4119);
#pragma pop

/* 80D3419C-80D341A0 000064 0004+00 0/1 0/0 0/0 .rodata          @4120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4120 = 30.0f;
COMPILER_STRIP_GATE(0x80D3419C, &lit_4120);
#pragma pop

/* 80D341A0-80D341A8 000068 0004+04 0/1 0/0 0/0 .rodata          @4121 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4121[1 + 1 /* padding */] = {
    -770.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80D341A0, &lit_4121);
#pragma pop

/* 80D34418-80D34424 000008 000C+00 1/1 0/0 0/0 .bss             @3643 */
static u8 lit_3643[12];

/* 80D34424-80D34430 000014 000C+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 80D3269C-80D32A70 000C3C 03D4+00 1/0 0/0 0/0 .text            Execute__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::Execute() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/Execute__11daWdStick_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D341A8-80D341B0 000070 0008+00 0/3 0/0 0/0 .rodata          @4220 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4220[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D341A8, &lit_4220);
#pragma pop

/* 80D341B0-80D341B8 000078 0008+00 0/3 0/0 0/0 .rodata          @4221 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4221[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D341B0, &lit_4221);
#pragma pop

/* 80D341B8-80D341C0 000080 0008+00 0/3 0/0 0/0 .rodata          @4222 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4222[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D341B8, &lit_4222);
#pragma pop

/* 80D32A70-80D32D6C 001010 02FC+00 1/1 0/0 0/0 .text            bound__FP4cXyzRC13cBgS_PolyInfof */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void bound(cXyz* param_0, cBgS_PolyInfo const& param_1, f32 param_2) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/bound__FP4cXyzRC13cBgS_PolyInfof.s"
}
#pragma pop

/* 80D32D6C-80D32DB4 00130C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGPla::~cM3dGPla() {
extern "C" asm void __dt__8cM3dGPlaFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/__dt__8cM3dGPlaFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D341C0-80D341C4 000088 0004+00 0/1 0/0 0/0 .rodata          @4444 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4444 = 8.0f;
COMPILER_STRIP_GATE(0x80D341C0, &lit_4444);
#pragma pop

/* 80D341C4-80D341C8 00008C 0004+00 0/1 0/0 0/0 .rodata          @4445 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4445 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D341C4, &lit_4445);
#pragma pop

/* 80D341C8-80D341CC 000090 0004+00 0/1 0/0 0/0 .rodata          @4446 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4446 = -50.0f;
COMPILER_STRIP_GATE(0x80D341C8, &lit_4446);
#pragma pop

/* 80D341CC-80D341D0 000094 0004+00 0/2 0/0 0/0 .rodata          @4447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4447 = -15.0f;
COMPILER_STRIP_GATE(0x80D341CC, &lit_4447);
#pragma pop

/* 80D341D0-80D341D4 000098 0004+00 0/2 0/0 0/0 .rodata          @4448 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4448 = 2.0f;
COMPILER_STRIP_GATE(0x80D341D0, &lit_4448);
#pragma pop

/* 80D341D4-80D341D8 00009C 0004+00 0/1 0/0 0/0 .rodata          @4449 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4449 = 5.0f;
COMPILER_STRIP_GATE(0x80D341D4, &lit_4449);
#pragma pop

/* 80D32DB4-80D33348 001354 0594+00 3/3 0/0 0/0 .text            bgCheck__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::bgCheck() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/bgCheck__11daWdStick_cFv.s"
}
#pragma pop

/* 80D33348-80D333F4 0018E8 00AC+00 1/1 0/0 0/0 .text            setBoundSe__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::setBoundSe() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/setBoundSe__11daWdStick_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D34430-80D34434 000020 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80D34430[4];

/* 80D333F4-80D3350C 001994 0118+00 1/1 0/0 0/0 .text            mode_proc_call__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::mode_proc_call() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/mode_proc_call__11daWdStick_cFv.s"
}
#pragma pop

/* 80D3350C-80D3353C 001AAC 0030+00 4/4 0/0 0/0 .text            mode_init_wait__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::mode_init_wait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/mode_init_wait__11daWdStick_cFv.s"
}
#pragma pop

/* 80D3353C-80D33588 001ADC 004C+00 1/0 0/0 0/0 .text            mode_proc_wait__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::mode_proc_wait() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/mode_proc_wait__11daWdStick_cFv.s"
}
#pragma pop

/* 80D33588-80D335AC 001B28 0024+00 1/1 0/0 0/0 .text            mode_init_carry__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::mode_init_carry() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/mode_init_carry__11daWdStick_cFv.s"
}
#pragma pop

/* 80D335AC-80D3386C 001B4C 02C0+00 1/0 0/0 0/0 .text            mode_proc_carry__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::mode_proc_carry() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/mode_proc_carry__11daWdStick_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D341D8-80D341DC 0000A0 0004+00 1/2 0/0 0/0 .rodata          @4574 */
SECTION_RODATA static f32 const lit_4574 = -5.0f;
COMPILER_STRIP_GATE(0x80D341D8, &lit_4574);

/* 80D3386C-80D33890 001E0C 0024+00 1/1 0/0 0/0 .text            mode_init_drop__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::mode_init_drop() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/mode_init_drop__11daWdStick_cFv.s"
}
#pragma pop

/* 80D33890-80D338DC 001E30 004C+00 1/0 0/0 0/0 .text            mode_proc_drop__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::mode_proc_drop() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/mode_proc_drop__11daWdStick_cFv.s"
}
#pragma pop

/* 80D338DC-80D338F4 001E7C 0018+00 2/2 0/0 0/0 .text            mode_init_roll__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::mode_init_roll() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/mode_init_roll__11daWdStick_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D341DC-80D341E0 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4704 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4704 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80D341DC, &lit_4704);
#pragma pop

/* 80D341E0-80D341E4 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4705 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4705 = 0x4645B05B;
COMPILER_STRIP_GATE(0x80D341E0, &lit_4705);
#pragma pop

/* 80D341E4-80D341E8 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4706 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4706 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D341E4, &lit_4706);
#pragma pop

/* 80D341E8-80D341EC 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4707 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4707 = 0.75f;
COMPILER_STRIP_GATE(0x80D341E8, &lit_4707);
#pragma pop

/* 80D341EC-80D341F0 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4708 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4708 = 0x3C23D70B;
COMPILER_STRIP_GATE(0x80D341EC, &lit_4708);
#pragma pop

/* 80D341F0-80D341F4 0000B8 0004+00 0/2 0/0 0/0 .rodata          @4709 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4709 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D341F0, &lit_4709);
#pragma pop

/* 80D341F4-80D341F8 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4710 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4710 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D341F4, &lit_4710);
#pragma pop

/* 80D338F4-80D33CCC 001E94 03D8+00 1/0 0/0 0/0 .text            mode_proc_roll__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::mode_proc_roll() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/mode_proc_roll__11daWdStick_cFv.s"
}
#pragma pop

/* 80D33CCC-80D33D44 00226C 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" asm void __dt__14dBgS_ObjGndChkFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/__dt__14dBgS_ObjGndChkFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D341F8-80D341FC 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4725 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4725 = 100.0f;
COMPILER_STRIP_GATE(0x80D341F8, &lit_4725);
#pragma pop

/* 80D341FC-80D34200 0000C4 0004+00 1/1 0/0 0/0 .rodata          @4731 */
SECTION_RODATA static f32 const lit_4731 = 40.0f;
COMPILER_STRIP_GATE(0x80D341FC, &lit_4731);

/* 80D33D44-80D33D68 0022E4 0024+00 2/2 0/0 0/0 .text            chkWaterLineIn__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::chkWaterLineIn() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/chkWaterLineIn__11daWdStick_cFv.s"
}
#pragma pop

/* 80D33D68-80D33D8C 002308 0024+00 1/1 0/0 0/0 .text            mode_init_sink__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::mode_init_sink() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/mode_init_sink__11daWdStick_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80D34200-80D34204 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4777 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4777 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80D34200, &lit_4777);
#pragma pop

/* 80D34204-80D34208 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4778 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4778 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80D34204, &lit_4778);
#pragma pop

/* 80D34208-80D3420C 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4779 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4779 = 13.0f;
COMPILER_STRIP_GATE(0x80D34208, &lit_4779);
#pragma pop

/* 80D3420C-80D34210 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4780 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4780 = -2.0f;
COMPILER_STRIP_GATE(0x80D3420C, &lit_4780);
#pragma pop

/* 80D33D8C-80D33EB0 00232C 0124+00 1/0 0/0 0/0 .text            mode_proc_sink__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::mode_proc_sink() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/mode_proc_sink__11daWdStick_cFv.s"
}
#pragma pop

/* 80D33EB0-80D33F14 002450 0064+00 1/0 0/0 0/0 .text            Draw__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/Draw__11daWdStick_cFv.s"
}
#pragma pop

/* 80D33F14-80D33F44 0024B4 0030+00 1/0 0/0 0/0 .text            Delete__11daWdStick_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daWdStick_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/Delete__11daWdStick_cFv.s"
}
#pragma pop

/* 80D33F44-80D33F70 0024E4 002C+00 1/0 0/0 0/0 .text            daWdStick_Draw__FP11daWdStick_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daWdStick_Draw(daWdStick_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/daWdStick_Draw__FP11daWdStick_c.s"
}
#pragma pop

/* 80D33F70-80D33F9C 002510 002C+00 1/0 0/0 0/0 .text            daWdStick_Execute__FP11daWdStick_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daWdStick_Execute(daWdStick_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/daWdStick_Execute__FP11daWdStick_c.s"
}
#pragma pop

/* 80D33F9C-80D33FC8 00253C 002C+00 1/0 0/0 0/0 .text            daWdStick_Delete__FP11daWdStick_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daWdStick_Delete(daWdStick_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/daWdStick_Delete__FP11daWdStick_c.s"
}
#pragma pop

/* 80D33FC8-80D33FE8 002568 0020+00 1/0 0/0 0/0 .text            daWdStick_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daWdStick_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/daWdStick_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80D33FE8-80D34030 002588 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80D34030-80D3408C 0025D0 005C+00 2/1 0/0 0/0 .text            __dt__15daWdStick_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daWdStick_HIO_c::~daWdStick_HIO_c() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/__dt__15daWdStick_HIO_cFv.s"
}
#pragma pop

/* 80D3408C-80D340FC 00262C 0070+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_wdStick_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_obj_wdStick_cpp() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/__sinit_d_a_obj_wdStick_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80D3408C, __sinit_d_a_obj_wdStick_cpp);
#pragma pop

/* 80D340FC-80D34104 00269C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D340FC() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/func_80D340FC.s"
}
#pragma pop

/* 80D34104-80D3410C 0026A4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D34104() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/func_80D34104.s"
}
#pragma pop

/* 80D3410C-80D34114 0026AC 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D3410C() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/func_80D3410C.s"
}
#pragma pop

/* 80D34114-80D3411C 0026B4 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D34114() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/func_80D34114.s"
}
#pragma pop

/* 80D3411C-80D34124 0026BC 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80D3411C() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_wdStick/d_a_obj_wdStick/func_80D3411C.s"
}
#pragma pop

/* 80D34210-80D34210 0000D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

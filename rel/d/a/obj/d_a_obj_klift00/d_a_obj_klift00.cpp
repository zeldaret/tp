/**
 * @file d_a_obj_klift00.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void create1st__14daObjKLift00_cFv();
extern "C" void setMtx__14daObjKLift00_cFv();
extern "C" void rideActor__14daObjKLift00_cFP10fopAc_ac_c();
extern "C" void CreateHeap__14daObjKLift00_cFv();
extern "C" void Create__14daObjKLift00_cFv();
extern "C" void Execute__14daObjKLift00_cFPPA3_A4_f();
extern "C" void Draw__14daObjKLift00_cFv();
extern "C" void Delete__14daObjKLift00_cFv();
extern "C" static void daObjKLift00_create1st__FP14daObjKLift00_c();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" static void daObjKLift00_MoveBGDelete__FP14daObjKLift00_c();
extern "C" static void daObjKLift00_MoveBGExecute__FP14daObjKLift00_c();
extern "C" static void daObjKLift00_MoveBGDraw__FP14daObjKLift00_c();
extern "C" void __ct__10dMdl_obj_cFv();
extern "C" void __dt__Q214daObjKLift00_c8ChainPosFv();
extern "C" void __ct__Q214daObjKLift00_c8ChainPosFv();
extern "C" extern char const* const d_a_obj_klift00__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void dKyw_get_wind_vecpow__Fv();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void entryObj__6dMdl_cFP10dMdl_obj_c();
extern "C" void entry__10dMdl_mng_cFP12J3DModelDataUsi();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalize__4cXyzFv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nwa__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void __construct_new_array();
extern "C" void _savegpr_22();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" f32 Zero__4cXyz[3];
extern "C" u8 BaseZ__4cXyz[12];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 8058AF38-8058AF60 000078 0028+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 8058C3E8-8058C3E8 000068 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8058C3E8 = "K_lift00";
#pragma pop

/* 8058C3F4-8058C3F8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_klift00__stringBase0;

/* 8058C3F8-8058C438 000004 0040+00 1/1 0/0 0/0 .data            l_cc_sph_src */
static dCcD_SrcSph l_cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x11}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x5, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8058C438-8058C47C 000044 0044+00 1/1 0/0 0/0 .data            l_cc_cyl_src */
static dCcD_SrcCyl l_cc_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x408000, 0x11}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x5, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        300.0f, // mRadius
        100.0f // mHeight
    } // mCyl
};

/* 8058C47C-8058C49C -00001 0020+00 1/0 0/0 0/0 .data            daObjKLift00_METHODS */
static actor_method_class daObjKLift00_METHODS = {
    (process_method_func)daObjKLift00_create1st__FP14daObjKLift00_c,
    (process_method_func)daObjKLift00_MoveBGDelete__FP14daObjKLift00_c,
    (process_method_func)daObjKLift00_MoveBGExecute__FP14daObjKLift00_c,
    0,
    (process_method_func)daObjKLift00_MoveBGDraw__FP14daObjKLift00_c,
};

/* 8058C49C-8058C4CC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_KLift00 */
extern actor_process_profile_definition g_profile_Obj_KLift00 = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_KLift00,       // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjKLift00_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  673,                    // mPriority
  &daObjKLift00_METHODS,  // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8058C4CC-8058C4F4 0000D8 0028+00 1/1 0/0 0/0 .data            __vt__14daObjKLift00_c */
SECTION_DATA extern void* __vt__14daObjKLift00_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daObjKLift00_cFv,
    (void*)Create__14daObjKLift00_cFv,
    (void*)Execute__14daObjKLift00_cFPPA3_A4_f,
    (void*)Draw__14daObjKLift00_cFv,
    (void*)Delete__14daObjKLift00_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 8058C4F4-8058C500 000100 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8058C500-8058C50C 00010C 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8058AF60-8058B02C 0000A0 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::~dCcD_Sph() {
extern "C" asm void __dt__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/__dt__8dCcD_SphFv.s"
}
#pragma pop

/* 8058B02C-8058B0D0 00016C 00A4+00 1/1 0/0 0/0 .text            create1st__14daObjKLift00_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKLift00_c::create1st() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/create1st__14daObjKLift00_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8058C380-8058C38C 000000 000C+00 5/5 0/0 0/0 .rodata          l_bmdidx */
SECTION_RODATA static u8 const l_bmdidx[12] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x8058C380, &l_bmdidx);

/* 8058C38C-8058C398 00000C 000C+00 0/1 0/0 0/0 .rodata          @3711 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3711[12] = {
    0x00, 0x00, 0x00, 0x00, 0xBF, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8058C38C, &lit_3711);
#pragma pop

/* 8058C398-8058C39C 000018 0004+00 0/2 0/0 0/0 .rodata          @3799 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3799 = -1.0f;
COMPILER_STRIP_GATE(0x8058C398, &lit_3799);
#pragma pop

/* 8058C39C-8058C3A0 00001C 0004+00 0/3 0/0 0/0 .rodata          @3800 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3800 = 1.0f;
COMPILER_STRIP_GATE(0x8058C39C, &lit_3800);
#pragma pop

/* 8058B0D0-8058B4B0 000210 03E0+00 2/2 0/0 0/0 .text            setMtx__14daObjKLift00_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKLift00_c::setMtx() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/setMtx__14daObjKLift00_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8058C3A0-8058C3A4 000020 0004+00 0/1 0/0 0/0 .rodata          @3822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3822 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x8058C3A0, &lit_3822);
#pragma pop

/* 8058C3A4-8058C3A8 000024 0004+00 0/1 0/0 0/0 .rodata          @3823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3823 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x8058C3A4, &lit_3823);
#pragma pop

/* 8058C3A8-8058C3AC 000028 0004+00 0/1 0/0 0/0 .rodata          @3824 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3824 = 0x3B23D70A;
COMPILER_STRIP_GATE(0x8058C3A8, &lit_3824);
#pragma pop

/* 8058B4B0-8058B5EC 0005F0 013C+00 1/1 0/0 0/0 .text rideActor__14daObjKLift00_cFP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKLift00_c::rideActor(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/rideActor__14daObjKLift00_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 8058B5EC-8058B77C 00072C 0190+00 1/0 0/0 0/0 .text            CreateHeap__14daObjKLift00_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKLift00_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/CreateHeap__14daObjKLift00_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8058C3AC-8058C3B0 00002C 0004+00 0/2 0/0 0/0 .rodata          @3928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3928 = 35.0f;
COMPILER_STRIP_GATE(0x8058C3AC, &lit_3928);
#pragma pop

/* 8058C3B0-8058C3B4 000030 0004+00 0/1 0/0 0/0 .rodata          @3929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3929 = -350.0f;
COMPILER_STRIP_GATE(0x8058C3B0, &lit_3929);
#pragma pop

/* 8058C3B4-8058C3B8 000034 0004+00 0/1 0/0 0/0 .rodata          @3930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3930 = 40.0f;
COMPILER_STRIP_GATE(0x8058C3B4, &lit_3930);
#pragma pop

/* 8058C3B8-8058C3BC 000038 0004+00 0/1 0/0 0/0 .rodata          @3931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3931 = 100.0f;
COMPILER_STRIP_GATE(0x8058C3B8, &lit_3931);
#pragma pop

/* 8058C3BC-8058C3C0 00003C 0004+00 0/1 0/0 0/0 .rodata          @3932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3932 = 350.0f;
COMPILER_STRIP_GATE(0x8058C3BC, &lit_3932);
#pragma pop

/* 8058C3C0-8058C3C8 000040 0004+04 0/1 0/0 0/0 .rodata          @3933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3933[1 + 1 /* padding */] = {
    10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8058C3C0, &lit_3933);
#pragma pop

/* 8058C3C8-8058C3D0 000048 0008+00 0/1 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3935[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8058C3C8, &lit_3935);
#pragma pop

/* 8058B77C-8058B97C 0008BC 0200+00 1/0 0/0 0/0 .text            Create__14daObjKLift00_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKLift00_c::Create() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/Create__14daObjKLift00_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8058C3D0-8058C3D4 000050 0004+00 0/1 0/0 0/0 .rodata          @4122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4122 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8058C3D0, &lit_4122);
#pragma pop

/* 8058C3D4-8058C3D8 000054 0004+00 0/1 0/0 0/0 .rodata          @4123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4123 = 1.25f;
COMPILER_STRIP_GATE(0x8058C3D4, &lit_4123);
#pragma pop

/* 8058C3D8-8058C3DC 000058 0004+00 0/1 0/0 0/0 .rodata          @4124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4124 = 15.0f;
COMPILER_STRIP_GATE(0x8058C3D8, &lit_4124);
#pragma pop

/* 8058C3DC-8058C3E0 00005C 0004+00 0/1 0/0 0/0 .rodata          @4125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4125 = -4.0f;
COMPILER_STRIP_GATE(0x8058C3DC, &lit_4125);
#pragma pop

/* 8058C3E0-8058C3E4 000060 0004+00 0/1 0/0 0/0 .rodata          @4126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4126 = 1.0f / 3.0f;
COMPILER_STRIP_GATE(0x8058C3E0, &lit_4126);
#pragma pop

/* 8058C3E4-8058C3E8 000064 0004+00 0/1 0/0 0/0 .rodata          @4127 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4127[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8058C3E4, &lit_4127);
#pragma pop

/* 8058B97C-8058BEEC 000ABC 0570+00 1/0 0/0 0/0 .text            Execute__14daObjKLift00_cFPPA3_A4_f
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKLift00_c::Execute(f32 (**param_0)[3][4]) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/Execute__14daObjKLift00_cFPPA3_A4_f.s"
}
#pragma pop

/* 8058BEEC-8058C014 00102C 0128+00 1/0 0/0 0/0 .text            Draw__14daObjKLift00_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKLift00_c::Draw() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/Draw__14daObjKLift00_cFv.s"
}
#pragma pop

/* 8058C014-8058C050 001154 003C+00 1/0 0/0 0/0 .text            Delete__14daObjKLift00_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daObjKLift00_c::Delete() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/Delete__14daObjKLift00_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8058C50C-8058C518 000118 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8058C050-8058C164 001190 0114+00 1/0 0/0 0/0 .text daObjKLift00_create1st__FP14daObjKLift00_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjKLift00_create1st(daObjKLift00_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/daObjKLift00_create1st__FP14daObjKLift00_c.s"
}
#pragma pop

/* 8058C164-8058C1AC 0012A4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 8058C1AC-8058C1F4 0012EC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 8058C1F4-8058C278 001334 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::dCcD_Sph() {
extern "C" asm void __ct__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/__ct__8dCcD_SphFv.s"
}
#pragma pop

/* 8058C278-8058C2C0 0013B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 8058C2C0-8058C2E0 001400 0020+00 1/0 0/0 0/0 .text
 * daObjKLift00_MoveBGDelete__FP14daObjKLift00_c                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjKLift00_MoveBGDelete(daObjKLift00_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/daObjKLift00_MoveBGDelete__FP14daObjKLift00_c.s"
}
#pragma pop

/* 8058C2E0-8058C300 001420 0020+00 1/0 0/0 0/0 .text
 * daObjKLift00_MoveBGExecute__FP14daObjKLift00_c               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjKLift00_MoveBGExecute(daObjKLift00_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/daObjKLift00_MoveBGExecute__FP14daObjKLift00_c.s"
}
#pragma pop

/* 8058C300-8058C32C 001440 002C+00 1/0 0/0 0/0 .text daObjKLift00_MoveBGDraw__FP14daObjKLift00_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObjKLift00_MoveBGDraw(daObjKLift00_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/daObjKLift00_MoveBGDraw__FP14daObjKLift00_c.s"
}
#pragma pop

/* 8058C32C-8058C338 00146C 000C+00 1/1 0/0 0/0 .text            __ct__10dMdl_obj_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dMdl_obj_c::dMdl_obj_c() {
extern "C" asm void __ct__10dMdl_obj_cFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/__ct__10dMdl_obj_cFv.s"
}
#pragma pop

/* 8058C338-8058C374 001478 003C+00 1/1 0/0 0/0 .text            __dt__Q214daObjKLift00_c8ChainPosFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daObjKLift00_c::ChainPos::~ChainPos() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_klift00/d_a_obj_klift00/__dt__Q214daObjKLift00_c8ChainPosFv.s"
}
#pragma pop

/* 8058C374-8058C378 0014B4 0004+00 1/1 0/0 0/0 .text            __ct__Q214daObjKLift00_c8ChainPosFv
 */
daObjKLift00_c::ChainPos::ChainPos() {
    /* empty function */
}

/* 8058C3E8-8058C3E8 000068 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

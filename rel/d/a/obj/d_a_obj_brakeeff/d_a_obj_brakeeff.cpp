/**
 * @file d_a_obj_brakeeff.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_brakeeff/d_a_obj_brakeeff.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daObj_Brakeeff_Draw__FP18obj_brakeeff_class();
extern "C" static void obj_brakeeff_1__FP18obj_brakeeff_class();
extern "C" static void action__FP18obj_brakeeff_class();
extern "C" static void daObj_Brakeeff_Execute__FP18obj_brakeeff_class();
extern "C" static bool daObj_Brakeeff_IsDelete__FP18obj_brakeeff_class();
extern "C" static void daObj_Brakeeff_Delete__FP18obj_brakeeff_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daObj_Brakeeff_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" extern char const* const d_a_obj_brakeeff__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void _savegpr_24();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];

//
// Declarations:
//

/* 8046DCB8-8046DD38 000078 0080+00 1/0 0/0 0/0 .text daObj_Brakeeff_Draw__FP18obj_brakeeff_class
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Brakeeff_Draw(obj_brakeeff_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brakeeff/d_a_obj_brakeeff/daObj_Brakeeff_Draw__FP18obj_brakeeff_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 8046E528-8046E52C 000000 0004+00 2/2 0/0 0/0 .rodata          @3879 */
SECTION_RODATA static f32 const lit_3879 = 1.0f;
COMPILER_STRIP_GATE(0x8046E528, &lit_3879);

/* 8046E52C-8046E530 000004 0004+00 0/1 0/0 0/0 .rodata          @3880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3880 = 75.0f;
COMPILER_STRIP_GATE(0x8046E52C, &lit_3880);
#pragma pop

/* 8046E530-8046E534 000008 0004+00 0/1 0/0 0/0 .rodata          @3881 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3881 = 50.0f;
COMPILER_STRIP_GATE(0x8046E530, &lit_3881);
#pragma pop

/* 8046E534-8046E538 00000C 0004+00 0/1 0/0 0/0 .rodata          @3882 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3882 = 14.0f / 25.0f;
COMPILER_STRIP_GATE(0x8046E534, &lit_3882);
#pragma pop

/* 8046E540-8046E54C 000000 000A+02 1/1 0/0 0/0 .data            e_name */
SECTION_DATA static u8 e_name[10 + 2 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 8046DD38-8046DF80 0000F8 0248+00 1/1 0/0 0/0 .text obj_brakeeff_1__FP18obj_brakeeff_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void obj_brakeeff_1(obj_brakeeff_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brakeeff/d_a_obj_brakeeff/obj_brakeeff_1__FP18obj_brakeeff_class.s"
}
#pragma pop

/* 8046DF80-8046DFB0 000340 0030+00 1/1 0/0 0/0 .text            action__FP18obj_brakeeff_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void action(obj_brakeeff_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brakeeff/d_a_obj_brakeeff/action__FP18obj_brakeeff_class.s"
}
#pragma pop

/* 8046DFB0-8046E098 000370 00E8+00 2/1 0/0 0/0 .text
 * daObj_Brakeeff_Execute__FP18obj_brakeeff_class               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Brakeeff_Execute(obj_brakeeff_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brakeeff/d_a_obj_brakeeff/daObj_Brakeeff_Execute__FP18obj_brakeeff_class.s"
}
#pragma pop

/* 8046E098-8046E0A0 000458 0008+00 1/0 0/0 0/0 .text
 * daObj_Brakeeff_IsDelete__FP18obj_brakeeff_class              */
static bool daObj_Brakeeff_IsDelete(obj_brakeeff_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 8046E538-8046E538 000010 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8046E538 = "Obj_Bef";
#pragma pop

/* 8046E0A0-8046E0F0 000460 0050+00 1/0 0/0 0/0 .text
 * daObj_Brakeeff_Delete__FP18obj_brakeeff_class                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Brakeeff_Delete(obj_brakeeff_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brakeeff/d_a_obj_brakeeff/daObj_Brakeeff_Delete__FP18obj_brakeeff_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 8046E54C-8046E554 00000C 0008+00 1/1 0/0 0/0 .data            bef_bmd */
SECTION_DATA static u8 bef_bmd[8] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06,
};

/* 8046E554-8046E55C 000014 0008+00 1/1 0/0 0/0 .data            bef_brk */
SECTION_DATA static u8 bef_brk[8] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A,
};

/* 8046E55C-8046E59C 00001C 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4003 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x20, 0x11}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8046E59C-8046E5BC -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Brakeeff_Method */
static actor_method_class l_daObj_Brakeeff_Method = {
    (process_method_func)daObj_Brakeeff_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Brakeeff_Delete__FP18obj_brakeeff_class,
    (process_method_func)daObj_Brakeeff_Execute__FP18obj_brakeeff_class,
    (process_method_func)daObj_Brakeeff_IsDelete__FP18obj_brakeeff_class,
    (process_method_func)daObj_Brakeeff_Draw__FP18obj_brakeeff_class,
};

/* 8046E5BC-8046E5EC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_BEF */
extern actor_process_profile_definition g_profile_OBJ_BEF = {
  fpcLy_CURRENT_e,            // mLayerID
  3,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_OBJ_BEF,               // mProcName
  &g_fpcLf_Method.mBase,      // sub_method
  sizeof(obj_brakeeff_class), // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  39,                         // mPriority
  &l_daObj_Brakeeff_Method,   // sub_method
  0x00040100,                 // mStatus
  fopAc_ACTOR_e,              // mActorType
  fopAc_CULLBOX_7_e,          // cullType
};

/* 8046E5EC-8046E5F8 0000AC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8046E5F8-8046E604 0000B8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8046E604-8046E610 0000C4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8046E0F0-8046E2B0 0004B0 01C0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brakeeff/d_a_obj_brakeeff/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* 8046E2B0-8046E2F8 000670 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brakeeff/d_a_obj_brakeeff/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 8046E2F8-8046E490 0006B8 0198+00 1/0 0/0 0/0 .text daObj_Brakeeff_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Brakeeff_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brakeeff/d_a_obj_brakeeff/daObj_Brakeeff_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 8046E490-8046E4D8 000850 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brakeeff/d_a_obj_brakeeff/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 8046E4D8-8046E520 000898 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_brakeeff/d_a_obj_brakeeff/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 8046E538-8046E538 000010 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

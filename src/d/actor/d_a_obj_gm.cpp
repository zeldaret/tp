/**
 * @file d_a_obj_gm.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_gm.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"




//
// Forward References:
//

extern "C" void __ct__14daObj_Gm_HIO_cFv();
extern "C" static void daObj_Gm_Draw__FP12obj_gm_class();
extern "C" static void wall_angle_get__FP12obj_gm_class();
extern "C" void __dt__4cXyzFv();
extern "C" static void ito_pos_set__FP12obj_gm_class();
extern "C" static void bg_fix__FP12obj_gm_class();
extern "C" static void swing__FP12obj_gm_class();
extern "C" static void drop__FP12obj_gm_class();
extern "C" static void action__FP12obj_gm_class();
extern "C" static void s_tbox_sub__FPvPv();
extern "C" static void s_so_sub__FPvPv();
extern "C" static void daObj_Gm_Execute__FP12obj_gm_class();
extern "C" static bool daObj_Gm_IsDelete__FP12obj_gm_class();
extern "C" static void daObj_Gm_Delete__FP12obj_gm_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daObj_Gm_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__14daObj_Gm_HIO_cFv();
extern "C" void __sinit_d_a_obj_gm_cpp();
extern "C" static void func_80BFD308();
extern "C" static void func_80BFD310();
extern "C" extern char const* const d_a_obj_gm__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb();
extern "C" void fopAcM_createItemForMidBoss__FPC4cXyziiPC5csXyzPC4cXyzii();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void make_eff_break_gm_kotubo__5daObjFP10fopAc_ac_c();
extern "C" void make_eff_break_gm_ootubo__5daObjFP10fopAc_ac_c();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void MtxPush__Fv();
extern "C" void MtxPull__Fv();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 80BFD3E8-80BFD404 000020 001C+00 7/8 0/0 0/0 .data            obj_size */
SECTION_DATA static u8 obj_size[28] = {
    0x41, 0xF0, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x43, 0x0C,
    0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x42, 0x8C, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00,
};

/* 80BFD404-80BFD420 00003C 001C+00 0/1 0/0 0/0 .data            weg */
#pragma push
#pragma force_active on
SECTION_DATA static u8 weg[28] = {
    0x42, 0x70, 0x00, 0x00, 0x42, 0x8C, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00, 0x43, 0x16,
    0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00,
};
#pragma pop

/* 80BFD420-80BFD430 000058 000E+02 0/1 0/0 0/0 .data            tim */
#pragma push
#pragma force_active on
SECTION_DATA static u8 tim[14 + 2 /* padding */] = {
    0x05,
    0xDC,
    0x03,
    0xE8,
    0x04,
    0xB0,
    0x02,
    0xBC,
    0x03,
    0x20,
    0x03,
    0xE8,
    0x02,
    0xBC,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 80BFD430-80BFD44C 000068 001C+00 2/2 0/0 0/0 .data            spin_sp */
SECTION_DATA static u8 spin_sp[28] = {
    0x43, 0x48, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0x85,
    0x66, 0x66, 0x42, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BFD44C-80BFD45C 000084 000E+02 1/1 0/0 0/0 .data            neg */
SECTION_DATA static u8 neg[14 + 2 /* padding */] = {
    0x01,
    0x2C,
    0x00,
    0xC8,
    0x00,
    0xFA,
    0x00,
    0x78,
    0x00,
    0x96,
    0x00,
    0xFA,
    0x00,
    0x96,
    /* padding */
    0x00,
    0x00,
};

/* 80BFD45C-80BFD478 000094 001C+00 1/1 0/0 0/0 .data            obj_size_maji */
SECTION_DATA static u8 obj_size_maji[28] = {
    0x3F, 0x2A, 0x7E, 0xFA, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x33, 0x33, 0x33, 0x3F, 0x99,
    0x99, 0x9A, 0x3F, 0x80, 0x00, 0x00, 0x3F, 0x33, 0x33, 0x33, 0x3F, 0x99, 0x99, 0x9A,
};

/* 80BFD478-80BFD494 0000B0 001C+00 1/1 0/0 0/0 .data            gm_obj_bmd */
SECTION_DATA static u8 gm_obj_bmd[28] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06,
};

/* 80BFD494-80BFD4D4 0000CC 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4334 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0x1f}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x2, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80BFD4D4-80BFD4F4 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Gm_Method */
static actor_method_class l_daObj_Gm_Method = {
    (process_method_func)daObj_Gm_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Gm_Delete__FP12obj_gm_class,
    (process_method_func)daObj_Gm_Execute__FP12obj_gm_class,
    (process_method_func)daObj_Gm_IsDelete__FP12obj_gm_class,
    (process_method_func)daObj_Gm_Draw__FP12obj_gm_class,
};

/* 80BFD4F4-80BFD524 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_GM */
extern actor_process_profile_definition g_profile_OBJ_GM = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_GM,            // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(obj_gm_class),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  57,                     // mPriority
  &l_daObj_Gm_Method,     // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BFD524-80BFD530 00015C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80BFD530-80BFD53C 000168 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80BFD53C-80BFD548 000174 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80BFD548-80BFD554 000180 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80BFD554-80BFD560 00018C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BFD560-80BFD584 000198 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BFD310,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BFD308,
};

/* 80BFD584-80BFD590 0001BC 000C+00 2/2 0/0 0/0 .data            __vt__14daObj_Gm_HIO_c */
SECTION_DATA extern void* __vt__14daObj_Gm_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daObj_Gm_HIO_cFv,
};

/* 80BFB14C-80BFB164 0000EC 0018+00 1/1 0/0 0/0 .text            __ct__14daObj_Gm_HIO_cFv */
daObj_Gm_HIO_c::daObj_Gm_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFD32C-80BFD330 000000 0004+00 8/8 0/0 0/0 .rodata          @3686 */
SECTION_RODATA static f32 const lit_3686 = 1.0f;
COMPILER_STRIP_GATE(0x80BFD32C, &lit_3686);

/* 80BFB164-80BFB218 000104 00B4+00 1/0 0/0 0/0 .text            daObj_Gm_Draw__FP12obj_gm_class */
static void daObj_Gm_Draw(obj_gm_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFD330-80BFD334 000004 0004+00 0/5 0/0 0/0 .rodata          @3740 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3740[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BFD330, &lit_3740);
#pragma pop

/* 80BFD334-80BFD338 000008 0004+00 0/2 0/0 0/0 .rodata          @3741 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3741 = -50.0f;
COMPILER_STRIP_GATE(0x80BFD334, &lit_3741);
#pragma pop

/* 80BFD338-80BFD33C 00000C 0004+00 0/2 0/0 0/0 .rodata          @3742 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3742 = 5.0f;
COMPILER_STRIP_GATE(0x80BFD338, &lit_3742);
#pragma pop

/* 80BFD33C-80BFD340 000010 0004+00 0/1 0/0 0/0 .rodata          @3743 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3743 = 100.0f;
COMPILER_STRIP_GATE(0x80BFD33C, &lit_3743);
#pragma pop

/* 80BFD340-80BFD344 000014 0004+00 0/1 0/0 0/0 .rodata          @3744 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3744 = -1.0f;
COMPILER_STRIP_GATE(0x80BFD340, &lit_3744);
#pragma pop

/* 80BFB218-80BFB3D4 0001B8 01BC+00 1/1 0/0 0/0 .text            wall_angle_get__FP12obj_gm_class */
static void wall_angle_get(obj_gm_class* param_0) {
    // NONMATCHING
}

/* 80BFB3D4-80BFB410 000374 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFD344-80BFD348 000018 0004+00 0/1 0/0 0/0 .rodata          @3763 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3763 = 15.0f;
COMPILER_STRIP_GATE(0x80BFD344, &lit_3763);
#pragma pop

/* 80BFD348-80BFD34C 00001C 0004+00 0/2 0/0 0/0 .rodata          @3764 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3764 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BFD348, &lit_3764);
#pragma pop

/* 80BFB410-80BFB508 0003B0 00F8+00 3/3 0/0 0/0 .text            ito_pos_set__FP12obj_gm_class */
static void ito_pos_set(obj_gm_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFD34C-80BFD350 000020 0004+00 0/1 0/0 0/0 .rodata          @3927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3927 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BFD34C, &lit_3927);
#pragma pop

/* 80BFD350-80BFD354 000024 0004+00 0/2 0/0 0/0 .rodata          @3928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3928 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80BFD350, &lit_3928);
#pragma pop

/* 80BFD354-80BFD358 000028 0004+00 0/1 0/0 0/0 .rodata          @3929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3929 = 12300.0f;
COMPILER_STRIP_GATE(0x80BFD354, &lit_3929);
#pragma pop

/* 80BFD358-80BFD35C 00002C 0004+00 0/3 0/0 0/0 .rodata          @3930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3930 = 40.0f;
COMPILER_STRIP_GATE(0x80BFD358, &lit_3930);
#pragma pop

/* 80BFD35C-80BFD360 000030 0004+00 0/1 0/0 0/0 .rodata          @3931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3931 = 20.0f;
COMPILER_STRIP_GATE(0x80BFD35C, &lit_3931);
#pragma pop

/* 80BFD360-80BFD364 000034 0004+00 0/3 0/0 0/0 .rodata          @3932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3932 = 10000.0f;
COMPILER_STRIP_GATE(0x80BFD360, &lit_3932);
#pragma pop

/* 80BFD364-80BFD368 000038 0004+00 0/3 0/0 0/0 .rodata          @3933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3933 = 10.0f;
COMPILER_STRIP_GATE(0x80BFD364, &lit_3933);
#pragma pop

/* 80BFD368-80BFD36C 00003C 0004+00 0/1 0/0 0/0 .rodata          @3934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3934 = 5000.0f;
COMPILER_STRIP_GATE(0x80BFD368, &lit_3934);
#pragma pop

/* 80BFB508-80BFBA14 0004A8 050C+00 1/1 0/0 0/0 .text            bg_fix__FP12obj_gm_class */
static void bg_fix(obj_gm_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFD36C-80BFD374 000040 0008+00 0/1 0/0 0/0 .rodata          @4091 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4091[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BFD36C, &lit_4091);
#pragma pop

/* 80BFD374-80BFD37C 000048 0008+00 0/1 0/0 0/0 .rodata          @4092 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4092[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BFD374, &lit_4092);
#pragma pop

/* 80BFD37C-80BFD384 000050 0008+00 0/1 0/0 0/0 .rodata          @4093 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4093[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BFD37C, &lit_4093);
#pragma pop

/* 80BFD384-80BFD388 000058 0004+00 0/1 0/0 0/0 .rodata          @4094 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4094 = 1500.0f;
COMPILER_STRIP_GATE(0x80BFD384, &lit_4094);
#pragma pop

/* 80BFD388-80BFD38C 00005C 0004+00 0/2 0/0 0/0 .rodata          @4095 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4095 = 2000.0f;
COMPILER_STRIP_GATE(0x80BFD388, &lit_4095);
#pragma pop

/* 80BFD38C-80BFD394 000060 0004+04 0/2 0/0 0/0 .rodata          @4096 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4096[1 + 1 /* padding */] = {
    1.0f / 40.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80BFD38C, &lit_4096);
#pragma pop

/* 80BFD394-80BFD39C 000068 0008+00 0/1 0/0 0/0 .rodata          @4098 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4098[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BFD394, &lit_4098);
#pragma pop

/* 80BFBA14-80BFC168 0009B4 0754+00 1/1 0/0 0/0 .text            swing__FP12obj_gm_class */
static void swing(obj_gm_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFD39C-80BFD3A0 000070 0004+00 0/1 0/0 0/0 .rodata          @4189 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4189 = -3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BFD39C, &lit_4189);
#pragma pop

/* 80BFD3A0-80BFD3A4 000074 0004+00 0/1 0/0 0/0 .rodata          @4190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4190 = 7.0f / 20.0f;
COMPILER_STRIP_GATE(0x80BFD3A0, &lit_4190);
#pragma pop

/* 80BFD3A4-80BFD3A8 000078 0004+00 0/1 0/0 0/0 .rodata          @4191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4191 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BFD3A4, &lit_4191);
#pragma pop

/* 80BFC168-80BFC664 001108 04FC+00 1/1 0/0 0/0 .text            drop__FP12obj_gm_class */
static void drop(obj_gm_class* param_0) {
    // NONMATCHING
}

/* 80BFC664-80BFC7D0 001604 016C+00 1/1 0/0 0/0 .text            action__FP12obj_gm_class */
static void action(obj_gm_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFD3A8-80BFD3AC 00007C 0004+00 1/1 0/0 0/0 .rodata          @4229 */
SECTION_RODATA static f32 const lit_4229 = 40000.0f;
COMPILER_STRIP_GATE(0x80BFD3A8, &lit_4229);

/* 80BFC7D0-80BFC85C 001770 008C+00 1/1 0/0 0/0 .text            s_tbox_sub__FPvPv */
static void s_tbox_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80BFC85C-80BFC8A8 0017FC 004C+00 1/1 0/0 0/0 .text            s_so_sub__FPvPv */
static void s_so_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFD3AC-80BFD3B0 000080 0004+00 1/1 0/0 0/0 .rodata          @4291 */
SECTION_RODATA static f32 const lit_4291 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BFD3AC, &lit_4291);

/* 80BFC8A8-80BFCAF8 001848 0250+00 2/1 0/0 0/0 .text            daObj_Gm_Execute__FP12obj_gm_class
 */
static void daObj_Gm_Execute(obj_gm_class* param_0) {
    // NONMATCHING
}

/* 80BFCAF8-80BFCB00 001A98 0008+00 1/0 0/0 0/0 .text            daObj_Gm_IsDelete__FP12obj_gm_class
 */
static bool daObj_Gm_IsDelete(obj_gm_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80BFD3C0-80BFD3C0 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BFD3C0 = "OBJ_GM";
#pragma pop

/* 80BFD598-80BFD59C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80BFD598[4];

/* 80BFCB00-80BFCB74 001AA0 0074+00 1/0 0/0 0/0 .text            daObj_Gm_Delete__FP12obj_gm_class
 */
static void daObj_Gm_Delete(obj_gm_class* param_0) {
    // NONMATCHING
}

/* 80BFCB74-80BFCBF0 001B14 007C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BFD3B0-80BFD3B4 000084 0004+00 0/1 0/0 0/0 .rodata          @4423 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4423 = -300.0f;
COMPILER_STRIP_GATE(0x80BFD3B0, &lit_4423);
#pragma pop

/* 80BFD3B4-80BFD3B8 000088 0004+00 0/1 0/0 0/0 .rodata          @4424 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4424 = 300.0f;
COMPILER_STRIP_GATE(0x80BFD3B4, &lit_4424);
#pragma pop

/* 80BFD3B8-80BFD3BC 00008C 0004+00 0/1 0/0 0/0 .rodata          @4425 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4425 = 65536.0f;
COMPILER_STRIP_GATE(0x80BFD3B8, &lit_4425);
#pragma pop

/* 80BFD3BC-80BFD3C0 000090 0004+00 0/1 0/0 0/0 .rodata          @4426 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4426 = 50.0f;
COMPILER_STRIP_GATE(0x80BFD3BC, &lit_4426);
#pragma pop

/* 80BFD59C-80BFD5A8 00000C 000C+00 1/1 0/0 0/0 .bss             @3661 */
static u8 lit_3661[12];

/* 80BFD5A8-80BFD5B0 000018 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[8];

/* 80BFCBF0-80BFD06C 001B90 047C+00 1/0 0/0 0/0 .text            daObj_Gm_Create__FP10fopAc_ac_c */
static void daObj_Gm_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BFD06C-80BFD0B4 00200C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80BFD0B4-80BFD0FC 002054 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BFD0FC-80BFD158 00209C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BFD158-80BFD1C8 0020F8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80BFD1C8-80BFD238 002168 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80BFD238-80BFD23C 0021D8 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80BFD23C-80BFD284 0021DC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80BFD284-80BFD2CC 002224 0048+00 2/1 0/0 0/0 .text            __dt__14daObj_Gm_HIO_cFv */
daObj_Gm_HIO_c::~daObj_Gm_HIO_c() {
    // NONMATCHING
}

/* 80BFD2CC-80BFD308 00226C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_gm_cpp */
void __sinit_d_a_obj_gm_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80BFD2CC, __sinit_d_a_obj_gm_cpp);
#pragma pop

/* 80BFD308-80BFD310 0022A8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80BFD308() {
    // NONMATCHING
}

/* 80BFD310-80BFD318 0022B0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80BFD310() {
    // NONMATCHING
}

/* 80BFD3C0-80BFD3C0 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

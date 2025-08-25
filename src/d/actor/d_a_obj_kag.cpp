/**
 * @file d_a_obj_kag.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_kag.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__14daObj_KagHIO_cFv();
extern "C" void setAction__10daObjKAG_cFM10daObjKAG_cFPCvPv_v();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daObjKAG_Create__FP10fopAc_ac_c();
extern "C" static void daObjKAG_Delete__FP10daObjKAG_c();
extern "C" void Kag_Bgcheck__10daObjKAG_cFP4cXyzP5csXyzP4cXyz();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void fly__10daObjKAG_cFv();
extern "C" void wait__10daObjKAG_cFv();
extern "C" void walk__10daObjKAG_cFv();
extern "C" void bin_wait__10daObjKAG_cFv();
extern "C" void bin_action__10daObjKAG_cFv();
extern "C" void hook__10daObjKAG_cFv();
extern "C" void boomerang__10daObjKAG_cFv();
extern "C" void action__10daObjKAG_cFv();
extern "C" void checkGroundPos__10daObjKAG_cFv();
extern "C" void hit_check__10daObjKAG_cFv();
extern "C" void execute__10daObjKAG_cFv();
extern "C" void _delete__10daObjKAG_cFv();
extern "C" void setBaseMtx__10daObjKAG_cFv();
extern "C" static void daObjKAG_Draw__FP10daObjKAG_c();
extern "C" static void daObjKAG_Execute__FP10daObjKAG_c();
extern "C" void create__10daObjKAG_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static bool daObjKAG_IsDelete__FP10daObjKAG_c();
extern "C" void kag_setParticle__10daObjKAG_cFv();
extern "C" void __dt__14daObj_KagHIO_cFv();
extern "C" void __sinit_d_a_obj_kag_cpp();
extern "C" void Insect_Release__9dInsect_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" extern char const* const d_a_obj_kag__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void GetTgHitGObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void __ct__9dInsect_cFv();
extern "C" void Insect_GetDemoMain__9dInsect_cFv();
extern "C" void CalcZBuffer__9dInsect_cFf();
extern "C" void initOffset__20daPy_boomerangMove_cFPC4cXyz();
extern "C" void posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs();
extern "C" void bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void isCatchNotGiveInsect__14dMenu_Insect_cFUc();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C3114C-80C31150 000000 0004+00 11/11 0/0 0/0 .rodata          @3774 */
SECTION_RODATA static f32 const lit_3774 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C3114C, &lit_3774);

/* 80C31290-80C312D0 000020 0040+00 0/1 0/0 0/0 .data cc_sph_src__25@unnamed@d_a_obj_kag_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80C31290[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x01, 0x40, 0x40, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
};
#pragma pop

/* 80C312D0-80C312DC -00001 000C+00 1/1 0/0 0/0 .data            @3980 */
SECTION_DATA static void* lit_3980[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daObjKAG_cFv,
};

/* 80C312DC-80C312E8 -00001 000C+00 1/1 0/0 0/0 .data            @4341 */
SECTION_DATA static void* lit_4341[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fly__10daObjKAG_cFv,
};

/* 80C312E8-80C312F4 -00001 000C+00 1/1 0/0 0/0 .data            @4344 */
SECTION_DATA static void* lit_4344[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__10daObjKAG_cFv,
};

/* 80C312F4-80C31300 -00001 000C+00 1/1 0/0 0/0 .data            @4377 */
SECTION_DATA static void* lit_4377[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fly__10daObjKAG_cFv,
};

/* 80C31300-80C3130C -00001 000C+00 1/1 0/0 0/0 .data            @4380 */
SECTION_DATA static void* lit_4380[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daObjKAG_cFv,
};

/* 80C3130C-80C31318 -00001 000C+00 1/1 0/0 0/0 .data            @4476 */
SECTION_DATA static void* lit_4476[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fly__10daObjKAG_cFv,
};

/* 80C31318-80C31324 -00001 000C+00 1/1 0/0 0/0 .data            @4479 */
SECTION_DATA static void* lit_4479[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)bin_action__10daObjKAG_cFv,
};

/* 80C31324-80C31330 -00001 000C+00 1/1 0/0 0/0 .data            @4541 */
SECTION_DATA static void* lit_4541[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fly__10daObjKAG_cFv,
};

/* 80C31330-80C3133C -00001 000C+00 1/1 0/0 0/0 .data            @4603 */
SECTION_DATA static void* lit_4603[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fly__10daObjKAG_cFv,
};

/* 80C3133C-80C31348 -00001 000C+00 1/1 0/0 0/0 .data            @4662 */
SECTION_DATA static void* lit_4662[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)hook__10daObjKAG_cFv,
};

/* 80C31348-80C31354 -00001 000C+00 1/1 0/0 0/0 .data            @4665 */
SECTION_DATA static void* lit_4665[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)boomerang__10daObjKAG_cFv,
};

/* 80C31354-80C31360 -00001 000C+00 0/1 0/0 0/0 .data            @4898 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4898[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)bin_wait__10daObjKAG_cFv,
};
#pragma pop

/* 80C31360-80C3136C -00001 000C+00 0/1 0/0 0/0 .data            @4901 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4901[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)fly__10daObjKAG_cFv,
};
#pragma pop

/* 80C3136C-80C3138C -00001 0020+00 1/0 0/0 0/0 .data            l_daObjKAG_Method */
static actor_method_class l_daObjKAG_Method = {
    (process_method_func)daObjKAG_Create__FP10fopAc_ac_c,
    (process_method_func)daObjKAG_Delete__FP10daObjKAG_c,
    (process_method_func)daObjKAG_Execute__FP10daObjKAG_c,
    (process_method_func)daObjKAG_IsDelete__FP10daObjKAG_c,
    (process_method_func)daObjKAG_Draw__FP10daObjKAG_c,
};

/* 80C3138C-80C313BC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Kag */
extern actor_process_profile_definition g_profile_Obj_Kag = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Kag,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjKAG_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  485,                    // mPriority
  &l_daObjKAG_Method,     // sub_method
  0x000C0100,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C313BC-80C313C8 00014C 000C+00 0/0 0/0 0/0 .data            __vt__9dInsect_c */
SECTION_DATA extern void* __vt__9dInsect_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)Insect_Release__9dInsect_cFv,
};

/* 80C313C8-80C313D4 000158 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C313D4-80C313E0 000164 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C313E0-80C313EC 000170 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C313EC-80C313F8 00017C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C313F8-80C31404 000188 000C+00 1/1 0/0 0/0 .data            __vt__10daObjKAG_c */
SECTION_DATA extern void* __vt__10daObjKAG_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)Insect_Release__9dInsect_cFv,
};

/* 80C31404-80C31410 000194 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80C31410-80C3141C 0001A0 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C3141C-80C31428 0001AC 000C+00 2/2 0/0 0/0 .data            __vt__14daObj_KagHIO_c */
SECTION_DATA extern void* __vt__14daObj_KagHIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daObj_KagHIO_cFv,
};

/* 80C2E40C-80C2E434 0000EC 0028+00 1/1 0/0 0/0 .text            __ct__14daObj_KagHIO_cFv */
daObj_KagHIO_c::daObj_KagHIO_c() {
    // NONMATCHING
}

/* 80C2E434-80C2E4D8 000114 00A4+00 8/8 0/0 0/0 .text
 * setAction__10daObjKAG_cFM10daObjKAG_cFPCvPv_v                */
void daObjKAG_c::setAction(void (daObjKAG_c::*param_0)()) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C31150-80C31158 000004 0008+00 0/1 0/0 0/0 .rodata          l_kag_brk_index */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_kag_brk_index[8] = {
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0D,
};
COMPILER_STRIP_GATE(0x80C31150, &l_kag_brk_index);
#pragma pop

/* 80C31158-80C31160 00000C 0008+00 0/1 0/0 0/0 .rodata          l_kag_btk_index */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_kag_btk_index[8] = {
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x11,
};
COMPILER_STRIP_GATE(0x80C31158, &l_kag_btk_index);
#pragma pop

/* 80C31160-80C31164 000014 0004+00 1/4 0/0 0/0 .rodata          @3867 */
SECTION_RODATA static f32 const lit_3867 = 1.0f;
COMPILER_STRIP_GATE(0x80C31160, &lit_3867);

/* 80C31260-80C31260 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C31260 = "I_Kag";
#pragma pop

/* 80C2E4D8-80C2E714 0001B8 023C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C2E714-80C2E75C 0003F4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80C2E75C-80C2E77C 00043C 0020+00 1/0 0/0 0/0 .text            daObjKAG_Create__FP10fopAc_ac_c */
static void daObjKAG_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C2E77C-80C2E7A0 00045C 0024+00 1/0 0/0 0/0 .text            daObjKAG_Delete__FP10daObjKAG_c */
static void daObjKAG_Delete(daObjKAG_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C31164-80C3116C 000018 0004+04 1/9 0/0 0/0 .rodata          @3945 */
SECTION_RODATA static u8 const lit_3945[4 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C31164, &lit_3945);

/* 80C3116C-80C31174 000020 0008+00 0/3 0/0 0/0 .rodata          @3946 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3946[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C3116C, &lit_3946);
#pragma pop

/* 80C31174-80C3117C 000028 0008+00 0/3 0/0 0/0 .rodata          @3947 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3947[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C31174, &lit_3947);
#pragma pop

/* 80C3117C-80C31184 000030 0008+00 0/3 0/0 0/0 .rodata          @3948 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3948[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C3117C, &lit_3948);
#pragma pop

/* 80C2E7A0-80C2E9F8 000480 0258+00 1/1 0/0 0/0 .text
 * Kag_Bgcheck__10daObjKAG_cFP4cXyzP5csXyzP4cXyz                */
void daObjKAG_c::Kag_Bgcheck(cXyz* param_0, csXyz* param_1, cXyz* param_2) {
    // NONMATCHING
}

/* 80C2E9F8-80C2EA40 0006D8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C31184-80C31188 000038 0004+00 0/5 0/0 0/0 .rodata          @4290 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4290 = 5.0f;
COMPILER_STRIP_GATE(0x80C31184, &lit_4290);
#pragma pop

/* 80C31188-80C3118C 00003C 0004+00 0/2 0/0 0/0 .rodata          @4291 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4291 = 0.5f;
COMPILER_STRIP_GATE(0x80C31188, &lit_4291);
#pragma pop

/* 80C3118C-80C31190 000040 0004+00 0/5 0/0 0/0 .rodata          @4292 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4292 = -1.0f;
COMPILER_STRIP_GATE(0x80C3118C, &lit_4292);
#pragma pop

/* 80C31190-80C31194 000044 0004+00 0/1 0/0 0/0 .rodata          @4293 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4293 = 18.0f;
COMPILER_STRIP_GATE(0x80C31190, &lit_4293);
#pragma pop

/* 80C31194-80C31198 000048 0004+00 0/3 0/0 0/0 .rodata          @4294 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4294 = 30.0f;
COMPILER_STRIP_GATE(0x80C31194, &lit_4294);
#pragma pop

/* 80C31198-80C3119C 00004C 0004+00 0/1 0/0 0/0 .rodata          @4295 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4295 = 32768.0f;
COMPILER_STRIP_GATE(0x80C31198, &lit_4295);
#pragma pop

/* 80C3119C-80C311A0 000050 0004+00 0/1 0/0 0/0 .rodata          @4296 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4296 = 512.0f;
COMPILER_STRIP_GATE(0x80C3119C, &lit_4296);
#pragma pop

/* 80C311A0-80C311A4 000054 0004+00 0/1 0/0 0/0 .rodata          @4297 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4297 = 12288.0f;
COMPILER_STRIP_GATE(0x80C311A0, &lit_4297);
#pragma pop

/* 80C311A4-80C311A8 000058 0004+00 0/1 0/0 0/0 .rodata          @4298 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4298 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C311A4, &lit_4298);
#pragma pop

/* 80C311A8-80C311AC 00005C 0004+00 0/1 0/0 0/0 .rodata          @4299 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4299 = 10.0f;
COMPILER_STRIP_GATE(0x80C311A8, &lit_4299);
#pragma pop

/* 80C311AC-80C311B0 000060 0004+00 0/1 0/0 0/0 .rodata          @4300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4300 = 6.0f;
COMPILER_STRIP_GATE(0x80C311AC, &lit_4300);
#pragma pop

/* 80C311B0-80C311B4 000064 0004+00 0/1 0/0 0/0 .rodata          @4301 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4301 = 2.0f;
COMPILER_STRIP_GATE(0x80C311B0, &lit_4301);
#pragma pop

/* 80C311B4-80C311B8 000068 0004+00 0/1 0/0 0/0 .rodata          @4302 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4302 = 1800.0f;
COMPILER_STRIP_GATE(0x80C311B4, &lit_4302);
#pragma pop

/* 80C311B8-80C311BC 00006C 0004+00 0/1 0/0 0/0 .rodata          @4303 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4303 = 8192.0f;
COMPILER_STRIP_GATE(0x80C311B8, &lit_4303);
#pragma pop

/* 80C311BC-80C311C0 000070 0004+00 0/1 0/0 0/0 .rodata          @4304 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4304 = 200.0f;
COMPILER_STRIP_GATE(0x80C311BC, &lit_4304);
#pragma pop

/* 80C311C0-80C311C4 000074 0004+00 0/1 0/0 0/0 .rodata          @4305 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4305 = 4.0f;
COMPILER_STRIP_GATE(0x80C311C0, &lit_4305);
#pragma pop

/* 80C311C4-80C311C8 000078 0004+00 0/1 0/0 0/0 .rodata          @4306 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4306 = 800.0f;
COMPILER_STRIP_GATE(0x80C311C4, &lit_4306);
#pragma pop

/* 80C311C8-80C311CC 00007C 0004+00 0/1 0/0 0/0 .rodata          @4307 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4307 = 1200.0f;
COMPILER_STRIP_GATE(0x80C311C8, &lit_4307);
#pragma pop

/* 80C311CC-80C311D0 000080 0004+00 0/1 0/0 0/0 .rodata          @4308 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4308 = 300.0f;
COMPILER_STRIP_GATE(0x80C311CC, &lit_4308);
#pragma pop

/* 80C311D0-80C311D4 000084 0004+00 0/1 0/0 0/0 .rodata          @4309 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4309 = 4096.0f;
COMPILER_STRIP_GATE(0x80C311D0, &lit_4309);
#pragma pop

/* 80C311D4-80C311D8 000088 0004+00 0/1 0/0 0/0 .rodata          @4310 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4310 = 80.0f;
COMPILER_STRIP_GATE(0x80C311D4, &lit_4310);
#pragma pop

/* 80C311D8-80C311DC 00008C 0004+00 0/1 0/0 0/0 .rodata          @4311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4311 = -4096.0f;
COMPILER_STRIP_GATE(0x80C311D8, &lit_4311);
#pragma pop

/* 80C311DC-80C311E0 000090 0004+00 0/1 0/0 0/0 .rodata          @4312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4312 = 256.0f;
COMPILER_STRIP_GATE(0x80C311DC, &lit_4312);
#pragma pop

/* 80C311E0-80C311E4 000094 0004+00 0/1 0/0 0/0 .rodata          @4313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4313 = 400.0f;
COMPILER_STRIP_GATE(0x80C311E0, &lit_4313);
#pragma pop

/* 80C311E4-80C311E8 000098 0004+00 0/2 0/0 0/0 .rodata          @4314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4314 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C311E4, &lit_4314);
#pragma pop

/* 80C311E8-80C311EC 00009C 0004+00 0/1 0/0 0/0 .rodata          @4315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4315 = 8.0f;
COMPILER_STRIP_GATE(0x80C311E8, &lit_4315);
#pragma pop

/* 80C311EC-80C311F4 0000A0 0004+04 0/1 0/0 0/0 .rodata          @4316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4316[1 + 1 /* padding */] = {
    1.0f / 5.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C311EC, &lit_4316);
#pragma pop

/* 80C311F4-80C311FC 0000A8 0008+00 0/1 0/0 0/0 .rodata          @4323 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4323[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C311F4, &lit_4323);
#pragma pop

/* 80C2EA40-80C2F764 000720 0D24+00 6/0 0/0 0/0 .text            fly__10daObjKAG_cFv */
void daObjKAG_c::fly() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C311FC-80C31200 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4353 = 220.0f;
COMPILER_STRIP_GATE(0x80C311FC, &lit_4353);
#pragma pop

/* 80C31200-80C31204 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4354 = 3.0f;
COMPILER_STRIP_GATE(0x80C31200, &lit_4354);
#pragma pop

/* 80C2F764-80C2F8C4 001444 0160+00 2/0 0/0 0/0 .text            wait__10daObjKAG_cFv */
void daObjKAG_c::wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C31204-80C31208 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4459 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4459 = -20.0f;
COMPILER_STRIP_GATE(0x80C31204, &lit_4459);
#pragma pop

/* 80C31208-80C3120C 0000BC 0004+00 1/3 0/0 0/0 .rodata          @4460 */
SECTION_RODATA static f32 const lit_4460 = 20.0f;
COMPILER_STRIP_GATE(0x80C31208, &lit_4460);

/* 80C2F8C4-80C2FD94 0015A4 04D0+00 1/0 0/0 0/0 .text            walk__10daObjKAG_cFv */
void daObjKAG_c::walk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C31260-80C31260 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C31266 = "R_SP160";
#pragma pop

/* 80C2FD94-80C2FF10 001A74 017C+00 1/0 0/0 0/0 .text            bin_wait__10daObjKAG_cFv */
void daObjKAG_c::bin_wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3120C-80C31210 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4522 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4522 = -2.0f;
COMPILER_STRIP_GATE(0x80C3120C, &lit_4522);
#pragma pop

/* 80C31210-80C31214 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4523 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4523 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C31210, &lit_4523);
#pragma pop

/* 80C31214-80C31218 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4524 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4524 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C31214, &lit_4524);
#pragma pop

/* 80C31218-80C3121C 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4525 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4525 = 62.0f;
COMPILER_STRIP_GATE(0x80C31218, &lit_4525);
#pragma pop

/* 80C3121C-80C31224 0000D0 0004+04 0/1 0/0 0/0 .rodata          @4526 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4526[1 + 1 /* padding */] = {
    1.0f / 20.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C3121C, &lit_4526);
#pragma pop

/* 80C31224-80C3122C 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4527 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4527[8] = {
    0x3F, 0xB9, 0x99, 0x99, 0x99, 0x99, 0x99, 0x9A,
};
COMPILER_STRIP_GATE(0x80C31224, &lit_4527);
#pragma pop

/* 80C2FF10-80C30070 001BF0 0160+00 1/0 0/0 0/0 .text            bin_action__10daObjKAG_cFv */
void daObjKAG_c::bin_action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3122C-80C31230 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4588 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4588 = -10.0f;
COMPILER_STRIP_GATE(0x80C3122C, &lit_4588);
#pragma pop

/* 80C30070-80C30274 001D50 0204+00 1/0 0/0 0/0 .text            hook__10daObjKAG_cFv */
void daObjKAG_c::hook() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C31230-80C31234 0000E4 0004+00 1/1 0/0 0/0 .rodata          @4634 */
SECTION_RODATA static f32 const lit_4634 = 100.0f;
COMPILER_STRIP_GATE(0x80C31230, &lit_4634);

/* 80C30274-80C303C4 001F54 0150+00 1/0 0/0 0/0 .text            boomerang__10daObjKAG_cFv */
void daObjKAG_c::boomerang() {
    // NONMATCHING
}

/* 80C303C4-80C30424 0020A4 0060+00 1/1 0/0 0/0 .text            action__10daObjKAG_cFv */
void daObjKAG_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C31234-80C31238 0000E8 0002+02 0/1 0/0 0/0 .rodata          l_kag_itemno */
#pragma push
#pragma force_active on
SECTION_RODATA static u16 const l_kag_itemno[1 + 1 /* padding */] = {
    0xD6D7,
    /* padding */
    0x0000,
};
COMPILER_STRIP_GATE(0x80C31234, &l_kag_itemno);
#pragma pop

/* 80C31238-80C3123C 0000EC 0004+00 1/1 0/0 0/0 .rodata          @4654 */
SECTION_RODATA static f32 const lit_4654 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80C31238, &lit_4654);

/* 80C30424-80C30498 002104 0074+00 1/1 0/0 0/0 .text            checkGroundPos__10daObjKAG_cFv */
void daObjKAG_c::checkGroundPos() {
    // NONMATCHING
}

/* 80C30498-80C3054C 002178 00B4+00 1/1 0/0 0/0 .text            hit_check__10daObjKAG_cFv */
void daObjKAG_c::hit_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3123C-80C31244 0000F0 0004+04 1/1 0/0 0/0 .rodata          @4714 */
SECTION_RODATA static f32 const lit_4714[1 + 1 /* padding */] = {
    10000.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C3123C, &lit_4714);

/* 80C31244-80C3124C 0000F8 0008+00 1/1 0/0 0/0 .rodata          @4716 */
SECTION_RODATA static u8 const lit_4716[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C31244, &lit_4716);

/* 80C3054C-80C306EC 00222C 01A0+00 1/1 0/0 0/0 .text            execute__10daObjKAG_cFv */
void daObjKAG_c::execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C31430-80C31434 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80C31430[4];

/* 80C306EC-80C30754 0023CC 0068+00 1/1 0/0 0/0 .text            _delete__10daObjKAG_cFv */
void daObjKAG_c::_delete() {
    // NONMATCHING
}

/* 80C30754-80C307D4 002434 0080+00 1/1 0/0 0/0 .text            setBaseMtx__10daObjKAG_cFv */
void daObjKAG_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3124C-80C31250 000100 0004+00 0/2 0/0 0/0 .rodata          @4785 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4785 = 50.0f;
COMPILER_STRIP_GATE(0x80C3124C, &lit_4785);
#pragma pop

/* 80C31250-80C31254 000104 0004+00 0/1 0/0 0/0 .rodata          @4786 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4786 = 15.0f;
COMPILER_STRIP_GATE(0x80C31250, &lit_4786);
#pragma pop

/* 80C31254-80C31258 000108 0004+00 0/1 0/0 0/0 .rodata          @4787 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4787 = -3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C31254, &lit_4787);
#pragma pop

/* 80C307D4-80C308D0 0024B4 00FC+00 1/0 0/0 0/0 .text            daObjKAG_Draw__FP10daObjKAG_c */
static void daObjKAG_Draw(daObjKAG_c* param_0) {
    // NONMATCHING
}

/* 80C308D0-80C308F0 0025B0 0020+00 2/1 0/0 0/0 .text            daObjKAG_Execute__FP10daObjKAG_c */
static void daObjKAG_Execute(daObjKAG_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C31258-80C3125C 00010C 0004+00 0/1 0/0 0/0 .rodata          l_musiya_num */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const l_musiya_num = 0x01A701A8;
COMPILER_STRIP_GATE(0x80C31258, &l_musiya_num);
#pragma pop

/* 80C3125C-80C31260 000110 0004+00 0/1 0/0 0/0 .rodata          @4994 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4994 = -50.0f;
COMPILER_STRIP_GATE(0x80C3125C, &lit_4994);
#pragma pop

/* 80C31434-80C31440 00000C 000C+00 1/1 0/0 0/0 .bss             @3769 */
static u8 lit_3769[12];

/* 80C31440-80C31450 000018 0010+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80C308F0-80C30D60 0025D0 0470+00 1/1 0/0 0/0 .text            create__10daObjKAG_cFv */
void daObjKAG_c::create() {
    // NONMATCHING
}

/* 80C30D60-80C30DA8 002A40 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C30DA8-80C30DF0 002A88 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C30DF0-80C30E4C 002AD0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C30E4C-80C30E54 002B2C 0008+00 1/0 0/0 0/0 .text            daObjKAG_IsDelete__FP10daObjKAG_c
 */
static bool daObjKAG_IsDelete(daObjKAG_c* param_0) {
    return true;
}

/* 80C30E54-80C31060 002B34 020C+00 7/7 0/0 0/0 .text            kag_setParticle__10daObjKAG_cFv */
void daObjKAG_c::kag_setParticle() {
    // NONMATCHING
}

/* 80C31060-80C310A8 002D40 0048+00 2/1 0/0 0/0 .text            __dt__14daObj_KagHIO_cFv */
daObj_KagHIO_c::~daObj_KagHIO_c() {
    // NONMATCHING
}

/* 80C310A8-80C310E4 002D88 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_kag_cpp */
void __sinit_d_a_obj_kag_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C310A8, __sinit_d_a_obj_kag_cpp);
#pragma pop

/* 80C310E4-80C310F0 002DC4 000C+00 2/0 0/0 0/0 .text            Insect_Release__9dInsect_cFv */
// void dInsect_c::Insect_Release() {
extern "C" void Insect_Release__9dInsect_cFv() {
    // NONMATCHING
}

/* 80C310F0-80C31138 002DD0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C31260-80C31260 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

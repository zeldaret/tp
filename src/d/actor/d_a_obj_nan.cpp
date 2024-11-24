/**
 * @file d_a_obj_nan.cpp
 * 
*/

#include "d/actor/d_a_obj_nan.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__14daObj_NanHIO_cFv();
extern "C" void setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daObjNAN_Create__FP10fopAc_ac_c();
extern "C" static void daObjNAN_Delete__FP10daObjNAN_c();
extern "C" void nan_posMove__10daObjNAN_cFv();
extern "C" void turn__10daObjNAN_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void nan_WalkAnm__10daObjNAN_cFv();
extern "C" void wait__10daObjNAN_cFv();
extern "C" void walk__10daObjNAN_cFv();
extern "C" void bin_wait__10daObjNAN_cFv();
extern "C" void bin_action__10daObjNAN_cFv();
extern "C" void nan_setParticle__10daObjNAN_cFv();
extern "C" void hook__10daObjNAN_cFv();
extern "C" void boomerang__10daObjNAN_cFv();
extern "C" void drop__10daObjNAN_cFv();
extern "C" void hit_check__10daObjNAN_cFv();
extern "C" void action__10daObjNAN_cFv();
extern "C" void execute__10daObjNAN_cFv();
extern "C" void _delete__10daObjNAN_cFv();
extern "C" void setBaseMtx__10daObjNAN_cFv();
extern "C" static void daObjNAN_Draw__FP10daObjNAN_c();
extern "C" static void daObjNAN_Execute__FP10daObjNAN_c();
extern "C" void create__10daObjNAN_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static bool daObjNAN_IsDelete__FP10daObjNAN_c();
extern "C" void __dt__14daObj_NanHIO_cFv();
extern "C" void __sinit_d_a_obj_nan_cpp();
extern "C" void Insect_Release__9dInsect_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" extern char const* const d_a_obj_nan__stringBase0;

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
extern "C" void __dt__11dBgS_GndChkFv();
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
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __ptmf_test();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80CA31BC-80CA31C0 000000 0004+00 12/12 0/0 0/0 .rodata          @3774 */
SECTION_RODATA static f32 const lit_3774 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CA31BC, &lit_3774);

/* 80CA32B0-80CA32BC 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CA32BC-80CA32D0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80CA32D0-80CA3310 000020 0040+00 0/1 0/0 0/0 .data cc_sph_src__25@unnamed@d_a_obj_nan_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80CA32D0[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x01, 0x40, 0x40, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
};
#pragma pop

/* 80CA3310-80CA331C -00001 000C+00 1/1 0/0 0/0 .data            @3924 */
SECTION_DATA static void* lit_3924[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__10daObjNAN_cFv,
};

/* 80CA331C-80CA3328 -00001 000C+00 1/1 0/0 0/0 .data            @4034 */
SECTION_DATA static void* lit_4034[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__10daObjNAN_cFv,
};

/* 80CA3328-80CA3334 -00001 000C+00 0/1 0/0 0/0 .data            @4126 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4126[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn__10daObjNAN_cFv,
};
#pragma pop

/* 80CA3334-80CA3340 -00001 000C+00 0/1 0/0 0/0 .data            @4129 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4129[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn__10daObjNAN_cFv,
};
#pragma pop

/* 80CA3340-80CA334C -00001 000C+00 0/1 0/0 0/0 .data            @4133 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4133[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn__10daObjNAN_cFv,
};
#pragma pop

/* 80CA334C-80CA3358 -00001 000C+00 0/1 0/0 0/0 .data            @4138 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4138[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)turn__10daObjNAN_cFv,
};
#pragma pop

/* 80CA3358-80CA3364 -00001 000C+00 1/1 0/0 0/0 .data            @4318 */
SECTION_DATA static void* lit_4318[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)drop__10daObjNAN_cFv,
};

/* 80CA3364-80CA3370 -00001 000C+00 1/1 0/0 0/0 .data            @4321 */
SECTION_DATA static void* lit_4321[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)bin_action__10daObjNAN_cFv,
};

/* 80CA3370-80CA337C -00001 000C+00 1/1 0/0 0/0 .data            @4444 */
SECTION_DATA static void* lit_4444[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)drop__10daObjNAN_cFv,
};

/* 80CA337C-80CA3388 -00001 000C+00 1/1 0/0 0/0 .data            @4509 */
SECTION_DATA static void* lit_4509[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__10daObjNAN_cFv,
};

/* 80CA3388-80CA3394 -00001 000C+00 1/1 0/0 0/0 .data            @4512 */
SECTION_DATA static void* lit_4512[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)drop__10daObjNAN_cFv,
};

/* 80CA3394-80CA33A0 -00001 000C+00 1/1 0/0 0/0 .data            @4614 */
SECTION_DATA static void* lit_4614[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__10daObjNAN_cFv,
};

/* 80CA33A0-80CA33AC -00001 000C+00 1/1 0/0 0/0 .data            @4680 */
SECTION_DATA static void* lit_4680[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)hook__10daObjNAN_cFv,
};

/* 80CA33AC-80CA33B8 -00001 000C+00 1/1 0/0 0/0 .data            @4683 */
SECTION_DATA static void* lit_4683[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)boomerang__10daObjNAN_cFv,
};

/* 80CA33B8-80CA33C4 -00001 000C+00 0/1 0/0 0/0 .data            @4938 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4938[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)bin_wait__10daObjNAN_cFv,
};
#pragma pop

/* 80CA33C4-80CA33D0 -00001 000C+00 0/1 0/0 0/0 .data            @4941 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4941[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__10daObjNAN_cFv,
};
#pragma pop

/* 80CA33D0-80CA33F0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjNAN_Method */
static actor_method_class l_daObjNAN_Method = {
    (process_method_func)daObjNAN_Create__FP10fopAc_ac_c,
    (process_method_func)daObjNAN_Delete__FP10daObjNAN_c,
    (process_method_func)daObjNAN_Execute__FP10daObjNAN_c,
    (process_method_func)daObjNAN_IsDelete__FP10daObjNAN_c,
    (process_method_func)daObjNAN_Draw__FP10daObjNAN_c,
};

/* 80CA33F0-80CA3420 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Nan */
extern actor_process_profile_definition g_profile_Obj_Nan = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Nan,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjNAN_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  480,                    // mPriority
  &l_daObjNAN_Method,     // sub_method
  0x000C0120,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CA3420-80CA342C 000170 000C+00 0/0 0/0 0/0 .data            __vt__9dInsect_c */
SECTION_DATA extern void* __vt__9dInsect_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)Insect_Release__9dInsect_cFv,
};

/* 80CA342C-80CA3438 00017C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80CA3438-80CA3444 000188 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80CA3444-80CA3450 000194 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80CA3450-80CA345C 0001A0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CA345C-80CA3468 0001AC 000C+00 1/1 0/0 0/0 .data            __vt__10daObjNAN_c */
SECTION_DATA extern void* __vt__10daObjNAN_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)Insect_Release__9dInsect_cFv,
};

/* 80CA3468-80CA3474 0001B8 000C+00 7/7 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80CA3474-80CA3480 0001C4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80CA3480-80CA348C 0001D0 000C+00 2/2 0/0 0/0 .data            __vt__14daObj_NanHIO_c */
SECTION_DATA extern void* __vt__14daObj_NanHIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daObj_NanHIO_cFv,
};

/* 80CA05AC-80CA05D4 0000EC 0028+00 1/1 0/0 0/0 .text            __ct__14daObj_NanHIO_cFv */
daObj_NanHIO_c::daObj_NanHIO_c() {
    // NONMATCHING
}

/* 80CA05D4-80CA0678 000114 00A4+00 9/9 0/0 0/0 .text
 * setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v                */
void daObjNAN_c::setAction(void (daObjNAN_c::*param_0)()) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA31C0-80CA31C8 000004 0008+00 0/1 0/0 0/0 .rodata          l_nan_brk_index */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_nan_brk_index[8] = {
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0C,
};
COMPILER_STRIP_GATE(0x80CA31C0, &l_nan_brk_index);
#pragma pop

/* 80CA31C8-80CA31D0 00000C 0008+00 0/1 0/0 0/0 .rodata          l_nan_btk_index */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_nan_btk_index[8] = {
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x10,
};
COMPILER_STRIP_GATE(0x80CA31C8, &l_nan_btk_index);
#pragma pop

/* 80CA31D0-80CA31D4 000014 0004+00 1/3 0/0 0/0 .rodata          @3868 */
SECTION_RODATA static f32 const lit_3868 = 1.0f;
COMPILER_STRIP_GATE(0x80CA31D0, &lit_3868);

/* 80CA31D4-80CA31D8 000018 0004+00 0/1 0/0 0/0 .rodata          @3869 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3869 = 5.0f;
COMPILER_STRIP_GATE(0x80CA31D4, &lit_3869);
#pragma pop

/* 80CA31D8-80CA31DC 00001C 0004+00 2/12 0/0 0/0 .rodata          @3870 */
SECTION_RODATA static u8 const lit_3870[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CA31D8, &lit_3870);

/* 80CA31DC-80CA31E0 000020 0004+00 0/1 0/0 0/0 .rodata          @3871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3871 = -1.0f;
COMPILER_STRIP_GATE(0x80CA31DC, &lit_3871);
#pragma pop

/* 80CA32A0-80CA32A0 0000E4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CA32A0 = "I_Nan";
#pragma pop

/* 80CA0678-80CA08EC 0001B8 0274+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CA08EC-80CA0934 00042C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80CA0934-80CA0954 000474 0020+00 1/0 0/0 0/0 .text            daObjNAN_Create__FP10fopAc_ac_c */
static void daObjNAN_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CA0954-80CA0978 000494 0024+00 1/0 0/0 0/0 .text            daObjNAN_Delete__FP10daObjNAN_c */
static void daObjNAN_Delete(daObjNAN_c* param_0) {
    // NONMATCHING
}

/* 80CA0978-80CA0A2C 0004B8 00B4+00 1/1 0/0 0/0 .text            nan_posMove__10daObjNAN_cFv */
void daObjNAN_c::nan_posMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA31E0-80CA31E4 000024 0004+00 1/6 0/0 0/0 .rodata          @3985 */
SECTION_RODATA static f32 const lit_3985 = 20.0f;
COMPILER_STRIP_GATE(0x80CA31E0, &lit_3985);

/* 80CA31E4-80CA31EC 000028 0004+04 0/2 0/0 0/0 .rodata          @3986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3986[1 + 1 /* padding */] = {
    -20.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80CA31E4, &lit_3986);
#pragma pop

/* 80CA31EC-80CA31F4 000030 0008+00 0/5 0/0 0/0 .rodata          @3987 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3987[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA31EC, &lit_3987);
#pragma pop

/* 80CA31F4-80CA31FC 000038 0008+00 0/5 0/0 0/0 .rodata          @3988 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3988[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA31F4, &lit_3988);
#pragma pop

/* 80CA31FC-80CA3204 000040 0008+00 0/5 0/0 0/0 .rodata          @3989 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3989[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA31FC, &lit_3989);
#pragma pop

/* 80CA0A2C-80CA0D54 00056C 0328+00 4/0 0/0 0/0 .text            turn__10daObjNAN_cFv */
void daObjNAN_c::turn() {
    // NONMATCHING
}

/* 80CA0D54-80CA0D9C 000894 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA3204-80CA3208 000048 0004+00 0/1 0/0 0/0 .rodata          @4018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4018 = 39.0f;
COMPILER_STRIP_GATE(0x80CA3204, &lit_4018);
#pragma pop

/* 80CA3208-80CA320C 00004C 0004+00 0/1 0/0 0/0 .rodata          @4019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4019 = 79.0f;
COMPILER_STRIP_GATE(0x80CA3208, &lit_4019);
#pragma pop

/* 80CA320C-80CA3210 000050 0004+00 0/2 0/0 0/0 .rodata          @4020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4020 = 18.0f;
COMPILER_STRIP_GATE(0x80CA320C, &lit_4020);
#pragma pop

/* 80CA3210-80CA3214 000054 0004+00 0/2 0/0 0/0 .rodata          @4021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4021 = 30.0f;
COMPILER_STRIP_GATE(0x80CA3210, &lit_4021);
#pragma pop

/* 80CA0D9C-80CA0E7C 0008DC 00E0+00 2/2 0/0 0/0 .text            nan_WalkAnm__10daObjNAN_cFv */
void daObjNAN_c::nan_WalkAnm() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA3214-80CA3218 000058 0004+00 0/1 0/0 0/0 .rodata          @4100 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4100 = -1000.0f;
COMPILER_STRIP_GATE(0x80CA3214, &lit_4100);
#pragma pop

/* 80CA0E7C-80CA1184 0009BC 0308+00 1/0 0/0 0/0 .text            wait__10daObjNAN_cFv */
void daObjNAN_c::wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA3218-80CA321C 00005C 0004+00 0/1 0/0 0/0 .rodata          @4292 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4292 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CA3218, &lit_4292);
#pragma pop

/* 80CA321C-80CA3220 000060 0004+00 0/1 0/0 0/0 .rodata          @4293 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4293 = 60.0f;
COMPILER_STRIP_GATE(0x80CA321C, &lit_4293);
#pragma pop

/* 80CA3220-80CA3224 000064 0004+00 0/1 0/0 0/0 .rodata          @4294 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4294 = 40.0f;
COMPILER_STRIP_GATE(0x80CA3220, &lit_4294);
#pragma pop

/* 80CA3224-80CA3228 000068 0004+00 0/1 0/0 0/0 .rodata          @4295 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4295 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x80CA3224, &lit_4295);
#pragma pop

/* 80CA3228-80CA322C 00006C 0004+00 0/1 0/0 0/0 .rodata          @4296 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4296 = 12.0f;
COMPILER_STRIP_GATE(0x80CA3228, &lit_4296);
#pragma pop

/* 80CA322C-80CA3230 000070 0004+00 0/1 0/0 0/0 .rodata          @4297 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4297 = 6144.0f;
COMPILER_STRIP_GATE(0x80CA322C, &lit_4297);
#pragma pop

/* 80CA3230-80CA3234 000074 0004+00 0/2 0/0 0/0 .rodata          @4298 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4298 = 32768.0f;
COMPILER_STRIP_GATE(0x80CA3230, &lit_4298);
#pragma pop

/* 80CA3234-80CA3238 000078 0004+00 0/2 0/0 0/0 .rodata          @4299 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4299 = 200.0f;
COMPILER_STRIP_GATE(0x80CA3234, &lit_4299);
#pragma pop

/* 80CA3238-80CA323C 00007C 0004+00 0/1 0/0 0/0 .rodata          @4300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4300 = 1050.0f;
COMPILER_STRIP_GATE(0x80CA3238, &lit_4300);
#pragma pop

/* 80CA323C-80CA3244 000080 0008+00 0/1 0/0 0/0 .rodata          @4302 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4302[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA323C, &lit_4302);
#pragma pop

/* 80CA1184-80CA1904 000CC4 0780+00 4/0 0/0 0/0 .text            walk__10daObjNAN_cFv */
void daObjNAN_c::walk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA32A0-80CA32A0 0000E4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CA32A6 = "R_SP160";
#pragma pop

/* 80CA1904-80CA1A20 001444 011C+00 1/0 0/0 0/0 .text            bin_wait__10daObjNAN_cFv */
void daObjNAN_c::bin_wait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA3244-80CA3248 000088 0004+00 0/1 0/0 0/0 .rodata          @4362 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4362 = -2.0f;
COMPILER_STRIP_GATE(0x80CA3244, &lit_4362);
#pragma pop

/* 80CA3248-80CA324C 00008C 0004+00 0/1 0/0 0/0 .rodata          @4363 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4363 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CA3248, &lit_4363);
#pragma pop

/* 80CA324C-80CA3250 000090 0004+00 0/1 0/0 0/0 .rodata          @4364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4364 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CA324C, &lit_4364);
#pragma pop

/* 80CA3250-80CA3254 000094 0004+00 0/1 0/0 0/0 .rodata          @4365 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4365 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CA3250, &lit_4365);
#pragma pop

/* 80CA3254-80CA3258 000098 0004+00 0/1 0/0 0/0 .rodata          @4366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4366 = 62.0f;
COMPILER_STRIP_GATE(0x80CA3254, &lit_4366);
#pragma pop

/* 80CA3258-80CA325C 00009C 0004+00 0/1 0/0 0/0 .rodata          @4367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4367 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CA3258, &lit_4367);
#pragma pop

/* 80CA325C-80CA3264 0000A0 0008+00 0/1 0/0 0/0 .rodata          @4368 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4368[8] = {
    0x3F, 0xB9, 0x99, 0x99, 0x99, 0x99, 0x99, 0x9A,
};
COMPILER_STRIP_GATE(0x80CA325C, &lit_4368);
#pragma pop

/* 80CA1A20-80CA1B50 001560 0130+00 1/0 0/0 0/0 .text            bin_action__10daObjNAN_cFv */
void daObjNAN_c::bin_action() {
    // NONMATCHING
}

/* 80CA1B50-80CA1D5C 001690 020C+00 6/6 0/0 0/0 .text            nan_setParticle__10daObjNAN_cFv */
void daObjNAN_c::nan_setParticle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA3264-80CA3268 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4491 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4491 = -5.0f;
COMPILER_STRIP_GATE(0x80CA3264, &lit_4491);
#pragma pop

/* 80CA1D5C-80CA1F60 00189C 0204+00 1/0 0/0 0/0 .text            hook__10daObjNAN_cFv */
void daObjNAN_c::hook() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA3268-80CA326C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4601 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4601 = 100.0f;
COMPILER_STRIP_GATE(0x80CA3268, &lit_4601);
#pragma pop

/* 80CA1F60-80CA2368 001AA0 0408+00 1/0 0/0 0/0 .text            boomerang__10daObjNAN_cFv */
void daObjNAN_c::boomerang() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA326C-80CA3270 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4672 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4672 = -30.0f;
COMPILER_STRIP_GATE(0x80CA326C, &lit_4672);
#pragma pop

/* 80CA2368-80CA2658 001EA8 02F0+00 3/0 0/0 0/0 .text            drop__10daObjNAN_cFv */
void daObjNAN_c::drop() {
    // NONMATCHING
}

/* 80CA2658-80CA270C 002198 00B4+00 1/1 0/0 0/0 .text            hit_check__10daObjNAN_cFv */
void daObjNAN_c::hit_check() {
    // NONMATCHING
}

/* 80CA270C-80CA276C 00224C 0060+00 1/1 0/0 0/0 .text            action__10daObjNAN_cFv */
void daObjNAN_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA3270-80CA3274 0000B4 0002+02 0/1 0/0 0/0 .rodata          l_nan_itemno */
#pragma push
#pragma force_active on
SECTION_RODATA static u16 const l_nan_itemno[1 + 1 /* padding */] = {
    0xC8C9,
    /* padding */
    0x0000,
};
COMPILER_STRIP_GATE(0x80CA3270, &l_nan_itemno);
#pragma pop

/* 80CA3274-80CA327C 0000B8 0004+04 1/1 0/0 0/0 .rodata          @4742 */
SECTION_RODATA static f32 const lit_4742[1 + 1 /* padding */] = {
    10000.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80CA3274, &lit_4742);

/* 80CA327C-80CA3284 0000C0 0008+00 1/1 0/0 0/0 .rodata          @4744 */
SECTION_RODATA static u8 const lit_4744[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA327C, &lit_4744);

/* 80CA276C-80CA2904 0022AC 0198+00 1/1 0/0 0/0 .text            execute__10daObjNAN_cFv */
void daObjNAN_c::execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA3498-80CA349C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80CA3498[4];

/* 80CA2904-80CA296C 002444 0068+00 1/1 0/0 0/0 .text            _delete__10daObjNAN_cFv */
void daObjNAN_c::_delete() {
    // NONMATCHING
}

/* 80CA296C-80CA29EC 0024AC 0080+00 1/1 0/0 0/0 .text            setBaseMtx__10daObjNAN_cFv */
void daObjNAN_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA3284-80CA3288 0000C8 0004+00 0/2 0/0 0/0 .rodata          @4823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4823 = 50.0f;
COMPILER_STRIP_GATE(0x80CA3284, &lit_4823);
#pragma pop

/* 80CA3288-80CA328C 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4824 = 1000000000.0f;
COMPILER_STRIP_GATE(0x80CA3288, &lit_4824);
#pragma pop

/* 80CA328C-80CA3290 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4825 = 15.0f;
COMPILER_STRIP_GATE(0x80CA328C, &lit_4825);
#pragma pop

/* 80CA3290-80CA3294 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4826 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4826 = -3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CA3290, &lit_4826);
#pragma pop

/* 80CA29EC-80CA2B48 00252C 015C+00 1/0 0/0 0/0 .text            daObjNAN_Draw__FP10daObjNAN_c */
static void daObjNAN_Draw(daObjNAN_c* param_0) {
    // NONMATCHING
}

/* 80CA2B48-80CA2B68 002688 0020+00 2/1 0/0 0/0 .text            daObjNAN_Execute__FP10daObjNAN_c */
static void daObjNAN_Execute(daObjNAN_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CA3294-80CA3298 0000D8 0004+00 0/1 0/0 0/0 .rodata          l_musiya_num */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const l_musiya_num = 0x0199019A;
COMPILER_STRIP_GATE(0x80CA3294, &l_musiya_num);
#pragma pop

/* 80CA3298-80CA329C 0000DC 0004+00 0/1 0/0 0/0 .rodata          l_heapsize */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const l_heapsize = 0x0EE00EC0;
COMPILER_STRIP_GATE(0x80CA3298, &l_heapsize);
#pragma pop

/* 80CA329C-80CA32A0 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5034 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5034 = -50.0f;
COMPILER_STRIP_GATE(0x80CA329C, &lit_5034);
#pragma pop

/* 80CA349C-80CA34A8 00000C 000C+00 1/1 0/0 0/0 .bss             @3769 */
static u8 lit_3769[12];

/* 80CA34A8-80CA34B8 000018 0010+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80CA2B68-80CA2FDC 0026A8 0474+00 1/1 0/0 0/0 .text            create__10daObjNAN_cFv */
void daObjNAN_c::create() {
    // NONMATCHING
}

/* 80CA2FDC-80CA3024 002B1C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80CA3024-80CA306C 002B64 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80CA306C-80CA30C8 002BAC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CA30C8-80CA30D0 002C08 0008+00 1/0 0/0 0/0 .text            daObjNAN_IsDelete__FP10daObjNAN_c
 */
static bool daObjNAN_IsDelete(daObjNAN_c* param_0) {
    return true;
}

/* 80CA30D0-80CA3118 002C10 0048+00 2/1 0/0 0/0 .text            __dt__14daObj_NanHIO_cFv */
daObj_NanHIO_c::~daObj_NanHIO_c() {
    // NONMATCHING
}

/* 80CA3118-80CA3154 002C58 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_nan_cpp */
void __sinit_d_a_obj_nan_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CA3118, __sinit_d_a_obj_nan_cpp);
#pragma pop

/* 80CA3154-80CA3160 002C94 000C+00 2/0 0/0 0/0 .text            Insect_Release__9dInsect_cFv */
// void dInsect_c::Insect_Release() {
extern "C" void Insect_Release__9dInsect_cFv() {
    // NONMATCHING
}

/* 80CA3160-80CA31A8 002CA0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80CA32A0-80CA32A0 0000E4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

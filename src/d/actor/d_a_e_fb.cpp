/**
 * @file d_a_e_fb.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_fb.h"
#include "dol2asm.h"




//
// Forward References:
//

extern "C" void __ct__12daE_FB_HIO_cFv();
extern "C" void ctrlJoint__8daE_FB_cFP8J3DJointP8J3DModel();
extern "C" void JointCallBack__8daE_FB_cFP8J3DJointi();
extern "C" void draw__8daE_FB_cFv();
extern "C" static void daE_FB_Draw__FP8daE_FB_c();
extern "C" void setBck__8daE_FB_cFiUcff();
extern "C" void setActionMode__8daE_FB_cFii();
extern "C" void damage_check__8daE_FB_cFv();
extern "C" void mBgLineCheck__8daE_FB_cFv();
extern "C" void search_check__8daE_FB_cFv();
extern "C" void executeWait__8daE_FB_cFv();
extern "C" void executeAttack__8daE_FB_cFv();
extern "C" void executeDamage__8daE_FB_cFv();
extern "C" void executeBullet__8daE_FB_cFv();
extern "C" void action__8daE_FB_cFv();
extern "C" void mtx_set__8daE_FB_cFv();
extern "C" void cc_set__8daE_FB_cFv();
extern "C" void normal_eff_set__8daE_FB_cFv();
extern "C" void dead_eff_set__8daE_FB_cFv();
extern "C" void execute__8daE_FB_cFv();
extern "C" static void daE_FB_Execute__FP8daE_FB_c();
extern "C" static bool daE_FB_IsDelete__FP8daE_FB_c();
extern "C" void _delete__8daE_FB_cFv();
extern "C" static void daE_FB_Delete__FP8daE_FB_c();
extern "C" void CreateHeap__8daE_FB_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_FB_cFv();
extern "C" void __ct__8daE_FB_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void daE_FB_Create__FP8daE_FB_c();
extern "C" void __dt__12daE_FB_HIO_cFv();
extern "C" void __sinit_d_a_e_fb_cpp();
extern "C" static void func_806B8F68();
extern "C" static void func_806B8F70();
extern "C" extern char const* const d_a_e_fb__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void atan2sY_XZ__4cXyzCFv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_80280808();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806B8F8C-806B8F90 000000 0004+00 9/9 0/0 0/0 .rodata          @3662 */
SECTION_RODATA static f32 const lit_3662 = 1.5f;
COMPILER_STRIP_GATE(0x806B8F8C, &lit_3662);

/* 806B8F90-806B8F94 000004 0004+00 1/1 0/0 0/0 .rodata          @3663 */
SECTION_RODATA static f32 const lit_3663 = 1500.0f;
COMPILER_STRIP_GATE(0x806B8F90, &lit_3663);

/* 806B9034-806B9074 000000 0040+00 1/1 0/0 0/0 .data            cc_fb_src__22@unnamed@d_a_e_fb_cpp@
 */
SECTION_DATA static u8 data_806B9034[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D,
    0x48, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 806B9074-806B90B4 000040 0040+00 1/1 0/0 0/0 .data cc_fb_at_src__22@unnamed@d_a_e_fb_cpp@ */
SECTION_DATA static u8 data_806B9074[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x0C, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 806B90B4-806B90BC 000080 0006+02 1/1 0/0 0/0 .data            a_eff_id$3974 */
SECTION_DATA static u8 a_eff_id[6 + 2 /* padding */] = {
    0x85,
    0xAA,
    0x85,
    0xAB,
    0x86,
    0x83,
    /* padding */
    0x00,
    0x00,
};

/* 806B90BC-806B90C0 000088 0004+00 1/1 0/0 0/0 .data            d_eff_id$4275 */
SECTION_DATA static u8 d_eff_id_4275[4] = {
    0x85,
    0xB1,
    0x85,
    0xB2,
};

/* 806B90C0-806B90CC 00008C 000A+02 1/1 0/0 0/0 .data            n_eff_id$4612 */
SECTION_DATA static u8 n_eff_id[10 + 2 /* padding */] = {
    0x85,
    0xB3,
    0x85,
    0xB4,
    0x85,
    0xB5,
    0x85,
    0xB6,
    0x85,
    0xB7,
    /* padding */
    0x00,
    0x00,
};

/* 806B90CC-806B90E0 000098 0014+00 1/1 0/0 0/0 .data            n_joint_id$4613 */
SECTION_DATA static u8 n_joint_id[20] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};

/* 806B90E0-806B90EC 0000AC 000A+02 1/1 0/0 0/0 .data            d_eff_id$4669 */
SECTION_DATA static u8 d_eff_id_4669[10 + 2 /* padding */] = {
    0x85,
    0xAC,
    0x85,
    0xAD,
    0x85,
    0xAE,
    0x85,
    0xAF,
    0x85,
    0xB0,
    /* padding */
    0x00,
    0x00,
};

/* 806B90EC-806B9100 0000B8 0014+00 1/1 0/0 0/0 .data            d_joint_id$4670 */
SECTION_DATA static u8 d_joint_id[20] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
};

/* 806B9100-806B9120 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_FB_Method */
static actor_method_class l_daE_FB_Method = {
    (process_method_func)daE_FB_Create__FP8daE_FB_c,
    (process_method_func)daE_FB_Delete__FP8daE_FB_c,
    (process_method_func)daE_FB_Execute__FP8daE_FB_c,
    (process_method_func)daE_FB_IsDelete__FP8daE_FB_c,
    (process_method_func)daE_FB_Draw__FP8daE_FB_c,
};

/* 806B9120-806B9150 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_FB */
extern actor_process_profile_definition g_profile_E_FB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_FB,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_FB_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  176,                    // mPriority
  &l_daE_FB_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806B9150-806B915C 00011C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806B915C-806B9168 000128 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806B9168-806B918C 000134 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806B8F70,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806B8F68,
};

/* 806B918C-806B9198 000158 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 806B9198-806B91A4 000164 000C+00 2/2 0/0 0/0 .data            __vt__12daE_FB_HIO_c */
SECTION_DATA extern void* __vt__12daE_FB_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_FB_HIO_cFv,
};

/* 806B64AC-806B6520 0000EC 0074+00 1/1 0/0 0/0 .text            __ct__12daE_FB_HIO_cFv */
daE_FB_HIO_c::daE_FB_HIO_c() {
    // NONMATCHING
}

/* 806B6520-806B65C0 000160 00A0+00 1/1 0/0 0/0 .text ctrlJoint__8daE_FB_cFP8J3DJointP8J3DModel */
void daE_FB_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 806B65C0-806B660C 000200 004C+00 1/1 0/0 0/0 .text JointCallBack__8daE_FB_cFP8J3DJointi */
void daE_FB_c::JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806B8F94-806B8F98 000008 0004+00 0/1 0/0 0/0 .rodata          @3748 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3748 = 10.0f;
COMPILER_STRIP_GATE(0x806B8F94, &lit_3748);
#pragma pop

/* 806B8F98-806B8F9C 00000C 0004+00 0/1 0/0 0/0 .rodata          @3749 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3749 = 1300.0f;
COMPILER_STRIP_GATE(0x806B8F98, &lit_3749);
#pragma pop

/* 806B8F9C-806B8FA0 000010 0004+00 2/7 0/0 0/0 .rodata          @3750 */
SECTION_RODATA static u8 const lit_3750[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806B8F9C, &lit_3750);

/* 806B8FA0-806B8FA4 000014 0004+00 4/8 0/0 0/0 .rodata          @3751 */
SECTION_RODATA static f32 const lit_3751 = 1.0f;
COMPILER_STRIP_GATE(0x806B8FA0, &lit_3751);

/* 806B91F0-806B91FC 000048 000C+00 1/1 0/0 0/0 .bss             @3657 */
static u8 lit_3657[12];

/* 806B91FC-806B9220 000054 0024+00 6/7 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[36];

/* 806B660C-806B67C0 00024C 01B4+00 1/1 0/0 0/0 .text            draw__8daE_FB_cFv */
void daE_FB_c::draw() {
    // NONMATCHING
}

/* 806B67C0-806B67E0 000400 0020+00 1/0 0/0 0/0 .text            daE_FB_Draw__FP8daE_FB_c */
static void daE_FB_Draw(daE_FB_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806B8FA4-806B8FA8 000018 0004+00 1/2 0/0 0/0 .rodata          @3764 */
SECTION_RODATA static f32 const lit_3764 = -1.0f;
COMPILER_STRIP_GATE(0x806B8FA4, &lit_3764);

/* 806B9028-806B9028 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806B9028 = "E_FL";
#pragma pop

/* 806B67E0-806B688C 000420 00AC+00 3/3 0/0 0/0 .text            setBck__8daE_FB_cFiUcff */
void daE_FB_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 806B688C-806B6898 0004CC 000C+00 5/5 0/0 0/0 .text            setActionMode__8daE_FB_cFii */
void daE_FB_c::setActionMode(int param_0, int param_1) {
    // NONMATCHING
}

/* 806B6898-806B6D20 0004D8 0488+00 1/1 0/0 0/0 .text            damage_check__8daE_FB_cFv */
void daE_FB_c::damage_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806B8FA8-806B8FAC 00001C 0004+00 1/3 0/0 0/0 .rodata          @3877 */
SECTION_RODATA static f32 const lit_3877 = 100.0f;
COMPILER_STRIP_GATE(0x806B8FA8, &lit_3877);

/* 806B6D20-806B6DF4 000960 00D4+00 3/3 0/0 0/0 .text            mBgLineCheck__8daE_FB_cFv */
void daE_FB_c::mBgLineCheck() {
    // NONMATCHING
}

/* 806B6DF4-806B6F40 000A34 014C+00 2/2 0/0 0/0 .text            search_check__8daE_FB_cFv */
void daE_FB_c::search_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806B8FAC-806B8FB0 000020 0004+00 0/2 0/0 0/0 .rodata          @3965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3965 = 6.0f;
COMPILER_STRIP_GATE(0x806B8FAC, &lit_3965);
#pragma pop

/* 806B8FB0-806B8FB4 000024 0004+00 0/2 0/0 0/0 .rodata          @3966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3966 = 300.0f;
COMPILER_STRIP_GATE(0x806B8FB0, &lit_3966);
#pragma pop

/* 806B8FB4-806B8FB8 000028 0004+00 0/2 0/0 0/0 .rodata          @3967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3967 = -300.0f;
COMPILER_STRIP_GATE(0x806B8FB4, &lit_3967);
#pragma pop

/* 806B8FB8-806B8FBC 00002C 0004+00 0/2 0/0 0/0 .rodata          @3968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3968 = -2800.0f;
COMPILER_STRIP_GATE(0x806B8FB8, &lit_3968);
#pragma pop

/* 806B8FBC-806B8FC0 000030 0004+00 0/2 0/0 0/0 .rodata          @3969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3969 = -3600.0f;
COMPILER_STRIP_GATE(0x806B8FBC, &lit_3969);
#pragma pop

/* 806B8FC0-806B8FC4 000034 0004+00 0/1 0/0 0/0 .rodata          @3970 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3970 = -700.0f;
COMPILER_STRIP_GATE(0x806B8FC0, &lit_3970);
#pragma pop

/* 806B6F40-806B70FC 000B80 01BC+00 1/1 0/0 0/0 .text            executeWait__8daE_FB_cFv */
void daE_FB_c::executeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806B8FC4-806B8FC8 000038 0004+00 0/1 0/0 0/0 .rodata          @4260 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4260 = 36.0f;
COMPILER_STRIP_GATE(0x806B8FC4, &lit_4260);
#pragma pop

/* 806B8FC8-806B8FCC 00003C 0004+00 0/1 0/0 0/0 .rodata          @4261 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4261 = 160.0f;
COMPILER_STRIP_GATE(0x806B8FC8, &lit_4261);
#pragma pop

/* 806B8FCC-806B8FD0 000040 0004+00 0/1 0/0 0/0 .rodata          @4262 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4262 = 250.0f;
COMPILER_STRIP_GATE(0x806B8FCC, &lit_4262);
#pragma pop

/* 806B8FD0-806B8FD4 000044 0004+00 0/3 0/0 0/0 .rodata          @4263 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4263 = 200.0f;
COMPILER_STRIP_GATE(0x806B8FD0, &lit_4263);
#pragma pop

/* 806B8FD4-806B8FD8 000048 0004+00 0/1 0/0 0/0 .rodata          @4264 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4264 = -1.0f / 5.0f;
COMPILER_STRIP_GATE(0x806B8FD4, &lit_4264);
#pragma pop

/* 806B8FD8-806B8FDC 00004C 0004+00 0/1 0/0 0/0 .rodata          @4265 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4265 = -900.0f;
COMPILER_STRIP_GATE(0x806B8FD8, &lit_4265);
#pragma pop

/* 806B8FDC-806B8FE4 000050 0008+00 0/3 0/0 0/0 .rodata          @4267 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4267[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806B8FDC, &lit_4267);
#pragma pop

/* 806B9220-806B9224 000078 0004+00 2/2 0/0 0/0 .bss             mFireTimer */
static u8 mFireTimer[4];

/* 806B70FC-806B78A0 000D3C 07A4+00 1/1 0/0 0/0 .text            executeAttack__8daE_FB_cFv */
void daE_FB_c::executeAttack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806B8FE4-806B8FE8 000058 0004+00 0/1 0/0 0/0 .rodata          @4370 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4370 = 3.0f;
COMPILER_STRIP_GATE(0x806B8FE4, &lit_4370);
#pragma pop

/* 806B8FE8-806B8FEC 00005C 0004+00 0/1 0/0 0/0 .rodata          @4371 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4371 = 4000.0f;
COMPILER_STRIP_GATE(0x806B8FE8, &lit_4371);
#pragma pop

/* 806B8FEC-806B8FF0 000060 0004+00 0/1 0/0 0/0 .rodata          @4372 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4372 = 50.0f;
COMPILER_STRIP_GATE(0x806B8FEC, &lit_4372);
#pragma pop

/* 806B78A0-806B7B88 0014E0 02E8+00 1/1 0/0 0/0 .text            executeDamage__8daE_FB_cFv */
void daE_FB_c::executeDamage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806B8FF0-806B8FF4 000064 0004+00 0/1 0/0 0/0 .rodata          @4451 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4451 = 35.0f;
COMPILER_STRIP_GATE(0x806B8FF0, &lit_4451);
#pragma pop

/* 806B8FF4-806B8FF8 000068 0004+00 0/1 0/0 0/0 .rodata          @4452 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4452 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806B8FF4, &lit_4452);
#pragma pop

/* 806B8FF8-806B8FFC 00006C 0004+00 0/2 0/0 0/0 .rodata          @4453 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4453 = 40.0f;
COMPILER_STRIP_GATE(0x806B8FF8, &lit_4453);
#pragma pop

/* 806B9224-806B9228 00007C 0004+00 2/3 0/0 0/0 .bss             None */
static u8 data_806B9224[4];

/* 806B7B88-806B7DDC 0017C8 0254+00 1/1 0/0 0/0 .text            executeBullet__8daE_FB_cFv */
void daE_FB_c::executeBullet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806B8FFC-806B9004 000070 0004+04 0/1 0/0 0/0 .rodata          @4528 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4528[1 + 1 /* padding */] = {
    13.0f / 10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806B8FFC, &lit_4528);
#pragma pop

/* 806B9004-806B900C 000078 0008+00 0/1 0/0 0/0 .rodata          @4531 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4531[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806B9004, &lit_4531);
#pragma pop

/* 806B7DDC-806B80A4 001A1C 02C8+00 1/1 0/0 0/0 .text            action__8daE_FB_cFv */
void daE_FB_c::action() {
    // NONMATCHING
}

/* 806B80A4-806B811C 001CE4 0078+00 1/1 0/0 0/0 .text            mtx_set__8daE_FB_cFv */
void daE_FB_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806B900C-806B9010 000080 0004+00 0/1 0/0 0/0 .rodata          @4604 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4604 = -20.0f;
COMPILER_STRIP_GATE(0x806B900C, &lit_4604);
#pragma pop

/* 806B9010-806B9014 000084 0004+00 0/1 0/0 0/0 .rodata          @4605 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4605 = 30.0f;
COMPILER_STRIP_GATE(0x806B9010, &lit_4605);
#pragma pop

/* 806B9014-806B9018 000088 0004+00 0/1 0/0 0/0 .rodata          @4606 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4606 = 150.0f;
COMPILER_STRIP_GATE(0x806B9014, &lit_4606);
#pragma pop

/* 806B9018-806B901C 00008C 0004+00 0/1 0/0 0/0 .rodata          @4607 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4607 = -40.0f;
COMPILER_STRIP_GATE(0x806B9018, &lit_4607);
#pragma pop

/* 806B901C-806B9020 000090 0004+00 0/1 0/0 0/0 .rodata          @4608 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4608 = 170.0f;
COMPILER_STRIP_GATE(0x806B901C, &lit_4608);
#pragma pop

/* 806B811C-806B82B4 001D5C 0198+00 1/1 0/0 0/0 .text            cc_set__8daE_FB_cFv */
void daE_FB_c::cc_set() {
    // NONMATCHING
}

/* 806B82B4-806B83F0 001EF4 013C+00 1/1 0/0 0/0 .text            normal_eff_set__8daE_FB_cFv */
void daE_FB_c::normal_eff_set() {
    // NONMATCHING
}

/* 806B83F0-806B8518 002030 0128+00 1/1 0/0 0/0 .text            dead_eff_set__8daE_FB_cFv */
void daE_FB_c::dead_eff_set() {
    // NONMATCHING
}

/* 806B8518-806B85A0 002158 0088+00 1/1 0/0 0/0 .text            execute__8daE_FB_cFv */
void daE_FB_c::execute() {
    // NONMATCHING
}

/* 806B85A0-806B85C0 0021E0 0020+00 2/1 0/0 0/0 .text            daE_FB_Execute__FP8daE_FB_c */
static void daE_FB_Execute(daE_FB_c* param_0) {
    // NONMATCHING
}

/* 806B85C0-806B85C8 002200 0008+00 1/0 0/0 0/0 .text            daE_FB_IsDelete__FP8daE_FB_c */
static bool daE_FB_IsDelete(daE_FB_c* param_0) {
    return true;
}

/* 806B85C8-806B8658 002208 0090+00 1/1 0/0 0/0 .text            _delete__8daE_FB_cFv */
void daE_FB_c::_delete() {
    // NONMATCHING
}

/* 806B8658-806B8678 002298 0020+00 1/0 0/0 0/0 .text            daE_FB_Delete__FP8daE_FB_c */
static void daE_FB_Delete(daE_FB_c* param_0) {
    // NONMATCHING
}

/* 806B8678-806B8878 0022B8 0200+00 1/1 0/0 0/0 .text            CreateHeap__8daE_FB_cFv */
void daE_FB_c::CreateHeap() {
    // NONMATCHING
}

/* 806B8878-806B88C0 0024B8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 806B88C0-806B88E0 002500 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806B9020-806B9024 000094 0004+00 0/1 0/0 0/0 .rodata          @4934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4934 = -200.0f;
COMPILER_STRIP_GATE(0x806B9020, &lit_4934);
#pragma pop

/* 806B9024-806B9028 000098 0004+00 0/1 0/0 0/0 .rodata          @4935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4935 = 80.0f;
COMPILER_STRIP_GATE(0x806B9024, &lit_4935);
#pragma pop

/* 806B9028-806B9028 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806B902D = "E_fb";
#pragma pop

/* 806B88E0-806B8C1C 002520 033C+00 1/1 0/0 0/0 .text            create__8daE_FB_cFv */
void daE_FB_c::create() {
    // NONMATCHING
}

/* 806B8C1C-806B8DC4 00285C 01A8+00 1/1 0/0 0/0 .text            __ct__8daE_FB_cFv */
daE_FB_c::daE_FB_c() {
    // NONMATCHING
}

/* 806B8DC4-806B8E0C 002A04 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806B8E0C-806B8E54 002A4C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806B8E54-806B8EC4 002A94 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806B8EC4-806B8EE4 002B04 0020+00 1/0 0/0 0/0 .text            daE_FB_Create__FP8daE_FB_c */
static void daE_FB_Create(daE_FB_c* param_0) {
    // NONMATCHING
}

/* 806B8EE4-806B8F2C 002B24 0048+00 2/1 0/0 0/0 .text            __dt__12daE_FB_HIO_cFv */
daE_FB_HIO_c::~daE_FB_HIO_c() {
    // NONMATCHING
}

/* 806B8F2C-806B8F68 002B6C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_fb_cpp */
void __sinit_d_a_e_fb_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806B8F2C, __sinit_d_a_e_fb_cpp);
#pragma pop

/* 806B8F68-806B8F70 002BA8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806B8F68() {
    // NONMATCHING
}

/* 806B8F70-806B8F78 002BB0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806B8F70() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806B9228-806B922C 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_806B9228[4];
#pragma pop

/* 806B922C-806B9230 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_806B922C[4];
#pragma pop

/* 806B9230-806B9234 000088 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_806B9230[4];
#pragma pop

/* 806B9234-806B9238 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806B9234[4];
#pragma pop

/* 806B9238-806B923C 000090 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806B9238[4];
#pragma pop

/* 806B923C-806B9240 000094 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806B923C[4];
#pragma pop

/* 806B9240-806B9244 000098 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_806B9240[4];
#pragma pop

/* 806B9244-806B9248 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_806B9244[4];
#pragma pop

/* 806B9248-806B924C 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_806B9248[4];
#pragma pop

/* 806B924C-806B9250 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_806B924C[4];
#pragma pop

/* 806B9250-806B9254 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_806B9250[4];
#pragma pop

/* 806B9254-806B9258 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806B9254[4];
#pragma pop

/* 806B9258-806B925C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_806B9258[4];
#pragma pop

/* 806B925C-806B9260 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806B925C[4];
#pragma pop

/* 806B9260-806B9264 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806B9260[4];
#pragma pop

/* 806B9264-806B9268 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_806B9264[4];
#pragma pop

/* 806B9268-806B926C 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_806B9268[4];
#pragma pop

/* 806B926C-806B9270 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806B926C[4];
#pragma pop

/* 806B9270-806B9274 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_806B9270[4];
#pragma pop

/* 806B9274-806B9278 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_806B9274[4];
#pragma pop

/* 806B9278-806B927C 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_806B9278[4];
#pragma pop

/* 806B927C-806B9280 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806B927C[4];
#pragma pop

/* 806B9280-806B9284 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806B9280[4];
#pragma pop

/* 806B9284-806B9288 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806B9284[4];
#pragma pop

/* 806B9288-806B928C 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_806B9288[4];
#pragma pop

/* 806B9028-806B9028 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

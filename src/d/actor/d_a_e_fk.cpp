/**
 * @file d_a_e_fk.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_fk.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_FK_HIO_cFv();
extern "C" void CreateHeap__8daE_FK_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void initBodySph__8daE_FK_cFv();
extern "C" void initSwordSph__8daE_FK_cFv();
extern "C" void SetBodySph__8daE_FK_cFv();
extern "C" void SetSwordSph__8daE_FK_cFv();
extern "C" void ctrlJoint__8daE_FK_cFP8J3DJointP8J3DModel();
extern "C" static void JointCallBack__FP8J3DJointi();
extern "C" void SetAnm__8daE_FK_cFiiff();
extern "C" void Yazirushi__8daE_FK_cFv();
extern "C" void SpeedSet__8daE_FK_cFv();
extern "C" void TnNeckSet__8daE_FK_cFs();
extern "C" void HsAngleSet__8daE_FK_cFv();
extern "C" void SpeedChk__8daE_FK_cFv();
extern "C" void SetAnmSpeed__8daE_FK_cFv();
extern "C" void TgChk__8daE_FK_cFv();
extern "C" void AtChk__8daE_FK_cFv();
extern "C" void OnAt__8daE_FK_cFv();
extern "C" void R_MoveAction__8daE_FK_cFv();
extern "C" void StartAction__8daE_FK_cFv();
extern "C" void RunAction__8daE_FK_cFv();
extern "C" void Action__8daE_FK_cFv();
extern "C" void DeathAction__8daE_FK_cFv();
extern "C" void DamageChk__8daE_FK_cFv();
extern "C" void DamageAction__8daE_FK_cFv();
extern "C" void checkViewArea__8daE_FK_cFv();
extern "C" void AttackAction__8daE_FK_cFv();
extern "C" void UpDown__8daE_FK_cFv();
extern "C" void Execute__8daE_FK_cFv();
extern "C" void At_Check__8daE_FK_cFi();
extern "C" void Draw__8daE_FK_cFv();
extern "C" void Delete__8daE_FK_cFv();
extern "C" void setBaseMtx__8daE_FK_cFv();
extern "C" void setEfMtx__8daE_FK_cFv();
extern "C" static void daE_FK_Draw__FP8daE_FK_c();
extern "C" static void daE_FK_Execute__FP8daE_FK_c();
extern "C" static bool daE_FK_IsDelete__FP8daE_FK_c();
extern "C" static void daE_FK_Delete__FP8daE_FK_c();
extern "C" void CreateChk__8daE_FK_cFv();
extern "C" void Create__8daE_FK_cFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" static void daE_FK_Create__FP10fopAc_ac_c();
extern "C" void __dt__12daE_FK_HIO_cFv();
extern "C" void __sinit_d_a_e_fk_cpp();
extern "C" static void func_806BB670();
extern "C" static void func_806BB678();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_fk__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void mDoLib_project__FP3VecP3Vec();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_calcSpeed__FP10fopAc_ac_c();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
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
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806BB6D0-806BB6D4 000000 0004+00 12/12 0/0 0/0 .rodata          @3826 */
SECTION_RODATA static f32 const lit_3826 = 100.0f;
COMPILER_STRIP_GATE(0x806BB6D0, &lit_3826);

/* 806BB6D4-806BB6D8 000004 0004+00 4/10 0/0 0/0 .rodata          @3827 */
SECTION_RODATA static u8 const lit_3827[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806BB6D4, &lit_3827);

/* 806BB6D8-806BB6E0 000008 0004+04 2/7 0/0 0/0 .rodata          @3828 */
SECTION_RODATA static f32 const lit_3828[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806BB6D8, &lit_3828);

/* 806BB6E0-806BB6E8 000010 0008+00 0/1 0/0 0/0 .rodata          @3829 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3829[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806BB6E0, &lit_3829);
#pragma pop

/* 806BB6E8-806BB6F0 000018 0008+00 0/1 0/0 0/0 .rodata          @3830 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3830[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806BB6E8, &lit_3830);
#pragma pop

/* 806BB6F0-806BB6F8 000020 0008+00 0/1 0/0 0/0 .rodata          @3831 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3831[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806BB6F0, &lit_3831);
#pragma pop

/* 806BB6F8-806BB6FC 000028 0004+00 0/0 0/0 0/0 .rodata          @3832 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3832 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x806BB6F8, &lit_3832);
#pragma pop

/* 806BB6FC-806BB700 00002C 0004+00 1/1 0/0 0/0 .rodata          @3848 */
SECTION_RODATA static f32 const lit_3848 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x806BB6FC, &lit_3848);

/* 806BB700-806BB704 000030 0004+00 1/1 0/0 0/0 .rodata          @3849 */
SECTION_RODATA static f32 const lit_3849 = 2.0f;
COMPILER_STRIP_GATE(0x806BB700, &lit_3849);

/* 806BB82C-806BB84C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_FK_Method */
static actor_method_class l_daE_FK_Method = {
    (process_method_func)daE_FK_Create__FP10fopAc_ac_c,
    (process_method_func)daE_FK_Delete__FP8daE_FK_c,
    (process_method_func)daE_FK_Execute__FP8daE_FK_c,
    (process_method_func)daE_FK_IsDelete__FP8daE_FK_c,
    (process_method_func)daE_FK_Draw__FP8daE_FK_c,
};

/* 806BB84C-806BB87C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_FK */
extern actor_process_profile_definition g_profile_E_FK = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_FK,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_FK_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  159,                    // mPriority
  &l_daE_FK_Method,       // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806BB87C-806BB888 000050 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806BB888-806BB894 00005C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806BB894-806BB8B8 000068 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806BB678,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806BB670,
};

/* 806BB8B8-806BB8C4 00008C 000C+00 2/2 0/0 0/0 .data            __vt__12daE_FK_HIO_c */
SECTION_DATA extern void* __vt__12daE_FK_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_FK_HIO_cFv,
};

/* 806B938C-806B93CC 0000EC 0040+00 1/1 0/0 0/0 .text            __ct__12daE_FK_HIO_cFv */
daE_FK_HIO_c::daE_FK_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB81C-806BB81C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806BB81C = "E_fk";
#pragma pop

/* 806B93CC-806B9514 00012C 0148+00 1/1 0/0 0/0 .text            CreateHeap__8daE_FK_cFv */
void daE_FK_c::CreateHeap() {
    // NONMATCHING
}

/* 806B9514-806B9534 000274 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB704-806BB744 000034 0040+00 1/1 0/0 0/0 .rodata          ccBodySphSrc$3886 */
const static dCcD_SrcSph ccBodySphSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x4000000, 0x43}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0xd, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x1, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 100.0f} // mSph
    } // mSphAttr
};

/* 806B9534-806B95BC 000294 0088+00 1/1 0/0 0/0 .text            initBodySph__8daE_FK_cFv */
void daE_FK_c::initBodySph() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB744-806BB784 000074 0040+00 1/1 0/0 0/0 .rodata          ccSphSrc$3898 */
const static dCcD_SrcSph ccSphSrc = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_SWORD, 0x0, 0xd, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 80.0f} // mSph
    } // mSphAttr
};

/* 806B95BC-806B9670 00031C 00B4+00 1/1 0/0 0/0 .text            initSwordSph__8daE_FK_cFv */
void daE_FK_c::initSwordSph() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB784-806BB788 0000B4 0004+00 1/1 0/0 0/0 .rodata          @3951 */
SECTION_RODATA static f32 const lit_3951 = 400.0f;
COMPILER_STRIP_GATE(0x806BB784, &lit_3951);

/* 806BB910-806BB91C 000048 000C+00 0/1 0/0 0/0 .bss             @3843 */
#pragma push
#pragma force_active on
static u8 lit_3843[12];
#pragma pop

/* 806BB91C-806BB930 000054 0014+00 5/6 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[20];

/* 806B9670-806B97A4 0003D0 0134+00 1/1 0/0 0/0 .text            SetBodySph__8daE_FK_cFv */
void daE_FK_c::SetBodySph() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB788-806BB78C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @3972 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3972 = -500.0f;
COMPILER_STRIP_GATE(0x806BB788, &lit_3972);
#pragma pop

/* 806BB78C-806BB790 0000BC 0004+00 0/1 0/0 0/0 .rodata          @3973 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3973 = 350.0f;
COMPILER_STRIP_GATE(0x806BB78C, &lit_3973);
#pragma pop

/* 806BB790-806BB794 0000C0 0004+00 0/1 0/0 0/0 .rodata          @3974 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3974 = 250.0f;
COMPILER_STRIP_GATE(0x806BB790, &lit_3974);
#pragma pop

/* 806B97A4-806B98C4 000504 0120+00 1/1 0/0 0/0 .text            SetSwordSph__8daE_FK_cFv */
void daE_FK_c::SetSwordSph() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB794-806BB798 0000C4 0004+00 1/1 0/0 0/0 .rodata          @4008 */
SECTION_RODATA static f32 const lit_4008 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x806BB794, &lit_4008);

/* 806BB798-806BB7A0 0000C8 0008+00 1/1 0/0 0/0 .rodata          @4010 */
SECTION_RODATA static u8 const lit_4010[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806BB798, &lit_4010);

/* 806B98C4-806B99DC 000624 0118+00 1/1 0/0 0/0 .text ctrlJoint__8daE_FK_cFP8J3DJointP8J3DModel */
void daE_FK_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 806B99DC-806B9A28 00073C 004C+00 1/1 0/0 0/0 .text            JointCallBack__FP8J3DJointi */
static void JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB7A0-806BB7A4 0000D0 0004+00 1/1 0/0 0/0 .rodata          @4037 */
SECTION_RODATA static f32 const lit_4037 = -1.0f;
COMPILER_STRIP_GATE(0x806BB7A0, &lit_4037);

/* 806BB81C-806BB81C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806BB821 = "e_fk";
#pragma pop

/* 806B9A28-806B9AD8 000788 00B0+00 4/4 0/0 0/0 .text            SetAnm__8daE_FK_cFiiff */
void daE_FK_c::SetAnm(int param_0, int param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB7A4-806BB7A8 0000D4 0004+00 0/0 0/0 0/0 .rodata          @4067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4067 = 30.0f;
COMPILER_STRIP_GATE(0x806BB7A4, &lit_4067);
#pragma pop

/* 806BB7A8-806BB7AC 0000D8 0004+00 0/0 0/0 0/0 .rodata          @4068 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4068 = 300.0f;
COMPILER_STRIP_GATE(0x806BB7A8, &lit_4068);
#pragma pop

/* 806BB7AC-806BB7B0 0000DC 0004+00 1/1 0/0 0/0 .rodata          @4129 */
SECTION_RODATA static f32 const lit_4129 = 150.0f;
COMPILER_STRIP_GATE(0x806BB7AC, &lit_4129);

/* 806B9AD8-806B9B2C 000838 0054+00 1/1 0/0 0/0 .text            Yazirushi__8daE_FK_cFv */
void daE_FK_c::Yazirushi() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB7B0-806BB7B4 0000E0 0004+00 0/2 0/0 0/0 .rodata          @4138 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4138 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806BB7B0, &lit_4138);
#pragma pop

/* 806BB7B4-806BB7B8 0000E4 0004+00 1/4 0/0 0/0 .rodata          @4139 */
SECTION_RODATA static f32 const lit_4139 = 5.0f;
COMPILER_STRIP_GATE(0x806BB7B4, &lit_4139);

/* 806B9B2C-806B9BB4 00088C 0088+00 5/5 0/0 0/0 .text            SpeedSet__8daE_FK_cFv */
void daE_FK_c::SpeedSet() {
    // NONMATCHING
}

/* 806B9BB4-806B9C14 000914 0060+00 4/4 0/0 0/0 .text            TnNeckSet__8daE_FK_cFs */
void daE_FK_c::TnNeckSet(s16 param_0) {
    // NONMATCHING
}

/* 806B9C14-806B9C18 000974 0004+00 5/5 0/0 0/0 .text            HsAngleSet__8daE_FK_cFv */
void daE_FK_c::HsAngleSet() {
    /* empty function */
}

/* 806B9C18-806B9C1C 000978 0004+00 4/4 0/0 0/0 .text            SpeedChk__8daE_FK_cFv */
void daE_FK_c::SpeedChk() {
    /* empty function */
}

/* 806B9C1C-806B9C20 00097C 0004+00 4/4 0/0 0/0 .text            SetAnmSpeed__8daE_FK_cFv */
void daE_FK_c::SetAnmSpeed() {
    /* empty function */
}

/* 806B9C20-806B9D00 000980 00E0+00 4/4 0/0 0/0 .text            TgChk__8daE_FK_cFv */
void daE_FK_c::TgChk() {
    // NONMATCHING
}

/* 806B9D00-806B9D7C 000A60 007C+00 1/1 0/0 0/0 .text            AtChk__8daE_FK_cFv */
void daE_FK_c::AtChk() {
    // NONMATCHING
}

/* 806B9D7C-806B9DA4 000ADC 0028+00 1/1 0/0 0/0 .text            OnAt__8daE_FK_cFv */
void daE_FK_c::OnAt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB7B8-806BB7BC 0000E8 0004+00 0/0 0/0 0/0 .rodata          @4234 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4234 = 2000.0f;
COMPILER_STRIP_GATE(0x806BB7B8, &lit_4234);
#pragma pop

/* 806BB7BC-806BB7C0 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4235 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4235 = 1000.0f;
COMPILER_STRIP_GATE(0x806BB7BC, &lit_4235);
#pragma pop

/* 806BB7C0-806BB7C4 0000F0 0004+00 0/0 0/0 0/0 .rodata          @4236 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4236 = -4000.0f;
COMPILER_STRIP_GATE(0x806BB7C0, &lit_4236);
#pragma pop

/* 806BB7C4-806BB7C8 0000F4 0004+00 1/1 0/0 0/0 .rodata          @4250 */
SECTION_RODATA static f32 const lit_4250 = 4000.0f;
COMPILER_STRIP_GATE(0x806BB7C4, &lit_4250);

/* 806BB930-806BB934 000068 0004+00 0/1 0/0 0/0 .bss             s_dis__22@unnamed@d_a_e_fk_cpp@ */
#pragma push
#pragma force_active on
static u8 data_806BB930[4];
#pragma pop

/* 806BB934-806BB938 00006C 0004+00 0/1 0/0 0/0 .bss             s_LinkPos__22@unnamed@d_a_e_fk_cpp@
 */
#pragma push
#pragma force_active on
static u8 data_806BB934[4];
#pragma pop

/* 806BB938-806BB93C 000070 0002+02 1/2 0/0 0/0 .bss s_TargetAngle__22@unnamed@d_a_e_fk_cpp@ */
static u8 data_806BB938[2 + 2 /* padding */];

/* 806BB93C-806BB948 000074 000C+00 0/1 0/0 0/0 .bss             @3850 */
#pragma push
#pragma force_active on
static u8 lit_3850[12];
#pragma pop

/* 806BB948-806BB954 000080 000C+00 0/1 0/0 0/0 .bss s_centerpos__22@unnamed@d_a_e_fk_cpp@ */
#pragma push
#pragma force_active on
static u8 data_806BB948[12];
#pragma pop

/* 806BB954-806BB960 00008C 000C+00 0/1 0/0 0/0 .bss             @3851 */
#pragma push
#pragma force_active on
static u8 lit_3851[12];
#pragma pop

/* 806BB960-806BB96C 000098 000C+00 0/2 0/0 0/0 .bss s_TargetPos__22@unnamed@d_a_e_fk_cpp@ */
#pragma push
#pragma force_active on
static u8 data_806BB960[12];
#pragma pop

/* 806BB96C-806BB970 0000A4 0002+02 1/3 0/0 0/0 .bss s_PointAngle__22@unnamed@d_a_e_fk_cpp@ */
static u8 data_806BB96C[2 + 2 /* padding */];

/* 806BB970-806BB974 0000A8 0004+00 1/3 0/0 0/0 .bss s_TargetDis__22@unnamed@d_a_e_fk_cpp@ */
static u8 data_806BB970[4];

/* 806B9DA4-806B9E6C 000B04 00C8+00 1/1 0/0 0/0 .text            R_MoveAction__8daE_FK_cFv */
void daE_FK_c::R_MoveAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB7C8-806BB7CC 0000F8 0004+00 0/0 0/0 0/0 .rodata          @4265 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4265 = -100.0f;
COMPILER_STRIP_GATE(0x806BB7C8, &lit_4265);
#pragma pop

/* 806BB7CC-806BB7D0 0000FC 0004+00 0/3 0/0 0/0 .rodata          @4281 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4281 = 0.5f;
COMPILER_STRIP_GATE(0x806BB7CC, &lit_4281);
#pragma pop

/* 806BB7D0-806BB7D4 000100 0004+00 0/2 0/0 0/0 .rodata          @4282 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4282 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x806BB7D0, &lit_4282);
#pragma pop

/* 806B9E6C-806B9F20 000BCC 00B4+00 1/1 0/0 0/0 .text            StartAction__8daE_FK_cFv */
void daE_FK_c::StartAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB7D4-806BB7D8 000104 0004+00 0/3 0/0 0/0 .rodata          @4293 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4293 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x806BB7D4, &lit_4293);
#pragma pop

/* 806B9F20-806BA004 000C80 00E4+00 1/1 0/0 0/0 .text            RunAction__8daE_FK_cFv */
void daE_FK_c::RunAction() {
    // NONMATCHING
}

/* 806BA004-806BA024 000D64 0020+00 1/1 0/0 0/0 .text            Action__8daE_FK_cFv */
void daE_FK_c::Action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB7D8-806BB7DC 000108 0004+00 0/1 0/0 0/0 .rodata          @4325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4325 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x806BB7D8, &lit_4325);
#pragma pop

/* 806BB7DC-806BB7E0 00010C 0004+00 0/1 0/0 0/0 .rodata          @4326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4326 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x806BB7DC, &lit_4326);
#pragma pop

/* 806BA024-806BA188 000D84 0164+00 1/1 0/0 0/0 .text            DeathAction__8daE_FK_cFv */
void daE_FK_c::DeathAction() {
    // NONMATCHING
}

/* 806BA188-806BA24C 000EE8 00C4+00 1/1 0/0 0/0 .text            DamageChk__8daE_FK_cFv */
void daE_FK_c::DamageChk() {
    // NONMATCHING
}

/* 806BA24C-806BA330 000FAC 00E4+00 1/1 0/0 0/0 .text            DamageAction__8daE_FK_cFv */
void daE_FK_c::DamageAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB7E0-806BB7E4 000110 0004+00 0/1 0/0 0/0 .rodata          @4376 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4376 = 608.0f;
COMPILER_STRIP_GATE(0x806BB7E0, &lit_4376);
#pragma pop

/* 806BB7E4-806BB7E8 000114 0004+00 0/1 0/0 0/0 .rodata          @4377 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4377 = 448.0f;
COMPILER_STRIP_GATE(0x806BB7E4, &lit_4377);
#pragma pop

/* 806BA330-806BA3B4 001090 0084+00 1/1 0/0 0/0 .text            checkViewArea__8daE_FK_cFv */
void daE_FK_c::checkViewArea() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB7E8-806BB7EC 000118 0004+00 0/1 0/0 0/0 .rodata          @4418 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4418 = 1500.0f;
COMPILER_STRIP_GATE(0x806BB7E8, &lit_4418);
#pragma pop

/* 806BB974-806BB978 -00001 0004+00 0/2 0/0 0/0 .bss             None */
#pragma push
#pragma force_active on
/* 806BB974 0002+00 data_806BB974 s_HorseAngle__22@unnamed@d_a_e_fk_cpp@ */
/* 806BB976 0002+00 data_806BB976 s_AttackChk__22@unnamed@d_a_e_fk_cpp@ */
static u8 struct_806BB974[4];
#pragma pop

/* 806BA3B4-806BA61C 001114 0268+00 1/1 0/0 0/0 .text            AttackAction__8daE_FK_cFv */
void daE_FK_c::AttackAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB7EC-806BB7F0 00011C 0004+00 0/1 0/0 0/0 .rodata          @4430 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4430 = 3.5f;
COMPILER_STRIP_GATE(0x806BB7EC, &lit_4430);
#pragma pop

/* 806BB7F0-806BB7F4 000120 0004+00 0/1 0/0 0/0 .rodata          @4431 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4431 = -3.5f;
COMPILER_STRIP_GATE(0x806BB7F0, &lit_4431);
#pragma pop

/* 806BA61C-806BA6EC 00137C 00D0+00 1/1 0/0 0/0 .text            UpDown__8daE_FK_cFv */
void daE_FK_c::UpDown() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB7F4-806BB7F8 000124 0004+00 1/2 0/0 0/0 .rodata          @4556 */
SECTION_RODATA static f32 const lit_4556 = 50.0f;
COMPILER_STRIP_GATE(0x806BB7F4, &lit_4556);

/* 806BA6EC-806BABB8 00144C 04CC+00 1/1 0/0 0/0 .text            Execute__8daE_FK_cFv */
void daE_FK_c::Execute() {
    // NONMATCHING
}

/* 806BABB8-806BACEC 001918 0134+00 1/1 0/0 0/0 .text            At_Check__8daE_FK_cFi */
void daE_FK_c::At_Check(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB7F8-806BB7FC 000128 0004+00 1/1 0/0 0/0 .rodata          @4618 */
SECTION_RODATA static f32 const lit_4618 = 255.0f;
COMPILER_STRIP_GATE(0x806BB7F8, &lit_4618);

/* 806BACEC-806BADB4 001A4C 00C8+00 1/1 0/0 0/0 .text            Draw__8daE_FK_cFv */
void daE_FK_c::Draw() {
    // NONMATCHING
}

/* 806BADB4-806BAE1C 001B14 0068+00 1/1 0/0 0/0 .text            Delete__8daE_FK_cFv */
void daE_FK_c::Delete() {
    // NONMATCHING
}

/* 806BAE1C-806BAEB0 001B7C 0094+00 1/1 0/0 0/0 .text            setBaseMtx__8daE_FK_cFv */
void daE_FK_c::setBaseMtx() {
    // NONMATCHING
}

/* 806BAEB0-806BAF0C 001C10 005C+00 1/1 0/0 0/0 .text            setEfMtx__8daE_FK_cFv */
void daE_FK_c::setEfMtx() {
    // NONMATCHING
}

/* 806BAF0C-806BAF2C 001C6C 0020+00 1/0 0/0 0/0 .text            daE_FK_Draw__FP8daE_FK_c */
static void daE_FK_Draw(daE_FK_c* param_0) {
    // NONMATCHING
}

/* 806BAF2C-806BAF4C 001C8C 0020+00 2/1 0/0 0/0 .text            daE_FK_Execute__FP8daE_FK_c */
static void daE_FK_Execute(daE_FK_c* param_0) {
    // NONMATCHING
}

/* 806BAF4C-806BAF54 001CAC 0008+00 1/0 0/0 0/0 .text            daE_FK_IsDelete__FP8daE_FK_c */
static bool daE_FK_IsDelete(daE_FK_c* param_0) {
    return true;
}

/* 806BAF54-806BAF74 001CB4 0020+00 1/0 0/0 0/0 .text            daE_FK_Delete__FP8daE_FK_c */
static void daE_FK_Delete(daE_FK_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB7FC-806BB800 00012C 0004+00 0/1 0/0 0/0 .rodata          @4707 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4707 = 85.0f;
COMPILER_STRIP_GATE(0x806BB7FC, &lit_4707);
#pragma pop

/* 806BB800-806BB804 000130 0004+00 0/1 0/0 0/0 .rodata          @4708 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4708 = 75.0f;
COMPILER_STRIP_GATE(0x806BB800, &lit_4708);
#pragma pop

/* 806BAF74-806BB004 001CD4 0090+00 1/1 0/0 0/0 .text            CreateChk__8daE_FK_cFv */
void daE_FK_c::CreateChk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB804-806BB808 000134 0004+00 0/1 0/0 0/0 .rodata          @4818 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4818 = -700.0f;
COMPILER_STRIP_GATE(0x806BB804, &lit_4818);
#pragma pop

/* 806BB808-806BB80C 000138 0004+00 0/1 0/0 0/0 .rodata          @4819 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4819 = 700.0f;
COMPILER_STRIP_GATE(0x806BB808, &lit_4819);
#pragma pop

/* 806BB80C-806BB810 00013C 0004+00 0/1 0/0 0/0 .rodata          @4820 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4820 = 3.0f;
COMPILER_STRIP_GATE(0x806BB80C, &lit_4820);
#pragma pop

/* 806BB81C-806BB81C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806BB826 = "E_FK";
#pragma pop

/* 806BB004-806BB324 001D64 0320+00 1/1 0/0 0/0 .text            Create__8daE_FK_cFv */
void daE_FK_c::Create() {
    // NONMATCHING
}

/* 806BB324-806BB394 002084 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 806BB394-806BB460 0020F4 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 806BB460-806BB4E4 0021C0 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 806BB4E4-806BB52C 002244 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 806BB52C-806BB574 00228C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806BB574-806BB594 0022D4 0020+00 1/0 0/0 0/0 .text            daE_FK_Create__FP10fopAc_ac_c */
static void daE_FK_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806BB594-806BB5DC 0022F4 0048+00 2/1 0/0 0/0 .text            __dt__12daE_FK_HIO_cFv */
daE_FK_HIO_c::~daE_FK_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB810-806BB814 000140 0004+00 0/1 0/0 0/0 .rodata          @4929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4929 = 217.0f;
COMPILER_STRIP_GATE(0x806BB810, &lit_4929);
#pragma pop

/* 806BB814-806BB818 000144 0004+00 0/1 0/0 0/0 .rodata          @4930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4930 = 1275.0f;
COMPILER_STRIP_GATE(0x806BB814, &lit_4930);
#pragma pop

/* 806BB818-806BB81C 000148 0004+00 0/1 0/0 0/0 .rodata          @4931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4931 = -57.0f;
COMPILER_STRIP_GATE(0x806BB818, &lit_4931);
#pragma pop

/* 806BB5DC-806BB670 00233C 0094+00 0/0 1/0 0/0 .text            __sinit_d_a_e_fk_cpp */
void __sinit_d_a_e_fk_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806BB5DC, __sinit_d_a_e_fk_cpp);
#pragma pop

/* 806BB670-806BB678 0023D0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806BB670() {
    // NONMATCHING
}

/* 806BB678-806BB680 0023D8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806BB678() {
    // NONMATCHING
}

/* 806BB680-806BB6BC 0023E0 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 806BB978-806BB97C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_806BB978[4];
#pragma pop

/* 806BB97C-806BB980 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_806BB97C[4];
#pragma pop

/* 806BB980-806BB984 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_806BB980[4];
#pragma pop

/* 806BB984-806BB988 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806BB984[4];
#pragma pop

/* 806BB988-806BB98C 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806BB988[4];
#pragma pop

/* 806BB98C-806BB990 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806BB98C[4];
#pragma pop

/* 806BB990-806BB994 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_806BB990[4];
#pragma pop

/* 806BB994-806BB998 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_806BB994[4];
#pragma pop

/* 806BB998-806BB99C 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_806BB998[4];
#pragma pop

/* 806BB99C-806BB9A0 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_806BB99C[4];
#pragma pop

/* 806BB9A0-806BB9A4 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_806BB9A0[4];
#pragma pop

/* 806BB9A4-806BB9A8 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_806BB9A4[4];
#pragma pop

/* 806BB9A8-806BB9AC 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_806BB9A8[4];
#pragma pop

/* 806BB9AC-806BB9B0 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806BB9AC[4];
#pragma pop

/* 806BB9B0-806BB9B4 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806BB9B0[4];
#pragma pop

/* 806BB9B4-806BB9B8 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_806BB9B4[4];
#pragma pop

/* 806BB9B8-806BB9BC 0000F0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_806BB9B8[4];
#pragma pop

/* 806BB9BC-806BB9C0 0000F4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_806BB9BC[4];
#pragma pop

/* 806BB9C0-806BB9C4 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_806BB9C0[4];
#pragma pop

/* 806BB9C4-806BB9C8 0000FC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_806BB9C4[4];
#pragma pop

/* 806BB9C8-806BB9CC 000100 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_806BB9C8[4];
#pragma pop

/* 806BB9CC-806BB9D0 000104 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806BB9CC[4];
#pragma pop

/* 806BB9D0-806BB9D4 000108 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806BB9D0[4];
#pragma pop

/* 806BB9D4-806BB9D8 00010C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_806BB9D4[4];
#pragma pop

/* 806BB9D8-806BB9DC 000110 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_806BB9D8[4];
#pragma pop

/* 806BB81C-806BB81C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

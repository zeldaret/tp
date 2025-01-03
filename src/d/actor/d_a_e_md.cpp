/**
 * @file d_a_e_md.cpp
 * 
*/

#include "d/actor/d_a_e_md.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void initCcCylinder__8daE_MD_cFv();
extern "C" void setCcCylinder__8daE_MD_cFf();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_MD_Create__FP10fopAc_ac_c();
extern "C" void SetAnm__8daE_MD_cFP16mDoExt_McaMorfSOiiff();
extern "C" static void daE_MD_Delete__FP8daE_MD_c();
extern "C" void At_Check__8daE_MD_cFv();
extern "C" void CheckHit__8daE_MD_cFv();
extern "C" void WaitAction__8daE_MD_cFv();
extern "C" void HalfBreakAction__8daE_MD_cFv();
extern "C" void VibAction__8daE_MD_cFv();
extern "C" void DummyAction__8daE_MD_cFv();
extern "C" void RealAction__8daE_MD_cFv();
extern "C" void Action__8daE_MD_cFv();
extern "C" void Execute__8daE_MD_cFv();
extern "C" void Delete__8daE_MD_cFv();
extern "C" void setBaseMtx__8daE_MD_cFv();
extern "C" static void daE_MD_Draw__FP8daE_MD_c();
extern "C" static void daE_MD_Execute__FP8daE_MD_c();
extern "C" void create__8daE_MD_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static bool daE_MD_IsDelete__FP8daE_MD_c();
extern "C" static void func_8070A4D4();
extern "C" static void func_8070A4DC();
extern "C" extern char const* const d_a_e_md__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__5csXyzFsss();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void _savegpr_28();
extern "C" void _restgpr_28();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 struct_80450C98[4];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 8070A4EC-8070A530 000000 0044+00 3/3 0/0 0/0 .rodata          ccCylSrc$3765 */
const static dCcD_SrcCyl ccCylSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x51}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        60.0f, // mRadius
        350.0f // mHeight
    } // mCyl
};

/* 80708DF8-80708E70 000078 0078+00 1/1 0/0 0/0 .text            initCcCylinder__8daE_MD_cFv */
void daE_MD_c::initCcCylinder() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8070A530-8070A534 000044 0004+00 1/1 0/0 0/0 .rodata          @3776 */
SECTION_RODATA static f32 const lit_3776 = 80.0f;
COMPILER_STRIP_GATE(0x8070A530, &lit_3776);

/* 80708E70-80708EE8 0000F0 0078+00 3/3 0/0 0/0 .text            setCcCylinder__8daE_MD_cFf */
void daE_MD_c::setCcCylinder(f32 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8070A534-8070A538 000048 0004+00 3/4 0/0 0/0 .rodata          @3858 */
SECTION_RODATA static f32 const lit_3858 = 1.0f;
COMPILER_STRIP_GATE(0x8070A534, &lit_3858);

/* 8070A570-8070A570 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8070A570 = "E_MD";
#pragma pop

/* 80708EE8-807091D0 000168 02E8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 807091D0-807091F0 000450 0020+00 1/0 0/0 0/0 .text            daE_MD_Create__FP10fopAc_ac_c */
static void daE_MD_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8070A538-8070A53C 00004C 0004+00 1/3 0/0 0/0 .rodata          @3870 */
SECTION_RODATA static u8 const lit_3870[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8070A538, &lit_3870);

/* 8070A53C-8070A540 000050 0004+00 2/2 0/0 0/0 .rodata          @3871 */
SECTION_RODATA static f32 const lit_3871 = -1.0f;
COMPILER_STRIP_GATE(0x8070A53C, &lit_3871);

/* 807091F0-807092A4 000470 00B4+00 1/1 0/0 0/0 .text SetAnm__8daE_MD_cFP16mDoExt_McaMorfSOiiff */
void daE_MD_c::SetAnm(mDoExt_McaMorfSO* param_0, int param_1, int param_2, f32 param_3,
                          f32 param_4) {
    // NONMATCHING
}

/* 807092A4-807092C8 000524 0024+00 1/0 0/0 0/0 .text            daE_MD_Delete__FP8daE_MD_c */
static void daE_MD_Delete(daE_MD_c* param_0) {
    // NONMATCHING
}

/* 807092C8-80709378 000548 00B0+00 1/1 0/0 0/0 .text            At_Check__8daE_MD_cFv */
void daE_MD_c::At_Check() {
    // NONMATCHING
}

/* 80709378-8070992C 0005F8 05B4+00 4/4 0/0 0/0 .text            CheckHit__8daE_MD_cFv */
void daE_MD_c::CheckHit() {
    // NONMATCHING
}

/* 8070992C-8070994C 000BAC 0020+00 2/2 0/0 0/0 .text            WaitAction__8daE_MD_cFv */
void daE_MD_c::WaitAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8070A540-8070A544 000054 0004+00 1/1 0/0 0/0 .rodata          @4032 */
SECTION_RODATA static f32 const lit_4032 = 5.0f;
COMPILER_STRIP_GATE(0x8070A540, &lit_4032);

/* 8070994C-80709A04 000BCC 00B8+00 1/1 0/0 0/0 .text            HalfBreakAction__8daE_MD_cFv */
void daE_MD_c::HalfBreakAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8070A544-8070A54C 000058 0008+00 1/1 0/0 0/0 .rodata          @4045 */
SECTION_RODATA static u8 const lit_4045[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8070A544, &lit_4045);

/* 80709A04-80709ABC 000C84 00B8+00 3/3 0/0 0/0 .text            VibAction__8daE_MD_cFv */
void daE_MD_c::VibAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8070A54C-8070A550 000060 0004+00 3/3 0/0 0/0 .rodata          @4064 */
SECTION_RODATA static f32 const lit_4064 = 350.0f;
COMPILER_STRIP_GATE(0x8070A54C, &lit_4064);

/* 8070A550-8070A554 000064 0004+00 1/3 0/0 0/0 .rodata          @4065 */
SECTION_RODATA static f32 const lit_4065 = 100.0f;
COMPILER_STRIP_GATE(0x8070A550, &lit_4065);

/* 80709ABC-80709BB4 000D3C 00F8+00 1/1 0/0 0/0 .text            DummyAction__8daE_MD_cFv */
void daE_MD_c::DummyAction() {
    // NONMATCHING
}

/* 80709BB4-80709C3C 000E34 0088+00 1/1 0/0 0/0 .text            RealAction__8daE_MD_cFv */
void daE_MD_c::RealAction() {
    // NONMATCHING
}

/* 80709C3C-80709CFC 000EBC 00C0+00 1/1 0/0 0/0 .text            Action__8daE_MD_cFv */
void daE_MD_c::Action() {
    // NONMATCHING
}

/* 80709CFC-80709D58 000F7C 005C+00 1/1 0/0 0/0 .text            Execute__8daE_MD_cFv */
void daE_MD_c::Execute() {
    // NONMATCHING
}

/* 80709D58-80709DA8 000FD8 0050+00 1/1 0/0 0/0 .text            Delete__8daE_MD_cFv */
void daE_MD_c::Delete() {
    // NONMATCHING
}

/* 80709DA8-80709E6C 001028 00C4+00 1/1 0/0 0/0 .text            setBaseMtx__8daE_MD_cFv */
void daE_MD_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8070A554-8070A558 000068 0004+00 0/2 0/0 0/0 .rodata          @4212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4212 = 1000.0f;
COMPILER_STRIP_GATE(0x8070A554, &lit_4212);
#pragma pop

/* 80709E6C-8070A024 0010EC 01B8+00 1/0 0/0 0/0 .text            daE_MD_Draw__FP8daE_MD_c */
static void daE_MD_Draw(daE_MD_c* param_0) {
    // NONMATCHING
}

/* 8070A024-8070A044 0012A4 0020+00 2/1 0/0 0/0 .text            daE_MD_Execute__FP8daE_MD_c */
static void daE_MD_Execute(daE_MD_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8070A558-8070A55C 00006C 0004+00 0/1 0/0 0/0 .rodata          @4411 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4411 = -1500.0f;
COMPILER_STRIP_GATE(0x8070A558, &lit_4411);
#pragma pop

/* 8070A55C-8070A560 000070 0004+00 0/1 0/0 0/0 .rodata          @4412 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4412 = -950.0f;
COMPILER_STRIP_GATE(0x8070A55C, &lit_4412);
#pragma pop

/* 8070A560-8070A564 000074 0004+00 0/1 0/0 0/0 .rodata          @4413 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4413 = 560.0f;
COMPILER_STRIP_GATE(0x8070A560, &lit_4413);
#pragma pop

/* 8070A564-8070A568 000078 0004+00 0/1 0/0 0/0 .rodata          @4414 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4414 = 10.0f;
COMPILER_STRIP_GATE(0x8070A564, &lit_4414);
#pragma pop

/* 8070A568-8070A56C 00007C 0004+00 0/1 0/0 0/0 .rodata          @4415 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4415 = 1500.0f;
COMPILER_STRIP_GATE(0x8070A568, &lit_4415);
#pragma pop

/* 8070A56C-8070A570 000080 0004+00 0/1 0/0 0/0 .rodata          @4416 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4416 = 200.0f;
COMPILER_STRIP_GATE(0x8070A56C, &lit_4416);
#pragma pop

/* 8070A578-8070A598 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_MD_Method */
static actor_method_class l_daE_MD_Method = {
    (process_method_func)daE_MD_Create__FP10fopAc_ac_c,
    (process_method_func)daE_MD_Delete__FP8daE_MD_c,
    (process_method_func)daE_MD_Execute__FP8daE_MD_c,
    (process_method_func)daE_MD_IsDelete__FP8daE_MD_c,
    (process_method_func)daE_MD_Draw__FP8daE_MD_c,
};

/* 8070A598-8070A5C8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_MD */
extern actor_process_profile_definition g_profile_E_MD = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_MD,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_MD_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  132,                    // mPriority
  &l_daE_MD_Method,       // sub_method
  0x00044100,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8070A5C8-8070A5D4 000050 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8070A5D4-8070A5E0 00005C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8070A5E0-8070A604 000068 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8070A4DC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8070A4D4,
};

/* 8070A044-8070A3CC 0012C4 0388+00 1/1 0/0 0/0 .text            create__8daE_MD_cFv */
void daE_MD_c::create() {
    // NONMATCHING
}

/* 8070A3CC-8070A414 00164C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8070A414-8070A45C 001694 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8070A45C-8070A4CC 0016DC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8070A4CC-8070A4D4 00174C 0008+00 1/0 0/0 0/0 .text            daE_MD_IsDelete__FP8daE_MD_c */
static bool daE_MD_IsDelete(daE_MD_c* param_0) {
    return true;
}

/* 8070A4D4-8070A4DC 001754 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8070A4D4() {
    // NONMATCHING
}

/* 8070A4DC-8070A4E4 00175C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8070A4DC() {
    // NONMATCHING
}

/* 8070A570-8070A570 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

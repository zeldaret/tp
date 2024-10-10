/**
 * @file d_a_obj_pdoor.cpp
 * 
*/

#include "d/actor/d_a_obj_pdoor.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" static void PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel();
extern "C" void initBaseMtx__12daObjPDoor_cFv();
extern "C" void setBaseMtx__12daObjPDoor_cFv();
extern "C" void Create__12daObjPDoor_cFv();
extern "C" void CreateHeap__12daObjPDoor_cFv();
extern "C" void create1st__12daObjPDoor_cFv();
extern "C" void Execute__12daObjPDoor_cFPPA3_A4_f();
extern "C" void mode_proc_call__12daObjPDoor_cFv();
extern "C" void init_modeWait__12daObjPDoor_cFv();
extern "C" void modeWait__12daObjPDoor_cFv();
extern "C" void init_modeRotate__12daObjPDoor_cFv();
extern "C" void modeRotate__12daObjPDoor_cFv();
extern "C" void Draw__12daObjPDoor_cFv();
extern "C" void Delete__12daObjPDoor_cFv();
extern "C" static void daObjPDoor_create1st__FP12daObjPDoor_c();
extern "C" static void daObjPDoor_MoveBGDelete__FP12daObjPDoor_c();
extern "C" static void daObjPDoor_MoveBGExecute__FP12daObjPDoor_c();
extern "C" static void daObjPDoor_MoveBGDraw__FP12daObjPDoor_c();
extern "C" extern char const* const d_a_obj_pdoor__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80CAAC30[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80CAAB20-80CAAB24 000000 0004+00 3/3 0/0 0/0 .rodata          @3695 */
SECTION_RODATA static u8 const lit_3695[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CAAB20, &lit_3695);

/* 80CA9E98-80CA9F9C 000078 0104+00 1/1 0/0 0/0 .text
 * PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
static void PPCallBack(fopAc_ac_c* param_0, fopAc_ac_c* param_1, s16 param_2,
                           dBgW_Base::PushPullLabel param_3) {
    // NONMATCHING
}

/* 80CA9F9C-80CA9FD8 00017C 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjPDoor_cFv */
void daObjPDoor_c::initBaseMtx() {
    // NONMATCHING
}

/* 80CA9FD8-80CAA03C 0001B8 0064+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjPDoor_cFv */
void daObjPDoor_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAAB40-80CAAB40 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CAAB40 = "V_OsuDoor";
#pragma pop

/* 80CAAB4C-80CAAB58 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CAAB58-80CAAB6C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80CAAB6C-80CAAB70 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_pdoor__stringBase0;

/* 80CAAB70-80CAAB88 000024 0018+00 1/1 0/0 0/0 .data            l_cull_box */
SECTION_DATA static u8 l_cull_box[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC4, 0x16, 0x00, 0x00,
    0x44, 0x16, 0x00, 0x00, 0x44, 0x7A, 0x00, 0x00, 0x44, 0x16, 0x00, 0x00,
};

/* 80CAA03C-80CAA14C 00021C 0110+00 1/0 0/0 0/0 .text            Create__12daObjPDoor_cFv */
void daObjPDoor_c::Create() {
    // NONMATCHING
}

/* 80CAA14C-80CAA1BC 00032C 0070+00 1/0 0/0 0/0 .text            CreateHeap__12daObjPDoor_cFv */
void daObjPDoor_c::CreateHeap() {
    // NONMATCHING
}

/* 80CAA1BC-80CAA23C 00039C 0080+00 1/1 0/0 0/0 .text            create1st__12daObjPDoor_cFv */
void daObjPDoor_c::create1st() {
    // NONMATCHING
}

/* 80CAA23C-80CAA290 00041C 0054+00 1/0 0/0 0/0 .text            Execute__12daObjPDoor_cFPPA3_A4_f
 */
void daObjPDoor_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAAB88-80CAAB94 -00001 000C+00 0/1 0/0 0/0 .data            @3781 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3781[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__12daObjPDoor_cFv,
};
#pragma pop

/* 80CAAB94-80CAABA0 -00001 000C+00 0/1 0/0 0/0 .data            @3782 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3782[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeRotate__12daObjPDoor_cFv,
};
#pragma pop

/* 80CAABA0-80CAABB8 000054 0018+00 0/1 0/0 0/0 .data            l_func$3780 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CAA290-80CAA31C 000470 008C+00 1/1 0/0 0/0 .text            mode_proc_call__12daObjPDoor_cFv */
void daObjPDoor_c::mode_proc_call() {
    // NONMATCHING
}

/* 80CAA31C-80CAA354 0004FC 0038+00 1/1 0/0 0/0 .text            init_modeWait__12daObjPDoor_cFv */
void daObjPDoor_c::init_modeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAAB24-80CAAB28 000004 0004+00 1/1 0/0 0/0 .rodata          @3942 */
SECTION_RODATA static f32 const lit_3942 = 10.0f;
COMPILER_STRIP_GATE(0x80CAAB24, &lit_3942);

/* 80CAAB28-80CAAB30 000008 0008+00 1/2 0/0 0/0 .rodata          @3944 */
SECTION_RODATA static u8 const lit_3944[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CAAB28, &lit_3944);

/* 80CAA354-80CAA698 000534 0344+00 1/0 0/0 0/0 .text            modeWait__12daObjPDoor_cFv */
void daObjPDoor_c::modeWait() {
    // NONMATCHING
}

/* 80CAA698-80CAA6B4 000878 001C+00 1/1 0/0 0/0 .text            init_modeRotate__12daObjPDoor_cFv
 */
void daObjPDoor_c::init_modeRotate() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAAB30-80CAAB34 000010 0004+00 0/1 0/0 0/0 .rodata          @4051 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4051 = 5461.0f;
COMPILER_STRIP_GATE(0x80CAAB30, &lit_4051);
#pragma pop

/* 80CAAB34-80CAAB38 000014 0004+00 0/1 0/0 0/0 .rodata          @4052 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4052 = 60.0f;
COMPILER_STRIP_GATE(0x80CAAB34, &lit_4052);
#pragma pop

/* 80CAAB38-80CAAB3C 000018 0004+00 0/1 0/0 0/0 .rodata          @4053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4053 = 1.0f;
COMPILER_STRIP_GATE(0x80CAAB38, &lit_4053);
#pragma pop

/* 80CAAB3C-80CAAB40 00001C 0004+00 0/1 0/0 0/0 .rodata          @4054 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4054 = -1.0f;
COMPILER_STRIP_GATE(0x80CAAB3C, &lit_4054);
#pragma pop

/* 80CAA6B4-80CAA968 000894 02B4+00 1/0 0/0 0/0 .text            modeRotate__12daObjPDoor_cFv */
void daObjPDoor_c::modeRotate() {
    // NONMATCHING
}

/* 80CAA968-80CAAA0C 000B48 00A4+00 1/0 0/0 0/0 .text            Draw__12daObjPDoor_cFv */
void daObjPDoor_c::Draw() {
    // NONMATCHING
}

/* 80CAAA0C-80CAAA4C 000BEC 0040+00 1/0 0/0 0/0 .text            Delete__12daObjPDoor_cFv */
void daObjPDoor_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAABB8-80CAABD8 -00001 0020+00 1/0 0/0 0/0 .data            daObjPDoor_METHODS */
static actor_method_class daObjPDoor_METHODS = {
    (process_method_func)daObjPDoor_create1st__FP12daObjPDoor_c,
    (process_method_func)daObjPDoor_MoveBGDelete__FP12daObjPDoor_c,
    (process_method_func)daObjPDoor_MoveBGExecute__FP12daObjPDoor_c,
    0,
    (process_method_func)daObjPDoor_MoveBGDraw__FP12daObjPDoor_c,
};

/* 80CAABD8-80CAAC08 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_PushDoor */
extern actor_process_profile_definition g_profile_Obj_PushDoor = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_PushDoor,      // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjPDoor_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  577,                    // mPriority
  &daObjPDoor_METHODS,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CAAC08-80CAAC30 0000BC 0028+00 1/1 0/0 0/0 .data            __vt__12daObjPDoor_c */
SECTION_DATA extern void* __vt__12daObjPDoor_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daObjPDoor_cFv,
    (void*)Create__12daObjPDoor_cFv,
    (void*)Execute__12daObjPDoor_cFPPA3_A4_f,
    (void*)Draw__12daObjPDoor_cFv,
    (void*)Delete__12daObjPDoor_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80CAAA4C-80CAAAAC 000C2C 0060+00 1/0 0/0 0/0 .text daObjPDoor_create1st__FP12daObjPDoor_c */
static void daObjPDoor_create1st(daObjPDoor_c* param_0) {
    // NONMATCHING
}

/* 80CAAAAC-80CAAACC 000C8C 0020+00 1/0 0/0 0/0 .text daObjPDoor_MoveBGDelete__FP12daObjPDoor_c */
static void daObjPDoor_MoveBGDelete(daObjPDoor_c* param_0) {
    // NONMATCHING
}

/* 80CAAACC-80CAAAEC 000CAC 0020+00 1/0 0/0 0/0 .text daObjPDoor_MoveBGExecute__FP12daObjPDoor_c
 */
static void daObjPDoor_MoveBGExecute(daObjPDoor_c* param_0) {
    // NONMATCHING
}

/* 80CAAAEC-80CAAB18 000CCC 002C+00 1/0 0/0 0/0 .text daObjPDoor_MoveBGDraw__FP12daObjPDoor_c */
static void daObjPDoor_MoveBGDraw(daObjPDoor_c* param_0) {
    // NONMATCHING
}

/* 80CAAB40-80CAAB40 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
/**
 * @file d_a_obj_lv6swturn.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv6swturn.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" static void PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel();
extern "C" void initBaseMtx__16daObjLv6SwTurn_cFv();
extern "C" void setBaseMtx__16daObjLv6SwTurn_cFv();
extern "C" void Create__16daObjLv6SwTurn_cFv();
extern "C" void CreateHeap__16daObjLv6SwTurn_cFv();
extern "C" void create1st__16daObjLv6SwTurn_cFv();
extern "C" void Execute__16daObjLv6SwTurn_cFPPA3_A4_f();
extern "C" void mode_proc_call__16daObjLv6SwTurn_cFv();
extern "C" void init_modeWait__16daObjLv6SwTurn_cFv();
extern "C" void modeWait__16daObjLv6SwTurn_cFv();
extern "C" void init_modeRotate__16daObjLv6SwTurn_cFv();
extern "C" void modeRotate__16daObjLv6SwTurn_cFv();
extern "C" void Draw__16daObjLv6SwTurn_cFv();
extern "C" void Delete__16daObjLv6SwTurn_cFv();
extern "C" static void daObjLv6SwTurn_create1st__FP16daObjLv6SwTurn_c();
extern "C" static void daObjLv6SwTurn_MoveBGDelete__FP16daObjLv6SwTurn_c();
extern "C" static void daObjLv6SwTurn_MoveBGExecute__FP16daObjLv6SwTurn_c();
extern "C" static void daObjLv6SwTurn_MoveBGDraw__FP16daObjLv6SwTurn_c();
extern "C" extern char const* const d_a_obj_lv6swturn__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
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
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" extern u8 data_80C847A0[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C846A4-80C846A8 000000 0004+00 3/3 0/0 0/0 .rodata          @3695 */
SECTION_RODATA static u8 const lit_3695[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C846A4, &lit_3695);

/* 80C83998-80C83A98 000078 0100+00 1/1 0/0 0/0 .text
 * PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
static void PPCallBack(fopAc_ac_c* param_0, fopAc_ac_c* param_1, s16 param_2,
                           dBgW_Base::PushPullLabel param_3) {
    // NONMATCHING
}

/* 80C83A98-80C83AD4 000178 003C+00 1/1 0/0 0/0 .text            initBaseMtx__16daObjLv6SwTurn_cFv
 */
void daObjLv6SwTurn_c::initBaseMtx() {
    // NONMATCHING
}

/* 80C83AD4-80C83B38 0001B4 0064+00 2/2 0/0 0/0 .text            setBaseMtx__16daObjLv6SwTurn_cFv */
void daObjLv6SwTurn_c::setBaseMtx() {
    // NONMATCHING
}

/* 80C83B38-80C83C10 000218 00D8+00 1/0 0/0 0/0 .text            Create__16daObjLv6SwTurn_cFv */
void daObjLv6SwTurn_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C846C4-80C846C4 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C846C4 = "Obj_l6tsw";
#pragma pop

/* 80C846F0-80C846F4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_lv6swturn__stringBase0;

/* 80C83C10-80C83C80 0002F0 0070+00 1/0 0/0 0/0 .text            CreateHeap__16daObjLv6SwTurn_cFv */
void daObjLv6SwTurn_c::CreateHeap() {
    // NONMATCHING
}

/* 80C83C80-80C83D04 000360 0084+00 1/1 0/0 0/0 .text            create1st__16daObjLv6SwTurn_cFv */
void daObjLv6SwTurn_c::create1st() {
    // NONMATCHING
}

/* 80C83D04-80C83D94 0003E4 0090+00 1/0 0/0 0/0 .text Execute__16daObjLv6SwTurn_cFPPA3_A4_f */
void daObjLv6SwTurn_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C846F4-80C84700 -00001 000C+00 0/1 0/0 0/0 .data            @3777 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3777[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__16daObjLv6SwTurn_cFv,
};
#pragma pop

/* 80C84700-80C8470C -00001 000C+00 0/1 0/0 0/0 .data            @3778 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3778[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeRotate__16daObjLv6SwTurn_cFv,
};
#pragma pop

/* 80C8470C-80C84724 00003C 0018+00 0/1 0/0 0/0 .data            l_func$3776 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C83D94-80C83E20 000474 008C+00 1/1 0/0 0/0 .text mode_proc_call__16daObjLv6SwTurn_cFv */
void daObjLv6SwTurn_c::mode_proc_call() {
    // NONMATCHING
}

/* 80C83E20-80C83E58 000500 0038+00 2/2 0/0 0/0 .text            init_modeWait__16daObjLv6SwTurn_cFv
 */
void daObjLv6SwTurn_c::init_modeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C846A8-80C846AC 000004 0004+00 0/2 0/0 0/0 .rodata          @3960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3960 = 1.0f;
COMPILER_STRIP_GATE(0x80C846A8, &lit_3960);
#pragma pop

/* 80C846AC-80C846B0 000008 0004+00 0/2 0/0 0/0 .rodata          @3961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3961 = -1.0f;
COMPILER_STRIP_GATE(0x80C846AC, &lit_3961);
#pragma pop

/* 80C846B0-80C846B4 00000C 0004+00 0/1 0/0 0/0 .rodata          @3962 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3962 = 10.0f;
COMPILER_STRIP_GATE(0x80C846B0, &lit_3962);
#pragma pop

/* 80C846B4-80C846BC 000010 0008+00 0/2 0/0 0/0 .rodata          @3964 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3964[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C846B4, &lit_3964);
#pragma pop

/* 80C83E58-80C84238 000538 03E0+00 1/0 0/0 0/0 .text            modeWait__16daObjLv6SwTurn_cFv */
void daObjLv6SwTurn_c::modeWait() {
    // NONMATCHING
}

/* 80C84238-80C8425C 000918 0024+00 1/1 0/0 0/0 .text init_modeRotate__16daObjLv6SwTurn_cFv */
void daObjLv6SwTurn_c::init_modeRotate() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C846BC-80C846C0 000018 0004+00 0/1 0/0 0/0 .rodata          @4069 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4069 = 16384.0f;
COMPILER_STRIP_GATE(0x80C846BC, &lit_4069);
#pragma pop

/* 80C846C0-80C846C4 00001C 0004+00 0/1 0/0 0/0 .rodata          @4070 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4070 = 90.0f;
COMPILER_STRIP_GATE(0x80C846C0, &lit_4070);
#pragma pop

/* 80C8425C-80C844F8 00093C 029C+00 1/0 0/0 0/0 .text            modeRotate__16daObjLv6SwTurn_cFv */
void daObjLv6SwTurn_c::modeRotate() {
    // NONMATCHING
}

/* 80C844F8-80C8459C 000BD8 00A4+00 1/0 0/0 0/0 .text            Draw__16daObjLv6SwTurn_cFv */
void daObjLv6SwTurn_c::Draw() {
    // NONMATCHING
}

/* 80C8459C-80C845D0 000C7C 0034+00 1/0 0/0 0/0 .text            Delete__16daObjLv6SwTurn_cFv */
void daObjLv6SwTurn_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C84724-80C84744 -00001 0020+00 1/0 0/0 0/0 .data            daObjLv6SwTurn_METHODS */
static actor_method_class daObjLv6SwTurn_METHODS = {
    (process_method_func)daObjLv6SwTurn_create1st__FP16daObjLv6SwTurn_c,
    (process_method_func)daObjLv6SwTurn_MoveBGDelete__FP16daObjLv6SwTurn_c,
    (process_method_func)daObjLv6SwTurn_MoveBGExecute__FP16daObjLv6SwTurn_c,
    0,
    (process_method_func)daObjLv6SwTurn_MoveBGDraw__FP16daObjLv6SwTurn_c,
};

/* 80C84744-80C84774 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6SwTurn */
extern actor_process_profile_definition g_profile_Obj_Lv6SwTurn = {
  fpcLy_CURRENT_e,          // mLayerID
  3,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_Lv6SwTurn,       // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daObjLv6SwTurn_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  15,                       // mPriority
  &daObjLv6SwTurn_METHODS,  // sub_method
  0x00040100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80C84774-80C8479C 0000A4 0028+00 1/1 0/0 0/0 .data            __vt__16daObjLv6SwTurn_c */
SECTION_DATA extern void* __vt__16daObjLv6SwTurn_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__16daObjLv6SwTurn_cFv,
    (void*)Create__16daObjLv6SwTurn_cFv,
    (void*)Execute__16daObjLv6SwTurn_cFPPA3_A4_f,
    (void*)Draw__16daObjLv6SwTurn_cFv,
    (void*)Delete__16daObjLv6SwTurn_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C845D0-80C84630 000CB0 0060+00 1/0 0/0 0/0 .text
 * daObjLv6SwTurn_create1st__FP16daObjLv6SwTurn_c               */
static void daObjLv6SwTurn_create1st(daObjLv6SwTurn_c* param_0) {
    // NONMATCHING
}

/* 80C84630-80C84650 000D10 0020+00 1/0 0/0 0/0 .text
 * daObjLv6SwTurn_MoveBGDelete__FP16daObjLv6SwTurn_c            */
static void daObjLv6SwTurn_MoveBGDelete(daObjLv6SwTurn_c* param_0) {
    // NONMATCHING
}

/* 80C84650-80C84670 000D30 0020+00 1/0 0/0 0/0 .text
 * daObjLv6SwTurn_MoveBGExecute__FP16daObjLv6SwTurn_c           */
static void daObjLv6SwTurn_MoveBGExecute(daObjLv6SwTurn_c* param_0) {
    // NONMATCHING
}

/* 80C84670-80C8469C 000D50 002C+00 1/0 0/0 0/0 .text
 * daObjLv6SwTurn_MoveBGDraw__FP16daObjLv6SwTurn_c              */
static void daObjLv6SwTurn_MoveBGDraw(daObjLv6SwTurn_c* param_0) {
    // NONMATCHING
}

/* 80C846C4-80C846C4 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
